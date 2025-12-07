uint64_t closure #1 in AllowListMigrationV1.AllowListFormat.convertToCurrent()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = type metadata accessor for HE.SecurityLevel();
  v76 = *(v3 - 8);
  v77 = v3;
  MEMORY[0x28223BE20](v3);
  v75 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for NetworkConfig(0);
  MEMORY[0x28223BE20](v72);
  v73 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v70 = &v60 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v60 - v9;
  v67 = type metadata accessor for URL();
  v11 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AllowListMigrationV1.NetworkManagerType(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for NetworkManagerType(0);
  MEMORY[0x28223BE20](v69);
  v71 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v60 - v19;
  MEMORY[0x28223BE20](v21);
  v78 = &v60 - v22;
  v23 = type metadata accessor for AllowListMigrationV1.UseCaseGroup(0);
  v24 = *(v23 + 36);
  v68 = a1;
  v25 = a1 + v24;
  outlined init with copy of AllowListMigrationV1.UseCaseGroup(a1 + v24, v16, type metadata accessor for AllowListMigrationV1.NetworkManagerType);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerAA4DataVSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerAA4DataVSg19authenticationTokenSb22privacyProxyFailClosedtMR);
  if (!(*(*(v26 - 1) + 48))(v16, 3, v26))
  {
    v65 = v26[12];
    v27 = &v16[v26[16]];
    v29 = *v27;
    v28 = *(v27 + 1);
    v61 = v29;
    v62 = v28;
    v63 = v16[v26[20]];
    v30 = v67;
    (*(v11 + 32))(v13, v16, v67);
    outlined init with take of URL?(&v16[v65], v10);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMR);
    v32 = v31[12];
    v64 = v13;
    v65 = v11;
    v33 = *(v11 + 16);
    v34 = v10;
    v33(v20, v13, v30);
    v35 = &v20[v32];
    v36 = v62;
    outlined init with copy of URL?(v10, v35);
    if (v36 >> 60 == 15)
    {
      countAndFlagsBits = 0;
      object = 0;
    }

    else
    {
      v39 = v61;
      v40 = Data.base64EncodedString(options:)(0);
      countAndFlagsBits = v40._countAndFlagsBits;
      object = v40._object;
      outlined consume of Data?(v39, v36);
    }

    v41 = &v20[v31[16]];
    v42 = v31[20];
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v34, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v65 + 8))(v64, v67);
    *v41 = countAndFlagsBits;
    v41[1] = object;
    v20[v42] = v63;
  }

  swift_storeEnumTagMultiPayload();
  v43 = v78;
  outlined init with take of UseCaseGroup(v20, v78, type metadata accessor for NetworkManagerType);
  v44 = v70;
  outlined init with copy of AllowListMigrationV1.UseCaseGroup(v43, v70, type metadata accessor for NetworkManagerType);
  v45 = (v25 + *(type metadata accessor for AllowListMigrationV1.NetworkConfig(0) + 20));
  v46 = *v45;
  v47 = v45[1];
  v48 = v73;
  v49 = (v44 + *(v72 + 20));
  *v49 = v46;
  v49[1] = v47;
  v50 = *(v68 + *(v23 + 32));
  outlined init with copy of AllowListMigrationV1.UseCaseGroup(v44, v48, type metadata accessor for NetworkConfig);
  v51 = v75;
  v52 = v76;
  v53 = v77;
  (*(v76 + 104))(v75, *MEMORY[0x277D02EE8], v77);
  v54 = v71;
  swift_storeEnumTagMultiPayload();

  specialized static NetworkManagerType.== infix(_:_:)(v48, v54);
  outlined destroy of AllowListMigrationV1.UseCaseGroup(v54, type metadata accessor for NetworkManagerType);
  v55 = v74;
  specialized static UseCaseGroup.validate(useCases:networkConfig:keyExpirationMinutes:keyRotationBeforeExpirationMinutes:securityLevel:)(v50, v48, 43200, 0);
  if (v55)
  {

    (*(v52 + 8))(v51, v53);
    outlined destroy of AllowListMigrationV1.UseCaseGroup(v48, type metadata accessor for NetworkConfig);
    outlined destroy of AllowListMigrationV1.UseCaseGroup(v44, type metadata accessor for NetworkConfig);
    return outlined destroy of AllowListMigrationV1.UseCaseGroup(v78, type metadata accessor for NetworkManagerType);
  }

  else
  {
    outlined destroy of AllowListMigrationV1.UseCaseGroup(v44, type metadata accessor for NetworkConfig);
    outlined destroy of AllowListMigrationV1.UseCaseGroup(v78, type metadata accessor for NetworkManagerType);
    v57 = type metadata accessor for UseCaseGroup(0);
    v58 = v51;
    v59 = v66;
    *(v66 + v57[5]) = 43200;
    *(v59 + v57[6]) = 0;
    *(v59 + v57[7]) = 0;
    *(v59 + v57[8]) = v50;
    (*(v52 + 32))(v59, v58, v53);
    return outlined init with take of UseCaseGroup(v48, v59 + v57[9], type metadata accessor for NetworkConfig);
  }
}

unint64_t lazy protocol witness table accessor for type AllowListMigrationV1.AllowListFormat.CodingKeys and conformance AllowListMigrationV1.AllowListFormat.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.AllowListFormat.CodingKeys and conformance AllowListMigrationV1.AllowListFormat.CodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.AllowListFormat.CodingKeys and conformance AllowListMigrationV1.AllowListFormat.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.AllowListFormat.CodingKeys and conformance AllowListMigrationV1.AllowListFormat.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.AllowListFormat.CodingKeys and conformance AllowListMigrationV1.AllowListFormat.CodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.AllowListFormat.CodingKeys and conformance AllowListMigrationV1.AllowListFormat.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.AllowListFormat.CodingKeys and conformance AllowListMigrationV1.AllowListFormat.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.AllowListFormat.CodingKeys and conformance AllowListMigrationV1.AllowListFormat.CodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.AllowListFormat.CodingKeys and conformance AllowListMigrationV1.AllowListFormat.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.AllowListFormat.CodingKeys and conformance AllowListMigrationV1.AllowListFormat.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.AllowListFormat.CodingKeys and conformance AllowListMigrationV1.AllowListFormat.CodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.AllowListFormat.CodingKeys and conformance AllowListMigrationV1.AllowListFormat.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.AllowListFormat.CodingKeys and conformance AllowListMigrationV1.AllowListFormat.CodingKeys);
  }

  return result;
}

uint64_t _s16CryptoKitPrivate2HEO13SecurityLevelOAESEAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t specialized static AllowListMigrationV1.NetworkManagerType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
  MEMORY[0x28223BE20](v74);
  v75 = &v59[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v59[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v76 = &v59[-v9];
  MEMORY[0x28223BE20](v10);
  v12 = &v59[-v11];
  v13 = type metadata accessor for URL();
  v77 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v73 = &v59[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v59[-v16];
  v18 = type metadata accessor for AllowListMigrationV1.NetworkManagerType(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v59[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML20AllowListMigrationV1O18NetworkManagerTypeO_AEtMd, &_s8CipherML20AllowListMigrationV1O18NetworkManagerTypeO_AEtMR);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v59[-v22];
  v25 = &v59[*(v24 + 56) - v22];
  outlined init with copy of AllowListMigrationV1.UseCaseGroup(a1, &v59[-v22], type metadata accessor for AllowListMigrationV1.NetworkManagerType);
  outlined init with copy of AllowListMigrationV1.UseCaseGroup(a2, v25, type metadata accessor for AllowListMigrationV1.NetworkManagerType);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerAA4DataVSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerAA4DataVSg19authenticationTokenSb22privacyProxyFailClosedtMR);
  v27 = *(*(v26 - 1) + 48);
  v28 = v27(v23, 3, v26);
  if (v28 > 1)
  {
    if (v28 == 2)
    {
      if (v27(v25, 3, v26) != 2)
      {
        goto LABEL_11;
      }
    }

    else if (v27(v25, 3, v26) != 3)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (v28)
  {
    if (v27(v25, 3, v26) != 1)
    {
      goto LABEL_11;
    }

LABEL_9:
    outlined destroy of AllowListMigrationV1.UseCaseGroup(v23, type metadata accessor for AllowListMigrationV1.NetworkManagerType);
    return 1;
  }

  v67 = v7;
  v69 = v12;
  v70 = v17;
  v72 = v13;
  outlined init with copy of AllowListMigrationV1.UseCaseGroup(v23, v20, type metadata accessor for AllowListMigrationV1.NetworkManagerType);
  v71 = v26[12];
  v29 = v26[16];
  v30 = *&v20[v29];
  v31 = *&v20[v29 + 8];
  v32 = v26[20];
  v68 = v20[v32];
  if (v27(v25, 3, v26))
  {
    outlined consume of Data?(v30, v31);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(&v20[v71], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v77 + 8))(v20, v72);
LABEL_11:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v23, &_s8CipherML20AllowListMigrationV1O18NetworkManagerTypeO_AEtMd, &_s8CipherML20AllowListMigrationV1O18NetworkManagerTypeO_AEtMR);
    return 0;
  }

  v64 = v30;
  v65 = v31;
  v34 = *&v25[v29 + 8];
  v66 = *&v25[v29];
  v60 = v25[v32];
  v35 = v77;
  v36 = *(v77 + 32);
  v37 = v70;
  v38 = v72;
  v62 = v77 + 32;
  v63 = v34;
  v61 = v36;
  v36(v70, v25, v72);
  v39 = v71;
  v40 = v69;
  outlined init with take of URL?(&v20[v71], v69);
  v41 = v76;
  outlined init with take of URL?(&v25[v39], v76);
  LOBYTE(v39) = static URL.== infix(_:_:)();
  v42 = *(v35 + 8);
  v42(v20, v38);
  if ((v39 & 1) == 0)
  {
    outlined consume of Data?(v66, v63);
    outlined consume of Data?(v64, v65);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v41, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v40, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v51 = v37;
LABEL_23:
    v42(v51, v38);
    goto LABEL_24;
  }

  v43 = v75;
  v44 = *(v74 + 48);
  outlined init with copy of URL?(v40, v75);
  outlined init with copy of URL?(v41, &v43[v44]);
  v45 = *(v35 + 48);
  v46 = v40;
  if (v45(v43, 1, v38) == 1)
  {
    v47 = v45(&v43[v44], 1, v38);
    v48 = v68;
    if (v47 == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v43, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v50 = v65;
      v49 = v66;
      goto LABEL_26;
    }

    outlined consume of Data?(v64, v65);
    outlined consume of Data?(v66, v63);
    goto LABEL_21;
  }

  v52 = v67;
  outlined init with copy of URL?(v43, v67);
  v53 = v45(&v43[v44], 1, v38);
  v48 = v68;
  if (v53 == 1)
  {
    outlined consume of Data?(v64, v65);
    outlined consume of Data?(v66, v63);
    v42(v52, v38);
LABEL_21:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v43, &_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
LABEL_22:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v76, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v46, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v51 = v70;
    goto LABEL_23;
  }

  v54 = v73;
  v61(v73, &v43[v44], v38);
  _s16CryptoKitPrivate2HEO13SecurityLevelOAESEAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v55 = dispatch thunk of static Equatable.== infix(_:_:)();
  v42(v54, v38);
  v42(v52, v38);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v43, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v50 = v65;
  v49 = v66;
  if ((v55 & 1) == 0)
  {
    outlined consume of Data?(v64, v65);
    outlined consume of Data?(v49, v63);
    goto LABEL_22;
  }

LABEL_26:
  v56 = v64;
  if (v50 >> 60 != 15)
  {
    v57 = v63;
    if (v63 >> 60 == 15)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v76, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v46, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v42(v70, v38);
      goto LABEL_31;
    }

    outlined copy of Data?(v64, v50);
    outlined copy of Data?(v49, v57);
    LODWORD(v77) = specialized static Data.== infix(_:_:)(v56, v50, v49, v57);
    outlined consume of Data?(v49, v57);
    outlined consume of Data?(v49, v57);
    outlined consume of Data?(v56, v50);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v76, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v48 = v68;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v46, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v42(v70, v38);
    outlined consume of Data?(v56, v50);
    if (v77)
    {
      goto LABEL_34;
    }

LABEL_24:
    outlined destroy of AllowListMigrationV1.UseCaseGroup(v23, type metadata accessor for AllowListMigrationV1.NetworkManagerType);
    return 0;
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v76, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v46, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v42(v70, v38);
  v57 = v63;
  if (v63 >> 60 != 15)
  {
LABEL_31:
    outlined consume of Data?(v56, v50);
    outlined consume of Data?(v66, v57);
    goto LABEL_24;
  }

  outlined consume of Data?(v56, v50);
LABEL_34:
  v58 = v48 ^ v60;
  outlined destroy of AllowListMigrationV1.UseCaseGroup(v23, type metadata accessor for AllowListMigrationV1.NetworkManagerType);
  return v58 ^ 1u;
}

uint64_t specialized static AllowListMigrationV1.NetworkConfig.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (specialized static AllowListMigrationV1.NetworkManagerType.== infix(_:_:)(a1, a2))
  {
    v4 = *(type metadata accessor for AllowListMigrationV1.NetworkConfig(0) + 20);
    v5 = (a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = (a2 + v4);
    v8 = v7[1];
    if (v6)
    {
      if (v8)
      {
        v9 = *v5 == *v7 && v6 == v8;
        if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t specialized AllowListMigrationV1.AllowListFormat.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AllowListMigrationV1.AllowListFormat.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized AllowListMigrationV1.AllowListFormat.init(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML20AllowListMigrationV1O0fG6FormatV10CodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMd, &_ss22KeyedDecodingContainerVy8CipherML20AllowListMigrationV1O0fG6FormatV10CodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AllowListMigrationV1.AllowListFormat.CodingKeys and conformance AllowListMigrationV1.AllowListFormat.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy16CryptoKitPrivate2HEO13SecurityLevelOSayAC10RlweParamsOGGMd, &_sSDy16CryptoKitPrivate2HEO13SecurityLevelOSayAC10RlweParamsOGGMR);
  v9 = 0;
  lazy protocol witness table accessor for type [HE.SecurityLevel : [HE.RlweParams]] and conformance <> [A : B]();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v7 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16CryptoKitPrivate2HEO6SchemeOGMd, &_sSay16CryptoKitPrivate2HEO6SchemeOGMR);
  v9 = 1;
  lazy protocol witness table accessor for type [HE.Scheme] and conformance <A> [A](&lazy protocol witness table cache variable for type [HE.Scheme] and conformance <A> [A], &lazy protocol witness table cache variable for type HE.Scheme and conformance HE.Scheme, MEMORY[0x277D02F70], MEMORY[0x277D83978]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS8CipherML20AllowListMigrationV1O12UseCaseGroupVGMd, &_sSDySS8CipherML20AllowListMigrationV1O12UseCaseGroupVGMR);
  v9 = 2;
  lazy protocol witness table accessor for type [String : AllowListMigrationV1.UseCaseGroup] and conformance <> [A : B]();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

unint64_t specialized AllowListMigrationV1.UseCaseGroup.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AllowListMigrationV1.UseCaseGroup.CodingKeys.init(rawValue:), v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t outlined init with copy of AllowListMigrationV1.UseCaseGroup(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of UseCaseGroup(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.CodingKeys and conformance AllowListMigrationV1.NetworkManagerType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.CodingKeys and conformance AllowListMigrationV1.NetworkManagerType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.CodingKeys and conformance AllowListMigrationV1.NetworkManagerType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.CodingKeys and conformance AllowListMigrationV1.NetworkManagerType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.CodingKeys and conformance AllowListMigrationV1.NetworkManagerType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.CodingKeys and conformance AllowListMigrationV1.NetworkManagerType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.CodingKeys and conformance AllowListMigrationV1.NetworkManagerType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.CodingKeys and conformance AllowListMigrationV1.NetworkManagerType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.CodingKeys and conformance AllowListMigrationV1.NetworkManagerType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.CodingKeys and conformance AllowListMigrationV1.NetworkManagerType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.CodingKeys and conformance AllowListMigrationV1.NetworkManagerType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.CodingKeys and conformance AllowListMigrationV1.NetworkManagerType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.CodingKeys and conformance AllowListMigrationV1.NetworkManagerType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys()
{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys()
{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys);
  }

  return result;
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.AspireCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AspireCodingKeys()
{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.AspireCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AspireCodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.AspireCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AspireCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.AspireCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AspireCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.AspireCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AspireCodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.AspireCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AspireCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.AspireCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AspireCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.AspireCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AspireCodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.AspireCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AspireCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.AspireCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AspireCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.AspireCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AspireCodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.AspireCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AspireCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.AspireCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AspireCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.AmsCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AmsCodingKeys()
{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.AmsCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AmsCodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.AmsCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AmsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.AmsCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AmsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.AmsCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AmsCodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.AmsCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AmsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.AmsCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AmsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.AmsCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AmsCodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.AmsCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AmsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType.AmsCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AmsCodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type AllowListMigrationV1.NetworkConfig.CodingKeys and conformance AllowListMigrationV1.NetworkConfig.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkConfig.CodingKeys and conformance AllowListMigrationV1.NetworkConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkConfig.CodingKeys and conformance AllowListMigrationV1.NetworkConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkConfig.CodingKeys and conformance AllowListMigrationV1.NetworkConfig.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkConfig.CodingKeys and conformance AllowListMigrationV1.NetworkConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkConfig.CodingKeys and conformance AllowListMigrationV1.NetworkConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkConfig.CodingKeys and conformance AllowListMigrationV1.NetworkConfig.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkConfig.CodingKeys and conformance AllowListMigrationV1.NetworkConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkConfig.CodingKeys and conformance AllowListMigrationV1.NetworkConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkConfig.CodingKeys and conformance AllowListMigrationV1.NetworkConfig.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkConfig.CodingKeys and conformance AllowListMigrationV1.NetworkConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkConfig.CodingKeys and conformance AllowListMigrationV1.NetworkConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkConfig.CodingKeys and conformance AllowListMigrationV1.NetworkConfig.CodingKeys);
  }

  return result;
}

uint64_t outlined destroy of AllowListMigrationV1.UseCaseGroup(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type AllowListMigrationV1.UseCaseGroup.CodingKeys and conformance AllowListMigrationV1.UseCaseGroup.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.UseCaseGroup.CodingKeys and conformance AllowListMigrationV1.UseCaseGroup.CodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.UseCaseGroup.CodingKeys and conformance AllowListMigrationV1.UseCaseGroup.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.UseCaseGroup.CodingKeys and conformance AllowListMigrationV1.UseCaseGroup.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.UseCaseGroup.CodingKeys and conformance AllowListMigrationV1.UseCaseGroup.CodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.UseCaseGroup.CodingKeys and conformance AllowListMigrationV1.UseCaseGroup.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.UseCaseGroup.CodingKeys and conformance AllowListMigrationV1.UseCaseGroup.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.UseCaseGroup.CodingKeys and conformance AllowListMigrationV1.UseCaseGroup.CodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.UseCaseGroup.CodingKeys and conformance AllowListMigrationV1.UseCaseGroup.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.UseCaseGroup.CodingKeys and conformance AllowListMigrationV1.UseCaseGroup.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.UseCaseGroup.CodingKeys and conformance AllowListMigrationV1.UseCaseGroup.CodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.UseCaseGroup.CodingKeys and conformance AllowListMigrationV1.UseCaseGroup.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.UseCaseGroup.CodingKeys and conformance AllowListMigrationV1.UseCaseGroup.CodingKeys);
  }

  return result;
}

void type metadata completion function for AllowListMigrationV1.UseCaseGroup(uint64_t a1)
{
  type metadata accessor for HE.SecurityLevel();
  if (v1 <= 0x3F)
  {
    type metadata accessor for [String : UseCase]();
    if (v2 <= 0x3F)
    {
      type metadata accessor for AllowListMigrationV1.NetworkConfig(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata completion function for AllowListMigrationV1.NetworkManagerType(uint64_t a1)
{
  type metadata accessor for (endpoint: URL, issuer: URL?, authenticationToken: Data?, privacyProxyFailClosed: Bool)(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void type metadata accessor for (endpoint: URL, issuer: URL?, authenticationToken: Data?, privacyProxyFailClosed: Bool)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (endpoint: URL, issuer: URL?, authenticationToken: Data?, privacyProxyFailClosed: Bool))
  {
    MEMORY[0x28223BE20](a1);
    type metadata accessor for URL();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (endpoint: URL, issuer: URL?, authenticationToken: Data?, privacyProxyFailClosed: Bool));
    }
  }
}

void type metadata completion function for AllowListMigrationV1.NetworkConfig(uint64_t a1)
{
  type metadata accessor for AllowListMigrationV1.NetworkManagerType(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t specialized AllowListMigrationV1.NetworkManagerType.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7564641 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657269707361 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E696C66666FLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73757361676570 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t SqliteCache.__allocating_init(for:pirConfig:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  v9 = *(a3 + 32);
  v10 = *(a3 + 33);

  if (v7 == 1)
  {

    return 0;
  }

  else
  {
    if (v9)
    {
      v12 = 10080;
    }

    else
    {
      v12 = v8;
    }

    v13 = v10 & 1;
    return (*(v3 + 144))(a1, a2, v6, v12, &v13, implicit closure #1 in default argument 4 of SqliteCache.init(useCase:cacheElementCount:cacheEntryMinutesToLive:evictionPolicy:getCurrentDate:), 0);
  }
}

uint64_t one-time initialization function for keyword()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMR);
  __swift_allocate_value_buffer(v0, static SqliteCache.Column.keyword);
  __swift_project_value_buffer(v0, static SqliteCache.Column.keyword);
  lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type Expression<Data> and conformance Expression<A>, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMR, MEMORY[0x277D6AF08]);
  return ExpressionType.init(_:)();
}

uint64_t SqliteCache.Column.keyword.unsafeMutableAddressor()
{
  if (one-time initialization token for keyword != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMR);

  return __swift_project_value_buffer(v0, static SqliteCache.Column.keyword);
}

uint64_t static SqliteCache.Column.keyword.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for keyword != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMR);
  v3 = __swift_project_value_buffer(v2, static SqliteCache.Column.keyword);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t one-time initialization function for value()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVy10Foundation4DataVSgGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVSgGMR);
  __swift_allocate_value_buffer(v0, static SqliteCache.Column.value);
  __swift_project_value_buffer(v0, static SqliteCache.Column.value);
  lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type Expression<Data?> and conformance Expression<A>, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVSgGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVSgGMR, MEMORY[0x277D6AF08]);
  return ExpressionType.init(_:)();
}

uint64_t SqliteCache.Column.value.unsafeMutableAddressor()
{
  if (one-time initialization token for value != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVy10Foundation4DataVSgGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVSgGMR);

  return __swift_project_value_buffer(v0, static SqliteCache.Column.value);
}

uint64_t static SqliteCache.Column.value.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for value != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVy10Foundation4DataVSgGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVSgGMR);
  v3 = __swift_project_value_buffer(v2, static SqliteCache.Column.value);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t one-time initialization function for accessTime()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySdGMd, &_s11SwiftSQLite10ExpressionVySdGMR);
  __swift_allocate_value_buffer(v0, static SqliteCache.Column.accessTime);
  __swift_project_value_buffer(v0, static SqliteCache.Column.accessTime);
  lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type Expression<Double> and conformance Expression<A>, &_s11SwiftSQLite10ExpressionVySdGMd, &_s11SwiftSQLite10ExpressionVySdGMR, MEMORY[0x277D6AF08]);
  return ExpressionType.init(_:)();
}

uint64_t SqliteCache.Column.accessTime.unsafeMutableAddressor()
{
  if (one-time initialization token for accessTime != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySdGMd, &_s11SwiftSQLite10ExpressionVySdGMR);

  return __swift_project_value_buffer(v0, static SqliteCache.Column.accessTime);
}

uint64_t static SqliteCache.Column.accessTime.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for accessTime != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySdGMd, &_s11SwiftSQLite10ExpressionVySdGMR);
  v3 = __swift_project_value_buffer(v2, static SqliteCache.Column.accessTime);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t one-time initialization function for expirationTime()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySdGMd, &_s11SwiftSQLite10ExpressionVySdGMR);
  __swift_allocate_value_buffer(v0, static SqliteCache.Column.expirationTime);
  __swift_project_value_buffer(v0, static SqliteCache.Column.expirationTime);
  lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type Expression<Double> and conformance Expression<A>, &_s11SwiftSQLite10ExpressionVySdGMd, &_s11SwiftSQLite10ExpressionVySdGMR, MEMORY[0x277D6AF08]);
  return ExpressionType.init(_:)();
}

uint64_t SqliteCache.Column.expirationTime.unsafeMutableAddressor()
{
  if (one-time initialization token for expirationTime != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySdGMd, &_s11SwiftSQLite10ExpressionVySdGMR);

  return __swift_project_value_buffer(v0, static SqliteCache.Column.expirationTime);
}

uint64_t static SqliteCache.Column.expirationTime.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for expirationTime != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySdGMd, &_s11SwiftSQLite10ExpressionVySdGMR);
  v3 = __swift_project_value_buffer(v2, static SqliteCache.Column.expirationTime);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t SqliteCache.cachedResponses.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8CipherML11SqliteCache_cachedResponses;
  v4 = type metadata accessor for Table();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SqliteCache.currentTime.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8CipherML11SqliteCache_currentTime);

  return v1;
}

uint64_t SqliteCache.__allocating_init(useCase:cacheElementCount:cacheEntryMinutesToLive:evictionPolicy:getCurrentDate:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v14 = swift_allocObject();
  SqliteCache.init(useCase:cacheElementCount:cacheEntryMinutesToLive:evictionPolicy:getCurrentDate:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t SqliteCache.init(useCase:cacheElementCount:cacheEntryMinutesToLive:evictionPolicy:getCurrentDate:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v74 = a7;
  v69 = a4;
  v70 = a6;
  v67 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySbGSgMd, &_s11SwiftSQLite10ExpressionVySbGSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v61 - v11;
  v13 = type metadata accessor for Date();
  v68 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Table();
  v71 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = *a5;
  v19 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v72;
  v21 = static SqliteCache.createTable(useCase:schemaVersion:)(v19, a1, a2, 1uLL);
  if (!v20)
  {
    v22 = v21;
    v64 = v15;
    v65 = v13;
    v66 = v12;
    v63 = v18;
    v72 = v16;

    v23 = Connection.columnNames(tableName:)(0x6552646568636143, 0xEF7365736E6F7073);
    v61 = v19;
    v62 = v22;
    strcpy(v75, "expirationTime");
    HIBYTE(v75[1]) = -18;
    MEMORY[0x28223BE20](v23);
    *(&v61 - 2) = v75;
    v27 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v61 - 4), v26);

    if ((v27 & 1) == 0)
    {
      v29 = v64;
      v70(v28);
      Date.timeIntervalSinceReferenceDate.getter();
      v31 = v30;
      (*(v68 + 8))(v29, v65);
      v32 = v69 * 60.0 + v31;
      if (one-time initialization token for expirationTime != -1)
      {
        swift_once();
      }

      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySdGMd, &_s11SwiftSQLite10ExpressionVySdGMR);
      __swift_project_value_buffer(v33, static SqliteCache.Column.expirationTime);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySbGMd, &_s11SwiftSQLite10ExpressionVySbGMR);
      v35 = v66;
      (*(*(v34 - 8) + 56))(v66, 1, 1, v34);
      *v75 = v32;
      v36 = v61;
      v37 = Table.addColumn<A>(_:check:defaultValue:)();
      v39 = v38;
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v35, &_s11SwiftSQLite10ExpressionVySbGSgMd, &_s11SwiftSQLite10ExpressionVySbGSgMR);
      v40._countAndFlagsBits = v37;
      v40._object = v39;
      Connection.execute(_:)(v40);
      if (v41)
      {
        (*(v71 + 8))(v36, v72);

        goto LABEL_4;
      }
    }

    v75[0] = 0;
    v75[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(87);
    MEMORY[0x22AA60A80](0x20455441445055, 0xE700000000000000);
    MEMORY[0x22AA60A80](0x6552646568636143, 0xEF7365736E6F7073);
    MEMORY[0x22AA60A80](0x205445530ALL, 0xE500000000000000);
    if (one-time initialization token for accessTime != -1)
    {
      swift_once();
    }

    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySdGMd, &_s11SwiftSQLite10ExpressionVySdGMR);
    __swift_project_value_buffer(v42, static SqliteCache.Column.accessTime);
    lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type Expression<Double> and conformance Expression<A>, &_s11SwiftSQLite10ExpressionVySdGMd, &_s11SwiftSQLite10ExpressionVySdGMR, MEMORY[0x277D6AF10]);
    countAndFlagsBits = Expressible.asSQL()()._countAndFlagsBits;
    MEMORY[0x22AA60A80](countAndFlagsBits);

    MEMORY[0x22AA60A80](0xD000000000000016, 0x80000002250369B0);
    if (one-time initialization token for keyword != -1)
    {
      swift_once();
    }

    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMR);
    __swift_project_value_buffer(v44, static SqliteCache.Column.keyword);
    lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type Expression<Data> and conformance Expression<A>, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMR, MEMORY[0x277D6AF10]);
    v45 = Expressible.asSQL()()._countAndFlagsBits;
    MEMORY[0x22AA60A80](v45);

    MEMORY[0x22AA60A80](0xD00000000000001FLL, 0x80000002250369D0);
    if (one-time initialization token for expirationTime != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v42, static SqliteCache.Column.expirationTime);
    v46 = Expressible.asSQL()()._countAndFlagsBits;
    MEMORY[0x22AA60A80](v46);

    MEMORY[0x22AA60A80](0x494E525554455220, 0xEB0000000020474ELL);
    v47 = v62;
    if (one-time initialization token for value != -1)
    {
      swift_once();
    }

    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVy10Foundation4DataVSgGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVSgGMR);
    __swift_project_value_buffer(v48, static SqliteCache.Column.value);
    lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type Expression<Data?> and conformance Expression<A>, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVSgGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVSgGMR, MEMORY[0x277D6AF10]);
    v49 = Expressible.asSQL()()._countAndFlagsBits;
    MEMORY[0x22AA60A80](v49);

    MEMORY[0x22AA60A80](59, 0xE100000000000000);
    v50 = Connection.prepare(_:_:)();
    v51 = v74;
    v52 = v50;

    if (Connection.userVersion.getter() == 1)
    {
      v53 = v72;
      v24 = v73;
      v55 = v70;
      v54 = v71;
      v56 = v67;
      v57 = v63;
    }

    else
    {
      Connection.setUserVersion(_:)(1);
      v55 = v70;
      v56 = v67;
      v57 = v63;
      if (v58)
      {
        (*(v71 + 8))(v61, v72);

        goto LABEL_4;
      }

      v53 = v72;
      v24 = v73;
      v54 = v71;
    }

    (*(v54 + 32))(v24 + OBJC_IVAR____TtC8CipherML11SqliteCache_cachedResponses, v61, v53);
    *(v24 + OBJC_IVAR____TtC8CipherML11SqliteCache_maximumCount) = v56;
    *(v24 + OBJC_IVAR____TtC8CipherML11SqliteCache_minutesToLive) = v69;
    *(v24 + OBJC_IVAR____TtC8CipherML11SqliteCache_db) = v47;
    *(v24 + OBJC_IVAR____TtC8CipherML11SqliteCache_updateLastAccessAndGetValueForKeyword) = v52;
    *(v24 + OBJC_IVAR____TtC8CipherML11SqliteCache_evictionPolicy) = v57;
    v59 = swift_allocObject();
    *(v59 + 16) = v55;
    *(v59 + 24) = v51;
    v60 = (v24 + OBJC_IVAR____TtC8CipherML11SqliteCache_currentTime);
    *v60 = partial apply for closure #1 in SqliteCache.init(useCase:cacheElementCount:cacheEntryMinutesToLive:evictionPolicy:getCurrentDate:);
    v60[1] = v59;
    return v24;
  }

LABEL_4:

  v24 = v73;
  type metadata accessor for SqliteCache(0);
  swift_deallocPartialClassInstance();
  return v24;
}

uint64_t static SqliteCache.createTable(useCase:schemaVersion:)(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  v8 = type metadata accessor for URL.DirectoryHint();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v53 = &v45 - v18;
  if (a4 <= 1)
  {
    v48 = a4;
    v49 = a1;
    if (one-time initialization token for url != -1)
    {
      v44 = v17;
      swift_once();
      v17 = v44;
    }

    v23 = v17;
    __swift_project_value_buffer(v17, static CacheDirectory.url);
    v52._countAndFlagsBits = a2;
    v52._object = a3;
    (*(v9 + 104))(v11, *MEMORY[0x277CC91D8], v8);
    lazy protocol witness table accessor for type String and conformance String();
    URL.appending<A>(component:directoryHint:)();
    (*(v9 + 8))(v11, v8);
    v24 = v53;
    URL.appendingPathExtension(_:)();
    v27 = *(v13 + 8);
    v25 = v13 + 8;
    v26 = v27;
    v27(v15, v23);
    type metadata accessor for Connection();
    URL.path(percentEncoded:)(0);
    v28 = v50;
    v29 = Connection.__allocating_init(_:readonly:)();
    if (v28)
    {
      v26(v24, v23);
    }

    else
    {
      v8 = v29;
      v46 = v26;
      v47 = v25;
      v50 = v23;
      v30 = v49;
      v31 = MEMORY[0x22AA5FA90](0x6552646568636143, 0xEF7365736E6F7073, 0, 0);
      MEMORY[0x28223BE20](v31);
      *(&v45 - 2) = v48;
      v51._countAndFlagsBits = Table.create(temporary:ifNotExists:withoutRowid:block:)();
      v51._object = v32;

      MEMORY[0x22AA60A80](2619, 0xE200000000000000);

      v52 = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SwiftSQLite11Expressible_pGMd, &_ss23_ContiguousArrayStorageCy11SwiftSQLite11Expressible_pGMR);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_225022960;
      if (one-time initialization token for accessTime != -1)
      {
        swift_once();
      }

      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySdGMd, &_s11SwiftSQLite10ExpressionVySdGMR);
      v35 = __swift_project_value_buffer(v34, static SqliteCache.Column.accessTime);
      *(v33 + 56) = v34;
      *(v33 + 64) = lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type Expression<Double> and conformance Expression<A>, &_s11SwiftSQLite10ExpressionVySdGMd, &_s11SwiftSQLite10ExpressionVySdGMR, MEMORY[0x277D6AF10]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v33 + 32));
      (*(*(v34 - 8) + 16))(boxed_opaque_existential_1, v35, v34);
      v37 = Table.createIndex(_:unique:ifNotExists:)();
      v39 = v38;

      v51._countAndFlagsBits = v37;
      v51._object = v39;

      MEMORY[0x22AA60A80](2619, 0xE200000000000000);

      MEMORY[0x22AA60A80](v51._countAndFlagsBits, v51._object);

      MEMORY[0x22AA60A80](0xD000000000000018, 0x80000002250369F0);
      Connection.execute(_:)(v52);
      v40 = v53;
      if (v41)
      {

        v42 = type metadata accessor for Table();
        (*(*(v42 - 8) + 8))(v30, v42);
        v46(v40, v50);
      }

      else
      {
        v46(v53, v50);
      }
    }
  }

  else
  {
    if (one-time initialization token for daemon != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.daemon);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      *(v22 + 4) = a4;
      _os_log_impl(&dword_224E26000, v20, v21, "Invalid schemaVersion %ld", v22, 0xCu);
      MEMORY[0x22AA61F40](v22, -1, -1);
    }

    type metadata accessor for CipherMLError(0);
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_4(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v8;
}

uint64_t type metadata accessor for SqliteCache(uint64_t a1)
{
  result = type metadata singleton initialization cache for SqliteCache;
  if (!type metadata singleton initialization cache for SqliteCache)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *Connection.columnNames(tableName:)(uint64_t a1, uint64_t a2)
{
  Connection.prepare(_:_:)();
  if (v2)
  {
    return v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SwiftSQLite7Binding_pSgGMd, &_ss23_ContiguousArrayStorageCy11SwiftSQLite7Binding_pSgGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_225022960;
  v7 = MEMORY[0x277D6AF68];
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = v7;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;

  v9 = Statement.run(_:)();

  v22[0] = v9;
  type metadata accessor for Statement();
  v10 = MEMORY[0x277D6AF48];
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_4(&lazy protocol witness table cache variable for type Statement and conformance Statement, MEMORY[0x277D6AF48], MEMORY[0x277D6AF50]);

  dispatch thunk of Sequence.makeIterator()();
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_4(&lazy protocol witness table cache variable for type Statement and conformance Statement, v10, MEMORY[0x277D6AF58]);
  result = dispatch thunk of IteratorProtocol.next()();
  v11 = v24;
  if (!v24)
  {
    v3 = MEMORY[0x277D84F90];
LABEL_18:

    return v3;
  }

  v3 = MEMORY[0x277D84F90];
  while (*(v11 + 16))
  {
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v11 + 32, v22, &_s11SwiftSQLite7Binding_pSgMd, &_s11SwiftSQLite7Binding_pSgMR);

    if (v22[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite7Binding_pMd, &_s11SwiftSQLite7Binding_pMR);
      if (swift_dynamicCast())
      {
        v12 = v23;
        if (v23)
        {
          v21 = v22[5];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
          }

          v14 = *(v3 + 2);
          v13 = *(v3 + 3);
          v15 = v14 + 1;
          if (v14 >= v13 >> 1)
          {
            v20 = v14 + 1;
            v17 = v3;
            v18 = *(v3 + 2);
            v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v17);
            v15 = v20;
            v14 = v18;
            v3 = v19;
          }

          *(v3 + 2) = v15;
          v16 = &v3[16 * v14];
          *(v16 + 4) = v21;
          *(v16 + 5) = v12;
        }
      }
    }

    else
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v22, &_s11SwiftSQLite7Binding_pSgMd, &_s11SwiftSQLite7Binding_pSgMR);
    }

    result = dispatch thunk of IteratorProtocol.next()();
    v11 = v24;
    if (!v24)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

void *Connection.userVersion.getter()
{
  result = Connection.scalar(_:_:)();
  if (!v0)
  {
    if (v4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite7Binding_pMd, &_s11SwiftSQLite7Binding_pMR);
      if (swift_dynamicCast())
      {
        return v2;
      }
    }

    else
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v3, &_s11SwiftSQLite7Binding_pSgMd, &_s11SwiftSQLite7Binding_pSgMR);
    }

    type metadata accessor for CipherMLError(0);
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_4(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Connection.setUserVersion(_:)(Swift::Int a1)
{
  _StringGuts.grow(_:)(24);

  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x22AA60A80](v2);

  Connection.run(_:_:)();

  if (!v1)
  {
  }
}

double closure #1 in SqliteCache.init(useCase:cacheElementCount:cacheEntryMinutesToLive:evictionPolicy:getCurrentDate:)(uint64_t (*a1)(double))
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v4);
  Date.timeIntervalSinceReferenceDate.getter();
  v8 = v7;
  (*(v3 + 8))(v6, v2);
  return v8;
}

uint64_t closure #1 in static SqliteCache.createTable(useCase:schemaVersion:)(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySdGSgMd, &_s11SwiftSQLite10ExpressionVySdGSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v21 = &v20 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVy10Foundation4DataVGSgMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVGSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySbGSgMd, &_s11SwiftSQLite10ExpressionVySbGSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - v8;
  if (one-time initialization token for keyword != -1)
  {
    swift_once();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMR);
  __swift_project_value_buffer(v10, static SqliteCache.Column.keyword);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySbGMd, &_s11SwiftSQLite10ExpressionVySbGMR);
  v12 = *(*(v11 - 8) + 56);
  v12(v9, 1, 1, v11);
  v13 = *(*(v10 - 8) + 56);
  v13(v6, 1, 1, v10);
  TableBuilder.column<A>(_:primaryKey:check:defaultValue:)();
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVGSgMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVGSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s11SwiftSQLite10ExpressionVySbGSgMd, &_s11SwiftSQLite10ExpressionVySbGSgMR);
  if (one-time initialization token for value != -1)
  {
    swift_once();
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVy10Foundation4DataVSgGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVSgGMR);
  __swift_project_value_buffer(v14, static SqliteCache.Column.value);
  v12(v9, 1, 1, v11);
  v13(v6, 1, 1, v10);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVGSgMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVGSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s11SwiftSQLite10ExpressionVySbGSgMd, &_s11SwiftSQLite10ExpressionVySbGSgMR);
  if (one-time initialization token for accessTime != -1)
  {
    swift_once();
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySdGMd, &_s11SwiftSQLite10ExpressionVySdGMR);
  __swift_project_value_buffer(v15, static SqliteCache.Column.accessTime);
  v12(v9, 1, 1, v11);
  v16 = *(*(v15 - 8) + 56);
  v17 = v21;
  v16(v21, 1, 1, v15);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v17, &_s11SwiftSQLite10ExpressionVySdGSgMd, &_s11SwiftSQLite10ExpressionVySdGSgMR);
  result = outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s11SwiftSQLite10ExpressionVySbGSgMd, &_s11SwiftSQLite10ExpressionVySbGSgMR);
  if (v20 >= 1)
  {
    if (one-time initialization token for expirationTime != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v15, static SqliteCache.Column.expirationTime);
    v12(v9, 1, 1, v11);
    v19 = v21;
    v16(v21, 1, 1, v15);
    TableBuilder.column<A>(_:unique:check:defaultValue:)();
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v19, &_s11SwiftSQLite10ExpressionVySdGSgMd, &_s11SwiftSQLite10ExpressionVySdGSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s11SwiftSQLite10ExpressionVySbGSgMd, &_s11SwiftSQLite10ExpressionVySbGSgMR);
  }

  return result;
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SqliteCache.removeExpiredValues()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySbGMd, &_s11SwiftSQLite10ExpressionVySbGMR);
  v19 = *(v1 - 8);
  v20 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = v17 - v2;
  v4 = type metadata accessor for Table();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Delete();
  v8 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + OBJC_IVAR____TtC8CipherML11SqliteCache_db);
  v17[0] = OBJC_IVAR____TtC8CipherML11SqliteCache_cachedResponses;
  v17[1] = v11;
  if (one-time initialization token for expirationTime != -1)
  {
    swift_once();
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySdGMd, &_s11SwiftSQLite10ExpressionVySdGMR);
  v13 = __swift_project_value_buffer(v12, static SqliteCache.Column.expirationTime);
  v21 = (*(v0 + OBJC_IVAR____TtC8CipherML11SqliteCache_currentTime))(v13, v14);
  < infix<A>(_:_:)();
  QueryType.filter(_:)();
  (*(v19 + 8))(v3, v20);
  QueryType.delete()();
  (*(v5 + 8))(v7, v4);
  v15 = Connection.run(_:)();
  (*(v8 + 8))(v10, v18);
  return v15;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SqliteCache.removeAllValues()()
{
  v0 = type metadata accessor for Delete();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Table();
  QueryType.delete()();
  Connection.run(_:)();
  (*(v1 + 8))(v3, v0);
}

uint64_t SqliteCache.evictValues(count:)(uint64_t a1)
{
  v20 = a1;
  v2 = type metadata accessor for Table();
  v23 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v19 = v17 - v6;
  v7 = type metadata accessor for Delete();
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *(v1 + OBJC_IVAR____TtC8CipherML11SqliteCache_db);
  v18 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SwiftSQLite11Expressible_pGMd, &_ss23_ContiguousArrayStorageCy11SwiftSQLite11Expressible_pGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_225022960;
  if (one-time initialization token for accessTime != -1)
  {
    swift_once();
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySdGMd, &_s11SwiftSQLite10ExpressionVySdGMR);
  v12 = __swift_project_value_buffer(v11, static SqliteCache.Column.accessTime);
  *(v10 + 56) = v11;
  *(v10 + 64) = lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type Expression<Double> and conformance Expression<A>, &_s11SwiftSQLite10ExpressionVySdGMd, &_s11SwiftSQLite10ExpressionVySdGMR, MEMORY[0x277D6AF10]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v10 + 32));
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v12, v11);
  MEMORY[0x22AA5FB00](v10, v2, MEMORY[0x277D6AF40]);

  v14 = v19;
  QueryType.limit(_:)();
  v15 = *(v23 + 8);
  v15(v4, v2);
  QueryType.delete()();
  v15(v14, v2);
  Connection.run(_:)();
  return (*(v21 + 8))(v9, v22);
}

NSObject *SqliteCache.getValue(keyword:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = type metadata accessor for OSSignpostID();
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OSSignposter();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for daemon != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, static OSSignposter.daemon);
  v13 = *(v9 + 16);
  v28 = v8;
  v13(v11, v12, v8);
  static OSSignpostID.exclusive.getter();
  v14 = swift_slowAlloc();
  v27 = swift_slowAlloc();
  v34 = v27;
  *v14 = 136380675;
  static String.Encoding.utf8.getter();
  v15 = String.init(data:encoding:)();
  if (!v16)
  {
    v15 = Data.hexString.getter(a1, a2);
  }

  v17 = a1;
  v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v34);

  *(v14 + 4) = v18;
  v19 = OSSignposter.logHandle.getter();
  v20 = static os_signpost_type_t.begin.getter();
  v21 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&dword_224E26000, v19, v20, v21, "LRUCache: getValue", "%{private}s", v14, 0xCu);
  v22 = v30;
  closure #1 in SqliteCache.getValue(keyword:)(v29, v17, a2, &v33);
  if (v22)
  {
  }

  else
  {
    v23 = static os_signpost_type_t.end.getter();
    v24 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_224E26000, v19, v23, v24, "LRUCache: getValue", "%{private}s", v14, 0xCu);

    v19 = v33;
    v25 = v27;
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x22AA61F40](v25, -1, -1);
    MEMORY[0x22AA61F40](v14, -1, -1);
  }

  (*(v31 + 8))(v7, v32);
  (*(v9 + 8))(v11, v28);
  return v19;
}

uint64_t closure #1 in SqliteCache.getValue(keyword:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X8>)
{
  *(&v100 + 1) = a3;
  *&v100 = a2;
  v91 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite4BlobVSgMd, &_s11SwiftSQLite4BlobVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v86 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v97 = &v82 - v8;
  v9 = type metadata accessor for Cursor();
  v85 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v84 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Blob();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v83 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v82 - v15;
  v90 = type metadata accessor for Row();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v87 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite3RowVSgMd, &_s11SwiftSQLite3RowVSgMR);
  MEMORY[0x28223BE20](v18 - 8);
  v88 = &v82 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySbGMd, &_s11SwiftSQLite10ExpressionVySbGMR);
  v94 = *(v20 - 8);
  v95 = v20;
  MEMORY[0x28223BE20](v20);
  v93 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v82 - v23;
  MEMORY[0x28223BE20](v25);
  v92 = &v82 - v26;
  v99 = type metadata accessor for Table();
  v96 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v28 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v82 - v30;
  v33 = MEMORY[0x28223BE20](v32);
  v98 = &v82 - v34;
  v35 = (*&a1[OBJC_IVAR____TtC8CipherML11SqliteCache_currentTime])(v33);
  if ((a1[OBJC_IVAR____TtC8CipherML11SqliteCache_evictionPolicy] & 1) == 0)
  {
    v97 = a1;
    if (one-time initialization token for value != -1)
    {
      swift_once();
    }

    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVy10Foundation4DataVSgGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVSgGMR);
    v46 = __swift_project_value_buffer(v45, static SqliteCache.Column.value);
    v105 = v45;
    v106 = lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type Expression<Data?> and conformance Expression<A>, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVSgGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVSgGMR, MEMORY[0x277D6AF10]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v104);
    v48 = *(*(v45 - 8) + 16);
    v86 = v46;
    v48(boxed_opaque_existential_1, v46, v45);
    SchemaType.select(_:_:)();
    __swift_destroy_boxed_opaque_existential_0(&v104);
    if (one-time initialization token for keyword != -1)
    {
      swift_once();
    }

    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMR);
    __swift_project_value_buffer(v49, static SqliteCache.Column.keyword);
    v104 = v100;
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_4(&lazy protocol witness table cache variable for type Blob and conformance Blob, MEMORY[0x277D6AF28], MEMORY[0x277D6AF30]);
    == infix<A>(_:_:)();
    *&v104 = v35;
    if (one-time initialization token for expirationTime != -1)
    {
      swift_once();
    }

    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySdGMd, &_s11SwiftSQLite10ExpressionVySdGMR);
    __swift_project_value_buffer(v50, static SqliteCache.Column.expirationTime);
    v51 = v93;
    < infix<A>(_:_:)();
    v52 = v92;
    && infix(_:_:)();
    v53 = v95;
    v54 = *(v94 + 8);
    v54(v51, v95);
    v54(v24, v53);
    v55 = v31;
    v56 = v99;
    QueryType.filter(_:)();
    v54(v52, v53);
    v57 = v96;
    v58 = *(v96 + 8);
    v58(v28, v56);
    v59 = v98;
    v60 = MEMORY[0x277D6AF40];
    QueryType.limit(_:)();
    v58(v55, v56);
    v105 = v56;
    v106 = v60;
    v61 = __swift_allocate_boxed_opaque_existential_1(&v104);
    (*(v57 + 16))(v61, v59, v56);
    v62 = v101;
    Connection.prepare(_:)();
    if (v62)
    {
      v58(v59, v56);
      return __swift_destroy_boxed_opaque_existential_0(&v104);
    }

    __swift_destroy_boxed_opaque_existential_0(&v104);
    dispatch thunk of _AnySequenceBox._makeIterator()();

    v68 = v88;
    dispatch thunk of _AnyIteratorBoxBase.next()();

    v69 = v89;
    v70 = v90;
    if ((*(v89 + 48))(v68, 1, v90) != 1)
    {
      v72 = v87;
      (*(v69 + 32))(v87, v68, v70);
      Row.get<A>(_:)();

      (*(v69 + 8))(v72, v70);
      result = (v58)(v98, v56);
      v71 = v104;
      goto LABEL_19;
    }

    v58(v98, v56);

LABEL_18:
    v71 = xmmword_225027C80;
LABEL_19:
    *v91 = v71;
    return result;
  }

  v36 = v9;
  Data.datatypeValue.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SwiftSQLite7Binding_pSgGMd, &_ss23_ContiguousArrayStorageCy11SwiftSQLite7Binding_pSgGMR);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_225022920;
  v38 = MEMORY[0x277D6AF78];
  *(v37 + 56) = MEMORY[0x277D839F8];
  *(v37 + 64) = v38;
  *(v37 + 32) = v35;
  v39 = MEMORY[0x277D6AF20];
  *(v37 + 96) = v11;
  *(v37 + 104) = v39;
  v40 = __swift_allocate_boxed_opaque_existential_1((v37 + 72));
  (*(v12 + 16))(v40, v16, v11);
  Statement.bind(_:)();

  v41 = Statement.step()();
  v42 = v12;
  if (v43)
  {
    (*(v12 + 8))(v16, v11);
  }

  v63 = v41;

  if (!v63)
  {
    result = (*(v12 + 8))(v16, v11);
    goto LABEL_18;
  }

  v64 = v84;
  Statement.row.getter();
  Cursor.subscript.getter();
  (*(v85 + 8))(v64, v36);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(&v104, v102, &_s11SwiftSQLite7Binding_pSgMd, &_s11SwiftSQLite7Binding_pSgMR);
  v65 = (v12 + 56);
  if (v103)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite7Binding_pMd, &_s11SwiftSQLite7Binding_pMR);
    v66 = v97;
    v67 = swift_dynamicCast();
    (*v65)(v66, v67 ^ 1u, 1, v11);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v102, &_s11SwiftSQLite7Binding_pSgMd, &_s11SwiftSQLite7Binding_pSgMR);
    v66 = v97;
    (*v65)(v97, 1, 1, v11);
  }

  v73 = v86;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v66, v86, &_s11SwiftSQLite4BlobVSgMd, &_s11SwiftSQLite4BlobVSgMR);
  if ((*(v42 + 48))(v73, 1, v11) == 1)
  {
    v74 = 0;
    v75 = 0xF000000000000000;
  }

  else
  {
    v76 = v83;
    (*(v42 + 32))(v83, v73, v11);
    v77 = Blob.bytes.getter();
    v101 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v77);
    v75 = v78;

    v79 = v76;
    v74 = v101;
    (*(v42 + 8))(v79, v11);
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v66, &_s11SwiftSQLite4BlobVSgMd, &_s11SwiftSQLite4BlobVSgMR);
  Statement.step()();
  if (v80)
  {
    outlined consume of Data?(v74, v75);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(&v104, &_s11SwiftSQLite7Binding_pSgMd, &_s11SwiftSQLite7Binding_pSgMR);
    return (*(v42 + 8))(v16, v11);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(&v104, &_s11SwiftSQLite7Binding_pSgMd, &_s11SwiftSQLite7Binding_pSgMR);
    result = (*(v42 + 8))(v16, v11);
    v81 = v91;
    *v91 = v74;
    *(v81 + 1) = v75;
  }

  return result;
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SqliteCache.removeValues(for:)(Swift::OpaquePointer a1)
{
  v2 = type metadata accessor for Delete();
  v17 = *(v2 - 8);
  v18 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySbGMd, &_s11SwiftSQLite10ExpressionVySbGMR);
  v5 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v7 = v14 - v6;
  v8 = type metadata accessor for Table();
  v16 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = OBJC_IVAR____TtC8CipherML11SqliteCache_cachedResponses;
  rawValue = a1._rawValue;
  if (one-time initialization token for keyword != -1)
  {
    swift_once();
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMR);
  __swift_project_value_buffer(v11, static SqliteCache.Column.keyword);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
  lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type [Data] and conformance [A], &_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR, MEMORY[0x277D83988]);
  Collection<>.contains(_:)();
  QueryType.filter(_:)();
  (*(v5 + 8))(v7, v15);
  QueryType.delete()();
  v12 = Connection.run(_:)();
  (*(v17 + 8))(v4, v18);
  (*(v16 + 8))(v10, v8);
  return v12;
}

uint64_t SqliteCache.setValue(keyword:newValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v71 = *&a3;
  v54 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite11ScalarQueryVySiGMd, &_s11SwiftSQLite11ScalarQueryVySiGMR);
  v51 = *(v8 - 8);
  v52 = v8;
  MEMORY[0x28223BE20](v8);
  v50 = v49 - v9;
  v10 = type metadata accessor for Insert();
  v63 = *(v10 - 8);
  v64 = v10;
  MEMORY[0x28223BE20](v10);
  v53 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v49 - v13;
  v15 = *(v5 + OBJC_IVAR____TtC8CipherML11SqliteCache_evictionPolicy);
  v16 = *(v5 + OBJC_IVAR____TtC8CipherML11SqliteCache_db);
  v59 = OBJC_IVAR____TtC8CipherML11SqliteCache_cachedResponses;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SwiftSQLite6SetterVGMd, &_ss23_ContiguousArrayStorageCy11SwiftSQLite6SetterVGMR);
  v18 = *(type metadata accessor for Setter() - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v55 = *(v18 + 80);
  v56 = v17;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_225022950;
  v57 = v19;
  v58 = v20;
  v60 = a4;
  v61 = v16;
  if (v15)
  {
    if (one-time initialization token for keyword != -1)
    {
      swift_once();
    }

    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMR);
    v22 = __swift_project_value_buffer(v21, static SqliteCache.Column.keyword);
    v67 = *&a1;
    v68 = v54;
    v54 = v22;
    <- infix<A>(_:_:)();
    if (one-time initialization token for value != -1)
    {
      swift_once();
    }

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVy10Foundation4DataVSgGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVSgGMR);
    v24 = __swift_project_value_buffer(v23, static SqliteCache.Column.value);
    v67 = v71;
    v68 = a4;
    v49[2] = v24;
    <- infix<A>(_:_:)();
    if (one-time initialization token for accessTime != -1)
    {
      swift_once();
    }

    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySdGMd, &_s11SwiftSQLite10ExpressionVySdGMR);
    v26 = __swift_project_value_buffer(v25, static SqliteCache.Column.accessTime);
    v49[0] = *(v5 + OBJC_IVAR____TtC8CipherML11SqliteCache_currentTime);
    v67 = (v49[0])();
    v49[1] = v26;
    <- infix<A>(_:_:)();
    if (one-time initialization token for expirationTime != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v25, static SqliteCache.Column.expirationTime);
    v67 = (*(*v5 + 136))();
    <- infix<A>(_:_:)();
    v69 = v21;
    v70 = lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type Expression<Data> and conformance Expression<A>, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMR, MEMORY[0x277D6AF10]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v67);
    (*(*(v21 - 8) + 16))(boxed_opaque_existential_1, v54, v21);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_225022920;
    v65 = v71;
    v66 = v60;
    v29 = <- infix<A>(_:_:)();
    v65 = (v49[0])(v29);
    <- infix<A>(_:_:)();
    v30 = type metadata accessor for Table();
    v31 = v53;
    MEMORY[0x22AA5FB30](v58, &v67, v28, v30, MEMORY[0x277D6AF40]);

    __swift_destroy_boxed_opaque_existential_0(&v67);
    v32 = v62;
    Connection.run(_:)();
    v33 = v32;
    if (v32)
    {
      return (*(v63 + 8))(v31, v64);
    }

    v37 = v31;
  }

  else
  {
    if (one-time initialization token for keyword != -1)
    {
      swift_once();
    }

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMR);
    v36 = __swift_project_value_buffer(v35, static SqliteCache.Column.keyword);
    v67 = *&a1;
    v68 = v54;
    v54 = v36;
    <- infix<A>(_:_:)();
    v37 = v14;
    if (one-time initialization token for value != -1)
    {
      swift_once();
    }

    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVy10Foundation4DataVSgGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVSgGMR);
    v39 = __swift_project_value_buffer(v38, static SqliteCache.Column.value);
    v67 = v71;
    v68 = a4;
    v53 = v39;
    <- infix<A>(_:_:)();
    if (one-time initialization token for accessTime != -1)
    {
      swift_once();
    }

    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite10ExpressionVySdGMd, &_s11SwiftSQLite10ExpressionVySdGMR);
    __swift_project_value_buffer(v40, static SqliteCache.Column.accessTime);
    v67 = (*(v5 + OBJC_IVAR____TtC8CipherML11SqliteCache_currentTime))();
    <- infix<A>(_:_:)();
    if (one-time initialization token for expirationTime != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v40, static SqliteCache.Column.expirationTime);
    v67 = (*(*v5 + 136))();
    <- infix<A>(_:_:)();
    v69 = v35;
    v70 = lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type Expression<Data> and conformance Expression<A>, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMd, &_s11SwiftSQLite10ExpressionVy10Foundation4DataVGMR, MEMORY[0x277D6AF10]);
    v41 = __swift_allocate_boxed_opaque_existential_1(&v67);
    (*(*(v35 - 8) + 16))(v41, v54, v35);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_225022960;
    v65 = v71;
    v66 = v60;
    <- infix<A>(_:_:)();
    v43 = type metadata accessor for Table();
    MEMORY[0x22AA5FB30](v58, &v67, v42, v43, MEMORY[0x277D6AF40]);

    __swift_destroy_boxed_opaque_existential_0(&v67);
    v44 = v62;
    Connection.run(_:)();
    v33 = v44;
    if (v44)
    {
      return (*(v63 + 8))(v14, v64);
    }
  }

  (*(v63 + 8))(v37, v64);
  type metadata accessor for Table();
  v45 = v50;
  SchemaType.count.getter();
  Connection.scalar<A>(_:)();
  result = (*(v51 + 8))(v45, v52);
  if (!v33)
  {
    v46 = v67;
    v47 = *(v5 + OBJC_IVAR____TtC8CipherML11SqliteCache_maximumCount);
    if (*&v47 < *&v67)
    {
      result = (*(*v5 + 152))(result);
      v48 = *&v46 - result;
      if (__OFSUB__(*&v46, result))
      {
        __break(1u);
      }

      else
      {
        if (*&v47 >= v48)
        {
          return result;
        }

        result = v48 - *&v47;
        if (!__OFSUB__(v48, *&v47))
        {
          return SqliteCache.evictValues(count:)(result);
        }
      }

      __break(1u);
    }
  }

  return result;
}

CipherML::CacheStatus __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SqliteCache.status()()
{
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SwiftSQLite11ScalarQueryVySiGMd, &_s11SwiftSQLite11ScalarQueryVySiGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - v6;
  v8 = *(v1 + OBJC_IVAR____TtC8CipherML11SqliteCache_maximumCount);
  type metadata accessor for Table();
  SchemaType.count.getter();
  Connection.scalar<A>(_:)();
  v9 = (*(v5 + 8))(v7, v4);
  if (!v2)
  {
    v13 = v16[1];
    v14 = *(v1 + OBJC_IVAR____TtC8CipherML11SqliteCache_minutesToLive);
    v15 = *(v1 + OBJC_IVAR____TtC8CipherML11SqliteCache_evictionPolicy);
    *v3 = v8;
    *(v3 + 8) = v13;
    *(v3 + 16) = v14;
    *(v3 + 24) = v15;
  }

  result.entryMinutesToLive = v11;
  result.elementCount = v10;
  result.cacheCapacity = v9;
  result.evictionPolicy = v12;
  return result;
}

uint64_t key path setter for SqliteCache.subscript(_:) : SqliteCache(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  v6 = a1[1];
  v7 = *(**a2 + 232);
  outlined copy of Data._Representation(*a3, v4);
  outlined copy of Data??(v5, v6);
  return v7(v5, v6, v3, v4);
}

uint64_t SqliteCache.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 == 11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_225022960;
    *(v9 + 32) = a3;
    *(v9 + 40) = a4;
    v10 = *(*v4 + 184);
    outlined copy of Data._Representation(a3, a4);
    v10(v9);

    return outlined consume of Data._Representation(a3, a4);
  }

  else
  {
    SqliteCache.setValue(keyword:newValue:)(a3, a4, a1, a2);
    outlined consume of Data._Representation(a3, a4);

    return outlined consume of Data??(a1, a2);
  }
}

void (*SqliteCache.subscript.modify(void *a1, uint64_t a2, unint64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  *v7 = SqliteCache.subscript.getter(a2, a3);
  v8[1] = v9;
  return SqliteCache.subscript.modify;
}

void SqliteCache.subscript.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v5 = **a1;
  v4 = (*a1)[1];
  outlined copy of Data._Representation((*a1)[2], (*a1)[3]);
  v6 = v3[3];
  v7 = v3[2];
  if (a2)
  {
    outlined copy of Data??(v5, v4);
    SqliteCache.subscript.setter(v5, v4, v7, v6);
    outlined consume of Data??(*v3, v3[1]);
  }

  else
  {
    SqliteCache.subscript.setter(v5, v4, v3[2], v3[3]);
  }

  free(v3);
}

uint64_t SqliteCache.deinit()
{
  v1 = OBJC_IVAR____TtC8CipherML11SqliteCache_cachedResponses;
  v2 = type metadata accessor for Table();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t SqliteCache.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC8CipherML11SqliteCache_cachedResponses;
  v2 = type metadata accessor for Table();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t (*protocol witness for KeyValueCache.subscript.modify in conformance SqliteCache(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 240))();
  return protocol witness for KeyValueCache.subscript.modify in conformance SqliteCache;
}

void protocol witness for KeyValueCache.subscript.modify in conformance SqliteCache(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySo18CMLSimilarityScoreCGGMd, &_ss23_ContiguousArrayStorageCySaySo18CMLSimilarityScoreCGGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18CMLSimilarityScoreCGMd, &_sSaySo18CMLSimilarityScoreCGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataV7keyword_SSSg7shardIdtGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataV7keyword_SSSg7shardIdtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV7keyword_SSSg7shardIdtMd, &_s10Foundation4DataV7keyword_SSSg7shardIdtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS4name_Says5UInt8VG16existingConfigIdtGMd, &_ss23_ContiguousArrayStorageCySS4name_Says5UInt8VG16existingConfigIdtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS4name_Says5UInt8VG16existingConfigIdtMd, &_sSS4name_Says5UInt8VG16existingConfigIdtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy8CipherML18AspireApiKeyStatusVGMd, &_ss23_ContiguousArrayStorageCy8CipherML18AspireApiKeyStatusVGMR, type metadata accessor for AspireApiKeyStatus);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy8CipherML16AspireApiRequestVGMd, &_ss23_ContiguousArrayStorageCy8CipherML16AspireApiRequestVGMR, type metadata accessor for AspireApiRequest);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy8CipherML10TokenCacheC06CachedF0VGMd, &_ss23_ContiguousArrayStorageCy8CipherML10TokenCacheC06CachedF0VGMR, type metadata accessor for TokenCache.CachedToken);
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

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = v7;
      v9 = *v6++;
      v12 = v9;
      outlined copy of Data._Representation(v9, *(&v9 + 1));
      v10 = a1(&v12);
      outlined consume of Data._Representation(v12, *(&v12 + 1));
      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v7 = v8 - 1;
    }

    while (v8);
  }

  return v4 & 1;
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

uint64_t outlined copy of Data??(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return outlined copy of Data?(result, a2);
  }

  return result;
}

uint64_t type metadata completion function for SqliteCache(uint64_t a1)
{
  result = type metadata accessor for Table();
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

uint64_t _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t generateEvaluationKey(secretKey:config:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a1;
  v40 = a3;
  v43 = type metadata accessor for HE.SerializedSecretKey();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HE.EvaluationKeyConfig();
  MEMORY[0x28223BE20](v5 - 8);
  v45 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HE.SerializedEvaluationKey();
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x28223BE20](v7);
  v44 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v37 - v10;
  v12 = type metadata accessor for AspireHeEncryptionParameters(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for HE.Scheme();
  v49 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v37 - v19;
  v21 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  outlined init with copy of AspireHeEncryptionParameters?(a2 + *(v21 + 28), v11);
  v22 = *(v13 + 48);
  if (v22(v11, 1, v12) == 1)
  {
    *v15 = 0;
    *(v15 + 1) = 0;
    *(v15 + 2) = MEMORY[0x277D84F90];
    *(v15 + 3) = 0;
    v15[32] = 1;
    *(v15 + 5) = 0;
    v15[48] = 1;
    *(v15 + 7) = 0;
    v15[64] = 1;
    UnknownStorage.init()();
    if (v22(v11, 1, v12) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v11, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    }
  }

  else
  {
    _s8CipherML28AspireHeEncryptionParametersVWObTm_0(v11, v15, type metadata accessor for AspireHeEncryptionParameters);
  }

  v23 = *(v15 + 7);
  v24 = v15[64];
  outlined destroy of AspireHeEncryptionParameters(v15);
  if (v24 == 1 && v23)
  {
    if (v23 == 1)
    {
      v25 = MEMORY[0x277D02F40];
    }

    else
    {
      v25 = MEMORY[0x277D02F48];
    }

    v28 = a2;
    v29 = v46;
    v30 = v47;
    v31 = v49;
    v32 = v45;
    v33 = v48;
    (*(v49 + 104))(v20, *v25, v48);
    AspireHeEvaluationKeyConfig.cryptokit()(v32);
    if (v29)
    {
      return (*(v31 + 8))(v20, v33);
    }

    else
    {
      v34 = type metadata accessor for SecretKey(0);
      (*(v41 + 16))(v42, v30 + *(v34 + 20), v43);
      (*(v31 + 16))(v17, v20, v33);
      v35 = v44;
      HE.SerializedEvaluationKey.init(config:secretKey:scheme:)();
      v36 = type metadata accessor for AspireApiEvaluationKey(0);
      MEMORY[0x28223BE20](v36);
      *(&v37 - 4) = v30;
      *(&v37 - 3) = v28;
      *(&v37 - 2) = v35;
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_5(&lazy protocol witness table cache variable for type AspireApiEvaluationKey and conformance AspireApiEvaluationKey, type metadata accessor for AspireApiEvaluationKey, &protocol conformance descriptor for AspireApiEvaluationKey);
      static Message.with(_:)();
      (*(v49 + 8))(v20, v33);
      return (*(v38 + 8))(v35, v39);
    }
  }

  else
  {
    type metadata accessor for CipherMLError(0);
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_5(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    *v26 = v23;
    *(v26 + 8) = v24;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t outlined init with copy of AspireHeEncryptionParameters?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AspireHeEncryptionParameters(uint64_t a1)
{
  v2 = type metadata accessor for AspireHeEncryptionParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in generateEvaluationKey(secretKey:config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v25 = a1;
  v7 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a2;
  v24 = a3;
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_5(&lazy protocol witness table cache variable for type AspireApiEvaluationKeyMetadata and conformance AspireApiEvaluationKeyMetadata, type metadata accessor for AspireApiEvaluationKeyMetadata, &protocol conformance descriptor for AspireApiEvaluationKeyMetadata);
  result = static Message.with(_:)();
  if (!v4)
  {
    v21 = v8;
    v16 = type metadata accessor for AspireApiEvaluationKey(0);
    v17 = *(v16 + 20);
    v18 = v25;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25 + v17, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
    _s8CipherML28AspireHeEncryptionParametersVWObTm_0(v14, v18 + v17, type metadata accessor for AspireApiEvaluationKeyMetadata);
    v19 = (*(v12 + 56))(v18 + v17, 0, 1, v11);
    MEMORY[0x28223BE20](v19);
    *(&v21 - 2) = v22;
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_5(&lazy protocol witness table cache variable for type AspireHeSerializedEvaluationKey and conformance AspireHeSerializedEvaluationKey, type metadata accessor for AspireHeSerializedEvaluationKey, &protocol conformance descriptor for AspireHeSerializedEvaluationKey);
    static Message.with(_:)();
    v20 = *(v16 + 24);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v18 + v20, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
    _s8CipherML28AspireHeEncryptionParametersVWObTm_0(v10, v18 + v20, type metadata accessor for AspireHeSerializedEvaluationKey);
    return (*(v21 + 56))(v18 + v20, 0, 1, v7);
  }

  return result;
}

uint64_t closure #1 in closure #1 in generateEvaluationKey(secretKey:config:)(void *a1, void *a2)
{
  *a1 = *a2;
  result = specialized Message.hash()();
  if (!v2)
  {
    v6 = result;
    v7 = v5;
    result = outlined consume of Data._Representation(a1[1], a1[2]);
    a1[1] = v6;
    a1[2] = v7;
  }

  return result;
}

uint64_t _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_5(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s8CipherML28AspireHeEncryptionParametersVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t XPCHandler.__allocating_init(requestsManager:connection:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t XPCHandler.init(requestsManager:connection:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t XPCHandler.requestData(by:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](XPCHandler.requestData(by:clientConfig:), 0, 0);
}

uint64_t XPCHandler.requestData(by:clientConfig:)()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v0[7] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;

  v5 = v2;
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = XPCHandler.requestData(by:clientConfig:);
  v8 = v0[5];
  v7 = v0[6];

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_n((v0 + 2), v2, 0xD00000000000001DLL, 0x8000000225036B30, v7, v7, v8, &async function pointer to partial apply for closure #1 in XPCHandler.requestData(by:clientConfig:));
}

{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = XPCHandler.requestData(by:clientConfig:);
  }

  else
  {

    v2 = XPCHandler.requestData(by:clientConfig:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t partial apply for closure #1 in XPCHandler.requestData(by:clientConfig:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return closure #1 in XPCHandler.requestData(by:clientConfig:)();
}

uint64_t @objc closure #1 in XPCHandler.requestData(by:clientConfig:)(uint64_t a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a2;

  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = @objc closure #1 in XPCHandler.requestData(by:clientConfig:);

  return XPCHandler.requestData(by:clientConfig:)(a1, v7);
}

uint64_t XPCHandler.requestData(byIndices:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](XPCHandler.requestData(byIndices:clientConfig:), 0, 0);
}

uint64_t XPCHandler.requestData(byIndices:clientConfig:)()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;

  v5 = v2;
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = XPCHandler.requestData(byIndices:clientConfig:);
  v8 = v0[3];
  v7 = v0[4];

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_n(v2, 0xD000000000000024, 0x8000000225036B50, v7, v8, &async function pointer to partial apply for closure #1 in XPCHandler.requestData(byIndices:clientConfig:), v4);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t XPCHandler.requestData(byIndices:clientConfig:)(uint64_t a1)
{
  v4 = *(*v2 + 24);
  v5 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](XPCHandler.requestData(byIndices:clientConfig:), 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t @objc closure #1 in XPCHandler.requestData(byIndices:clientConfig:)(uint64_t a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v4[5] = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a2;

  return MEMORY[0x2822009F8](@objc closure #1 in XPCHandler.requestData(byIndices:clientConfig:), 0, 0);
}

uint64_t @objc closure #1 in XPCHandler.requestData(byIndices:clientConfig:)()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = v3;

  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = @objc closure #1 in XPCHandler.requestData(byIndices:clientConfig:);
  v8 = v0[2];
  v7 = v0[3];

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_n(v3, 0xD000000000000024, 0x8000000225036B50, v7, v8, &closure #1 in XPCHandler.requestData(byIndices:clientConfig:)partial apply, v4);
}

{

  isa = Array._bridgeToObjectiveC()().super.isa;

  v2 = *(v0 + 32);
  (v2)[2](v2, isa, 0);

  _Block_release(v2);
  v3 = *(v0 + 8);

  return v3();
}

{
  v1 = v0[8];
  v2 = v0[2];

  v3 = _convertErrorToNSError(_:)();

  v4 = v0[4];
  (v4)[2](v4, 0, v3);

  _Block_release(v4);
  v5 = v0[1];

  return v5();
}

uint64_t @objc closure #1 in XPCHandler.requestData(byIndices:clientConfig:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = @objc closure #1 in XPCHandler.requestData(byIndices:clientConfig:);
  }

  else
  {

    *(v4 + 72) = a1;

    v5 = @objc closure #1 in XPCHandler.requestData(byIndices:clientConfig:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t XPCHandler.requestData(byKeywords:shardIds:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](XPCHandler.requestData(byKeywords:shardIds:clientConfig:), 0, 0);
}

uint64_t XPCHandler.requestData(byKeywords:shardIds:clientConfig:)()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = *(v0 + 16);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;

  v5 = v2;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = XPCHandler.requestData(byKeywords:shardIds:clientConfig:);
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSaySo8NSObjectCG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_SaySo8S6CG_TG5AcjA14RequestContextVyAA0W13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nncn_nTf4nndggg_n(v2, 0xD00000000000002ELL, 0x8000000225036B80, v7, v8, &async function pointer to partial apply for closure #1 in XPCHandler.requestData(byKeywords:shardIds:clientConfig:), v3);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t XPCHandler.requestData(byKeywords:shardIds:clientConfig:)(uint64_t a1)
{
  v4 = *(*v2 + 32);
  v5 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](XPCHandler.requestData(byKeywords:shardIds:clientConfig:), 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t closure #1 in XPCHandler.requestData(byKeywords:shardIds:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](closure #1 in XPCHandler.requestData(byKeywords:shardIds:clientConfig:), 0, 0);
}

uint64_t closure #1 in XPCHandler.requestData(byKeywords:shardIds:clientConfig:)()
{
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = closure #1 in XPCHandler.requestData(byKeywords:shardIds:clientConfig:);
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];

  return RequestsManager.requestData(keywords:context:shardIds:allowingRetry:)(v3, v4, v2, 1);
}

{
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
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

    v6 = v9;
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  **(v0 + 16) = v6;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t closure #1 in XPCHandler.requestData(byKeywords:shardIds:clientConfig:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](closure #1 in XPCHandler.requestData(byKeywords:shardIds:clientConfig:), 0, 0);
  }
}

uint64_t @objc closure #1 in XPCHandler.requestData(byKeywords:shardIds:clientConfig:)(uint64_t a1, uint64_t a2, void *a3, void *aBlock, uint64_t a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v5[5] = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5[6] = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;

  return MEMORY[0x2822009F8](@objc closure #1 in XPCHandler.requestData(byKeywords:shardIds:clientConfig:), 0, 0);
}

uint64_t @objc closure #1 in XPCHandler.requestData(byKeywords:shardIds:clientConfig:)()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 40);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  v5 = v2;

  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = @objc closure #1 in XPCHandler.requestData(byKeywords:shardIds:clientConfig:);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSaySo8NSObjectCG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_SaySo8S6CG_TG5AcjA14RequestContextVyAA0W13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nncn_nTf4nndggg_n(v2, 0xD00000000000002ELL, 0x8000000225036B80, v7, v8, &closure #1 in XPCHandler.requestData(byKeywords:shardIds:clientConfig:)partial apply, v3);
}

{

  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v2 = *(v0 + 32);
  (v2)[2](v2, isa, 0);

  _Block_release(v2);
  v3 = *(v0 + 8);

  return v3();
}

{
  v1 = v0[9];
  v2 = v0[2];

  v3 = _convertErrorToNSError(_:)();

  v4 = v0[4];
  (v4)[2](v4, 0, v3);

  _Block_release(v4);
  v5 = v0[1];

  return v5();
}

uint64_t @objc closure #1 in XPCHandler.requestData(byKeywords:shardIds:clientConfig:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = @objc closure #1 in XPCHandler.requestData(byKeywords:shardIds:clientConfig:);
  }

  else
  {

    *(v4 + 80) = a1;

    v5 = @objc closure #1 in XPCHandler.requestData(byKeywords:shardIds:clientConfig:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t XPCHandler.requestData(byLatitude:longitude:clientConfig:)(uint64_t a1, double a2, double a3)
{
  *(v4 + 48) = a1;
  *(v4 + 56) = v3;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  return MEMORY[0x2822009F8](XPCHandler.requestData(byLatitude:longitude:clientConfig:), 0, 0);
}

uint64_t XPCHandler.requestData(byLatitude:longitude:clientConfig:)()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v0[8] = v5;
  v5[2] = v1;
  v5[3] = v4;
  v5[4] = v3;

  v6 = v2;
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = XPCHandler.requestData(byLatitude:longitude:clientConfig:);
  v9 = v0[6];
  v8 = v0[7];

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_n((v0 + 2), v2, 0xD00000000000002FLL, 0x8000000225036BB0, v8, v8, v9, &async function pointer to partial apply for closure #1 in XPCHandler.requestData(byLatitude:longitude:clientConfig:));
}

{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = XPCHandler.requestData(byLatitude:longitude:clientConfig:);
  }

  else
  {

    v2 = XPCHandler.requestData(byLatitude:longitude:clientConfig:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 16), *(v0 + 24));
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in XPCHandler.requestData(byLatitude:longitude:clientConfig:)()
{
  return MEMORY[0x2822009F8](closure #1 in XPCHandler.requestData(byLatitude:longitude:clientConfig:), 0, 0);
}

{
  type metadata accessor for CipherMLError(0);
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_6(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t @objc closure #1 in XPCHandler.requestData(byLatitude:longitude:clientConfig:)(void *a1, void *aBlock, uint64_t a3, double a4, double a5)
{
  v5[2] = a1;
  v5[3] = a3;
  v5[4] = _Block_copy(aBlock);
  v9 = a1;

  v10 = swift_task_alloc();
  v5[5] = v10;
  *v10 = v5;
  v10[1] = @objc closure #1 in XPCHandler.requestData(byLatitude:longitude:clientConfig:);

  return XPCHandler.requestData(byLatitude:longitude:clientConfig:)(v9, a4, a5);
}

uint64_t @objc closure #1 in XPCHandler.requestData(byLatitude:longitude:clientConfig:)(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 16);
  v9 = *v3;

  if (v4)
  {
    v10 = _convertErrorToNSError(_:)();

    v11 = v10;
    v12 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(a1, a2);
    v12 = isa;
    v11 = 0;
    v10 = isa;
  }

  v14 = *(v7 + 32);
  (v14)[2](v14, v12, v11);

  _Block_release(v14);
  v15 = *(v9 + 8);

  return v15();
}

uint64_t XPCHandler.removeCachedEntries(byKeywords:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](XPCHandler.removeCachedEntries(byKeywords:clientConfig:), 0, 0);
}

uint64_t XPCHandler.removeCachedEntries(byKeywords:clientConfig:)()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v0[2] = 0;
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v0 + 2;
  v4[3] = v1;
  v4[4] = v3;

  v5 = v2;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = XPCHandler.removeCachedEntries(byKeywords:clientConfig:);
  v8 = v0[4];
  v7 = v0[5];

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFyt_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_yt_Tg5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlyytIsgHnrzo_Tf1nnncn_n(v6, v2, 0xD00000000000002DLL, 0x8000000225036BE0, v7, v7, v8, &async function pointer to partial apply for closure #1 in XPCHandler.removeCachedEntries(byKeywords:clientConfig:));
}

{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = XPCHandler.requestData(byKeywords:shardIds:clientConfig:);
  }

  else
  {

    v2 = XPCHandler.removeCachedEntries(byKeywords:clientConfig:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

uint64_t closure #1 in XPCHandler.removeCachedEntries(byKeywords:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  v5[6] = type metadata accessor for RequestsManager.PIRContext(0);
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in XPCHandler.removeCachedEntries(byKeywords:clientConfig:), 0, 0);
}

uint64_t closure #1 in XPCHandler.removeCachedEntries(byKeywords:clientConfig:)()
{
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = closure #1 in XPCHandler.removeCachedEntries(byKeywords:clientConfig:);
  v2 = v0[7];
  v3 = v0[2];

  return RequestsManager.loadContext(requestContext:allowingKeyRotation:)(v2, v3, 0);
}

{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = closure #1 in XPCHandler.removeCachedEntries(byKeywords:clientConfig:);
  }

  else
  {
    v2 = closure #1 in XPCHandler.removeCachedEntries(byKeywords:clientConfig:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[7];
  v2 = (v1 + *(v0[6] + 36));
  if (*v2)
  {
    v3 = v0[9];
    v4 = v0[5];
    v5 = v2[1];
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 32);
    swift_unknownObjectRetain();
    v8 = v7(v4, ObjectType, v5);
    swift_unknownObjectRelease();
    v1 = v0[7];
    if (v3)
    {
      outlined destroy of UseCaseGroup(v1, type metadata accessor for RequestsManager.PIRContext);

      v9 = v0[1];
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = v0[3];
  outlined destroy of UseCaseGroup(v1, type metadata accessor for RequestsManager.PIRContext);
  *v10 = v8;

  v9 = v0[1];
LABEL_6:

  return v9();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t @objc closure #1 in XPCHandler.removeCachedEntries(byKeywords:clientConfig:)(uint64_t a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4[5] = v6;
  v7 = a2;

  v8 = swift_task_alloc();
  v4[6] = v8;
  *v8 = v4;
  v8[1] = @objc closure #1 in XPCHandler.removeCachedEntries(byKeywords:clientConfig:);

  return XPCHandler.removeCachedEntries(byKeywords:clientConfig:)(v6, v7);
}

uint64_t @objc closure #1 in XPCHandler.removeCachedEntries(byKeywords:clientConfig:)(uint64_t a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 32);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(*(v5 + 32), a1, 0);
  }

  _Block_release(*(v6 + 32));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t XPCHandler.setPIRConfig(_:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](XPCHandler.setPIRConfig(_:clientConfig:), 0, 0);
}

uint64_t XPCHandler.setPIRConfig(_:clientConfig:)()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v0[7] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;

  v5 = v2;
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = XPCHandler.setPIRConfig(_:clientConfig:);
  v8 = v0[5];
  v7 = v0[6];

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_n((v0 + 2), v2, 0xD00000000000001DLL, 0x8000000225036C10, v7, v7, v8, &async function pointer to partial apply for closure #1 in XPCHandler.setPIRConfig(_:clientConfig:));
}

{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = XPCHandler.setPIRConfig(_:clientConfig:);
  }

  else
  {

    v2 = XPCHandler.requestData(by:clientConfig:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t closure #1 in XPCHandler.setPIRConfig(_:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](closure #1 in XPCHandler.setPIRConfig(_:clientConfig:), 0, 0);
}

uint64_t closure #1 in XPCHandler.setPIRConfig(_:clientConfig:)()
{
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = closure #1 in XPCHandler.setPIRConfig(_:clientConfig:);
  v2 = v0[5];
  v3 = v0[3];

  return RequestsManager.setPIRConfig(config:context:)(v2, v3);
}

uint64_t closure #1 in XPCHandler.setPIRConfig(_:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 56) = a2;
    *(v6 + 64) = a1;

    return MEMORY[0x2822009F8](closure #1 in XPCHandler.setPIRConfig(_:clientConfig:), 0, 0);
  }
}

uint64_t @objc closure #1 in XPCHandler.setPIRConfig(_:clientConfig:)(void *a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v7 = a1;
  v8 = a2;

  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = @objc closure #1 in XPCHandler.generateEvaluationKey(_:clientConfig:);

  return XPCHandler.setPIRConfig(_:clientConfig:)(v7, v8);
}

uint64_t XPCHandler.generateEvaluationKey(_:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](XPCHandler.generateEvaluationKey(_:clientConfig:), 0, 0);
}

uint64_t XPCHandler.generateEvaluationKey(_:clientConfig:)()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v0[7] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;

  v5 = v2;
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = XPCHandler.setPIRConfig(_:clientConfig:);
  v8 = v0[5];
  v7 = v0[6];

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_n((v0 + 2), v2, 0xD000000000000026, 0x8000000225036C30, v7, v7, v8, &async function pointer to partial apply for closure #1 in XPCHandler.generateEvaluationKey(_:clientConfig:));
}

uint64_t closure #1 in XPCHandler.generateEvaluationKey(_:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for RequestsManager.PIRContext(0);
  v4[6] = swift_task_alloc();
  v4[7] = type metadata accessor for AspireApiEvaluationKey(0);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in XPCHandler.generateEvaluationKey(_:clientConfig:), 0, 0);
}

uint64_t closure #1 in XPCHandler.generateEvaluationKey(_:clientConfig:)()
{
  v0[9] = *(v0[4] + 16);
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = closure #1 in XPCHandler.generateEvaluationKey(_:clientConfig:);
  v2 = v0[6];
  v3 = v0[3];

  return RequestsManager.loadContext(requestContext:allowingKeyRotation:)(v2, v3, 1);
}

{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = closure #1 in XPCHandler.generateEvaluationKey(_:clientConfig:);
  }

  else
  {
    v2 = closure #1 in XPCHandler.generateEvaluationKey(_:clientConfig:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);
  RequestsManager.generateEvaluationKey(config:pirContext:)(*(v0 + 40), v2, *(v0 + 64));
  outlined destroy of UseCaseGroup(v2, type metadata accessor for RequestsManager.PIRContext);
  if (!v1)
  {
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_6(&lazy protocol witness table cache variable for type AspireApiEvaluationKey and conformance AspireApiEvaluationKey, type metadata accessor for AspireApiEvaluationKey, &protocol conformance descriptor for AspireApiEvaluationKey);
    v4 = Message.serializedData(partial:)();
    v6 = v5;
    v7 = *(v0 + 16);
    outlined destroy of UseCaseGroup(*(v0 + 64), type metadata accessor for AspireApiEvaluationKey);
    *v7 = v4;
    v7[1] = v6;
  }

  v8 = *(v0 + 8);

  return v8();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t @objc closure #1 in XPCHandler.generateEvaluationKey(_:clientConfig:)(void *a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v7 = a1;
  v8 = a2;

  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = @objc closure #1 in XPCHandler.generateEvaluationKey(_:clientConfig:);

  return XPCHandler.generateEvaluationKey(_:clientConfig:)(v7, v8);
}

uint64_t XPCHandler.constructPIRRequest(with:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](XPCHandler.constructPIRRequest(with:clientConfig:), 0, 0);
}

uint64_t XPCHandler.constructPIRRequest(with:clientConfig:)()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v0[7] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;

  v5 = v2;
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = XPCHandler.setPIRConfig(_:clientConfig:);
  v8 = v0[5];
  v7 = v0[6];

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_n((v0 + 2), v2, 0xD000000000000027, 0x8000000225036C60, v7, v7, v8, &async function pointer to partial apply for closure #1 in XPCHandler.constructPIRRequest(with:clientConfig:));
}

uint64_t @objc closure #1 in XPCHandler.constructPIRRequest(with:clientConfig:)(uint64_t a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a2;

  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = @objc closure #1 in XPCHandler.constructPIRRequest(with:clientConfig:);

  return XPCHandler.constructPIRRequest(with:clientConfig:)(a1, v7);
}

uint64_t @objc closure #1 in XPCHandler.constructPIRRequest(with:clientConfig:)(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 16);
  v9 = *v3;

  if (v4)
  {
    v10 = _convertErrorToNSError(_:)();

    v11 = v10;
    v12 = 0;
  }

  else if (a2 >> 60 == 15)
  {
    v11 = 0;
    v12 = 0;
    v10 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(a1, a2);
    v12 = isa;
    v11 = 0;
    v10 = isa;
  }

  v14 = *(v7 + 32);
  (v14)[2](v14, v12, v11);

  _Block_release(v14);
  v15 = *(v9 + 8);

  return v15();
}

uint64_t XPCHandler.constructPIRBatchRequest(withIndices:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](XPCHandler.constructPIRBatchRequest(withIndices:clientConfig:), 0, 0);
}

uint64_t XPCHandler.constructPIRBatchRequest(withIndices:clientConfig:)()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v0[7] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;

  v5 = v2;
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = XPCHandler.setPIRConfig(_:clientConfig:);
  v8 = v0[5];
  v7 = v0[6];

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_n((v0 + 2), v2, 0xD000000000000033, 0x8000000225036C90, v7, v7, v8, &async function pointer to partial apply for closure #1 in XPCHandler.constructPIRBatchRequest(withIndices:clientConfig:));
}

uint64_t @objc closure #1 in XPCHandler.constructPIRBatchRequest(withIndices:clientConfig:)(uint64_t a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4[5] = v6;
  v7 = a2;

  v8 = swift_task_alloc();
  v4[6] = v8;
  *v8 = v4;
  v8[1] = @objc closure #1 in XPCHandler.constructPIRBatchRequest(withIndices:clientConfig:);

  return XPCHandler.constructPIRBatchRequest(withIndices:clientConfig:)(v6, v7);
}

uint64_t @objc closure #1 in XPCHandler.constructPIRBatchRequest(withIndices:clientConfig:)(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 16);
  v9 = *v3;

  if (v4)
  {
    v10 = _convertErrorToNSError(_:)();

    v11 = v10;
    v12 = 0;
  }

  else if (a2 >> 60 == 15)
  {
    v11 = 0;
    v12 = 0;
    v10 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(a1, a2);
    v12 = isa;
    v11 = 0;
    v10 = isa;
  }

  v14 = *(v7 + 32);
  (v14)[2](v14, v12, v11);

  _Block_release(v14);
  v15 = *(v9 + 8);

  return v15();
}

uint64_t XPCHandler.decryptPIRResponse(_:index:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x2822009F8](XPCHandler.decryptPIRResponse(_:index:clientConfig:), 0, 0);
}

uint64_t XPCHandler.decryptPIRResponse(_:index:clientConfig:)()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v10 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v10;
  *(v4 + 40) = v3;

  v5 = v2;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = XPCHandler.decryptPIRResponse(_:index:clientConfig:);
  v8 = *(v0 + 56);
  v7 = *(v0 + 64);

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_n(v0 + 16, v2, 0xD000000000000029, 0x8000000225036CD0, v7, v7, v8, &async function pointer to partial apply for closure #1 in XPCHandler.decryptPIRResponse(_:index:clientConfig:));
}

{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = XPCHandler.decryptPIRResponse(_:index:clientConfig:);
  }

  else
  {

    v2 = XPCHandler.requestData(by:clientConfig:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t @objc closure #1 in XPCHandler.decryptPIRResponse(_:index:clientConfig:)(void *a1, uint64_t a2, void *a3, void *aBlock, uint64_t a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v9 = a1;
  v10 = a3;

  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v5[5] = v11;
  v5[6] = v13;
  v14 = swift_task_alloc();
  v5[7] = v14;
  *v14 = v5;
  v14[1] = @objc closure #1 in XPCHandler.decryptPIRResponse(_:index:clientConfig:);

  return XPCHandler.decryptPIRResponse(_:index:clientConfig:)(v11, v13, a2, v10);
}

uint64_t @objc closure #1 in XPCHandler.decryptPIRResponse(_:index:clientConfig:)(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v8 = *v3;
  v7 = *v3;
  v9 = *(*v3 + 16);
  v10 = *v3;

  outlined consume of Data._Representation(*(v7 + 40), *(v7 + 48));
  if (v4)
  {
    isa = _convertErrorToNSError(_:)();

    v12 = isa;
    v13 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(a1, a2);
    v13 = isa;
    v12 = 0;
  }

  v14 = *(v8 + 32);
  (v14)[2](v14, v13, v12);

  _Block_release(v14);
  v15 = *(v10 + 8);

  return v15();
}

uint64_t XPCHandler.decryptPIRBatchResponse(_:indices:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](XPCHandler.decryptPIRBatchResponse(_:indices:clientConfig:), 0, 0);
}

uint64_t XPCHandler.decryptPIRBatchResponse(_:indices:clientConfig:)()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v10 = *(v0 + 16);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v10;
  *(v4 + 40) = v3;

  v5 = v2;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = XPCHandler.decryptPIRBatchResponse(_:indices:clientConfig:);
  v8 = *(v0 + 40);
  v7 = *(v0 + 48);

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_n(v2, 0xD000000000000030, 0x8000000225036D00, v7, v8, &async function pointer to partial apply for closure #1 in XPCHandler.decryptPIRBatchResponse(_:indices:clientConfig:), v4);
}

uint64_t XPCHandler.decryptPIRBatchResponse(_:indices:clientConfig:)(uint64_t a1)
{
  v4 = *(*v2 + 40);
  v5 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](XPCHandler.requestData(by:clientConfig:), 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t @objc closure #1 in XPCHandler.decryptPIRBatchResponse(_:indices:clientConfig:)(void *a1, void *a2, void *a3, void *aBlock, uint64_t a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v9 = a1;
  v10 = a2;
  v11 = a3;

  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v5[5] = v12;
  v5[6] = v14;
  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v5[7] = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return MEMORY[0x2822009F8](@objc closure #1 in XPCHandler.decryptPIRBatchResponse(_:indices:clientConfig:), 0, 0);
}

uint64_t @objc closure #1 in XPCHandler.decryptPIRBatchResponse(_:indices:clientConfig:)()
{
  v1 = *(v0 + 56);
  v10 = *(v0 + 40);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v10;
  *(v4 + 40) = v1;
  v5 = v3;

  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = @objc closure #1 in XPCHandler.decryptPIRBatchResponse(_:indices:clientConfig:);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_n(v3, 0xD000000000000030, 0x8000000225036D00, v7, v8, &closure #1 in XPCHandler.decryptPIRBatchResponse(_:indices:clientConfig:)partial apply, v4);
}

{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);

  outlined consume of Data._Representation(v2, v1);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = *(v0 + 32);
  (v4)[2](v4, isa, 0);

  _Block_release(v4);
  v5 = *(v0 + 8);

  return v5();
}

{
  v1 = v0[10];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[2];

  outlined consume of Data._Representation(v3, v2);
  v5 = _convertErrorToNSError(_:)();

  v6 = v0[4];
  (v6)[2](v6, 0, v5);

  _Block_release(v6);
  v7 = v0[1];

  return v7();
}

uint64_t @objc closure #1 in XPCHandler.decryptPIRBatchResponse(_:indices:clientConfig:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = @objc closure #1 in XPCHandler.decryptPIRBatchResponse(_:indices:clientConfig:);
  }

  else
  {

    *(v4 + 88) = a1;

    v5 = @objc closure #1 in XPCHandler.decryptPIRBatchResponse(_:indices:clientConfig:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t XPCHandler.constructPIRRequest(withKeyword:withEvaluationKey:shardId:pirConfig:clientConfig:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 72) = a7;
  *(v8 + 80) = v7;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 40) = a2;
  *(v8 + 48) = a4;
  *(v8 + 112) = a3;
  *(v8 + 32) = a1;
  return MEMORY[0x2822009F8](XPCHandler.constructPIRRequest(withKeyword:withEvaluationKey:shardId:pirConfig:clientConfig:), 0, 0);
}

uint64_t XPCHandler.constructPIRRequest(withKeyword:withEvaluationKey:shardId:pirConfig:clientConfig:)()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v13 = *(v0 + 48);
  v4 = *(v0 + 112);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *(v7 + 16) = v1;
  *(v7 + 24) = v6;
  *(v7 + 32) = v5;
  *(v7 + 40) = v4;
  *(v7 + 48) = v13;
  *(v7 + 64) = v3;

  v8 = v2;
  v9 = swift_task_alloc();
  *(v0 + 96) = v9;
  *v9 = v0;
  v9[1] = XPCHandler.constructPIRRequest(withKeyword:withEvaluationKey:shardId:pirConfig:clientConfig:);
  v11 = *(v0 + 72);
  v10 = *(v0 + 80);

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_n(v0 + 16, v2, 0xD000000000000052, 0x8000000225036D40, v10, v10, v11, &async function pointer to partial apply for closure #1 in XPCHandler.constructPIRRequest(withKeyword:withEvaluationKey:shardId:pirConfig:clientConfig:));
}

{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = XPCHandler.constructPIRRequest(withKeyword:withEvaluationKey:shardId:pirConfig:clientConfig:);
  }

  else
  {

    v2 = XPCHandler.requestData(by:clientConfig:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in XPCHandler.constructPIRRequest(withKeyword:withEvaluationKey:shardId:pirConfig:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 160) = a8;
  *(v8 + 168) = v13;
  *(v8 + 368) = a6;
  *(v8 + 144) = a5;
  *(v8 + 152) = a7;
  *(v8 + 128) = a3;
  *(v8 + 136) = a4;
  *(v8 + 112) = a1;
  *(v8 + 120) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = type metadata accessor for AspireApiPIRRequest(0);
  *(v8 + 192) = swift_task_alloc();
  v9 = type metadata accessor for AspireApiEvaluationKey(0);
  *(v8 + 200) = v9;
  *(v8 + 208) = *(v9 - 8);
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = type metadata accessor for AspireApiPIRConfig(0);
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  type metadata accessor for SecretKey(0);
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  type metadata accessor for BatchPIRClient(0);
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = type metadata accessor for RequestsManager.PIRContext(0);
  *(v8 + 304) = swift_task_alloc();
  v10 = type metadata accessor for AspireApiRequest(0);
  *(v8 + 312) = v10;
  *(v8 + 320) = *(v10 - 8);
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in XPCHandler.constructPIRRequest(withKeyword:withEvaluationKey:shardId:pirConfig:clientConfig:), 0, 0);
}

uint64_t closure #1 in XPCHandler.constructPIRRequest(withKeyword:withEvaluationKey:shardId:pirConfig:clientConfig:)()
{
  v0[43] = *(v0[16] + 16);
  v1 = swift_task_alloc();
  v0[44] = v1;
  *v1 = v0;
  v1[1] = closure #1 in XPCHandler.constructPIRRequest(withKeyword:withEvaluationKey:shardId:pirConfig:clientConfig:);
  v2 = v0[38];
  v3 = v0[15];

  return RequestsManager.loadContext(requestContext:allowingKeyRotation:)(v2, v3, 0);
}

{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = closure #1 in XPCHandler.constructPIRRequest(withKeyword:withEvaluationKey:shardId:pirConfig:clientConfig:);
  }

  else
  {
    v2 = closure #1 in XPCHandler.constructPIRRequest(withKeyword:withEvaluationKey:shardId:pirConfig:clientConfig:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 160);
  if (!v1)
  {
    v24 = *(v0 + 296);
    v23 = *(v0 + 304);
    v25 = *(v0 + 280);
    v26 = *(v0 + 224);
    v28 = *(v0 + 136);
    v27 = *(v0 + 144);
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
    v34 = *(v0 + 360);
    v35 = *(v0 + 304);
    if (v31 == 1)
    {
      v21 = RequestsManager.PIRContext.createKeywordPIRRequests(_:shardIds:)(v29, MEMORY[0x277D84F90]);

      if (!v34)
      {
        if (*(v21 + 16))
        {
          goto LABEL_22;
        }

        goto LABEL_31;
      }

      goto LABEL_15;
    }

    v43 = *(v0 + 296);
    v44 = *(v0 + 264);
    v45 = *(v0 + 248);
    v46 = *(v0 + 232);
    _s8CipherML13NetworkConfigVWOcTm_1(v35 + *(v43 + 32), v45, type metadata accessor for SecretKey);
    _s8CipherML13NetworkConfigVWOcTm_1(v30, v46, type metadata accessor for AspireApiPIRConfig);
    v47 = (v35 + *(v43 + 28));
    v48 = *v47;
    v49 = v47[1];
    outlined copy of Data._Representation(*v47, v49);
    BatchPIRClient.init(secretKey:config:configID:)(v45, v46, v48, v49, v44);
    if (!v34)
    {
      v22 = BatchPIRClient.constructPIRRequest(with:)(v29);
      goto LABEL_21;
    }

LABEL_13:

    goto LABEL_15;
  }

  v3 = *(v0 + 296);
  v2 = *(v0 + 304);
  v4 = *(v0 + 288);
  v5 = *(v0 + 224);
  v6 = *(v0 + 144);
  v7 = *(v0 + 152);
  v8 = *(v0 + 136);
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
  v16 = *(v0 + 360);
  v17 = *(v0 + 304);
  if (v15 != 1)
  {
    v88 = *(v0 + 288);
    v89 = *(v0 + 296);
    v90 = *(v0 + 256);
    v91 = *(v0 + 240);
    v92 = *(v0 + 272);
    v38 = *(v0 + 136);
    v37 = *(v0 + 144);
    v93 = *(v0 + 360);
    swift_setDeallocating();

    outlined copy of Data._Representation(v38, v37);
    outlined destroy of String(inited + 32);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v88, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
    _s8CipherML13NetworkConfigVWOcTm_1(v17 + *(v89 + 32), v90, type metadata accessor for SecretKey);
    _s8CipherML13NetworkConfigVWOcTm_1(v11, v91, type metadata accessor for AspireApiPIRConfig);
    v39 = (v17 + *(v89 + 28));
    v40 = *v39;
    v41 = v39[1];
    outlined copy of Data._Representation(*v39, v41);
    BatchPIRClient.init(secretKey:config:configID:)(v90, v91, v40, v41, v92);
    if (!v93)
    {
      v42 = BatchPIRClient.constructPIRRequest(with:)(v9);
      v51 = *(v0 + 304);
      v52 = *(v0 + 272);
      v53 = v42;

      v54 = swift_task_alloc();
      *(v54 + 16) = v51;
      v21 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CipherML19AspireApiPIRRequestVG_AF0fG7RequestVs5NeverOTg5(closure #1 in RequestsManager.PIRContext.createBatchPIRQueries(_:)partial apply, v54, v53);

      v22 = outlined destroy of UseCaseGroup(v52, type metadata accessor for BatchPIRClient);
      if (*(v21 + 16))
      {
LABEL_22:
        v59 = *(v0 + 368);
        v60 = *(*(v0 + 320) + 80);
        _s8CipherML13NetworkConfigVWOcTm_1(v21 + ((v60 + 32) & ~v60), *(v0 + 328), type metadata accessor for AspireApiRequest);

        if (v59 != 1)
        {
LABEL_29:
          v82 = *(v0 + 328);
          v83 = *(v0 + 336);
          outlined destroy of UseCaseGroup(*(v0 + 304), type metadata accessor for RequestsManager.PIRContext);
          _s8CipherML12UseCaseGroupVWObTm_0(v82, v83, type metadata accessor for AspireApiRequest);
          _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_6(&lazy protocol witness table cache variable for type AspireApiRequest and conformance AspireApiRequest, type metadata accessor for AspireApiRequest, &protocol conformance descriptor for AspireApiRequest);
          v84 = Message.serializedData(partial:)();
          v86 = v85;
          v87 = *(v0 + 112);
          outlined destroy of UseCaseGroup(*(v0 + 336), type metadata accessor for AspireApiRequest);
          *v87 = v84;
          v87[1] = v86;

          v50 = *(v0 + 8);
          goto LABEL_16;
        }

        RequestsManager.generateEvaluationKey(config:pirContext:)(*(v0 + 168), *(v0 + 304), *(v0 + 216));
        v61 = *(v0 + 328);
        v62 = *(v0 + 176);
        v63 = *(*(v0 + 312) + 20);
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(v61 + v63, v62, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
        v64 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
        v65 = *(v64 - 8);
        v66 = (*(v65 + 48))(v62, 1, v64);
        v67 = *(v0 + 176);
        if (v66 == 1)
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 176), &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
        }

        else
        {
          if (!swift_getEnumCaseMultiPayload())
          {
            _s8CipherML12UseCaseGroupVWObTm_0(v67, *(v0 + 192), type metadata accessor for AspireApiPIRRequest);
            goto LABEL_28;
          }

          outlined destroy of UseCaseGroup(v67, type metadata accessor for AspireApiRequest.OneOf_Request);
        }

        v68 = *(v0 + 200);
        v69 = *(v0 + 208);
        v71 = *(v0 + 184);
        v70 = *(v0 + 192);
        *v70 = 0;
        *(v70 + 8) = xmmword_225022910;
        UnknownStorage.init()();
        v72 = v71[7];
        v73 = type metadata accessor for AspirePirEncryptedIndices(0);
        (*(*(v73 - 8) + 56))(v70 + v72, 1, 1, v73);
        v74 = v71[8];
        v75 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
        (*(*(v75 - 8) + 56))(v70 + v74, 1, 1, v75);
        v76 = (v70 + v71[9]);
        *v76 = 0;
        v76[1] = 0;
        (*(v69 + 56))(v70 + v71[10], 1, 1, v68);
LABEL_28:
        v78 = *(v0 + 208);
        v77 = *(v0 + 216);
        v80 = *(v0 + 192);
        v79 = *(v0 + 200);
        v81 = *(*(v0 + 184) + 40);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v80 + v81, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
        _s8CipherML12UseCaseGroupVWObTm_0(v77, v80 + v81, type metadata accessor for AspireApiEvaluationKey);
        (*(v78 + 56))(v80 + v81, 0, 1, v79);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v61 + v63, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
        _s8CipherML12UseCaseGroupVWObTm_0(v80, v61 + v63, type metadata accessor for AspireApiPIRRequest);
        swift_storeEnumTagMultiPayload();
        (*(v65 + 56))(v61 + v63, 0, 1, v64);
        goto LABEL_29;
      }

      goto LABEL_20;
    }

    goto LABEL_13;
  }

  v18 = *(v0 + 288);
  v20 = *(v0 + 136);
  v19 = *(v0 + 144);

  outlined copy of Data._Representation(v20, v19);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v18, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v21 = RequestsManager.PIRContext.createKeywordPIRRequests(_:shardIds:)(v9, inited);
  swift_setDeallocating();
  swift_arrayDestroy();

  if (!v16)
  {
    if (*(v21 + 16))
    {
      goto LABEL_22;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    v55 = *(v0 + 304);
    v56 = *(v0 + 264);
    v57 = v22;

    v58 = swift_task_alloc();
    *(v58 + 16) = v55;
    v21 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CipherML19AspireApiPIRRequestVG_AF0fG7RequestVs5NeverOTg5(partial apply for closure #1 in RequestsManager.PIRContext.createBatchPIRQueries(_:), v58, v57);

    result = outlined destroy of UseCaseGroup(v56, type metadata accessor for BatchPIRClient);
    if (*(v21 + 16))
    {
      goto LABEL_22;
    }

LABEL_31:
    __break(1u);
    return result;
  }

LABEL_15:
  outlined destroy of UseCaseGroup(*(v0 + 304), type metadata accessor for RequestsManager.PIRContext);

  v50 = *(v0 + 8);
LABEL_16:

  return v50();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t @objc closure #1 in XPCHandler.constructPIRRequest(withKeyword:withEvaluationKey:shardId:pirConfig:clientConfig:)(void *a1, char a2, void *a3, void *a4, void *a5, void *aBlock, uint64_t a7)
{
  v7[3] = a5;
  v7[4] = a7;
  v7[2] = a4;
  v7[5] = _Block_copy(aBlock);
  v13 = a3;
  v14 = a1;
  v15 = a4;
  v16 = a5;

  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v7[6] = v17;
  v7[7] = v19;
  if (a3)
  {
    a3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v7[8] = v21;
  v22 = swift_task_alloc();
  v7[9] = v22;
  *v22 = v7;
  v22[1] = @objc closure #1 in XPCHandler.constructPIRRequest(withKeyword:withEvaluationKey:shardId:pirConfig:clientConfig:);

  return XPCHandler.constructPIRRequest(withKeyword:withEvaluationKey:shardId:pirConfig:clientConfig:)(v17, v19, a2 & 1, a3, v21, v15, v16);
}

uint64_t @objc closure #1 in XPCHandler.constructPIRRequest(withKeyword:withEvaluationKey:shardId:pirConfig:clientConfig:)(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v6 = *v3;
  v7 = *(*v3 + 56);
  v8 = *(*v3 + 48);
  v9 = *(*v3 + 24);
  v10 = *(*v3 + 16);
  v11 = *v3;

  outlined consume of Data._Representation(v8, v7);
  if (v4)
  {
    v12 = _convertErrorToNSError(_:)();

    v13 = v12;
    v14 = 0;
  }

  else if (a2 >> 60 == 15)
  {
    v13 = 0;
    v14 = 0;
    v12 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(a1, a2);
    v14 = isa;
    v13 = 0;
    v12 = isa;
  }

  v16 = *(v6 + 40);
  (v16)[2](v16, v14, v13);

  _Block_release(v16);
  v17 = *(v11 + 8);

  return v17();
}

uint64_t XPCHandler.constructPIRBatchRequest(withKeywords:shardIds:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x2822009F8](XPCHandler.constructPIRBatchRequest(withKeywords:shardIds:clientConfig:), 0, 0);
}

uint64_t XPCHandler.constructPIRBatchRequest(withKeywords:shardIds:clientConfig:)()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;

  v5 = v2;
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = XPCHandler.constructPIRBatchRequest(withKeywords:shardIds:clientConfig:);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_n(v0 + 16, v2, 0xD00000000000003DLL, 0x8000000225036DA0, v7, v7, v8, &async function pointer to partial apply for closure #1 in XPCHandler.constructPIRBatchRequest(withKeywords:shardIds:clientConfig:));
}

{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = XPCHandler.constructPIRBatchRequest(withKeywords:shardIds:clientConfig:);
  }

  else
  {

    v2 = XPCHandler.requestData(by:clientConfig:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t closure #1 in XPCHandler.constructPIRBatchRequest(withKeywords:shardIds:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](closure #1 in XPCHandler.constructPIRBatchRequest(withKeywords:shardIds:clientConfig:), 0, 0);
}

uint64_t closure #1 in XPCHandler.constructPIRBatchRequest(withKeywords:shardIds:clientConfig:)()
{
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = closure #1 in XPCHandler.constructPIRBatchRequest(withKeywords:shardIds:clientConfig:);
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];

  return RequestsManager.constructPIRBatchRequest(keywords:shardIds:context:)(v3, v2, v4);
}

{
  **(v0 + 16) = vextq_s8(*(v0 + 64), *(v0 + 64), 8uLL);
  return (*(v0 + 8))();
}

uint64_t closure #1 in XPCHandler.constructPIRBatchRequest(withKeywords:shardIds:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 64) = a2;
    *(v6 + 72) = a1;

    return MEMORY[0x2822009F8](closure #1 in XPCHandler.constructPIRBatchRequest(withKeywords:shardIds:clientConfig:), 0, 0);
  }
}

uint64_t @objc closure #1 in XPCHandler.constructPIRBatchRequest(withKeywords:shardIds:clientConfig:)(uint64_t a1, uint64_t a2, void *a3, void *aBlock, uint64_t a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5[5] = v7;
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5[6] = v8;
  v9 = a3;

  v10 = swift_task_alloc();
  v5[7] = v10;
  *v10 = v5;
  v10[1] = @objc closure #1 in XPCHandler.constructPIRBatchRequest(withKeywords:shardIds:clientConfig:);

  return XPCHandler.constructPIRBatchRequest(withKeywords:shardIds:clientConfig:)(v7, v8, v9);
}

uint64_t @objc closure #1 in XPCHandler.constructPIRBatchRequest(withKeywords:shardIds:clientConfig:)(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 16);
  v9 = *v3;

  if (v4)
  {
    v10 = _convertErrorToNSError(_:)();

    v11 = v10;
    v12 = 0;
  }

  else if (a2 >> 60 == 15)
  {
    v11 = 0;
    v12 = 0;
    v10 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(a1, a2);
    v12 = isa;
    v11 = 0;
    v10 = isa;
  }

  v14 = *(v7 + 32);
  (v14)[2](v14, v12, v11);

  _Block_release(v14);
  v15 = *(v9 + 8);

  return v15();
}

uint64_t XPCHandler.decryptPIRResponse(_:keyword:shardId:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[10] = a7;
  v8[11] = v7;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[4] = a1;
  v8[5] = a2;
  return MEMORY[0x2822009F8](XPCHandler.decryptPIRResponse(_:keyword:shardId:clientConfig:), 0, 0);
}

uint64_t XPCHandler.decryptPIRResponse(_:keyword:shardId:clientConfig:)()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  v7 = *(v0 + 32);
  v6 = *(v0 + 48);
  *(v5 + 16) = v1;
  *(v5 + 24) = v7;
  *(v5 + 40) = v6;
  *(v5 + 56) = v4;
  *(v5 + 64) = v3;

  v8 = v2;
  v9 = swift_task_alloc();
  *(v0 + 104) = v9;
  *v9 = v0;
  v9[1] = XPCHandler.decryptPIRResponse(_:keyword:shardId:clientConfig:);
  v11 = *(v0 + 80);
  v10 = *(v0 + 88);

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_n(v0 + 16, v2, 0xD000000000000033, 0x8000000225036DE0, v10, v10, v11, &async function pointer to partial apply for closure #1 in XPCHandler.decryptPIRResponse(_:keyword:shardId:clientConfig:));
}

{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = XPCHandler.decryptPIRResponse(_:keyword:shardId:clientConfig:);
  }

  else
  {

    v2 = XPCHandler.requestData(by:clientConfig:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in XPCHandler.decryptPIRResponse(_:keyword:shardId:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  return MEMORY[0x2822009F8](closure #1 in XPCHandler.decryptPIRResponse(_:keyword:shardId:clientConfig:), 0, 0);
}

uint64_t closure #1 in XPCHandler.decryptPIRResponse(_:keyword:shardId:clientConfig:)()
{
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = closure #1 in XPCHandler.decryptPIRResponse(_:keyword:shardId:clientConfig:);
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[3];

  return RequestsManager.decryptPIRResponse(encryptedResponse:keyword:context:shardId:)(v7, v6, v4, v5, v8, v2, v3);
}

{
  **(v0 + 16) = vextq_s8(*(v0 + 96), *(v0 + 96), 8uLL);
  return (*(v0 + 8))();
}

uint64_t closure #1 in XPCHandler.decryptPIRResponse(_:keyword:shardId:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 96) = a2;
    *(v6 + 104) = a1;

    return MEMORY[0x2822009F8](closure #1 in XPCHandler.decryptPIRResponse(_:keyword:shardId:clientConfig:), 0, 0);
  }
}

uint64_t @objc closure #1 in XPCHandler.decryptPIRResponse(_:keyword:shardId:clientConfig:)(void *a1, void *a2, void *a3, void *a4, void *aBlock, uint64_t a6)
{
  v6[2] = a4;
  v6[3] = a6;
  v6[4] = _Block_copy(aBlock);
  v11 = a3;
  v12 = a1;
  v13 = a2;
  v14 = a4;

  v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v6[5] = v15;
  v6[6] = v17;
  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v6[7] = v18;
  v6[8] = v20;
  if (a3)
  {
    a3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v6[9] = v22;
  v23 = swift_task_alloc();
  v6[10] = v23;
  *v23 = v6;
  v23[1] = @objc closure #1 in XPCHandler.decryptPIRResponse(_:keyword:shardId:clientConfig:);

  return XPCHandler.decryptPIRResponse(_:keyword:shardId:clientConfig:)(v15, v17, v18, v20, a3, v22, v14);
}

uint64_t @objc closure #1 in XPCHandler.decryptPIRResponse(_:keyword:shardId:clientConfig:)(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v5 = *v3;
  v6 = *(*v3 + 64);
  v7 = *(*v3 + 56);
  v8 = *(*v3 + 48);
  v9 = *(*v3 + 40);
  v10 = *(*v3 + 16);
  v11 = *v3;

  outlined consume of Data._Representation(v7, v6);
  outlined consume of Data._Representation(v9, v8);
  if (v4)
  {
    v12 = _convertErrorToNSError(_:)();

    v13 = v12;
    v14 = 0;
  }

  else if (a2 >> 60 == 15)
  {
    v13 = 0;
    v14 = 0;
    v12 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(a1, a2);
    v14 = isa;
    v13 = 0;
    v12 = isa;
  }

  v16 = *(v5 + 32);
  (v16)[2](v16, v14, v13);

  _Block_release(v16);
  v17 = *(v11 + 8);

  return v17();
}

uint64_t XPCHandler.decryptPIRBatchResponse(_:keywords:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](XPCHandler.decryptPIRBatchResponse(_:keywords:clientConfig:), 0, 0);
}

uint64_t XPCHandler.decryptPIRBatchResponse(_:keywords:clientConfig:)()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v10 = *(v0 + 16);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v10;
  *(v4 + 40) = v3;

  v5 = v2;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = XPCHandler.decryptPIRBatchResponse(_:keywords:clientConfig:);
  v8 = *(v0 + 40);
  v7 = *(v0 + 48);

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSaySo8NSObjectCG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_SaySo8S6CG_TG5AcjA14RequestContextVyAA0W13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nncn_nTf4nndggg_n(v2, 0xD000000000000031, 0x8000000225036E20, v7, v8, &async function pointer to partial apply for closure #1 in XPCHandler.decryptPIRBatchResponse(_:keywords:clientConfig:), v4);
}

uint64_t XPCHandler.decryptPIRBatchResponse(_:keywords:clientConfig:)(uint64_t a1)
{
  v4 = *(*v2 + 40);
  v5 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](XPCHandler.setPIRConfig(_:clientConfig:), 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t closure #1 in XPCHandler.decryptPIRBatchResponse(_:keywords:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](closure #1 in XPCHandler.decryptPIRBatchResponse(_:keywords:clientConfig:), 0, 0);
}

uint64_t closure #1 in XPCHandler.decryptPIRBatchResponse(_:keywords:clientConfig:)()
{
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = closure #1 in XPCHandler.decryptPIRBatchResponse(_:keywords:clientConfig:);
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];
  v5 = v0[3];

  return RequestsManager.decryptPIRBatchResponse(encryptedResponses:keywords:context:)(v4, v2, v3, v5);
}

{
  v1 = *(v0 + 72);
  v2 = *(v1 + 16);
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
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

    v6 = v9;
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  **(v0 + 16) = v6;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t closure #1 in XPCHandler.decryptPIRBatchResponse(_:keywords:clientConfig:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 72) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](closure #1 in XPCHandler.decryptPIRBatchResponse(_:keywords:clientConfig:), 0, 0);
  }
}

uint64_t @objc closure #1 in XPCHandler.decryptPIRBatchResponse(_:keywords:clientConfig:)(void *a1, void *a2, void *a3, void *aBlock, uint64_t a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v9 = a1;
  v10 = a2;
  v11 = a3;

  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v5[5] = v12;
  v5[6] = v14;
  v5[7] = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return MEMORY[0x2822009F8](@objc closure #1 in XPCHandler.decryptPIRBatchResponse(_:keywords:clientConfig:), 0, 0);
}

uint64_t @objc closure #1 in XPCHandler.decryptPIRBatchResponse(_:keywords:clientConfig:)()
{
  v1 = *(v0 + 56);
  v10 = *(v0 + 40);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v10;
  *(v4 + 40) = v1;
  v5 = v3;

  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = @objc closure #1 in XPCHandler.decryptPIRBatchResponse(_:keywords:clientConfig:);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSaySo8NSObjectCG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_SaySo8S6CG_TG5AcjA14RequestContextVyAA0W13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nncn_nTf4nndggg_n(v3, 0xD000000000000031, 0x8000000225036E20, v7, v8, &closure #1 in XPCHandler.decryptPIRBatchResponse(_:keywords:clientConfig:)partial apply, v4);
}

{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);

  outlined consume of Data._Representation(v2, v1);
  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = *(v0 + 32);
  (v4)[2](v4, isa, 0);

  _Block_release(v4);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t @objc closure #1 in XPCHandler.decryptPIRBatchResponse(_:keywords:clientConfig:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = @objc closure #1 in XPCHandler.decryptPIRBatchResponse(_:keywords:clientConfig:);
  }

  else
  {

    *(v4 + 88) = a1;

    v5 = @objc closure #1 in XPCHandler.decryptPIRBatchResponse(_:keywords:clientConfig:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t XPCHandler.constructPIRRequest(withLatitude:longitude:clientConfig:)(uint64_t a1, double a2, double a3)
{
  *(v4 + 48) = a1;
  *(v4 + 56) = v3;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  return MEMORY[0x2822009F8](XPCHandler.constructPIRRequest(withLatitude:longitude:clientConfig:), 0, 0);
}

uint64_t XPCHandler.constructPIRRequest(withLatitude:longitude:clientConfig:)()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v0[8] = v5;
  v5[2] = v1;
  v5[3] = v4;
  v5[4] = v3;

  v6 = v2;
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = XPCHandler.constructPIRBatchRequest(withKeywords:shardIds:clientConfig:);
  v9 = v0[6];
  v8 = v0[7];

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_n((v0 + 2), v2, 0xD000000000000039, 0x8000000225036E60, v8, v8, v9, &async function pointer to partial apply for closure #1 in XPCHandler.constructPIRRequest(withLatitude:longitude:clientConfig:));
}

uint64_t @objc closure #1 in XPCHandler.constructPIRRequest(withLatitude:longitude:clientConfig:)(void *a1, void *aBlock, uint64_t a3, double a4, double a5)
{
  v5[2] = a1;
  v5[3] = a3;
  v5[4] = _Block_copy(aBlock);
  v9 = a1;

  v10 = swift_task_alloc();
  v5[5] = v10;
  *v10 = v5;
  v10[1] = @objc closure #1 in XPCHandler.requestData(by:clientConfig:);

  return XPCHandler.constructPIRRequest(withLatitude:longitude:clientConfig:)(v9, a4, a5);
}

uint64_t XPCHandler.decryptPIRResponse(_:latitude:longitude:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v6 + 64) = a3;
  *(v6 + 72) = v5;
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  return MEMORY[0x2822009F8](XPCHandler.decryptPIRResponse(_:latitude:longitude:clientConfig:), 0, 0);
}

uint64_t XPCHandler.decryptPIRResponse(_:latitude:longitude:clientConfig:)()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v7 = swift_task_alloc();
  v0[10] = v7;
  v7[2] = v1;
  v7[3] = v6;
  v7[4] = v5;
  v7[5] = v4;
  v7[6] = v3;

  v8 = v2;
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = XPCHandler.decryptPIRResponse(_:latitude:longitude:clientConfig:);
  v11 = v0[8];
  v10 = v0[9];

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_n((v0 + 2), v2, 0xD000000000000036, 0x8000000225036EA0, v10, v10, v11, &async function pointer to partial apply for closure #1 in XPCHandler.decryptPIRResponse(_:latitude:longitude:clientConfig:));
}

{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = XPCHandler.decryptPIRResponse(_:latitude:longitude:clientConfig:);
  }

  else
  {

    v2 = XPCHandler.requestData(by:clientConfig:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t @objc closure #1 in XPCHandler.decryptPIRResponse(_:latitude:longitude:clientConfig:)(void *a1, void *a2, void *aBlock, uint64_t a4, double a5, double a6)
{
  v6[2] = a2;
  v6[3] = a4;
  v6[4] = _Block_copy(aBlock);
  v11 = a1;
  v12 = a2;

  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v6[5] = v13;
  v6[6] = v15;
  v16 = swift_task_alloc();
  v6[7] = v16;
  *v16 = v6;
  v16[1] = @objc closure #1 in XPCHandler.decryptPIRResponse(_:latitude:longitude:clientConfig:);

  return XPCHandler.decryptPIRResponse(_:latitude:longitude:clientConfig:)(v13, v15, v12, a5, a6);
}

uint64_t XPCHandler.asyncResponseData(byKeywords:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](XPCHandler.asyncResponseData(byKeywords:clientConfig:), 0, 0);
}

{
  v6 = *(*v3 + 24);
  v7 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](XPCHandler.requestData(byIndices:clientConfig:), 0, 0);
  }

  else
  {

    v8 = *(v7 + 8);

    return v8(a1, a2);
  }
}

uint64_t XPCHandler.asyncResponseData(byKeywords:clientConfig:)()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;

  v5 = v2;
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = XPCHandler.asyncResponseData(byKeywords:clientConfig:);
  v8 = v0[3];
  v7 = v0[4];

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSS_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_SS_TG5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlySSIsgHnrzo_Tf1nncn_nTf4nndggg_n(v2, 0xD00000000000002BLL, 0x8000000225036EE0, v7, v8, &async function pointer to partial apply for closure #1 in XPCHandler.asyncResponseData(byKeywords:clientConfig:), v4);
}

uint64_t closure #1 in XPCHandler.asyncResponseData(byKeywords:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](closure #1 in XPCHandler.asyncResponseData(byKeywords:clientConfig:), 0, 0);
}

uint64_t closure #1 in XPCHandler.asyncResponseData(byKeywords:clientConfig:)()
{
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = closure #1 in XPCHandler.asyncResponseData(byKeywords:clientConfig:);
  v2 = v0[5];
  v3 = v0[3];

  return RequestsManager.requestDataWithAsyncResponse(keywords:context:)(v2, v3);
}

{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 64);
  v2[1] = v1;
  return (*(v0 + 8))();
}

uint64_t closure #1 in XPCHandler.asyncResponseData(byKeywords:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 56) = a2;
    *(v6 + 64) = a1;

    return MEMORY[0x2822009F8](closure #1 in XPCHandler.asyncResponseData(byKeywords:clientConfig:), 0, 0);
  }
}

uint64_t @objc closure #1 in XPCHandler.asyncResponseData(byKeywords:clientConfig:)(uint64_t a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v4[5] = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a2;

  return MEMORY[0x2822009F8](@objc closure #1 in XPCHandler.asyncResponseData(byKeywords:clientConfig:), 0, 0);
}

uint64_t @objc closure #1 in XPCHandler.asyncResponseData(byKeywords:clientConfig:)()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = v3;

  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = @objc closure #1 in XPCHandler.asyncResponseData(byKeywords:clientConfig:);
  v8 = v0[2];
  v7 = v0[3];

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSS_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_SS_TG5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlySSIsgHnrzo_Tf1nncn_nTf4nndggg_n(v3, 0xD00000000000002BLL, 0x8000000225036EE0, v7, v8, &closure #1 in XPCHandler.asyncResponseData(byKeywords:clientConfig:)partial apply, v4);
}

{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  v3 = MEMORY[0x22AA609C0](v2, v1);

  v4 = *(v0 + 32);
  (v4)[2](v4, v3, 0);

  _Block_release(v4);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t @objc closure #1 in XPCHandler.asyncResponseData(byKeywords:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 64) = v2;

  if (v2)
  {
    v7 = @objc closure #1 in XPCHandler.asyncResponseData(byKeywords:clientConfig:);
  }

  else
  {

    *(v6 + 72) = a2;
    *(v6 + 80) = a1;

    v7 = @objc closure #1 in XPCHandler.asyncResponseData(byKeywords:clientConfig:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t XPCHandler.similarityScores(forElements:shardIndices:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](XPCHandler.similarityScores(forElements:shardIndices:clientConfig:), 0, 0);
}

uint64_t XPCHandler.similarityScores(forElements:shardIndices:clientConfig:)()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = swift_task_alloc();
  v0[6] = v5;
  v5[2] = v3;
  v5[3] = v1;
  v5[4] = v4;

  v6 = v2;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = XPCHandler.similarityScores(forElements:shardIndices:clientConfig:);
  v9 = v0[4];
  v8 = v0[5];

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSaySaySo18CMLSimilarityScoreCGG_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r79O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_SaySaySo18sT7CGG_TG5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_n(v2, 0xD000000000000038, 0x8000000225036F10, v8, v9, &async function pointer to partial apply for closure #1 in XPCHandler.similarityScores(forElements:shardIndices:clientConfig:), v5);
}

uint64_t XPCHandler.similarityScores(forElements:shardIndices:clientConfig:)(uint64_t a1)
{
  v4 = *(*v2 + 32);
  v5 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](XPCHandler.similarityScores(forElements:shardIndices:clientConfig:), 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t closure #1 in XPCHandler.similarityScores(forElements:shardIndices:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](closure #1 in XPCHandler.similarityScores(forElements:shardIndices:clientConfig:), 0, 0);
}

char *closure #1 in XPCHandler.similarityScores(forElements:shardIndices:clientConfig:)()
{
  v1 = v0[4];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v17 = v0[4];
    }

    else
    {
      v17 = v1 & 0xFFFFFFFFFFFFFF8;
    }

    v2 = MEMORY[0x22AA610B0](v17);
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v18 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    v3 = v18;
    if ((v1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        v6 = [MEMORY[0x22AA60F70](i v0[4])];
        swift_unknownObjectRelease();
        v8 = *(v18 + 16);
        v7 = *(v18 + 24);
        if (v8 >= v7 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
        }

        *(v18 + 16) = v8 + 1;
        *(v18 + 8 * v8 + 32) = v6;
      }
    }

    else
    {
      v9 = (v0[4] + 32);
      do
      {
        v10 = [*v9 integerValue];
        v19 = v3;
        v12 = *(v3 + 16);
        v11 = *(v3 + 24);
        if (v12 >= v11 >> 1)
        {
          v13 = v10;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
          v10 = v13;
          v3 = v19;
        }

        *(v3 + 16) = v12 + 1;
        *(v3 + 8 * v12 + 32) = v10;
        ++v9;
        --v2;
      }

      while (v2);
    }
  }

  v0[7] = v3;
  v14 = swift_task_alloc();
  v0[8] = v14;
  *v14 = v0;
  v14[1] = closure #1 in XPCHandler.similarityScores(forElements:shardIndices:clientConfig:);
  v15 = v0[6];
  v16 = v0[3];

  return RequestsManager.similarityScores(elements:shardIndices:context:)(v15, v3, v16);
}

uint64_t closure #1 in XPCHandler.similarityScores(forElements:shardIndices:clientConfig:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = closure #1 in XPCHandler.similarityScores(forElements:shardIndices:clientConfig:);
  }

  else
  {

    *(v4 + 80) = a1;
    v5 = closure #1 in XPCHandler.similarityScores(forElements:shardIndices:clientConfig:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t @objc closure #1 in XPCHandler.similarityScores(forElements:shardIndices:clientConfig:)(uint64_t a1, uint64_t a2, void *a3, void *aBlock, uint64_t a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v5[5] = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v5[6] = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;

  return MEMORY[0x2822009F8](@objc closure #1 in XPCHandler.similarityScores(forElements:shardIndices:clientConfig:), 0, 0);
}

uint64_t @objc closure #1 in XPCHandler.similarityScores(forElements:shardIndices:clientConfig:)()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[2];
  v3 = v0[3];
  v5 = swift_task_alloc();
  v0[7] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v6 = v4;

  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = @objc closure #1 in XPCHandler.similarityScores(forElements:shardIndices:clientConfig:);
  v9 = v0[2];
  v8 = v0[3];

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSaySaySo18CMLSimilarityScoreCGG_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r79O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_SaySaySo18sT7CGG_TG5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_n(v4, 0xD000000000000038, 0x8000000225036F10, v8, v9, &closure #1 in XPCHandler.similarityScores(forElements:shardIndices:clientConfig:)partial apply, v5);
}

{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18CMLSimilarityScoreCGMd, &_sSaySo18CMLSimilarityScoreCGMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v2 = *(v0 + 32);
  (v2)[2](v2, isa, 0);

  _Block_release(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t @objc closure #1 in XPCHandler.similarityScores(forElements:shardIndices:clientConfig:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = @objc closure #1 in XPCHandler.similarityScores(forElements:shardIndices:clientConfig:);
  }

  else
  {

    *(v4 + 80) = a1;

    v5 = @objc closure #1 in XPCHandler.similarityScores(forElements:shardIndices:clientConfig:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t XPCHandler.setPECConfig(_:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](XPCHandler.setPECConfig(_:clientConfig:), 0, 0);
}

uint64_t XPCHandler.setPECConfig(_:clientConfig:)()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v0[7] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;

  v5 = v2;
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = XPCHandler.setPIRConfig(_:clientConfig:);
  v8 = v0[5];
  v7 = v0[6];

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_n((v0 + 2), v2, 0xD00000000000001DLL, 0x8000000225036F50, v7, v7, v8, &async function pointer to partial apply for closure #1 in XPCHandler.setPECConfig(_:clientConfig:));
}

uint64_t closure #1 in XPCHandler.setPECConfig(_:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](closure #1 in XPCHandler.setPECConfig(_:clientConfig:), 0, 0);
}

uint64_t closure #1 in XPCHandler.setPECConfig(_:clientConfig:)()
{
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = closure #1 in XPCHandler.setPECConfig(_:clientConfig:);
  v2 = v0[5];
  v3 = v0[3];

  return RequestsManager.setPECConfig(config:context:)(v2, v3);
}

{
  **(v0 + 16) = vextq_s8(*(v0 + 56), *(v0 + 56), 8uLL);
  return (*(v0 + 8))();
}

uint64_t closure #1 in XPCHandler.setPECConfig(_:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 56) = a2;
    *(v6 + 64) = a1;

    return MEMORY[0x2822009F8](closure #1 in XPCHandler.setPECConfig(_:clientConfig:), 0, 0);
  }
}

uint64_t @objc closure #1 in XPCHandler.setPECConfig(_:clientConfig:)(void *a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v7 = a1;
  v8 = a2;

  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = @objc closure #1 in XPCHandler.setPECConfig(_:clientConfig:);

  return XPCHandler.setPECConfig(_:clientConfig:)(v7, v8);
}

uint64_t @objc closure #1 in XPCHandler.setPECConfig(_:clientConfig:)(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 24);
  v9 = *(*v3 + 16);
  v10 = *v3;

  if (v4)
  {
    v11 = _convertErrorToNSError(_:)();

    v12 = v11;
    v13 = 0;
  }

  else if (a2 >> 60 == 15)
  {
    v12 = 0;
    v13 = 0;
    v11 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(a1, a2);
    v13 = isa;
    v12 = 0;
    v11 = isa;
  }

  v15 = *(v7 + 40);
  (v15)[2](v15, v13, v12);

  _Block_release(v15);
  v16 = *(v10 + 8);

  return v16();
}

uint64_t XPCHandler.encryptBatch(ofElements:shardIndices:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x2822009F8](XPCHandler.encryptBatch(ofElements:shardIndices:clientConfig:), 0, 0);
}

uint64_t XPCHandler.encryptBatch(ofElements:shardIndices:clientConfig:)()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v0[8] = v5;
  v5[2] = v3;
  v5[3] = v1;
  v5[4] = v4;

  v6 = v2;
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = XPCHandler.constructPIRBatchRequest(withKeywords:shardIds:clientConfig:);
  v9 = v0[6];
  v8 = v0[7];

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_n((v0 + 2), v2, 0xD000000000000033, 0x8000000225036F70, v8, v8, v9, &async function pointer to partial apply for closure #1 in XPCHandler.encryptBatch(ofElements:shardIndices:clientConfig:));
}

uint64_t closure #1 in XPCHandler.encryptBatch(ofElements:shardIndices:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](closure #1 in XPCHandler.encryptBatch(ofElements:shardIndices:clientConfig:), 0, 0);
}

char *closure #1 in XPCHandler.encryptBatch(ofElements:shardIndices:clientConfig:)()
{
  v1 = v0[4];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v17 = v0[4];
    }

    else
    {
      v17 = v1 & 0xFFFFFFFFFFFFFF8;
    }

    v2 = MEMORY[0x22AA610B0](v17);
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v18 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    v3 = v18;
    if ((v1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        v6 = [MEMORY[0x22AA60F70](i v0[4])];
        swift_unknownObjectRelease();
        v8 = *(v18 + 16);
        v7 = *(v18 + 24);
        if (v8 >= v7 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
        }

        *(v18 + 16) = v8 + 1;
        *(v18 + 8 * v8 + 32) = v6;
      }
    }

    else
    {
      v9 = (v0[4] + 32);
      do
      {
        v10 = [*v9 integerValue];
        v19 = v3;
        v12 = *(v3 + 16);
        v11 = *(v3 + 24);
        if (v12 >= v11 >> 1)
        {
          v13 = v10;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
          v10 = v13;
          v3 = v19;
        }

        *(v3 + 16) = v12 + 1;
        *(v3 + 8 * v12 + 32) = v10;
        ++v9;
        --v2;
      }

      while (v2);
    }
  }

  v0[7] = v3;
  v14 = swift_task_alloc();
  v0[8] = v14;
  *v14 = v0;
  v14[1] = closure #1 in XPCHandler.encryptBatch(ofElements:shardIndices:clientConfig:);
  v15 = v0[6];
  v16 = v0[3];

  return RequestsManager.encryptBatch(batchOfElements:shardIndices:context:)(v15, v3, v16);
}

uint64_t closure #1 in XPCHandler.encryptBatch(ofElements:shardIndices:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 72) = v2;

  if (v2)
  {
    v7 = closure #1 in XPCHandler.encryptBatch(ofElements:shardIndices:clientConfig:);
  }

  else
  {

    *(v6 + 80) = a2;
    *(v6 + 88) = a1;
    v7 = closure #1 in XPCHandler.encryptBatch(ofElements:shardIndices:clientConfig:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t closure #1 in XPCHandler.encryptBatch(ofElements:shardIndices:clientConfig:)()
{
  **(v0 + 16) = vextq_s8(*(v0 + 80), *(v0 + 80), 8uLL);
  return (*(v0 + 8))();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t @objc closure #1 in XPCHandler.encryptBatch(ofElements:shardIndices:clientConfig:)(uint64_t a1, uint64_t a2, void *a3, void *aBlock, uint64_t a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5[5] = v7;
  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5[6] = v8;
  v9 = a3;

  v10 = swift_task_alloc();
  v5[7] = v10;
  *v10 = v5;
  v10[1] = @objc closure #1 in XPCHandler.encryptBatch(ofElements:shardIndices:clientConfig:);

  return XPCHandler.encryptBatch(ofElements:shardIndices:clientConfig:)(v7, v8, v9);
}

uint64_t @objc closure #1 in XPCHandler.encryptBatch(ofElements:shardIndices:clientConfig:)(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 16);
  v9 = *v3;

  if (v4)
  {
    v10 = _convertErrorToNSError(_:)();

    v11 = v10;
    v12 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(a1, a2);
    v12 = isa;
    v11 = 0;
    v10 = isa;
  }

  v14 = *(v7 + 32);
  (v14)[2](v14, v12, v11);

  _Block_release(v14);
  v15 = *(v9 + 8);

  return v15();
}

uint64_t XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:), 0, 0);
}

uint64_t XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:)()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v11 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v11;
  *(v5 + 40) = v4;
  *(v5 + 48) = v3;

  v6 = v2;
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:);
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_n(v2, 0xD000000000000052, 0x8000000225036FB0, v8, v9, &async function pointer to partial apply for closure #1 in XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:), v5);
}

uint64_t XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:)(uint64_t a1)
{
  v4 = *(*v2 + 48);
  v5 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](XPCHandler.requestData(byLatitude:longitude:clientConfig:), 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t closure #1 in XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](closure #1 in XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:), 0, 0);
}

uint64_t closure #1 in XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:)()
{
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = closure #1 in XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:);
  v2 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[3];

  return RequestsManager.encryptDifferentiallyPrivateFakes(batchOfElements:shardIndex:shardCount:pecConfig:context:)(v5, v4, v2, v3, v6);
}

uint64_t closure #1 in XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 80) = a1;

    return MEMORY[0x2822009F8](closure #1 in XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:), 0, 0);
  }
}

uint64_t @objc closure #1 in XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *aBlock, uint64_t a7)
{
  v7[5] = a5;
  v7[6] = a7;
  v7[3] = a3;
  v7[4] = a4;
  v7[2] = a2;
  v7[7] = _Block_copy(aBlock);
  v7[8] = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a4;
  v11 = a5;

  return MEMORY[0x2822009F8](@objc closure #1 in XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:), 0, 0);
}

uint64_t @objc closure #1 in XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:)()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 32);
  v11 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  *(v5 + 32) = v11;
  *(v5 + 48) = v4;
  v6 = v3;

  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = @objc closure #1 in XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:);
  v9 = *(v0 + 40);
  v8 = *(v0 + 48);

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSay10Foundation4DataVG_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r85O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_Say10Foundation4T6VG_TG5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_n(v3, 0xD000000000000052, 0x8000000225036FB0, v8, v9, &closure #1 in XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:)partial apply, v5);
}

{
  v1 = *(v0 + 40);

  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = *(v0 + 56);
  (v3)[2](v3, isa, 0);

  _Block_release(v3);
  v4 = *(v0 + 8);

  return v4();
}

{
  v1 = v0[11];
  v2 = v0[5];
  v3 = v0[4];

  v4 = _convertErrorToNSError(_:)();

  v5 = v0[7];
  (v5)[2](v5, 0, v4);

  _Block_release(v5);
  v6 = v0[1];

  return v6();
}

uint64_t @objc closure #1 in XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = @objc closure #1 in XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:);
  }

  else
  {

    *(v4 + 96) = a1;

    v5 = @objc closure #1 in XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t XPCHandler.decryptBatch(ofSimilarityScores:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](XPCHandler.decryptBatch(ofSimilarityScores:clientConfig:), 0, 0);
}

uint64_t XPCHandler.decryptBatch(ofSimilarityScores:clientConfig:)()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = swift_task_alloc();
  v0[6] = v5;
  v5[2] = v1;
  v5[3] = v4;
  v5[4] = v3;

  v6 = v2;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = XPCHandler.similarityScores(forElements:shardIndices:clientConfig:);
  v9 = v0[4];
  v8 = v0[5];

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSaySaySo18CMLSimilarityScoreCGG_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r79O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_SaySaySo18sT7CGG_TG5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_n(v2, 0xD00000000000002ELL, 0x8000000225037010, v8, v9, &async function pointer to partial apply for closure #1 in XPCHandler.decryptBatch(ofSimilarityScores:clientConfig:), v5);
}

uint64_t closure #1 in XPCHandler.decryptBatch(ofSimilarityScores:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](closure #1 in XPCHandler.decryptBatch(ofSimilarityScores:clientConfig:), 0, 0);
}

uint64_t closure #1 in XPCHandler.decryptBatch(ofSimilarityScores:clientConfig:)()
{
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = closure #1 in XPCHandler.decryptBatch(ofSimilarityScores:clientConfig:);
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];

  return RequestsManager.decryptBatch(batchOfSimilarityScores:context:)(v3, v2, v4);
}

{
  **(v0 + 16) = *(v0 + 64);
  return (*(v0 + 8))();
}

uint64_t closure #1 in XPCHandler.decryptBatch(ofSimilarityScores:clientConfig:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 64) = a1;

    return MEMORY[0x2822009F8](closure #1 in XPCHandler.decryptBatch(ofSimilarityScores:clientConfig:), 0, 0);
  }
}

uint64_t @objc closure #1 in XPCHandler.decryptBatch(ofSimilarityScores:clientConfig:)(void *a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a1;
  v8 = a2;

  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v4[5] = v9;
  v4[6] = v11;

  return MEMORY[0x2822009F8](@objc closure #1 in XPCHandler.decryptBatch(ofSimilarityScores:clientConfig:), 0, 0);
}

uint64_t @objc closure #1 in XPCHandler.decryptBatch(ofSimilarityScores:clientConfig:)()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[2];
  v3 = v0[3];
  v5 = swift_task_alloc();
  v0[7] = v5;
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v1;
  v6 = v4;

  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = @objc closure #1 in XPCHandler.decryptBatch(ofSimilarityScores:clientConfig:);
  v9 = v0[2];
  v8 = v0[3];

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSaySaySo18CMLSimilarityScoreCGG_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r79O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_SaySaySo18sT7CGG_TG5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nncn_nTf4nndggg_n(v4, 0xD00000000000002ELL, 0x8000000225037010, v8, v9, &closure #1 in XPCHandler.decryptBatch(ofSimilarityScores:clientConfig:)partial apply, v5);
}

{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);

  outlined consume of Data._Representation(v2, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18CMLSimilarityScoreCGMd, &_sSaySo18CMLSimilarityScoreCGMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = *(v0 + 32);
  (v4)[2](v4, isa, 0);

  _Block_release(v4);
  v5 = *(v0 + 8);

  return v5();
}

{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[5];
  v4 = v0[2];

  outlined consume of Data._Representation(v3, v2);
  v5 = _convertErrorToNSError(_:)();

  v6 = v0[4];
  (v6)[2](v6, 0, v5);

  _Block_release(v6);
  v7 = v0[1];

  return v7();
}

uint64_t @objc closure #1 in XPCHandler.decryptBatch(ofSimilarityScores:clientConfig:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  *(*v2 + 72) = v1;

  if (v1)
  {
    v6 = @objc closure #1 in XPCHandler.decryptBatch(ofSimilarityScores:clientConfig:);
  }

  else
  {
    *(v4 + 80) = a1;

    v6 = @objc closure #1 in XPCHandler.decryptBatch(ofSimilarityScores:clientConfig:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:), 0, 0);
}

uint64_t XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:)()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = swift_task_alloc();
  v0[6] = v5;
  v5[2] = v3;
  v5[3] = v1;
  v5[4] = v4;

  v6 = v2;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:);
  v9 = v0[4];
  v8 = v0[5];

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSS_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_SS_TG5AcjA14RequestContextVyAA0V13PECParametersVGxs0E0_pRi_zRi0_zlySSIsgHnrzo_Tf1nncn_nTf4nndggg_n(v2, 0xD000000000000045, 0x8000000225037040, v8, v9, &async function pointer to partial apply for closure #1 in XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:), v5);
}

uint64_t XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 32);
  v7 = *v3;
  *(*v3 + 64) = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](XPCHandler.requestData(byKeywords:shardIds:clientConfig:), 0, 0);
  }

  else
  {

    v8 = *(v7 + 8);

    return v8(a1, a2);
  }
}

uint64_t closure #1 in XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](closure #1 in XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:), 0, 0);
}

char *closure #1 in XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:)()
{
  v1 = v0[4];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v17 = v0[4];
    }

    else
    {
      v17 = v1 & 0xFFFFFFFFFFFFFF8;
    }

    v2 = MEMORY[0x22AA610B0](v17);
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v18 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    v3 = v18;
    if ((v1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        v6 = [MEMORY[0x22AA60F70](i v0[4])];
        swift_unknownObjectRelease();
        v8 = *(v18 + 16);
        v7 = *(v18 + 24);
        if (v8 >= v7 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
        }

        *(v18 + 16) = v8 + 1;
        *(v18 + 8 * v8 + 32) = v6;
      }
    }

    else
    {
      v9 = (v0[4] + 32);
      do
      {
        v10 = [*v9 integerValue];
        v19 = v3;
        v12 = *(v3 + 16);
        v11 = *(v3 + 24);
        if (v12 >= v11 >> 1)
        {
          v13 = v10;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
          v10 = v13;
          v3 = v19;
        }

        *(v3 + 16) = v12 + 1;
        *(v3 + 8 * v12 + 32) = v10;
        ++v9;
        --v2;
      }

      while (v2);
    }
  }

  v0[7] = v3;
  v14 = swift_task_alloc();
  v0[8] = v14;
  *v14 = v0;
  v14[1] = closure #1 in XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:);
  v15 = v0[6];
  v16 = v0[3];

  return RequestsManager.similarityScoresWithAsyncResponse(elements:shardIndices:context:)(v15, v3, v16);
}

uint64_t closure #1 in XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 72) = v2;

  if (v2)
  {
    v7 = closure #1 in XPCHandler.similarityScores(forElements:shardIndices:clientConfig:);
  }

  else
  {

    *(v6 + 80) = a2;
    *(v6 + 88) = a1;
    v7 = closure #1 in XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t closure #1 in XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:)()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 88);
  v2[1] = v1;
  return (*(v0 + 8))();
}

uint64_t @objc closure #1 in XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:)(uint64_t a1, uint64_t a2, void *a3, void *aBlock, uint64_t a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v5[5] = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v5[6] = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;

  return MEMORY[0x2822009F8](@objc closure #1 in XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:), 0, 0);
}

uint64_t @objc closure #1 in XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:)()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[2];
  v3 = v0[3];
  v5 = swift_task_alloc();
  v0[7] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v6 = v4;

  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = @objc closure #1 in XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:);
  v9 = v0[2];
  v8 = v0[3];

  return _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSS_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_SS_TG5AcjA14RequestContextVyAA0V13PECParametersVGxs0E0_pRi_zRi0_zlySSIsgHnrzo_Tf1nncn_nTf4nndggg_n(v4, 0xD000000000000045, 0x8000000225037040, v8, v9, &closure #1 in XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:)partial apply, v5);
}

{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  v3 = MEMORY[0x22AA609C0](v2, v1);

  v4 = *(v0 + 32);
  (v4)[2](v4, v3, 0);

  _Block_release(v4);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t @objc closure #1 in XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 72) = v2;

  if (v2)
  {
    v7 = @objc closure #1 in XPCHandler.similarityScores(forElements:shardIndices:clientConfig:);
  }

  else
  {

    *(v6 + 80) = a2;
    *(v6 + 88) = a1;

    v7 = @objc closure #1 in XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t XPCHandler.queryStatus(for:options:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](XPCHandler.queryStatus(for:options:), 0, 0);
}

uint64_t XPCHandler.queryStatus(for:options:)()
{
  v1 = v0[2];

  v2 = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = XPCHandler.queryStatus(for:options:);
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];

  return specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:)(v1, 0xD000000000000019, 0x8000000225037090, v4, v6, v5);
}

uint64_t XPCHandler.queryStatus(for:options:)(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t @objc closure #1 in XPCHandler.queryStatus(for:options:)(void *a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v6 = a1;

  return MEMORY[0x2822009F8](@objc closure #1 in XPCHandler.queryStatus(for:options:), 0, 0);
}

uint64_t @objc closure #1 in XPCHandler.queryStatus(for:options:)()
{
  v1 = v0[2];
  v2 = v1;

  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = @objc closure #1 in XPCHandler.queryStatus(for:options:);
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];

  return specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:)(v1, 0xD000000000000019, 0x8000000225037090, v4, v6, v5);
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);

  (v2)[2](v2, v1, 0);
  _Block_release(v2);

  v3 = *(v0 + 8);

  return v3();
}

{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  v3 = _convertErrorToNSError(_:)();

  (v2)[2](v2, 0, v3);
  _Block_release(v2);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t @objc closure #1 in XPCHandler.queryStatus(for:options:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  *(*v2 + 56) = v1;

  if (v1)
  {
    v6 = @objc closure #1 in XPCHandler.queryStatus(for:options:);
  }

  else
  {
    *(v4 + 64) = a1;
    v6 = @objc closure #1 in XPCHandler.queryStatus(for:options:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t XPCHandler.dataVaultDirectory()()
{
  if (one-time initialization token for url != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for URL();
  v3 = __swift_project_value_buffer(v2, static CacheDirectory.url);
  (*(*(v2 - 8) + 16))(v1, v3, v2);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t @objc closure #1 in XPCHandler.dataVaultDirectory()(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);

  return MEMORY[0x2822009F8](@objc closure #1 in XPCHandler.dataVaultDirectory(), 0, 0);
}

uint64_t @objc closure #1 in XPCHandler.dataVaultDirectory()()
{
  if (one-time initialization token for url != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for URL();
  __swift_project_value_buffer(v2, static CacheDirectory.url);
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  (v1)[2](v1, v4);

  _Block_release(v1);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t XPCHandler.cacheFile(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = type metadata accessor for URL.DirectoryHint();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](XPCHandler.cacheFile(for:), 0, 0);
}

uint64_t XPCHandler.cacheFile(for:)()
{
  if (one-time initialization token for url != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[5];
  v7 = v0[6];
  v10 = v0[10];
  __swift_project_value_buffer(v10, static CacheDirectory.url);
  v0[2] = v6;
  v0[3] = v7;
  (*(v5 + 104))(v3, *MEMORY[0x277CC91D8], v4);
  lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(component:directoryHint:)();
  (*(v5 + 8))(v3, v4);
  URL.appendingPathExtension(_:)();
  (*(v2 + 8))(v1, v10);

  v8 = v0[1];

  return v8();
}

uint64_t @objc closure #1 in XPCHandler.cacheFile(for:)(uint64_t a1, const void *a2)
{
  v4 = type metadata accessor for URL.DirectoryHint();
  v2[6] = v4;
  v2[7] = *(v4 - 8);
  v2[8] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v2[9] = v5;
  v2[10] = *(v5 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = _Block_copy(a2);
  v2[4] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2[5] = v6;

  return MEMORY[0x2822009F8](@objc closure #1 in XPCHandler.cacheFile(for:), 0, 0);
}

uint64_t @objc closure #1 in XPCHandler.cacheFile(for:)()
{
  if (one-time initialization token for url != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[12];
  v16 = v0[13];
  v4 = v0[10];
  v15 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v8 = v0[6];
  v7 = v0[7];
  __swift_project_value_buffer(v5, static CacheDirectory.url);
  v0[2] = v1;
  v0[3] = v2;
  (*(v7 + 104))(v6, *MEMORY[0x277CC91D8], v8);
  lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(component:directoryHint:)();
  (*(v7 + 8))(v6, v8);

  URL.appendingPathExtension(_:)();
  v9 = *(v4 + 8);
  v9(v15, v5);
  URL._bridgeToObjectiveC()(v10);
  v12 = v11;
  v9(v3, v5);
  (v16)[2](v16, v12);

  _Block_release(v16);

  v13 = v0[1];

  return v13();
}

uint64_t XPCHandler.listUseCaseGroups()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](XPCHandler.listUseCaseGroups(), 0, 0);
}

{

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = XPCHandler.listUseCaseGroups();
  v2 = *(v0 + 16);

  return specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:)(0, 0xD000000000000013, 0x80000002250370B0, v2);
}

uint64_t XPCHandler.listUseCaseGroups()(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t @objc closure #1 in XPCHandler.listUseCaseGroups()(const void *a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);

  return MEMORY[0x2822009F8](@objc closure #1 in XPCHandler.listUseCaseGroups(), 0, 0);
}

uint64_t @objc closure #1 in XPCHandler.listUseCaseGroups()()
{

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = @objc closure #1 in XPCHandler.listUseCaseGroups();
  v2 = *(v0 + 16);

  return specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:)(0, 0xD000000000000013, 0x80000002250370B0, v2);
}

{

  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for CMLUseCaseGroup, off_278540FD8);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v2 = *(v0 + 24);
  (v2)[2](v2, isa, 0);

  _Block_release(v2);
  v3 = *(v0 + 8);

  return v3();
}

{
  v1 = v0[5];

  v2 = _convertErrorToNSError(_:)();

  v3 = v0[3];
  (v3)[2](v3, 0, v2);

  _Block_release(v3);
  v4 = v0[1];

  return v4();
}

uint64_t @objc closure #1 in XPCHandler.listUseCaseGroups()(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = @objc closure #1 in XPCHandler.listUseCaseGroups();
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = @objc closure #1 in XPCHandler.listUseCaseGroups();
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t XPCHandler.configureUseCaseGroup(withName:useCaseGroup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](XPCHandler.configureUseCaseGroup(withName:useCaseGroup:), 0, 0);
}

uint64_t XPCHandler.configureUseCaseGroup(withName:useCaseGroup:)()
{
  v1 = v0[4];

  v2 = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = XPCHandler.configureUseCaseGroup(withName:useCaseGroup:);
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];

  return specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:)(v3, 0, 0xD00000000000002DLL, 0x80000002250370D0, v4, v4, v5, v6);
}

{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = XPCHandler.configureUseCaseGroup(withName:useCaseGroup:);
  }

  else
  {
    v2 = XPCHandler.configureUseCaseGroup(withName:useCaseGroup:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  return (*(v0 + 8))();
}

{
  return (*(v0 + 8))();
}

uint64_t closure #1 in XPCHandler.configureUseCaseGroup(withName:useCaseGroup:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  return MEMORY[0x2822009F8](closure #1 in XPCHandler.configureUseCaseGroup(withName:useCaseGroup:), 0, 0);
}

uint64_t closure #1 in XPCHandler.configureUseCaseGroup(withName:useCaseGroup:)()
{
  v1 = *(*(v0 + 48) + 24);
  v2 = MEMORY[0x22AA609C0](0xD000000000000030, 0x8000000225037820);
  v3 = [v1 valueForEntitlement_];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  *(v0 + 16) = v8;
  *(v0 + 32) = v9;
  if (!*(v0 + 40))
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 16, &_sypSgMd, &_sypSgMR);
LABEL_10:
    type metadata accessor for CipherMLError(0);
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_6(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    *v6 = 0xD000000000000030;
    v6[1] = 0x8000000225037820;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0 || *(v0 + 80) != 1)
  {
    goto LABEL_10;
  }

  RequestsManager.configureUseCaseGroup(name:group:)(*(v0 + 56), *(v0 + 72));
  if (!v4)
  {
    v5 = *(v0 + 8);
    goto LABEL_12;
  }

LABEL_11:
  v5 = *(v0 + 8);
LABEL_12:

  return v5();
}

uint64_t @objc closure #1 in XPCHandler.configureUseCaseGroup(withName:useCaseGroup:)(uint64_t a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v4[5] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4[6] = v6;
  v7 = a2;

  return MEMORY[0x2822009F8](@objc closure #1 in XPCHandler.configureUseCaseGroup(withName:useCaseGroup:), 0, 0);
}

uint64_t @objc closure #1 in XPCHandler.configureUseCaseGroup(withName:useCaseGroup:)()
{
  v1 = *(v0 + 16);

  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = @objc closure #1 in XPCHandler.configureUseCaseGroup(withName:useCaseGroup:);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 24);

  return specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:)(v2, 0, 0xD00000000000002DLL, 0x80000002250370D0, v5, v5, v3, v4);
}

{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = @objc closure #1 in XPCHandler.configureUseCaseGroup(withName:useCaseGroup:);
  }

  else
  {

    v2 = @objc closure #1 in XPCHandler.configureUseCaseGroup(withName:useCaseGroup:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  (*(v1 + 16))(v1, 0);
  _Block_release(*(v0 + 32));
  v3 = *(v0 + 8);

  return v3();
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);

  v4 = _convertErrorToNSError(_:)();
  (*(v2 + 16))(v2, v4);

  _Block_release(*(v0 + 32));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_n(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[32] = a8;
  v8[33] = v10;
  v8[30] = a6;
  v8[31] = a7;
  v8[28] = a3;
  v8[29] = a4;
  v8[26] = a1;
  v8[27] = a2;
  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY0_, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY0_()
{
  v15 = v0;
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[34] = __swift_project_value_buffer(v1, static Logger.framework);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[28];
    v4 = v0[29];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v14);
    _os_log_impl(&dword_224E26000, v2, v3, "%{public}s method was called", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AA61F40](v7, -1, -1);
    MEMORY[0x22AA61F40](v6, -1, -1);
  }

  v8 = swift_task_alloc();
  v0[35] = v8;
  *v8 = v0;
  v8[1] = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTQ1_;
  v9 = v0[32];
  v10 = v0[33];
  v11 = v0[30];
  v12 = v0[31];

  return specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:)((v0 + 24), v11, v12, v9, v10);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTQ1_()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY5_;
  }

  else
  {
    v2 = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY2_;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY2_()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static WorkAroundForIdleMemory.shared;
  *(v0 + 296) = static WorkAroundForIdleMemory.shared;

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY3_, v1, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY3_()
{
  WorkAroundForIdleMemory.trigger()();

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY4_, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY5_()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static WorkAroundForIdleMemory.shared;
  *(v0 + 304) = static WorkAroundForIdleMemory.shared;

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY6_, v1, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY6_()
{
  WorkAroundForIdleMemory.trigger()();

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY7_, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY7_(uint64_t a1)
{
  v45 = v1;
  v2 = v1[36];
  swift_willThrow();

  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[36];
    v8 = v1[28];
    v7 = v1[29];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v44 = v11;
    *v9 = 136446466;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v44);
    *(v9 + 12) = 2114;
    v12 = v6;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_224E26000, v4, v5, "%{public}s threw an error: %{public}@", v9, 0x16u);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA61F40](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA61F40](v11, -1, -1);
    MEMORY[0x22AA61F40](v9, -1, -1);
  }

  v14 = v1[27];
  if (v14)
  {
    v15 = [v1[27] useCase];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = [v14 sourceApplicationBundleIdentifier];
    if (v19)
    {
      v20 = v19;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v22;
      v42 = v21;
    }

    else
    {
      v41 = 0;
      v42 = 0;
    }
  }

  else
  {
    v41 = 0;
    v42 = 0;
    v18 = 0xE400000000000000;
    v16 = 1701736270;
  }

  v23 = v1[36];
  v43 = v1[31];
  v25 = v1[28];
  v24 = v1[29];
  v26 = _convertErrorToNSError(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225022920;
  *(inited + 32) = 0x65736143657375;
  *(inited + 40) = 0xE700000000000000;
  v28 = MEMORY[0x22AA609C0](v16, v18);

  *(inited + 48) = v28;
  *(inited + 56) = 0x646F6874656DLL;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = MEMORY[0x22AA609C0](v25, v24);
  v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  v30 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x80000002250366F0);
  v31 = swift_allocObject();
  v31[2] = v42;
  v31[3] = v41;
  v31[4] = v26;
  v31[5] = v23;
  v31[6] = v29;
  v1[16] = closure #1 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:)partial apply;
  v1[17] = v31;
  v1[12] = MEMORY[0x277D85DD0];
  v1[13] = 1107296256;
  v1[14] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v1[15] = &block_descriptor_831;
  v32 = _Block_copy(v1 + 12);
  v33 = v23;
  v34 = v26;

  AnalyticsSendEventLazy();
  _Block_release(v32);

  v35 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x8000000225036710);
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v29;
  v1[22] = closure #2 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:)partial apply;
  v1[23] = v36;
  v1[18] = MEMORY[0x277D85DD0];
  v1[19] = 1107296256;
  v1[20] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v1[21] = &block_descriptor_838;
  v37 = _Block_copy(v1 + 18);
  v38 = v34;

  AnalyticsSendEventLazy();
  _Block_release(v37);

  specialized static CipherMLError.makeErrorConformToSecureCoding(error:)(v23);
  swift_willThrow();

  v39 = v1[1];

  return v39();
}

uint64_t partial apply for closure #1 in XPCHandler.requestData(byIndices:clientConfig:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return closure #1 in XPCHandler.requestData(by:clientConfig:)();
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_n(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[32] = a8;
  v8[33] = v10;
  v8[30] = a6;
  v8[31] = a7;
  v8[28] = a3;
  v8[29] = a4;
  v8[26] = a1;
  v8[27] = a2;
  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY0_, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY0_()
{
  v15 = v0;
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[34] = __swift_project_value_buffer(v1, static Logger.framework);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[28];
    v4 = v0[29];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v14);
    _os_log_impl(&dword_224E26000, v2, v3, "%{public}s method was called", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AA61F40](v7, -1, -1);
    MEMORY[0x22AA61F40](v6, -1, -1);
  }

  v8 = swift_task_alloc();
  v0[35] = v8;
  *v8 = v0;
  v8[1] = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTQ1_;
  v9 = v0[32];
  v10 = v0[33];
  v11 = v0[30];
  v12 = v0[31];

  return specialized closure #1 in XPCHandler.withStaticPECConfig<A>(clientConfig:method:body:)((v0 + 24), v11, v12, v9, v10);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTQ1_()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY5_;
  }

  else
  {
    v2 = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY2_;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY5_()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static WorkAroundForIdleMemory.shared;
  *(v0 + 304) = static WorkAroundForIdleMemory.shared;

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY6_, v1, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY6_()
{
  WorkAroundForIdleMemory.trigger()();

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY7_, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY7_(uint64_t a1)
{
  v45 = v1;
  v2 = v1[36];
  swift_willThrow();

  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[36];
    v8 = v1[28];
    v7 = v1[29];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v44 = v11;
    *v9 = 136446466;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v44);
    *(v9 + 12) = 2114;
    v12 = v6;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_224E26000, v4, v5, "%{public}s threw an error: %{public}@", v9, 0x16u);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA61F40](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA61F40](v11, -1, -1);
    MEMORY[0x22AA61F40](v9, -1, -1);
  }

  v14 = v1[27];
  if (v14)
  {
    v15 = [v1[27] useCase];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = [v14 sourceApplicationBundleIdentifier];
    if (v19)
    {
      v20 = v19;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v22;
      v42 = v21;
    }

    else
    {
      v41 = 0;
      v42 = 0;
    }
  }

  else
  {
    v41 = 0;
    v42 = 0;
    v18 = 0xE400000000000000;
    v16 = 1701736270;
  }

  v23 = v1[36];
  v43 = v1[31];
  v25 = v1[28];
  v24 = v1[29];
  v26 = _convertErrorToNSError(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225022920;
  *(inited + 32) = 0x65736143657375;
  *(inited + 40) = 0xE700000000000000;
  v28 = MEMORY[0x22AA609C0](v16, v18);

  *(inited + 48) = v28;
  *(inited + 56) = 0x646F6874656DLL;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = MEMORY[0x22AA609C0](v25, v24);
  v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  v30 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x80000002250366F0);
  v31 = swift_allocObject();
  v31[2] = v42;
  v31[3] = v41;
  v31[4] = v26;
  v31[5] = v23;
  v31[6] = v29;
  v1[16] = closure #1 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:)partial apply;
  v1[17] = v31;
  v1[12] = MEMORY[0x277D85DD0];
  v1[13] = 1107296256;
  v1[14] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v1[15] = &block_descriptor_662;
  v32 = _Block_copy(v1 + 12);
  v33 = v23;
  v34 = v26;

  AnalyticsSendEventLazy();
  _Block_release(v32);

  v35 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x8000000225036710);
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v29;
  v1[22] = closure #2 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:)partial apply;
  v1[23] = v36;
  v1[18] = MEMORY[0x277D85DD0];
  v1[19] = 1107296256;
  v1[20] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v1[21] = &block_descriptor_669;
  v37 = _Block_copy(v1 + 18);
  v38 = v34;

  AnalyticsSendEventLazy();
  _Block_release(v37);

  specialized static CipherMLError.makeErrorConformToSecureCoding(error:)(v23);
  swift_willThrow();

  v39 = v1[1];

  return v39();
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFyt_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_yt_Tg5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlyytIsgHnrzo_Tf1nnncn_n(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[29] = a8;
  v8[30] = v10;
  v8[27] = a6;
  v8[28] = a7;
  v8[25] = a3;
  v8[26] = a4;
  v8[24] = a2;
  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFyt_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_yt_Tg5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlyytIsgHnrzo_Tf1nnncn_nTY0_, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFyt_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_yt_Tg5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlyytIsgHnrzo_Tf1nnncn_nTY0_()
{
  v15 = v0;
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[31] = __swift_project_value_buffer(v1, static Logger.framework);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[25];
    v4 = v0[26];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v14);
    _os_log_impl(&dword_224E26000, v2, v3, "%{public}s method was called", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AA61F40](v7, -1, -1);
    MEMORY[0x22AA61F40](v6, -1, -1);
  }

  v8 = swift_task_alloc();
  v0[32] = v8;
  *v8 = v0;
  v8[1] = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFyt_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_yt_Tg5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlyytIsgHnrzo_Tf1nnncn_nTQ1_;
  v9 = v0[29];
  v10 = v0[30];
  v11 = v0[27];
  v12 = v0[28];

  return specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:)(v8, v11, v12, v9, v10);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFyt_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_yt_Tg5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlyytIsgHnrzo_Tf1nnncn_nTQ1_()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFyt_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_yt_Tg5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlyytIsgHnrzo_Tf1nnncn_nTY5_;
  }

  else
  {
    v2 = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFyt_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_yt_Tg5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlyytIsgHnrzo_Tf1nnncn_nTY2_;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFyt_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_yt_Tg5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlyytIsgHnrzo_Tf1nnncn_nTY2_()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static WorkAroundForIdleMemory.shared;
  *(v0 + 272) = static WorkAroundForIdleMemory.shared;

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFyt_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_yt_Tg5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlyytIsgHnrzo_Tf1nnncn_nTY3_, v1, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFyt_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_yt_Tg5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlyytIsgHnrzo_Tf1nnncn_nTY3_()
{
  WorkAroundForIdleMemory.trigger()();

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFyt_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_yt_Tg5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlyytIsgHnrzo_Tf1nnncn_nTY4_, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFyt_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_yt_Tg5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlyytIsgHnrzo_Tf1nnncn_nTY4_()
{
  v1 = v0[24];
  if (v1)
  {
    v2 = [v1 useCase];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v5 = 0xE400000000000000;
    v3 = 1701736270;
  }

  v6 = v0[28];
  specialized static Telemetry.reportSuccessToServer(useCase:method:)(v3, v5, v0[25], v0[26]);

  v7 = v0[1];

  return v7();
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFyt_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_yt_Tg5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlyytIsgHnrzo_Tf1nnncn_nTY5_()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static WorkAroundForIdleMemory.shared;
  *(v0 + 280) = static WorkAroundForIdleMemory.shared;

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFyt_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_yt_Tg5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlyytIsgHnrzo_Tf1nnncn_nTY6_, v1, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFyt_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_yt_Tg5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlyytIsgHnrzo_Tf1nnncn_nTY6_()
{
  WorkAroundForIdleMemory.trigger()();

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFyt_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_yt_Tg5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlyytIsgHnrzo_Tf1nnncn_nTY7_, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFyt_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09R75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_yt_Tg5AcjA14RequestContextVyAA0V13PIRParametersVGxs0E0_pRi_zRi0_zlyytIsgHnrzo_Tf1nnncn_nTY7_(uint64_t a1)
{
  v45 = v1;
  v2 = v1[33];
  swift_willThrow();

  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[33];
    v8 = v1[25];
    v7 = v1[26];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v44 = v11;
    *v9 = 136446466;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v44);
    *(v9 + 12) = 2114;
    v12 = v6;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_224E26000, v4, v5, "%{public}s threw an error: %{public}@", v9, 0x16u);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA61F40](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA61F40](v11, -1, -1);
    MEMORY[0x22AA61F40](v9, -1, -1);
  }

  v14 = v1[24];
  if (v14)
  {
    v15 = [v1[24] useCase];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = [v14 sourceApplicationBundleIdentifier];
    if (v19)
    {
      v20 = v19;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v22;
      v42 = v21;
    }

    else
    {
      v41 = 0;
      v42 = 0;
    }
  }

  else
  {
    v41 = 0;
    v42 = 0;
    v18 = 0xE400000000000000;
    v16 = 1701736270;
  }

  v23 = v1[33];
  v43 = v1[28];
  v25 = v1[25];
  v24 = v1[26];
  v26 = _convertErrorToNSError(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225022920;
  *(inited + 32) = 0x65736143657375;
  *(inited + 40) = 0xE700000000000000;
  v28 = MEMORY[0x22AA609C0](v16, v18);

  *(inited + 48) = v28;
  *(inited + 56) = 0x646F6874656DLL;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = MEMORY[0x22AA609C0](v25, v24);
  v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  v30 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x80000002250366F0);
  v31 = swift_allocObject();
  v31[2] = v42;
  v31[3] = v41;
  v31[4] = v26;
  v31[5] = v23;
  v31[6] = v29;
  v1[16] = closure #1 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:)partial apply;
  v1[17] = v31;
  v1[12] = MEMORY[0x277D85DD0];
  v1[13] = 1107296256;
  v1[14] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v1[15] = &block_descriptor_773;
  v32 = _Block_copy(v1 + 12);
  v33 = v23;
  v34 = v26;

  AnalyticsSendEventLazy();
  _Block_release(v32);

  v35 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x8000000225036710);
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v29;
  v1[22] = closure #2 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:)partial apply;
  v1[23] = v36;
  v1[18] = MEMORY[0x277D85DD0];
  v1[19] = 1107296256;
  v1[20] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v1[21] = &block_descriptor_780;
  v37 = _Block_copy(v1 + 18);
  v38 = v34;

  AnalyticsSendEventLazy();
  _Block_release(v37);

  specialized static CipherMLError.makeErrorConformToSecureCoding(error:)(v23);
  swift_willThrow();

  v39 = v1[1];

  return v39();
}

uint64_t specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[29] = a8;
  v8[30] = v10;
  v8[27] = a6;
  v8[28] = a7;
  v8[25] = a3;
  v8[26] = a4;
  v8[24] = a2;
  return MEMORY[0x2822009F8](specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:), 0, 0);
}

uint64_t specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:)()
{
  v15 = v0;
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[31] = __swift_project_value_buffer(v1, static Logger.framework);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[25];
    v4 = v0[26];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v14);
    _os_log_impl(&dword_224E26000, v2, v3, "%{public}s method was called", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AA61F40](v7, -1, -1);
    MEMORY[0x22AA61F40](v6, -1, -1);
  }

  v8 = swift_task_alloc();
  v0[32] = v8;
  *v8 = v0;
  v8[1] = specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:);
  v9 = v0[29];
  v10 = v0[30];
  v11 = v0[27];
  v12 = v0[28];

  return closure #1 in XPCHandler.configureUseCaseGroup(withName:useCaseGroup:)(v8, v11, v12, v9, v10);
}

{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:);
  }

  else
  {
    v2 = specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static WorkAroundForIdleMemory.shared;
  *(v0 + 272) = static WorkAroundForIdleMemory.shared;

  return MEMORY[0x2822009F8](specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:), v1, 0);
}

{
  WorkAroundForIdleMemory.trigger()();

  return MEMORY[0x2822009F8](specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:), 0, 0);
}

{
  v1 = v0[24];
  if (v1)
  {
    v2 = [v1 useCase];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v5 = 0xE400000000000000;
    v3 = 1701736270;
  }

  v6 = v0[30];
  specialized static Telemetry.reportSuccessToServer(useCase:method:)(v3, v5, v0[25], v0[26]);

  v7 = v0[1];

  return v7();
}

{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static WorkAroundForIdleMemory.shared;
  *(v0 + 280) = static WorkAroundForIdleMemory.shared;

  return MEMORY[0x2822009F8](specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:), v1, 0);
}

{
  WorkAroundForIdleMemory.trigger()();

  return MEMORY[0x2822009F8](specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:), 0, 0);
}

{
  v13 = v0;
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[33] = __swift_project_value_buffer(v1, static Logger.framework);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[28];
    v4 = v0[29];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446210;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v12);
    _os_log_impl(&dword_224E26000, v2, v3, "%{public}s method was called", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AA61F40](v7, -1, -1);
    MEMORY[0x22AA61F40](v6, -1, -1);
  }

  v8 = swift_task_alloc();
  v0[34] = v8;
  *v8 = v0;
  v8[1] = specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:);
  v10 = v0[31];
  v9 = v0[32];

  return RequestsManager.queryStatus(for:options:)(v10, v9);
}

{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static WorkAroundForIdleMemory.shared;
  *(v0 + 288) = static WorkAroundForIdleMemory.shared;

  return MEMORY[0x2822009F8](specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:), v1, 0);
}

{
  WorkAroundForIdleMemory.trigger()();

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlFSaySo8NSObjectCG_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r75O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_SaySo8S6CG_TG5AcjA14RequestContextVyAA0W13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nncn_nTf4nndggg_nTY4_, 0, 0);
}

{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static WorkAroundForIdleMemory.shared;
  *(v0 + 296) = static WorkAroundForIdleMemory.shared;

  return MEMORY[0x2822009F8](specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:), v1, 0);
}

{
  WorkAroundForIdleMemory.trigger()();

  return MEMORY[0x2822009F8](specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:), 0, 0);
}

{
  v11 = v0;
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[28] = __swift_project_value_buffer(v1, static Logger.framework);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[25];
    v4 = v0[26];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v10);
    _os_log_impl(&dword_224E26000, v2, v3, "%{public}s method was called", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AA61F40](v7, -1, -1);
    MEMORY[0x22AA61F40](v6, -1, -1);
  }

  v0[29] = RequestsManager.listUseCaseGroups()();
  v0[30] = 0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static WorkAroundForIdleMemory.shared;
  v0[31] = static WorkAroundForIdleMemory.shared;

  return MEMORY[0x2822009F8](specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:), v8, 0);
}

{
  WorkAroundForIdleMemory.trigger()();

  return MEMORY[0x2822009F8](specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:), 0, 0);
}

{
  v1 = v0[24];
  if (v1)
  {
    v2 = [v1 useCase];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v5 = 0xE400000000000000;
    v3 = 1701736270;
  }

  specialized static Telemetry.reportSuccessToServer(useCase:method:)(v3, v5, v0[25], v0[26]);

  v6 = v0[1];
  v7 = v0[29];

  return v6(v7);
}

{
  WorkAroundForIdleMemory.trigger()();

  return MEMORY[0x2822009F8](specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:), 0, 0);
}

uint64_t specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:)(uint64_t a1)
{
  v45 = v1;
  v2 = v1[33];
  swift_willThrow();

  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[33];
    v8 = v1[25];
    v7 = v1[26];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v44 = v11;
    *v9 = 136446466;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v44);
    *(v9 + 12) = 2114;
    v12 = v6;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_224E26000, v4, v5, "%{public}s threw an error: %{public}@", v9, 0x16u);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA61F40](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA61F40](v11, -1, -1);
    MEMORY[0x22AA61F40](v9, -1, -1);
  }

  v14 = v1[24];
  if (v14)
  {
    v15 = [v1[24] useCase];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = [v14 sourceApplicationBundleIdentifier];
    if (v19)
    {
      v20 = v19;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v22;
      v42 = v21;
    }

    else
    {
      v41 = 0;
      v42 = 0;
    }
  }

  else
  {
    v41 = 0;
    v42 = 0;
    v18 = 0xE400000000000000;
    v16 = 1701736270;
  }

  v23 = v1[33];
  v43 = v1[30];
  v24 = v1[26];
  v25 = v1[25];
  v26 = _convertErrorToNSError(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225022920;
  *(inited + 32) = 0x65736143657375;
  *(inited + 40) = 0xE700000000000000;
  v28 = MEMORY[0x22AA609C0](v16, v18);

  *(inited + 48) = v28;
  *(inited + 56) = 0x646F6874656DLL;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = MEMORY[0x22AA609C0](v25, v24);
  v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  v30 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x80000002250366F0);
  v31 = swift_allocObject();
  v31[2] = v42;
  v31[3] = v41;
  v31[4] = v26;
  v31[5] = v23;
  v31[6] = v29;
  v1[16] = _s8CipherML9TelemetryO19reportErrorToServer7useCase10identifier6method5errorySS_SSSgSSs0E0_ptFZSDySSSo8NSObjectCGSgycfU_TA_0;
  v1[17] = v31;
  v1[12] = MEMORY[0x277D85DD0];
  v1[13] = 1107296256;
  v1[14] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v1[15] = &block_descriptor_1;
  v32 = _Block_copy(v1 + 12);
  v33 = v23;
  v34 = v26;

  AnalyticsSendEventLazy();
  _Block_release(v32);

  v35 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x8000000225036710);
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v29;
  v1[22] = partial apply for closure #2 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:);
  v1[23] = v36;
  v1[18] = MEMORY[0x277D85DD0];
  v1[19] = 1107296256;
  v1[20] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v1[21] = &block_descriptor_579;
  v37 = _Block_copy(v1 + 18);
  v38 = v34;

  AnalyticsSendEventLazy();
  _Block_release(v37);

  specialized static CipherMLError.makeErrorConformToSecureCoding(error:)(v23);
  swift_willThrow();

  v39 = v1[1];

  return v39();
}

{
  v3 = *v2;
  v3[24] = v2;
  v3[25] = a1;
  v3[26] = v1;
  v3[35] = v1;

  if (v1)
  {
    v4 = specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:);
  }

  else
  {
    v4 = specialized XPCHandler.withErrorReporting<A>(clientConfig:method:body:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v44 = v1;
  v2 = v1[35];
  swift_willThrow();

  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[35];
    v8 = v1[28];
    v7 = v1[29];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v43 = v11;
    *v9 = 136446466;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v43);
    *(v9 + 12) = 2114;
    v12 = v6;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_224E26000, v4, v5, "%{public}s threw an error: %{public}@", v9, 0x16u);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA61F40](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA61F40](v11, -1, -1);
    MEMORY[0x22AA61F40](v9, -1, -1);
  }

  v14 = v1[27];
  if (v14)
  {
    v15 = [v1[27] useCase];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = [v14 sourceApplicationBundleIdentifier];
    if (v19)
    {
      v20 = v19;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v22;
      v42 = v21;
    }

    else
    {
      v41 = 0;
      v42 = 0;
    }
  }

  else
  {
    v41 = 0;
    v42 = 0;
    v18 = 0xE400000000000000;
    v16 = 1701736270;
  }

  v23 = v1[35];
  v24 = v1[28];
  v25 = v1[29];
  v26 = _convertErrorToNSError(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225022920;
  *(inited + 32) = 0x65736143657375;
  *(inited + 40) = 0xE700000000000000;
  v28 = MEMORY[0x22AA609C0](v16, v18);

  *(inited + 48) = v28;
  *(inited + 56) = 0x646F6874656DLL;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = MEMORY[0x22AA609C0](v24, v25);
  v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  v30 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x80000002250366F0);
  v31 = swift_allocObject();
  v31[2] = v42;
  v31[3] = v41;
  v31[4] = v26;
  v31[5] = v23;
  v31[6] = v29;
  v1[16] = closure #1 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:)partial apply;
  v1[17] = v31;
  v1[12] = MEMORY[0x277D85DD0];
  v1[13] = 1107296256;
  v1[14] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v1[15] = &block_descriptor_604;
  v32 = _Block_copy(v1 + 12);
  v33 = v23;
  v34 = v26;

  AnalyticsSendEventLazy();
  _Block_release(v32);

  v35 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x8000000225036710);
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v29;
  v1[22] = closure #2 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:)partial apply;
  v1[23] = v36;
  v1[18] = MEMORY[0x277D85DD0];
  v1[19] = 1107296256;
  v1[20] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v1[21] = &block_descriptor_611;
  v37 = _Block_copy(v1 + 18);
  v38 = v34;

  AnalyticsSendEventLazy();
  _Block_release(v37);

  specialized static CipherMLError.makeErrorConformToSecureCoding(error:)(v23);
  swift_willThrow();

  v39 = v1[1];

  return v39();
}

{
  v44 = v1;
  v2 = v1[30];
  swift_willThrow();

  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[30];
    v8 = v1[25];
    v7 = v1[26];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v43 = v11;
    *v9 = 136446466;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v43);
    *(v9 + 12) = 2114;
    v12 = v6;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_224E26000, v4, v5, "%{public}s threw an error: %{public}@", v9, 0x16u);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA61F40](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA61F40](v11, -1, -1);
    MEMORY[0x22AA61F40](v9, -1, -1);
  }

  v14 = v1[24];
  if (v14)
  {
    v15 = [v1[24] useCase];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = [v14 sourceApplicationBundleIdentifier];
    if (v19)
    {
      v20 = v19;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v22;
      v42 = v21;
    }

    else
    {
      v41 = 0;
      v42 = 0;
    }
  }

  else
  {
    v41 = 0;
    v42 = 0;
    v18 = 0xE400000000000000;
    v16 = 1701736270;
  }

  v23 = v1[30];
  v24 = v1[25];
  v25 = v1[26];
  v26 = _convertErrorToNSError(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225022920;
  *(inited + 32) = 0x65736143657375;
  *(inited + 40) = 0xE700000000000000;
  v28 = MEMORY[0x22AA609C0](v16, v18);

  *(inited + 48) = v28;
  *(inited + 56) = 0x646F6874656DLL;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = MEMORY[0x22AA609C0](v24, v25);
  v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  v30 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x80000002250366F0);
  v31 = swift_allocObject();
  v31[2] = v42;
  v31[3] = v41;
  v31[4] = v26;
  v31[5] = v23;
  v31[6] = v29;
  v1[16] = closure #1 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:)partial apply;
  v1[17] = v31;
  v1[12] = MEMORY[0x277D85DD0];
  v1[13] = 1107296256;
  v1[14] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v1[15] = &block_descriptor_589;
  v32 = _Block_copy(v1 + 12);
  v33 = v23;
  v34 = v26;

  AnalyticsSendEventLazy();
  _Block_release(v32);

  v35 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x8000000225036710);
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v29;
  v1[22] = closure #2 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:)partial apply;
  v1[23] = v36;
  v1[18] = MEMORY[0x277D85DD0];
  v1[19] = 1107296256;
  v1[20] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v1[21] = &block_descriptor_596;
  v37 = _Block_copy(v1 + 18);
  v38 = v34;

  AnalyticsSendEventLazy();
  _Block_release(v37);

  specialized static CipherMLError.makeErrorConformToSecureCoding(error:)(v23);
  swift_willThrow();

  v39 = v1[1];

  return v39();
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_n(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[32] = a8;
  v8[33] = v10;
  v8[30] = a6;
  v8[31] = a7;
  v8[28] = a3;
  v8[29] = a4;
  v8[26] = a1;
  v8[27] = a2;
  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTY0_, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTY0_()
{
  v15 = v0;
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[34] = __swift_project_value_buffer(v1, static Logger.framework);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[28];
    v4 = v0[29];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v14);
    _os_log_impl(&dword_224E26000, v2, v3, "%{public}s method was called", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AA61F40](v7, -1, -1);
    MEMORY[0x22AA61F40](v6, -1, -1);
  }

  v8 = swift_task_alloc();
  v0[35] = v8;
  *v8 = v0;
  v8[1] = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTQ1_;
  v9 = v0[32];
  v10 = v0[33];
  v11 = v0[30];
  v12 = v0[31];

  return specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:)((v0 + 24), v11, v12, v9, v10);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTQ1_()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTY5_;
  }

  else
  {
    v2 = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataV_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T5V_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyANIsgHnrzo_Tf1nnncn_nTY2_;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTY5_()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static WorkAroundForIdleMemory.shared;
  *(v0 + 304) = static WorkAroundForIdleMemory.shared;

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTY6_, v1, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTY6_()
{
  WorkAroundForIdleMemory.trigger()();

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTY7_, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPIRConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PIRParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PIRParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTY7_(uint64_t a1)
{
  v45 = v1;
  v2 = v1[36];
  swift_willThrow();

  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[36];
    v8 = v1[28];
    v7 = v1[29];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v44 = v11;
    *v9 = 136446466;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v44);
    *(v9 + 12) = 2114;
    v12 = v6;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_224E26000, v4, v5, "%{public}s threw an error: %{public}@", v9, 0x16u);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA61F40](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA61F40](v11, -1, -1);
    MEMORY[0x22AA61F40](v9, -1, -1);
  }

  v14 = v1[27];
  if (v14)
  {
    v15 = [v1[27] useCase];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = [v14 sourceApplicationBundleIdentifier];
    if (v19)
    {
      v20 = v19;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v22;
      v42 = v21;
    }

    else
    {
      v41 = 0;
      v42 = 0;
    }
  }

  else
  {
    v41 = 0;
    v42 = 0;
    v18 = 0xE400000000000000;
    v16 = 1701736270;
  }

  v23 = v1[36];
  v43 = v1[31];
  v25 = v1[28];
  v24 = v1[29];
  v26 = _convertErrorToNSError(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225022920;
  *(inited + 32) = 0x65736143657375;
  *(inited + 40) = 0xE700000000000000;
  v28 = MEMORY[0x22AA609C0](v16, v18);

  *(inited + 48) = v28;
  *(inited + 56) = 0x646F6874656DLL;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = MEMORY[0x22AA609C0](v25, v24);
  v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  v30 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x80000002250366F0);
  v31 = swift_allocObject();
  v31[2] = v42;
  v31[3] = v41;
  v31[4] = v26;
  v31[5] = v23;
  v31[6] = v29;
  v1[16] = closure #1 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:)partial apply;
  v1[17] = v31;
  v1[12] = MEMORY[0x277D85DD0];
  v1[13] = 1107296256;
  v1[14] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v1[15] = &block_descriptor_753;
  v32 = _Block_copy(v1 + 12);
  v33 = v23;
  v34 = v26;

  AnalyticsSendEventLazy();
  _Block_release(v32);

  v35 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x8000000225036710);
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v29;
  v1[22] = closure #2 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:)partial apply;
  v1[23] = v36;
  v1[18] = MEMORY[0x277D85DD0];
  v1[19] = 1107296256;
  v1[20] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v1[21] = &block_descriptor_760;
  v37 = _Block_copy(v1 + 18);
  v38 = v34;

  AnalyticsSendEventLazy();
  _Block_release(v37);

  specialized static CipherMLError.makeErrorConformToSecureCoding(error:)(v23);
  swift_willThrow();

  v39 = v1[1];

  return v39();
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_n(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[32] = a8;
  v8[33] = v10;
  v8[30] = a6;
  v8[31] = a7;
  v8[28] = a3;
  v8[29] = a4;
  v8[26] = a1;
  v8[27] = a2;
  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTY0_, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTY0_()
{
  v15 = v0;
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[34] = __swift_project_value_buffer(v1, static Logger.framework);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[28];
    v4 = v0[29];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v14);
    _os_log_impl(&dword_224E26000, v2, v3, "%{public}s method was called", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AA61F40](v7, -1, -1);
    MEMORY[0x22AA61F40](v6, -1, -1);
  }

  v8 = swift_task_alloc();
  v0[35] = v8;
  *v8 = v0;
  v8[1] = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTQ1_;
  v9 = v0[32];
  v10 = v0[33];
  v11 = v0[30];
  v12 = v0[31];

  return specialized closure #1 in XPCHandler.withStaticPECConfig<A>(clientConfig:method:body:)((v0 + 24), v11, v12, v9, v10);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTQ1_()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTY5_;
  }

  else
  {
    v2 = _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTY2_;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTY2_()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static WorkAroundForIdleMemory.shared;
  *(v0 + 296) = static WorkAroundForIdleMemory.shared;

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTY3_, v1, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTY3_()
{
  WorkAroundForIdleMemory.trigger()();

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTY4_, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTY4_()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];
  if (v1)
  {
    v4 = [v1 useCase];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v7 = 0xE400000000000000;
    v5 = 1701736270;
  }

  v8 = v0[31];
  v9 = v0[26];
  specialized static Telemetry.reportSuccessToServer(useCase:method:)(v5, v7, v0[28], v0[29]);

  *v9 = v2;
  v9[1] = v3;

  v10 = v0[1];

  return v10();
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTY5_()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static WorkAroundForIdleMemory.shared;
  *(v0 + 304) = static WorkAroundForIdleMemory.shared;

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTY6_, v1, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTY6_()
{
  WorkAroundForIdleMemory.trigger()();

  return MEMORY[0x2822009F8](_s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A012clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm3312clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTY7_, 0, 0);
}

uint64_t _s8CipherML10XPCHandlerC18withErrorReporting33_673275016DE8C1AF242CD61FD0E901A0LL12clientConfig6method4bodyxSo09CMLClientO0CSg_SSxyYaKXEtYaKlF10Foundation4DataVSg_Tg503_s8a4ML10c34C19withStaticPECConfig33_673275016ghijklm33LL12clientConfig6method4bodyxSo09r82O0C_SSxAA14RequestContextVyAA0E13PECParametersVGYaKXEtYaKlFxyYaKXEfU_10Foundation4T7VSg_Tg5AcjA14RequestContextVyAA0X13PECParametersVGxs0E0_pRi_zRi0_zlyAOIsgHnrzo_Tf1nnncn_nTY7_(uint64_t a1)
{
  v45 = v1;
  v2 = v1[36];
  swift_willThrow();

  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[36];
    v8 = v1[28];
    v7 = v1[29];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v44 = v11;
    *v9 = 136446466;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v44);
    *(v9 + 12) = 2114;
    v12 = v6;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_224E26000, v4, v5, "%{public}s threw an error: %{public}@", v9, 0x16u);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA61F40](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA61F40](v11, -1, -1);
    MEMORY[0x22AA61F40](v9, -1, -1);
  }

  v14 = v1[27];
  if (v14)
  {
    v15 = [v1[27] useCase];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = [v14 sourceApplicationBundleIdentifier];
    if (v19)
    {
      v20 = v19;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v22;
      v42 = v21;
    }

    else
    {
      v41 = 0;
      v42 = 0;
    }
  }

  else
  {
    v41 = 0;
    v42 = 0;
    v18 = 0xE400000000000000;
    v16 = 1701736270;
  }

  v23 = v1[36];
  v43 = v1[31];
  v25 = v1[28];
  v24 = v1[29];
  v26 = _convertErrorToNSError(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225022920;
  *(inited + 32) = 0x65736143657375;
  *(inited + 40) = 0xE700000000000000;
  v28 = MEMORY[0x22AA609C0](v16, v18);

  *(inited + 48) = v28;
  *(inited + 56) = 0x646F6874656DLL;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = MEMORY[0x22AA609C0](v25, v24);
  v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  v30 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x80000002250366F0);
  v31 = swift_allocObject();
  v31[2] = v42;
  v31[3] = v41;
  v31[4] = v26;
  v31[5] = v23;
  v31[6] = v29;
  v1[16] = closure #1 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:)partial apply;
  v1[17] = v31;
  v1[12] = MEMORY[0x277D85DD0];
  v1[13] = 1107296256;
  v1[14] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v1[15] = &block_descriptor_682;
  v32 = _Block_copy(v1 + 12);
  v33 = v23;
  v34 = v26;

  AnalyticsSendEventLazy();
  _Block_release(v32);

  v35 = MEMORY[0x22AA609C0](0xD00000000000001BLL, 0x8000000225036710);
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v29;
  v1[22] = closure #2 in static Telemetry.reportErrorToServer(useCase:identifier:method:error:)partial apply;
  v1[23] = v36;
  v1[18] = MEMORY[0x277D85DD0];
  v1[19] = 1107296256;
  v1[20] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v1[21] = &block_descriptor_689;
  v37 = _Block_copy(v1 + 18);
  v38 = v34;

  AnalyticsSendEventLazy();
  _Block_release(v37);

  specialized static CipherMLError.makeErrorConformToSecureCoding(error:)(v23);
  swift_willThrow();

  v39 = v1[1];

  return v39();
}

uint64_t specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[35] = a4;
  v5[36] = a5;
  v5[33] = a2;
  v5[34] = a3;
  v5[32] = a1;
  v5[37] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMR);
  v5[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
  v5[39] = swift_task_alloc();
  v6 = type metadata accessor for UseCaseGroup(0);
  v5[40] = v6;
  v5[41] = *(v6 - 8);
  v5[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:), 0, 0);
}

{
  v5[35] = a4;
  v5[36] = a5;
  v5[33] = a2;
  v5[34] = a3;
  v5[32] = a1;
  v5[37] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMR);
  v5[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
  v5[39] = swift_task_alloc();
  v6 = type metadata accessor for UseCaseGroup(0);
  v5[40] = v6;
  v5[41] = *(v6 - 8);
  v5[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:), 0, 0);
}

uint64_t specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:)()
{
  v50 = v0;
  v1 = *(v0 + 272);
  v2 = *(*(*(v0 + 264) + 16) + 48);
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  *(v0 + 344) = v3;

  os_unfair_lock_unlock((v2 + 24));
  v4 = [v1 useCase];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = *(v3 + 40);
  if (!*(v8 + 16) || (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v7), (v10 & 1) == 0) || (v11 = *(v8 + 56) + (v9 << 6), v12 = *v11, v13 = *(v11 + 16), v14 = *(v11 + 32), *(v0 + 57) = *(v11 + 41), *(v0 + 32) = v13, *(v0 + 48) = v14, *(v0 + 16) = v12, v15 = *v11, v16 = *(v11 + 16), v17 = *(v11 + 32), *(v0 + 192) = *(v11 + 48), *(v0 + 160) = v16, *(v0 + 176) = v17, *(v0 + 144) = v15, (*(v0 + 72) & 1) == 0))
  {
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.framework);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v49[0] = v27;
      *v26 = 136446210;
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, v49);

      *(v26 + 4) = v31;
      v29 = "Unknown/Invalid PIR use-case '%{public}s'";
      goto LABEL_13;
    }

LABEL_14:

    goto LABEL_15;
  }

  v18 = *(v0 + 320);
  v19 = *(v0 + 328);
  v20 = *(v0 + 312);
  v21 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v21;
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 121) = *(v0 + 57);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0 + 80, v0 + 200, &_s8CipherML19StaticPIRParametersV3pir_tMd, &_s8CipherML19StaticPIRParametersV3pir_tMR);
  AllowList.group(useCase:)(v5, v7, v20);
  if ((*(v19 + 48))(v20, 1, v18) == 1)
  {
    v22 = *(v0 + 312);
    outlined destroy of UseCase(v0 + 16);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v22, &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.framework);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v49[0] = v27;
      *v26 = 136446210;
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, v49);

      *(v26 + 4) = v28;
      v29 = "No group found for use-case '%{public}s'";
LABEL_13:
      _os_log_impl(&dword_224E26000, v24, v25, v29, v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x22AA61F40](v27, -1, -1);
      MEMORY[0x22AA61F40](v26, -1, -1);

LABEL_15:
      type metadata accessor for CipherMLError(0);
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_6(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v32 = *(v0 + 8);

      return v32();
    }

    goto LABEL_14;
  }

  v34 = *(v0 + 336);
  v35 = *(v0 + 312);
  v36 = *(v0 + 320);
  v38 = *(v0 + 296);
  v37 = *(v0 + 304);
  v40 = *(v0 + 272);
  v39 = *(v0 + 280);

  _s8CipherML12UseCaseGroupVWObTm_0(v35, v34, type metadata accessor for UseCaseGroup);
  _s8CipherML13NetworkConfigVWOcTm_1(v34 + *(v36 + 36), v37 + *(v38 + 32), type metadata accessor for NetworkConfig);
  v42 = *(v0 + 160);
  v41 = *(v0 + 176);
  v43 = *(v0 + 192);
  *(v37 + 8) = *(v0 + 144);
  *(v37 + 56) = v43;
  *(v37 + 40) = v41;
  *(v37 + 24) = v42;
  *v37 = v40;
  v44 = v40;
  v48 = (v39 + *v39);
  v45 = swift_task_alloc();
  *(v0 + 352) = v45;
  *v45 = v0;
  v45[1] = specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:);
  v46 = *(v0 + 304);
  v47 = *(v0 + 256);

  return v48(v47, v46);
}

{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:);
  }

  else
  {
    v2 = specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v49 = v0;
  v1 = *(v0 + 272);
  v2 = *(*(*(v0 + 264) + 16) + 48);
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  *(v0 + 344) = v3;

  os_unfair_lock_unlock((v2 + 24));
  v4 = [v1 useCase];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = *(v3 + 40);
  if (!*(v8 + 16) || (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v7), (v10 & 1) == 0) || (v11 = *(v8 + 56) + (v9 << 6), v12 = *v11, v13 = *(v11 + 16), v14 = *(v11 + 32), *(v0 + 57) = *(v11 + 41), *(v0 + 32) = v13, *(v0 + 48) = v14, *(v0 + 16) = v12, v15 = *v11, v16 = *(v11 + 16), v17 = *(v11 + 32), *(v0 + 192) = *(v11 + 48), *(v0 + 160) = v16, *(v0 + 176) = v17, *(v0 + 144) = v15, (*(v0 + 72) & 1) == 0))
  {
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.framework);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v48[0] = v27;
      *v26 = 136446210;
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, v48);

      *(v26 + 4) = v31;
      v29 = "Unknown/Invalid PIR use-case '%{public}s'";
      goto LABEL_13;
    }

LABEL_14:

    goto LABEL_15;
  }

  v18 = *(v0 + 320);
  v19 = *(v0 + 328);
  v20 = *(v0 + 312);
  v21 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v21;
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 121) = *(v0 + 57);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0 + 80, v0 + 200, &_s8CipherML19StaticPIRParametersV3pir_tMd, &_s8CipherML19StaticPIRParametersV3pir_tMR);
  AllowList.group(useCase:)(v5, v7, v20);
  if ((*(v19 + 48))(v20, 1, v18) == 1)
  {
    v22 = *(v0 + 312);
    outlined destroy of UseCase(v0 + 16);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v22, &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.framework);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v48[0] = v27;
      *v26 = 136446210;
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, v48);

      *(v26 + 4) = v28;
      v29 = "No group found for use-case '%{public}s'";
LABEL_13:
      _os_log_impl(&dword_224E26000, v24, v25, v29, v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x22AA61F40](v27, -1, -1);
      MEMORY[0x22AA61F40](v26, -1, -1);

LABEL_15:
      type metadata accessor for CipherMLError(0);
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_6(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v32 = *(v0 + 8);

      return v32();
    }

    goto LABEL_14;
  }

  v34 = *(v0 + 336);
  v35 = *(v0 + 312);
  v36 = *(v0 + 320);
  v38 = *(v0 + 296);
  v37 = *(v0 + 304);
  v40 = *(v0 + 272);
  v39 = *(v0 + 280);

  _s8CipherML12UseCaseGroupVWObTm_0(v35, v34, type metadata accessor for UseCaseGroup);
  _s8CipherML13NetworkConfigVWOcTm_1(v34 + *(v36 + 36), v37 + *(v38 + 32), type metadata accessor for NetworkConfig);
  v42 = *(v0 + 160);
  v41 = *(v0 + 176);
  v43 = *(v0 + 192);
  *(v37 + 8) = *(v0 + 144);
  *(v37 + 56) = v43;
  *(v37 + 40) = v41;
  *(v37 + 24) = v42;
  *v37 = v40;
  v44 = v40;
  v47 = (v39 + *v39);
  v45 = swift_task_alloc();
  *(v0 + 352) = v45;
  *v45 = v0;
  v45[1] = specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:);
  v46 = *(v0 + 304);

  return v47(v0 + 256, v46);
}

{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:);
  }

  else
  {
    v2 = specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[42];
  v2 = v0[38];

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v2, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMR);
  outlined destroy of UseCaseGroup(v1, type metadata accessor for UseCaseGroup);
  v3 = v0[32];

  v4 = v0[1];

  return v4(v3);
}

{
  v1 = v0[42];
  v2 = v0[38];

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v2, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMR);
  outlined destroy of UseCaseGroup(v1, type metadata accessor for UseCaseGroup);

  v3 = v0[1];

  return v3();
}

{
  v49 = v0;
  v1 = *(v0 + 272);
  v2 = *(*(*(v0 + 264) + 16) + 48);
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  *(v0 + 344) = v3;

  os_unfair_lock_unlock((v2 + 24));
  v4 = [v1 useCase];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = *(v3 + 40);
  if (!*(v8 + 16) || (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v7), (v10 & 1) == 0) || (v11 = *(v8 + 56) + (v9 << 6), v12 = *v11, v13 = *(v11 + 16), v14 = *(v11 + 32), *(v0 + 57) = *(v11 + 41), *(v0 + 32) = v13, *(v0 + 48) = v14, *(v0 + 16) = v12, v15 = *v11, v16 = *(v11 + 16), v17 = *(v11 + 32), *(v0 + 192) = *(v11 + 48), *(v0 + 160) = v16, *(v0 + 176) = v17, *(v0 + 144) = v15, (*(v0 + 72) & 1) == 0))
  {
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.framework);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v48[0] = v27;
      *v26 = 136446210;
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, v48);

      *(v26 + 4) = v31;
      v29 = "Unknown/Invalid PIR use-case '%{public}s'";
      goto LABEL_13;
    }

LABEL_14:

    goto LABEL_15;
  }

  v18 = *(v0 + 320);
  v19 = *(v0 + 328);
  v20 = *(v0 + 312);
  v21 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v21;
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 121) = *(v0 + 57);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0 + 80, v0 + 200, &_s8CipherML19StaticPIRParametersV3pir_tMd, &_s8CipherML19StaticPIRParametersV3pir_tMR);
  AllowList.group(useCase:)(v5, v7, v20);
  if ((*(v19 + 48))(v20, 1, v18) == 1)
  {
    v22 = *(v0 + 312);
    outlined destroy of UseCase(v0 + 16);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v22, &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.framework);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v48[0] = v27;
      *v26 = 136446210;
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, v48);

      *(v26 + 4) = v28;
      v29 = "No group found for use-case '%{public}s'";
LABEL_13:
      _os_log_impl(&dword_224E26000, v24, v25, v29, v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x22AA61F40](v27, -1, -1);
      MEMORY[0x22AA61F40](v26, -1, -1);

LABEL_15:
      type metadata accessor for CipherMLError(0);
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_6(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v32 = *(v0 + 8);

      return v32();
    }

    goto LABEL_14;
  }

  v34 = *(v0 + 336);
  v35 = *(v0 + 312);
  v36 = *(v0 + 320);
  v38 = *(v0 + 296);
  v37 = *(v0 + 304);
  v40 = *(v0 + 272);
  v39 = *(v0 + 280);

  _s8CipherML12UseCaseGroupVWObTm_0(v35, v34, type metadata accessor for UseCaseGroup);
  _s8CipherML13NetworkConfigVWOcTm_1(v34 + *(v36 + 36), v37 + *(v38 + 32), type metadata accessor for NetworkConfig);
  v42 = *(v0 + 160);
  v41 = *(v0 + 176);
  v43 = *(v0 + 192);
  *(v37 + 8) = *(v0 + 144);
  *(v37 + 56) = v43;
  *(v37 + 40) = v41;
  *(v37 + 24) = v42;
  *v37 = v40;
  v44 = v40;
  v47 = (v39 + *v39);
  v45 = swift_task_alloc();
  *(v0 + 352) = v45;
  *v45 = v0;
  v45[1] = specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:);
  v46 = *(v0 + 304);

  return v47(v0 + 256, v46);
}

{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:);
  }

  else
  {
    v2 = specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v50 = v0;
  v1 = *(v0 + 272);
  v2 = *(*(*(v0 + 264) + 16) + 48);
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  *(v0 + 344) = v3;

  os_unfair_lock_unlock((v2 + 24));
  v4 = [v1 useCase];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = *(v3 + 40);
  if (!*(v8 + 16) || (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v7), (v10 & 1) == 0) || (v11 = *(v8 + 56) + (v9 << 6), v12 = *v11, v13 = *(v11 + 16), v14 = *(v11 + 32), *(v0 + 57) = *(v11 + 41), *(v0 + 32) = v13, *(v0 + 48) = v14, *(v0 + 16) = v12, v15 = *v11, v16 = *(v11 + 16), v17 = *(v11 + 32), *(v0 + 192) = *(v11 + 48), *(v0 + 160) = v16, *(v0 + 176) = v17, *(v0 + 144) = v15, (*(v0 + 72) & 1) == 0))
  {
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.framework);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v49[0] = v27;
      *v26 = 136446210;
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, v49);

      *(v26 + 4) = v31;
      v29 = "Unknown/Invalid PIR use-case '%{public}s'";
      goto LABEL_13;
    }

LABEL_14:

    goto LABEL_15;
  }

  v18 = *(v0 + 320);
  v19 = *(v0 + 328);
  v20 = *(v0 + 312);
  v21 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v21;
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 121) = *(v0 + 57);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0 + 80, v0 + 200, &_s8CipherML19StaticPIRParametersV3pir_tMd, &_s8CipherML19StaticPIRParametersV3pir_tMR);
  AllowList.group(useCase:)(v5, v7, v20);
  if ((*(v19 + 48))(v20, 1, v18) == 1)
  {
    v22 = *(v0 + 312);
    outlined destroy of UseCase(v0 + 16);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v22, &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.framework);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v49[0] = v27;
      *v26 = 136446210;
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, v49);

      *(v26 + 4) = v28;
      v29 = "No group found for use-case '%{public}s'";
LABEL_13:
      _os_log_impl(&dword_224E26000, v24, v25, v29, v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x22AA61F40](v27, -1, -1);
      MEMORY[0x22AA61F40](v26, -1, -1);

LABEL_15:
      type metadata accessor for CipherMLError(0);
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_6(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v32 = *(v0 + 8);

      return v32();
    }

    goto LABEL_14;
  }

  v34 = *(v0 + 336);
  v35 = *(v0 + 312);
  v36 = *(v0 + 320);
  v38 = *(v0 + 296);
  v37 = *(v0 + 304);
  v40 = *(v0 + 272);
  v39 = *(v0 + 280);

  _s8CipherML12UseCaseGroupVWObTm_0(v35, v34, type metadata accessor for UseCaseGroup);
  _s8CipherML13NetworkConfigVWOcTm_1(v34 + *(v36 + 36), v37 + *(v38 + 32), type metadata accessor for NetworkConfig);
  v42 = *(v0 + 160);
  v41 = *(v0 + 176);
  v43 = *(v0 + 192);
  *(v37 + 8) = *(v0 + 144);
  *(v37 + 56) = v43;
  *(v37 + 40) = v41;
  *(v37 + 24) = v42;
  *v37 = v40;
  v44 = v40;
  v48 = (v39 + *v39);
  v45 = swift_task_alloc();
  *(v0 + 352) = v45;
  *v45 = v0;
  v45[1] = specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:);
  v46 = *(v0 + 304);
  v47 = *(v0 + 256);

  return v48(v47, v46);
}

{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:);
  }

  else
  {
    v2 = specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[42];
  v2 = v0[38];

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v2, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMR);
  outlined destroy of UseCaseGroup(v1, type metadata accessor for UseCaseGroup);

  v3 = v0[1];

  return v3();
}

{
  v49 = v0;
  v1 = *(v0 + 280);
  v2 = *(*(*(v0 + 272) + 16) + 48);
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  *(v0 + 352) = v3;

  os_unfair_lock_unlock((v2 + 24));
  v4 = [v1 useCase];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = *(v3 + 40);
  if (!*(v8 + 16) || (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v7), (v10 & 1) == 0) || (v11 = *(v8 + 56) + (v9 << 6), v12 = *v11, v13 = *(v11 + 16), v14 = *(v11 + 32), *(v0 + 57) = *(v11 + 41), *(v0 + 32) = v13, *(v0 + 48) = v14, *(v0 + 16) = v12, v15 = *v11, v16 = *(v11 + 16), v17 = *(v11 + 32), *(v0 + 192) = *(v11 + 48), *(v0 + 160) = v16, *(v0 + 176) = v17, *(v0 + 144) = v15, (*(v0 + 72) & 1) == 0))
  {
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.framework);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v48[0] = v27;
      *v26 = 136446210;
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, v48);

      *(v26 + 4) = v31;
      v29 = "Unknown/Invalid PIR use-case '%{public}s'";
      goto LABEL_13;
    }

LABEL_14:

    goto LABEL_15;
  }

  v18 = *(v0 + 328);
  v19 = *(v0 + 336);
  v20 = *(v0 + 320);
  v21 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v21;
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 121) = *(v0 + 57);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0 + 80, v0 + 200, &_s8CipherML19StaticPIRParametersV3pir_tMd, &_s8CipherML19StaticPIRParametersV3pir_tMR);
  AllowList.group(useCase:)(v5, v7, v20);
  if ((*(v19 + 48))(v20, 1, v18) == 1)
  {
    v22 = *(v0 + 320);
    outlined destroy of UseCase(v0 + 16);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v22, &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.framework);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v48[0] = v27;
      *v26 = 136446210;
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, v48);

      *(v26 + 4) = v28;
      v29 = "No group found for use-case '%{public}s'";
LABEL_13:
      _os_log_impl(&dword_224E26000, v24, v25, v29, v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x22AA61F40](v27, -1, -1);
      MEMORY[0x22AA61F40](v26, -1, -1);

LABEL_15:
      type metadata accessor for CipherMLError(0);
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_6(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v32 = *(v0 + 8);

      return v32();
    }

    goto LABEL_14;
  }

  v34 = *(v0 + 344);
  v35 = *(v0 + 320);
  v36 = *(v0 + 328);
  v38 = *(v0 + 304);
  v37 = *(v0 + 312);
  v40 = *(v0 + 280);
  v39 = *(v0 + 288);

  _s8CipherML12UseCaseGroupVWObTm_0(v35, v34, type metadata accessor for UseCaseGroup);
  _s8CipherML13NetworkConfigVWOcTm_1(v34 + *(v36 + 36), v37 + *(v38 + 32), type metadata accessor for NetworkConfig);
  v42 = *(v0 + 160);
  v41 = *(v0 + 176);
  v43 = *(v0 + 192);
  *(v37 + 8) = *(v0 + 144);
  *(v37 + 56) = v43;
  *(v37 + 40) = v41;
  *(v37 + 24) = v42;
  *v37 = v40;
  v44 = v40;
  v47 = (v39 + *v39);
  v45 = swift_task_alloc();
  *(v0 + 360) = v45;
  *v45 = v0;
  v45[1] = specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:);
  v46 = *(v0 + 312);

  return v47(v0 + 256, v46);
}

{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:);
  }

  else
  {
    v2 = specialized closure #1 in XPCHandler.withStaticPIRConfig<A>(clientConfig:method:body:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[43];
  v2 = v0[39];

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v2, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMR);
  outlined destroy of UseCaseGroup(v1, type metadata accessor for UseCaseGroup);
  v3 = v0[32];
  v4 = v0[33];

  v5 = v0[1];

  return v5(v3, v4);
}

{
  v1 = v0[43];
  v2 = v0[39];

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v2, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMR);
  outlined destroy of UseCaseGroup(v1, type metadata accessor for UseCaseGroup);

  v3 = v0[1];

  return v3();
}