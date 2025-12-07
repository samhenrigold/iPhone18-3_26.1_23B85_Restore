uint64_t DeregisterKeyPackageRequest.telURI.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DeregisterKeyPackageRequest.pushTokenForTesting.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data?(v1, *(v0 + 24));
  return v1;
}

void outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    outlined copy of Data._Representation(a1, a2);
  }
}

void outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

void DeregisterKeyPackageRequest.pushTokenForTesting.setter(uint64_t a1, uint64_t a2)
{
  outlined consume of Data?(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

void outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    outlined consume of Data._Representation(a1, a2);
  }
}

void outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

void *DeregisterKeyPackageRequest.toIDSMessage(with:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMd, &_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = aBlock - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v11 = v1[3];
  v12 = type metadata accessor for DeregisterKeyPackageRequestMessage();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC24SecureMessagingAgentCore34DeregisterKeyPackageRequestMessage_pushTokenForTesting] = xmmword_2653419D0;
  v14 = &v13[OBJC_IVAR____TtC24SecureMessagingAgentCore34DeregisterKeyPackageRequestMessage_telURI];
  *v14 = v9;
  *(v14 + 1) = v8;
  v23.receiver = v13;
  v23.super_class = v12;

  v15 = objc_msgSendSuper2(&v23, sel_init);
  if (os_variant_has_internal_content())
  {
    v16 = *((*MEMORY[0x277D85000] & *v15) + 0x70);
    outlined copy of Data?(v10, v11);
    v16(v10, v11);
  }

  (*(v4 + 16))(v7, a1, v3);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  (*(v4 + 32))(v18 + v17, v7, v3);
  aBlock[4] = partial apply for closure #1 in DeregisterKeyPackageRequest.toIDSMessage(with:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed IDSBaseMessage?, @guaranteed Error?, @unowned Int, @guaranteed [AnyHashable : Any]?) -> ();
  aBlock[3] = &block_descriptor;
  v19 = _Block_copy(aBlock);
  v20 = v15;

  [v20 setCompletionBlock_];
  _Block_release(v19);

  return v20;
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

id DeregisterKeyPackageRequestMessage.__allocating_init(telURI:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC24SecureMessagingAgentCore34DeregisterKeyPackageRequestMessage_pushTokenForTesting] = xmmword_2653419D0;
  v6 = &v5[OBJC_IVAR____TtC24SecureMessagingAgentCore34DeregisterKeyPackageRequestMessage_telURI];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t closure #1 in DeregisterKeyPackageRequest.toIDSMessage(with:)(int a1, id a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v22[0] = a2;
    v4 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMd, &_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  if (a4)
  {
    AnyHashable.init<A>(_:)();
    if (*(a4 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v22), (v8 & 1) != 0))
    {
      outlined init with copy of Any(*(a4 + 56) + 32 * v7, v21);
      outlined destroy of AnyHashable(v22);
      if (swift_dynamicCast())
      {
        v9 = 0;
        v10 = 0x737574617473;
LABEL_10:
        AnyHashable.init<A>(_:)();
        if (*(a4 + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(v22), (v12 & 1) != 0))
        {
          outlined init with copy of Any(*(a4 + 56) + 32 * v11, v21);
          outlined destroy of AnyHashable(v22);
          if (swift_dynamicCast())
          {
            v14 = 0x746E69682D7478;
            v13 = 0xE700000000000000;
LABEL_16:
            AnyHashable.init<A>(_:)();
            if (*(a4 + 16) && (v15 = specialized __RawDictionaryStorage.find<A>(_:)(v22), (v16 & 1) != 0))
            {
              outlined init with copy of Any(*(a4 + 56) + 32 * v15, v21);
              outlined destroy of AnyHashable(v22);
              if (swift_dynamicCast())
              {
                v17 = 0x6567617373656DLL;
                v18 = 0xE700000000000000;
LABEL_22:
                v22[3] = &type metadata for DeregisterKeyPackageResponse;
                v22[4] = &protocol witness table for DeregisterKeyPackageResponse;
                v19 = swift_allocObject();
                v22[0] = v19;
                *(v19 + 16) = v10;
                *(v19 + 24) = v9;
                *(v19 + 32) = v14;
                *(v19 + 40) = v13;
                *(v19 + 48) = v17;
                *(v19 + 56) = v18;

                __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMd, &_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMR);
                CheckedContinuation.resume(returning:)();
              }
            }

            else
            {
              outlined destroy of AnyHashable(v22);
            }

            v17 = 0;
            v18 = 0;
            goto LABEL_22;
          }
        }

        else
        {
          outlined destroy of AnyHashable(v22);
        }

        v14 = 0;
        v13 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      outlined destroy of AnyHashable(v22);
    }

    v10 = 0;
    v9 = 1;
    goto LABEL_10;
  }

  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 1;
  *(v20 + 32) = 0u;
  *(v20 + 48) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMd, &_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMR);
  return CheckedContinuation.resume(returning:)();
}

void __swiftcall DeregisterKeyPackageResponse.init()(SecureMessagingAgentCore::DeregisterKeyPackageResponse *__return_ptr retstr)
{
  retstr->status.value = 0;
  retstr->status.is_nil = 1;
  retstr->splunkHint = 0u;
  retstr->message = 0u;
}

uint64_t DeregisterKeyPackageRequest.init(telURI:pushTokenForTesting:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t DeregisterKeyPackageResponse.status.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t DeregisterKeyPackageResponse.splunkHint.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DeregisterKeyPackageResponse.splunkHint.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t DeregisterKeyPackageResponse.message.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t DeregisterKeyPackageResponse.message.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void __swiftcall DeregisterKeyPackageResponse.init(status:splunkHint:message:)(SecureMessagingAgentCore::DeregisterKeyPackageResponse *__return_ptr retstr, Swift::Int_optional status, Swift::String_optional splunkHint, Swift::String_optional message)
{
  retstr->status.value = status.value;
  retstr->status.is_nil = status.is_nil;
  retstr->splunkHint = splunkHint;
  retstr->message = message;
}

uint64_t DeregisterKeyPackageRequestMessage.telURI.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore34DeregisterKeyPackageRequestMessage_telURI);

  return v1;
}

uint64_t key path getter for DeregisterKeyPackageRequestMessage.pushTokenForTesting : DeregisterKeyPackageRequestMessage@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x68))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for DeregisterKeyPackageRequestMessage.pushTokenForTesting : DeregisterKeyPackageRequestMessage(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x70);
  outlined copy of Data?(*a1, v3);
  return v4(v2, v3);
}

uint64_t DeregisterKeyPackageRequestMessage.pushTokenForTesting.getter()
{
  v1 = v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore34DeregisterKeyPackageRequestMessage_pushTokenForTesting;
  swift_beginAccess();
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

void DeregisterKeyPackageRequestMessage.pushTokenForTesting.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC24SecureMessagingAgentCore34DeregisterKeyPackageRequestMessage_pushTokenForTesting);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  outlined consume of Data?(v6, v7);
}

id DeregisterKeyPackageRequestMessage.init(telURI:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC24SecureMessagingAgentCore34DeregisterKeyPackageRequestMessage_pushTokenForTesting] = xmmword_2653419D0;
  v3 = &v2[OBJC_IVAR____TtC24SecureMessagingAgentCore34DeregisterKeyPackageRequestMessage_telURI];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for DeregisterKeyPackageRequestMessage();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_26524E8E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMd, &_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in DeregisterKeyPackageRequest.toIDSMessage(with:)(int a1, void *a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMd, &_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMR);

  return closure #1 in DeregisterKeyPackageRequest.toIDSMessage(with:)(a1, a2, a3, a4);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double DeregisterKeyPackageRequestMessage.requiredKeys.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_2653419E0;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 32) = 6910581;
  *(v0 + 40) = 0xE300000000000000;
  return result;
}

unint64_t DeregisterKeyPackageRequestMessage.messageBody.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2653419E0;
  v2 = MEMORY[0x277D837D0];
  AnyHashable.init<A>(_:)();
  v4 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore34DeregisterKeyPackageRequestMessage_telURI);
  v3 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore34DeregisterKeyPackageRequestMessage_telURI + 8);
  *(inited + 96) = v2;
  *(inited + 72) = v4;
  *(inited + 80) = v3;

  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (AnyHashable, Any)(inited + 32);
  return v5;
}

id DeregisterKeyPackageRequestMessage.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DeregisterKeyPackageRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeregisterKeyPackageRequestMessage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t default argument 2 of DaemonPersister.init(fileDir:dbFileName:featureFlagStore:)()
{
  default argument 0 of SMAFeatureFlagsStore.init(overrides:)();

  return SMAFeatureFlagsStore.init(overrides:)();
}

uint64_t default argument 4 of FailureToDecryptRetryModel.init(clientIdentifier:group:messageID:retryCount:timestamp:)()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v6 = v5;
  v7 = v5;
  result = (*(v1 + 8))(v4, v0);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v6 < 9.22337204e18)
  {
    return v6;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t default argument 0 of DaemonPersister.init(fileDir:dbFileName:featureFlagStore:)()
{
  _StringGuts.grow(_:)(27);
  v0 = NSHomeDirectory();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  MEMORY[0x266756A70](0xD000000000000019, 0x80000002653491A0);
  return v1;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (MLS.UniqueClientIdentifier, MLS.KeyPackageProvider)(v4, v13, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t outlined destroy of (AnyHashable, Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
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

uint64_t getEnumTagSinglePayload for DeregisterKeyPackageRequest(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for DeregisterKeyPackageRequest(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DeregisterKeyPackageResponse(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for DeregisterKeyPackageResponse(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging3MLSO9AllMemberOTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_15SecureMessaging3MLSO9AllMemberOtMd, &_sSS_15SecureMessaging3MLSO9AllMemberOtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15SecureMessaging3MLSO9AllMemberOGMd, &_ss18_DictionaryStorageCySS15SecureMessaging3MLSO9AllMemberOGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (MLS.UniqueClientIdentifier, MLS.KeyPackageProvider)(v10, v6, &_sSS_15SecureMessaging3MLSO9AllMemberOtMd, &_sSS_15SecureMessaging3MLSO9AllMemberOtMR);
      v12 = *v6;
      v13 = v6[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for MLS.AllMember();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO9AllMemberO_SayAE14KeyPackageInfoVGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO9AllMemberO_SayAC14KeyPackageInfoVGtMd, &_s15SecureMessaging3MLSO9AllMemberO_SayAC14KeyPackageInfoVGtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO9AllMemberOSayAE14KeyPackageInfoVGGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO9AllMemberOSayAE14KeyPackageInfoVGGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (MLS.UniqueClientIdentifier, MLS.KeyPackageProvider)(v10, v6, &_s15SecureMessaging3MLSO9AllMemberO_SayAC14KeyPackageInfoVGtMd, &_s15SecureMessaging3MLSO9AllMemberO_SayAC14KeyPackageInfoVGtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for MLS.AllMember();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_y24SecureMessagingAgentCore26KDSRegistrationPushHandlerC_SDys11AnyHashableVypGt0cD017RegistrationActorCYccTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySiy24SecureMessagingAgentCore26KDSRegistrationPushHandlerC_SDys11AnyHashableVypGt0cD017RegistrationActorCYccGMd, &_ss18_DictionaryStorageCySiy24SecureMessagingAgentCore26KDSRegistrationPushHandlerC_SDys11AnyHashableVypGt0cD017RegistrationActorCYccGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v13 = *(a1 + 40);
  result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 16 * result) = v13;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v11 = (v7 + 24);
    v4 = *(v7 - 1);
    v13 = *v7;

    result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v7 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO22UniqueClientIdentifierV_0cD9AgentCore0G8XPCProxyVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_0aB9AgentCore0E8XPCProxyVtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_0aB9AgentCore0E8XPCProxyVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v23 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierV0cD9AgentCore0G8XPCProxyVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierV0cD9AgentCore0G8XPCProxyVGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (MLS.UniqueClientIdentifier, MLS.KeyPackageProvider)(v10, v6, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_0aB9AgentCore0E8XPCProxyVtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_0aB9AgentCore0E8XPCProxyVtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for MLS.UniqueClientIdentifier();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = (v8[7] + 48 * v14);
      v18 = *(v9 + 1);
      v19 = *(v9 + 2);
      *v17 = *v9;
      v17[1] = v18;
      v17[2] = v19;
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC24SecureMessagingAgentCore19RegClientIdentifierV_AC012RegistrationH5ProxyVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24SecureMessagingAgentCore19RegClientIdentifierV_AA012RegistrationF5ProxyVtMd, &_s24SecureMessagingAgentCore19RegClientIdentifierV_AA012RegistrationF5ProxyVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v24 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy24SecureMessagingAgentCore19RegClientIdentifierVAC012RegistrationH5ProxyVGMd, &_ss18_DictionaryStorageCy24SecureMessagingAgentCore19RegClientIdentifierVAC012RegistrationH5ProxyVGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (MLS.UniqueClientIdentifier, MLS.KeyPackageProvider)(v10, v6, &_s24SecureMessagingAgentCore19RegClientIdentifierV_AA012RegistrationF5ProxyVtMd, &_s24SecureMessagingAgentCore19RegClientIdentifierV_AA012RegistrationF5ProxyVtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for RegClientIdentifier(0);
      result = outlined init with take of RegClientIdentifier(v6, v15 + *(*(v16 - 8) + 72) * v14);
      v17 = v8[7] + 56 * v14;
      v18 = *v9;
      v19 = *(v9 + 1);
      v20 = *(v9 + 2);
      *(v17 + 48) = *(v9 + 6);
      *(v17 + 16) = v19;
      *(v17 + 32) = v20;
      *v17 = v18;
      v21 = v8[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v8[2] = v23;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO22UniqueClientIdentifierV_AE25SwiftMLSPersisterProtocol_pTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC25SwiftMLSPersisterProtocol_ptMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC25SwiftMLSPersisterProtocol_ptMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVAE25SwiftMLSPersisterProtocol_pGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVAE25SwiftMLSPersisterProtocol_pGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (MLS.UniqueClientIdentifier, MLS.KeyPackageProvider)(v10, v6, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC25SwiftMLSPersisterProtocol_ptMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC25SwiftMLSPersisterProtocol_ptMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for MLS.UniqueClientIdentifier();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = outlined init with take of MLS.SwiftMLSPersisterProtocol(&v6[v9], v8[7] + 40 * v14);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say15SecureMessaging3MLSO17IncomingEventTypeOy_AE9AllMemberO10Foundation4DataVGGTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging15KDSRegistrationO22UniqueClientIdentifierV_0cD9AgentCore0eG0VTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15KDSRegistrationO22UniqueClientIdentifierV_0aB9AgentCore0cE0VtMd, &_s15SecureMessaging15KDSRegistrationO22UniqueClientIdentifierV_0aB9AgentCore0cE0VtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging15KDSRegistrationO22UniqueClientIdentifierV0cD9AgentCore0eG0VGMd, &_ss18_DictionaryStorageCy15SecureMessaging15KDSRegistrationO22UniqueClientIdentifierV0cD9AgentCore0eG0VGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (MLS.UniqueClientIdentifier, MLS.KeyPackageProvider)(v10, v6, &_s15SecureMessaging15KDSRegistrationO22UniqueClientIdentifierV_0aB9AgentCore0cE0VtMd, &_s15SecureMessaging15KDSRegistrationO22UniqueClientIdentifierV_0aB9AgentCore0cE0VtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for KDSRegistration.UniqueClientIdentifier();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 16 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_24SecureMessagingAgentCore27KDSRegistrationStateMachineCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS24SecureMessagingAgentCore27KDSRegistrationStateMachineCGMd, &_ss18_DictionaryStorageCySS24SecureMessagingAgentCore27KDSRegistrationStateMachineCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So17OS_os_transaction_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo17OS_os_transaction_pGMd, &_ss18_DictionaryStorageCySSSo17OS_os_transaction_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO22UniqueClientIdentifierV_AE20SwiftMLSClientPickerOTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC20SwiftMLSClientPickerOtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC20SwiftMLSClientPickerOtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVAE20SwiftMLSClientPickerOGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVAE20SwiftMLSClientPickerOGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (MLS.UniqueClientIdentifier, MLS.KeyPackageProvider)(v10, v6, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC20SwiftMLSClientPickerOtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC20SwiftMLSClientPickerOtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for MLS.UniqueClientIdentifier();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for MLS.SwiftMLSClientPicker();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO22UniqueClientIdentifierV_AE18KeyPackageProviderVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC18KeyPackageProviderVtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC18KeyPackageProviderVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVAE18KeyPackageProviderVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVAE18KeyPackageProviderVGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (MLS.UniqueClientIdentifier, MLS.KeyPackageProvider)(v10, v6, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC18KeyPackageProviderVtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC18KeyPackageProviderVtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for MLS.UniqueClientIdentifier();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for MLS.KeyPackageProvider();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t outlined init with take of MLS.SwiftMLSPersisterProtocol(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t outlined init with take of RegClientIdentifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RegClientIdentifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of (MLS.UniqueClientIdentifier, MLS.KeyPackageProvider)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_265250A2C()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void type metadata accessor for SecCertificateRef()
{
  if (!lazy cache variable for type metadata for SecCertificateRef)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for SecCertificateRef);
    }
  }
}

uint64_t KDSRegistrationKeyPackageExchanger.featureFlagStore.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore34KDSRegistrationKeyPackageExchanger_featureFlagStore;
  v4 = type metadata accessor for SMAFeatureFlagsStore();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

char *KDSRegistrationKeyPackageExchanger.__allocating_init(pushHandler:stateMachineNetworkOperator:userDefaults:featureFlagStore:)(void *a1, void *a2, __int128 *a3, uint64_t a4)
{
  v9 = a1[3];
  v10 = a1[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  v12 = a2[3];
  v13 = a2[4];
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a2, v12);
  v15 = specialized KDSRegistrationKeyPackageExchanger.__allocating_init(pushHandler:stateMachineNetworkOperator:userDefaults:featureFlagStore:)(v11, v14, a3, a4, v4, v9, v12, v10, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v15;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

char *KDSRegistrationKeyPackageExchanger.init(pushHandler:stateMachineNetworkOperator:userDefaults:featureFlagStore:)(void *a1, void *a2, __int128 *a3, uint64_t a4)
{
  v9 = a1[3];
  v8 = a1[4];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  MEMORY[0x28223BE20](v10, v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v15 = a2[3];
  v14 = a2[4];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a2, v15);
  MEMORY[0x28223BE20](v16, v16);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v20 = specialized KDSRegistrationKeyPackageExchanger.init(pushHandler:stateMachineNetworkOperator:userDefaults:featureFlagStore:)(v12, v18, a3, a4, v22[1], v9, v15, v8, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v20;
}

uint64_t KDSRegistrationKeyPackageExchanger.retrieveKeyPackage(members:context:)(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = type metadata accessor for MLS.KeyPackageInfo();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  KeyPackage = type metadata accessor for KDSRegistration.QueryKeyPackageError.ErrorType();
  v3[20] = KeyPackage;
  v3[21] = *(KeyPackage - 8);
  v3[22] = swift_task_alloc();
  v6 = type metadata accessor for SMAFeatureFlagsKey();
  v3[23] = v6;
  v3[24] = *(v6 - 8);
  v3[25] = swift_task_alloc();
  v7 = type metadata accessor for URI();
  v3[26] = v7;
  v3[27] = *(v7 - 8);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v8 = type metadata accessor for MLS.EncryptedRCS.Member();
  v3[30] = v8;
  v3[31] = *(v8 - 8);
  v3[32] = swift_task_alloc();
  v9 = type metadata accessor for MLS.AllMember();
  v3[33] = v9;
  v3[34] = *(v9 - 8);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  type metadata accessor for RegistrationActor();
  v3[41] = static RegistrationActor.shared.getter();
  lazy protocol witness table accessor for type RegistrationActor and conformance RegistrationActor(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20], MEMORY[0x277D4CC28]);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[42] = v11;
  v3[43] = v10;

  return MEMORY[0x2822009F8](KDSRegistrationKeyPackageExchanger.retrieveKeyPackage(members:context:), v11, v10);
}

unint64_t KDSRegistrationKeyPackageExchanger.retrieveKeyPackage(members:context:)()
{
  v1 = v0[13];
  v2 = *(v1 + 16);
  if (!v2)
  {
    v82 = v0[21];
    v81 = v0[22];
    v83 = v0[20];

    (*(v82 + 104))(v81, *MEMORY[0x277D4CAB0], v83);
    type metadata accessor for KDSRegistration.QueryKeyPackageError();
    lazy protocol witness table accessor for type RegistrationActor and conformance RegistrationActor(&lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError and conformance KDSRegistration.QueryKeyPackageError, MEMORY[0x277D4CAD8], MEMORY[0x277D4CAE0]);
    swift_allocError();
    KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    goto LABEL_29;
  }

  v3 = v0[34];
  v4 = v0[31];
  v5 = v0[27];
  v6 = v0[24];
  v7 = v0[16];
  v125 = v0[14];
  v8 = MEMORY[0x277D84F90];
  v141 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging3MLSO9AllMemberOTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v132 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO9AllMemberO_SayAE14KeyPackageInfoVGTt0g5Tf4g_n(v8);
  v9 = *(v3 + 16);
  v3 += 16;
  v136 = *(v3 + 56);
  v0[44] = v136;
  v131 = (v3 + 72);
  v130 = *MEMORY[0x277D4D208];
  v127 = (v4 + 32);
  v128 = (v3 + 80);
  v137 = (v5 + 8);
  v123 = (v3 + 24);
  v124 = (v3 + 16);
  v122 = *MEMORY[0x277D4CC40];
  v120 = (v6 + 8);
  v121 = (v6 + 104);
  v117 = v7;
  v126 = (v4 + 8);
  v129 = (v3 - 8);
  v138 = v9;
  v10 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
  v0[45] = v9;
  do
  {
    v16 = v0[39];
    v15 = v0[40];
    v17 = v0[33];
    v138(v15, v10, v17);
    v138(v16, v15, v17);
    if ((*v131)(v16, v17) != v130)
    {
      v139 = v0[40];
      v84 = v0[39];
      v85 = v0[33];
      v87 = v0[21];
      v86 = v0[22];
      v88 = v0[20];

      v89 = *v129;
      (*v129)(v84, v85);
      (*(v87 + 104))(v86, *MEMORY[0x277D4CAB8], v88);
      type metadata accessor for KDSRegistration.QueryKeyPackageError();
      lazy protocol witness table accessor for type RegistrationActor and conformance RegistrationActor(&lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError and conformance KDSRegistration.QueryKeyPackageError, MEMORY[0x277D4CAD8], MEMORY[0x277D4CAE0]);
      swift_allocError();
      KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)();
      swift_willThrow();
      v89(v139, v85);
LABEL_28:

      goto LABEL_29;
    }

    v18 = v0[39];
    v19 = v0[32];
    v20 = v0[30];
    (*v128)(v18, v0[33]);
    (*v127)(v19, v18, v20);
    v21 = MLS.EncryptedRCS.Member.platform.getter();
    if (v22)
    {
      v90 = v0[40];
      v91 = v0[32];
      v92 = v0[33];
      v93 = v0[30];
      v95 = v0[21];
      v94 = v0[22];
      v96 = v0[20];

      (*(v95 + 104))(v94, *MEMORY[0x277D4CAC8], v96);
      type metadata accessor for KDSRegistration.QueryKeyPackageError();
      lazy protocol witness table accessor for type RegistrationActor and conformance RegistrationActor(&lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError and conformance KDSRegistration.QueryKeyPackageError, MEMORY[0x277D4CAD8], MEMORY[0x277D4CAE0]);
      swift_allocError();
      KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)();
      swift_willThrow();
      (*v126)(v91, v93);
      (*v129)(v90, v92);
      goto LABEL_28;
    }

    v23 = v21;
    v133 = v10;
    v134 = v2;
    v135 = v8;
    v24 = v0[40];
    v25 = v0[38];
    v26 = v0[33];
    v27 = v0[29];
    v28 = v0[26];
    v29 = MLS.AllMember.uri.getter();
    v30 = MEMORY[0x266756630](v29);
    v32 = v31;
    v33 = v27;
    v34 = *v137;
    (*v137)(v33, v28);
    v138(v25, v24, v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result = specialized __RawDictionaryStorage.find<A>(_:)(v30, v32);
    v38 = v141[2];
    v39 = (v37 & 1) == 0;
    v40 = __OFADD__(v38, v39);
    v41 = v38 + v39;
    if (v40)
    {
      __break(1u);
LABEL_46:
      __break(1u);
      return result;
    }

    v42 = v37;
    if (v141[3] >= v41)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v80 = result;
        specialized _NativeDictionary.copy()();
        result = v80;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v41, isUniquelyReferenced_nonNull_native);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v30, v32);
      if ((v42 & 1) != (v43 & 1))
      {

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }
    }

    v44 = v0[38];
    v45 = v0[33];
    if (v42)
    {
      v46 = result;

      v47 = v141;
      (*v123)(v141[7] + v46 * v136, v44, v45);
    }

    else
    {
      v47 = v141;
      v141[(result >> 6) + 8] |= 1 << result;
      v48 = (v141[6] + 16 * result);
      *v48 = v30;
      v48[1] = v32;
      result = (*v124)(v141[7] + result * v136, v44, v45);
      v49 = v141[2];
      v40 = __OFADD__(v49, 1);
      v50 = v49 + 1;
      if (v40)
      {
        goto LABEL_46;
      }

      v141[2] = v50;
    }

    v141 = v47;
    v0[46] = v47;
    if ((static MLS.EncryptedRCS.Platform.isApple(platform:)() & 1) != 0 || (v51 = v0[25], v52 = v0[23], (*v121)(v51, v122, v52), v53 = SMAFeatureFlagsStore.isEnabled(feature:)(), (*v120)(v51, v52), (v53 & 1) == 0))
    {
      v72 = v0[28];
      v73 = v0[26];
      v74 = MLS.AllMember.uri.getter();
      v75 = MEMORY[0x266756630](v74);
      v77 = v76;
      v34(v72, v73);
      v8 = v135;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v135 + 2) + 1, 1, v135);
      }

      v79 = *(v8 + 2);
      v78 = *(v8 + 3);
      if (v79 >= v78 >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1, v8);
      }

      v11 = v0[40];
      v12 = v0[33];
      (*v126)(v0[32], v0[30]);
      v13 = *v129;
      (*v129)(v11, v12);
      *(v8 + 2) = v79 + 1;
      v14 = &v8[24 * v79];
      *(v14 + 4) = v75;
      *(v14 + 5) = v77;
      *(v14 + 6) = v23;
    }

    else
    {
      v54 = v0[28];
      v55 = v0[26];
      v56 = v125[5];
      v57 = v125[6];
      __swift_project_boxed_opaque_existential_1(v125 + 2, v56);
      v58 = MLS.AllMember.uri.getter();
      v59 = MEMORY[0x266756630](v58);
      v61 = v60;
      v34(v54, v55);
      v62 = (*(v57 + 16))(v59, v61, v23, v56, v57);
      v64 = v63;

      if (v64 >> 60 == 15)
      {
        v110 = v0[40];
        v111 = v0[32];
        v112 = v0[33];
        v113 = v0[30];
        v115 = v0[21];
        v114 = v0[22];
        v116 = v0[20];

        (*(v115 + 104))(v114, *MEMORY[0x277D4CAD0], v116);
        type metadata accessor for KDSRegistration.QueryKeyPackageError();
        lazy protocol witness table accessor for type RegistrationActor and conformance RegistrationActor(&lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError and conformance KDSRegistration.QueryKeyPackageError, MEMORY[0x277D4CAD8], MEMORY[0x277D4CAE0]);
        swift_allocError();
        KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)();
        swift_willThrow();
        (*v126)(v111, v113);
        (*v129)(v110, v112);

LABEL_29:

        v97 = v0[1];
LABEL_30:

        return v97();
      }

      v65 = v0[40];
      v66 = v0[32];
      v118 = v0[30];
      v119 = v0[33];
      v67 = v0[19];
      v68 = v0[15];
      outlined copy of Data._Representation(v62, v64);
      MLS.KeyPackageInfo.init(keyPackage:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO14KeyPackageInfoVGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO14KeyPackageInfoVGMR);
      v69 = (*(v117 + 80) + 32) & ~*(v117 + 80);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_2653419E0;
      (*(v117 + 16))(v70 + v69, v67, v68);
      v71 = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v70, v65, v71);
      outlined consume of Data?(v62, v64);
      (*(v117 + 8))(v67, v68);
      (*v126)(v66, v118);
      v13 = *v129;
      (*v129)(v65, v119);
      v8 = v135;
    }

    v0[49] = v8;
    v0[50] = v132;
    v10 = v133 + v136;
    v0[47] = v13;
    v0[48] = v132;
    v2 = v134 - 1;
  }

  while (v134 != 1);
  if (!*(v8 + 2))
  {

    lazy protocol witness table accessor for type RegistrationActor and conformance RegistrationActor(&lazy protocol witness table cache variable for type MLS.AllMember and conformance MLS.AllMember, MEMORY[0x277D4D218], MEMORY[0x277D4D210]);
    MLS.KeyPackageRetrievalResult.init(memberToKeyPackages:)();

    v97 = v0[1];
    goto LABEL_30;
  }

  v98 = v0[14];
  v99 = v98[10];
  v100 = v98[11];
  __swift_project_boxed_opaque_existential_1(v98 + 7, v99);
  v101 = (*(v100 + 16))(v99, v100);
  if (v102 >> 60 == 15)
  {
    v103 = 0;
    v104 = 0xF000000000000000;
  }

  else
  {
    v103 = v101;
    v104 = v102;
    outlined consume of Data?(0, 0xF000000000000000);
  }

  v0[51] = v104;
  v0[52] = v103;
  v105 = v0[14];
  v106 = v105[15];
  v107 = v105[16];
  __swift_project_boxed_opaque_existential_1(v105 + 12, v106);
  v0[9] = v8;
  v0[10] = v103;
  v0[11] = v104;
  v108 = *(v107 + 48);

  outlined copy of Data?(v103, v104);
  v140 = (v108 + *v108);
  v109 = swift_task_alloc();
  v0[53] = v109;
  *v109 = v0;
  v109[1] = KDSRegistrationKeyPackageExchanger.retrieveKeyPackage(members:context:);

  return (v140)(v0 + 2, v0 + 9, v106, v107);
}

{

  v1 = v0[8];

  if (v1)
  {
    v65 = *(v1 + 16);
    if (v65)
    {
      v3 = 0;
      v64 = v1 + 32;
      v69 = v0[46];
      v70 = (v0[16] + 32);
      v62 = v0[48];
      v72 = v0;
      v63 = v1;
      while (1)
      {
        if (v3 >= *(v1 + 16))
        {
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
          return result;
        }

        v4 = (v64 + 24 * v3);
        v5 = *v4;
        v6 = v4[1];
        v7 = v4[2];
        v8 = *(*v4 + 16);
        if (v8)
        {
          v66 = v4[1];
          v68 = v3;
          swift_bridgeObjectRetain_n();
          v67 = v7;

          v9 = (v5 + 40);
          v10 = MEMORY[0x277D84F90];
          do
          {
            v11 = v0[17];
            v12 = v0[18];
            v13 = v10;
            v14 = v0[15];
            v15 = v0[16];
            v16 = *(v9 - 1);
            v17 = *v9;
            outlined copy of Data._Representation(v16, *v9);
            outlined copy of Data._Representation(v16, v17);
            MLS.KeyPackageInfo.init(keyPackage:)();
            v18 = v12;
            v19 = v13;
            (*(v15 + 16))(v11, v18, v14);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1, v13, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO14KeyPackageInfoVGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO14KeyPackageInfoVGMR, MEMORY[0x277D4CCE8]);
            }

            v21 = v19[2];
            v20 = v19[3];
            if (v21 >= v20 >> 1)
            {
              v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v19, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO14KeyPackageInfoVGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO14KeyPackageInfoVGMR, MEMORY[0x277D4CCE8]);
            }

            v9 += 2;
            v22 = v0[17];
            v23 = v0[18];
            v24 = v72[16];
            v25 = v72[15];
            outlined consume of Data._Representation(v16, v17);
            v26 = *(v24 + 8);
            v24 += 8;
            v26(v23, v25);
            v10 = v19;
            v19[2] = v21 + 1;
            v27 = v19 + ((*(v24 + 72) + 32) & ~*(v24 + 72));
            v28 = *(v24 + 64);
            v0 = v72;
            (*v70)(&v27[v28 * v21], v22, v25);
            --v8;
          }

          while (v8);

          v1 = v63;
          v7 = v67;
          v3 = v68;
          v6 = v66;
        }

        else
        {

          v10 = MEMORY[0x277D84F90];
        }

        if (*(v69 + 16))
        {
          v71 = v10;
          v29 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
          if (v30)
          {
            break;
          }
        }

LABEL_5:
        if (++v3 == v65)
        {
          goto LABEL_30;
        }
      }

      v31 = v0;
      v32 = v0[45];
      v33 = v31[36];
      v34 = v31[37];
      v35 = v31[34];
      v36 = v31[35];
      v37 = v31[33];
      v32(v33, *(v69 + 56) + v31[44] * v29, v37);

      (*(v35 + 32))(v34, v33, v37);
      v32(v36, v34, v37);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      result = specialized __RawDictionaryStorage.find<A>(_:)(v36);
      v40 = v62[2];
      v41 = (v39 & 1) == 0;
      v42 = __OFADD__(v40, v41);
      v43 = v40 + v41;
      if (v42)
      {
        goto LABEL_37;
      }

      v44 = v39;
      if (v62[3] >= v43)
      {
        v45 = v72;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v48 = result;
          specialized _NativeDictionary.copy()();
          result = v48;
          if (v44)
          {
            goto LABEL_25;
          }

          goto LABEL_27;
        }
      }

      else
      {
        v45 = v72;
        v46 = v72[35];
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v43, isUniquelyReferenced_nonNull_native);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v46);
        if ((v44 & 1) != (v47 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }
      }

      if (v44)
      {
LABEL_25:
        *(v62[7] + 8 * result) = v71;

LABEL_29:
        v56 = v72[47];
        v57 = v72[37];
        v58 = v72[33];
        v56(v72[35], v58);
        result = v56(v57, v58);
        v0 = v72;
        v1 = v63;
        goto LABEL_5;
      }

LABEL_27:
      v49 = v45[44];
      v50 = v45[45];
      v51 = v45[35];
      v52 = v45[33];
      v62[(result >> 6) + 8] |= 1 << result;
      v53 = result;
      result = v50(v62[6] + v49 * result, v51, v52);
      *(v62[7] + 8 * v53) = v71;
      v54 = v62[2];
      v42 = __OFADD__(v54, 1);
      v55 = v54 + 1;
      if (v42)
      {
        goto LABEL_38;
      }

      v62[2] = v55;
      goto LABEL_29;
    }
  }

LABEL_30:

  v59 = v0[51];
  v60 = v0[52];
  lazy protocol witness table accessor for type RegistrationActor and conformance RegistrationActor(&lazy protocol witness table cache variable for type MLS.AllMember and conformance MLS.AllMember, MEMORY[0x277D4D218], MEMORY[0x277D4D210]);
  MLS.KeyPackageRetrievalResult.init(memberToKeyPackages:)();

  outlined consume of Data?(v60, v59);

  v61 = v0[1];

  return v61();
}

uint64_t KDSRegistrationKeyPackageExchanger.retrieveKeyPackage(members:context:)()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v3 = v2[10];
    v4 = v2[11];

    outlined consume of Data?(v3, v4);

    v5 = v2[42];
    v6 = v2[43];
    v7 = KDSRegistrationKeyPackageExchanger.retrieveKeyPackage(members:context:);
  }

  else
  {
    v8 = v2[10];
    v9 = v2[11];

    outlined consume of Data?(v8, v9);
    v5 = v2[42];
    v6 = v2[43];
    v7 = KDSRegistrationKeyPackageExchanger.retrieveKeyPackage(members:context:);
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

{
  v1 = v0[51];
  v2 = v0[52];

  outlined consume of Data?(v2, v1);

  v3 = v0[1];

  return v3();
}

char *KDSRegistrationKeyPackageExchanger.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  v1 = OBJC_IVAR____TtC24SecureMessagingAgentCore34KDSRegistrationKeyPackageExchanger_featureFlagStore;
  v2 = type metadata accessor for SMAFeatureFlagsStore();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  return v0;
}

uint64_t KDSRegistrationKeyPackageExchanger.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  v1 = OBJC_IVAR____TtC24SecureMessagingAgentCore34KDSRegistrationKeyPackageExchanger_featureFlagStore;
  v2 = type metadata accessor for SMAFeatureFlagsStore();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 120) + **(*v3 + 120));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return v10(a1, a2, a3);
}

uint64_t protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24SecureMessagingAgentCore14QueryRecipientVGMd, &_ss23_ContiguousArrayStorageCy24SecureMessagingAgentCore14QueryRecipientVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24SecureMessagingAgentCore0dE11ClientModelVGMd, &_ss23_ContiguousArrayStorageCy24SecureMessagingAgentCore0dE11ClientModelVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24SecureMessagingAgentCore0dE10GroupModelVGMd, &_ss23_ContiguousArrayStorageCy24SecureMessagingAgentCore0dE10GroupModelVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24SecureMessagingAgentCore16GroupMemberModelVGMd, &_ss23_ContiguousArrayStorageCy24SecureMessagingAgentCore16GroupMemberModelVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24SecureMessagingAgentCore26FailureToDecryptRetryModelVGMd, &_ss23_ContiguousArrayStorageCy24SecureMessagingAgentCore26FailureToDecryptRetryModelVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24SecureMessagingAgentCore14KeyUpdateModelVGMd, &_ss23_ContiguousArrayStorageCy24SecureMessagingAgentCore14KeyUpdateModelVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24SecureMessagingAgentCore18OutgoingEventModelVGMd, &_ss23_ContiguousArrayStorageCy24SecureMessagingAgentCore18OutgoingEventModelVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24SecureMessagingAgentCore18IncomingEventModelVGMd, &_ss23_ContiguousArrayStorageCy24SecureMessagingAgentCore18IncomingEventModelVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24SecureMessagingAgentCore16ClientStateModelVGMd, &_ss23_ContiguousArrayStorageCy24SecureMessagingAgentCore16ClientStateModelVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24SecureMessagingAgentCore10EpochModelVGMd, &_ss23_ContiguousArrayStorageCy24SecureMessagingAgentCore10EpochModelVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24SecureMessagingAgentCore15GroupStateModelVGMd, &_ss23_ContiguousArrayStorageCy24SecureMessagingAgentCore15GroupStateModelVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24SecureMessagingAgentCore17StateMachineModelVGMd, &_ss23_ContiguousArrayStorageCy24SecureMessagingAgentCore17StateMachineModelVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 176);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[176 * v8])
    {
      memmove(v12, v13, 176 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24SecureMessagingAgentCore20RecipientKeyPackagesVGMd, &_ss23_ContiguousArrayStorageCy24SecureMessagingAgentCore20RecipientKeyPackagesVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
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

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO17OutgoingEventTypeOy_AE9AllMemberO10Foundation4DataVG_AE0gH5StateVSgAE12GroupVersionVtGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO17OutgoingEventTypeOy_AE9AllMemberO10Foundation4DataVG_AE0gH5StateVSgAE12GroupVersionVtGMR, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVG_AC0dE5StateVSgAC12GroupVersionVtMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVG_AC0dE5StateVSgAC12GroupVersionVtMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO17IncomingEventTypeOy_AE9AllMemberO10Foundation4DataVGGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO17IncomingEventTypeOy_AE9AllMemberO10Foundation4DataVGGMR, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO18OutgoingEventStateVGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO18OutgoingEventStateVGMR, MEMORY[0x277D4CF20]);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySDySSypGGMd, &_ss23_ContiguousArrayStorageCySDySSypGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  type metadata accessor for MLS.AllMember();
  v2 = MEMORY[0x277D4D218];
  lazy protocol witness table accessor for type RegistrationActor and conformance RegistrationActor(&lazy protocol witness table cache variable for type MLS.AllMember and conformance MLS.AllMember, MEMORY[0x277D4D218], MEMORY[0x277D4D228]);
  v3 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3, MEMORY[0x277D4D218], &lazy protocol witness table cache variable for type MLS.AllMember and conformance MLS.AllMember, v2, MEMORY[0x277D4D230]);
}

{
  v3 = MEMORY[0x266756F40](*(v1 + 40), a1);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  type metadata accessor for MLS.UniqueClientIdentifier();
  v2 = MEMORY[0x277D4D000];
  lazy protocol witness table accessor for type RegistrationActor and conformance RegistrationActor(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D010]);
  v3 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3, MEMORY[0x277D4D000], &lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, v2, MEMORY[0x277D4D018]);
}

{
  Hasher.init(_seed:)();
  type metadata accessor for MLS.ClientIdentifier();
  lazy protocol witness table accessor for type RegistrationActor and conformance RegistrationActor(&lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier, MEMORY[0x277D4CD48], MEMORY[0x277D4CD58]);
  dispatch thunk of Hashable.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  type metadata accessor for KDSRegistration.UniqueClientIdentifier();
  v2 = MEMORY[0x277D4CAE8];
  lazy protocol witness table accessor for type RegistrationActor and conformance RegistrationActor(&lazy protocol witness table cache variable for type KDSRegistration.UniqueClientIdentifier and conformance KDSRegistration.UniqueClientIdentifier, MEMORY[0x277D4CAE8], MEMORY[0x277D4CAF8]);
  v3 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3, MEMORY[0x277D4CAE8], &lazy protocol witness table cache variable for type KDSRegistration.UniqueClientIdentifier and conformance KDSRegistration.UniqueClientIdentifier, v2, MEMORY[0x277D4CB00]);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x266756C90](v9, a1);
      outlined destroy of AnyHashable(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v3 = v2;
  v5 = type metadata accessor for RegClientIdentifier(0) - 8;
  MEMORY[0x28223BE20](v5, v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = -1 << *(v3 + 32);
  v11 = a2 & ~v10;
  if ((*(v3 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v7 + 72);
    while (1)
    {
      outlined init with copy of RegClientIdentifier(*(v3 + 48) + v13 * v11, v9);
      type metadata accessor for MLS.ClientIdentifier();
      lazy protocol witness table accessor for type RegistrationActor and conformance RegistrationActor(&lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier, MEMORY[0x277D4CD48], MEMORY[0x277D4CD60]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v17[2] == v17[0] && v17[3] == v17[1])
      {
        break;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined destroy of RegClientIdentifier(v9);

      if ((v15 & 1) == 0)
      {
        v11 = (v11 + 1) & v12;
        if ((*(v3 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
        {
          continue;
        }
      }

      return v11;
    }

    outlined destroy of RegClientIdentifier(v9);
  }

  return v11;
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      lazy protocol witness table accessor for type RegistrationActor and conformance RegistrationActor(v24, v25, v26);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for MLS.AllMember();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO9AllMemberOSayAE14KeyPackageInfoVGGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO9AllMemberOSayAE14KeyPackageInfoVGGMR);
  v40 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v44 = v9;
    v36 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v10;
    v39 = v6;
    v41 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v43 = *(v39 + 72);
      v26 = v25 + v43 * v24;
      if (v40)
      {
        (*v41)(v44, v26, v5);
        v42 = *(*(v10 + 56) + 8 * v24);
      }

      else
      {
        (*v37)(v44, v26, v5);
        v42 = *(*(v10 + 56) + 8 * v24);
      }

      lazy protocol witness table accessor for type RegistrationActor and conformance RegistrationActor(&lazy protocol witness table cache variable for type MLS.AllMember and conformance MLS.AllMember, MEMORY[0x277D4D218], MEMORY[0x277D4D228]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(v12 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v19 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v19 + 8 * v29);
          if (v33 != -1)
          {
            v20 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v28) & ~*(v19 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v41)(*(v12 + 48) + v43 * v20, v44, v5);
      *(*(v12 + 56) + 8 * v20) = v42;
      ++*(v12 + 16);
      v10 = v38;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v10 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v14, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v34;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        outlined init with take of Any((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        outlined init with copy of AnyHashable(v23, &v36);
        outlined init with copy of Any(*(v5 + 56) + 32 * v22, v35);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = outlined init with take of Any(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for MLS.UniqueClientIdentifier();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierV0cD9AgentCore0G8XPCProxyVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierV0cD9AgentCore0G8XPCProxyVGMR);
  v46 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v49 = v9;
    v50 = v5;
    v42 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v43 = (v6 + 16);
    v44 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    v45 = v10;
    while (v17)
    {
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v48 = *(v6 + 72);
      v28 = v27 + v48 * v26;
      if (v46)
      {
        (*v47)(v49, v28, v50);
        v29 = (*(v10 + 56) + 48 * v26);
        v30 = v29[1];
        v52 = *v29;
        v53 = v30;
        v51 = v29[2];
      }

      else
      {
        (*v43)(v49, v28, v50);
        v31 = (*(v10 + 56) + 48 * v26);
        v32 = v31[1];
        v52 = *v31;
        v53 = v32;
        v51 = v31[2];
        swift_unknownObjectRetain();

        swift_unknownObjectRetain();
      }

      lazy protocol witness table accessor for type RegistrationActor and conformance RegistrationActor(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D010]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v6 = v44;
        v10 = v45;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v6 = v44;
      v10 = v45;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v47)(*(v12 + 48) + v48 * v20, v49, v50);
      v21 = (*(v12 + 56) + 48 * v20);
      v22 = v53;
      *v21 = v52;
      v21[1] = v22;
      v21[2] = v51;
      ++*(v12 + 16);
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v25 = v14[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v17 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_34;
    }

    v40 = 1 << *(v10 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for MLS.UniqueClientIdentifier();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVAE25SwiftMLSPersisterProtocol_pGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVAE25SwiftMLSPersisterProtocol_pGMR);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v42 = v9;
    v43 = v5;
    v35 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v19 = result + 64;
    v38 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v41 = *(v6 + 72);
      v26 = v25 + v41 * v24;
      if (v39)
      {
        (*v40)(v42, v26, v43);
        outlined init with take of MLS.SwiftMLSPersisterProtocol((*(v10 + 56) + 40 * v24), v44);
      }

      else
      {
        (*v36)(v42, v26, v43);
        outlined init with copy of SMAUserDefaultsProtocol(*(v10 + 56) + 40 * v24, v44);
      }

      lazy protocol witness table accessor for type RegistrationActor and conformance RegistrationActor(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D010]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(v12 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v19 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v6 = v37;
        v10 = v38;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v19 + 8 * v29);
          if (v33 != -1)
          {
            v20 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v28) & ~*(v19 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v6 = v37;
      v10 = v38;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v40)((*(v12 + 48) + v41 * v20), v42, v43);
      result = outlined init with take of MLS.SwiftMLSPersisterProtocol(v44, *(v12 + 56) + 40 * v20);
      ++*(v12 + 16);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v10 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v14, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v34;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for KDSRegistration.UniqueClientIdentifier();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging15KDSRegistrationO22UniqueClientIdentifierV0cD9AgentCore0eG0VGMd, &_ss18_DictionaryStorageCy15SecureMessaging15KDSRegistrationO22UniqueClientIdentifierV0cD9AgentCore0eG0VGMR);
  v40 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v43 = v9;
    v44 = v5;
    v36 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v19 = result + 64;
    v39 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v42 = *(v6 + 72);
      v26 = v25 + v42 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v44);
        v45 = *(*(v10 + 56) + 16 * v24);
      }

      else
      {
        (*v37)(v43, v26, v44);
        v45 = *(*(v10 + 56) + 16 * v24);
        swift_unknownObjectRetain();
      }

      lazy protocol witness table accessor for type RegistrationActor and conformance RegistrationActor(&lazy protocol witness table cache variable for type KDSRegistration.UniqueClientIdentifier and conformance KDSRegistration.UniqueClientIdentifier, MEMORY[0x277D4CAE8], MEMORY[0x277D4CAF8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(v12 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v19 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v6 = v38;
        v10 = v39;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v19 + 8 * v29);
          if (v33 != -1)
          {
            v20 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v28) & ~*(v19 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v6 = v38;
      v10 = v39;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v41)(*(v12 + 48) + v42 * v20, v43, v44);
      *(*(v12 + 56) + 16 * v20) = v45;
      ++*(v12 + 16);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v10 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v14, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v34;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v46 = type metadata accessor for MLS.AllMember();
  v5 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v6);
  v45 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15SecureMessaging3MLSO9AllMemberOGMd, &_ss18_DictionaryStorageCySS15SecureMessaging3MLSO9AllMemberOGMR);
  v43 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v39 = v2;
    v40 = (v5 + 16);
    v41 = v8;
    v42 = v5;
    v44 = (v5 + 32);
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 56);
      v25 = (*(v8 + 48) + 16 * v23);
      v27 = *v25;
      v26 = v25[1];
      v28 = *(v42 + 72);
      v29 = v24 + v28 * v23;
      if (v43)
      {
        (*v44)(v45, v29, v46);
      }

      else
      {
        (*v40)(v45, v29, v46);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v27;
      v19[1] = v26;
      result = (*v44)(*(v10 + 56) + v28 * v18, v45, v46);
      ++*(v10 + 16);
      v8 = v41;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v8 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for RegClientIdentifier(0);
  v45 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy24SecureMessagingAgentCore19RegClientIdentifierVAC012RegistrationH5ProxyVGMd, &_ss18_DictionaryStorageCy24SecureMessagingAgentCore19RegClientIdentifierVAC012RegistrationH5ProxyVGMR);
  v46 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v2;
    v44 = v9;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v24 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v27 = v24 | (v12 << 6);
      v28 = *(v45 + 72);
      v29 = *(v9 + 48) + v28 * v27;
      if (v46)
      {
        outlined init with take of RegClientIdentifier(v29, v8);
        v30 = *(v9 + 56) + 56 * v27;
        v32 = *(v30 + 16);
        v31 = *(v30 + 32);
        v33 = *v30;
        v50 = *(v30 + 48);
        v48 = v32;
        v49 = v31;
        v47 = v33;
      }

      else
      {
        outlined init with copy of RegClientIdentifier(v29, v8);
        outlined init with copy of RegistrationClientProxy(*(v9 + 56) + 56 * v27, &v47);
      }

      Hasher.init(_seed:)();
      type metadata accessor for MLS.ClientIdentifier();
      lazy protocol witness table accessor for type RegistrationActor and conformance RegistrationActor(&lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier, MEMORY[0x277D4CD48], MEMORY[0x277D4CD58]);
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v34 = -1 << *(v11 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v18 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v9 = v44;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v18 + 8 * v36);
          if (v40 != -1)
          {
            v19 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v35) & ~*(v18 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v9 = v44;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = outlined init with take of RegClientIdentifier(v8, *(v11 + 48) + v28 * v19);
      v20 = *(v11 + 56) + 56 * v19;
      v21 = v50;
      v23 = v48;
      v22 = v49;
      *v20 = v47;
      *(v20 + 16) = v23;
      *(v20 + 32) = v22;
      *(v20 + 48) = v21;
      ++*(v11 + 16);
    }

    v25 = v12;
    while (1)
    {
      v12 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v26 = v13[v12];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v16 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_34;
    }

    v41 = 1 << *(v9 + 32);
    v3 = v43;
    if (v41 >= 64)
    {
      bzero(v13, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v41;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO17OutgoingEventTypeOy_AE9AllMemberO10Foundation4DataVG_AE0fG5StateVSgAE12GroupVersionVtGGMd, &_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO17OutgoingEventTypeOy_AE9AllMemberO10Foundation4DataVG_AE0fG5StateVSgAE12GroupVersionVtGGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO17IncomingEventTypeOy_AE9AllMemberO10Foundation4DataVGGGMd, &_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO17IncomingEventTypeOy_AE9AllMemberO10Foundation4DataVGGGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO18OutgoingEventStateVGGMd, &_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO18OutgoingEventStateVGGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS24SecureMessagingAgentCore27KDSRegistrationStateMachineCGMd, &_ss18_DictionaryStorageCySS24SecureMessagingAgentCore27KDSRegistrationStateMachineCGMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo17OS_os_transaction_pGMd, &_ss18_DictionaryStorageCySSSo17OS_os_transaction_pGMR);
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

        swift_unknownObjectRetain();
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

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v9 = a2;
  v58 = a3(0);
  v10 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v11);
  v57 = &v46 - v12;
  v13 = type metadata accessor for MLS.UniqueClientIdentifier();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v59 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v53 = v9;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v19 = result;
  if (*(v17 + 16))
  {
    v20 = 0;
    v21 = (v17 + 64);
    v22 = 1 << *(v17 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v14;
    v25 = v23 & *(v17 + 64);
    v26 = (v22 + 63) >> 6;
    v49 = (v24 + 16);
    v50 = v24;
    v47 = v5;
    v48 = v10 + 16;
    v51 = v17;
    v52 = v10;
    v54 = (v10 + 32);
    v55 = (v24 + 32);
    v27 = result + 64;
    while (v25)
    {
      v29 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_15:
      v32 = v29 | (v20 << 6);
      v33 = *(v17 + 48);
      v56 = *(v24 + 72);
      v34 = v33 + v56 * v32;
      if (v53)
      {
        (*v55)(v59, v34, v13);
        v35 = *(v17 + 56);
        v36 = *(v52 + 72);
        (*(v52 + 32))(v57, v35 + v36 * v32, v58);
      }

      else
      {
        (*v49)(v59, v34, v13);
        v37 = *(v17 + 56);
        v36 = *(v52 + 72);
        (*(v52 + 16))(v57, v37 + v36 * v32, v58);
      }

      lazy protocol witness table accessor for type RegistrationActor and conformance RegistrationActor(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D010]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v38 = -1 << *(v19 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v27 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v27 + 8 * v40);
          if (v44 != -1)
          {
            v28 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v28 = __clz(__rbit64((-1 << v39) & ~*(v27 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v27 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      (*v55)((*(v19 + 48) + v56 * v28), v59, v13);
      result = (*v54)(*(v19 + 56) + v36 * v28, v57, v58);
      ++*(v19 + 16);
      v24 = v50;
      v17 = v51;
    }

    v30 = v20;
    while (1)
    {
      v20 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v20 >= v26)
      {
        break;
      }

      v31 = v21[v20];
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v25 = (v31 - 1) & v31;
        goto LABEL_15;
      }
    }

    if ((v53 & 1) == 0)
    {

      v8 = v47;
      goto LABEL_34;
    }

    v45 = 1 << *(v17 + 32);
    v8 = v47;
    if (v45 >= 64)
    {
      bzero(v21, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v21 = -1 << v45;
    }

    *(v17 + 16) = 0;
  }

LABEL_34:
  *v8 = v19;
  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for MLS.AllMember();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
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
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a3 & 1);
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v19 & 1) == (v24 & 1))
    {
      v15 = v23;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v21[7] + 8 * v15) = a1;
}

{
  v4 = v3;
  v8 = type metadata accessor for RegClientIdentifier(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      outlined init with copy of RegClientIdentifier(a2, v11);
      return specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7] + 56 * v14;

  return outlined assign with take of RegistrationClientProxy(a1, v21);
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      outlined init with copy of AnyHashable(a2, v21);
      return specialized _NativeDictionary._insert(at:key:value:)(v10, v21, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);

  return outlined init with take of Any(a1, v17);
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for MLS.UniqueClientIdentifier();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v22 = v13[2];
  v23 = (v14 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
    goto LABEL_15;
  }

  v25 = v14;
  v26 = v13[3];
  if (v26 < v24 || (a3 & 1) == 0)
  {
    if (v26 >= v24 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, a3 & 1);
    v39 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v25 & 1) == (v14 & 1))
    {
      v21 = v39;
      v27 = *v4;
      if (v25)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      specialized _NativeDictionary._insert(at:key:value:)(v21, v12, a1, v27);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v27 = *v4;
  if ((v25 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v28 = v27[7] + 48 * v21;
  v29 = *v28;
  v30 = *(v28 + 32);
  v31 = a1[1];
  *v28 = *a1;
  *(v28 + 16) = v31;
  *(v28 + 32) = a1[2];
  swift_unknownObjectRelease(v30, v14, v15, v16, v17, v18, v19, v20);

  swift_unknownObjectRelease(v29, v32, v33, v34, v35, v36, v37, v38);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, &_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO17OutgoingEventTypeOy_AE9AllMemberO10Foundation4DataVG_AE0fG5StateVSgAE12GroupVersionVtGGMd, &_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO17OutgoingEventTypeOy_AE9AllMemberO10Foundation4DataVG_AE0fG5StateVSgAE12GroupVersionVtGGMR);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, &_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO17IncomingEventTypeOy_AE9AllMemberO10Foundation4DataVGGGMd, &_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO17IncomingEventTypeOy_AE9AllMemberO10Foundation4DataVGGGMR);
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

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, &_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO18OutgoingEventStateVGGMd, &_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO18OutgoingEventStateVGGMR);
}

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
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
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
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for MLS.UniqueClientIdentifier();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
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
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a3 & 1);
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v19 & 1) == (v25 & 1))
    {
      v15 = v24;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = (v21[7] + 40 * v15);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);

  return outlined init with take of MLS.SwiftMLSPersisterProtocol(a1, v22);
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v36 = a1;
  v9 = type metadata accessor for KDSRegistration.UniqueClientIdentifier();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
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
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 >= v19 && (a4 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_9;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, a4 & 1);
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if ((v20 & 1) == (v23 & 1))
    {
      v16 = v22;
      goto LABEL_9;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_9:
  v24 = v36;
  v25 = *v5;
  if (v20)
  {
    v26 = v25[7] + 16 * v16;
    v27 = *v26;
    *v26 = v36;
    *(v26 + 8) = a2;

    swift_unknownObjectRelease(v27, v28, v29, v30, v31, v32, v33, v34);
  }

  else
  {
    (*(v10 + 16))(v13, a3, v9);
    specialized _NativeDictionary._insert(at:key:value:)(v16, v13, v24, a2, v25);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, MEMORY[0x277D4CF18], &_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVAE18KeyPackageProviderVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVAE18KeyPackageProviderVGMR, MEMORY[0x277D4CF18]);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, MEMORY[0x277D4CFD0], &_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVAE20SwiftMLSClientPickerOGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVAE20SwiftMLSClientPickerOGMR, MEMORY[0x277D4CFD0]);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void), uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v36 = a7;
  v37 = a5;
  v38 = a6;
  v9 = v7;
  v35 = type metadata accessor for MLS.UniqueClientIdentifier();
  v13 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v7;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v20 = v17[2];
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_15;
  }

  v23 = v18;
  v24 = v17[3];
  if (v24 < v22 || (a3 & 1) == 0)
  {
    if (v24 >= v22 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()(a4, v37, v38);
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v22, a3 & 1, a4, v37, v38);
    v33 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v23 & 1) == (v34 & 1))
    {
      v19 = v33;
      v25 = *v9;
      if (v23)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v13 + 16))(v16, a2, v35);
      return specialized _NativeDictionary._insert(at:key:value:)(v19, v16, a1, v25, a4);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v25 = *v9;
  if ((v23 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v26 = v25[7];
  v27 = v36(0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 40);
  v30 = v27;
  v31 = v26 + *(v28 + 72) * v19;

  return v29(v31, a1, v30);
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for MLS.AllMember();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for RegClientIdentifier(0);
  result = outlined init with take of RegClientIdentifier(a2, v8 + *(*(v9 - 8) + 72) * a1);
  v11 = a4[7] + 56 * a1;
  *(v11 + 48) = *(a3 + 48);
  v12 = *(a3 + 32);
  *(v11 + 16) = *(a3 + 16);
  *(v11 + 32) = v12;
  *v11 = *a3;
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for MLS.UniqueClientIdentifier();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v11 = (a4[7] + 48 * a1);
  v12 = a3[2];
  v11[1] = a3[1];
  v11[2] = v12;
  *v11 = *a3;
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for MLS.UniqueClientIdentifier();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = outlined init with take of MLS.SwiftMLSPersisterProtocol(a3, a4[7] + 40 * a1);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for KDSRegistration.UniqueClientIdentifier();
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

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = type metadata accessor for MLS.UniqueClientIdentifier();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v12 = a4[7];
  v13 = a5(0);
  result = (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a3, v13);
  v15 = a4[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v17;
  }

  return result;
}

char *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v34 = type metadata accessor for MLS.AllMember();
  v36 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v2);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO9AllMemberOSayAE14KeyPackageInfoVGGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO9AllMemberOSayAE14KeyPackageInfoVGGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
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

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
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
  v36 = type metadata accessor for MLS.AllMember();
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v2);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15SecureMessaging3MLSO9AllMemberOGMd, &_ss18_DictionaryStorageCySS15SecureMessaging3MLSO9AllMemberOGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
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

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
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
  v2 = type metadata accessor for MLS.UniqueClientIdentifier();
  v3 = *(v2 - 8);
  v44 = v2;
  v45 = v3;
  MEMORY[0x28223BE20](v2, v4);
  v43 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierV0cD9AgentCore0G8XPCProxyVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierV0cD9AgentCore0G8XPCProxyVGMR);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v37 = v1;
    v38 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v46 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v39 = v45 + 32;
    v40 = v45 + 16;
    v41 = v17;
    v42 = v6;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v48 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = v44;
        v23 = v45;
        v24 = *(v45 + 72) * v21;
        v25 = v43;
        (*(v45 + 16))(v43, *(v6 + 48) + v24, v44);
        v26 = *(v6 + 56);
        v27 = 48 * v21;
        v28 = (v26 + 48 * v21);
        v29 = *v28;
        v30 = v28[1];
        v31 = v28[2];
        v47 = v28[3];
        v32 = v46;
        v33 = *(v46 + 48);
        v34 = *(v23 + 32);
        v49 = *(v28 + 2);
        v34(v33 + v24, v25, v22);
        v35 = *(v32 + 56) + v27;
        v6 = v42;
        *v35 = v29;
        *(v35 + 8) = v30;
        v36 = v47;
        *(v35 + 16) = v31;
        *(v35 + 24) = v36;
        *(v35 + 32) = v49;
        swift_unknownObjectRetain();

        result = swift_unknownObjectRetain();
        v17 = v41;
        v16 = v48;
      }

      while (v48);
    }

    v19 = v12;
    v8 = v46;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v37;
        goto LABEL_18;
      }

      v20 = *(v38 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v48 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(MEMORY[0x277D4CF18], &_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVAE18KeyPackageProviderVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVAE18KeyPackageProviderVGMR);
}

{
  return specialized _NativeDictionary.copy()(MEMORY[0x277D4CFD0], &_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVAE20SwiftMLSClientPickerOGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVAE20SwiftMLSClientPickerOGMR);
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
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
        v18 = 40 * v17;
        outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        outlined init with copy of Any(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = outlined init with take of Any(v22, (*(v4 + 56) + v17));
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
  v2 = type metadata accessor for RegClientIdentifier(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy24SecureMessagingAgentCore19RegClientIdentifierVAC012RegistrationH5ProxyVGMd, &_ss18_DictionaryStorageCy24SecureMessagingAgentCore19RegClientIdentifierVAC012RegistrationH5ProxyVGMR);
  v7 = *v0;
  v8 = static _DictionaryStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v28 = v1;
    result = (v8 + 64);
    v11 = v7 + 64;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 64), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 64);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = v19 | (v13 << 6);
        v23 = *(v3 + 72) * v22;
        outlined init with copy of RegClientIdentifier(*(v7 + 48) + v23, v6);
        v22 *= 56;
        outlined init with copy of RegistrationClientProxy(*(v7 + 56) + v22, v29);
        result = outlined init with take of RegClientIdentifier(v6, *(v9 + 48) + v23);
        v24 = *(v9 + 56) + v22;
        v25 = v30;
        v26 = v29[2];
        v27 = v29[1];
        *v24 = v29[0];
        *(v24 + 16) = v27;
        *(v24 + 32) = v26;
        *(v24 + 48) = v25;
      }

      while (v17);
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

        v1 = v28;
        goto LABEL_18;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO17OutgoingEventTypeOy_AE9AllMemberO10Foundation4DataVG_AE0fG5StateVSgAE12GroupVersionVtGGMd, &_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO17OutgoingEventTypeOy_AE9AllMemberO10Foundation4DataVG_AE0fG5StateVSgAE12GroupVersionVtGGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO17IncomingEventTypeOy_AE9AllMemberO10Foundation4DataVGGGMd, &_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO17IncomingEventTypeOy_AE9AllMemberO10Foundation4DataVGGGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO18OutgoingEventStateVGGMd, &_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO18OutgoingEventStateVGGMR);
}

{
  v1 = v0;
  v30 = type metadata accessor for MLS.UniqueClientIdentifier();
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v2);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVAE25SwiftMLSPersisterProtocol_pGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVAE25SwiftMLSPersisterProtocol_pGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v26 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v27 = v32 + 32;
    v28 = v32 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v33 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v32;
        v21 = *(v32 + 72) * v19;
        v22 = v29;
        v23 = v30;
        (*(v32 + 16))(v29, *(v4 + 48) + v21, v30);
        v19 *= 40;
        outlined init with copy of SMAUserDefaultsProtocol(*(v4 + 56) + v19, v34);
        v24 = v31;
        (*(v20 + 32))(*(v31 + 48) + v21, v22, v23);
        result = outlined init with take of MLS.SwiftMLSPersisterProtocol(v34, *(v24 + 56) + v19);
        v14 = v33;
      }

      while (v33);
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

        v1 = v26;
        v6 = v31;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v33 = (v18 - 1) & v18;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS24SecureMessagingAgentCore27KDSRegistrationStateMachineCGMd, &_ss18_DictionaryStorageCySS24SecureMessagingAgentCore27KDSRegistrationStateMachineCGMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo17OS_os_transaction_pGMd, &_ss18_DictionaryStorageCySSSo17OS_os_transaction_pGMR);
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

        result = swift_unknownObjectRetain();
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
  v29 = type metadata accessor for KDSRegistration.UniqueClientIdentifier();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v2);
  v28 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging15KDSRegistrationO22UniqueClientIdentifierV0cD9AgentCore0eG0VGMd, &_ss18_DictionaryStorageCy15SecureMessaging15KDSRegistrationO22UniqueClientIdentifierV0cD9AgentCore0eG0VGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v27[0] = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v30 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v27[1] = v31 + 32;
    v27[2] = v31 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v32 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v31;
        v21 = *(v31 + 72) * v19;
        v22 = v28;
        v23 = v29;
        (*(v31 + 16))(v28, *(v4 + 48) + v21, v29);
        v19 *= 16;
        v24 = v30;
        v25 = *(v30 + 48);
        v26 = *(v20 + 32);
        v33 = *(*(v4 + 56) + v19);
        v26(v25 + v21, v22, v23);
        *(*(v24 + 56) + v19) = v33;
        swift_unknownObjectRetain();

        v14 = v32;
      }

      while (v32);
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

        v1 = v27[0];
        v6 = v30;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v32 = (v18 - 1) & v18;
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

char *specialized _NativeDictionary.copy()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v48 = a1(0);
  v51 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v7);
  v47 = &v37 - v8;
  v46 = type metadata accessor for MLS.UniqueClientIdentifier();
  v50 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v9);
  v45 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v3;
  v12 = static _DictionaryStorage.copy(original:)();
  v13 = v12;
  if (*(v11 + 16))
  {
    result = (v12 + 64);
    v15 = (v11 + 64);
    v16 = ((1 << *(v13 + 32)) + 63) >> 6;
    v37 = v6;
    v38 = v11 + 64;
    if (v13 != v11 || result >= &v15[8 * v16])
    {
      result = memmove(result, v15, 8 * v16);
    }

    v17 = 0;
    v18 = *(v11 + 16);
    v49 = v13;
    *(v13 + 16) = v18;
    v19 = 1 << *(v11 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v11 + 64);
    v22 = (v19 + 63) >> 6;
    v42 = v50 + 16;
    v43 = v22;
    v40 = v50 + 32;
    v41 = v51 + 16;
    v39 = v51 + 32;
    v44 = v11;
    v24 = v45;
    v23 = v46;
    if (v21)
    {
      do
      {
        v25 = __clz(__rbit64(v21));
        v52 = (v21 - 1) & v21;
LABEL_14:
        v28 = v25 | (v17 << 6);
        v29 = v50;
        v30 = *(v50 + 72) * v28;
        (*(v50 + 16))(v24, *(v11 + 48) + v30, v23);
        v31 = v51;
        v32 = *(v51 + 72) * v28;
        v33 = v47;
        v34 = v48;
        (*(v51 + 16))(v47, *(v11 + 56) + v32, v48);
        v35 = v49;
        (*(v29 + 32))(*(v49 + 48) + v30, v24, v23);
        v36 = *(v35 + 56);
        v11 = v44;
        result = (*(v31 + 32))(v36 + v32, v33, v34);
        v22 = v43;
        v21 = v52;
      }

      while (v52);
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v6 = v37;
        v13 = v49;
        goto LABEL_18;
      }

      v27 = *(v38 + 8 * v17);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v52 = (v27 - 1) & v27;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v6 = v13;
  }

  return result;
}

char *specialized KDSRegistrationKeyPackageExchanger.init(pushHandler:stateMachineNetworkOperator:userDefaults:featureFlagStore:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(a5 + 10) = a6;
  *(a5 + 11) = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5 + 7);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  *(a5 + 15) = a7;
  *(a5 + 16) = a9;
  v17 = __swift_allocate_boxed_opaque_existential_1(a5 + 12);
  (*(*(a7 - 8) + 32))(v17, a2, a7);
  outlined init with take of MLS.SwiftMLSPersisterProtocol(a3, (a5 + 16));
  v18 = OBJC_IVAR____TtC24SecureMessagingAgentCore34KDSRegistrationKeyPackageExchanger_featureFlagStore;
  v19 = type metadata accessor for SMAFeatureFlagsStore();
  (*(*(v19 - 8) + 32))(&a5[v18], a4, v19);
  return a5;
}

char *specialized KDSRegistrationKeyPackageExchanger.__allocating_init(pushHandler:stateMachineNetworkOperator:userDefaults:featureFlagStore:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v26 = a4;
  v27 = a8;
  v25 = a3;
  v13 = *(a7 - 8);
  v14 = MEMORY[0x28223BE20](a1, a2);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v14, v19);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KDSRegistrationKeyPackageExchanger(0);
  v22 = swift_allocObject();
  (*(v18 + 16))(v21, a1, a6);
  (*(v13 + 16))(v16, a2, a7);
  return specialized KDSRegistrationKeyPackageExchanger.init(pushHandler:stateMachineNetworkOperator:userDefaults:featureFlagStore:)(v21, v16, v25, v26, v22, a6, a7, v27, a9);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t type metadata accessor for KDSRegistrationKeyPackageExchanger(uint64_t a1)
{
  result = type metadata singleton initialization cache for KDSRegistrationKeyPackageExchanger;
  if (!type metadata singleton initialization cache for KDSRegistrationKeyPackageExchanger)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for KDSRegistrationKeyPackageExchanger(uint64_t a1)
{
  result = type metadata accessor for SMAFeatureFlagsStore();
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

uint64_t dispatch thunk of KDSRegistrationKeyPackageExchanger.retrieveKeyPackage(members:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 120) + **(*v3 + 120));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return v10(a1, a2, a3);
}

uint64_t outlined init with copy of RegClientIdentifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RegClientIdentifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of RegClientIdentifier(uint64_t a1)
{
  v2 = type metadata accessor for RegClientIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of SMAUserDefaultsProtocol(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

uint64_t lazy protocol witness table accessor for type RegistrationActor and conformance RegistrationActor(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t KDSRegistrationPushHandler.machPort.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore26KDSRegistrationPushHandler_machPort);

  return v1;
}

uint64_t KDSRegistrationPushHandler.state.getter()
{
  v1 = OBJC_IVAR____TtC24SecureMessagingAgentCore26KDSRegistrationPushHandler_state;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t KDSRegistrationPushHandler.state.setter(char a1)
{
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore26KDSRegistrationPushHandler_state;
  result = swift_beginAccess();
  *(v1 + v3) = a1 & 1;
  return result;
}

Swift::Int KDSRegistrationPushHandler.HandlerState.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x266756F60](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance KDSRegistrationPushHandler.HandlerState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x266756F60](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance KDSRegistrationPushHandler.HandlerState(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x266756F60](v2);
  return Hasher._finalize()();
}

id KDSRegistrationPushHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id KDSRegistrationPushHandler.init()()
{
  v1 = OBJC_IVAR____TtC24SecureMessagingAgentCore26KDSRegistrationPushHandler_pushTopics;
  v2 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of KDSRegistrationPushHandler.init());
  outlined destroy of String(&unk_2876DC350);
  *&v0[v1] = v2;
  v3 = &v0[OBJC_IVAR____TtC24SecureMessagingAgentCore26KDSRegistrationPushHandler_machPort];
  *v3 = 0xD000000000000022;
  v3[1] = 0x8000000265349500;
  v0[OBJC_IVAR____TtC24SecureMessagingAgentCore26KDSRegistrationPushHandler_state] = 0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for KDSRegistrationPushHandler();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for RegistrationActor();

  v9 = v2;
  v10 = static RegistrationActor.shared.getter();
  v11 = lazy protocol witness table accessor for type RegistrationActor and conformance RegistrationActor();
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = v11;
  v12[4] = a2;
  v12[5] = v9;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:), v12);
}

uint64_t closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  type metadata accessor for RegistrationActor();
  v5[15] = static RegistrationActor.shared.getter();
  lazy protocol witness table accessor for type RegistrationActor and conformance RegistrationActor();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:), v7, v6);
}

void closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:)()
{
  v13 = v0;
  v1 = *(v0 + 104);
  if (v1)
  {

    *(v0 + 88) = 99;
    *(v0 + 96) = 0xE100000000000000;
    AnyHashable.init<A>(_:)();
    if (*(v1 + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(v0 + 16), (v3 & 1) != 0))
    {
      outlined init with copy of Any(*(v1 + 56) + 32 * v2, v0 + 56);
      outlined destroy of AnyHashable(v0 + 16);
      if (swift_dynamicCast())
      {
        v4 = *(v0 + 88);
        v5 = (*((*MEMORY[0x277D85000] & **(v0 + 112)) + 0x68))();
        if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v7 & 1) != 0))
        {
          v8 = *(v0 + 112);
          v9 = *(*(v5 + 56) + 16 * v6);

          v11 = v8;
          v12 = v1;
          v9(&v11, &v12);
        }

        else
        {
        }
      }
    }

    else
    {
      outlined destroy of AnyHashable(v0 + 16);
    }

    v10 = *(v0 + 8);

    v10();
  }

  else
  {
    __break(1u);
  }
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v32 - v11;
  outlined init with copy of TaskPriority?(a3, v32 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of TaskPriority?(v12);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease(v16, v18, v20, v21, v22, v23, v24, v25);
    if (a2)
    {
LABEL_6:
      v26 = String.utf8CString.getter() + 32;
      v27 = swift_allocObject();
      *(v27 + 16) = a4;
      *(v27 + 24) = a5;

      if (v19 | v17)
      {
        v33[0] = 0;
        v33[1] = 0;
        v28 = v33;
        v33[2] = v17;
        v33[3] = v19;
      }

      else
      {
        v28 = 0;
      }

      v32[1] = 7;
      v32[2] = v28;
      v32[3] = v26;
      v30 = swift_task_create();

      outlined destroy of TaskPriority?(a3);

      return v30;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3);
  v29 = swift_allocObject();
  *(v29 + 16) = a4;
  *(v29 + 24) = a5;
  if (v19 | v17)
  {
    v33[4] = 0;
    v33[5] = 0;
    v33[6] = v17;
    v33[7] = v19;
  }

  return swift_task_create();
}

void KDSRegistrationPushHandler.updateListenerIfNeeded()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
  v4 = objc_opt_self();
  v5 = MEMORY[0x266756A10](*(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore26KDSRegistrationPushHandler_machPort), *(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore26KDSRegistrationPushHandler_machPort + 8));
  v12 = [v4 sharedInstanceWithPortName_];

  if (v3)
  {
    if (!v12)
    {
      return;
    }

    v6 = (*((*v2 & *v1) + 0x68))();
    v7 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SD4KeysVySiy24SecureMessagingAgentCore26KDSRegistrationPushHandlerC_SDys11AnyHashableVypGt0cD017RegistrationActorCYcc_GTt0g5(v6);
    specialized _setUpCast<A, B>(_:)(*(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore26KDSRegistrationPushHandler_pushTopics));
    isa = Set._bridgeToObjectiveC()().super.isa;

    specialized _setUpCast<A, B>(_:)(v7);

    v9 = Set._bridgeToObjectiveC()().super.isa;

    type metadata accessor for OS_dispatch_queue();
    v10 = static OS_dispatch_queue.main.getter();
    [v12 addListener:v1 topics:isa commands:v9 queue:v10];

    v11 = v10;
  }

  else
  {
    if (!v12)
    {
      return;
    }

    [v12 removeListener_];
    v11 = v12;
  }
}

Swift::Int specialized _setUpCast<A, B>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys11AnyHashableVGMd, &_ss11_SetStorageCys11AnyHashableVGMR);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
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

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 56;

  v9 = 0;
  while (v5)
  {
LABEL_15:

    swift_dynamicCast();
    result = AnyHashable._rawHashValue(seed:)(*(v2 + 40));
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      v16 = 0;
      v17 = (63 - v13) >> 6;
      while (++v15 != v17 || (v16 & 1) == 0)
      {
        v18 = v15 == v17;
        if (v15 == v17)
        {
          v15 = 0;
        }

        v16 |= v18;
        v19 = *(v7 + 8 * v15);
        if (v19 != -1)
        {
          v10 = __clz(__rbit64(~v19)) + (v15 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v5 &= v5 - 1;
    v11 = *(v2 + 48) + 40 * v10;
    *(v11 + 32) = v22;
    *v11 = v20;
    *(v11 + 16) = v21;
    ++*(v2 + 16);
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

    v5 = *(a1 + 56 + 8 * v12);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys11AnyHashableVGMd, &_ss11_SetStorageCys11AnyHashableVGMR);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
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

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 56;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    swift_dynamicCast();
    result = AnyHashable._rawHashValue(seed:)(*(v2 + 40));
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      v16 = 0;
      v17 = (63 - v13) >> 6;
      while (++v15 != v17 || (v16 & 1) == 0)
      {
        v18 = v15 == v17;
        if (v15 == v17)
        {
          v15 = 0;
        }

        v16 |= v18;
        v19 = *(v7 + 8 * v15);
        if (v19 != -1)
        {
          v10 = __clz(__rbit64(~v19)) + (v15 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v5 &= v5 - 1;
    v11 = *(v2 + 48) + 40 * v10;
    *(v11 + 32) = v22;
    *v11 = v20;
    *(v11 + 16) = v21;
    ++*(v2 + 16);
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

    v5 = *(a1 + 56 + 8 * v12);
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

Swift::Void __swiftcall KDSRegistrationPushHandler.update(_:)(SecureMessagingAgentCore::KDSRegistrationPushHandler::HandlerState a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x70);
  if ((v4() ^ a1))
  {
    v5 = v4();
    if (a1)
    {
      if (v5)
      {
        return;
      }

      v6 = 1;
    }

    else
    {
      if ((v5 & 1) == 0)
      {
        return;
      }

      v6 = 0;
    }

    (*((*v3 & *v1) + 0x78))(v6);

    KDSRegistrationPushHandler.updateListenerIfNeeded()();
  }
}

uint64_t KDSRegistrationPushHandler.pushToken()()
{
  v1 = objc_opt_self();
  v2 = MEMORY[0x266756A10](*(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore26KDSRegistrationPushHandler_machPort), *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore26KDSRegistrationPushHandler_machPort + 8));
  v3 = [v1 sharedInstanceWithPortName_];

  if (v3)
  {
    v4 = [v3 pushToken];
    if (v4)
    {
      v5 = v4;
      v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

      return v6;
    }
  }

  return 0;
}

id KDSRegistrationPushHandler.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for KDSRegistrationPushHandler();
  return objc_msgSendSuper2(&v3, sel_dealloc);
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
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
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
    return MEMORY[0x277D84FA0];
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RegistrationActor and conformance RegistrationActor()
{
  result = lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor;
  if (!lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor)
  {
    type metadata accessor for RegistrationActor();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor);
  }

  return result;
}

uint64_t partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:)(a1, v4, v5, v7, v6);
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationPushHandler.HandlerState and conformance KDSRegistrationPushHandler.HandlerState()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationPushHandler.HandlerState and conformance KDSRegistrationPushHandler.HandlerState;
  if (!lazy protocol witness table cache variable for type KDSRegistrationPushHandler.HandlerState and conformance KDSRegistrationPushHandler.HandlerState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationPushHandler.HandlerState and conformance KDSRegistrationPushHandler.HandlerState);
  }

  return result;
}

uint64_t sub_26525C4EC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x70))();
  *a2 = result & 1;
  return result;
}

uint64_t getEnumTagSinglePayload for KDSRegistrationPushHandler.HandlerState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for KDSRegistrationPushHandler.HandlerState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t objectdestroyTm(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  swift_unknownObjectRelease(*(v8 + 16), a2, a3, a4, a5, a6, a7, a8);

  return MEMORY[0x2821FE8E8](v8, 48, 7);
}

uint64_t closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:)partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:)(a1, v4, v5, v7, v6);
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

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26525CB1C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_22(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t StateMachineModel.uniqueClientIdentifier.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t StateMachineModel.simUniqueID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t StateMachineModel.simLabelID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t StateMachineModel.uri.getter()
{
  v1 = *(v0 + 48);
  outlined copy of Data?(v1, *(v0 + 56));
  return v1;
}

uint64_t StateMachineModel.uriSupportedState.getter()
{
  v1 = *(v0 + 64);
  outlined copy of Data._Representation(v1, *(v0 + 72));
  return v1;
}

uint64_t StateMachineModel.registrationState.getter()
{
  v1 = *(v0 + 80);
  outlined copy of Data._Representation(v1, *(v0 + 88));
  return v1;
}

uint64_t StateMachineModel.phoneAuthInfo.getter()
{
  v1 = *(v0 + 96);
  outlined copy of Data?(v1, *(v0 + 104));
  return v1;
}

uint64_t StateMachineModel.participantInfo.getter()
{
  v1 = *(v0 + 112);
  outlined copy of Data?(v1, *(v0 + 120));
  return v1;
}

uint64_t StateMachineModel.csr.getter()
{
  v1 = *(v0 + 128);
  outlined copy of Data?(v1, *(v0 + 136));
  return v1;
}

uint64_t StateMachineModel.keyPackage.getter()
{
  v1 = *(v0 + 144);
  outlined copy of Data?(v1, *(v0 + 152));
  return v1;
}

uint64_t StateMachineModel.insertStatement(_:)(sqlite3 *a1)
{
  v141 = *MEMORY[0x277D85DE8];
  ppStmt = 0;
  v4 = strdup("INSERT OR REPLACE INTO State_Machine_Table (unique_client_identifier, sim_unique_id, sim_label_id, uri, uri_supported_state, registration_state, phone_auth_info, participant_info, csr, key_package, next_heartbeat_interval) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);");
  if (!v4)
  {
LABEL_320:
    __break(1u);
  }

  v5 = sqlite3_prepare_v2(a1, v4, -1, &ppStmt, 0);
  if (v5)
  {
LABEL_43:
    *&v134 = 0x726F7272456C7173;
    *(&v134 + 1) = 0xE90000000000003ALL;
LABEL_44:
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v22);

    v23 = v134;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v24 = 0;
    *(v24 + 8) = v23;
    return swift_willThrow();
  }

  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v8)
    {
      *&v134 = *v1;
      DWORD2(v134) = v7;
      WORD6(v134) = WORD2(v7);
      v5 = ppStmt;
      LODWORD(v9) = BYTE6(v7);
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_6:
        v10 = SQLITE_TRANSIENT;
        v11 = &v134;
        LODWORD(v12) = v9;
        goto LABEL_42;
      }

LABEL_188:
      v88 = v5;
      swift_once();
      v5 = v88;
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  if (v8 != 2)
  {
    *(&v134 + 6) = 0;
    *&v134 = 0;
    v5 = ppStmt;
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_25:
      v10 = SQLITE_TRANSIENT;
      v11 = &v134;
      LODWORD(v12) = 0;
      goto LABEL_42;
    }

LABEL_190:
    v89 = v5;
    swift_once();
    v5 = v89;
    goto LABEL_25;
  }

  v13 = v1;
  v14 = *(v6 + 16);
  v15 = *(v6 + 24);
  v16 = __DataStorage._bytes.getter();
  if (v16)
  {
    v10 = v16;
    v17 = __DataStorage._offset.getter();
    if (__OFSUB__(v14, v17))
    {
      __break(1u);
      goto LABEL_230;
    }

    v9 = v10 + v14 - v17;
    v10 = (v15 - v14);
    if (!__OFSUB__(v15, v14))
    {
      goto LABEL_11;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v9 = 0;
  v10 = (v15 - v14);
  if (__OFSUB__(v15, v14))
  {
    goto LABEL_28;
  }

LABEL_11:
  v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = MEMORY[0x2667557A0]();
  if (v5 >= v10)
  {
    v18 = v10;
  }

  else
  {
    v18 = v5;
  }

  if (v9)
  {
    v12 = v18;
  }

  else
  {
    v12 = 0;
  }

  if (v12 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_192:
    LODWORD(v67) = 0;
    goto LABEL_194;
  }

  v6 = 0x7FFFFFFFLL;
  if (v12 <= 0x7FFFFFFF)
  {
    goto LABEL_38;
  }

  __break(1u);
LABEL_20:
  v2 = v6;
  v19 = v6 >> 32;
  v14 = v19 - v2;
  if (v19 < v2)
  {
    __break(1u);
    goto LABEL_190;
  }

  v13 = v1;
  v20 = __DataStorage._bytes.getter();
  if (!v20)
  {
LABEL_29:
    v9 = 0;
    goto LABEL_30;
  }

  v10 = v20;
  v21 = __DataStorage._offset.getter();
  if (__OFSUB__(v2, v21))
  {
LABEL_230:
    __break(1u);
    goto LABEL_231;
  }

  v9 = v10 + v2 - v21;
LABEL_30:
  v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = MEMORY[0x2667557A0]();
  if (v5 >= v14)
  {
    v12 = v14;
  }

  else
  {
    v12 = v5;
  }

  if (v9)
  {
    if (v12 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_188;
    }

    v1 = v13;
    if (v12 <= 0x7FFFFFFF)
    {
      goto LABEL_39;
    }

    __break(1u);
  }

  LODWORD(v12) = 0;
LABEL_38:
  v1 = v13;
LABEL_39:
  v5 = ppStmt;
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v86 = ppStmt;
    v87 = v12;
    swift_once();
    v5 = v86;
    LODWORD(v12) = v87;
  }

  v10 = SQLITE_TRANSIENT;
  v11 = v9;
LABEL_42:
  if (sqlite3_bind_blob(v5, 1, v11, v12, v10))
  {
    goto LABEL_43;
  }

  v26 = ppStmt;
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    swift_once();
  }

  v27 = String.utf8CString.getter();
  v28 = sqlite3_bind_text(v26, 2, (v27 + 32), -1, v10);

  if (v28 || (v29 = ppStmt, v30 = String.utf8CString.getter(), LODWORD(v29) = sqlite3_bind_text(v29, 3, (v30 + 32), -1, v10), , v29))
  {
    *&v134 = 0x726F7272456C7173;
    *(&v134 + 1) = 0xE90000000000003ALL;
    goto LABEL_44;
  }

  v140 = *(v1 + 48);
  v31 = *(&v140 + 1);
  if (*(&v140 + 1) >> 60 == 15)
  {
    result = sqlite3_bind_null(ppStmt, 4);
    if (result)
    {
      goto LABEL_43;
    }

    goto LABEL_87;
  }

  v32 = *(&v140 + 1) >> 62;
  if ((*(&v140 + 1) >> 62) > 1)
  {
    if (v32 != 2)
    {
LABEL_80:
      *(&v134 + 6) = 0;
      *&v134 = 0;
      v34 = ppStmt;
      v35 = &v134;
      LODWORD(v33) = 0;
      goto LABEL_84;
    }

    v36 = *(v140 + 16);
    v37 = *(v140 + 24);

    v38 = __DataStorage._bytes.getter();
    if (v38)
    {
      result = __DataStorage._offset.getter();
      if (__OFSUB__(v36, result))
      {
LABEL_324:
        __break(1u);
        goto LABEL_325;
      }

      v38 += v36 - result;
    }

    v39 = __OFSUB__(v37, v36);
    v40 = v37 - v36;
    if (!v39)
    {
      v41 = MEMORY[0x2667557A0]();
      if (v41 >= v40)
      {
        v42 = v40;
      }

      else
      {
        v42 = v41;
      }

      if (v38)
      {
        v33 = v42;
      }

      else
      {
        v33 = 0;
      }

      if (v33 >= 0xFFFFFFFF80000000)
      {
        if (v33 <= 0x7FFFFFFF)
        {
          goto LABEL_83;
        }

        goto LABEL_319;
      }

LABEL_318:
      __break(1u);
LABEL_319:
      __break(1u);
      goto LABEL_320;
    }

LABEL_317:
    __break(1u);
    goto LABEL_318;
  }

  if (v32)
  {
    v43 = v140;
    v44 = (v140 >> 32) - v140;
    if (v140 >> 32 >= v140)
    {
      v45 = v1;

      v38 = __DataStorage._bytes.getter();
      if (v38)
      {
        result = __DataStorage._offset.getter();
        if (__OFSUB__(v43, result))
        {
LABEL_325:
          __break(1u);
          goto LABEL_326;
        }

        v38 += v43 - result;
      }

      v1 = v31 & 0x3FFFFFFFFFFFFFFFLL;
      result = MEMORY[0x2667557A0]();
      if (result >= v44)
      {
        v33 = v44;
      }

      else
      {
        v33 = result;
      }

      if (v38)
      {
        if (v33 < 0xFFFFFFFF80000000)
        {
          __break(1u);
          goto LABEL_80;
        }

        v1 = v45;
        if (v33 > 0x7FFFFFFF)
        {
LABEL_328:
          __break(1u);
LABEL_329:
          __break(1u);
LABEL_330:
          __break(1u);
LABEL_331:
          __break(1u);
          goto LABEL_332;
        }
      }

      else
      {
        LODWORD(v33) = 0;
        v1 = v45;
      }

LABEL_83:
      v34 = ppStmt;
      v35 = v38;
      goto LABEL_84;
    }

    __break(1u);
    goto LABEL_317;
  }

  LODWORD(v134) = v140;
  WORD2(v134) = WORD2(v140);
  *(&v134 + 6) = *(&v140 + 6);
  LODWORD(v33) = BYTE14(v140);
  v34 = ppStmt;
  v35 = &v134;
LABEL_84:
  if (sqlite3_bind_blob(v34, 4, v35, v33, v10))
  {
    *&v134 = 0x726F7272456C7173;
    *(&v134 + 1) = 0xE90000000000003ALL;
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v46);

    v47 = v134;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v48 = 0;
    *(v48 + 8) = v47;
    swift_willThrow();
    return outlined destroy of Data?(&v140);
  }

  result = outlined destroy of Data?(&v140);
LABEL_87:
  v49 = *(v1 + 64);
  v50 = *(v1 + 72);
  v51 = v50 >> 62;
  if ((v50 >> 62) > 1)
  {
    if (v51 != 2)
    {
LABEL_114:
      *(&v134 + 6) = 0;
      *&v134 = 0;
      v52 = ppStmt;
      v54 = &v134;
      LODWORD(v53) = 0;
      goto LABEL_118;
    }

    v13 = v1;
    v55 = *(v49 + 16);
    v56 = *(v49 + 24);
    result = __DataStorage._bytes.getter();
    v9 = result;
    if (result)
    {
      result = __DataStorage._offset.getter();
      if (__OFSUB__(v55, result))
      {
LABEL_326:
        __break(1u);
LABEL_327:
        __break(1u);
        goto LABEL_328;
      }

      v9 += v55 - result;
    }

    v39 = __OFSUB__(v56, v55);
    v57 = v56 - v55;
    if (v39)
    {
      goto LABEL_322;
    }

    v1 = v50 & 0x3FFFFFFFFFFFFFFFLL;
    result = MEMORY[0x2667557A0]();
    if (result >= v57)
    {
      v58 = v57;
    }

    else
    {
      v58 = result;
    }

    if (v9)
    {
      v53 = v58;
    }

    else
    {
      v53 = 0;
    }

    if (v53 < 0xFFFFFFFF80000000)
    {
      goto LABEL_323;
    }

    v49 = 0x7FFFFFFFLL;
    if (v53 <= 0x7FFFFFFF)
    {
LABEL_116:
      v1 = v13;
      goto LABEL_117;
    }

    __break(1u);
  }

  else if (!v51)
  {
    *&v134 = *(v1 + 64);
    DWORD2(v134) = v50;
    WORD6(v134) = WORD2(v50);
    v52 = ppStmt;
    LODWORD(v53) = BYTE6(v50);
    v54 = &v134;
    goto LABEL_118;
  }

  v59 = v49;
  v60 = v49 >> 32;
  v61 = v60 - v59;
  if (v60 < v59)
  {
    __break(1u);
LABEL_322:
    __break(1u);
LABEL_323:
    __break(1u);
    goto LABEL_324;
  }

  v13 = v1;
  v9 = __DataStorage._bytes.getter();
  if (!v9)
  {
    goto LABEL_108;
  }

  result = __DataStorage._offset.getter();
  if (__OFSUB__(v59, result))
  {
    goto LABEL_327;
  }

  v9 += v59 - result;
LABEL_108:
  v1 = v50 & 0x3FFFFFFFFFFFFFFFLL;
  v62 = MEMORY[0x2667557A0]();
  if (v62 >= v61)
  {
    v53 = v61;
  }

  else
  {
    v53 = v62;
  }

  if (!v9)
  {
    LODWORD(v53) = 0;
    goto LABEL_116;
  }

  if (v53 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_114;
  }

  v1 = v13;
  if (v53 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_149:
    LODWORD(v67) = 0;
    goto LABEL_150;
  }

LABEL_117:
  v52 = ppStmt;
  v54 = v9;
LABEL_118:
  result = sqlite3_bind_blob(v52, 5, v54, v53, v10);
  if (result)
  {
    goto LABEL_43;
  }

  v63 = *(v1 + 80);
  v64 = *(v1 + 88);
  v65 = v64 >> 62;
  if ((v64 >> 62) <= 1)
  {
    if (!v65)
    {
      *&v134 = *(v1 + 80);
      DWORD2(v134) = v64;
      WORD6(v134) = WORD2(v64);
      v66 = ppStmt;
      LODWORD(v67) = BYTE6(v64);
      v68 = &v134;
      goto LABEL_152;
    }

LABEL_136:
    v73 = v63;
    v74 = v63 >> 32;
    v75 = v74 - v73;
    if (v74 >= v73)
    {
      v13 = v1;
      v9 = __DataStorage._bytes.getter();
      if (!v9)
      {
        goto LABEL_140;
      }

      result = __DataStorage._offset.getter();
      if (!__OFSUB__(v73, result))
      {
        v9 += v73 - result;
LABEL_140:
        v1 = v64 & 0x3FFFFFFFFFFFFFFFLL;
        result = MEMORY[0x2667557A0]();
        if (result >= v75)
        {
          v67 = v75;
        }

        else
        {
          v67 = result;
        }

        if (v9)
        {
          if (v67 >= 0xFFFFFFFF80000000)
          {
            goto LABEL_173;
          }

          __break(1u);
          goto LABEL_146;
        }

        goto LABEL_149;
      }

LABEL_333:
      __break(1u);
LABEL_334:
      __break(1u);
LABEL_335:
      __break(1u);
LABEL_336:
      __break(1u);
LABEL_337:
      __break(1u);
LABEL_338:
      __break(1u);
LABEL_339:
      __break(1u);
LABEL_340:
      __break(1u);
LABEL_341:
      __break(1u);
LABEL_342:
      __break(1u);
      goto LABEL_343;
    }

    goto LABEL_329;
  }

  if (v65 == 2)
  {
    v13 = v1;
    v69 = *(v63 + 16);
    v70 = *(v63 + 24);
    result = __DataStorage._bytes.getter();
    v9 = result;
    if (result)
    {
      result = __DataStorage._offset.getter();
      if (__OFSUB__(v69, result))
      {
LABEL_332:
        __break(1u);
        goto LABEL_333;
      }

      v9 += v69 - result;
    }

    v39 = __OFSUB__(v70, v69);
    v71 = v70 - v69;
    if (v39)
    {
      goto LABEL_330;
    }

    v1 = v64 & 0x3FFFFFFFFFFFFFFFLL;
    result = MEMORY[0x2667557A0]();
    if (result >= v71)
    {
      v72 = v71;
    }

    else
    {
      v72 = result;
    }

    if (v9)
    {
      v67 = v72;
    }

    else
    {
      v67 = 0;
    }

    if (v67 < 0xFFFFFFFF80000000)
    {
      goto LABEL_331;
    }

    v63 = 0x7FFFFFFFLL;
    if (v67 <= 0x7FFFFFFF)
    {
LABEL_150:
      v1 = v13;
      goto LABEL_151;
    }

    __break(1u);
    goto LABEL_136;
  }

LABEL_146:
  *(&v134 + 6) = 0;
  *&v134 = 0;
  v66 = ppStmt;
  v68 = &v134;
  LODWORD(v67) = 0;
  while (1)
  {
LABEL_152:
    if (sqlite3_bind_blob(v66, 6, v68, v67, v10))
    {
      goto LABEL_43;
    }

    v139 = *(v1 + 96);
    v64 = *(&v139 + 1);
    if (*(&v139 + 1) >> 60 == 15)
    {
      if (sqlite3_bind_null(ppStmt, 7))
      {
        goto LABEL_43;
      }

      goto LABEL_198;
    }

    result = v139;
    v76 = *(&v139 + 1) >> 62;
    if ((*(&v139 + 1) >> 62) <= 1)
    {
      if (v76)
      {
        goto LABEL_175;
      }

      LODWORD(v134) = v139;
      WORD2(v134) = WORD2(v139);
      *(&v134 + 6) = *(&v139 + 6);
      v77 = BYTE14(v139);
      v78 = ppStmt;
LABEL_186:
      v85 = sqlite3_bind_blob(v78, 7, &v134, v77, v10);
      goto LABEL_195;
    }

    if (v76 != 2)
    {
      goto LABEL_185;
    }

    v13 = v1;
    v79 = *(v139 + 16);
    v80 = *(v139 + 24);

    result = __DataStorage._bytes.getter();
    v9 = result;
    if (result)
    {
      result = __DataStorage._offset.getter();
      if (__OFSUB__(v79, result))
      {
        goto LABEL_337;
      }

      v9 += v79 - result;
    }

    v39 = __OFSUB__(v80, v79);
    v81 = v80 - v79;
    if (v39)
    {
      goto LABEL_335;
    }

    result = MEMORY[0x2667557A0]();
    if (result >= v81)
    {
      v82 = v81;
    }

    else
    {
      v82 = result;
    }

    if (v9)
    {
      v67 = v82;
    }

    else
    {
      v67 = 0;
    }

    if (v67 < 0xFFFFFFFF80000000)
    {
      goto LABEL_336;
    }

    if (v67 <= 0x7FFFFFFF)
    {
      goto LABEL_194;
    }

    __break(1u);
LABEL_173:
    v1 = v13;
    if (v67 > 0x7FFFFFFF)
    {
      break;
    }

LABEL_151:
    v66 = ppStmt;
    v68 = v9;
  }

  __break(1u);
LABEL_175:
  v83 = result;
  v84 = (result >> 32) - result;
  if (result >> 32 < result)
  {
    goto LABEL_334;
  }

  v13 = v1;

  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(v83, result))
    {
      goto LABEL_338;
    }

    v9 += v83 - result;
  }

  v1 = v64 & 0x3FFFFFFFFFFFFFFFLL;
  result = MEMORY[0x2667557A0]();
  if (result >= v84)
  {
    v67 = v84;
  }

  else
  {
    v67 = result;
  }

  if (!v9)
  {
    goto LABEL_192;
  }

  if (v67 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_185:
    *(&v134 + 6) = 0;
    *&v134 = 0;
    v78 = ppStmt;
    v77 = 0;
    goto LABEL_186;
  }

  if (v67 > 0x7FFFFFFF)
  {
    goto LABEL_342;
  }

LABEL_194:
  v85 = sqlite3_bind_blob(ppStmt, 7, v9, v67, v10);
  v1 = v13;
LABEL_195:
  if (v85)
  {
    *&v134 = 0x726F7272456C7173;
    *(&v134 + 1) = 0xE90000000000003ALL;
    v90 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v90);

    v91 = v134;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v92 = 0;
    *(v92 + 8) = v91;
    swift_willThrow();
    return outlined destroy of Data?(&v139);
  }

  outlined destroy of Data?(&v139);
LABEL_198:
  v138 = *(v1 + 112);
  if (*(&v138 + 1) >> 60 == 15)
  {
    if (sqlite3_bind_null(ppStmt, 8))
    {
      goto LABEL_43;
    }

    goto LABEL_237;
  }

  result = v138;
  v93 = *(&v138 + 1) >> 62;
  v7 = v1;
  if ((*(&v138 + 1) >> 62) > 1)
  {
    if (v93 != 2)
    {
LABEL_228:
      *(&v134 + 6) = 0;
      *&v134 = 0;
      v95 = ppStmt;
      v96 = &v134;
      LODWORD(v94) = 0;
      goto LABEL_234;
    }

    v97 = *(v138 + 16);
    v98 = *(v138 + 24);

    result = __DataStorage._bytes.getter();
    v2 = result;
    if (result)
    {
      result = __DataStorage._offset.getter();
      if (__OFSUB__(v97, result))
      {
LABEL_343:
        __break(1u);
        goto LABEL_344;
      }

      v2 += v97 - result;
    }

    v39 = __OFSUB__(v98, v97);
    v99 = v98 - v97;
    if (v39)
    {
      goto LABEL_340;
    }

    result = MEMORY[0x2667557A0]();
    if (result >= v99)
    {
      v100 = v99;
    }

    else
    {
      v100 = result;
    }

    if (v2)
    {
      v94 = v100;
    }

    else
    {
      v94 = 0;
    }

    if (v94 < 0xFFFFFFFF80000000)
    {
      goto LABEL_341;
    }

    if (v94 <= 0x7FFFFFFF)
    {
      goto LABEL_233;
    }

    __break(1u);
    goto LABEL_218;
  }

  if (v93)
  {
LABEL_218:
    v101 = result;
    v102 = (result >> 32) - result;
    if (result >> 32 >= result)
    {

      v2 = __DataStorage._bytes.getter();
      if (!v2)
      {
        goto LABEL_222;
      }

      result = __DataStorage._offset.getter();
      if (!__OFSUB__(v101, result))
      {
        v2 += v101 - result;
LABEL_222:
        result = MEMORY[0x2667557A0]();
        if (result >= v102)
        {
          v94 = v102;
        }

        else
        {
          v94 = result;
        }

        if (v2)
        {
          if (v94 < 0xFFFFFFFF80000000)
          {
            __break(1u);
            goto LABEL_228;
          }

          if (v94 > 0x7FFFFFFF)
          {
LABEL_348:
            __break(1u);
            goto LABEL_349;
          }

LABEL_233:
          v95 = ppStmt;
          v96 = v2;
          goto LABEL_234;
        }

LABEL_231:
        LODWORD(v94) = 0;
        goto LABEL_233;
      }

LABEL_344:
      __break(1u);
LABEL_345:
      __break(1u);
LABEL_346:
      __break(1u);
LABEL_347:
      __break(1u);
      goto LABEL_348;
    }

    goto LABEL_339;
  }

  LODWORD(v134) = v138;
  WORD2(v134) = WORD2(v138);
  *(&v134 + 6) = *(&v138 + 6);
  LODWORD(v94) = BYTE14(v138);
  v95 = ppStmt;
  v96 = &v134;
LABEL_234:
  if (sqlite3_bind_blob(v95, 8, v96, v94, v10))
  {
    *&v134 = 0x726F7272456C7173;
    *(&v134 + 1) = 0xE90000000000003ALL;
    v103 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v103);

    v104 = v134;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v105 = 0;
    *(v105 + 8) = v104;
    swift_willThrow();
    return outlined destroy of Data?(&v138);
  }

  outlined destroy of Data?(&v138);
  v1 = v7;
LABEL_237:
  v137 = *(v1 + 128);
  if (*(&v137 + 1) >> 60 == 15)
  {
    if (sqlite3_bind_null(ppStmt, 9))
    {
      goto LABEL_43;
    }

    goto LABEL_274;
  }

  result = v137;
  v106 = *(&v137 + 1) >> 62;
  if ((*(&v137 + 1) >> 62) > 1)
  {
    if (v106 != 2)
    {
LABEL_267:
      *(&v134 + 6) = 0;
      *&v134 = 0;
      v108 = ppStmt;
      v109 = &v134;
      LODWORD(v107) = 0;
      goto LABEL_271;
    }

    v110 = *(v137 + 16);
    v111 = *(v137 + 24);

    result = __DataStorage._bytes.getter();
    v112 = result;
    if (result)
    {
      result = __DataStorage._offset.getter();
      if (__OFSUB__(v110, result))
      {
LABEL_349:
        __break(1u);
        goto LABEL_350;
      }

      v112 += v110 - result;
    }

    v39 = __OFSUB__(v111, v110);
    v113 = v111 - v110;
    if (v39)
    {
      goto LABEL_346;
    }

    result = MEMORY[0x2667557A0]();
    if (result >= v113)
    {
      v114 = v113;
    }

    else
    {
      v114 = result;
    }

    if (v112)
    {
      v107 = v114;
    }

    else
    {
      v107 = 0;
    }

    if (v107 < 0xFFFFFFFF80000000)
    {
      goto LABEL_347;
    }

    if (v107 <= 0x7FFFFFFF)
    {
      goto LABEL_270;
    }

    __break(1u);
    goto LABEL_257;
  }

  if (v106)
  {
LABEL_257:
    v115 = result;
    v116 = (result >> 32) - result;
    if (result >> 32 >= result)
    {

      v112 = __DataStorage._bytes.getter();
      if (!v112)
      {
        goto LABEL_261;
      }

      result = __DataStorage._offset.getter();
      if (!__OFSUB__(v115, result))
      {
        v112 += v115 - result;
LABEL_261:
        result = MEMORY[0x2667557A0]();
        if (result >= v116)
        {
          v107 = v116;
        }

        else
        {
          v107 = result;
        }

        if (v112)
        {
          if (v107 < 0xFFFFFFFF80000000)
          {
            __break(1u);
            goto LABEL_267;
          }

          if (v107 > 0x7FFFFFFF)
          {
LABEL_354:
            __break(1u);
            goto LABEL_355;
          }
        }

        else
        {
          LODWORD(v107) = 0;
        }

LABEL_270:
        v108 = ppStmt;
        v109 = v112;
        goto LABEL_271;
      }

LABEL_350:
      __break(1u);
      goto LABEL_351;
    }

    goto LABEL_345;
  }

  LODWORD(v134) = v137;
  WORD2(v134) = WORD2(v137);
  *(&v134 + 6) = *(&v137 + 6);
  LODWORD(v107) = BYTE14(v137);
  v108 = ppStmt;
  v109 = &v134;
LABEL_271:
  if (sqlite3_bind_blob(v108, 9, v109, v107, v10))
  {
    *&v134 = 0x726F7272456C7173;
    *(&v134 + 1) = 0xE90000000000003ALL;
    v117 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v117);

    v118 = v134;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v119 = 0;
    *(v119 + 8) = v118;
    swift_willThrow();
    return outlined destroy of Data?(&v137);
  }

  outlined destroy of Data?(&v137);
LABEL_274:
  v136 = *(v1 + 144);
  if (*(&v136 + 1) >> 60 != 15)
  {
    result = v136;
    v120 = *(&v136 + 1) >> 62;
    if ((*(&v136 + 1) >> 62) > 1)
    {
      if (v120 != 2)
      {
LABEL_304:
        *(&v134 + 6) = 0;
        *&v134 = 0;
        v122 = ppStmt;
        v123 = &v134;
        LODWORD(v121) = 0;
        goto LABEL_308;
      }

      v124 = *(v136 + 16);
      v125 = *(v136 + 24);

      result = __DataStorage._bytes.getter();
      v126 = result;
      if (result)
      {
        result = __DataStorage._offset.getter();
        if (__OFSUB__(v124, result))
        {
LABEL_355:
          __break(1u);
          goto LABEL_356;
        }

        v126 += v124 - result;
      }

      v39 = __OFSUB__(v125, v124);
      v127 = v125 - v124;
      if (v39)
      {
        goto LABEL_352;
      }

      result = MEMORY[0x2667557A0]();
      if (result >= v127)
      {
        v128 = v127;
      }

      else
      {
        v128 = result;
      }

      if (v126)
      {
        v121 = v128;
      }

      else
      {
        v121 = 0;
      }

      if (v121 < 0xFFFFFFFF80000000)
      {
        goto LABEL_353;
      }

      if (v121 <= 0x7FFFFFFF)
      {
        goto LABEL_307;
      }

      __break(1u);
    }

    else if (!v120)
    {
      LODWORD(v134) = v136;
      WORD2(v134) = WORD2(v136);
      *(&v134 + 6) = *(&v136 + 6);
      LODWORD(v121) = BYTE14(v136);
      v122 = ppStmt;
      v123 = &v134;
LABEL_308:
      if (sqlite3_bind_blob(v122, 10, v123, v121, v10))
      {
        *&v134 = 0x726F7272456C7173;
        *(&v134 + 1) = 0xE90000000000003ALL;
        v131 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266756A70](v131);

        v132 = v134;
        lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
        swift_allocError();
        *v133 = 0;
        *(v133 + 8) = v132;
        swift_willThrow();
        return outlined destroy of Data?(&v136);
      }

      outlined destroy of Data?(&v136);
      goto LABEL_311;
    }

    v129 = result;
    v130 = (result >> 32) - result;
    if (result >> 32 >= result)
    {

      v126 = __DataStorage._bytes.getter();
      if (!v126)
      {
        goto LABEL_298;
      }

      result = __DataStorage._offset.getter();
      if (!__OFSUB__(v129, result))
      {
        v126 += v129 - result;
LABEL_298:
        result = MEMORY[0x2667557A0]();
        if (result >= v130)
        {
          v121 = v130;
        }

        else
        {
          v121 = result;
        }

        if (!v126)
        {
          LODWORD(v121) = 0;
          goto LABEL_307;
        }

        if (v121 < 0xFFFFFFFF80000000)
        {
          __break(1u);
          goto LABEL_304;
        }

        if (v121 <= 0x7FFFFFFF)
        {
LABEL_307:
          v122 = ppStmt;
          v123 = v126;
          goto LABEL_308;
        }

LABEL_357:
        __break(1u);
        return result;
      }

LABEL_356:
      __break(1u);
      goto LABEL_357;
    }

LABEL_351:
    __break(1u);
LABEL_352:
    __break(1u);
LABEL_353:
    __break(1u);
    goto LABEL_354;
  }

  if (sqlite3_bind_null(ppStmt, 10))
  {
    goto LABEL_43;
  }

LABEL_311:
  if (*(v1 + 168))
  {
    if (sqlite3_bind_null(ppStmt, 11))
    {
      goto LABEL_43;
    }
  }

  else if (sqlite3_bind_double(ppStmt, 11, *(v1 + 160)))
  {
    goto LABEL_43;
  }

  return ppStmt;
}