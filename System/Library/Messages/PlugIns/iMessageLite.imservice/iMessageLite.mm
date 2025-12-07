uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v23 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_3358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_3608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_37E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_3A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getIDSOffGridDeliveryHandlesDonationOptionsClass_block_invoke(uint64_t a1)
{
  IDSLibrary();
  result = objc_getClass("IDSOffGridDeliveryHandlesDonationOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getIDSOffGridDeliveryHandlesDonationOptionsClass_block_invoke_cold_1();
  }

  getIDSOffGridDeliveryHandlesDonationOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void IDSLibrary()
{
  v0[0] = 0;
  if (!IDSLibraryCore_frameworkLibrary)
  {
    v0[1] = _NSConcreteStackBlock;
    v0[2] = 3221225472;
    v0[3] = __IDSLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = off_657B0;
    v2 = 0;
    IDSLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!IDSLibraryCore_frameworkLibrary)
  {
    IDSLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __IDSLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  IDSLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getIDSOffGridServiceUpdateMessageClass_block_invoke(uint64_t a1)
{
  IDSLibrary();
  result = objc_getClass("IDSOffGridServiceUpdateMessage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getIDSOffGridServiceUpdateMessageClass_block_invoke_cold_1();
  }

  getIDSOffGridServiceUpdateMessageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getIDSOffGridServerMessageClass_block_invoke(uint64_t a1)
{
  IDSLibrary();
  result = objc_getClass("IDSOffGridServerMessage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getIDSOffGridServerMessageClass_block_invoke_cold_1();
  }

  getIDSOffGridServerMessageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

unint64_t LiteMessageReceiveError.errorDescription.getter(uint64_t a1, unint64_t a2, char a3)
{
  if (!a3)
  {
    _StringGuts.grow(_:)(34);
    0xE000000000000000, v15;
    v19 = 0xD00000000000001FLL;
    v16._countAndFlagsBits = a1;
    v16._object = a2;
    String.append(_:)(v16);
    v13 = 46;
    v14 = 0xE100000000000000;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v19 = 0;
    _StringGuts.grow(_:)(58);
    v5._object = 0x8000000000055CE0;
    v5._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v5);
    v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    object = v6._object;
    String.append(_:)(v6);
    object, v8;
    v9._countAndFlagsBits = 0xD000000000000020;
    v9._object = 0x8000000000055D00;
    String.append(_:)(v9);
    v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10._object;
    String.append(_:)(v10);
    v11, v12;
    v13 = 11817;
    v14 = 0xE200000000000000;
LABEL_5:
    String.append(_:)(*&v13);
    return v19;
  }

  v18 = 0xD000000000000031;
  if (!(a1 ^ 1 | a2))
  {
    v18 = 0xD00000000000002ELL;
  }

  if (a1 | a2)
  {
    return v18;
  }

  else
  {
    return 0xD000000000000040;
  }
}

unint64_t lazy protocol witness table accessor for type LiteMessageReceiveError and conformance LiteMessageReceiveError()
{
  result = lazy protocol witness table cache variable for type LiteMessageReceiveError and conformance LiteMessageReceiveError;
  if (!lazy protocol witness table cache variable for type LiteMessageReceiveError and conformance LiteMessageReceiveError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiteMessageReceiveError and conformance LiteMessageReceiveError);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12iMessageLite0bA12ReceiveErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LiteMessageReceiveError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for LiteMessageReceiveError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for LiteMessageReceiveError(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

id IMDChat.participantURI.getter()
{
  if ([v0 style] != 45)
  {
    return 0;
  }

  result = [v0 participants];
  if (!result)
  {
    return result;
  }

  v2 = result;
  type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IMDHandle, IMDHandle_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = v3 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  v3, v4;
  if (v5 != 1)
  {
    return 0;
  }

  result = [v0 participants];
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_9;
    }
  }

  else
  {
    result = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
LABEL_9:
      if ((v7 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          return result;
        }

        v9 = *(v7 + 32);
      }

      v11 = v9;
      v7, v10;
      v12 = [v11 ID];

      if (v12)
      {
        v13 = [objc_allocWithZone(IDSURI) initWithUnprefixedURI:v12];

        return v13;
      }

      return 0;
    }
  }

  v7, v8;
  return 0;
}

uint64_t IMDChat.bestSendingHandle.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v88 - v7;
  v9 = [v1 participants];
  if (!v9)
  {
    goto LABEL_23;
  }

  v10 = v9;
  type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IMDHandle, IMDHandle_ptr);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v11 >> 62))
  {
    if (*(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_4;
    }

LABEL_22:
    v11, v12;
    goto LABEL_23;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_22;
  }

LABEL_4:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_27;
    }

    v13 = *(v11 + 32);
  }

  v15 = v13;
  v11, v14;
  v16 = [v15 ID];

  if (!v16)
  {
LABEL_23:
    v55 = [v1 lastAddressedLocalHandle];
    if (!v55)
    {
      return 0;
    }

LABEL_24:
    v56 = v55;
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v37;
  }

  v91 = v3;
  v92 = v2;
  v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v93 = v17;

  v18 = [objc_opt_self() sharedInstance];
  v19 = [v1 chatIdentifier];
  if (!v19)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v20 = v19;
  v21 = [v1 style];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  v89 = xmmword_53380;
  *(inited + 16) = xmmword_53380;
  v88[1] = IMServiceNameiMessage;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v23;
  v88[0] = IMServiceNameiMessageLite;
  *(inited + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 56) = v24;
  v25 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v25, v27;
  v28 = [v18 allChatsWithIdentifier:v20 style:v21 serviceNames:isa];

  type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IMDChat, IMDChat_ptr);
  v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v94 = specialized Array._copyToContiguousArray()(v30);
  specialized MutableCollection<>.sort(by:)(&v94);
  v29, v31;
  v2 = v94;
  if ((v94 & 0x8000000000000000) == 0 && (v94 & 0x4000000000000000) == 0)
  {
    if (*(v94 + 16))
    {
      goto LABEL_12;
    }

LABEL_28:

    goto LABEL_29;
  }

LABEL_27:
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_28;
  }

LABEL_12:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_15;
  }

  if (!*(v2 + 16))
  {
    __break(1u);
    goto LABEL_43;
  }

  v32 = *(v2 + 32);
LABEL_15:
  v33 = v32;

  v34 = [v33 lastAddressedLocalHandle];
  if (v34)
  {
    v36 = v34;
    v93, v35;
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v40 = Logger.liteSession.unsafeMutableAddressor();
    v42 = v91;
    v41 = v92;
    (*(v91 + 16))(v8, v40, v92);
    v43 = v33;

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v44, v45))
    {

      v39, v54;
      (*(v42 + 8))(v8, v41);
      return v37;
    }

    v46 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v94 = v93;
    *v46 = 136315394;
    v47 = [v43 guid];

    v39, v48;
    if (v47)
    {
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v94);
      v51, v53;
      *(v46 + 4) = v52;
      *(v46 + 12) = 2080;
      *(v46 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v94);
      _os_log_impl(&dword_0, v44, v45, "Best sending handle selected from chat %s as %s", v46, 0x16u);
      swift_arrayDestroy();

      (*(v91 + 8))(v8, v92);
      return v37;
    }

    goto LABEL_44;
  }

LABEL_29:
  v57 = [objc_opt_self() sharedInstance];
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_53390;
  v59 = v93;
  *(v58 + 32) = v90;
  *(v58 + 40) = v59;
  v60 = Array._bridgeToObjectiveC()().super.isa;
  v58, v61;
  v62 = swift_allocObject();
  *(v62 + 16) = v89;
  *(v62 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v62 + 40) = v63;
  *(v62 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v62 + 56) = v64;
  v65 = Array._bridgeToObjectiveC()().super.isa;
  v62, v66;
  v67 = [v57 lastMessageWithHandles:v60 onServices:v65];

  if (!v67)
  {
    goto LABEL_36;
  }

  v68 = [v67 destinationCallerID];
  if (!v68)
  {

LABEL_36:
    v55 = [v1 lastAddressedLocalHandle];
    if (!v55)
    {
      return 0;
    }

    goto LABEL_24;
  }

  v69 = v68;
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v71 = v70;

  v72 = Logger.liteSession.unsafeMutableAddressor();
  v74 = v91;
  v73 = v92;
  (*(v91 + 16))(v6, v72, v92);
  v75 = v67;

  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v76, v77))
  {

    v71, v87;
    (*(v74 + 8))(v6, v73);
    return v37;
  }

  v78 = swift_slowAlloc();
  v93 = swift_slowAlloc();
  v94 = v93;
  *v78 = 136315394;
  v79 = [v75 guid];

  v71, v80;
  if (v79)
  {
    v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v83 = v82;

    v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v83, &v94);
    v83, v85;
    *(v78 + 4) = v84;
    *(v78 + 12) = 2080;
    *(v78 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v71, &v94);
    _os_log_impl(&dword_0, v76, v77, "Best sending handle selected from most recent message %s as %s", v78, 0x16u);
    swift_arrayDestroy();

    (*(v91 + 8))(v6, v92);
    return v37;
  }

LABEL_45:
  __break(1u);

  __break(1u);
  return result;
}

Swift::Void __swiftcall IMDChat.updateLastAddressedHandleWithMatchingSIM(to:)(Swift::String to)
{
  v2 = v1;
  object = to._object;
  countAndFlagsBits = to._countAndFlagsBits;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = String._bridgeToObjectiveC()();
  [v2 updateLastAddressedHandle:v9 forceUpdate:0];

  v10 = [objc_opt_self() sharedInstance];
  IMCTSubscriptionUtilities.simID(for:)();
  v12 = v11;

  if (v12)
  {
    v13 = String._bridgeToObjectiveC()();
    v12, v14;
  }

  else
  {
    v13 = 0;
  }

  [v2 updateLastAddressedSIMID:v13];

  v15 = Logger.liteSession.unsafeMutableAddressor();
  (*(v6 + 16))(v8, v15, v5);
  v16 = v2;

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v37 = v6;
    v38 = v5;
    v19 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v39 = v36;
    *v19 = 136315650;
    v20 = [v16 guid];

    object, v21;
    if (v20)
    {
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v39);
      v24, v26;
      *(v19 + 4) = v25;
      *(v19 + 12) = 2080;
      *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v39);
      *(v19 + 22) = 2080;
      v27 = [v16 lastAddressedSIMID];
      if (v27)
      {
        v28 = v27;
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;
      }

      else
      {
        v31 = 0xE300000000000000;
        v29 = 7104878;
      }

      v33 = v37;
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v39);
      v31, v35;
      *(v19 + 24) = v34;
      _os_log_impl(&dword_0, v17, v18, "Updated chat %s last addressed handle to %s, SIM ID to %s", v19, 0x20u);
      swift_arrayDestroy();

      (*(v33 + 8))(v8, v38);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    object, v32;
    (*(v6 + 8))(v8, v5);
  }
}

id IMCTSubscriptionUtilities.simID(for:)()
{
  result = [v0 ctSubscriptionInfo];
  if (result)
  {
    v2 = result;
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 __im_subscriptionContextForPhoneNumber:v3];

    if (v4)
    {
      v5 = [v4 labelID];

      if (v5)
      {
        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = v7;

        v9 = [v0 registeredSIMIDs];
        v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v15[0] = v6;
        v15[1] = v8;
        __chkstk_darwin(v11);
        v14[2] = v15;
        LOBYTE(v9) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v14, v10);
        v10, v12;
        if (v9)
        {
          return v6;
        }

        v8, v13;
      }
    }

    return 0;
  }

  return result;
}

LiteMessageServiceSession *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(LiteMessageServiceSession *result, int64_t a2, char a3, LiteMessageServiceSession *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *&a4->state[16];
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

  v8 = *&a4->state[8];
  if (v7 <= v8)
  {
    v9 = *&a4->state[8];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *&v10->state[8] = v8;
    *&v10->state[16] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = &v10->state[24];
  v14 = &a4->state[24];
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *&a4->state[8] = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  a4, v14;
  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *&a4->state[16];
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

  v8 = *&a4->state[8];
  if (v7 <= v8)
  {
    v9 = *&a4->state[8];
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
    *&v10->state[8] = v8;
    *&v10->state[16] = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = &v10->state[24];
  v13 = &a4->state[24];
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *&a4->state[8] = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  a4, v13;
  return v10;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo7IMDChatC_Tt1g5(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, LiteMessageServiceSession *a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v12, 0, 0, 1, a1, a2);
  v8 = v12[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v12[0] = a1;
    v12[1] = a2;
    v10 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = v6;
  a2, v7;
  ObjectType = swift_getObjectType();
  v12[0] = v9;
  v10 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v12, v10);
    *a3 = v10 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v12);
  return v8;
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

char *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
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
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
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

void specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *&(*v1)->state[8];
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *&v3->state[16] >> 1)
  {
    if (*(result + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v14 = v4 + v2;
  }

  else
  {
    v14 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v14, 1, v3);
  if (!*(result + 16))
  {
LABEL_13:
    result, v8;
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = *&v3->state[8];
  if ((*&v3->state[16] >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3->state[v9 + 24], (result + 32), v2);
  result, v10;
  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v11 = *&v3->state[8];
  v12 = __OFADD__(v11, v2);
  v13 = v11 + v2;
  if (!v12)
  {
    *&v3->state[8] = v13;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
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
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
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
  v5 = v2 + 32;
  v21[0] = v2 + 32;
  v21[1] = v4;
  v6 = _minimumMergeRunLength(_:)(v4);
  if (v6 >= v4)
  {
    if (v4 >= 2)
    {
      v10 = -1;
      v11 = 1;
      v12 = v5;
      do
      {
        v13 = *(v5 + 8 * v11);
        v14 = v10;
        v15 = v12;
        do
        {
          if (([v13 isNewerThan:*v15] & 1) == 0)
          {
            break;
          }

          v16 = *v15;
          v13 = v15[1];
          *v15 = v13;
          v15[1] = v16;
          --v15;
        }

        while (!__CFADD__(v14++, 1));
        ++v11;
        ++v12;
        --v10;
      }

      while (v11 != v4);
    }
  }

  else
  {
    v7 = v6;
    v8 = (v4 >> 1);
    if (v4 >= 2)
    {
      type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IMDChat, IMDChat_ptr);
      v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)) = v8;
    }

    else
    {
      v9 = &_swiftEmptyArrayStorage;
    }

    v20[0] = ((v9 & 0xFFFFFFFFFFFFFF8) + 32);
    v20[1] = v8;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v20, v22, v21, v7);
    *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)) = 0;
    v9, v18;
  }

  return specialized ContiguousArray._endMutation()();
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(id **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_88:
    v5 = *result;
    if (!*result)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    }

    v78 = *&v8->state[8];
    if (v78 >= 2)
    {
      while (*a3)
      {
        v79 = *&v8->IMDAppleServiceSession_opaque[16 * v78];
        v80 = *&v8->state[16 * v78 + 16];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v79), (*a3 + 8 * *&v8->state[16 * v78 + 8]), (*a3 + 8 * v80), v5);
        if (v4)
        {
          goto LABEL_98;
        }

        if (v80 < v79)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v78 - 2 >= *&v8->state[8])
        {
          goto LABEL_114;
        }

        v81 = &v8->IMDAppleServiceSession_opaque[16 * v78];
        *v81 = v79;
        *(v81 + 1) = v80;
        specialized Array.remove(at:)(v78 - 1);
        v78 = *&v8->state[8];
        if (v78 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_124;
    }

LABEL_98:
    v8, v76;
    return;
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = 8 * v9;
      v12 = (*a3 + 8 * v9);
      v14 = *v12;
      v13 = (v12 + 2);
      v15 = [v10 isNewerThan:v14];
      v5 = v9 + 2;
      while (v6 != v5)
      {
        v16 = [*v13 isNewerThan:*(v13 - 1)];
        ++v5;
        ++v13;
        if (v15 != v16)
        {
          v6 = v5 - 1;
          break;
        }
      }

      if (v15)
      {
        if (v6 < v9)
        {
          goto LABEL_117;
        }

        if (v9 < v6)
        {
          v17 = 8 * v6 - 8;
          v18 = v6;
          v19 = v9;
          do
          {
            if (v19 != --v18)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_123;
              }

              v20 = *(v21 + v11);
              *(v21 + v11) = *(v21 + v17);
              *(v21 + v17) = v20;
            }

            ++v19;
            v17 -= 8;
            v11 += 8;
          }

          while (v19 < v18);
        }
      }

      v7 = v6;
    }

    v22 = a3[1];
    if (v7 < v22)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_116;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_118;
        }

        if (v9 + a4 >= v22)
        {
          v23 = a3[1];
        }

        else
        {
          v23 = v9 + a4;
        }

        if (v23 < v9)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v7 != v23)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *&v8->state[8] + 1, 1, v8);
    }

    v32 = *&v8->state[8];
    v31 = *&v8->state[16];
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v8);
    }

    *&v8->state[8] = v33;
    v34 = v8 + 16 * v32;
    *(v34 + 4) = v9;
    *(v34 + 5) = v7;
    v35 = *result;
    if (!*result)
    {
      goto LABEL_125;
    }

    if (v32)
    {
      while (1)
      {
        v36 = v33 - 1;
        if (v33 >= 4)
        {
          break;
        }

        if (v33 == 3)
        {
          v37 = *&v8->state[24];
          v38 = *&v8->state[32];
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = &v8->IMDAppleServiceSession_opaque[16 * v33];
          v55 = *v53;
          v54 = *(v53 + 1);
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_107;
          }

          v59 = &v8->state[16 * v36 + 24];
          v61 = *v59;
          v60 = *(v59 + 1);
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v36 = v33 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v63 = &v8->IMDAppleServiceSession_opaque[16 * v33];
        v65 = *v63;
        v64 = *(v63 + 1);
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_71:
        if (v58)
        {
          goto LABEL_106;
        }

        v66 = v8 + 16 * v36;
        v68 = *(v66 + 4);
        v67 = *(v66 + 5);
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_109;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_78:
        v74 = v36 - 1;
        if (v36 - 1 >= v33)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v5 = *&v8->state[16 * v74 + 24];
        v75 = *&v8->state[16 * v36 + 32];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v5), (*a3 + 8 * *&v8->state[16 * v36 + 24]), (*a3 + 8 * v75), v35);
        if (v4)
        {
          goto LABEL_98;
        }

        if (v75 < v5)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v74 >= *&v8->state[8])
        {
          goto LABEL_101;
        }

        v77 = v8 + 16 * v74;
        *(v77 + 4) = v5;
        *(v77 + 5) = v75;
        specialized Array.remove(at:)(v36);
        v33 = *&v8->state[8];
        if (v33 <= 1)
        {
          goto LABEL_3;
        }
      }

      v41 = &v8->state[16 * v33 + 24];
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = &v8->IMDAppleServiceSession_opaque[16 * v33];
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_108;
      }

      if (v52 >= v44)
      {
        v70 = &v8->state[16 * v36 + 24];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_112;
        }

        if (v39 < v73)
        {
          v36 = v33 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v24 = *a3;
  v25 = *a3 + 8 * v7 - 8;
  v82 = v9;
  v26 = v9 - v7;
LABEL_30:
  v27 = *(v24 + 8 * v7);
  v28 = v26;
  v5 = v25;
  while (1)
  {
    if (![v27 isNewerThan:{*v5, v82}])
    {
LABEL_29:
      ++v7;
      v25 += 8;
      --v26;
      if (v7 != v23)
      {
        goto LABEL_30;
      }

      v7 = v23;
      v9 = v82;
      goto LABEL_37;
    }

    if (!v24)
    {
      break;
    }

    v29 = *v5;
    v27 = *(v5 + 8);
    *v5 = v27;
    *(v5 + 8) = v29;
    v5 -= 8;
    if (__CFADD__(v28++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(id *__dst, id *__src, id *a3, id *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v14 = &v4[v13];
    if (v11 >= 8 && v6 > v7)
    {
LABEL_25:
      v17 = v6 - 1;
      --v5;
      v18 = v14;
      do
      {
        v19 = v5 + 1;
        v20 = *--v18;
        if ([v20 isNewerThan:*v17])
        {
          if (v19 != v6)
          {
            *v5 = *v17;
          }

          if (v14 <= v4 || (--v6, v17 <= v7))
          {
            v6 = v17;
            goto LABEL_36;
          }

          goto LABEL_25;
        }

        if (v19 != v14)
        {
          *v5 = *v18;
        }

        --v5;
        v14 = v18;
      }

      while (v18 > v4);
      v14 = v18;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 >= 8 && v6 < v5)
    {
      while ([*v6 isNewerThan:*v4])
      {
        v15 = v6;
        v16 = v7 == v6++;
        if (!v16)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++v7;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_19;
        }
      }

      v15 = v4;
      v16 = v7 == v4++;
      if (v16)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v7 = *v15;
      goto LABEL_17;
    }

LABEL_19:
    v6 = v7;
  }

LABEL_36:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v14 - v4));
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
      v13[0] = *(v7 - 1);
      v13[1] = v8;

      v9 = a1(v13);
      v8, v10;
      if (v3)
      {
        break;
      }

      v11 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v11) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
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

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
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

void *specialized Array._copyToContiguousArray()(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v2 = a1;
  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:
    v2, v4;
    return &_swiftEmptyArrayStorage;
  }

  v5 = v3;
  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo7IMDChatC_Tt1g5(v3, 0);
  v7 = specialized Array._copyContents(initializing:)(v6 + 32, v5, v2);
  v2 = v8;
  v7, v9;
  result = v6;
  if (v2 != v5)
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
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
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
          lazy protocol witness table accessor for type [IMDChat] and conformance [A]();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7IMDChatCGMd, &_sSaySo7IMDChatCGMR);
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
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IMDChat, IMDChat_ptr);
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

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        v15 = v14[1];
        if (*v14 != v9 || v15 != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        v8, v15;
        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t type metadata accessor for IMDHandle(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(void *a1)
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

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t lazy protocol witness table accessor for type [IMDChat] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [IMDChat] and conformance [A];
  if (!lazy protocol witness table cache variable for type [IMDChat] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo7IMDChatCGMd, &_sSaySo7IMDChatCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [IMDChat] and conformance [A]);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

Swift::Void __swiftcall LiteMessageServiceSession.donateHandlesForKeyExchange()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  type metadata accessor for MainActor();
  v5 = v0;
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v5;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange(), v7);
}

uint64_t closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  v4[20] = type metadata accessor for MainActor();
  v4[21] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v4[22] = v5;
  *v5 = v4;
  v5[1] = closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange();

  return LiteMessageServiceSession.donateInitialHandlesIfNeeded()();
}

uint64_t closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange()()
{
  v1 = *v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v1 + 184) = v3;
  *(v1 + 192) = v2;

  return _swift_task_switch(closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange(), v3, v2);
}

{
  v1 = [objc_opt_self() sharedManager];
  v2 = [v1 emergencyContactHandles];

  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 200) = v3;

  v4 = swift_task_alloc();
  *(v0 + 208) = v4;
  *v4 = v0;
  v4[1] = closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange();

  return LiteMessageServiceSession.donateEmergencyHandles(_:)(v3);
}

{
  v1 = *v0;
  v2 = *(*v0 + 200);

  v2, v3;
  v4 = *(v1 + 192);
  v5 = *(v1 + 184);

  return _swift_task_switch(closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange(), v5, v4);
}

{
  v1 = [objc_opt_self() sharedManager];
  v0[27] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange();
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySaySSGs5NeverOGMd, &_sSccySaySSGs5NeverOGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray) -> () with result type [String];
  v0[13] = &block_descriptor_37;
  v0[14] = v2;
  [v1 familyHandlesWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);

  return _swift_task_switch(closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange(), v2, v1);
}

{
  v1 = v0[27];
  v2 = v0[18];
  v0[28] = v2;

  v3 = swift_task_alloc();
  v0[29] = v3;
  *v3 = v0;
  v3[1] = closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange();

  return LiteMessageServiceSession.donateFamilyHandles(_:)(v2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 224);

  v2, v3;
  v4 = *(v1 + 192);
  v5 = *(v1 + 184);

  return _swift_task_switch(closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange(), v5, v4);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t partial apply for closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange()()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange();

  return closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange()(v3, v4, v5, v2);
}

uint64_t LiteMessageServiceSession.donateInitialHandlesIfNeeded()()
{
  v1[6] = v0;
  v2 = type metadata accessor for Logger();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v4;
  v1[15] = v3;

  return _swift_task_switch(LiteMessageServiceSession.donateInitialHandlesIfNeeded(), v4, v3);
}

{
  v70 = v0;
  if (donating)
  {
    v2 = v0[8];
    v1 = v0[9];
    v3 = v0[7];

    v4 = Logger.donations.unsafeMutableAddressor();
    (*(v2 + 16))(v1, v4, v3);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    v7 = os_log_type_enabled(v5, v6);
    v9 = v0[8];
    v8 = v0[9];
    v10 = v0[7];
    if (v7)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v5, v6, "Already donating", v11, 2u);
    }

    (*(v9 + 8))(v8, v10);
    goto LABEL_5;
  }

  v14 = IDSCopyLocalDeviceUniqueID();
  if (v14)
  {
    v15 = v14;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v0[16] = v16;
  v0[17] = v18;
  v19 = String._bridgeToObjectiveC()();
  v20 = String._bridgeToObjectiveC()();
  v21 = IMGetDomainIntForKey();

  if (v21 == 2)
  {
    v22 = specialized LiteMessageServiceSession.lastDonationDeviceIdentifier.getter();
    if (v23)
    {
      if (v18)
      {
        if (v22 == v16 && v23 == v18)
        {
          v23, v23;
LABEL_21:

          v18, v27;
LABEL_22:
          v28 = v0[10];
          v29 = v0[7];
          v30 = v0[8];
          v31 = v0[6];
          v32 = Logger.donations.unsafeMutableAddressor();
          (*(v30 + 16))(v28, v32, v29);
          v33 = v31;
          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.default.getter();
          v36 = os_log_type_enabled(v34, v35);
          v37 = v0[10];
          v39 = v0[7];
          v38 = v0[8];
          v40 = v0[6];
          if (v36)
          {
            v68 = v0[10];
            v41 = swift_slowAlloc();
            v67 = v39;
            v42 = swift_slowAlloc();
            v69 = v42;
            *v41 = 134218242;
            v43 = String._bridgeToObjectiveC()();
            v44 = String._bridgeToObjectiveC()();
            v45 = IMGetDomainIntForKey();

            *(v41 + 4) = v45;
            *(v41 + 12) = 2080;
            v0[4] = specialized LiteMessageServiceSession.lastDonationDeviceIdentifier.getter();
            v0[5] = v46;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
            v47 = String.init<A>(describing:)();
            v49 = v48;
            v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, &v69);
            v49, v51;
            *(v41 + 14) = v50;
            _os_log_impl(&dword_0, v34, v35, "Skipping handle donation, already complete with version %ld from device %s", v41, 0x16u);
            __swift_destroy_boxed_opaque_existential_0(v42);

            (*(v38 + 8))(v68, v67);
          }

          else
          {

            (*(v38 + 8))(v37, v39);
          }

LABEL_5:

          v12 = v0[1];

          return v12();
        }

        v24 = v23;
        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v24, v26;
        if (v25)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v23, v23;
      }
    }

    else if (!v18)
    {

      goto LABEL_22;
    }
  }

  v52 = v0[12];
  v53 = v0[7];
  v54 = v0[8];
  v55 = Logger.donations.unsafeMutableAddressor();
  v0[18] = v55;
  v56 = *(v54 + 16);
  v0[19] = v56;
  v0[20] = (v54 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v56(v52, v55, v53);
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&dword_0, v57, v58, "Donating initial handles to IDS", v59, 2u);
  }

  v60 = v0[12];
  v61 = v0[7];
  v62 = v0[8];

  v63 = *(v62 + 8);
  v0[21] = v63;
  v63(v60, v61);
  donating = 1;
  specialized LiteMessageServiceSession.lastAddressedHandleToRecentHandles()();
  v65 = v64;
  v0[22] = v64;
  v66 = swift_task_alloc();
  v0[23] = v66;
  *v66 = v0;
  v66[1] = LiteMessageServiceSession.donateInitialHandlesIfNeeded();

  return LiteMessageServiceSession.donateHandleMap(_:priority:isInitial:)(v65, 0, 1);
}

{
  v1 = *v0;
  v2 = *(*v0 + 176);

  v2, v3;
  v4 = *(v1 + 120);
  v5 = *(v1 + 112);

  return _swift_task_switch(LiteMessageServiceSession.donateInitialHandlesIfNeeded(), v5, v4);
}

{
  v35 = v0;
  v1 = v0[17];

  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  IMSetDomainIntForKey();

  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  if (v1)
  {
    String._bridgeToObjectiveC()();
    v1, v6;
  }

  v7 = v0[19];
  v8 = v0[18];
  v9 = v0[11];
  v10 = v0[7];
  IMSetDomainValueForKey();
  swift_unknownObjectRelease();

  v7(v9, v8, v10);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v1, v13;
  v14 = os_log_type_enabled(v11, v12);
  v16 = v0[21];
  if (v14)
  {
    v18 = v0[16];
    v17 = v0[17];
    v33 = v0[11];
    v19 = v0[7];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v34 = v21;
    *v20 = 134218242;
    *(v20 + 4) = 2;
    *(v20 + 12) = 2080;
    v0[2] = v18;
    v0[3] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v34);
    v24, v26;
    *(v20 + 14) = v25;
    _os_log_impl(&dword_0, v11, v12, "Updated donation version to %ld from device %s", v20, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v21);

    v27 = v33;
    v28 = v19;
  }

  else
  {
    v29 = v0[11];
    v30 = v0[7];
    v1, v15;

    v27 = v29;
    v28 = v30;
  }

  v16(v27, v28);
  donating = 0;

  v31 = v0[1];

  return v31();
}

uint64_t LiteMessageServiceSession.donateEmergencyHandles(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[7] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[8] = v5;
  v2[9] = v4;

  return _swift_task_switch(LiteMessageServiceSession.donateEmergencyHandles(_:), v5, v4);
}

{
  v3 = v1[5];
  v2 = v1[6];
  v4 = v1[4];
  v5 = Logger.donations.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "Donating emergency handles to IDS", v8, 2u);
  }

  v10 = v1[5];
  v9 = v1[6];
  v11 = v1[4];
  v12 = v1[2];

  (*(v10 + 8))(v9, v11);
  v13 = LiteMessageServiceSession.mapLastAddressedHandleToHandles(using:)(v12);
  v1[10] = v13;
  v14 = swift_task_alloc();
  v1[11] = v14;
  *v14 = v1;
  v14[1] = LiteMessageServiceSession.donateEmergencyHandles(_:);

  return LiteMessageServiceSession.donateHandleMap(_:priority:isInitial:)(v13, 1, 0);
}

uint64_t LiteMessageServiceSession.donateEmergencyHandles(_:)()
{
  v1 = *v0;
  v2 = *(*v0 + 80);

  v2, v3;
  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return _swift_task_switch(LiteMessageServiceSession.donateEmergencyHandles(_:), v5, v4);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray) -> () with result type [String](uint64_t a1, uint64_t a2)
{
  v2 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  **(*(v2 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return _swift_continuation_resume(v2);
}

uint64_t LiteMessageServiceSession.donateFamilyHandles(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[7] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[8] = v5;
  v2[9] = v4;

  return _swift_task_switch(LiteMessageServiceSession.donateFamilyHandles(_:), v5, v4);
}

{
  v3 = v1[5];
  v2 = v1[6];
  v4 = v1[4];
  v5 = Logger.donations.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "Donating family handles to IDS", v8, 2u);
  }

  v10 = v1[5];
  v9 = v1[6];
  v11 = v1[4];
  v12 = v1[2];

  (*(v10 + 8))(v9, v11);
  v13 = LiteMessageServiceSession.mapLastAddressedHandleToHandles(using:)(v12);
  v1[10] = v13;
  v14 = swift_task_alloc();
  v1[11] = v14;
  *v14 = v1;
  v14[1] = LiteMessageServiceSession.donateFamilyHandles(_:);

  return LiteMessageServiceSession.donateHandleMap(_:priority:isInitial:)(v13, 2, 0);
}

uint64_t LiteMessageServiceSession.donateFamilyHandles(_:)()
{
  v1 = *v0;
  v2 = *(*v0 + 80);

  v2, v3;
  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return _swift_task_switch(LiteMessageServiceSession.donateFamilyHandles(_:), v5, v4);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, LiteMessageServiceSession *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v9 - 8);
  v11 = v26 - v10;
  outlined init with copy of TaskPriority?(a3, v26 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of TaskPriority?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v27[0] = 0;
        v27[1] = 0;
        v21 = v27;
        v27[2] = v16;
        v27[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v26[1] = 7;
      v26[2] = v21;
      v26[3] = v19;
      v23 = swift_task_create();

      outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);
      a2, v24;

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v16;
    v27[7] = v18;
  }

  return swift_task_create();
}

uint64_t LiteMessageServiceSession.donateHandleMap(_:priority:isInitial:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 192) = a2;
  *(v4 + 200) = v3;
  *(v4 + 337) = a3;
  *(v4 + 184) = a1;
  v5 = type metadata accessor for Logger();
  *(v4 + 208) = v5;
  *(v4 + 216) = *(v5 - 8);
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v4 + 248) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 256) = v7;
  *(v4 + 264) = v6;

  return _swift_task_switch(LiteMessageServiceSession.donateHandleMap(_:priority:isInitial:), v7, v6);
}

uint64_t LiteMessageServiceSession.donateHandleMap(_:priority:isInitial:)()
{
  v1 = *(v0 + 184);
  v2 = *(v1 + 32);
  *(v0 + 338) = v2;
  v3 = 1 << v2;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(v1 + 64);

  v7 = 0;
  if (v5)
  {
    goto LABEL_7;
  }

  while (1)
  {
LABEL_8:
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return _swift_continuation_await(v6);
    }

    v6 = *(v0 + 184);
    if (v12 >= (((1 << *(v0 + 338)) + 63) >> 6))
    {
      break;
    }

    v5 = *(v6 + 8 * v12 + 64);
    ++v7;
    if (v5)
    {
      v7 = v12;
      while (1)
      {
        *(v0 + 280) = v5;
        *(v0 + 288) = v7;
        v13 = __clz(__rbit64(v5)) | (v7 << 6);
        v14 = (*(v6 + 48) + 16 * v13);
        v16 = *v14;
        v15 = v14[1];
        v17 = *(*(v6 + 56) + 8 * v13);
        *(v0 + 296) = v17;
        v18 = objc_allocWithZone(IDSURI);

        v19 = String._bridgeToObjectiveC()();
        v20 = [v18 initWithUnprefixedURI:v19];
        *(v0 + 304) = v20;

        if (v20)
        {
          break;
        }

        v5 &= v5 - 1;
        v22 = *(v0 + 232);
        v24 = *(v0 + 208);
        v23 = *(v0 + 216);
        v25 = Logger.donations.unsafeMutableAddressor();
        (*(v23 + 16))(v22, v25, v24);

        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.error.getter();
        v15, v28;
        if (os_log_type_enabled(v26, v27))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          *(v0 + 168) = v30;
          *v29 = 136315394;
          v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, (v0 + 168));
          v15, v32;
          *(v29 + 4) = v31;
          *(v29 + 12) = 2048;
          if (v17 >> 62)
          {
            v34 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v34 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
          }

          v35 = *(v0 + 216);
          v47 = *(v0 + 208);
          v49 = *(v0 + 232);
          v17, v33;
          *(v29 + 14) = v34;
          v17, v36;
          _os_log_impl(&dword_0, v26, v27, "Failed to make IDSURI for %s, cannot donate %ld handles", v29, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v30);

          v6 = (*(v35 + 8))(v49, v47);
          if (!v5)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v8 = *(v0 + 232);
          v9 = *(v0 + 208);
          v10 = *(v0 + 216);
          swift_bridgeObjectRelease_n();
          v15, v11;

          v6 = (*(v10 + 8))(v8, v9);
          if (!v5)
          {
            goto LABEL_8;
          }
        }

LABEL_7:
        v6 = *(v0 + 184);
      }

      v50 = *(v0 + 337);
      v48 = *(v0 + 192);
      v15, v21;
      v40 = LiteMessageServiceSession.offGridMessenger.getter();
      *(v0 + 312) = v40;

      v42 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo6IDSURIC_SayAEGTt0g5Tf4g_n(v41);
      v17, v43;
      type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IDSURI, IDSURI_ptr);
      lazy protocol witness table accessor for type IDSURI and conformance NSObject();
      isa = Set._bridgeToObjectiveC()().super.isa;
      *(v0 + 320) = isa;
      v42, v45;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 336;
      *(v0 + 24) = LiteMessageServiceSession.donateHandleMap(_:priority:isInitial:);
      v46 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5Error_pGMd, &_sSccySbs5Error_pGMR);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool;
      *(v0 + 104) = &block_descriptor_14;
      *(v0 + 112) = v46;
      [v40 __im_donateHandlesForMessagingKeys:isa fromURI:v20 priority:v48 isInitial:v50 completion:v0 + 80];
      v6 = v0 + 16;

      return _swift_continuation_await(v6);
    }
  }

  v37 = swift_task_alloc();
  *(v0 + 272) = v37;
  *v37 = v0;
  v37[1] = LiteMessageServiceSession.donateHandleMap(_:priority:isInitial:);
  v38 = *(v0 + 184);

  return specialized LiteMessageServiceSession.inviteHandleMap(_:)(v38);
}

{
  v1 = *v0;

  v2 = *(v1 + 264);
  v3 = *(v1 + 256);

  return _swift_task_switch(LiteMessageServiceSession.donateHandleMap(_:priority:isInitial:), v3, v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 320);
  v7 = *(v0 + 240);
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);
  LODWORD(v4) = *(v0 + 336);

  v5 = Logger.donations.unsafeMutableAddressor();
  (*(v3 + 16))(v7, v5, v2);

  v6 = Logger.logObject.getter();
  LOBYTE(v7) = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 296);
    v10 = swift_slowAlloc();
    *v10 = 134218240;
    if (v8 >> 62)
    {
LABEL_27:
      v11 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v11 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
    }

    v12 = *(v0 + 296);
    v13 = *(v0 + 304);
    v12, v9;
    *(v10 + 4) = v11;
    v12, v14;
    *(v10 + 12) = 1024;
    *(v10 + 14) = v4;
    _os_log_impl(&dword_0, v6, v7, "Completed donating %ld handles with success %{BOOL}d", v10, 0x12u);
  }

  else
  {
    v13 = *(v0 + 304);
    swift_bridgeObjectRelease_n();
  }

  (*(*(v0 + 216) + 8))(*(v0 + 240), *(v0 + 208));
  v10 = *(v0 + 288);
  v15 = (*(v0 + 280) - 1) & *(v0 + 280);
  while (v15)
  {
    v18 = *(v0 + 184);
LABEL_14:
    *(v0 + 280) = v15;
    *(v0 + 288) = v10;
    v20 = __clz(__rbit64(v15)) | (v10 << 6);
    v21 = (*(v18 + 48) + 16 * v20);
    v23 = *v21;
    v22 = v21[1];
    v24 = *(*(v18 + 56) + 8 * v20);
    *(v0 + 296) = v24;
    v25 = objc_allocWithZone(IDSURI);

    v26 = String._bridgeToObjectiveC()();
    v27 = [v25 initWithUnprefixedURI:v26];
    *(v0 + 304) = v27;

    if (v27)
    {
      v53 = *(v0 + 337);
      v51 = *(v0 + 192);
      v22, v28;
      v43 = LiteMessageServiceSession.offGridMessenger.getter();
      *(v0 + 312) = v43;

      v45 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo6IDSURIC_SayAEGTt0g5Tf4g_n(v44);
      v24, v46;
      type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IDSURI, IDSURI_ptr);
      lazy protocol witness table accessor for type IDSURI and conformance NSObject();
      isa = Set._bridgeToObjectiveC()().super.isa;
      *(v0 + 320) = isa;
      v45, v48;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 336;
      *(v0 + 24) = LiteMessageServiceSession.donateHandleMap(_:priority:isInitial:);
      v49 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5Error_pGMd, &_sSccySbs5Error_pGMR);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool;
      *(v0 + 104) = &block_descriptor_14;
      *(v0 + 112) = v49;
      [v43 __im_donateHandlesForMessagingKeys:isa fromURI:v27 priority:v51 isInitial:v53 completion:v0 + 80];

      return _swift_continuation_await(v0 + 16);
    }

    v15 &= v15 - 1;
    v29 = *(v0 + 232);
    v4 = *(v0 + 208);
    v30 = *(v0 + 216);
    v31 = Logger.donations.unsafeMutableAddressor();
    (*(v30 + 16))(v29, v31, v4);

    v6 = Logger.logObject.getter();
    LODWORD(v4) = static os_log_type_t.error.getter();
    v22, v32;
    if (os_log_type_enabled(v6, v4))
    {
      v33 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *(v0 + 168) = v7;
      *v33 = 136315394;
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, (v0 + 168));
      v22, v35;
      *(v33 + 4) = v34;
      *(v33 + 12) = 2048;
      if (v24 >> 62)
      {
        v37 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v37 = *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8));
      }

      v38 = *(v0 + 216);
      v50 = *(v0 + 208);
      v52 = *(v0 + 232);
      v24, v36;
      *(v33 + 14) = v37;
      v24, v39;
      _os_log_impl(&dword_0, v6, v4, "Failed to make IDSURI for %s, cannot donate %ld handles", v33, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v7);

      (*(v38 + 8))(v52, v50);
    }

    else
    {
      v7 = *(v0 + 232);
      v4 = *(v0 + 208);
      v16 = *(v0 + 216);
      swift_bridgeObjectRelease_n();
      v22, v17;

      (*(v16 + 8))(v7, v4);
    }
  }

  while (1)
  {
    v19 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    v18 = *(v0 + 184);
    if (v19 >= (((1 << *(v0 + 338)) + 63) >> 6))
    {
      break;
    }

    v15 = *(v18 + 8 * v19 + 64);
    ++v10;
    if (v15)
    {
      v10 = v19;
      goto LABEL_14;
    }
  }

  v40 = swift_task_alloc();
  *(v0 + 272) = v40;
  *v40 = v0;
  v40[1] = LiteMessageServiceSession.donateHandleMap(_:priority:isInitial:);
  v41 = *(v0 + 184);

  return specialized LiteMessageServiceSession.inviteHandleMap(_:)(v41);
}

{
  v70 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 312);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 208);
  swift_willThrow();

  v6 = Logger.donations.unsafeMutableAddressor();
  (*(v4 + 16))(v3, v6, v5);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 304);
    v10 = *(v0 + 216);
    v64 = *(v0 + 208);
    v66 = *(v0 + 224);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v69 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = Error.localizedDescription.getter();
    v15 = v14;
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v69);
    v15, v17;
    *(v11 + 4) = v16;
    _os_log_impl(&dword_0, v7, v8, "Failed to donate handles: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);

    v18 = (*(v10 + 8))(v66, v64);
  }

  else
  {
    v20 = *(v0 + 216);
    v19 = *(v0 + 224);
    v21 = *(v0 + 208);

    (*(v20 + 8))(v19, v21);
  }

  v22 = *(v0 + 288);
  v23 = (*(v0 + 280) - 1) & *(v0 + 280);
  while (v23)
  {
    v18 = *(v0 + 184);
LABEL_12:
    *(v0 + 280) = v23;
    *(v0 + 288) = v22;
    v29 = __clz(__rbit64(v23)) | (v22 << 6);
    v30 = (*(v18 + 48) + 16 * v29);
    v32 = *v30;
    v31 = v30[1];
    v33 = *(*(v18 + 56) + 8 * v29);
    *(v0 + 296) = v33;
    v34 = objc_allocWithZone(IDSURI);

    v35 = String._bridgeToObjectiveC()();
    v36 = [v34 initWithUnprefixedURI:v35];
    *(v0 + 304) = v36;

    if (v36)
    {
      v68 = *(v0 + 337);
      v56 = *(v0 + 192);
      v31, v37;
      v57 = LiteMessageServiceSession.offGridMessenger.getter();
      *(v0 + 312) = v57;

      v59 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo6IDSURIC_SayAEGTt0g5Tf4g_n(v58);
      v33, v60;
      type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IDSURI, IDSURI_ptr);
      lazy protocol witness table accessor for type IDSURI and conformance NSObject();
      isa = Set._bridgeToObjectiveC()().super.isa;
      *(v0 + 320) = isa;
      v59, v62;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 336;
      *(v0 + 24) = LiteMessageServiceSession.donateHandleMap(_:priority:isInitial:);
      v63 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5Error_pGMd, &_sSccySbs5Error_pGMR);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool;
      *(v0 + 104) = &block_descriptor_14;
      *(v0 + 112) = v63;
      [v57 __im_donateHandlesForMessagingKeys:isa fromURI:v36 priority:v56 isInitial:v68 completion:v0 + 80];
      v18 = v0 + 16;

      return _swift_continuation_await(v18);
    }

    v23 &= v23 - 1;
    v38 = *(v0 + 232);
    v40 = *(v0 + 208);
    v39 = *(v0 + 216);
    v41 = Logger.donations.unsafeMutableAddressor();
    (*(v39 + 16))(v38, v41, v40);

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    v31, v44;
    if (os_log_type_enabled(v42, v43))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *(v0 + 168) = v46;
      *v45 = 136315394;
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v31, (v0 + 168));
      v31, v48;
      *(v45 + 4) = v47;
      *(v45 + 12) = 2048;
      if (v33 >> 62)
      {
        v50 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v50 = *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8));
      }

      v51 = *(v0 + 216);
      v65 = *(v0 + 208);
      v67 = *(v0 + 232);
      v33, v49;
      *(v45 + 14) = v50;
      v33, v52;
      _os_log_impl(&dword_0, v42, v43, "Failed to make IDSURI for %s, cannot donate %ld handles", v45, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v46);

      v18 = (*(v51 + 8))(v67, v65);
    }

    else
    {
      v24 = *(v0 + 232);
      v25 = *(v0 + 208);
      v26 = *(v0 + 216);
      swift_bridgeObjectRelease_n();
      v31, v27;

      v18 = (*(v26 + 8))(v24, v25);
    }
  }

  while (1)
  {
    v28 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      return _swift_continuation_await(v18);
    }

    v18 = *(v0 + 184);
    if (v28 >= (((1 << *(v0 + 338)) + 63) >> 6))
    {
      break;
    }

    v23 = *(v18 + 8 * v28 + 64);
    ++v22;
    if (v23)
    {
      v22 = v28;
      goto LABEL_12;
    }
  }

  v53 = swift_task_alloc();
  *(v0 + 272) = v53;
  *v53 = v0;
  v53[1] = LiteMessageServiceSession.donateHandleMap(_:priority:isInitial:);
  v54 = *(v0 + 184);

  return specialized LiteMessageServiceSession.inviteHandleMap(_:)(v54);
}

uint64_t LiteMessageServiceSession.donateHandleMap(_:priority:isInitial:)(uint64_t a1, const char *a2)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  *(*v2 + 328) = v4;
  if (v4)
  {
    *(v3 + 296), a2;
    v5 = *(v3 + 256);
    v6 = *(v3 + 264);
    v7 = LiteMessageServiceSession.donateHandleMap(_:priority:isInitial:);
  }

  else
  {
    v5 = *(v3 + 256);
    v6 = *(v3 + 264);
    v7 = LiteMessageServiceSession.donateHandleMap(_:priority:isInitial:);
  }

  return _swift_task_switch(v7, v5, v6);
}

void *LiteMessageServiceSession.mapLastAddressedHandleToHandles(using:)(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  __chkstk_darwin(v4);
  v7 = &v52 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    v53 = v5;
    v58 = objc_opt_self();
    v55 = (v3 + 8);
    v56 = (v3 + 16);
    result = &_swiftEmptyDictionarySingleton;
    v10 = (a1 + 40);
    *&v11 = 136315138;
    v54 = v11;
    v59 = v2;
    v52 = v7;
    while (1)
    {
      v60 = result;
      v14 = *(v10 - 1);
      v13 = *v10;

      v15 = [v58 sharedInstance];
      v16 = String._bridgeToObjectiveC()();
      v17 = [v15 existingiMessageChatForID:v16];

      if (v17 && (v18 = [v17 lastAddressedLocalHandle], v17, v18) || (v19 = objc_msgSend(v57, "account", v52), v18 = objc_msgSend(v19, "loginID"), v19, v18))
      {
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        v23 = objc_allocWithZone(IDSURI);
        v24 = String._bridgeToObjectiveC()();
        v25 = [v23 initWithUnprefixedURI:v24];

        if (v25)
        {
          v13, v26;
          v2 = v59;
          v27 = v60;
          if (v60[2] && (v28 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v22), (v29 & 1) != 0))
          {
            v62 = *(v27[7] + 8 * v28);
          }

          else
          {
            v62 = &_swiftEmptyArrayStorage;
          }

          v30 = v25;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*(&dword_10 + (v62 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v62 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v31 = v62;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v61 = v27;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, v20, v22, isUniquelyReferenced_nonNull_native);

          v22, v33;
          result = v61;
          goto LABEL_6;
        }

        v22, v26;
        v34 = Logger.donations.unsafeMutableAddressor();
        v2 = v59;
        (*v56)(v7, v34, v59);

        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.error.getter();
        v13, v37;
        if (os_log_type_enabled(v35, v36))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v62 = v39;
          *v38 = v54;
          v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, &v62);
          v13, v41;
          *(v38 + 4) = v40;
          _os_log_impl(&dword_0, v35, v36, "Failed to create IDS URI for %s", v38, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v39);
          v2 = v59;
        }

        else
        {

          v13, v12;
        }

        (*v55)(v7, v2);
      }

      else
      {
        v42 = Logger.donations.unsafeMutableAddressor();
        v43 = v53;
        (*v56)(v53, v42, v2);

        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.error.getter();
        v13, v46;
        if (os_log_type_enabled(v44, v45))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v62 = v48;
          *v47 = v54;
          v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, &v62);
          v13, v50;
          *(v47 + 4) = v49;
          _os_log_impl(&dword_0, v44, v45, "Failed to find from handle for %s", v47, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v48);
          v2 = v59;
        }

        else
        {

          v13, v51;
        }

        (*v55)(v43, v2);
        v7 = v52;
      }

      result = v60;
LABEL_6:
      v10 += 2;
      if (!--v8)
      {
        return result;
      }
    }
  }

  return &_swiftEmptyDictionarySingleton;
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
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

id closure #2 in LiteMessageServiceSession.inviteHandleMap(_:)(uint64_t a1, LiteMessageServiceSession *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v44 - v9;
  v11 = [objc_opt_self() sharedInstance];
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 existingiMessageChatForID:v12];

  if (!v13)
  {
    v27 = Logger.donations.unsafeMutableAddressor();
    (*(v5 + 16))(v8, v27, v4);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();
    a2, v30;
    if (os_log_type_enabled(v28, v29))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v45 = v32;
      *v31 = 136315138;
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v45);
      _os_log_impl(&dword_0, v28, v29, "No existing chat for %s, assuming not known contact", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
    }

    (*(v5 + 8))(v8, v4);
    return 0;
  }

  result = [v13 participants];
  if (!result)
  {
    goto LABEL_25;
  }

  v15 = result;
  type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IMDHandle, IMDHandle_ptr);
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v16 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_5;
    }

LABEL_14:
    v16, v17;
    goto LABEL_15;
  }

  result = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
    v20 = v18;
    v16, v19;
    v21 = [v20 CNContactID];

    if (v21)
    {
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26 = v23 & 0xFFFFFFFFFFFFLL;
LABEL_16:
      v25, v22;
      if ((v25 & 0x2000000000000000) != 0)
      {
        v34 = HIBYTE(v25) & 0xF;
      }

      else
      {
        v34 = v26;
      }

      v33 = v34 != 0;
      v35 = Logger.donations.unsafeMutableAddressor();
      (*(v5 + 16))(v10, v35, v4);

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.info.getter();
      a2, v38;
      if (os_log_type_enabled(v36, v37))
      {
        v44 = v4;
        v39 = v34 != 0;
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v42 = a1;
        v43 = v41;
        v45 = v41;
        *v40 = 136315394;
        *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, a2, &v45);
        *(v40 + 12) = 1024;
        *(v40 + 14) = v39;
        _os_log_impl(&dword_0, v36, v37, "%s is known contact: %{BOOL}d", v40, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v43);

        (*(v5 + 8))(v10, v44);
      }

      else
      {

        (*(v5 + 8))(v10, v4);
      }

      return v33;
    }

LABEL_15:
    v26 = 0;
    v25 = 0xE000000000000000;
    goto LABEL_16;
  }

  if (*(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)))
  {
    v18 = *(v16 + 32);
    goto LABEL_8;
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@unowned Bool)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  LOBYTE(v3) = v2(v3, v5);

  v5, v6;
  return v3 & 1;
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSSet) -> () with result type Set<String>(uint64_t a1, uint64_t a2)
{
  v2 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  **(*(v2 + 64) + 40) = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return _swift_continuation_resume(v2);
}

uint64_t closure #1 in LiteMessageServiceSession.emergencyContactsDidChange()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(closure #1 in LiteMessageServiceSession.emergencyContactsDidChange(), v6, v5);
}

uint64_t closure #1 in LiteMessageServiceSession.emergencyContactsDidChange()()
{
  v1 = [objc_opt_self() sharedManager];
  v2 = [v1 emergencyContactHandles];

  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 48) = v3;

  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = closure #1 in LiteMessageServiceSession.emergencyContactsDidChange();

  return LiteMessageServiceSession.donateEmergencyHandles(_:)(v3);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);

  v2, v3;
  v4 = *(v1 + 40);
  v5 = *(v1 + 32);

  return _swift_task_switch(closure #1 in LiteMessageServiceSession.emergencyContactsDidChange(), v5, v4);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t partial apply for closure #1 in LiteMessageServiceSession.emergencyContactsDidChange()()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange();

  return closure #1 in LiteMessageServiceSession.emergencyContactsDidChange()(v3, v4, v5, v2);
}

uint64_t LiteMessageServiceSession.emergencyContactsDidChange()(const char *a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = Logger.donations.unsafeMutableAddressor();
  (*(v11 + 16))(v13, v14, v10);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, a1, v17, 2u);
  }

  (*(v11 + 8))(v13, v10);
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  type metadata accessor for MainActor();
  v19 = v6;
  v20 = static MainActor.shared.getter();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = &protocol witness table for MainActor;
  v21[4] = v19;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, a3, v21);
}

uint64_t closure #1 in LiteMessageServiceSession.familyDidChange()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  type metadata accessor for MainActor();
  v4[20] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[21] = v6;
  v4[22] = v5;

  return _swift_task_switch(closure #1 in LiteMessageServiceSession.familyDidChange(), v6, v5);
}

uint64_t closure #1 in LiteMessageServiceSession.familyDidChange()()
{
  v1 = [objc_opt_self() sharedManager];
  v0[23] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = closure #1 in LiteMessageServiceSession.familyDidChange();
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySaySSGs5NeverOGMd, &_sSccySaySSGs5NeverOGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray) -> () with result type [String];
  v0[13] = &block_descriptor;
  v0[14] = v2;
  [v1 familyHandlesWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);

  return _swift_task_switch(closure #1 in LiteMessageServiceSession.familyDidChange(), v2, v1);
}

{
  v1 = v0[23];
  v2 = v0[18];
  v0[24] = v2;

  v3 = swift_task_alloc();
  v0[25] = v3;
  *v3 = v0;
  v3[1] = closure #1 in LiteMessageServiceSession.familyDidChange();

  return LiteMessageServiceSession.donateFamilyHandles(_:)(v2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 192);

  v2, v3;
  v4 = *(v1 + 176);
  v5 = *(v1 + 168);

  return _swift_task_switch(closure #1 in LiteMessageServiceSession.familyDidChange(), v5, v4);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t partial apply for closure #1 in LiteMessageServiceSession.familyDidChange()()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in LiteMessageServiceSession.familyDidChange();

  return closure #1 in LiteMessageServiceSession.familyDidChange()(v3, v4, v5, v2);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySo6IDSURICGGMd, &_ss18_DictionaryStorageCySSSaySo6IDSURICGGMR);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      if ((v34 & 1) == 0)
      {
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
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
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
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

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
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
      if ((v17 & 1) != (v12 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v20 = *v5;
  if (v17)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v11);
    *(v21 + 8 * v11) = a1;

    v22, v12;
    return;
  }

  v20[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v20[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v20[7] + 8 * v11) = a1;
  v24 = v20[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20[2] = v25;
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

void specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySo6IDSURICGGMd, &_ss18_DictionaryStorageCySSSaySo6IDSURICGGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, LiteMessageServiceSession *a3)
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
      v13 = v12[1];
      v14 = *v12 == a2 && v13 == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    a3, v13;
    v17 = (*(v7 + 48) + 16 * v10);
    v18 = v17[1];
    *a1 = *v17;
    a1[1] = v18;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v19;
    *a1 = a2;
    a1[1] = a3;
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
      v6, v10;

      type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IDSURI, IDSURI_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo6IDSURIC_Tt1g5(v7, result + 1);
    v21 = v20[2];
    if (v20[3] <= v21)
    {
      specialized _NativeSet.resize(capacity:)(v21 + 1);
    }

    v19 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v19, v20);
    v6, v22;
    *v3 = v20;
    goto LABEL_16;
  }

  type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IDSURI, IDSURI_ptr);
  v12 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v19 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v19, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = static NSObject.== infix(_:_:)();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo6IDSURIC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo6IDSURICGMd, &_ss11_SetStorageCySo6IDSURICGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IDSURI, IDSURI_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo6IDSURICGMd, &_ss11_SetStorageCySo6IDSURICGMR);
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

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
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
      specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
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
    type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IDSURI, IDSURI_ptr);
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

void specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo25LiteMessageServiceSessionC01idC0E17PendingSMSMessageVGMd, "2x");
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v20 = v18[2];
        v21 = v18[3];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        v22[3] = v21;
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
}

id specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo6IDSURICGMd, &_ss11_SetStorageCySo6IDSURICGMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo6IDSURICGMd, &_ss11_SetStorageCySo6IDSURICGMR);
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

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

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
    _ss29getContiguousArrayStorageType3fors01_bcD0CyxGmxm_tlFSo8NSObjectCm_Ttg5();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t specialized LiteMessageServiceSession.lastDonationDeviceIdentifier.getter()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  v2 = IMGetDomainValueForKey();

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
    outlined destroy of TaskPriority?(v7, &_sypSgMd, &_sypSgMR);
    return 0;
  }
}

void specialized LiteMessageServiceSession.lastAddressedHandleToRecentHandles()()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v75 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v87 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v88 = &v75 - v14;
  v15 = [objc_opt_self() sharedInstance];
  v16 = [v15 cachedChats];

  type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IMDChat, IMDChat_ptr);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v17 >> 62)
  {
    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (v19)
    {
      goto LABEL_3;
    }

LABEL_50:
    v17, v18;
    v70 = 0;
LABEL_51:
    v71 = Logger.donations.unsafeMutableAddressor();
    (*(v1 + 16))(v3, v71, v0);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 134217984;
      *(v74 + 4) = v70;
      _os_log_impl(&dword_0, v72, v73, "Collected %ld handles to donate for initial donation", v74, 0xCu);
    }

    (*(v1 + 8))(v3, v0);
    return;
  }

  v19 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
  if (!v19)
  {
    goto LABEL_50;
  }

LABEL_3:
  if (v19 >= 1)
  {
    v92 = v9;
    v93 = v10;
    v90 = v7;
    v80 = v3;
    v81 = v1;
    v82 = v0;
    v85 = 0;
    v20 = 0;
    v21 = v17 & 0xC000000000000001;
    v91 = (v11 + 56);
    v89 = (v11 + 48);
    v83 = (v11 + 32);
    v22 = (v11 + 8);
    v86 = &_swiftEmptyDictionarySingleton;
    v84 = v17 & 0xC000000000000001;
    while (1)
    {
      if (v21)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v24 = *(v17 + 8 * v20 + 32);
      }

      v25 = v24;
      v26 = [v24 serviceName];
      if (!v26)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;
LABEL_20:
        v39 = v34;
LABEL_21:
        v39, v33;

        goto LABEL_6;
      }

      v27 = v22;
      v28 = v26;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;
      if (!v31)
      {
        v22 = v27;
        goto LABEL_20;
      }

      if (v29 == v32 && v31 == v33)
      {
        v31, v33;
        v34, v40;
      }

      else
      {
        v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v31, v37;
        v34, v38;
        if ((v36 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      if ([v25 style] == 45)
      {
        v41 = [v25 lastMessage];
        if (!v41)
        {

          v46 = v92;
          (*v91)(v92, 1, 1, v93);
LABEL_31:
          v22 = v27;
          outlined destroy of TaskPriority?(v46, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          goto LABEL_6;
        }

        v42 = v41;
        v43 = [v41 time];

        if (v43)
        {
          v44 = v90;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v45 = 0;
        }

        else
        {
          v45 = 1;
          v44 = v90;
        }

        v47 = v93;
        (*v91)(v44, v45, 1, v93);
        v46 = v92;
        outlined init with take of Date?(v44, v92);
        if ((*v89)(v46, 1, v47) == 1)
        {

          goto LABEL_31;
        }

        v48 = v88;
        (*v83)(v88, v46, v47);
        v49 = v87;
        static Date.now.getter();
        Date.timeIntervalSince(_:)();
        v51 = v50;
        v22 = v27;
        v52 = v49;
        v53 = *v27;
        (*v27)(v52, v47);
        if (v51 >= 2592000.0)
        {
          v53(v48, v47);
LABEL_40:

          v21 = v84;
          goto LABEL_6;
        }

        v54 = [v25 lastAddressedLocalHandle];
        if (!v54)
        {
          v22 = v27;
          v53(v88, v93);
          goto LABEL_40;
        }

        v77 = v53;
        v55 = v54;
        v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v79 = v56;

        v57 = IMDChat.participantURI.getter();
        v22 = v27;
        v21 = v84;
        if (v57)
        {
          v58 = v57;
          v59 = v86;
          if (v86[2] && (v60 = specialized __RawDictionaryStorage.find<A>(_:)(v78, v79), (v61 & 1) != 0))
          {
            v95 = *(v59[7] + 8 * v60);
          }

          else
          {
            v95 = &_swiftEmptyArrayStorage;
          }

          v62 = v58;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*(&dword_10 + (v95 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v95 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            v76 = v62;
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v62 = v76;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v63 = v95;
          v64 = v86;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v94 = v64;
          v66 = v63;
          v67 = v79;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v66, v78, v79, isUniquelyReferenced_nonNull_native);

          v67, v68;
          v86 = v94;
          v77(v88, v93);
          if (__OFADD__(v85++, 1))
          {
            goto LABEL_55;
          }

          goto LABEL_6;
        }

        v77(v88, v93);
        v39 = v79;
        goto LABEL_21;
      }

LABEL_5:

      v22 = v27;
LABEL_6:
      if (v19 == ++v20)
      {
        v17, v23;
        v1 = v81;
        v0 = v82;
        v3 = v80;
        v70 = v85;
        goto LABEL_51;
      }
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v9 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      specialized Set._Variant.insert(_:)(v8, v6, v5);
      v8[1], v7;
      v4 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t specialized LiteMessageServiceSession.inviteHandleMap(_:)(uint64_t a1)
{
  v1[27] = a1;
  v2 = type metadata accessor for Logger();
  v1[28] = v2;
  v1[29] = *(v2 - 8);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[32] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[33] = v4;
  v1[34] = v3;

  return _swift_task_switch(specialized LiteMessageServiceSession.inviteHandleMap(_:), v4, v3);
}

uint64_t specialized LiteMessageServiceSession.inviteHandleMap(_:)()
{
  v3 = v1[27];
  v4 = *(v3 + 32);
  *(v1 + 336) = v4;
  v5 = 1 << v4;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v3 + 64);

  v8 = 0;
  if (v7)
  {
    goto LABEL_7;
  }

  while (1)
  {
LABEL_8:
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v13 >= (((1 << *(v1 + 336)) + 63) >> 6))
    {
      break;
    }

    v12 = v1[27];
    v7 = *(v12 + 8 * v13 + 64);
    ++v8;
    if (v7)
    {
      v8 = v13;
      while (1)
      {
        v1[35] = v7;
        v1[36] = v8;
        v14 = __clz(__rbit64(v7)) | (v8 << 6);
        v15 = (*(v12 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v0 = *(*(v12 + 56) + 8 * v14);
        v18 = objc_allocWithZone(IDSURI);

        v19 = String._bridgeToObjectiveC()();
        v2 = [v18 initWithUnprefixedURI:v19];
        v1[37] = v2;

        if (v2)
        {
          break;
        }

        v7 &= v7 - 1;
        v22 = v1[29];
        v21 = v1[30];
        v23 = v1[28];
        v24 = Logger.donations.unsafeMutableAddressor();
        (*(v22 + 16))(v21, v24, v23);

        v25 = Logger.logObject.getter();
        v2 = static os_log_type_t.error.getter();
        v16, v26;
        if (os_log_type_enabled(v25, v2))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v1[24] = v28;
          *v27 = 136315394;
          v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, v1 + 24);
          v16, v30;
          *(v27 + 4) = v29;
          *(v27 + 12) = 2048;
          if (v0 >> 62)
          {
            v32 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v32 = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8));
          }

          v33 = v1[29];
          v63 = v1[28];
          v64 = v1[30];
          v0, v31;
          *(v27 + 14) = v32;
          v0, v34;
          _os_log_impl(&dword_0, v25, v2, "Failed to make IDSURI for %s, cannot donate %ld handles", v27, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v28);

          (*(v33 + 8))(v64, v63);
          if (!v7)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v10 = v1[29];
          v9 = v1[30];
          v2 = v1[28];
          swift_bridgeObjectRelease_n();
          v16, v11;

          (*(v10 + 8))(v9, v2);
          if (!v7)
          {
            goto LABEL_8;
          }
        }

LABEL_7:
        v12 = v1[27];
      }

      v16, v20;
      if (!(v0 >> 62))
      {
        v38 = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8));
        if (v38)
        {
          goto LABEL_24;
        }

LABEL_35:
        v0, v37;
        v41 = &_swiftEmptyArrayStorage;
LABEL_36:
        v52 = [objc_opt_self() sharedInstance];
        v1[38] = v52;
        v53 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v41);
        v41, v54;
        v55.super.isa = Set._bridgeToObjectiveC()().super.isa;
        v1[39] = v55.super.isa;
        v53, v56;
        v57 = [v2 unprefixedURI];
        if (!v57)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v59 = v58;
          v57 = String._bridgeToObjectiveC()();
          v59, v60;
        }

        v1[40] = v57;
        v1[22] = closure #2 in LiteMessageServiceSession.inviteHandleMap(_:);
        v1[23] = 0;
        v1[18] = _NSConcreteStackBlock;
        v1[19] = 1107296256;
        v1[20] = thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@unowned Bool);
        v1[21] = &block_descriptor_18;
        v61 = _Block_copy(v1 + 18);
        v1[41] = v61;
        v1[2] = v1;
        v1[7] = v1 + 26;
        v1[3] = specialized LiteMessageServiceSession.inviteHandleMap(_:);
        v62 = swift_continuation_init();
        v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyShySSGs5NeverOGMd, &_sSccyShySSGs5NeverOGMR);
        v1[10] = _NSConcreteStackBlock;
        v1[11] = 1107296256;
        v1[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSSet) -> () with result type Set<String>;
        v1[13] = &block_descriptor_21;
        v1[14] = v62;
        [v52 batchShareOffGridModeToHandleIDs:v55.super.isa fromHandleID:v57 isContact:v61 completion:v1 + 10];
        v39 = (v1 + 2);

        return _swift_continuation_await(v39);
      }

LABEL_34:
      v38 = _CocoaArrayWrapper.endIndex.getter();
      if (!v38)
      {
        goto LABEL_35;
      }

LABEL_24:
      v1[25] = &_swiftEmptyArrayStorage;
      v39 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38 & ~(v38 >> 63), 0);
      if ((v38 & 0x8000000000000000) == 0)
      {
        v40 = 0;
        v41 = v1[25];
        v65 = v38;
        do
        {
          if ((v0 & 0xC000000000000001) != 0)
          {
            v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v42 = *&v0->state[8 * v40 + 24];
          }

          v43 = v42;
          v44 = [v42 unprefixedURI];
          v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v47 = v46;

          v1[25] = v41;
          v50 = *(v41 + 2);
          v49 = *(v41 + 3);
          if (v50 >= v49 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1);
            v41 = v1[25];
          }

          ++v40;
          *(v41 + 2) = v50 + 1;
          v51 = &v41[16 * v50];
          *(v51 + 4) = v45;
          *(v51 + 5) = v47;
        }

        while (v65 != v40);
        v0, v48;
        goto LABEL_36;
      }

      __break(1u);
      return _swift_continuation_await(v39);
    }
  }

  v35 = v1[1];

  return v35();
}

{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 264);

  return _swift_task_switch(specialized LiteMessageServiceSession.inviteHandleMap(_:), v2, v1);
}

{
  v1 = *(v0 + 208);
  v78 = (v0 + 192);
  v79 = (v0 + 200);
  v3 = *(v0 + 320);
  v2 = *(v0 + 328);
  v4 = *(v0 + 312);
  v5 = *(v0 + 248);
  v6 = *(v0 + 224);
  v7 = *(v0 + 232);

  _Block_release(v2);
  v8 = Logger.donations.unsafeMutableAddressor();
  v10 = *(v7 + 16);
  v9 = (v7 + 16);
  v10(v5, v8, v6);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 296);
  if (v13)
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    v16 = *(v1 + 16);
    v1, v17;
    *(v15 + 4) = v16;
    v1, v18;
    _os_log_impl(&dword_0, v11, v12, "Completed inviting %ld handles", v15, 0xCu);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  (*(*(v0 + 232) + 8))(*(v0 + 248), *(v0 + 224));
  v19 = *(v0 + 288);
  v20 = (*(v0 + 280) - 1) & *(v0 + 280);
  while (v20)
  {
    v26 = *(v0 + 216);
LABEL_12:
    *(v0 + 280) = v20;
    *(v0 + 288) = v19;
    v28 = __clz(__rbit64(v20)) | (v19 << 6);
    v29 = (*(v26 + 48) + 16 * v28);
    v31 = *v29;
    v30 = v29[1];
    v1 = *(*(v26 + 56) + 8 * v28);
    v32 = objc_allocWithZone(IDSURI);

    v33 = String._bridgeToObjectiveC()();
    v9 = [v32 initWithUnprefixedURI:v33];
    *(v0 + 296) = v9;

    if (v9)
    {
      v30, v34;
      if (v1 >> 62)
      {
LABEL_33:
        v52 = _CocoaArrayWrapper.endIndex.getter();
        v53 = (v0 + 200);
        if (!v52)
        {
          goto LABEL_34;
        }

LABEL_23:
        *v53 = &_swiftEmptyArrayStorage;
        v54 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v52 & ~(v52 >> 63), 0);
        if ((v52 & 0x8000000000000000) == 0)
        {
          v55 = 0;
          v56 = *v53;
          v82 = v52;
          do
          {
            if ((v1 & 0xC000000000000001) != 0)
            {
              v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v57 = *(v1 + 8 * v55 + 32);
            }

            v58 = v57;
            v59 = [v57 unprefixedURI];
            v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v62 = v61;

            *v79 = v56;
            v65 = *(v56 + 2);
            v64 = *(v56 + 3);
            if (v65 >= v64 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1);
              v56 = *v79;
            }

            ++v55;
            *(v56 + 2) = v65 + 1;
            v66 = &v56[16 * v65];
            *(v66 + 4) = v60;
            *(v66 + 5) = v62;
          }

          while (v82 != v55);
          v1, v63;
          goto LABEL_35;
        }

        __break(1u);
      }

      else
      {
        v52 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
        v53 = (v0 + 200);
        if (v52)
        {
          goto LABEL_23;
        }

LABEL_34:
        v1, v51;
        v56 = &_swiftEmptyArrayStorage;
LABEL_35:
        v67 = [objc_opt_self() sharedInstance];
        *(v0 + 304) = v67;
        v68 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v56);
        v56, v69;
        v70.super.isa = Set._bridgeToObjectiveC()().super.isa;
        *(v0 + 312) = v70;
        v68, v71;
        v72 = [v9 unprefixedURI];
        if (!v72)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v74 = v73;
          v72 = String._bridgeToObjectiveC()();
          v74, v75;
        }

        *(v0 + 320) = v72;
        *(v0 + 176) = closure #2 in LiteMessageServiceSession.inviteHandleMap(_:);
        *(v0 + 184) = 0;
        *(v0 + 144) = _NSConcreteStackBlock;
        *(v0 + 152) = 1107296256;
        *(v0 + 160) = thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@unowned Bool);
        *(v0 + 168) = &block_descriptor_18;
        v76 = _Block_copy((v0 + 144));
        *(v0 + 328) = v76;
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 208;
        *(v0 + 24) = specialized LiteMessageServiceSession.inviteHandleMap(_:);
        v77 = swift_continuation_init();
        *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyShySSGs5NeverOGMd, &_sSccyShySSGs5NeverOGMR);
        *(v0 + 80) = _NSConcreteStackBlock;
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSSet) -> () with result type Set<String>;
        *(v0 + 104) = &block_descriptor_21;
        *(v0 + 112) = v77;
        [v67 batchShareOffGridModeToHandleIDs:v70.super.isa fromHandleID:v72 isContact:v76 completion:v0 + 80];
        v54 = (v0 + 16);
      }

      return _swift_continuation_await(v54);
    }

    v20 &= v20 - 1;
    v36 = *(v0 + 232);
    v35 = *(v0 + 240);
    v37 = *(v0 + 224);
    v38 = Logger.donations.unsafeMutableAddressor();
    (*(v36 + 16))(v35, v38, v37);

    v39 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v30, v40;
    if (os_log_type_enabled(v39, v9))
    {
      v41 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *v78 = v81;
      *v41 = 136315394;
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v30, v78);
      v30, v43;
      *(v41 + 4) = v42;
      *(v41 + 12) = 2048;
      if (v1 >> 62)
      {
        v45 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v45 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
      }

      v46 = *(v0 + 232);
      v80 = *(v0 + 240);
      v47 = *(v0 + 224);
      v1, v44;
      *(v41 + 14) = v45;
      v1, v48;
      _os_log_impl(&dword_0, v39, v9, "Failed to make IDSURI for %s, cannot donate %ld handles", v41, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v81);

      (*(v46 + 8))(v80, v47);
    }

    else
    {
      v22 = *(v0 + 232);
      v21 = *(v0 + 240);
      v23 = *(v0 + 224);
      swift_bridgeObjectRelease_n();
      v30, v24;

      v25 = *(v22 + 8);
      v9 = (v22 + 8);
      v25(v21, v23);
    }
  }

  while (1)
  {
    v27 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v27 >= (((1 << *(v0 + 336)) + 63) >> 6))
    {
      break;
    }

    v26 = *(v0 + 216);
    v20 = *(v26 + 8 * v27 + 64);
    ++v19;
    if (v20)
    {
      v19 = v27;
      goto LABEL_12;
    }
  }

  v49 = *(v0 + 8);

  return v49();
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo6IDSURIC_SayAEGTt0g5Tf4g_n(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IDSURI, IDSURI_ptr);
    lazy protocol witness table accessor for type IDSURI and conformance NSObject();
    result = Set.init(minimumCapacity:)();
    v9 = result;
    if (i)
    {
      break;
    }

    v4 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      specialized Set._Variant.insert(_:)(&v8, v6);

      if (v7 == v4)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IDSURI and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type IDSURI and conformance NSObject;
  if (!lazy protocol witness table cache variable for type IDSURI and conformance NSObject)
  {
    type metadata accessor for IMDHandle(255, &lazy cache variable for type metadata for IDSURI, IDSURI_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IDSURI and conformance NSObject);
  }

  return result;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F230()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_31(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in LiteMessageServiceSession.familyDidChange();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t one-time initialization function for incomingMessageQueue()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMd, &_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMR);
  __chkstk_darwin(v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  v4 = type metadata accessor for AsyncSerialQueue();
  __swift_allocate_value_buffer(v4, incomingMessageQueue);
  __swift_project_value_buffer(v4, incomingMessageQueue);
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  default argument 1 of AsyncSerialQueue.init(priority:bufferingPolicy:)();
  return AsyncSerialQueue.init(priority:bufferingPolicy:)();
}

uint64_t closure #1 in LiteMessageServiceSession.messenger(_:incomingMessage:context:clientErrorAcknowledgementBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a3;
  v8 = type metadata accessor for Logger();
  v5[9] = v8;
  v5[10] = *(v8 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = type metadata accessor for MainActor();
  v5[14] = static MainActor.shared.getter();
  v9 = swift_task_alloc();
  v5[15] = v9;
  *v9 = v5;
  v9[1] = closure #1 in LiteMessageServiceSession.messenger(_:incomingMessage:context:clientErrorAcknowledgementBlock:);

  return LiteMessageServiceSession.processReceivedEncryptedMessage(_:context:)(a2, a3);
}

uint64_t closure #1 in LiteMessageServiceSession.messenger(_:incomingMessage:context:clientErrorAcknowledgementBlock:)()
{
  *(*v1 + 128) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = closure #1 in LiteMessageServiceSession.messenger(_:incomingMessage:context:clientErrorAcknowledgementBlock:);
  }

  else
  {
    v4 = closure #1 in LiteMessageServiceSession.messenger(_:incomingMessage:context:clientErrorAcknowledgementBlock:);
  }

  return _swift_task_switch(v4, v3, v2);
}

{
  v26 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 48);

  v5 = Logger.liteSession.unsafeMutableAddressor();
  (*(v3 + 16))(v1, v5, v2);
  v6 = v4;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 96);
  v12 = *(v0 + 72);
  v11 = *(v0 + 80);
  if (v9)
  {
    v13 = *(v0 + 48);
    v24 = *(v0 + 96);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v15;
    *v14 = 136315138;
    v16 = [v13 identifier];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v25);
    v19, v21;
    *(v14 + 4) = v20;
    _os_log_impl(&dword_0, v7, v8, "Successfully processed received message %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);

    (*(v11 + 8))(v24, v12);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  (*(v0 + 56))(0);

  v22 = *(v0 + 8);

  return v22();
}

{
  v33 = v0;
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[6];

  v5 = Logger.liteSession.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v5, v3);
  v6 = v4;
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[10];
    v30 = v0[9];
    v31 = v0[11];
    v10 = v0[6];
    v11 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v11 = 136315394;
    v12 = [v10 identifier];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v32);
    v15, v17;
    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    swift_getErrorValue();
    v18 = Error.localizedDescription.getter();
    v20 = v19;
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v32);
    v20, v22;
    *(v11 + 14) = v21;
    _os_log_impl(&dword_0, v7, v8, "Failed to process received message %s: %s", v11, 0x16u);
    swift_arrayDestroy();

    (*(v9 + 8))(v31, v30);
  }

  else
  {
    v24 = v0[10];
    v23 = v0[11];
    v25 = v0[9];

    (*(v24 + 8))(v23, v25);
  }

  v26 = v0[7];
  v27 = _convertErrorToNSError(_:)();
  v26();

  v28 = v0[1];

  return v28();
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ()(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void LiteMessageServiceSession.messenger(_:incomingMessage:context:clientAcknowledgementBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v13[4] = partial apply for closure #1 in LiteMessageServiceSession.messenger(_:incomingMessage:context:clientAcknowledgementBlock:);
  v13[5] = v11;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  v13[3] = &block_descriptor_0;
  v12 = _Block_copy(v13);

  [v5 messenger:a1 incomingMessage:a2 context:a3 clientErrorAcknowledgementBlock:v12];
  _Block_release(v12);
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t LiteMessageServiceSession.messenger(_:incomingSummaryMessage:context:clientAcknowledgementBlock:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for MainActor();
  v8 = a2;
  v9 = v2;
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v8;
  v11[5] = v9;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in LiteMessageServiceSession.messenger(_:incomingSummaryMessage:context:clientAcknowledgementBlock:), v11);
}

uint64_t closure #1 in LiteMessageServiceSession.messenger(_:incomingSummaryMessage:context:clientAcknowledgementBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = type metadata accessor for Logger();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[11] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in LiteMessageServiceSession.messenger(_:incomingSummaryMessage:context:clientAcknowledgementBlock:), v8, v7);
}

void closure #1 in LiteMessageServiceSession.messenger(_:incomingSummaryMessage:context:clientAcknowledgementBlock:)()
{
  v78 = v0;
  v1 = [*(v0 + 48) pendingCounts];
  v2 = type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IDSURI, IDSURI_ptr);
  type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  lazy protocol witness table accessor for type IDSURI and conformance NSObject();
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = __CocoaDictionary.makeIterator()();
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v3 = v4 | 0x8000000000000000;
  }

  else
  {
    v8 = -1 << *(v3 + 32);
    v5 = v3 + 64;
    v6 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v3 + 64);
  }

  v11 = 0;
  v12 = *(v0 + 72);
  v13 = (v6 + 64) >> 6;
  v70 = (v12 + 8);
  v71 = (v12 + 16);
  v73 = v5;
  v74 = v3;
  while ((v3 & 0x8000000000000000) == 0)
  {
    v15 = v11;
    v16 = v7;
    v17 = v11;
    if (!v7)
    {
      while (1)
      {
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v17 >= v13)
        {
          goto LABEL_34;
        }

        v16 = *(v5 + 8 * v17);
        ++v15;
        if (v16)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

LABEL_16:
    v76 = (v16 - 1) & v16;
    v18 = (v17 << 9) | (8 * __clz(__rbit64(v16)));
    v19 = *(*(v3 + 56) + v18);
    v20 = *(*(v3 + 48) + v18);
    v21 = v19;
    if (!v20)
    {
      goto LABEL_34;
    }

LABEL_20:
    v75 = v21;
    v25 = [v21 longLongValue];
    v26 = [v20 unprefixedURI];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = LiteMessageServiceSession.joinedChat(with:)(v27, v29);
    if (v30)
    {
      v32 = v30;
      v33 = *(v0 + 56);
      v29, v31;
      v34 = [v32 account];
      v35 = [v33 account];
      v36 = v35;
      if (v34)
      {
        if (v35)
        {
          type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IMDAccount, IMDAccount_ptr);
          v37 = static NSObject.== infix(_:_:)();

          if ((v37 & 1) == 0)
          {
            goto LABEL_32;
          }

LABEL_9:
          [v32 updatePendingIncomingSatelliteMessageCount:v25];

          goto LABEL_10;
        }

        v36 = v34;
      }

      else if (!v35)
      {
        goto LABEL_9;
      }

LABEL_32:
      v51 = [*(v0 + 56) account];
      v52 = [v51 accountID];

      if (!v52)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = v53;
        v52 = String._bridgeToObjectiveC()();
        v54, v55;
      }

      [v32 setAccountID:v52];

      v14 = [objc_opt_self() sharedInstance];
      [v14 storeChat:v32];

      goto LABEL_9;
    }

    v38 = *(v0 + 80);
    v39 = *(v0 + 64);
    v40 = Logger.liteSession.unsafeMutableAddressor();
    (*v71)(v38, v40, v39);

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    v29, v43;
    v44 = os_log_type_enabled(v41, v42);
    v46 = *(v0 + 80);
    v72 = *(v0 + 64);
    if (v44)
    {
      v69 = v2;
      v47 = swift_slowAlloc();
      v68 = v46;
      v48 = swift_slowAlloc();
      v77 = v48;
      *v47 = 136315138;
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v77);
      v29, v50;
      *(v47 + 4) = v49;
      _os_log_impl(&dword_0, v41, v42, "Failed to find or join chat for handle %s to assign pending message count", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);

      v2 = v69;

      (*v70)(v68, v72);
    }

    else
    {
      v29, v45;

      (*v70)(v46, v72);
    }

LABEL_10:
    v11 = v17;
    v7 = v76;
    v5 = v73;
    v3 = v74;
  }

  v22 = __CocoaDictionary.Iterator.next()();
  if (v22)
  {
    v24 = v23;
    *(v0 + 24) = v22;
    swift_dynamicCast();
    v20 = *(v0 + 16);
    *(v0 + 40) = v24;
    swift_dynamicCast();
    v21 = *(v0 + 32);
    v17 = v11;
    v76 = v7;
    if (v20)
    {
      goto LABEL_20;
    }
  }

LABEL_34:
  outlined consume of [IDSURI : NSNumber].Iterator._Variant(v3);
  v56 = [objc_opt_self() sharedInstance];
  if (!v56)
  {
LABEL_41:
    __break(1u);
    return;
  }

  v57 = v56;
  v58 = *(v0 + 48);
  v59 = *(v0 + 56);

  v60 = [v58 totalPendingMessagesCount];
  v61 = [v60 integerValue];

  v62 = [v59 service];
  v63 = [v62 internalName];

  if (!v63)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;
    v63 = String._bridgeToObjectiveC()();
    v65, v66;
  }

  [v57 updateBadgeForPendingSatelliteMessagesIfNeeded:v61 onService:v63];

  v67 = *(v0 + 8);

  v67();
}

uint64_t closure #1 in LiteMessageServiceSession.messenger(_:receivedIncomingDeliveryReceiptForIdentifier:from:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for Date();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[9] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in LiteMessageServiceSession.messenger(_:receivedIncomingDeliveryReceiptForIdentifier:from:context:), v10, v9);
}

uint64_t closure #1 in LiteMessageServiceSession.messenger(_:receivedIncomingDeliveryReceiptForIdentifier:from:context:)()
{

  v1 = IDSOffGridMessageContext.topic.getter();
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[3];
  v7 = v0[4];
  if (v1)
  {
    static Date.now.getter();
    LiteMessageServiceSession.didReceiveRelayMessageDeliveryReceipt(messageID:date:)(v7, v4);
    (*(v3 + 8))(v2, v5);
  }

  else
  {
    v8 = String._bridgeToObjectiveC()();
    static Date.now.getter();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v3 + 8))(v2, v5);
    [v6 didReceiveMessageDeliveryReceiptForMessageID:v8 date:isa];
  }

  v10 = v0[1];

  return v10();
}

uint64_t closure #1 in LiteMessageServiceSession.messenger(_:incomingServiceUpdateMessage:context:clientAcknowledgementBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v13;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[9] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in LiteMessageServiceSession.messenger(_:incomingServiceUpdateMessage:context:clientAcknowledgementBlock:), v10, v9);
}

uint64_t closure #1 in LiteMessageServiceSession.messenger(_:incomingServiceUpdateMessage:context:clientAcknowledgementBlock:)()
{
  v1 = v0[3];

  v2 = [v1 preferredServiceType];
  v3 = [v1 expirationDate];
  if (v3)
  {
    v4 = v3;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[4];
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 56))(v6, v5, 1, v10);
  LiteMessageServiceSession.processPreferredServiceType(_:for:expiresAfter:)(v2, v9, v7, v6);
  v11 = outlined destroy of TaskPriority?(v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8(v11);

  v12 = v0[1];

  return v12();
}

uint64_t specialized LiteMessageServiceSession.messenger(_:incomingMessage:context:clientErrorAcknowledgementBlock:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v68 = a3;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = Logger.liteSession.unsafeMutableAddressor();
  (*(v8 + 16))(v10, v11, v7);
  v12 = a1;
  v13 = a2;
  v14 = v12;
  v15 = v13;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v70 = v66;
    *v18 = 136316674;
    v19 = [v15 identifier];
    v65 = v17;
    v20 = v19;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = a4;
    v22 = v21;
    v63 = v16;
    v24 = v23;

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v70);
    v24, v26;
    *(v18 + 4) = v25;
    *(v18 + 12) = 2080;
    v27 = [v14 senderURI];
    v64 = v7;
    v28 = [v27 unprefixedURI];

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v70);
    v31, v33;
    *(v18 + 14) = v32;
    *(v18 + 22) = 2080;
    v34 = [v14 recipientURI];
    v35 = [v34 unprefixedURI];

    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v70);
    v38, v40;
    *(v18 + 24) = v39;
    *(v18 + 32) = 2048;
    v41 = [v14 encryptionProperties];
    v42 = [v41 segmentNumber];

    v43 = [v42 integerValue];
    *(v18 + 34) = v43;

    *(v18 + 42) = 2048;
    a4 = v67;
    v44 = [v14 encryptionProperties];
    v45 = [v44 totalSegments];

    v46 = [v45 integerValue];
    *(v18 + 44) = v46;

    *(v18 + 52) = 1024;
    v47 = [v15 transportType];

    *(v18 + 54) = v47 == &dword_0 + 2;
    *(v18 + 58) = 2080;
    v48 = IDSOffGridMessageContext.topic.getter();
    v49 = LiteTopic.rawValue.getter(v48 & 1);
    v51 = v50;
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v70);
    v51, v53;
    *(v18 + 60) = v52;
    v54 = v63;
    _os_log_impl(&dword_0, v63, v65, "Received encrypted iMessage Lite message %s from %s to %s (segment %ld of %ld) (via satellite: %{BOOL}d) (topic: %s)", v18, 0x44u);
    swift_arrayDestroy();

    (*(v8 + 8))(v10, v64);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  if (one-time initialization token for incomingMessageQueue != -1)
  {
    swift_once();
  }

  v55 = type metadata accessor for AsyncSerialQueue();
  __swift_project_value_buffer(v55, incomingMessageQueue);
  v56 = swift_allocObject();
  v57 = v68;
  v58 = v69;
  v56[2] = v69;
  v56[3] = v14;
  v56[4] = v15;
  v56[5] = v57;
  v56[6] = a4;
  v59 = v14;
  v60 = v15;
  v61 = v58;

  AsyncSerialQueue.perform(_:)();
}

uint64_t sub_11670()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in LiteMessageServiceSession.messenger(_:incomingSummaryMessage:context:clientAcknowledgementBlock:)()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange();

  return closure #1 in LiteMessageServiceSession.messenger(_:incomingSummaryMessage:context:clientAcknowledgementBlock:)(v4, v5, v6, v2, v3);
}

uint64_t specialized LiteMessageServiceSession.messenger(_:receivedIncomingDeliveryReceiptForIdentifier:from:context:)(uint64_t a1, LiteMessageServiceSession *a2, void *a3, void *a4)
{
  v39 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v7 - 8);
  v9 = &v36 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = Logger.liteSession.unsafeMutableAddressor();
  (*(v11 + 16))(v13, v14, v10);

  v15 = a3;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  a2, v18;
  v38 = v17;
  if (os_log_type_enabled(v16, v17))
  {
    v19 = swift_slowAlloc();
    v37 = v9;
    v20 = v19;
    v36 = swift_slowAlloc();
    v41 = v36;
    *v20 = 136315394;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v41);
    *(v20 + 12) = 2080;
    v21 = [v15 unprefixedURI];
    v22 = a1;
    v23 = a2;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v41);
    v26, v28;
    *(v20 + 14) = v27;
    a2 = v23;
    a1 = v22;
    _os_log_impl(&dword_0, v16, v38, "Received message delivery receipt for %s from %s", v20, 0x16u);
    swift_arrayDestroy();

    v9 = v37;
  }

  (*(v11 + 8))(v13, v10);
  v29 = type metadata accessor for TaskPriority();
  (*(*(v29 - 8) + 56))(v9, 1, 1, v29);
  type metadata accessor for MainActor();

  v30 = a2;
  v31 = v39;
  v32 = v40;
  v33 = static MainActor.shared.getter();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = &protocol witness table for MainActor;
  v34[4] = v31;
  v34[5] = v32;
  v34[6] = a1;
  v34[7] = v30;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in LiteMessageServiceSession.messenger(_:receivedIncomingDeliveryReceiptForIdentifier:from:context:), v34);
}

uint64_t specialized LiteMessageServiceSession.messenger(_:incomingServiceUpdateMessage:context:clientAcknowledgementBlock:)(void *a1, uint64_t a2, uint64_t a3)
{
  v30 = a2;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = v29 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 senderURI];
  v12 = [v11 unprefixedURI];

  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = Logger.liteSession.unsafeMutableAddressor();
  (*(v8 + 16))(v10, v15, v7);

  v16 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v14, v19;
  if (os_log_type_enabled(v17, v18))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v33 = v21;
    *v20 = 136315394;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v14, &v33);
    *(v20 + 12) = 2048;
    *(v20 + 14) = [v16 preferredServiceType];

    _os_log_impl(&dword_0, v17, v18, "Received service update request from %s to switch to service to %ld", v20, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v21);
  }

  else
  {
  }

  (*(v8 + 8))(v10, v7);
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
  type metadata accessor for MainActor();
  v23 = v16;
  v24 = v29[1];
  v25 = v31;

  v26 = static MainActor.shared.getter();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = &protocol witness table for MainActor;
  v27[4] = v24;
  v27[5] = v23;
  v27[6] = v32;
  v27[7] = v14;
  v27[8] = v30;
  v27[9] = v25;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in LiteMessageServiceSession.messenger(_:incomingServiceUpdateMessage:context:clientAcknowledgementBlock:), v27);
}

uint64_t objectdestroy_2Tm()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t closure #1 in LiteMessageServiceSession.messenger(_:incomingSummaryMessage:context:clientAcknowledgementBlock:)partial apply()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in LiteMessageServiceSession.familyDidChange();

  return closure #1 in LiteMessageServiceSession.messenger(_:incomingSummaryMessage:context:clientAcknowledgementBlock:)(v4, v5, v6, v2, v3);
}

uint64_t sub_11F54()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_11F94()
{
  swift_unknownObjectRelease();

  *(v0 + 56), v1;

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t partial apply for closure #1 in LiteMessageServiceSession.messenger(_:incomingServiceUpdateMessage:context:clientAcknowledgementBlock:)()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = partial apply for closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange();

  return closure #1 in LiteMessageServiceSession.messenger(_:incomingServiceUpdateMessage:context:clientAcknowledgementBlock:)(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_120B0()
{
  swift_unknownObjectRelease();

  *(v0 + 56), v1;

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t partial apply for closure #1 in LiteMessageServiceSession.messenger(_:receivedIncomingDeliveryReceiptForIdentifier:from:context:)()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = partial apply for closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange();

  return closure #1 in LiteMessageServiceSession.messenger(_:receivedIncomingDeliveryReceiptForIdentifier:from:context:)(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_121EC()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t partial apply for closure #1 in LiteMessageServiceSession.messenger(_:incomingMessage:context:clientErrorAcknowledgementBlock:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = partial apply for closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange();

  return closure #1 in LiteMessageServiceSession.messenger(_:incomingMessage:context:clientErrorAcknowledgementBlock:)(v2, v3, v4, v5, v6);
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

uint64_t one-time initialization function for outgoingMessageQueue()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMd, &_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMR);
  __chkstk_darwin(v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  v4 = type metadata accessor for AsyncSerialQueue();
  __swift_allocate_value_buffer(v4, outgoingMessageQueue);
  __swift_project_value_buffer(v4, outgoingMessageQueue);
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  default argument 1 of AsyncSerialQueue.init(priority:bufferingPolicy:)();
  return AsyncSerialQueue.init(priority:bufferingPolicy:)();
}

double key path getter for LiteMessageServiceSession.lastSatelliteStateChange : LiteMessageServiceSession@<D0>(void *a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + OBJC_IVAR___LiteMessageServiceSession_state + 32);
  *a2 = result;
  return result;
}

double key path setter for LiteMessageServiceSession.lastSatelliteStateChange : LiteMessageServiceSession(double *a1, void *a2)
{
  result = *a1;
  *(*a2 + OBJC_IVAR___LiteMessageServiceSession_state + 32) = *a1;
  return result;
}

double (*LiteMessageServiceSession.lastSatelliteStateChange.modify(void *a1))(uint64_t a1)
{
  v2 = OBJC_IVAR___LiteMessageServiceSession_state;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = *(v1 + v2 + 32);
  return LiteMessageServiceSession.lastSatelliteStateChange.modify;
}

double LiteMessageServiceSession.lastSatelliteStateChange.modify(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + *(a1 + 16) + 32) = *a1;
  return result;
}

uint64_t (*LiteMessageServiceSession.emergencyContactsNotificationToken.modify(uint64_t a1))(uint64_t result)
{
  v2 = OBJC_IVAR___LiteMessageServiceSession_state;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2 + 48);
  return LiteMessageServiceSession.emergencyContactsNotificationToken.modify;
}

uint64_t (*LiteMessageServiceSession.familyContactsNotificationToken.modify(uint64_t a1))(uint64_t result)
{
  v2 = OBJC_IVAR___LiteMessageServiceSession_state;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2 + 52);
  return LiteMessageServiceSession.familyContactsNotificationToken.modify;
}

uint64_t static LiteMessageServiceSession.PendingSMSMessage.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a3 == a7 && a4 == a8)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t LiteMessageServiceSession.PendingSMSMessage.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int LiteMessageServiceSession.PendingSMSMessage.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LiteMessageServiceSession.PendingSMSMessage()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance LiteMessageServiceSession.PendingSMSMessage(uint64_t a1)
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LiteMessageServiceSession.PendingSMSMessage(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance LiteMessageServiceSession.PendingSMSMessage(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  v3 = a1[2];
  v4 = a1[3];
  v5 = a2[2];
  v6 = a2[3];
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 1;
  }

  if (v3 == v5 && v4 == v6)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

double key path getter for LiteMessageServiceSession.pendingSMSMessages : LiteMessageServiceSession@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *(*a1 + OBJC_IVAR___LiteMessageServiceSession_state + 56);

  return result;
}

void key path setter for LiteMessageServiceSession.pendingSMSMessages : LiteMessageServiceSession(uint64_t *a1, void *a2)
{
  v2 = *a2 + OBJC_IVAR___LiteMessageServiceSession_state;
  v3 = *(v2 + 56);
  *(v2 + 56) = *a1;

  v3, v4;
}

void LiteMessageServiceSession.pendingSMSMessages.setter(uint64_t a1, const char *a2)
{
  v3 = *(v2 + OBJC_IVAR___LiteMessageServiceSession_state + 56);
  *(v2 + OBJC_IVAR___LiteMessageServiceSession_state + 56) = a1;
  v3, a2;
}

void (*LiteMessageServiceSession.pendingSMSMessages.modify(void *a1))(uint64_t *a1, const char *a2)
{
  v2 = OBJC_IVAR___LiteMessageServiceSession_state;
  a1[2] = OBJC_IVAR___LiteMessageServiceSession_state;
  *a1 = *(v1 + v2 + 56);
  a1[1] = v1;

  return LiteMessageServiceSession.pendingSMSMessages.modify;
}

void LiteMessageServiceSession.pendingSMSMessages.modify(uint64_t *a1, const char *a2)
{
  v2 = *a1;
  v3 = a1[1] + a1[2];
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;
  v4, a2;
}

id LiteMessageServiceSession.init(account:service:replicatingFor:)(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAccount:a1 service:a2 replicatingForSession:a3];

  return v6;
}

char *LiteMessageServiceSession.init(account:service:replicatingFor:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v8 = static OS_dispatch_queue.main.getter();
  *&v44[0] = 0;
  v9 = [objc_allocWithZone(IDSOffGridMessenger) initWithServiceType:1 queue:v8 error:v44];
  v10 = *&v44[0];
  if (!v9)
  {
    v38 = *&v44[0];
    v13 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    goto LABEL_16;
  }

  v11 = v9;
  v12 = *&v44[0];

  v13 = static OS_dispatch_queue.main.getter();
  v14 = objc_allocWithZone(IDSOffGridMessenger);
  *&v44[0] = 0;
  v15 = [v14 initWithServiceType:2 queue:v13 error:v44];
  v10 = *&v44[0];
  if (!v15)
  {
LABEL_16:
    v39 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v16 = v15;
  v17 = *&v44[0];

  type metadata accessor for LiteMessageSegmentStore();
  v18 = LiteMessageSegmentStore.__allocating_init()();
  v19 = [objc_opt_self() sharedInstanceForBagType:1];
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 objectForKey:v20];

  if (v21)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  v44[0] = v42;
  v44[1] = v43;
  if (!*(&v43 + 1))
  {

    outlined destroy of TaskPriority?(v44, &_sypSgMd, &_sypSgMR);
LABEL_11:
    v23 = 21600.0;
    goto LABEL_12;
  }

  type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_11;
  }

  [v41 doubleValue];
  v23 = v22;

LABEL_12:
  v24 = [objc_allocWithZone(IDSRateLimiter) initWithLimit:2 timeLimit:v23];
  if (!v24)
  {
    __break(1u);
  }

  v25 = &v4[OBJC_IVAR___LiteMessageServiceSession_state];
  *v25 = v11;
  *(v25 + 1) = v16;
  *(v25 + 2) = v18;
  *(v25 + 3) = v24;
  *(v25 + 2) = xmmword_534F0;
  *(v25 + 6) = 0;
  *(v25 + 7) = &_swiftEmptySetSingleton;
  v40.receiver = v4;
  v40.super_class = LiteMessageServiceSession;
  v26 = objc_msgSendSuper2(&v40, "initWithAccount:service:replicatingForSession:", a1, a2, a3);
  v27 = &v26[OBJC_IVAR___LiteMessageServiceSession_state];
  v28 = *&v26[OBJC_IVAR___LiteMessageServiceSession_state];
  v29 = v26;
  [v28 setDelegate:v29];
  [v27[1] setDelegate:v29];
  v30 = objc_opt_self();
  v31 = [v30 defaultCenter];
  [v31 addObserver:v29 selector:"emergencyContactsDidChange" name:IMDEmergencyContactsDidChangeNotification object:0];

  v32 = [v30 defaultCenter];
  [v32 addObserver:v29 selector:"familyDidChange" name:IMDFamilyDidChangeNotification object:0];

  v33 = [v30 defaultCenter];
  [v33 addObserver:v29 selector:"handleSMSMessageSentWithNotification:" name:IMDSMSMessageSentNotification object:0];

  v34 = [objc_opt_self() sharedController];
  v35 = v29;
  [v34 addObserver:v35];

  v36 = [objc_opt_self() sharedInstance];
  [v36 addListener:v35];

  LiteMessageServiceSession.prepareForFirstUnlock()();
  return v35;
}

void LiteMessageServiceSession.sendRelayMessage(_:toChat:style:command:)(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5;
  LODWORD(v8) = a4;
  v36 = a2;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = Logger.liteRelaySession.unsafeMutableAddressor();
  (*(v12 + 16))(v14, v15, v11);
  v16 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v31 = v11;
    v32 = v8;
    v33 = a5;
    v34 = v6;
    v35 = a3;
    v8 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v37 = v19;
    *v8 = 136315138;
    v20 = [v16 guid];

    if (!v20)
    {
      __break(1u);
      return;
    }

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v37);
    v23, v25;
    *(v8 + 4) = v24;
    _os_log_impl(&dword_0, v17, v18, "Enqueuing relay message to send: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);

    (*(v12 + 8))(v14, v31);
    v6 = v34;
    a3 = v35;
    a5 = v33;
    LOBYTE(v8) = v32;
  }

  else
  {

    (*(v12 + 8))(v14, v11);
  }

  if (one-time initialization token for outgoingMessageQueue != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for AsyncSerialQueue();
  __swift_project_value_buffer(v26, outgoingMessageQueue);
  v27 = swift_allocObject();
  *(v27 + 16) = v16;
  *(v27 + 24) = v6;
  *(v27 + 32) = v36;
  *(v27 + 40) = a3;
  *(v27 + 48) = v8;
  *(v27 + 56) = a5;
  v28 = v16;
  v29 = v6;

  AsyncSerialQueue.perform(_:)();
}

void LiteMessageServiceSession.sendRelayMessage(_:toChat:style:)(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v39 = a2;
  v40 = a7;
  v38 = a5;
  v9 = v7;
  LODWORD(v10) = a4;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = Logger.liteRelaySession.unsafeMutableAddressor();
  (*(v14 + 16))(v16, v17, v13);
  v18 = a1;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v33 = v13;
    v34 = v10;
    v35 = a6;
    v36 = v9;
    v37 = a3;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v41 = v22;
    *v21 = 136315138;
    v10 = [v18 guid];

    if (!v10)
    {
      __break(1u);
      return;
    }

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v41);
    v25, v27;
    *(v21 + 4) = v26;
    _os_log_impl(&dword_0, v19, v20, "Enqueuing relay message to send: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);

    (*(v14 + 8))(v16, v33);
    v9 = v36;
    a3 = v37;
    a6 = v35;
    LOBYTE(v10) = v34;
  }

  else
  {

    (*(v14 + 8))(v16, v13);
  }

  if (one-time initialization token for outgoingMessageQueue != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for AsyncSerialQueue();
  __swift_project_value_buffer(v28, outgoingMessageQueue);
  v29 = swift_allocObject();
  *(v29 + 16) = v18;
  *(v29 + 24) = v9;
  *(v29 + 32) = v39;
  *(v29 + 40) = a3;
  *(v29 + 48) = v10;
  *(v29 + 56) = a6;
  v30 = v18;
  v31 = v9;

  AsyncSerialQueue.perform(_:)();
}

void @objc LiteMessageServiceSession.sendRelayMessage(_:toChat:style:)(void *a1, uint64_t a2, void *a3, uint64_t a4, int a5, uint64_t a6)
{
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = a3;
  v14 = a1;
  LiteMessageServiceSession.sendRelayMessage(_:toChat:style:command:)(v13, v10, v12, a5, a6);

  v12, v15;
}

uint64_t closure #1 in LiteMessageServiceSession.sendRelayMessage(_:toChat:style:command:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 104) = a4;
  *(v6 + 112) = a6;
  *(v6 + 208) = a5;
  *(v6 + 88) = a2;
  *(v6 + 96) = a3;
  *(v6 + 80) = a1;
  v7 = type metadata accessor for Logger();
  *(v6 + 120) = v7;
  *(v6 + 128) = *(v7 - 8);
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v6 + 160) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 168) = v9;
  *(v6 + 176) = v8;

  return _swift_task_switch(closure #1 in LiteMessageServiceSession.sendRelayMessage(_:toChat:style:command:), v9, v8);
}

uint64_t closure #1 in LiteMessageServiceSession.sendRelayMessage(_:toChat:style:command:)()
{
  v1 = *(v0 + 80);
  v2 = swift_task_alloc();
  *(v0 + 184) = v2;
  *v2 = v0;
  v2[1] = closure #1 in LiteMessageServiceSession.sendRelayMessage(_:toChat:style:command:);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = *(v0 + 96);
  v6 = *(v0 + 80);
  v7 = *(v0 + 208);

  return LiteMessageServiceSession.encryptAndSendSMSRelayMessageItem(_:chatIdentifier:chatStyle:command:)(v6, v5, v3, v7, v4);
}

uint64_t closure #1 in LiteMessageServiceSession.sendRelayMessage(_:toChat:style:command:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 192) = a1;
  *(v4 + 200) = v1;

  v5 = *(v3 + 176);
  v6 = *(v3 + 168);
  if (v1)
  {
    v7 = closure #1 in LiteMessageServiceSession.sendRelayMessage(_:toChat:style:command:);
  }

  else
  {
    v7 = closure #1 in LiteMessageServiceSession.sendRelayMessage(_:toChat:style:command:);
  }

  return _swift_task_switch(v7, v6, v5);
}

void closure #1 in LiteMessageServiceSession.sendRelayMessage(_:toChat:style:command:)()
{
  v67 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 152);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 80);

  v6 = v1;
  v7 = Logger.liteRelaySession.unsafeMutableAddressor();
  v8 = *(v4 + 16);
  v8(v2, v7, v3);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 192);
  if (v11)
  {
    v65 = v8;
    v13 = *(v0 + 104);
    v14 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v14 = 136315394;
    v15 = [v12 guid];
    v13, v16;

    if (!v15)
    {
      __break(1u);
      return;
    }

    v17 = *(v0 + 128);
    v63 = *(v0 + 120);
    v64 = *(v0 + 152);
    v19 = *(v0 + 96);
    v18 = *(v0 + 104);
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v66);
    v22, v24;
    *(v14 + 4) = v23;
    *(v14 + 12) = 2080;
    *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v18, &v66);
    _os_log_impl(&dword_0, v9, v10, "Successfully sent message %s to %s", v14, 0x16u);
    swift_arrayDestroy();

    v25 = *(v17 + 8);
    v25(v64, v63);
    v8 = v65;
  }

  else
  {
    v26 = *(v0 + 152);
    v27 = *(v0 + 120);
    v28 = *(v0 + 128);
    v29 = *(v0 + 104);

    v29, v30;
    v25 = *(v28 + 8);
    v25(v26, v27);
  }

  v31 = *(v0 + 192);
  [v31 setErrorCode:{0, v63, v64}];

  v32 = *(v0 + 192);
  v33 = LiteMessageServiceSession.accountForSending(on:command:)(1, *(v0 + 112));
  if (!v33)
  {
    goto LABEL_12;
  }

  v34 = v33;
  v35 = [v33 session];

  if (!v35)
  {
    goto LABEL_12;
  }

  objc_opt_self();
  v36 = swift_dynamicCastObjCClass();
  if (!v36)
  {

LABEL_12:
    v41 = *(v0 + 144);
    v42 = *(v0 + 120);
    v43 = Logger.liteRelaySession.unsafeMutableAddressor();
    v8(v41, v43, v42);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = *(v0 + 112);
      v47 = swift_slowAlloc();
      *v47 = 134217984;
      *(v47 + 4) = v46;
      _os_log_impl(&dword_0, v44, v45, "Could not process message: failed to find sms lite relay session for command %ld", v47, 0xCu);
    }

    v48 = *(v0 + 144);
    v49 = *(v0 + 120);

    v25(v48, v49);
    goto LABEL_17;
  }

  v37 = *(v0 + 112);
  if (v37 == 140)
  {
    if (![v32 errorCode])
    {
      v51 = [*(v0 + 80) guid];
      if (v51)
      {
        v52 = v51;
        v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = v54;
      }

      else
      {
        v53 = 0;
        v55 = 0;
      }

      v56 = [v32 guid];
      if (v56)
      {
        v57 = v56;
        v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v60 = v59;
      }

      else
      {
        v58 = 0;
        v60 = 0;
      }

      LiteMessageServiceSession.overwriteGUID(for:oldGuid:newGuid:forChat:style:)(*(v0 + 80), v53, v55, v58, v60, *(v0 + 96), *(v0 + 104), *(v0 + 208));

      v60, v61;
      v55, v62;
      goto LABEL_18;
    }
  }

  else if (v37 == 143)
  {
    v38 = *(v0 + 208);
    v39 = v36;
    v40 = String._bridgeToObjectiveC()();
    [v39 didSendMessage:v32 forChat:v40 style:v38];
  }

LABEL_17:
LABEL_18:

  v50 = *(v0 + 8);

  v50();
}

void closure #1 in LiteMessageServiceSession.sendRelayMessage(_:toChat:style:command:)(uint64_t a1)
{
  v79 = v1;
  v3 = *(v1 + 128);
  v2 = *(v1 + 136);
  v4 = *(v1 + 120);
  v5 = *(v1 + 80);
  v6 = Logger.liteRelaySession.unsafeMutableAddressor();
  v7 = *(v3 + 16);
  v7(v2, v6, v4);
  v8 = v5;

  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v77 = v7;
    v11 = *(v1 + 80);
    v12 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *v12 = 136315650;
    v13 = [v11 guid];
    if (!v13)
    {
LABEL_30:
      v71 = *(v1 + 104);
      v72 = *(v1 + 80);

      v71, v73;

      __break(1u);
      return;
    }

    v14 = v13;
    v74 = *(v1 + 128);
    v75 = *(v1 + 120);
    v76 = *(v1 + 136);
    v15 = *(v1 + 96);
    v16 = *(v1 + 104);
    v17 = *(v1 + 80);

    v16, v18;

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v78);
    v21, v23;
    *(v12 + 4) = v22;
    *(v12 + 12) = 2080;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v78);
    *(v12 + 22) = 2080;
    swift_getErrorValue();
    v24 = Error.localizedDescription.getter();
    v26 = v25;
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v78);
    v26, v28;
    *(v12 + 24) = v27;
    _os_log_impl(&dword_0, v9, v10, "Failed to send message %s to %s: %s", v12, 0x20u);
    swift_arrayDestroy();

    v29 = *(v74 + 8);
    v29(v76, v75);
    v7 = v77;
  }

  else
  {
    v31 = *(v1 + 128);
    v30 = *(v1 + 136);
    v32 = *(v1 + 120);
    v33 = *(v1 + 104);

    v33, v34;

    v29 = *(v31 + 8);
    v29(v30, v32);
  }

  v35 = *(v1 + 80);
  swift_getErrorValue();
  [v35 setErrorCode:Error.liteItemSendErrorCode.getter(*(v1 + 24))];
  v36 = [objc_opt_self() sharedInstance];
  if (!v36)
  {
    __break(1u);
    goto LABEL_30;
  }

  v37 = v36;

  v38 = String._bridgeToObjectiveC()();
  v39 = _convertErrorToNSError(_:)();
  [v37 forceAutoBugCaptureWithSubType:v38 errorPayload:v39];

  v40 = *(v1 + 80);
  v41 = LiteMessageServiceSession.accountForSending(on:command:)(1, *(v1 + 112));
  if (!v41)
  {
    goto LABEL_13;
  }

  v42 = v41;
  v43 = [v41 session];

  if (!v43)
  {
    goto LABEL_13;
  }

  objc_opt_self();
  v44 = swift_dynamicCastObjCClass();
  if (!v44)
  {

LABEL_13:
    v49 = *(v1 + 144);
    v50 = *(v1 + 120);
    v51 = Logger.liteRelaySession.unsafeMutableAddressor();
    v7(v49, v51, v50);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = *(v1 + 112);
      v55 = swift_slowAlloc();
      *v55 = 134217984;
      *(v55 + 4) = v54;
      _os_log_impl(&dword_0, v52, v53, "Could not process message: failed to find sms lite relay session for command %ld", v55, 0xCu);
    }

    v56 = *(v1 + 144);
    v57 = *(v1 + 120);

    v29(v56, v57);
    goto LABEL_18;
  }

  v45 = *(v1 + 112);
  if (v45 == 140)
  {
    if (![v40 errorCode])
    {
      v59 = [*(v1 + 80) guid];
      if (v59)
      {
        v60 = v59;
        v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v63 = v62;
      }

      else
      {
        v61 = 0;
        v63 = 0;
      }

      v64 = [v40 guid];
      if (v64)
      {
        v65 = v64;
        v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v68 = v67;
      }

      else
      {
        v66 = 0;
        v68 = 0;
      }

      LiteMessageServiceSession.overwriteGUID(for:oldGuid:newGuid:forChat:style:)(*(v1 + 80), v61, v63, v66, v68, *(v1 + 96), *(v1 + 104), *(v1 + 208));

      v68, v69;
      v63, v70;
      goto LABEL_19;
    }
  }

  else if (v45 == 143)
  {
    v46 = *(v1 + 208);
    v47 = v44;
    v48 = String._bridgeToObjectiveC()();
    [v47 didSendMessage:v40 forChat:v48 style:v46];
  }

LABEL_18:
LABEL_19:

  v58 = *(v1 + 8);

  v58();
}

uint64_t partial apply for closure #1 in LiteMessageServiceSession.sendRelayMessage(_:toChat:style:command:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 56);
  v7 = *(v0 + 48);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = partial apply for closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange();

  return closure #1 in LiteMessageServiceSession.sendRelayMessage(_:toChat:style:command:)(v2, v3, v4, v5, v7, v6);
}

void LiteMessageServiceSession.overwriteGUID(for:oldGuid:newGuid:forChat:style:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, int a8)
{
  v9 = v8;
  v45 = a8;
  v43[1] = a6;
  v44 = a7;
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v43 - v20;
  if (!a3 || !a5 || a2 == a4 && a3 == a5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v22 = Logger.liteRelaySession.unsafeMutableAddressor();
    (*(v16 + 16))(v19, v22, v15);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "After relaying, the guid is not changed, no need to update it", v25, 2u);
    }

    (*(v16 + 8))(v19, v15);
  }

  else
  {
    v26 = String._bridgeToObjectiveC()();
    [a1 setGuid:v26];

    v27 = String._bridgeToObjectiveC()();
    [a1 setOriginalGUID:v27];

    v28 = [objc_opt_self() sharedInstance];
    v29 = String._bridgeToObjectiveC()();
    v30 = String._bridgeToObjectiveC()();
    v31 = [v28 reassignIdentifierForExistingMessageWithGUID:v29 toNewGUID:v30];

    if (v31)
    {
      v32 = v31;
      v33 = [v9 broadcasterForChatListeners];
      v34 = [v9 accountID];
      if (!v34)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;
        v34 = String._bridgeToObjectiveC()();
        v36, v37;
      }

      v44 = String._bridgeToObjectiveC()();
      [v33 account:v34 chat:v44 style:v45 messageUpdated:v32 suppressNotification:1];

      swift_unknownObjectRelease();
      v38 = v44;
    }

    else
    {
      v39 = Logger.liteRelaySession.unsafeMutableAddressor();
      (*(v16 + 16))(v21, v39, v15);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_0, v40, v41, "Item not found in database, no need to update it", v42, 2u);
      }

      (*(v16 + 8))(v21, v15);
    }
  }
}

Swift::Void __swiftcall LiteMessageServiceSession.sendRelayDeliveryReceipt(forMessageID:toChat:)(Swift::String forMessageID, Swift::String toChat)
{
  v3 = v2;
  object = toChat._object;
  countAndFlagsBits = toChat._countAndFlagsBits;
  v6 = forMessageID._object;
  v7 = forMessageID._countAndFlagsBits;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = Logger.liteRelaySession.unsafeMutableAddressor();
  (*(v9 + 16))(v11, v12, v8);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  v6, v15;
  v16 = os_log_type_enabled(v13, v14);
  v30 = v7;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v29 = v3;
    v18 = object;
    v19 = countAndFlagsBits;
    v20 = v17;
    v21 = swift_slowAlloc();
    v22 = v7;
    v23 = v21;
    v31 = v21;
    *v20 = 136315138;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v6, &v31);
    _os_log_impl(&dword_0, v13, v14, "Enqueuing relay delivery receipt to send for message %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);

    countAndFlagsBits = v19;
    object = v18;
    v3 = v29;
  }

  (*(v9 + 8))(v11, v8);
  if (one-time initialization token for outgoingMessageQueue != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for AsyncSerialQueue();
  __swift_project_value_buffer(v24, outgoingMessageQueue);
  v25 = swift_allocObject();
  v26 = v30;
  v25[2] = v3;
  v25[3] = v26;
  v25[4] = v6;
  v25[5] = countAndFlagsBits;
  v25[6] = object;

  v27 = v3;

  AsyncSerialQueue.perform(_:)();
}

uint64_t closure #1 in LiteMessageServiceSession.sendRelayDeliveryReceipt(forMessageID:toChat:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a2;
  v5[7] = a3;
  v10 = type metadata accessor for Logger();
  v5[8] = v10;
  v5[9] = *(v10 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = type metadata accessor for MainActor();
  v5[12] = static MainActor.shared.getter();
  v11 = swift_task_alloc();
  v5[13] = v11;
  *v11 = v5;
  v11[1] = closure #1 in LiteMessageServiceSession.sendRelayDeliveryReceipt(forMessageID:toChat:);

  return LiteMessageServiceSession.sendRelayDeliveryReceipt(for:toChat:)(a2, a3, a4, a5);
}

uint64_t closure #1 in LiteMessageServiceSession.sendRelayDeliveryReceipt(forMessageID:toChat:)()
{
  *(*v1 + 112) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = closure #1 in LiteMessageServiceSession.sendRelayDeliveryReceipt(forMessageID:toChat:);
  }

  else
  {
    v4 = closure #1 in LiteMessageServiceSession.sendRelayDeliveryReceipt(forMessageID:toChat:);
  }

  return _swift_task_switch(v4, v3, v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

id closure #1 in LiteMessageServiceSession.sendRelayDeliveryReceipt(forMessageID:toChat:)(uint64_t a1)
{
  v30 = v1;
  v3 = v1[9];
  v2 = v1[10];
  v5 = v1[7];
  v4 = v1[8];
  v6 = Logger.liteRelaySession.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v6, v4);

  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  v5, v9;

  if (os_log_type_enabled(v7, v8))
  {
    v10 = v1[9];
    v28 = v1[10];
    v12 = v1[7];
    v11 = v1[8];
    v13 = v1[6];
    v14 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, &v29);
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v15 = Error.localizedDescription.getter();
    v17 = v16;
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v29);
    v17, v19;
    *(v14 + 14) = v18;
    _os_log_impl(&dword_0, v7, v8, "Failed to send relay delivery receipt for message %s: %s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v28, v11);
  }

  else
  {
    v21 = v1[9];
    v20 = v1[10];
    v22 = v1[8];

    (*(v21 + 8))(v20, v22);
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v24 = result;

    v25 = String._bridgeToObjectiveC()();
    v26 = _convertErrorToNSError(_:)();
    [v24 forceAutoBugCaptureWithSubType:v25 errorPayload:v26];

    v27 = v1[1];

    return v27();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void LiteMessageServiceSession.sendMessage(_:toChat:style:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  LODWORD(v6) = a4;
  v32 = a2;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = Logger.liteSession.unsafeMutableAddressor();
  (*(v10 + 16))(v12, v13, v9);
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v28 = v9;
    v29 = v6;
    v30 = v5;
    v31 = a3;
    v6 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v33 = v17;
    *v6 = 136315138;
    v18 = [v14 guid];

    if (!v18)
    {
      __break(1u);
      return;
    }

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v33);
    v21, v23;
    *(v6 + 4) = v22;
    _os_log_impl(&dword_0, v15, v16, "Enqueuing message to send: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);

    (*(v10 + 8))(v12, v28);
    v5 = v30;
    a3 = v31;
    LOBYTE(v6) = v29;
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  if (one-time initialization token for outgoingMessageQueue != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for AsyncSerialQueue();
  __swift_project_value_buffer(v24, outgoingMessageQueue);
  v25 = swift_allocObject();
  *(v25 + 16) = v5;
  *(v25 + 24) = v14;
  *(v25 + 32) = v32;
  *(v25 + 40) = a3;
  *(v25 + 48) = v6;
  v26 = v14;
  v27 = v5;

  AsyncSerialQueue.perform(_:)();
}

uint64_t closure #1 in LiteMessageServiceSession.sendMessage(_:toChat:style:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  *(v5 + 82) = a5;
  *(v5 + 128) = a3;
  *(v5 + 136) = a4;
  *(v5 + 112) = a1;
  *(v5 + 120) = a2;
  v10 = type metadata accessor for Logger();
  *(v5 + 144) = v10;
  *(v5 + 152) = *(v10 - 8);
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = type metadata accessor for MainActor();
  *(v5 + 184) = static MainActor.shared.getter();
  v11 = swift_task_alloc();
  *(v5 + 192) = v11;
  *v11 = v5;
  v11[1] = closure #1 in LiteMessageServiceSession.sendMessage(_:toChat:style:);

  return LiteMessageServiceSession.encryptAndSendMessageItem(_:chatIdentifier:chatStyle:)(a2, a3, a4, v6);
}

uint64_t closure #1 in LiteMessageServiceSession.sendMessage(_:toChat:style:)()
{
  *(*v1 + 200) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = closure #1 in LiteMessageServiceSession.sendMessage(_:toChat:style:);
  }

  else
  {
    v4 = closure #1 in LiteMessageServiceSession.sendMessage(_:toChat:style:);
  }

  return _swift_task_switch(v4, v3, v2);
}

void closure #1 in LiteMessageServiceSession.sendMessage(_:toChat:style:)(uint64_t a1)
{
  v40 = v1;
  v2 = *(v1 + 168);
  v3 = *(v1 + 144);
  v4 = *(v1 + 152);
  v5 = *(v1 + 120);
  v6 = Logger.liteSession.unsafeMutableAddressor();
  (*(v4 + 16))(v2, v6, v3);
  v7 = v5;

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v1 + 136);
    v11 = *(v1 + 120);
    v12 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v12 = 136315394;
    v13 = [v11 guid];
    v10, v14;

    if (!v13)
    {
      __break(1u);
      goto LABEL_13;
    }

    v15 = *(v1 + 152);
    v37 = *(v1 + 144);
    v38 = *(v1 + 168);
    v17 = *(v1 + 128);
    v16 = *(v1 + 136);
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v39);
    v20, v22;
    *(v12 + 4) = v21;
    *(v12 + 12) = 2080;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, &v39);
    _os_log_impl(&dword_0, v8, v9, "Successfully sent message %s to %s", v12, 0x16u);
    swift_arrayDestroy();

    (*(v15 + 8))(v38, v37);
  }

  else
  {
    v23 = *(v1 + 168);
    v24 = *(v1 + 144);
    v25 = *(v1 + 152);
    v26 = *(v1 + 136);

    v26, v27;
    (*(v25 + 8))(v23, v24);
  }

  [*(v1 + 120) setErrorCode:0];
  v28 = *(v1 + 82);
  v29 = *(v1 + 112);
  v30 = *(v1 + 120);
  LiteMessageServiceSession.sendMessageSentMetric(for:withDetailedError:)(v30, 0, 0, 65280);
  outlined consume of LiteMessageSendError?(0, 0, 65280);
  v31 = String._bridgeToObjectiveC()();
  [v29 didSendMessage:v30 forChat:v31 style:v28];

  if (![v30 errorCode])
  {
    v32 = [*(v1 + 120) guid];
    if (v32)
    {
      v33 = v32;
      v34 = *(v1 + 112);

      v35 = [v34 account];
      [v34 notifyDidSendMessageID:v33 account:v35 shouldNotify:1];

      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    return;
  }

LABEL_9:

  v36 = *(v1 + 8);

  v36();
}

void closure #1 in LiteMessageServiceSession.sendMessage(_:toChat:style:)()
{
  v57 = v0;
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);
  v4 = *(v0 + 120);
  swift_errorRetain();
  v5 = Logger.liteSession.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v5, v3);
  v6 = v4;

  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 120);
    v10 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v10 = 136315650;
    v11 = [v9 guid];
    if (!v11)
    {
LABEL_17:
      v50 = *(v0 + 136);
      v51 = *(v0 + 120);

      v50, v52;

      __break(1u);
      goto LABEL_18;
    }

    v12 = v11;
    v53 = *(v0 + 152);
    v13 = *(v0 + 136);
    v54 = *(v0 + 144);
    v55 = *(v0 + 160);
    v14 = *(v0 + 120);
    v15 = *(v0 + 128);

    v13, v16;

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v56);
    v19, v21;
    *(v10 + 4) = v20;
    *(v10 + 12) = 2080;
    *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v13, &v56);
    *(v10 + 22) = 2080;
    swift_getErrorValue();
    v22 = Error.localizedDescription.getter();
    v24 = v23;
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v56);
    v24, v26;
    *(v10 + 24) = v25;
    _os_log_impl(&dword_0, v7, v8, "Failed to send message %s to %s: %s", v10, 0x20u);
    swift_arrayDestroy();

    (*(v53 + 8))(v55, v54);
  }

  else
  {
    v28 = *(v0 + 152);
    v27 = *(v0 + 160);
    v30 = *(v0 + 136);
    v29 = *(v0 + 144);

    v30, v31;

    (*(v28 + 8))(v27, v29);
  }

  v32 = *(v0 + 120);
  swift_getErrorValue();
  [v32 setErrorCode:Error.liteItemSendErrorCode.getter(*(v0 + 24))];
  v33 = [objc_opt_self() sharedInstance];
  if (!v33)
  {
    __break(1u);
    goto LABEL_17;
  }

  v34 = v33;
  v35 = *(v0 + 200);

  v36 = String._bridgeToObjectiveC()();
  v37 = _convertErrorToNSError(_:)();
  [v34 forceAutoBugCaptureWithSubType:v36 errorPayload:v37];

  *(v0 + 96) = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v38 = *(v0 + 64);
    v39 = *(v0 + 72);
    v40 = *(v0 + 80);
  }

  else
  {
    v38 = 0;
    v39 = 0;
    v40 = 65280;
  }

  v41 = *(v0 + 82);
  v42 = *(v0 + 112);
  v43 = *(v0 + 120);
  LiteMessageServiceSession.sendMessageSentMetric(for:withDetailedError:)(v43, v38, v39, v40);
  outlined consume of LiteMessageSendError?(v38, v39, v40);
  v44 = String._bridgeToObjectiveC()();
  [v42 didSendMessage:v43 forChat:v44 style:v41];

  if (![v43 errorCode])
  {
    v45 = [*(v0 + 120) guid];
    if (v45)
    {
      v46 = v45;
      v47 = *(v0 + 112);

      v48 = [v47 account];
      [v47 notifyDidSendMessageID:v46 account:v48 shouldNotify:1];

      goto LABEL_13;
    }

LABEL_18:
    __break(1u);
    return;
  }

LABEL_13:

  v49 = *(v0 + 8);

  v49();
}

void LiteMessageServiceSession.joinChat(_:handleInfo:style:groupID:joinProperties:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, NSString a6, uint64_t a7)
{
  v11 = String._bridgeToObjectiveC()();
  v12.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (a6)
  {
    a6 = String._bridgeToObjectiveC()();
  }

  if (a7)
  {
    v13.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v13.super.isa = 0;
  }

  isa = v13.super.isa;
  [v7 joinChat:v11 handleInfo:v12.super.isa style:a4 groupID:a6 lastAddressedHandle:0 lastAddressedSIMID:0 joinProperties:v13.super.isa];
}

Swift::Void __swiftcall LiteMessageServiceSession.sessionDidBecomeActive()()
{
  v1 = [objc_opt_self() sharedDaemon];
  if (([v1 respondsToSelector:"isSetupComplete"] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  v2 = [v1 isSetupComplete];
  swift_unknownObjectRelease();
  if ((v2 & 1) == 0)
  {
LABEL_5:
    v3 = [objc_opt_self() defaultCenter];
    [v3 addObserver:v0 selector:"handleDaemonFinishedLaunchingWithNotification:" name:kFZDaemonFinishedLaunchingNotification object:0];

    goto LABEL_6;
  }

  LiteMessageServiceSession.donateHandlesForKeyExchange()();
LABEL_6:
  v4.receiver = v0;
  v4.super_class = LiteMessageServiceSession;
  objc_msgSendSuper2(&v4, "sessionDidBecomeActive");
}

Swift::Void __swiftcall LiteMessageServiceSession.republishOffGridStatusIfNecessary()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v0 - 8);
  v61 = &v60 - v1;
  v2 = type metadata accessor for Date();
  v66 = *(v2 - 8);
  v67 = v2;
  __chkstk_darwin(v2);
  v4 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v62 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v65 = &v60 - v10;
  v11 = __chkstk_darwin(v9);
  v60 = &v60 - v12;
  v13 = __chkstk_darwin(v11);
  v64 = &v60 - v14;
  v15 = __chkstk_darwin(v13);
  v63 = &v60 - v16;
  __chkstk_darwin(v15);
  v18 = &v60 - v17;
  v19 = [objc_opt_self() sharedInstance];
  v70 = [v19 offGridStateManager];

  type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for NSString, NSString_ptr);
  v69 = NSString.init(stringLiteral:)();
  v20 = Logger.liteSession.unsafeMutableAddressor();
  v21 = *(v6 + 16);
  v21(v18, v20, v5);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_0, v22, v23, "Calculate whether to attempt recovery to republish off grid status", v24, 2u);
  }

  v25 = *(v6 + 8);
  v25(v18, v5);
  v26 = [objc_opt_self() sharedInstanceForBagType:1];
  v27 = String._bridgeToObjectiveC()();
  v28 = [v26 objectForKey:v27];

  if (v28)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v72 = 0u;
    v73 = 0u;
  }

  v74[0] = v72;
  v74[1] = v73;
  if (*(&v73 + 1))
  {
    type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v29 = v71;
      v30 = [v71 BOOLValue];

      if (!v30)
      {
        v31 = v62;
        v21(v62, v20, v5);
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&dword_0, v32, v33, "Server bag key has disabled the recovery mechanism, not attempting to recover", v34, 2u);
        }

        else
        {
        }

LABEL_29:
        v59 = v31;
        goto LABEL_30;
      }
    }

    else
    {
    }
  }

  else
  {

    outlined destroy of TaskPriority?(v74, &_sypSgMd, &_sypSgMR);
  }

  v35 = v70;
  if (![v70 publishStatus])
  {
    v31 = v65;
    v21(v65, v20, v5);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_0, v47, v48, "We are already attempting to publish off grid status, not attempting to recover", v49, 2u);
    }

    else
    {
    }

    goto LABEL_29;
  }

  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v37 = v36;
  (*(v66 + 8))(v4, v67);
  v38 = v68 + OBJC_IVAR___LiteMessageServiceSession_state;
  if (v37 - *(v68 + OBJC_IVAR___LiteMessageServiceSession_state + 32) < *(v68 + OBJC_IVAR___LiteMessageServiceSession_state + 40))
  {
    v39 = v63;
    v21(v63, v20, v5);
    v40 = v39;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    v43 = os_log_type_enabled(v41, v42);
    v44 = v69;
    if (v43)
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      v46 = "We have recently come back on grid, not immediately attempting to recover";
LABEL_26:
      _os_log_impl(&dword_0, v41, v42, v46, v45, 2u);

      v59 = v40;
LABEL_30:
      v25(v59, v5);
      return;
    }

    goto LABEL_27;
  }

  v44 = v69;
  [*(v38 + 24) noteItem:v69];
  if (![*(v38 + 24) underLimitForItem:v44])
  {
    v58 = v60;
    v21(v60, v20, v5);
    v40 = v58;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      v46 = "We have already republished our status as part of the recovery mechanism recently, not republishing";
      goto LABEL_26;
    }

LABEL_27:

    v59 = v40;
    goto LABEL_30;
  }

  v21(v64, v20, v5);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_0, v50, v51, "Attempting to republish off grid status as part of recovery", v52, 2u);
  }

  v25(v64, v5);
  v53 = type metadata accessor for TaskPriority();
  v54 = v61;
  (*(*(v53 - 8) + 56))(v61, 1, 1, v53);
  type metadata accessor for MainActor();
  v55 = v35;
  v56 = static MainActor.shared.getter();
  v57 = swift_allocObject();
  v57[2] = v56;
  v57[3] = &protocol witness table for MainActor;
  v57[4] = v55;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v54, &async function pointer to partial apply for closure #1 in LiteMessageServiceSession.republishOffGridStatusIfNecessary(), v57);
}

uint64_t closure #1 in LiteMessageServiceSession.republishOffGridStatusIfNecessary()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[24] = a4;
  v5 = type metadata accessor for Logger();
  v4[25] = v5;
  v4[26] = *(v5 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[29] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[30] = v7;
  v4[31] = v6;

  return _swift_task_switch(closure #1 in LiteMessageServiceSession.republishOffGridStatusIfNecessary(), v7, v6);
}