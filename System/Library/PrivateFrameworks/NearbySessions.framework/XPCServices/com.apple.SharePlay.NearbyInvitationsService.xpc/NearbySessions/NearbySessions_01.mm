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

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

uint64_t specialized ConnectionMessageType.init(rawValue:)(uint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  else
  {
    return result;
  }
}

uint64_t partial apply for closure #1 in AdvertisementProtocol.handleInput(framer:)(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return 0;
  }

  result = *(v3 + 16);
  if (a1)
  {
    if (a2 - a1 >= result)
    {
      v6 = *(v3 + 24);
      *v6 = *a1;
      *(v6 + 8) = 0;
    }

    else
    {
      return 0;
    }
  }

  else if (result <= 0)
  {
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AdvertisementProtocolHeader.CodingKeys and conformance AdvertisementProtocolHeader.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AdvertisementProtocolHeader.CodingKeys and conformance AdvertisementProtocolHeader.CodingKeys;
  if (!lazy protocol witness table cache variable for type AdvertisementProtocolHeader.CodingKeys and conformance AdvertisementProtocolHeader.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AdvertisementProtocolHeader.CodingKeys and conformance AdvertisementProtocolHeader.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AdvertisementProtocolHeader.CodingKeys and conformance AdvertisementProtocolHeader.CodingKeys;
  if (!lazy protocol witness table cache variable for type AdvertisementProtocolHeader.CodingKeys and conformance AdvertisementProtocolHeader.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AdvertisementProtocolHeader.CodingKeys and conformance AdvertisementProtocolHeader.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AdvertisementProtocolHeader.CodingKeys and conformance AdvertisementProtocolHeader.CodingKeys;
  if (!lazy protocol witness table cache variable for type AdvertisementProtocolHeader.CodingKeys and conformance AdvertisementProtocolHeader.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AdvertisementProtocolHeader.CodingKeys and conformance AdvertisementProtocolHeader.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AdvertisementProtocolHeader.CodingKeys and conformance AdvertisementProtocolHeader.CodingKeys;
  if (!lazy protocol witness table cache variable for type AdvertisementProtocolHeader.CodingKeys and conformance AdvertisementProtocolHeader.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AdvertisementProtocolHeader.CodingKeys and conformance AdvertisementProtocolHeader.CodingKeys);
  }

  return result;
}

unint64_t specialized AdvertisementProtocolHeader.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy44com_apple_SharePlay_NearbyInvitationsService27AdvertisementProtocolHeaderV10CodingKeys33_BB57DF391DAD469BCCA423D45398D2B3LLOGMd, &_ss22KeyedDecodingContainerVy44com_apple_SharePlay_NearbyInvitationsService27AdvertisementProtocolHeaderV10CodingKeys33_BB57DF391DAD469BCCA423D45398D2B3LLOGMR);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AdvertisementProtocolHeader.CodingKeys and conformance AdvertisementProtocolHeader.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v10[15] = 0;
  v7 = KeyedDecodingContainer.decode(_:forKey:)();
  v10[14] = 1;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7 | (v8 << 32);
}

char *specialized NearbyInvitationAdvertiser.init(listenerConfiguration:delegate:)(void *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v37 = a5;
  v38 = a2;
  v36 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DataVSgGMd, &_s7Combine9PublishedVy10Foundation4DataVSgGMR);
  v34 = *(v6 - 8);
  v35 = v6;
  __chkstk_darwin(v6);
  v33 = &v29 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay7Network12NWConnectionCGGMd, &_s7Combine9PublishedVySay7Network12NWConnectionCGGMR);
  v31 = *(v8 - 8);
  v32 = v8;
  __chkstk_darwin(v8);
  v30 = &v29 - v9;
  v29 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v10 = *(v29 - 8);
  __chkstk_darwin(v29);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v13);
  v14 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v14 - 8);
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  *&v39 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type InvitationRequestData and conformance InvitationRequestData(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v10 + 104))(v12, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v29);
  *(a3 + 2) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(a3 + 4) = _swiftEmptyArrayStorage;
  v15 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyInvitationAdvertiser__connections;
  *&v39 = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Network12NWConnectionCGMd, &_sSay7Network12NWConnectionCGMR);
  v16 = v30;
  Published.init(initialValue:)();
  (*(v31 + 32))(&a3[v15], v16, v32);
  v17 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyInvitationAdvertiser__dataReceived;
  v39 = xmmword_1000C8990;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  v18 = v33;
  Published.init(initialValue:)();
  (*(v34 + 32))(&a3[v17], v18, v35);
  v19 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyInvitationAdvertiser_connectionRequests;
  *&a3[v19] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_7Network12NWConnectionCSgTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  *&a3[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyInvitationAdvertiser_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Log.client);
  v21 = v36;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v21;
    *v25 = v21;
    v26 = v21;
    _os_log_impl(&_mh_execute_header, v22, v23, "NearbyInvitationsAdvertiser init %@", v24, 0xCu);
    outlined destroy of Any?(v25, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  *(a3 + 3) = v21;
  v27 = &a3[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyInvitationAdvertiser_delegate];
  swift_beginAccess();
  *(v27 + 1) = v37;
  swift_unknownObjectWeakAssign();
  return a3;
}

nw_parameters_t specialized static NearbyInvitationAdvertiser.createParameters(isBrowsing:)(char a1)
{
  application_service = nw_parameters_create_application_service();
  if (a1)
  {
    v3 = xpc_array_create(0, 0);
    v4 = XPC_ARRAY_APPEND.getter();
    xpc_array_set_string(v3, v4, "com.apple.rapport.browse");
    v5 = xpc_array_create(0, 0);
    v6 = XPC_ARRAY_APPEND.getter();
    xpc_array_set_string(v5, v6, "RapportBrowseAgent");
    swift_unknownObjectRetain();
    nw_parameters_set_required_netagent_classes();
    nw_parameters_set_server_mode();
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Log.client);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v28 = v11;
      *v10 = 136315138;
      v12 = [application_service description];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v28);

      *(v10 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v8, v9, "Create Parameters are browsing with %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRetain();
    nw_parameters_set_server_mode();
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Log.client);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28 = v21;
      *v20 = 136315138;
      v22 = [application_service description];
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v28);

      *(v20 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v18, v19, "Create Parameters are listening with %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
    }
  }

  return application_service;
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for NWProtocolOptions();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = _CocoaArrayWrapper.endIndex.getter();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (v14)
  {
    goto LABEL_18;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);

  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, v6, 1, v4);
}

uint64_t partial apply for closure #1 in NearbyInvitationAdvertiser.stopAdvertising()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in NearbyInvitationAdvertiser.stopAdvertising();

  return closure #1 in NearbyInvitationAdvertiser.stopAdvertising()(a1, v4, v5, v6);
}

unint64_t lazy protocol witness table accessor for type ConnectionMessageType and conformance ConnectionMessageType()
{
  result = lazy protocol witness table cache variable for type ConnectionMessageType and conformance ConnectionMessageType;
  if (!lazy protocol witness table cache variable for type ConnectionMessageType and conformance ConnectionMessageType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConnectionMessageType and conformance ConnectionMessageType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConnectionMessageType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ConnectionMessageType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AdvertisementProtocolHeader(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AdvertisementProtocolHeader(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t type metadata accessor for NearbyInvitationAdvertiser(uint64_t a1)
{
  result = type metadata singleton initialization cache for NearbyInvitationAdvertiser;
  if (!type metadata singleton initialization cache for NearbyInvitationAdvertiser)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for NearbyInvitationAdvertiser(uint64_t a1)
{
  type metadata accessor for Published<[NWConnection]>(319, &lazy cache variable for type metadata for Published<[NWConnection]>, &_sSay7Network12NWConnectionCGMd, &_sSay7Network12NWConnectionCGMR);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<[NWConnection]>(319, &lazy cache variable for type metadata for Published<Data?>, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Published<[NWConnection]>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AdvertisementProtocolHeader.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AdvertisementProtocolHeader.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for NWConnection();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);

  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v5, v3, 0);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_48(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in NearbyInvitationAdvertiser.stopAdvertising();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t objectdestroyTm()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

void outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    outlined copy of Data._Representation(a1, a2);
  }
}

uint64_t lazy protocol witness table accessor for type InvitationRequestData and conformance InvitationRequestData(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t one-time initialization function for defaultNearbyGroupPseudonymConfig()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000031;
  *(inited + 16) = xmmword_1000C8E90;
  *(inited + 40) = 0x80000001000CDBC0;
  *(inited + 48) = 36000;
  *(inited + 72) = &type metadata for Int;
  *(inited + 80) = 0xD00000000000003CLL;
  *(inited + 88) = 0x80000001000CDC00;
  *(inited + 96) = 3600;
  *(inited + 120) = &type metadata for Int;
  *(inited + 128) = 0xD000000000000031;
  *(inited + 136) = 0x80000001000CDC40;
  *(inited + 144) = 5;
  *(inited + 168) = &type metadata for Int;
  *(inited + 176) = 0xD000000000000017;
  *(inited + 216) = &type metadata for Int;
  *(inited + 184) = 0x80000001000CDC80;
  *(inited + 192) = 4;
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  result = swift_arrayDestroy();
  defaultNearbyGroupPseudonymConfig._rawValue = v1;
  return result;
}

unint64_t NearbyGroupServerBag.BagKey.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0xD000000000000031;
  v2 = 0xD000000000000017;
  if (a1 == 2)
  {
    v2 = 0xD000000000000031;
  }

  if (a1)
  {
    v1 = 0xD00000000000003CLL;
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NearbyGroupServerBag.BagKey(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = NearbyGroupServerBag.BagKey.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == NearbyGroupServerBag.BagKey.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NearbyGroupServerBag.BagKey()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  NearbyGroupServerBag.BagKey.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NearbyGroupServerBag.BagKey(uint64_t a1)
{
  NearbyGroupServerBag.BagKey.rawValue.getter(*v1);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NearbyGroupServerBag.BagKey(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  NearbyGroupServerBag.BagKey.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance NearbyGroupServerBag.BagKey@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized NearbyGroupServerBag.BagKey.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NearbyGroupServerBag.BagKey@<X0>(unint64_t *a1@<X8>)
{
  result = NearbyGroupServerBag.BagKey.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int IDSServiceError.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NearbyGroupServerBag.Errors(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

double NearbyGroupServerBag.nearbyGroupPseudonymTTL.getter()
{
  v0 = specialized NearbyGroupServerBag.numericConfig(for:)(0);
  [v0 doubleValue];
  v2 = v1;

  return v2;
}

double NearbyGroupServerBag.nearbyGroupPseudonymTTLSingleUse.getter()
{
  v0 = specialized NearbyGroupServerBag.numericConfig(for:)(1u);
  [v0 doubleValue];
  v2 = v1;

  return v2;
}

double NearbyGroupServerBag.nearbyGroupPseudonymRefreshSkew.getter()
{
  v0 = specialized NearbyGroupServerBag.numericConfig(for:)(2u);
  [v0 doubleValue];
  v2 = v1;

  return v2;
}

id NearbyGroupServerBag.nearbyGroupHostLimit.getter()
{
  v0 = specialized NearbyGroupServerBag.numericConfig(for:)(3u);
  v1 = [v0 integerValue];

  return v1;
}

double NearbyGroupServerBag.pseudonymConfig(service:reusable:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>, char a3@<W1>)
{
  specialized NearbyGroupServerBag.pseudonymConfig(service:reusable:)(a2, a3, v7);
  if (!v3)
  {
    v6 = v7[1];
    *a1 = v7[0];
    a1[1] = v6;
    result = *&v8;
    a1[2] = v8;
  }

  return result;
}

void __swiftcall NearbyGroupServerBag.pseudonymConfig(featureID:reusable:)(com_apple_SharePlay_NearbyInvitationsService::Pseudonym::Configuration *__return_ptr retstr, Swift::String featureID, Swift::Bool reusable)
{
  object = featureID._object;
  countAndFlagsBits = featureID._countAndFlagsBits;
  v6 = specialized NearbyGroupServerBag.numericConfig(for:)(!reusable);
  [v6 doubleValue];
  v8 = v7;

  v9 = specialized NearbyGroupServerBag.numericConfig(for:)(2u);
  [v9 doubleValue];
  v11 = v10;

  retstr->featureID._countAndFlagsBits = countAndFlagsBits;
  retstr->featureID._object = object;
  retstr->minimumExpirationInSeconds = v8;
  retstr->refreshSkewInSeconds = v11;
  retstr->reuseIdentifier.value._countAndFlagsBits = 0;
  retstr->reuseIdentifier.value._object = 0;
}

unint64_t specialized NearbyGroupServerBag.BagKey.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of NearbyGroupServerBag.BagKey.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized NearbyGroupServerBag.numericConfig(for:)(unsigned __int8 a1)
{
  v2 = [objc_opt_self() sharedInstance];
  if (!v2)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v3 = v2;
  v4 = 0xD000000000000031;
  v5 = &async function pointer to closure #1 in NearbyIDSServiceController.init(queue:service:delegate:joinRequestsController:);
  v6 = String._bridgeToObjectiveC()();

  v7 = [v3 objectForKey:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (*(&v15 + 1))
  {
    type metadata accessor for NSNumber();
    if (swift_dynamicCast())
    {
      return v13;
    }
  }

  else
  {
    outlined destroy of Any?(v16);
  }

  if (one-time initialization token for defaultNearbyGroupPseudonymConfig != -1)
  {
    swift_once();
  }

  rawValue = defaultNearbyGroupPseudonymConfig._rawValue;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "tions-ttl-seconds-single-use";
    }

    else
    {
      v4 = 0xD000000000000017;
      v5 = "tions-refreshSkew";
    }
  }

  else if (a1)
  {
    v4 = 0xD00000000000003CLL;
    v5 = "tions-ttl-seconds";
  }

  if (*(defaultNearbyGroupPseudonymConfig._rawValue + 2))
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5 | 0x8000000000000000);
    v11 = v10;

    if (v11)
    {
      outlined init with copy of Any(rawValue[7] + 32 * v9, &v14);
      outlined init with take of Any(&v14, v16);
      type metadata accessor for NSNumber();
      swift_dynamicCast();
      return v13;
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_23:

  __break(1u);
  return result;
}

void specialized NearbyGroupServerBag.pseudonymConfig(service:reusable:)(void *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 8))(v5, v6);
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    v11 = v7 == 0xD000000000000030 && 0x80000001000CDD70 == v8;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v9 == 0xD000000000000032 ? (v12 = 0x80000001000CDF50 == v10) : (v12 = 0), v12))
    {
    }

    else
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v13 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v14 = 0xE800000000000000;
    v15 = 0x72656C676E617257;
    goto LABEL_16;
  }

LABEL_12:
  if (_TUIsInternalInstall())
  {
    v14 = 0xE700000000000000;
    v15 = 0x6C6F6F74736469;
LABEL_16:
    v16 = specialized NearbyGroupServerBag.numericConfig(for:)((a2 & 1) == 0);
    [v16 doubleValue];
    v18 = v17;

    v19 = specialized NearbyGroupServerBag.numericConfig(for:)(2u);
    [v19 doubleValue];
    v21 = v20;

    *a3 = v15;
    a3[1] = v14;
    a3[2] = v18;
    a3[3] = v21;
    a3[4] = 0;
    a3[5] = 0;
    return;
  }

  lazy protocol witness table accessor for type NearbyGroupServerBag.Errors and conformance NearbyGroupServerBag.Errors();
  swift_allocError();
  swift_willThrow();
}

unint64_t lazy protocol witness table accessor for type NearbyGroupServerBag.BagKey and conformance NearbyGroupServerBag.BagKey()
{
  result = lazy protocol witness table cache variable for type NearbyGroupServerBag.BagKey and conformance NearbyGroupServerBag.BagKey;
  if (!lazy protocol witness table cache variable for type NearbyGroupServerBag.BagKey and conformance NearbyGroupServerBag.BagKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyGroupServerBag.BagKey and conformance NearbyGroupServerBag.BagKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NearbyGroupServerBag.Errors and conformance NearbyGroupServerBag.Errors()
{
  result = lazy protocol witness table cache variable for type NearbyGroupServerBag.Errors and conformance NearbyGroupServerBag.Errors;
  if (!lazy protocol witness table cache variable for type NearbyGroupServerBag.Errors and conformance NearbyGroupServerBag.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyGroupServerBag.Errors and conformance NearbyGroupServerBag.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyGroupServerBag.Errors and conformance NearbyGroupServerBag.Errors;
  if (!lazy protocol witness table cache variable for type NearbyGroupServerBag.Errors and conformance NearbyGroupServerBag.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyGroupServerBag.Errors and conformance NearbyGroupServerBag.Errors);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NearbyGroupServerBag.BagKey(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NearbyGroupServerBag.BagKey(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for NearbyGroupServerBag.Errors(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for NearbyGroupServerBag.Errors(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

void IDSService.allAliases.getter()
{
  v1 = [v0 accounts];
  if (!v1)
  {
    goto LABEL_41;
  }

  v2 = v1;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSAccount, IDSAccount_ptr);
  lazy protocol witness table accessor for type IDSAccount and conformance NSObject();
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v3 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v4 = v38;
    v5 = v39;
    v6 = v40;
    v7 = v41;
    v8 = v42;
  }

  else
  {
    v7 = 0;
    v9 = -1 << *(v3 + 32);
    v5 = v3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v3 + 56);
    v4 = v3;
  }

  v35 = v6;
  v12 = _swiftEmptyArrayStorage;
  v13 = (v6 + 64) >> 6;
  while (v4 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), v18 = v37, v16 = v7, v17 = v8, !v37))
    {
LABEL_33:
      outlined consume of Set<IDSAccount>.Iterator._Variant(v4);
      return;
    }

LABEL_20:
    v19 = v13;
    v20 = v4;
    v36 = v18;
    v21 = [v18 vettedAliases];
    if (!v21)
    {
      goto LABEL_40;
    }

    v22 = v21;
    v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = *(v23 + 16);
    v25 = v12;
    v26 = *(v12 + 2);
    v27 = v26 + v24;
    if (__OFADD__(v26, v24))
    {
      goto LABEL_36;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = v25;
    if (!isUniquelyReferenced_nonNull_native || (v30 = *(v25 + 3) >> 1, v30 < v27))
    {
      if (v26 <= v27)
      {
        v31 = v26 + v24;
      }

      else
      {
        v31 = v26;
      }

      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v31, 1, v25);
      v30 = *(v29 + 3) >> 1;
    }

    v4 = v20;
    v13 = v19;
    if (*(v23 + 16))
    {
      if (v30 - *(v29 + 2) < v24)
      {
        goto LABEL_38;
      }

      v12 = v29;
      swift_arrayInitWithCopy();

      if (v24)
      {
        v32 = *(v12 + 2);
        v33 = __OFADD__(v32, v24);
        v34 = v32 + v24;
        if (v33)
        {
          goto LABEL_39;
        }

        *(v12 + 2) = v34;
      }
    }

    else
    {
      v12 = v29;

      if (v24)
      {
        goto LABEL_37;
      }
    }

    v7 = v16;
    v8 = v17;
  }

  v14 = v7;
  v15 = v8;
  v16 = v7;
  if (v8)
  {
LABEL_16:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v4 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
      goto LABEL_33;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_33;
    }

    v15 = *(v5 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type IDSAccount and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type IDSAccount and conformance NSObject;
  if (!lazy protocol witness table cache variable for type IDSAccount and conformance NSObject)
  {
    type metadata accessor for OS_dispatch_queue(255, &lazy cache variable for type metadata for IDSAccount, IDSAccount_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IDSAccount and conformance NSObject);
  }

  return result;
}

Swift::Int NearbyInvitationServiceBluetoothController.Errors.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

id NearbyInvitationJoinRequestController.init(sessionProvider:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService37NearbyInvitationJoinRequestController_credentialsByHandle] = &_swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService37NearbyInvitationJoinRequestController_pseudonymsByHandle] = &_swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService37NearbyInvitationJoinRequestController_sessionProvider] = a1;
  if (a1 == 1)
  {
    v2 = objc_allocWithZone(IDSService);
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 initWithService:v3];

    if (v4)
    {
      *&v1[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService37NearbyInvitationJoinRequestController_service] = v4;
      v6.receiver = v1;
      v6.super_class = type metadata accessor for NearbyInvitationJoinRequestController();
      return objc_msgSendSuper2(&v6, "init");
    }

    __break(1u);
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t NearbyInvitationSessionProvider.serviceName.getter(uint64_t a1)
{
  if (a1 == 1)
  {
    return 0xD000000000000030;
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t NearbyInvitationJoinRequestController.generateInvitation()(uint64_t a1)
{
  *(v2 + 248) = a1;
  *(v2 + 256) = v1;
  return _swift_task_switch(NearbyInvitationJoinRequestController.generateInvitation(), 0, 0);
}

{
  v3 = *v2;
  *(v3 + 288) = a1;
  *(v3 + 296) = v1;

  if (v1)
  {
    v4 = NearbyInvitationJoinRequestController.generateInvitation();
  }

  else
  {

    v4 = NearbyInvitationJoinRequestController.generateInvitation();
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t NearbyInvitationJoinRequestController.generateInvitation()()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 256);
  v2 = type metadata accessor for Logger();
  *(v0 + 264) = __swift_project_value_buffer(v2, static Log.default);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 256);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "%@ Received request to generate invitation.", v7, 0xCu);
    outlined destroy of Any?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  v10 = *(v0 + 256);

  v11 = *(v10 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService37NearbyInvitationJoinRequestController_service);
  *(v0 + 136) = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSService, IDSService_ptr);
  *(v0 + 144) = &protocol witness table for IDSService;
  *(v0 + 112) = v11;
  v12 = v11;
  specialized NearbyGroupServerBag.pseudonymConfig(service:reusable:)((v0 + 112), 1, (v0 + 64));
  v14 = *(v0 + 80);
  v13 = *(v0 + 88);
  v15 = *(v0 + 64);
  v16 = *(v0 + 72);
  *(v0 + 272) = v16;
  *(v0 + 224) = *(v0 + 96);
  outlined destroy of Any?(v0 + 224, &_sSSSgMd, &_sSSSgMR);
  *(v0 + 16) = v15;
  *(v0 + 24) = v16;
  *(v0 + 32) = v14;
  *(v0 + 40) = v13;
  *(v0 + 48) = 0xD00000000000001BLL;
  *(v0 + 56) = 0x80000001000CDF90;
  v17 = swift_task_alloc();
  *(v0 + 280) = v17;
  *v17 = v0;
  v17[1] = NearbyInvitationJoinRequestController.generateInvitation();

  return specialized static Pseudonym.reusable(for:configuration:)(v0 + 112, v0 + 16);
}

{
  v32 = v0;
  v1 = v0[36];
  v2 = v0[32];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 14);
  swift_beginAccess();
  v3 = [*(v1 + 16) URI];
  v4 = [v3 prefixedURI];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = type metadata accessor for Pseudonym();
  v31[3] = v8;
  v9 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type Pseudonym and conformance Pseudonym, type metadata accessor for Pseudonym, &protocol conformance descriptor for Pseudonym);
  v31[4] = v9;
  v31[0] = v1;
  swift_beginAccess();

  specialized Dictionary.subscript.setter(v31, v5, v7);
  swift_endAccess();
  type metadata accessor for OwnerCredentials();
  swift_allocObject();
  v10 = OwnerCredentials.init()();
  v11 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService37NearbyInvitationJoinRequestController_credentialsByHandle;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31[0] = *&v2[v11];
  *&v2[v11] = 0x8000000000000000;
  v29 = v5;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, v5, v7, isUniquelyReferenced_nonNull_native, &_ss18_DictionaryStorageCySS12JoinRequests16OwnerCredentialsCGMd, &_ss18_DictionaryStorageCySS12JoinRequests16OwnerCredentialsCGMR);

  *&v2[v11] = v31[0];
  swift_endAccess();
  v13 = v2;

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v28 = v9;
    v16 = v0[32];
    v17 = swift_slowAlloc();
    v30 = v8;
    v18 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    *v17 = 138412802;
    *(v17 + 4) = v16;
    *v18 = v16;
    *(v17 + 12) = 2080;
    v19 = v16;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v7, v31);

    *(v17 + 14) = v20;
    *(v17 + 22) = 2080;
    v0[30] = v10;

    v21 = String.init<A>(reflecting:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v31);

    *(v17 + 24) = v23;
    v9 = v28;
    _os_log_impl(&_mh_execute_header, v14, v15, "%@ Generated invitation, [%s] = %s", v17, 0x20u);
    outlined destroy of Any?(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v8 = v30;

    swift_arrayDestroy();
  }

  else
  {
  }

  v24 = v0[36];
  v25 = v0[31];
  v25[3] = v8;
  v25[4] = v9;
  *v25 = v24;
  v26 = v0[1];

  return v26(v10);
}

{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 112));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    outlined init with take of PseudonymProtocol(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    outlined destroy of Any?(a1, &_s44com_apple_SharePlay_NearbyInvitationsService17PseudonymProtocol_pSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService17PseudonymProtocol_pSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v9);

    return outlined destroy of Any?(v9, &_s44com_apple_SharePlay_NearbyInvitationsService17PseudonymProtocol_pSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService17PseudonymProtocol_pSgMR);
  }

  return result;
}

{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        specialized _NativeDictionary.copy()();
        v14 = v16;
      }

      result = specialized _NativeDictionary._delete(at:)(v10, v14);
      *v4 = v14;
    }
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
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native, &_ss18_DictionaryStorageCy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0iJ16InviteAdvertiserCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0iJ16InviteAdvertiserCGMR);
    v7 = type metadata accessor for UUID();
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
        specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0iJ16InviteAdvertiserCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0iJ16InviteAdvertiserCGMR);
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for UUID();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      specialized _NativeDictionary._delete(at:)(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for UUID();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network9NWBrowserC6ResultVSgMd, &_s7Network9NWBrowserC6ResultVSgMR);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for NWBrowser.Result();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    outlined destroy of Any?(a1, &_s7Network9NWBrowserC6ResultVSgMd, &_s7Network9NWBrowserC6ResultVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v7);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(a2, v12);
    return outlined destroy of Any?(v7, &_s7Network9NWBrowserC6ResultVSgMd, &_s7Network9NWBrowserC6ResultVSgMR);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for UUID();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for UUID();
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
      v15 = type metadata accessor for UUID();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      specialized _NativeDictionary._delete(at:)(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for UUID();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for UUID();
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
      v15 = type metadata accessor for UUID();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      specialized _NativeDictionary._delete(at:)(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for UUID();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NearbyInvitationJoinRequestController.releaseInvitation(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.default);
  v5 = v1;

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v33[0] = v10;
    *v8 = 138412546;
    *(v8 + 4) = v5;
    *v9 = v5;
    *(v8 + 12) = 2080;
    v11 = v5;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v33);
    _os_log_impl(&_mh_execute_header, v6, v7, "%@ Received request to release invitation owned by: %s", v8, 0x16u);
    outlined destroy of Any?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0Tm(v10);
  }

  v12 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService37NearbyInvitationJoinRequestController_credentialsByHandle;
  swift_beginAccess();
  if (*(*&v5[v12] + 16) && (, specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object), v14 = v13, , (v14 & 1) != 0))
  {
    swift_beginAccess();
    specialized Dictionary._Variant.removeValue(forKey:)(countAndFlagsBits, object, &_ss18_DictionaryStorageCySS12JoinRequests16OwnerCredentialsCGMd, &_ss18_DictionaryStorageCySS12JoinRequests16OwnerCredentialsCGMR);
    swift_endAccess();

    swift_beginAccess();
    specialized Dictionary._Variant.removeValue(forKey:)(countAndFlagsBits, object, v33);
    swift_endAccess();
    outlined init with copy of (String, Any)(v33, v32, &_s44com_apple_SharePlay_NearbyInvitationsService17PseudonymProtocol_pSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService17PseudonymProtocol_pSgMR);
    v15 = v5;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v34 = v20;
      *v18 = 138412546;
      *(v18 + 4) = v15;
      *v19 = v15;
      *(v18 + 12) = 2080;
      outlined init with copy of (String, Any)(v32, &v30, &_s44com_apple_SharePlay_NearbyInvitationsService17PseudonymProtocol_pSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService17PseudonymProtocol_pSgMR);
      if (v31)
      {
        outlined init with take of PseudonymProtocol(&v30, v29);
        outlined init with copy of PseudonymProtocol(v29, v28);
        v21 = v15;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService17PseudonymProtocol_pMd, &_s44com_apple_SharePlay_NearbyInvitationsService17PseudonymProtocol_pMR);
        v22 = String.init<A>(reflecting:)();
        v24 = v23;
        __swift_destroy_boxed_opaque_existential_0Tm(v29);
      }

      else
      {
        v26 = v15;
        v24 = 0xE300000000000000;
        v22 = 7104878;
      }

      outlined destroy of Any?(v32, &_s44com_apple_SharePlay_NearbyInvitationsService17PseudonymProtocol_pSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService17PseudonymProtocol_pSgMR);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v34);

      *(v18 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%@ Released: %s", v18, 0x16u);
      outlined destroy of Any?(v19, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      __swift_destroy_boxed_opaque_existential_0Tm(v20);
    }

    else
    {

      outlined destroy of Any?(v32, &_s44com_apple_SharePlay_NearbyInvitationsService17PseudonymProtocol_pSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService17PseudonymProtocol_pSgMR);
    }

    outlined destroy of Any?(v33, &_s44com_apple_SharePlay_NearbyInvitationsService17PseudonymProtocol_pSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService17PseudonymProtocol_pSgMR);
  }

  else
  {
    lazy protocol witness table accessor for type NearbyInvitationJoinRequestController.Errors and conformance NearbyInvitationJoinRequestController.Errors();
    swift_allocError();
    *v25 = 0;
    swift_willThrow();
  }
}

NSObject *NearbyInvitationJoinRequestController.encrypt(_:responseKey:invitation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.default);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = a3;
    v17 = a4;
    v18 = swift_slowAlloc();
    v32[0] = v18;
    *v15 = 136315138;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a5, a6, v32);
    _os_log_impl(&_mh_execute_header, v13, v14, "Attempting encryption for: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    a4 = v17;
    a3 = v16;
  }

  v19 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService37NearbyInvitationJoinRequestController_credentialsByHandle;
  swift_beginAccess();
  v20 = *(v7 + v19);
  if (*(v20 + 16))
  {

    v21 = specialized __RawDictionaryStorage.find<A>(_:)(a5, a6);
    if (v22)
    {
      v23 = *(*(v20 + 56) + 8 * v21);

      v24 = (*(*v23 + 136))(a1, a2, a3, a4);

      return v24;
    }
  }

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v33 = v27;
    *v26 = 136315138;
    *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a5, a6, &v33);
    _os_log_impl(&_mh_execute_header, v24, v25, "Failed to find credentials for invitation %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
  }

  lazy protocol witness table accessor for type NearbyInvitationJoinRequestController.Errors and conformance NearbyInvitationJoinRequestController.Errors();
  swift_allocError();
  *v28 = 0;
  swift_willThrow();
  return v24;
}

uint64_t (*NearbyInvitationJoinRequestController.decrypt(_:to:)(uint64_t a1, uint64_t a2, unint64_t a3))(uint64_t, unint64_t, uint64_t, unint64_t)
{
  v60 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestVSgMR);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v54 - v9;
  v61 = type metadata accessor for NearbyProtoJoinRequest(0);
  v11 = *(v61 - 8);
  v12 = __chkstk_darwin(v61);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = (&v54 - v16);
  __chkstk_darwin(v15);
  v19 = &v54 - v18;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = __swift_project_value_buffer(v20, static Log.default);
  v57 = a1;
  outlined init with copy of NearbyProtoJoinRequest(a1, v19);
  v59 = v21;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v55 = v23;
    v56 = a3;
    v24 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v63[0] = v54;
    *v24 = 136315138;
    outlined init with copy of NearbyProtoJoinRequest(v19, v10);
    v25 = v61;
    (*(v11 + 56))(v10, 0, 1, v61);
    outlined init with copy of (String, Any)(v10, v8, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestVSgMR);
    if ((*(v11 + 48))(v8, 1, v25) == 1)
    {
      v26 = 0xE300000000000000;
      v27 = 7104878;
    }

    else
    {
      outlined init with take of NearbyProtoJoinRequest(v8, v17);
      outlined init with copy of NearbyProtoJoinRequest(v17, v14);
      v27 = String.init<A>(reflecting:)();
      v26 = v28;
      outlined destroy of NearbyProtoJoinRequest(v17);
    }

    outlined destroy of Any?(v10, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestVSgMR);
    outlined destroy of NearbyProtoJoinRequest(v19);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v26, v63);

    *(v24 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v22, v55, "Attempting decryption of: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v54);

    a3 = v56;
  }

  else
  {

    outlined destroy of NearbyProtoJoinRequest(v19);
    v25 = v61;
  }

  v30 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService37NearbyInvitationJoinRequestController_credentialsByHandle;
  v31 = v62;
  swift_beginAccess();
  v32 = *(v31 + v30);
  if (*(v32 + 16))
  {

    v33 = specialized __RawDictionaryStorage.find<A>(_:)(v60, a3);
    if (v34)
    {
      v35 = *(*(v32 + 56) + 8 * v33);

      v36 = *(v25 + 20);
      v37 = (v57 + *(v25 + 24));
      v38 = v37[1];
      if (v38 >> 60 == 15)
      {
        v39 = 0;
      }

      else
      {
        v39 = *v37;
      }

      if (v38 >> 60 == 15)
      {
        v40 = 0xC000000000000000;
      }

      else
      {
        v40 = v37[1];
      }

      v41 = (v57 + v36);
      v42 = *v41;
      v43 = v41[1];
      if (v43 >> 60 == 15)
      {
        v44 = 0;
      }

      else
      {
        v44 = *v41;
      }

      if (v43 >> 60 == 15)
      {
        v45 = 0xC000000000000000;
      }

      else
      {
        v45 = v41[1];
      }

      v17 = *(*v35 + 128);
      outlined copy of Data?(*v37, v38);
      outlined copy of Data?(v42, v43);
      v62 = v39;
      v46 = v58;
      v47 = v17(v39, v40, v44, v45);
      if (v46)
      {
        outlined consume of Data._Representation(v44, v45);
        outlined consume of Data._Representation(v62, v40);
      }

      else
      {
        v17 = v47;

        outlined consume of Data._Representation(v44, v45);
        outlined consume of Data._Representation(v62, v40);
      }

      return v17;
    }
  }

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v64 = v51;
    *v50 = 136315138;
    *(v50 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, a3, &v64);
    _os_log_impl(&_mh_execute_header, v48, v49, "Failed to find credentials for invitation %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v51);
  }

  lazy protocol witness table accessor for type NearbyInvitationJoinRequestController.Errors and conformance NearbyInvitationJoinRequestController.Errors();
  swift_allocError();
  *v52 = 0;
  swift_willThrow();
  return v17;
}

uint64_t NearbyInvitationJoinRequestController.decryptJoinRequest(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v10 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v10 - 8);
  v11 = (*((swift_isaMask & *v4) + 0xC0))(a2, a3, a4);
  if (!v5)
  {
    v6 = v13;
    v14 = v11;
    v15 = v12;
    type metadata accessor for NearbyProtoJoinRequest.Content(0);
    outlined copy of Data._Representation(v14, v15);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type NearbyProtoJoinRequest.Content and conformance NearbyProtoJoinRequest.Content, type metadata accessor for NearbyProtoJoinRequest.Content, &protocol conformance descriptor for NearbyProtoJoinRequest.Content);
    Message.init<A>(serializedBytes:extensions:partial:options:)();
    outlined consume of Data._Representation(v14, v15);
  }

  return v6;
}

Swift::Void __swiftcall NearbyInvitationJoinRequestController.markAllPseudonymsUsed()()
{
  v1 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService37NearbyInvitationJoinRequestController_pseudonymsByHandle;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = one-time initialization token for default;

  if (v3 != -1)
  {
LABEL_16:
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.default);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21[0] = v8;
    *v7 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService17PseudonymProtocol_pMd, &_s44com_apple_SharePlay_NearbyInvitationsService17PseudonymProtocol_pMR);
    v9 = Dictionary.Values.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v21);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Marking all generated pseudonyms as used: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  v12 = 1 << *(v2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v2 + 64);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  if (v14)
  {
    while (1)
    {
      v17 = v16;
LABEL_12:
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      outlined init with copy of PseudonymProtocol(*(v2 + 56) + 40 * (v18 | (v17 << 6)), v21);
      v19 = v22;
      v20 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      (*(v20 + 56))(v19, v20);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      if (!v14)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v17 >= v15)
    {
      break;
    }

    v14 = *(v2 + 64 + 8 * v17);
    ++v16;
    if (v14)
    {
      v16 = v17;
      goto LABEL_12;
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NearbyInvitationJoinRequestController.markUsed(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService37NearbyInvitationJoinRequestController_pseudonymsByHandle;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (*(v5 + 16))
  {

    v6 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object);
    if (v7)
    {
      outlined init with copy of PseudonymProtocol(*(v5 + 56) + 40 * v6, v16);

      outlined init with take of PseudonymProtocol(v16, v17);
      v8 = v18;
      v9 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      (*(v9 + 56))(v8, v9);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      return;
    }
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.default);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v17);
    _os_log_impl(&_mh_execute_header, v11, v12, "Failed to find pseudonym for handle: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
  }

  lazy protocol witness table accessor for type NearbyInvitationJoinRequestController.Errors and conformance NearbyInvitationJoinRequestController.Errors();
  swift_allocError();
  *v15 = 0;
  swift_willThrow();
}

NSObject *NearbyInvitationJoinRequestController.existingInvitationInfo(for:)(uint64_t a1, NSObject *a2)
{
  v3 = v2;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.default);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v27);
    _os_log_impl(&_mh_execute_header, v7, v8, "Attempting lookup for existing invitation for: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
  }

  v11 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService37NearbyInvitationJoinRequestController_credentialsByHandle;
  swift_beginAccess();
  v12 = *(v3 + v11);
  if (*(v12 + 16))
  {

    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v14)
    {
      v15 = *(*(v12 + 56) + 8 * v13);

      (*(*v15 + 96))(v16);
      if (v17 >> 60 == 15)
      {
        a2 = Logger.logObject.getter();
        v18 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(a2, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&_mh_execute_header, a2, v18, "Invitation expired. PublicKey data not found.", v19, 2u);
        }

        lazy protocol witness table accessor for type NearbyInvitationJoinRequestController.Errors and conformance NearbyInvitationJoinRequestController.Errors();
        swift_allocError();
        *v20 = 1;
        swift_willThrow();
      }

      else
      {
        objc_allocWithZone(type metadata accessor for NearbyInvitationJoinRequestMetadata());

        a2 = NearbyInvitationJoinRequestMetadata.init(publicKey:pseudonym:)();
      }

      return a2;
    }
  }

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v28 = v24;
    *v23 = 136315138;
    *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v28);
    _os_log_impl(&_mh_execute_header, v21, v22, "Failed to find credentials for handle: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
  }

  lazy protocol witness table accessor for type NearbyInvitationJoinRequestController.Errors and conformance NearbyInvitationJoinRequestController.Errors();
  swift_allocError();
  *v25 = 0;
  swift_willThrow();
  return a2;
}

id NearbyInvitationServiceHost.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NearbyInvitationJoinRequestController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbyInvitationJoinRequestController();
  return objc_msgSendSuper2(&v2, "dealloc");
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0K6DeviceVyAC0H13RangingFilterC_GGMd, &_ss23_ContiguousArrayStorageCy44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0K6DeviceVyAC0H13RangingFilterC_GGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0H6DeviceVyAA0E13RangingFilterC_GMd, &_s44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0H6DeviceVyAA0E13RangingFilterC_GMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v12;
    }

    outlined init with take of PseudonymProtocol((*(v10 + 56) + 40 * v8), a3);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  specialized _NativeDictionary._delete(at:)(v6, v8);
  *v3 = v8;
  return v9;
}

{
  return specialized Dictionary._Variant.removeValue(forKey:)(a1, a2, &_ss18_DictionaryStorageCySS7Combine18PassthroughSubjectCy10Foundation4DataVs5Error_pGGMd, &_ss18_DictionaryStorageCySS7Combine18PassthroughSubjectCy10Foundation4DataVs5Error_pGGMR);
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for NWBrowser.Result();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for NWBrowser.Result();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v4;
  v15 = *v7;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()(a3, a4);
    v12 = v15;
  }

  v13 = *(*(v12 + 56) + 8 * v10);
  specialized _NativeDictionary._delete(at:)(v10, v12);
  *v7 = v12;
  return v13;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS44com_apple_SharePlay_NearbyInvitationsService17PseudonymProtocol_pGMd, &_ss18_DictionaryStorageCySS44com_apple_SharePlay_NearbyInvitationsService17PseudonymProtocol_pGMR);
  v33 = v4;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        outlined init with take of PseudonymProtocol(v24, v34);
      }

      else
      {
        outlined init with copy of PseudonymProtocol(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = outlined init with take of PseudonymProtocol(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14NearbySessions0C13AdvertisementCGMd, &_ss18_DictionaryStorageCySS14NearbySessions0C13AdvertisementCGMR);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS44com_apple_SharePlay_NearbyInvitationsService17NISessionDelegate33_7363818DEECEA212EB4728A561155246LLC8NIDeviceVGMd, &_ss18_DictionaryStorageCySS44com_apple_SharePlay_NearbyInvitationsService17NISessionDelegate33_7363818DEECEA212EB4728A561155246LLC8NIDeviceVGMR);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = *(v5 + 56) + 32 * v21;
      v25 = *(v24 + 8);
      v40 = *v24;
      v41 = *v22;
      v38 = *(v24 + 17);
      v39 = *(v24 + 16);
      v26 = *(v24 + 24);
      if ((v37 & 1) == 0)
      {
        v27 = v26;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v41;
      v16[1] = v23;
      v17 = *(v7 + 56) + 32 * v15;
      *v17 = v40;
      *(v17 + 8) = v25;
      *(v17 + 16) = v39;
      *(v17 + 17) = v38;
      *(v17 + 24) = v26;
      ++*(v7 + 16);
      v5 = v36;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v43 = v8;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v15 = result;
  if (*(v13 + 16))
  {
    v47 = v12;
    v39 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = (v10 + 16);
    v41 = v13;
    v42 = v10;
    v44 = (v10 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v46 = *(v42 + 72);
      v29 = v28 + v46 * v27;
      if (v43)
      {
        (*v44)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v40)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v15 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v22 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v22 + 8 * v32);
          if (v36 != -1)
          {
            v23 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v31) & ~*(v22 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v15 + 48) + v46 * v23, v47, v9);
      *(*(v15 + 56) + 8 * v23) = v45;
      ++*(v15 + 16);
      v13 = v41;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v7 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v13 + 32);
    v7 = v39;
    if (v37 >= 64)
    {
      bzero(v17, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v37;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
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
      Hasher.init(_seed:)();

      String.hash(into:)();
      v11 = Hasher._finalize()();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

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
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(type metadata accessor for NWBrowser.Result() - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

{
  v40 = type metadata accessor for UUID();
  v4 = *(v40 - 8);
  result = __chkstk_darwin(v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

{
  v40 = type metadata accessor for UUID();
  v4 = *(v40 - 8);
  result = __chkstk_darwin(v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 16 * a1);
          v30 = (v28 + 16 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, &_ss18_DictionaryStorageCySSShySSGGMd, &_ss18_DictionaryStorageCySSShySSGGMR);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, &_ss18_DictionaryStorageCySSSDySSSaySSGGGMd, &_ss18_DictionaryStorageCySSSDySSSaySSGGGMR);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, &_ss18_DictionaryStorageCySS12JoinRequests20RequesterCredentialsCGMd, &_ss18_DictionaryStorageCySS12JoinRequests20RequesterCredentialsCGMR);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);

    return outlined init with take of PseudonymProtocol(a1, v22);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, &_ss18_DictionaryStorageCy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0iJ16InviteAdvertiserCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0iJ16InviteAdvertiserCGMR);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, &_ss18_DictionaryStorageCy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerCyAF0I13RangingFilterCGGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerCyAF0I13RangingFilterCGGMR);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, &_ss18_DictionaryStorageCySSSaySSGGMd, &_ss18_DictionaryStorageCySSSaySSGGMR);
}

{
  v5 = v4;
  v28 = a1;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
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
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_9;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a4 & 1);
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v28;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    *v25 = v28;
    v25[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return specialized _NativeDictionary._insert(at:key:value:)(v15, v12, v23, a2, v24);
  }
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, &_ss18_DictionaryStorageCySS7Combine18PassthroughSubjectCy10Foundation4DataVs5Error_pGGMd, &_ss18_DictionaryStorageCySS7Combine18PassthroughSubjectCy10Foundation4DataVs5Error_pGGMR);
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a5, a6);
  v19 = v16[2];
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = v16[3];
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 >= v22 && (a7 & 1) == 0)
    {
      v25 = v17;
      specialized _NativeDictionary.copy()();
      v17 = v25;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v22, a7 & 1);
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(a5, a6);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v27 = *v8;
  if (v23)
  {
    v28 = v27[7] + 32 * v17;
    v29 = *(v28 + 24);
    *v28 = a1;
    *(v28 + 8) = a2;
    *(v28 + 16) = a3 & 1;
    *(v28 + 17) = HIBYTE(a3) & 1;
    *(v28 + 24) = a4;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v17, a5, a6, a1, a2, a3 & 0x101, a4, v27);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a4 & 1, a5, a6);
      v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      specialized _NativeDictionary.copy()(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v25[6] + 16 * v15);
  *v27 = a2;
  v27[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v28 = v25[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v29;
}

{
  v9 = v6;
  v14 = *v6;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a4 & 1, a5, a6);
      v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      specialized _NativeDictionary.copy()(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v25[6] + 16 * v15);
  *v27 = a2;
  v27[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v28 = v25[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v29;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);

    return outlined init with take of Any(a1, v22);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v26 = a4;
  v27 = a5;
  v6 = v5;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()(v26, v27);
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, a3 & 1, v26, v27);
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v20 & 1) == (v25 & 1))
    {
      v16 = v24;
      v22 = *v6;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v13, a2, v10);
      return specialized _NativeDictionary._insert(at:key:value:)(v16, v13, a1, v22);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v6;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v22[7] + 8 * v16) = a1;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of PseudonymProtocol(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 16 * result);
  *v8 = a2;
  v8[1] = a3;
  v9 = a8[7] + 32 * result;
  *v9 = a4;
  *(v9 + 8) = a5;
  *(v9 + 16) = a6 & 1;
  *(v9 + 17) = HIBYTE(a6) & 1;
  *(v9 + 24) = a7;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for UUID();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS44com_apple_SharePlay_NearbyInvitationsService17PseudonymProtocol_pGMd, &_ss18_DictionaryStorageCySS44com_apple_SharePlay_NearbyInvitationsService17PseudonymProtocol_pGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        outlined init with copy of PseudonymProtocol(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of PseudonymProtocol(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0iJ16InviteAdvertiserCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0iJ16InviteAdvertiserCGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS44com_apple_SharePlay_NearbyInvitationsService17NISessionDelegate33_7363818DEECEA212EB4728A561155246LLC8NIDeviceVGMd, &_ss18_DictionaryStorageCySS44com_apple_SharePlay_NearbyInvitationsService17NISessionDelegate33_7363818DEECEA212EB4728A561155246LLC8NIDeviceVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v17 *= 32;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v26 = *(v22 + 17);
        v27 = *(v22 + 24);
        v28 = (*(v4 + 48) + v18);
        *v28 = v20;
        v28[1] = v21;
        v29 = *(v4 + 56) + v17;
        *v29 = v23;
        *(v29 + 8) = v24;
        *(v29 + 16) = v25;
        *(v29 + 17) = v26;
        *(v29 + 24) = v27;
        v30 = v27;
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

      v16 = *(v2 + 64 + 8 * v8);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of Any(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v30 = type metadata accessor for UUID();
  v32 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVy14NearbySessions22InvitationJoinResponseCSg_s5Error_pSgtcGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVy14NearbySessions22InvitationJoinResponseCSg_s5Error_pSgtcGMR);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v31 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v3 + 64;
    for (i = v32 + 32; v12; result = )
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = v32;
      v19 = *(v32 + 72) * v17;
      v20 = v29;
      v21 = v30;
      (*(v32 + 16))(v29, *(v3 + 48) + v19, v30);
      v17 *= 16;
      v22 = v31;
      v23 = *(v31 + 48);
      v24 = *(v18 + 32);
      v33 = *(*(v3 + 56) + v17);
      v24(v23 + v19, v20, v21);
      *(*(v22 + 56) + v17) = v33;
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

        v1 = v25;
        v5 = v31;
        goto LABEL_18;
      }

      v16 = *(v26 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v31 = type metadata accessor for UUID();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSuGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSuGMR);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

{
  v1 = v0;
  v41 = type metadata accessor for NWBrowser.Result();
  v44 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for UUID();
  v43 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV7Network9NWBrowserC6ResultVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV7Network9NWBrowserC6ResultVGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

{
  v1 = v0;
  v33 = type metadata accessor for UUID();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVScTyyts5NeverOGGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVScTyyts5NeverOGGMR);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

{
  v1 = v0;
  v31 = type metadata accessor for UUID();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0I9GroupHostCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0I9GroupHostCGMR);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14NearbySessions0C13AdvertisementCGMd, &_ss18_DictionaryStorageCySS14NearbySessions0C13AdvertisementCGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

{
  v5 = v2;
  v35 = type metadata accessor for UUID();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v7 = *v2;
  v8 = static _DictionaryStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    v30 = v5;
    v31 = (v7 + 64);
    if (v9 != v7 || result >= v7 + 64 + 8 * v11)
    {
      result = memmove(result, v31, 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v36 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = v37;
        v24 = *(v37 + 72) * v22;
        v26 = v34;
        v25 = v35;
        (*(v37 + 16))(v34, *(v7 + 48) + v24, v35);
        v27 = *(*(v7 + 56) + 8 * v22);
        v28 = v36;
        (*(v23 + 32))(*(v36 + 48) + v24, v26, v25);
        *(*(v28 + 56) + 8 * v22) = v27;

        v17 = v38;
      }

      while (v38);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v30;
        v9 = v36;
        goto LABEL_21;
      }

      v21 = *(v31 + v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v38 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v9;
  }

  return result;
}

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NearbyInvitationJoinRequestController.Errors and conformance NearbyInvitationJoinRequestController.Errors()
{
  result = lazy protocol witness table cache variable for type NearbyInvitationJoinRequestController.Errors and conformance NearbyInvitationJoinRequestController.Errors;
  if (!lazy protocol witness table cache variable for type NearbyInvitationJoinRequestController.Errors and conformance NearbyInvitationJoinRequestController.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationJoinRequestController.Errors and conformance NearbyInvitationJoinRequestController.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyInvitationJoinRequestController.Errors and conformance NearbyInvitationJoinRequestController.Errors;
  if (!lazy protocol witness table cache variable for type NearbyInvitationJoinRequestController.Errors and conformance NearbyInvitationJoinRequestController.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationJoinRequestController.Errors and conformance NearbyInvitationJoinRequestController.Errors);
  }

  return result;
}

uint64_t outlined init with copy of NearbyProtoJoinRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyProtoJoinRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of NearbyProtoJoinRequest(uint64_t a1)
{
  v2 = type metadata accessor for NearbyProtoJoinRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of NearbyProtoJoinRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyProtoJoinRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t NearbyInvitationServiceBluetoothController.findInvitations(scannerID:for:ignoringDistance:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = a2;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, log);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 67109378;
    *(v10 + 4) = NearbyInvitationActivityType.rawValue.getter();
    *(v10 + 8) = 2080;
    if (a3)
    {
      v12 = 0x69676E6172206F6ELL;
    }

    else
    {
      v12 = 0x676E69676E6172;
    }

    if (a3)
    {
      v13 = 0xEA0000000000676ELL;
    }

    else
    {
      v13 = 0xE700000000000000;
    }

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v24);

    *(v10 + 10) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "Finding invitations for %u with %s", v10, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
  }

  type metadata accessor for NearbyInvitationsInviteScanner(0);
  v15 = swift_allocObject();
  v16 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_lostInvitations;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14NearbySessions0A13AdvertisementCGMd, &_sScSy14NearbySessions0A13AdvertisementCGMR);
  (*(*(v17 - 8) + 56))(v15 + v16, 1, 1, v17);
  *(v15 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_advertisements) = &_swiftEmptyDictionarySingleton;
  v18 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_scanContinuation;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMR);
  v20 = *(*(v19 - 8) + 56);
  v20(v15 + v18, 1, 1, v19);
  v20(v15 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_lostInvitationContinuation, 1, 1, v19);
  NearbyInvitationsScanner.init(ignoringDistance:)(a3 & 1);
  [v15[6] setUseCase:131092];
  [v15[6] addDiscoveryType:21];
  *(v4 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService42NearbyInvitationServiceBluetoothController_participantInvitationScan) = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14NearbySessions0D22InvitationActivityTypeOGMd, &_ss23_ContiguousArrayStorageCy14NearbySessions0D22InvitationActivityTypeOGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1000C8970;
  *(v21 + 32) = v6;
  (*(*v15 + 67))(a1, v21);
}

uint64_t NearbyInvitationsInviteScanner.__allocating_init(ignoringDistance:)(uint64_t a1)
{
  v1 = a1;
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_lostInvitations;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14NearbySessions0A13AdvertisementCGMd, &_sScSy14NearbySessions0A13AdvertisementCGMR);
  (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  *(v2 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_advertisements) = &_swiftEmptyDictionarySingleton;
  v5 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_scanContinuation;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMR);
  v7 = *(*(v6 - 8) + 56);
  v7(v2 + v5, 1, 1, v6);
  v7(v2 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_lostInvitationContinuation, 1, 1, v6);
  NearbyInvitationsScanner.init(ignoringDistance:)(v1);
  v8 = *(v2 + 48);

  [v8 setUseCase:131092];
  [*(v2 + 48) addDiscoveryType:21];

  return v2;
}

uint64_t NearbyInvitationServiceBluetoothController.lostInvitations()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService42NearbyInvitationServiceBluetoothController_participantInvitationScan;
  if (*(v1 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService42NearbyInvitationServiceBluetoothController_participantInvitationScan))
  {
    if (one-time initialization token for log != -1)
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
      *v8 = 0;
      v9 = "Monitoring for lost invitations";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v6, v7, v9, v8, 2u);
    }
  }

  else
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, log);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "No ongoing scan, can't monitor for lost invitations. Call findInvitations() first";
      goto LABEL_10;
    }
  }

  v11 = *(v2 + v4);
  if (v11)
  {
    v12 = *(*v11 + 440);

    v12(v13);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14NearbySessions0A13AdvertisementCGMd, &_sScSy14NearbySessions0A13AdvertisementCGMR);
    v16 = *(*(v15 - 8) + 56);

    return v16(a1, 1, 1, v15);
  }
}

Swift::Void __swiftcall NearbyInvitationServiceBluetoothController.stopFindingInvitations()()
{
  v1 = *(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService42NearbyInvitationServiceBluetoothController_participantInvitationScan);
  if (v1)
  {
    v2 = *(*v1 + 336);

    v2(v3);
  }
}

uint64_t NearbyInvitationServiceBluetoothController.broadcast(invitation:)(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return _swift_task_switch(NearbyInvitationServiceBluetoothController.broadcast(invitation:), 0, 0);
}

uint64_t NearbyInvitationServiceBluetoothController.broadcast(invitation:)()
{
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = type metadata accessor for Logger();
  v0[6] = __swift_project_value_buffer(v2, log);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received request to start broadcasting invitation %@", v7, 0xCu);
    outlined destroy of Any?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  v10 = v0[4];
  v11 = v0[5];

  v0[7] = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService42NearbyInvitationServiceBluetoothController_queue;
  v12 = swift_allocObject();
  v0[8] = v12;
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;
  v13 = v10;
  v14 = v11;
  v15 = swift_task_alloc();
  v0[9] = v15;
  v16 = type metadata accessor for NearbyInvitationsInviteAdvertiser(0);
  *v15 = v0;
  v15[1] = NearbyInvitationServiceBluetoothController.broadcast(invitation:);

  return AsyncSerialQueue.performAndWaitFor<A>(_:)(v0 + 2, &async function pointer to partial apply for closure #1 in NearbyInvitationServiceBluetoothController.broadcast(invitation:), v12, v16);
}

{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = NearbyInvitationServiceBluetoothController.broadcast(invitation:);
  }

  else
  {

    v2 = NearbyInvitationServiceBluetoothController.broadcast(invitation:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = v0[2];
  v0[11] = v1;
  v4 = (*(*v1 + 104) + **(*v1 + 104));
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = NearbyInvitationServiceBluetoothController.broadcast(invitation:);

  return v4();
}

{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = NearbyInvitationServiceBluetoothController.broadcast(invitation:);
  }

  else
  {
    v2 = NearbyInvitationServiceBluetoothController.broadcast(invitation:);
  }

  return _swift_task_switch(v2, 0, 0);
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
  v20 = v0;
  v1 = *(v0 + 32);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 104);
    v5 = *(v0 + 32);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v6 = 138412546;
    *(v6 + 4) = v5;
    *v7 = v5;
    *(v6 + 12) = 2080;
    *(v0 + 24) = v4;
    v9 = v5;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v19);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to start advertising invitation: %@, reason: %s", v6, 0x16u);
    outlined destroy of Any?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  v14 = *(v0 + 32);
  v13 = *(v0 + 40);
  v15 = swift_allocObject();
  *(v0 + 112) = v15;
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
  v16 = v14;
  v13;
  v17 = swift_task_alloc();
  *(v0 + 120) = v17;
  *v17 = v0;
  v17[1] = NearbyInvitationServiceBluetoothController.broadcast(invitation:);

  return AsyncSerialQueue.performAndWaitFor<A>(_:)(v17, &async function pointer to partial apply for closure #2 in NearbyInvitationServiceBluetoothController.broadcast(invitation:), v15, &type metadata for () + 8);
}

{

  return _swift_task_switch(NearbyInvitationServiceBluetoothController.broadcast(invitation:), 0, 0);
}

{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in NearbyInvitationServiceBluetoothController.broadcast(invitation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = type metadata accessor for UUID();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return _swift_task_switch(closure #1 in NearbyInvitationServiceBluetoothController.broadcast(invitation:), 0, 0);
}

uint64_t closure #1 in NearbyInvitationServiceBluetoothController.broadcast(invitation:)()
{
  v36 = v0;
  v1 = v0[9];
  NearbyAdvertisementRequest.identifier.getter();
  v2 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService42NearbyInvitationServiceBluetoothController_ongoingBroadcasts;
  swift_beginAccess();
  if (*(*(v1 + v2) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v0[14]), (v3 & 1) != 0))
  {
    v4 = v0[14];
    v5 = v0[11];
    v6 = v0[12];
    swift_endAccess();
    (*(v6 + 8))(v4, v5);
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v8 = v0[9];
    v7 = v0[10];
    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, log);
    v10 = v7;
    v11 = v8;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[10];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v35 = v17;
      *v15 = 138412546;
      *(v15 + 4) = v14;
      *v16 = v14;
      *(v15 + 12) = 2080;
      type metadata accessor for NearbyInvitationsInviteAdvertiser(0);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v18 = v14;

      v19 = Dictionary.description.getter();
      v21 = v20;

      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v35);

      *(v15 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v12, v13, "Advertiser already started for %@, all broadcasts: %s", v15, 0x16u);
      outlined destroy of Any?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      __swift_destroy_boxed_opaque_existential_0Tm(v17);
    }

    lazy protocol witness table accessor for type NearbyInvitationServiceBluetoothController.Errors and conformance NearbyInvitationServiceBluetoothController.Errors();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();

    v24 = v0[1];
  }

  else
  {
    v25 = v0[13];
    v26 = v0[14];
    v27 = v0[11];
    v28 = v0[12];
    v29 = v0[10];
    v34 = v0[8];
    swift_endAccess();
    v30 = *(v28 + 8);
    v30(v26, v27);
    type metadata accessor for NearbyInvitationsInviteAdvertiser(0);
    v31 = swift_allocObject();
    NearbyInvitationsInviteAdvertiser.init(invitation:)(v29);
    NearbyAdvertisementRequest.identifier.getter();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *(v1 + v2);
    *(v1 + v2) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, v25, isUniquelyReferenced_nonNull_native);
    v30(v25, v27);
    *(v1 + v2) = v35;
    swift_endAccess();
    *v34 = v31;

    v24 = v0[1];
  }

  return v24();
}

uint64_t closure #2 in NearbyInvitationServiceBluetoothController.broadcast(invitation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  type metadata accessor for UUID();
  v3[7] = swift_task_alloc();

  return _swift_task_switch(closure #2 in NearbyInvitationServiceBluetoothController.broadcast(invitation:), 0, 0);
}

uint64_t closure #2 in NearbyInvitationServiceBluetoothController.broadcast(invitation:)(uint64_t a1)
{
  v2 = *(v1 + 56);
  NearbyAdvertisementRequest.identifier.getter();
  swift_beginAccess();
  specialized Dictionary.subscript.setter(0, v2);
  swift_endAccess();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t NearbyInvitationServiceBluetoothController.stopBroadcast(invitation:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for UUID();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return _swift_task_switch(NearbyInvitationServiceBluetoothController.stopBroadcast(invitation:), 0, 0);
}

uint64_t NearbyInvitationServiceBluetoothController.stopBroadcast(invitation:)()
{
  v1 = v0[9];
  v2 = v0[6];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = *(v2 + 16);
  v0[10] = v6;
  v0[11] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v3);
  v7 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v8 = swift_allocObject();
  v0[12] = v8;
  *(v8 + 16) = v4;
  (*(v2 + 32))(v8 + v7, v1, v3);
  v9 = v4;
  v10 = swift_task_alloc();
  v0[13] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0eF16InviteAdvertiserCSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0eF16InviteAdvertiserCSgMR);
  *v10 = v0;
  v10[1] = NearbyInvitationServiceBluetoothController.stopBroadcast(invitation:);

  return AsyncSerialQueue.performAndWaitFor<A>(_:)(v0 + 2, &async function pointer to partial apply for closure #1 in NearbyInvitationServiceBluetoothController.stopBroadcast(invitation:), v8, v11);
}

{

  return _swift_task_switch(NearbyInvitationServiceBluetoothController.stopBroadcast(invitation:), 0, 0);
}

{
  v26 = v0;
  v1 = v0[2];
  v0[14] = v1;
  if (v1)
  {
    v2 = *(*v1 + 112);

    v24 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = NearbyInvitationServiceBluetoothController.stopBroadcast(invitation:);

    return v24();
  }

  else
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v5 = v0[10];
    v6 = v0[8];
    v7 = v0[5];
    v8 = v0[3];
    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, log);
    v5(v6, v8, v7);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[8];
    v14 = v0[5];
    v15 = v0[6];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = v17;
      *v16 = 136315138;
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      (*(v15 + 8))(v13, v14);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v25);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v10, v11, "Broadcaster for %s not found", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
    }

    else
    {

      (*(v15 + 8))(v13, v14);
    }

    lazy protocol witness table accessor for type NearbyInvitationServiceBluetoothController.Errors and conformance NearbyInvitationServiceBluetoothController.Errors();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();

    v23 = v0[1];

    return v23();
  }
}

{

  return _swift_task_switch(NearbyInvitationServiceBluetoothController.stopBroadcast(invitation:), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in NearbyInvitationServiceBluetoothController.stopBroadcast(invitation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return _swift_task_switch(closure #1 in NearbyInvitationServiceBluetoothController.stopBroadcast(invitation:), 0, 0);
}

uint64_t closure #1 in NearbyInvitationServiceBluetoothController.stopBroadcast(invitation:)()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService42NearbyInvitationServiceBluetoothController_ongoingBroadcasts;
  swift_beginAccess();
  v4 = specialized __RawDictionaryStorage.find<A>(_:)(v1);
  v5 = 0;
  if (v6)
  {
    v7 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v2 + v3);
    *(v2 + v3) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v5 = *(*(v9 + 56) + 8 * v7);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *(v2 + v3) = v9;
  }

  **(v0 + 40) = v5;
  swift_endAccess();
  v12 = *(v0 + 8);

  return v12();
}

uint64_t NearbyInvitationServiceBluetoothController.assertPublic(invitation:rotations:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for UUID();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();

  return _swift_task_switch(NearbyInvitationServiceBluetoothController.assertPublic(invitation:rotations:), 0, 0);
}

uint64_t NearbyInvitationServiceBluetoothController.assertPublic(invitation:rotations:)()
{
  v1 = v0[11];
  v2 = v0[8];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = *(v2 + 16);
  v0[12] = v6;
  v0[13] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v3);
  v7 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v8 = swift_allocObject();
  v0[14] = v8;
  *(v8 + 16) = v4;
  (*(v2 + 32))(v8 + v7, v1, v3);
  v9 = v4;
  v10 = swift_task_alloc();
  v0[15] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0eF16InviteAdvertiserCSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0eF16InviteAdvertiserCSgMR);
  *v10 = v0;
  v10[1] = NearbyInvitationServiceBluetoothController.assertPublic(invitation:rotations:);

  return AsyncSerialQueue.performAndWaitFor<A>(_:)(v0 + 2, &async function pointer to partial apply for closure #1 in NearbyInvitationServiceBluetoothController.assertPublic(invitation:rotations:), v8, v11);
}

{

  return _swift_task_switch(NearbyInvitationServiceBluetoothController.assertPublic(invitation:rotations:), 0, 0);
}

{
  v25 = v0;
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[5];
    v3 = *(*v1 + 176);

    v3(v2);

    v4 = v0[1];
  }

  else
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v5 = v0[12];
    v6 = v0[10];
    v7 = v0[7];
    v8 = v0[4];
    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, log);
    v5(v6, v8, v7);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[10];
    v14 = v0[7];
    v15 = v0[8];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136315138;
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      (*(v15 + 8))(v13, v14);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v24);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v10, v11, "Broadcaster for %s not found", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
    }

    else
    {

      (*(v15 + 8))(v13, v14);
    }

    lazy protocol witness table accessor for type NearbyInvitationServiceBluetoothController.Errors and conformance NearbyInvitationServiceBluetoothController.Errors();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();

    v4 = v0[1];
  }

  return v4();
}

uint64_t closure #1 in NearbyInvitationServiceBluetoothController.assertPublic(invitation:rotations:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return _swift_task_switch(closure #1 in NearbyInvitationServiceBluetoothController.assertPublic(invitation:rotations:), 0, 0);
}

uint64_t closure #1 in NearbyInvitationServiceBluetoothController.assertPublic(invitation:rotations:)()
{
  v1 = *(v0 + 48);
  v2 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService42NearbyInvitationServiceBluetoothController_ongoingBroadcasts;
  swift_beginAccess();
  if (*(*(v1 + v2) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 56)), (v3 & 1) != 0))
  {
  }

  else
  {
    v4 = 0;
  }

  **(v0 + 40) = v4;
  swift_endAccess();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t NearbyInvitationServiceBluetoothController.releasePublicAssertion(invitation:assertionIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for UUID();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v3[8] = *(v5 + 64);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return _swift_task_switch(NearbyInvitationServiceBluetoothController.releasePublicAssertion(invitation:assertionIdentifier:), 0, 0);
}

uint64_t NearbyInvitationServiceBluetoothController.releasePublicAssertion(invitation:assertionIdentifier:)()
{
  v1 = v0[10];
  v2 = v0[7];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v6 = *(v2 + 16);
  v0[11] = v6;
  v0[12] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v3);
  v7 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v8 = swift_allocObject();
  v0[13] = v8;
  *(v8 + 16) = v4;
  (*(v2 + 32))(v8 + v7, v1, v3);
  v9 = v4;
  v10 = swift_task_alloc();
  v0[14] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0eF16InviteAdvertiserCSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0eF16InviteAdvertiserCSgMR);
  *v10 = v0;
  v10[1] = NearbyInvitationServiceBluetoothController.releasePublicAssertion(invitation:assertionIdentifier:);

  return AsyncSerialQueue.performAndWaitFor<A>(_:)(v0 + 2, &async function pointer to partial apply for closure #1 in NearbyInvitationServiceBluetoothController.releasePublicAssertion(invitation:assertionIdentifier:), v8, v11);
}

{

  return _swift_task_switch(NearbyInvitationServiceBluetoothController.releasePublicAssertion(invitation:assertionIdentifier:), 0, 0);
}

{
  v25 = v0;
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[4];
    v3 = *(*v1 + 184);

    v3(v2);

    v4 = v0[1];
  }

  else
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v5 = v0[11];
    v6 = v0[9];
    v7 = v0[6];
    v8 = v0[3];
    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, log);
    v5(v6, v8, v7);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[9];
    v14 = v0[6];
    v15 = v0[7];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136315138;
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      (*(v15 + 8))(v13, v14);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v24);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v10, v11, "Broadcaster for %s not found", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
    }

    else
    {

      (*(v15 + 8))(v13, v14);
    }

    lazy protocol witness table accessor for type NearbyInvitationServiceBluetoothController.Errors and conformance NearbyInvitationServiceBluetoothController.Errors();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();

    v4 = v0[1];
  }

  return v4();
}

uint64_t closure #1 in NearbyInvitationServiceBluetoothController.releasePublicAssertion(invitation:assertionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return _swift_task_switch(closure #1 in NearbyInvitationServiceBluetoothController.releasePublicAssertion(invitation:assertionIdentifier:), 0, 0);
}

id NearbyInvitationServiceBluetoothController.init()()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMd, &_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMR);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v3 + 104))(v5, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v2);
  AsyncSerialQueue.init(priority:bufferingPolicy:)();
  v10 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService42NearbyInvitationServiceBluetoothController_ongoingBroadcasts;
  *&v0[v10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_44com_apple_SharePlay_NearbyInvitationsService0iJ16InviteAdvertiserCTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  *&v0[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService42NearbyInvitationServiceBluetoothController_participantInvitationScan] = 0;
  *&v0[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService42NearbyInvitationServiceBluetoothController_ongoingInviteRequests] = 0;
  v12.receiver = v0;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "init");
}

id NearbyInvitationServiceBluetoothController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t NearbyInvitationsAdvertiser.queue.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService27NearbyInvitationsAdvertiser_queue;
  v5 = type metadata accessor for AsyncSerialQueue();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t NearbyInvitationsAdvertiser.__allocating_init()()
{
  v0 = swift_allocObject();
  NearbyInvitationsAdvertiser.init()();
  return v0;
}

id *NearbyInvitationsAdvertiser.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMd, &_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMR);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v3 + 104))(v5, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v2);
  AsyncSerialQueue.init(priority:bufferingPolicy:)();
  v10 = [objc_allocWithZone(CBAdvertiser) init];
  v1[2] = v10;
  v11 = v10;
  v12 = String._bridgeToObjectiveC()();
  [v11 setLabel:v12];

  [v1[2] setAdvertiseRate:42];
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, log);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26 = v17;
    *v16 = 136315138;
    v18 = *(*v1 + 15);

    v20 = v18(v19);
    v22 = v21;

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v26);

    *(v16 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v14, v15, "Init %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
  }

  return v1;
}

uint64_t NearbyInvitationsAdvertiser.start()()
{
  *(v1 + 16) = v0;
  return _swift_task_switch(NearbyInvitationsAdvertiser.start(), 0, 0);
}

{
  v14 = v0;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, log);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 16);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v7 = (*(*v4 + 120))();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s Request to start advertiser", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  v10 = swift_task_alloc();
  *(v0 + 24) = v10;
  *v10 = v0;
  v10[1] = NearbyInvitationsAdvertiser.start();
  v11 = *(v0 + 16);

  return AsyncSerialQueue.performAndWaitFor<A>(_:)(v10, &async function pointer to partial apply for closure #1 in NearbyInvitationsAdvertiser.start(), v11, &type metadata for () + 8);
}

{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = NearbyInvitationsAdvertiser.start();
  }

  else
  {

    v2 = NearbyInvitationsAdvertiser.start();
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  return (*(v0 + 8))();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in NearbyInvitationsAdvertiser.start()()
{
  v14 = v0;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, log);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[18];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v7 = (*(*v4 + 120))();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s Activating advertiser", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  v10 = *(v0[18] + 16);
  v0[2] = v0;
  v0[3] = closure #1 in NearbyInvitationsAdvertiser.start();
  v11 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v0[13] = &block_descriptor_208;
  v0[14] = v11;
  [v10 activateWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 152) = v1;
  if (v1)
  {
    v2 = closure #1 in NearbyInvitationsAdvertiser.start();
  }

  else
  {
    v2 = closure #1 in NearbyInvitationsAdvertiser.start();
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ()(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

id *NearbyInvitationsAdvertiser.deinit()
{
  v1 = v0;
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
    v13 = v6;
    *v5 = 136315138;
    v7 = (*(*v0 + 15))();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  [v0[2] invalidate];
  v10 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService27NearbyInvitationsAdvertiser_queue;
  v11 = type metadata accessor for AsyncSerialQueue();
  (*(*(v11 - 8) + 8))(v1 + v10, v11);
  return v1;
}

uint64_t NearbyInvitationsAdvertiser.stop()()
{
  *(v1 + 16) = v0;
  return _swift_task_switch(NearbyInvitationsAdvertiser.stop(), 0, 0);
}

{
  v14 = v0;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, log);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 16);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v7 = (*(*v4 + 120))();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s Request to stop advertiser", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  v10 = swift_task_alloc();
  *(v0 + 24) = v10;
  *v10 = v0;
  v10[1] = NearbyInvitationsAdvertiser.stop();
  v11 = *(v0 + 16);

  return AsyncSerialQueue.performAndWaitFor<A>(_:)(v10, &async function pointer to partial apply for closure #1 in NearbyInvitationsAdvertiser.stop(), v11, &type metadata for () + 8);
}

{

  return _swift_task_switch(NearbyInvitationsAdvertiser.stop(), 0, 0);
}

{
  return (*(v0 + 8))();
}

uint64_t closure #1 in NearbyInvitationsAdvertiser.stop()()
{
  [*(*(v0 + 16) + 16) invalidate];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t NearbyInvitationsAdvertiser.description.getter()
{
  _StringGuts.grow(_:)(28);
  v1._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x203A666C657328;
  v2._object = 0xE700000000000000;
  String.append(_:)(v2);
  _print_unlocked<A, B>(_:_:)();
  v3._countAndFlagsBits = 0x747265766461202CLL;
  v3._object = 0xEE00203A72657369;
  String.append(_:)(v3);
  v4 = [*(v0 + 16) description];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 41;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  return 0;
}

id NearbyInvitationRangedHost.matches(device:)(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  result = [a1 stableIdentifier];
  if (result)
  {
    v9 = result;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (v10 == a2 && v12 == a3)
    {
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }

    return ([a1 nearbyInfoV2InvitationCounter] == a4);
  }

  return result;
}

BOOL static NearbyInvitationRangedHost.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
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

Swift::Int NearbyInvitationRangedHost.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NearbyInvitationRangedHost()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NearbyInvitationRangedHost(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance NearbyInvitationRangedHost(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
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

uint64_t key path setter for NearbyInvitationsScanner.rangedHosts : NearbyInvitationsScanner(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
}

uint64_t NearbyInvitationsScanner.ignoringDistance.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

id NearbyInvitationsScanner.rangingSession.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

void NearbyInvitationsScanner.rangingSession.setter(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
  v4 = a1;
  [v3 invalidate];
}

void (*NearbyInvitationsScanner.rangingSession.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
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
  v5 = *(v1 + 40);
  *(v4 + 24) = v5;
  v6 = v5;
  return NearbyInvitationsScanner.rangingSession.modify;
}

void NearbyInvitationsScanner.rangingSession.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v6 = *(*a1 + 32);
  v7 = *(v6 + 40);
  *(v6 + 40) = *v5;
  v8 = v4;
  v9 = v8;
  if (a2)
  {
    v10 = v8;
    [v7 invalidate];

    v9 = *v5;
  }

  else
  {
    [v7 invalidate];
  }

  free(v3);
}

uint64_t key path setter for NearbyInvitationsScanner.deviceFoundStream : NearbyInvitationsScanner(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo8CBDeviceCGMd, &_sScSySo8CBDeviceCGMR);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*(**a2 + 280))(v6);
}

uint64_t NearbyInvitationsScanner.deviceFoundStream.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOySo8CBDeviceC__GMd, &_sScS12ContinuationV15BufferingPolicyOySo8CBDeviceC__GMR);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo8CBDeviceCGSgMd, &_sScSySo8CBDeviceCGSgMR);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v17[-v11];
  v13 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService24NearbyInvitationsScanner____lazy_storage___deviceFoundStream;
  swift_beginAccess();
  outlined init with copy of (String, Any)(v1 + v13, v12, &_sScSySo8CBDeviceCGSgMd, &_sScSySo8CBDeviceCGSgMR);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo8CBDeviceCGMd, &_sScSySo8CBDeviceCGMR);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) != 1)
  {
    return (*(v15 + 32))(a1, v12, v14);
  }

  outlined destroy of Any?(v12, &_sScSySo8CBDeviceCGSgMd, &_sScSySo8CBDeviceCGSgMR);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CBDevice, CBDevice_ptr);
  (*(v4 + 104))(v6, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v3);
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(v15 + 16))(v10, a1, v14);
  (*(v15 + 56))(v10, 0, 1, v14);
  swift_beginAccess();
  outlined assign with take of AsyncStream<CBDevice>?(v10, v1 + v13, &_sScSySo8CBDeviceCGSgMd, &_sScSySo8CBDeviceCGSgMR);
  return swift_endAccess();
}

uint64_t closure #1 in closure #1 in NearbyInvitationsScanner.deviceFoundStream.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo8CBDeviceC_GSgMd, &_sScS12ContinuationVySo8CBDeviceC_GSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo8CBDeviceC_GMd, &_sScS12ContinuationVySo8CBDeviceC_GMR);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  return (*(*a2 + 304))(v6);
}

uint64_t NearbyInvitationsScanner.deviceFoundStream.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo8CBDeviceCGSgMd, &_sScSySo8CBDeviceCGSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo8CBDeviceCGMd, &_sScSySo8CBDeviceCGMR);
  v7 = *(v6 - 8);
  (*(v7 + 32))(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService24NearbyInvitationsScanner____lazy_storage___deviceFoundStream;
  swift_beginAccess();
  outlined assign with take of AsyncStream<CBDevice>?(v5, v1 + v8, &_sScSySo8CBDeviceCGSgMd, &_sScSySo8CBDeviceCGSgMR);
  return swift_endAccess();
}

void (*NearbyInvitationsScanner.deviceFoundStream.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo8CBDeviceCGSgMd, &_sScSySo8CBDeviceCGSgMR) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v4[7] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo8CBDeviceCGMd, &_sScSySo8CBDeviceCGMR);
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v8 + 64));
  }

  v4[10] = v9;
  NearbyInvitationsScanner.deviceFoundStream.getter(v9);
  return NearbyInvitationsScanner.deviceFoundStream.modify;
}

void NearbyInvitationsScanner.deviceFoundStream.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 56);
  v6 = *(*a1 + 64);
  v7 = *(*a1 + 48);
  if (a2)
  {
    (*(v3 + 16))(v2[7], v2[10], v2[8]);
    (*(v3 + 56))(v5, 0, 1, v6);
    v8 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService24NearbyInvitationsScanner____lazy_storage___deviceFoundStream;
    swift_beginAccess();
    outlined assign with take of AsyncStream<CBDevice>?(v5, v7 + v8, &_sScSySo8CBDeviceCGSgMd, &_sScSySo8CBDeviceCGSgMR);
    swift_endAccess();
    (*(v3 + 8))(v4, v6);
  }

  else
  {
    (*(v3 + 32))(v2[7], v2[10], v2[8]);
    (*(v3 + 56))(v5, 0, 1, v6);
    v9 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService24NearbyInvitationsScanner____lazy_storage___deviceFoundStream;
    swift_beginAccess();
    outlined assign with take of AsyncStream<CBDevice>?(v5, v7 + v9, &_sScSySo8CBDeviceCGSgMd, &_sScSySo8CBDeviceCGSgMR);
    swift_endAccess();
  }

  free(v4);
  free(v5);

  free(v2);
}

uint64_t key path setter for NearbyInvitationsScanner.deviceFoundContinuation : NearbyInvitationsScanner(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo8CBDeviceC_GSgMd, &_sScS12ContinuationVySo8CBDeviceC_GSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of (String, Any)(a1, &v8 - v5, &_sScS12ContinuationVySo8CBDeviceC_GSgMd, &_sScS12ContinuationVySo8CBDeviceC_GSgMR);
  return (*(**a2 + 304))(v6);
}

uint64_t NearbyInvitationsScanner.__allocating_init(ignoringDistance:)(uint64_t a1)
{
  v1 = a1;
  v2 = swift_allocObject();
  NearbyInvitationsScanner.init(ignoringDistance:)(v1);
  return v2;
}

uint64_t *NearbyInvitationsScanner.init(ignoringDistance:)(char a1)
{
  v3 = *v1;
  v1[2] = &_swiftEmptySetSingleton;
  v1[5] = [objc_allocWithZone(NISession) init];
  v1[8] = 0;
  v4 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService24NearbyInvitationsScanner____lazy_storage___deviceFoundStream;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo8CBDeviceCGMd, &_sScSySo8CBDeviceCGMR);
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService24NearbyInvitationsScanner_deviceFoundContinuation;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo8CBDeviceC_GMd, &_sScS12ContinuationVySo8CBDeviceC_GMR);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  *(v1 + 32) = a1;
  v1[6] = [objc_allocWithZone(CBDiscovery) init];
  v1[7] = 200;
  v1[3] = [objc_allocWithZone(type metadata accessor for NISessionDelegate()) init];
  swift_weakAssign();
  v8 = v1[6];

  v9 = v8;
  v10 = String._bridgeToObjectiveC()();
  [v9 setLabel:v10];

  [v1[6] setBleScanRate:20];
  v11 = v1[6];
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = v11;

  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = a1;
  *(v14 + 32) = v3;
  v17[4] = partial apply for closure #1 in NearbyInvitationsScanner.init(ignoringDistance:);
  v17[5] = v14;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = thunk for @escaping @callee_guaranteed (@guaranteed CBDevice) -> ();
  v17[3] = &block_descriptor;
  v15 = _Block_copy(v17);

  [v13 setDeviceFoundHandler:v15];
  _Block_release(v15);

  return v1;
}

uint64_t closure #1 in NearbyInvitationsScanner.init(ignoringDistance:)(void *a1, uint64_t a2, char a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySo8CBDeviceC__GMd, &_sScS12ContinuationV11YieldResultOySo8CBDeviceC__GMR);
  v84 = *(v7 - 8);
  __chkstk_darwin(v7);
  v83 = &v74 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo8CBDeviceC_GSgMd, &_sScS12ContinuationVySo8CBDeviceC_GSgMR);
  __chkstk_darwin(v9 - 8);
  v11 = &v74 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo8CBDeviceC_GMd, &_sScS12ContinuationVySo8CBDeviceC_GMR);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v74 - v14;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v17 = result;
  (*(*result + 296))();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {

    return outlined destroy of Any?(v11, &_sScS12ContinuationVySo8CBDeviceC_GSgMd, &_sScS12ContinuationVySo8CBDeviceC_GSgMR);
  }

  (*(v13 + 32))(v15, v11, v12);
  if (([a1 nearbyInfoV2Flags] & 4) == 0 && !objc_msgSend(a1, "nearbyInfoV2InvitationCounter"))
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    __swift_project_value_buffer(v62, log);
    v63 = a1;
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v66 = 138412290;
      *(v66 + 4) = v63;
      *v67 = v63;
      v68 = v63;
      _os_log_impl(&_mh_execute_header, v64, v65, "%@ not being ingested for ranging since it doesn't have an invitation.", v66, 0xCu);
      outlined destroy of Any?(v67, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    goto LABEL_39;
  }

  if (a3)
  {
LABEL_7:
    v86 = a1;
    v18 = a1;
    v19 = v83;
    AsyncStream.Continuation.yield(_:)();

    (*(v84 + 8))(v19, v7);
    return (*(v13 + 8))(v15, v12);
  }

  v75 = v7;
  v76 = a4;
  v78 = v15;
  v79 = v13;
  v80 = v12;
  v20 = *(*v17 + 152);
  v77 = v17;
  v21 = v20();
  v22 = v21;
  v23 = v21 + 56;
  v24 = 1 << *(v21 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v21 + 56);
  v27 = (v24 + 63) >> 6;
  v28 = 0;

  while (v26)
  {
LABEL_17:
    v30 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v31 = *(v22 + 48) + 24 * (v30 | (v28 << 6));
    v33 = *v31;
    v32 = *(v31 + 8);
    v82 = *(v31 + 16);

    v34 = [a1 stableIdentifier];
    if (!v34)
    {
      goto LABEL_11;
    }

    v35 = v34;
    v36 = a1;
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    if (v33 == v37 && v32 == v39)
    {

      a1 = v36;
      v22 = v81;
LABEL_25:
      v42 = [a1 nearbyInfoV2InvitationCounter];

      if (v82 == v42)
      {

        v13 = v79;
        v12 = v80;
        v15 = v78;
        v7 = v75;
        goto LABEL_7;
      }
    }

    else
    {
      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

      a1 = v36;
      v22 = v81;
      if (v41)
      {
        goto LABEL_25;
      }

LABEL_11:
    }
  }

  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_44;
    }

    if (v29 >= v27)
    {
      break;
    }

    v26 = *(v23 + 8 * v29);
    ++v28;
    if (v26)
    {
      v28 = v29;
      goto LABEL_17;
    }
  }

  if (one-time initialization token for log == -1)
  {
    goto LABEL_28;
  }

LABEL_44:
  swift_once();
LABEL_28:
  v43 = type metadata accessor for Logger();
  __swift_project_value_buffer(v43, log);
  v44 = a1;
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v85 = v49;
    *v47 = 136315394;
    v86 = v76;
    MetatypeMetadata = swift_getMetatypeMetadata();
    v51 = >> prefix<A>(_:)(&v86, MetatypeMetadata);
    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, &v85);

    *(v47 + 4) = v53;
    *(v47 + 12) = 2112;
    *(v47 + 14) = v44;
    *v48 = v44;
    v54 = v44;
    _os_log_impl(&_mh_execute_header, v45, v46, "%s: Attempting to perform ranging on device: %@", v47, 0x16u);
    outlined destroy of Any?(v48, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0Tm(v49);
  }

  v13 = v79;
  v12 = v80;
  v15 = v78;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NIBluetoothSample, NIBluetoothSample_ptr);
  v55 = v44;
  v56 = NIBluetoothSample.init(with:)(v55);
  if (v56)
  {
    v57 = v56;
    v58 = v77;
    v59 = (*(*v77 + 368))();
    v60 = (*(*v58 + 200))(v59);
    v61 = [v60 devicePresenceNotifier];

    [v61 notifyBluetoothSample:v57];
    goto LABEL_40;
  }

  v69 = v55;
  v64 = Logger.logObject.getter();
  v70 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v64, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *v71 = 138412290;
    *(v71 + 4) = v69;
    *v72 = v69;
    v73 = v69;
    _os_log_impl(&_mh_execute_header, v64, v70, "Couldn't create BTSample for device: %@", v71, 0xCu);
    outlined destroy of Any?(v72, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

LABEL_39:

LABEL_40:

  return (*(v13 + 8))(v15, v12);
}

void thunk for @escaping @callee_guaranteed (@guaranteed CBDevice) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t NearbyInvitationsScanner.startScan()()
{
  *(v1 + 144) = v0;
  return _swift_task_switch(NearbyInvitationsScanner.startScan(), 0, 0);
}

{
  v13 = v0;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[19] = __swift_project_value_buffer(v1, log);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    v6 = _typeName(_:qualified:)();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s: Scan starting", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  v9 = *(v0[18] + 48);
  v0[2] = v0;
  v0[3] = NearbyInvitationsScanner.startScan();
  v10 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v0[13] = &block_descriptor_42;
  v0[14] = v10;
  [v9 activateWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = NearbyInvitationsScanner.startScan();
  }

  else
  {
    v2 = NearbyInvitationsScanner.startScan();
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v11 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    v5 = _typeName(_:qualified:)();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v10);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s: Scan started", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
  }

  v8 = *(v0 + 8);

  return v8();
}

{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

Swift::Void __swiftcall NearbyInvitationsScanner.stopScan()()
{
  v1 = v0;
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
    v13[0] = v6;
    *v5 = 136315138;
    v7 = _typeName(_:qualified:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v13);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: Scan stopping", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  v10 = (*(*v1 + 200))([*(v1 + 48) invalidate]);
  [v10 invalidate];

  swift_beginAccess();
  *(v1 + 16) = &_swiftEmptySetSingleton;

  v11 = *(v1 + 24);
  v12 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsServiceP33_7363818DEECEA212EB4728A56115524617NISessionDelegate_devices;
  swift_beginAccess();
  *(v11 + v12) = &_swiftEmptyDictionarySingleton;
}

id NearbyInvitationsScanner.enableRanging(with:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, log);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = _typeName(_:qualified:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v16);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    CBScanRateToString(a1);
    v11 = String.init(cString:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v16);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: Scan with ranging enabled at %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v14 = *(v2 + 48);
  [v14 setDiscoveryFlags:{objc_msgSend(v14, "discoveryFlags") | 0x8000000000000000}];
  [v14 setDiscoveryFlags:{objc_msgSend(v14, "discoveryFlags") | 0x10000000000}];

  return [v14 setBleScanRate:a1];
}

Swift::Void __swiftcall NearbyInvitationsScanner.disableRanging()()
{
  v1 = v0;
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
    v11 = v6;
    *v5 = 136315138;
    v7 = _typeName(_:qualified:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: Scan without ranging", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  v10 = *(v1 + 48);
  [v10 setDiscoveryFlags:{objc_msgSend(v10, "discoveryFlags") & 0x7FFFFFFFFFFFFFFFLL}];
  [v10 setDiscoveryFlags:{objc_msgSend(v10, "discoveryFlags") & 0xFFFFFEFFFFFFFFFFLL}];

  [v10 setBleScanRate:20];
}

Swift::Void __swiftcall NearbyInvitationsScanner.restartRanging()()
{
  v1 = v0;
  v33 = type metadata accessor for DispatchTimeInterval();
  v2 = *(v33 - 8);
  __chkstk_darwin(v33);
  v4 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for DispatchTime();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v34 = &v28 - v9;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v10);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.default);
  swift_retain_n();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v30 = v4;
    v15 = v14;
    v29 = swift_slowAlloc();
    v35 = v1;
    aBlock[0] = v29;
    *v15 = 136315394;
    type metadata accessor for NearbyInvitationsScanner(0);
    v31 = v5;

    v16 = String.init<A>(reflecting:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, aBlock);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2048;
    v19 = *(v1 + 56);

    *(v15 + 14) = v19;
    v5 = v31;

    _os_log_impl(&_mh_execute_header, v12, v13, "%s Scheduling NISession recreation in %ldms", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);

    v4 = v30;
  }

  else
  {
  }

  aBlock[4] = partial apply for closure #1 in NearbyInvitationsScanner.restartRanging();
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_46;
  _Block_copy(aBlock);
  v35 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v20 = DispatchWorkItem.init(flags:block:)();

  v21 = *(v1 + 64);
  *(v1 + 64) = v20;
  if (v21)
  {
    swift_retain_n();
    dispatch thunk of DispatchWorkItem.cancel()();
  }

  else
  {
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v22 = static OS_dispatch_queue.main.getter();
  v23 = v32;
  static DispatchTime.now()();
  *v4 = *(v1 + 56);
  v24 = v33;
  (*(v2 + 104))(v4, enum case for DispatchTimeInterval.milliseconds(_:), v33);
  v25 = v34;
  + infix(_:_:)();
  (*(v2 + 8))(v4, v24);
  v26 = *(v6 + 8);
  v26(v23, v5);
  OS_dispatch_queue.asyncAfter(deadline:execute:)();

  v26(v25, v5);
  v27 = *(v1 + 56);
  if (v27 <= 9999)
  {
    if (v27 < 0xC000000000000000)
    {
      __break(1u);
    }

    else
    {
      *(v1 + 56) = 2 * v27;
    }
  }
}

uint64_t closure #1 in NearbyInvitationsScanner.restartRanging()(uint64_t a1)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.default);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    type metadata accessor for NearbyInvitationsScanner(0);

    v7 = String.init<A>(reflecting:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s NISession recreated", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  v10 = (*(*a1 + 208))([objc_allocWithZone(NISession) init]);
  return (*(*a1 + 376))(v10);
}

Swift::Void __swiftcall NearbyInvitationsScanner.runSession()()
{
  v1 = v0;
  v2 = [v0[6] discoveredDevices];
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CBDevice, CBDevice_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_38:

    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    __swift_project_value_buffer(v49, log);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "Tried to run session with no devices that have an invitation. Disabling ranging.", v52, 2u);
    }

    lazy protocol witness table accessor for type NearbyInvitationsScanner.Errors and conformance NearbyInvitationsScanner.Errors();
    swift_allocError();
    swift_willThrow();
    goto LABEL_43;
  }

LABEL_37:
  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    goto LABEL_38;
  }

LABEL_3:
  v5 = 0;
  v6 = v3 & 0xC000000000000001;
  v7 = v3 & 0xFFFFFFFFFFFFFF8;
  v8 = v3 + 32;
  v64 = v1;
  v60 = v3 & 0xC000000000000001;
  v61 = v4;
  v59 = v3 & 0xFFFFFFFFFFFFFF8;
  v63 = v3 + 32;
  while (1)
  {
    if (v6)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v7 + 16))
      {
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v9 = *(v8 + 8 * v5);
    }

    v10 = v9;
    if (__OFADD__(v5++, 1))
    {
      goto LABEL_48;
    }

    if (([v9 nearbyInfoV2Flags] & 4) != 0 || objc_msgSend(v10, "nearbyInfoV2InvitationCounter"))
    {
      break;
    }

LABEL_30:
    v8 = v63;
    if (v5 == v4)
    {
      goto LABEL_38;
    }
  }

  v62 = v5;
  v12 = (*(*v1 + 19))();
  v13 = v12;
  v14 = v12 + 56;
  v15 = 1 << *(v12 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(v12 + 56);
  v3 = (v15 + 63) >> 6;

  v18 = 0;
  while (v17)
  {
LABEL_20:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v21 = (*(v13 + 48) + 24 * (v20 | (v18 << 6)));
    v22 = v21[1];
    v65 = *v21;

    v23 = [v10 stableIdentifier];
    if (v23)
    {
      v24 = v23;
      v1 = v10;
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      if (v65 == v25 && v22 == v27)
      {

        goto LABEL_29;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v10 = v1;
      if (v29)
      {

LABEL_29:

        v1 = v64;
        v4 = v61;
        v5 = v62;
        v7 = v59;
        v6 = v60;
        goto LABEL_30;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    if (v19 >= v3)
    {
      break;
    }

    v17 = *(v14 + 8 * v19);
    ++v18;
    if (v17)
    {
      v18 = v19;
      goto LABEL_20;
    }
  }

  v30 = objc_allocWithZone(NIRegionPredicate);
  v31 = String._bridgeToObjectiveC()();
  v32 = [v30 initWithName:v31 devicePresencePreset:3];

  v33 = objc_allocWithZone(NIRegionPredicate);
  v34 = String._bridgeToObjectiveC()();
  v35 = [v33 initWithName:v34 devicePresencePreset:5];

  v36 = objc_allocWithZone(NIDevicePresenceConfiguration);
  v66 = 0;
  v37 = v32;
  v38 = v35;
  v39 = [v36 initWithInnerBoundary:v37 outerBoundary:v38 error:&v66];
  if (v39)
  {
    v40 = v39;
    v41 = v66;

    [v40 setAllowedDevices:4];
    v42 = [v40 setMonitoringOption:1];
    v43 = *(*v64 + 25);
    v44 = (v43)(v42);
    [v44 setDelegate:v64[3]];

    v45 = v43();
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
    v46 = static OS_dispatch_queue.main.getter();
    [v45 setDelegateQueue:v46];

    v47 = v43();
    [v47 runWithConfiguration:v40];

    (*(*v64 + 43))(60);
    return;
  }

  v48 = v66;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v1 = v64;
LABEL_43:
  if (one-time initialization token for log != -1)
  {
LABEL_49:
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  __swift_project_value_buffer(v53, log);
  swift_errorRetain();
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v56 = 138412290;
    swift_errorRetain();
    v58 = _swift_stdlib_bridgeErrorToNSError();
    *(v56 + 4) = v58;
    *v57 = v58;
    _os_log_impl(&_mh_execute_header, v54, v55, "NIDevicePresenceConfiguration failed with %@", v56, 0xCu);
    outlined destroy of Any?(v57, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  (*(*v1 + 44))();
}

uint64_t NearbyInvitationsScanner.lostDevices()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOySo8CBDeviceC__GMd, &_sScS12ContinuationV15BufferingPolicyOySo8CBDeviceC__GMR);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CBDevice, CBDevice_ptr);
  (*(v1 + 104))(v3, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v0);
  return AsyncStream.init(_:bufferingPolicy:_:)();
}

void closure #1 in NearbyInvitationsScanner.lostDevices()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo8CBDeviceC_GMd, &_sScS12ContinuationVySo8CBDeviceC_GMR);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  v8 = *(a2 + 48);
  v9 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(v7, a1, v4);
  v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  (*(v5 + 32))(v11 + v10, v7, v4);
  aBlock[4] = partial apply for closure #1 in closure #1 in NearbyInvitationsScanner.lostDevices();
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed CBDevice) -> ();
  aBlock[3] = &block_descriptor_205;
  v12 = _Block_copy(aBlock);

  [v8 setDeviceLostHandler:v12];
  _Block_release(v12);
}

uint64_t closure #1 in closure #1 in NearbyInvitationsScanner.lostDevices()(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySo8CBDeviceC__GMd, &_sScS12ContinuationV11YieldResultOySo8CBDeviceC__GMR);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - v5;
  v7 = [a1 idsDeviceID];
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
  }

  v13 = *(Strong + 24);

  v14 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsServiceP33_7363818DEECEA212EB4728A56115524617NISessionDelegate_devices;
  swift_beginAccess();
  v15 = *&v13[v14];

  if (!*(v15 + 16))
  {
  }

  specialized __RawDictionaryStorage.find<A>(_:)(v9, v11);
  v17 = v16;

  if (v17)
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, log);

    v20 = a1;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v29 = v25;
      *v23 = 136315394;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x80000001000CE670, &v29);
      *(v23 + 12) = 2112;
      *(v23 + 14) = v20;
      *v24 = v20;
      v26 = v20;
      _os_log_impl(&_mh_execute_header, v21, v22, "%s: Lost unfiltered device: %@", v23, 0x16u);
      outlined destroy of Any?(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      __swift_destroy_boxed_opaque_existential_0Tm(v25);
    }

    v29 = v20;
    v27 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo8CBDeviceC_GMd, &_sScS12ContinuationVySo8CBDeviceC_GMR);
    AsyncStream.Continuation.yield(_:)();
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

Swift::Void __swiftcall NearbyInvitationsScanner.foundDeviceInRange(identifier:)(Swift::String identifier)
{
  object = identifier._object;
  *&v90 = identifier._countAndFlagsBits;
  v83[1] = *v1;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo8CBDeviceC_GMd, &_sScS12ContinuationVySo8CBDeviceC_GMR);
  v92 = *(v85 - 8);
  __chkstk_darwin(v85);
  v83[0] = v83 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo8CBDeviceC_GSgMd, &_sScS12ContinuationVySo8CBDeviceC_GSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = v83 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySo8CBDeviceC__GSgMd, &_sScS12ContinuationV11YieldResultOySo8CBDeviceC__GSgMR);
  __chkstk_darwin(v6 - 8);
  v87 = v83 - v7;
  v84 = v1;
  v89 = v1[6];
  v8 = [v89 discoveredDevices];
  v88 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CBDevice, CBDevice_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v86 = v5;
  if (v9 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v11 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v15 = [v12 idsDeviceID];
      if (v15)
      {
        v16 = v15;
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        if (v17 == v90 && v19 == object)
        {

LABEL_17:
          if (([v13 nearbyInfoV2Flags] & 4) != 0 || objc_msgSend(v13, "nearbyInfoV2InvitationCounter"))
          {

            v22 = v13;
            v23 = specialized NearbyInvitationRangedHost.init(with:)(v22);
            if (v24)
            {
              v26 = v23;
              v27 = v24;
              v28 = v25;
              if (one-time initialization token for log != -1)
              {
                swift_once();
              }

              v29 = type metadata accessor for Logger();
              __swift_project_value_buffer(v29, log);

              v30 = object;

              v31 = Logger.logObject.getter();
              v32 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v31, v32))
              {
                v33 = swift_slowAlloc();
                v95 = swift_slowAlloc();
                *v33 = 136315650;
                v34 = _typeName(_:qualified:)();
                v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v95);
                v89 = v22;
                v37 = v28;
                v38 = v36;

                *(v33 + 4) = v38;
                *(v33 + 12) = 2080;
                v93[0] = v26;
                v93[1] = v27;
                v94 = v37;

                v39 = String.init<A>(reflecting:)();
                v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v95);

                *(v33 + 14) = v41;
                v28 = v37;
                v22 = v89;
                v42 = v90;
                *(v33 + 22) = 2080;
                *(v33 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v30, &v95);
                _os_log_impl(&_mh_execute_header, v31, v32, "%s: Found ranged device: %s with identifier: %s", v33, 0x20u);
                swift_arrayDestroy();
              }

              v43 = v92;
              v45 = v86;
              v44 = v87;
              v46 = v84;
              swift_beginAccess();
              specialized Set._Variant.insert(_:)(&v95, v26, v27, v28);
              swift_endAccess();

              (*(*v46 + 296))(v47);
              v48 = v85;
              if ((v43[6].isa)(v45, 1, v85))
              {

                outlined destroy of Any?(v45, &_sScS12ContinuationVySo8CBDeviceC_GSgMd, &_sScS12ContinuationVySo8CBDeviceC_GSgMR);
                v49 = 1;
              }

              else
              {
                v56 = v83[0];
                (v43[2].isa)(v83[0], v45, v48);
                outlined destroy of Any?(v45, &_sScS12ContinuationVySo8CBDeviceC_GSgMd, &_sScS12ContinuationVySo8CBDeviceC_GSgMR);
                v93[0] = v22;
                AsyncStream.Continuation.yield(_:)();
                (v43[1].isa)(v56, v48);
                v49 = 0;
              }

              v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySo8CBDeviceC__GMd, &_sScS12ContinuationV11YieldResultOySo8CBDeviceC__GMR);
              (*(*(v57 - 8) + 56))(v44, v49, 1, v57);
              outlined destroy of Any?(v44, &_sScS12ContinuationV11YieldResultOySo8CBDeviceC__GSgMd, &_sScS12ContinuationV11YieldResultOySo8CBDeviceC__GSgMR);
            }

            else
            {
              if (one-time initialization token for log != -1)
              {
                swift_once();
              }

              v50 = type metadata accessor for Logger();
              __swift_project_value_buffer(v50, log);
              v51 = v22;
              v92 = Logger.logObject.getter();
              v52 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v92, v52))
              {
                v53 = swift_slowAlloc();
                v54 = swift_slowAlloc();
                *v53 = 138412290;
                *(v53 + 4) = v51;
                *v54 = v51;
                object = v51;
                _os_log_impl(&_mh_execute_header, v92, v52, "Failed to get Bluetooth device after ranging: %@", v53, 0xCu);
                outlined destroy of Any?(v54, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

                v55 = object;
              }

              else
              {

                v55 = v92;
              }
            }

            return;
          }

          goto LABEL_4;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {
          goto LABEL_17;
        }
      }

LABEL_4:

      ++v11;
      if (v14 == i)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

LABEL_41:

  if (one-time initialization token for log != -1)
  {
    goto LABEL_57;
  }

LABEL_42:
  v58 = type metadata accessor for Logger();
  v59 = __swift_project_value_buffer(v58, log);
  v60 = object;

  v92 = v59;
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v93[0] = v64;
    *v63 = 136315138;
    *(v63 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v60, v93);
    _os_log_impl(&_mh_execute_header, v61, v62, "Failed to find ranged device %s in bluetooth's discovered devices:", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v64);
  }

  v65 = [v89 discoveredDevices];
  v66 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v66 >> 62))
  {
    v68 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v68)
    {
      goto LABEL_59;
    }

    goto LABEL_46;
  }

  v68 = _CocoaArrayWrapper.endIndex.getter();
  if (v68)
  {
LABEL_46:
    v69 = 0;
    v70 = v66 & 0xC000000000000001;
    v71 = v66 & 0xFFFFFFFFFFFFFF8;
    *&v67 = 138412290;
    v90 = v67;
    object = v66;
    do
    {
      if (v70)
      {
        v72 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v73 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
          goto LABEL_55;
        }
      }

      else
      {
        if (v69 >= *(v71 + 16))
        {
          goto LABEL_56;
        }

        v72 = *(v66 + 8 * v69 + 32);
        v73 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          swift_once();
          goto LABEL_42;
        }
      }

      v74 = v72;
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = v70;
        v78 = v68;
        v79 = swift_slowAlloc();
        v80 = v71;
        v81 = swift_slowAlloc();
        *v79 = v90;
        *(v79 + 4) = v74;
        *v81 = v74;
        v82 = v74;
        _os_log_impl(&_mh_execute_header, v75, v76, "device: %@", v79, 0xCu);
        outlined destroy of Any?(v81, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v71 = v80;

        v68 = v78;
        v70 = v77;
        v66 = object;
      }

      ++v69;
    }

    while (v73 != v68);
  }

LABEL_59:
}

id *NearbyInvitationsScanner.deinit()
{

  outlined destroy of Any?(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService24NearbyInvitationsScanner____lazy_storage___deviceFoundStream, &_sScSySo8CBDeviceCGSgMd, &_sScSySo8CBDeviceCGSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService24NearbyInvitationsScanner_deviceFoundContinuation, &_sScS12ContinuationVySo8CBDeviceC_GSgMd, &_sScS12ContinuationVySo8CBDeviceC_GSgMR);
  return v0;
}

uint64_t NearbyInvitationsScanner.__deallocating_deinit()
{

  outlined destroy of Any?(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService24NearbyInvitationsScanner____lazy_storage___deviceFoundStream, &_sScSySo8CBDeviceCGSgMd, &_sScSySo8CBDeviceCGSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService24NearbyInvitationsScanner_deviceFoundContinuation, &_sScS12ContinuationVySo8CBDeviceC_GSgMd, &_sScS12ContinuationVySo8CBDeviceC_GSgMR);

  return swift_deallocClassInstance();
}

id NearbyInvitationsInviteAdvertiser.publicAssertions.didset()
{
  v1 = v0;
  if (one-time initialization token for log != -1)
  {
LABEL_23:
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
    v29[0] = v6;
    *v5 = 136315138;
    swift_beginAccess();
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

    v7 = Dictionary.description.getter();
    v9 = v8;

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, v29);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "new assertions: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  Lock.assertOwned()();
  v11 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService33NearbyInvitationsInviteAdvertiser_publicAssertions;
  swift_beginAccess();
  v12 = *(v1 + v11);
  v13 = 1 << *(v12 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v12 + 64);
  v16 = (v13 + 63) >> 6;

  v17 = 0;
  if (!v15)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_7:
    while (1)
    {
      v18 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v19 = *(*(v12 + 56) + ((v17 << 9) | (8 * v18)));
      if (v19)
      {
        break;
      }

      if (!v15)
      {
        goto LABEL_9;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v22 = _swiftEmptyArrayStorage[2];
    v21 = _swiftEmptyArrayStorage[3];
    v23 = v22 + 1;
    if (v22 >= v21 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
      v23 = v22 + 1;
    }

    _swiftEmptyArrayStorage[2] = v23;
    _swiftEmptyArrayStorage[v22 + 4] = v19;
  }

  while (v15);
  while (1)
  {
LABEL_9:
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v20 >= v16)
    {
      break;
    }

    v15 = *(v12 + 64 + 8 * v20);
    ++v17;
    if (v15)
    {
      v17 = v20;
      goto LABEL_7;
    }
  }

  v24 = _swiftEmptyArrayStorage[2];

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 67109120;
    *(v27 + 4) = v24 != 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "NearbyInvitationsInviteAdvertiser: Re-calculated needsPublicBit: %{BOOL}d", v27, 8u);
  }

  return [*(v1 + 16) setNearbyInfoV2Flags:4 * (v24 != 0)];
}

id NearbyInvitationsInviteAdvertiser.publicAssertions.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService33NearbyInvitationsInviteAdvertiser_publicAssertions;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return NearbyInvitationsInviteAdvertiser.publicAssertions.didset();
}

id (*NearbyInvitationsInviteAdvertiser.publicAssertions.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return NearbyInvitationsInviteAdvertiser.publicAssertions.modify;
}

id NearbyInvitationsInviteAdvertiser.publicAssertions.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return NearbyInvitationsInviteAdvertiser.publicAssertions.didset();
  }

  return result;
}

uint64_t NearbyInvitationsInviteAdvertiser.init(invitation:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService33NearbyInvitationsInviteAdvertiser_lock;
  type metadata accessor for Lock();
  swift_allocObject();
  *(v1 + v8) = Lock.init()();
  *(v1 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService33NearbyInvitationsInviteAdvertiser_publicAssertions) = &_swiftEmptyDictionarySingleton;
  NearbyInvitationsAdvertiser.init()();
  v9 = *(v1 + 16);
  swift_retain_n();
  [v9 setAdvertiseRate:42];
  [*(v2 + 16) setUseCase:131091];
  v10 = *(v2 + 16);
  [v10 setNearbyInfoV2InvitationRouteType:NearbyAdvertisementRequest.route.getter()];

  v11 = *(v2 + 16);
  NearbyAdvertisementRequest.identifier.getter();
  LOBYTE(v9) = UUID.hashValue.getter();
  (*(v5 + 8))(v7, v4);
  [v11 setNearbyInfoV2InvitationCounter:v9];

  v12 = *(v2 + 16);
  NearbyAdvertisementRequest.activityType.getter();
  LODWORD(v9) = NearbyInvitationActivityType.rawValue.getter();
  [v12 setNearbyInfoV2DecryptedFlags:v9 == NearbyInvitationActivityType.rawValue.getter()];

  v13 = *(v2 + 16);
  v14 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = partial apply for closure #1 in NearbyInvitationsInviteAdvertiser.init(invitation:);
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_52;
  v15 = _Block_copy(aBlock);
  v16 = v13;

  [v16 setAdvertisingAddressChangedHandler:v15];
  _Block_release(v15);

  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, log);
  swift_retain_n();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    aBlock[0] = v21;
    *v20 = 136315906;
    v22 = _typeName(_:qualified:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, aBlock);

    *(v20 + 4) = v24;
    *(v20 + 12) = 256;
    v25 = [*(v2 + 16) nearbyInfoV2InvitationRouteType];

    *(v20 + 14) = v25;

    *(v20 + 15) = 256;
    v26 = [*(v2 + 16) nearbyInfoV2InvitationCounter];

    *(v20 + 17) = v26;

    *(v20 + 18) = 256;
    v27 = [*(v2 + 16) nearbyInfoV2DecryptedFlags];

    *(v20 + 20) = v27;

    _os_log_impl(&_mh_execute_header, v18, v19, "%s: Begin advertising with parameters: routeType=%hhu counter=%hhu types=%hhu", v20, 0x15u);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
  }

  else
  {
  }

  return v2;
}