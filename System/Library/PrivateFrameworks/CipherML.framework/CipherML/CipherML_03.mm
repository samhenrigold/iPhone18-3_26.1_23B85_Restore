unint64_t lazy protocol witness table accessor for type ProxyError and conformance ProxyError()
{
  result = lazy protocol witness table cache variable for type ProxyError and conformance ProxyError;
  if (!lazy protocol witness table cache variable for type ProxyError and conformance ProxyError)
  {
    type metadata accessor for ProxyError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProxyError and conformance ProxyError);
  }

  return result;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, void *a3)
{
  v7 = type metadata accessor for AspireApiConfig(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_8CipherML15AspireApiConfigVtMd, &_sSS_8CipherML15AspireApiConfigVtMR);
  MEMORY[0x28223BE20](v11);
  v15 = (&v55 - v14);
  v61 = *(a1 + 16);
  if (!v61)
  {
    goto LABEL_23;
  }

  v57 = v3;
  v58 = v8;
  v16 = a2;
  v17 = *(v12 + 48);
  v18 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v60 = *(v13 + 72);
  v62 = a1;
  v56 = v18;
  outlined init with copy of (String, AspireApiConfig)(a1 + v18, &v55 - v14);
  v19 = v15[1];
  v65 = *v15;
  v20 = v65;
  v66 = v19;
  v59 = v17;
  outlined init with take of AspireApiResponse(v15 + v17, v10, type metadata accessor for AspireApiConfig);
  v21 = *a3;
  v23 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v19);
  v24 = v21[2];
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v27 = v22;
  if (v21[3] >= v26)
  {
    if (v16)
    {
      if ((v22 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if ((v27 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26, v16 & 1);
  v28 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v19);
  if ((v27 & 1) == (v29 & 1))
  {
    v23 = v28;
    if ((v27 & 1) == 0)
    {
LABEL_13:
      v32 = *a3;
      *(*a3 + 8 * (v23 >> 6) + 64) |= 1 << v23;
      v33 = (v32[6] + 16 * v23);
      *v33 = v20;
      v33[1] = v19;
      v34 = v32[7];
      v58 = *(v58 + 72);
      outlined init with take of AspireApiResponse(v10, v34 + v58 * v23, type metadata accessor for AspireApiConfig);
      v35 = v32[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (!v36)
      {
        v32[2] = v37;
        v38 = v62;
        if (v61 != 1)
        {
          v39 = v62 + v60 + v56;
          v40 = 1;
          while (v40 < *(v38 + 16))
          {
            outlined init with copy of (String, AspireApiConfig)(v39, v15);
            v41 = v15[1];
            v65 = *v15;
            v42 = v65;
            v66 = v41;
            outlined init with take of AspireApiResponse(v15 + v59, v10, type metadata accessor for AspireApiConfig);
            v43 = *a3;
            v44 = specialized __RawDictionaryStorage.find<A>(_:)(v42, v41);
            v46 = v43[2];
            v47 = (v45 & 1) == 0;
            v36 = __OFADD__(v46, v47);
            v48 = v46 + v47;
            if (v36)
            {
              goto LABEL_24;
            }

            v49 = v45;
            if (v43[3] < v48)
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v48, 1);
              v44 = specialized __RawDictionaryStorage.find<A>(_:)(v42, v41);
              if ((v49 & 1) != (v50 & 1))
              {
                goto LABEL_27;
              }
            }

            if (v49)
            {
              goto LABEL_10;
            }

            v51 = *a3;
            *(*a3 + 8 * (v44 >> 6) + 64) |= 1 << v44;
            v52 = (v51[6] + 16 * v44);
            *v52 = v42;
            v52[1] = v41;
            outlined init with take of AspireApiResponse(v10, v51[7] + v58 * v44, type metadata accessor for AspireApiConfig);
            v53 = v51[2];
            v36 = __OFADD__(v53, 1);
            v54 = v53 + 1;
            if (v36)
            {
              goto LABEL_25;
            }

            ++v40;
            v51[2] = v54;
            v39 += v60;
            v38 = v62;
            if (v61 == v40)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_26;
        }

LABEL_23:

        return;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_10:
    v30 = swift_allocError();
    swift_willThrow();
    v67 = v30;
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      outlined destroy of AspireApiRequest(v10, type metadata accessor for AspireApiConfig);

      return;
    }

    goto LABEL_28;
  }

LABEL_27:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_28:
  v63 = 0;
  v64 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x22AA60A80](0xD00000000000001BLL, 0x8000000225035BC0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x22AA60A80](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
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

uint64_t outlined init with copy of PegasusNetworkingError(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #4 in PegasusNetworking.queries(requests:userId:)(uint64_t *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
  return result;
}

uint64_t type metadata completion function for PegasusNetworkingError(uint64_t a1)
{
  result = type metadata accessor for ProxyError();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t dispatch thunk of PegasusNetworking.fetchConfigs(useCases:userId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 112) + **(*v3 + 112));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of PegasusNetworking.queries(requests:userId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 120) + **(*v3 + 120));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of PegasusNetworking.cancel()()
{
  v4 = (*(*v0 + 128) + **(*v0 + 128));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return v4();
}

uint64_t dispatch thunk of PegasusNetworking.uploadKeys(evaluationKeys:userId:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 136) + **(*v2 + 136));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return v8(a1, a2);
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

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with copy of (String, AspireApiConfig)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_8CipherML15AspireApiConfigVtMd, &_sSS_8CipherML15AspireApiConfigVtMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of AspireApiResponse(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of AspireApiRequest(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest and conformance Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t AspireNetworkManager.endpointUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8CipherML20AspireNetworkManager_endpointUrl;
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AspireNetworkManager.authenticationToken.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_authenticationToken);

  return v1;
}

uint64_t AspireNetworkManager.networkDelegationConfig.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_networkDelegationConfig);

  return v1;
}

uint64_t AspireNetworkManager.featureId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_featureId);

  return v1;
}

uint64_t AspireNetworkManager.__allocating_init(endpointUrl:issuerUrl:authenticationToken:networkDelegationConfig:privacyProxyFailClosed:secondaryIdentifier:featureId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11)
{
  v49 = a7;
  v53 = a3;
  v54 = a2;
  v55 = a1;
  v50 = a10;
  v51 = a11;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v52 = &v46 - v16;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v48 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12TokenFetcherVSgMd, &_s8CipherML12TokenFetcherVSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v46 - v21;
  v23 = swift_allocObject();
  v24 = a6;
  v25 = specialized static NetworkManagerHelper.urlSessionConfiguration(delegation:secondaryIdentifier:)(a5, a6, a8, a9);

  type metadata accessor for ManagedURLSession();
  v26 = swift_allocObject();
  v27 = [objc_opt_self() sessionWithConfiguration_];

  *(v26 + 16) = v27;
  v28 = *(v18 + 16);
  v28(v23 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_endpointUrl, v55, v17);
  v29 = v49;
  v30 = (v23 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_authenticationToken);
  *v30 = v53;
  v30[1] = a4;
  v31 = (v23 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_networkDelegationConfig);
  *v31 = a5;
  v31[1] = v24;
  *(v23 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_privacyProxyFailClosed) = v29;
  if (a4)
  {
    v32 = a4;
    v47 = v26;
    v49 = v29 & 1;
    v33 = v52;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v54, v52, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v34 = *(v18 + 48);
    if (v34(v33, 1, v17) == 1)
    {
      v35 = v48;
      v28(v48, v55, v17);
      v36 = v34(v52, 1, v17);
      swift_bridgeObjectRetain_n();
      v37 = v36 == 1;
      v38 = v35;
      v26 = v47;
      if (!v37)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v52, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      }
    }

    else
    {
      v38 = v48;
      (*(v18 + 32))(v48, v52, v17);
      swift_bridgeObjectRetain_n();
      v26 = v47;
    }

    (*(v18 + 32))(v22, v38, v17);
    v40 = type metadata accessor for TokenFetcher(0);
    v41 = &v22[v40[5]];
    *v41 = v53;
    v41[1] = v32;
    *&v22[v40[6]] = v26;
    v22[v40[7]] = v49;
    (*(*(v40 - 1) + 56))(v22, 0, 1, v40);
  }

  else
  {
    v39 = type metadata accessor for TokenFetcher(0);
    (*(*(v39 - 8) + 56))(v22, 1, 1, v39);
  }

  v42 = v54;
  outlined init with take of TokenFetcher?(v22, v23 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_tokenFetcher);
  v43 = (v23 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_featureId);
  v44 = v51;
  *v43 = v50;
  v43[1] = v44;
  *(v23 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_urlSession) = v26;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v42, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v18 + 8))(v55, v17);
  return v23;
}

uint64_t AspireNetworkManager.init(endpointUrl:issuerUrl:authenticationToken:networkDelegationConfig:privacyProxyFailClosed:secondaryIdentifier:featureId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11)
{
  v47 = a7;
  v52 = a3;
  v53 = a2;
  v54 = a1;
  v49 = a10;
  v50 = a11;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v16 - 8);
  v51 = &v45 - v17;
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v46 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12TokenFetcherVSgMd, &_s8CipherML12TokenFetcherVSgMR);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v45 - v22;
  v24 = a6;
  v25 = specialized static NetworkManagerHelper.urlSessionConfiguration(delegation:secondaryIdentifier:)(a5, a6, a8, a9);

  type metadata accessor for ManagedURLSession();
  v26 = swift_allocObject();
  v27 = [objc_opt_self() sessionWithConfiguration_];

  v48 = v26;
  *(v26 + 16) = v27;
  v28 = *(v19 + 16);
  v28(v11 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_endpointUrl, v54, v18);
  v29 = v47;
  v30 = (v11 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_authenticationToken);
  *v30 = v52;
  v30[1] = a4;
  v31 = (v11 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_networkDelegationConfig);
  *v31 = a5;
  v31[1] = v24;
  *(v11 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_privacyProxyFailClosed) = v29;
  if (a4)
  {
    v32 = a4;
    v47 = v29 & 1;
    v33 = v51;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v53, v51, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v34 = *(v19 + 48);
    if (v34(v33, 1, v18) == 1)
    {
      v35 = v46;
      v28(v46, v54, v18);
      v36 = v34(v51, 1, v18);
      swift_bridgeObjectRetain_n();
      if (v36 != 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v51, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      }
    }

    else
    {
      v35 = v46;
      (*(v19 + 32))(v46, v51, v18);
      swift_bridgeObjectRetain_n();
    }

    (*(v19 + 32))(v23, v35, v18);
    v40 = type metadata accessor for TokenFetcher(0);
    v41 = &v23[v40[5]];
    *v41 = v52;
    v41[1] = v32;
    v39 = v48;
    *&v23[v40[6]] = v48;
    v23[v40[7]] = v47;
    (*(*(v40 - 1) + 56))(v23, 0, 1, v40);

    v38 = v53;
  }

  else
  {
    v37 = type metadata accessor for TokenFetcher(0);
    (*(*(v37 - 8) + 56))(v23, 1, 1, v37);
    v38 = v53;
    v39 = v48;
  }

  outlined init with take of TokenFetcher?(v23, v11 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_tokenFetcher);
  v42 = (v11 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_featureId);
  v43 = v50;
  *v42 = v49;
  v42[1] = v43;
  *(v11 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_urlSession) = v39;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v38, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v19 + 8))(v54, v18);
  return v11;
}

uint64_t AspireNetworkManager.fetchConfigs(useCases:userId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[25] = a3;
  v4[26] = v3;
  v4[23] = a1;
  v4[24] = a2;
  type metadata accessor for String.Encoding();
  v4[27] = swift_task_alloc();
  type metadata accessor for BinaryDecodingOptions();
  v4[28] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v4[29] = v5;
  v4[30] = *(v5 - 8);
  v4[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12TokenFetcherVSgMd, &_s8CipherML12TokenFetcherVSgMR);
  v4[32] = swift_task_alloc();
  v6 = type metadata accessor for TokenFetcher(0);
  v4[33] = v6;
  v4[34] = *(v6 - 8);
  v4[35] = swift_task_alloc();
  v7 = type metadata accessor for URL.DirectoryHint();
  v4[36] = v7;
  v4[37] = *(v7 - 8);
  v4[38] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v4[39] = v8;
  v4[40] = *(v8 - 8);
  v4[41] = swift_task_alloc();
  v9 = type metadata accessor for URLRequest();
  v4[42] = v9;
  v4[43] = *(v9 - 8);
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v4[46] = type metadata accessor for AspireApiConfigRequest(0);
  v4[47] = swift_task_alloc();

  return MEMORY[0x2822009F8](AspireNetworkManager.fetchConfigs(useCases:userId:), 0, 0);
}

{
  v5 = *v4;
  v5[60] = a1;
  v5[61] = a2;
  v5[62] = a3;
  v5[63] = v3;

  if (v3)
  {
    v6 = AspireNetworkManager.fetchConfigs(useCases:userId:);
  }

  else
  {
    v6 = AspireNetworkManager.fetchConfigs(useCases:userId:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t AspireNetworkManager.fetchConfigs(useCases:userId:)()
{
  v112 = v0;
  v111 = *MEMORY[0x277D85DE8];
  v1 = v0[24];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    *__dst = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v4 = *__dst;
    v5 = *(*__dst + 16);
    v6 = 16 * v5;
    v103 = v1;
    v7 = (v1 + 40);
    v8 = v2;
    do
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      *__dst = v4;
      v11 = v5 + 1;
      v12 = *(v4 + 24);

      if (v5 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v11, 1);
        v4 = *__dst;
      }

      *(v4 + 16) = v11;
      v13 = v4 + v6;
      *(v13 + 32) = v10;
      *(v13 + 40) = v9;
      v6 += 16;
      v7 += 3;
      ++v5;
      --v8;
    }

    while (v8);
    *__dst = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v14 = *__dst;
    v15 = *(*__dst + 16);
    v16 = (v103 + 48);
    do
    {
      v17 = *v16;
      *__dst = v14;
      v18 = v15 + 1;
      v19 = *(v14 + 24);

      if (v15 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v15 + 1, 1);
        v14 = *__dst;
      }

      *(v14 + 16) = v18;
      *(v14 + 8 * v15 + 32) = v17;
      v16 += 3;
      ++v15;
      --v2;
    }

    while (v2);
    v100 = v4;
    v0 = v107;
    v3 = MEMORY[0x277D84F90];
  }

  else
  {
    v18 = *(MEMORY[0x277D84F90] + 16);
    if (!v18)
    {
      v20 = MEMORY[0x277D84F90];

      v100 = v20;
      goto LABEL_25;
    }

    v100 = MEMORY[0x277D84F90];
    v14 = MEMORY[0x277D84F90];
  }

  v108 = v3;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
  v20 = v108;
  v21 = 32;
  v104 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]();
  do
  {
    v22 = *(v14 + v21);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    v0[5] = v23;
    v0[6] = v104;
    v0[2] = v22;
    v24 = __swift_project_boxed_opaque_existential_1(v0 + 2, v23);
    v25 = *v24;
    v26 = *(*v24 + 16);
    if (v26)
    {
      if (v26 <= 0xE)
      {
        memset(__dst, 0, sizeof(__dst));
        v110 = v26;
        memcpy(__dst, (v25 + 32), v26);
        v29 = *__dst;
        v30 = v101 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v110 << 16)) << 32);

        v101 = v30;
      }

      else
      {
        type metadata accessor for __DataStorage();
        swift_allocObject();

        v27 = __DataStorage.init(bytes:length:)();
        v28 = v27;
        if (v26 >= 0x7FFFFFFF)
        {
          type metadata accessor for Data.RangeReference();
          v29 = swift_allocObject();
          *(v29 + 16) = 0;
          *(v29 + 24) = v26;
          v30 = v28 | 0x8000000000000000;
        }

        else
        {
          v29 = v26 << 32;
          v30 = v27 | 0x4000000000000000;
        }
      }
    }

    else
    {

      v29 = 0;
      v30 = 0xC000000000000000;
    }

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v32 = *(v108 + 16);
    v31 = *(v108 + 24);
    if (v32 >= v31 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
    }

    *(v108 + 16) = v32 + 1;
    v33 = v108 + 16 * v32;
    *(v33 + 32) = v29;
    *(v33 + 40) = v30;
    v21 += 8;
    --v18;
    v0 = v107;
  }

  while (v18);

LABEL_25:
  v0[48] = v100;
  v0[49] = v20;
  v34 = swift_task_alloc();
  *(v34 + 16) = v100;
  *(v34 + 24) = v20;
  lazy protocol witness table accessor for type AspireApiConfigRequest and conformance AspireApiConfigRequest(&lazy protocol witness table cache variable for type AspireApiConfigRequest and conformance AspireApiConfigRequest, type metadata accessor for AspireApiConfigRequest, &protocol conformance descriptor for AspireApiConfigRequest);
  static Message.with(_:)();

  v0[50] = Message.serializedData(partial:)();
  v0[51] = v35;
  v36 = v107[38];
  v37 = v107[37];
  v38 = v107[36];
  v39 = v107[26];
  outlined destroy of AspireApiConfigRequest(v0[47], type metadata accessor for AspireApiConfigRequest);
  v107[7] = 0x6769666E6F63;
  v107[8] = 0xE600000000000000;
  (*(v37 + 104))(v36, *MEMORY[0x277CC91D8], v38);
  v107[52] = lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(path:directoryHint:)();
  (*(v37 + 8))(v36, v38);
  v40 = objc_allocWithZone(MEMORY[0x277CCAB70]);
  URL._bridgeToObjectiveC()(v41);
  v43 = v42;
  v44 = [v40 initWithURL_];
  v107[53] = v44;

  [v44 _setPrivacyProxyFailClosed_];
  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();
  v45.value._countAndFlagsBits = UUID.uuidString.getter();
  v46._countAndFlagsBits = 0x6564492D72657355;
  v46._object = 0xEF7265696669746ELL;
  URLRequest.setValue(_:forHTTPHeaderField:)(v45, v46);

  v47 = *(v39 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_featureId + 8);
  if (v47)
  {
    v48 = *(v39 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_featureId);
    v49._countAndFlagsBits = 0x65662D656C707061;
    v49._object = 0xEF64696572757461;
    URLRequest.setValue(_:forHTTPHeaderField:)(*(&v47 - 1), v49);
  }

  v50 = v107[33];
  v51 = v107[34];
  v52 = v107[32];
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v107[26] + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_tokenFetcher, v52, &_s8CipherML12TokenFetcherVSgMd, &_s8CipherML12TokenFetcherVSgMR);
  if ((*(v51 + 48))(v52, 1, v50) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v107[32], &_s8CipherML12TokenFetcherVSgMd, &_s8CipherML12TokenFetcherVSgMR);
    v53 = v107[53];
    v55 = v107[50];
    v54 = v107[51];
    v56 = v107[44];
    v102 = v107[45];
    v105 = v107[49];
    v57 = v107[42];
    v58 = v107[43];
    v60 = v107[40];
    v59 = v107[41];
    v61 = v107[39];
    URLRequest.httpMethod.setter();
    outlined copy of Data._Representation(v55, v54);
    URLRequest.httpBody.setter();

    (*(v60 + 8))(v59, v61);
    (*(v58 + 32))(v102, v56, v57);
    v62 = *(v105 + 16);
    v63 = v107[49];
    if (v62)
    {
      *__dst = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v62, 0);
      v64 = *__dst;
      v65 = (v63 + 40);
      do
      {
        v66 = *(v65 - 1);
        v67 = *v65;
        outlined copy of Data._Representation(v66, *v65);
        v68 = Data.base64EncodedString(options:)(0);
        outlined consume of Data._Representation(v66, v67);
        *__dst = v64;
        v70 = *(v64 + 16);
        v69 = *(v64 + 24);
        if (v70 >= v69 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v70 + 1, 1);
          v64 = *__dst;
        }

        v65 += 2;
        *(v64 + 16) = v70 + 1;
        *(v64 + 16 * v70 + 32) = v68;
        --v62;
      }

      while (v62);
    }

    else
    {

      v64 = MEMORY[0x277D84F90];
    }

    if (one-time initialization token for networking != -1)
    {
      swift_once();
    }

    v74 = v107[30];
    v73 = v107[31];
    v75 = v107[29];
    v76 = v107[25];
    v77 = type metadata accessor for Logger();
    v107[58] = __swift_project_value_buffer(v77, static Logger.networking);
    (*(v74 + 16))(v73, v76, v75);

    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.default.getter();

    v80 = os_log_type_enabled(v78, v79);
    v81 = v107[48];
    v83 = v107[30];
    v82 = v107[31];
    v84 = v107[29];
    if (v80)
    {
      v85 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      *__dst = v106;
      *v85 = 136446723;
      v86 = MEMORY[0x22AA60B60](v81, MEMORY[0x277D837D0]);
      v88 = v87;

      v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v88, __dst);

      *(v85 + 4) = v89;
      *(v85 + 12) = 2081;
      v90 = UUID.uuidString.getter();
      v92 = v91;
      (*(v83 + 8))(v82, v84);
      v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v92, __dst);

      *(v85 + 14) = v93;
      *(v85 + 22) = 2082;
      v94 = MEMORY[0x22AA60B60](v64, MEMORY[0x277D837D0]);
      v96 = v95;

      v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v96, __dst);

      *(v85 + 24) = v97;
      _os_log_impl(&dword_224E26000, v78, v79, "Request to fetchConfigs has started for useCases '%{public}s', userId: '%{private}s', existingConfigIds: '%{public}s'", v85, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA61F40](v106, -1, -1);
      MEMORY[0x22AA61F40](v85, -1, -1);
    }

    else
    {

      (*(v83 + 8))(v82, v84);
    }

    v98 = swift_task_alloc();
    v107[59] = v98;
    *v98 = v107;
    v98[1] = AspireNetworkManager.fetchConfigs(useCases:userId:);
    v99 = v107[45];

    return MEMORY[0x28211ECF8](v99, 0);
  }

  else
  {
    outlined init with take of TokenFetcher(v107[32], v107[35], type metadata accessor for TokenFetcher);
    v71 = swift_task_alloc();
    v107[54] = v71;
    *v71 = v107;
    v71[1] = AspireNetworkManager.fetchConfigs(useCases:userId:);

    return TokenFetcher.getToken()();
  }
}

{
  v63 = v0;
  v62 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 448);
  v1 = *(v0 + 456);
  v58 = *(v0 + 280);
  _StringGuts.grow(_:)(21);

  v61.value._countAndFlagsBits = 0xD000000000000013;
  v61.value._object = 0x8000000225035BE0;
  *(v0 + 88) = Data.base64EncodedString(options:)(0);
  *(v0 + 104) = 43;
  *(v0 + 112) = 0xE100000000000000;
  *(v0 + 120) = 45;
  *(v0 + 128) = 0xE100000000000000;
  v3 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v5 = v4;

  *(v0 + 136) = v3;
  *(v0 + 144) = v5;
  *(v0 + 152) = 47;
  *(v0 + 160) = 0xE100000000000000;
  *(v0 + 168) = 95;
  *(v0 + 176) = 0xE100000000000000;
  v6 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v8 = v7;

  MEMORY[0x22AA60A80](v6, v8);

  v9._countAndFlagsBits = 0x7A69726F68747541;
  v9._object = 0xED00006E6F697461;
  URLRequest.setValue(_:forHTTPHeaderField:)(v61, v9);

  outlined consume of Data._Representation(v1, v2);
  outlined destroy of AspireApiConfigRequest(v58, type metadata accessor for TokenFetcher);
  v10 = *(v0 + 424);
  v12 = *(v0 + 400);
  v11 = *(v0 + 408);
  v56 = *(v0 + 360);
  v59 = *(v0 + 392);
  v13 = *(v0 + 352);
  v14 = *(v0 + 344);
  v55 = *(v0 + 336);
  v15 = *(v0 + 320);
  v16 = *(v0 + 328);
  v17 = *(v0 + 312);
  URLRequest.httpMethod.setter();
  outlined copy of Data._Representation(v12, v11);
  URLRequest.httpBody.setter();

  (*(v15 + 8))(v16, v17);
  (*(v14 + 32))(v56, v13, v55);
  v18 = *(v59 + 16);
  v19 = *(v0 + 392);
  if (v18)
  {
    v61.value._countAndFlagsBits = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
    countAndFlagsBits = v61.value._countAndFlagsBits;
    v21 = (v19 + 40);
    do
    {
      v22 = *(v21 - 1);
      v23 = *v21;
      outlined copy of Data._Representation(v22, *v21);
      v24 = Data.base64EncodedString(options:)(0);
      outlined consume of Data._Representation(v22, v23);
      v61.value._countAndFlagsBits = countAndFlagsBits;
      v26 = *(countAndFlagsBits + 16);
      v25 = *(countAndFlagsBits + 24);
      if (v26 >= v25 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
        countAndFlagsBits = v61.value._countAndFlagsBits;
      }

      v21 += 2;
      *(countAndFlagsBits + 16) = v26 + 1;
      *(countAndFlagsBits + 16 * v26 + 32) = v24;
      --v18;
    }

    while (v18);
  }

  else
  {

    countAndFlagsBits = MEMORY[0x277D84F90];
  }

  if (one-time initialization token for networking != -1)
  {
    swift_once();
  }

  v28 = *(v0 + 240);
  v27 = *(v0 + 248);
  v29 = *(v0 + 232);
  v30 = *(v0 + 200);
  v31 = type metadata accessor for Logger();
  *(v0 + 464) = __swift_project_value_buffer(v31, static Logger.networking);
  (*(v28 + 16))(v27, v30, v29);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  v34 = os_log_type_enabled(v32, v33);
  v35 = *(v0 + 384);
  v37 = *(v0 + 240);
  v36 = *(v0 + 248);
  v38 = *(v0 + 232);
  if (v34)
  {
    v39 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v61.value._countAndFlagsBits = v60;
    *v39 = 136446723;
    v40 = MEMORY[0x22AA60B60](v35, MEMORY[0x277D837D0]);
    v57 = v33;
    v42 = v41;

    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v61.value._countAndFlagsBits);

    *(v39 + 4) = v43;
    *(v39 + 12) = 2081;
    v44 = UUID.uuidString.getter();
    v46 = v45;
    (*(v37 + 8))(v36, v38);
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v61.value._countAndFlagsBits);

    *(v39 + 14) = v47;
    *(v39 + 22) = 2082;
    v48 = MEMORY[0x22AA60B60](countAndFlagsBits, MEMORY[0x277D837D0]);
    v50 = v49;

    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &v61.value._countAndFlagsBits);

    *(v39 + 24) = v51;
    _os_log_impl(&dword_224E26000, v32, v57, "Request to fetchConfigs has started for useCases '%{public}s', userId: '%{private}s', existingConfigIds: '%{public}s'", v39, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA61F40](v60, -1, -1);
    MEMORY[0x22AA61F40](v39, -1, -1);
  }

  else
  {

    (*(v37 + 8))(v36, v38);
  }

  v52 = swift_task_alloc();
  *(v0 + 472) = v52;
  *v52 = v0;
  v52[1] = AspireNetworkManager.fetchConfigs(useCases:userId:);
  v53 = *(v0 + 360);

  return MEMORY[0x28211ECF8](v53, 0);
}

{
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);
  v4 = *(v0 + 344);
  v3 = *(v0 + 352);
  v6 = *(v0 + 328);
  v5 = *(v0 + 336);
  v7 = *(v0 + 312);
  v8 = *(v0 + 320);
  v9 = *(v0 + 280);

  outlined destroy of AspireApiConfigRequest(v9, type metadata accessor for TokenFetcher);
  (*(v4 + 8))(v3, v5);
  (*(v8 + 8))(v6, v7);
  outlined consume of Data._Representation(v1, v2);

  v10 = *(v0 + 8);

  return v10();
}

{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1 || [v1 statusCode] != 200)
  {
    v9 = *(v0 + 496);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 496);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      *(v13 + 4) = v12;
      *v14 = v12;
      v15 = v12;
      _os_log_impl(&dword_224E26000, v10, v11, "Failed to fetch configs. %{public}@", v13, 0xCu);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x22AA61F40](v14, -1, -1);
      MEMORY[0x22AA61F40](v13, -1, -1);
    }

    v16 = *(v0 + 488);
    v17 = *(v0 + 480);
    v19 = *(v0 + 400);
    v18 = *(v0 + 408);
    v47 = *(v0 + 360);
    v48 = *(v0 + 496);
    v20 = *(v0 + 344);
    v46 = *(v0 + 336);

    type metadata accessor for CipherMLError(0);
    lazy protocol witness table accessor for type AspireApiConfigRequest and conformance AspireApiConfigRequest(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    v22 = v21;
    static String.Encoding.utf8.getter();
    v23 = String.init(data:encoding:)();
    if (v24)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0;
    }

    v26 = 0xE000000000000000;
    if (v24)
    {
      v26 = v24;
    }

    *v22 = v25;
    v22[1] = v26;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined consume of Data._Representation(v19, v18);
    outlined consume of Data._Representation(v17, v16);

    (*(v20 + 8))(v47, v46);
    goto LABEL_26;
  }

  outlined copy of Data._Representation(*(v0 + 480), *(v0 + 488));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 488);
  if (!v4)
  {
    outlined consume of Data._Representation(*(v0 + 480), *(v0 + 488));
    goto LABEL_24;
  }

  v6 = swift_slowAlloc();
  *v6 = 134349056;
  v7 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v7 != 2)
    {
      v8 = 0;
      goto LABEL_23;
    }

    v27 = *(*(v0 + 480) + 16);
    v28 = *(*(v0 + 480) + 24);
    v29 = __OFSUB__(v28, v27);
    v8 = v28 - v27;
    if (!v29)
    {
      goto LABEL_23;
    }

    __break(1u);
LABEL_20:
    v30 = *(v0 + 480);
    v31 = *(v0 + 484);
    v29 = __OFSUB__(v31, v30);
    v32 = v31 - v30;
    if (v29)
    {
      __break(1u);
    }

    v8 = v32;
    goto LABEL_23;
  }

  if (v7)
  {
    goto LABEL_20;
  }

  v8 = *(v0 + 494);
LABEL_23:
  v34 = *(v0 + 480);
  v33 = *(v0 + 488);
  *(v6 + 4) = v8;
  v35 = v6;
  outlined consume of Data._Representation(v34, v33);
  _os_log_impl(&dword_224E26000, v2, v3, "Request to fetchConfigs has finished, response length: %{public}ld", v35, 0xCu);
  MEMORY[0x22AA61F40](v35, -1, -1);
LABEL_24:
  v36 = *(v0 + 504);
  v38 = *(v0 + 480);
  v37 = *(v0 + 488);

  type metadata accessor for AspireApiConfigResponse(0);
  *(v0 + 72) = v38;
  *(v0 + 80) = v37;
  outlined copy of Data._Representation(v38, v37);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type AspireApiConfigRequest and conformance AspireApiConfigRequest(&lazy protocol witness table cache variable for type AspireApiConfigResponse and conformance AspireApiConfigResponse, type metadata accessor for AspireApiConfigResponse, &protocol conformance descriptor for AspireApiConfigResponse);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  v40 = *(v0 + 488);
  v39 = *(v0 + 496);
  v41 = *(v0 + 480);
  v43 = *(v0 + 400);
  v42 = *(v0 + 408);
  if (v36)
  {
    (*(*(v0 + 344) + 8))(*(v0 + 360), *(v0 + 336));

    outlined consume of Data._Representation(v41, v40);
    outlined consume of Data._Representation(v43, v42);
LABEL_26:

    v44 = *(v0 + 8);
    goto LABEL_27;
  }

  (*(*(v0 + 344) + 8))(*(v0 + 360), *(v0 + 336));

  outlined consume of Data._Representation(v41, v40);
  outlined consume of Data._Representation(v43, v42);

  v44 = *(v0 + 8);
LABEL_27:

  return v44();
}

{
  v1 = v0[45];
  v2 = v0[42];
  v3 = v0[43];
  outlined consume of Data._Representation(v0[50], v0[51]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t AspireNetworkManager.fetchConfigs(useCases:userId:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 440) = v2;

  if (v2)
  {

    v7 = AspireNetworkManager.fetchConfigs(useCases:userId:);
  }

  else
  {
    *(v6 + 448) = a2;
    *(v6 + 456) = a1;
    v7 = AspireNetworkManager.fetchConfigs(useCases:userId:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t AspireNetworkManager.uploadKeys(evaluationKeys:userId:)(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  v4 = type metadata accessor for UUID();
  v3[19] = v4;
  v3[20] = *(v4 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = type metadata accessor for AspireApiEvaluationKeys(0);
  v3[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12TokenFetcherVSgMd, &_s8CipherML12TokenFetcherVSgMR);
  v3[24] = swift_task_alloc();
  v5 = type metadata accessor for TokenFetcher(0);
  v3[25] = v5;
  v3[26] = *(v5 - 8);
  v3[27] = swift_task_alloc();
  v6 = type metadata accessor for URL.DirectoryHint();
  v3[28] = v6;
  v3[29] = *(v6 - 8);
  v3[30] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v3[31] = v7;
  v3[32] = *(v7 - 8);
  v3[33] = swift_task_alloc();
  v8 = type metadata accessor for URLRequest();
  v3[34] = v8;
  v3[35] = *(v8 - 8);
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](AspireNetworkManager.uploadKeys(evaluationKeys:userId:), 0, 0);
}

{
  v6 = *v3;
  *(*v3 + 344) = v2;

  if (v2)
  {
    v7 = AspireNetworkManager.uploadKeys(evaluationKeys:userId:);
  }

  else
  {
    *(v6 + 352) = a2;
    *(v6 + 360) = a1;
    v7 = AspireNetworkManager.uploadKeys(evaluationKeys:userId:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t AspireNetworkManager.uploadKeys(evaluationKeys:userId:)()
{
  v72 = v0;
  lazy protocol witness table accessor for type AspireApiConfigRequest and conformance AspireApiConfigRequest(&lazy protocol witness table cache variable for type AspireApiEvaluationKeys and conformance AspireApiEvaluationKeys, type metadata accessor for AspireApiEvaluationKeys, &protocol conformance descriptor for AspireApiEvaluationKeys);
  *(v0 + 304) = Message.serializedData(partial:)();
  *(v0 + 312) = v1;
  *(v0 + 16) = 7955819;
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = *(v0 + 224);
  v5 = *(v0 + 144);
  *(v0 + 24) = 0xE300000000000000;
  (*(v3 + 104))(v2, *MEMORY[0x277CC91D8], v4);
  *(v0 + 320) = lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(path:directoryHint:)();
  (*(v3 + 8))(v2, v4);
  v6 = objc_allocWithZone(MEMORY[0x277CCAB70]);
  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  v10 = [v6 initWithURL_];
  *(v0 + 328) = v10;

  [v10 _setPrivacyProxyFailClosed_];
  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();
  v11.value._countAndFlagsBits = UUID.uuidString.getter();
  v12._countAndFlagsBits = 0x6564492D72657355;
  v12._object = 0xEF7265696669746ELL;
  URLRequest.setValue(_:forHTTPHeaderField:)(v11, v12);

  v13 = *(v5 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_featureId + 8);
  if (v13)
  {
    v14 = *(v5 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_featureId);
    v15._countAndFlagsBits = 0x65662D656C707061;
    v15._object = 0xEF64696572757461;
    URLRequest.setValue(_:forHTTPHeaderField:)(*(&v13 - 1), v15);
  }

  v16 = *(v0 + 200);
  v17 = *(v0 + 208);
  v18 = *(v0 + 192);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(*(v0 + 144) + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_tokenFetcher, v18, &_s8CipherML12TokenFetcherVSgMd, &_s8CipherML12TokenFetcherVSgMR);
  if ((*(v17 + 48))(v18, 1, v16) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 192), &_s8CipherML12TokenFetcherVSgMd, &_s8CipherML12TokenFetcherVSgMR);
    v19 = *(v0 + 328);
    v21 = *(v0 + 304);
    v20 = *(v0 + 312);
    v22 = *(v0 + 288);
    v70 = *(v0 + 296);
    v23 = *(v0 + 272);
    v24 = *(v0 + 280);
    v25 = *(v0 + 256);
    v26 = *(v0 + 264);
    v27 = *(v0 + 248);
    URLRequest.httpMethod.setter();
    outlined copy of Data._Representation(v21, v20);
    URLRequest.httpBody.setter();

    (*(v25 + 8))(v26, v27);
    (*(v24 + 32))(v70, v22, v23);
    if (one-time initialization token for networking != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 304);
    v29 = *(v0 + 312);
    v30 = *(v0 + 184);
    v32 = *(v0 + 160);
    v31 = *(v0 + 168);
    v33 = *(v0 + 152);
    v35 = *(v0 + 128);
    v34 = *(v0 + 136);
    v36 = type metadata accessor for Logger();
    *(v0 + 368) = __swift_project_value_buffer(v36, static Logger.networking);
    outlined init with copy of AspireApiEvaluationKeys(v35, v30, type metadata accessor for AspireApiEvaluationKeys);
    (*(v32 + 16))(v31, v34, v33);
    outlined copy of Data._Representation(v28, v29);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v0 + 312);
    if (!v39)
    {
      v51 = *(v0 + 304);
      v53 = *(v0 + 160);
      v52 = *(v0 + 168);
      v54 = *(v0 + 152);
      outlined destroy of AspireApiConfigRequest(*(v0 + 184), type metadata accessor for AspireApiEvaluationKeys);
      outlined consume of Data._Representation(v51, v40);

      (*(v53 + 8))(v52, v54);
      goto LABEL_22;
    }

    v41 = *(v0 + 184);
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v71 = v43;
    *v42 = 134349571;
    v44 = *(*v41 + 16);
    v45 = outlined destroy of AspireApiConfigRequest(v41, type metadata accessor for AspireApiEvaluationKeys);
    *(v42 + 4) = v44;
    *(v42 + 12) = 2050;
    v47 = v40 >> 62;
    if ((v40 >> 62) > 1)
    {
      if (v47 != 2)
      {
        v48 = 0;
        goto LABEL_21;
      }

      v55 = *(*(v0 + 304) + 16);
      v56 = *(*(v0 + 304) + 24);
      v57 = __OFSUB__(v56, v55);
      v48 = v56 - v55;
      if (!v57)
      {
        goto LABEL_21;
      }

      __break(1u);
    }

    else if (!v47)
    {
      v48 = *(v0 + 318);
LABEL_21:
      v60 = *(v0 + 304);
      v61 = *(v0 + 312);
      v63 = *(v0 + 160);
      v62 = *(v0 + 168);
      v64 = *(v0 + 152);
      *(v42 + 14) = v48;
      outlined consume of Data._Representation(v60, v61);
      *(v42 + 22) = 2081;
      v65 = UUID.uuidString.getter();
      v67 = v66;
      (*(v63 + 8))(v62, v64);
      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, &v71);

      *(v42 + 24) = v68;
      _os_log_impl(&dword_224E26000, v37, v38, "Request to uploadKeys has started for %{public}ld key(s) with %{public}ld bytes for userId: '%{private}s'", v42, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x22AA61F40](v43, -1, -1);
      MEMORY[0x22AA61F40](v42, -1, -1);

LABEL_22:
      v69 = swift_task_alloc();
      *(v0 + 376) = v69;
      *v69 = v0;
      v69[1] = AspireNetworkManager.uploadKeys(evaluationKeys:userId:);
      v45 = *(v0 + 296);
      v46 = 0;

      return MEMORY[0x28211ECF8](v45, v46);
    }

    v58 = *(v0 + 304);
    v59 = *(v0 + 308);
    v57 = __OFSUB__(v59, v58);
    LODWORD(v48) = v59 - v58;
    if (v57)
    {
      __break(1u);
      return MEMORY[0x28211ECF8](v45, v46);
    }

    v48 = v48;
    goto LABEL_21;
  }

  outlined init with take of TokenFetcher(*(v0 + 192), *(v0 + 216), type metadata accessor for TokenFetcher);
  v49 = swift_task_alloc();
  *(v0 + 336) = v49;
  *v49 = v0;
  v49[1] = AspireNetworkManager.uploadKeys(evaluationKeys:userId:);

  return TokenFetcher.getToken()();
}

{
  v63 = v0;
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v60 = *(v0 + 216);
  _StringGuts.grow(_:)(21);

  v62.value._countAndFlagsBits = 0xD000000000000013;
  v62.value._object = 0x8000000225035BE0;
  *(v0 + 32) = Data.base64EncodedString(options:)(0);
  *(v0 + 48) = 43;
  *(v0 + 56) = 0xE100000000000000;
  *(v0 + 64) = 45;
  *(v0 + 72) = 0xE100000000000000;
  v3 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v5 = v4;

  *(v0 + 80) = v3;
  *(v0 + 88) = v5;
  *(v0 + 96) = 47;
  *(v0 + 104) = 0xE100000000000000;
  *(v0 + 112) = 95;
  *(v0 + 120) = 0xE100000000000000;
  v6 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v8 = v7;

  MEMORY[0x22AA60A80](v6, v8);

  v9._countAndFlagsBits = 0x7A69726F68747541;
  v9._object = 0xED00006E6F697461;
  URLRequest.setValue(_:forHTTPHeaderField:)(v62, v9);

  outlined consume of Data._Representation(v1, v2);
  outlined destroy of AspireApiConfigRequest(v60, type metadata accessor for TokenFetcher);
  v10 = *(v0 + 328);
  v12 = *(v0 + 304);
  v11 = *(v0 + 312);
  v61 = *(v0 + 296);
  v13 = *(v0 + 288);
  v14 = *(v0 + 272);
  v15 = *(v0 + 280);
  v16 = *(v0 + 256);
  v17 = *(v0 + 264);
  v18 = *(v0 + 248);
  URLRequest.httpMethod.setter();
  outlined copy of Data._Representation(v12, v11);
  URLRequest.httpBody.setter();

  (*(v16 + 8))(v17, v18);
  (*(v15 + 32))(v61, v13, v14);
  if (one-time initialization token for networking != -1)
  {
    swift_once();
  }

  v19 = *(v0 + 304);
  v20 = *(v0 + 312);
  v21 = *(v0 + 184);
  v23 = *(v0 + 160);
  v22 = *(v0 + 168);
  v24 = *(v0 + 152);
  v26 = *(v0 + 128);
  v25 = *(v0 + 136);
  v27 = type metadata accessor for Logger();
  *(v0 + 368) = __swift_project_value_buffer(v27, static Logger.networking);
  outlined init with copy of AspireApiEvaluationKeys(v26, v21, type metadata accessor for AspireApiEvaluationKeys);
  (*(v23 + 16))(v22, v25, v24);
  outlined copy of Data._Representation(v19, v20);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  v30 = os_log_type_enabled(v28, v29);
  v31 = *(v0 + 312);
  if (!v30)
  {
    v40 = *(v0 + 304);
    v42 = *(v0 + 160);
    v41 = *(v0 + 168);
    v43 = *(v0 + 152);
    outlined destroy of AspireApiConfigRequest(*(v0 + 184), type metadata accessor for AspireApiEvaluationKeys);
    outlined consume of Data._Representation(v40, v31);

    (*(v42 + 8))(v41, v43);
    goto LABEL_16;
  }

  v32 = *(v0 + 184);
  v33 = swift_slowAlloc();
  v34 = swift_slowAlloc();
  v62.value._countAndFlagsBits = v34;
  *v33 = 134349571;
  v35 = *(*v32 + 16);
  v36 = outlined destroy of AspireApiConfigRequest(v32, type metadata accessor for AspireApiEvaluationKeys);
  *(v33 + 4) = v35;
  *(v33 + 12) = 2050;
  v38 = v31 >> 62;
  if ((v31 >> 62) > 1)
  {
    if (v38 != 2)
    {
      v39 = 0;
      goto LABEL_15;
    }

    v44 = *(*(v0 + 304) + 16);
    v45 = *(*(v0 + 304) + 24);
    v46 = __OFSUB__(v45, v44);
    v39 = v45 - v44;
    if (!v46)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_12:
    v47 = *(v0 + 304);
    v48 = *(v0 + 308);
    v46 = __OFSUB__(v48, v47);
    LODWORD(v39) = v48 - v47;
    if (v46)
    {
      __break(1u);
      return MEMORY[0x28211ECF8](v36, v37);
    }

    v39 = v39;
    goto LABEL_15;
  }

  if (v38)
  {
    goto LABEL_12;
  }

  v39 = *(v0 + 318);
LABEL_15:
  v49 = *(v0 + 304);
  v50 = *(v0 + 312);
  v52 = *(v0 + 160);
  v51 = *(v0 + 168);
  v53 = *(v0 + 152);
  *(v33 + 14) = v39;
  outlined consume of Data._Representation(v49, v50);
  *(v33 + 22) = 2081;
  v54 = UUID.uuidString.getter();
  v56 = v55;
  (*(v52 + 8))(v51, v53);
  v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, &v62.value._countAndFlagsBits);

  *(v33 + 24) = v57;
  _os_log_impl(&dword_224E26000, v28, v29, "Request to uploadKeys has started for %{public}ld key(s) with %{public}ld bytes for userId: '%{private}s'", v33, 0x20u);
  __swift_destroy_boxed_opaque_existential_0(v34);
  MEMORY[0x22AA61F40](v34, -1, -1);
  MEMORY[0x22AA61F40](v33, -1, -1);

LABEL_16:
  v58 = swift_task_alloc();
  *(v0 + 376) = v58;
  *v58 = v0;
  v58[1] = AspireNetworkManager.uploadKeys(evaluationKeys:userId:);
  v36 = *(v0 + 296);
  v37 = 0;

  return MEMORY[0x28211ECF8](v36, v37);
}

{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  v4 = *(v0 + 280);
  v3 = *(v0 + 288);
  v6 = *(v0 + 264);
  v5 = *(v0 + 272);
  v7 = *(v0 + 248);
  v8 = *(v0 + 256);
  v9 = *(v0 + 216);

  outlined destroy of AspireApiConfigRequest(v9, type metadata accessor for TokenFetcher);
  (*(v4 + 8))(v3, v5);
  (*(v8 + 8))(v6, v7);
  outlined consume of Data._Representation(v1, v2);

  v10 = *(v0 + 8);

  return v10();
}

{
  outlined copy of Data._Representation(*(v0 + 384), *(v0 + 392));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 392);
  if (!v3)
  {
    outlined consume of Data._Representation(*(v0 + 384), *(v0 + 392));
    goto LABEL_14;
  }

  result = swift_slowAlloc();
  *result = 134349056;
  v6 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v6 != 2)
    {
      v7 = 0;
      goto LABEL_13;
    }

    v8 = *(*(v0 + 384) + 16);
    v9 = *(*(v0 + 384) + 24);
    v10 = __OFSUB__(v9, v8);
    v7 = v9 - v8;
    if (!v10)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_10:
    v11 = *(v0 + 384);
    v12 = *(v0 + 388);
    v10 = __OFSUB__(v12, v11);
    v13 = v12 - v11;
    if (v10)
    {
      __break(1u);
      return result;
    }

    v7 = v13;
    goto LABEL_13;
  }

  if (v6)
  {
    goto LABEL_10;
  }

  v7 = *(v0 + 398);
LABEL_13:
  v15 = *(v0 + 384);
  v14 = *(v0 + 392);
  *(result + 4) = v7;
  v16 = result;
  outlined consume of Data._Representation(v15, v14);
  _os_log_impl(&dword_224E26000, v1, v2, "Request to uploadKeys has finished, response length: %{public}ld", v16, 0xCu);
  MEMORY[0x22AA61F40](v16, -1, -1);
LABEL_14:

  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17 && [v17 statusCode] == 200)
  {
    v18 = *(v0 + 392);
    v19 = *(v0 + 400);
    v20 = *(v0 + 384);
    v22 = *(v0 + 304);
    v21 = *(v0 + 312);
    (*(*(v0 + 280) + 8))(*(v0 + 296), *(v0 + 272));
    outlined consume of Data._Representation(v22, v21);
    outlined consume of Data._Representation(v20, v18);

    v23 = *(v0 + 8);
  }

  else
  {
    v24 = *(v0 + 400);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = *(v0 + 400);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138543362;
      *(v28 + 4) = v27;
      *v29 = v27;
      v30 = v27;
      _os_log_impl(&dword_224E26000, v25, v26, "Failed to upload keys. %{public}@", v28, 0xCu);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x22AA61F40](v29, -1, -1);
      MEMORY[0x22AA61F40](v28, -1, -1);
    }

    v32 = *(v0 + 392);
    v31 = *(v0 + 400);
    v33 = *(v0 + 384);
    v35 = *(v0 + 304);
    v34 = *(v0 + 312);
    v38 = *(v0 + 296);
    v36 = *(v0 + 272);
    v37 = *(v0 + 280);

    type metadata accessor for CipherMLError(0);
    lazy protocol witness table accessor for type AspireApiConfigRequest and conformance AspireApiConfigRequest(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    outlined consume of Data._Representation(v33, v32);
    outlined consume of Data._Representation(v35, v34);
    (*(v37 + 8))(v38, v36);

    v23 = *(v0 + 8);
  }

  return v23();
}

{
  v1 = v0[37];
  v2 = v0[34];
  v3 = v0[35];
  outlined consume of Data._Representation(v0[38], v0[39]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t AspireNetworkManager.uploadKeys(evaluationKeys:userId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[48] = a1;
  v5[49] = a2;
  v5[50] = a3;
  v5[51] = v3;

  if (v3)
  {
    v6 = AspireNetworkManager.uploadKeys(evaluationKeys:userId:);
  }

  else
  {
    v6 = AspireNetworkManager.uploadKeys(evaluationKeys:userId:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t AspireNetworkManager.queries(requests:userId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[22] = a3;
  v4[23] = v3;
  v4[20] = a1;
  v4[21] = a2;
  type metadata accessor for String.Encoding();
  v4[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = type metadata accessor for AspireApiError.ConfigVersionNotFound(0);
  v4[28] = swift_task_alloc();
  v5 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  v4[29] = v5;
  v4[30] = *(v5 - 8);
  v4[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorVSgMd, &_s8CipherML14AspireApiErrorVSgMR);
  v4[35] = swift_task_alloc();
  v6 = type metadata accessor for AspireApiError(0);
  v4[36] = v6;
  v4[37] = *(v6 - 8);
  v4[38] = swift_task_alloc();
  type metadata accessor for BinaryDecodingOptions();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v4[41] = v7;
  v4[42] = *(v7 - 8);
  v4[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12TokenFetcherVSgMd, &_s8CipherML12TokenFetcherVSgMR);
  v4[44] = swift_task_alloc();
  v8 = type metadata accessor for TokenFetcher(0);
  v4[45] = v8;
  v4[46] = *(v8 - 8);
  v4[47] = swift_task_alloc();
  v9 = type metadata accessor for URL.DirectoryHint();
  v4[48] = v9;
  v4[49] = *(v9 - 8);
  v4[50] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v4[51] = v10;
  v4[52] = *(v10 - 8);
  v4[53] = swift_task_alloc();
  v11 = type metadata accessor for URLRequest();
  v4[54] = v11;
  v4[55] = *(v11 - 8);
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v4[58] = type metadata accessor for AspireApiRequests(0);
  v4[59] = swift_task_alloc();

  return MEMORY[0x2822009F8](AspireNetworkManager.queries(requests:userId:), 0, 0);
}

{
  v5 = *v4;
  v5[70] = a1;
  v5[71] = a2;
  v5[72] = a3;
  v5[73] = v3;

  if (v3)
  {
    v6 = AspireNetworkManager.queries(requests:userId:);
  }

  else
  {
    v6 = AspireNetworkManager.queries(requests:userId:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t AspireNetworkManager.queries(requests:userId:)()
{
  v71 = v0;
  v1 = v0[21];
  *(swift_task_alloc() + 16) = v1;
  lazy protocol witness table accessor for type AspireApiConfigRequest and conformance AspireApiConfigRequest(&lazy protocol witness table cache variable for type AspireApiRequests and conformance AspireApiRequests, type metadata accessor for AspireApiRequests, &protocol conformance descriptor for AspireApiRequests);
  static Message.with(_:)();

  v0[60] = Message.serializedData(partial:)();
  v0[61] = v2;
  v4 = v0[49];
  v3 = v0[50];
  v5 = v0[48];
  v6 = v0[23];
  outlined destroy of AspireApiConfigRequest(v0[59], type metadata accessor for AspireApiRequests);
  v0[2] = 0x73656972657571;
  v0[3] = 0xE700000000000000;
  (*(v4 + 104))(v3, *MEMORY[0x277CC91D8], v5);
  v0[62] = lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(path:directoryHint:)();
  (*(v4 + 8))(v3, v5);
  v7 = objc_allocWithZone(MEMORY[0x277CCAB70]);
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  v11 = [v7 initWithURL_];
  v0[63] = v11;

  [v11 _setPrivacyProxyFailClosed_];
  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();
  v12.value._countAndFlagsBits = UUID.uuidString.getter();
  v13._countAndFlagsBits = 0x6564492D72657355;
  v13._object = 0xEF7265696669746ELL;
  URLRequest.setValue(_:forHTTPHeaderField:)(v12, v13);

  v14 = *(v6 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_featureId + 8);
  if (v14)
  {
    v15 = *(v6 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_featureId);
    v16._countAndFlagsBits = 0x65662D656C707061;
    v16._object = 0xEF64696572757461;
    URLRequest.setValue(_:forHTTPHeaderField:)(*(&v14 - 1), v16);
  }

  v17 = v0[45];
  v18 = v0[46];
  v19 = v0[44];
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0[23] + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_tokenFetcher, v19, &_s8CipherML12TokenFetcherVSgMd, &_s8CipherML12TokenFetcherVSgMR);
  if ((*(v18 + 48))(v19, 1, v17) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[44], &_s8CipherML12TokenFetcherVSgMd, &_s8CipherML12TokenFetcherVSgMR);
    v20 = v0[63];
    v22 = v0[60];
    v21 = v0[61];
    v23 = v0[56];
    v68 = v0[57];
    v24 = v0[54];
    v25 = v0[55];
    v26 = v0[52];
    v27 = v0[53];
    v28 = v0[51];
    URLRequest.httpMethod.setter();
    outlined copy of Data._Representation(v22, v21);
    URLRequest.httpBody.setter();

    (*(v26 + 8))(v27, v28);
    (*(v25 + 32))(v68, v23, v24);
    if (one-time initialization token for networking != -1)
    {
      swift_once();
    }

    v29 = v0[60];
    v30 = v0[61];
    v32 = v0[42];
    v31 = v0[43];
    v33 = v0[41];
    v34 = v0[22];
    v35 = type metadata accessor for Logger();
    v0[68] = __swift_project_value_buffer(v35, static Logger.networking);
    (*(v32 + 16))(v31, v34, v33);
    outlined copy of Data._Representation(v29, v30);
    outlined copy of Data._Representation(v29, v30);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    v38 = os_log_type_enabled(v36, v37);
    v39 = v0[61];
    if (!v38)
    {
      v55 = v0[60];
      v57 = v0[42];
      v56 = v0[43];
      v58 = v0[41];
      outlined consume of Data._Representation(v55, v0[61]);
      outlined consume of Data._Representation(v55, v39);

      (*(v57 + 8))(v56, v58);
      goto LABEL_22;
    }

    v41 = v0[42];
    v40 = v0[43];
    v42 = v0[41];
    v43 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v70 = v69;
    *v43 = 136380931;
    v44 = UUID.uuidString.getter();
    v46 = v45;
    (*(v41 + 8))(v40, v42);
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v70);

    *(v43 + 4) = v47;
    *(v43 + 12) = 2050;
    v48 = v39 >> 62;
    v49 = v0[60];
    v50 = v0[61];
    if ((v39 >> 62) > 1)
    {
      if (v48 != 2)
      {
        outlined consume of Data._Representation(v49, v50);
        v52 = 0;
        goto LABEL_21;
      }

      v60 = *(v49 + 16);
      v59 = *(v49 + 24);
      v49 = outlined consume of Data._Representation(v49, v50);
      v52 = v59 - v60;
      if (!__OFSUB__(v59, v60))
      {
        goto LABEL_21;
      }

      __break(1u);
    }

    else if (!v48)
    {
      v51 = v0[61];
      outlined consume of Data._Representation(v49, v50);
      v52 = BYTE6(v51);
LABEL_21:
      v65 = v0[60];
      v66 = v0[61];
      *(v43 + 14) = v52;
      outlined consume of Data._Representation(v65, v66);
      _os_log_impl(&dword_224E26000, v36, v37, "Request to queries-batch has started for userId: '%{private}s', length: %{public}ld", v43, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v69);
      MEMORY[0x22AA61F40](v69, -1, -1);
      MEMORY[0x22AA61F40](v43, -1, -1);

LABEL_22:
      v67 = swift_task_alloc();
      v0[69] = v67;
      *v67 = v0;
      v67[1] = AspireNetworkManager.queries(requests:userId:);
      v63 = v0[57];
      v64 = 0;

      return MEMORY[0x28211ECF8](v63, v64);
    }

    v61 = HIDWORD(v49);
    v62 = v49;
    v63 = outlined consume of Data._Representation(v49, v50);
    LODWORD(v52) = v61 - v62;
    if (__OFSUB__(v61, v62))
    {
      __break(1u);
      return MEMORY[0x28211ECF8](v63, v64);
    }

    v52 = v52;
    goto LABEL_21;
  }

  outlined init with take of TokenFetcher(v0[44], v0[47], type metadata accessor for TokenFetcher);
  v53 = swift_task_alloc();
  v0[64] = v53;
  *v53 = v0;
  v53[1] = AspireNetworkManager.queries(requests:userId:);

  return TokenFetcher.getToken()();
}

{
  v61 = v0;
  v1 = *(v0 + 536);
  v2 = *(v0 + 528);
  v57 = *(v0 + 376);
  _StringGuts.grow(_:)(21);

  v60.value._countAndFlagsBits = 0xD000000000000013;
  v60.value._object = 0x8000000225035BE0;
  *(v0 + 64) = Data.base64EncodedString(options:)(0);
  *(v0 + 80) = 43;
  *(v0 + 88) = 0xE100000000000000;
  *(v0 + 96) = 45;
  *(v0 + 104) = 0xE100000000000000;
  v3 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v5 = v4;

  *(v0 + 112) = v3;
  *(v0 + 120) = v5;
  *(v0 + 128) = 47;
  *(v0 + 136) = 0xE100000000000000;
  *(v0 + 144) = 95;
  *(v0 + 152) = 0xE100000000000000;
  v6 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v8 = v7;

  MEMORY[0x22AA60A80](v6, v8);

  v9._countAndFlagsBits = 0x7A69726F68747541;
  v9._object = 0xED00006E6F697461;
  URLRequest.setValue(_:forHTTPHeaderField:)(v60, v9);

  outlined consume of Data._Representation(v1, v2);
  outlined destroy of AspireApiConfigRequest(v57, type metadata accessor for TokenFetcher);
  v10 = *(v0 + 504);
  v12 = *(v0 + 480);
  v11 = *(v0 + 488);
  v58 = *(v0 + 456);
  v13 = *(v0 + 448);
  v14 = *(v0 + 432);
  v15 = *(v0 + 440);
  v16 = *(v0 + 416);
  v17 = *(v0 + 424);
  v18 = *(v0 + 408);
  URLRequest.httpMethod.setter();
  outlined copy of Data._Representation(v12, v11);
  URLRequest.httpBody.setter();

  (*(v16 + 8))(v17, v18);
  (*(v15 + 32))(v58, v13, v14);
  if (one-time initialization token for networking != -1)
  {
    swift_once();
  }

  v19 = *(v0 + 480);
  v20 = *(v0 + 488);
  v22 = *(v0 + 336);
  v21 = *(v0 + 344);
  v23 = *(v0 + 328);
  v24 = *(v0 + 176);
  v25 = type metadata accessor for Logger();
  *(v0 + 544) = __swift_project_value_buffer(v25, static Logger.networking);
  (*(v22 + 16))(v21, v24, v23);
  outlined copy of Data._Representation(v19, v20);
  outlined copy of Data._Representation(v19, v20);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  v28 = os_log_type_enabled(v26, v27);
  v29 = *(v0 + 488);
  if (!v28)
  {
    v43 = *(v0 + 480);
    v45 = *(v0 + 336);
    v44 = *(v0 + 344);
    v46 = *(v0 + 328);
    outlined consume of Data._Representation(v43, *(v0 + 488));
    outlined consume of Data._Representation(v43, v29);

    (*(v45 + 8))(v44, v46);
    goto LABEL_16;
  }

  v31 = *(v0 + 336);
  v30 = *(v0 + 344);
  v32 = *(v0 + 328);
  v33 = swift_slowAlloc();
  v59 = swift_slowAlloc();
  v60.value._countAndFlagsBits = v59;
  *v33 = 136380931;
  v34 = UUID.uuidString.getter();
  v36 = v35;
  (*(v31 + 8))(v30, v32);
  v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v60.value._countAndFlagsBits);

  *(v33 + 4) = v37;
  *(v33 + 12) = 2050;
  v38 = v29 >> 62;
  v39 = *(v0 + 480);
  v40 = *(v0 + 488);
  if ((v29 >> 62) > 1)
  {
    if (v38 != 2)
    {
      outlined consume of Data._Representation(v39, v40);
      v42 = 0;
      goto LABEL_15;
    }

    v48 = *(v39 + 16);
    v47 = *(v39 + 24);
    v39 = outlined consume of Data._Representation(v39, v40);
    v42 = v47 - v48;
    if (!__OFSUB__(v47, v48))
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_12:
    v49 = HIDWORD(v39);
    v50 = v39;
    v51 = outlined consume of Data._Representation(v39, v40);
    LODWORD(v42) = v49 - v50;
    if (__OFSUB__(v49, v50))
    {
      __break(1u);
      return MEMORY[0x28211ECF8](v51, v52);
    }

    v42 = v42;
    goto LABEL_15;
  }

  if (v38)
  {
    goto LABEL_12;
  }

  v41 = *(v0 + 488);
  outlined consume of Data._Representation(v39, v40);
  v42 = BYTE6(v41);
LABEL_15:
  v53 = *(v0 + 480);
  v54 = *(v0 + 488);
  *(v33 + 14) = v42;
  outlined consume of Data._Representation(v53, v54);
  _os_log_impl(&dword_224E26000, v26, v27, "Request to queries-batch has started for userId: '%{private}s', length: %{public}ld", v33, 0x16u);
  __swift_destroy_boxed_opaque_existential_0(v59);
  MEMORY[0x22AA61F40](v59, -1, -1);
  MEMORY[0x22AA61F40](v33, -1, -1);

LABEL_16:
  v55 = swift_task_alloc();
  *(v0 + 552) = v55;
  *v55 = v0;
  v55[1] = AspireNetworkManager.queries(requests:userId:);
  v51 = *(v0 + 456);
  v52 = 0;

  return MEMORY[0x28211ECF8](v51, v52);
}

{
  v1 = *(v0 + 480);
  v2 = *(v0 + 488);
  v4 = *(v0 + 440);
  v3 = *(v0 + 448);
  v6 = *(v0 + 424);
  v5 = *(v0 + 432);
  v7 = *(v0 + 408);
  v8 = *(v0 + 416);
  v9 = *(v0 + 376);

  outlined destroy of AspireApiConfigRequest(v9, type metadata accessor for TokenFetcher);
  (*(v4 + 8))(v3, v5);
  (*(v8 + 8))(v6, v7);
  outlined consume of Data._Representation(v1, v2);

  v10 = *(v0 + 8);

  return v10();
}

{
  v130 = v0;
  outlined copy of Data._Representation(*(v0 + 560), *(v0 + 568));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 568);
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    v6 = v4 >> 62;
    if ((v4 >> 62) > 1)
    {
      if (v6 != 2)
      {
        v7 = 0;
        goto LABEL_13;
      }

      v8 = *(*(v0 + 560) + 16);
      v9 = *(*(v0 + 560) + 24);
      v10 = __OFSUB__(v9, v8);
      v7 = v9 - v8;
      if (!v10)
      {
        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!v6)
    {
      v7 = *(v0 + 574);
LABEL_13:
      v14 = *(v0 + 568);
      v15 = *(v0 + 560);
      *(v5 + 4) = v7;
      v16 = v5;
      outlined consume of Data._Representation(v15, v14);
      _os_log_impl(&dword_224E26000, v1, v2, "Request to queries-batch has finished response, length: %{public}ld", v16, 0xCu);
      MEMORY[0x22AA61F40](v16, -1, -1);
      goto LABEL_14;
    }

    v11 = *(v0 + 560);
    v12 = *(v0 + 564);
    v10 = __OFSUB__(v12, v11);
    v13 = v12 - v11;
    if (v10)
    {
      __break(1u);
      goto LABEL_63;
    }

    v7 = v13;
    goto LABEL_13;
  }

  outlined consume of Data._Representation(*(v0 + 560), *(v0 + 568));
LABEL_14:

  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17 || [v17 statusCode] != 200)
  {
    v26 = *(v0 + 576);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = *(v0 + 576);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138543362;
      *(v30 + 4) = v29;
      *v31 = v29;
      v32 = v29;
      _os_log_impl(&dword_224E26000, v27, v28, "Failed to query. %{public}@", v30, 0xCu);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v31, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x22AA61F40](v31, -1, -1);
      MEMORY[0x22AA61F40](v30, -1, -1);
    }

    v33 = *(v0 + 584);
    v34 = *(v0 + 568);
    v35 = *(v0 + 560);

    *(v0 + 32) = v35;
    *(v0 + 40) = v34;
    v129 = 0;
    v127 = 0u;
    v128 = 0u;
    outlined copy of Data._Representation(v35, v34);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type AspireApiConfigRequest and conformance AspireApiConfigRequest(&lazy protocol witness table cache variable for type AspireApiError and conformance AspireApiError, type metadata accessor for AspireApiError, &protocol conformance descriptor for AspireApiError);
    Message.init<A>(serializedBytes:extensions:partial:options:)();
    v36 = *(v0 + 288);
    v37 = *(v0 + 296);
    v38 = *(v0 + 280);
    if (v33)
    {

      (*(v37 + 56))(v38, 1, 1, v36);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v38, &_s8CipherML14AspireApiErrorVSgMd, &_s8CipherML14AspireApiErrorVSgMR);
      type metadata accessor for CipherMLError(0);
      lazy protocol witness table accessor for type AspireApiConfigRequest and conformance AspireApiConfigRequest(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
      swift_allocError();
      v40 = v39;
      static String.Encoding.utf8.getter();
      countAndFlagsBits = String.init(data:encoding:)();
      if (!object)
      {
        v43 = Data.base64EncodedString(options:)(0);
        object = v43._object;
        countAndFlagsBits = v43._countAndFlagsBits;
      }

      v44 = *(v0 + 576);
      v45 = *(v0 + 568);
      v46 = *(v0 + 560);
      v48 = *(v0 + 480);
      v47 = *(v0 + 488);
      v123 = *(v0 + 456);
      v49 = *(v0 + 432);
      v50 = *(v0 + 440);
      *v40 = countAndFlagsBits;
      v40[1] = object;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      outlined consume of Data._Representation(v46, v45);
      outlined consume of Data._Representation(v48, v47);
      (*(v50 + 8))(v123, v49);
      goto LABEL_53;
    }

    v51 = *(v0 + 304);
    v52 = *(v0 + 272);
    v53 = *(v0 + 232);
    v54 = *(v0 + 240);
    (*(v37 + 56))(*(v0 + 280), 0, 1, *(v0 + 288));
    outlined init with take of TokenFetcher(v38, v51, type metadata accessor for AspireApiError);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v51, v52, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
    v4 = *(v54 + 48);
    v55 = (v4)(v52, 1, v53);
    v56 = *(v0 + 272);
    if (v55 == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v56, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
      v57 = 0x8000000225035C00;
      v58 = 0xD000000000000015;
      goto LABEL_42;
    }

    outlined init with copy of AspireApiEvaluationKeys(v56, *(v0 + 248), type metadata accessor for AspireApiError.OneOf_ErrorType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        if (one-time initialization token for protoMessageName != -1)
        {
          swift_once();
        }

        v60 = &static AspireApiError.InvalidRequest.protoMessageName;
      }

      else
      {
        if (one-time initialization token for protoMessageName != -1)
        {
          swift_once();
        }

        v60 = &static AspireApiError.InternalError.protoMessageName;
      }

      goto LABEL_41;
    }

    if (EnumCaseMultiPayload)
    {
      if (one-time initialization token for protoMessageName != -1)
      {
        swift_once();
      }

      v60 = &static AspireApiError.EvaluationKeyNotFound.protoMessageName;
      goto LABEL_41;
    }

    if (one-time initialization token for protoMessageName == -1)
    {
LABEL_29:
      v60 = &static AspireApiError.ConfigVersionNotFound.protoMessageName;
LABEL_41:
      v62 = *(v0 + 272);
      v63 = *(v0 + 248);
      v58 = *v60;
      v57 = v60[1];

      outlined destroy of AspireApiConfigRequest(v63, type metadata accessor for AspireApiError.OneOf_ErrorType);
      outlined destroy of AspireApiConfigRequest(v62, type metadata accessor for AspireApiError.OneOf_ErrorType);
LABEL_42:

      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        *&v127 = v67;
        *v66 = 136446210;
        *(v66 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v57, &v127);
        _os_log_impl(&dword_224E26000, v64, v65, "Received error of type: %{public}s", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v67);
        MEMORY[0x22AA61F40](v67, -1, -1);
        MEMORY[0x22AA61F40](v66, -1, -1);
      }

      v68 = *(v0 + 264);
      v69 = *(v0 + 232);
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(*(v0 + 304), v68, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
      if ((v4)(v68, 1, v69) != 1)
      {
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(*(v0 + 264), *(v0 + 256), &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
        v70 = swift_getEnumCaseMultiPayload();
        if (v70 == 1)
        {
          v88 = *(v0 + 576);
          v89 = *(v0 + 568);
          v90 = *(v0 + 560);
          v91 = *(v0 + 480);
          v92 = *(v0 + 488);
          v93 = *(v0 + 440);
          v115 = *(v0 + 432);
          v118 = *(v0 + 456);
          v94 = *(v0 + 304);
          v121 = *(v0 + 256);
          v125 = *(v0 + 264);

          type metadata accessor for NetworkManagerError(0);
          lazy protocol witness table accessor for type AspireApiConfigRequest and conformance AspireApiConfigRequest(&lazy protocol witness table cache variable for type NetworkManagerError and conformance NetworkManagerError, type metadata accessor for NetworkManagerError, &protocol conformance descriptor for NetworkManagerError);
          swift_allocError();
          *v95 = 1;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          outlined consume of Data._Representation(v90, v89);
          outlined consume of Data._Representation(v91, v92);
          outlined destroy of AspireApiConfigRequest(v94, type metadata accessor for AspireApiError);
          (*(v93 + 8))(v118, v115);
          outlined destroy of AspireApiConfigRequest(v121, type metadata accessor for AspireApiError.OneOf_ErrorType);
          outlined destroy of AMDPbHEConfig.OneOf_Config?(v125, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
          goto LABEL_53;
        }

        if (!v70)
        {
          v71 = *(v0 + 256);
          v72 = *(v0 + 216);
          v73 = *(v0 + 224);
          v74 = *(v0 + 208);

          outlined init with take of TokenFetcher(v71, v73, type metadata accessor for AspireApiError.ConfigVersionNotFound);
          v75 = *(v72 + 20);
          outlined init with copy of AMDPbHEConfig.OneOf_Config?(v73 + v75, v74, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
          v76 = type metadata accessor for AspireApiConfigResponse(0);
          v77 = *(*(v76 - 8) + 48);
          v78 = v77(v74, 1, v76);
          outlined destroy of AMDPbHEConfig.OneOf_Config?(v74, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
          type metadata accessor for NetworkManagerError(0);
          lazy protocol witness table accessor for type AspireApiConfigRequest and conformance AspireApiConfigRequest(&lazy protocol witness table cache variable for type NetworkManagerError and conformance NetworkManagerError, type metadata accessor for NetworkManagerError, &protocol conformance descriptor for NetworkManagerError);
          swift_allocError();
          v80 = v79;
          if (v78 != 1)
          {
            v102 = *(v0 + 200);
            outlined init with copy of AMDPbHEConfig.OneOf_Config?(v73 + v75, v102, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
            v103 = v77(v102, 1, v76);
            v104 = *(v0 + 200);
            if (v103 == 1)
            {
              v105 = MEMORY[0x277D84F90];
              *v80 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8CipherML15AspireApiConfigVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
              v80[1] = v105;
              UnknownStorage.init()();
              if (v77(v104, 1, v76) != 1)
              {
                outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 200), &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
              }
            }

            else
            {
              outlined init with take of TokenFetcher(*(v0 + 200), v80, type metadata accessor for AspireApiConfigResponse);
            }

            v106 = *(v0 + 576);
            v107 = *(v0 + 568);
            v108 = *(v0 + 560);
            v110 = *(v0 + 480);
            v109 = *(v0 + 488);
            v111 = *(v0 + 440);
            v119 = *(v0 + 432);
            v122 = *(v0 + 456);
            v116 = *(v0 + 304);
            v126 = *(v0 + 264);
            v112 = *(v0 + 224);
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

            outlined consume of Data._Representation(v108, v107);
            outlined consume of Data._Representation(v110, v109);
            outlined destroy of AspireApiConfigRequest(v112, type metadata accessor for AspireApiError.ConfigVersionNotFound);
            outlined destroy of AspireApiConfigRequest(v116, type metadata accessor for AspireApiError);
            (*(v111 + 8))(v122, v119);
            outlined destroy of AMDPbHEConfig.OneOf_Config?(v126, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
            goto LABEL_53;
          }

          v81 = *(v0 + 576);
          v82 = *(v0 + 568);
          v83 = *(v0 + 560);
          v85 = *(v0 + 480);
          v84 = *(v0 + 488);
          v86 = *(v0 + 440);
          v117 = *(v0 + 432);
          v120 = *(v0 + 456);
          v114 = *(v0 + 304);
          v124 = *(v0 + 264);
          v87 = *(v0 + 224);
          *v79 = 1;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          outlined consume of Data._Representation(v83, v82);
          outlined consume of Data._Representation(v85, v84);
          outlined destroy of AspireApiConfigRequest(v87, type metadata accessor for AspireApiError.ConfigVersionNotFound);
          goto LABEL_52;
        }

        outlined destroy of AspireApiConfigRequest(*(v0 + 256), type metadata accessor for AspireApiError.OneOf_ErrorType);
      }

      v96 = *(v0 + 576);
      v97 = *(v0 + 568);
      v98 = *(v0 + 560);
      v99 = *(v0 + 480);
      v86 = *(v0 + 440);
      v117 = *(v0 + 432);
      v120 = *(v0 + 456);
      v113 = *(v0 + 488);
      v114 = *(v0 + 304);
      v124 = *(v0 + 264);
      type metadata accessor for CipherMLError(0);
      lazy protocol witness table accessor for type AspireApiConfigRequest and conformance AspireApiConfigRequest(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
      swift_allocError();
      *v100 = v58;
      v100[1] = v57;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      outlined consume of Data._Representation(v98, v97);
      outlined consume of Data._Representation(v99, v113);
LABEL_52:
      outlined destroy of AspireApiConfigRequest(v114, type metadata accessor for AspireApiError);
      (*(v86 + 8))(v120, v117);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v124, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
      goto LABEL_53;
    }

LABEL_63:
    swift_once();
    goto LABEL_29;
  }

  v18 = *(v0 + 584);
  v19 = *(v0 + 568);
  v20 = *(v0 + 560);
  type metadata accessor for AspireApiResponses(0);
  *(v0 + 48) = v20;
  *(v0 + 56) = v19;
  v129 = 0;
  v127 = 0u;
  v128 = 0u;
  outlined copy of Data._Representation(v20, v19);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type AspireApiConfigRequest and conformance AspireApiConfigRequest(&lazy protocol witness table cache variable for type AspireApiResponses and conformance AspireApiResponses, type metadata accessor for AspireApiResponses, &protocol conformance descriptor for AspireApiResponses);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  v21 = *(v0 + 576);
  v22 = *(v0 + 568);
  v23 = *(v0 + 560);
  v25 = *(v0 + 480);
  v24 = *(v0 + 488);
  if (!v18)
  {
    (*(*(v0 + 440) + 8))(*(v0 + 456), *(v0 + 432));
    outlined consume of Data._Representation(v25, v24);
    outlined consume of Data._Representation(v23, v22);

    v61 = *(v0 + 8);
    goto LABEL_54;
  }

  (*(*(v0 + 440) + 8))(*(v0 + 456), *(v0 + 432));
  outlined consume of Data._Representation(v25, v24);
  outlined consume of Data._Representation(v23, v22);

LABEL_53:

  v61 = *(v0 + 8);
LABEL_54:

  return v61();
}

{
  v1 = v0[57];
  v2 = v0[54];
  v3 = v0[55];
  outlined consume of Data._Representation(v0[60], v0[61]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t AspireNetworkManager.queries(requests:userId:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 520) = v2;

  if (v2)
  {
    v7 = AspireNetworkManager.queries(requests:userId:);
  }

  else
  {
    *(v6 + 528) = a2;
    *(v6 + 536) = a1;
    v7 = AspireNetworkManager.queries(requests:userId:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

Swift::Void __swiftcall AspireNetworkManager.cancel()()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_urlSession) + 16);
  v4[4] = closure #1 in AspireNetworkManager.cancel();
  v4[5] = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [NSURLSessionTask]) -> ();
  v4[3] = &block_descriptor;
  v2 = _Block_copy(v4);
  v3 = v1;
  [v3 getAllTasksWithCompletionHandler_];
  _Block_release(v2);
}

void closure #1 in AspireNetworkManager.cancel()(unint64_t a1)
{
  v1 = a1;
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }

    goto LABEL_3;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  v2 = MEMORY[0x22AA610B0](a1);
  if (v2)
  {
LABEL_3:
    if (v2 < 1)
    {
      __break(1u);
    }

    else
    {
      for (i = 0; i != v2; ++i)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x22AA60F70](i, v1);
        }

        else
        {
          v4 = *(v1 + 8 * i + 32);
        }

        v5 = v4;
        [v4 cancel];
      }
    }
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [NSURLSessionTask]) -> ()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  type metadata accessor for NSURLSessionTask();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

uint64_t AspireNetworkManager.deinit()
{
  v1 = OBJC_IVAR____TtC8CipherML20AspireNetworkManager_endpointUrl;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_tokenFetcher, &_s8CipherML12TokenFetcherVSgMd, &_s8CipherML12TokenFetcherVSgMR);

  return v0;
}

uint64_t AspireNetworkManager.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC8CipherML20AspireNetworkManager_endpointUrl;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_tokenFetcher, &_s8CipherML12TokenFetcherVSgMd, &_s8CipherML12TokenFetcherVSgMR);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for NetworkManager.networkDelegationConfig.getter in conformance AspireNetworkManager()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_networkDelegationConfig);

  return v1;
}

uint64_t protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance AspireNetworkManager(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return AspireNetworkManager.fetchConfigs(useCases:userId:)(a1, a2, a3);
}

uint64_t protocol witness for NetworkManager.uploadKeys(evaluationKeys:userId:) in conformance AspireNetworkManager(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return AspireNetworkManager.uploadKeys(evaluationKeys:userId:)(a1, a2);
}

uint64_t protocol witness for NetworkManager.queries(requests:userId:) in conformance AspireNetworkManager(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return AspireNetworkManager.queries(requests:userId:)(a1, a2, a3);
}

uint64_t protocol witness for NetworkManager.cancel() in conformance AspireNetworkManager()
{
  v8 = v1;
  v2 = *(*(*v0 + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_urlSession) + 16);
  v7[4] = closure #1 in AspireNetworkManager.cancel();
  v7[5] = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [NSURLSessionTask]) -> ();
  v7[3] = &block_descriptor_14;
  v3 = _Block_copy(v7);
  v4 = v2;
  [v4 getAllTasksWithCompletionHandler_];
  _Block_release(v3);

  v5 = *(v1 + 8);

  return v5();
}

_BYTE *closure #1 in Data.init<A>(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = specialized Data.InlineData.init(_:)(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = specialized Data.LargeSlice.init(_:)(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = specialized Data.InlineSlice.init(_:)(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t outlined init with take of TokenFetcher?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12TokenFetcherVSgMd, &_s8CipherML12TokenFetcherVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A]);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
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

uint64_t outlined destroy of AspireApiConfigRequest(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of TokenFetcher(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of AspireApiEvaluationKeys(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type AspireApiConfigRequest and conformance AspireApiConfigRequest(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for AspireNetworkManager(uint64_t a1)
{
  result = type metadata singleton initialization cache for AspireNetworkManager;
  if (!type metadata singleton initialization cache for AspireNetworkManager)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for AspireNetworkManager(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    type metadata accessor for TokenFetcher?(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for TokenFetcher?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TokenFetcher?)
  {
    type metadata accessor for TokenFetcher(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for TokenFetcher?);
    }
  }
}

unint64_t type metadata accessor for NSURLSessionTask()
{
  result = lazy cache variable for type metadata for NSURLSessionTask;
  if (!lazy cache variable for type metadata for NSURLSessionTask)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSURLSessionTask);
  }

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

uint64_t RequestsManager.currentTime.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t RequestsManager.allowList.getter()
{
  v1 = *(v0 + 48);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

uint64_t RequestsManager.__allocating_init(cache:keyStorage:activeUseCaseTracker:allowList:currentTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  RequestsManager.init(cache:keyStorage:activeUseCaseTracker:allowList:currentTime:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

void *RequestsManager.init(cache:keyStorage:activeUseCaseTracker:allowList:currentTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v57 = a5;
  v58 = a2;
  v59 = *MEMORY[0x277D85DE8];
  v14 = *v7;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  MEMORY[0x28223BE20](v16);
  v55 = v50 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = v50 - v19;
  if (a1)
  {
    v8[2] = a1;
    v21 = a7;
    if (!v58)
    {
      goto LABEL_7;
    }

LABEL_11:

    v8[3] = v58;
    v8[4] = a3;
    if (!a4)
    {
      goto LABEL_8;
    }

LABEL_12:
    swift_unknownObjectRetain();
    v36 = a4;
    goto LABEL_13;
  }

  v50[3] = v14;
  v52 = a3;
  v53 = a6;
  v54 = a4;
  if (one-time initialization token for cacheFile != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for URL();
  v23 = __swift_project_value_buffer(v22, static CacheDirectory.cacheFile);
  v24 = *(v22 - 8);
  (*(v24 + 16))(v20, v23, v22);
  v51 = *(v24 + 56);
  v51(v20, 0, 1, v22);
  v21 = a7;
  v8[2] = specialized Cache.__allocating_init(cacheFile:)(v20);
  a6 = v53;
  a4 = v54;
  a3 = v52;
  if (v58)
  {
    goto LABEL_11;
  }

LABEL_7:
  type metadata accessor for KVSKeyStorage();
  v25 = swift_allocObject();

  swift_defaultActor_initialize();
  v26 = a4;
  v27 = a1;
  v28 = objc_allocWithZone(MEMORY[0x277CCAD80]);
  v29 = MEMORY[0x22AA609C0](0xD000000000000013, 0x8000000225035D00);
  v30 = [v28 initWithStoreIdentifier:v29 type:1];

  a1 = v27;
  a4 = v26;
  *(v25 + 112) = v30;
  v8[3] = v25;
  v8[4] = &protocol witness table for KVSKeyStorage;
  if (v26)
  {
    goto LABEL_12;
  }

LABEL_8:
  v31 = one-time initialization token for activeUseCaseTrackerFile;
  swift_unknownObjectRetain();
  if (v31 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for URL();
  v33 = __swift_project_value_buffer(v32, static CacheDirectory.activeUseCaseTrackerFile);
  v34 = *(v32 - 8);
  v35 = v55;
  (*(v34 + 16))(v55, v33, v32);
  (*(v34 + 56))(v35, 0, 1, v32);
  v36 = specialized ActiveUseCaseTracker.__allocating_init(persistenceFile:)(v35);
LABEL_13:
  v8[5] = v36;
  if (v57)
  {
    v37 = v57;
  }

  else
  {

    v37 = specialized AllowList.__allocating_init()();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCy8CipherML9AllowListCSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCy8CipherML9AllowListCSo16os_unfair_lock_sVGMR);
  v38 = swift_allocObject();
  *(v38 + 24) = 0;
  *(v38 + 16) = v37;
  v8[6] = v38;
  v8[7] = a6;
  v8[8] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML11CoordinatorCySSytGMd, &_s8CipherML11CoordinatorCySSytGMR);
  v39 = swift_allocObject();
  swift_retain_n();

  swift_defaultActor_initialize();
  *(v39 + 112) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ScTyyts5Error_pGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v8[9] = v39;
  RequestsManager.loadDynamicAllowList()();
  if (v40)
  {
    v56 = a1;
    if (one-time initialization token for daemon != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.daemon);
    v42 = v40;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138543362;
      v47 = v40;
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 4) = v48;
      *v46 = v48;
      _os_log_impl(&dword_224E26000, v43, v44, "Failed to load dynamic allow list: %{public}@", v45, 0xCu);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v46, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x22AA61F40](v46, -1, -1);
      MEMORY[0x22AA61F40](v45, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return v8;
}

uint64_t RequestsManager.keyRotation(for:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 48);

  v15 = *(v2 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_lock((v6 + 24));
  v7 = *(v6 + 16);

  os_unfair_lock_unlock((v6 + 24));
  v8 = *(v2 + 40);
  v9 = *(v2 + 56);
  v12 = v2 + 64;
  v10 = *(v2 + 64);
  v11 = *(v12 + 8);
  type metadata accessor for KeyRotation();
  v13 = swift_allocObject();

  swift_defaultActor_initialize();
  *(v13 + 224) = 0;
  *(v13 + 192) = 0u;
  *(v13 + 208) = 0u;
  *(v13 + 112) = v5;
  *(v13 + 120) = v15;
  *(v13 + 136) = v7;
  *(v13 + 144) = v8;
  *(v13 + 168) = a1;
  *(v13 + 176) = a2;
  *(v13 + 152) = v9;
  *(v13 + 160) = v10;
  *(v13 + 184) = v11;

  return v13;
}

uint64_t RequestsManager.rotateKeysOffline(useCase:keyStatus:networkDelegation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  v6[14] = type metadata accessor for AspireApiEvaluationKey(0);
  v6[15] = swift_task_alloc();
  v6[16] = *(type metadata accessor for SecretKey(0) - 8);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v7 = type metadata accessor for AspireApiKeyStatus(0);
  v6[19] = v7;
  v6[20] = *(v7 - 8);
  v6[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v8 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v6[25] = v8;
  v6[26] = *(v8 - 8);
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v9 = type metadata accessor for UserIdentifier(0);
  v6[32] = v9;
  v6[33] = *(v9 - 8);
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
  v6[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](RequestsManager.rotateKeysOffline(useCase:keyStatus:networkDelegation:), 0, 0);
}

uint64_t RequestsManager.rotateKeysOffline(useCase:keyStatus:networkDelegation:)()
{
  v34 = v0;
  if (one-time initialization token for daemon != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.daemon);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[8];
    v4 = v0[9];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v33 = v7;
    *v6 = 136446210;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v33);
    _os_log_impl(&dword_224E26000, v2, v3, "rotateKeysOffline for use case %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AA61F40](v7, -1, -1);
    MEMORY[0x22AA61F40](v6, -1, -1);
  }

  v8 = *(v0[13] + 48);
  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);

  os_unfair_lock_unlock((v8 + 24));
  v10 = *(v9 + 48);

  if (*(v10 + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(v0[8], v0[9], MEMORY[0x277D83758], specialized __RawDictionaryStorage.find<A>(_:hashValue:)), (v12 & 1) != 0))
  {
    v13 = (*(v10 + 56) + 16 * v11);
    v14 = *v13;
    v0[37] = *v13;
    v15 = v13[1];
    v0[38] = v15;

    os_unfair_lock_lock((v8 + 24));
    v16 = *(v8 + 16);

    os_unfair_lock_unlock((v8 + 24));
    v17 = *(v16 + 32);

    if (*(v17 + 16))
    {
      v18 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15, MEMORY[0x277D83758], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
      if (v19)
      {
        v20 = v18;
        v21 = v0[36];
        v32 = v0[12];
        v22 = v0[11];
        v23 = *(v17 + 56);
        v24 = type metadata accessor for UseCaseGroup(0);
        v25 = *(v24 - 8);
        outlined init with copy of UseCaseGroup(v23 + *(v25 + 72) * v20, v21, type metadata accessor for UseCaseGroup);

        (*(v25 + 56))(v21, 0, 1, v24);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v21, &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
        v0[39] = RequestsManager.keyRotation(for:)(v22, v32);
        v26 = swift_task_alloc();
        v0[40] = v26;
        *v26 = v0;
        v26[1] = RequestsManager.rotateKeysOffline(useCase:keyStatus:networkDelegation:);
        v27 = v0[35];

        return KeyRotation.rotateUserId(groupName:)(v27, v14, v15);
      }
    }

    v29 = v0[36];

    v30 = type metadata accessor for UseCaseGroup(0);
    (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
  }

  else
  {
  }

  type metadata accessor for CipherMLError(0);
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v31 = v0[1];

  return v31();
}

{
  *(*v1 + 328) = v0;

  if (v0)
  {

    v2 = RequestsManager.rotateKeysOffline(useCase:keyStatus:networkDelegation:);
  }

  else
  {
    v2 = RequestsManager.rotateKeysOffline(useCase:keyStatus:networkDelegation:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 160);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8CipherML18AspireApiKeyStatusVGMd, &_ss23_ContiguousArrayStorageCy8CipherML18AspireApiKeyStatusVGMR);
  v5 = *(v1 + 80);
  *(v0 + 400) = v5;
  v6 = (v5 + 32) & ~v5;
  v7 = swift_allocObject();
  *(v0 + 336) = v7;
  *(v7 + 16) = xmmword_225022960;
  outlined init with copy of UseCaseGroup(v3, v7 + v6, type metadata accessor for AspireApiKeyStatus);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225022960;
  *(inited + 32) = v4;
  *(inited + 40) = v2;

  v9 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(inited);
  *(v0 + 344) = v9;
  swift_setDeallocating();
  outlined destroy of String(inited + 32);
  v10 = swift_task_alloc();
  *(v0 + 352) = v10;
  *v10 = v0;
  v10[1] = RequestsManager.rotateKeysOffline(useCase:keyStatus:networkDelegation:);
  v11 = *(v0 + 304);
  v12 = *(v0 + 296);
  v13 = *(v0 + 280);
  v14 = *(v0 + 248);

  return KeyRotation.collectKeyStatusesToUpload(groupName:userId:keyStatuses:activeUseCases:)(v14, v12, v11, v13, v7, v9);
}

{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 240);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(*(v0 + 248), v3, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = *(v0 + 360);
  if (v4 == 1)
  {
    v6 = *(v0 + 280);
    v8 = *(v0 + 240);
    v7 = *(v0 + 248);

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
    outlined destroy of AspireApiKeyStatus(v6, type metadata accessor for UserIdentifier);
    v9 = v8;
    v10 = &_s8CipherML14UserIdentifierVSgMd;
    v11 = &_s8CipherML14UserIdentifierVSgMR;
LABEL_8:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, v10, v11);

    v30 = *(v0 + 8);

    return v30(0, 0xF000000000000000);
  }

  outlined init with take of UserIdentifier(*(v0 + 240), *(v0 + 272), type metadata accessor for UserIdentifier);
  if (!*(v5 + 16))
  {
    v25 = *(v0 + 272);
    v24 = *(v0 + 280);
    v26 = *(v0 + 248);
    v27 = *(v0 + 200);
    v28 = *(v0 + 208);
    v29 = *(v0 + 192);

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v26, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
    outlined destroy of AspireApiKeyStatus(v24, type metadata accessor for UserIdentifier);
    (*(v28 + 56))(v29, 1, 1, v27);
    outlined destroy of AspireApiKeyStatus(v25, type metadata accessor for UserIdentifier);
    v10 = &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd;
    v11 = &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR;
    v9 = v29;
    goto LABEL_8;
  }

  v12 = *(v0 + 200);
  v13 = *(v0 + 208);
  v14 = *(v0 + 184);
  v15 = *(v0 + 168);
  v16 = *(v0 + 152);
  outlined init with copy of UseCaseGroup(*(v0 + 360) + ((*(v0 + 400) + 32) & ~*(v0 + 400)), v15, type metadata accessor for AspireApiKeyStatus);

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v15 + *(v16 + 24), v14, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v17 = *(v13 + 48);
  *(v0 + 376) = v17;
  *(v0 + 384) = (v13 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v17(v14, 1, v12) == 1)
  {
    v19 = *(v0 + 192);
    v18 = *(v0 + 200);
    v20 = *(v0 + 184);
    v21 = *(v0 + 168);
    *v19 = MEMORY[0x277D84F90];
    *(v19 + 8) = 0;
    UnknownStorage.init()();
    outlined destroy of AspireApiKeyStatus(v21, type metadata accessor for AspireApiKeyStatus);
    v22 = *(v18 + 28);
    v23 = type metadata accessor for AspireHeEncryptionParameters(0);
    (*(*(v23 - 8) + 56))(v19 + v22, 1, 1, v23);
    if (v17(v20, 1, v18) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 184), &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    }
  }

  else
  {
    v32 = *(v0 + 184);
    v33 = *(v0 + 192);
    outlined destroy of AspireApiKeyStatus(*(v0 + 168), type metadata accessor for AspireApiKeyStatus);
    outlined init with take of UserIdentifier(v32, v33, type metadata accessor for AspireHeEvaluationKeyConfig);
  }

  v35 = *(v0 + 264);
  v34 = *(v0 + 272);
  v36 = *(v0 + 256);
  v37 = *(v0 + 224);
  v38 = *(v0 + 232);
  v39 = *(v0 + 192);
  v40 = *(v0 + 104);
  (*(*(v0 + 208) + 56))(v39, 0, 1, *(v0 + 200));
  outlined init with take of UserIdentifier(v39, v37, type metadata accessor for AspireHeEvaluationKeyConfig);
  v41 = *(v40 + 32);
  ObjectType = swift_getObjectType();
  outlined init with copy of UseCaseGroup(v34, v38, type metadata accessor for UserIdentifier);
  (*(v35 + 56))(v38, 0, 1, v36);
  v47 = (*(v41 + 16) + **(v41 + 16));
  v43 = swift_task_alloc();
  *(v0 + 392) = v43;
  *v43 = v0;
  v43[1] = RequestsManager.rotateKeysOffline(useCase:keyStatus:networkDelegation:);
  v45 = *(v0 + 296);
  v44 = *(v0 + 304);
  v46 = *(v0 + 232);

  return v47(v45, v44, v46, ObjectType, v41);
}

{
  v1 = *(*v0 + 232);

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);

  return MEMORY[0x2822009F8](RequestsManager.rotateKeysOffline(useCase:keyStatus:networkDelegation:), 0, 0);
}

{
  v1 = v0[46];
  v2 = specialized Message.hash()();
  if (v1)
  {
    v4 = v0[34];
    v5 = v0[35];
    v6 = v0[31];
    v7 = v0[28];

    outlined destroy of AspireApiKeyStatus(v7, type metadata accessor for AspireHeEvaluationKeyConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
    outlined destroy of AspireApiKeyStatus(v5, type metadata accessor for UserIdentifier);
    outlined destroy of AspireApiKeyStatus(v4, type metadata accessor for UserIdentifier);

    v8 = v0[1];

    return v8();
  }

  v10 = v0[34];
  v11 = *(v10 + *(v0[32] + 24));
  v36 = v2;
  v37 = v3;
  if (*(v11 + 16))
  {
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(v2, v3, MEMORY[0x277CC92D8], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
    if (v13)
    {
      v14 = v0[47];
      v15 = v0[25];
      v16 = v0[22];
      v17 = v0[18];
      v18 = v0[19];
      v19 = v0[17];
      v20 = v0[10];
      outlined init with copy of UseCaseGroup(*(v11 + 56) + *(v0[16] + 72) * v12, v19, type metadata accessor for SecretKey);
      outlined init with take of UserIdentifier(v19, v17, type metadata accessor for SecretKey);
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v20 + *(v18 + 24), v16, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
      if (v14(v16, 1, v15) == 1)
      {
        v21 = v0[47];
        v22 = v0[27];
        v23 = v0[25];
        v24 = v0[22];
        *v22 = MEMORY[0x277D84F90];
        *(v22 + 8) = 0;
        UnknownStorage.init()();
        v25 = *(v23 + 28);
        v26 = type metadata accessor for AspireHeEncryptionParameters(0);
        (*(*(v26 - 8) + 56))(v22 + v25, 1, 1, v26);
        if (v21(v24, 1, v23) != 1)
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[22], &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
        }
      }

      else
      {
        outlined init with take of UserIdentifier(v0[22], v0[27], type metadata accessor for AspireHeEvaluationKeyConfig);
      }

      generateEvaluationKey(secretKey:config:)(v0[18], v0[27], v0[15]);
      outlined destroy of AspireApiKeyStatus(v0[27], type metadata accessor for AspireHeEvaluationKeyConfig);
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type AspireApiEvaluationKey and conformance AspireApiEvaluationKey, type metadata accessor for AspireApiEvaluationKey, &protocol conformance descriptor for AspireApiEvaluationKey);
      v31 = Message.serializedData(partial:)();
      v33 = v32;
      v10 = v0[34];
      v27 = v0[35];
      v28 = v0[31];
      v29 = v0[28];
      v34 = v0[18];
      v35 = v0[15];

      outlined consume of Data._Representation(v36, v37);
      outlined destroy of AspireApiKeyStatus(v35, type metadata accessor for AspireApiEvaluationKey);
      outlined destroy of AspireApiKeyStatus(v34, type metadata accessor for SecretKey);
      v38 = v33;
      v39 = v31;
      goto LABEL_12;
    }

    v10 = v0[34];
  }

  v27 = v0[35];
  v28 = v0[31];
  v29 = v0[28];

  outlined consume of Data._Representation(v36, v37);
  v38 = 0xF000000000000000;
  v39 = 0;
LABEL_12:
  outlined destroy of AspireApiKeyStatus(v29, type metadata accessor for AspireHeEvaluationKeyConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v28, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  outlined destroy of AspireApiKeyStatus(v27, type metadata accessor for UserIdentifier);
  outlined destroy of AspireApiKeyStatus(v10, type metadata accessor for UserIdentifier);

  v30 = v0[1];

  return v30(v39, v38);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 280);

  outlined destroy of AspireApiKeyStatus(v1, type metadata accessor for UserIdentifier);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t RequestsManager.rotateKeysOffline(useCase:keyStatus:networkDelegation:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 360) = a1;
  *(v4 + 368) = v1;

  v5 = *(v3 + 336);
  v6 = *(v4 + 400);

  if (v1)
  {

    swift_setDeallocating();
    outlined destroy of AspireApiKeyStatus(v5 + ((v6 + 32) & ~v6), type metadata accessor for AspireApiKeyStatus);
    swift_deallocClassInstance();
    v7 = RequestsManager.rotateKeysOffline(useCase:keyStatus:networkDelegation:);
  }

  else
  {
    swift_setDeallocating();
    outlined destroy of AspireApiKeyStatus(v5 + ((v6 + 32) & ~v6), type metadata accessor for AspireApiKeyStatus);
    swift_deallocClassInstance();
    v7 = RequestsManager.rotateKeysOffline(useCase:keyStatus:networkDelegation:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySS10Foundation4DateV_GTt0g5Tm(uint64_t a1)
{
  result = MEMORY[0x22AA60D00](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    specialized Set._Variant.insert(_:)(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Message.hash()()
{
  v1 = type metadata accessor for SHA256();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SHA256Digest();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AspireHeEvaluationKeyConfig(0);
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type AspireHeEvaluationKeyConfig and conformance AspireHeEvaluationKeyConfig, type metadata accessor for AspireHeEvaluationKeyConfig, &protocol conformance descriptor for AspireHeEvaluationKeyConfig);
  v9 = Message.serializedData(partial:)();
  if (!v0)
  {
    v11 = v9;
    v25 = v6;
    v12 = v10;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    v19 = v5;
    dispatch thunk of HashFunction.init()();
    outlined copy of Data._Representation(v11, v12);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v11, v12, v4);
    v20 = 0;
    outlined consume of Data._Representation(v11, v12);
    v13 = v8;
    dispatch thunk of HashFunction.finalize()();
    outlined consume of Data._Representation(v11, v12);
    (*(v2 + 8))(v4, v1);
    v14 = v19;
    v23 = v19;
    v24 = lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
    v16 = v25;
    (*(v25 + 16))(boxed_opaque_existential_1, v13, v14);
    __swift_project_boxed_opaque_existential_1(v22, v23);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    (*(v16 + 8))(v13, v14);
    v5 = v21;
    __swift_destroy_boxed_opaque_existential_0(v22);
  }

  return v5;
}

uint64_t RequestsManager.validateConfig(useCase:keyStatus:encryptionParams:)(uint64_t a1, uint64_t a2, _DWORD *a3, NSObject *a4)
{
  v150 = a4;
  v145 = a3;
  v142 = type metadata accessor for AspireApiKeyStatus(0);
  MEMORY[0x28223BE20](v142);
  v141 = (&v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v135 = &v125 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v132 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v129 = &v125 - v13;
  MEMORY[0x28223BE20](v14);
  v137 = &v125 - v15;
  v147 = type metadata accessor for AspireHeEncryptionParameters(0);
  v143 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v133 = (&v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v128 = (&v125 - v18);
  MEMORY[0x28223BE20](v19);
  v134 = &v125 - v20;
  MEMORY[0x28223BE20](v21);
  v139 = &v125 - v22;
  MEMORY[0x28223BE20](v23);
  v138 = (&v125 - v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  MEMORY[0x28223BE20](v25 - 8);
  v130 = &v125 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v126 = &v125 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v125 - v30;
  v144 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v146 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v131 = (&v125 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v33);
  v127 = (&v125 - v34);
  MEMORY[0x28223BE20](v35);
  v136 = (&v125 - v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
  MEMORY[0x28223BE20](v37 - 8);
  v39 = &v125 - v38;
  v40 = type metadata accessor for UseCaseGroup(0);
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v140 = &v125 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v45 = &v125 - v44;
  v46 = *(v4 + 48);
  os_unfair_lock_lock(v46 + 6);

  os_unfair_lock_unlock(v46 + 6);
  v148 = a1;
  v152 = a2;
  AllowList.group(useCase:)(a1, a2, v39);

  if ((*(v41 + 48))(v39, 1, v40) != 1)
  {
    outlined init with take of UserIdentifier(v39, v45, type metadata accessor for UseCaseGroup);
    os_unfair_lock_lock(v46 + 6);

    os_unfair_lock_unlock(v46 + 6);
    v54 = v149;
    v55 = AllowList.isAllowListed(group:encryptionParameters:)(v45, v150);
    if (v54)
    {
      outlined destroy of AspireApiKeyStatus(v45, type metadata accessor for UseCaseGroup);
    }

    v56 = v55;

    if (v56)
    {
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v145 + *(v142 + 24), v31, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
      v58 = v146 + 48;
      v57 = *(v146 + 48);
      v59 = v144;
      v60 = (v57)(v31, 1, v144);
      v61 = v147;
      v62 = v143;
      v125 = v45;
      if (v60 == 1)
      {
        v63 = v136;
        *v136 = MEMORY[0x277D84F90];
        *(v63 + 8) = 0;
        UnknownStorage.init()();
        (*(v62 + 56))(v63 + *(v59 + 28), 1, 1, v61);
        if ((v57)(v31, 1, v59) != 1)
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config?(v31, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
        }
      }

      else
      {
        v63 = v136;
        outlined init with take of UserIdentifier(v31, v136, type metadata accessor for AspireHeEvaluationKeyConfig);
      }

      v141 = v57;
      v74 = v137;
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v63 + *(v59 + 28), v137, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
      v75 = *(v62 + 48);
      v76 = v147;
      v77 = v75(v74, 1, v147);
      v146 = v58;
      v149 = v75;
      if (v77 == 1)
      {
        v78 = v138;
        *v138 = 0;
        v78[1] = 0;
        v78[2] = MEMORY[0x277D84F90];
        v78[3] = 0;
        *(v78 + 32) = 1;
        v78[5] = 0;
        *(v78 + 48) = 1;
        v78[7] = 0;
        *(v78 + 64) = 1;
        UnknownStorage.init()();
        outlined destroy of AspireApiKeyStatus(v63, type metadata accessor for AspireHeEvaluationKeyConfig);
        v79 = v75(v74, 1, v76) == 1;
        v80 = v150;
        if (!v79)
        {
          v81 = v150;
          outlined destroy of AMDPbHEConfig.OneOf_Config?(v74, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
          v80 = v81;
        }
      }

      else
      {
        outlined destroy of AspireApiKeyStatus(v63, type metadata accessor for AspireHeEvaluationKeyConfig);
        v78 = v138;
        outlined init with take of UserIdentifier(v74, v138, type metadata accessor for AspireHeEncryptionParameters);
        v80 = v150;
      }

      v83 = v139;
      outlined init with copy of UseCaseGroup(v80, v139, type metadata accessor for AspireHeEncryptionParameters);
      v84 = *(v76 + 40);
      v85 = type metadata accessor for UnknownStorage();
      (*(*(v85 - 8) + 24))(v83 + v84, v78 + v84, v85);
      v151[3] = v76;
      v151[4] = lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type AspireHeEncryptionParameters and conformance AspireHeEncryptionParameters, type metadata accessor for AspireHeEncryptionParameters, &protocol conformance descriptor for AspireHeEncryptionParameters);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v151);
      outlined init with copy of UseCaseGroup(v83, boxed_opaque_existential_1, type metadata accessor for AspireHeEncryptionParameters);
      v87 = dispatch thunk of Message.isEqualTo(message:)();
      outlined destroy of AspireApiKeyStatus(v78, type metadata accessor for AspireHeEncryptionParameters);
      outlined destroy of AspireApiKeyStatus(v83, type metadata accessor for AspireHeEncryptionParameters);
      __swift_destroy_boxed_opaque_existential_0(v151);
      v45 = v125;
      if (v87)
      {
        return outlined destroy of AspireApiKeyStatus(v45, type metadata accessor for UseCaseGroup);
      }

      if (one-time initialization token for daemon != -1)
      {
        swift_once();
      }

      v88 = type metadata accessor for Logger();
      __swift_project_value_buffer(v88, static Logger.daemon);
      v89 = v135;
      outlined init with copy of UseCaseGroup(v145, v135, type metadata accessor for AspireApiKeyStatus);
      v90 = v134;
      outlined init with copy of UseCaseGroup(v150, v134, type metadata accessor for AspireHeEncryptionParameters);

      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v91, v92))
      {
        LODWORD(v140) = v92;
        v150 = v91;
        v93 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        v151[0] = v139;
        v145 = v93;
        *v93 = 136446722;
        v94 = v126;
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(v89 + *(v142 + 24), v126, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
        v95 = v144;
        v96 = v141;
        if ((v141)(v94, 1, v144) == 1)
        {
          v97 = v127;
          *v127 = MEMORY[0x277D84F90];
          *(v97 + 8) = 0;
          UnknownStorage.init()();
          (*(v143 + 56))(v97 + *(v95 + 28), 1, 1, v76);
          v98 = v96(v94, 1, v95);
          v99 = v134;
          v100 = v129;
          if (v98 != 1)
          {
            outlined destroy of AMDPbHEConfig.OneOf_Config?(v94, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
          }
        }

        else
        {
          v97 = v127;
          outlined init with take of UserIdentifier(v94, v127, type metadata accessor for AspireHeEvaluationKeyConfig);
          v99 = v134;
          v100 = v129;
        }

        outlined init with copy of AMDPbHEConfig.OneOf_Config?(v97 + *(v95 + 28), v100, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
        v116 = v149;
        if (v149(v100, 1, v76) == 1)
        {
          v117 = v128;
          *v128 = 0;
          v117[1] = 0;
          v117[2] = MEMORY[0x277D84F90];
          v117[3] = 0;
          *(v117 + 32) = 1;
          v117[5] = 0;
          *(v117 + 48) = 1;
          v117[7] = 0;
          *(v117 + 64) = 1;
          UnknownStorage.init()();
          outlined destroy of AspireApiKeyStatus(v97, type metadata accessor for AspireHeEvaluationKeyConfig);
          if (v116(v100, 1, v76) != 1)
          {
            outlined destroy of AMDPbHEConfig.OneOf_Config?(v100, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
          }
        }

        else
        {
          outlined destroy of AspireApiKeyStatus(v97, type metadata accessor for AspireHeEvaluationKeyConfig);
          v117 = v128;
          outlined init with take of UserIdentifier(v100, v128, type metadata accessor for AspireHeEncryptionParameters);
        }

        v118 = Message.textFormatString()();
        outlined destroy of AspireApiKeyStatus(v117, type metadata accessor for AspireHeEncryptionParameters);
        outlined destroy of AspireApiKeyStatus(v135, type metadata accessor for AspireApiKeyStatus);
        v119 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v118._countAndFlagsBits, v118._object, v151);

        v120 = v145;
        *(v145 + 1) = v119;
        *(v120 + 6) = 2082;
        *(v120 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v148, v152, v151);
        *(v120 + 11) = 2082;
        v121 = Message.textFormatString()();
        outlined destroy of AspireApiKeyStatus(v99, type metadata accessor for AspireHeEncryptionParameters);
        v122 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121._countAndFlagsBits, v121._object, v151);

        *(v120 + 3) = v122;
        v123 = v150;
        _os_log_impl(&dword_224E26000, v150, v140, "Invalid key config encryptionParameters '%{public}s' for useCase '%{public}s', expected: '%{public}s'", v120, 0x20u);
        v124 = v139;
        swift_arrayDestroy();
        MEMORY[0x22AA61F40](v124, -1, -1);
        MEMORY[0x22AA61F40](v120, -1, -1);

LABEL_46:
        v45 = v125;
        goto LABEL_47;
      }

      outlined destroy of AspireApiKeyStatus(v90, type metadata accessor for AspireHeEncryptionParameters);
      v82 = v89;
    }

    else
    {
      v64 = v144;
      if (one-time initialization token for daemon != -1)
      {
        swift_once();
      }

      v65 = type metadata accessor for Logger();
      __swift_project_value_buffer(v65, static Logger.daemon);
      v66 = v141;
      outlined init with copy of UseCaseGroup(v145, v141, type metadata accessor for AspireApiKeyStatus);
      v67 = v140;
      outlined init with copy of UseCaseGroup(v45, v140, type metadata accessor for UseCaseGroup);

      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v68, v69))
      {
        v125 = v45;
        v70 = swift_slowAlloc();
        v150 = swift_slowAlloc();
        v151[0] = v150;
        *v70 = 136446722;
        v71 = v130;
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(v66 + *(v142 + 24), v130, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
        v72 = *(v146 + 48);
        if (v72(v71, 1, v64) == 1)
        {
          v73 = v131;
          *v131 = MEMORY[0x277D84F90];
          *(v73 + 8) = 0;
          UnknownStorage.init()();
          (*(v143 + 56))(v73 + *(v64 + 28), 1, 1, v147);
          if (v72(v71, 1, v64) != 1)
          {
            outlined destroy of AMDPbHEConfig.OneOf_Config?(v71, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
          }
        }

        else
        {
          v73 = v131;
          outlined init with take of UserIdentifier(v71, v131, type metadata accessor for AspireHeEvaluationKeyConfig);
        }

        v101 = v73 + *(v64 + 28);
        v102 = v73;
        v103 = v132;
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(v101, v132, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
        v104 = *(v143 + 48);
        v105 = v147;
        if (v104(v103, 1, v147) == 1)
        {
          v106 = v133;
          *v133 = 0;
          v106[1] = 0;
          v106[2] = MEMORY[0x277D84F90];
          v106[3] = 0;
          *(v106 + 32) = 1;
          v106[5] = 0;
          *(v106 + 48) = 1;
          v106[7] = 0;
          *(v106 + 64) = 1;
          v107 = v106;
          UnknownStorage.init()();
          outlined destroy of AspireApiKeyStatus(v102, type metadata accessor for AspireHeEvaluationKeyConfig);
          if (v104(v103, 1, v105) != 1)
          {
            outlined destroy of AMDPbHEConfig.OneOf_Config?(v103, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
          }
        }

        else
        {
          outlined destroy of AspireApiKeyStatus(v102, type metadata accessor for AspireHeEvaluationKeyConfig);
          v107 = v133;
          outlined init with take of UserIdentifier(v103, v133, type metadata accessor for AspireHeEncryptionParameters);
        }

        lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type AspireHeEncryptionParameters and conformance AspireHeEncryptionParameters, type metadata accessor for AspireHeEncryptionParameters, &protocol conformance descriptor for AspireHeEncryptionParameters);
        v108 = Message.textFormatString()();
        outlined destroy of AspireApiKeyStatus(v107, type metadata accessor for AspireHeEncryptionParameters);
        outlined destroy of AspireApiKeyStatus(v141, type metadata accessor for AspireApiKeyStatus);
        v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108._countAndFlagsBits, v108._object, v151);

        *(v70 + 4) = v109;
        *(v70 + 12) = 2082;
        *(v70 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v148, v152, v151);
        *(v70 + 22) = 2082;
        v110 = v140;
        v111 = HE.SecurityLevel.rawValue.getter();
        v113 = v112;
        outlined destroy of AspireApiKeyStatus(v110, type metadata accessor for UseCaseGroup);
        v114 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v111, v113, v151);

        *(v70 + 24) = v114;
        _os_log_impl(&dword_224E26000, v68, v69, "Invalid key config encryptionParameters '%{public}s' for useCase '%{public}s' and security level '%{public}s'", v70, 0x20u);
        v115 = v150;
        swift_arrayDestroy();
        MEMORY[0x22AA61F40](v115, -1, -1);
        MEMORY[0x22AA61F40](v70, -1, -1);

        goto LABEL_46;
      }

      outlined destroy of AspireApiKeyStatus(v67, type metadata accessor for UseCaseGroup);
      v82 = v66;
    }

    outlined destroy of AspireApiKeyStatus(v82, type metadata accessor for AspireApiKeyStatus);
LABEL_47:
    type metadata accessor for CipherMLError(0);
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return outlined destroy of AspireApiKeyStatus(v45, type metadata accessor for UseCaseGroup);
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v39, &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
  if (one-time initialization token for daemon != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  __swift_project_value_buffer(v47, static Logger.daemon);
  v48 = v152;

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v151[0] = v52;
    *v51 = 136446210;
    *(v51 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v148, v48, v151);
    _os_log_impl(&dword_224E26000, v49, v50, "No group associated with use-case '%{public}s'", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x22AA61F40](v52, -1, -1);
    MEMORY[0x22AA61F40](v51, -1, -1);
  }

  type metadata accessor for CipherMLError(0);
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t RequestsManager.validateDependentConfig(config:useCase:dependsOn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[33] = a5;
  v6[34] = v5;
  v6[31] = a3;
  v6[32] = a4;
  v6[29] = a1;
  v6[30] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v6[35] = swift_task_alloc();
  v6[36] = type metadata accessor for AspireApiPIRConfig(0);
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  v6[40] = swift_task_alloc();
  v7 = type metadata accessor for AspireApiConfig(0);
  v6[41] = v7;
  v6[42] = *(v7 - 8);
  v6[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  v6[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  v6[45] = swift_task_alloc();
  v8 = type metadata accessor for AspirePirPIRShardingFunction(0);
  v6[46] = v8;
  v6[47] = *(v8 - 8);
  v6[48] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v6[49] = swift_task_alloc();
  v9 = type metadata accessor for AspirePirKeywordPirParameters(0);
  v6[50] = v9;
  v6[51] = *(v9 - 8);
  v6[52] = swift_task_alloc();
  type metadata accessor for AspirePirPIRShardingFunctionDoubleMod(0);
  v6[53] = swift_task_alloc();
  v6[54] = swift_task_alloc();
  v6[55] = swift_task_alloc();
  v6[56] = swift_task_alloc();

  return MEMORY[0x2822009F8](RequestsManager.validateDependentConfig(config:useCase:dependsOn:), 0, 0);
}

uint64_t RequestsManager.validateDependentConfig(config:useCase:dependsOn:)()
{
  v65 = v0;
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);
  v3 = *(v0 + 392);
  v4 = *(*(v0 + 232) + *(*(v0 + 288) + 20));
  v5 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__keywordPirParams;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v4 + v5, v3, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v6 = *(v2 + 48);
  v7 = v6(v3, 1, v1);
  v8 = *(v0 + 416);
  if (v7 == 1)
  {
    v10 = *(v0 + 392);
    v9 = *(v0 + 400);
    v11 = *(v0 + 368);
    v12 = *(v0 + 376);
    *v8 = 0;
    *(v8 + 8) = 0;
    UnknownStorage.init()();
    v13 = *(v9 + 28);
    v14 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
    (*(*(v14 - 8) + 56))(v8 + v13, 1, 1, v14);
    (*(v12 + 56))(v8 + *(v9 + 32), 1, 1, v11);
    if (v6(v10, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 392), &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
    }
  }

  else
  {
    outlined init with take of UserIdentifier(*(v0 + 392), *(v0 + 416), type metadata accessor for AspirePirKeywordPirParameters);
  }

  v15 = *(v0 + 368);
  v16 = *(v0 + 376);
  v17 = *(v0 + 360);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(*(v0 + 416) + *(*(v0 + 400) + 32), v17, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  v18 = *(v16 + 48);
  v19 = v18(v17, 1, v15);
  v20 = *(v0 + 416);
  v21 = *(v0 + 384);
  if (v19 == 1)
  {
    v23 = *(v0 + 360);
    v22 = *(v0 + 368);
    v24 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
    (*(*(v24 - 8) + 56))(v21, 1, 1, v24);
    UnknownStorage.init()();
    outlined destroy of AspireApiKeyStatus(v20, type metadata accessor for AspirePirKeywordPirParameters);
    if (v18(v23, 1, v22) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 360), &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
    }
  }

  else
  {
    v25 = *(v0 + 360);
    outlined destroy of AspireApiKeyStatus(*(v0 + 416), type metadata accessor for AspirePirKeywordPirParameters);
    outlined init with take of UserIdentifier(v25, v21, type metadata accessor for AspirePirPIRShardingFunction);
  }

  v26 = *(v0 + 384);
  v27 = *(v0 + 352);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v26, v27, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  outlined destroy of AspireApiKeyStatus(v26, type metadata accessor for AspirePirPIRShardingFunction);
  v28 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
  v29 = (*(*(v28 - 8) + 48))(v27, 1, v28);
  v30 = *(v0 + 352);
  if (v29 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 352), &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
LABEL_18:
    if (one-time initialization token for daemon != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    __swift_project_value_buffer(v49, static Logger.daemon);

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v53 = *(v0 + 256);
      v52 = *(v0 + 264);
      v55 = *(v0 + 240);
      v54 = *(v0 + 248);
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v64 = v57;
      *v56 = 136315394;
      *(v56 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v54, &v64);
      *(v56 + 12) = 2080;
      *(v56 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v52, &v64);
      swift_arrayDestroy();
      MEMORY[0x22AA61F40](v57, -1, -1);
      MEMORY[0x22AA61F40](v56, -1, -1);
    }

LABEL_23:

    v58 = *(v0 + 8);

    return v58(0);
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of AspireApiKeyStatus(v30, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
    goto LABEL_18;
  }

  v31 = *(v0 + 448);
  outlined init with take of UserIdentifier(v30, v31, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
  v32 = *v31;
  *(v0 + 76) = v32;
  if (AspireApiPIRConfig.shardCount.getter() > v32)
  {
    if (one-time initialization token for daemon != -1)
    {
      swift_once();
    }

    v33 = *(v0 + 448);
    v34 = *(v0 + 424);
    v35 = *(v0 + 296);
    v36 = *(v0 + 232);
    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.daemon);
    outlined init with copy of UseCaseGroup(v36, v35, type metadata accessor for AspireApiPIRConfig);
    outlined init with copy of UseCaseGroup(v33, v34, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 448);
    v42 = *(v0 + 424);
    v43 = *(v0 + 296);
    if (v40)
    {
      v45 = *(v0 + 240);
      v44 = *(v0 + 248);
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v64 = v47;
      *v46 = 136315650;
      *(v46 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v44, &v64);
      *(v46 + 12) = 2048;
      v48 = AspireApiPIRConfig.shardCount.getter();
      outlined destroy of AspireApiKeyStatus(v43, type metadata accessor for AspireApiPIRConfig);
      *(v46 + 14) = v48;
      *(v46 + 22) = 1024;
      LODWORD(v48) = *v42;
      outlined destroy of AspireApiKeyStatus(v42, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
      *(v46 + 24) = v48;
      _os_log_impl(&dword_224E26000, v38, v39, "Dynamic configuration for '%s' has %ld shards that should be less than the dependent usecase which has %u shards.", v46, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x22AA61F40](v47, -1, -1);
      MEMORY[0x22AA61F40](v46, -1, -1);
    }

    else
    {
      outlined destroy of AspireApiKeyStatus(*(v0 + 424), type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
      outlined destroy of AspireApiKeyStatus(v43, type metadata accessor for AspireApiPIRConfig);
    }

    outlined destroy of AspireApiKeyStatus(v41, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
    goto LABEL_23;
  }

  *(v0 + 456) = *(*(*(v0 + 272) + 16) + 16);

  v60 = swift_task_alloc();
  *(v0 + 464) = v60;
  *v60 = v0;
  v60[1] = RequestsManager.validateDependentConfig(config:useCase:dependsOn:);
  v61 = *(v0 + 320);
  v62 = *(v0 + 256);
  v63 = *(v0 + 264);

  return specialized DatabaseTable<>.get(_:)(v61, v62, v63);
}

{
  *(*v1 + 472) = v0;

  if (v0)
  {
    v2 = RequestsManager.validateDependentConfig(config:useCase:dependsOn:);
  }

  else
  {
    v2 = RequestsManager.validateDependentConfig(config:useCase:dependsOn:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v68 = v0;
  v1 = *(v0 + 320);
  if ((*(*(v0 + 336) + 48))(v1, 1, *(v0 + 328)) == 1)
  {
    v2 = &_s8CipherML15AspireApiConfigVSgMd;
    v3 = &_s8CipherML15AspireApiConfigVSgMR;
LABEL_5:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, v2, v3);
    goto LABEL_6;
  }

  v4 = *(v0 + 344);
  v5 = *(v0 + 280);
  outlined init with take of UserIdentifier(v1, v4, type metadata accessor for AspireApiConfig);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v4, v5, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v6 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    v1 = *(v0 + 280);
    outlined destroy of AspireApiKeyStatus(*(v0 + 344), type metadata accessor for AspireApiConfig);
    v2 = &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd;
    v3 = &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR;
    goto LABEL_5;
  }

  v37 = *(v0 + 280);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of AspireApiKeyStatus(*(v0 + 344), type metadata accessor for AspireApiConfig);
    outlined destroy of AspireApiKeyStatus(v37, type metadata accessor for AspireApiConfig.OneOf_Config);
LABEL_6:
    if (one-time initialization token for daemon != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.daemon);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 256);
      v10 = *(v0 + 264);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v67[0] = v13;
      *v12 = 136446210;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, v67);
      _os_log_impl(&dword_224E26000, v8, v9, "No dynamic PIR configuration for %{public}s!", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x22AA61F40](v13, -1, -1);
      MEMORY[0x22AA61F40](v12, -1, -1);
    }

    v14 = *(*(v0 + 272) + 48);
    os_unfair_lock_lock((v14 + 24));
    v15 = *(v14 + 16);

    os_unfair_lock_unlock((v14 + 24));
    v16 = *(v15 + 40);
    if (*(v16 + 16) && (v17 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 256), *(v0 + 264), MEMORY[0x277D83758], specialized __RawDictionaryStorage.find<A>(_:hashValue:)), (v18 & 1) != 0))
    {
      v19 = (*(v16 + 56) + (v17 << 6));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      *(v0 + 57) = *(v19 + 41);
      *(v0 + 32) = v21;
      *(v0 + 48) = v22;
      *(v0 + 16) = v20;
      outlined init with copy of UseCase(v0 + 16, v0 + 80);

      if (*(v0 + 72))
      {
        v23 = *(v0 + 16);
        v24 = *(v0 + 448);
        if (v23 < *(v0 + 76))
        {
          outlined init with copy of UseCaseGroup(v24, *(v0 + 432), type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);

          outlined init with copy of UseCase(v0 + 16, v0 + 144);

          v25 = Logger.logObject.getter();
          v26 = static os_log_type_t.error.getter();

          v27 = os_log_type_enabled(v25, v26);
          v28 = *(v0 + 448);
          v29 = *(v0 + 432);
          if (v27)
          {
            v62 = *(v0 + 256);
            v64 = *(v0 + 264);
            v31 = *(v0 + 240);
            v30 = *(v0 + 248);
            v32 = swift_slowAlloc();
            v33 = swift_slowAlloc();
            v67[0] = v33;
            *v32 = 136446978;
            *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v30, v67);
            *(v32 + 12) = 1024;
            LODWORD(v31) = *v29;
            outlined destroy of AspireApiKeyStatus(v29, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
            *(v32 + 14) = v31;
            *(v32 + 18) = 2048;
            outlined destroy of UseCase(v0 + 16);
            *(v32 + 20) = v23;
            outlined destroy of UseCase(v0 + 16);
            *(v32 + 28) = 2082;
            *(v32 + 30) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, v67);
            swift_arrayDestroy();
            MEMORY[0x22AA61F40](v33, -1, -1);
            MEMORY[0x22AA61F40](v32, -1, -1);
          }

          else
          {
            outlined destroy of UseCase(v0 + 16);
            outlined destroy of AspireApiKeyStatus(v29, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
            outlined destroy of UseCase(v0 + 16);
          }

          v34 = v28;
LABEL_31:
          outlined destroy of AspireApiKeyStatus(v34, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
          v65 = 0;
          goto LABEL_32;
        }

        outlined destroy of AspireApiKeyStatus(v24, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
        outlined destroy of UseCase(v0 + 16);
        goto LABEL_24;
      }
    }

    else
    {
    }

    type metadata accessor for CipherMLError(0);
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined destroy of AspireApiKeyStatus(*(v0 + 448), type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);

    v35 = *(v0 + 8);
    v36 = 0;
    goto LABEL_33;
  }

  v38 = *(v0 + 76);
  outlined init with take of UserIdentifier(v37, *(v0 + 312), type metadata accessor for AspireApiPIRConfig);
  if (AspireApiPIRConfig.shardCount.getter() != v38)
  {
    if (one-time initialization token for daemon != -1)
    {
      swift_once();
    }

    v41 = *(v0 + 440);
    v42 = *(v0 + 448);
    v44 = *(v0 + 304);
    v43 = *(v0 + 312);
    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.daemon);
    outlined init with copy of UseCaseGroup(v42, v41, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
    outlined init with copy of UseCaseGroup(v43, v44, type metadata accessor for AspireApiPIRConfig);

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    v48 = os_log_type_enabled(v46, v47);
    v49 = *(v0 + 440);
    v50 = *(v0 + 448);
    v51 = *(v0 + 344);
    v52 = *(v0 + 304);
    v53 = *(v0 + 312);
    if (v48)
    {
      v66 = *(v0 + 448);
      v55 = *(v0 + 256);
      v54 = *(v0 + 264);
      v63 = *(v0 + 312);
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v67[0] = v57;
      *v56 = 67109634;
      v61 = v51;
      v58 = *v49;
      outlined destroy of AspireApiKeyStatus(v49, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
      *(v56 + 4) = v58;
      *(v56 + 8) = 2080;
      *(v56 + 10) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v54, v67);
      *(v56 + 18) = 2048;
      v59 = AspireApiPIRConfig.shardCount.getter();
      outlined destroy of AspireApiKeyStatus(v52, type metadata accessor for AspireApiPIRConfig);
      *(v56 + 20) = v59;
      _os_log_impl(&dword_224E26000, v46, v47, "Dynamic configuration has Double mod with %u shards, but '%s' config has '%ld' shards.", v56, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x22AA61F40](v57, -1, -1);
      MEMORY[0x22AA61F40](v56, -1, -1);

      outlined destroy of AspireApiKeyStatus(v63, type metadata accessor for AspireApiPIRConfig);
      outlined destroy of AspireApiKeyStatus(v61, type metadata accessor for AspireApiConfig);
      v34 = v66;
    }

    else
    {
      outlined destroy of AspireApiKeyStatus(*(v0 + 304), type metadata accessor for AspireApiPIRConfig);
      outlined destroy of AspireApiKeyStatus(v49, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);

      outlined destroy of AspireApiKeyStatus(v53, type metadata accessor for AspireApiPIRConfig);
      outlined destroy of AspireApiKeyStatus(v51, type metadata accessor for AspireApiConfig);
      v34 = v50;
    }

    goto LABEL_31;
  }

  v39 = *(v0 + 448);
  v40 = *(v0 + 344);
  outlined destroy of AspireApiKeyStatus(*(v0 + 312), type metadata accessor for AspireApiPIRConfig);
  outlined destroy of AspireApiKeyStatus(v40, type metadata accessor for AspireApiConfig);
  outlined destroy of AspireApiKeyStatus(v39, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
LABEL_24:
  v65 = 1;
LABEL_32:

  v35 = *(v0 + 8);
  v36 = v65;
LABEL_33:

  return v35(v36);
}

{
  outlined destroy of AspireApiKeyStatus(*(v0 + 448), type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t RequestsManager.validate(config:static:useCase:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = v4;
  *(v5 + 40) = a1;
  *(v5 + 48) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  *(v5 + 72) = swift_task_alloc();
  v7 = type metadata accessor for AspireHeEncryptionParameters(0);
  *(v5 + 80) = v7;
  *(v5 + 88) = *(v7 - 8);
  *(v5 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
  *(v5 + 104) = swift_task_alloc();
  v8 = type metadata accessor for UseCaseGroup(0);
  *(v5 + 112) = v8;
  *(v5 + 120) = *(v8 - 8);
  v9 = swift_task_alloc();
  v10 = *a2;
  *(v5 + 128) = v9;
  *(v5 + 136) = v10;
  *(v5 + 144) = *(a2 + 5);

  return MEMORY[0x2822009F8](RequestsManager.validate(config:static:useCase:), 0, 0);
}

uint64_t RequestsManager.validate(config:static:useCase:)(uint64_t a1)
{
  v2 = v1[17];
  if (v2 < AspireApiPIRConfig.shardCount.getter())
  {
    v3 = 0;
LABEL_3:

    v4 = v1[1];
    v5 = v3 & 1;
LABEL_11:

    return v4(v5);
  }

  v6 = v1[14];
  v7 = v1[15];
  v8 = v1[13];
  v9 = v1[7];
  v10 = v1[6];
  v11 = *(v1[8] + 48);
  os_unfair_lock_lock(v11 + 6);

  os_unfair_lock_unlock(v11 + 6);
  AllowList.group(useCase:)(v10, v9, v8);

  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v1[13], &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
    type metadata accessor for CipherMLError(0);
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v4 = v1[1];
    v5 = 0;
    goto LABEL_11;
  }

  v12 = v1[10];
  v13 = v1[11];
  v14 = v1[9];
  v15 = v1[5];
  outlined init with take of UserIdentifier(v1[13], v1[16], type metadata accessor for UseCaseGroup);
  os_unfair_lock_lock(v11 + 6);

  os_unfair_lock_unlock(v11 + 6);
  v16 = *(v15 + *(type metadata accessor for AspireApiPIRConfig(0) + 20));
  v17 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__encryptionParameters;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16 + v17, v14, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v18 = *(v13 + 48);
  v19 = v18(v14, 1, v12);
  v20 = v1[12];
  if (v19 == 1)
  {
    v22 = v1[9];
    v21 = v1[10];
    *v20 = 0;
    *(v20 + 8) = 0;
    *(v20 + 16) = MEMORY[0x277D84F90];
    *(v20 + 24) = 0;
    *(v20 + 32) = 1;
    *(v20 + 40) = 0;
    *(v20 + 48) = 1;
    *(v20 + 56) = 0;
    *(v20 + 64) = 1;
    UnknownStorage.init()();
    if (v18(v22, 1, v21) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v1[9], &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    }
  }

  else
  {
    outlined init with take of UserIdentifier(v1[9], v20, type metadata accessor for AspireHeEncryptionParameters);
  }

  v3 = AllowList.isAllowListed(group:encryptionParameters:)(v1[16], v1[12]);
  outlined destroy of AspireApiKeyStatus(v1[12], type metadata accessor for AspireHeEncryptionParameters);

  if ((v3 & 1) == 0 || (v24 = v1[19]) == 0)
  {
    outlined destroy of AspireApiKeyStatus(v1[16], type metadata accessor for UseCaseGroup);
    goto LABEL_3;
  }

  v25 = swift_task_alloc();
  v1[20] = v25;
  *v25 = v1;
  v25[1] = RequestsManager.validate(config:static:useCase:);
  v26 = v1[18];
  v27 = v1[7];
  v29 = v1[5];
  v28 = v1[6];

  return RequestsManager.validateDependentConfig(config:useCase:dependsOn:)(v29, v28, v27, v26, v24);
}

uint64_t RequestsManager.validate(config:static:useCase:)(char a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v5 = RequestsManager.validate(config:static:useCase:);
  }

  else
  {
    *(v4 + 176) = a1 & 1;
    v5 = RequestsManager.validate(config:static:useCase:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t RequestsManager.validate(config:static:useCase:)()
{
  v1 = *(v0 + 176);
  outlined destroy of AspireApiKeyStatus(*(v0 + 128), type metadata accessor for UseCaseGroup);

  v2 = *(v0 + 8);

  return v2(v1);
}

{
  outlined destroy of AspireApiKeyStatus(*(v0 + 128), type metadata accessor for UseCaseGroup);

  v1 = *(v0 + 8);

  return v1(0);
}

void *RequestsManager.deinit()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t RequestsManager.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v3 = MEMORY[0x22AA61400](*(v1 + 40), a1);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  type metadata accessor for HE.SecurityLevel();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type HE.SecurityLevel and conformance HE.SecurityLevel, MEMORY[0x277D02EF8], MEMORY[0x277D02F08]);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, MEMORY[0x277D83758], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, MEMORY[0x277CC92D8], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  a3(v10, a1, a2);
  v7 = Hasher._finalize()();

  return a4(a1, a2, v7);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
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
  v20 = a1;
  v4 = type metadata accessor for HE.SecurityLevel();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type HE.SecurityLevel and conformance HE.SecurityLevel, MEMORY[0x277D02EF8], MEMORY[0x277D02F10]);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v45[3] = *MEMORY[0x277D85DE8];
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v8 = a2;
    v9 = a1;
    v10 = ~v5;
    if (a1)
    {
      v11 = 0;
    }

    else
    {
      v11 = a2 == 0xC000000000000000;
    }

    v12 = !v11;
    v43 = v12;
    v13 = a2 >> 62;
    v14 = __OFSUB__(HIDWORD(a1), a1);
    v40 = v14;
    v39 = HIDWORD(a1) - a1;
    v41 = v10;
    v42 = BYTE6(a2);
    v36 = v4;
    while (1)
    {
      v15 = (*(v7 + 48) + 16 * v6);
      v17 = *v15;
      v16 = v15[1];
      v18 = v16 >> 62;
      if (v16 >> 62 == 3)
      {
        break;
      }

      if (v18 > 1)
      {
        if (v18 != 2)
        {
          goto LABEL_36;
        }

        v24 = *(v17 + 16);
        v23 = *(v17 + 24);
        v25 = __OFSUB__(v23, v24);
        v22 = v23 - v24;
        if (v25)
        {
          goto LABEL_64;
        }

        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

      else if (v18)
      {
        LODWORD(v22) = HIDWORD(v17) - v17;
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_65;
        }

        v22 = v22;
        if (v13 <= 1)
        {
LABEL_33:
          v26 = v42;
          if (v13)
          {
            v26 = v39;
            if (v40)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_39;
        }
      }

      else
      {
        v22 = BYTE6(v16);
        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

LABEL_37:
      if (v13 != 2)
      {
        if (!v22)
        {
          return v6;
        }

        goto LABEL_13;
      }

      v28 = *(v9 + 16);
      v27 = *(v9 + 24);
      v25 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v25)
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
      }

LABEL_39:
      if (v22 != v26)
      {
        goto LABEL_13;
      }

      if (v22 < 1)
      {
        return v6;
      }

      if (v18 <= 1)
      {
        if (!v18)
        {
          v45[0] = v17;
          LOWORD(v45[1]) = v16;
          BYTE2(v45[1]) = BYTE2(v16);
          BYTE3(v45[1]) = BYTE3(v16);
          BYTE4(v45[1]) = BYTE4(v16);
          BYTE5(v45[1]) = BYTE5(v16);
          outlined copy of Data._Representation(v17, v16);
          closure #1 in static Data.== infix(_:_:)(v45, v9, v8, &v44);
          outlined consume of Data._Representation(v17, v16);
          if (v44)
          {
            return v6;
          }

          v10 = v41;
          goto LABEL_13;
        }

        if (v17 >> 32 < v17)
        {
          goto LABEL_66;
        }

        outlined copy of Data._Representation(v17, v16);
        v31 = __DataStorage._bytes.getter();
        if (v31)
        {
          v33 = __DataStorage._offset.getter();
          if (__OFSUB__(v17, v33))
          {
            goto LABEL_69;
          }

          v31 += v17 - v33;
        }

        goto LABEL_58;
      }

      if (v18 == 2)
      {
        v30 = *(v17 + 16);
        v29 = *(v17 + 24);
        outlined copy of Data._Representation(v17, v16);
        v31 = __DataStorage._bytes.getter();
        if (v31)
        {
          v32 = __DataStorage._offset.getter();
          if (__OFSUB__(v30, v32))
          {
            goto LABEL_68;
          }

          v31 += v30 - v32;
        }

        if (__OFSUB__(v29, v30))
        {
          goto LABEL_67;
        }

LABEL_58:
        MEMORY[0x22AA5F1C0]();
        v34 = v31;
        v9 = a1;
        v8 = a2;
        closure #1 in static Data.== infix(_:_:)(v34, a1, a2, v45);
        outlined consume of Data._Representation(v17, v16);
        if (v45[0])
        {
          return v6;
        }

        v4 = v36;
        v10 = v41;
        goto LABEL_13;
      }

      memset(v45, 0, 14);
      outlined copy of Data._Representation(v17, v16);
      closure #1 in static Data.== infix(_:_:)(v45, v9, v8, &v44);
      outlined consume of Data._Representation(v17, v16);
      if (v44)
      {
        return v6;
      }

LABEL_13:
      v6 = (v6 + 1) & v10;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        return v6;
      }
    }

    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = v16 == 0xC000000000000000;
    }

    v21 = !v19 || v13 < 3;
    if (((v21 | v43) & 1) == 0)
    {
      return v6;
    }

LABEL_36:
    v22 = 0;
    if (v13 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  return v6;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x22AA60D00](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      specialized Set._Variant.insert(_:)(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t specialized RequestsManager.validate(config:static:useCase:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v23 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for AspireHeEncryptionParameters(0);
  v24 = *(v8 - 8);
  v25 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v14 = type metadata accessor for UseCaseGroup(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v3 + 48);
  os_unfair_lock_lock(v18 + 6);

  os_unfair_lock_unlock(v18 + 6);
  AllowList.group(useCase:)(a2, v26, v13);

  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
    type metadata accessor for CipherMLError(0);
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    outlined init with take of UserIdentifier(v13, v17, type metadata accessor for UseCaseGroup);
    os_unfair_lock_lock(v18 + 6);

    os_unfair_lock_unlock(v18 + 6);
    v19 = type metadata accessor for AspireApiPECConfig(0);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v23 + *(v19 + 40), v7, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    v20 = v25;
    v21 = *(v24 + 48);
    if (v21(v7, 1, v25) == 1)
    {
      *v10 = 0;
      *(v10 + 1) = 0;
      *(v10 + 2) = MEMORY[0x277D84F90];
      *(v10 + 3) = 0;
      v10[32] = 1;
      *(v10 + 5) = 0;
      v10[48] = 1;
      *(v10 + 7) = 0;
      v10[64] = 1;
      UnknownStorage.init()();
      if (v21(v7, 1, v20) != 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
      }
    }

    else
    {
      outlined init with take of UserIdentifier(v7, v10, type metadata accessor for AspireHeEncryptionParameters);
    }

    LOBYTE(v7) = AllowList.isAllowListed(group:encryptionParameters:)(v17, v10);

    outlined destroy of AspireApiKeyStatus(v10, type metadata accessor for AspireHeEncryptionParameters);
    outlined destroy of AspireApiKeyStatus(v17, type metadata accessor for UseCaseGroup);
  }

  return v7 & 1;
}

uint64_t outlined init with copy of UseCaseGroup(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of AspireApiKeyStatus(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of UserIdentifier(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PrivateAccessToken.TokenRequest.requestData.getter(unsigned int a1, uint64_t a2, unint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v5 = 0;
    goto LABEL_11;
  }

  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = __OFSUB__(v6, v7);
  v5 = v6 - v7;
  if (v8)
  {
    __break(1u);
LABEL_8:
    LODWORD(v5) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
      goto LABEL_14;
    }

    v5 = v5;
  }

LABEL_11:
  if (__OFADD__(v5, 3))
  {
    __break(1u);
LABEL_14:
    __break(1u);
  }

  v16 = specialized Data._Representation.init(capacity:)(v5 + 3);
  v17 = v9;
  v12 = bswap32(a1) >> 16;
  v14 = MEMORY[0x277D838B0];
  v15 = MEMORY[0x277CC9C18];
  v13[0] = &v12;
  v13[1] = v13;
  __swift_project_boxed_opaque_existential_1(v13, MEMORY[0x277D838B0]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(v13);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15CollectionOfOneVys5UInt8VGMd, &_ss15CollectionOfOneVys5UInt8VGMR);
  v14 = v10;
  v15 = lazy protocol witness table accessor for type CollectionOfOne<UInt8> and conformance <A> CollectionOfOne<A>();
  LOBYTE(v13[0]) = BYTE2(a1);
  LOBYTE(v12) = *__swift_project_boxed_opaque_existential_1(v13, v10);
  Data._Representation.replaceSubrange(_:with:count:)();
  __swift_destroy_boxed_opaque_existential_0(v13);
  Data.append(_:)();
  return v16;
}

uint64_t Data.appendBigEndianBytes<A>(_:)(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  dispatch thunk of FixedWidthInteger.bigEndian.getter();
  v11 = v2;
  _ss15withUnsafeBytes2of_q0_xz_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v6, partial apply for closure #1 in Data.appendBigEndianBytes<A>(_:), v10, a2, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v7);
  return (*(v4 + 8))(v6, a2);
}

uint64_t PrivateAccessToken.ClientState.__allocating_init(tokenWaitingActivation:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t PrivateAccessToken.ClientState.finalize(tokenResponse:)()
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v16 = 0;
  v3 = [v1 activateTokenWithServerResponse:isa error:&v16];

  v4 = v16;
  if (v3)
  {
    v16 = xmmword_225022910;
    v5 = v4;
    v6 = [v3 tokenContent];
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    Data.append(_:)();
    outlined consume of Data._Representation(v7, v9);
    v10 = [v3 signature];
    v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    Data.append(_:)();
    outlined consume of Data._Representation(v11, v13);
    return v16;
  }

  else
  {
    v15 = v16;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

uint64_t PrivateAccessToken.ClientState.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t closure #1 in Data.appendBigEndianBytes<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = MEMORY[0x277D838B0];
  v3[4] = MEMORY[0x277CC9C18];
  v3[0] = a1;
  v3[1] = a2;
  __swift_project_boxed_opaque_existential_1(v3, MEMORY[0x277D838B0]);
  Data._Representation.append(contentsOf:)();
  return __swift_destroy_boxed_opaque_existential_0(v3);
}

uint64_t _ss15withUnsafeBytes2of_q0_xz_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v16, v16 + *(*(v15 - 8) + 64), v14, v12);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t Data.init(base64urlEncoded:)(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v2 = Data.init(base64Encoded:options:)();
  v4 = v3;
  outlined copy of Data?(v2, v3);

  if (v4 >> 60 != 15)
  {
    outlined consume of Data?(v2, v4);
  }

  return v2;
}

Swift::String __swiftcall Data.base64urlEncodedString()()
{
  Data.base64EncodedString(options:)(0);
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v0 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v2 = v1;

  v3 = v0;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

void specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(int *a1)
{
  Data.InlineSlice.ensureUniqueReference()();
  v2 = *a1;
  v3 = a1[1];
  if (v3 < v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = __DataStorage._bytes.getter();
  if (!v4)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = __DataStorage._offset.getter();
  v7 = v2 - v6;
  if (__OFSUB__(v2, v6))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v3 - v2;
  v9 = MEMORY[0x22AA5F1C0]();
  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  arc4random_buf((v5 + v7), v10);
}

uint64_t specialized Data._Representation.init(capacity:)(uint64_t result)
{
  if (result)
  {
    if (result < 15)
    {
      return 0;
    }

    else
    {
      v1 = result;
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(capacity:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CollectionOfOne<UInt8> and conformance <A> CollectionOfOne<A>()
{
  result = lazy protocol witness table cache variable for type CollectionOfOne<UInt8> and conformance <A> CollectionOfOne<A>;
  if (!lazy protocol witness table cache variable for type CollectionOfOne<UInt8> and conformance <A> CollectionOfOne<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss15CollectionOfOneVys5UInt8VGMd, &_ss15CollectionOfOneVys5UInt8VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollectionOfOne<UInt8> and conformance <A> CollectionOfOne<A>);
  }

  return result;
}

id specialized @nonobjc RSABSSATokenBlinder.init(publicKey:)()
{
  v6[1] = *MEMORY[0x277D85DE8];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6[0] = 0;
  v2 = [v0 initWithPublicKey:isa error:v6];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

uint64_t specialized static PrivateAccessToken.TokenRequest.request(challenge:publicKey:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v52 = *MEMORY[0x277D85DE8];
  v9 = type metadata accessor for SHA256();
  v40 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SHA256Digest();
  v41 = *(v12 - 8);
  v42 = v12;
  MEMORY[0x28223BE20](v12);
  v43 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for __DataStorage();
  swift_allocObject();
  v14 = __DataStorage.init(length:)();
  v46 = 0x2000000000;
  v47 = v14;
  specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(&v46);
  v39[1] = v46;
  v44 = v47;
  objc_allocWithZone(MEMORY[0x277D02FE8]);
  outlined copy of Data._Representation(a3, a4);
  v15 = specialized @nonobjc RSABSSATokenBlinder.init(publicKey:)();
  if (v4)
  {
    outlined consume of Data._Representation(a3, a4);
  }

  else
  {
    v39[0] = v15;
    outlined consume of Data._Representation(a3, a4);
    lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    dispatch thunk of HashFunction.init()();
    outlined copy of Data._Representation(a1, a2);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(a1, a2, v11);
    outlined consume of Data._Representation(a1, a2);
    v16 = v43;
    dispatch thunk of HashFunction.finalize()();
    (*(v40 + 8))(v11, v9);
    swift_allocObject();
    v17 = __DataStorage.init(capacity:)();
    v50 = 0;
    v51 = v17 | 0x4000000000000000;
    v45 = 512;
    v48 = MEMORY[0x277D838B0];
    v49 = MEMORY[0x277CC9C18];
    v46 = &v45;
    v47 = &v46;
    __swift_project_boxed_opaque_existential_1(&v46, MEMORY[0x277D838B0]);
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(&v46);
    Data.append(_:)();
    v18 = v42;
    v48 = v42;
    v49 = lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
    v19 = __swift_allocate_boxed_opaque_existential_1(&v46);
    v20 = v41;
    (*(v41 + 16))(v19, v16, v18);
    v21 = __swift_project_boxed_opaque_existential_1(&v46, v48);
    MEMORY[0x28223BE20](v21);
    v39[-2] = &v50;
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __swift_destroy_boxed_opaque_existential_0(&v46);
    v22 = v39[0];
    v23 = [v39[0] keyId];
    v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    Data.append(_:)();
    outlined consume of Data._Representation(v24, v26);
    v27 = [v22 keyId];
    v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = specialized BidirectionalCollection.last.getter(v28, v30);
    outlined consume of Data._Representation(v28, v30);
    if ((v31 & 0x100) != 0)
    {
      lazy protocol witness table accessor for type AuthenticationError and conformance AuthenticationError();
      swift_allocError();
      *v37 = xmmword_225024DA0;
      *(v37 + 16) = 2;
    }

    else
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
      v46 = 0;
      v33 = [v39[0] tokenWaitingActivationWithContent:isa error:&v46];

      if (v33)
      {
        v34 = v46;
        v35 = [v33 blindedMessage];
        static Data._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v20 + 8))(v43, v18);
        type metadata accessor for PrivateAccessToken.ClientState();
        *(swift_allocObject() + 16) = v33;
        outlined consume of Data._Representation(v50, v51);

        return (v31 << 16) | 2u;
      }

      v38 = v46;
      _convertNSErrorToError(_:)();
    }

    swift_willThrow();

    (*(v20 + 8))(v43, v18);
    outlined consume of Data._Representation(v50, v51);
  }
}

uint64_t specialized static PrivateAccessToken.newBlindRSATokenChallenge(for:)(uint64_t a1, unint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v21 = xmmword_225022910;
  v16 = 512;
  v4 = MEMORY[0x277D838B0];
  v5 = MEMORY[0x277CC9C18];
  v19 = MEMORY[0x277D838B0];
  v20 = MEMORY[0x277CC9C18];
  v17 = &v16;
  v18 = &v17;
  __swift_project_boxed_opaque_existential_1(&v17, MEMORY[0x277D838B0]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v17);

  v6 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(a1, a2);
  v8 = v6;
  v9 = v7;
  v10 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_13;
    }

    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    v14 = __OFSUB__(v12, v13);
    v11 = v12 - v13;
    if (!v14)
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    LODWORD(v11) = HIDWORD(v6) - v6;
    if (__OFSUB__(HIDWORD(v6), v6))
    {
      goto LABEL_16;
    }

    v11 = v11;
LABEL_10:
    if ((v11 & 0x8000000000000000) == 0)
    {
      if (!(v11 >> 16))
      {
        goto LABEL_14;
      }

      __break(1u);
LABEL_13:
      LODWORD(v11) = 0;
      goto LABEL_14;
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  if (v10)
  {
    goto LABEL_8;
  }

  LODWORD(v11) = BYTE6(v7);
LABEL_14:
  v16 = bswap32(v11) >> 16;
  v19 = v4;
  v20 = v5;
  v17 = &v16;
  v18 = &v17;
  __swift_project_boxed_opaque_existential_1(&v17, v4);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v17);
  Data.append(_:)();
  Data._Representation.append(contentsOf:)();
  v16 = 0;
  v19 = v4;
  v20 = v5;
  v17 = &v16;
  v18 = &v17;
  __swift_project_boxed_opaque_existential_1(&v17, v4);
  Data._Representation.append(contentsOf:)();
  outlined consume of Data._Representation(v8, v9);
  __swift_destroy_boxed_opaque_existential_0(&v17);
  return v21;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PrivateAccessToken.Token(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for PrivateAccessToken.Token(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for PrivateAccessToken.TokenRequest(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for PrivateAccessToken.TokenRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SHA256 and conformance SHA256(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type AuthenticationError and conformance AuthenticationError()
{
  result = lazy protocol witness table cache variable for type AuthenticationError and conformance AuthenticationError;
  if (!lazy protocol witness table cache variable for type AuthenticationError and conformance AuthenticationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AuthenticationError and conformance AuthenticationError);
  }

  return result;
}

uint64_t AspireApiError.OneOf_ErrorType.errorName.getter()
{
  v1 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireApiError.OneOf_ErrorType(v0, v3, type metadata accessor for AspireApiError.OneOf_ErrorType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (one-time initialization token for protoMessageName != -1)
      {
        swift_once();
      }

      v5 = &static AspireApiError.InvalidRequest.protoMessageName;
    }

    else
    {
      if (one-time initialization token for protoMessageName != -1)
      {
        swift_once();
      }

      v5 = &static AspireApiError.InternalError.protoMessageName;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (one-time initialization token for protoMessageName != -1)
    {
      swift_once();
    }

    v5 = &static AspireApiError.EvaluationKeyNotFound.protoMessageName;
  }

  else
  {
    if (one-time initialization token for protoMessageName != -1)
    {
      swift_once();
    }

    v5 = &static AspireApiError.ConfigVersionNotFound.protoMessageName;
  }

  v6 = *v5;

  outlined destroy of AspireApiError.OneOf_ErrorType(v3, type metadata accessor for AspireApiError.OneOf_ErrorType);
  return v6;
}

uint64_t Message.hash()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SHA256();
  v21 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SHA256Digest();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = Message.serializedData(partial:)();
  if (!v2)
  {
    v12 = v10;
    v13 = v11;
    _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    v17[0] = v7;
    dispatch thunk of HashFunction.init()();
    outlined copy of Data._Representation(v12, v13);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v12, v13, v5);
    outlined consume of Data._Representation(v12, v13);
    dispatch thunk of HashFunction.finalize()();
    outlined consume of Data._Representation(v12, v13);
    (*(v21 + 8))(v5, v3);
    v19 = v6;
    v20 = _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
    v15 = v17[0];
    (*(v17[0] + 16))(boxed_opaque_existential_1, v9, v6);
    __swift_project_boxed_opaque_existential_1(v18, v19);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    (*(v15 + 8))(v9, v6);
    v6 = v17[1];
    __swift_destroy_boxed_opaque_existential_0(v18);
  }

  return v6;
}

uint64_t AspireApiPIRConfig.shardCount.getter()
{
  v1 = type metadata accessor for AspireApiPIRFixedShardConfig(0);
  MEMORY[0x28223BE20](v1 - 8);
  v29 = (&v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  v9 = type metadata accessor for AspireApiPIRShardConfigs(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v28 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v28 - v17;
  v19 = *(v0 + *(type metadata accessor for AspireApiPIRConfig(0) + 20));
  v20 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__pirShardConfigs;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v19 + v20, v8, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  v21 = *(v10 + 48);
  if (v21(v8, 1, v9) == 1)
  {
    (*(v14 + 56))(v12, 1, 1, v13);
    UnknownStorage.init()();
    if (v21(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
    }
  }

  else
  {
    outlined init with take of AspireApiPIRShardConfigs.OneOf_ShardConfigs(v8, v12, type metadata accessor for AspireApiPIRShardConfigs);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v12, v5, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  outlined destroy of AspireApiError.OneOf_ErrorType(v12, type metadata accessor for AspireApiPIRShardConfigs);
  if ((*(v14 + 48))(v5, 1, v13) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
    v22 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__shardConfigs;
    swift_beginAccess();
    return *(*(v19 + v22) + 16);
  }

  else
  {
    outlined init with take of AspireApiPIRShardConfigs.OneOf_ShardConfigs(v5, v18, type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs);
    v24 = v28;
    outlined init with take of AspireApiPIRShardConfigs.OneOf_ShardConfigs(v18, v28, type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs);
    v25 = v24;
    v26 = v29;
    outlined init with take of AspireApiPIRShardConfigs.OneOf_ShardConfigs(v25, v29, type metadata accessor for AspireApiPIRFixedShardConfig);
    v23 = *v26;
    outlined destroy of AspireApiError.OneOf_ErrorType(v26, type metadata accessor for AspireApiPIRFixedShardConfig);
  }

  return v23;
}

uint64_t AspireApiPIRConfig.shardConfig(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v79 = a4;
  LODWORD(v80) = a3;
  v72 = type metadata accessor for AspireApiPIRFixedShardConfig(0);
  MEMORY[0x28223BE20](v72);
  v73 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v75 = &v70 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v70 - v10;
  v12 = type metadata accessor for AspireApiPIRShardConfigs(0);
  v74 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs(0);
  v76 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v70 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v71 = &v70 - v18;
  v19 = type metadata accessor for AspireApiPIRShardConfig(0);
  v20 = *(v19 - 1);
  MEMORY[0x28223BE20](v19);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
  MEMORY[0x28223BE20](v23 - 8);
  MEMORY[0x28223BE20](v24);
  v77 = &v70 - v25;
  MEMORY[0x28223BE20](v26);
  v78 = &v70 - v28;
  if ((v80 & 1) == 0)
  {
    v33 = *(v82 + *(type metadata accessor for AspireApiPIRConfig(0) + 20));
    v34 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__shardConfigs;
    swift_beginAccess();
    v35 = *(v33 + v34);
    v36 = *(v35 + 16);
    if (!v36)
    {
LABEL_22:
      v43 = 1;
      v42 = v78;
LABEL_23:
      (*(v20 + 56))(v42, v43, 1, v19);
      v52 = v77;
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v42, v77, &_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
      if ((*(v20 + 48))(v52, 1, v19) == 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v52, &_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
        if (one-time initialization token for daemon != -1)
        {
          swift_once();
        }

        v53 = type metadata accessor for Logger();
        __swift_project_value_buffer(v53, static Logger.daemon);
        v54 = a2;
        outlined copy of ShardLabel(a1, a2, 0);
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.error.getter();
        outlined consume of ShardLabel(a1, v54, 0);
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v81[0] = v58;
          *v57 = 136446210;
          *(v57 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, v54, v81);
          _os_log_impl(&dword_224E26000, v55, v56, "PIR configuration is missing shardId %{public}s", v57, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v58);
          MEMORY[0x22AA61F40](v58, -1, -1);
          MEMORY[0x22AA61F40](v57, -1, -1);
        }

        type metadata accessor for CipherMLError(0);
        _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        return outlined destroy of AMDPbHEConfig.OneOf_Config?(v42, &_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
      }

      else
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v42, &_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
        return outlined init with take of AspireApiPIRShardConfigs.OneOf_ShardConfigs(v52, v79, type metadata accessor for AspireApiPIRShardConfig);
      }
    }

    v37 = v35 + ((*(v20 + 80) + 32) & ~*(v20 + 80));

    v38 = 0;
    while (v38 < *(v35 + 16))
    {
      outlined init with copy of AspireApiError.OneOf_ErrorType(v37 + *(v20 + 72) * v38, v22, type metadata accessor for AspireApiPIRShardConfig);
      v39 = &v22[v19[8]];
      v40 = *(v39 + 1);
      if (v40)
      {
        v41 = *v39 == a1 && v40 == a2;
        if (v41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v42 = v78;
          outlined init with take of AspireApiPIRShardConfigs.OneOf_ShardConfigs(v22, v78, type metadata accessor for AspireApiPIRShardConfig);
          v43 = 0;
          goto LABEL_23;
        }
      }

      ++v38;
      outlined destroy of AspireApiError.OneOf_ErrorType(v22, type metadata accessor for AspireApiPIRShardConfig);
      if (v36 == v38)
      {

        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_41;
  }

  v80 = v27;
  v29 = AspireApiPIRConfig.shardCount.getter();
  if (v29 <= a1)
  {
    a2 = v29;
    if (one-time initialization token for daemon == -1)
    {
LABEL_18:
      v44 = type metadata accessor for Logger();
      __swift_project_value_buffer(v44, static Logger.daemon);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = a1;
        v48 = swift_slowAlloc();
        *v48 = 134217984;
        *(v48 + 4) = v47;
        _os_log_impl(&dword_224E26000, v45, v46, "Invalid shard index %ld for PIR configuration", v48, 0xCu);
        v49 = v48;
        a1 = v47;
        MEMORY[0x22AA61F40](v49, -1, -1);
      }

      type metadata accessor for CipherMLError(0);
      _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
      swift_allocError();
      *v50 = a1;
      v50[1] = a2;
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

LABEL_41:
    swift_once();
    goto LABEL_18;
  }

  v78 = a1;
  v30 = *(v82 + *(type metadata accessor for AspireApiPIRConfig(0) + 20));
  v31 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__pirShardConfigs;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v30 + v31, v11, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  v32 = *(v74 + 48);
  if (v32(v11, 1, v12) == 1)
  {
    (*(v76 + 56))(v14, 1, 1, v15);
    UnknownStorage.init()();
    if (v32(v11, 1, v12) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v11, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
    }
  }

  else
  {
    outlined init with take of AspireApiPIRShardConfigs.OneOf_ShardConfigs(v11, v14, type metadata accessor for AspireApiPIRShardConfigs);
  }

  v59 = v75;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v14, v75, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  outlined destroy of AspireApiError.OneOf_ErrorType(v14, type metadata accessor for AspireApiPIRShardConfigs);
  if ((*(v76 + 48))(v59, 1, v15) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v59, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
    v60 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__shardConfigs;
    result = swift_beginAccess();
    if ((v78 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v61 = *(v30 + v60);
      if (*(v61 + 16) > v78)
      {
        return outlined init with copy of AspireApiError.OneOf_ErrorType(v61 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v78, v79, type metadata accessor for AspireApiPIRShardConfig);
      }
    }

    __break(1u);
  }

  else
  {
    v62 = v71;
    outlined init with take of AspireApiPIRShardConfigs.OneOf_ShardConfigs(v59, v71, type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs);
    v63 = v70;
    outlined init with copy of AspireApiError.OneOf_ErrorType(v62, v70, type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs);
    v64 = v73;
    outlined init with take of AspireApiPIRShardConfigs.OneOf_ShardConfigs(v63, v73, type metadata accessor for AspireApiPIRFixedShardConfig);
    v65 = v80;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v64 + *(v72 + 24), v80, &_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
    v66 = *(v20 + 48);
    if (v66(v65, 1, v19) == 1)
    {
      v67 = v79;
      *v79 = 0;
      v67[1] = 0;
      v67[2] = MEMORY[0x277D84F90];
      UnknownStorage.init()();
      v68 = (v67 + v19[8]);
      *v68 = 0;
      v68[1] = 0;
      *(v67 + v19[9]) = 2;
      v69 = v67 + v19[10];
      *v69 = 0;
      v69[8] = 1;
      if (v66(v65, 1, v19) != 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v65, &_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
      }
    }

    else
    {
      outlined init with take of AspireApiPIRShardConfigs.OneOf_ShardConfigs(v65, v79, type metadata accessor for AspireApiPIRShardConfig);
    }

    outlined destroy of AspireApiError.OneOf_ErrorType(v64, type metadata accessor for AspireApiPIRFixedShardConfig);
    return outlined destroy of AspireApiError.OneOf_ErrorType(v62, type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs);
  }

  return result;
}

unint64_t AspireApiPIRConfig.shardIndex(for:)(uint64_t a1, void *a2)
{
  v139 = a2;
  v137 = a1;
  v3 = type metadata accessor for AspireApiPIRConfig(0);
  MEMORY[0x28223BE20](v3);
  v127 = &v118 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AspirePirPIRShardingFunctionDoubleMod(0);
  MEMORY[0x28223BE20](v5 - 8);
  v123 = (&v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v138 = type metadata accessor for SHA256();
  v136 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v135 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SHA256Digest();
  v141 = *(v8 - 8);
  v142 = v8;
  MEMORY[0x28223BE20](v8);
  v140 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v126 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v134 = &v118 - v13;
  v14 = type metadata accessor for AspirePirPIRShardingFunction(0);
  v144 = *(v14 - 8);
  v145 = v14;
  MEMORY[0x28223BE20](v14);
  v124 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v131 = &v118 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  MEMORY[0x28223BE20](v18 - 8);
  v125 = &v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v130 = &v118 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v118 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  MEMORY[0x28223BE20](v25 - 8);
  v120 = &v118 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v128 = &v118 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v118 - v30;
  v32 = type metadata accessor for AspirePirKeywordPirParameters(0);
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v121 = (&v118 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v35);
  v129 = (&v118 - v36);
  MEMORY[0x28223BE20](v37);
  v39 = &v118 - v38;
  v122 = v3;
  v40 = *(v3 + 20);
  v143 = v2;
  v41 = *(&v2->isa + v40);
  v42 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__keywordPirParams;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v41 + v42, v31, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v43 = *(v33 + 48);
  v44 = v43(v31, 1, v32);
  v132 = v43;
  v133 = v33 + 48;
  if (v44 == 1)
  {
    *v39 = 0;
    v39[8] = 0;
    UnknownStorage.init()();
    v45 = *(v32 + 28);
    v46 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
    (*(*(v46 - 8) + 56))(&v39[v45], 1, 1, v46);
    (*(v144 + 56))(&v39[*(v32 + 32)], 1, 1, v145);
    v47 = v32;
    if (v43(v31, 1, v32) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v31, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
    }
  }

  else
  {
    v47 = v32;
    outlined init with take of AspireApiPIRShardConfigs.OneOf_ShardConfigs(v31, v39, type metadata accessor for AspirePirKeywordPirParameters);
  }

  v48 = v47;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(&v39[*(v47 + 32)], v24, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  outlined destroy of AspireApiError.OneOf_ErrorType(v39, type metadata accessor for AspirePirKeywordPirParameters);
  v49 = *(v144 + 48);
  v50 = v49(v24, 1, v145);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v24, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  if (v50 == 1)
  {
    v51 = AspireApiPIRConfig.shardCount.getter();
    _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    v52 = v135;
    v53 = v138;
    dispatch thunk of HashFunction.init()();
    v54 = v137;
    v55 = v139;
    outlined copy of Data._Representation(v137, v139);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v54, v55, v52);
    outlined consume of Data._Representation(v54, v55);
    v56 = v140;
    dispatch thunk of HashFunction.finalize()();
    (*(v136 + 8))(v52, v53);
    SHA256Digest.withUnsafeBytes<A>(_:)();
    (*(v141 + 8))(v56, v142);
    if (v51)
    {
      return v146 % v51;
    }

    __break(1u);
    goto LABEL_38;
  }

  v119 = v49;
  v58 = v128;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v41 + v42, v128, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v59 = v132;
  if (v132(v58, 1, v47) == 1)
  {
    v60 = v129;
    *v129 = 0;
    *(v60 + 8) = 0;
    UnknownStorage.init()();
    v61 = *(v47 + 28);
    v62 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
    (*(*(v62 - 8) + 56))(v60 + v61, 1, 1, v62);
    v63 = v145;
    (*(v144 + 56))(v60 + *(v48 + 32), 1, 1, v145);
    v64 = v60;
    v65 = v59(v58, 1, v48) == 1;
    v56 = v134;
    v66 = v131;
    v67 = v58;
    v68 = v130;
    if (!v65)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v67, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
    }
  }

  else
  {
    v64 = v129;
    outlined init with take of AspireApiPIRShardConfigs.OneOf_ShardConfigs(v58, v129, type metadata accessor for AspirePirKeywordPirParameters);
    v56 = v134;
    v63 = v145;
    v66 = v131;
    v68 = v130;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v64 + *(v48 + 32), v68, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  v69 = v119;
  if (v119(v68, 1, v63) == 1)
  {
    v70 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
    (*(*(v70 - 8) + 56))(v66, 1, 1, v70);
    UnknownStorage.init()();
    outlined destroy of AspireApiError.OneOf_ErrorType(v64, type metadata accessor for AspirePirKeywordPirParameters);
    if (v69(v68, 1, v63) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v68, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
    }
  }

  else
  {
    outlined destroy of AspireApiError.OneOf_ErrorType(v64, type metadata accessor for AspirePirKeywordPirParameters);
    outlined init with take of AspireApiPIRShardConfigs.OneOf_ShardConfigs(v68, v66, type metadata accessor for AspirePirPIRShardingFunction);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v66, v56, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  outlined destroy of AspireApiError.OneOf_ErrorType(v66, type metadata accessor for AspirePirPIRShardingFunction);
  v24 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
  v52 = *(v24 - 1);
  if ((*(v52 + 48))(v56, 1, v24) != 1)
  {
    v88 = v126;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v56, v126, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v89 = v123;
      outlined init with take of AspireApiPIRShardConfigs.OneOf_ShardConfigs(v88, v123, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
      v90 = *v89;
      _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      v91 = v135;
      v92 = v138;
      dispatch thunk of HashFunction.init()();
      v93 = v137;
      v94 = v139;
      outlined copy of Data._Representation(v137, v139);
      specialized Data._Representation.withUnsafeBytes<A>(_:)(v93, v94, v91);
      outlined consume of Data._Representation(v93, v94);
      v95 = v140;
      dispatch thunk of HashFunction.finalize()();
      (*(v136 + 8))(v91, v92);
      SHA256Digest.withUnsafeBytes<A>(_:)();
      result = (*(v141 + 8))(v95, v142);
      if (v90)
      {
        v96 = v146;
        v97 = AspireApiPIRConfig.shardCount.getter();
        result = outlined destroy of AspireApiError.OneOf_ErrorType(v89, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
        if (v97)
        {
          v98 = v96 % v90 % v97;
          v99 = v134;
LABEL_29:
          outlined destroy of AMDPbHEConfig.OneOf_Config?(v99, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
          return v98;
        }

        __break(1u);
      }

      __break(1u);
    }

    else
    {
      v100 = AspireApiPIRConfig.shardCount.getter();
      _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      v101 = v135;
      v102 = v138;
      dispatch thunk of HashFunction.init()();
      v103 = v137;
      v104 = v139;
      outlined copy of Data._Representation(v137, v139);
      specialized Data._Representation.withUnsafeBytes<A>(_:)(v103, v104, v101);
      outlined consume of Data._Representation(v103, v104);
      v105 = v140;
      dispatch thunk of HashFunction.finalize()();
      (*(v136 + 8))(v101, v102);
      SHA256Digest.withUnsafeBytes<A>(_:)();
      result = (*(v141 + 8))(v105, v142);
      if (v100)
      {
        v98 = v146 % v100;
        outlined destroy of AspireApiError.OneOf_ErrorType(v126, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
        v99 = v56;
        goto LABEL_29;
      }
    }

    __break(1u);
    return result;
  }

  v142 = v48;
  if (one-time initialization token for daemon != -1)
  {
LABEL_38:
    swift_once();
  }

  v71 = type metadata accessor for Logger();
  __swift_project_value_buffer(v71, static Logger.daemon);
  v72 = v127;
  outlined init with copy of AspireApiError.OneOf_ErrorType(v143, v127, type metadata accessor for AspireApiPIRConfig);
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v73, v74))
  {
    LODWORD(v141) = v74;
    v143 = v73;
    v75 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    v147 = v139;
    v140 = v75;
    *v75 = 136315138;
    v76 = *(v72 + *(v122 + 20));
    v77 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__keywordPirParams;
    swift_beginAccess();
    v78 = v120;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v76 + v77, v120, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
    v79 = v142;
    v80 = v132;
    if (v132(v78, 1, v142) == 1)
    {
      v81 = v121;
      *v121 = 0;
      *(v81 + 8) = 0;
      UnknownStorage.init()();
      v82 = *(v79 + 28);
      v83 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
      v84 = v81 + v82;
      v85 = v81;
      (*(*(v83 - 8) + 56))(v84, 1, 1, v83);
      v86 = v81 + *(v79 + 32);
      v87 = v145;
      (*(v144 + 56))(v86, 1, 1, v145);
      if (v80(v78, 1, v79) != 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v78, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
      }
    }

    else
    {
      v85 = v121;
      outlined init with take of AspireApiPIRShardConfigs.OneOf_ShardConfigs(v78, v121, type metadata accessor for AspirePirKeywordPirParameters);
      v87 = v145;
    }

    v106 = v125;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v85 + *(v142 + 32), v125, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
    v107 = v119;
    v108 = v119(v106, 1, v87);
    v109 = v127;
    if (v108 == 1)
    {
      v110 = v124;
      (*(v52 + 56))(v124, 1, 1, v24);
      v111 = v110;
      v112 = v125;
      UnknownStorage.init()();
      outlined destroy of AspireApiError.OneOf_ErrorType(v85, type metadata accessor for AspirePirKeywordPirParameters);
      if (v107(v112, 1, v87) != 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v112, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
      }
    }

    else
    {
      outlined destroy of AspireApiError.OneOf_ErrorType(v85, type metadata accessor for AspirePirKeywordPirParameters);
      v111 = v124;
      outlined init with take of AspireApiPIRShardConfigs.OneOf_ShardConfigs(v106, v124, type metadata accessor for AspirePirPIRShardingFunction);
    }

    _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type AspirePirPIRShardingFunction and conformance AspirePirPIRShardingFunction, type metadata accessor for AspirePirPIRShardingFunction, &protocol conformance descriptor for AspirePirPIRShardingFunction);
    v113 = Message.textFormatString()();
    outlined destroy of AspireApiError.OneOf_ErrorType(v111, type metadata accessor for AspirePirPIRShardingFunction);
    outlined destroy of AspireApiError.OneOf_ErrorType(v109, type metadata accessor for AspireApiPIRConfig);
    v114 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113._countAndFlagsBits, v113._object, &v147);

    v115 = v140;
    *(v140 + 4) = v114;
    v116 = v143;
    _os_log_impl(&dword_224E26000, v143, v141, "PIR configuration has invalid sharding function: %s.", v115, 0xCu);
    v117 = v139;
    __swift_destroy_boxed_opaque_existential_0(v139);
    MEMORY[0x22AA61F40](v117, -1, -1);
    MEMORY[0x22AA61F40](v115, -1, -1);

    v56 = v134;
  }

  else
  {

    outlined destroy of AspireApiError.OneOf_ErrorType(v72, type metadata accessor for AspireApiPIRConfig);
  }

  type metadata accessor for CipherMLError(0);
  _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return outlined destroy of AMDPbHEConfig.OneOf_Config?(v56, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
}

BOOL AspireApiPIRConfig.isShardEmpty(for:)(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for AspireApiPIRShardConfig(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = AspireApiPIRConfig.shardIndex(for:)(a1, a2);
  if (!v2)
  {
    AspireApiPIRConfig.shardConfig(at:)(v8, 0, 1, v7);
    v11 = *v7;
    outlined destroy of AspireApiError.OneOf_ErrorType(v7, type metadata accessor for AspireApiPIRShardConfig);
    return v11 == 0;
  }

  return v9;
}

BOOL AspireApiPIRConfig.isShardEmpty(at:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = type metadata accessor for AspireApiPIRShardConfig(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  AspireApiPIRConfig.shardConfig(at:)(a1, a2, a3 & 1, v9);
  if (!v3)
  {
    v11 = *v9;
    outlined destroy of AspireApiError.OneOf_ErrorType(v9, type metadata accessor for AspireApiPIRShardConfig);
    return v11 == 0;
  }

  return v10;
}

uint64_t AspireApiConfig.evaluationKeyConfigHash.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AspireApiPIRConfig(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AspireApiPECConfig(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1, &v17 - v9, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v11 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    return 0;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of AspireApiPIRShardConfigs.OneOf_ShardConfigs(v10, v7, type metadata accessor for AspireApiPECConfig);
    v12 = *(v7 + 4);
    outlined copy of Data._Representation(v12, *(v7 + 5));
    v13 = type metadata accessor for AspireApiPECConfig;
    v14 = v7;
  }

  else
  {
    outlined init with take of AspireApiPIRShardConfigs.OneOf_ShardConfigs(v10, v4, type metadata accessor for AspireApiPIRConfig);
    v15 = *&v4[*(v2 + 20)] + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash;
    swift_beginAccess();
    v12 = *v15;
    outlined copy of Data._Representation(*v15, *(v15 + 8));
    v13 = type metadata accessor for AspireApiPIRConfig;
    v14 = v4;
  }

  outlined destroy of AspireApiError.OneOf_ErrorType(v14, v13);
  return v12;
}

uint64_t specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      type metadata accessor for SHA256();
      _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v5, v6);
  }

  type metadata accessor for SHA256();
  _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return Data._Representation.append(contentsOf:)();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v4, v5);
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v4, v5);
  }

  return Data._Representation.append(contentsOf:)();
}

uint64_t outlined copy of ShardLabel(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t outlined consume of ShardLabel(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t outlined init with copy of AspireApiError.OneOf_ErrorType(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with take of AspireApiPIRShardConfigs.OneOf_ShardConfigs(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of AspireApiError.OneOf_ErrorType(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x22AA5F1C0]();
      type metadata accessor for SHA256();
      _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x22AA5F1C0]();
      return Data._Representation.append(contentsOf:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t CipherMLError.errorDescription.getter()
{
  v1 = type metadata accessor for HE.SecurityLevel();
  v48 = *(v1 - 8);
  v49 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for HE.Scheme();
  v47 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AspireHeEncryptionParameters(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NetworkManagerError(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CipherMLError(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of CipherMLError(v0, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x2064696C61766E69;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v29 = *v15;
      v30 = v15[1];
      v32 = v15[2];
      v31 = v15[3];
      v19 = v15[4];
      v18 = v15[5];
      v52[0] = 0;
      v52[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(69);
      MEMORY[0x22AA60A80](0xD00000000000001BLL, 0x80000002250363C0);
      MEMORY[0x22AA60A80](v29, v30);

      MEMORY[0x22AA60A80](0xD00000000000001CLL, 0x80000002250363E0);
      MEMORY[0x22AA60A80](v32, v31);

      MEMORY[0x22AA60A80](0x2720646E612027, 0xE700000000000000);
      goto LABEL_19;
    case 2:
      v19 = *v15;
      v18 = v15[1];
      v52[0] = 0;
      v52[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(18);

      v20 = 0xEF272070756F7267;
      v52[0] = 0x2064696C61766E69;
      goto LABEL_18;
    case 3:
      v19 = *v15;
      v18 = v15[1];
      v52[0] = 0;
      v52[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(23);

      v20 = 0x8000000225036220;
      v21 = 0xD000000000000014;
      goto LABEL_17;
    case 4:
      v33 = *v15;
      v34 = v15[1];
      v52[0] = 0;
      v52[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(40);

      v52[0] = 0xD000000000000014;
      v52[1] = 0x8000000225036160;
      v50 = v33;
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x22AA60A80](v35);

      v36 = 0xD000000000000010;
      v37 = 0x8000000225036180;
      goto LABEL_28;
    case 5:
      v40 = *v15;
      v34 = v15[1];
      v52[0] = 0;
      v52[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(66);
      MEMORY[0x22AA60A80](0xD000000000000029, 0x8000000225035E10);
      v50 = v40;
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x22AA60A80](v41);

      v37 = 0x8000000225035E40;
      v36 = 0xD000000000000015;
LABEL_28:
      MEMORY[0x22AA60A80](v36, v37);
      v50 = v34;
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x22AA60A80](v42);

      goto LABEL_29;
    case 6:
      v19 = *v15;
      v18 = v15[1];
      v52[0] = 0;
      v52[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(24);

      v20 = 0x80000002250360B0;
      v21 = 0xD000000000000015;
      goto LABEL_17;
    case 7:
      outlined init with take of AspireHeEncryptionParameters(v15, v12, type metadata accessor for NetworkManagerError);
      v52[0] = 0;
      v52[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(25);
      MEMORY[0x22AA60A80](0xD000000000000017, 0x8000000225035FC0);
      _print_unlocked<A, B>(_:_:)();
      v25 = v52[0];
      v44 = type metadata accessor for NetworkManagerError;
      v45 = v12;
      goto LABEL_33;
    case 8:
      v27 = *v15;
      v26 = v15[1];
      v52[0] = 0;
      v52[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(17);

      strcpy(v52, "server error (");
      HIBYTE(v52[1]) = -18;
      MEMORY[0x22AA60A80](v27, v26);

      goto LABEL_13;
    case 9:
      outlined init with take of AspireHeEncryptionParameters(v15, v9, type metadata accessor for AspireHeEncryptionParameters);
      v52[0] = 0;
      v52[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(47);

      v52[0] = 0xD00000000000002DLL;
      v52[1] = 0x8000000225035F50;
      lazy protocol witness table accessor for type AspireHeEncryptionParameters and conformance AspireHeEncryptionParameters(&lazy protocol witness table cache variable for type AspireHeEncryptionParameters and conformance AspireHeEncryptionParameters, type metadata accessor for AspireHeEncryptionParameters, &protocol conformance descriptor for AspireHeEncryptionParameters);
      countAndFlagsBits = Message.textFormatString()()._countAndFlagsBits;
      MEMORY[0x22AA60A80](countAndFlagsBits);

      v25 = v52[0];
      v44 = type metadata accessor for AspireHeEncryptionParameters;
      v45 = v9;
LABEL_33:
      outlined destroy of AspireHeEncryptionParameters(v45, v44);
      goto LABEL_34;
    case 10:
      v22 = *v15;
      v23 = *(v15 + 8);
      v52[0] = 0;
      v52[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(33);
      MEMORY[0x22AA60A80](0xD00000000000001ELL, 0x8000000225035F30);
      v50 = v22;
      v51 = v23;
      _print_unlocked<A, B>(_:_:)();
LABEL_13:
      v28 = 41;
      goto LABEL_20;
    case 11:
      v24 = v47;
      (*(v47 + 32))(v6, v15, v4);
      v52[0] = 0;
      v52[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(26);
      MEMORY[0x22AA60A80](0xD000000000000017, 0x8000000225035F10);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x22AA60A80](41, 0xE100000000000000);
      v25 = v52[0];
      (*(v24 + 8))(v6, v4);
      goto LABEL_34;
    case 12:
      v39 = v48;
      v38 = v49;
      (*(v48 + 32))(v3, v15, v49);
      v52[0] = 0;
      v52[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(31);
      MEMORY[0x22AA60A80](0xD00000000000001CLL, 0x8000000225035EA0);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x22AA60A80](41, 0xE100000000000000);
      v25 = v52[0];
      (*(v39 + 8))(v3, v38);
LABEL_34:
      result = v25;
      break;
    case 13:
      result = 0xD000000000000025;
      break;
    case 14:
    case 20:
    case 34:
      result = 0xD000000000000012;
      break;
    case 15:
      result = 0xD000000000000026;
      break;
    case 16:
      result = 0xD000000000000015;
      break;
    case 17:
    case 27:
      result = 0xD000000000000010;
      break;
    case 18:
      result = 0xD000000000000015;
      break;
    case 19:
      result = 0xD000000000000014;
      break;
    case 21:
    case 31:
      result = 0xD000000000000024;
      break;
    case 22:
    case 39:
      result = 0xD00000000000001ALL;
      break;
    case 23:
    case 28:
    case 45:
      result = 0xD000000000000019;
      break;
    case 24:
      return result;
    case 25:
    case 32:
      result = 0xD000000000000017;
      break;
    case 26:
    case 37:
      result = 0xD00000000000001CLL;
      break;
    case 29:
      result = 0xD000000000000015;
      break;
    case 30:
      result = 0xD000000000000027;
      break;
    case 33:
      result = 0xD00000000000001ELL;
      break;
    case 35:
    case 41:
      result = 0xD000000000000018;
      break;
    case 36:
      result = 0x20676E697373696DLL;
      break;
    case 38:
      result = 0x6C706D6920746F6ELL;
      break;
    case 40:
    case 43:
      result = 0xD00000000000001DLL;
      break;
    case 42:
      result = 0xD000000000000022;
      break;
    case 44:
      result = 0xD000000000000020;
      break;
    default:
      v19 = *v15;
      v18 = v15[1];
      v52[0] = 0;
      v52[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(48);

      v20 = 0x8000000225036390;
      v21 = 0xD00000000000002DLL;
LABEL_17:
      v52[0] = v21;
LABEL_18:
      v52[1] = v20;
LABEL_19:
      MEMORY[0x22AA60A80](v19, v18);

      v28 = 39;
LABEL_20:
      MEMORY[0x22AA60A80](v28, 0xE100000000000000);
LABEL_29:
      result = v52[0];
      break;
  }

  return result;
}

unint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        outlined init with take of Any(&v22, v24);
        outlined init with take of Any(v24, v25);
        outlined init with take of Any(v25, &v23);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_0(v11);
          result = outlined init with take of Any(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = outlined init with take of Any(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t specialized static CipherMLError.== infix(_:_:)(uint64_t *a1, char *a2)
{
  v131 = a1;
  v132 = a2;
  v2 = type metadata accessor for HE.SecurityLevel();
  v129 = *(v2 - 8);
  v130 = v2;
  MEMORY[0x28223BE20](v2);
  v120 = &v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for HE.Scheme();
  v127 = *(v4 - 8);
  v128 = v4;
  MEMORY[0x28223BE20](v4);
  v119 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AspireHeEncryptionParameters(0);
  MEMORY[0x28223BE20](v6 - 8);
  v118 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NetworkManagerError(0);
  MEMORY[0x28223BE20](v8 - 8);
  v117 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CipherMLError(0);
  MEMORY[0x28223BE20](v10);
  v126 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v125 = &v116 - v13;
  MEMORY[0x28223BE20](v14);
  v122 = (&v116 - v15);
  MEMORY[0x28223BE20](v16);
  v124 = &v116 - v17;
  MEMORY[0x28223BE20](v18);
  v121 = (&v116 - v19);
  MEMORY[0x28223BE20](v20);
  v123 = &v116 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = (&v116 - v23);
  MEMORY[0x28223BE20](v25);
  v27 = (&v116 - v26);
  MEMORY[0x28223BE20](v28);
  v30 = (&v116 - v29);
  MEMORY[0x28223BE20](v31);
  v33 = (&v116 - v32);
  MEMORY[0x28223BE20](v34);
  v36 = (&v116 - v35);
  MEMORY[0x28223BE20](v37);
  v39 = (&v116 - v38);
  MEMORY[0x28223BE20](v40);
  v42 = (&v116 - v41);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML0A7MLErrorO_ACtMd, &_s8CipherML0A7MLErrorO_ACtMR);
  MEMORY[0x28223BE20](v43 - 8);
  v45 = &v116 - v44;
  v47 = (&v116 + *(v46 + 56) - v44);
  outlined init with copy of CipherMLError(v131, &v116 - v44);
  v131 = v47;
  outlined init with copy of CipherMLError(v132, v47);
  v132 = v45;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v48 = v132;
      outlined init with copy of CipherMLError(v132, v39);
      v83 = *v39;
      v82 = v39[1];
      v85 = v39[2];
      v84 = v39[3];
      v87 = v39[4];
      v86 = v39[5];
      v88 = v131;
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        goto LABEL_160;
      }

      v89 = *v88;
      v90 = v88[1];
      v92 = v88[2];
      v91 = v88[3];
      v93 = v88[4];
      v94 = v88[5];
      v130 = v93;
      if (v83 == v89 && v82 == v90)
      {
      }

      else
      {
        v112 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v112 & 1) == 0)
        {

          goto LABEL_178;
        }
      }

      if (v85 == v92 && v84 == v91)
      {

        goto LABEL_173;
      }

      v114 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v114)
      {
LABEL_173:
        v48 = v132;
        if (v87 != v130 || v86 != v94)
        {
          v115 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v115)
          {
            goto LABEL_148;
          }

LABEL_176:
          outlined destroy of AspireHeEncryptionParameters(v48, type metadata accessor for CipherMLError);
          goto LABEL_162;
        }

LABEL_110:

LABEL_148:
        v53 = v48;
LABEL_170:
        outlined destroy of AspireHeEncryptionParameters(v53, type metadata accessor for CipherMLError);
        v73 = 1;
        return v73 & 1;
      }

LABEL_178:

      outlined destroy of AspireHeEncryptionParameters(v132, type metadata accessor for CipherMLError);
      goto LABEL_162;
    case 2u:
      v48 = v132;
      outlined init with copy of CipherMLError(v132, v36);
      v50 = *v36;
      v49 = v36[1];
      v51 = v131;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_160;
      }

      goto LABEL_108;
    case 3u:
      v54 = v132;
      outlined init with copy of CipherMLError(v132, v33);
      v76 = *v33;
      v75 = v33[1];
      v77 = v131;
      if (swift_getEnumCaseMultiPayload() != 3)
      {

        goto LABEL_156;
      }

      v78 = *v77;
      v79 = v77[1];
      if (v76 == v78 && v75 == v79)
      {

        goto LABEL_151;
      }

      v111 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v111 & 1) == 0)
      {
        goto LABEL_164;
      }

      goto LABEL_151;
    case 4u:
      v63 = v132;
      outlined init with copy of CipherMLError(v132, v30);
      v64 = v30[1];
      v65 = v131;
      v52 = swift_getEnumCaseMultiPayload() == 4;
      v53 = v63;
      if (!v52)
      {
        goto LABEL_161;
      }

      if (*v30 != *v65)
      {
        goto LABEL_180;
      }

      v66 = v65[1];
      goto LABEL_88;
    case 5u:
      v95 = v132;
      outlined init with copy of CipherMLError(v132, v27);
      v64 = v27[1];
      v96 = v131;
      v52 = swift_getEnumCaseMultiPayload() == 5;
      v53 = v95;
      if (!v52)
      {
        goto LABEL_161;
      }

      if (*v27 != *v96)
      {
        goto LABEL_180;
      }

      v66 = v96[1];
LABEL_88:
      v73 = v64 == v66;
      outlined destroy of AspireHeEncryptionParameters(v53, type metadata accessor for CipherMLError);
      return v73 & 1;
    case 6u:
      v48 = v132;
      outlined init with copy of CipherMLError(v132, v24);
      v50 = *v24;
      v49 = v24[1];
      v51 = v131;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_160;
      }

      goto LABEL_108;
    case 7u:
      v69 = v132;
      v70 = v123;
      outlined init with copy of CipherMLError(v132, v123);
      v80 = v131;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v72 = v117;
        outlined init with take of AspireHeEncryptionParameters(v80, v117, type metadata accessor for NetworkManagerError);
        v73 = specialized static NetworkManagerError.== infix(_:_:)(v70, v72);
        v74 = type metadata accessor for NetworkManagerError;
        goto LABEL_67;
      }

      v110 = type metadata accessor for NetworkManagerError;
      goto LABEL_158;
    case 8u:
      v48 = v132;
      v102 = v121;
      outlined init with copy of CipherMLError(v132, v121);
      v50 = *v102;
      v49 = v102[1];
      v51 = v131;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_108;
      }

      goto LABEL_160;
    case 9u:
      v69 = v132;
      v70 = v124;
      outlined init with copy of CipherMLError(v132, v124);
      v71 = v131;
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v72 = v118;
        outlined init with take of AspireHeEncryptionParameters(v71, v118, type metadata accessor for AspireHeEncryptionParameters);
        v73 = static AspireHeEncryptionParameters.== infix(_:_:)(v70, v72);
        v74 = type metadata accessor for AspireHeEncryptionParameters;
LABEL_67:
        v81 = v74;
        outlined destroy of AspireHeEncryptionParameters(v72, v74);
        outlined destroy of AspireHeEncryptionParameters(v70, v81);
        outlined destroy of AspireHeEncryptionParameters(v69, type metadata accessor for CipherMLError);
        return v73 & 1;
      }

      v110 = type metadata accessor for AspireHeEncryptionParameters;
LABEL_158:
      outlined destroy of AspireHeEncryptionParameters(v70, v110);
      v53 = v69;
      goto LABEL_161;
    case 0xAu:
      v97 = v132;
      v98 = v122;
      outlined init with copy of CipherMLError(v132, v122);
      v99 = *v98;
      v100 = v131;
      v52 = swift_getEnumCaseMultiPayload() == 10;
      v53 = v97;
      if (!v52)
      {
        goto LABEL_161;
      }

      v101 = *v100;
      if (*(v100 + 8) == 1)
      {
        if (v101)
        {
          if (v101 == 1)
          {
            if (v99 == 1)
            {
              goto LABEL_170;
            }
          }

          else if (v99 == 2)
          {
            goto LABEL_170;
          }
        }

        else if (!v99)
        {
          goto LABEL_170;
        }
      }

      else if (v99 == v101)
      {
        goto LABEL_170;
      }

LABEL_180:
      outlined destroy of AspireHeEncryptionParameters(v53, type metadata accessor for CipherMLError);
      goto LABEL_162;
    case 0xBu:
      v54 = v132;
      v55 = v125;
      outlined init with copy of CipherMLError(v132, v125);
      v56 = v131;
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        v58 = v127;
        v57 = v128;
        v59 = v119;
        (*(v127 + 32))(v119, v56, v128);
        v60 = &lazy protocol witness table cache variable for type HE.Scheme and conformance HE.Scheme;
        v61 = MEMORY[0x277D02F50];
        v62 = MEMORY[0x277D02F68];
        goto LABEL_45;
      }

      v107 = v127;
      v106 = v128;
      goto LABEL_153;
    case 0xCu:
      v54 = v132;
      v55 = v126;
      outlined init with copy of CipherMLError(v132, v126);
      v67 = v131;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        v107 = v129;
        v106 = v130;
LABEL_153:
        (*(v107 + 8))(v55, v106);
LABEL_156:
        v53 = v54;
LABEL_161:
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v53, &_s8CipherML0A7MLErrorO_ACtMd, &_s8CipherML0A7MLErrorO_ACtMR);
        goto LABEL_162;
      }

      v58 = v129;
      v57 = v130;
      v59 = v120;
      (*(v129 + 32))(v120, v67, v130);
      v60 = &lazy protocol witness table cache variable for type HE.SecurityLevel and conformance HE.SecurityLevel;
      v61 = MEMORY[0x277D02EF8];
      v62 = MEMORY[0x277D02F18];
LABEL_45:
      lazy protocol witness table accessor for type AspireHeEncryptionParameters and conformance AspireHeEncryptionParameters(v60, v61, v62);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v135 == v133 && v136 == v134)
      {
        v68 = *(v58 + 8);
        v68(v59, v57);

        v68(v55, v57);
LABEL_151:
        v53 = v54;
        goto LABEL_170;
      }

      v108 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v109 = *(v58 + 8);
      v109(v59, v57);

      v109(v55, v57);
      if (v108)
      {
        goto LABEL_151;
      }

LABEL_164:
      outlined destroy of AspireHeEncryptionParameters(v54, type metadata accessor for CipherMLError);
LABEL_162:
      v73 = 0;
      return v73 & 1;
    case 0xDu:
      v52 = swift_getEnumCaseMultiPayload() == 13;
      v53 = v132;
      if (!v52)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0xEu:
      v52 = swift_getEnumCaseMultiPayload() == 14;
      v53 = v132;
      if (!v52)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0xFu:
      v52 = swift_getEnumCaseMultiPayload() == 15;
      v53 = v132;
      if (!v52)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x10u:
      v52 = swift_getEnumCaseMultiPayload() == 16;
      v53 = v132;
      if (!v52)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x11u:
      v52 = swift_getEnumCaseMultiPayload() == 17;
      v53 = v132;
      if (!v52)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x12u:
      v52 = swift_getEnumCaseMultiPayload() == 18;
      v53 = v132;
      if (!v52)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x13u:
      v52 = swift_getEnumCaseMultiPayload() == 19;
      v53 = v132;
      if (!v52)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x14u:
      v52 = swift_getEnumCaseMultiPayload() == 20;
      v53 = v132;
      if (!v52)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x15u:
      v52 = swift_getEnumCaseMultiPayload() == 21;
      v53 = v132;
      if (!v52)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x16u:
      v52 = swift_getEnumCaseMultiPayload() == 22;
      v53 = v132;
      if (!v52)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x17u:
      v52 = swift_getEnumCaseMultiPayload() == 23;
      v53 = v132;
      if (!v52)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x18u:
      v52 = swift_getEnumCaseMultiPayload() == 24;
      v53 = v132;
      if (!v52)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x19u:
      v52 = swift_getEnumCaseMultiPayload() == 25;
      v53 = v132;
      if (!v52)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x1Au:
      v52 = swift_getEnumCaseMultiPayload() == 26;
      v53 = v132;
      if (!v52)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x1Bu:
      v52 = swift_getEnumCaseMultiPayload() == 27;
      v53 = v132;
      if (!v52)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x1Cu:
      v52 = swift_getEnumCaseMultiPayload() == 28;
      v53 = v132;
      if (!v52)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x1Du:
      v52 = swift_getEnumCaseMultiPayload() == 29;
      v53 = v132;
      if (!v52)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x1Eu:
      v52 = swift_getEnumCaseMultiPayload() == 30;
      v53 = v132;
      if (!v52)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x1Fu:
      v52 = swift_getEnumCaseMultiPayload() == 31;
      v53 = v132;
      if (!v52)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x20u:
      v52 = swift_getEnumCaseMultiPayload() == 32;
      v53 = v132;
      if (!v52)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x21u:
      v52 = swift_getEnumCaseMultiPayload() == 33;
      v53 = v132;
      if (!v52)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x22u:
      v52 = swift_getEnumCaseMultiPayload() == 34;
      v53 = v132;
      if (!v52)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x23u:
      v52 = swift_getEnumCaseMultiPayload() == 35;
      v53 = v132;
      if (!v52)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x24u:
      v52 = swift_getEnumCaseMultiPayload() == 36;
      v53 = v132;
      if (!v52)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x25u:
      v52 = swift_getEnumCaseMultiPayload() == 37;
      v53 = v132;
      if (!v52)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x26u:
      v52 = swift_getEnumCaseMultiPayload() == 38;
      v53 = v132;
      if (!v52)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x27u:
      v52 = swift_getEnumCaseMultiPayload() == 39;
      v53 = v132;
      if (!v52)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x28u:
      v52 = swift_getEnumCaseMultiPayload() == 40;
      v53 = v132;
      if (!v52)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x29u:
      v52 = swift_getEnumCaseMultiPayload() == 41;
      v53 = v132;
      if (!v52)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x2Au:
      v52 = swift_getEnumCaseMultiPayload() == 42;
      v53 = v132;
      if (!v52)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x2Bu:
      v52 = swift_getEnumCaseMultiPayload() == 43;
      v53 = v132;
      if (!v52)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x2Cu:
      v52 = swift_getEnumCaseMultiPayload() == 44;
      v53 = v132;
      if (!v52)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    case 0x2Du:
      v52 = swift_getEnumCaseMultiPayload() == 45;
      v53 = v132;
      if (!v52)
      {
        goto LABEL_161;
      }

      goto LABEL_170;
    default:
      v48 = v132;
      outlined init with copy of CipherMLError(v132, v42);
      v50 = *v42;
      v49 = v42[1];
      v51 = v131;
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_160:

        v53 = v48;
        goto LABEL_161;
      }

LABEL_108:
      v103 = *v51;
      v104 = v51[1];
      if (v50 == v103 && v49 == v104)
      {
        goto LABEL_110;
      }

      v105 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v105 & 1) == 0)
      {
        goto LABEL_176;
      }

      goto LABEL_148;
  }
}

uint64_t type metadata accessor for CipherMLError(uint64_t a1)
{
  result = type metadata singleton initialization cache for CipherMLError;
  if (!type metadata singleton initialization cache for CipherMLError)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of CipherMLError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CipherMLError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of AspireHeEncryptionParameters(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void specialized static CipherMLError.makeErrorConformToSecureCoding(error:)(void *a1)
{
  v2 = _convertErrorToNSError(_:)();
  v3 = [v2 userInfo];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v56 = v4;
  *&v50[0] = a1;
  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14LocalizedError_pMd, &_s10Foundation14LocalizedError_pMR);
  if (swift_dynamicCast())
  {

    outlined init with take of LocalizedError(&v51, &v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_225022960;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v7;
    __swift_project_boxed_opaque_existential_1(&v54, *(&v55[0] + 1));
    v8 = dispatch thunk of LocalizedError.errorDescription.getter();
    v10 = 0x296C6C756E28;
    if (v9)
    {
      v10 = v8;
    }

    v11 = 0xE600000000000000;
    if (v9)
    {
      v11 = v9;
    }

    *(inited + 48) = v10;
    *(inited + 56) = v11;
    v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of AMDPbHEConfig.OneOf_Config?(inited + 32, &_sSS_SStMd, &_sSS_SStMR);
    v13 = [v2 domain];
    if (!v13)
    {
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = MEMORY[0x22AA609C0](v14);
    }

    v15 = [v2 code];
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v12);

    v16 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v16 initWithDomain:v13 code:v15 userInfo:isa];

    __swift_destroy_boxed_opaque_existential_0(&v54);
  }

  else
  {
    *&v53 = 0;
    v51 = 0u;
    v52 = 0u;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(&v51, &_s10Foundation14LocalizedError_pSgMd, &_s10Foundation14LocalizedError_pSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(0xD00000000000001ELL, 0x8000000225036440, &v54);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(&v54, &_sypSgMd, &_sypSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000020, 0x8000000225036460, &v54);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(&v54, &_sypSgMd, &_sypSgMR);
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    specialized Dictionary._Variant.removeValue(forKey:)(v18, v19, &v54);

    outlined destroy of AMDPbHEConfig.OneOf_Config?(&v54, &_sypSgMd, &_sypSgMR);
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    specialized Dictionary._Variant.removeValue(forKey:)(v20, v21, &v54);

    outlined destroy of AMDPbHEConfig.OneOf_Config?(&v54, &_sypSgMd, &_sypSgMR);
    v22 = [v2 userInfo];
    v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = 0;
    v25 = 1 << *(v23 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & *(v23 + 64);
    v49 = v56;
    v28 = (v25 + 63) >> 6;
    while (1)
    {
      v29 = v24;
      if (!v27)
      {
        break;
      }

      v30 = v24;
LABEL_21:
      v32 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v33 = v32 | (v30 << 6);
      v34 = (*(v23 + 48) + 16 * v33);
      v36 = *v34;
      v35 = v34[1];
      outlined init with copy of Any(*(v23 + 56) + 32 * v33, v50);
      *&v51 = v36;
      *(&v51 + 1) = v35;
      outlined init with take of Any(v50, &v52);

      v24 = v30;
LABEL_22:
      v54 = v51;
      v55[0] = v52;
      v55[1] = v53;
      v37 = *(&v51 + 1);
      if (!*(&v51 + 1))
      {
        v56 = v49;

        v43 = [v2 domain];
        if (!v43)
        {
          v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v43 = MEMORY[0x22AA609C0](v44);
        }

        v45 = [v2 code];
        v46 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v47 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v46 initWithDomain:v43 code:v45 userInfo:v47];

        return;
      }

      v38 = v54;
      outlined init with take of Any(v55, &v51);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14NSSecureCoding_pMd, &_sSo14NSSecureCoding_pMR);
      if (swift_dynamicCast())
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v39 = v49;
        v48 = specialized __RawDictionaryStorage.find<A>(_:)(v38, v37);
        v41 = v40;

        if (v41)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v50[0] = v49;
          if (!isUniquelyReferenced_nonNull_native)
          {
            specialized _NativeDictionary.copy()();
            v39 = *&v50[0];
          }

          outlined init with take of Any((*(v39 + 56) + 32 * v48), &v51);
          v49 = v39;
          specialized _NativeDictionary._delete(at:)(v48, v39);
        }

        else
        {
          v51 = 0u;
          v52 = 0u;
        }

        outlined destroy of AMDPbHEConfig.OneOf_Config?(&v51, &_sypSgMd, &_sypSgMR);
      }
    }

    if (v28 <= v24 + 1)
    {
      v31 = v24 + 1;
    }

    else
    {
      v31 = v28;
    }

    v24 = v31 - 1;
    while (1)
    {
      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v30 >= v28)
      {
        v27 = 0;
        v52 = 0u;
        v53 = 0u;
        v51 = 0u;
        goto LABEL_22;
      }

      v27 = *(v23 + 64 + 8 * v30);
      ++v29;
      if (v27)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }
}

void type metadata completion function for CipherMLError(uint64_t a1)
{
  type metadata accessor for (group: String)();
  if (v1 <= 0x3F)
  {
    type metadata accessor for (useCase: String, group1: String, group2: String)();
    if (v2 <= 0x3F)
    {
      type metadata accessor for (message: String)();
      if (v3 <= 0x3F)
      {
        type metadata accessor for (Int, shardCount: Int)(319, &lazy cache variable for type metadata for (Int, shardCount: Int), " shardCount ");
        if (v4 <= 0x3F)
        {
          type metadata accessor for (Int, shardCount: Int)(319, &lazy cache variable for type metadata for (got: Int, expected: Int), "got expected ");
          if (v5 <= 0x3F)
          {
            type metadata accessor for NetworkManagerError(319);
            if (v6 <= 0x3F)
            {
              type metadata accessor for (encryptionParams: AspireHeEncryptionParameters)(319, &lazy cache variable for type metadata for (encryptionParams: AspireHeEncryptionParameters), type metadata accessor for AspireHeEncryptionParameters);
              if (v7 <= 0x3F)
              {
                type metadata accessor for (heScheme: AspireHeHeScheme)();
                if (v8 <= 0x3F)
                {
                  type metadata accessor for (encryptionParams: AspireHeEncryptionParameters)(319, &lazy cache variable for type metadata for (heScheme: HE.Scheme), MEMORY[0x277D02F50]);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for (encryptionParams: AspireHeEncryptionParameters)(319, &lazy cache variable for type metadata for (securityLevel: HE.SecurityLevel), MEMORY[0x277D02EF8]);
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for (group: String)()
{
  result = lazy cache variable for type metadata for (group: String);
  if (!lazy cache variable for type metadata for (group: String))
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &lazy cache variable for type metadata for (group: String));
  }

  return result;
}

void type metadata accessor for (useCase: String, group1: String, group2: String)()
{
  if (!lazy cache variable for type metadata for (useCase: String, group1: String, group2: String))
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (useCase: String, group1: String, group2: String));
    }
  }
}

uint64_t type metadata accessor for (message: String)()
{
  result = lazy cache variable for type metadata for (message: String);
  if (!lazy cache variable for type metadata for (message: String))
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &lazy cache variable for type metadata for (message: String));
  }

  return result;
}

void type metadata accessor for (Int, shardCount: Int)(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

ValueMetadata *type metadata accessor for (heScheme: AspireHeHeScheme)()
{
  result = lazy cache variable for type metadata for (heScheme: AspireHeHeScheme);
  if (!lazy cache variable for type metadata for (heScheme: AspireHeHeScheme))
  {
    result = &type metadata for AspireHeHeScheme;
    atomic_store(&type metadata for AspireHeHeScheme, &lazy cache variable for type metadata for (heScheme: AspireHeHeScheme));
  }

  return result;
}

void type metadata accessor for (encryptionParams: AspireHeEncryptionParameters)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t outlined destroy of AspireHeEncryptionParameters(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type AspireHeEncryptionParameters and conformance AspireHeEncryptionParameters(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Data.hexString.getter(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0;
  v18 = 0xE000000000000000;
  outlined copy of Data._Representation(a1, a2);
  Data.Iterator.init(_:at:)();
  lazy protocol witness table accessor for type Data.Iterator and conformance Data.Iterator();
  dispatch thunk of IteratorProtocol.next()();
  if ((v16 & 1) == 0)
  {
    v14 = xmmword_225022960;
    v8 = MEMORY[0x277D84B78];
    v9 = MEMORY[0x277D84BC0];
    do
    {
      v10 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v11 = swift_allocObject();
      *(v11 + 16) = v14;
      *(v11 + 56) = v8;
      *(v11 + 64) = v9;
      *(v11 + 32) = v10;
      v12 = String.init(format:_:)();
      MEMORY[0x22AA60A80](v12);

      dispatch thunk of IteratorProtocol.next()();
    }

    while (v16 != 1);
  }

  (*(v5 + 8))(v7, v4);
  return v17;
}

unint64_t lazy protocol witness table accessor for type Data.Iterator and conformance Data.Iterator()
{
  result = lazy protocol witness table cache variable for type Data.Iterator and conformance Data.Iterator;
  if (!lazy protocol witness table cache variable for type Data.Iterator and conformance Data.Iterator)
  {
    type metadata accessor for Data.Iterator();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data.Iterator and conformance Data.Iterator);
  }

  return result;
}

uint64_t FixedWidthInteger.divCeil(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v52 = a4;
  v8 = *(a3 + 8);
  v50 = *(v8 + 24);
  v53 = *(v50 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = *(a2 - 8);
  MEMORY[0x28223BE20](v10);
  v49 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v46 - v16;
  v18 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v54 = a1;
  if (v18)
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
    {
LABEL_9:
      v55 = 0;
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v9 + 8))(v17, a2);
      if ((v24 & 1) == 0)
      {
        goto LABEL_19;
      }

      __break(1u);
      goto LABEL_11;
    }

    if (dispatch thunk of BinaryInteger._lowWord.getter())
    {
      goto LABEL_19;
    }

    __break(1u);
  }

  v19 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v20 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v22 = __OFSUB__(v20, 64);
  v21 = v20 - 64 < 0;
  if (v19)
  {
    if (v20 <= 64)
    {
      goto LABEL_15;
    }

    v55 = 0;
    lazy protocol witness table accessor for type Int and conformance Int();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v23 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v9 + 8))(v17, a2);
    if ((v23 & 1) == 0)
    {
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_9;
  }

LABEL_11:
  if (v21 == v22)
  {
    goto LABEL_18;
  }

  if (dispatch thunk of BinaryInteger._lowWord.getter())
  {
    goto LABEL_19;
  }

  __break(1u);
LABEL_15:
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v25 = dispatch thunk of static Comparable.>= infix(_:_:)();
  (*(v9 + 8))(v17, a2);
  if ((v25 & 1) == 0 || dispatch thunk of BinaryInteger._lowWord.getter())
  {
LABEL_19:
    v28 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v29 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v28)
    {
      if (v29 <= 64)
      {
        goto LABEL_21;
      }
    }

    else if (v29 <= 63)
    {
LABEL_21:
      if (dispatch thunk of BinaryInteger._lowWord.getter() <= 0)
      {
LABEL_31:
        if (dispatch thunk of static BinaryInteger.isSigned.getter())
        {
          if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
          {
            v55 = 0;
            lazy protocol witness table accessor for type Int and conformance Int();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v36 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v9 + 8))(v17, a2);
            if ((v36 & 1) == 0)
            {
              return dispatch thunk of static BinaryInteger./ infix(_:_:)();
            }

            goto LABEL_43;
          }
        }

        else
        {
          v37 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v38 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v37)
          {
            if (v38 > 64)
            {
              v55 = 0;
              lazy protocol witness table accessor for type Int and conformance Int();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v39 = dispatch thunk of static Comparable.< infix(_:_:)();
              (*(v9 + 8))(v17, a2);
              if ((v39 & 1) == 0)
              {
                return dispatch thunk of static BinaryInteger./ infix(_:_:)();
              }

              goto LABEL_43;
            }

            swift_getAssociatedConformanceWitness();
            dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
            dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
            v40 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v9 + 8))(v17, a2);
            if (v40)
            {
              goto LABEL_43;
            }
          }

          else if (v38 >= 64)
          {
            return dispatch thunk of static BinaryInteger./ infix(_:_:)();
          }
        }

        if ((dispatch thunk of BinaryInteger._lowWord.getter() & 0x8000000000000000) == 0)
        {
          return dispatch thunk of static BinaryInteger./ infix(_:_:)();
        }

LABEL_43:
        if (dispatch thunk of static BinaryInteger.isSigned.getter())
        {
          if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
          {
LABEL_48:
            v55 = 0;
            lazy protocol witness table accessor for type Int and conformance Int();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v43 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v9 + 8))(v17, a2);
            if (v43)
            {
              goto LABEL_55;
            }

            return dispatch thunk of static BinaryInteger./ infix(_:_:)();
          }
        }

        else
        {
          v41 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v42 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v41)
          {
            if (v42 > 64)
            {
              goto LABEL_48;
            }

            swift_getAssociatedConformanceWitness();
            dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
            dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
            v44 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v9 + 8))(v17, a2);
            if (v44)
            {
LABEL_55:
              v46 = v5;
              AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
              dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
              v45 = v49;
              dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
              v50 = *(v50 + 8);
              dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
              v34 = *(v9 + 8);
              v34(v45, a2);
              dispatch thunk of static BinaryInteger./ infix(_:_:)();
              v34(v14, a2);
              dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
              dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
              goto LABEL_56;
            }
          }

          else if (v42 >= 64)
          {
            return dispatch thunk of static BinaryInteger./ infix(_:_:)();
          }
        }

        if ((dispatch thunk of BinaryInteger._lowWord.getter() & 0x8000000000000000) == 0)
        {
          return dispatch thunk of static BinaryInteger./ infix(_:_:)();
        }

        goto LABEL_55;
      }

LABEL_25:
      v31 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v32 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v31)
      {
        if (v32 <= 64)
        {
          goto LABEL_27;
        }
      }

      else if (v32 <= 63)
      {
LABEL_27:
        if (dispatch thunk of BinaryInteger._lowWord.getter() <= 0)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v55 = 0;
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v35 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v9 + 8))(v17, a2);
      if ((v35 & 1) == 0)
      {
        goto LABEL_31;
      }

LABEL_28:
      v48 = v8;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v33 = v49;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
      v34 = *(v9 + 8);
      v34(v33, a2);
      dispatch thunk of static BinaryInteger./ infix(_:_:)();
      v34(v14, a2);
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
LABEL_56:
      dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
      v34(v14, a2);
      return (v34)(v17, a2);
    }

    v55 = 0;
    lazy protocol witness table accessor for type Int and conformance Int();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v30 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v9 + 8))(v17, a2);
    if ((v30 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  __break(1u);
LABEL_18:
  v55 = 0;
  lazy protocol witness table accessor for type Int and conformance Int();
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v26 = dispatch thunk of static Equatable.== infix(_:_:)();
  result = (*(v9 + 8))(v17, a2);
  if ((v26 & 1) == 0)
  {
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

uint64_t FixedWidthInteger.nextMultipleOf(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a3;
  v24 = a4;
  v25 = *(*(a3 + 8) + 24);
  v22[1] = *(v25 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v12 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if ((v11 & 1) == 0)
  {
    goto LABEL_5;
  }

  if (v12 <= 64)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v26 = 0;
    lazy protocol witness table accessor for type Int and conformance Int();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v13 = dispatch thunk of static Comparable.< infix(_:_:)();
    v12 = (*(v7 + 8))(v10, a2);
    if (v13)
    {
      break;
    }

    while (1)
    {
      __break(1u);
LABEL_5:
      if (v12 > 63)
      {
        break;
      }

LABEL_6:
      v12 = dispatch thunk of BinaryInteger._lowWord.getter();
      if (v12 > 0)
      {
        goto LABEL_7;
      }
    }
  }

LABEL_7:
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
    {
      goto LABEL_15;
    }

    if ((dispatch thunk of BinaryInteger._lowWord.getter() & 0x8000000000000000) == 0)
    {
LABEL_23:
      FixedWidthInteger.divCeil(_:)(a1, a2, v23, v10);
      dispatch thunk of static Numeric.* infix(_:_:)();
      return (*(v7 + 8))(v10, a2);
    }

    __break(1u);
  }

  v14 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v15 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v17 = __OFSUB__(v15, 64);
  v16 = v15 - 64 < 0;
  if ((v14 & 1) == 0)
  {
    goto LABEL_17;
  }

  if (v15 <= 64)
  {
    goto LABEL_21;
  }

  v26 = 0;
  lazy protocol witness table accessor for type Int and conformance Int();
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v18 = dispatch thunk of static Comparable.< infix(_:_:)();
  (*(v7 + 8))(v10, a2);
  if ((v18 & 1) == 0)
  {
    goto LABEL_23;
  }

  __break(1u);
LABEL_15:
  v26 = 0;
  lazy protocol witness table accessor for type Int and conformance Int();
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v19 = dispatch thunk of static Comparable.< infix(_:_:)();
  (*(v7 + 8))(v10, a2);
  if ((v19 & 1) == 0)
  {
    goto LABEL_23;
  }

  __break(1u);
LABEL_17:
  if (v16 == v17 || (dispatch thunk of BinaryInteger._lowWord.getter() & 0x8000000000000000) == 0)
  {
    goto LABEL_23;
  }

  __break(1u);
LABEL_21:
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v20 = dispatch thunk of static Comparable.< infix(_:_:)();
  result = (*(v7 + 8))(v10, a2);
  if (v20)
  {
    __break(1u);
  }

  else
  {
    result = dispatch thunk of BinaryInteger._lowWord.getter();
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

uint64_t RandomAccessCollection<>.binarySearch(target:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v63 = a1;
  v47 = a5;
  v59 = a3;
  v49 = *(a3 + 8);
  v9 = *(v49 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v58 = &v47 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v65 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v47 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v47 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v47 - v21;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  dispatch thunk of BidirectionalCollection.index(before:)();
  v48 = v12;
  v23 = *(v12 + 8);
  v56 = v16;
  v24 = v16;
  v25 = v22;
  v60 = v23;
  v61 = v12 + 8;
  v23(v24, v11);
  v64 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  if (dispatch thunk of static Comparable.<= infix(_:_:)())
  {
    v26 = (v52 + 2);
    ++v52;
    v50 = v26;
    v51 = (v48 + 32);
    v62 = a4;
    v53 = v22;
    v54 = v11;
    do
    {
      v34 = a2;
      dispatch thunk of RandomAccessCollection.distance(from:to:)();
      dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
      v35 = dispatch thunk of Collection.subscript.read();
      v36 = *v26;
      v37 = AssociatedTypeWitness;
      v38 = v58;
      v36(v58);
      (v35)(v66, 0);
      LOBYTE(v35) = dispatch thunk of static Comparable.> infix(_:_:)();
      v39 = *v52;
      (*v52)(v38, v37);
      if (v35)
      {
        v27 = v56;
        v28 = v65;
        dispatch thunk of BidirectionalCollection.index(before:)();
        v29 = v19;
        v30 = v6;
        v31 = v34;
        v25 = v53;
        v11 = v54;
      }

      else
      {
        v40 = dispatch thunk of Collection.subscript.read();
        v36(v38);
        (v40)(v66, 0);
        LOBYTE(v40) = dispatch thunk of static Comparable.< infix(_:_:)();
        v39(v38, v37);
        if ((v40 & 1) == 0)
        {
          v11 = v54;
          v45 = v60;
          v60(v19, v54);
          v45(v53, v11);
          v46 = v47;
          (*v51)(v47, v65, v11);
          v43 = v46;
          v42 = 0;
          return (*(v48 + 56))(v43, v42, 1, v11);
        }

        v27 = v56;
        v28 = v65;
        dispatch thunk of Collection.index(after:)();
        v25 = v53;
        v11 = v54;
        v29 = v53;
        v30 = v6;
        v31 = v34;
      }

      v32 = v60;
      v60(v28, v11);
      v32(v29, v11);
      (*v51)(v29, v27, v11);
      v33 = dispatch thunk of static Comparable.<= infix(_:_:)();
      a2 = v31;
      v6 = v30;
      v26 = v50;
    }

    while ((v33 & 1) != 0);
  }

  v41 = v60;
  v60(v19, v11);
  v41(v25, v11);
  v42 = 1;
  v43 = v47;
  return (*(v48 + 56))(v43, v42, 1, v11);
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay10Foundation4DataVGSaySSGG_8CipherML16AspireApiRequestVsAE_pTg5015_s10Foundation4g4VSS8h4ML16jkl3Vs5C33_pIgggrzo_AC_SStAFsAG_pIegnrzr_TRAJSSAPsAE_pIgggrzo_Tf1cn_n(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, unint64_t, uint64_t, uint64_t), uint64_t a4)
{
  v43 = a3;
  v44 = a4;
  v7 = type metadata accessor for AspireApiRequest(0);
  v42 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v40 = &v36 - v11;
  v12 = *(a1 + 16);
  v38 = *(a2 + 16);
  v39 = v12;
  if (v38 >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v38;
  }

  v46 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
  v14 = v46;
  v41 = a1;
  v45 = a2;
  v36 = v13;
  if (v13)
  {

    v15 = 0;
    v16 = v13;
    while (1)
    {
      v17 = a1 + v15;
      v18 = *(a1 + v15 + 32);
      v19 = *(v17 + 40);
      v20 = *(v45 + v15 + 32);
      v21 = *(v45 + v15 + 40);
      outlined copy of Data._Representation(v18, v19);

      if (!v21)
      {
        goto LABEL_33;
      }

      v43(v18, v19, v20, v21);
      if (v4)
      {

        outlined consume of Data._Representation(v18, v19);
LABEL_27:

        return v14;
      }

      outlined consume of Data._Representation(v18, v19);

      v46 = v14;
      v24 = *(v14 + 16);
      v23 = *(v14 + 24);
      if (v24 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        v14 = v46;
      }

      *(v14 + 16) = v24 + 1;
      result = outlined init with take of AspirePirSymmetricPirClientConfig(v9, v14 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v24, type metadata accessor for AspireApiRequest);
      v15 += 16;
      --v16;
      a1 = v41;
      if (!v16)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_13:
  v26 = v38;
  v25 = v39;
  if (v39 > v38)
  {
    v37 = a1 + 32;
    v27 = v36;
    v28 = 16 * v36;
    while (v27 < v25)
    {
      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_30;
      }

      if (v26 == v27)
      {
        goto LABEL_24;
      }

      if (v27 >= v26)
      {
        goto LABEL_31;
      }

      if (__OFADD__(v27, 1))
      {
        goto LABEL_32;
      }

      v30 = *(v37 + v28);
      v31 = *(v37 + v28 + 8);
      v32 = *(v45 + v28 + 32);
      v33 = *(v45 + v28 + 40);
      outlined copy of Data._Representation(v30, v31);

      v43(v30, v31, v32, v33);
      if (v4)
      {
        outlined consume of Data._Representation(v30, v31);

        goto LABEL_27;
      }

      outlined consume of Data._Representation(v30, v31);

      v46 = v14;
      v35 = *(v14 + 16);
      v34 = *(v14 + 24);
      if (v35 >= v34 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1);
        v14 = v46;
      }

      *(v14 + 16) = v35 + 1;
      result = outlined init with take of AspirePirSymmetricPirClientConfig(v40, v14 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v35, type metadata accessor for AspireApiRequest);
      ++v27;
      v28 += 16;
      v26 = v38;
      v25 = v39;
      if (v29 == v39)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    return result;
  }

LABEL_24:

  return v14;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay8CipherML17AspireApiResponseVGSay10Foundation4DataVGG_ANSgsAE_pTg503_s8f4ML17hij14V10Foundation4l7VAFSgs5C33_pIgngozo_AC_AFtAGsAH_pIegnrzr_TRAjnQsAE_pIgngozo_Tf1cn_n(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t), uint64_t a4)
{
  v5 = v4;
  v67 = a3;
  v68 = a4;
  v8 = type metadata accessor for AspireApiResponse(0);
  v69 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v60 = &v57 - v12;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV_10Foundation4DataVtMd, &_s8CipherML17AspireApiResponseV_10Foundation4DataVtMR);
  MEMORY[0x28223BE20](v66);
  v14 = (&v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v59 = &v57 - v16;
  MEMORY[0x28223BE20](v17);
  v58 = &v57 - v18;
  v19 = *(a1 + 16);
  v20 = *(a2 + 16);
  v70 = a1;
  v71 = v20;
  if (v20 >= v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = v20;
  }

  v73 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
  result = v73;
  v64 = v21;
  v65 = v19;
  if (v21)
  {
    v62 = a2;
    v63 = v14;
    v23 = 0;
    v24 = (a2 + 40);
    v61 = v10;
    while (v19 != v23)
    {
      v25 = result;
      result = outlined init with copy of UserIdentifier(v70 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v23, v10, type metadata accessor for AspireApiResponse);
      if (v71 == v23)
      {
        goto LABEL_28;
      }

      v26 = *(v24 - 1);
      v27 = *v24;
      v28 = v63;
      v29 = (v63 + *(v66 + 48));
      outlined init with take of AspirePirSymmetricPirClientConfig(v10, v63, type metadata accessor for AspireApiResponse);
      *v29 = v26;
      v29[1] = v27;
      outlined copy of Data._Representation(v26, v27);
      v30 = v67(v28, v26, v27);
      v72 = v5;
      if (v5)
      {

        return outlined destroy of AMDPbHEConfig.OneOf_Config?(v28, &_s8CipherML17AspireApiResponseV_10Foundation4DataVtMd, &_s8CipherML17AspireApiResponseV_10Foundation4DataVtMR);
      }

      v32 = v30;
      v33 = v31;
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v28, &_s8CipherML17AspireApiResponseV_10Foundation4DataVtMd, &_s8CipherML17AspireApiResponseV_10Foundation4DataVtMR);
      result = v25;
      v73 = v25;
      v35 = *(v25 + 16);
      v34 = *(v25 + 24);
      if (v35 >= v34 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1);
        result = v73;
      }

      ++v23;
      *(result + 16) = v35 + 1;
      v36 = result + 16 * v35;
      *(v36 + 32) = v32;
      *(v36 + 40) = v33;
      v24 += 2;
      v19 = v65;
      v5 = v72;
      v10 = v61;
      a2 = v62;
      if (v64 == v23)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_12:
    v72 = v5;
    v37 = v71;
    if (v19 <= v71)
    {
      return result;
    }

    v38 = v64;
    v63 = (a2 + 16 * v64 + 40);
    while (v38 < v19)
    {
      v64 = result;
      v39 = v60;
      result = outlined init with copy of UserIdentifier(v70 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v38, v60, type metadata accessor for AspireApiResponse);
      if (__OFADD__(v38, 1))
      {
        goto LABEL_30;
      }

      if (v37 == v38)
      {
        outlined destroy of AspirePirKeywordPirParameters(v39, type metadata accessor for AspireApiResponse);
        return v64;
      }

      if (v38 >= v37)
      {
        goto LABEL_31;
      }

      v62 = v38 + 1;
      v40 = *(v63 - 1);
      v41 = *v63;
      v42 = v66;
      v43 = v59;
      v44 = (v59 + *(v66 + 48));
      outlined init with take of AspirePirSymmetricPirClientConfig(v39, v59, type metadata accessor for AspireApiResponse);
      *v44 = v40;
      v44[1] = v41;
      v45 = v58;
      outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v43, v58, &_s8CipherML17AspireApiResponseV_10Foundation4DataVtMd, &_s8CipherML17AspireApiResponseV_10Foundation4DataVtMR);
      v46 = (v45 + *(v42 + 48));
      v47 = *v46;
      v48 = v46[1];
      outlined copy of Data._Representation(v40, v41);
      v49 = v72;
      v50 = v67(v45, v47, v48);
      v72 = v49;
      if (v49)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v45, &_s8CipherML17AspireApiResponseV_10Foundation4DataVtMd, &_s8CipherML17AspireApiResponseV_10Foundation4DataVtMR);
      }

      v52 = v50;
      v53 = v51;
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v45, &_s8CipherML17AspireApiResponseV_10Foundation4DataVtMd, &_s8CipherML17AspireApiResponseV_10Foundation4DataVtMR);
      result = v64;
      v73 = v64;
      v55 = *(v64 + 16);
      v54 = *(v64 + 24);
      if (v55 >= v54 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1);
        result = v73;
      }

      ++v38;
      v63 += 2;
      *(result + 16) = v55 + 1;
      v56 = result + 16 * v55;
      *(v56 + 32) = v52;
      *(v56 + 40) = v53;
      v19 = v65;
      v37 = v71;
      if (v62 == v65)
      {
        return result;
      }
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}