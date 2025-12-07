void NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, int a4, void (*a5)(char *, uint64_t), uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v40 = a3;
  v39 = a2;
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v36 - v17;
  v19 = [objc_opt_self() getBlastDoorSharedConnection];
  if (v19)
  {
    v20 = v19;
    v37 = a4;
    v38 = a6;
    type metadata accessor for NSNumber();
    v21 = a7;
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    v23 = [objc_allocWithZone(IDSBlastDoorMessageContext) initWithService:v21 command:isa];

    if (v23)
    {
      [v23 setPayloadType:1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000CA970;
      *(inited + 32) = 1835365481;
      *(inited + 72) = &type metadata for Int;
      *(inited + 80) = 0x64616F6C796170;
      v25 = v40;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 48) = v25;
      *(inited + 120) = &type metadata for Data;
      *(inited + 88) = 0xE700000000000000;
      *(inited + 96) = a1;
      v26 = v39;
      *(inited + 104) = v39;
      outlined copy of Data._Representation(a1, v26);
      v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
      swift_arrayDestroy();
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v27);

      v28 = Dictionary._bridgeToObjectiveC()().super.isa;

      v29 = swift_allocObject();
      *(v29 + 16) = a8;
      *(v29 + 24) = a9;
      *(v29 + 32) = v25;
      *(v29 + 40) = v37 & 1;
      v30 = v38;
      *(v29 + 48) = a5;
      *(v29 + 56) = v30;
      aBlock[4] = partial apply for closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:);
      aBlock[5] = v29;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AnyHashable : Any]?, @unowned IDSClientMessageType, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_4;
      v31 = _Block_copy(aBlock);

      [v20 diffuseClientMessage:v28 context:v23 withCompletionBlock:v31];
      _Block_release(v31);

      return;
    }

    (*(*(a8 - 8) + 56))(v18, 1, 1, a8);
    lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors();
    v34 = swift_allocError();
    *v35 = 2;
    a5(v18, v34);
  }

  else
  {
    (*(*(a8 - 8) + 56))(v18, 1, 1, a8);
    lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors();
    v32 = swift_allocError();
    *v33 = 0;
    a5(v18, v32);
  }

  (*(v16 + 8))(v18, v15);
}

unint64_t lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors()
{
  result = lazy protocol witness table cache variable for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors;
  if (!lazy protocol witness table cache variable for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors;
  if (!lazy protocol witness table cache variable for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors);
  }

  return result;
}

uint64_t closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(char *, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v31[1] = a7;
  v32 = a6;
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v31 - v15;
  v17 = type metadata accessor for BinaryDecodingOptions();
  v18 = __chkstk_darwin(v17 - 8);
  v19 = *(a8 - 8);
  __chkstk_darwin(v18);
  v21 = v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_17;
  }

  v33 = 1835365481;
  v34 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

  v22 = specialized __RawDictionaryStorage.find<A>(_:)(v35);
  if ((v23 & 1) == 0)
  {
    goto LABEL_16;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v22, v37);
  outlined destroy of AnyHashable(v35);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  if (a5)
  {
    if (a4 > 2)
    {
      if (a4 == 3)
      {
        if (v33 != 3)
        {
          goto LABEL_17;
        }
      }

      else if (a4 == 4)
      {
        if (v33 != 4)
        {
          goto LABEL_17;
        }
      }

      else if (v33 != 5)
      {
        goto LABEL_17;
      }
    }

    else if (a4)
    {
      if (a4 == 1)
      {
        if (v33 != 1)
        {
          goto LABEL_17;
        }
      }

      else if (v33 != 2)
      {
        goto LABEL_17;
      }
    }

    else if (v33)
    {
      goto LABEL_17;
    }
  }

  else if (v33 != a4)
  {
    goto LABEL_17;
  }

  v33 = 0x64616F6C796170;
  v34 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v24 = specialized __RawDictionaryStorage.find<A>(_:)(v35), (v25 & 1) == 0))
  {
LABEL_16:
    outlined destroy of AnyHashable(v35);
    goto LABEL_17;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v24, v37);
  outlined destroy of AnyHashable(v35);
  if (swift_dynamicCast())
  {
    v26 = v33;
    v27 = v34;
    v37[0] = v33;
    v37[1] = v34;
    v36 = 0;
    memset(v35, 0, sizeof(v35));
    outlined copy of Data._Representation(v33, v34);
    BinaryDecodingOptions.init()();
    Message.init<A>(serializedBytes:extensions:partial:options:)();
    (*(v19 + 16))(v16, v21, a8);
    (*(v19 + 56))(v16, 0, 1, a8);
    v32(v16, 0);
    outlined consume of Data._Representation(v26, v27);
    (*(v14 + 8))(v16, v13);
    return (*(v19 + 8))(v21, a8);
  }

LABEL_17:
  (*(v19 + 56))(v16, 1, 1, a8);
  lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors();
  v28 = swift_allocError();
  *v29 = 3;
  v32(v16, v28);

  return (*(v14 + 8))(v16, v13);
}

void specialized NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, int a4, void *a5, void *a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E22ProtoConnectionRequestVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E22ProtoConnectionRequestVSgMR);
  __chkstk_darwin(v12 - 8);
  v14 = &aBlock[-1] - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a6;
  v16 = objc_opt_self();
  v17 = a6;
  v18 = [v16 getBlastDoorSharedConnection];
  if (v18)
  {
    v19 = v18;
    HIDWORD(v30) = a4;
    type metadata accessor for NSNumber();
    v20 = a5;
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    v22 = [objc_allocWithZone(IDSBlastDoorMessageContext) initWithService:v20 command:isa];

    if (v22)
    {
      [v22 setPayloadType:1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000CA970;
      *(inited + 32) = 1835365481;
      *(inited + 72) = &type metadata for Int;
      *(inited + 80) = 0x64616F6C796170;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 48) = a3;
      *(inited + 120) = &type metadata for Data;
      *(inited + 88) = 0xE700000000000000;
      *(inited + 96) = a1;
      *(inited + 104) = a2;
      outlined copy of Data._Representation(a1, a2);
      v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
      swift_arrayDestroy();
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v24);

      v25 = Dictionary._bridgeToObjectiveC()().super.isa;

      v26 = swift_allocObject();
      *(v26 + 16) = a3;
      *(v26 + 24) = BYTE4(v30) & 1;
      *(v26 + 32) = partial apply for closure #1 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:);
      *(v26 + 40) = v15;
      aBlock[4] = partial apply for specialized closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:);
      aBlock[5] = v26;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AnyHashable : Any]?, @unowned IDSClientMessageType, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_13;
      v27 = _Block_copy(aBlock);

      [v19 diffuseClientMessage:v25 context:v22 withCompletionBlock:v27];
      _Block_release(v27);

      return;
    }

    v29 = type metadata accessor for NearbyProtoConnectionRequest(0);
    (*(*(v29 - 8) + 56))(v14, 1, 1, v29);
    specialized closure #1 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)(v14, v17);
  }

  else
  {
    v28 = type metadata accessor for NearbyProtoConnectionRequest(0);
    (*(*(v28 - 8) + 56))(v14, 1, 1, v28);
    specialized closure #1 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)(v14, v17);
  }

  outlined destroy of Any?(v14, &_s44com_apple_SharePlay_NearbyInvitationsService0E22ProtoConnectionRequestVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E22ProtoConnectionRequestVSgMR);
}

{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMR);
  __chkstk_darwin(v12 - 8);
  v14 = &aBlock[-1] - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a6;
  v16 = objc_opt_self();
  v17 = a6;
  v18 = [v16 getBlastDoorSharedConnection];
  if (v18)
  {
    v19 = v18;
    HIDWORD(v30) = a4;
    type metadata accessor for NSNumber();
    v20 = a5;
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    v22 = [objc_allocWithZone(IDSBlastDoorMessageContext) initWithService:v20 command:isa];

    if (v22)
    {
      [v22 setPayloadType:1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000CA970;
      *(inited + 32) = 1835365481;
      *(inited + 72) = &type metadata for Int;
      *(inited + 80) = 0x64616F6C796170;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 48) = a3;
      *(inited + 120) = &type metadata for Data;
      *(inited + 88) = 0xE700000000000000;
      *(inited + 96) = a1;
      *(inited + 104) = a2;
      outlined copy of Data._Representation(a1, a2);
      v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
      swift_arrayDestroy();
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v24);

      v25 = Dictionary._bridgeToObjectiveC()().super.isa;

      v26 = swift_allocObject();
      *(v26 + 16) = a3;
      *(v26 + 24) = BYTE4(v30) & 1;
      *(v26 + 32) = partial apply for closure #2 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:);
      *(v26 + 40) = v15;
      aBlock[4] = partial apply for specialized closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:);
      aBlock[5] = v26;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AnyHashable : Any]?, @unowned IDSClientMessageType, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_22;
      v27 = _Block_copy(aBlock);

      [v19 diffuseClientMessage:v25 context:v22 withCompletionBlock:v27];
      _Block_release(v27);

      return;
    }

    v29 = type metadata accessor for NearbyProtoConnectionResponse.Content(0);
    (*(*(v29 - 8) + 56))(v14, 1, 1, v29);
    specialized closure #2 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)(v14, v17);
  }

  else
  {
    v28 = type metadata accessor for NearbyProtoConnectionResponse.Content(0);
    (*(*(v28 - 8) + 56))(v14, 1, 1, v28);
    specialized closure #2 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)(v14, v17);
  }

  outlined destroy of Any?(v14, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMR);
}

{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentVSgMR);
  __chkstk_darwin(v12 - 8);
  v14 = &aBlock[-1] - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a6;
  v16 = objc_opt_self();
  v17 = a6;
  v18 = [v16 getBlastDoorSharedConnection];
  if (v18)
  {
    v19 = v18;
    HIDWORD(v34) = a4;
    type metadata accessor for NSNumber();
    v20 = a5;
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    v22 = [objc_allocWithZone(IDSBlastDoorMessageContext) initWithService:v20 command:isa];

    if (v22)
    {
      [v22 setPayloadType:1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000CA970;
      *(inited + 32) = 1835365481;
      *(inited + 72) = &type metadata for Int;
      *(inited + 80) = 0x64616F6C796170;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 48) = a3;
      *(inited + 120) = &type metadata for Data;
      *(inited + 88) = 0xE700000000000000;
      *(inited + 96) = a1;
      *(inited + 104) = a2;
      outlined copy of Data._Representation(a1, a2);
      v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
      swift_arrayDestroy();
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v24);

      v25 = Dictionary._bridgeToObjectiveC()().super.isa;

      v26 = swift_allocObject();
      *(v26 + 16) = a3;
      *(v26 + 24) = BYTE4(v34) & 1;
      *(v26 + 32) = partial apply for closure #4 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:);
      *(v26 + 40) = v15;
      aBlock[4] = partial apply for specialized closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:);
      aBlock[5] = v26;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AnyHashable : Any]?, @unowned IDSClientMessageType, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_31_0;
      v27 = _Block_copy(aBlock);

      [v19 diffuseClientMessage:v25 context:v22 withCompletionBlock:v27];
      _Block_release(v27);

      return;
    }

    v31 = type metadata accessor for NearbyProtoJoinResponse.Content(0);
    (*(*(v31 - 8) + 56))(v14, 1, 1, v31);
    lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors();
    v32 = swift_allocError();
    *v33 = 2;
    closure #4 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)(v14, v32, v17);
  }

  else
  {
    v28 = type metadata accessor for NearbyProtoJoinResponse.Content(0);
    (*(*(v28 - 8) + 56))(v14, 1, 1, v28);
    lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors();
    v29 = swift_allocError();
    *v30 = 0;
    closure #4 in NearbyIDSServiceController.handleIncomingMessageBlastDoor(_:account:incomingData:fromIDWithToken:context:)(v14, v29, v17);
  }

  outlined destroy of Any?(v14, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentVSgMR);
}

uint64_t partial apply for specialized closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return partial apply for specialized closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)(a1, a2, a3, specialized closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:));
}

{
  return partial apply for specialized closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)(a1, a2, a3, specialized closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:));
}

{
  return partial apply for specialized closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)(a1, a2, a3, specialized closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:));
}

{
  return partial apply for specialized closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)(a1, a2, a3, specialized closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:));
}

{
  return partial apply for specialized closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)(a1, a2, a3, specialized closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:));
}

{
  return specialized closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)(a1, a2, a3, *(v3 + 16), *(v3 + 24), *(v3 + 32));
}

void specialized NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, int a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v40 = a3;
  v39 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMR);
  __chkstk_darwin(v14 - 8);
  v16 = &v38 - v15;
  v17 = swift_allocObject();
  v17[2] = a6;
  v17[3] = a7;
  v17[4] = a8;
  v18 = objc_opt_self();
  v19 = a6;

  v20 = [v18 getBlastDoorSharedConnection];
  if (v20)
  {
    v21 = v20;
    HIDWORD(v38) = a4;
    type metadata accessor for NSNumber();
    v22 = a5;
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    v24 = [objc_allocWithZone(IDSBlastDoorMessageContext) initWithService:v22 command:isa];

    if (v24)
    {
      [v24 setPayloadType:1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000CA970;
      *(inited + 32) = 1835365481;
      *(inited + 72) = &type metadata for Int;
      *(inited + 80) = 0x64616F6C796170;
      v26 = v40;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 48) = v26;
      *(inited + 120) = &type metadata for Data;
      *(inited + 88) = 0xE700000000000000;
      *(inited + 96) = a1;
      v27 = v39;
      *(inited + 104) = v39;
      outlined copy of Data._Representation(a1, v27);
      v28 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
      swift_arrayDestroy();
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v28);

      v29 = Dictionary._bridgeToObjectiveC()().super.isa;

      v30 = swift_allocObject();
      *(v30 + 16) = v26;
      *(v30 + 24) = BYTE4(v38) & 1;
      *(v30 + 32) = partial apply for closure #1 in NearbyGroupHostIDSService.handleIncomingDataBlastDoor(from:data:context:);
      *(v30 + 40) = v17;
      aBlock[4] = partial apply for specialized closure #1 in NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:);
      aBlock[5] = v30;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AnyHashable : Any]?, @unowned IDSClientMessageType, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_40_0;
      v31 = _Block_copy(aBlock);

      [v21 diffuseClientMessage:v29 context:v24 withCompletionBlock:v31];
      _Block_release(v31);

      return;
    }

    v35 = type metadata accessor for NearbyGroup_Group(0);
    (*(*(v35 - 8) + 56))(v16, 1, 1, v35);
    lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors();
    v36 = swift_allocError();
    *v37 = 2;
    closure #1 in NearbyGroupHostIDSService.handleIncomingDataBlastDoor(from:data:context:)(v16, v36, v19, a7, a8);
  }

  else
  {
    v32 = type metadata accessor for NearbyGroup_Group(0);
    (*(*(v32 - 8) + 56))(v16, 1, 1, v32);
    lazy protocol witness table accessor for type NearbyInvitationsBlastDoorErrors and conformance NearbyInvitationsBlastDoorErrors();
    v33 = swift_allocError();
    *v34 = 0;
    closure #1 in NearbyGroupHostIDSService.handleIncomingDataBlastDoor(from:data:context:)(v16, v33, v19, a7, a8);
  }

  outlined destroy of Any?(v16, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMR);
}

uint64_t NearbyProtoJoinRequest.encryptedData.getter()
{
  v1 = (v0 + *(type metadata accessor for NearbyProtoJoinRequest(0) + 24));
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *v1;
  }

  outlined copy of Data?(*v1, v2);
  return v3;
}

void protocol witness for Enum.init(rawValue:) in conformance NearbyProtoNearbySessionMessageType(uint64_t a1@<X8>)
{
  specialized NearbyProtoNearbySessionMessageType.init(rawValue:)();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance NearbyProtoNearbySessionMessageType(uint64_t a2@<X8>)
{
  specialized NearbyProtoNearbySessionMessageType.init(rawValue:)();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NearbyProtoNearbySessionMessageType(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NearbyProtoNearbySessionMessageType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NearbyProtoNearbySessionMessageType and conformance NearbyProtoNearbySessionMessageType();

  return Enum.hash(into:)(a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NearbyProtoNearbySessionMessageType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t static NearbyProtoNearbySessionMessageType.allCases.setter(_UNKNOWN **a1)
{
  swift_beginAccess();
  static NearbyProtoNearbySessionMessageType.allCases = a1;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance NearbyProtoNearbySessionMessageType@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = static NearbyProtoNearbySessionMessageType.allCases;
}

uint64_t NearbyProtoSessionMessage.version.getter()
{
  v1 = (v0 + *(type metadata accessor for NearbyProtoSessionMessage(0) + 20));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t NearbyProtoSessionMessage.version.setter(int a1)
{
  result = type metadata accessor for NearbyProtoSessionMessage(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*NearbyProtoSessionMessage.version.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for NearbyProtoSessionMessage(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return NearbyProtoSessionMessage.version.modify;
}

uint64_t NearbyProtoSessionMessage.version.modify(uint64_t result)
{
  v1 = *result + *(result + 12);
  *v1 = *(result + 8);
  *(v1 + 4) = 0;
  return result;
}

Swift::Void __swiftcall NearbyProtoSessionMessage.clearVersion()()
{
  v1 = v0 + *(type metadata accessor for NearbyProtoSessionMessage(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t NearbyProtoSessionMessage.type.getter()
{
  v1 = (v0 + *(type metadata accessor for NearbyProtoSessionMessage(0) + 24));
  if (v1[9])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t NearbyProtoSessionMessage.type.setter(uint64_t a1, char a2)
{
  v4 = a2 & 1;
  result = type metadata accessor for NearbyProtoSessionMessage(0);
  v6 = v2 + *(result + 24);
  *v6 = a1;
  *(v6 + 8) = v4;
  *(v6 + 9) = 0;
  return result;
}

uint64_t (*NearbyProtoSessionMessage.type.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for NearbyProtoSessionMessage(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 9);
  if (v7)
  {
    v5 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = (v7 | v6) & 1;
  return NearbyProtoSessionMessage.type.modify;
}

uint64_t NearbyProtoSessionMessage.type.modify(uint64_t result)
{
  v1 = *(result + 16) + *(result + 12);
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

Swift::Void __swiftcall NearbyProtoSessionMessage.clearType()()
{
  v1 = v0 + *(type metadata accessor for NearbyProtoSessionMessage(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 256;
}

uint64_t (*NearbyProtoSessionMessage.data.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for NearbyProtoSessionMessage(0) + 28);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  outlined copy of Data?(v5, v6);
  return NearbyProtoConnectionRequest.userInfo.modify;
}

double NearbyProtoSessionMessage.init()@<D0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for NearbyProtoSessionMessage(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + v2[6];
  *v4 = 0;
  *(v4 + 8) = 256;
  result = 0.0;
  *(a1 + v2[7]) = xmmword_1000C8990;
  return result;
}

uint64_t NearbyProtoConnectionRequest.handle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t NearbyProtoConnectionRequest.handle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t NearbyProtoConnectionRequest.displayName.getter()
{
  v1 = (v0 + *(type metadata accessor for NearbyProtoConnectionRequest(0) + 28));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t key path getter for NearbyProtoConnectionRequest.displayName : NearbyProtoConnectionRequest@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for NearbyProtoConnectionRequest(0) + 28));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t key path setter for NearbyProtoConnectionRequest.displayName : NearbyProtoConnectionRequest(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for NearbyProtoConnectionRequest(0) + 28));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t NearbyProtoConnectionRequest.displayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NearbyProtoConnectionRequest(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*NearbyProtoConnectionRequest.displayName.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for NearbyProtoConnectionRequest(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return NearbyProtoConnectionRequest.displayName.modify;
}

Swift::Void __swiftcall NearbyProtoConnectionRequest.clearDisplayName()()
{
  v1 = (v0 + *(type metadata accessor for NearbyProtoConnectionRequest(0) + 28));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t NearbyProtoConnectionRequest.userInfo.getter()
{
  v1 = (v0 + *(type metadata accessor for NearbyProtoConnectionRequest(0) + 32));
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *v1;
  }

  outlined copy of Data?(*v1, v2);
  return v3;
}

uint64_t key path setter for NearbyProtoConnectionRequest.userInfo : NearbyProtoConnectionRequest(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for NearbyProtoConnectionRequest(0) + 32));
  v5 = *v4;
  v6 = v4[1];
  outlined copy of Data._Representation(v2, v3);
  result = outlined consume of Data?(v5, v6);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t NearbyProtoConnectionRequest.userInfo.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for NearbyProtoConnectionRequest(0) + 32);
  result = outlined consume of Data?(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t (*NearbyProtoConnectionRequest.userInfo.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for NearbyProtoConnectionRequest(0) + 32);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  outlined copy of Data?(v5, v6);
  return NearbyProtoConnectionRequest.userInfo.modify;
}

Swift::Void __swiftcall NearbyProtoConnectionRequest.clearUserInfo()()
{
  v1 = v0 + *(type metadata accessor for NearbyProtoConnectionRequest(0) + 32);
  outlined consume of Data?(*v1, *(v1 + 8));
  *v1 = xmmword_1000C8990;
}

double NearbyProtoConnectionRequest.init()@<D0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v2 = type metadata accessor for NearbyProtoConnectionRequest(0);
  UnknownStorage.init()();
  v3 = (a1 + *(v2 + 28));
  *v3 = 0;
  v3[1] = 0;
  result = 0.0;
  *(a1 + *(v2 + 32)) = xmmword_1000C8990;
  return result;
}

uint64_t NearbyProtoConnectionResponse.Content.denied.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for NearbyProtoConnectionResponse.Content(0);
  outlined init with copy of (String, Any)(v1 + *(v6 + 24), v5, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  v7 = type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    outlined destroy of Any?(v5, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
    return UnknownStorage.init()();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v5, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
    return UnknownStorage.init()();
  }

  return outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v5, a1, type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent);
}

uint64_t key path getter for NearbyProtoConnectionResponse.Content.denied : NearbyProtoConnectionResponse.Content@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for NearbyProtoConnectionResponse.Content(0);
  outlined init with copy of (String, Any)(a1 + *(v7 + 24), v6, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  v8 = type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    outlined destroy of Any?(v6, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
    return UnknownStorage.init()();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v6, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
    return UnknownStorage.init()();
  }

  return outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v6, a2, type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent);
}

void (*NearbyProtoConnectionResponse.Content.denied.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = *(*(type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[3] = v9;
  v11 = *(type metadata accessor for NearbyProtoConnectionResponse.Content(0) + 24);
  *(v4 + 12) = v11;
  outlined init with copy of (String, Any)(v1 + v11, v7, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  v12 = type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation(0);
  v4[4] = v12;
  v13 = *(v12 - 8);
  v4[5] = v13;
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    outlined destroy of Any?(v7, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v7, v10, type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent);
      return NearbyProtoConnectionResponse.Content.denied.modify;
    }

    outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v7, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
  }

  UnknownStorage.init()();
  return NearbyProtoConnectionResponse.Content.denied.modify;
}

uint64_t NearbyProtoConnectionResponse.Content.approved.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for NearbyProtoConnectionResponse.Content(0);
  outlined init with copy of (String, Any)(v1 + *(v6 + 24), v5, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  v7 = type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    outlined destroy of Any?(v5, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v5, a1, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent);
    }

    outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v5, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
  }

  *a1 = xmmword_1000CAAE0;
  type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent(0);
  return UnknownStorage.init()();
}

uint64_t key path getter for NearbyProtoConnectionResponse.Content.approved : NearbyProtoConnectionResponse.Content@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for NearbyProtoConnectionResponse.Content(0);
  outlined init with copy of (String, Any)(a1 + *(v7 + 24), v6, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  v8 = type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    outlined destroy of Any?(v6, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v6, a2, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent);
    }

    outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v6, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
  }

  *a2 = xmmword_1000CAAE0;
  type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent(0);
  return UnknownStorage.init()();
}

uint64_t key path setter for NearbyProtoConnectionResponse.Content.denied : NearbyProtoConnectionResponse.Content(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t a7)
{
  v10 = (a5)(0, a2, a3, a4);
  __chkstk_darwin(v10 - 8);
  v12 = &v16 - v11;
  outlined init with copy of NearbyProtoConnectionResponse.Content.DeniedContent(a1, &v16 - v11, a6);
  v13 = *(type metadata accessor for NearbyProtoConnectionResponse.Content(0) + 24);
  outlined destroy of Any?(a2 + v13, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v12, a2 + v13, a6);
  v14 = type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v14 - 8) + 56))(a2 + v13, 0, 1, v14);
}

uint64_t NearbyProtoConnectionResponse.Content.denied.setter(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v6 = *(type metadata accessor for NearbyProtoConnectionResponse.Content(0) + 24);
  outlined destroy of Any?(v3 + v6, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(a1, v3 + v6, a2);
  v7 = type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v8 = *(*(v7 - 8) + 56);

  return v8(v3 + v6, 0, 1, v7);
}

uint64_t NearbyProtoConnectionResponse.Content.ApprovalContent.init()@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_1000CAAE0;
  type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent(0);
  return UnknownStorage.init()();
}

void (*NearbyProtoConnectionResponse.Content.approved.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = *(*(type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[3] = v9;
  v11 = *(type metadata accessor for NearbyProtoConnectionResponse.Content(0) + 24);
  *(v4 + 12) = v11;
  outlined init with copy of (String, Any)(v1 + v11, v7, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  v12 = type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation(0);
  v4[4] = v12;
  v13 = *(v12 - 8);
  v4[5] = v13;
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    outlined destroy of Any?(v7, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
LABEL_15:
    *v10 = xmmword_1000CAAE0;
    UnknownStorage.init()();
    return NearbyProtoConnectionResponse.Content.approved.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v7, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
    goto LABEL_15;
  }

  outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v7, v10, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent);
  return NearbyProtoConnectionResponse.Content.approved.modify;
}

void NearbyProtoConnectionResponse.Content.denied.modify(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v7 = (*a1)[4];
  v8 = (*a1)[5];
  v9 = *(*a1 + 12);
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v12 = **a1;
  v14 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of NearbyProtoConnectionResponse.Content.DeniedContent(v11, v10, a3);
    outlined destroy of Any?(v12 + v9, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v10, v12 + v9, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12 + v9, 0, 1, v7);
    outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v11, a5);
  }

  else
  {
    outlined destroy of Any?(v12 + v9, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v11, v12 + v9, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12 + v9, 0, 1, v7);
  }

  free(v11);
  free(v10);
  free(v14);

  free(v6);
}

uint64_t NearbyProtoConnectionResponse.Content.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NearbyProtoConnectionResponse.Content(0) + 28);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NearbyProtoConnectionResponse.Content.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NearbyProtoConnectionResponse.Content(0) + 28);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t static NearbyProtoConnectionResponse.Content.ApprovalContent.== infix(_:_:)(_BOOL8 *a1, uint64_t *a2)
{
  if (!specialized static Data.== infix(_:_:)(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t NearbyGroup_Group.MemberLeft.groupUuid.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t NearbyGroup_Group.MemberLeft.groupUuid.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t NearbyProtoConnectionResponse.Content.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  v2 = *(type metadata accessor for NearbyProtoConnectionResponse.Content(0) + 24);
  v3 = type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation(0);
  (*(*(v3 - 8) + 56))(&a1[v2], 1, 1, v3);
  return UnknownStorage.init()();
}

uint64_t (*NearbyProtoJoinRequest.publicKey.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for NearbyProtoJoinRequest(0) + 20);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  outlined copy of Data?(v5, v6);
  return NearbyProtoConnectionRequest.userInfo.modify;
}

uint64_t key path setter for NearbyProtoJoinRequest.encryptedData : NearbyProtoJoinRequest(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for NearbyProtoJoinRequest(0) + 24));
  v5 = *v4;
  v6 = v4[1];
  outlined copy of Data._Representation(v2, v3);
  result = outlined consume of Data?(v5, v6);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t NearbyProtoJoinRequest.encryptedData.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for NearbyProtoJoinRequest(0) + 24);
  result = outlined consume of Data?(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t (*NearbyProtoJoinRequest.encryptedData.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for NearbyProtoJoinRequest(0) + 24);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  outlined copy of Data?(v5, v6);
  return NearbyProtoJoinRequest.encryptedData.modify;
}

Swift::Void __swiftcall NearbyProtoJoinRequest.clearEncryptedData()()
{
  v1 = v0 + *(type metadata accessor for NearbyProtoJoinRequest(0) + 24);
  outlined consume of Data?(*v1, *(v1 + 8));
  *v1 = xmmword_1000C8990;
}

uint64_t NearbyProtoJoinRequest.Content.displayName.getter()
{
  v1 = (v0 + *(type metadata accessor for NearbyProtoJoinRequest.Content(0) + 24));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t key path getter for NearbyProtoJoinRequest.Content.displayName : NearbyProtoJoinRequest.Content@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for NearbyProtoJoinRequest.Content(0) + 24));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t key path setter for NearbyProtoJoinRequest.Content.displayName : NearbyProtoJoinRequest.Content(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for NearbyProtoJoinRequest.Content(0) + 24));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t NearbyProtoJoinRequest.Content.displayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NearbyProtoJoinRequest.Content(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*NearbyProtoJoinRequest.Content.displayName.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for NearbyProtoJoinRequest.Content(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return NearbyProtoJoinRequest.Content.displayName.modify;
}

void NearbyProtoConnectionRequest.displayName.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v6 = (*a1)[2];
  if (a2)
  {
    v7 = (v6 + v5);

    *v7 = v4;
    v7[1] = v3;
  }

  else
  {

    v8 = (v6 + v5);
    *v8 = v4;
    v8[1] = v3;
  }

  free(v2);
}

Swift::Void __swiftcall NearbyProtoJoinRequest.Content.clearDisplayName()()
{
  v1 = (v0 + *(type metadata accessor for NearbyProtoJoinRequest.Content(0) + 24));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t NearbyProtoSessionMessage.data.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  v3 = v2[1];
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = *v2;
  }

  outlined copy of Data?(*v2, v3);
  return v4;
}

uint64_t key path setter for NearbyProtoSessionMessage.data : NearbyProtoSessionMessage(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *a1;
  v6 = a1[1];
  v7 = (a2 + *((a5)(0, a2, a3, a4) + 28));
  v8 = *v7;
  v9 = v7[1];
  outlined copy of Data._Representation(v5, v6);
  result = outlined consume of Data?(v8, v9);
  *v7 = v5;
  v7[1] = v6;
  return result;
}

uint64_t NearbyProtoSessionMessage.data.setter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = v3 + *(a3(0) + 28);
  result = outlined consume of Data?(*v6, *(v6 + 8));
  *v6 = a1;
  *(v6 + 8) = a2;
  return result;
}

uint64_t (*NearbyProtoJoinRequest.Content.userInfo.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for NearbyProtoJoinRequest.Content(0) + 28);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  outlined copy of Data?(v5, v6);
  return NearbyProtoConnectionRequest.userInfo.modify;
}

double NearbyProtoSessionMessage.clearData()(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 28);
  outlined consume of Data?(*v2, *(v2 + 8));
  result = 0.0;
  *v2 = xmmword_1000C8990;
  return result;
}

uint64_t NearbyProtoJoinRequest.Content.wantsTokenUri.setter(char a1)
{
  result = type metadata accessor for NearbyProtoJoinRequest.Content(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*NearbyProtoJoinRequest.Content.wantsTokenUri.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for NearbyProtoJoinRequest.Content(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return NearbyProtoJoinRequest.Content.wantsTokenUri.modify;
}

uint64_t NearbyProtoConnectionResponse.Content.ApprovalContent.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t NearbyProtoConnectionResponse.Content.ApprovalContent.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

double NearbyProtoJoinRequest.Content.init()@<D0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v2 = type metadata accessor for NearbyProtoJoinRequest.Content(0);
  UnknownStorage.init()();
  v3 = (a1 + v2[6]);
  *v3 = 0;
  v3[1] = 0;
  result = 0.0;
  *(a1 + v2[7]) = xmmword_1000C8990;
  *(a1 + v2[8]) = 2;
  return result;
}

double NearbyProtoJoinRequest.init()@<D0>(uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v3 = type metadata accessor for NearbyProtoJoinRequest(0);
  result = 0.0;
  *(a2 + *(v3 + 20)) = xmmword_1000C8990;
  *(a2 + *(v3 + 24)) = xmmword_1000C8990;
  return result;
}

uint64_t NearbyProtoJoinRequest.publicKey.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  v3 = v2[1];
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = *v2;
  }

  outlined copy of Data?(*v2, v3);
  return v4;
}

uint64_t key path setter for NearbyProtoJoinRequest.publicKey : NearbyProtoJoinRequest(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *a1;
  v6 = a1[1];
  v7 = (a2 + *((a5)(0, a2, a3, a4) + 20));
  v8 = *v7;
  v9 = v7[1];
  outlined copy of Data._Representation(v5, v6);
  result = outlined consume of Data?(v8, v9);
  *v7 = v5;
  v7[1] = v6;
  return result;
}

uint64_t NearbyProtoJoinRequest.publicKey.setter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = v3 + *(a3(0) + 20);
  result = outlined consume of Data?(*v6, *(v6 + 8));
  *v6 = a1;
  *(v6 + 8) = a2;
  return result;
}

uint64_t (*NearbyProtoJoinResponse.encryptedData.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for NearbyProtoJoinResponse(0) + 20);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  outlined copy of Data?(v5, v6);
  return NearbyProtoConnectionRequest.userInfo.modify;
}

double NearbyProtoJoinRequest.clearPublicKey()(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 20);
  outlined consume of Data?(*v2, *(v2 + 8));
  result = 0.0;
  *v2 = xmmword_1000C8990;
  return result;
}

uint64_t NearbyProtoJoinResponse.Content.denied.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for NearbyProtoJoinResponse.Content(0);
  outlined init with copy of (String, Any)(v1 + *(v6 + 20), v5, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  v7 = type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    outlined destroy of Any?(v5, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
    return UnknownStorage.init()();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v5, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
    return UnknownStorage.init()();
  }

  return outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v5, a1, type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent);
}

uint64_t key path getter for NearbyProtoJoinResponse.Content.denied : NearbyProtoJoinResponse.Content@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for NearbyProtoJoinResponse.Content(0);
  outlined init with copy of (String, Any)(a1 + *(v7 + 20), v6, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  v8 = type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    outlined destroy of Any?(v6, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
    return UnknownStorage.init()();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v6, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
    return UnknownStorage.init()();
  }

  return outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v6, a2, type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent);
}

void (*NearbyProtoJoinResponse.Content.denied.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = *(*(type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[3] = v9;
  v11 = *(type metadata accessor for NearbyProtoJoinResponse.Content(0) + 20);
  *(v4 + 12) = v11;
  outlined init with copy of (String, Any)(v1 + v11, v7, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  v12 = type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation(0);
  v4[4] = v12;
  v13 = *(v12 - 8);
  v4[5] = v13;
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    outlined destroy of Any?(v7, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v7, v10, type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent);
      return NearbyProtoJoinResponse.Content.denied.modify;
    }

    outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v7, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
  }

  UnknownStorage.init()();
  return NearbyProtoJoinResponse.Content.denied.modify;
}

void NearbyProtoJoinResponse.Content.approved.modify(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v7 = (*a1)[4];
  v8 = (*a1)[5];
  v9 = *(*a1 + 12);
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v12 = **a1;
  v14 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of NearbyProtoConnectionResponse.Content.DeniedContent(v11, v10, a3);
    outlined destroy of Any?(v12 + v9, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v10, v12 + v9, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12 + v9, 0, 1, v7);
    outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v11, a5);
  }

  else
  {
    outlined destroy of Any?(v12 + v9, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v11, v12 + v9, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12 + v9, 0, 1, v7);
  }

  free(v11);
  free(v10);
  free(v14);

  free(v6);
}

double NearbyProtoJoinResponse.Content.approved.getter@<D0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for NearbyProtoJoinResponse.Content(0);
  outlined init with copy of (String, Any)(v1 + *(v6 + 20), v5, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  v7 = type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    outlined destroy of Any?(v5, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v5, a1, type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent);
      return result;
    }

    outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v5, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = _swiftEmptyArrayStorage;
  v9 = type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent(0);
  UnknownStorage.init()();
  result = 0.0;
  *(a1 + *(v9 + 28)) = xmmword_1000C8990;
  return result;
}

uint64_t key path setter for NearbyProtoJoinResponse.Content.denied : NearbyProtoJoinResponse.Content(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t a7)
{
  v10 = (a5)(0, a2, a3, a4);
  __chkstk_darwin(v10 - 8);
  v12 = &v16 - v11;
  outlined init with copy of NearbyProtoConnectionResponse.Content.DeniedContent(a1, &v16 - v11, a6);
  v13 = *(type metadata accessor for NearbyProtoJoinResponse.Content(0) + 20);
  outlined destroy of Any?(a2 + v13, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v12, a2 + v13, a6);
  v14 = type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v14 - 8) + 56))(a2 + v13, 0, 1, v14);
}

uint64_t NearbyProtoJoinResponse.Content.denied.setter(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v6 = *(type metadata accessor for NearbyProtoJoinResponse.Content(0) + 20);
  outlined destroy of Any?(v3 + v6, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(a1, v3 + v6, a2);
  v7 = type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v8 = *(*(v7 - 8) + 56);

  return v8(v3 + v6, 0, 1, v7);
}

double NearbyProtoJoinResponse.Content.ApprovalContent.init()@<D0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = _swiftEmptyArrayStorage;
  v2 = type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent(0);
  UnknownStorage.init()();
  result = 0.0;
  *(a1 + *(v2 + 28)) = xmmword_1000C8990;
  return result;
}

void (*NearbyProtoJoinResponse.Content.approved.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent(0);
  v9 = *(*(v8 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(*(*(v8 - 8) + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v4[3] = v10;
  v12 = *(type metadata accessor for NearbyProtoJoinResponse.Content(0) + 20);
  *(v4 + 12) = v12;
  outlined init with copy of (String, Any)(v1 + v12, v7, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  v13 = type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation(0);
  v4[4] = v13;
  v14 = *(v13 - 8);
  v4[5] = v14;
  if ((*(v14 + 48))(v7, 1, v13) == 1)
  {
    outlined destroy of Any?(v7, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
LABEL_15:
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    v11[2] = _swiftEmptyArrayStorage;
    UnknownStorage.init()();
    *(v11 + *(v8 + 28)) = xmmword_1000C8990;
    return NearbyProtoJoinResponse.Content.approved.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v7, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
    goto LABEL_15;
  }

  outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v7, v11, type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent);
  return NearbyProtoJoinResponse.Content.approved.modify;
}

uint64_t NearbyProtoConnectionRequest.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t NearbyProtoConnectionRequest.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t NearbyGroup_Group.Initialization.members.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t (*NearbyProtoJoinResponse.Content.ApprovalContent.userInfo.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent(0) + 28);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  outlined copy of Data?(v5, v6);
  return NearbyProtoConnectionRequest.userInfo.modify;
}

uint64_t NearbyProtoSessionMessage.data.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) + *(a1 + 24);
  v4 = *a1;
  v5 = *v3;
  v6 = *(v3 + 8);
  if (a2)
  {
    outlined copy of Data._Representation(*a1, v2);
    outlined consume of Data?(v5, v6);
    *v3 = v4;
    *(v3 + 8) = v2;

    return outlined consume of Data._Representation(v4, v2);
  }

  else
  {
    result = outlined consume of Data?(*v3, *(v3 + 8));
    *v3 = v4;
    *(v3 + 8) = v2;
  }

  return result;
}

uint64_t NearbyProtoSessionMessage.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t NearbyProtoSessionMessage.unknownFields.setter(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t NearbyProtoJoinResponse.Content.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = *(type metadata accessor for NearbyProtoJoinResponse.Content(0) + 20);
  v3 = type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation(0);
  (*(*(v3 - 8) + 56))(&a1[v2], 1, 1, v3);
  return UnknownStorage.init()();
}

double NearbyProtoJoinResponse.init()@<D0>(uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v3 = type metadata accessor for NearbyProtoJoinResponse(0);
  result = 0.0;
  *(a2 + *(v3 + 20)) = xmmword_1000C8990;
  return result;
}

uint64_t one-time initialization function for _protobuf_nameMap()
{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NearbyProtoNearbySessionMessageType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NearbyProtoNearbySessionMessageType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, "$v");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000CAAF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "joinRequest";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "joinResponse";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "connectionRequest";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "connectionResponse";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "groupMessage";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NearbyProtoSessionMessage._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NearbyProtoSessionMessage._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, "$v");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000CAB00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "data";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NearbyProtoJoinRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NearbyProtoJoinRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, "$v");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000CA970;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "publicKey";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "encryptedData";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NearbyProtoJoinRequest.Content._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NearbyProtoJoinRequest.Content._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, "$v");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000C8E90;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "displayName";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "userInfo";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "wantsTokenURI";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NearbyProtoJoinResponse.Content._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NearbyProtoJoinResponse.Content._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, "$v");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000CAB00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "denied";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 4;
  *v11 = "approved";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NearbyProtoJoinResponse.Content.ApprovalContent._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NearbyProtoJoinResponse.Content.ApprovalContent._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, "$v");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000CAB00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sessionIdentifier";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "memberHandles";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "userInfo";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NearbyGroup_Group._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NearbyGroup_Group._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, "$v");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000C8E90;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "initialize";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "memberAdded";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "memberRemoved";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "memberLeft";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NearbyGroup_Group.MemberAdded._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NearbyGroup_Group.MemberAdded._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, "$v");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000CA970;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "groupUUID";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "member";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NearbyGroup_Group.MemberRemoved._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NearbyGroup_Group.MemberRemoved._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, "$v");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000CA970;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "groupUUID";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "member";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NearbyGroup_Group.MemberLeft._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NearbyGroup_Group.MemberLeft._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, "$v");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000CA970;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "groupUUID";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "usesToken";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t NearbyProtoSessionMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        type metadata accessor for NearbyProtoSessionMessage(0);
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
        break;
      case 2:
        closure #2 in NearbyProtoSessionMessage.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
        break;
      case 1:
        type metadata accessor for NearbyProtoSessionMessage(0);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        break;
    }
  }

  return result;
}

uint64_t closure #2 in NearbyProtoSessionMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NearbyProtoSessionMessage(0);
  lazy protocol witness table accessor for type NearbyProtoNearbySessionMessageType and conformance NearbyProtoNearbySessionMessageType();
  return dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
}

uint64_t NearbyProtoSessionMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in NearbyProtoSessionMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #2 in NearbyProtoSessionMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
    closure #3 in NearbyProtoSessionMessage.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for NearbyProtoSessionMessage, 3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in NearbyProtoSessionMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for NearbyProtoSessionMessage(0);
  if ((*(a1 + *(result + 20) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in NearbyProtoSessionMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for NearbyProtoSessionMessage(0);
  if ((*(a1 + *(result + 24) + 9) & 1) == 0)
  {
    lazy protocol witness table accessor for type NearbyProtoNearbySessionMessageType and conformance NearbyProtoNearbySessionMessageType();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

double protocol witness for Message.init() in conformance NearbyProtoSessionMessage@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 8) = 256;
  result = 0.0;
  *(a2 + a1[7]) = xmmword_1000C8990;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NearbyProtoSessionMessage(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoSessionMessage and conformance NearbyProtoSessionMessage, type metadata accessor for NearbyProtoSessionMessage, &protocol conformance descriptor for NearbyProtoSessionMessage);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NearbyProtoSessionMessage(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoSessionMessage and conformance NearbyProtoSessionMessage, type metadata accessor for NearbyProtoSessionMessage, &protocol conformance descriptor for NearbyProtoSessionMessage);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NearbyProtoSessionMessage(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoSessionMessage and conformance NearbyProtoSessionMessage, type metadata accessor for NearbyProtoSessionMessage, &protocol conformance descriptor for NearbyProtoSessionMessage);

  return Message.hash(into:)();
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1)
{
  return one-time initialization function for _protobuf_nameMap(a1, static NearbyProtoConnectionRequest._protobuf_nameMap, "displayName", 11, "userInfo");
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NearbyProtoConnectionResponse._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NearbyProtoConnectionResponse.Content._protobuf_nameMap, "denied", 6, "approved");
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NearbyProtoConnectionResponse.Content.ApprovalContent._protobuf_nameMap, 1, "invitationData", 14);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NearbyProtoConnectionResponse.Content.DeniedContent._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NearbyProtoJoinResponse._protobuf_nameMap, 2, "encryptedData", 13);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NearbyProtoJoinResponse.Content.DeniedContent._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NearbyGroup_Member._protobuf_nameMap, "handle", 6, "tokenID");
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NearbyGroup_Group.Initialization._protobuf_nameMap, "groupUUID", 9, "members");
}

uint64_t NearbyProtoConnectionRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        type metadata accessor for NearbyProtoConnectionRequest(0);
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      else if (result == 4)
      {
        type metadata accessor for NearbyProtoConnectionRequest(0);
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
      }
    }

    else if (result == 1 || result == 2)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t NearbyProtoConnectionRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    v11 = v3[3];
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
    {
      result = closure #1 in NearbyProtoConnectionRequest.traverse<A>(visitor:)(v3, a1, a2, a3);
      if (!v4)
      {
        closure #2 in NearbyProtoConnectionRequest.traverse<A>(visitor:)(v3, a1, a2, a3);
        type metadata accessor for NearbyProtoConnectionRequest(0);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t closure #1 in NearbyProtoConnectionRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for NearbyProtoConnectionRequest(0);
  if (*(a1 + *(result + 28) + 8))
  {
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in NearbyProtoConnectionRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for NearbyProtoConnectionRequest(0);
  v6 = a1 + *(result + 32);
  v7 = *(v6 + 8);
  if (v7 >> 60 != 15)
  {
    v8 = *v6;
    outlined copy of Data._Representation(*v6, *(v6 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return outlined consume of Data?(v8, v7);
  }

  return result;
}

double protocol witness for Message.init() in conformance NearbyProtoConnectionRequest@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  UnknownStorage.init()();
  v4 = *(a1 + 32);
  v5 = (a2 + *(a1 + 28));
  *v5 = 0;
  v5[1] = 0;
  result = 0.0;
  *(a2 + v4) = xmmword_1000C8990;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NearbyProtoConnectionRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoConnectionRequest and conformance NearbyProtoConnectionRequest, type metadata accessor for NearbyProtoConnectionRequest, &protocol conformance descriptor for NearbyProtoConnectionRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NearbyProtoConnectionRequest(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoConnectionRequest and conformance NearbyProtoConnectionRequest, type metadata accessor for NearbyProtoConnectionRequest, &protocol conformance descriptor for NearbyProtoConnectionRequest);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NearbyProtoConnectionRequest(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoConnectionRequest and conformance NearbyProtoConnectionRequest, type metadata accessor for NearbyProtoConnectionRequest, &protocol conformance descriptor for NearbyProtoConnectionRequest);

  return Message.hash(into:)();
}

uint64_t static NearbyProtoConnectionResponse.Content.DeniedContent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NearbyProtoConnectionResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoConnectionResponse and conformance NearbyProtoConnectionResponse, type metadata accessor for NearbyProtoConnectionResponse, &protocol conformance descriptor for NearbyProtoConnectionResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NearbyProtoConnectionResponse(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoConnectionResponse and conformance NearbyProtoConnectionResponse, type metadata accessor for NearbyProtoConnectionResponse, &protocol conformance descriptor for NearbyProtoConnectionResponse);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NearbyProtoConnectionResponse(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoConnectionResponse and conformance NearbyProtoConnectionResponse, type metadata accessor for NearbyProtoConnectionResponse, &protocol conformance descriptor for NearbyProtoConnectionResponse);

  return Message.hash(into:)();
}

void one-time initialization function for protoMessageName()
{
  v0._countAndFlagsBits = 0x746E65746E6F432ELL;
  v0._object = 0xE800000000000000;
  String.append(_:)(v0);
  static NearbyProtoConnectionResponse.Content.protoMessageName = 0xD000000000000015;
  unk_1000F7BF0 = 0x80000001000CEF50;
}

uint64_t *NearbyProtoConnectionResponse.Content.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static NearbyProtoConnectionResponse.Content.protoMessageName;
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v6, a2);
  __swift_project_value_buffer(v6, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, "$v");
  v7 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v8 = *(*v7 + 72);
  v9 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000C8E90;
  v11 = (v10 + v9);
  v12 = v11 + v7[14];
  *v11 = 1;
  *v12 = "identifier";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v13 = enum case for _NameMap.NameDescription.same(_:);
  v14 = type metadata accessor for _NameMap.NameDescription();
  v15 = *(*(v14 - 8) + 104);
  (v15)(v12, v13, v14);
  v16 = v11 + v8 + v7[14];
  *(v11 + v8) = 2;
  *v16 = "handle";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v15();
  v17 = v7[14];
  v18 = (v11 + 2 * v8);
  *v18 = 3;
  v19 = v18 + v17;
  *v19 = a3;
  *(v19 + 1) = a4;
  v19[16] = 2;
  v15();
  v20 = (v11 + 3 * v8);
  v21 = v20 + v7[14];
  *v20 = 4;
  *v21 = a5;
  *(v21 + 1) = 8;
  v21[16] = 2;
  v15();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v9 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, "$v");
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000C8970;
  v13 = v12 + v11 + v10[14];
  *(v12 + v11) = a3;
  *v13 = a4;
  *(v13 + 8) = a5;
  *(v13 + 16) = 2;
  v14 = enum case for _NameMap.NameDescription.same(_:);
  v15 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v8 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, "$v");
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v10 = *(*v9 + 72);
  v11 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000CA970;
  v13 = (v12 + v11);
  v14 = v12 + v11 + v9[14];
  *v13 = 1;
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = 2;
  v15 = enum case for _NameMap.NameDescription.same(_:);
  v16 = type metadata accessor for _NameMap.NameDescription();
  v17 = *(*(v16 - 8) + 104);
  (v17)(v14, v15, v16);
  v18 = v13 + v10 + v9[14];
  *(v13 + v10) = 2;
  *v18 = a5;
  *(v18 + 1) = 7;
  v18[16] = 2;
  v17();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t NearbyProtoConnectionResponse.Content.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        closure #3 in NearbyProtoConnectionResponse.Content.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }

      else if (result == 4)
      {
        closure #4 in NearbyProtoConnectionResponse.Content.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }
    }

    else if (result == 1 || result == 2)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t closure #3 in NearbyProtoConnectionResponse.Content.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v45 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  __chkstk_darwin(v10 - 8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v40 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV06DeniedK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV06DeniedK0VSgMR);
  v21 = __chkstk_darwin(v20 - 8);
  v47 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v40 - v23;
  v46 = v6;
  v25 = *(v6 + 56);
  v49 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v40 - v23, 1, 1, v26);
  v28 = *(type metadata accessor for NearbyProtoConnectionResponse.Content(0) + 24);
  v43 = a1;
  v41 = v28;
  outlined init with copy of (String, Any)(a1 + v28, v12, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  v42 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    outlined destroy of Any?(v12, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
    v30 = v13;
    v31 = v49;
  }

  else
  {
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v12, v19, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v19, v17, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v17, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
      v31 = v49;
    }

    else
    {
      outlined destroy of Any?(v24, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV06DeniedK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV06DeniedK0VSgMR);
      v32 = v17;
      v33 = v45;
      outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v32, v45, type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent);
      outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v33, v24, type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent);
      v31 = v49;
      v27(v24, 0, 1, v49);
    }
  }

  v34 = v47;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoConnectionResponse.Content.DeniedContent and conformance NearbyProtoConnectionResponse.Content.DeniedContent, type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent, &protocol conformance descriptor for NearbyProtoConnectionResponse.Content.DeniedContent);
  v35 = v48;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v35)
  {
    return outlined destroy of Any?(v24, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV06DeniedK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV06DeniedK0VSgMR);
  }

  outlined init with copy of (String, Any)(v24, v34, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV06DeniedK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV06DeniedK0VSgMR);
  if ((*(v46 + 48))(v34, 1, v31) == 1)
  {
    outlined destroy of Any?(v24, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV06DeniedK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV06DeniedK0VSgMR);
    return outlined destroy of Any?(v34, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV06DeniedK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV06DeniedK0VSgMR);
  }

  else
  {
    v37 = v44;
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v34, v44, type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Any?(v24, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV06DeniedK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV06DeniedK0VSgMR);
    v38 = v43;
    v39 = v41;
    outlined destroy of Any?(v43 + v41, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v37, v38 + v39, type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v38 + v39, 0, 1, v30);
  }
}

uint64_t closure #4 in NearbyProtoConnectionResponse.Content.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v45 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  __chkstk_darwin(v10 - 8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v40 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV08ApprovalK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV08ApprovalK0VSgMR);
  v21 = __chkstk_darwin(v20 - 8);
  v47 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v40 - v23;
  v46 = v6;
  v25 = *(v6 + 56);
  v49 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v40 - v23, 1, 1, v26);
  v28 = *(type metadata accessor for NearbyProtoConnectionResponse.Content(0) + 24);
  v43 = a1;
  v41 = v28;
  outlined init with copy of (String, Any)(a1 + v28, v12, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  v42 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    outlined destroy of Any?(v12, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
    v30 = v13;
  }

  else
  {
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v12, v19, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v19, v17, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of Any?(v24, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV08ApprovalK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV08ApprovalK0VSgMR);
      v31 = v17;
      v32 = v45;
      outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v31, v45, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent);
      outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v32, v24, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent);
      v33 = v49;
      v27(v24, 0, 1, v49);
      goto LABEL_7;
    }

    outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v17, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
  }

  v33 = v49;
LABEL_7:
  v34 = v47;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoConnectionResponse.Content.ApprovalContent and conformance NearbyProtoConnectionResponse.Content.ApprovalContent, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent, &protocol conformance descriptor for NearbyProtoConnectionResponse.Content.ApprovalContent);
  v35 = v48;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v35)
  {
    return outlined destroy of Any?(v24, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV08ApprovalK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV08ApprovalK0VSgMR);
  }

  outlined init with copy of (String, Any)(v24, v34, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV08ApprovalK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV08ApprovalK0VSgMR);
  if ((*(v46 + 48))(v34, 1, v33) == 1)
  {
    outlined destroy of Any?(v24, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV08ApprovalK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV08ApprovalK0VSgMR);
    return outlined destroy of Any?(v34, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV08ApprovalK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV08ApprovalK0VSgMR);
  }

  else
  {
    v37 = v44;
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v34, v44, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Any?(v24, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV08ApprovalK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV08ApprovalK0VSgMR);
    v38 = v43;
    v39 = v41;
    outlined destroy of Any?(v43 + v41, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v37, v38 + v39, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v38 + v39, 0, 1, v30);
  }
}

uint64_t NearbyProtoConnectionResponse.Content.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = v3[1];
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    v15 = v3[3];
    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v16 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
    {
      v17 = type metadata accessor for NearbyProtoConnectionResponse.Content(0);
      outlined init with copy of (String, Any)(v5 + *(v17 + 24), v11, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
      v18 = type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation(0);
      if ((*(*(v18 - 8) + 48))(v11, 1, v18) == 1)
      {
        return UnknownStorage.traverse<A>(visitor:)();
      }

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        closure #2 in NearbyProtoConnectionResponse.Content.traverse<A>(visitor:)(v5, a1, a2, a3);
      }

      else
      {
        closure #1 in NearbyProtoConnectionResponse.Content.traverse<A>(visitor:)(v5, a1, a2, a3);
      }

      result = outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v11, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
      if (!v4)
      {
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t closure #1 in NearbyProtoConnectionResponse.Content.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent(0);
  __chkstk_darwin(v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NearbyProtoConnectionResponse.Content(0);
  outlined init with copy of (String, Any)(a1 + *(v11 + 24), v7, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  v12 = type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    outlined destroy of Any?(v7, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v7, v10, type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoConnectionResponse.Content.DeniedContent and conformance NearbyProtoConnectionResponse.Content.DeniedContent, type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent, &protocol conformance descriptor for NearbyProtoConnectionResponse.Content.DeniedContent);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v10, type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent);
  }

  result = outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v7, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t closure #2 in NearbyProtoConnectionResponse.Content.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent(0);
  __chkstk_darwin(v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NearbyProtoConnectionResponse.Content(0);
  outlined init with copy of (String, Any)(a1 + *(v11 + 24), v7, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  v12 = type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    outlined destroy of Any?(v7, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v7, v10, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoConnectionResponse.Content.ApprovalContent and conformance NearbyProtoConnectionResponse.Content.ApprovalContent, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent, &protocol conformance descriptor for NearbyProtoConnectionResponse.Content.ApprovalContent);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v10, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent);
  }

  result = outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v7, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance NearbyProtoConnectionResponse.Content@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  v3 = *(a1 + 24);
  v4 = type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation(0);
  (*(*(v4 - 8) + 56))(&a2[v3], 1, 1, v4);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance NearbyProtoConnectionResponse.Content@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance NearbyProtoConnectionResponse.Content(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NearbyProtoConnectionResponse.Content(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content, type metadata accessor for NearbyProtoConnectionResponse.Content, &protocol conformance descriptor for NearbyProtoConnectionResponse.Content);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NearbyProtoConnectionResponse.Content(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content, type metadata accessor for NearbyProtoConnectionResponse.Content, &protocol conformance descriptor for NearbyProtoConnectionResponse.Content);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NearbyProtoConnectionResponse.Content(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content, type metadata accessor for NearbyProtoConnectionResponse.Content, &protocol conformance descriptor for NearbyProtoConnectionResponse.Content);

  return Message.hash(into:)();
}

uint64_t one-time initialization function for protoMessageName()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  v2 = static NearbyProtoConnectionResponse.Content.protoMessageName;
  v3 = qword_1000F7BF0;
  swift_bridgeObjectRetain_n();
  v0._object = 0x80000001000CEFA0;
  v0._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v0);

  static NearbyProtoConnectionResponse.Content.ApprovalContent.protoMessageName = v2;
  *algn_1000F7C18 = v3;
  return result;
}

{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  v2 = static NearbyProtoConnectionResponse.Content.protoMessageName;
  v3 = qword_1000F7BF0;
  swift_bridgeObjectRetain_n();
  v0._countAndFlagsBits = 0x436465696E65442ELL;
  v0._object = 0xEE00746E65746E6FLL;
  String.append(_:)(v0);

  static NearbyProtoConnectionResponse.Content.DeniedContent.protoMessageName = v2;
  unk_1000F7C40 = v3;
  return result;
}

{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  v2 = static NearbyProtoJoinResponse.Content.protoMessageName;
  v3 = qword_1000F7CC0;
  swift_bridgeObjectRetain_n();
  v0._object = 0x80000001000CEFA0;
  v0._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v0);

  static NearbyProtoJoinResponse.Content.ApprovalContent.protoMessageName = v2;
  *algn_1000F7CE8 = v3;
  return result;
}

{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  v2 = static NearbyProtoJoinResponse.Content.protoMessageName;
  v3 = qword_1000F7CC0;
  swift_bridgeObjectRetain_n();
  v0._countAndFlagsBits = 0x436465696E65442ELL;
  v0._object = 0xEE00746E65746E6FLL;
  String.append(_:)(v0);

  static NearbyProtoJoinResponse.Content.DeniedContent.protoMessageName = v2;
  unk_1000F7D10 = v3;
  return result;
}

uint64_t *NearbyProtoConnectionResponse.Content.ApprovalContent.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static NearbyProtoConnectionResponse.Content.ApprovalContent.protoMessageName;
}

uint64_t NearbyProtoConnectionResponse.Content.ApprovalContent.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }

  return result;
}

uint64_t NearbyProtoConnectionResponse.Content.ApprovalContent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2 || *(v5 + 16) == *(v5 + 24))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v7)
  {
    if (v5 == v5 >> 32)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent(0);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NearbyProtoConnectionResponse.Content.ApprovalContent(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoConnectionResponse.Content.ApprovalContent and conformance NearbyProtoConnectionResponse.Content.ApprovalContent, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent, &protocol conformance descriptor for NearbyProtoConnectionResponse.Content.ApprovalContent);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NearbyProtoConnectionResponse.Content.ApprovalContent(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoConnectionResponse.Content.ApprovalContent and conformance NearbyProtoConnectionResponse.Content.ApprovalContent, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent, &protocol conformance descriptor for NearbyProtoConnectionResponse.Content.ApprovalContent);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NearbyProtoConnectionResponse.Content.ApprovalContent(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoConnectionResponse.Content.ApprovalContent and conformance NearbyProtoConnectionResponse.Content.ApprovalContent, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent, &protocol conformance descriptor for NearbyProtoConnectionResponse.Content.ApprovalContent);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NearbyProtoConnectionResponse.Content.ApprovalContent(_BOOL8 *a1, uint64_t *a2, uint64_t a3)
{
  if (!specialized static Data.== infix(_:_:)(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t *NearbyProtoConnectionResponse.Content.DeniedContent.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static NearbyProtoConnectionResponse.Content.DeniedContent.protoMessageName;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NearbyProtoConnectionResponse.Content.DeniedContent(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoConnectionResponse.Content.DeniedContent and conformance NearbyProtoConnectionResponse.Content.DeniedContent, type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent, &protocol conformance descriptor for NearbyProtoConnectionResponse.Content.DeniedContent);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NearbyProtoConnectionResponse.Content.DeniedContent(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoConnectionResponse.Content.DeniedContent and conformance NearbyProtoConnectionResponse.Content.DeniedContent, type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent, &protocol conformance descriptor for NearbyProtoConnectionResponse.Content.DeniedContent);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NearbyProtoConnectionResponse.Content.DeniedContent(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoConnectionResponse.Content.DeniedContent and conformance NearbyProtoConnectionResponse.Content.DeniedContent, type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent, &protocol conformance descriptor for NearbyProtoConnectionResponse.Content.DeniedContent);

  return Message.hash(into:)();
}

uint64_t NearbyProtoJoinRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      type metadata accessor for NearbyProtoJoinRequest(0);
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }

  return result;
}

uint64_t NearbyProtoJoinRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in NearbyProtoJoinRequest.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for NearbyProtoJoinRequest, 1);
  if (!v4)
  {
    closure #2 in NearbyProtoJoinRequest.traverse<A>(visitor:)(v3, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #2 in NearbyProtoJoinRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for NearbyProtoJoinRequest(0);
  v6 = a1 + *(result + 24);
  v7 = *(v6 + 8);
  if (v7 >> 60 != 15)
  {
    v8 = *v6;
    outlined copy of Data._Representation(*v6, *(v6 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return outlined consume of Data?(v8, v7);
  }

  return result;
}

double protocol witness for Message.init() in conformance NearbyProtoJoinRequest@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = 0.0;
  v5 = *(a1 + 24);
  *(a2 + *(a1 + 20)) = xmmword_1000C8990;
  *(a2 + v5) = xmmword_1000C8990;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NearbyProtoJoinRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoJoinRequest and conformance NearbyProtoJoinRequest, type metadata accessor for NearbyProtoJoinRequest, &protocol conformance descriptor for NearbyProtoJoinRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NearbyProtoJoinRequest(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoJoinRequest and conformance NearbyProtoJoinRequest, type metadata accessor for NearbyProtoJoinRequest, &protocol conformance descriptor for NearbyProtoJoinRequest);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NearbyProtoJoinRequest(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoJoinRequest and conformance NearbyProtoJoinRequest, type metadata accessor for NearbyProtoJoinRequest, &protocol conformance descriptor for NearbyProtoJoinRequest);

  return Message.hash(into:)();
}

void one-time initialization function for protoMessageName(uint64_t a1)
{
  one-time initialization function for protoMessageName(a1, 0xEE00747365757165, &static NearbyProtoJoinRequest.Content.protoMessageName, &qword_1000F7C80);
}

{
  one-time initialization function for protoMessageName(a1, 0xEF65736E6F707365, &static NearbyProtoJoinResponse.Content.protoMessageName, &qword_1000F7CC0);
}

void *NearbyProtoJoinRequest.Content.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static NearbyProtoJoinRequest.Content.protoMessageName;
}

uint64_t NearbyProtoJoinRequest.Content.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      if (result == 4)
      {
        type metadata accessor for NearbyProtoJoinRequest.Content(0);
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
      }

      else if (result == 5)
      {
        type metadata accessor for NearbyProtoJoinRequest.Content(0);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }
    }

    else if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }

    else if (result == 3)
    {
      type metadata accessor for NearbyProtoJoinRequest.Content(0);
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t NearbyProtoJoinRequest.Content.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in NearbyProtoJoinRequest.Content.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      closure #3 in NearbyProtoSessionMessage.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for NearbyProtoJoinRequest.Content, 4);
      closure #3 in NearbyProtoJoinRequest.Content.traverse<A>(visitor:)(v3, a1, a2, a3);
      type metadata accessor for NearbyProtoJoinRequest.Content(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in NearbyProtoJoinRequest.Content.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for NearbyProtoJoinRequest.Content(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in NearbyProtoSessionMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  v8 = a1 + *(result + 28);
  v9 = *(v8 + 8);
  if (v9 >> 60 != 15)
  {
    v10 = *v8;
    outlined copy of Data._Representation(*v8, *(v8 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return outlined consume of Data?(v10, v9);
  }

  return result;
}

uint64_t closure #3 in NearbyProtoJoinRequest.Content.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for NearbyProtoJoinRequest.Content(0);
  if (*(a1 + *(result + 32)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

double protocol witness for Message.init() in conformance NearbyProtoJoinRequest.Content@<D0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  UnknownStorage.init()();
  v4 = a1[7];
  v5 = (a2 + a1[6]);
  *v5 = 0;
  v5[1] = 0;
  result = 0.0;
  *(a2 + v4) = xmmword_1000C8990;
  *(a2 + a1[8]) = 2;
  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance NearbyProtoConnectionResponse.Content.ApprovalContent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance NearbyProtoConnectionResponse.Content.ApprovalContent(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NearbyProtoJoinRequest.Content(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoJoinRequest.Content and conformance NearbyProtoJoinRequest.Content, type metadata accessor for NearbyProtoJoinRequest.Content, &protocol conformance descriptor for NearbyProtoJoinRequest.Content);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NearbyProtoJoinRequest.Content(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoJoinRequest.Content and conformance NearbyProtoJoinRequest.Content, type metadata accessor for NearbyProtoJoinRequest.Content, &protocol conformance descriptor for NearbyProtoJoinRequest.Content);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NearbyProtoJoinRequest.Content(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoJoinRequest.Content and conformance NearbyProtoJoinRequest.Content, type metadata accessor for NearbyProtoJoinRequest.Content, &protocol conformance descriptor for NearbyProtoJoinRequest.Content);

  return Message.hash(into:)();
}

uint64_t NearbyProtoJoinResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      type metadata accessor for NearbyProtoJoinResponse(0);
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }

  return result;
}

uint64_t NearbyProtoJoinResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in NearbyProtoJoinRequest.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for NearbyProtoJoinResponse, 2);
  if (!v4)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in NearbyProtoJoinRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  v8 = a1 + *(result + 20);
  v9 = *(v8 + 8);
  if (v9 >> 60 != 15)
  {
    v10 = *v8;
    outlined copy of Data._Representation(*v8, *(v8 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return outlined consume of Data?(v10, v9);
  }

  return result;
}

double protocol witness for Message.init() in conformance NearbyProtoJoinResponse@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = 0.0;
  *(a2 + *(a1 + 20)) = xmmword_1000C8990;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NearbyProtoJoinResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse and conformance NearbyProtoJoinResponse, type metadata accessor for NearbyProtoJoinResponse, &protocol conformance descriptor for NearbyProtoJoinResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NearbyProtoJoinResponse(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse and conformance NearbyProtoJoinResponse, type metadata accessor for NearbyProtoJoinResponse, &protocol conformance descriptor for NearbyProtoJoinResponse);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NearbyProtoJoinResponse(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse and conformance NearbyProtoJoinResponse, type metadata accessor for NearbyProtoJoinResponse, &protocol conformance descriptor for NearbyProtoJoinResponse);

  return Message.hash(into:)();
}

void one-time initialization function for protoMessageName(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6._countAndFlagsBits = 0x746E65746E6F432ELL;
  v6._object = 0xE800000000000000;
  String.append(_:)(v6);
  *a3 = 0x526E696F4A2E7063;
  *a4 = a2;
}

uint64_t *NearbyProtoJoinResponse.Content.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static NearbyProtoJoinResponse.Content.protoMessageName;
}

uint64_t NearbyProtoJoinResponse.Content.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 4:
        closure #3 in NearbyProtoJoinResponse.Content.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
      case 3:
        closure #2 in NearbyProtoJoinResponse.Content.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
      case 1:
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
        break;
    }
  }

  return result;
}

uint64_t closure #2 in NearbyProtoJoinResponse.Content.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v45 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  __chkstk_darwin(v10 - 8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v40 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV06DeniedK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV06DeniedK0VSgMR);
  v21 = __chkstk_darwin(v20 - 8);
  v47 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v40 - v23;
  v46 = v6;
  v25 = *(v6 + 56);
  v49 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v40 - v23, 1, 1, v26);
  v28 = *(type metadata accessor for NearbyProtoJoinResponse.Content(0) + 20);
  v43 = a1;
  v41 = v28;
  outlined init with copy of (String, Any)(a1 + v28, v12, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  v42 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    outlined destroy of Any?(v12, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
    v30 = v13;
    v31 = v49;
  }

  else
  {
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v12, v19, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v19, v17, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v17, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
      v31 = v49;
    }

    else
    {
      outlined destroy of Any?(v24, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV06DeniedK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV06DeniedK0VSgMR);
      v32 = v17;
      v33 = v45;
      outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v32, v45, type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent);
      outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v33, v24, type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent);
      v31 = v49;
      v27(v24, 0, 1, v49);
    }
  }

  v34 = v47;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse.Content.DeniedContent and conformance NearbyProtoJoinResponse.Content.DeniedContent, type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent, &protocol conformance descriptor for NearbyProtoJoinResponse.Content.DeniedContent);
  v35 = v48;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v35)
  {
    return outlined destroy of Any?(v24, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV06DeniedK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV06DeniedK0VSgMR);
  }

  outlined init with copy of (String, Any)(v24, v34, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV06DeniedK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV06DeniedK0VSgMR);
  if ((*(v46 + 48))(v34, 1, v31) == 1)
  {
    outlined destroy of Any?(v24, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV06DeniedK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV06DeniedK0VSgMR);
    return outlined destroy of Any?(v34, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV06DeniedK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV06DeniedK0VSgMR);
  }

  else
  {
    v37 = v44;
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v34, v44, type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Any?(v24, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV06DeniedK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV06DeniedK0VSgMR);
    v38 = v43;
    v39 = v41;
    outlined destroy of Any?(v43 + v41, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v37, v38 + v39, type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v38 + v39, 0, 1, v30);
  }
}

uint64_t closure #3 in NearbyProtoJoinResponse.Content.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v45 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  __chkstk_darwin(v10 - 8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v40 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV08ApprovalK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV08ApprovalK0VSgMR);
  v21 = __chkstk_darwin(v20 - 8);
  v47 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v40 - v23;
  v46 = v6;
  v25 = *(v6 + 56);
  v49 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v40 - v23, 1, 1, v26);
  v28 = *(type metadata accessor for NearbyProtoJoinResponse.Content(0) + 20);
  v43 = a1;
  v41 = v28;
  outlined init with copy of (String, Any)(a1 + v28, v12, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  v42 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    outlined destroy of Any?(v12, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
    v30 = v13;
  }

  else
  {
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v12, v19, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v19, v17, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of Any?(v24, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV08ApprovalK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV08ApprovalK0VSgMR);
      v31 = v17;
      v32 = v45;
      outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v31, v45, type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent);
      outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v32, v24, type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent);
      v33 = v49;
      v27(v24, 0, 1, v49);
      goto LABEL_7;
    }

    outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v17, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
  }

  v33 = v49;
LABEL_7:
  v34 = v47;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse.Content.ApprovalContent and conformance NearbyProtoJoinResponse.Content.ApprovalContent, type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent, &protocol conformance descriptor for NearbyProtoJoinResponse.Content.ApprovalContent);
  v35 = v48;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v35)
  {
    return outlined destroy of Any?(v24, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV08ApprovalK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV08ApprovalK0VSgMR);
  }

  outlined init with copy of (String, Any)(v24, v34, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV08ApprovalK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV08ApprovalK0VSgMR);
  if ((*(v46 + 48))(v34, 1, v33) == 1)
  {
    outlined destroy of Any?(v24, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV08ApprovalK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV08ApprovalK0VSgMR);
    return outlined destroy of Any?(v34, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV08ApprovalK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV08ApprovalK0VSgMR);
  }

  else
  {
    v37 = v44;
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v34, v44, type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Any?(v24, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV08ApprovalK0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV08ApprovalK0VSgMR);
    v38 = v43;
    v39 = v41;
    outlined destroy of Any?(v43 + v41, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v37, v38 + v39, type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v38 + v39, 0, 1, v30);
  }
}

uint64_t NearbyProtoJoinResponse.Content.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - v11;
  v13 = v3[1];
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  v16 = type metadata accessor for NearbyProtoJoinResponse.Content(0);
  outlined init with copy of (String, Any)(v6 + *(v16 + 20), v12, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  v17 = type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation(0);
  if ((*(*(v17 - 8) + 48))(v12, 1, v17) == 1)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    closure #2 in NearbyProtoJoinResponse.Content.traverse<A>(visitor:)(v6, a1, a2, a3);
  }

  else
  {
    closure #1 in NearbyProtoJoinResponse.Content.traverse<A>(visitor:)(v6, a1, a2, a3);
  }

  result = outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v12, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
  if (!v5)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in NearbyProtoJoinResponse.Content.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent(0);
  __chkstk_darwin(v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NearbyProtoJoinResponse.Content(0);
  outlined init with copy of (String, Any)(a1 + *(v11 + 20), v7, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  v12 = type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    outlined destroy of Any?(v7, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v7, v10, type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse.Content.DeniedContent and conformance NearbyProtoJoinResponse.Content.DeniedContent, type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent, &protocol conformance descriptor for NearbyProtoJoinResponse.Content.DeniedContent);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v10, type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent);
  }

  result = outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v7, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t closure #2 in NearbyProtoJoinResponse.Content.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent(0);
  __chkstk_darwin(v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NearbyProtoJoinResponse.Content(0);
  outlined init with copy of (String, Any)(a1 + *(v11 + 20), v7, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  v12 = type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    outlined destroy of Any?(v7, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(v7, v10, type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse.Content.ApprovalContent and conformance NearbyProtoJoinResponse.Content.ApprovalContent, type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent, &protocol conformance descriptor for NearbyProtoJoinResponse.Content.ApprovalContent);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v10, type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent);
  }

  result = outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v7, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance NearbyProtoJoinResponse.Content@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v3 = *(a1 + 20);
  v4 = type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation(0);
  (*(*(v4 - 8) + 56))(&a2[v3], 1, 1, v4);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NearbyProtoJoinResponse.Content(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse.Content and conformance NearbyProtoJoinResponse.Content, type metadata accessor for NearbyProtoJoinResponse.Content, &protocol conformance descriptor for NearbyProtoJoinResponse.Content);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NearbyProtoJoinResponse.Content(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse.Content and conformance NearbyProtoJoinResponse.Content, type metadata accessor for NearbyProtoJoinResponse.Content, &protocol conformance descriptor for NearbyProtoJoinResponse.Content);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NearbyProtoJoinResponse.Content(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse.Content and conformance NearbyProtoJoinResponse.Content, type metadata accessor for NearbyProtoJoinResponse.Content, &protocol conformance descriptor for NearbyProtoJoinResponse.Content);

  return Message.hash(into:)();
}

uint64_t *NearbyProtoJoinResponse.Content.ApprovalContent.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static NearbyProtoJoinResponse.Content.ApprovalContent.protoMessageName;
}

uint64_t NearbyProtoJoinResponse.Content.ApprovalContent.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent(0);
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
        break;
      case 2:
        dispatch thunk of Decoder.decodeRepeatedStringField(value:)();
        break;
      case 1:
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
        break;
    }
  }

  return result;
}

uint64_t NearbyProtoJoinResponse.Content.ApprovalContent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    if (!*(v3[2] + 16) || (result = dispatch thunk of Visitor.visitRepeatedStringField(value:fieldNumber:)(), !v4))
    {
      result = closure #3 in NearbyProtoSessionMessage.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent, 3);
      if (!v4)
      {
        type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent(0);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

double protocol witness for Message.init() in conformance NearbyProtoJoinResponse.Content.ApprovalContent@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = _swiftEmptyArrayStorage;
  UnknownStorage.init()();
  result = 0.0;
  *(a2 + *(a1 + 28)) = xmmword_1000C8990;
  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance NearbyProtoConnectionRequest@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance NearbyProtoConnectionRequest(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NearbyProtoJoinResponse.Content.ApprovalContent(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse.Content.ApprovalContent and conformance NearbyProtoJoinResponse.Content.ApprovalContent, type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent, &protocol conformance descriptor for NearbyProtoJoinResponse.Content.ApprovalContent);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NearbyProtoJoinResponse.Content.ApprovalContent(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse.Content.ApprovalContent and conformance NearbyProtoJoinResponse.Content.ApprovalContent, type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent, &protocol conformance descriptor for NearbyProtoJoinResponse.Content.ApprovalContent);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NearbyProtoJoinResponse.Content.ApprovalContent(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse.Content.ApprovalContent and conformance NearbyProtoJoinResponse.Content.ApprovalContent, type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent, &protocol conformance descriptor for NearbyProtoJoinResponse.Content.ApprovalContent);

  return Message.hash(into:)();
}

uint64_t *NearbyProtoJoinResponse.Content.DeniedContent.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static NearbyProtoJoinResponse.Content.DeniedContent.protoMessageName;
}

uint64_t static NearbyProtoConnectionResponse.Content.protoMessageName.getter(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = *a2;

  return v4;
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return _NameMap.init()();
}

uint64_t NearbyProtoNearbySessionMessageType._protobuf_nameMap.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for _NameMap();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t static NearbyProtoNearbySessionMessageType._protobuf_nameMap.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for _NameMap();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t NearbyProtoJoinResponse.Content.DeniedContent.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
  }

  while (!v3 && (v5 & 1) == 0);
  return result;
}

Swift::Int NearbyProtoSessionMessage.hashValue.getter(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(a2, a3, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Message.protoMessageName.getter in conformance NearbyProtoConnectionResponse.Content(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    v8 = a4;
    swift_once();
    a4 = v8;
  }

  v6 = *a4;

  return v6;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NearbyProtoJoinResponse.Content.DeniedContent(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse.Content.DeniedContent and conformance NearbyProtoJoinResponse.Content.DeniedContent, type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent, &protocol conformance descriptor for NearbyProtoJoinResponse.Content.DeniedContent);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance NearbyProtoNearbySessionMessageType@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for _NameMap();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NearbyProtoJoinResponse.Content.DeniedContent(uint64_t a1)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse.Content.DeniedContent and conformance NearbyProtoJoinResponse.Content.DeniedContent, type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent, &protocol conformance descriptor for NearbyProtoJoinResponse.Content.DeniedContent);

  return Message.debugDescription.getter();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NearbyProtoSessionMessage(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NearbyProtoJoinResponse.Content.DeniedContent(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse.Content.DeniedContent and conformance NearbyProtoJoinResponse.Content.DeniedContent, type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent, &protocol conformance descriptor for NearbyProtoJoinResponse.Content.DeniedContent);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NearbyProtoSessionMessage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    outlined consume of Data._Representation(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  closure #1 in static Data.== infix(_:_:)(v13, a3, a4, &v12);
  v10 = v4;
  outlined consume of Data._Representation(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  closure #1 in static Data.== infix(_:_:)(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL specialized static Data.== infix(_:_:)(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          outlined copy of Data._Representation(a3, a4);
          return specialized Data.withUnsafeBytes<A>(_:)(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t specialized static NearbyProtoConnectionResponse.Content.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSg_AHtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSg_AHtMR);
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_12;
  }

  v21 = v7;
  v22 = type metadata accessor for NearbyProtoConnectionResponse.Content(0);
  v14 = *(v22 + 24);
  v15 = *(v11 + 48);
  outlined init with copy of (String, Any)(a1 + v14, v13, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  outlined init with copy of (String, Any)(a2 + v14, &v13[v15], &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      outlined destroy of Any?(v13, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
LABEL_14:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }

    goto LABEL_11;
  }

  outlined init with copy of (String, Any)(v13, v10, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v10, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
LABEL_11:
    outlined destroy of Any?(v13, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSg_AHtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSg_AHtMR);
    goto LABEL_12;
  }

  v18 = v21;
  outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(&v13[v15], v21, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
  v19 = specialized static NearbyProtoConnectionResponse.Content.OneOf_Operation.__derived_enum_equals(_:_:)(v10, v18);
  outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v18, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
  outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v10, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
  outlined destroy of Any?(v13, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  if (v19)
  {
    goto LABEL_14;
  }

LABEL_12:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static NearbyProtoConnectionResponse.Content.OneOf_Operation.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v26 = type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent(0);
  __chkstk_darwin(v26);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation(0);
  v10 = __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationO_AGtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationO_AGtMR);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v25 - v17;
  v19 = *(v16 + 56);
  outlined init with copy of NearbyProtoConnectionResponse.Content.DeniedContent(a1, &v25 - v17, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
  outlined init with copy of NearbyProtoConnectionResponse.Content.DeniedContent(a2, &v18[v19], type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with copy of NearbyProtoConnectionResponse.Content.DeniedContent(v18, v14, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(&v18[v19], v8, type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v8, type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent);
      outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v14, type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent);
      outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v18, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
      return v21 & 1;
    }

    v22 = type metadata accessor for NearbyProtoConnectionResponse.Content.DeniedContent;
    v23 = v14;
    goto LABEL_9;
  }

  outlined init with copy of NearbyProtoConnectionResponse.Content.DeniedContent(v18, v12, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v22 = type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent;
    v23 = v12;
LABEL_9:
    outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v23, v22);
    outlined destroy of Any?(v18, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationO_AGtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationO_AGtMR);
LABEL_13:
    v21 = 0;
    return v21 & 1;
  }

  outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(&v18[v19], v5, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent);
  if (!specialized static Data.== infix(_:_:)(*v12, *(v12 + 1), *v5, *(v5 + 1)))
  {
    outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v5, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent);
    goto LABEL_12;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v5, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent);
  if ((v20 & 1) == 0)
  {
LABEL_12:
    outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v12, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent);
    outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v18, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
    goto LABEL_13;
  }

  outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v12, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent);
  outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v18, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
  v21 = 1;
  return v21 & 1;
}

uint64_t specialized static NearbyProtoConnectionRequest.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for NearbyProtoConnectionRequest(0);
  v7 = *(v6 + 28);
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v10[1];
  if (v9)
  {
    if (!v11)
    {
      return 0;
    }

    v12 = *v8 == *v10 && v9 == v11;
    if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v13 = *(v6 + 32);
  v15 = *(a1 + v13);
  v14 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v18 = *v16;
  v17 = v16[1];
  if (v14 >> 60 != 15)
  {
    if (v17 >> 60 == 15)
    {
      goto LABEL_24;
    }

    outlined copy of Data?(v15, v14);
    outlined copy of Data?(v18, v17);
    v20 = specialized static Data.== infix(_:_:)(v15, v14, v18, v17);
    outlined consume of Data?(v18, v17);
    outlined consume of Data?(v15, v14);
    if (v20)
    {
      goto LABEL_27;
    }

    return 0;
  }

  if (v17 >> 60 != 15)
  {
LABEL_24:
    outlined copy of Data?(v15, v14);
    outlined copy of Data?(v18, v17);
    outlined consume of Data?(v15, v14);
    outlined consume of Data?(v18, v17);
    return 0;
  }

  outlined copy of Data?(v15, v14);
  outlined copy of Data?(v18, v17);
  outlined consume of Data?(v15, v14);
LABEL_27:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static NearbyProtoSessionMessage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyProtoSessionMessage(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 9);
  v13 = a2 + v10;
  v14 = *(a2 + v10 + 9);
  if (v12)
  {
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v14)
    {
      return 0;
    }

    v21 = *v11;
    v22 = *v13;
    if (*(v13 + 8))
    {
      if (v22 > 2)
      {
        if (v22 == 3)
        {
          if (v21 != 3)
          {
            return 0;
          }
        }

        else if (v22 == 4)
        {
          if (v21 != 4)
          {
            return 0;
          }
        }

        else if (v21 != 5)
        {
          return 0;
        }
      }

      else if (v22)
      {
        if (v22 == 1)
        {
          if (v21 != 1)
          {
            return 0;
          }
        }

        else if (v21 != 2)
        {
          return 0;
        }
      }

      else if (v21)
      {
        return 0;
      }
    }

    else if (v21 != v22)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v17 = *(a1 + v15);
  v16 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v20 = *v18;
  v19 = v18[1];
  if (v16 >> 60 == 15)
  {
    if (v19 >> 60 == 15)
    {
      outlined copy of Data?(v17, v16);
      outlined copy of Data?(v20, v19);
      outlined consume of Data?(v17, v16);
LABEL_24:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
    }

    goto LABEL_20;
  }

  if (v19 >> 60 == 15)
  {
LABEL_20:
    outlined copy of Data?(v17, v16);
    outlined copy of Data?(v20, v19);
    outlined consume of Data?(v17, v16);
    outlined consume of Data?(v20, v19);
    return 0;
  }

  outlined copy of Data?(v17, v16);
  outlined copy of Data?(v20, v19);
  v23 = specialized static Data.== infix(_:_:)(v17, v16, v20, v19);
  outlined consume of Data?(v20, v19);
  outlined consume of Data?(v17, v16);
  if (v23)
  {
    goto LABEL_24;
  }

  return 0;
}

uint64_t specialized static NearbyProtoJoinResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for NearbyProtoJoinResponse(0) + 20);
  v6 = *(a1 + v4);
  v5 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v9 = *v7;
  v8 = v7[1];
  if (v5 >> 60 != 15)
  {
    if (v8 >> 60 != 15)
    {
      outlined copy of Data?(v6, v5);
      outlined copy of Data?(v9, v8);
      v11 = specialized static Data.== infix(_:_:)(v6, v5, v9, v8);
      outlined consume of Data?(v9, v8);
      outlined consume of Data?(v6, v5);
      if (v11)
      {
        goto LABEL_8;
      }

      return 0;
    }

LABEL_5:
    outlined copy of Data?(v6, v5);
    outlined copy of Data?(v9, v8);
    outlined consume of Data?(v6, v5);
    outlined consume of Data?(v9, v8);
    return 0;
  }

  if (v8 >> 60 != 15)
  {
    goto LABEL_5;
  }

  outlined copy of Data?(v6, v5);
  outlined copy of Data?(v9, v8);
  outlined consume of Data?(v6, v5);
LABEL_8:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static NearbyProtoJoinResponse.Content.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSg_AHtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSg_AHtMR);
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_9;
  }

  v21 = v7;
  v22 = type metadata accessor for NearbyProtoJoinResponse.Content(0);
  v14 = *(v22 + 20);
  v15 = *(v11 + 48);
  outlined init with copy of (String, Any)(a1 + v14, v13, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  outlined init with copy of (String, Any)(a2 + v14, &v13[v15], &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      outlined destroy of Any?(v13, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
LABEL_11:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }

    goto LABEL_8;
  }

  outlined init with copy of (String, Any)(v13, v10, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v10, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
LABEL_8:
    outlined destroy of Any?(v13, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSg_AHtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSg_AHtMR);
    goto LABEL_9;
  }

  v18 = v21;
  outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(&v13[v15], v21, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
  v19 = specialized static NearbyProtoJoinResponse.Content.OneOf_Operation.__derived_enum_equals(_:_:)(v10, v18);
  outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v18, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
  outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v10, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
  outlined destroy of Any?(v13, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  if (v19)
  {
    goto LABEL_11;
  }

LABEL_9:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static NearbyProtoJoinResponse.Content.OneOf_Operation.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent(0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation(0);
  v11 = __chkstk_darwin(v10);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationO_AGtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationO_AGtMR);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v27 - v18;
  v20 = *(v17 + 56);
  outlined init with copy of NearbyProtoConnectionResponse.Content.DeniedContent(a1, &v27 - v18, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
  outlined init with copy of NearbyProtoConnectionResponse.Content.DeniedContent(a2, &v19[v20], type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of NearbyProtoConnectionResponse.Content.DeniedContent(v19, v13, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(&v19[v20], v6, type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent);
      v21 = specialized static NearbyProtoJoinResponse.Content.ApprovalContent.== infix(_:_:)(v13, v6);
      outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v6, type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent);
      v22 = v13;
      v23 = type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent;
LABEL_9:
      outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v22, v23);
      outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v19, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
      return v21 & 1;
    }

    v24 = type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent;
    v25 = v13;
  }

  else
  {
    outlined init with copy of NearbyProtoConnectionResponse.Content.DeniedContent(v19, v15, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(&v19[v20], v9, type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v9, type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent);
      v22 = v15;
      v23 = type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent;
      goto LABEL_9;
    }

    v24 = type metadata accessor for NearbyProtoJoinResponse.Content.DeniedContent;
    v25 = v15;
  }

  outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(v25, v24);
  outlined destroy of Any?(v19, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationO_AGtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationO_AGtMR);
  v21 = 0;
  return v21 & 1;
}

uint64_t specialized static NearbyProtoJoinResponse.Content.ApprovalContent.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent(0) + 28);
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 != 15)
  {
    if (v9 >> 60 != 15)
    {
      outlined copy of Data?(v7, v6);
      outlined copy of Data?(v10, v9);
      v12 = specialized static Data.== infix(_:_:)(v7, v6, v10, v9);
      outlined consume of Data?(v10, v9);
      outlined consume of Data?(v7, v6);
      if (v12)
      {
        goto LABEL_14;
      }

      return 0;
    }

LABEL_11:
    outlined copy of Data?(v7, v6);
    outlined copy of Data?(v10, v9);
    outlined consume of Data?(v7, v6);
    outlined consume of Data?(v10, v9);
    return 0;
  }

  if (v9 >> 60 != 15)
  {
    goto LABEL_11;
  }

  outlined copy of Data?(v7, v6);
  outlined copy of Data?(v10, v9);
  outlined consume of Data?(v7, v6);
LABEL_14:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static NearbyProtoJoinRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyProtoJoinRequest(0);
  v5 = *(v4 + 20);
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      outlined copy of Data?(v7, v6);
      outlined copy of Data?(v10, v9);
      outlined consume of Data?(v7, v6);
      goto LABEL_7;
    }

LABEL_5:
    outlined copy of Data?(v7, v6);
    outlined copy of Data?(v10, v9);
    outlined consume of Data?(v7, v6);
    v11 = v10;
    v12 = v9;
LABEL_12:
    outlined consume of Data?(v11, v12);
    return 0;
  }

  if (v9 >> 60 == 15)
  {
    goto LABEL_5;
  }

  outlined copy of Data?(v7, v6);
  outlined copy of Data?(v10, v9);
  v13 = specialized static Data.== infix(_:_:)(v7, v6, v10, v9);
  outlined consume of Data?(v10, v9);
  outlined consume of Data?(v7, v6);
  if (!v13)
  {
    return 0;
  }

LABEL_7:
  v14 = *(v4 + 24);
  v16 = *(a1 + v14);
  v15 = *(a1 + v14 + 8);
  v17 = (a2 + v14);
  v19 = *v17;
  v18 = v17[1];
  if (v15 >> 60 != 15)
  {
    if (v18 >> 60 == 15)
    {
      goto LABEL_11;
    }

    outlined copy of Data?(v16, v15);
    outlined copy of Data?(v19, v18);
    v21 = specialized static Data.== infix(_:_:)(v16, v15, v19, v18);
    outlined consume of Data?(v19, v18);
    outlined consume of Data?(v16, v15);
    if (v21)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v18 >> 60 != 15)
  {
LABEL_11:
    outlined copy of Data?(v16, v15);
    outlined copy of Data?(v19, v18);
    outlined consume of Data?(v16, v15);
    v11 = v19;
    v12 = v18;
    goto LABEL_12;
  }

  outlined copy of Data?(v16, v15);
  outlined copy of Data?(v19, v18);
  outlined consume of Data?(v16, v15);
LABEL_15:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static NearbyProtoJoinRequest.Content.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for NearbyProtoJoinRequest.Content(0);
  v6 = v5[6];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }

    v11 = *v7 == *v9 && v8 == v10;
    if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v12 = v5[7];
  v14 = *(a1 + v12);
  v13 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v17 = *v15;
  v16 = v15[1];
  if (v13 >> 60 == 15)
  {
    if (v16 >> 60 == 15)
    {
      outlined copy of Data?(v14, v13);
      outlined copy of Data?(v17, v16);
      outlined consume of Data?(v14, v13);
      goto LABEL_22;
    }

LABEL_19:
    outlined copy of Data?(v14, v13);
    outlined copy of Data?(v17, v16);
    outlined consume of Data?(v14, v13);
    outlined consume of Data?(v17, v16);
    return 0;
  }

  if (v16 >> 60 == 15)
  {
    goto LABEL_19;
  }

  outlined copy of Data?(v14, v13);
  outlined copy of Data?(v17, v16);
  v19 = specialized static Data.== infix(_:_:)(v14, v13, v17, v16);
  outlined consume of Data?(v17, v16);
  outlined consume of Data?(v14, v13);
  if (!v19)
  {
    return 0;
  }

LABEL_22:
  v20 = v5[8];
  v21 = *(a1 + v20);
  v22 = *(a2 + v20);
  if (v21 != 2)
  {
    if (v22 != 2 && ((v21 ^ v22) & 1) == 0)
    {
      goto LABEL_27;
    }

    return 0;
  }

  if (v22 != 2)
  {
    return 0;
  }

LABEL_27:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t outlined destroy of NearbyProtoConnectionResponse.Content.OneOf_Operation(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of NearbyProtoConnectionResponse.Content.DeniedContent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of NearbyProtoConnectionResponse.Content.DeniedContent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type NearbyProtoNearbySessionMessageType and conformance NearbyProtoNearbySessionMessageType()
{
  result = lazy protocol witness table cache variable for type NearbyProtoNearbySessionMessageType and conformance NearbyProtoNearbySessionMessageType;
  if (!lazy protocol witness table cache variable for type NearbyProtoNearbySessionMessageType and conformance NearbyProtoNearbySessionMessageType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyProtoNearbySessionMessageType and conformance NearbyProtoNearbySessionMessageType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyProtoNearbySessionMessageType and conformance NearbyProtoNearbySessionMessageType;
  if (!lazy protocol witness table cache variable for type NearbyProtoNearbySessionMessageType and conformance NearbyProtoNearbySessionMessageType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyProtoNearbySessionMessageType and conformance NearbyProtoNearbySessionMessageType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyProtoNearbySessionMessageType and conformance NearbyProtoNearbySessionMessageType;
  if (!lazy protocol witness table cache variable for type NearbyProtoNearbySessionMessageType and conformance NearbyProtoNearbySessionMessageType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyProtoNearbySessionMessageType and conformance NearbyProtoNearbySessionMessageType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyProtoNearbySessionMessageType and conformance NearbyProtoNearbySessionMessageType;
  if (!lazy protocol witness table cache variable for type NearbyProtoNearbySessionMessageType and conformance NearbyProtoNearbySessionMessageType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyProtoNearbySessionMessageType and conformance NearbyProtoNearbySessionMessageType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [NearbyProtoNearbySessionMessageType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [NearbyProtoNearbySessionMessageType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [NearbyProtoNearbySessionMessageType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay44com_apple_SharePlay_NearbyInvitationsService0e5ProtoE18SessionMessageTypeOGMd, &_sSay44com_apple_SharePlay_NearbyInvitationsService0e5ProtoE18SessionMessageTypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [NearbyProtoNearbySessionMessageType] and conformance [A]);
  }

  return result;
}

void keypath_get_8Tm(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 28));
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a3 = v7;
  a3[1] = v8;

  outlined copy of Data?(v5, v6);
}

void keypath_get_18Tm(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 20));
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a3 = v7;
  a3[1] = v8;

  outlined copy of Data?(v5, v6);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for NearbyProtoNearbySessionMessageType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NearbyProtoNearbySessionMessageType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTag for NearbyProtoNearbySessionMessageType(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for NearbyProtoNearbySessionMessageType(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

void type metadata completion function for NearbyProtoSessionMessage(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for UInt32?, &type metadata for UInt32, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for NearbyProtoNearbySessionMessageType?, &type metadata for NearbyProtoNearbySessionMessageType, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Data?, &type metadata for Data, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for NearbyProtoConnectionRequest(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for String?, &type metadata for String, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Data?, &type metadata for Data, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for NearbyProtoConnectionResponse.Content(uint64_t a1)
{
  type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation?(319, &lazy cache variable for type metadata for NearbyProtoConnectionResponse.Content.OneOf_Operation?, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for NearbyProtoConnectionResponse.Content.ApprovalContent(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for NearbyProtoJoinRequest(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Data?, &type metadata for Data, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for NearbyProtoJoinRequest.Content(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for String?, &type metadata for String, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Data?, &type metadata for Data, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Bool?, &type metadata for Bool, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_99Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_100Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

void type metadata completion function for NearbyProtoJoinResponse(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Data?, &type metadata for Data, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for NearbyProtoJoinResponse.Content(uint64_t a1)
{
  type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation?(319, &lazy cache variable for type metadata for NearbyProtoJoinResponse.Content.OneOf_Operation?, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata completion function for NearbyProtoConnectionResponse.Content.OneOf_Operation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_47Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_48Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for NearbyProtoJoinResponse.Content.ApprovalContent(uint64_t a1)
{
  type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for [String], &type metadata for String, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Data?, &type metadata for Data, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for UInt32?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_56Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_57Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata completion function for NearbyProtoConnectionResponse(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *NearbyInvitationServiceHost.connection.getter()
{
  v1 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService27NearbyInvitationServiceHost_connection;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void NearbyInvitationServiceHost.connection.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService27NearbyInvitationServiceHost_connection;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *NearbyInvitationServiceHost.init(listener:queue:featureFlags:)(void *a1, void *a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService27NearbyInvitationServiceHost_connection] = 0;
  v8 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService27NearbyInvitationServiceHost_dataSource;
  type metadata accessor for NearbyInvitationsProviderDataSource(0);
  swift_allocObject();
  NearbyInvitationsProviderDataSource.init()();
  *&v3[v8] = v9;
  *&v3[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService27NearbyInvitationServiceHost_listener] = a1;
  *&v3[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService27NearbyInvitationServiceHost_queue] = a2;
  *&v3[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService27NearbyInvitationServiceHost_featureFlags] = a3;
  v23.receiver = v3;
  v23.super_class = ObjectType;
  v10 = a1;
  v11 = a2;
  v12 = a3;
  v13 = objc_msgSendSuper2(&v23, "init");
  v14 = one-time initialization token for host;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Log.host);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Initialized NearbyInvitationServiceHost", v19, 2u);
  }

  v20 = *(**&v15[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService27NearbyInvitationServiceHost_dataSource] + 216);
  v21 = v15;

  v20(v15, &protocol witness table for NearbyInvitationServiceHost);

  [v10 setDelegate:{v21, v23.receiver, v23.super_class}];

  return v21;
}

id NearbyInvitationServiceHost.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService27NearbyInvitationServiceHost_listener] invalidate];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t NearbyInvitationServiceHost.didReceiveInvitationApprovalRequest(request:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.host);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v5;
    v19[0] = v9;
    *v8 = 136315138;
    type metadata accessor for IncomingInvitationJoinRequest();
    v10 = v5;
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v19);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "NearbyInvitationServiceHost: Did receive invitation request: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
  }

  v14 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService27NearbyInvitationServiceHost_connection;
  result = swift_beginAccess();
  v16 = *(v2 + v14);
  if (v16)
  {
    v17 = v16;
    XPCHostConnection.clientObject.getter();

    [v18 didReceiveInvitationApprovalRequestWithRequest:v5];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t NearbyInvitationServiceHost.didDiscoverNearbyAdvertisement(advertisement:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.host);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20[0] = v9;
    *v8 = 136315138;
    v10 = [v5 debugDescription];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, v20);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "NearbyInvitationServiceHost: Updating client about nearby advertisement %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
  }

  v15 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService27NearbyInvitationServiceHost_connection;
  result = swift_beginAccess();
  v17 = *(v2 + v15);
  if (v17)
  {
    v18 = v17;
    XPCHostConnection.clientObject.getter();

    [v19 didDiscoverNearbyAdvertisementWithAdvertisement:v5];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t NearbyInvitationServiceHost.didDiscoverNearbySessionInvitation(id:invitation:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.host);
  outlined copy of Data._Representation(a3, a4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(a3, a4);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23[0] = v12;
    *v11 = 136315138;
    v13 = Data.description.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v23);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "NearbyInvitationServiceHost: Updating client about discovered invitation %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
  }

  v16 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService27NearbyInvitationServiceHost_connection;
  result = swift_beginAccess();
  v18 = *(v5 + v16);
  if (v18)
  {
    v19 = v18;
    XPCHostConnection.clientObject.getter();

    v20 = String._bridgeToObjectiveC()();
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v22 didDiscoverNearbySessionInvitationWithId:v20 invitation:isa];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t NearbyInvitationServiceHost.didReceiveConnectionRequest(advertisement:)(void *a1, const char *a2, SEL *a3, ...)
{
  v6 = v3;
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
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, a2, v12, 0xCu);
    outlined destroy of NSObject?(v13);
  }

  v15 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService27NearbyInvitationServiceHost_connection;
  result = swift_beginAccess();
  v17 = *(v6 + v15);
  if (v17)
  {
    v18 = v17;
    XPCHostConnection.clientObject.getter();

    [v19 *a3];
    return swift_unknownObjectRelease();
  }

  return result;
}

char *specialized NearbyInvitationServiceHost.__allocating_init(listener:featureFlags:)(void *a1, void *a2)
{
  v12 = a1;
  v13 = a2;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v14 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v2);
  v8 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v9 = objc_allocWithZone(type metadata accessor for NearbyInvitationServiceHost());
  return NearbyInvitationServiceHost.init(listener:queue:featureFlags:)(v12, v8, v13);
}

uint64_t specialized NearbyInvitationServiceHost.listener(_:shouldAcceptNewConnection:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.host);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "Asked to accept new connection from %@", v8, 0xCu);
    outlined destroy of NSObject?(v9);
  }

  if ((NSXPCConnection.isEntitledToUseNearbyInvitations.getter() & 1) == 0)
  {
    v21 = v5;
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
      v27 = "NearbyInvitationServiceHost rejecting connection %@ because client is not entitled";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v22, v23, v27, v24, 0xCu);
      outlined destroy of NSObject?(v25);

LABEL_14:
    }

LABEL_15:

    return 0;
  }

  NSXPCConnection.bundleIdentifier.getter();
  if (!v11)
  {
    v28 = v5;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v28;
      *v25 = v28;
      v29 = v28;
      v27 = "NearbyInvitationServiceHost rejecting connection because a client identifier could not be derived: %@";
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  v12 = *(v2 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService27NearbyInvitationServiceHost_queue);
  v13 = *(v2 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService27NearbyInvitationServiceHost_dataSource);
  objc_allocWithZone(type metadata accessor for NearbyInvitationServiceHostConnection(0));
  v14 = v5;
  v15 = v12;

  v16 = NearbyInvitationServiceHostConnection.init(connection:queue:dataSource:)(v14, v15, v13);
  if (!v16)
  {
    v31 = v14;
    v22 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v22, v32))
    {

      return 0;
    }

    v33 = swift_slowAlloc();
    *v33 = 67109120;
    *(v33 + 4) = [v31 processIdentifier];

    _os_log_impl(&_mh_execute_header, v22, v32, "NearbyInvitationServiceHost could not be created; rejecting connection from PID %d.", v33, 8u);
    goto LABEL_14;
  }

  v17 = v16;
  v18 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService27NearbyInvitationServiceHost_connection;
  v19 = 1;
  swift_beginAccess();
  v20 = *(v2 + v18);
  *(v2 + v18) = v17;

  return v19;
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NearbyGroupHostConnection.__allocating_init(connection:queue:)(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  return XPCHostConnection.init(connection:queue:)();
}

void NearbyGroupHostConnection.delegate.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*NearbyGroupHostConnection.delegate.modify(uint64_t *a1))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = direct field offset for NearbyGroupHostConnection.delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return NearbyGroupHostConnection.delegate.modify;
}

void NearbyGroupHostConnection.delegate.modify(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
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

Swift::Void __swiftcall NearbyGroupHostConnection.handleHostConnectionInvalidated()()
{
  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.group);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "NearbyGroupHostConnectionInvalidated: %@", v5, 0xCu);
    outlined destroy of NSObject?(v6);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    NearbyGroupHost.handleHostConnectionInvalidated(_:)(v2);
  }
}

uint64_t NearbyGroupHostConnection.init(connection:queue:)(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();

  return XPCHostConnection.init(connection:queue:)();
}

void NearbyGroupHostConnection.join(withNearbyGroupMembers:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = XPCHostConnection.queue.getter();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      (*((swift_isaMask & *Strong) + 0x1D8))(a1, a2);
    }
  }

  else
  {
    __break(1u);
  }
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSSet?, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, objc_class *a3, uint64_t a4, uint64_t a5)
{
  isa = a3;
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
    if (!isa)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  if (a3)
  {
LABEL_3:
    type metadata accessor for NearbyGroupMember();
    lazy protocol witness table accessor for type NearbyGroupMember and conformance NSObject();
    isa = Set._bridgeToObjectiveC()().super.isa;
  }

LABEL_4:
  if (a4)
  {
    v9 = _convertErrorToNSError(_:)();
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  (*(a5 + 16))(a5, v8, isa);
}

void NearbyGroupHostConnection.addMember(nearbyGroupMember:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = XPCHostConnection.queue.getter();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      (*((swift_isaMask & *Strong) + 0x1E0))(a1, a2, a3);
    }
  }

  else
  {
    __break(1u);
  }
}

void NearbyGroupHostConnection.kickMember(nearbyGroupMember:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = XPCHostConnection.queue.getter();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      (*((swift_isaMask & *Strong) + 0x1E8))(a1, a2, a3);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t @objc NearbyGroupHostConnection.addMember(nearbyGroupMember:completion:)(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

void NearbyGroupHostConnection.leave(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = XPCHostConnection.queue.getter();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      (*((swift_isaMask & *Strong) + 0x1F0))(a1, a2);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t @objc NearbyGroupHostConnection.join(withNearbyGroupMembers:)(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

unint64_t lazy protocol witness table accessor for type NearbyGroupMember and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NearbyGroupMember and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NearbyGroupMember and conformance NSObject)
  {
    type metadata accessor for NearbyGroupMember();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyGroupMember and conformance NSObject);
  }

  return result;
}

uint64_t specialized Dictionary.removeValue(forKey:)(uint64_t a1)
{
  v2 = v1;
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  specialized _NativeDictionary._delete(at:)(v5, v7);
  *v2 = v7;
  return v10;
}

{
  v2 = v1;
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 16 * v5);
  specialized _NativeDictionary._delete(at:)(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

      outlined destroy of Any?(a3, &_sScPSgMd, &_sScPSgMR);

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

  outlined destroy of Any?(a3, &_sScPSgMd, &_sScPSgMR);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void *specialized Sequence.compactMap<A>(_:)(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = _swiftEmptyArrayStorage;
  v13 = _swiftEmptyArrayStorage;
  v5 = *(a3 + 16);
  if (v5)
  {
    for (i = (a3 + 48); ; i += 3)
    {
      v8 = *(i - 1);
      v9 = *i;
      v12[0] = *(i - 2);
      v12[1] = v8;
      v12[2] = v9;

      a1(&v11, v12);
      if (v3)
      {
        break;
      }

      if (v11)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v4 = v13;
      }

      if (!--v5)
      {
        return v4;
      }
    }
  }

  return v4;
}

uint64_t NearbyInvitationsProviderDataSource.__allocating_init()()
{
  v0 = swift_allocObject();
  NearbyInvitationsProviderDataSource.init()();
  return v0;
}

uint64_t NearbyInvitationsProviderDataSource.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*NearbyInvitationsProviderDataSource.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return NearbyInvitationsProviderDataSource.delegate.modify;
}

void NearbyInvitationsProviderDataSource.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t NearbyInvitationsProviderDataSource.waitingJoinRequests.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 104) = a1;
}

uint64_t NearbyInvitationsProviderDataSource.waitingConnectionRequests.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
}

uint64_t NearbyInvitationsProviderDataSource.connectionRequest.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 120) = a1;
}

uint64_t NearbyInvitationsProviderDataSource.filteredDeviceScanners.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 128) = a1;
}

uint64_t key path getter for NearbyInvitationsProviderDataSource.dataReceived : NearbyInvitationsProviderDataSource@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 400))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for NearbyInvitationsProviderDataSource.dataReceived : NearbyInvitationsProviderDataSource(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 408);
  outlined copy of Data?(*a1, v3);
  return v4(v2, v3);
}

uint64_t NearbyInvitationsProviderDataSource.dataReceived.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t NearbyInvitationsProviderDataSource.dataReceived.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*NearbyInvitationsProviderDataSource.dataReceived.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
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
  return NearbyInvitationAdvertiser.connections.modify;
}

uint64_t key path setter for NearbyInvitationsProviderDataSource.$dataReceived : NearbyInvitationsProviderDataSource(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DataVSg_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DataVSg_GMR);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*(**a2 + 432))(v6);
}

uint64_t NearbyInvitationsProviderDataSource.$dataReceived.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DataVSgGMd, &_s7Combine9PublishedVy10Foundation4DataVSgGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t NearbyInvitationsProviderDataSource.$dataReceived.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DataVSg_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DataVSg_GMR);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DataVSgGMd, &_s7Combine9PublishedVy10Foundation4DataVSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*NearbyInvitationsProviderDataSource.$dataReceived.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DataVSg_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DataVSg_GMR);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService35NearbyInvitationsProviderDataSource__dataReceived;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DataVSgGMd, &_s7Combine9PublishedVy10Foundation4DataVSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return NearbyInvitationAdvertiser.$connections.modify;
}

uint64_t NearbyInvitationsProviderDataSource.cancellables.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService35NearbyInvitationsProviderDataSource_cancellables;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void NearbyInvitationsProviderDataSource.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v2 - 8);
  v47 = &v46 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DataVSgGMd, &_s7Combine9PublishedVy10Foundation4DataVSgGMR);
  v52 = *(v4 - 8);
  v53 = v4;
  __chkstk_darwin(v4);
  v51 = &v46 - v5;
  v50 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v50 - 8);
  __chkstk_darwin(v50);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  *(v0 + 3) = 0;
  swift_unknownObjectWeakInit();
  v49 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v48 = "NearbyGroupHostManager";
  static DispatchQoS.unspecified.getter();
  *&v56 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v6 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v50);
  *(v0 + 4) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  type metadata accessor for ABCReporter();
  *(v0 + 10) = 0;
  *(v0 + 11) = 0;
  *(v0 + 9) = 0;
  swift_allocObject();
  *(v0 + 12) = ABCReporter.init(domain:type:)();
  *(v0 + 13) = &_swiftEmptyDictionarySingleton;
  *(v0 + 14) = &_swiftEmptyDictionarySingleton;
  *(v0 + 15) = &_swiftEmptyDictionarySingleton;
  *(v0 + 16) = &_swiftEmptyDictionarySingleton;
  v11 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService35NearbyInvitationsProviderDataSource__dataReceived;
  v56 = xmmword_1000C8990;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  v12 = v51;
  Published.init(initialValue:)();
  (*(v52 + 32))(&v1[v11], v12, v53);
  *&v1[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService35NearbyInvitationsProviderDataSource_cancellables] = &_swiftEmptySetSingleton;
  *(v1 + 5) = [objc_allocWithZone(type metadata accessor for NearbyInvitationServiceBluetoothController(0)) init];
  v13 = type metadata accessor for NearbyInvitationJoinRequestController();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService37NearbyInvitationJoinRequestController_credentialsByHandle] = &_swiftEmptyDictionarySingleton;
  *&v14[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService37NearbyInvitationJoinRequestController_pseudonymsByHandle] = &_swiftEmptyDictionarySingleton;
  *&v14[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService37NearbyInvitationJoinRequestController_sessionProvider] = 1;
  v15 = objc_allocWithZone(IDSService);
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 initWithService:v16];

  if (v17)
  {
    *&v14[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService37NearbyInvitationJoinRequestController_service] = v17;
    v59.receiver = v14;
    v59.super_class = v13;
    v18 = objc_msgSendSuper2(&v59, "init");
    *(v1 + 6) = v18;
    v19 = *(v1 + 4);
    v20 = objc_allocWithZone(IDSService);
    v21 = v18;
    v22 = v19;
    v53 = "InvitationsProviderDataSource";
    v23 = String._bridgeToObjectiveC()();
    v24 = [v20 initWithService:v23];

    if (v24)
    {
      v25 = type metadata accessor for NearbyIDSServiceController();
      v26 = objc_allocWithZone(v25);
      v57 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSService, IDSService_ptr);
      v58 = &protocol witness table for IDSService;
      *&v56 = v24;
      v27 = &v26[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_delegate];
      *&v26[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v28 = &v26[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_firewall];
      *(v28 + 4) = 0;
      *v28 = 0u;
      *(v28 + 1) = 0u;
      *&v26[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_requesterCredentialsByOwnerPseudonym] = &_swiftEmptyDictionarySingleton;
      *&v26[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController____lazy_storage___contactStore] = 0;
      swift_beginAccess();
      *(v27 + 1) = 0;
      swift_unknownObjectWeakAssign();
      outlined init with copy of PseudonymProtocol(&v56, &v26[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_service]);
      *&v26[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_queue] = v22;
      *&v26[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_joinRequestsController] = v21;
      v55.receiver = v26;
      v55.super_class = v25;
      v29 = v21;
      v30 = v22;
      v31 = v24;
      v32 = objc_msgSendSuper2(&v55, "init");
      v33 = type metadata accessor for TaskPriority();
      v52 = *(*(v33 - 8) + 56);
      v34 = v47;
      (v52)(v47, 1, 1, v33);
      outlined init with copy of PseudonymProtocol(&v56, v54);
      v35 = swift_allocObject();
      v35[2] = 0;
      v35[3] = 0;
      v35[4] = v32;
      outlined init with take of PseudonymProtocol(v54, (v35 + 5));
      v36 = v32;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v34, &async function pointer to partial apply for closure #1 in NearbyIDSServiceController.init(queue:service:delegate:joinRequestsController:), v35);

      v37 = [objc_allocWithZone(IDSServiceDelegateProperties) init];
      [v37 setWantsCrossAccountMessaging:1];
      v38 = v30;
      v39 = v37;
      [v31 addDelegate:v36 withDelegateProperties:v39 queue:v38];

      __swift_destroy_boxed_opaque_existential_0Tm(&v56);
      *(v1 + 7) = v36;
      type metadata accessor for NearbyGroupHostManager(0);
      swift_allocObject();
      NearbyGroupHostManager.init(serviceName:)(0xD000000000000030, v53 | 0x8000000000000000);
      *(v1 + 8) = v40;
      v41 = *(v1 + 7);
      v42 = *((swift_isaMask & *v41) + 0x90);
      v43 = v41;

      v42(v44, &protocol witness table for NearbyInvitationsProviderDataSource);

      (v52)(v34, 1, 1, v33);
      v45 = swift_allocObject();
      v45[2] = 0;
      v45[3] = 0;
      v45[4] = v1;

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v34, &async function pointer to partial apply for closure #1 in NearbyInvitationsProviderDataSource.init(), v45);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0J9GroupHostCG_GMd, &_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0J9GroupHostCG_GMR);
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();

  return _swift_task_switch(closure #1 in NearbyInvitationsProviderDataSource.init(), 0, 0);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.init()()
{
  v1 = *(*(v0 + 72) + 64);
  *(v0 + 104) = v1;
  return _swift_task_switch(closure #1 in NearbyInvitationsProviderDataSource.init(), v1, 0);
}

{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0I9GroupHostCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0I9GroupHostCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();

  return _swift_task_switch(closure #1 in NearbyInvitationsProviderDataSource.init(), 0, 0);
}

{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Published<[UUID : NearbyGroupHost]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0J9GroupHostCG_GMd, &_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0J9GroupHostCG_GMR, &protocol conformance descriptor for Published<A>.Publisher);
  Publisher<>.sink(receiveValue:)();

  v5 = (*(*v4 + 464))(v0 + 2);
  AnyCancellable.store(in:)();

  v5(v0 + 2, 0);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t NearbyInvitationsProviderDataSource.createGroup(with:response:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v9 - 8);
  v11 = &v30 - v10;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.host);
  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v32 = v11;
    v17 = v16;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v33[0] = v31;
    *v17 = 136315394;
    v18 = _typeName(_:qualified:)();
    v20 = v8;
    v21 = a3;
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v33);

    *(v17 + 4) = v22;
    a3 = v21;
    v8 = v20;
    *(v17 + 12) = 2112;
    *(v17 + 14) = v13;
    v23 = v30;
    *v30 = v13;
    v24 = v13;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s received request to create group %@", v17, 0x16u);
    outlined destroy of Any?(v23, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0Tm(v31);

    v11 = v32;
  }

  v25 = type metadata accessor for TaskPriority();
  (*(*(v25 - 8) + 56))(v11, 1, 1, v25);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v4;
  v26[5] = v13;
  v26[6] = a2;
  v26[7] = a3;
  v26[8] = v8;
  v27 = v13;

  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in NearbyInvitationsProviderDataSource.createGroup(with:response:), v26);
  v28 = v4[12];
  v33[3] = type metadata accessor for ABCReporter();
  v33[4] = &protocol witness table for ABCReporter;
  v33[0] = v28;

  Task<>.reportFailure(on:function:process:)();

  return __swift_destroy_boxed_opaque_existential_0Tm(v33);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.createGroup(with:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  v9 = type metadata accessor for UUID();
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();

  return _swift_task_switch(closure #1 in NearbyInvitationsProviderDataSource.createGroup(with:response:), 0, 0);
}

uint64_t NearbyInvitationsProviderDataSource.requestApproval(with:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v8 - 8);
  v10 = &v30 - v9;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.host);
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v15 = 136315394;
    v16 = _typeName(_:qualified:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v33);
    v31 = v10;
    v19 = a3;
    v20 = a2;
    v21 = v18;

    *(v15 + 4) = v21;
    *(v15 + 12) = 2080;
    v32 = v12;
    type metadata accessor for InvitationApprovalRequest();
    v22 = v12;
    v23 = String.init<A>(reflecting:)();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v33);
    a2 = v20;
    a3 = v19;
    v10 = v31;

    *(v15 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s received request to attempt requesting approval with %s", v15, 0x16u);
    swift_arrayDestroy();
  }

  v26 = type metadata accessor for TaskPriority();
  (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = v4;
  v27[5] = v12;
  v27[6] = a2;
  v27[7] = a3;
  v28 = v12;

  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in NearbyInvitationsProviderDataSource.requestApproval(with:completion:), v27);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.requestApproval(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[38] = a6;
  v7[39] = a7;
  v7[36] = a4;
  v7[37] = a5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v7[40] = v8;
  v7[41] = *(v8 - 8);
  v7[42] = swift_task_alloc();
  v9 = type metadata accessor for DispatchQoS();
  v7[43] = v9;
  v7[44] = *(v9 - 8);
  v7[45] = swift_task_alloc();

  return _swift_task_switch(closure #1 in NearbyInvitationsProviderDataSource.requestApproval(with:completion:), 0, 0);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.requestApproval(with:completion:)()
{
  v1 = *(*(v0 + 288) + 56);
  v2 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyIDSServiceController_service;
  *(v0 + 368) = v1;
  *(v0 + 376) = v2;
  v3 = *(v1 + v2 + 24);
  v4 = *(v1 + v2 + 32);
  v5 = __swift_project_boxed_opaque_existential_1((v1 + v2), v3);
  *(v0 + 184) = v3;
  *(v0 + 192) = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 160));
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v5, v3);
  specialized NearbyGroupServerBag.pseudonymConfig(service:reusable:)((v0 + 160), 1, (v0 + 64));
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);
  v9 = *(v0 + 64);
  v10 = *(v0 + 72);
  *(v0 + 384) = v10;
  *(v0 + 264) = *(v0 + 96);
  outlined destroy of Any?(v0 + 264, &_sSSSgMd, &_sSSSgMR);
  *(v0 + 16) = v9;
  *(v0 + 24) = v10;
  *(v0 + 32) = v8;
  *(v0 + 40) = v7;
  *(v0 + 48) = 0xD000000000000016;
  *(v0 + 56) = 0x80000001000CEB90;
  v11 = swift_task_alloc();
  *(v0 + 392) = v11;
  *v11 = v0;
  v11[1] = closure #1 in NearbyInvitationsProviderDataSource.requestApproval(with:completion:);

  return specialized static Pseudonym.reusable(for:configuration:)(v0 + 160, v0 + 16);
}

{
  v1 = v0[51];
  v19 = v0[52];
  v2 = v0[46];
  v3 = v0[47];
  v4 = v0[45];
  v26 = v0[44];
  v27 = v0[43];
  v23 = v0[42];
  v24 = v0[40];
  v25 = v0[41];
  v21 = v0[38];
  v22 = v0[39];
  v5 = v0[36];
  v20 = v0[37];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 20);
  swift_beginAccess();
  v6 = [*(v1 + 16) URI];
  v7 = [v6 prefixedURI];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  outlined init with copy of PseudonymProtocol(v2 + v3, (v0 + 25));
  v12 = v0[28];
  v11 = v0[29];
  v13 = __swift_project_boxed_opaque_existential_1(v0 + 25, v12);
  specialized static Pseudonym.markUsed(handle:for:reuseIdentifier:)(v8, v10, v13, 0xD000000000000016, 0x80000001000CEB90, v19, v12, *(v11 + 8));

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 25);
  v14 = swift_allocObject();
  v14[2] = v5;
  v14[3] = v20;
  v14[4] = v1;
  v14[5] = v21;
  v14[6] = v22;
  v0[18] = partial apply for closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestApproval(with:completion:);
  v0[19] = v14;
  v0[14] = _NSConcreteStackBlock;
  v0[15] = 1107296256;
  v0[16] = thunk for @escaping @callee_guaranteed () -> ();
  v0[17] = &block_descriptor_198;
  v15 = _Block_copy(v0 + 14);

  v16 = v20;

  static DispatchQoS.unspecified.getter();
  v0[35] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v25 + 8))(v23, v24);
  (*(v26 + 8))(v4, v27);

  v17 = v0[1];

  return v17();
}

{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 160));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.requestApproval(with:completion:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 400) = v1;

  if (v1)
  {
    v5 = closure #1 in NearbyInvitationsProviderDataSource.requestApproval(with:completion:);
  }

  else
  {

    *(v4 + 408) = a1;
    *(v4 + 416) = type metadata accessor for Pseudonym();
    v5 = closure #1 in NearbyInvitationsProviderDataSource.requestApproval(with:completion:);
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestApproval(with:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a4;
  v45 = a5;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v41 - v13;
  v15 = a1[7];
  swift_beginAccess();
  v16 = [*(a3 + 16) URI];
  v17 = [v16 prefixedURI];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  (*((swift_isaMask & *v15) + 0x118))(a2, v18, v20);
  v21 = v8;

  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Log.host);
  (*(v9 + 16))(v12, v14, v8);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v42 = v25;
    v43 = swift_slowAlloc();
    v46[0] = v43;
    *v25 = 136315138;
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v29 = v12;
    v30 = *(v9 + 8);
    v30(v29, v21);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, v46);

    v32 = v42;
    *(v42 + 1) = v31;
    _os_log_impl(&_mh_execute_header, v23, v24, "Sent joinRequest with ID: %s, staging for completion", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v43);
  }

  else
  {

    v33 = v12;
    v30 = *(v9 + 8);
    v30(v33, v8);
  }

  v34 = swift_allocObject();
  *(v34 + 16) = v44;
  *(v34 + 24) = v45;
  v35 = *(*a1 + 320);

  v36 = v35(v46);
  v38 = v37;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v38;
  *v38 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(partial apply for closure #1 in closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestApproval(with:completion:), v34, v14, isUniquelyReferenced_nonNull_native);
  *v38 = v47;
  v36(v46, 0);
  return (v30)(v14, v21);
}

uint64_t closure #1 in closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestApproval(with:completion:)(void **a1, void **a2, void (*a3)(void, void))
{
  v4 = *a1;
  v5 = *a2;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.host);
  v7 = v4;
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = 7104878;
    v11 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v11 = 136315394;
    v24 = a3;
    if (v4)
    {
      type metadata accessor for InvitationJoinResponse();
      v12 = v7;
      v13 = String.init<A>(reflecting:)();
      v15 = v14;
    }

    else
    {
      v15 = 0xE300000000000000;
      v13 = 7104878;
    }

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v25);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    if (v5)
    {
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v10 = String.init<A>(reflecting:)();
      v18 = v17;
    }

    else
    {
      v18 = 0xE300000000000000;
    }

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v18, &v25);

    *(v11 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "Received joinResponse: %s, error: %s", v11, 0x16u);
    swift_arrayDestroy();

    a3 = v24;
    if (!v5)
    {
      goto LABEL_13;
    }

LABEL_7:
    swift_errorRetain();
    a3(0, v5);
  }

  if (v5)
  {
    goto LABEL_7;
  }

LABEL_13:
  if (v4)
  {
    InvitationJoinResponse.sessionIdentifier.getter();
    if (v20)
    {

      return (a3)(v4, 0);
    }
  }

  lazy protocol witness table accessor for type NearbyInvitationsProviderDataSource.Errors and conformance NearbyInvitationsProviderDataSource.Errors();
  v22 = swift_allocError();
  *v23 = 1;
  a3(0, v22);
}

uint64_t NearbyInvitationsProviderDataSource.approve(pendingMember:response:completion:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v39 = *v5;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v10 - 8);
  __chkstk_darwin(v10);
  v42 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchQoS();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Log.host);
  v14 = a1;
  v15 = a2;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = v10;
    aBlock[0] = v37;
    *v18 = 136315650;
    v20 = _typeName(_:qualified:)();
    v39 = a4;
    v22 = a3;
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, aBlock);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    v45 = v14;
    type metadata accessor for IncomingInvitationJoinRequest();
    v24 = v14;
    v25 = String.init<A>(reflecting:)();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, aBlock);
    a4 = v39;

    *(v18 + 14) = v27;
    a3 = v22;
    *(v18 + 22) = 2112;
    *(v18 + 24) = v15;
    *v19 = v15;
    v28 = v15;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s approve pendingMember %s with response: %@", v18, 0x20u);
    outlined destroy of Any?(v19, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    swift_arrayDestroy();
    v10 = v38;
  }

  v29 = swift_allocObject();
  v29[2] = v5;
  v29[3] = v14;
  v29[4] = v15;
  v29[5] = a3;
  v29[6] = a4;
  aBlock[4] = partial apply for closure #1 in NearbyInvitationsProviderDataSource.approve(pendingMember:response:completion:);
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_5;
  v30 = _Block_copy(aBlock);
  v31 = v14;
  v32 = v15;

  v33 = v40;
  static DispatchQoS.unspecified.getter();
  v45 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, &protocol conformance descriptor for [A]);
  v34 = v42;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v30);
  (*(v44 + 8))(v34, v10);
  (*(v41 + 8))(v33, v43);
}

uint64_t NearbyInvitationsProviderDataSource.reject(pendingMember:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v38 = *(v11 - 8);
  v39 = v11;
  __chkstk_darwin(v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Log.host);
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v37 = v8;
    v19 = v18;
    aBlock[0] = swift_slowAlloc();
    *v19 = 136315394;
    v20 = _typeName(_:qualified:)();
    v35 = a2;
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, aBlock);
    v36 = v13;
    v23 = v10;
    v24 = a3;
    v25 = v22;

    *(v19 + 4) = v25;
    *(v19 + 12) = 2080;
    v41 = v15;
    type metadata accessor for IncomingInvitationJoinRequest();
    v26 = v15;
    v27 = String.init<A>(reflecting:)();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, aBlock);
    a3 = v24;
    v10 = v23;
    v13 = v36;

    *(v19 + 14) = v29;
    a2 = v35;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s reject pendingMember %s", v19, 0x16u);
    swift_arrayDestroy();

    v8 = v37;
  }

  v30 = swift_allocObject();
  v30[2] = v4;
  v30[3] = v15;
  v30[4] = a2;
  v30[5] = a3;
  aBlock[4] = partial apply for closure #1 in NearbyInvitationsProviderDataSource.reject(pendingMember:completion:);
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_24_0;
  v31 = _Block_copy(aBlock);
  v32 = v15;

  static DispatchQoS.unspecified.getter();
  v41 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v31);
  (*(v40 + 8))(v10, v8);
  (*(v38 + 8))(v13, v39);
}

uint64_t NearbyInvitationsProviderDataSource.generateNearbyInvitation(provider:response:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v3;
  v10[5] = a2;
  v10[6] = a3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in NearbyInvitationsProviderDataSource.generateNearbyInvitation(provider:response:), v10);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.generateNearbyInvitation(provider:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[14] = a4;
  return _swift_task_switch(closure #1 in NearbyInvitationsProviderDataSource.generateNearbyInvitation(provider:response:), 0, 0);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.generateNearbyInvitation(provider:response:)()
{
  v3 = (*((swift_isaMask & **(*(v0 + 112) + 48)) + 0xA8) + **((swift_isaMask & **(*(v0 + 112) + 48)) + 0xA8));
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = closure #1 in NearbyInvitationsProviderDataSource.generateNearbyInvitation(provider:response:);

  return v3(v0 + 56);
}

{
  v1 = *(v0 + 144);
  v2 = outlined init with take of PseudonymProtocol((v0 + 56), v0 + 16);
  v3 = (*(*v1 + 96))(v2);
  v5 = *(v0 + 120);
  if (v4 >> 60 == 15)
  {
    v5(0, 0);
  }

  else
  {
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    v8 = v3;
    v9 = v4;
    __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
    v10 = *(v7 + 16);
    outlined copy of Data._Representation(v8, v9);
    v10(v6, v7);
    v11 = objc_allocWithZone(type metadata accessor for NearbyInvitationJoinRequestMetadata());
    v12 = NearbyInvitationJoinRequestMetadata.init(publicKey:pseudonym:)();
    v13 = v12;
    v5(v12, 0);

    outlined consume of Data?(v8, v9);
  }

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v14 = *(v0 + 8);

  return v14();
}

{
  v18 = v0;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.host);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[19];
    v5 = v0[14];
    v6 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v6 = 136315394;
    v0[12] = v5;
    type metadata accessor for NearbyInvitationsProviderDataSource(0);

    v7 = String.init<A>(reflecting:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v17);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v0[13] = v4;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v17);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s failed to provision pseudonym, error: %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v13 = v0[19];
  v14 = v0[15];
  swift_errorRetain();
  v14(0, v13);

  v15 = v0[1];

  return v15();
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.generateNearbyInvitation(provider:response:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = closure #1 in NearbyInvitationsProviderDataSource.generateNearbyInvitation(provider:response:);
  }

  else
  {
    v4 = closure #1 in NearbyInvitationsProviderDataSource.generateNearbyInvitation(provider:response:);
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t NearbyInvitationsProviderDataSource.advertiseNearbyInvitation(_:provider:response:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v9 - 8);
  v11 = &v32 - v10;
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
    _os_log_impl(&_mh_execute_header, v13, v14, "NearbyInvitationsProviderDataSource advertiseNearbyInvitation", v15, 2u);
  }

  v16 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = v16;
    v35 = v33;
    *v19 = 136315138;
    type metadata accessor for NearbyAdvertisementRequest();
    v20 = v16;
    v21 = String.init<A>(reflecting:)();
    v23 = v11;
    v24 = v5;
    v25 = a4;
    v26 = a3;
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v35);

    *(v19 + 4) = v27;
    a3 = v26;
    a4 = v25;
    v5 = v24;
    v11 = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "Got pseud %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
  }

  v28 = type metadata accessor for TaskPriority();
  (*(*(v28 - 8) + 56))(v11, 1, 1, v28);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v5;
  v29[5] = v16;
  v29[6] = a3;
  v29[7] = a4;
  v30 = v16;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in NearbyInvitationsProviderDataSource.advertiseNearbyInvitation(_:provider:response:), v29);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.advertiseNearbyInvitation(_:provider:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(closure #1 in NearbyInvitationsProviderDataSource.advertiseNearbyInvitation(_:provider:response:), 0, 0);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.advertiseNearbyInvitation(_:provider:response:)()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = closure #1 in NearbyInvitationsProviderDataSource.advertiseNearbyInvitation(_:provider:response:);
  v2 = *(v0 + 24);

  return NearbyInvitationServiceBluetoothController.broadcast(invitation:)(v2);
}

{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = closure #1 in NearbyInvitationsProviderDataSource.advertiseNearbyInvitation(_:provider:response:);
  }

  else
  {
    v2 = closure #1 in NearbyInvitationsProviderDataSource.advertiseNearbyInvitation(_:provider:response:);
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t NearbyInvitationsProviderDataSource.advertiseNearbySessionEndpoint(params:response:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
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
    _os_log_impl(&_mh_execute_header, v12, v13, "NearbyInvitationsProviderDataSource advertiseNearbySessionEndpoint", v14, 2u);
  }

  type metadata accessor for NearbyInvitationAdvertiser(0);
  v15 = swift_allocObject();

  v16 = specialized NearbyInvitationAdvertiser.init(listenerConfiguration:delegate:)(a1, v4, v15);

  *(v4 + 80) = v16;

  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v16;
  v18[5] = a2;
  v18[6] = a3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in NearbyInvitationsProviderDataSource.advertiseNearbySessionEndpoint(params:response:), v18);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.advertiseNearbySessionEndpoint(params:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(closure #1 in NearbyInvitationsProviderDataSource.advertiseNearbySessionEndpoint(params:response:), 0, 0);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.advertiseNearbySessionEndpoint(params:response:)()
{
  (*(**(v0 + 16) + 320))();
  (*(v0 + 24))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t NearbyInvitationsProviderDataSource.stopAdvertisingNearbyInvitation(_:response:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v24 = a2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - v12;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Log.host);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v23 = v13;
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "NearbyInvitationsProviderDataSource stopAdvertising", v17, 2u);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = v23;
  }

  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
  (*(v8 + 16))(v10, a1, v7);
  v19 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 4) = v4;
  (*(v8 + 32))(&v20[v19], v10, v7);
  v21 = &v20[(v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v21 = v24;
  v21[1] = a3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v13, &async function pointer to partial apply for closure #1 in NearbyInvitationsProviderDataSource.stopAdvertisingNearbyInvitation(_:response:), v20);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.stopAdvertisingNearbyInvitation(_:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(closure #1 in NearbyInvitationsProviderDataSource.stopAdvertisingNearbyInvitation(_:response:), 0, 0);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.stopAdvertisingNearbyInvitation(_:response:)()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = closure #1 in NearbyInvitationsProviderDataSource.stopAdvertisingNearbyInvitation(_:response:);
  v2 = *(v0 + 24);

  return NearbyInvitationServiceBluetoothController.stopBroadcast(invitation:)(v2);
}

{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = closure #1 in NearbyInvitationsProviderDataSource.stopAdvertisingNearbyInvitation(_:response:);
  }

  else
  {
    v2 = closure #1 in NearbyInvitationsProviderDataSource.stopAdvertisingNearbyInvitation(_:response:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  (*(v0 + 32))(0);
  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[7];
  v2 = v0[4];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t NearbyInvitationsProviderDataSource.stopAdvertisingNearbySessionEndpoint(response:)(void (*a1)(void), uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - v6;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.host);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "NearbyInvitationsProviderDataSource stopAdvertisingEndpoint", v11, 2u);
  }

  v12 = *(v2 + 80);
  if (v12)
  {
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v12;
    v14[5] = a1;
    v14[6] = a2;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in NearbyInvitationsProviderDataSource.stopAdvertisingNearbySessionEndpoint(response:), v14);
  }

  else
  {
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "NearbyInvitationsProviderDataSource unable to create nearbyInvitationsBrowser", v18, 2u);
    }

    lazy protocol witness table accessor for type NearbyInvitationsProviderDataSource.Errors and conformance NearbyInvitationsProviderDataSource.Errors();
    swift_allocError();
    *v19 = 2;
    a1();
  }
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.stopAdvertisingNearbySessionEndpoint(response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v9 = (*(*a4 + 328) + **(*a4 + 328));
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = closure #1 in NearbyInvitationsProviderDataSource.stopAdvertisingNearbySessionEndpoint(response:);

  return v9();
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.stopAdvertisingNearbySessionEndpoint(response:)()
{

  return _swift_task_switch(closure #1 in NearbyInvitationsProviderDataSource.stopAdvertisingNearbySessionEndpoint(response:), 0, 0);
}

{
  (*(v0 + 16))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.markInvitationUsed(_:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(closure #1 in NearbyInvitationsProviderDataSource.markInvitationUsed(_:response:), 0, 0);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.markInvitationUsed(_:response:)(uint64_t a1)
{
  v2 = *(v1[2] + 48);
  v3 = NearbyInvitationJoinRequestMetadata.pseudonym.getter();
  (*((swift_isaMask & *v2) + 0xD8))(v3);
  v4 = v1[4];

  v4(0);
  v5 = v1[1];

  return v5();
}

uint64_t NearbyInvitationsProviderDataSource.assertAdvertisementPublic(_:rotations:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a3;
  v40 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v6 - 8);
  v39 = &v35 - v7;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v36 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v11;
  __chkstk_darwin(v10);
  v13 = &v35 - v12;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v41 = a2;
  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Log.host);
  v15 = *(v9 + 16);
  v38 = a1;
  v15(v13, a1, v8);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v35 = v15;
    v19 = v18;
    v20 = swift_slowAlloc();
    v44 = v20;
    *v19 = 136315394;
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v9 + 8))(v13, v8);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v44);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2048;
    v25 = v41;
    *(v19 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v16, v17, "NearbyInvitationsProviderDataSource assertAdvertisementPublic invitation: %s for %lu rotations", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);

    v15 = v35;
  }

  else
  {

    (*(v9 + 8))(v13, v8);
    v25 = v41;
  }

  v26 = type metadata accessor for TaskPriority();
  v27 = v39;
  (*(*(v26 - 8) + 56))(v39, 1, 1, v26);
  v28 = v36;
  v15(v36, v38, v8);
  v29 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v30 = (v37 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 2) = 0;
  *(v31 + 3) = 0;
  *(v31 + 4) = v43;
  (*(v9 + 32))(&v31[v29], v28, v8);
  *&v31[v30] = v25;
  v32 = &v31[(v30 + 15) & 0xFFFFFFFFFFFFFFF8];
  v33 = v40;
  *v32 = v42;
  v32[1] = v33;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v27, &async function pointer to partial apply for closure #1 in NearbyInvitationsProviderDataSource.assertAdvertisementPublic(_:rotations:response:), v31);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.assertAdvertisementPublic(_:rotations:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8[8] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v8[9] = v9;
  v8[10] = *(v9 - 8);
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();

  return _swift_task_switch(closure #1 in NearbyInvitationsProviderDataSource.assertAdvertisementPublic(_:rotations:response:), 0, 0);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.assertAdvertisementPublic(_:rotations:response:)()
{
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = closure #1 in NearbyInvitationsProviderDataSource.assertAdvertisementPublic(_:rotations:response:);
  v2 = v0[12];
  v3 = v0[4];
  v4 = v0[5];

  return NearbyInvitationServiceBluetoothController.assertPublic(invitation:rotations:)(v2, v3, v4);
}

{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = closure #1 in NearbyInvitationsProviderDataSource.assertAdvertisementPublic(_:rotations:response:);
  }

  else
  {
    v2 = closure #1 in NearbyInvitationsProviderDataSource.assertAdvertisementPublic(_:rotations:response:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[6];
  (*(v3 + 16))(v4, v1, v2);
  (*(v3 + 56))(v4, 0, 1, v2);
  v5(v4, 0);
  outlined destroy of Any?(v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(v3 + 8))(v1, v2);

  v6 = v0[1];

  return v6();
}

{
  v29 = v0;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[4];
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.host);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[14];
    v10 = v0[10];
    v9 = v0[11];
    v11 = v0[9];
    v12 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v12 = 136315394;
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v28);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v0[2] = v8;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v17 = String.init<A>(reflecting:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v28);

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to assert invitation %s as public, reason: %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v21 = v0[10];
    v20 = v0[11];
    v22 = v0[9];

    (*(v21 + 8))(v20, v22);
  }

  v23 = v0[14];
  v24 = v0[8];
  v25 = v0[6];
  (*(v0[10] + 56))(v24, 1, 1, v0[9]);
  swift_errorRetain();
  v25(v24, v23);

  outlined destroy of Any?(v24, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  v26 = v0[1];

  return v26();
}

uint64_t NearbyInvitationsProviderDataSource.releaseAdvertisementPublicAssertion(_:assertionIdentifier:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a4;
  v57 = a3;
  v60 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v5 - 8);
  v61 = v48 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v55 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v54 = v48 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = v48 - v14;
  __chkstk_darwin(v13);
  v17 = v48 - v16;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Log.host);
  v19 = *(v8 + 16);
  v56 = a1;
  v19(v17, a1, v7);
  v19(v15, v60, v7);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v49 = v22;
    v52 = swift_slowAlloc();
    v62 = v52;
    *v22 = 136315394;
    v48[1] = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v51 = v21;
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v15;
    v25 = v7;
    v27 = v26;
    v53 = v19;
    v50 = v20;
    v28 = *(v8 + 8);
    v28(v17, v25);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v27, &v62);
    v7 = v25;

    v30 = v49;
    *(v49 + 1) = v29;
    *(v30 + 6) = 2080;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    v28(v24, v7);
    v19 = v53;
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v62);

    *(v30 + 14) = v34;
    v35 = v50;
    _os_log_impl(&_mh_execute_header, v50, v51, "NearbyInvitationsProviderDataSource releaseAdvertisementPublicAssertion invitation: %s assertionIdentifier: %s", v30, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v36 = *(v8 + 8);
    v36(v15, v7);
    v36(v17, v7);
  }

  v37 = type metadata accessor for TaskPriority();
  (*(*(v37 - 8) + 56))(v61, 1, 1, v37);
  v38 = v54;
  v19(v54, v56, v7);
  v39 = v55;
  v19(v55, v60, v7);
  v40 = *(v8 + 80);
  v41 = (v40 + 40) & ~v40;
  v42 = (v9 + v40 + v41) & ~v40;
  v43 = swift_allocObject();
  *(v43 + 2) = 0;
  *(v43 + 3) = 0;
  *(v43 + 4) = v58;
  v44 = *(v8 + 32);
  v44(&v43[v41], v38, v7);
  v44(&v43[v42], v39, v7);
  v45 = &v43[(v9 + v42 + 7) & 0xFFFFFFFFFFFFFFF8];
  v46 = v59;
  *v45 = v57;
  v45[1] = v46;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v61, &async function pointer to partial apply for closure #1 in NearbyInvitationsProviderDataSource.releaseAdvertisementPublicAssertion(_:assertionIdentifier:response:), v43);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.releaseAdvertisementPublicAssertion(_:assertionIdentifier:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  v9 = type metadata accessor for UUID();
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();
  v8[11] = swift_task_alloc();

  return _swift_task_switch(closure #1 in NearbyInvitationsProviderDataSource.releaseAdvertisementPublicAssertion(_:assertionIdentifier:response:), 0, 0);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.releaseAdvertisementPublicAssertion(_:assertionIdentifier:response:)()
{
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = closure #1 in NearbyInvitationsProviderDataSource.releaseAdvertisementPublicAssertion(_:assertionIdentifier:response:);
  v3 = v0[4];
  v2 = v0[5];

  return NearbyInvitationServiceBluetoothController.releasePublicAssertion(invitation:assertionIdentifier:)(v3, v2);
}

{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = closure #1 in NearbyInvitationsProviderDataSource.releaseAdvertisementPublicAssertion(_:assertionIdentifier:response:);
  }

  else
  {
    v2 = closure #1 in NearbyInvitationsProviderDataSource.releaseAdvertisementPublicAssertion(_:assertionIdentifier:response:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  (*(v0 + 48))(0);

  v1 = *(v0 + 8);

  return v1();
}

{
  v40 = v0;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v6 = v0[4];
  v5 = v0[5];
  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.host);
  v8 = *(v4 + 16);
  v8(v2, v6, v3);
  v8(v1, v5, v3);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v38 = v10;
    v11 = v0[11];
    v36 = v0[10];
    v37 = v0[13];
    v13 = v0[8];
    v12 = v0[9];
    v14 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v14 = 136315650;
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v11, v13);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v39);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    v18(v36, v13);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v39);

    *(v14 + 14) = v23;
    *(v14 + 22) = 2080;
    v0[2] = v37;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v24 = String.init<A>(reflecting:)();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v39);

    *(v14 + 24) = v26;
    _os_log_impl(&_mh_execute_header, v9, v38, "Failed to release invitation %s's assertion %s, reason: %s", v14, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v28 = v0[10];
    v27 = v0[11];
    v29 = v0[8];
    v30 = v0[9];

    v31 = *(v30 + 8);
    v31(v28, v29);
    v31(v27, v29);
  }

  v32 = v0[13];
  v33 = v0[6];
  swift_errorRetain();
  v33(v32);

  v34 = v0[1];

  return v34();
}

uint64_t NearbyInvitationsProviderDataSource.markInvitationUsed(_:response:)(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6)
{
  v24 = a6;
  v8 = v6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v12 - 8);
  v14 = &v23 - v13;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Log.host);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, a4, v18, 2u);
  }

  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v8;
  v20[5] = a1;
  v20[6] = a2;
  v20[7] = a3;

  v21 = a1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v14, v24, v20);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.releaseInvitation(_:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(closure #1 in NearbyInvitationsProviderDataSource.releaseInvitation(_:response:), 0, 0);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.releaseInvitation(_:response:)(uint64_t a1)
{
  v2 = *(v1[2] + 48);
  v3 = NearbyInvitationJoinRequestMetadata.pseudonym.getter();
  (*((swift_isaMask & *v2) + 0xB0))(v3);
  v4 = v1[4];

  v4(0);
  v5 = v1[1];

  return v5();
}

uint64_t NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v26 = a1;
  v27 = a2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - v10;
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
    _os_log_impl(&_mh_execute_header, v13, v14, "NearbyInvitationsProviderDataSource scanNearbyInvitations", v15, 2u);
  }

  v16 = [objc_allocWithZone(TUFeatureFlags) init];
  v17 = [v16 btScanAbstraction];

  if (v17)
  {
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
    (*(v7 + 16))(&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v26, v6);
    v19 = (*(v7 + 80) + 40) & ~*(v7 + 80);
    v20 = swift_allocObject();
    *(v20 + 2) = 0;
    *(v20 + 3) = 0;
    *(v20 + 4) = v4;
    (*(v7 + 32))(&v20[v19], &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    v21 = &v20[(v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8];
    *v21 = v27;
    *(v21 + 1) = a3;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:), v20);
  }

  else
  {
    v27(0);
    v22 = type metadata accessor for TaskPriority();
    (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
    (*(v7 + 16))(&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v26, v6);
    v23 = (*(v7 + 80) + 40) & ~*(v7 + 80);
    v24 = swift_allocObject();
    *(v24 + 2) = 0;
    *(v24 + 3) = 0;
    *(v24 + 4) = v4;
    (*(v7 + 32))(&v24[v23], &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:), v24);
  }
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = type metadata accessor for UUID();
  v7[10] = v8;
  v9 = *(v8 - 8);
  v7[11] = v9;
  v7[12] = *(v9 + 64);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7[15] = swift_task_alloc();

  return _swift_task_switch(closure #1 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:), 0, 0);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)()
{
  v46 = v0;
  if (!*((*(**(v0 + 48) + 376))() + 16))
  {

    goto LABEL_8;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 56));
  v2 = v1;

  if ((v2 & 1) == 0)
  {
LABEL_8:
    v20 = *(v0 + 112);
    v21 = *(v0 + 88);
    v40 = *(v0 + 120);
    v41 = *(v0 + 80);
    v44 = *(v0 + 72);
    v22 = *(v0 + 56);
    v42 = *(v0 + 96);
    v43 = *(v0 + 64);
    v23 = *(v0 + 48);
    v24 = [objc_allocWithZone(CBDiscovery) init];
    [v24 setUseCase:131092];
    [v24 addDiscoveryType:21];
    type metadata accessor for BluetoothScanner(0);
    v25 = swift_allocObject();
    v26 = specialized BluetoothScanner.init(discoveryEngine:)(v24, v25);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerCyAA0E13RangingFilterCGMd, &_s44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerCyAA0E13RangingFilterCGMR);
    swift_allocObject();
    v27 = specialized FilteredBluetoothScanner.init(scanner:config:)(v26, 1, 3);

    v28 = *(*v23 + 392);

    v29 = v28(v0 + 16);
    v31 = v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = *v31;
    *v31 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v27, v22, isUniquelyReferenced_nonNull_native);
    *v31 = v45;
    v29(v0 + 16, 0);
    v33 = type metadata accessor for TaskPriority();
    (*(*(v33 - 8) + 56))(v40, 1, 1, v33);
    (*(v21 + 16))(v20, v22, v41);
    v34 = (*(v21 + 80) + 56) & ~*(v21 + 80);
    v35 = swift_allocObject();
    *(v35 + 2) = 0;
    *(v35 + 3) = 0;
    *(v35 + 4) = v43;
    *(v35 + 5) = v44;
    *(v35 + 6) = v27;
    (*(v21 + 32))(&v35[v34], v20, v41);
    *&v35[(v42 + v34 + 7) & 0xFFFFFFFFFFFFFFF8] = v23;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v40, &async function pointer to partial apply for closure #1 in closure #1 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:), v35);

    goto LABEL_11;
  }

  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 104);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = *(v0 + 56);
  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.host);
  (*(v5 + 16))(v3, v6, v4);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 104);
  v12 = *(v0 + 80);
  v13 = *(v0 + 88);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v45 = v15;
    *v14 = 136315138;
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v13 + 8))(v11, v12);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v45);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "Received request to scan for ID: %s which already exists.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
  }

  else
  {

    (*(v13 + 8))(v11, v12);
  }

  v36 = *(v0 + 64);
  lazy protocol witness table accessor for type NearbyInvitationsProviderDataSource.Errors and conformance NearbyInvitationsProviderDataSource.Errors();
  swift_allocError();
  *v37 = 4;
  v36();

LABEL_11:

  v38 = *(v0 + 8);

  return v38();
}

uint64_t closure #1 in closure #1 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[10] = a4;
  v8[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys20CollectionDifferenceVy14NearbySessions0E13AdvertisementCGGMd, &_ss16IndexingIteratorVys20CollectionDifferenceVy14NearbySessions0E13AdvertisementCGGMR);
  v8[16] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20CollectionDifferenceVy14NearbySessions0C13AdvertisementCGMd, &_ss20CollectionDifferenceVy14NearbySessions0C13AdvertisementCGMR);
  v8[17] = v9;
  v8[18] = *(v9 - 8);
  v8[19] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA10PublishersO10CompactMapVy_AA19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0Q6DeviceVyAJ0N13RangingFilterC_GGs5NeverOGSay0N8Sessions0N13AdvertisementCGGGMd, &_s7Combine14AsyncPublisherVyAA10PublishersO10CompactMapVy_AA19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0Q6DeviceVyAJ0N13RangingFilterC_GGs5NeverOGSay0N8Sessions0N13AdvertisementCGGGMR);
  v8[20] = v10;
  v8[21] = *(v10 - 8);
  v8[22] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA10PublishersO10CompactMapVy_AA19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0R6DeviceVyAL0O13RangingFilterC_GGs5NeverOGSay0O8Sessions0O13AdvertisementCGG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA10PublishersO10CompactMapVy_AA19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0R6DeviceVyAL0O13RangingFilterC_GGs5NeverOGSay0O8Sessions0O13AdvertisementCGG_GMR);
  v8[23] = v11;
  v8[24] = *(v11 - 8);
  v8[25] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v8[26] = v12;
  v13 = *(v12 - 8);
  v8[27] = v13;
  v8[28] = *(v13 + 64);
  v8[29] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AA19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0O6DeviceVyAH0L13RangingFilterC_GGs5NeverOGSay0L8Sessions0L13AdvertisementCGGMd, &_s7Combine10PublishersO10CompactMapVy_AA19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0O6DeviceVyAH0L13RangingFilterC_GGs5NeverOGSay0L8Sessions0L13AdvertisementCGGMR);
  v8[30] = v14;
  v8[31] = *(v14 - 8);
  v8[32] = swift_task_alloc();

  return _swift_task_switch(closure #1 in closure #1 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:), 0, 0);
}

uint64_t closure #1 in closure #1 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v3 = *(v0 + 208);
  v4 = *(v0 + 176);
  v13 = *(v0 + 168);
  v12 = *(v0 + 160);
  v6 = *(v0 + 96);
  v5 = *(v0 + 104);
  v7 = (*(v0 + 80))(0);
  *(v0 + 48) = (*(*v6 + 192))(v7);
  (*(v2 + 16))(v1, v5, v3);
  v8 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v9 = swift_allocObject();
  (*(v2 + 32))(v9 + v8, v1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0L6DeviceVyAD0I13RangingFilterC_GGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0L6DeviceVyAD0I13RangingFilterC_GGs5NeverOGMR);
  *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14NearbySessions0A13AdvertisementCGMd, &_sSay14NearbySessions0A13AdvertisementCGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<[FilteredBluetoothScanner<NearbyRangingFilter>.FilteredDevice], Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0L6DeviceVyAD0I13RangingFilterC_GGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0L6DeviceVyAD0I13RangingFilterC_GGs5NeverOGMR, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  Publisher.compactMap<A>(_:)();

  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.CompactMap<CurrentValueSubject<[FilteredBluetoothScanner<NearbyRangingFilter>.FilteredDevice], Never>, [NearbyAdvertisement]> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AA19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0O6DeviceVyAH0L13RangingFilterC_GGs5NeverOGSay0L8Sessions0L13AdvertisementCGGMd, &_s7Combine10PublishersO10CompactMapVy_AA19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0O6DeviceVyAH0L13RangingFilterC_GGs5NeverOGSay0L8Sessions0L13AdvertisementCGGMR, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  Publisher<>.values.getter();
  AsyncPublisher.makeAsyncIterator()();
  (*(v13 + 8))(v4, v12);
  *(v0 + 272) = _swiftEmptyArrayStorage;
  v10 = swift_task_alloc();
  *(v0 + 280) = v10;
  *v10 = v0;
  v10[1] = closure #1 in closure #1 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:);

  return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI10PublishersO10CompactMapVy_AI19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0V6DeviceVyAT0S13RangingFilterC_GGs5NeverOGSay0S8Sessions0S13AdvertisementCGG_G_Tg5(0, 0);
}

{
  v1 = v0[36];
  if (v1)
  {
    v0[8] = v0[34];
    v2 = v0 + 8;
    v4 = v0[18];
    v3 = v0[19];
    v6 = v0[16];
    v5 = v0[17];
    v7 = v0[15];
    v35 = v1;
    v0[7] = v1;
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [NearbyAdvertisement] and conformance [A], &_sSay14NearbySessions0A13AdvertisementCGMd, &_sSay14NearbySessions0A13AdvertisementCGMR, &protocol conformance descriptor for [A]);
    BidirectionalCollection.difference<A>(from:by:)();

    (*(v4 + 16))(v6, v3, v5);
    v8 = *(v7 + 36);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type CollectionDifference<NearbyAdvertisement> and conformance CollectionDifference<A>, &_ss20CollectionDifferenceVy14NearbySessions0C13AdvertisementCGMd, &_ss20CollectionDifferenceVy14NearbySessions0C13AdvertisementCGMR, &protocol conformance descriptor for CollectionDifference<A>);
    v9 = v36;
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (*(v6 + v8) == v2[1])
    {
LABEL_3:
      v11 = v9[18];
      v10 = v9[19];
      v12 = v9[17];
      outlined destroy of Any?(v9[16], &_ss16IndexingIteratorVys20CollectionDifferenceVy14NearbySessions0E13AdvertisementCGGMd, &_ss16IndexingIteratorVys20CollectionDifferenceVy14NearbySessions0E13AdvertisementCGGMR);
      (*(v11 + 8))(v10, v12);
      v9[34] = v35;
      v13 = swift_task_alloc();
      v9[35] = v13;
      *v13 = v9;
      v13[1] = closure #1 in closure #1 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:);

      return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI10PublishersO10CompactMapVy_AI19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0V6DeviceVyAT0S13RangingFilterC_GGs5NeverOGSay0S8Sessions0S13AdvertisementCGG_G_Tg5(0, 0);
    }

    v22 = v6;
    while (1)
    {
      v24 = v9[14];
      v25 = v22;
      v26 = dispatch thunk of Collection.subscript.read();
      v28 = *(v27 + 8);
      v29 = *(v27 + 25);
      outlined copy of CollectionDifference<NearbyAdvertisement>.Change();
      v26(v36 + 2, 0);
      v22 = v25;
      v30 = dispatch thunk of Collection.formIndex(after:)();
      v31 = (*(*v24 + 208))(v30);
      v33 = v32;
      if (v29)
      {
        break;
      }

      v9 = v36;
      if (v31)
      {
        ObjectType = swift_getObjectType();
        (*(v33 + 32))(v28, ObjectType, v33);
LABEL_12:
        swift_unknownObjectRelease();
      }

LABEL_13:
      outlined consume of CollectionDifference<NearbyAdvertisement>.Change();
      dispatch thunk of Collection.endIndex.getter();
      if (*(v22 + v8) == v9[9])
      {
        goto LABEL_3;
      }
    }

    v9 = v36;
    if (!v31)
    {
      goto LABEL_13;
    }

    v34 = swift_getObjectType();
    (*(v33 + 40))(v28, v34, v33);
    goto LABEL_12;
  }

  v16 = v0[31];
  v15 = v0[32];
  v17 = v0[30];
  v19 = v0[24];
  v18 = v0[25];
  v20 = v0[23];

  (*(v19 + 8))(v18, v20);
  (*(v16 + 8))(v15, v17);

  v21 = v0[1];

  return v21();
}

uint64_t closure #1 in closure #1 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)(uint64_t a1)
{
  *(*v2 + 288) = a1;

  if (!v1)
  {

    return _swift_task_switch(closure #1 in closure #1 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:), 0, 0);
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)@<X0>(uint64_t isUniquelyReferenced_nonNull_native@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v23 = a2;
  v24 = a3;
  v3 = *isUniquelyReferenced_nonNull_native;
  v4 = *(*isUniquelyReferenced_nonNull_native + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v3 + 48;
    v26 = *(*isUniquelyReferenced_nonNull_native + 16);
    v21 = v4 - 1;
    v25 = _swiftEmptyArrayStorage;
    v22 = v3 + 48;
    do
    {
      v7 = (v6 + 24 * v5);
      v8 = v5;
      while (1)
      {
        if (v8 >= *(v3 + 16))
        {
          __break(1u);

          __break(1u);
          return result;
        }

        v10 = *(v7 - 2);
        v9 = *(v7 - 1);
        v11 = *v7;
        v5 = v8 + 1;
        v12 = *(**v7 + 208);

        if (v12(v13))
        {
          break;
        }

        v7 += 3;
        ++v8;
        if (v26 == v5)
        {
          goto LABEL_15;
        }
      }

      v14 = v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25[2] + 1, 1);
        v14 = v27;
      }

      v16 = v14[2];
      v15 = v14[3];
      if (v16 >= v15 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        v14 = v27;
      }

      v14[2] = v16 + 1;
      v25 = v14;
      v17 = &v14[3 * v16];
      v17[4] = v10;
      v17[5] = v9;
      v17[6] = v11;
      v6 = v22;
    }

    while (v21 != v8);
  }

  else
  {
    v25 = _swiftEmptyArrayStorage;
  }

LABEL_15:
  __chkstk_darwin(isUniquelyReferenced_nonNull_native);
  v20[2] = v23;
  specialized Sequence.compactMap<A>(_:)(partial apply for closure #2 in closure #1 in closure #1 in closure #1 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:), v20, v25);

  v27 = specialized Array._copyToContiguousArray()(v18);
  specialized MutableCollection<>.sort(by:)(&v27);

  *v24 = v27;
  return result;
}

uint64_t closure #2 in closure #1 in closure #1 in closure #1 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  type metadata accessor for NearbyAdvertisement();
  v11 = (*(v7 + 16))(v9, a2, v6);
  (*(*v10 + 152))(v14, v11);
  v18 = v14[2];
  v19 = v14[3];
  v20 = v14[4];
  v21 = v15;
  v16 = v14[0];
  v17 = v14[1];
  outlined init with copy of (String, Any)(&v16, v22, &_s44com_apple_SharePlay_NearbyInvitationsService15IgnoreEquatableVyACyAA37BluetoothScannerDiscoveryEngineDeviceVGGMd, &_s44com_apple_SharePlay_NearbyInvitationsService15IgnoreEquatableVyACyAA37BluetoothScannerDiscoveryEngineDeviceVGGMR);
  outlined destroy of BluetoothScanner.Device(v14);
  v22[2] = v18;
  v22[3] = v19;
  v22[4] = v20;
  v23 = v21;
  v22[0] = v16;
  v22[1] = v17;
  result = NearbyAdvertisement.init(scannerID:device:)(v9, v22);
  *a3 = result;
  return result;
}

uint64_t closure #2 in closure #1 in closure #1 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)()
{
  v0 = NearbyAdvertisement.identifier.getter();
  v2 = v1;
  if (v0 == NearbyAdvertisement.identifier.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5[4] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14NearbySessions0A13AdvertisementCGMd, &_sScSy14NearbySessions0A13AdvertisementCGMR);
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v5[7] = *(v7 + 64);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();

  return _swift_task_switch(closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:), 0, 0);
}

uint64_t closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)()
{
  NearbyInvitationServiceBluetoothController.findInvitations(scannerID:for:ignoringDistance:)(v0[3], 1, 0);
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v16 = v5;
  v7 = v0[2];
  v8 = type metadata accessor for TaskPriority();
  v17 = *(*(v8 - 8) + 56);
  v17(v5, 1, 1, v8);
  v9 = v6;
  (*(v4 + 16))(v2, v1, v6);
  v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v11 = (v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  (*(v4 + 32))(v12 + v10, v2, v9);
  *(v12 + v11) = v7;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v16, &async function pointer to partial apply for closure #1 in closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:), v12);

  v17(v16, 1, 1, v8);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v7;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v16, &async function pointer to partial apply for closure #2 in closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:), v13);

  (*(v4 + 8))(v1, v9);

  v14 = v0[1];

  return v14();
}

uint64_t closure #1 in closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy14NearbySessions0B13AdvertisementC_GMd, &_sScS8IteratorVy14NearbySessions0B13AdvertisementC_GMR);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();

  return _swift_task_switch(closure #1 in closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:), 0, 0);
}

uint64_t closure #1 in closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14NearbySessions0A13AdvertisementCGMd, &_sScSy14NearbySessions0A13AdvertisementCGMR);
  AsyncStream.makeAsyncIterator()();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = closure #1 in closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:);
  v2 = *(v0 + 40);

  return AsyncStream.Iterator.next(isolation:)(v0 + 16, 0, 0, v2);
}

{

  return _swift_task_switch(closure #1 in closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:), 0, 0);
}

{
  v1 = *(v0 + 16);
  if (v1)
  {
    if ((*(**(v0 + 32) + 208))())
    {
      v3 = v2;
      ObjectType = swift_getObjectType();
      (*(v3 + 32))(v1, ObjectType, v3);
      swift_unknownObjectRelease();
    }

    v5 = swift_task_alloc();
    *(v0 + 64) = v5;
    *v5 = v0;
    v5[1] = closure #1 in closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:);
    v6 = *(v0 + 40);

    return AsyncStream.Iterator.next(isolation:)(v0 + 16, 0, 0, v6);
  }

  else
  {
    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));

    v7 = *(v0 + 8);

    return v7();
  }
}