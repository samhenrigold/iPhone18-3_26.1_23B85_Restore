uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay8CipherML19SymmetricPirKeywordVGSay10Foundation4DataVSgGG_AOsAE_pTg503_s8f4ML19hij14V10Foundation4l7VSgAGs5C33_pIgggozo_AC_AGtAGsAH_pIegnrzr_TRAj2OsAE_pIgggozo_Tf1cn_n(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, unint64_t, uint64_t, unint64_t, uint64_t, unint64_t), uint64_t a4)
{
  v42 = *(a2 + 16);
  v43 = *(a1 + 16);
  if (v42 >= v43)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v57 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
  v7 = v57;
  v40 = a2;
  v41 = a1;
  v44 = v6;
  if (v6)
  {

    v8 = (a1 + 56);
    v9 = (a2 + 40);
    v10 = v6;
    while (1)
    {
      v52 = v10;
      v54 = v7;
      v12 = *(v8 - 3);
      v11 = *(v8 - 2);
      v14 = *(v8 - 1);
      v13 = *v8;
      v15 = *(v9 - 1);
      v16 = *v9;
      outlined copy of Data._Representation(v12, v11);
      outlined copy of Data._Representation(v14, v13);
      result = outlined copy of Data?(v15, v16);
      if (v11 >> 60 == 15)
      {
        goto LABEL_32;
      }

      v7 = a4;
      v18 = a3(v12, v11, v14, v13, v15, v16);
      if (v56)
      {

        outlined consume of Data._Representation(v12, v11);
        outlined consume of Data._Representation(v14, v13);
        outlined consume of Data?(v15, v16);
        return v7;
      }

      v48 = v19;
      v50 = v18;
      outlined consume of Data._Representation(v12, v11);
      outlined consume of Data._Representation(v14, v13);
      result = outlined consume of Data?(v15, v16);
      v7 = v54;
      v21 = *(v54 + 16);
      v20 = *(v54 + 24);
      if (v21 >= v20 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
        v7 = v54;
      }

      v8 += 4;
      v9 += 2;
      *(v7 + 16) = v21 + 1;
      v22 = v7 + 16 * v21;
      *(v22 + 32) = v50;
      *(v22 + 40) = v48;
      v10 = v52 - 1;
      if (v52 == 1)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_13:
  v24 = v42;
  v23 = v43;
  if (v43 > v42)
  {
    v25 = v44;
    v26 = (v40 + 16 * v44 + 40);
    v27 = (v41 + 32 * v44 + 56);
    while (v25 < v23)
    {
      if (__OFADD__(v25, 1))
      {
        goto LABEL_29;
      }

      if (v24 == v25)
      {
        goto LABEL_24;
      }

      if (v25 >= v24)
      {
        goto LABEL_30;
      }

      if (__OFADD__(v25, 1))
      {
        goto LABEL_31;
      }

      v51 = v25 + 1;
      v53 = v26;
      v45 = v25;
      v55 = v7;
      v28 = *(v27 - 3);
      v29 = *(v27 - 2);
      v30 = *(v27 - 1);
      v31 = *v27;
      v32 = *(v26 - 1);
      v33 = *v26;
      outlined copy of Data._Representation(v28, v29);
      outlined copy of Data._Representation(v30, v31);
      outlined copy of Data?(v32, v33);
      v7 = a4;
      v34 = a3(v28, v29, v30, v31, v32, v33);
      if (v56)
      {
        outlined consume of Data._Representation(v28, v29);
        outlined consume of Data._Representation(v30, v31);
        outlined consume of Data?(v32, v33);

        return v7;
      }

      v36 = v35;
      v49 = v34;
      outlined consume of Data._Representation(v28, v29);
      outlined consume of Data._Representation(v30, v31);
      result = outlined consume of Data?(v32, v33);
      v7 = v55;
      v38 = *(v55 + 16);
      v37 = *(v55 + 24);
      if (v38 >= v37 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1);
        v7 = v55;
      }

      *(v7 + 16) = v38 + 1;
      v39 = v7 + 16 * v38;
      *(v39 + 32) = v49;
      *(v39 + 40) = v36;
      v23 = v43;
      v25 = v45 + 1;
      v26 = v53 + 2;
      v27 += 4;
      v24 = v42;
      if (v51 == v43)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

LABEL_24:

  return v7;
}

uint64_t RequestsManager.PIRContext.useCase.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t type metadata accessor for RequestsManager.PIRContext(uint64_t a1)
{
  result = type metadata singleton initialization cache for RequestsManager.PIRContext;
  if (!type metadata singleton initialization cache for RequestsManager.PIRContext)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RequestsManager.PIRContext.configID.getter()
{
  v1 = v0 + *(type metadata accessor for RequestsManager.PIRContext(0) + 28);
  v2 = *v1;
  outlined copy of Data._Representation(*v1, *(v1 + 8));
  return v2;
}

double RequestsManager.PIRContext.symmetricPirConfig()@<D0>(uint64_t *a1@<X8>)
{
  v67 = a1;
  v2 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
  v77 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v66 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v71 = &v64 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v65 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v70 = &v64 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v64 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v64 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v68 = &v64 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v64 - v18;
  v20 = type metadata accessor for AspirePirKeywordPirParameters(0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v72 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v64 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v64 - v27;
  v29 = v1 + *(type metadata accessor for RequestsManager.PIRContext(0) + 24);
  v30 = *(v29 + *(type metadata accessor for AspireApiPIRConfig(0) + 20));
  v31 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__keywordPirParams;
  swift_beginAccess();
  v73 = v31;
  v74 = v30;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v30 + v31, v19, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v32 = *(v21 + 48);
  v33 = v32(v19, 1, v20);
  v75 = v32;
  v76 = v21 + 48;
  v78 = v2;
  if (v33 == 1)
  {
    *v28 = 0;
    v28[8] = 0;
    UnknownStorage.init()();
    v34 = v25;
    v35 = v77;
    (*(v77 + 56))(&v28[*(v20 + 28)], 1, 1, v2);
    v36 = *(v20 + 32);
    v37 = type metadata accessor for AspirePirPIRShardingFunction(0);
    (*(*(v37 - 8) + 56))(&v28[v36], 1, 1, v37);
    v38 = v35;
    v25 = v34;
    if (v32(v19, 1, v20) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v19, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
    }
  }

  else
  {
    outlined init with take of AspirePirSymmetricPirClientConfig(v19, v28, type metadata accessor for AspirePirKeywordPirParameters);
    v38 = v77;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(&v28[*(v20 + 28)], v12, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  outlined destroy of AspirePirKeywordPirParameters(v28, type metadata accessor for AspirePirKeywordPirParameters);
  v69 = *(v38 + 48);
  v39 = v69(v12, 1, v78);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  if (v39 == 1)
  {
    goto LABEL_6;
  }

  v41 = v68;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v74 + v73, v68, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v42 = v75;
  if (v75(v41, 1, v20) == 1)
  {
    *v25 = 0;
    v25[8] = 0;
    UnknownStorage.init()();
    v43 = v78;
    (*(v77 + 56))(&v25[*(v20 + 28)], 1, 1, v78);
    v44 = *(v20 + 32);
    v45 = type metadata accessor for AspirePirPIRShardingFunction(0);
    (*(*(v45 - 8) + 56))(&v25[v44], 1, 1, v45);
    v46 = v42(v41, 1, v20) == 1;
    v47 = v41;
    v48 = v71;
    if (!v46)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v47, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
    }
  }

  else
  {
    outlined init with take of AspirePirSymmetricPirClientConfig(v41, v25, type metadata accessor for AspirePirKeywordPirParameters);
    v43 = v78;
    v48 = v71;
  }

  v49 = v70;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(&v25[*(v20 + 28)], v70, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  v50 = v69;
  if (v69(v49, 1, v43) == 1)
  {
    *v48 = xmmword_225022910;
    *(v48 + 16) = 0;
    *(v48 + 24) = 1;
    UnknownStorage.init()();
    outlined destroy of AspirePirKeywordPirParameters(v25, type metadata accessor for AspirePirKeywordPirParameters);
    if (v50(v49, 1, v43) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v49, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
    }
  }

  else
  {
    outlined destroy of AspirePirKeywordPirParameters(v25, type metadata accessor for AspirePirKeywordPirParameters);
    outlined init with take of AspirePirSymmetricPirClientConfig(v49, v48, type metadata accessor for AspirePirSymmetricPirClientConfig);
  }

  v51 = *(v48 + 16);
  v52 = *(v48 + 24);
  outlined destroy of AspirePirKeywordPirParameters(v48, type metadata accessor for AspirePirSymmetricPirClientConfig);
  v53 = v72;
  if (v52 == 1 && v51)
  {
    v54 = v64;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v74 + v73, v64, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
    v55 = v75;
    if (v75(v54, 1, v20) == 1)
    {
      *v53 = 0;
      *(v53 + 8) = 0;
      UnknownStorage.init()();
      (*(v77 + 56))(v53 + *(v20 + 28), 1, 1, v43);
      v56 = *(v20 + 32);
      v57 = type metadata accessor for AspirePirPIRShardingFunction(0);
      (*(*(v57 - 8) + 56))(v53 + v56, 1, 1, v57);
      v46 = v55(v54, 1, v20) == 1;
      v58 = v54;
      v59 = v65;
      v60 = v66;
      if (!v46)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v58, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
      }
    }

    else
    {
      outlined init with take of AspirePirSymmetricPirClientConfig(v54, v53, type metadata accessor for AspirePirKeywordPirParameters);
      v59 = v65;
      v60 = v66;
    }

    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v53 + *(v20 + 28), v59, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
    if (v50(v59, 1, v43) == 1)
    {
      *v60 = xmmword_225022910;
      *(v60 + 16) = 0;
      *(v60 + 24) = 1;
      UnknownStorage.init()();
      outlined destroy of AspirePirKeywordPirParameters(v53, type metadata accessor for AspirePirKeywordPirParameters);
      if (v50(v59, 1, v43) != 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v59, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
      }
    }

    else
    {
      outlined destroy of AspirePirKeywordPirParameters(v53, type metadata accessor for AspirePirKeywordPirParameters);
      outlined init with take of AspirePirSymmetricPirClientConfig(v59, v60, type metadata accessor for AspirePirSymmetricPirClientConfig);
    }

    v61 = *v60;
    v62 = *(v60 + 8);
    outlined copy of Data._Representation(*v60, v62);
    outlined destroy of AspirePirKeywordPirParameters(v60, type metadata accessor for AspirePirSymmetricPirClientConfig);
    v63 = v67;
    *v67 = v61;
    v63[1] = v62;
    *&result = 16;
    *(v63 + 1) = xmmword_225025040;
    *(v63 + 2) = xmmword_225025050;
  }

  else
  {
LABEL_6:
    type metadata accessor for CipherMLError(0);
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return result;
}

unint64_t RequestsManager.PIRContext.constructPIRClient(keyword:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v6 = type metadata accessor for AspireApiPIRConfig(0);
  MEMORY[0x28223BE20](v6 - 8);
  v27 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for SecretKey(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;
  v17 = type metadata accessor for RequestsManager.PIRContext(0);
  v18 = v17[6];
  v19 = v29;
  result = AspireApiPIRConfig.shardIndex(for:)(a1, a2);
  if (!v19)
  {
    v21 = result;
    v22 = v3 + v17[8];
    v29 = 0;
    outlined init with copy of UserIdentifier(v22, v16, type metadata accessor for SecretKey);
    outlined init with copy of UserIdentifier(v3 + v18, v10, type metadata accessor for AspireApiPIRConfig);
    v23 = (v3 + v17[7]);
    v24 = *v23;
    v25 = v23[1];
    outlined init with copy of UserIdentifier(v16, v13, type metadata accessor for SecretKey);
    v26 = v27;
    outlined init with copy of UserIdentifier(v10, v27, type metadata accessor for AspireApiPIRConfig);
    outlined copy of Data._Representation(v24, v25);
    KeywordPIRClient.init(secretKey:config:configID:shardLabel:)(v13, v26, v24, v25, v21, 0, 1, v28);
    outlined destroy of AspirePirKeywordPirParameters(v10, type metadata accessor for AspireApiPIRConfig);
    return outlined destroy of AspirePirKeywordPirParameters(v16, type metadata accessor for SecretKey);
  }

  return result;
}

uint64_t RequestsManager.PIRContext.constructPIRClient(shardId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v23 = a1;
  v5 = type metadata accessor for AspireApiPIRConfig(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for SecretKey(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - v15;
  v17 = type metadata accessor for RequestsManager.PIRContext(0);
  outlined init with copy of UserIdentifier(v3 + v17[8], v16, type metadata accessor for SecretKey);
  outlined init with copy of UserIdentifier(v3 + v17[6], v10, type metadata accessor for AspireApiPIRConfig);
  v18 = (v3 + v17[7]);
  v19 = *v18;
  v20 = v18[1];
  outlined init with copy of UserIdentifier(v16, v13, type metadata accessor for SecretKey);
  outlined init with copy of UserIdentifier(v10, v7, type metadata accessor for AspireApiPIRConfig);
  outlined copy of Data._Representation(v19, v20);

  KeywordPIRClient.init(secretKey:config:configID:shardLabel:)(v13, v7, v19, v20, v23, a2, 0, v22);
  outlined destroy of AspirePirKeywordPirParameters(v10, type metadata accessor for AspireApiPIRConfig);
  return outlined destroy of AspirePirKeywordPirParameters(v16, type metadata accessor for SecretKey);
}

void *RequestsManager.PIRContext.prepareDataRequests(keywords:shardIds:)(uint64_t *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = v2 + *(type metadata accessor for RequestsManager.PIRContext(0) + 24);
  v9 = *(v8 + *(type metadata accessor for AspireApiPIRConfig(0) + 20));
  v10 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v9 + v10, v7, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v11 = type metadata accessor for AspirePirBatchPirParameters(0);
  LODWORD(v9) = (*(*(v11 - 8) + 48))(v7, 1, v11);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  if (v9 == 1)
  {
    return RequestsManager.PIRContext.createKeywordPIRRequests(_:shardIds:)(a1, a2);
  }

  else
  {
    return RequestsManager.PIRContext.createBatchPIRQueries(_:)(a1);
  }
}

uint64_t RequestsManager.PIRContext.createBatchPIRQueries(_:)(uint64_t a1)
{
  v4 = type metadata accessor for AspireApiPIRConfig(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SecretKey(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for BatchPIRClient(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RequestsManager.PIRContext(0);
  outlined init with copy of UserIdentifier(v1 + v13[8], v9, type metadata accessor for SecretKey);
  outlined init with copy of UserIdentifier(v1 + v13[6], v6, type metadata accessor for AspireApiPIRConfig);
  v14 = (v1 + v13[7]);
  v15 = *v14;
  v16 = v14[1];
  outlined copy of Data._Representation(*v14, v16);
  BatchPIRClient.init(secretKey:config:configID:)(v9, v6, v15, v16, v12);
  if (!v2)
  {
    v17 = BatchPIRClient.constructPIRRequest(with:)(a1);
    MEMORY[0x28223BE20](v17);
    *(&v20 - 2) = v1;
    a1 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CipherML19AspireApiPIRRequestVG_AF0fG7RequestVs5NeverOTg5(partial apply for closure #1 in RequestsManager.PIRContext.createBatchPIRQueries(_:), (&v20 - 4), v19);

    outlined destroy of AspirePirKeywordPirParameters(v12, type metadata accessor for BatchPIRClient);
  }

  return a1;
}

void *RequestsManager.PIRContext.createKeywordPIRRequests(_:shardIds:)(uint64_t *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v50 = &v43 - v7;
  v49 = type metadata accessor for AspireApiPIRRequest(0);
  MEMORY[0x28223BE20](v49);
  v47 = (&v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = type metadata accessor for AspireApiEvaluationKey(0);
  v53 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v51 = (&v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v43 - v11;
  v13 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v54 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v2;
  v17 = a2[2];
  if (v17)
  {
    v18 = a1[2];
    if (v17 != v18)
    {
      if (one-time initialization token for daemon != -1)
      {
        goto LABEL_30;
      }

      goto LABEL_9;
    }

    v18 = &v43;
    MEMORY[0x28223BE20](v15);
    v2 = v55;
    *(&v43 - 2) = v55;
    v19 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay10Foundation4DataVGSaySSGG_8CipherML16AspireApiRequestVsAE_pTg5015_s10Foundation4g4VSS8h4ML16jkl3Vs5C33_pIgggrzo_AC_SStAFsAG_pIegnrzr_TRAJSSAPsAE_pIgggrzo_Tf1cn_n(a1, a2, partial apply for closure #2 in RequestsManager.PIRContext.createKeywordPIRRequests(_:shardIds:), (&v43 - 2));
  }

  else
  {
    v18 = &v43;
    MEMORY[0x28223BE20](v15);
    *(&v43 - 2) = v2;
    v19 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation4DataVG_8CipherML16AspireApiRequestVsAE_pTg5(partial apply for closure #1 in RequestsManager.PIRContext.createKeywordPIRRequests(_:shardIds:), (&v43 - 2), a1);
  }

  v17 = v3;
  if (!v3)
  {
    a2 = v19;
    v46 = type metadata accessor for RequestsManager.PIRContext(0);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2 + *(v46 + 40), v12, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
      return a2;
    }

    outlined init with take of AspirePirSymmetricPirClientConfig(v12, v54, type metadata accessor for AspireHeEvaluationKeyConfig);
    v56 = a2;
    v45 = a2[2];
    if (!v45)
    {
LABEL_27:
      outlined destroy of AspirePirKeywordPirParameters(v54, type metadata accessor for AspireHeEvaluationKeyConfig);
      return v56;
    }

    v25 = 0;
    v43 = xmmword_225022910;
    a2 = v51;
    v44 = (v53 + 56);
    while (1)
    {
      generateEvaluationKey(secretKey:config:)(v2 + *(v46 + 32), v54, a2);
      if (v17)
      {
        outlined destroy of AspirePirKeywordPirParameters(v54, type metadata accessor for AspireHeEvaluationKeyConfig);

        return a2;
      }

      a2 = v56;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
      }

      v38 = v49;
      v37 = v50;
      if (v25 >= a2[2])
      {
        __break(1u);
LABEL_30:
        swift_once();
LABEL_9:
        v20 = type metadata accessor for Logger();
        __swift_project_value_buffer(v20, static Logger.daemon);

        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 134349312;
          *(v23 + 4) = v17;

          *(v23 + 12) = 2050;
          *(v23 + 14) = v18;

          _os_log_impl(&dword_224E26000, v21, v22, "shardIds (length %{public}ld must be empty or match keywords.count %{public}ld.", v23, 0x16u);
          MEMORY[0x22AA61F40](v23, -1, -1);
        }

        else
        {
        }

        type metadata accessor for CipherMLError(0);
        _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        return a2;
      }

      v53 = 0;
      v39 = type metadata accessor for AspireApiRequest(0);
      v18 = (a2 + ((*(*(v39 - 8) + 80) + 32) & ~*(*(v39 - 8) + 80)) + *(*(v39 - 8) + 72) * v25);
      v40 = *(v39 + 20);
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v18 + v40, v37, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
      v41 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
      v52 = *(v41 - 8);
      v42 = (*(v52 + 48))(v37, 1, v41);
      v56 = a2;
      if (v42 == 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v37, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
      }

      else
      {
        if (!swift_getEnumCaseMultiPayload())
        {
          v26 = v47;
          outlined init with take of AspirePirSymmetricPirClientConfig(v37, v47, type metadata accessor for AspireApiPIRRequest);
          v34 = v38;
          v35 = v48;
          v32 = v44;
          goto LABEL_18;
        }

        outlined destroy of AspirePirKeywordPirParameters(v37, type metadata accessor for AspireApiRequest.OneOf_Request);
      }

      v26 = v47;
      *v47 = 0;
      *(v26 + 2) = v43;
      UnknownStorage.init()();
      v27 = v38[7];
      v28 = type metadata accessor for AspirePirEncryptedIndices(0);
      (*(*(v28 - 8) + 56))(v26 + v27, 1, 1, v28);
      v29 = v38[8];
      v30 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
      (*(*(v30 - 8) + 56))(v26 + v29, 1, 1, v30);
      v31 = (v26 + v38[9]);
      *v31 = 0;
      v31[1] = 0;
      v32 = v44;
      v33 = v26 + v38[10];
      v34 = v38;
      v35 = v48;
      (*v44)(v33, 1, 1, v48);
LABEL_18:
      ++v25;
      v36 = v34[10];
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v26 + v36, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
      a2 = v51;
      outlined init with take of AspirePirSymmetricPirClientConfig(v51, v26 + v36, type metadata accessor for AspireApiEvaluationKey);
      (*v32)(v26 + v36, 0, 1, v35);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v18 + v40, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
      outlined init with take of AspirePirSymmetricPirClientConfig(v26, v18 + v40, type metadata accessor for AspireApiPIRRequest);
      swift_storeEnumTagMultiPayload();
      (*(v52 + 56))(v18 + v40, 0, 1, v41);
      v2 = v55;
      v17 = v53;
      if (v45 == v25)
      {
        goto LABEL_27;
      }
    }
  }

  return a2;
}

uint64_t closure #1 in RequestsManager.PIRContext.createBatchPIRQueries(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AspireApiRequest(0);
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiRequest and conformance AspireApiRequest, type metadata accessor for AspireApiRequest, &protocol conformance descriptor for AspireApiRequest);
  return static Message.with(_:)();
}

unint64_t closure #1 in RequestsManager.PIRContext.createKeywordPIRRequests(_:shardIds:)(uint64_t *a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for AspireApiPIRRequest(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for KeywordPIRClient(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[1];
  result = RequestsManager.PIRContext.constructPIRClient(keyword:)(*a1, v13, v12);
  if (v3)
  {
    *a3 = v3;
  }

  else
  {
    KeywordPIRClient.constructPIRRequest(with:)(v13, v9);
    v15 = type metadata accessor for AspireApiRequest(0);
    MEMORY[0x28223BE20](v15);
    v16[-2] = a2;
    v16[-1] = v9;
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiRequest and conformance AspireApiRequest, type metadata accessor for AspireApiRequest, &protocol conformance descriptor for AspireApiRequest);
    static Message.with(_:)();
    outlined destroy of AspirePirKeywordPirParameters(v12, type metadata accessor for KeywordPIRClient);
    return outlined destroy of AspirePirKeywordPirParameters(v9, type metadata accessor for AspireApiPIRRequest);
  }

  return result;
}

uint64_t closure #1 in closure #1 in RequestsManager.PIRContext.createBatchPIRQueries(_:)(char *a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v9 = *a2;
  v8 = a2[1];

  *a1 = v9;
  *(a1 + 1) = v8;
  v10 = *(type metadata accessor for AspireApiRequest(0) + 20);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(&a1[v10], &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  outlined init with copy of UserIdentifier(a3, &a1[v10], a4);
  v11 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v11 - 8) + 56))(&a1[v10], 0, 1, v11);
}

uint64_t closure #2 in RequestsManager.PIRContext.createKeywordPIRRequests(_:shardIds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for AspireApiPIRRequest(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for KeywordPIRClient(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = RequestsManager.PIRContext.constructPIRClient(shardId:)(a3, a4, v15);
  if (!v5)
  {
    KeywordPIRClient.constructPIRRequest(with:)(a2, v12);
    v17 = type metadata accessor for AspireApiRequest(0);
    MEMORY[0x28223BE20](v17);
    v18[-2] = a5;
    v18[-1] = v12;
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiRequest and conformance AspireApiRequest, type metadata accessor for AspireApiRequest, &protocol conformance descriptor for AspireApiRequest);
    static Message.with(_:)();
    outlined destroy of AspirePirKeywordPirParameters(v15, type metadata accessor for KeywordPIRClient);
    return outlined destroy of AspirePirKeywordPirParameters(v12, type metadata accessor for AspireApiPIRRequest);
  }

  return result;
}

unint64_t RequestsManager.PIRContext.decryptBatchPIRResponses(_:for:)(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v36 - v5;
  v7 = type metadata accessor for AspireApiResponse(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AspireApiPIRResponse(0);
  v42 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AspireApiPIRConfig(0);
  MEMORY[0x28223BE20](v14 - 8);
  v40 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SecretKey(0);
  MEMORY[0x28223BE20](v16 - 8);
  v38 = (&v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for BatchPIRClient(0);
  MEMORY[0x28223BE20](v18 - 8);
  v39 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 16);
  v21 = MEMORY[0x277D84F90];
  if (v20)
  {
    v36 = v2;
    v44 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
    v21 = v44;
    v22 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v43 = *(v8 + 72);
    v23 = v42;
    while (1)
    {
      outlined init with copy of UserIdentifier(v22, v10, type metadata accessor for AspireApiResponse);
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v10, v6, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
      v24 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
      if ((*(*(v24 - 8) + 48))(v6, 1, v24) == 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
        goto LABEL_11;
      }

      if (swift_getEnumCaseMultiPayload())
      {
        break;
      }

      outlined destroy of AspirePirKeywordPirParameters(v10, type metadata accessor for AspireApiResponse);
      outlined init with take of AspirePirSymmetricPirClientConfig(v6, v13, type metadata accessor for AspireApiPIRResponse);
      v44 = v21;
      v26 = *(v21 + 16);
      v25 = *(v21 + 24);
      if (v26 >= v25 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
        v23 = v42;
        v21 = v44;
      }

      *(v21 + 16) = v26 + 1;
      outlined init with take of AspirePirSymmetricPirClientConfig(v13, v21 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v26, type metadata accessor for AspireApiPIRResponse);
      v22 += v43;
      if (!--v20)
      {
        v2 = v36;
        goto LABEL_12;
      }
    }

    outlined destroy of AspirePirKeywordPirParameters(v6, type metadata accessor for AspireApiResponse.OneOf_Response);
LABEL_11:
    v27 = type metadata accessor for CipherMLError(0);
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined destroy of AspirePirKeywordPirParameters(v10, type metadata accessor for AspireApiResponse);
  }

  else
  {
LABEL_12:
    v28 = type metadata accessor for RequestsManager.PIRContext(0);
    v29 = v38;
    outlined init with copy of UserIdentifier(v2 + v28[8], v38, type metadata accessor for SecretKey);
    v30 = v40;
    outlined init with copy of UserIdentifier(v2 + v28[6], v40, type metadata accessor for AspireApiPIRConfig);
    v31 = (v2 + v28[7]);
    v32 = *v31;
    v27 = v31[1];
    outlined copy of Data._Representation(*v31, v27);
    v33 = v39;
    v34 = v41;
    BatchPIRClient.init(secretKey:config:configID:)(v29, v30, v32, v27, v39);
    if (!v34)
    {
      v27 = BatchPIRClient.decryptPIRResponse(_:keywords:)(v21, v37);
      outlined destroy of AspirePirKeywordPirParameters(v33, type metadata accessor for BatchPIRClient);
    }
  }

  return v27;
}

void *closure #1 in RequestsManager.PIRContext.decryptKeywordPIRResponses(_:for:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for KeywordPIRClient(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v19 - v10;
  v12 = type metadata accessor for AspireApiPIRResponse(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v11, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v15 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  if ((*(*(v15 - 8) + 48))(v11, 1, v15) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v11, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
LABEL_5:
    v16 = type metadata accessor for CipherMLError(0);
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v16;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of AspirePirKeywordPirParameters(v11, type metadata accessor for AspireApiResponse.OneOf_Response);
    goto LABEL_5;
  }

  outlined init with take of AspirePirSymmetricPirClientConfig(v11, v14, type metadata accessor for AspireApiPIRResponse);
  v16 = a3;
  v18 = v19[1];
  RequestsManager.PIRContext.constructPIRClient(keyword:)(a2, a3, v8);
  if (!v18)
  {
    v16 = KeywordPIRClient.decryptPIRResponse(_:keyword:)(v14, a2, a3);
    outlined destroy of AspirePirKeywordPirParameters(v8, type metadata accessor for KeywordPIRClient);
  }

  outlined destroy of AspirePirKeywordPirParameters(v14, type metadata accessor for AspireApiPIRResponse);
  return v16;
}

void *RequestsManager.PIRContext.decryptSymmetricPIRResponses(_:symmetricPirKeywords:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v62 = a2;
  v6 = type metadata accessor for PIR.SymmetricPIRClient();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SymmetricPIRClient(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - v14;
  RequestsManager.PIRContext.symmetricPirConfig()(&v56);
  if (!v3)
  {
    v50 = v7;
    v51 = v9;
    v52 = v2;
    v53 = a1;
    v54 = v12;
    v17 = v57;
    if (v57 >> 60 == 15)
    {
      v4 = type metadata accessor for CipherMLError(0);
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      v44 = v6;
      v49 = v56;
      v60 = v58;
      v61 = v59;
      v18 = *(v62 + 16);
      v19 = MEMORY[0x277D84F90];
      v43 = v18;
      if (v18)
      {
        v20 = v62;
        v45 = v57;
        v46 = v10;
        v47 = v15;
        v48 = 0;
        v55[0] = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
        v19 = v55[0];
        v21 = (v20 + 40);
        v22 = v52;
        do
        {
          v24 = *(v21 - 1);
          v23 = *v21;
          v16 = outlined copy of Data._Representation(v24, *v21);
          v55[0] = v19;
          v26 = *(v19 + 16);
          v25 = *(v19 + 24);
          if (v26 >= v25 >> 1)
          {
            v16 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
            v19 = v55[0];
          }

          v21 += 4;
          *(v19 + 16) = v26 + 1;
          v27 = v19 + 16 * v26;
          *(v27 + 32) = v24;
          *(v27 + 40) = v23;
          --v18;
        }

        while (v18);
        v3 = v48;
        v28 = v47;
        v29 = v46;
        v17 = v45;
      }

      else
      {
        v28 = v15;
        v22 = v52;
        v29 = v10;
      }

      v4 = &v43;
      MEMORY[0x28223BE20](v16);
      *(&v43 - 2) = v22;
      v30 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay8CipherML17AspireApiResponseVGSay10Foundation4DataVGG_ANSgsAE_pTg503_s8f4ML17hij14V10Foundation4l7VAFSgs5C33_pIgngozo_AC_AFtAGsAH_pIegnrzr_TRAjnQsAE_pIgngozo_Tf1cn_n(v53, v19, closure #1 in RequestsManager.PIRContext.decryptKeywordPIRResponses(_:for:)partial apply, (&v43 - 4));
      v31 = v54;
      if (v3)
      {

        outlined destroy of AMDPbHEConfig.OneOf_Config?(&v56, &_s8CipherML24SymmetricPirClientConfigVSgMd, &_s8CipherML24SymmetricPirClientConfigVSgMR);
      }

      else
      {
        v33 = v30;

        outlined init with copy of AMDPbHEConfig.OneOf_Config?(&v56, v55, &_s8CipherML24SymmetricPirClientConfigVSgMd, &_s8CipherML24SymmetricPirClientConfigVSgMR);
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(&v56, v55, &_s8CipherML24SymmetricPirClientConfigVSgMd, &_s8CipherML24SymmetricPirClientConfigVSgMR);
        v34 = v51;
        v35 = v49;
        PIR.SymmetricPIRClient.init(serverPublicKey:)();
        (*(v50 + 32))(v31, v34, v44);
        v36 = v31 + *(v29 + 20);
        *v36 = v35;
        *(v36 + 8) = v17;
        v37 = v61;
        *(v36 + 16) = v60;
        *(v36 + 32) = v37;
        v38 = outlined init with take of AspirePirSymmetricPirClientConfig(v31, v28, type metadata accessor for SymmetricPIRClient);
        v39 = *(v33 + 16);
        if (v39 == v43)
        {
          *&v40 = MEMORY[0x28223BE20](v38);
          *(&v43 - 1) = v40;
          v4 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay8CipherML19SymmetricPirKeywordVGSay10Foundation4DataVSgGG_AOsAE_pTg503_s8f4ML19hij14V10Foundation4l7VSgAGs5C33_pIgggozo_AC_AGtAGsAH_pIegnrzr_TRAj2OsAE_pIgggozo_Tf1cn_n(v62, v33, partial apply for closure #1 in SymmetricPIRClient.decryptResponses(symmetricPirKeywords:encryptedResponses:), (&v43 - 4));
          outlined destroy of AMDPbHEConfig.OneOf_Config?(&v56, &_s8CipherML24SymmetricPirClientConfigVSgMd, &_s8CipherML24SymmetricPirClientConfigVSgMR);
        }

        else
        {
          v41 = v43;
          v4 = type metadata accessor for CipherMLError(0);
          _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
          swift_allocError();
          *v42 = v39;
          v42[1] = v41;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          outlined destroy of AMDPbHEConfig.OneOf_Config?(&v56, &_s8CipherML24SymmetricPirClientConfigVSgMd, &_s8CipherML24SymmetricPirClientConfigVSgMR);
        }

        outlined destroy of AspirePirKeywordPirParameters(v28, type metadata accessor for SymmetricPIRClient);
      }
    }
  }

  return v4;
}

uint64_t RequestsManager.PIRContext.requestOPRFData(for:networkManager:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v3[5] = swift_task_alloc();
  v3[6] = *(type metadata accessor for AspireApiResponse(0) - 8);
  v3[7] = swift_task_alloc();
  v3[8] = *(type metadata accessor for AspireApiOPRFResponse(0) - 8);
  v3[9] = swift_task_alloc();
  type metadata accessor for AspireApiResponses(0);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](RequestsManager.PIRContext.requestOPRFData(for:networkManager:), 0, 0);
}

uint64_t RequestsManager.PIRContext.requestOPRFData(for:networkManager:)()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  v5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay16CryptoKitPrivate3PIRO14BlindedKeywordVG_8CipherML16AspireApiRequestVs5NeverOTg5(partial apply for closure #1 in RequestsManager.PIRContext.requestOPRFData(for:networkManager:), v4, v3);
  v0[11] = v5;

  v6 = v1[3];
  v7 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v6);
  v8 = v2 + *(type metadata accessor for RequestsManager.PIRContext(0) + 20);
  v9 = *(type metadata accessor for UserIdentifier(0) + 20);
  v13 = (*(v7 + 32) + **(v7 + 32));
  v10 = swift_task_alloc();
  v0[12] = v10;
  *v10 = v0;
  v10[1] = RequestsManager.PIRContext.requestOPRFData(for:networkManager:);
  v11 = v0[10];

  return v13(v11, v5, v8 + v9, v6, v7);
}

{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = RequestsManager.PIRContext.requestOPRFData(for:networkManager:);
  }

  else
  {
    v2 = RequestsManager.PIRContext.requestOPRFData(for:networkManager:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[10];
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3)
  {
    v4 = v0[8];
    v5 = v0[6];
    v24 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v7 = 0;
    v8 = v24;
    v23 = v5;
    v9 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    while (1)
    {
      if (v7 >= *(v2 + 16))
      {
        __break(1u);
        return result;
      }

      v10 = v0[7];
      v11 = v0[5];
      outlined init with copy of UserIdentifier(v9 + *(v23 + 72) * v7, v10, type metadata accessor for AspireApiResponse);
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v10, v11, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
      v12 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
      v13 = (*(*(v12 - 8) + 48))(v11, 1, v12);
      v14 = v0[5];
      if (v13 == 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[5], &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
        goto LABEL_13;
      }

      if (swift_getEnumCaseMultiPayload() != 2)
      {
        break;
      }

      v15 = v0[9];
      outlined destroy of AspirePirKeywordPirParameters(v0[7], type metadata accessor for AspireApiResponse);
      outlined init with take of AspirePirSymmetricPirClientConfig(v14, v15, type metadata accessor for AspireApiOPRFResponse);
      v17 = *(v24 + 16);
      v16 = *(v24 + 24);
      if (v17 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
      }

      ++v7;
      v18 = v0[9];
      *(v24 + 16) = v17 + 1;
      result = outlined init with take of AspirePirSymmetricPirClientConfig(v18, v24 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v17, type metadata accessor for AspireApiOPRFResponse);
      if (v3 == v7)
      {
        outlined destroy of AspirePirKeywordPirParameters(v0[10], type metadata accessor for AspireApiResponses);
        goto LABEL_16;
      }
    }

    outlined destroy of AspirePirKeywordPirParameters(v14, type metadata accessor for AspireApiResponse.OneOf_Response);
LABEL_13:
    v19 = v0[10];
    v20 = v0[7];
    type metadata accessor for CipherMLError(0);
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined destroy of AspirePirKeywordPirParameters(v20, type metadata accessor for AspireApiResponse);
    outlined destroy of AspirePirKeywordPirParameters(v19, type metadata accessor for AspireApiResponses);

    v21 = v0[1];

    return v21();
  }

  else
  {
    outlined destroy of AspirePirKeywordPirParameters(v1, type metadata accessor for AspireApiResponses);
    v8 = MEMORY[0x277D84F90];
LABEL_16:

    v22 = v0[1];

    return v22(v8);
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in RequestsManager.PIRContext.requestOPRFData(for:networkManager:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiOPRFRequest(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = a1;
  v12 = a2;
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiOPRFRequest and conformance AspireApiOPRFRequest, type metadata accessor for AspireApiOPRFRequest, &protocol conformance descriptor for AspireApiOPRFRequest);
  static Message.with(_:)();
  type metadata accessor for AspireApiRequest(0);
  v9 = a2;
  v10 = v6;
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiRequest and conformance AspireApiRequest, type metadata accessor for AspireApiRequest, &protocol conformance descriptor for AspireApiRequest);
  static Message.with(_:)();
  return outlined destroy of AspirePirKeywordPirParameters(v6, type metadata accessor for AspireApiOPRFRequest);
}

uint64_t closure #1 in closure #1 in RequestsManager.PIRContext.requestOPRFData(for:networkManager:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = PIR.BlindedKeyword.blindedElement.getter();
  v7 = v6;
  outlined consume of Data._Representation(*a1, a1[1]);
  *a1 = v5;
  a1[1] = v7;
  v8 = (a3 + *(type metadata accessor for RequestsManager.PIRContext(0) + 28));
  v9 = *v8;
  v10 = v8[1];
  v11 = a1[2];
  v12 = a1[3];
  outlined copy of Data._Representation(*v8, v10);
  result = outlined consume of Data._Representation(v11, v12);
  a1[2] = v9;
  a1[3] = v10;
  return result;
}

uint64_t RequestsManager.PIRContext.requestData(missingKeywords:availableResults:allKeywords:requests:networkManager:symmetricPirKeywords:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[10] = a6;
  v7[11] = v6;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a2;
  v7[7] = a3;
  v7[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v7[12] = swift_task_alloc();
  type metadata accessor for AspireApiResponses(0);
  v7[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](RequestsManager.PIRContext.requestData(missingKeywords:availableResults:allKeywords:requests:networkManager:symmetricPirKeywords:), 0, 0);
}

uint64_t RequestsManager.PIRContext.requestData(missingKeywords:availableResults:allKeywords:requests:networkManager:symmetricPirKeywords:)()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = type metadata accessor for RequestsManager.PIRContext(0);
  v0[14] = v5;
  v6 = v1 + *(v5 + 20);
  v7 = *(type metadata accessor for UserIdentifier(0) + 20);
  v12 = (*(v4 + 32) + **(v4 + 32));
  v8 = swift_task_alloc();
  v0[15] = v8;
  *v8 = v0;
  v8[1] = RequestsManager.PIRContext.requestData(missingKeywords:availableResults:allKeywords:requests:networkManager:symmetricPirKeywords:);
  v9 = v0[13];
  v10 = v0[8];

  return v12(v9, v10, v6 + v7, v3, v4);
}

{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = RequestsManager.PIRContext.requestData(missingKeywords:availableResults:allKeywords:requests:networkManager:symmetricPirKeywords:);
  }

  else
  {
    v2 = RequestsManager.PIRContext.requestData(missingKeywords:availableResults:allKeywords:requests:networkManager:symmetricPirKeywords:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[10];
  if (v1)
  {
    v2 = v0[16];

    v4 = RequestsManager.PIRContext.decryptSymmetricPIRResponses(_:symmetricPirKeywords:)(v3, v1);
    if (v2)
    {
LABEL_3:
      outlined destroy of AspirePirKeywordPirParameters(v0[13], type metadata accessor for AspireApiResponses);

LABEL_4:

      v5 = v0[1];

      return v5();
    }

    goto LABEL_11;
  }

  v7 = v0[13];
  v8 = v0[12];
  v9 = v0[11] + *(v0[14] + 24);
  v10 = *(v9 + *(type metadata accessor for AspireApiPIRConfig(0) + 20));
  v11 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v10 + v11, v8, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v12 = type metadata accessor for AspirePirBatchPirParameters(0);
  LODWORD(v11) = (*(*(v12 - 8) + 48))(v8, 1, v12);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v13 = *v7;
  v14 = v0[16];
  v15 = v0[11];
  v16 = v0[5];
  if (v11 != 1)
  {

    v4 = RequestsManager.PIRContext.decryptBatchPIRResponses(_:for:)(v20, v16);
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_11:
    v21 = v4;

    goto LABEL_12;
  }

  v17 = swift_task_alloc();
  *(v17 + 16) = v15;
  v18 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay8CipherML17AspireApiResponseVGSay10Foundation4DataVGG_ANSgsAE_pTg503_s8f4ML17hij14V10Foundation4l7VAFSgs5C33_pIgngozo_AC_AFtAGsAH_pIegnrzr_TRAjnQsAE_pIgngozo_Tf1cn_n(v13, v16, closure #1 in RequestsManager.PIRContext.decryptKeywordPIRResponses(_:for:)partial apply, v17);
  if (v14)
  {
    v19 = v0[13];

    outlined destroy of AspirePirKeywordPirParameters(v19, type metadata accessor for AspireApiResponses);
    goto LABEL_4;
  }

  v21 = v18;

LABEL_12:
  v23 = v0[5];
  v22 = v0[6];
  v24 = *(v23 + 16);

  v68 = v24;
  if (v24)
  {
    v64 = v21;
    v25 = 0;
    v66 = v23 + 32;
    v67 = v0[14];
    result = v21;
    v65 = v0;
    do
    {
      v29 = *(result + 16);
      if (v25 == v29)
      {
        break;
      }

      if (v25 >= v29)
      {
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        return result;
      }

      v30 = *(v66 + 16 * v25);
      v31 = (v0[11] + *(v67 + 36));
      v70 = v30;
      v71 = *(result + 16 * v25 + 32);
      v32 = *(result + 16 * v25 + 40);
      v33 = *(v66 + 16 * v25 + 8);
      if (*v31)
      {
        v34 = v31[1];
        ObjectType = swift_getObjectType();
        v69 = *(v34 + 48);
        outlined copy of Data._Representation(v70, v33);
        outlined copy of Data?(v71, v32);
        outlined copy of Data._Representation(v70, v33);
        outlined copy of Data?(v71, v32);
        v69(v71, v32, v70, v33, ObjectType, v34);
      }

      else
      {
        outlined copy of Data._Representation(v30, *(&v30 + 1));
        outlined copy of Data?(v71, v32);
      }

      outlined copy of Data?(v71, v32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = specialized __RawDictionaryStorage.find<A>(_:)(v70, v33);
      v39 = v22[2];
      v40 = (v37 & 1) == 0;
      result = v39 + v40;
      if (__OFADD__(v39, v40))
      {
        goto LABEL_51;
      }

      v41 = v37;
      if (v22[3] >= result)
      {
        v44 = v71;
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v37)
          {
            goto LABEL_14;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          v44 = v71;
          if (v41)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(result, isUniquelyReferenced_nonNull_native);
        v42 = specialized __RawDictionaryStorage.find<A>(_:)(v70, v33);
        if ((v41 & 1) != (v43 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v38 = v42;
        v44 = v71;
        if (v41)
        {
LABEL_14:
          v26 = (v22[7] + 16 * v38);
          v27 = *v26;
          v28 = v26[1];
          *v26 = v44;
          outlined consume of Data?(v27, v28);
          outlined consume of Data._Representation(v70, v33);
          outlined consume of Data?(v71, v32);
          goto LABEL_15;
        }
      }

      v22[(v38 >> 6) + 8] |= 1 << v38;
      v45 = 16 * v38;
      *(v22[6] + v45) = v70;
      *(v22[7] + v45) = v44;
      result = outlined consume of Data?(v71, v32);
      v46 = v22[2];
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (v47)
      {
        goto LABEL_52;
      }

      v22[2] = v48;
LABEL_15:
      ++v25;
      result = v64;
      v0 = v65;
    }

    while (v68 != v25);
  }

  v49 = v0[7];
  v50 = *(v49 + 16);
  v51 = MEMORY[0x277D84F90];
  if (v50)
  {
    v72 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v50, 0);
    v51 = v72;
    v52 = (v49 + 40);
    do
    {
      if (v22[2])
      {
        v54 = *(v52 - 1);
        v53 = *v52;
        outlined copy of Data._Representation(v54, *v52);
        v55 = specialized __RawDictionaryStorage.find<A>(_:)(v54, v53);
        if (v56)
        {
          v57 = (v22[7] + 16 * v55);
          v58 = *v57;
          v59 = v57[1];
          outlined copy of Data?(*v57, v59);
        }

        else
        {
          v58 = 0;
          v59 = 0xF000000000000000;
        }

        outlined consume of Data._Representation(v54, v53);
      }

      else
      {
        v58 = 0;
        v59 = 0xF000000000000000;
      }

      v61 = *(v72 + 16);
      v60 = *(v72 + 24);
      if (v61 >= v60 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1);
      }

      v52 += 2;
      *(v72 + 16) = v61 + 1;
      v62 = v72 + 16 * v61;
      *(v62 + 32) = v58;
      *(v62 + 40) = v59;
      --v50;
    }

    while (v50);
  }

  outlined destroy of AspirePirKeywordPirParameters(v0[13], type metadata accessor for AspireApiResponses);

  v63 = v0[1];

  return v63(v51);
}

{

  v1 = *(v0 + 8);

  return v1();
}

void specialized Zip2Sequence.Iterator.next()(_OWORD *a1@<X8>)
{
  if (*(v1 + 32) == 1)
  {
    goto LABEL_6;
  }

  v2 = *(v1 + 8);
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
LABEL_5:
    *(v1 + 32) = 1;
LABEL_6:
    *a1 = xmmword_225025060;
    a1[1] = 0u;
    a1[2] = 0u;
    return;
  }

  if (v2 >= v3)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v4 = *(*v1 + 16 * v2 + 32);
  *(v1 + 8) = v2 + 1;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v5 + 16);
  if (v6 == v7)
  {
    goto LABEL_5;
  }

  if (v6 >= v7)
  {
    goto LABEL_12;
  }

  v8 = v5 + 32 * v6;
  v9 = *(v8 + 32);
  v10 = *(v8 + 48);
  *(v1 + 24) = v6 + 1;
  a1[1] = v9;
  a1[2] = v10;
  *a1 = v4;
  outlined copy of Data._Representation(v4, *(&v4 + 1));
  outlined copy of Data._Representation(v9, *(&v9 + 1));

  outlined copy of Data._Representation(v10, *(&v10 + 1));
}

BOOL RequestsManager.PIRContext.isShardEmpty(for:)(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for AspireApiPIRShardConfig(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for RequestsManager.PIRContext(0);
  v8 = AspireApiPIRConfig.shardIndex(for:)(a1, a2);
  if (!v2)
  {
    AspireApiPIRConfig.shardConfig(at:)(v8, 0, 1, v7);
    v11 = *v7;
    outlined destroy of AspirePirKeywordPirParameters(v7, type metadata accessor for AspireApiPIRShardConfig);
    return v11 == 0;
  }

  return v9;
}

BOOL RequestsManager.PIRContext.isShardEmpty(at:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = type metadata accessor for AspireApiPIRShardConfig(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for RequestsManager.PIRContext(0);
  AspireApiPIRConfig.shardConfig(at:)(a1, a2, a3 & 1, v9);
  if (!v3)
  {
    v11 = *v9;
    outlined destroy of AspirePirKeywordPirParameters(v9, type metadata accessor for AspireApiPIRShardConfig);
    return v11 == 0;
  }

  return v10;
}

uint64_t RequestsManager.PIRContext.init(useCase:userId:config:configID:secretKey:cache:evaluationKeyConfigInRequest:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  a9[1] = a2;
  v18 = type metadata accessor for RequestsManager.PIRContext(0);
  outlined init with take of AspirePirSymmetricPirClientConfig(a3, a9 + v18[5], type metadata accessor for UserIdentifier);
  outlined init with take of AspirePirSymmetricPirClientConfig(a4, a9 + v18[6], type metadata accessor for AspireApiPIRConfig);
  v19 = (a9 + v18[7]);
  *v19 = a5;
  v19[1] = a6;
  outlined init with take of AspirePirSymmetricPirClientConfig(a7, a9 + v18[8], type metadata accessor for SecretKey);
  v20 = (a9 + v18[9]);
  *v20 = a8;
  v20[1] = a10;
  return outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(a11, a9 + v18[10], &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
}

uint64_t RequestsManager.setPIRConfig(config:context:)(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v3[18] = swift_task_alloc();
  v4 = type metadata accessor for AspireHeEncryptionParameters(0);
  v3[19] = v4;
  v3[20] = *(v4 - 8);
  v3[21] = swift_task_alloc();
  v5 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v3[22] = v5;
  v3[23] = *(v5 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = type metadata accessor for AspireApiKeyStatus(0);
  v3[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  v3[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v3[33] = swift_task_alloc();
  v3[34] = type metadata accessor for AspireApiPIRConfig(0);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  type metadata accessor for BinaryDecodingOptions();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v6 = type metadata accessor for AspireApiConfig(0);
  v3[39] = v6;
  v3[40] = *(v6 - 8);
  v3[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](RequestsManager.setPIRConfig(config:context:), 0, 0);
}

{
  v6 = *v3;
  *(*v3 + 480) = v2;

  if (v2)
  {

    v7 = RequestsManager.setPIRConfig(config:context:);
  }

  else
  {
    *(v6 + 488) = a2;
    *(v6 + 496) = a1;

    v7 = RequestsManager.setPIRConfig(config:context:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t RequestsManager.setPIRConfig(config:context:)()
{
  v1 = *(v0 + 120);
  v2 = **(v0 + 128);
  *(v0 + 336) = v2;
  v3 = [v2 useCase];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *(v0 + 344) = v4;
  *(v0 + 352) = v6;
  v7 = [v1 serializedPIRConfig];
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *(v0 + 88) = v8;
  *(v0 + 96) = v10;
  BinaryDecodingOptions.init()();
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiConfig and conformance AspireApiConfig, type metadata accessor for AspireApiConfig, &protocol conformance descriptor for AspireApiConfig);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  v11 = *(v0 + 264);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(*(v0 + 328), v11, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v12 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  v13 = (*(*(v12 - 8) + 48))(v11, 1, v12);
  v14 = *(v0 + 264);
  if (v13 == 1)
  {

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
LABEL_5:
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.framework);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_224E26000, v16, v17, "CMLPIRConfig is missing pirConfig.", v18, 2u);
      MEMORY[0x22AA61F40](v18, -1, -1);
    }

    v19 = *(v0 + 328);

    type metadata accessor for CipherMLError(0);
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined destroy of AspirePirKeywordPirParameters(v19, type metadata accessor for AspireApiConfig);

    v20 = *(v0 + 8);

    return v20();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {

    outlined destroy of AspirePirKeywordPirParameters(v14, type metadata accessor for AspireApiConfig.OneOf_Config);
    goto LABEL_5;
  }

  v23 = *(v0 + 320);
  v22 = *(v0 + 328);
  v24 = *(v0 + 312);
  v25 = *(v0 + 256);
  v26 = *(v0 + 136);
  outlined init with take of AspirePirSymmetricPirClientConfig(v14, *(v0 + 288), type metadata accessor for AspireApiPIRConfig);
  v27 = *(v26 + 16);
  *(v0 + 360) = v27;
  *(v0 + 368) = *(v27 + 16);
  outlined init with copy of UserIdentifier(v22, v25, type metadata accessor for AspireApiConfig);
  (*(v23 + 56))(v25, 0, 1, v24);

  v28 = swift_task_alloc();
  *(v0 + 376) = v28;
  *v28 = v0;
  v28[1] = RequestsManager.setPIRConfig(config:context:);
  v29 = *(v0 + 256);

  return specialized DatabaseTable<>.set(key:value:)(v4, v6, v29);
}

{
  v2 = *v1;
  *(*v1 + 384) = v0;

  outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v2 + 256), &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);

  if (v0)
  {

    v3 = RequestsManager.setPIRConfig(config:context:);
  }

  else
  {
    v3 = RequestsManager.setPIRConfig(config:context:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 384);
  v2 = [*(v0 + 120) serializedKeyStatus];
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  *(v0 + 104) = v3;
  *(v0 + 112) = v5;
  BinaryDecodingOptions.init()();
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiKeyStatus and conformance AspireApiKeyStatus, type metadata accessor for AspireApiKeyStatus, &protocol conformance descriptor for AspireApiKeyStatus);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v1)
  {
    v6 = *(v0 + 288);
    outlined destroy of AspirePirKeywordPirParameters(*(v0 + 328), type metadata accessor for AspireApiConfig);

    outlined destroy of AspirePirKeywordPirParameters(v6, type metadata accessor for AspireApiPIRConfig);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 288);
    v10 = *(v0 + 272);
    v12 = *(v0 + 240);
    v11 = *(v0 + 248);
    v13 = *(v0 + 224);
    *(v0 + 392) = *(*(v0 + 360) + 24);
    v14 = *(v9 + *(v10 + 20));
    v15 = *(v0 + 176);
    v16 = *(v0 + 184);
    v17 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash;
    *(v0 + 400) = v14;
    *(v0 + 408) = v17;
    v18 = (v14 + v17);
    swift_beginAccess();
    v19 = *v18;
    *(v0 + 416) = *v18;
    v20 = v18[1];
    *(v0 + 424) = v20;
    v21 = *(v12 + 24);
    *(v0 + 504) = v21;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v11 + v21, v13, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    v22 = *(v16 + 48);
    *(v0 + 432) = v22;
    *(v0 + 440) = (v16 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v23 = v22(v13, 1, v15);
    v24 = *(v0 + 224);
    v25 = *(v0 + 232);
    if (v23 == 1)
    {
      v26 = *(v0 + 176);
      v27 = *(v0 + 160);
      v30 = *(v0 + 152);
      *v25 = MEMORY[0x277D84F90];
      *(v25 + 8) = 0;

      outlined copy of Data._Representation(v19, v20);
      UnknownStorage.init()();
      (*(v27 + 56))(v25 + *(v26 + 28), 1, 1, v30);
      if (v22(v24, 1, v26) != 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 224), &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
      }
    }

    else
    {
      outlined init with take of AspirePirSymmetricPirClientConfig(*(v0 + 224), *(v0 + 232), type metadata accessor for AspireHeEvaluationKeyConfig);

      outlined copy of Data._Representation(v19, v20);
    }

    (*(*(v0 + 184) + 56))(*(v0 + 232), 0, 1, *(v0 + 176));
    v28 = swift_task_alloc();
    *(v0 + 448) = v28;
    *v28 = v0;
    v28[1] = RequestsManager.setPIRConfig(config:context:);
    v29 = *(v0 + 232);

    return specialized DatabaseTable<>.set(key:value:)(v19, v20, v29);
  }
}

{
  v2 = *v1;
  v2[57] = v0;

  v3 = v2[53];
  v4 = v2[52];
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v2[29], &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);

  if (v0)
  {

    outlined consume of Data._Representation(v4, v3);
    v5 = RequestsManager.setPIRConfig(config:context:);
  }

  else
  {
    outlined consume of Data._Representation(v4, v3);
    v5 = RequestsManager.setPIRConfig(config:context:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v85 = v0;
  v1 = *(v0 + 432);
  v2 = *(v0 + 216);
  v3 = *(v0 + 176);
  v4 = (*(v0 + 400) + *(v0 + 408));
  v5 = *v4;
  v6 = v4[1];
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(*(v0 + 248) + *(v0 + 504), v2, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  if (v1(v2, 1, v3) == 1)
  {
    v7 = *(v0 + 432);
    v8 = *(v0 + 216);
    v9 = *(v0 + 200);
    v10 = *(v0 + 176);
    v11 = *(v0 + 152);
    v12 = *(v0 + 160);
    *v9 = MEMORY[0x277D84F90];
    *(v9 + 8) = 0;
    outlined copy of Data._Representation(v5, v6);
    UnknownStorage.init()();
    (*(v12 + 56))(v9 + *(v10 + 28), 1, 1, v11);
    if (v7(v8, 1, v10) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 216), &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    }
  }

  else
  {
    outlined init with take of AspirePirSymmetricPirClientConfig(*(v0 + 216), *(v0 + 200), type metadata accessor for AspireHeEvaluationKeyConfig);
    outlined copy of Data._Representation(v5, v6);
  }

  v13 = *(v0 + 456);
  v14 = specialized Message.hash()();
  if (v13)
  {
    v16 = *(v0 + 328);
    v17 = *(v0 + 288);
    v18 = *(v0 + 248);
    v19 = *(v0 + 200);
    outlined consume of Data._Representation(v5, v6);

    outlined destroy of AspirePirKeywordPirParameters(v19, type metadata accessor for AspireHeEvaluationKeyConfig);
LABEL_18:
    outlined destroy of AspirePirKeywordPirParameters(v18, type metadata accessor for AspireApiKeyStatus);
    outlined destroy of AspirePirKeywordPirParameters(v16, type metadata accessor for AspireApiConfig);
    outlined destroy of AspirePirKeywordPirParameters(v17, type metadata accessor for AspireApiPIRConfig);

    v42 = *(v0 + 8);

    return v42();
  }

  v20 = v14;
  v21 = v15;
  outlined destroy of AspirePirKeywordPirParameters(*(v0 + 200), type metadata accessor for AspireHeEvaluationKeyConfig);
  v22 = specialized static Data.== infix(_:_:)(v5, v6, v20, v21);
  outlined consume of Data._Representation(v20, v21);
  outlined consume of Data._Representation(v5, v6);
  if (!v22)
  {
    v33 = *(v0 + 432);
    v34 = *(v0 + 208);
    v35 = *(v0 + 176);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(*(v0 + 248) + *(v0 + 504), v34, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    if (v33(v34, 1, v35) == 1)
    {
      v36 = *(v0 + 432);
      v37 = *(v0 + 208);
      v38 = *(v0 + 192);
      v39 = *(v0 + 176);
      v40 = *(v0 + 152);
      v41 = *(v0 + 160);
      *v38 = MEMORY[0x277D84F90];
      *(v38 + 8) = 0;
      UnknownStorage.init()();
      (*(v41 + 56))(v38 + *(v39 + 28), 1, 1, v40);
      if (v36(v37, 1, v39) != 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 208), &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
      }
    }

    else
    {
      outlined init with take of AspirePirSymmetricPirClientConfig(*(v0 + 208), *(v0 + 192), type metadata accessor for AspireHeEvaluationKeyConfig);
    }

    v50 = specialized Message.hash()();
    v52 = v51;
    outlined destroy of AspirePirKeywordPirParameters(*(v0 + 192), type metadata accessor for AspireHeEvaluationKeyConfig);
    v53 = Data.hexString.getter(v50, v52);
    v55 = v54;
    outlined consume of Data._Representation(v50, v52);
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v57 = *(v0 + 280);
    v56 = *(v0 + 288);
    v58 = type metadata accessor for Logger();
    __swift_project_value_buffer(v58, static Logger.framework);
    outlined init with copy of UserIdentifier(v56, v57, type metadata accessor for AspireApiPIRConfig);

    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();

    v61 = os_log_type_enabled(v59, v60);
    v62 = *(v0 + 352);
    if (v61)
    {
      v81 = *(v0 + 344);
      v82 = v53;
      v63 = *(v0 + 272);
      v64 = *(v0 + 280);
      v65 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v84[0] = v83;
      *v65 = 136446722;
      v66 = (*(v64 + *(v63 + 20)) + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash);
      swift_beginAccess();
      v68 = *v66;
      v67 = v66[1];
      outlined copy of Data._Representation(v68, v67);
      v69 = Data.hexString.getter(v68, v67);
      v80 = v60;
      v71 = v70;
      outlined consume of Data._Representation(v68, v67);
      outlined destroy of AspirePirKeywordPirParameters(v64, type metadata accessor for AspireApiPIRConfig);
      v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v71, v84);

      *(v65 + 4) = v72;
      *(v65 + 12) = 2082;
      v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v62, v84);

      *(v65 + 14) = v73;
      *(v65 + 22) = 2082;
      v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v55, v84);

      *(v65 + 24) = v74;
      _os_log_impl(&dword_224E26000, v59, v80, "Invalid PIR config hash '%{public}s' for useCase '%{public}s', expected: '%{public}s'", v65, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA61F40](v83, -1, -1);
      MEMORY[0x22AA61F40](v65, -1, -1);
    }

    else
    {
      v75 = *(v0 + 280);

      outlined destroy of AspirePirKeywordPirParameters(v75, type metadata accessor for AspireApiPIRConfig);
    }

    v16 = *(v0 + 328);
    v17 = *(v0 + 288);
    v18 = *(v0 + 248);
    type metadata accessor for CipherMLError(0);
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_18;
  }

  v23 = *(v0 + 400);
  v24 = *(v0 + 152);
  v25 = *(v0 + 160);
  v26 = *(v0 + 144);
  v27 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__encryptionParameters;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v23 + v27, v26, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v28 = *(v25 + 48);
  v29 = v28(v26, 1, v24);
  v30 = *(v0 + 168);
  if (v29 == 1)
  {
    v31 = *(v0 + 144);
    v32 = *(v0 + 152);
    *v30 = 0;
    *(v30 + 8) = 0;
    *(v30 + 16) = MEMORY[0x277D84F90];
    *(v30 + 24) = 0;
    *(v30 + 32) = 1;
    *(v30 + 40) = 0;
    *(v30 + 48) = 1;
    *(v30 + 56) = 0;
    *(v30 + 64) = 1;
    UnknownStorage.init()();
    if (v28(v31, 1, v32) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 144), &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    }
  }

  else
  {
    outlined init with take of AspirePirSymmetricPirClientConfig(*(v0 + 144), v30, type metadata accessor for AspireHeEncryptionParameters);
  }

  RequestsManager.validateConfig(useCase:keyStatus:encryptionParams:)(*(v0 + 344), *(v0 + 352), *(v0 + 248), *(v0 + 168));
  v44 = *(v0 + 336);
  outlined destroy of AspirePirKeywordPirParameters(*(v0 + 168), type metadata accessor for AspireHeEncryptionParameters);
  v45 = [v44 sourceApplicationBundleIdentifier];
  if (v45)
  {
    v46 = v45;
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0;
  }

  *(v0 + 464) = v49;
  v76 = swift_task_alloc();
  *(v0 + 472) = v76;
  *v76 = v0;
  v76[1] = RequestsManager.setPIRConfig(config:context:);
  v78 = *(v0 + 344);
  v77 = *(v0 + 352);
  v79 = *(v0 + 248);

  return RequestsManager.rotateKeysOffline(useCase:keyStatus:networkDelegation:)(v78, v77, v79, v47, v49);
}

{
  v1 = v0[41];
  v2 = v0[36];
  outlined destroy of AspirePirKeywordPirParameters(v0[31], type metadata accessor for AspireApiKeyStatus);
  outlined destroy of AspirePirKeywordPirParameters(v1, type metadata accessor for AspireApiConfig);
  outlined destroy of AspirePirKeywordPirParameters(v2, type metadata accessor for AspireApiPIRConfig);

  v3 = v0[1];
  v5 = v0[61];
  v4 = v0[62];

  return v3(v4, v5);
}

{
  v1 = v0[36];
  outlined destroy of AspirePirKeywordPirParameters(v0[41], type metadata accessor for AspireApiConfig);
  outlined destroy of AspirePirKeywordPirParameters(v1, type metadata accessor for AspireApiPIRConfig);

  v2 = v0[1];

  return v2();
}

{
  v1 = v0[41];
  v2 = v0[36];
  outlined destroy of AspirePirKeywordPirParameters(v0[31], type metadata accessor for AspireApiKeyStatus);
  outlined destroy of AspirePirKeywordPirParameters(v1, type metadata accessor for AspireApiConfig);
  outlined destroy of AspirePirKeywordPirParameters(v2, type metadata accessor for AspireApiPIRConfig);

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[41];
  v2 = v0[36];
  outlined destroy of AspirePirKeywordPirParameters(v0[31], type metadata accessor for AspireApiKeyStatus);
  outlined destroy of AspirePirKeywordPirParameters(v1, type metadata accessor for AspireApiConfig);
  outlined destroy of AspirePirKeywordPirParameters(v2, type metadata accessor for AspireApiPIRConfig);

  v3 = v0[1];

  return v3();
}

uint64_t specialized DatabaseTable<>.set(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  v4[18] = swift_task_alloc();
  v5 = type metadata accessor for AspireApiConfig(0);
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  type metadata accessor for ConfigTable();
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type ConfigTable and conformance ConfigTable, type metadata accessor for ConfigTable, &protocol conformance descriptor for ConfigTable);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[22] = v7;
  v4[23] = v6;

  return MEMORY[0x2822009F8](specialized DatabaseTable<>.set(key:value:), v7, v6);
}

{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v4[18] = swift_task_alloc();
  v5 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  type metadata accessor for EvaluationKeyConfigTable();
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type EvaluationKeyConfigTable and conformance EvaluationKeyConfigTable, type metadata accessor for EvaluationKeyConfigTable, &protocol conformance descriptor for EvaluationKeyConfigTable);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[22] = v7;
  v4[23] = v6;

  return MEMORY[0x2822009F8](specialized DatabaseTable<>.set(key:value:), v7, v6);
}

uint64_t specialized DatabaseTable<>.set(key:value:)()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0[16], v3, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[14];
    v4 = v0[15];
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[18], &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    v0[28] = inited;
    *(inited + 16) = xmmword_225022960;
    *(inited + 32) = v5;
    *(inited + 40) = v4;

    v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8CipherML15AspireApiConfigVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v0[29] = v7;
    v8 = swift_task_alloc();
    v0[30] = v8;
    *v8 = v0;
    v8[1] = specialized DatabaseTable<>.set(key:value:);
    v9 = inited;
    v10 = v7;
  }

  else
  {
    v11 = v0[21];
    v13 = v0[14];
    v12 = v0[15];
    outlined init with take of AspirePirSymmetricPirClientConfig(v0[18], v11, type metadata accessor for AspireApiConfig);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v14 = swift_initStackObject();
    v0[24] = v14;
    *(v14 + 16) = xmmword_225022960;
    *(v14 + 32) = v13;
    *(v14 + 40) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_8CipherML15AspireApiConfigVtGMd, &_ss23_ContiguousArrayStorageCySS_8CipherML15AspireApiConfigVtGMR);
    v15 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_8CipherML15AspireApiConfigVtMd, &_sSS_8CipherML15AspireApiConfigVtMR) - 8);
    v16 = (*(*v15 + 80) + 32) & ~*(*v15 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_225022960;
    v18 = (v17 + v16);
    v19 = v15[14];
    *v18 = v13;
    v18[1] = v12;
    outlined init with copy of UserIdentifier(v11, v18 + v19, type metadata accessor for AspireApiConfig);
    swift_bridgeObjectRetain_n();
    v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8CipherML15AspireApiConfigVTt0g5Tf4g_n(v17);
    v0[25] = v20;
    swift_setDeallocating();
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v18, &_sSS_8CipherML15AspireApiConfigVtMd, &_sSS_8CipherML15AspireApiConfigVtMR);
    swift_deallocClassInstance();
    v21 = swift_task_alloc();
    v0[26] = v21;
    *v21 = v0;
    v21[1] = specialized DatabaseTable<>.set(key:value:);
    v9 = v14;
    v10 = v20;
  }

  return specialized DatabaseTable<>.update(keys:with:)(v9, v10);
}

{
  v2 = *v1;
  v3 = *(*v1 + 192);
  *(*v1 + 216) = v0;

  swift_setDeallocating();
  outlined destroy of String(v3 + 32);
  v4 = *(v2 + 184);
  v5 = *(v2 + 176);
  if (v0)
  {
    v6 = specialized DatabaseTable<>.set(key:value:);
  }

  else
  {
    v6 = specialized DatabaseTable<>.set(key:value:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  outlined destroy of AspirePirKeywordPirParameters(*(v0 + 168), type metadata accessor for AspireApiConfig);

  v1 = *(v0 + 8);

  return v1();
}

{
  outlined destroy of AspirePirKeywordPirParameters(*(v0 + 168), type metadata accessor for AspireApiConfig);

  v1 = *(v0 + 8);

  return v1();
}

{
  v2 = *v1;
  v2[31] = v0;

  if (v0)
  {
    v3 = v2[22];
    v4 = v2[23];

    return MEMORY[0x2822009F8](specialized DatabaseTable<>.set(key:value:), v3, v4);
  }

  else
  {
    v5 = v2[28];

    swift_setDeallocating();
    outlined destroy of String(v5 + 32);

    v6 = v2[1];

    return v6();
  }
}

{
  v1 = *(v0 + 224);

  swift_setDeallocating();
  outlined destroy of String(v1 + 32);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0[16], v3, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[14];
    v5 = v0[15];
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[18], &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
    inited = swift_initStackObject();
    v0[28] = inited;
    *(inited + 16) = xmmword_225022960;
    *(inited + 32) = v4;
    *(inited + 40) = v5;
    outlined copy of Data._Representation(v4, v5);
    v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DataV_8CipherML27AspireHeEvaluationKeyConfigVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v0[29] = v7;
    v8 = swift_task_alloc();
    v0[30] = v8;
    *v8 = v0;
    v8[1] = specialized DatabaseTable<>.set(key:value:);
    v9 = inited;
  }

  else
  {
    v10 = v0[21];
    v12 = v0[14];
    v11 = v0[15];
    outlined init with take of AspirePirSymmetricPirClientConfig(v0[18], v10, type metadata accessor for AspireHeEvaluationKeyConfig);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
    v13 = swift_initStackObject();
    v0[24] = v13;
    *(v13 + 16) = xmmword_225022960;
    *(v13 + 32) = v12;
    *(v13 + 40) = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataV_8CipherML27AspireHeEvaluationKeyConfigVtGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataV_8CipherML27AspireHeEvaluationKeyConfigVtGMR);
    v14 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_8CipherML27AspireHeEvaluationKeyConfigVtMd, &_s10Foundation4DataV_8CipherML27AspireHeEvaluationKeyConfigVtMR) - 8);
    v15 = (*(*v14 + 80) + 32) & ~*(*v14 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_225022960;
    v17 = (v16 + v15);
    v18 = v14[14];
    *v17 = v12;
    v17[1] = v11;
    outlined init with copy of UserIdentifier(v10, v17 + v18, type metadata accessor for AspireHeEvaluationKeyConfig);
    outlined copy of Data._Representation(v12, v11);
    outlined copy of Data._Representation(v12, v11);
    v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DataV_8CipherML27AspireHeEvaluationKeyConfigVTt0g5Tf4g_n(v16);
    v0[25] = v7;
    swift_setDeallocating();
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v17, &_s10Foundation4DataV_8CipherML27AspireHeEvaluationKeyConfigVtMd, &_s10Foundation4DataV_8CipherML27AspireHeEvaluationKeyConfigVtMR);
    swift_deallocClassInstance();
    v19 = swift_task_alloc();
    v0[26] = v19;
    *v19 = v0;
    v19[1] = specialized DatabaseTable<>.set(key:value:);
    v9 = v13;
  }

  return specialized DatabaseTable<>.update(keys:with:)(v9, v7);
}

{
  v2 = *v1;
  v3 = *(*v1 + 192);
  *(*v1 + 216) = v0;

  swift_setDeallocating();
  outlined destroy of Data(v3 + 32);
  v4 = *(v2 + 184);
  v5 = *(v2 + 176);
  if (v0)
  {
    v6 = specialized DatabaseTable<>.set(key:value:);
  }

  else
  {
    v6 = specialized DatabaseTable<>.set(key:value:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  outlined destroy of AspirePirKeywordPirParameters(*(v0 + 168), type metadata accessor for AspireHeEvaluationKeyConfig);

  v1 = *(v0 + 8);

  return v1();
}

{
  outlined destroy of AspirePirKeywordPirParameters(*(v0 + 168), type metadata accessor for AspireHeEvaluationKeyConfig);

  v1 = *(v0 + 8);

  return v1();
}

{
  v2 = *v1;
  v2[31] = v0;

  if (v0)
  {
    v3 = v2[22];
    v4 = v2[23];

    return MEMORY[0x2822009F8](specialized DatabaseTable<>.set(key:value:), v3, v4);
  }

  else
  {
    v5 = v2[28];

    swift_setDeallocating();
    outlined destroy of Data(v5 + 32);

    v6 = v2[1];

    return v6();
  }
}

{
  v1 = *(v0 + 224);

  swift_setDeallocating();
  outlined destroy of Data(v1 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t RequestsManager.generateEvaluationKey(config:pirContext:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v31 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v32 = &v29 - v5;
  v6 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = type metadata accessor for AspireApiKeyStatus(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 serializedKeyStatus];
  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v36 = v16;
  v37 = v18;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  BinaryDecodingOptions.init()();
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiKeyStatus and conformance AspireApiKeyStatus, type metadata accessor for AspireApiKeyStatus, &protocol conformance descriptor for AspireApiKeyStatus);
  v19 = v38;
  result = Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (!v19)
  {
    v21 = v30;
    v22 = v31;
    v38 = 0;
    v23 = &v9[*(v7 + 24)];
    v24 = v32;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v23, v32, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    v25 = *(v11 + 48);
    if (v25(v24, 1, v10) == 1)
    {
      *v14 = MEMORY[0x277D84F90];
      v14[8] = 0;
      UnknownStorage.init()();
      outlined destroy of AspirePirKeywordPirParameters(v9, type metadata accessor for AspireApiKeyStatus);
      v26 = *(v10 + 28);
      v27 = type metadata accessor for AspireHeEncryptionParameters(0);
      (*(*(v27 - 8) + 56))(&v14[v26], 1, 1, v27);
      if (v25(v24, 1, v10) != 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v24, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
      }
    }

    else
    {
      outlined destroy of AspirePirKeywordPirParameters(v9, type metadata accessor for AspireApiKeyStatus);
      outlined init with take of AspirePirSymmetricPirClientConfig(v24, v14, type metadata accessor for AspireHeEvaluationKeyConfig);
    }

    v28 = type metadata accessor for RequestsManager.PIRContext(0);
    generateEvaluationKey(secretKey:config:)(v22 + *(v28 + 32), v14, v21);
    return outlined destroy of AspirePirKeywordPirParameters(v14, type metadata accessor for AspireHeEvaluationKeyConfig);
  }

  return result;
}

uint64_t RequestsManager.generateEvaluationKey(config:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = v3;
  v4[2] = a1;
  type metadata accessor for RequestsManager.PIRContext(0);
  v6 = swift_task_alloc();
  v4[5] = v6;
  v7 = swift_task_alloc();
  v4[6] = v7;
  *v7 = v4;
  v7[1] = RequestsManager.generateEvaluationKey(config:context:);

  return RequestsManager.loadContext(requestContext:allowingKeyRotation:)(v6, a3, 1);
}

uint64_t RequestsManager.generateEvaluationKey(config:context:)()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = RequestsManager.generateEvaluationKey(config:context:);
  }

  else
  {
    v2 = RequestsManager.generateEvaluationKey(config:context:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 40);
  RequestsManager.generateEvaluationKey(config:pirContext:)(*(v0 + 24), v1, *(v0 + 16));
  outlined destroy of AspirePirKeywordPirParameters(v1, type metadata accessor for RequestsManager.PIRContext);

  v2 = *(v0 + 8);

  return v2();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t RequestsManager.loadContext(requestContext:allowingKeyRotation:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 352) = a2;
  *(v4 + 360) = v3;
  *(v4 + 896) = a3;
  *(v4 + 344) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  *(v4 + 368) = swift_task_alloc();
  *(v4 + 376) = swift_task_alloc();
  *(v4 + 384) = type metadata accessor for NetworkManagerType(0);
  *(v4 + 392) = swift_task_alloc();
  v5 = type metadata accessor for SecretKey(0);
  *(v4 + 400) = v5;
  *(v4 + 408) = *(v5 - 8);
  *(v4 + 416) = swift_task_alloc();
  v6 = type metadata accessor for UserIdentifier(0);
  *(v4 + 424) = v6;
  *(v4 + 432) = *(v6 - 8);
  *(v4 + 440) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR);
  *(v4 + 448) = swift_task_alloc();
  *(v4 + 456) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  *(v4 + 464) = swift_task_alloc();
  *(v4 + 472) = swift_task_alloc();
  *(v4 + 480) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  *(v4 + 488) = swift_task_alloc();
  *(v4 + 496) = type metadata accessor for AspireApiPIRConfig(0);
  *(v4 + 504) = swift_task_alloc();
  v7 = type metadata accessor for AspireApiConfig(0);
  *(v4 + 512) = v7;
  *(v4 + 520) = *(v7 - 8);
  *(v4 + 528) = swift_task_alloc();
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR) - 8);
  *(v4 + 536) = v8;
  *(v4 + 544) = *(v8 + 64);
  *(v4 + 552) = swift_task_alloc();
  *(v4 + 560) = swift_task_alloc();
  *(v4 + 568) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  *(v4 + 576) = swift_task_alloc();
  *(v4 + 584) = swift_task_alloc();

  return MEMORY[0x2822009F8](RequestsManager.loadContext(requestContext:allowingKeyRotation:), 0, 0);
}

{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 552) = a3;
  *(v4 + 16) = a1;
  v5 = type metadata accessor for HE.SerializedSecretKey();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();
  v6 = type metadata accessor for PEC.SimilarityClient();
  *(v4 + 64) = v6;
  *(v4 + 72) = *(v6 - 8);
  *(v4 + 80) = swift_task_alloc();
  v7 = type metadata accessor for PEC.SimilarityClientConfig();
  *(v4 + 88) = v7;
  *(v4 + 96) = *(v7 - 8);
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = type metadata accessor for SimilarityClient(0);
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  v8 = type metadata accessor for SecretKey(0);
  *(v4 + 144) = v8;
  *(v4 + 152) = *(v8 - 8);
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  v9 = type metadata accessor for UserIdentifier(0);
  *(v4 + 176) = v9;
  *(v4 + 184) = *(v9 - 8);
  *(v4 + 192) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR);
  *(v4 + 200) = swift_task_alloc();
  *(v4 + 208) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  *(v4 + 240) = swift_task_alloc();
  type metadata accessor for AspireApiPECConfig(0);
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = swift_task_alloc();
  v10 = type metadata accessor for AspireApiConfig(0);
  *(v4 + 264) = v10;
  *(v4 + 272) = *(v10 - 8);
  *(v4 + 280) = swift_task_alloc();
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR) - 8);
  *(v4 + 288) = v11;
  *(v4 + 296) = *(v11 + 64);
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  *(v4 + 328) = swift_task_alloc();
  *(v4 + 336) = swift_task_alloc();

  return MEMORY[0x2822009F8](RequestsManager.loadContext(requestContext:allowingKeyRotation:), 0, 0);
}

uint64_t RequestsManager.loadContext(requestContext:allowingKeyRotation:)()
{
  v1 = **(v0 + 352);
  v2 = [v1 useCase];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  *(v0 + 592) = v3;
  *(v0 + 600) = v5;
  v6 = [v1 sourceApplicationBundleIdentifier];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = *(v0 + 360);
  *(v0 + 608) = RequestsManager.keyRotation(for:)(v8, v10);

  v12 = *(v11 + 40);
  *(v0 + 616) = v12;

  return MEMORY[0x2822009F8](RequestsManager.loadContext(requestContext:allowingKeyRotation:), v12, 0);
}

{
  ActiveUseCaseTracker.markActive(useCase:active:)(*(v0 + 592), *(v0 + 600), 1);

  return MEMORY[0x2822009F8](RequestsManager.loadContext(requestContext:allowingKeyRotation:), 0, 0);
}

{
  v1 = *(v0[45] + 16);
  v0[78] = v1;
  v0[79] = *(v1 + 16);

  v2 = swift_task_alloc();
  v0[80] = v2;
  *v2 = v0;
  v2[1] = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  v3 = v0[75];
  v4 = v0[74];
  v5 = v0[73];

  return specialized DatabaseTable<>.get(_:)(v5, v4, v3);
}

{
  *(*v1 + 648) = v0;

  if (v0)
  {

    v2 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  else
  {

    v2 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v62 = v0;
  v1 = *(v0 + 584);
  v2 = *(v0 + 512);
  v3 = *(v0 + 896);
  v4 = *(*(v0 + 520) + 48);
  if (v4(v1, 1, v2) == 1 && v3 != 0)
  {
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.framework);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 600);
      v22 = *(v0 + 592);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v61[0] = v24;
      *v23 = 136446210;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, v61);
      _os_log_impl(&dword_224E26000, v19, v20, "No dynamic configuration for use-case '%{public}s'. Running rotation task", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x22AA61F40](v24, -1, -1);
      MEMORY[0x22AA61F40](v23, -1, -1);
    }

    v25 = *(v0 + 608);
    v26 = *(v0 + 568);
    v27 = type metadata accessor for AspireApiConfigResponse(0);
    (*(*(v27 - 8) + 56))(v26, 1, 1, v27);

    return MEMORY[0x2822009F8](RequestsManager.loadContext(requestContext:allowingKeyRotation:), v25, 0);
  }

  v6 = *(v0 + 576);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1, v6, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  v7 = v4(v6, 1, v2);
  v8 = *(v0 + 576);
  if (v7 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.framework);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 600);
    if (v12)
    {
      v14 = *(v0 + 592);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v61[0] = v16;
      *v15 = 136446210;
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, v61);

      *(v15 + 4) = v17;
      _os_log_impl(&dword_224E26000, v10, v11, "No dynamic configuration for use-case '%{public}s'", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x22AA61F40](v16, -1, -1);
      MEMORY[0x22AA61F40](v15, -1, -1);
    }

    else
    {
    }

    v37 = *(v0 + 584);
    type metadata accessor for CipherMLError(0);
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

LABEL_30:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v37, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);

    v48 = *(v0 + 8);

    return v48();
  }

  v28 = *(v0 + 528);
  v29 = *(v0 + 512);
  v30 = *(v0 + 488);
  outlined init with take of AspirePirSymmetricPirClientConfig(v8, v28, type metadata accessor for AspireApiConfig);
  v31 = (v28 + *(v29 + 20));
  v32 = *v31;
  *(v0 + 696) = *v31;
  v33 = v31[1];
  *(v0 + 704) = v33;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v28, v30, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v34 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  v35 = (*(*(v34 - 8) + 48))(v30, 1, v34);
  v36 = *(v0 + 488);
  if (v35 == 1)
  {
    outlined copy of Data._Representation(v32, v33);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v36, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
LABEL_24:
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.framework);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 600);
    if (v41)
    {
      v43 = *(v0 + 592);
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v61[0] = v45;
      *v44 = 136446210;
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v42, v61);

      *(v44 + 4) = v46;
      _os_log_impl(&dword_224E26000, v39, v40, "Did not find PIR config for PIR use-case '%{public}s.'", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x22AA61F40](v45, -1, -1);
      MEMORY[0x22AA61F40](v44, -1, -1);
    }

    else
    {
    }

    v37 = *(v0 + 584);
    v47 = *(v0 + 528);
    type metadata accessor for CipherMLError(0);
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined consume of Data._Representation(v32, v33);

    outlined destroy of AspirePirKeywordPirParameters(v47, type metadata accessor for AspireApiConfig);
    goto LABEL_30;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined copy of Data._Representation(v32, v33);
    outlined destroy of AspirePirKeywordPirParameters(v36, type metadata accessor for AspireApiConfig.OneOf_Config);
    goto LABEL_24;
  }

  v49 = *(v0 + 352);
  outlined init with take of AspirePirSymmetricPirClientConfig(v36, *(v0 + 504), type metadata accessor for AspireApiPIRConfig);
  v50 = *(v49 + 24);
  v51 = *(v49 + 40);
  v52 = *(v49 + 8);
  *(v0 + 64) = *(v49 + 56);
  *(v0 + 32) = v50;
  *(v0 + 48) = v51;
  *(v0 + 16) = v52;
  v53 = *(v49 + 8);
  v54 = *(v49 + 24);
  v55 = *(v49 + 40);
  *(v0 + 120) = *(v49 + 56);
  *(v0 + 104) = v55;
  *(v0 + 88) = v54;
  *(v0 + 72) = v53;
  outlined copy of Data._Representation(v32, v33);
  outlined init with copy of StaticPIRParameters(v0 + 16, v0 + 128);
  v56 = swift_task_alloc();
  *(v0 + 712) = v56;
  *v56 = v0;
  v56[1] = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  v57 = *(v0 + 600);
  v58 = *(v0 + 592);
  v59 = *(v0 + 504);

  return RequestsManager.validate(config:static:useCase:)(v59, (v0 + 72), v58, v57);
}

{
  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[70];
  v5 = v0[67];
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0[71], v4, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = swift_allocObject();
  v0[82] = v7;
  v7[2] = v1;
  v7[3] = v3;
  v7[4] = v2;
  outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v4, v7 + v6, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);

  v8 = swift_task_alloc();
  v0[83] = v8;
  *v8 = v0;
  v8[1] = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  v9 = v0[75];
  v10 = v0[74];

  return specialized Coordinator.run(key:_:)(specialized Coordinator.run(key:_:), v10, v9, &closure #1 in KeyRotation.runWithCoordinator(useCase:configResponse:)partial apply, v7);
}

{
  v2 = *v1;
  *(*v1 + 672) = v0;

  v3 = *(v2 + 608);

  if (v0)
  {
    v4 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  else
  {
    v4 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[71], &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  v1 = swift_task_alloc();
  v0[85] = v1;
  *v1 = v0;
  v1[1] = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  v2 = v0[44];
  v3 = v0[43];

  return RequestsManager.loadContext(requestContext:allowingKeyRotation:)(v3, v2, 0);
}

{
  *(*v1 + 688) = v0;

  if (v0)
  {
    v2 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  else
  {
    v2 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 568), &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);

  return MEMORY[0x2822009F8](RequestsManager.loadContext(requestContext:allowingKeyRotation:), 0, 0);
}

{
  v1 = *(v0 + 584);

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 584);

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);

  v2 = *(v0 + 8);

  return v2();
}

{
  v40 = v0;
  if (*(v0 + 897) == 1)
  {
    v1 = *(*(v0 + 360) + 48);
    os_unfair_lock_lock((v1 + 24));
    v2 = *(v1 + 16);

    os_unfair_lock_unlock((v1 + 24));
    v3 = *(v2 + 48);

    if (*(v3 + 16))
    {
      v4 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 592), *(v0 + 600));
      if (v5)
      {
        v6 = *(v0 + 360);
        v7 = (*(v3 + 56) + 16 * v4);
        v8 = *v7;
        *(v0 + 728) = *v7;
        v9 = v7[1];
        *(v0 + 736) = v9;

        v10 = *(v6 + 32);
        ObjectType = swift_getObjectType();
        v38 = (*(v10 + 8) + **(v10 + 8));
        v12 = swift_task_alloc();
        *(v0 + 744) = v12;
        *v12 = v0;
        v12[1] = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
        v13 = *(v0 + 480);

        return v38(v13, v8, v9, ObjectType, v10);
      }
    }

    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.framework);

    v16 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    v26 = os_log_type_enabled(v16, v25);
    v27 = *(v0 + 600);
    if (v26)
    {
      v28 = *(v0 + 592);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v39[0] = v30;
      *v29 = 136446210;
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v27, v39);

      *(v29 + 4) = v31;
      _os_log_impl(&dword_224E26000, v16, v25, "No group associated with use-case '%{public}s'", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x22AA61F40](v30, -1, -1);
      MEMORY[0x22AA61F40](v29, -1, -1);

      goto LABEL_16;
    }

LABEL_15:

    goto LABEL_16;
  }

  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.framework);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  v18 = os_log_type_enabled(v16, v17);
  v19 = *(v0 + 600);
  if (!v18)
  {
    goto LABEL_15;
  }

  v20 = *(v0 + 592);
  v21 = swift_slowAlloc();
  v22 = swift_slowAlloc();
  v39[0] = v22;
  *v21 = 136446210;
  v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, v39);

  *(v21 + 4) = v23;
  _os_log_impl(&dword_224E26000, v16, v17, "Dynamic configuration is invalid for use-case '%{public}s'", v21, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v22);
  MEMORY[0x22AA61F40](v22, -1, -1);
  MEMORY[0x22AA61F40](v21, -1, -1);

LABEL_16:
  v32 = *(v0 + 704);
  v33 = *(v0 + 696);
  v34 = *(v0 + 584);
  v35 = *(v0 + 528);
  v36 = *(v0 + 504);
  type metadata accessor for CipherMLError(0);
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  outlined consume of Data._Representation(v33, v32);

  outlined destroy of AspirePirKeywordPirParameters(v35, type metadata accessor for AspireApiConfig);
  outlined destroy of AspirePirKeywordPirParameters(v36, type metadata accessor for AspireApiPIRConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v34, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);

  v37 = *(v0 + 8);

  return v37();
}

{

  return MEMORY[0x2822009F8](RequestsManager.loadContext(requestContext:allowingKeyRotation:), 0, 0);
}

{
  v1 = v0[59];
  v2 = v0[53];
  v3 = v0[54];
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0[60], v1, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  v4 = *(v3 + 48);
  v0[94] = v4;
  v0[95] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[59], &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  }

  else
  {
    v6 = v0[62];
    v5 = v0[63];
    v7 = v0[59];
    v8 = *(v7 + *(v0[53] + 24));

    outlined destroy of AspirePirKeywordPirParameters(v7, type metadata accessor for UserIdentifier);
    v9 = (*(v5 + *(v6 + 20)) + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash);
    swift_beginAccess();
    if (*(v8 + 16))
    {
      v10 = *v9;
      v11 = v9[1];
      outlined copy of Data._Representation(v10, v11);
      v12 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v11);
      if (v13)
      {
        outlined init with copy of UserIdentifier(*(v8 + 56) + *(v0[51] + 72) * v12, v0[57], type metadata accessor for SecretKey);
        outlined consume of Data._Representation(v10, v11);

        v14 = 0;
        goto LABEL_9;
      }

      outlined consume of Data._Representation(v10, v11);
    }

    else
    {
    }
  }

  v14 = 1;
LABEL_9:
  (*(v0[51] + 56))(v0[57], v14, 1, v0[50]);
  v15 = swift_task_alloc();
  v0[96] = v15;
  *v15 = v0;
  v15[1] = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  v16 = v0[92];
  v17 = v0[91];

  return KeyRotation.areKeysExpired(groupName:)(v17, v16);
}

{
  v99 = v0;
  v1 = *(v0 + 752);
  v2 = *(v0 + 480);
  v3 = *(v0 + 424);
  if (v1(v2, 1, v3) == 1 || ((v4 = *(v0 + 898), (*(*(v0 + 408) + 48))(*(v0 + 456), 1, *(v0 + 400)) != 1) ? (v5 = v4 == 0) : (v5 = 0), !v5))
  {
    if (*(v0 + 896) == 1)
    {
      if (one-time initialization token for framework != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Logger.framework);

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = *(v0 + 600);
        v10 = *(v0 + 592);
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v98[0] = v12;
        *v11 = 136446210;
        *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, v98);
        _os_log_impl(&dword_224E26000, v7, v8, "No userId or secretKey for use-case '%{public}s'. Running rotation task'", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v12);
        MEMORY[0x22AA61F40](v12, -1, -1);
        MEMORY[0x22AA61F40](v11, -1, -1);
      }

      v13 = *(v0 + 608);
      v14 = *(v0 + 552);
      v15 = type metadata accessor for AspireApiConfigResponse(0);
      (*(*(v15 - 8) + 56))(v14, 1, 1, v15);

      return MEMORY[0x2822009F8](RequestsManager.loadContext(requestContext:allowingKeyRotation:), v13, 0);
    }

    if (*(v0 + 898))
    {
      if (one-time initialization token for framework != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static Logger.framework);

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      v19 = os_log_type_enabled(v17, v18);
      v20 = *(v0 + 600);
      if (v19)
      {
        v21 = *(v0 + 592);
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v98[0] = v23;
        *v22 = 136446210;
        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v20, v98);

        *(v22 + 4) = v24;
        _os_log_impl(&dword_224E26000, v17, v18, "Key expired for use-case '%{public}s'", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v23);
        MEMORY[0x22AA61F40](v23, -1, -1);
        MEMORY[0x22AA61F40](v22, -1, -1);
      }

      else
      {
      }

      v58 = *(v0 + 704);
      v59 = *(v0 + 696);
      v95 = *(v0 + 584);
      v47 = *(v0 + 528);
      v48 = *(v0 + 504);
      v49 = *(v0 + 480);
      v50 = *(v0 + 456);
      type metadata accessor for CipherMLError(0);
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v51 = v59;
      v52 = v58;
LABEL_34:
      outlined consume of Data._Representation(v51, v52);

      outlined destroy of AspirePirKeywordPirParameters(v47, type metadata accessor for AspireApiConfig);
      outlined destroy of AspirePirKeywordPirParameters(v48, type metadata accessor for AspireApiPIRConfig);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v49, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v95, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v50, &_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR);

      v60 = *(v0 + 8);
LABEL_35:

      return v60();
    }
  }

  v25 = *(v0 + 464);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, v25, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  v26 = v1(v25, 1, v3);
  v27 = *(v0 + 464);
  if (v26 == 1)
  {
    v28 = &_s8CipherML14UserIdentifierVSgMd;
    v29 = &_s8CipherML14UserIdentifierVSgMR;
LABEL_23:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v27, v28, v29);
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.framework);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v0 + 600);
    if (v39)
    {
      v41 = *(v0 + 592);
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v98[0] = v43;
      *v42 = 136446210;
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v40, v98);

      *(v42 + 4) = v44;
      _os_log_impl(&dword_224E26000, v37, v38, "No key for use-case '%{public}s'", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x22AA61F40](v43, -1, -1);
      MEMORY[0x22AA61F40](v42, -1, -1);
    }

    else
    {
    }

    v45 = *(v0 + 704);
    v46 = *(v0 + 696);
    v95 = *(v0 + 584);
    v47 = *(v0 + 528);
    v48 = *(v0 + 504);
    v49 = *(v0 + 480);
    v50 = *(v0 + 456);
    type metadata accessor for CipherMLError(0);
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v51 = v46;
    v52 = v45;
    goto LABEL_34;
  }

  v30 = *(v0 + 448);
  v31 = *(v0 + 456);
  v32 = *(v0 + 400);
  v33 = *(v0 + 408);
  outlined init with take of AspirePirSymmetricPirClientConfig(v27, *(v0 + 440), type metadata accessor for UserIdentifier);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v31, v30, &_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR);
  v34 = (*(v33 + 48))(v30, 1, v32);
  v35 = *(v0 + 448);
  if (v34 == 1)
  {
    outlined destroy of AspirePirKeywordPirParameters(*(v0 + 440), type metadata accessor for UserIdentifier);
    v28 = &_s8CipherML9SecretKeyVSgMd;
    v29 = &_s8CipherML9SecretKeyVSgMR;
    v27 = v35;
    goto LABEL_23;
  }

  v53 = *(v0 + 392);
  v54 = *(v0 + 352);
  outlined init with take of AspirePirSymmetricPirClientConfig(*(v0 + 448), *(v0 + 416), type metadata accessor for SecretKey);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMR);
  outlined init with copy of UserIdentifier(v54 + *(v55 + 32), v53, type metadata accessor for NetworkManagerType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v61 = *(v0 + 392);
    if (EnumCaseMultiPayload)
    {
      v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMR) + 48);

      outlined destroy of AMDPbHEConfig.OneOf_Config?(v61 + v63, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v64 = type metadata accessor for URL();
      (*(*(v64 - 8) + 8))(v61, v64);
    }

    else
    {

      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS9featureId_10Foundation3URLVSg8endpointSbSg22privacyProxyFailClosedtMd, &_sSS9featureId_10Foundation3URLVSg8endpointSbSg22privacyProxyFailClosedtMR);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v61 + *(v62 + 48), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }
  }

  else if ((EnumCaseMultiPayload - 2) >= 2)
  {
    v57 = 1;
    goto LABEL_42;
  }

  v57 = 0;
LABEL_42:
  v65 = *(v0 + 376);
  v66 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  *(v0 + 824) = v66;
  v67 = *(v66 - 8);
  *(v0 + 832) = v67;
  v69 = v67 + 56;
  v68 = *(v67 + 56);
  *(v0 + 840) = v68;
  *(v0 + 848) = v69 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v68(v65, 1, 1, v66);
  if (!v57)
  {
    v91 = *(v0 + 600);
    v92 = *(v0 + 696);
    v90 = *(v0 + 592);
    v94 = *(v0 + 704);
    v96 = *(v0 + 584);
    v77 = *(v0 + 528);
    v78 = *(v0 + 504);
    v93 = *(v0 + 480);
    v97 = *(v0 + 456);
    v79 = *(v0 + 440);
    v80 = *(v0 + 416);
    v81 = *(v0 + 376);
    v82 = *(v0 + 344);
    v83 = specialized RequestsManager.loadCache(requestContext:)(*(v0 + 352));
    v85 = v84;

    outlined destroy of AspirePirKeywordPirParameters(v77, type metadata accessor for AspireApiConfig);
    v86 = type metadata accessor for RequestsManager.PIRContext(0);
    outlined init with take of AspirePirSymmetricPirClientConfig(v79, v82 + v86[5], type metadata accessor for UserIdentifier);
    outlined init with take of AspirePirSymmetricPirClientConfig(v78, v82 + v86[6], type metadata accessor for AspireApiPIRConfig);
    outlined init with take of AspirePirSymmetricPirClientConfig(v80, v82 + v86[8], type metadata accessor for SecretKey);
    outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v81, v82 + v86[10], &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    *v82 = v90;
    v82[1] = v91;
    v87 = (v82 + v86[7]);
    *v87 = v92;
    v87[1] = v94;
    v88 = (v82 + v86[9]);
    *v88 = v83;
    v88[1] = v85;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v93, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v96, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v97, &_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR);

    v60 = *(v0 + 8);
    goto LABEL_35;
  }

  v71 = *(v0 + 496);
  v70 = *(v0 + 504);
  *(v0 + 856) = *(*(v0 + 624) + 24);
  v72 = (*(v70 + *(v71 + 20)) + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash);
  swift_beginAccess();
  v73 = *v72;
  *(v0 + 864) = *v72;
  v74 = v72[1];
  *(v0 + 872) = v74;

  outlined copy of Data._Representation(v73, v74);
  v75 = swift_task_alloc();
  *(v0 + 880) = v75;
  *v75 = v0;
  v75[1] = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  v76 = *(v0 + 368);

  return specialized DatabaseTable<>.get(_:)(v76, v73, v74);
}

{
  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[70];
  v5 = v0[67];
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0[69], v4, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = swift_allocObject();
  v0[98] = v7;
  v7[2] = v1;
  v7[3] = v3;
  v7[4] = v2;
  outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v4, v7 + v6, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);

  v8 = swift_task_alloc();
  v0[99] = v8;
  *v8 = v0;
  v8[1] = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  v9 = v0[75];
  v10 = v0[74];

  return specialized Coordinator.run(key:_:)(specialized Coordinator.run(key:_:), v10, v9, &closure #1 in KeyRotation.runWithCoordinator(useCase:configResponse:)partial apply, v7);
}

{
  v2 = *v1;
  *(*v1 + 800) = v0;

  v3 = *(v2 + 608);

  if (v0)
  {
    v4 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  else
  {
    v4 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[69], &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  v1 = swift_task_alloc();
  v0[101] = v1;
  *v1 = v0;
  v1[1] = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  v2 = v0[44];
  v3 = v0[43];

  return RequestsManager.loadContext(requestContext:allowingKeyRotation:)(v3, v2, 0);
}

{
  *(*v1 + 816) = v0;

  if (v0)
  {
    v2 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  else
  {
    v2 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 552), &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);

  return MEMORY[0x2822009F8](RequestsManager.loadContext(requestContext:allowingKeyRotation:), 0, 0);
}

{
  v1 = v0[73];
  v2 = v0[66];
  v3 = v0[63];
  v4 = v0[60];
  v5 = v0[57];
  outlined consume of Data._Representation(v0[87], v0[88]);

  outlined destroy of AspirePirKeywordPirParameters(v2, type metadata accessor for AspireApiConfig);
  outlined destroy of AspirePirKeywordPirParameters(v3, type metadata accessor for AspireApiPIRConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR);

  v6 = v0[1];

  return v6();
}

{
  v1 = v0[73];
  v2 = v0[66];
  v3 = v0[63];
  v4 = v0[60];
  v5 = v0[57];
  outlined consume of Data._Representation(v0[87], v0[88]);

  outlined destroy of AspirePirKeywordPirParameters(v2, type metadata accessor for AspireApiConfig);
  outlined destroy of AspirePirKeywordPirParameters(v3, type metadata accessor for AspireApiPIRConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR);

  v6 = v0[1];

  return v6();
}

{
  v2 = *v1;
  v2[111] = v0;

  v3 = v2[109];
  v4 = v2[108];
  if (v0)
  {

    outlined consume of Data._Representation(v4, v3);
    v5 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  else
  {

    outlined consume of Data._Representation(v4, v3);
    v5 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v1 = v0[103];
  v2 = v0[46];
  if ((*(v0[104] + 48))(v2, 1, v1) == 1)
  {
    v3 = v0[88];
    v4 = v0[87];
    v25 = v0[66];
    v27 = v0[63];
    v29 = v0[60];
    v31 = v0[73];
    v33 = v0[57];
    v5 = v0[55];
    v6 = v0[52];
    v7 = v0[47];

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v2, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    type metadata accessor for CipherMLError(0);
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined consume of Data._Representation(v4, v3);

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    outlined destroy of AspirePirKeywordPirParameters(v6, type metadata accessor for SecretKey);
    outlined destroy of AspirePirKeywordPirParameters(v5, type metadata accessor for UserIdentifier);
    outlined destroy of AspirePirKeywordPirParameters(v25, type metadata accessor for AspireApiConfig);
    outlined destroy of AspirePirKeywordPirParameters(v27, type metadata accessor for AspireApiPIRConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v31, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v33, &_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR);
  }

  else
  {
    v9 = v0[105];
    v10 = v0[47];
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    outlined init with take of AspirePirSymmetricPirClientConfig(v2, v10, type metadata accessor for AspireHeEvaluationKeyConfig);
    v9(v10, 0, 1, v1);
    v26 = v0[75];
    v28 = v0[87];
    v24 = v0[74];
    v32 = v0[88];
    v34 = v0[73];
    v11 = v0[66];
    v12 = v0[63];
    v30 = v0[60];
    v35 = v0[57];
    v13 = v0[55];
    v14 = v0[52];
    v15 = v0[47];
    v16 = v0[43];
    v17 = specialized RequestsManager.loadCache(requestContext:)(v0[44]);
    v19 = v18;

    outlined destroy of AspirePirKeywordPirParameters(v11, type metadata accessor for AspireApiConfig);
    v20 = type metadata accessor for RequestsManager.PIRContext(0);
    outlined init with take of AspirePirSymmetricPirClientConfig(v13, v16 + v20[5], type metadata accessor for UserIdentifier);
    outlined init with take of AspirePirSymmetricPirClientConfig(v12, v16 + v20[6], type metadata accessor for AspireApiPIRConfig);
    outlined init with take of AspirePirSymmetricPirClientConfig(v14, v16 + v20[8], type metadata accessor for SecretKey);
    outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v15, v16 + v20[10], &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    *v16 = v24;
    v16[1] = v26;
    v21 = (v16 + v20[7]);
    *v21 = v28;
    v21[1] = v32;
    v22 = (v16 + v20[9]);
    *v22 = v17;
    v22[1] = v19;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v30, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v34, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v35, &_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR);
  }

  v8 = v0[1];

  return v8();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 584);

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[73];
  v2 = v0[66];
  v3 = v0[63];
  outlined consume of Data._Representation(v0[87], v0[88]);

  outlined destroy of AspirePirKeywordPirParameters(v2, type metadata accessor for AspireApiConfig);
  outlined destroy of AspirePirKeywordPirParameters(v3, type metadata accessor for AspireApiPIRConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[73];
  v2 = v0[66];
  v3 = v0[63];
  v4 = v0[60];
  v5 = v0[57];
  outlined consume of Data._Representation(v0[87], v0[88]);

  outlined destroy of AspirePirKeywordPirParameters(v2, type metadata accessor for AspireApiConfig);
  outlined destroy of AspirePirKeywordPirParameters(v3, type metadata accessor for AspireApiPIRConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR);

  v6 = v0[1];

  return v6();
}

{
  v1 = v0[73];
  v2 = v0[66];
  v3 = v0[63];
  v4 = v0[60];
  v5 = v0[57];
  outlined consume of Data._Representation(v0[87], v0[88]);

  outlined destroy of AspirePirKeywordPirParameters(v2, type metadata accessor for AspireApiConfig);
  outlined destroy of AspirePirKeywordPirParameters(v3, type metadata accessor for AspireApiPIRConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR);

  v6 = v0[1];

  return v6();
}

{
  v1 = v0[73];
  v2 = v0[66];
  v3 = v0[63];
  v4 = v0[60];
  v5 = v0[57];
  v6 = v0[55];
  v7 = v0[52];
  v8 = v0[47];
  outlined consume of Data._Representation(v0[87], v0[88]);

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  outlined destroy of AspirePirKeywordPirParameters(v7, type metadata accessor for SecretKey);
  outlined destroy of AspirePirKeywordPirParameters(v6, type metadata accessor for UserIdentifier);
  outlined destroy of AspirePirKeywordPirParameters(v2, type metadata accessor for AspireApiConfig);
  outlined destroy of AspirePirKeywordPirParameters(v3, type metadata accessor for AspireApiPIRConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR);

  v9 = v0[1];

  return v9();
}

{
  v1 = **(v0 + 24);
  v2 = [v1 useCase];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  *(v0 + 344) = v3;
  *(v0 + 352) = v5;
  v6 = [v1 sourceApplicationBundleIdentifier];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = *(v0 + 32);
  *(v0 + 360) = RequestsManager.keyRotation(for:)(v8, v10);

  v12 = *(v11 + 40);
  *(v0 + 368) = v12;

  return MEMORY[0x2822009F8](RequestsManager.loadContext(requestContext:allowingKeyRotation:), v12, 0);
}

{
  ActiveUseCaseTracker.markActive(useCase:active:)(*(v0 + 344), *(v0 + 352), 1);

  return MEMORY[0x2822009F8](RequestsManager.loadContext(requestContext:allowingKeyRotation:), 0, 0);
}

{
  v0[47] = *(*(v0[4] + 16) + 16);

  v1 = swift_task_alloc();
  v0[48] = v1;
  *v1 = v0;
  v1[1] = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  v2 = v0[43];
  v3 = v0[44];
  v4 = v0[42];

  return specialized DatabaseTable<>.get(_:)(v4, v2, v3);
}

{
  *(*v1 + 392) = v0;

  if (v0)
  {

    v2 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  else
  {
    v2 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v92 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 264);
  v3 = *(v0 + 552);
  v4 = *(*(v0 + 272) + 48);
  if (v4(v1, 1, v2) == 1 && v3 != 0)
  {
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.framework);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v22 = *(v0 + 344);
      v21 = *(v0 + 352);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v91[0] = v24;
      *v23 = 136446210;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, v91);
      _os_log_impl(&dword_224E26000, v19, v20, "No dynamic configuration for use-case '%{public}s'. Running rotation task", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x22AA61F40](v24, -1, -1);
      MEMORY[0x22AA61F40](v23, -1, -1);
    }

    v25 = *(v0 + 360);
    v26 = *(v0 + 320);
    v27 = type metadata accessor for AspireApiConfigResponse(0);
    (*(*(v27 - 8) + 56))(v26, 1, 1, v27);

    return MEMORY[0x2822009F8](RequestsManager.loadContext(requestContext:allowingKeyRotation:), v25, 0);
  }

  v6 = *(v0 + 328);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1, v6, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  v7 = v4(v6, 1, v2);
  v8 = *(v0 + 328);
  if (v7 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.framework);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 352);
    if (v12)
    {
      v14 = *(v0 + 344);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v91[0] = v16;
      *v15 = 136446210;
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, v91);

      *(v15 + 4) = v17;
      _os_log_impl(&dword_224E26000, v10, v11, "No dynamic configuration for use-case '%{public}s'", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x22AA61F40](v16, -1, -1);
      MEMORY[0x22AA61F40](v15, -1, -1);
    }

    else
    {
    }

    v37 = *(v0 + 336);
    type metadata accessor for CipherMLError(0);
    lazy protocol witness table accessor for type AspireApiConfig and conformance AspireApiConfig(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_34;
  }

  v28 = *(v0 + 280);
  v29 = *(v0 + 264);
  v30 = *(v0 + 240);
  _s8CipherML18AspireApiPECConfigVWObTm_0(v8, v28, type metadata accessor for AspireApiConfig);
  v31 = (v28 + *(v29 + 20));
  v32 = *v31;
  *(v0 + 440) = *v31;
  v33 = v31[1];
  *(v0 + 448) = v33;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v28, v30, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v34 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  v35 = (*(*(v34 - 8) + 48))(v30, 1, v34);
  v36 = *(v0 + 240);
  if (v35 == 1)
  {
    outlined copy of Data._Representation(v32, v33);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v36, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
LABEL_26:
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.framework);

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    v48 = os_log_type_enabled(v46, v47);
    v49 = *(v0 + 352);
    if (v48)
    {
      v50 = *(v0 + 344);
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v91[0] = v52;
      *v51 = 136446210;
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v49, v91);

      *(v51 + 4) = v53;
      _os_log_impl(&dword_224E26000, v46, v47, "Did not find PEC config for PEC use-case '%{public}s.'", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x22AA61F40](v52, -1, -1);
      MEMORY[0x22AA61F40](v51, -1, -1);
    }

    else
    {
    }

    v37 = *(v0 + 336);
    v43 = *(v0 + 280);
    type metadata accessor for CipherMLError(0);
    lazy protocol witness table accessor for type AspireApiConfig and conformance AspireApiConfig(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined consume of Data._Representation(v32, v33);

    v44 = type metadata accessor for AspireApiConfig;
    goto LABEL_32;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined copy of Data._Representation(v32, v33);
    outlined destroy of RequestsManager.PECContext(v36, type metadata accessor for AspireApiConfig.OneOf_Config);
    goto LABEL_26;
  }

  v38 = *(v0 + 392);
  v40 = *(v0 + 344);
  v39 = *(v0 + 352);
  v41 = *(v0 + 256);
  _s8CipherML18AspireApiPECConfigVWObTm_0(v36, v41, type metadata accessor for AspireApiPECConfig);
  outlined copy of Data._Representation(v32, v33);
  v42 = specialized RequestsManager.validate(config:static:useCase:)(v41, v40, v39);
  if (v38)
  {
    v37 = *(v0 + 336);
    v43 = *(v0 + 256);
    outlined destroy of RequestsManager.PECContext(*(v0 + 280), type metadata accessor for AspireApiConfig);
    outlined consume of Data._Representation(v32, v33);

    v44 = type metadata accessor for AspireApiPECConfig;
LABEL_32:
    v54 = v44;
    v55 = v43;
LABEL_33:
    outlined destroy of RequestsManager.PECContext(v55, v54);
LABEL_34:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v37, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);

    v56 = *(v0 + 8);

    return v56();
  }

  if ((v42 & 1) == 0)
  {
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    __swift_project_value_buffer(v70, static Logger.framework);

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();

    v73 = os_log_type_enabled(v71, v72);
    v74 = *(v0 + 352);
    if (v73)
    {
      v75 = *(v0 + 344);
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v91[0] = v77;
      *v76 = 136446210;
      v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v74, v91);

      *(v76 + 4) = v78;
      _os_log_impl(&dword_224E26000, v71, v72, "Dynamic configuration is invalid for use-case '%{public}s'", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v77);
      MEMORY[0x22AA61F40](v77, -1, -1);
      MEMORY[0x22AA61F40](v76, -1, -1);

LABEL_52:
      v37 = *(v0 + 336);
      v87 = *(v0 + 280);
      v88 = *(v0 + 256);
      type metadata accessor for CipherMLError(0);
      lazy protocol witness table accessor for type AspireApiConfig and conformance AspireApiConfig(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      outlined consume of Data._Representation(v32, v33);

      outlined destroy of RequestsManager.PECContext(v87, type metadata accessor for AspireApiConfig);
      v54 = type metadata accessor for AspireApiPECConfig;
      v55 = v88;
      goto LABEL_33;
    }

LABEL_51:

    goto LABEL_52;
  }

  v57 = *(*(v0 + 32) + 48);
  os_unfair_lock_lock((v57 + 24));
  v58 = *(v57 + 16);

  os_unfair_lock_unlock((v57 + 24));
  v59 = *(v58 + 48);

  if (!*(v59 + 16) || (v60 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 344), *(v0 + 352)), (v61 & 1) == 0))
  {

    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v79 = type metadata accessor for Logger();
    __swift_project_value_buffer(v79, static Logger.framework);

    v71 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();

    v81 = os_log_type_enabled(v71, v80);
    v82 = *(v0 + 352);
    if (v81)
    {
      v83 = *(v0 + 344);
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v91[0] = v85;
      *v84 = 136446210;
      v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v82, v91);

      *(v84 + 4) = v86;
      _os_log_impl(&dword_224E26000, v71, v80, "No group associated with use-case '%{public}s'", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v85);
      MEMORY[0x22AA61F40](v85, -1, -1);
      MEMORY[0x22AA61F40](v84, -1, -1);

      goto LABEL_52;
    }

    goto LABEL_51;
  }

  v62 = *(v0 + 32);
  v63 = (*(v59 + 56) + 16 * v60);
  v64 = *v63;
  *(v0 + 456) = *v63;
  v65 = v63[1];
  *(v0 + 464) = v65;

  v66 = *(v62 + 32);
  ObjectType = swift_getObjectType();
  v90 = (*(v66 + 8) + **(v66 + 8));
  v68 = swift_task_alloc();
  *(v0 + 472) = v68;
  *v68 = v0;
  v68[1] = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  v69 = *(v0 + 232);

  return v90(v69, v64, v65, ObjectType, v66);
}

{
  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[43];
  v4 = v0[39];
  v5 = v0[36];
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0[40], v4, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = swift_allocObject();
  v0[50] = v7;
  v7[2] = v1;
  v7[3] = v3;
  v7[4] = v2;
  outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v4, v7 + v6, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);

  v8 = swift_task_alloc();
  v0[51] = v8;
  *v8 = v0;
  v8[1] = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  v9 = v0[43];
  v10 = v0[44];

  return specialized Coordinator.run(key:_:)(specialized Coordinator.run(key:_:), v9, v10, &closure #1 in KeyRotation.runWithCoordinator(useCase:configResponse:)partial apply, v7);
}

{
  v2 = *v1;
  *(*v1 + 416) = v0;

  v3 = *(v2 + 360);
  if (v0)
  {
    v4 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  else
  {
    v4 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[40], &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  v1 = swift_task_alloc();
  v0[53] = v1;
  *v1 = v0;
  v1[1] = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  v2 = v0[3];
  v3 = v0[2];

  return RequestsManager.loadContext(requestContext:allowingKeyRotation:)(v3, v2, 0);
}

{
  *(*v1 + 432) = v0;

  if (v0)
  {
    v2 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  else
  {
    v2 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 320), &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);

  return MEMORY[0x2822009F8](RequestsManager.loadContext(requestContext:allowingKeyRotation:), 0, 0);
}

{
  v1 = *(v0 + 336);

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 336);

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);

  v2 = *(v0 + 8);

  return v2();
}

{

  return MEMORY[0x2822009F8](RequestsManager.loadContext(requestContext:allowingKeyRotation:), 0, 0);
}

{
  v1 = v0[28];
  v2 = v0[22];
  v3 = v0[23];
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0[29], v1, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  v4 = *(v3 + 48);
  v0[60] = v4;
  v0[61] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v5 = v4(v1, 1, v2);
  v6 = v0[28];
  if (v5 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[28], &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  }

  else
  {
    v7 = *(v6 + *(v0[22] + 24));

    outlined destroy of RequestsManager.PECContext(v6, type metadata accessor for UserIdentifier);
    if (*(v7 + 16))
    {
      v8 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0[32] + 32), *(v0[32] + 40));
      if (v9)
      {
        outlined init with copy of AspireApiConfig(*(v7 + 56) + *(v0[19] + 72) * v8, v0[26], type metadata accessor for SecretKey);

        v10 = 0;
        goto LABEL_8;
      }
    }
  }

  v10 = 1;
LABEL_8:
  (*(v0[19] + 56))(v0[26], v10, 1, v0[18]);
  v11 = swift_task_alloc();
  v0[62] = v11;
  *v11 = v0;
  v11[1] = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  v13 = v0[57];
  v12 = v0[58];

  return KeyRotation.areKeysExpired(groupName:)(v13, v12);
}

{
  v99 = v0;
  v1 = *(v0 + 480);
  v2 = *(v0 + 232);
  v3 = *(v0 + 176);
  if (v1(v2, 1, v3) == 1 || ((v4 = *(v0 + 553), (*(*(v0 + 152) + 48))(*(v0 + 208), 1, *(v0 + 144)) != 1) ? (v5 = v4 == 0) : (v5 = 0), !v5))
  {
    if (*(v0 + 552) == 1)
    {
      if (one-time initialization token for framework != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Logger.framework);

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v10 = *(v0 + 344);
        v9 = *(v0 + 352);
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v98[0] = v12;
        *v11 = 136446210;
        *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, v98);
        _os_log_impl(&dword_224E26000, v7, v8, "No userId or secretKey for use-case '%{public}s'. Running rotation task'", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v12);
        MEMORY[0x22AA61F40](v12, -1, -1);
        MEMORY[0x22AA61F40](v11, -1, -1);
      }

      v13 = *(v0 + 360);
      v14 = *(v0 + 304);
      v15 = type metadata accessor for AspireApiConfigResponse(0);
      (*(*(v15 - 8) + 56))(v14, 1, 1, v15);

      return MEMORY[0x2822009F8](RequestsManager.loadContext(requestContext:allowingKeyRotation:), v13, 0);
    }

    if (*(v0 + 553))
    {
      if (one-time initialization token for framework != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static Logger.framework);

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      v19 = os_log_type_enabled(v17, v18);
      v20 = *(v0 + 352);
      if (v19)
      {
        v21 = *(v0 + 344);
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v98[0] = v23;
        *v22 = 136446210;
        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v20, v98);

        *(v22 + 4) = v24;
        _os_log_impl(&dword_224E26000, v17, v18, "Key expired for use-case '%{public}s'", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v23);
        MEMORY[0x22AA61F40](v23, -1, -1);
        MEMORY[0x22AA61F40](v22, -1, -1);
      }

      else
      {
      }

      v45 = *(v0 + 440);
      v44 = *(v0 + 448);
      v58 = *(v0 + 336);
      v59 = *(v0 + 280);
      v60 = *(v0 + 256);
      v61 = *(v0 + 232);
      v62 = *(v0 + 208);
      type metadata accessor for CipherMLError(0);
      lazy protocol witness table accessor for type AspireApiConfig and conformance AspireApiConfig(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      v51 = v58;
      v50 = v62;
      v48 = v60;
      v49 = v61;
      v47 = v59;
LABEL_33:
      swift_willThrow();
      outlined consume of Data._Representation(v45, v44);

      goto LABEL_34;
    }
  }

  v25 = *(v0 + 216);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, v25, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  v26 = v1(v25, 1, v3);
  v27 = *(v0 + 216);
  if (v26 == 1)
  {
    v28 = &_s8CipherML14UserIdentifierVSgMd;
    v29 = &_s8CipherML14UserIdentifierVSgMR;
LABEL_23:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v27, v28, v29);
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.framework);

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 352);
    if (v38)
    {
      v40 = *(v0 + 344);
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v98[0] = v42;
      *v41 = 136446210;
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v39, v98);

      *(v41 + 4) = v43;
      _os_log_impl(&dword_224E26000, v36, v37, "No key for use-case '%{public}s'", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x22AA61F40](v42, -1, -1);
      MEMORY[0x22AA61F40](v41, -1, -1);
    }

    else
    {
    }

    v45 = *(v0 + 440);
    v44 = *(v0 + 448);
    v46 = *(v0 + 336);
    v47 = *(v0 + 280);
    v48 = *(v0 + 256);
    v49 = *(v0 + 232);
    v50 = *(v0 + 208);
    type metadata accessor for CipherMLError(0);
    lazy protocol witness table accessor for type AspireApiConfig and conformance AspireApiConfig(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    v51 = v46;
    swift_storeEnumTagMultiPayload();
    goto LABEL_33;
  }

  v30 = *(v0 + 200);
  v31 = *(v0 + 208);
  v32 = *(v0 + 144);
  v33 = *(v0 + 152);
  _s8CipherML18AspireApiPECConfigVWObTm_0(v27, *(v0 + 192), type metadata accessor for UserIdentifier);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v31, v30, &_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR);
  if ((*(v33 + 48))(v30, 1, v32) == 1)
  {
    v34 = *(v0 + 200);
    outlined destroy of RequestsManager.PECContext(*(v0 + 192), type metadata accessor for UserIdentifier);
    v28 = &_s8CipherML9SecretKeyVSgMd;
    v29 = &_s8CipherML9SecretKeyVSgMR;
    v27 = v34;
    goto LABEL_23;
  }

  v52 = *(v0 + 504);
  v53 = *(v0 + 248);
  v54 = *(v0 + 256);
  v56 = *(v0 + 160);
  v55 = *(v0 + 168);
  v57 = *(v0 + 112);
  _s8CipherML18AspireApiPECConfigVWObTm_0(*(v0 + 200), v55, type metadata accessor for SecretKey);
  outlined init with copy of AspireApiConfig(v55, v56, type metadata accessor for SecretKey);
  outlined init with copy of AspireApiConfig(v54, v53, type metadata accessor for AspireApiPECConfig);
  AspireApiPECConfig.cryptokit()(v57);
  if (!v52)
  {
    v64 = *(v0 + 160);
    v65 = *(v0 + 144);
    v66 = *(v0 + 48);
    v67 = *(v0 + 56);
    v68 = *(v0 + 40);
    (*(*(v0 + 96) + 16))(*(v0 + 104), *(v0 + 112), *(v0 + 88));
    (*(v66 + 16))(v67, v64 + *(v65 + 20), v68);
    PEC.SimilarityClient.init(config:secretKey:)();
    v89 = *(v0 + 440);
    v90 = *(v0 + 448);
    v94 = *(v0 + 344);
    v95 = *(v0 + 352);
    v96 = *(v0 + 336);
    v72 = *(v0 + 280);
    v84 = *(v0 + 256);
    v87 = *(v0 + 248);
    v93 = *(v0 + 232);
    v97 = *(v0 + 208);
    v73 = *(v0 + 168);
    v74 = *(v0 + 128);
    v91 = *(v0 + 136);
    v92 = *(v0 + 192);
    v76 = *(v0 + 112);
    v75 = *(v0 + 120);
    v78 = *(v0 + 88);
    v77 = *(v0 + 96);
    v79 = *(v0 + 72);
    v88 = *(v0 + 80);
    v85 = *(v0 + 160);
    v86 = *(v0 + 64);
    v80 = *(v0 + 16);

    (*(v77 + 8))(v76, v78);
    outlined destroy of RequestsManager.PECContext(v73, type metadata accessor for SecretKey);
    outlined destroy of RequestsManager.PECContext(v72, type metadata accessor for AspireApiConfig);
    outlined destroy of RequestsManager.PECContext(v84, type metadata accessor for AspireApiPECConfig);
    _s8CipherML18AspireApiPECConfigVWObTm_0(v85, v74, type metadata accessor for SecretKey);
    _s8CipherML18AspireApiPECConfigVWObTm_0(v87, v74 + v75[5], type metadata accessor for AspireApiPECConfig);
    v81 = (v74 + v75[6]);
    *v81 = v89;
    v81[1] = v90;
    (*(v79 + 32))(v74 + v75[7], v88, v86);
    _s8CipherML18AspireApiPECConfigVWObTm_0(v74, v91, type metadata accessor for SimilarityClient);
    v82 = type metadata accessor for RequestsManager.PECContext(0);
    _s8CipherML18AspireApiPECConfigVWObTm_0(v92, v80 + *(v82 + 20), type metadata accessor for UserIdentifier);
    _s8CipherML18AspireApiPECConfigVWObTm_0(v91, v80 + *(v82 + 24), type metadata accessor for SimilarityClient);
    *v80 = v94;
    v80[1] = v95;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v93, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v96, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v97, &_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR);

    v63 = *(v0 + 8);
    goto LABEL_35;
  }

  outlined consume of Data._Representation(*(v0 + 440), *(v0 + 448));

  v51 = *(v0 + 336);
  v47 = *(v0 + 280);
  v48 = *(v0 + 256);
  v49 = *(v0 + 232);
  v50 = *(v0 + 208);
  v69 = *(v0 + 192);
  v71 = *(v0 + 160);
  v70 = *(v0 + 168);
  outlined destroy of RequestsManager.PECContext(*(v0 + 248), type metadata accessor for AspireApiPECConfig);
  outlined destroy of RequestsManager.PECContext(v71, type metadata accessor for SecretKey);
  outlined destroy of RequestsManager.PECContext(v70, type metadata accessor for SecretKey);
  outlined destroy of RequestsManager.PECContext(v69, type metadata accessor for UserIdentifier);
LABEL_34:
  outlined destroy of RequestsManager.PECContext(v47, type metadata accessor for AspireApiConfig);
  outlined destroy of RequestsManager.PECContext(v48, type metadata accessor for AspireApiPECConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v49, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v51, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v50, &_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR);

  v63 = *(v0 + 8);
LABEL_35:

  return v63();
}

{
  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[43];
  v4 = v0[39];
  v5 = v0[36];
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0[38], v4, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = swift_allocObject();
  v0[64] = v7;
  v7[2] = v1;
  v7[3] = v3;
  v7[4] = v2;
  outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v4, v7 + v6, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);

  v8 = swift_task_alloc();
  v0[65] = v8;
  *v8 = v0;
  v8[1] = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  v9 = v0[43];
  v10 = v0[44];

  return specialized Coordinator.run(key:_:)(specialized Coordinator.run(key:_:), v9, v10, &async function pointer to partial apply for closure #1 in KeyRotation.runWithCoordinator(useCase:configResponse:), v7);
}

{
  v2 = *v1;
  *(*v1 + 528) = v0;

  v3 = *(v2 + 360);
  if (v0)
  {
    v4 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  else
  {
    v4 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[38], &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  v1 = swift_task_alloc();
  v0[67] = v1;
  *v1 = v0;
  v1[1] = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  v2 = v0[3];
  v3 = v0[2];

  return RequestsManager.loadContext(requestContext:allowingKeyRotation:)(v3, v2, 0);
}

{
  *(*v1 + 544) = v0;

  if (v0)
  {
    v2 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  else
  {
    v2 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 304), &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);

  return MEMORY[0x2822009F8](RequestsManager.loadContext(requestContext:allowingKeyRotation:), 0, 0);
}

{
  v1 = v0[42];
  v2 = v0[35];
  v3 = v0[32];
  v4 = v0[29];
  v5 = v0[26];
  outlined consume of Data._Representation(v0[55], v0[56]);

  outlined destroy of RequestsManager.PECContext(v2, type metadata accessor for AspireApiConfig);
  outlined destroy of RequestsManager.PECContext(v3, type metadata accessor for AspireApiPECConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR);

  v6 = v0[1];

  return v6();
}

{
  v1 = v0[42];
  v2 = v0[35];
  v3 = v0[32];
  v4 = v0[29];
  v5 = v0[26];
  outlined consume of Data._Representation(v0[55], v0[56]);

  outlined destroy of RequestsManager.PECContext(v2, type metadata accessor for AspireApiConfig);
  outlined destroy of RequestsManager.PECContext(v3, type metadata accessor for AspireApiPECConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR);

  v6 = v0[1];

  return v6();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 336);

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[42];
  v2 = v0[35];
  v3 = v0[32];
  v4 = v0[29];
  v5 = v0[26];
  outlined consume of Data._Representation(v0[55], v0[56]);

  outlined destroy of RequestsManager.PECContext(v2, type metadata accessor for AspireApiConfig);
  outlined destroy of RequestsManager.PECContext(v3, type metadata accessor for AspireApiPECConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR);

  v6 = v0[1];

  return v6();
}

{
  v1 = v0[42];
  v2 = v0[35];
  v3 = v0[32];
  v4 = v0[29];
  v5 = v0[26];
  outlined consume of Data._Representation(v0[55], v0[56]);

  outlined destroy of RequestsManager.PECContext(v2, type metadata accessor for AspireApiConfig);
  outlined destroy of RequestsManager.PECContext(v3, type metadata accessor for AspireApiPECConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR);

  v6 = v0[1];

  return v6();
}

uint64_t RequestsManager.loadContext(requestContext:allowingKeyRotation:)(char a1)
{
  v4 = *v2;
  *(*v2 + 720) = v1;

  if (v1)
  {
    v5 = *(v4 + 88);
    v6 = *(v4 + 104);
    v7 = *(v4 + 120);
    *(v4 + 184) = *(v4 + 72);
    *(v4 + 232) = v7;
    *(v4 + 216) = v6;
    *(v4 + 200) = v5;
    outlined destroy of StaticPIRParameters(v4 + 184);

    v8 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  else
  {
    *(v4 + 897) = a1 & 1;
    v9 = *(v4 + 72);
    v10 = *(v4 + 88);
    v11 = *(v4 + 104);
    *(v4 + 288) = *(v4 + 120);
    *(v4 + 256) = v10;
    *(v4 + 272) = v11;
    *(v4 + 240) = v9;
    outlined destroy of StaticPIRParameters(v4 + 240);
    v8 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

{
  v3 = *v2;
  *(v3 + 898) = a1;
  *(v3 + 776) = v1;

  if (v1)
  {

    v4 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  else
  {
    v4 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v3 = *v2;
  *(v3 + 553) = a1;
  *(v3 + 504) = v1;

  if (v1)
  {

    v4 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  else
  {
    v4 = RequestsManager.loadContext(requestContext:allowingKeyRotation:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t RequestsManager.requestData(index:context:)()
{
  return MEMORY[0x2822009F8](RequestsManager.requestData(index:context:), 0, 0);
}

{
  type metadata accessor for CipherMLError(0);
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t RequestsManager.requestData(keywords:context:shardIds:allowingRetry:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 392) = a4;
  *(v5 + 80) = a3;
  *(v5 + 88) = v4;
  *(v5 + 64) = a1;
  *(v5 + 72) = a2;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR) - 8);
  *(v5 + 96) = v7;
  *(v5 + 104) = *(v7 + 64);
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();
  v8 = type metadata accessor for AspireApiConfigResponse(0);
  *(v5 + 144) = v8;
  *(v5 + 152) = *(v8 - 8);
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = type metadata accessor for NetworkManagerError(0);
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = type metadata accessor for RequestsManager.PIRContext(0);
  v9 = swift_task_alloc();
  *(v5 + 192) = v9;
  v10 = swift_task_alloc();
  *(v5 + 200) = v10;
  *v10 = v5;
  v10[1] = RequestsManager.requestData(keywords:context:shardIds:allowingRetry:);

  return RequestsManager.loadContext(requestContext:allowingKeyRotation:)(v9, a2, 1);
}

uint64_t RequestsManager.requestData(keywords:context:shardIds:allowingRetry:)()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = RequestsManager.requestData(keywords:context:shardIds:allowingRetry:);
  }

  else
  {
    v2 = RequestsManager.requestData(keywords:context:shardIds:allowingRetry:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[26];
  v2 = v0[10];
  v3 = v0[8];
  v4 = (v0[24] + *(v0[23] + 36));
  v5 = *v4;
  v6 = v4[1];
  swift_unknownObjectRetain();
  v7 = specialized static RequestsManager.cachedAndMissingKeywordsInBatch(keywords:shardIds:cache:)(v3, v2, v5, v6);
  v0[27] = v7;
  v0[28] = v8;
  v0[29] = v9;
  if (v1)
  {
    outlined destroy of AspirePirKeywordPirParameters(v0[24], type metadata accessor for RequestsManager.PIRContext);
    swift_unknownObjectRelease();

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v7;
    v13 = v8;
    v14 = v9;
    swift_unknownObjectRelease();
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    v0[30] = __swift_project_value_buffer(v15, static Logger.framework);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134349312;
      *(v18 + 4) = *(v12 + 16);
      *(v18 + 12) = 2050;
      *(v18 + 14) = *(v13 + 16);

      _os_log_impl(&dword_224E26000, v16, v17, "Cached: %{public}ld / Missing: %{public}ld", v18, 0x16u);
      MEMORY[0x22AA61F40](v18, -1, -1);
    }

    else
    {
    }

    if (*(v13 + 16))
    {
      specialized RequestContext.networkManager()(&_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMR, (v0 + 2));
      v33 = swift_task_alloc();
      v0[31] = v33;
      *v33 = v0;
      v33[1] = RequestsManager.requestData(keywords:context:shardIds:allowingRetry:);
      v34 = v0[24];
      v35 = v0[8];

      return specialized RequestsManager.generateData(keywords:networkManager:context:cachedAndMissing:)(v35, (v0 + 2), v34, v12, v13, v14);
    }

    else
    {
      v19 = v0[8];
      v20 = *(v19 + 16);
      if (v20)
      {
        v37 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
        v21 = v37;
        v22 = (v19 + 40);
        do
        {
          if (*(v12 + 16))
          {
            v24 = *(v22 - 1);
            v23 = *v22;
            outlined copy of Data._Representation(v24, *v22);
            v25 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v23);
            if (v26)
            {
              v27 = (*(v12 + 56) + 16 * v25);
              v28 = *v27;
              v29 = v27[1];
              outlined copy of Data?(*v27, v29);
            }

            else
            {
              v28 = 0;
              v29 = 0xF000000000000000;
            }

            outlined consume of Data._Representation(v24, v23);
          }

          else
          {
            v28 = 0;
            v29 = 0xF000000000000000;
          }

          v31 = *(v37 + 16);
          v30 = *(v37 + 24);
          if (v31 >= v30 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
          }

          v22 += 2;
          *(v37 + 16) = v31 + 1;
          v32 = v37 + 16 * v31;
          *(v32 + 32) = v28;
          *(v32 + 40) = v29;
          --v20;
        }

        while (v20);
      }

      else
      {

        v21 = MEMORY[0x277D84F90];
      }

      outlined destroy of AspirePirKeywordPirParameters(v0[24], type metadata accessor for RequestsManager.PIRContext);

      v36 = v0[1];

      return v36(v21);
    }
  }
}

{
  v1 = v0[24];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  outlined destroy of AspirePirKeywordPirParameters(v1, type metadata accessor for RequestsManager.PIRContext);
  v2 = v0[33];

  v3 = v0[1];

  return v3(v2);
}

{
  v1 = *(v0 + 256);
  *(v0 + 56) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (!swift_dynamicCast())
  {
    v29 = *(v0 + 192);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v30 = type metadata accessor for RequestsManager.PIRContext;
    v31 = v29;
    goto LABEL_20;
  }

  v3 = *(v0 + 176);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v5 = *(v0 + 160);

      outlined init with take of AspirePirSymmetricPirClientConfig(v3, v5, type metadata accessor for AspireApiConfigResponse);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = *(v0 + 392);
        v9 = swift_slowAlloc();
        *v9 = 67109120;
        *(v9 + 4) = v8;
        _os_log_impl(&dword_224E26000, v6, v7, "NetworkManagerError.retryWith(updatedConfig:, allowingRetry: %{BOOL}d", v9, 8u);
        MEMORY[0x22AA61F40](v9, -1, -1);
      }

      v10 = *(v0 + 392);

      v11 = *(v0 + 192);
      if (v10 == 1)
      {
        v12 = *(v0 + 160);
        v13 = *v12;
        v14 = *v11;
        *(v0 + 272) = *v11;
        v15 = v11[1];
        *(v0 + 280) = v15;
        if (*(v13 + 16))
        {
          v16 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
          if (v17)
          {
            v18 = v16;
            v19 = *(v0 + 136);
            v20 = *(v0 + 72);
            v21 = *(v13 + 56);
            v22 = type metadata accessor for AspireApiConfig(0);
            v23 = *(v22 - 8);
            outlined init with copy of UserIdentifier(v21 + *(v23 + 72) * v18, v19, type metadata accessor for AspireApiConfig);
            (*(v23 + 56))(v19, 0, 1, v22);
            outlined destroy of AMDPbHEConfig.OneOf_Config?(v19, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
            v24 = [*v20 sourceApplicationBundleIdentifier];
            if (v24)
            {
              v25 = v24;
              v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v28 = v27;
            }

            else
            {
              v26 = 0;
              v28 = 0;
            }

            v58 = *(v0 + 152);
            v57 = *(v0 + 160);
            v59 = *(v0 + 144);
            v60 = *(v0 + 120);
            v61 = RequestsManager.keyRotation(for:)(v26, v28);
            *(v0 + 288) = v61;

            outlined init with copy of UserIdentifier(v57, v60, type metadata accessor for AspireApiConfigResponse);
            (*(v58 + 56))(v60, 0, 1, v59);

            return MEMORY[0x2822009F8](RequestsManager.requestData(keywords:context:shardIds:allowingRetry:), v61, 0);
          }

          v11 = *(v0 + 192);
          v12 = *(v0 + 160);
        }

        v53 = *(v0 + 136);
        v54 = type metadata accessor for AspireApiConfig(0);
        (*(*(v54 - 8) + 56))(v53, 1, 1, v54);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v53, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
        type metadata accessor for CipherMLError(0);
        _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
        swift_allocError();
        *v55 = v14;
        v55[1] = v15;
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      else
      {
        v12 = *(v0 + 160);
        type metadata accessor for CipherMLError(0);
        _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
        swift_allocError();
        outlined init with copy of UserIdentifier(v12, v47, type metadata accessor for AspireApiConfigResponse);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      outlined destroy of AspirePirKeywordPirParameters(v12, type metadata accessor for AspireApiConfigResponse);
      goto LABEL_29;
    }

    v46 = *(v0 + 192);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    outlined destroy of AspirePirKeywordPirParameters(v46, type metadata accessor for RequestsManager.PIRContext);
    v30 = type metadata accessor for NetworkManagerError;
    v31 = v3;
LABEL_20:
    outlined destroy of AspirePirKeywordPirParameters(v31, v30);

LABEL_30:

    v56 = *(v0 + 8);

    return v56();
  }

  v32 = *v3;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = *(v0 + 392);
    v36 = swift_slowAlloc();
    *v36 = 67109376;
    *(v36 + 4) = v32;
    *(v36 + 8) = 1024;
    *(v36 + 10) = v35;
    _os_log_impl(&dword_224E26000, v33, v34, "NetworkManagerError.retry(fetchingNewConfig: %{BOOL}d, allowingRetry: %{BOOL}d", v36, 0xEu);
    MEMORY[0x22AA61F40](v36, -1, -1);
  }

  v37 = *(v0 + 392);

  if (v37 != 1)
  {
    v11 = *(v0 + 192);
    type metadata accessor for CipherMLError(0);
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    *v48 = v32;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
LABEL_29:
    outlined destroy of AspirePirKeywordPirParameters(v11, type metadata accessor for RequestsManager.PIRContext);

    goto LABEL_30;
  }

  if (v32)
  {
    v38 = *(v0 + 192);
    v39 = *(v0 + 128);
    *(v0 + 344) = *(*(*(v0 + 88) + 16) + 16);
    v40 = *v38;
    v41 = v38[1];
    v42 = type metadata accessor for AspireApiConfig(0);
    (*(*(v42 - 8) + 56))(v39, 1, 1, v42);

    v43 = swift_task_alloc();
    *(v0 + 352) = v43;
    *v43 = v0;
    v43[1] = RequestsManager.requestData(keywords:context:shardIds:allowingRetry:);
    v44 = *(v0 + 128);

    return specialized DatabaseTable<>.set(key:value:)(v40, v41, v44);
  }

  else
  {
    v49 = swift_task_alloc();
    *(v0 + 368) = v49;
    *v49 = v0;
    v49[1] = RequestsManager.requestData(keywords:context:shardIds:allowingRetry:);
    v50 = *(v0 + 80);
    v52 = *(v0 + 64);
    v51 = *(v0 + 72);

    return RequestsManager.requestData(keywords:context:shardIds:allowingRetry:)(v52, v51, v50, 0);
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];
  v4 = v0[14];
  v5 = v0[12];
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0[15], v4, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = swift_allocObject();
  v0[37] = v7;
  v7[2] = v1;
  v7[3] = v3;
  v7[4] = v2;
  outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v4, v7 + v6, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);

  v8 = swift_task_alloc();
  v0[38] = v8;
  *v8 = v0;
  v8[1] = RequestsManager.requestData(keywords:context:shardIds:allowingRetry:);
  v9 = v0[34];
  v10 = v0[35];

  return specialized Coordinator.run(key:_:)(specialized Coordinator.run(key:_:), v9, v10, &async function pointer to partial apply for closure #1 in KeyRotation.runWithCoordinator(useCase:configResponse:), v7);
}

{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = *(v2 + 288);

  if (v0)
  {
    v4 = RequestsManager.requestData(keywords:context:shardIds:allowingRetry:);
  }

  else
  {
    v4 = RequestsManager.requestData(keywords:context:shardIds:allowingRetry:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[15], &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  v1 = swift_task_alloc();
  v0[40] = v1;
  *v1 = v0;
  v1[1] = RequestsManager.requestData(keywords:context:shardIds:allowingRetry:);
  v2 = v0[10];
  v4 = v0[8];
  v3 = v0[9];

  return RequestsManager.requestData(keywords:context:shardIds:allowingRetry:)(v4, v3, v2, 0);
}

{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 120), &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);

  return MEMORY[0x2822009F8](RequestsManager.requestData(keywords:context:shardIds:allowingRetry:), 0, 0);
}

{
  v1 = *(v0 + 192);
  v2 = *(v0 + 160);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  outlined destroy of AspirePirKeywordPirParameters(v2, type metadata accessor for AspireApiConfigResponse);
  outlined destroy of AspirePirKeywordPirParameters(v1, type metadata accessor for RequestsManager.PIRContext);

  v3 = *(v0 + 8);

  return v3();
}

{
  v1 = *(v0 + 192);
  v2 = *(v0 + 160);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  outlined destroy of AspirePirKeywordPirParameters(v2, type metadata accessor for AspireApiConfigResponse);
  outlined destroy of AspirePirKeywordPirParameters(v1, type metadata accessor for RequestsManager.PIRContext);

  v3 = *(v0 + 336);

  v4 = *(v0 + 8);

  return v4(v3);
}

{
  v2 = *v1;
  v2[45] = v0;

  if (v0)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v2[16], &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);

    return MEMORY[0x2822009F8](RequestsManager.requestData(keywords:context:shardIds:allowingRetry:), 0, 0);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v2[16], &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);

    v3 = swift_task_alloc();
    v2[46] = v3;
    *v3 = v2;
    v3[1] = RequestsManager.requestData(keywords:context:shardIds:allowingRetry:);
    v4 = v2[10];
    v5 = v2[9];
    v6 = v2[8];

    return RequestsManager.requestData(keywords:context:shardIds:allowingRetry:)(v6, v5, v4, 0);
  }
}

{
  v1 = *(v0 + 192);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  outlined destroy of AspirePirKeywordPirParameters(v1, type metadata accessor for RequestsManager.PIRContext);

  v2 = *(v0 + 384);

  v3 = *(v0 + 8);

  return v3(v2);
}

{
  v1 = *(v0 + 192);
  v2 = *(v0 + 160);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  outlined destroy of AspirePirKeywordPirParameters(v2, type metadata accessor for AspireApiConfigResponse);
  outlined destroy of AspirePirKeywordPirParameters(v1, type metadata accessor for RequestsManager.PIRContext);

  v3 = *(v0 + 8);

  return v3();
}

{
  v1 = *(v0 + 192);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  outlined destroy of AspirePirKeywordPirParameters(v1, type metadata accessor for RequestsManager.PIRContext);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 192);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  outlined destroy of AspirePirKeywordPirParameters(v1, type metadata accessor for RequestsManager.PIRContext);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t RequestsManager.requestData(keywords:context:shardIds:allowingRetry:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v5 = RequestsManager.requestData(keywords:context:shardIds:allowingRetry:);
  }

  else
  {
    *(v4 + 264) = a1;
    v5 = RequestsManager.requestData(keywords:context:shardIds:allowingRetry:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {
    v5 = RequestsManager.requestData(keywords:context:shardIds:allowingRetry:);
  }

  else
  {
    *(v4 + 336) = a1;
    v5 = RequestsManager.requestData(keywords:context:shardIds:allowingRetry:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 376) = v1;

  if (v1)
  {
    v5 = RequestsManager.requestData(keywords:context:shardIds:allowingRetry:);
  }

  else
  {
    *(v4 + 384) = a1;
    v5 = RequestsManager.requestData(keywords:context:shardIds:allowingRetry:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t specialized RequestContext.networkManager()@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for NetworkConfig(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NetworkManagerConfig(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  outlined init with copy of UserIdentifier(v3 + *(v13 + 32), v9, type metadata accessor for NetworkConfig);
  v14 = [*v3 sourceApplicationBundleIdentifier];
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

  outlined init with take of AspirePirSymmetricPirClientConfig(v9, v12, type metadata accessor for NetworkConfig);
  v19 = &v12[*(v10 + 20)];
  *v19 = v16;
  v19[1] = v18;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static NetworkManagerHelper.shared + 96))(v23, v12);
  outlined destroy of AspirePirKeywordPirParameters(v12, type metadata accessor for NetworkManagerConfig);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v23, &v21, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
  if (v22)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v23, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
    return outlined init with take of LocalizedError(&v21, a3);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(&v21, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
    type metadata accessor for CipherMLError(0);
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v23, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
  }
}

uint64_t RequestsManager.generateData(keywords:networkManager:context:cachedAndMissing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = RequestsManager.generateData(keywords:networkManager:context:cachedAndMissing:);

  return specialized RequestsManager.generateData(keywords:networkManager:context:cachedAndMissing:)(a1, a2, a3, a4, a5, a6);
}

uint64_t RequestsManager.generateData(keywords:networkManager:context:cachedAndMissing:)(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t RequestsManager.generateSymmetricPirKeywords(_:networkManager:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = RequestsManager.generateSymmetricPirKeywords(_:networkManager:context:);

  return specialized RequestsManager.generateSymmetricPirKeywords(_:networkManager:context:)(a1, a2, a3);
}

uint64_t RequestsManager.requestDataWithAsyncResponse(keywords:context:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3[5] = swift_task_alloc();
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMR) - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v3[10] = v6;
  v3[11] = *(v6 - 8);
  v3[12] = swift_task_alloc();
  v7 = type metadata accessor for RequestsManager.PIRContext(0);
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v3[15] = *(v8 + 64);
  v3[16] = swift_task_alloc();
  v9 = swift_task_alloc();
  v3[17] = v9;
  v10 = swift_task_alloc();
  v3[18] = v10;
  *v10 = v3;
  v10[1] = RequestsManager.requestDataWithAsyncResponse(keywords:context:);

  return RequestsManager.loadContext(requestContext:allowingKeyRotation:)(v9, a2, 1);
}

uint64_t RequestsManager.requestDataWithAsyncResponse(keywords:context:)()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = RequestsManager.requestDataWithAsyncResponse(keywords:context:);
  }

  else
  {
    v2 = RequestsManager.requestDataWithAsyncResponse(keywords:context:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v95 = v0;
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  UUID.init()();
  v93 = UUID.uuidString.getter();
  v5 = v4;
  (*(v1 + 8))(v2, v3);
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v6 = v0[9];
  v7 = v0[3];
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.framework);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v7, v6, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMR);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[9];
  if (v11)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v94[0] = v14;
    *v13 = 136446466;
    v15 = [*v12 useCase];
    v16 = v5;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMR);
    v20 = v17;
    v5 = v16;
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, v94);

    *(v13 + 4) = v21;
    *(v13 + 12) = 2082;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v16, v94);
    _os_log_impl(&dword_224E26000, v9, v10, "Async response is requested for '%{public}s', uuid: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA61F40](v14, -1, -1);
    MEMORY[0x22AA61F40](v13, -1, -1);
  }

  else
  {

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMR);
  }

  v22 = v0[19];
  v23 = v0[2];
  v24 = (v0[17] + *(v0[13] + 36));
  v25 = *v24;
  v26 = v24[1];
  swift_unknownObjectRetain();
  v27 = MEMORY[0x277D84F90];
  v28 = specialized static RequestsManager.cachedAndMissingKeywordsInBatch(keywords:shardIds:cache:)(v23, MEMORY[0x277D84F90], v25, v26);
  if (v22)
  {
    outlined destroy of AspirePirKeywordPirParameters(v0[17], type metadata accessor for RequestsManager.PIRContext);
    swift_unknownObjectRelease();

    v31 = v0[1];

    return v31();
  }

  else
  {
    v33 = v28;
    v34 = v29;
    v35 = v30;
    swift_unknownObjectRelease();

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 134218240;
      *(v38 + 4) = v33[2];
      *(v38 + 12) = 2048;
      *(v38 + 14) = *(v34 + 16);

      _os_log_impl(&dword_224E26000, v36, v37, "Cached: %ld / Missing: %ld", v38, 0x16u);
      MEMORY[0x22AA61F40](v38, -1, -1);
    }

    else
    {
    }

    if (*(v34 + 16))
    {
      v40 = v0[16];
      v39 = v0[17];
      v83 = v40;
      v84 = v39;
      v85 = v0[14];
      v86 = v0[15];
      v91 = v34;
      v92 = v35;
      v41 = v0[7];
      v42 = v0[8];
      v82 = v42;
      v43 = v0[5];
      v44 = v0[6];
      v45 = v0[3];
      v88 = v0[4];
      v89 = v43;
      v87 = v0[2];
      v46 = type metadata accessor for TaskPriority();
      (*(*(v46 - 8) + 56))(v43, 1, 1, v46);
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v45, v42, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMR);
      outlined init with copy of UserIdentifier(v39, v40, type metadata accessor for RequestsManager.PIRContext);
      v47 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v48 = (v41 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
      v49 = (v48 + 23) & 0xFFFFFFFFFFFFFFF8;
      v50 = v5;
      v51 = (v49 + 15) & 0xFFFFFFFFFFFFFFF8;
      v52 = (*(v85 + 80) + v51 + 8) & ~*(v85 + 80);
      v53 = (v86 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
      v54 = swift_allocObject();
      *(v54 + 16) = 0;
      *(v54 + 24) = 0;
      outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v82, v54 + v47, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMR);
      v55 = (v54 + v48);
      v56 = v93;
      *v55 = v93;
      v55[1] = v50;
      *(v54 + v49) = v88;
      *(v54 + v51) = v87;
      v5 = v50;
      v57 = v54 + v52;
      v58 = v84;
      outlined init with take of AspirePirSymmetricPirClientConfig(v83, v57, type metadata accessor for RequestsManager.PIRContext);
      v59 = (v54 + v53);
      *v59 = v33;
      v59[1] = v91;
      v59[2] = v92;

      v60 = &async function pointer to partial apply for closure #3 in RequestsManager.requestDataWithAsyncResponse(keywords:context:);
      v61 = v89;
      v62 = v54;
    }

    else
    {
      v63 = v0[2];
      v64 = *(v63 + 16);
      if (v64)
      {
        v90 = v5;
        v94[0] = v27;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v64, 0);
        v65 = v94[0];
        v66 = (v63 + 40);
        do
        {
          if (v33[2])
          {
            v68 = *(v66 - 1);
            v67 = *v66;
            outlined copy of Data._Representation(v68, *v66);
            v69 = specialized __RawDictionaryStorage.find<A>(_:)(v68, v67);
            if (v70)
            {
              v71 = (v33[7] + 16 * v69);
              v72 = *v71;
              v73 = v71[1];
              outlined copy of Data?(*v71, v73);
            }

            else
            {
              v72 = 0;
              v73 = 0xF000000000000000;
            }

            outlined consume of Data._Representation(v68, v67);
          }

          else
          {
            v72 = 0;
            v73 = 0xF000000000000000;
          }

          v94[0] = v65;
          v75 = *(v65 + 16);
          v74 = *(v65 + 24);
          if (v75 >= v74 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), v75 + 1, 1);
            v65 = v94[0];
          }

          v66 += 2;
          *(v65 + 16) = v75 + 1;
          v76 = v65 + 16 * v75;
          *(v76 + 32) = v72;
          *(v76 + 40) = v73;
          --v64;
        }

        while (v64);

        v5 = v90;
      }

      else
      {

        v65 = MEMORY[0x277D84F90];
      }

      v58 = v0[17];
      v77 = v0[5];
      v78 = v0[2];
      v79 = type metadata accessor for TaskPriority();
      (*(*(v79 - 8) + 56))(v77, 1, 1, v79);
      v80 = swift_allocObject();
      v80[2] = 0;
      v80[3] = 0;
      v80[4] = v65;
      v80[5] = v78;
      v56 = v93;
      v80[6] = v93;
      v80[7] = v5;

      v60 = &async function pointer to partial apply for closure #2 in RequestsManager.requestDataWithAsyncResponse(keywords:context:);
      v61 = v77;
      v62 = v80;
    }

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v61, v60, v62);

    outlined destroy of AspirePirKeywordPirParameters(v58, type metadata accessor for RequestsManager.PIRContext);

    v81 = v0[1];

    return v81(v56, v5);
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #2 in RequestsManager.requestDataWithAsyncResponse(keywords:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;

  return MEMORY[0x2822009F8](closure #2 in RequestsManager.requestDataWithAsyncResponse(keywords:context:), 0, 0);
}

uint64_t closure #2 in RequestsManager.requestDataWithAsyncResponse(keywords:context:)()
{
  v29 = v0;
  v28[1] = *MEMORY[0x277D85DE8];
  v1 = v0[3];
  v2 = *(v1 + 16);
  if (v2)
  {
    v28[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (v1 + 40);
    do
    {
      v4 = *v3;
      if (*v3 >> 60 == 15)
      {
        [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
      }

      else
      {
        v5 = *(v3 - 1);
        outlined copy of Data._Representation(v5, *v3);
        Data._bridgeToObjectiveC()();
        outlined consume of Data?(v5, v4);
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  v7 = v0[5];
  v6 = v0[6];
  v8 = objc_opt_self();
  type metadata accessor for NSObject();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = Array._bridgeToObjectiveC()().super.isa;
  v11 = MEMORY[0x22AA609C0](v7, v6);
  v0[2] = 0;
  v12 = [v8 sendReplyForBatchPIR:isa requestError:0 keywords:v10 uuid:v11 error:v0 + 2];

  v13 = v0[2];
  if (v13)
  {
    v14 = v13;

    swift_willThrow();
    v15 = 0;
  }

  else
  {
    v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.framework);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v20 = v0[5];
    v19 = v0[6];
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v28[0] = v22;
    *v21 = 136446466;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, v28);
    *(v21 + 12) = 2082;
    v0[2] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGSgMd, &_sSDys11AnyHashableVypGSgMR);
    v23 = String.init<A>(describing:)();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v28);

    *(v21 + 14) = v25;
    _os_log_impl(&dword_224E26000, v17, v18, "Notified AMD for '%{public}s', response: %{public}s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA61F40](v22, -1, -1);
    MEMORY[0x22AA61F40](v21, -1, -1);
  }

  else
  {
  }

  v26 = v0[1];

  return v26();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a3, v25 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v11, &_sScPSgMd, &_sScPSgMR);
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
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      outlined destroy of AMDPbHEConfig.OneOf_Config?(a3, &_sScPSgMd, &_sScPSgMR);

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

  outlined destroy of AMDPbHEConfig.OneOf_Config?(a3, &_sScPSgMd, &_sScPSgMR);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t closure #3 in RequestsManager.requestDataWithAsyncResponse(keywords:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = v12;
  *(v8 + 144) = v13;
  *(v8 + 120) = v11;
  *(v8 + 104) = a6;
  *(v8 + 112) = a8;
  *(v8 + 88) = a4;
  *(v8 + 96) = a5;

  return MEMORY[0x2822009F8](closure #3 in RequestsManager.requestDataWithAsyncResponse(keywords:context:), 0, 0);
}

uint64_t closure #3 in RequestsManager.requestDataWithAsyncResponse(keywords:context:)()
{
  v16 = v0;
  v15[1] = *MEMORY[0x277D85DE8];
  specialized RequestContext.networkManager()(&_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMR, (v0 + 2));
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[19] = __swift_project_value_buffer(v1, static Logger.framework);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[12];
    v4 = v0[13];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15[0] = v7;
    *v6 = 136446210;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, v15);
    _os_log_impl(&dword_224E26000, v2, v3, "Async response request '%{public}s' has started", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AA61F40](v7, -1, -1);
    MEMORY[0x22AA61F40](v6, -1, -1);
  }

  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = closure #3 in RequestsManager.requestDataWithAsyncResponse(keywords:context:);
  v9 = v0[17];
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[16];
  v13 = v0[14];

  return specialized RequestsManager.generateData(keywords:networkManager:context:cachedAndMissing:)(v13, (v0 + 2), v11, v12, v9, v10);
}

{
  v34 = v0;
  v33[1] = *MEMORY[0x277D85DE8];

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[12];
    v3 = v0[13];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v33[0] = v6;
    *v5 = 136446210;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, v33);
    _os_log_impl(&dword_224E26000, v1, v2, "Async response request '%{public}s' has finished", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x22AA61F40](v6, -1, -1);
    MEMORY[0x22AA61F40](v5, -1, -1);
  }

  v7 = v0[21];
  v8 = *(v7 + 16);
  if (v8)
  {
    v33[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v9 = (v7 + 40);
    do
    {
      v10 = *v9;
      if (*v9 >> 60 == 15)
      {
        [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
      }

      else
      {
        v11 = *(v9 - 1);
        outlined copy of Data._Representation(v11, *v9);
        Data._bridgeToObjectiveC()();
        outlined consume of Data?(v11, v10);
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v9 += 2;
      --v8;
    }

    while (v8);
  }

  v12 = v0[13];
  v13 = v0[12];
  v14 = objc_opt_self();
  type metadata accessor for NSObject();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v16 = Array._bridgeToObjectiveC()().super.isa;
  v17 = MEMORY[0x22AA609C0](v13, v12);
  v0[9] = 0;
  v18 = [v14 sendReplyForBatchPIR:isa requestError:0 keywords:v16 uuid:v17 error:v0 + 9];

  v19 = v0[9];
  if (v19)
  {
    v20 = v19;

    swift_willThrow();
    v21 = 0;
  }

  else
  {
    v21 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v25 = v0[12];
    v24 = v0[13];
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v33[0] = v27;
    *v26 = 136446466;
    *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v24, v33);
    *(v26 + 12) = 2082;
    v0[10] = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGSgMd, &_sSDys11AnyHashableVypGSgMR);
    v28 = String.init<A>(describing:)();
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v33);

    *(v26 + 14) = v30;
    _os_log_impl(&dword_224E26000, v22, v23, "Notified AMD for '%{public}s', response: %{public}s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA61F40](v27, -1, -1);
    MEMORY[0x22AA61F40](v26, -1, -1);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v31 = v0[1];

  return v31();
}

{
  v28 = v0;
  v27[1] = *MEMORY[0x277D85DE8];
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 176);
  v2 = *(v0 + 104);
  v3 = *(v0 + 96);
  v4 = objc_opt_self();
  v5 = _convertErrorToNSError(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v7 = MEMORY[0x22AA609C0](v3, v2);
  *(v0 + 56) = 0;
  v8 = [v4 sendReplyForBatchPIR:0 requestError:v5 keywords:isa uuid:v7 error:v0 + 56];

  if (*(v0 + 56))
  {
    v9 = *(v0 + 56);

    swift_willThrow();
    v10 = 0;
  }

  else
  {
    v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.framework);

  v12 = v1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = *(v0 + 96);
    v16 = *(v0 + 104);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27[0] = v26;
    *v17 = 136446722;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v27);
    *(v17 + 12) = 2082;
    *(v0 + 64) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGSgMd, &_sSDys11AnyHashableVypGSgMR);
    v19 = String.init<A>(describing:)();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v27);

    *(v17 + 14) = v21;
    *(v17 + 22) = 2114;
    v22 = v1;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 24) = v23;
    *v18 = v23;
    _os_log_impl(&dword_224E26000, v13, v14, "Async response request '%{public}s' has failed, notified AMD: %{public}s, error: %{public}@", v17, 0x20u);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA61F40](v18, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AA61F40](v26, -1, -1);
    MEMORY[0x22AA61F40](v17, -1, -1);
  }

  else
  {
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t closure #3 in RequestsManager.requestDataWithAsyncResponse(keywords:context:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v4 = closure #3 in RequestsManager.requestDataWithAsyncResponse(keywords:context:);
  }

  else
  {
    v4 = closure #3 in RequestsManager.requestDataWithAsyncResponse(keywords:context:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t RequestsManager.removeCachedKeywords(keywords:context:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = type metadata accessor for RequestsManager.PIRContext(0);
  v4 = swift_task_alloc();
  v2[4] = v4;
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = RequestsManager.removeCachedKeywords(keywords:context:);

  return RequestsManager.loadContext(requestContext:allowingKeyRotation:)(v4, a2, 0);
}

uint64_t RequestsManager.removeCachedKeywords(keywords:context:)()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = RequestsManager.removeCachedKeywords(keywords:context:);
  }

  else
  {
    v2 = RequestsManager.removeCachedKeywords(keywords:context:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[4];
  v2 = (v1 + *(v0[3] + 36));
  if (*v2)
  {
    v3 = v0[6];
    v4 = v0[2];
    v5 = v2[1];
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 32);
    swift_unknownObjectRetain();
    v8 = v7(v4, ObjectType, v5);
    swift_unknownObjectRelease();
    v1 = v0[4];
    if (v3)
    {
      outlined destroy of AspirePirKeywordPirParameters(v1, type metadata accessor for RequestsManager.PIRContext);

      v9 = v0[1];

      return v9();
    }
  }

  else
  {
    v8 = 0;
  }

  outlined destroy of AspirePirKeywordPirParameters(v1, type metadata accessor for RequestsManager.PIRContext);

  v11 = v0[1];

  return v11(v8);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t RequestsManager.constructPIRRequest(keyword:shardId:pirContext:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v36 - v16;
  v39 = a5;
  if (!a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_225022960;
    *(v18 + 32) = a1;
    *(v18 + 40) = a2;
    v27 = a5 + *(type metadata accessor for RequestsManager.PIRContext(0) + 24);
    v28 = *(v27 + *(type metadata accessor for AspireApiPIRConfig(0) + 20));
    v29 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
    swift_beginAccess();
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v28 + v29, v14, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
    v30 = type metadata accessor for AspirePirBatchPirParameters(0);
    LODWORD(v29) = (*(*(v30 - 8) + 48))(v14, 1, v30);
    outlined copy of Data._Representation(a1, a2);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
    if (v29 == 1)
    {
      v31 = v40;
      v32 = RequestsManager.PIRContext.createKeywordPIRRequests(_:shardIds:)(v18, MEMORY[0x277D84F90]);
LABEL_11:
      v25 = v32;

      if (v31)
      {
        return result;
      }

      if (!*(v25 + 16))
      {
        __break(1u);
        return result;
      }

      goto LABEL_13;
    }

LABEL_10:
    v31 = v40;
    v32 = RequestsManager.PIRContext.createBatchPIRQueries(_:)(v18);
    goto LABEL_11;
  }

  v37 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
  v18 = swift_allocObject();
  v38 = xmmword_225022960;
  *(v18 + 16) = xmmword_225022960;
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = v38;
  *(inited + 32) = a3;
  *(inited + 40) = a4;
  v20 = a5 + *(type metadata accessor for RequestsManager.PIRContext(0) + 24);
  v21 = *(v20 + *(type metadata accessor for AspireApiPIRConfig(0) + 20));
  v22 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v21 + v22, v17, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v23 = type metadata accessor for AspirePirBatchPirParameters(0);
  if ((*(*(v23 - 8) + 48))(v17, 1, v23) == 1)
  {

    outlined copy of Data._Representation(a1, a2);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v17, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
    v24 = v40;
    v25 = RequestsManager.PIRContext.createKeywordPIRRequests(_:shardIds:)(v18, inited);
    v26 = v24;
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  else
  {
    swift_setDeallocating();

    outlined copy of Data._Representation(a1, a2);
    outlined destroy of String(inited + 32);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v17, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
    v33 = v40;
    v25 = RequestsManager.PIRContext.createBatchPIRQueries(_:)(v18);
    v26 = v33;
  }

  if (!v26)
  {
    a6 = v37;
    if (*(v25 + 16))
    {
LABEL_13:
      v35 = *(type metadata accessor for AspireApiRequest(0) - 8);
      outlined init with copy of UserIdentifier(v25 + ((*(v35 + 80) + 32) & ~*(v35 + 80)), a6, type metadata accessor for AspireApiRequest);
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

uint64_t RequestsManager.constructPIRRequest(keyword:withEvaluationKey:shardId:config:context:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 152) = a7;
  *(v9 + 160) = v8;
  *(v9 + 136) = a5;
  *(v9 + 144) = a6;
  *(v9 + 320) = a4;
  *(v9 + 120) = a2;
  *(v9 + 128) = a3;
  *(v9 + 112) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  *(v9 + 168) = swift_task_alloc();
  *(v9 + 176) = type metadata accessor for AspireApiPIRRequest(0);
  *(v9 + 184) = swift_task_alloc();
  v11 = type metadata accessor for AspireApiEvaluationKey(0);
  *(v9 + 192) = v11;
  *(v9 + 200) = *(v11 - 8);
  *(v9 + 208) = swift_task_alloc();
  *(v9 + 216) = type metadata accessor for AspireApiPIRConfig(0);
  *(v9 + 224) = swift_task_alloc();
  *(v9 + 232) = swift_task_alloc();
  type metadata accessor for SecretKey(0);
  *(v9 + 240) = swift_task_alloc();
  *(v9 + 248) = swift_task_alloc();
  type metadata accessor for BatchPIRClient(0);
  *(v9 + 256) = swift_task_alloc();
  *(v9 + 264) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  *(v9 + 272) = swift_task_alloc();
  *(v9 + 280) = swift_task_alloc();
  *(v9 + 288) = type metadata accessor for RequestsManager.PIRContext(0);
  v12 = swift_task_alloc();
  *(v9 + 296) = v12;
  v13 = swift_task_alloc();
  *(v9 + 304) = v13;
  *v13 = v9;
  v13[1] = RequestsManager.constructPIRRequest(keyword:withEvaluationKey:shardId:config:context:);

  return RequestsManager.loadContext(requestContext:allowingKeyRotation:)(v12, a8, 0);
}

uint64_t RequestsManager.constructPIRRequest(keyword:withEvaluationKey:shardId:config:context:)()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = RequestsManager.constructPIRRequest(keyword:withEvaluationKey:shardId:config:context:);
  }

  else
  {
    v2 = RequestsManager.constructPIRRequest(keyword:withEvaluationKey:shardId:config:context:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 144);
  if (!v1)
  {
    v24 = *(v0 + 288);
    v23 = *(v0 + 296);
    v25 = *(v0 + 272);
    v26 = *(v0 + 216);
    v28 = *(v0 + 120);
    v27 = *(v0 + 128);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_225022960;
    *(v29 + 32) = v28;
    *(v29 + 40) = v27;
    v30 = v23 + *(v24 + 24);
    v31 = *(v30 + *(v26 + 20));
    v32 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
    swift_beginAccess();
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v31 + v32, v25, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
    v33 = type metadata accessor for AspirePirBatchPirParameters(0);
    LODWORD(v31) = (*(*(v33 - 8) + 48))(v25, 1, v33);
    outlined copy of Data._Representation(v28, v27);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
    v34 = *(v0 + 312);
    v35 = *(v0 + 296);
    if (v31 == 1)
    {
      v21 = RequestsManager.PIRContext.createKeywordPIRRequests(_:shardIds:)(v29, MEMORY[0x277D84F90]);

      if (v34)
      {
        goto LABEL_15;
      }

      if (*(v21 + 16))
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }

    v43 = *(v0 + 288);
    v44 = *(v0 + 256);
    v45 = *(v0 + 240);
    v46 = *(v0 + 224);
    outlined init with copy of UserIdentifier(v35 + *(v43 + 32), v45, type metadata accessor for SecretKey);
    outlined init with copy of UserIdentifier(v30, v46, type metadata accessor for AspireApiPIRConfig);
    v47 = (v35 + *(v43 + 28));
    v48 = *v47;
    v49 = v47[1];
    outlined copy of Data._Representation(*v47, v49);
    BatchPIRClient.init(secretKey:config:configID:)(v45, v46, v48, v49, v44);
    if (!v34)
    {
      v22 = BatchPIRClient.constructPIRRequest(with:)(v29);
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v4 = *(v0 + 280);
  v5 = *(v0 + 216);
  v6 = *(v0 + 128);
  v7 = *(v0 + 136);
  v8 = *(v0 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_225022960;
  *(v9 + 32) = v8;
  *(v9 + 40) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225022960;
  *(inited + 32) = v7;
  *(inited + 40) = v1;
  v11 = v2 + *(v3 + 24);
  v12 = *(v11 + *(v5 + 20));
  v13 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v12 + v13, v4, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v14 = type metadata accessor for AspirePirBatchPirParameters(0);
  v15 = (*(*(v14 - 8) + 48))(v4, 1, v14);
  v16 = *(v0 + 312);
  v17 = *(v0 + 296);
  if (v15 == 1)
  {
    v18 = *(v0 + 280);
    v20 = *(v0 + 120);
    v19 = *(v0 + 128);

    outlined copy of Data._Representation(v20, v19);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v18, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
    v21 = RequestsManager.PIRContext.createKeywordPIRRequests(_:shardIds:)(v9, inited);
    swift_setDeallocating();
    swift_arrayDestroy();

    if (v16)
    {
      goto LABEL_15;
    }

    if (!*(v21 + 16))
    {
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  v83 = *(v0 + 280);
  v84 = *(v0 + 288);
  v85 = *(v0 + 248);
  v86 = *(v0 + 232);
  v87 = *(v0 + 264);
  v38 = *(v0 + 120);
  v37 = *(v0 + 128);
  v88 = *(v0 + 312);
  swift_setDeallocating();

  outlined copy of Data._Representation(v38, v37);
  outlined destroy of String(inited + 32);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v83, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  outlined init with copy of UserIdentifier(v17 + *(v84 + 32), v85, type metadata accessor for SecretKey);
  outlined init with copy of UserIdentifier(v11, v86, type metadata accessor for AspireApiPIRConfig);
  v39 = (v17 + *(v84 + 28));
  v40 = *v39;
  v41 = v39[1];
  outlined copy of Data._Representation(*v39, v41);
  BatchPIRClient.init(secretKey:config:configID:)(v85, v86, v40, v41, v87);
  if (v88)
  {
LABEL_13:

    goto LABEL_15;
  }

  v42 = BatchPIRClient.constructPIRRequest(with:)(v9);
  v51 = *(v0 + 296);
  v52 = *(v0 + 264);
  v53 = v42;

  v54 = swift_task_alloc();
  *(v54 + 16) = v51;
  v21 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CipherML19AspireApiPIRRequestVG_AF0fG7RequestVs5NeverOTg5(closure #1 in RequestsManager.PIRContext.createBatchPIRQueries(_:)partial apply, v54, v53);

  v22 = outlined destroy of AspirePirKeywordPirParameters(v52, type metadata accessor for BatchPIRClient);
  if (!*(v21 + 16))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    v55 = *(v0 + 296);
    v56 = *(v0 + 256);
    v57 = v22;

    v58 = swift_task_alloc();
    *(v58 + 16) = v55;
    v21 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CipherML19AspireApiPIRRequestVG_AF0fG7RequestVs5NeverOTg5(closure #1 in RequestsManager.PIRContext.createBatchPIRQueries(_:)partial apply, v58, v57);

    result = outlined destroy of AspirePirKeywordPirParameters(v56, type metadata accessor for BatchPIRClient);
    if (*(v21 + 16))
    {
      goto LABEL_21;
    }

LABEL_30:
    __break(1u);
    return result;
  }

LABEL_21:
  v59 = *(v0 + 320);
  v60 = *(v0 + 112);
  v61 = type metadata accessor for AspireApiRequest(0);
  outlined init with copy of UserIdentifier(v21 + ((*(*(v61 - 8) + 80) + 32) & ~*(*(v61 - 8) + 80)), v60, type metadata accessor for AspireApiRequest);

  if (v59)
  {
    RequestsManager.generateEvaluationKey(config:pirContext:)(*(v0 + 152), *(v0 + 296), *(v0 + 208));
    v62 = *(v0 + 168);
    v63 = *(v0 + 112);
    v64 = *(v61 + 20);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v63 + v64, v62, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
    v65 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
    v66 = *(v65 - 8);
    v67 = (*(v66 + 48))(v62, 1, v65);
    v68 = *(v0 + 168);
    if (v67 == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 168), &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
    }

    else
    {
      if (!swift_getEnumCaseMultiPayload())
      {
        outlined init with take of AspirePirSymmetricPirClientConfig(v68, *(v0 + 184), type metadata accessor for AspireApiPIRRequest);
        goto LABEL_27;
      }

      outlined destroy of AspirePirKeywordPirParameters(v68, type metadata accessor for AspireApiRequest.OneOf_Request);
    }

    v69 = *(v0 + 192);
    v70 = *(v0 + 200);
    v72 = *(v0 + 176);
    v71 = *(v0 + 184);
    *v71 = 0;
    *(v71 + 8) = xmmword_225022910;
    UnknownStorage.init()();
    v73 = v72[7];
    v74 = type metadata accessor for AspirePirEncryptedIndices(0);
    (*(*(v74 - 8) + 56))(v71 + v73, 1, 1, v74);
    v75 = v72[8];
    v76 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
    (*(*(v76 - 8) + 56))(v71 + v75, 1, 1, v76);
    v77 = (v71 + v72[9]);
    *v77 = 0;
    v77[1] = 0;
    (*(v70 + 56))(v71 + v72[10], 1, 1, v69);
LABEL_27:
    v79 = *(v0 + 200);
    v78 = *(v0 + 208);
    v81 = *(v0 + 184);
    v80 = *(v0 + 192);
    v82 = *(*(v0 + 176) + 40);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v81 + v82, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
    outlined init with take of AspirePirSymmetricPirClientConfig(v78, v81 + v82, type metadata accessor for AspireApiEvaluationKey);
    (*(v79 + 56))(v81 + v82, 0, 1, v80);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v63 + v64, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
    outlined init with take of AspirePirSymmetricPirClientConfig(v81, v63 + v64, type metadata accessor for AspireApiPIRRequest);
    swift_storeEnumTagMultiPayload();
    (*(v66 + 56))(v63 + v64, 0, 1, v65);
  }

LABEL_15:
  outlined destroy of AspirePirKeywordPirParameters(*(v0 + 296), type metadata accessor for RequestsManager.PIRContext);

  v50 = *(v0 + 8);

  return v50();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t RequestsManager.constructPIRBatchRequest(keywords:shardIds:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a1;
  v3[6] = a2;
  v3[7] = type metadata accessor for AspireApiRequests(0);
  v3[8] = swift_task_alloc();
  v3[9] = type metadata accessor for AspireApiPIRConfig(0);
  v3[10] = swift_task_alloc();
  type metadata accessor for SecretKey(0);
  v3[11] = swift_task_alloc();
  type metadata accessor for BatchPIRClient(0);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v3[13] = swift_task_alloc();
  v3[14] = type metadata accessor for RequestsManager.PIRContext(0);
  v5 = swift_task_alloc();
  v3[15] = v5;
  v6 = swift_task_alloc();
  v3[16] = v6;
  *v6 = v3;
  v6[1] = RequestsManager.constructPIRBatchRequest(keywords:shardIds:context:);

  return RequestsManager.loadContext(requestContext:allowingKeyRotation:)(v5, a3, 0);
}

uint64_t RequestsManager.constructPIRBatchRequest(keywords:shardIds:context:)()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = RequestsManager.constructPIRBatchRequest(keywords:shardIds:context:);
  }

  else
  {
    v2 = RequestsManager.constructPIRBatchRequest(keywords:shardIds:context:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 104);
  v2 = *(v0 + 120) + *(*(v0 + 112) + 24);
  v3 = *(v2 + *(*(v0 + 72) + 20));
  v4 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v3 + v4, v1, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v5 = type metadata accessor for AspirePirBatchPirParameters(0);
  LODWORD(v3) = (*(*(v5 - 8) + 48))(v1, 1, v5);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  if (v3 == 1)
  {
    v6 = *(v0 + 136);
    v7 = RequestsManager.PIRContext.createKeywordPIRRequests(_:shardIds:)(*(v0 + 40), *(v0 + 48));
    if (!v6)
    {
      v8 = v7;
LABEL_9:
      *(swift_task_alloc() + 16) = v8;
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiRequests and conformance AspireApiRequests, type metadata accessor for AspireApiRequests, &protocol conformance descriptor for AspireApiRequests);
      static Message.with(_:)();

      v25 = Message.serializedData(partial:)();
      v26 = *(v0 + 120);
      v27 = v25;
      v29 = v28;
      outlined destroy of AspirePirKeywordPirParameters(*(v0 + 64), type metadata accessor for AspireApiRequests);
      outlined destroy of AspirePirKeywordPirParameters(v26, type metadata accessor for RequestsManager.PIRContext);

      v30 = *(v0 + 8);

      return v30(v27, v29);
    }
  }

  else
  {
    v9 = *(v0 + 136);
    v11 = *(v0 + 112);
    v10 = *(v0 + 120);
    v13 = *(v0 + 88);
    v12 = *(v0 + 96);
    v14 = *(v0 + 80);
    outlined init with copy of UserIdentifier(v10 + *(v11 + 32), v13, type metadata accessor for SecretKey);
    outlined init with copy of UserIdentifier(v2, v14, type metadata accessor for AspireApiPIRConfig);
    v15 = (v10 + *(v11 + 28));
    v16 = *v15;
    v17 = v15[1];
    outlined copy of Data._Representation(*v15, v17);
    BatchPIRClient.init(secretKey:config:configID:)(v13, v14, v16, v17, v12);
    if (!v9)
    {
      v18 = BatchPIRClient.constructPIRRequest(with:)(*(v0 + 40));
      v21 = *(v0 + 120);
      v22 = *(v0 + 96);
      v23 = v18;
      v24 = swift_task_alloc();
      *(v24 + 16) = v21;
      v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CipherML19AspireApiPIRRequestVG_AF0fG7RequestVs5NeverOTg5(closure #1 in RequestsManager.PIRContext.createBatchPIRQueries(_:)partial apply, v24, v23);

      outlined destroy of AspirePirKeywordPirParameters(v22, type metadata accessor for BatchPIRClient);
      goto LABEL_9;
    }
  }

  outlined destroy of AspirePirKeywordPirParameters(*(v0 + 120), type metadata accessor for RequestsManager.PIRContext);

  v19 = *(v0 + 8);

  return v19();
}

{

  v1 = *(v0 + 8);

  return v1();
}

char *RequestsManager.decryptPIRServiceResponse(serviceResponse:keyword:context:shardId:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a3;
  v28 = a5;
  v26 = a2;
  v8 = type metadata accessor for KeywordPIRClient(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v25 - v15;
  v17 = type metadata accessor for AspireApiPIRResponse(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = (&v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v16, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v20 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  if ((*(*(v20 - 8) + 48))(v16, 1, v20) != 1)
  {
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of AspirePirKeywordPirParameters(v16, type metadata accessor for AspireApiResponse.OneOf_Response);
      goto LABEL_5;
    }

    outlined init with take of AspirePirSymmetricPirClientConfig(v16, v19, type metadata accessor for AspireApiPIRResponse);
    if (a6)
    {
      v22 = v29;
      RequestsManager.PIRContext.constructPIRClient(shardId:)(v28, a6, v10);
      if (!v22)
      {
        v23 = v26;
        v16 = v27;
LABEL_12:
        outlined init with take of AspirePirSymmetricPirClientConfig(v10, v13, type metadata accessor for KeywordPIRClient);
        v16 = KeywordPIRClient.decryptPIRResponse(_:keyword:)(v19, v23, v16);
        outlined destroy of AspirePirKeywordPirParameters(v13, type metadata accessor for KeywordPIRClient);
        outlined destroy of AspirePirKeywordPirParameters(v19, type metadata accessor for AspireApiPIRResponse);
        return v16;
      }
    }

    else
    {
      v23 = v26;
      v16 = v27;
      v24 = v29;
      RequestsManager.PIRContext.constructPIRClient(keyword:)(v26, v27, v10);
      if (!v24)
      {
        goto LABEL_12;
      }
    }

    outlined destroy of AspirePirKeywordPirParameters(v19, type metadata accessor for AspireApiPIRResponse);
    return v16;
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
LABEL_5:
  v16 = type metadata accessor for CipherMLError(0);
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return v16;
}

uint64_t RequestsManager.decryptPIRResponse(encryptedResponse:keyword:context:shardId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[10] = a7;
  v8[11] = v7;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[4] = a1;
  v8[5] = a2;
  type metadata accessor for AspireApiPIRConfig(0);
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  type metadata accessor for SecretKey(0);
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  type metadata accessor for KeywordPIRClient(0);
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v8[18] = swift_task_alloc();
  type metadata accessor for AspireApiPIRResponse(0);
  v8[19] = swift_task_alloc();
  v8[20] = type metadata accessor for RequestsManager.PIRContext(0);
  v8[21] = swift_task_alloc();
  type metadata accessor for BinaryDecodingOptions();
  v8[22] = swift_task_alloc();
  v8[23] = type metadata accessor for AspireApiResponse(0);
  v8[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](RequestsManager.decryptPIRResponse(encryptedResponse:keyword:context:shardId:), 0, 0);
}

uint64_t RequestsManager.decryptPIRResponse(encryptedResponse:keyword:context:shardId:)()
{
  v1 = v0[4];
  v0[2] = v1;
  v2 = v0[5];
  v0[3] = v2;
  outlined copy of Data._Representation(v1, v2);
  BinaryDecodingOptions.init()();
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiResponse and conformance AspireApiResponse, type metadata accessor for AspireApiResponse, &protocol conformance descriptor for AspireApiResponse);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  v3 = swift_task_alloc();
  v0[25] = v3;
  *v3 = v0;
  v3[1] = RequestsManager.decryptPIRResponse(encryptedResponse:keyword:context:shardId:);
  v4 = v0[21];
  v5 = v0[8];

  return RequestsManager.loadContext(requestContext:allowingKeyRotation:)(v4, v5, 0);
}

{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = RequestsManager.decryptPIRResponse(encryptedResponse:keyword:context:shardId:);
  }

  else
  {
    v2 = RequestsManager.decryptPIRResponse(encryptedResponse:keyword:context:shardId:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 144);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(*(v0 + 192), v1, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v2 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = *(v0 + 144);
  if (v3 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 144), &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
LABEL_5:
    v5 = *(v0 + 192);
    v6 = *(v0 + 168);
    type metadata accessor for CipherMLError(0);
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_6:
    outlined destroy of AspirePirKeywordPirParameters(v6, type metadata accessor for RequestsManager.PIRContext);
    outlined destroy of AspirePirKeywordPirParameters(v5, type metadata accessor for AspireApiResponse);

    v7 = *(v0 + 8);

    return v7();
  }

  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of AspirePirKeywordPirParameters(v4, type metadata accessor for AspireApiResponse.OneOf_Response);
    goto LABEL_5;
  }

  v9 = *(v0 + 80);
  outlined init with take of AspirePirSymmetricPirClientConfig(v4, *(v0 + 152), type metadata accessor for AspireApiPIRResponse);
  v35 = *(v0 + 208);
  v10 = *(v0 + 168);
  if (v9)
  {
    v11 = *(v0 + 160);
    v12 = *(v0 + 120);
    v14 = *(v0 + 104);
    v13 = *(v0 + 112);
    v15 = *(v0 + 96);
    v16 = *(v0 + 80);
    v32 = *(v0 + 72);
    v33 = *(v0 + 128);
    outlined init with copy of UserIdentifier(v10 + v11[8], v12, type metadata accessor for SecretKey);
    outlined init with copy of UserIdentifier(v10 + v11[6], v14, type metadata accessor for AspireApiPIRConfig);
    v17 = (v10 + v11[7]);
    v18 = *v17;
    v19 = v17[1];
    outlined init with copy of UserIdentifier(v12, v13, type metadata accessor for SecretKey);
    outlined init with copy of UserIdentifier(v14, v15, type metadata accessor for AspireApiPIRConfig);
    outlined copy of Data._Representation(v18, v19);

    KeywordPIRClient.init(secretKey:config:configID:shardLabel:)(v13, v15, v18, v19, v32, v16, 0, v33);
    if (v35)
    {
      v5 = *(v0 + 192);
      v6 = *(v0 + 168);
      v20 = *(v0 + 152);
      v21 = *(v0 + 120);
      outlined destroy of AspirePirKeywordPirParameters(*(v0 + 104), type metadata accessor for AspireApiPIRConfig);
      outlined destroy of AspirePirKeywordPirParameters(v21, type metadata accessor for SecretKey);
      outlined destroy of AspirePirKeywordPirParameters(v20, type metadata accessor for AspireApiPIRResponse);
      goto LABEL_6;
    }

    v22 = *(v0 + 120);
    outlined destroy of AspirePirKeywordPirParameters(*(v0 + 104), type metadata accessor for AspireApiPIRConfig);
    outlined destroy of AspirePirKeywordPirParameters(v22, type metadata accessor for SecretKey);
  }

  else
  {
    RequestsManager.PIRContext.constructPIRClient(keyword:)(*(v0 + 48), *(v0 + 56), *(v0 + 128));
    if (v35)
    {
      v5 = *(v0 + 192);
      v6 = *(v0 + 168);
      outlined destroy of AspirePirKeywordPirParameters(*(v0 + 152), type metadata accessor for AspireApiPIRResponse);
      goto LABEL_6;
    }
  }

  v23 = *(v0 + 152);
  v25 = *(v0 + 48);
  v24 = *(v0 + 56);
  outlined init with take of AspirePirSymmetricPirClientConfig(*(v0 + 128), *(v0 + 136), type metadata accessor for KeywordPIRClient);
  v26 = KeywordPIRClient.decryptPIRResponse(_:keyword:)(v23, v25, v24);
  v27 = *(v0 + 192);
  v28 = *(v0 + 168);
  v29 = *(v0 + 152);
  v34 = v30;
  v36 = v26;
  outlined destroy of AspirePirKeywordPirParameters(*(v0 + 136), type metadata accessor for KeywordPIRClient);
  outlined destroy of AspirePirKeywordPirParameters(v29, type metadata accessor for AspireApiPIRResponse);
  outlined destroy of AspirePirKeywordPirParameters(v28, type metadata accessor for RequestsManager.PIRContext);
  outlined destroy of AspirePirKeywordPirParameters(v27, type metadata accessor for AspireApiResponse);

  v31 = *(v0 + 8);

  return v31(v36, v34);
}

{
  outlined destroy of AspirePirKeywordPirParameters(*(v0 + 192), type metadata accessor for AspireApiResponse);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t RequestsManager.decryptPIRBatchResponse(encryptedResponses:keywords:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a3;
  v5[7] = v4;
  v5[4] = a1;
  v5[5] = a2;
  type metadata accessor for BinaryDecodingOptions();
  v5[8] = swift_task_alloc();
  v5[9] = type metadata accessor for AspireApiResponses(0);
  v5[10] = swift_task_alloc();
  type metadata accessor for RequestsManager.PIRContext(0);
  v7 = swift_task_alloc();
  v5[11] = v7;
  v8 = swift_task_alloc();
  v5[12] = v8;
  *v8 = v5;
  v8[1] = RequestsManager.decryptPIRBatchResponse(encryptedResponses:keywords:context:);

  return RequestsManager.loadContext(requestContext:allowingKeyRotation:)(v7, a4, 0);
}

uint64_t RequestsManager.decryptPIRBatchResponse(encryptedResponses:keywords:context:)()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = RequestsManager.decryptPIRBatchResponse(encryptedResponses:keywords:context:);
  }

  else
  {
    v2 = RequestsManager.decryptPIRBatchResponse(encryptedResponses:keywords:context:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 32);
  *(v0 + 16) = v1;
  v2 = *(v0 + 104);
  v3 = *(v0 + 40);
  *(v0 + 24) = v3;
  outlined copy of Data._Representation(v1, v3);
  BinaryDecodingOptions.init()();
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiResponses and conformance AspireApiResponses, type metadata accessor for AspireApiResponses, &protocol conformance descriptor for AspireApiResponses);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v2)
  {
    v4 = *(v0 + 88);
LABEL_11:
    outlined destroy of AspirePirKeywordPirParameters(v4, type metadata accessor for RequestsManager.PIRContext);

    v19 = *(v0 + 8);

    return v19();
  }

  v5 = *(v0 + 48);
  v6 = **(v0 + 80);
  v7 = *(v5 + 16);
  if (*(v6 + 16) != v7)
  {
    if (one-time initialization token for daemon != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.daemon);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134349312;
      *(v17 + 4) = *(v6 + 16);

      *(v17 + 12) = 2050;
      *(v17 + 14) = v7;

      _os_log_impl(&dword_224E26000, v15, v16, "    encryptedResponses.count '%{public}ld'     does not equal keywords.count '%{public}ld'", v17, 0x16u);
      MEMORY[0x22AA61F40](v17, -1, -1);
    }

    else
    {
    }

    v18 = *(v0 + 80);
    v4 = *(v0 + 88);
    type metadata accessor for CipherMLError(0);
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined destroy of AspirePirKeywordPirParameters(v18, type metadata accessor for AspireApiResponses);
    goto LABEL_11;
  }

  v8 = *(v0 + 88);
  v9 = *(v0 + 56);
  v10 = swift_task_alloc();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;

  v11 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay8CipherML17AspireApiResponseVGSay10Foundation4DataVGG_ANSgsAE_pTg503_s8f4ML17hij14V10Foundation4l7VAFSgs5C33_pIgngozo_AC_AFtAGsAH_pIegnrzr_TRAjnQsAE_pIgngozo_Tf1cn_n(v6, v5, partial apply for closure #1 in RequestsManager.decryptPIRBatchResponse(encryptedResponses:keywords:context:), v10);
  v12 = *(v0 + 80);
  v13 = *(v0 + 88);
  v21 = v11;

  outlined destroy of AspirePirKeywordPirParameters(v12, type metadata accessor for AspireApiResponses);
  outlined destroy of AspirePirKeywordPirParameters(v13, type metadata accessor for RequestsManager.PIRContext);

  v22 = *(v0 + 8);

  return v22(v21);
}

{

  v1 = *(v0 + 8);

  return v1();
}

void *closure #1 in RequestsManager.decryptPIRBatchResponse(encryptedResponses:keywords:context:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v24[1] = a5;
  v8 = type metadata accessor for KeywordPIRClient(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v24 - v15;
  v17 = type metadata accessor for AspireApiPIRResponse(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = (v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v16, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v20 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  if ((*(*(v20 - 8) + 48))(v16, 1, v20) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
LABEL_5:
    v21 = type metadata accessor for CipherMLError(0);
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v21;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of AspirePirKeywordPirParameters(v16, type metadata accessor for AspireApiResponse.OneOf_Response);
    goto LABEL_5;
  }

  outlined init with take of AspirePirSymmetricPirClientConfig(v16, v19, type metadata accessor for AspireApiPIRResponse);
  v21 = a3;
  v23 = v24[3];
  RequestsManager.PIRContext.constructPIRClient(keyword:)(a2, a3, v10);
  if (!v23)
  {
    outlined init with take of AspirePirSymmetricPirClientConfig(v10, v13, type metadata accessor for KeywordPIRClient);
    v21 = KeywordPIRClient.decryptPIRResponse(_:keyword:)(v19, a2, a3);
    outlined destroy of AspirePirKeywordPirParameters(v13, type metadata accessor for KeywordPIRClient);
  }

  outlined destroy of AspirePirKeywordPirParameters(v19, type metadata accessor for AspireApiPIRResponse);
  return v21;
}

void closure #1 in RequestsManager.loadCache(requestContext:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = [*a1 useCase];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (*(a1 + 24))
  {

    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v9 = *(a1 + 41);
    v10 = *(a1 + 40);
    v11 = *(a1 + 32);
    v12 = *(a1 + 16);
    if (v10)
    {
      v13 = 10080;
    }

    else
    {
      v13 = v11;
    }

    v23 = v9 & 1;
    type metadata accessor for SqliteCache(0);
    swift_allocObject();
    v14 = SqliteCache.init(useCase:cacheElementCount:cacheEntryMinutesToLive:evictionPolicy:getCurrentDate:)(v6, v8, v12, v13, &v23, implicit closure #1 in default argument 4 of SqliteCache.init(useCase:cacheElementCount:cacheEntryMinutesToLive:evictionPolicy:getCurrentDate:), 0);
    if (v2)
    {
      if (one-time initialization token for daemon != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static Logger.daemon);
      v16 = v2;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138412290;
        v21 = v2;
        v22 = _swift_stdlib_bridgeErrorToNSError();
        *(v19 + 4) = v22;
        *v20 = v22;
        _os_log_impl(&dword_224E26000, v17, v18, "Failed to initialize cache: %@", v19, 0xCu);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x22AA61F40](v20, -1, -1);
        MEMORY[0x22AA61F40](v19, -1, -1);
      }

      else
      {
      }

      *a2 = 0;
      a2[1] = 0;
    }

    else
    {
      *a2 = v14;
      a2[1] = &protocol witness table for SqliteCache;
    }
  }
}

uint64_t specialized Coordinator.run(key:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[18] = a5;
  v6[19] = v5;
  v6[16] = a3;
  v6[17] = a4;
  v6[14] = a1;
  v6[15] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized Coordinator.run(key:_:), v5, 0);
}

uint64_t specialized Coordinator.run(key:_:)()
{
  v1 = v0[19];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[15];
    v3 = v0[16];

    v5 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v3);
    if (v6)
    {
      v7 = *(*(v2 + 56) + 8 * v5);
      v0[21] = v7;

      v8 = swift_task_alloc();
      v0[22] = v8;
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      *v8 = v0;
      v8[1] = specialized Coordinator.run(key:_:);
      v10 = v0[14];
      v11 = MEMORY[0x277D84950];
      v12 = MEMORY[0x277D84F78] + 8;
      v13 = v7;
      goto LABEL_6;
    }
  }

  v14 = v0[20];
  v16 = v0[17];
  v15 = v0[18];
  v18 = v0[15];
  v17 = v0[16];
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v16;
  v20[5] = v15;

  v21 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v14, &async function pointer to partial apply for specialized closure #1 in Coordinator.run(key:_:), v20);
  v0[24] = v21;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v21, v18, v17, isUniquelyReferenced_nonNull_native);

  *(v1 + 112) = v25;
  swift_endAccess();
  v23 = swift_task_alloc();
  v0[25] = v23;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v23 = v0;
  v23[1] = specialized Coordinator.run(key:_:);
  v10 = v0[14];
  v11 = MEMORY[0x277D84950];
  v12 = MEMORY[0x277D84F78] + 8;
  v13 = v21;
LABEL_6:

  return MEMORY[0x282200430](v10, v13, v12, v9, v11);
}

{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    v4 = specialized Coordinator.run(key:_:);
  }

  else
  {
    v4 = specialized Coordinator.run(key:_:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    v4 = specialized Coordinator.run(key:_:);
  }

  else
  {
    v4 = specialized Coordinator.run(key:_:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
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
  v2 = v0[15];
  v1 = v0[16];
  swift_beginAccess();

  specialized Dictionary.subscript.setter(0, v2, v1);
  swift_endAccess();

  v3 = v0[1];

  return v3();
}

{
  v2 = v0[15];
  v1 = v0[16];
  swift_beginAccess();

  specialized Dictionary.subscript.setter(0, v2, v1);
  swift_endAccess();

  v3 = v0[1];

  return v3();
}

uint64_t specialized closure #1 in Coordinator.run(key:_:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return v8(a1);
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v2 = type metadata accessor for AspireApiConfig(0);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS8CipherML15AspireApiConfigVGMd, &_ss18_DictionaryStorageCySS8CipherML15AspireApiConfigVGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        outlined init with copy of UserIdentifier(*(v4 + 56) + v26, v30, type metadata accessor for AspireApiConfig);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        outlined init with take of AspirePirSymmetricPirClientConfig(v25, *(v27 + 56) + v26, type metadata accessor for AspireApiConfig);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
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

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS8CipherML7UseCaseOGMd, &_ss18_DictionaryStorageCySS8CipherML7UseCaseOGMR);
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
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 <<= 6;
        v24 = *(v19 + v17 + 16);
        v23 = *(v19 + v17 + 32);
        v25 = *(v19 + v17);
        *&v34[9] = *(v19 + v17 + 41);
        v33 = v24;
        *v34 = v23;
        v32 = v25;
        v26 = (*(v4 + 48) + v18);
        *v26 = v22;
        v26[1] = v21;
        v27 = (*(v4 + 56) + v17);
        v28 = v32;
        v29 = v33;
        v30 = *v34;
        *(v27 + 41) = *&v34[9];
        v27[1] = v29;
        v27[2] = v30;
        *v27 = v28;

        result = outlined init with copy of UseCase(&v32, &v31);
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
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSaySSGGMd, &_ss18_DictionaryStorageCySSSaySSGGMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DataVAESgGMd, &_ss18_DictionaryStorageCy10Foundation4DataVAESgGMR);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        v19 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + v17) = v18;
        *(*(v4 + 56) + v17) = v19;
        outlined copy of Data._Representation(v18, *(&v18 + 1));
        result = outlined copy of Data?(v19, *(&v19 + 1));
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSScTyyts5Error_pGGMd, &_ss18_DictionaryStorageCySSScTyyts5Error_pGGMR);
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
  v2 = type metadata accessor for UseCaseGroup(0);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS8CipherML12UseCaseGroupVGMd, &_ss18_DictionaryStorageCySS8CipherML12UseCaseGroupVGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        outlined init with copy of UserIdentifier(*(v4 + 56) + v26, v30, type metadata accessor for UseCaseGroup);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        outlined init with take of AspirePirSymmetricPirClientConfig(v25, *(v27 + 56) + v26, type metadata accessor for UseCaseGroup);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
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
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSay8CipherML10TokenCacheC06CachedE0VGGMd, &_ss18_DictionaryStorageCySSSay8CipherML10TokenCacheC06CachedE0VGGMR);
}

{
  v1 = v0;
  v2 = type metadata accessor for AspireHeSerializedKeySwitchKey(0);
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt64V8CipherML027AspireHeSerializedKeySwitchI0VGMd, &_ss18_DictionaryStorageCys6UInt64V8CipherML027AspireHeSerializedKeySwitchI0VGMR);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v24 + 72) * v20;
        outlined init with copy of UserIdentifier(*(v5 + 56) + v22, v4, type metadata accessor for AspireHeSerializedKeySwitchKey);
        *(*(v7 + 48) + 8 * v20) = v21;
        result = outlined init with take of AspirePirSymmetricPirClientConfig(v4, *(v7 + 56) + v22, type metadata accessor for AspireHeSerializedKeySwitchKey);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for SecretKey(0);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DataV8CipherML9SecretKeyVGMd, &_ss18_DictionaryStorageCy10Foundation4DataV8CipherML9SecretKeyVGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        outlined init with copy of UserIdentifier(*(v4 + 56) + v26, v30, type metadata accessor for SecretKey);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        outlined init with take of AspirePirSymmetricPirClientConfig(v25, *(v27 + 56) + v26, type metadata accessor for SecretKey);
        result = outlined copy of Data._Representation(v23, v24);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
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
  v2 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DataV8CipherML27AspireHeEvaluationKeyConfigVGMd, &_ss18_DictionaryStorageCy10Foundation4DataV8CipherML27AspireHeEvaluationKeyConfigVGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        outlined init with copy of UserIdentifier(*(v4 + 56) + v26, v30, type metadata accessor for AspireHeEvaluationKeyConfig);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        outlined init with take of AspirePirSymmetricPirClientConfig(v25, *(v27 + 56) + v26, type metadata accessor for AspireHeEvaluationKeyConfig);
        result = outlined copy of Data._Representation(v23, v24);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
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

char *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v35 = type metadata accessor for Date();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DateVGMd, &_ss18_DictionaryStorageCySS10Foundation4DateVGMR);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
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

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
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

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for AspireApiConfig(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS8CipherML15AspireApiConfigVGMd, &_ss18_DictionaryStorageCySS8CipherML15AspireApiConfigVGMR);
  v40 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
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
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        outlined init with take of AspirePirSymmetricPirClientConfig(v28, v41, type metadata accessor for AspireApiConfig);
      }

      else
      {
        outlined init with copy of UserIdentifier(v28, v41, type metadata accessor for AspireApiConfig);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = outlined init with take of AspirePirSymmetricPirClientConfig(v41, *(v9 + 56) + v27 * v17, type metadata accessor for AspireApiConfig);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
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

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS8CipherML7UseCaseOGMd, &_ss18_DictionaryStorageCySS8CipherML7UseCaseOGMR);
  v38 = v4;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + (v21 << 6));
      if (v38)
      {
        v42 = *v25;
        v43 = v25[1];
        v44[0] = v25[2];
        v26 = *(v25 + 41);
      }

      else
      {
        v27 = *(v25 + 41);
        v28 = v25[2];
        v29 = *v25;
        v40 = v25[1];
        v41[0] = v28;
        v39 = v29;
        *(v41 + 9) = v27;

        outlined init with copy of UseCase(&v39, &v42);
        v42 = v39;
        v43 = v40;
        v44[0] = v41[0];
        v26 = *(v41 + 9);
      }

      *(v44 + 9) = v26;
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = (*(v7 + 56) + (v15 << 6));
      *v17 = v42;
      v17[1] = v43;
      v17[2] = v44[0];
      *(v17 + 41) = *(v44 + 9);
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSaySSGGMd, &_ss18_DictionaryStorageCySSSaySSGGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DataVAESgGMd, &_ss18_DictionaryStorageCy10Foundation4DataVAESgGMR);
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = *(*(v5 + 48) + v21);
      v31 = *(*(v5 + 56) + v21);
      v32 = v22;
      if ((v4 & 1) == 0)
      {
        outlined copy of Data._Representation(v22, *(&v22 + 1));
        outlined copy of Data?(v31, *(&v31 + 1));
      }

      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        v16 = v32;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      v16 = v32;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v17 = 16 * v15;
      *(*(v7 + 48) + v17) = v16;
      *(*(v7 + 56) + v17) = v31;
      ++*(v7 + 16);
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

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
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
  v45 = type metadata accessor for Date();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DateVGMd, &_ss18_DictionaryStorageCySS10Foundation4DateVGMR);
  v42 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
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
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSScTyyts5Error_pGGMd, &_ss18_DictionaryStorageCySSScTyyts5Error_pGGMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
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
  v5 = type metadata accessor for UseCaseGroup(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS8CipherML12UseCaseGroupVGMd, &_ss18_DictionaryStorageCySS8CipherML12UseCaseGroupVGMR);
  v40 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
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
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        outlined init with take of AspirePirSymmetricPirClientConfig(v28, v41, type metadata accessor for UseCaseGroup);
      }

      else
      {
        outlined init with copy of UserIdentifier(v28, v41, type metadata accessor for UseCaseGroup);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = outlined init with take of AspirePirSymmetricPirClientConfig(v41, *(v9 + 56) + v27 * v17, type metadata accessor for UseCaseGroup);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSay8CipherML10TokenCacheC06CachedE0VGGMd, &_ss18_DictionaryStorageCySSSay8CipherML10TokenCacheC06CachedE0VGGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for SecretKey(0);
  v37 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DataV8CipherML9SecretKeyVGMd, &_ss18_DictionaryStorageCy10Foundation4DataV8CipherML9SecretKeyVGMR);
  v38 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
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
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v37 + 72);
      v25 = *(v8 + 56) + v24 * v23;
      v39 = *(*(v8 + 48) + 16 * v23);
      v26 = *(&v39 + 1);
      if (v38)
      {
        outlined init with take of AspirePirSymmetricPirClientConfig(v25, v7, type metadata accessor for SecretKey);
      }

      else
      {
        outlined init with copy of UserIdentifier(v25, v7, type metadata accessor for SecretKey);
        outlined copy of Data._Representation(v39, v26);
      }

      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v19 = v39;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v19 = v39;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 16 * v18) = v19;
      result = outlined init with take of AspirePirSymmetricPirClientConfig(v7, *(v10 + 56) + v24 * v18, type metadata accessor for SecretKey);
      ++*(v10 + 16);
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero((v8 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
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
  v5 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v37 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DataV8CipherML27AspireHeEvaluationKeyConfigVGMd, &_ss18_DictionaryStorageCy10Foundation4DataV8CipherML27AspireHeEvaluationKeyConfigVGMR);
  v38 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
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
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v37 + 72);
      v25 = *(v8 + 56) + v24 * v23;
      v39 = *(*(v8 + 48) + 16 * v23);
      v26 = *(&v39 + 1);
      if (v38)
      {
        outlined init with take of AspirePirSymmetricPirClientConfig(v25, v7, type metadata accessor for AspireHeEvaluationKeyConfig);
      }

      else
      {
        outlined init with copy of UserIdentifier(v25, v7, type metadata accessor for AspireHeEvaluationKeyConfig);
        outlined copy of Data._Representation(v39, v26);
      }

      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v19 = v39;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v19 = v39;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 16 * v18) = v19;
      result = outlined init with take of AspirePirSymmetricPirClientConfig(v7, *(v10 + 56) + v24 * v18, type metadata accessor for AspireHeEvaluationKeyConfig);
      ++*(v10 + 16);
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero((v8 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}