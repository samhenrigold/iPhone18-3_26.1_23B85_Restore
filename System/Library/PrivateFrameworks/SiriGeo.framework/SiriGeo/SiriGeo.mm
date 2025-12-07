id INPerson.hasHandleLabel.getter(SEL *a1)
{
  result = [v1 personHandle];
  if (result)
  {
    v4 = result;
    v5 = [result *a1];

    if (v5)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v6 & 0xFFFFFFFFFFFFLL;
      }

      return (v9 != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t INPerson.hasUsefulHandleValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ContactHandle.HandleType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference13ContactHandleV0D4TypeOSg_AFtMd, &_s13SiriInference13ContactHandleV0D4TypeOSg_AFtMR);
  MEMORY[0x28223BE20](v6);
  v8 = &v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference13ContactHandleV0D4TypeOSgMd, &_s13SiriInference13ContactHandleV0D4TypeOSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v44 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v44 - v16;
  v18 = [v1 personHandle];
  if (!v18)
  {
    goto LABEL_16;
  }

  v46 = v5;
  v47 = v12;
  v19 = v18;
  v20 = [v18 value];

  if (!v20)
  {
    goto LABEL_16;
  }

  v45 = v3;
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    v25 = [v1 personHandle];
    v26 = MEMORY[0x277D56018];
    if (v25)
    {
      v27 = v25;
      v28 = [v25 type];

      v29 = v45;
      v30 = *(v45 + 104);
      v31 = MEMORY[0x277D56010];
      v32 = MEMORY[0x277D56008];
      if (v28 != 1)
      {
        v32 = v26;
      }

      if (v28 != 2)
      {
        v31 = v32;
      }

      v30(v17, *v31, v2);
      v33 = *(v29 + 56);
      v34 = v26;
      v33(v17, 0, 1, v2);
    }

    else
    {
      v29 = v45;
      v35 = v45 + 56;
      v33 = *(v45 + 56);
      v33(v17, 1, 1, v2);
      v30 = *(v35 + 48);
      v34 = MEMORY[0x277D56018];
    }

    v30(v15, *v34, v2);
    v33(v15, 0, 1, v2);
    v36 = *(v6 + 48);
    outlined init with copy of ContactHandle.HandleType?(v17, v8);
    outlined init with copy of ContactHandle.HandleType?(v15, &v8[v36]);
    v37 = *(v29 + 48);
    if (v37(v8, 1, v2) == 1)
    {
      outlined destroy of ContactHandle.HandleType?(v15, &_s13SiriInference13ContactHandleV0D4TypeOSgMd, &_s13SiriInference13ContactHandleV0D4TypeOSgMR);
      outlined destroy of ContactHandle.HandleType?(v17, &_s13SiriInference13ContactHandleV0D4TypeOSgMd, &_s13SiriInference13ContactHandleV0D4TypeOSgMR);
      if (v37(&v8[v36], 1, v2) == 1)
      {
        outlined destroy of ContactHandle.HandleType?(v8, &_s13SiriInference13ContactHandleV0D4TypeOSgMd, &_s13SiriInference13ContactHandleV0D4TypeOSgMR);
LABEL_16:
        LOBYTE(v24) = 0;
        return v24 & 1;
      }
    }

    else
    {
      v39 = v47;
      outlined init with copy of ContactHandle.HandleType?(v8, v47);
      if (v37(&v8[v36], 1, v2) != 1)
      {
        v40 = &v8[v36];
        v41 = v46;
        (*(v29 + 32))(v46, v40, v2);
        lazy protocol witness table accessor for type ContactHandle.HandleType and conformance ContactHandle.HandleType(&lazy protocol witness table cache variable for type ContactHandle.HandleType and conformance ContactHandle.HandleType, MEMORY[0x277D56020], MEMORY[0x277D56030]);
        v42 = dispatch thunk of static Equatable.== infix(_:_:)();
        v43 = *(v29 + 8);
        v43(v41, v2);
        outlined destroy of ContactHandle.HandleType?(v15, &_s13SiriInference13ContactHandleV0D4TypeOSgMd, &_s13SiriInference13ContactHandleV0D4TypeOSgMR);
        outlined destroy of ContactHandle.HandleType?(v17, &_s13SiriInference13ContactHandleV0D4TypeOSgMd, &_s13SiriInference13ContactHandleV0D4TypeOSgMR);
        v43(v39, v2);
        outlined destroy of ContactHandle.HandleType?(v8, &_s13SiriInference13ContactHandleV0D4TypeOSgMd, &_s13SiriInference13ContactHandleV0D4TypeOSgMR);
        LOBYTE(v24) = v42 ^ 1;
        return v24 & 1;
      }

      outlined destroy of ContactHandle.HandleType?(v15, &_s13SiriInference13ContactHandleV0D4TypeOSgMd, &_s13SiriInference13ContactHandleV0D4TypeOSgMR);
      outlined destroy of ContactHandle.HandleType?(v17, &_s13SiriInference13ContactHandleV0D4TypeOSgMd, &_s13SiriInference13ContactHandleV0D4TypeOSgMR);
      (*(v29 + 8))(v39, v2);
    }

    outlined destroy of ContactHandle.HandleType?(v8, &_s13SiriInference13ContactHandleV0D4TypeOSg_AFtMd, &_s13SiriInference13ContactHandleV0D4TypeOSg_AFtMR);
    LOBYTE(v24) = 1;
  }

  return v24 & 1;
}

uint64_t INPersonHandleType.toContactHandleType()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ContactHandle.HandleType();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x277D56018];
  if (a1 == 1)
  {
    v6 = MEMORY[0x277D56008];
  }

  if (a1 == 2)
  {
    v6 = MEMORY[0x277D56010];
  }

  v7 = *v6;

  return v5(a2, v7, v4);
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

uint64_t outlined init with copy of ContactHandle.HandleType?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference13ContactHandleV0D4TypeOSgMd, &_s13SiriInference13ContactHandleV0D4TypeOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ContactHandle.HandleType?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void INPerson.encodeBase64.getter()
{
  _StringGuts.grow(_:)(18);

  v0 = INIntentSlotValueTransformToContactValue();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 data];

    if (v2)
    {
      v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v4;

      v6 = Data.base64EncodedString(options:)(0);
      outlined consume of Data._Representation(v3, v5);
      MEMORY[0x26D5F2DD0](v6._countAndFlagsBits, v6._object);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
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

void INPerson.toContactQueryGeo()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference12ContactQueryVSgMd, &_s13SiriInference12ContactQueryVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v24 = &v23 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference24ContactRelationshipQueryVSgMd, &_s13SiriInference24ContactRelationshipQueryVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for PersonNameComponents();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  ContactQuery.init()();
  v14 = [v0 contactIdentifier];
  if (v14)
  {
    v15 = v14;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  ContactQuery.id.setter();
  v16 = [v0 nameComponents];
  if (v16)
  {
    v17 = v16;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v8 + 32))(v13, v11, v7);
    PersonNameComponents.namePrefix.getter();
    ContactQuery.namePrefix.setter();
    PersonNameComponents.givenName.getter();
    ContactQuery.givenName.setter();
    PersonNameComponents.middleName.getter();
    ContactQuery.middleName.setter();
    PersonNameComponents.familyName.getter();
    ContactQuery.familyName.setter();
    PersonNameComponents.nameSuffix.getter();
    ContactQuery.nameSuffix.setter();
    PersonNameComponents.nickname.getter();
    ContactQuery.nickname.setter();
    (*(v8 + 8))(v13, v7);
  }

  else
  {
    v18 = [v0 displayName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    ContactQuery.fullName.setter();
  }

  v19 = [v1 relationship];
  if (v19)
  {
    v20 = v19;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = type metadata accessor for ContactQuery();
    (*(*(v21 - 8) + 56))(v24, 1, 1, v21);
    ContactRelationshipQuery.init(label:fromContact:)();
    v22 = type metadata accessor for ContactRelationshipQuery();
    (*(*(v22 - 8) + 56))(v6, 0, 1, v22);
    ContactQuery.relationship.setter();
  }
}

uint64_t INPersonHandle.toContactHandle()()
{
  v1 = v0;
  v2 = type metadata accessor for ContactHandle.HandleType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 type];
  v7 = MEMORY[0x277D56010];
  v8 = MEMORY[0x277D56008];
  if (v6 != 1)
  {
    v8 = MEMORY[0x277D56018];
  }

  if (v6 != 2)
  {
    v7 = v8;
  }

  (*(v3 + 104))(v5, *v7, v2);
  v9 = [v1 label];
  if (v9)
  {
    v10 = one-time initialization token for labelMap;
    v11 = v9;
    if (v10 != -1)
    {
      swift_once();
    }

    if (*(static INPersonHandle.labelMap + 2) && (specialized __RawDictionaryStorage.find<A>(_:)(v11), (v12 & 1) != 0))
    {
    }

    else
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  v13 = [v1 value];
  if (v13)
  {
    v14 = v13;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return ContactHandle.init(id:type:label:value:isSuggested:)();
}

uint64_t one-time initialization function for labelMap()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo19INPersonHandleLabela_SStGMd, &_ss23_ContiguousArrayStorageCySo19INPersonHandleLabela_SStGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266E217F0;
  v1 = *MEMORY[0x277CD3870];
  *(inited + 32) = *MEMORY[0x277CD3870];
  v51 = v1;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x277CD38A8];
  *(inited + 40) = v2;
  *(inited + 48) = v4;
  v5 = *v3;
  *(inited + 56) = *v3;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = MEMORY[0x277CD3890];
  *(inited + 64) = v6;
  *(inited + 72) = v8;
  v9 = *v7;
  *(inited + 80) = *v7;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = MEMORY[0x277CD38B8];
  *(inited + 88) = v10;
  *(inited + 96) = v12;
  v13 = *v11;
  *(inited + 104) = *v11;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = MEMORY[0x277CD3888];
  *(inited + 112) = v14;
  *(inited + 120) = v16;
  v17 = *v15;
  *(inited + 128) = *v15;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = MEMORY[0x277CD3880];
  *(inited + 136) = v18;
  *(inited + 144) = v20;
  v21 = *v19;
  *(inited + 152) = *v19;
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = MEMORY[0x277CD3878];
  *(inited + 160) = v22;
  *(inited + 168) = v24;
  v25 = *v23;
  *(inited + 176) = *v23;
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = MEMORY[0x277CD38B0];
  *(inited + 184) = v26;
  *(inited + 192) = v28;
  v29 = *v27;
  *(inited + 200) = *v27;
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = MEMORY[0x277CD3898];
  *(inited + 208) = v30;
  *(inited + 216) = v32;
  v33 = *v31;
  *(inited + 224) = *v31;
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = MEMORY[0x277CD38A0];
  *(inited + 232) = v34;
  *(inited + 240) = v36;
  v37 = *v35;
  *(inited + 248) = *v35;
  *(inited + 256) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 264) = v38;
  v39 = v51;
  v40 = v5;
  v41 = v9;
  v42 = v13;
  v43 = v17;
  v44 = v21;
  v45 = v25;
  v46 = v29;
  v47 = v33;
  v48 = v37;
  v49 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo19INPersonHandleLabela_SSTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19INPersonHandleLabela_SStMd, &_sSo19INPersonHandleLabela_SStMR);
  result = swift_arrayDestroy();
  static INPersonHandle.labelMap = v49;
  return result;
}

id variable initialization expression of ContactService.store()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBDAB8]);

  return [v0 init];
}

uint64_t variable initialization expression of ContactService.mapsService()
{
  type metadata accessor for MapsService();
  v0 = swift_allocObject();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  *(v0 + 16) = OS_os_log.init(subsystem:category:)();
  *(v0 + 24) = xmmword_266E21800;
  return v0;
}

double variable initialization expression of INShareETAIntentHandler.sharedTripContact@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

void *variable initialization expression of INShareETAIntentHandler.contactService()
{
  type metadata accessor for ContactService();
  swift_allocObject();
  return ContactService.init()();
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance INPersonHandleLabel(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance INPersonHandleLabel(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance INPersonHandleLabel@<X0>(uint64_t *a2@<X8>)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = MEMORY[0x26D5F2D60](v3);

  *a2 = v4;
  return result;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance INPersonHandleLabel()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x26D5F2DF0](v0);

  return v1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance INPersonHandleLabel(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance INPersonHandleLabel(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

void *_sSo28AFLocationAuthorizationStyleVSYSCSY8rawValuexSg03RawE0Qz_tcfCTW_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance INPersonHandleLabel(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t protocol witness for CustomNSError.errorCode.getter in conformance related decl e for AFLocationServiceErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactHandle.HandleType and conformance ContactHandle.HandleType(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode, &protocol conformance descriptor for related decl 'e' for AFLocationServiceErrorCode);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t protocol witness for CustomNSError.errorUserInfo.getter in conformance related decl e for AFLocationServiceErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactHandle.HandleType and conformance ContactHandle.HandleType(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode, &protocol conformance descriptor for related decl 'e' for AFLocationServiceErrorCode);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t protocol witness for _ObjectiveCBridgeableError.init(_bridgedNSError:) in conformance related decl e for AFLocationServiceErrorCode(void *a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type ContactHandle.HandleType and conformance ContactHandle.HandleType(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode, &protocol conformance descriptor for related decl 'e' for AFLocationServiceErrorCode);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance related decl e for AFLocationServiceErrorCode(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type ContactHandle.HandleType and conformance ContactHandle.HandleType(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode, &protocol conformance descriptor for related decl 'e' for AFLocationServiceErrorCode);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance related decl e for AFLocationServiceErrorCode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance INPersonHandleLabel@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x26D5F2D60](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance INPersonHandleLabel@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance INPersonHandleLabel(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactHandle.HandleType and conformance ContactHandle.HandleType(&lazy protocol witness table cache variable for type INPersonHandleLabel and conformance INPersonHandleLabel, type metadata accessor for INPersonHandleLabel, &protocol conformance descriptor for INPersonHandleLabel);
  v3 = lazy protocol witness table accessor for type ContactHandle.HandleType and conformance ContactHandle.HandleType(&lazy protocol witness table cache variable for type INPersonHandleLabel and conformance INPersonHandleLabel, type metadata accessor for INPersonHandleLabel, "ՍA\x1B| ");
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t protocol witness for Error._domain.getter in conformance related decl e for AFLocationServiceErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactHandle.HandleType and conformance ContactHandle.HandleType(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode, &protocol conformance descriptor for related decl 'e' for AFLocationServiceErrorCode);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance related decl e for AFLocationServiceErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactHandle.HandleType and conformance ContactHandle.HandleType(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode, &protocol conformance descriptor for related decl 'e' for AFLocationServiceErrorCode);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t protocol witness for Error._getEmbeddedNSError() in conformance related decl e for AFLocationServiceErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactHandle.HandleType and conformance ContactHandle.HandleType(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode, &protocol conformance descriptor for related decl 'e' for AFLocationServiceErrorCode);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance related decl e for AFLocationServiceErrorCode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ContactHandle.HandleType and conformance ContactHandle.HandleType(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode, &protocol conformance descriptor for related decl 'e' for AFLocationServiceErrorCode);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
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
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
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

uint64_t specialized static INPerson.contactsWithContactIdentifiers(_:)(unint64_t a1)
{
  v1 = a1;
  v28 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x26D5F3000](v21))
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v26 = v1 + 32;
    v27 = v1 & 0xFFFFFFFFFFFFFF8;
    v5 = MEMORY[0x277D84F90];
    v24 = i;
    v25 = v1;
    v23 = v1 & 0xC000000000000001;
    while (1)
    {
      if (v4)
      {
        v6 = MEMORY[0x26D5F2F90](v3, v1);
      }

      else
      {
        if (v3 >= *(v27 + 16))
        {
          goto LABEL_36;
        }

        v6 = *(v26 + 8 * v3);
      }

      v7 = v6;
      if (__OFADD__(v3++, 1))
      {
        break;
      }

      v9 = [v6 contactIdentifier];
      if (v9)
      {

        v10 = v7;
        MEMORY[0x26D5F2E10]();
        if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v5 = v28;
        goto LABEL_5;
      }

      v11 = [v7 siriMatches];
      if (v11)
      {
        v12 = v11;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, 0x277CD3E90);
        v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v13 >> 62)
        {
          if (v13 < 0)
          {
            v20 = v13;
          }

          else
          {
            v20 = v13 & 0xFFFFFFFFFFFFFF8;
          }

          v14 = MEMORY[0x26D5F3000](v20);
          if (!v14)
          {
LABEL_34:

            goto LABEL_5;
          }
        }

        else
        {
          v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v14)
          {
            goto LABEL_34;
          }
        }

        if (v14 < 1)
        {
          goto LABEL_37;
        }

        for (j = 0; j != v14; ++j)
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            v16 = MEMORY[0x26D5F2F90](j, v13);
          }

          else
          {
            v16 = *(v13 + 8 * j + 32);
          }

          v17 = v16;
          v18 = [v16 contactIdentifier];
          if (v18)
          {

            v19 = v17;
            MEMORY[0x26D5F2E10]();
            if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v5 = v28;
          }

          else
          {
          }
        }

        i = v24;
        v1 = v25;
        v4 = v23;
      }

      else
      {
      }

LABEL_5:
      if (v3 == i)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    if (v1 < 0)
    {
      v21 = v1;
    }

    else
    {
      v21 = v1 & 0xFFFFFFFFFFFFFF8;
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t lazy protocol witness table accessor for type ContactHandle.HandleType and conformance ContactHandle.HandleType(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo19INPersonHandleLabela_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo19INPersonHandleLabelaSSGMd, &_ss18_DictionaryStorageCySo19INPersonHandleLabelaSSGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = specialized __RawDictionaryStorage.find<A>(_:)(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
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

uint64_t type metadata accessor for OS_os_log(uint64_t a1, unint64_t *a2, void *a3)
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

void type metadata accessor for MSPSharedTripCapabilityType(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id one-time initialization function for routineManager()
{
  result = [objc_opt_self() defaultManager];
  static ParkingLocationService.routineManager = result;
  return result;
}

uint64_t *ParkingLocationService.routineManager.unsafeMutableAddressor()
{
  if (one-time initialization token for routineManager != -1)
  {
    swift_once();
  }

  return &static ParkingLocationService.routineManager;
}

id static ParkingLocationService.routineManager.getter()
{
  if (one-time initialization token for routineManager != -1)
  {
    swift_once();
  }

  v1 = static ParkingLocationService.routineManager;

  return v1;
}

void closure #1 in INDeleteParkingLocationIntentHandler.handle(intent:completion:)(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void))
{
  v8 = type metadata accessor for OSSignpostID();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v12 = a2;
    v13 = static os_log_type_t.error.getter();
    v14 = *(a3 + OBJC_IVAR____TtC7SiriGeo36INDeleteParkingLocationIntentHandler_logObject);
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v36 = a2;
      v37 = v16;
      *v15 = 136315138;
      v17 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v18 = String.init<A>(describing:)();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v37);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_266E03000, v14, v13, "error fetching vehicle events before deletion: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x26D5F3640](v16, -1, -1);
      MEMORY[0x26D5F3640](v15, -1, -1);
    }

    v21 = [objc_allocWithZone(MEMORY[0x277CD3BA8]) initWithCode:4 userActivity:0];
    a4();
  }

  else
  {
    v35 = a4;
    static os_signpost_type_t.end.getter();
    v22 = *(a3 + OBJC_IVAR____TtC7SiriGeo36INDeleteParkingLocationIntentHandler_logObject);
    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:_:_:)();
    v23 = *(v9 + 8);
    v23(v11, v8);
    v24 = objc_allocWithZone(MEMORY[0x277CD3BA8]);
    if (a1)
    {
      v25 = [v24 initWithCode:3 userActivity:0];
      v26 = static os_log_type_t.info.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_266E21E90;
      *(v27 + 56) = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INDeleteParkingLocationIntentResponse, 0x277CD3BA8);
      *(v27 + 64) = lazy protocol witness table accessor for type INDeleteParkingLocationIntentResponse and conformance NSObject();
      *(v27 + 32) = v25;
      v34 = v25;
      os_log(_:dso:log:_:_:)(v26, &dword_266E03000, v22, "Sending response : %@", 21, 2, v27);

      static os_signpost_type_t.begin.getter();
      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:_:_:)();
      v23(v11, v8);
      if (one-time initialization token for routineManager != -1)
      {
        swift_once();
      }

      [static ParkingLocationService.routineManager clearAllVehicleEvents];
      static os_signpost_type_t.end.getter();
      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:_:_:)();
      v23(v11, v8);
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v22, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_266E03000, v22, v28, "Deleted all saved parking locations", v29, 2u);
        MEMORY[0x26D5F3640](v29, -1, -1);
      }

      v30 = v34;
      (v35)(v34);
    }

    else
    {
      v31 = [v24 initWithCode:4 userActivity:0];
      v32 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v22, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_266E03000, v22, v32, "No parking locations to delete.", v33, 2u);
        MEMORY[0x26D5F3640](v33, -1, -1);
      }

      [v31 setParkingLocation_];
      (v35)(v31);
    }
  }
}

id INDeleteParkingLocationIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id INDeleteParkingLocationIntentHandler.init()()
{
  v1 = OBJC_IVAR____TtC7SiriGeo36INDeleteParkingLocationIntentHandler_logObject;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  *&v0[v1] = OS_os_log.init(subsystem:category:)();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for INDeleteParkingLocationIntentHandler();
  return objc_msgSendSuper2(&v3, sel_init);
}

id INDeleteParkingLocationIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for INDeleteParkingLocationIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized INDeleteParkingLocationIntentHandler.handle(intent:completion:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.begin.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)();
  (*(v6 + 8))(v8, v5);
  if (one-time initialization token for routineManager != -1)
  {
    swift_once();
  }

  v9 = static ParkingLocationService.routineManager;
  v10 = swift_allocObject();
  v10[2] = v2;
  v10[3] = a1;
  v10[4] = a2;
  aBlock[4] = partial apply for closure #1 in INDeleteParkingLocationIntentHandler.handle(intent:completion:);
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [RTVehicleEvent]?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor;
  v11 = _Block_copy(aBlock);
  v12 = v2;

  [v9 fetchLastVehicleEventsWithHandler_];
  _Block_release(v11);
}

uint64_t sub_266E08520()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_266E0856C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type INDeleteParkingLocationIntentResponse and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type INDeleteParkingLocationIntentResponse and conformance NSObject;
  if (!lazy protocol witness table cache variable for type INDeleteParkingLocationIntentResponse and conformance NSObject)
  {
    type metadata accessor for OS_os_log(255, &lazy cache variable for type metadata for INDeleteParkingLocationIntentResponse, 0x277CD3BA8);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type INDeleteParkingLocationIntentResponse and conformance NSObject);
  }

  return result;
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

Swift::Int ContactServiceError.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x26D5F30F0](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ContactServiceError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x26D5F30F0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ContactServiceError(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x26D5F30F0](v2);
  return Hasher._finalize()();
}

uint64_t ContactService.__allocating_init()()
{
  v0 = swift_allocObject();
  ContactService.init()();
  return v0;
}

void *ContactService.init()()
{
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  v0[2] = OS_os_log.init(subsystem:category:)();
  v0[3] = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  type metadata accessor for MapsService();
  v1 = swift_allocObject();
  *(v1 + 16) = OS_os_log.init(subsystem:category:)();
  *(v1 + 24) = xmmword_266E21800;
  v0[4] = v1;
  return v0;
}

Swift::OpaquePointer_optional __swiftcall ContactService.fetchContactIDs(forIdentifiers:)(Swift::OpaquePointer forIdentifiers)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v4 = [v2 predicateForContactsWithIdentifiers_];

  v5 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_266E21EF0;
  v7 = *MEMORY[0x277CBD098];
  v8 = *MEMORY[0x277CBCFC0];
  *(v6 + 32) = *MEMORY[0x277CBD098];
  *(v6 + 40) = v8;
  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
  v11 = Array._bridgeToObjectiveC()().super.isa;

  v20[0] = 0;
  v12 = [v5 unifiedContactsMatchingPredicate:v4 keysToFetch:v11 error:v20];

  v13 = v20[0];
  if (v12)
  {
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CNContact, 0x277CBDA58);
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v13;
  }

  else
  {
    v17 = v20[0];
    v18 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v14 = 0;
  }

  v19 = v14;
  result.value._rawValue = v19;
  result.is_nil = v16;
  return result;
}

Swift::tuple_OpaquePointer_optional_SiriGeo_ContactServiceError_optional __swiftcall ContactService.fetchPersonHandles(forIdentifiers:)(Swift::OpaquePointer forIdentifiers)
{
  v2 = (*(*v1 + 112))(forIdentifiers._rawValue);
  if (v2)
  {
    v3 = v2;
    v4 = static os_log_type_t.info.getter();
    v5 = v1[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_266E21E90;
    *(v6 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9CNContactCGMd, &_sSaySo9CNContactCGMR);
    *(v6 + 64) = lazy protocol witness table accessor for type [CNContact] and conformance [A](&lazy protocol witness table cache variable for type [CNContact] and conformance [A], &_sSaySo9CNContactCGMd, &_sSaySo9CNContactCGMR);
    *(v6 + 32) = v3;

    os_log(_:dso:log:_:_:)(v4, &dword_266E03000, v5, "retrieved contacts %@", 21, 2, v6);

    v58 = MEMORY[0x277D84F90];
    v7 = (v3 & 0xFFFFFFFFFFFFFF8);
    if (v3 >> 62)
    {
      goto LABEL_52;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x26D5F3000](v47))
    {
      v50 = v7;
      v9 = 0;
      v55 = v3 & 0xC000000000000001;
      v10 = MEMORY[0x277D84F90];
      v53 = *MEMORY[0x277CBCFC0];
      v54 = *MEMORY[0x277CBD098];
      v49 = v3 + 32;
      v11 = 0x279C05000;
      v51 = v3;
      v52 = i;
      while (1)
      {
        if (v55)
        {
          v12 = MEMORY[0x26D5F2F90](v9, v3);
        }

        else
        {
          if (v9 >= v50[2])
          {
            goto LABEL_49;
          }

          v12 = *(v49 + 8 * v9);
        }

        v13 = v12;
        if (__OFADD__(v9++, 1))
        {
          break;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_266E21F00;
        *(v15 + 32) = v54;
        v16 = v54;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
        isa = Array._bridgeToObjectiveC()().super.isa;

        v18 = [v13 *(v11 + 1968)];

        v57 = v13;
        if (!v18)
        {
          goto LABEL_25;
        }

        v7 = [v13 phoneNumbers];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
        v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v19 >> 62)
        {
          if (v19 < 0)
          {
            v44 = v19;
          }

          else
          {
            v44 = v19 & 0xFFFFFFFFFFFFFF8;
          }

          v20 = MEMORY[0x26D5F3000](v44);
          if (v20)
          {
LABEL_15:
            if (v20 < 1)
            {
              goto LABEL_50;
            }

            for (j = 0; j != v20; ++j)
            {
              if ((v19 & 0xC000000000000001) != 0)
              {
                v22 = MEMORY[0x26D5F2F90](j, v19);
              }

              else
              {
                v22 = *(v19 + 8 * j + 32);
              }

              v23 = v22;
              v24 = [v22 value];
              v25 = [v24 stringValue];

              v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v28 = v27;

              v29 = objc_allocWithZone(MEMORY[0x277CD3E98]);
              v30 = MEMORY[0x26D5F2D60](v26, v28);

              [v29 initWithValue:v30 type:2];

              MEMORY[0x26D5F2E10]();
              if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            }

            v10 = v58;
            v3 = v51;
            i = v52;
          }
        }

        else
        {
          v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v20)
          {
            goto LABEL_15;
          }
        }

        v11 = 0x279C05000uLL;
LABEL_25:
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_266E21F00;
        *(v31 + 32) = v53;
        v32 = v53;
        v33 = Array._bridgeToObjectiveC()().super.isa;

        v7 = [v57 *(v11 + 1968)];

        if (v7)
        {
          v56 = v9;
          v7 = [v57 emailAddresses];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
          v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v34 >> 62)
          {
            if (v34 < 0)
            {
              v45 = v34;
            }

            else
            {
              v45 = v34 & 0xFFFFFFFFFFFFFF8;
            }

            v35 = MEMORY[0x26D5F3000](v45);
            if (!v35)
            {
LABEL_46:

              i = v52;
              v9 = v56;
              goto LABEL_6;
            }
          }

          else
          {
            v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v35)
            {
              goto LABEL_46;
            }
          }

          if (v35 < 1)
          {
            goto LABEL_51;
          }

          for (k = 0; k != v35; ++k)
          {
            if ((v34 & 0xC000000000000001) != 0)
            {
              v37 = MEMORY[0x26D5F2F90](k, v34);
            }

            else
            {
              v37 = *(v34 + 8 * k + 32);
            }

            v7 = v37;
            v38 = [v37 value];
            v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v41 = v40;

            v42 = objc_allocWithZone(MEMORY[0x277CD3E98]);
            v43 = MEMORY[0x26D5F2D60](v39, v41);

            [v42 initWithValue:v43 type:1];

            MEMORY[0x26D5F2E10]();
            if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          }

          v10 = v58;

          v3 = v51;
          i = v52;
          v9 = v56;
          v11 = 0x279C05000;
        }

        else
        {
        }

LABEL_6:
        if (v9 == i)
        {
          goto LABEL_57;
        }
      }

      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      if (v3 >= 0)
      {
        v47 = v7;
      }

      else
      {
        v47 = v3;
      }
    }

    v10 = MEMORY[0x277D84F90];
LABEL_57:

    v46 = 2;
  }

  else
  {
    v10 = 0;
    v46 = 0;
  }

  v48 = v10;
  result._0.value._rawValue = v48;
  *&result._0.is_nil = v46;
  return result;
}

uint64_t ContactService.fetchSingleTripContact(recipient:)(void *a1)
{
  v3 = [a1 contactIdentifier];
  if (!v3)
  {
    v15 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v15, &dword_266E03000, v1[2], "fetchSingleTripContact - contactIdentifier is nil", 49, 2, MEMORY[0x277D84F90]);
    v14 = [objc_opt_self() unsupportedForReason_];
    goto LABEL_33;
  }

  v48 = a1;
  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_266E21E90;
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;
  v9 = *(*v1 + 120);

  v49 = v1;
  v10 = v9(v8);
  v12 = v11;
  LODWORD(v9) = v11;

  if (v9 != 2 && (v12 & 1) == 0)
  {

    v13 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v13, &dword_266E03000, v1[2], "fetchSingleTripContact - did not fetch any contact from contact store", 69, 2, MEMORY[0x277D84F90]);
    v14 = [objc_opt_self() unsupportedForReason_];
LABEL_33:
    v10 = 0;
    goto LABEL_34;
  }

  if (!v10)
  {
LABEL_32:
    v40 = static os_log_type_t.info.getter();
    v41 = v1[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_266E21E90;
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_266E21E90;
    *(v43 + 32) = v5;
    *(v43 + 40) = v7;
    *(v42 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    *(v42 + 64) = lazy protocol witness table accessor for type [CNContact] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
    *(v42 + 32) = v43;
    os_log(_:dso:log:_:_:)(v40, &dword_266E03000, v41, "fetchSingleTripContact - personHandles is empty/nil for contacts %@", 67, 2, v42);

    v14 = [objc_opt_self() unsupportedForReason_];
    goto LABEL_33;
  }

  if (!(v10 >> 62))
  {
    v16 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

  if (v10 >= 0)
  {
    v39 = v10 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v39 = v10;
  }

  v16 = MEMORY[0x26D5F3000](v39);
  if (!v16)
  {
LABEL_31:

    goto LABEL_32;
  }

LABEL_9:

  if (v16 < 1)
  {
    __break(1u);
  }

  else
  {
    v17 = 0;
    v18 = MEMORY[0x277D84F90];
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x26D5F2F90](v17, v10);
      }

      else
      {
        v19 = *(v10 + 8 * v17 + 32);
      }

      v20 = v19;
      v21 = [v19 value];
      if (v21)
      {
        v22 = v21;
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18);
        }

        v27 = *(v18 + 2);
        v26 = *(v18 + 3);
        if (v27 >= v26 >> 1)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v18);
        }

        *(v18 + 2) = v27 + 1;
        v28 = &v18[16 * v27];
        *(v28 + 4) = v23;
        *(v28 + 5) = v25;
      }

      else
      {
      }

      ++v17;
    }

    while (v16 != v17);

    v29 = objc_opt_self();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v31 = [v29 contactsFromHandles_];

    v16 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MSPSharedTripContact, 0x277D265F0);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v10 >> 62))
    {
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
      {
        goto LABEL_24;
      }

LABEL_40:

      v47 = static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)(v47, &dword_266E03000, v49[2], "fetchSingleTripContact - no MSPSharedContact could be retrieved", 63, 2, MEMORY[0x277D84F90]);
      v14 = [objc_opt_self() unsupportedForReason_];
      goto LABEL_33;
    }
  }

  if (v10 < 0)
  {
    v46 = v10;
  }

  else
  {
    v46 = v10 & 0xFFFFFFFFFFFFFF8;
  }

  if (MEMORY[0x26D5F3000](v46) <= 0)
  {
    goto LABEL_40;
  }

LABEL_24:
  v32 = v49[2];
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v50 = v35;
    *v34 = 136315138;
    v36 = MEMORY[0x26D5F2E40](v10, v16);
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v50);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_266E03000, v32, v33, "fetchSingleTripContact - successful %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x26D5F3640](v35, -1, -1);
    MEMORY[0x26D5F3640](v34, -1, -1);
  }

  v14 = [objc_opt_self() resolutionResultSuccessWithResolvedValue_];
LABEL_34:
  v44 = v14;
  return v10;
}

char *ContactService.rankAndSortHandlesByPopularity(forHandleValues:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D3A0B0]) init];
  v4 = static os_log_type_t.info.getter();
  v5 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_266E21E90;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7SiriGeo28EnhancedMSPSharedTripContactVGMd, &_sSay7SiriGeo28EnhancedMSPSharedTripContactVGMR);
  *(v6 + 56) = v71;
  v70 = lazy protocol witness table accessor for type [CNContact] and conformance [A](&lazy protocol witness table cache variable for type [EnhancedMSPSharedTripContact] and conformance [A], &_sSay7SiriGeo28EnhancedMSPSharedTripContactVGMd, &_sSay7SiriGeo28EnhancedMSPSharedTripContactVGMR);
  *(v6 + 64) = v70;
  *(v6 + 32) = a1;

  os_log(_:dso:log:_:_:)(v4, &dword_266E03000, v5, "candidate handles %@", 20, 2, v6);

  v7 = *(a1 + 16);
  log = v5;
  v78 = v7;
  if (v7)
  {
    v84[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v8 = v84[0];
    v9 = (a1 + 40);
    do
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      v84[0] = v8;
      v12 = *(v8 + 16);
      v13 = *(v8 + 24);

      if (v12 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v12 + 1, 1);
        v8 = v84[0];
      }

      *(v8 + 16) = v12 + 1;
      v14 = v8 + 16 * v12;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
      v9 += 6;
      --v7;
    }

    while (v7);
    v5 = log;
  }

  isa = Array._bridgeToObjectiveC()().super.isa;

  v16 = [v3 rankedHandlesFromCandidateHandles_];

  if (v16)
  {
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v17 = 0;
  }

  v72 = v3;
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v84[0] = v20;
    *v19 = 136315138;
    *&v81 = v17;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo8NSNumberCGSgMd, &_sSDySSSo8NSNumberCGSgMR);
    v21 = String.init<A>(describing:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v84);

    *(v19 + 4) = v23;
    v5 = log;
    _os_log_impl(&dword_266E03000, log, v18, "ranked handles  %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x26D5F3640](v20, -1, -1);
    MEMORY[0x26D5F3640](v19, -1, -1);
  }

  v24 = MEMORY[0x277D84F90];
  v25 = v78;
  if (v78)
  {
    v73 = v17;
    v80 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v78, 0);
    v24 = v80;
    v26 = (a1 + 72);
    do
    {
      v77 = v24;
      v79 = v25;
      v27 = *(v26 - 4);
      v30 = *(v26 - 3);
      v29 = *(v26 - 2);
      v31 = *(v26 - 1);
      v32 = *v26;
      v84[0] = *(v26 - 5);
      v28 = v84[0];
      v84[1] = v27;
      v84[2] = v30;
      v84[3] = v29;
      *(&v75 + 1) = v29;
      v84[4] = v31;
      v84[5] = v32;
      v33 = v32;
      swift_bridgeObjectRetain_n();
      v34 = v30;
      v76 = v33;
      *&v75 = v34;
      v35 = static os_log_type_t.info.getter();
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_266E21F10;
      v37 = EnhancedMSPSharedTripContact.debugDescription.getter();
      v39 = v38;
      v40 = MEMORY[0x277D837D0];
      *(v36 + 56) = MEMORY[0x277D837D0];
      v41 = lazy protocol witness table accessor for type String and conformance String();
      *(v36 + 32) = v37;
      *(v36 + 40) = v39;
      *(v36 + 96) = v40;
      *(v36 + 104) = v41;
      *(v36 + 64) = v41;
      *(v36 + 72) = v28;
      *(v36 + 80) = v27;

      os_log(_:dso:log:_:_:)(v35, &dword_266E03000, log, "value before %@ || key %@", 25, 2, v36);

      if (v73)
      {
        if (*(v73 + 16))
        {
          v42 = specialized __RawDictionaryStorage.find<A>(_:)(v28, v27);
          if (v43)
          {
            v44 = *(*(v73 + 56) + 8 * v42);
            v45 = static os_log_type_t.info.getter();
            v46 = swift_allocObject();
            *(v46 + 16) = xmmword_266E21E90;
            [v44 doubleValue];
            *(v46 + 56) = MEMORY[0x277D839F8];
            *(v46 + 64) = MEMORY[0x277D83A80];
            *(v46 + 32) = v47;
            os_log(_:dso:log:_:_:)(v45, &dword_266E03000, log, "compare %f", v69);

            [v44 doubleValue];
            if ((~v48 & 0x7FF0000000000000) != 0 || (v48 & 0xFFFFFFFFFFFFFLL) == 0)
            {
              [v44 doubleValue];
              v31 = v49;
            }
          }
        }
      }

      v50 = static os_log_type_t.info.getter();
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_266E21E90;
      *&v81 = v28;
      *(&v81 + 1) = v27;
      v82 = v75;
      *&v83 = v31;
      *(&v83 + 1) = v32;
      v52 = EnhancedMSPSharedTripContact.debugDescription.getter();
      *(v51 + 56) = MEMORY[0x277D837D0];
      *(v51 + 64) = v41;
      *(v51 + 32) = v52;
      *(v51 + 40) = v53;
      os_log(_:dso:log:_:_:)(v50, &dword_266E03000, log, "value after %@", 14, 2, v51);

      v24 = v77;
      v80 = v77;
      v55 = *(v77 + 2);
      v54 = *(v77 + 3);
      if (v55 >= v54 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1);
        v24 = v80;
      }

      v26 += 6;
      *(v24 + 2) = v55 + 1;
      v56 = &v24[48 * v55];
      v57 = v81;
      v58 = v83;
      *(v56 + 3) = v82;
      *(v56 + 4) = v58;
      *(v56 + 2) = v57;
      v25 = v79 - 1;
    }

    while (v79 != 1);
    v5 = log;
  }

  v59 = static os_log_type_t.info.getter();
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_266E21E90;
  *(v60 + 56) = v71;
  *(v60 + 64) = v70;
  *(v60 + 32) = v24;

  os_log(_:dso:log:_:_:)(v59, &dword_266E03000, v5, "ranked handles before sort %@", 29, 2, v60);

  v80 = v24;

  specialized MutableCollection<>.sort(by:)(&v80);

  v61 = v80;
  v62 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v80 = v64;
    *v63 = 136315138;
    v65 = MEMORY[0x26D5F2E40](v61, &type metadata for EnhancedMSPSharedTripContact);
    v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, &v80);

    *(v63 + 4) = v67;
    _os_log_impl(&dword_266E03000, v5, v62, "ranked handles after sort %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v64);
    MEMORY[0x26D5F3640](v64, -1, -1);
    MEMORY[0x26D5F3640](v63, -1, -1);
  }

  return v61;
}

uint64_t ContactService.rankAndSortHandlesByPopularityAndType(forHandleValues:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = static os_log_type_t.info.getter();
  os_log(_:dso:log:_:_:)(v8, &dword_266E03000, *(v3 + 16), "rankAndSortHandlesByPopularityAndType", 37, 2, MEMORY[0x277D84F90]);
  v9 = *(v3 + 32);
  v10 = swift_allocObject();
  v10[2] = v4;
  v10[3] = a2;
  v10[4] = a3;
  v11 = *(*v9 + 128);

  v11(a1, partial apply for closure #1 in ContactService.rankAndSortHandlesByPopularityAndType(forHandleValues:_:), v10);
}

void closure #1 in ContactService.rankAndSortHandlesByPopularityAndType(forHandleValues:_:)(char *a1, id a2, void *a3, void (*a4)(uint64_t))
{
  if (a2)
  {
    v7 = a2;
    v8 = static os_log_type_t.error.getter();
    v9 = a3[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_266E21E90;
    swift_getErrorValue();
    v11 = Error.localizedDescription.getter();
    v13 = v12;
    *(v10 + 56) = MEMORY[0x277D837D0];
    *(v10 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    os_log(_:dso:log:_:_:)(v8, &dword_266E03000, v9, "%@", 2, 2, v10);

    a4(MEMORY[0x277D84F90]);
  }

  else if (a1)
  {
    v18 = a1;

    specialized MutableCollection<>.sort(by:)(&v18);
    v14 = (*(*a3 + 136))(v18);

    a4(v14);
  }

  else
  {
    v15 = static os_log_type_t.error.getter();
    v16 = a3[2];
    v17 = MEMORY[0x277D84F90];
    os_log(_:dso:log:_:_:)(v15, &dword_266E03000, v16, "nil sharedTripContacts", 22, 2, MEMORY[0x277D84F90]);
    a4(v17);
  }
}

char *specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v22[0] = (v2 + 32);
  v22[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 64;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[48 * i + 56];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 1) >= v11)
          {
            break;
          }

          v14 = *(v13 + 2);
          v15 = *(v13 + 6);
          v16 = *(v13 + 7);
          v17 = *(v13 + 24);
          v18 = *(v13 - 1);
          *(v13 + 1) = *(v13 - 2);
          *(v13 + 2) = v18;
          *(v13 + 3) = *v13;
          *(v13 - 4) = v14;
          *(v13 - 24) = v17;
          *(v13 - 1) = v11;
          *v13 = v15;
          *(v13 + 1) = v16;
          v13 -= 48;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 48;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v20[0] = v7 + 32;
    v20[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v20, v21, v22, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t ContactService.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
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

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
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
    memcpy(v13, v14, 16 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SiriGeo28EnhancedMSPSharedTripContactVGMd, &_ss23_ContiguousArrayStorageCy7SiriGeo28EnhancedMSPSharedTripContactVGMR);
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

uint64_t closure #1 in OSLogArguments.append(_:)(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
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

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
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
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
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

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t lazy protocol witness table accessor for type [CNContact] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

char *specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    v4 = *a4;
    v5 = *a4 + 48 * a3 - 48;
    v6 = result - a3;
LABEL_5:
    v7 = v4 + 48 * a3;
    v8 = *(v7 + 24);
    v9 = *(v7 + 32);
    v10 = v6;
    v11 = v5;
    while (1)
    {
      v12 = *(v11 + 24);
      if (v8 == v12)
      {
        v13 = *(v11 + 32) < v9;
      }

      else
      {
        v13 = v12 < v8;
      }

      if (!v13)
      {
LABEL_4:
        ++a3;
        v5 += 48;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v14 = *(v11 + 48);
      v15 = *(v11 + 88);
      v16 = *(v11 + 56);
      v17 = *(v11 + 16);
      *(v11 + 48) = *v11;
      *(v11 + 64) = v17;
      *(v11 + 80) = *(v11 + 32);
      *v11 = v14;
      *(v11 + 8) = v16;
      *(v11 + 24) = v8;
      *(v11 + 32) = v9;
      *(v11 + 40) = v15;
      v11 -= 48;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, char *a4)
{
  v102 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_96:
    v6 = *v102;
    if (!*v102)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_128:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v97 = *(v8 + 2);
    if (v97 >= 2)
    {
      while (*a3)
      {
        v98 = *&v8[16 * v97];
        v99 = *&v8[16 * v97 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 48 * v98), (*a3 + 48 * *&v8[16 * v97 + 16]), *a3 + 48 * v99, v6);
        if (v4)
        {
        }

        if (v99 < v98)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v97 - 2 >= *(v8 + 2))
        {
          goto LABEL_122;
        }

        v100 = &v8[16 * v97];
        *v100 = v98;
        *(v100 + 1) = v99;
        result = specialized Array.remove(at:)(v97 - 1);
        v97 = *(v8 + 2);
        if (v97 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v6 = a4;
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v5)
    {
      v10 = *a3 + 48 * v7;
      v11 = *(v10 + 24);
      v12 = *(v10 + 32);
      v13 = *a3 + 48 * v9;
      v14 = *(v13 + 24);
      if (v11 == v14)
      {
        v15 = *(v13 + 32) < v12;
      }

      else
      {
        v15 = v14 < v11;
      }

      v16 = v9 + 2;
      v17 = (v13 + 128);
      while (v5 != v16)
      {
        v18 = *(v17 - 1);
        v19 = *v17;
        v17 += 6;
        v20 = v19;
        v21 = v12 >= v19;
        if (v18 != v11)
        {
          v21 = v11 >= v18;
        }

        ++v16;
        v12 = v20;
        v11 = v18;
        if (v15 == v21)
        {
          v7 = v16 - 1;
          if (!v15)
          {
            goto LABEL_25;
          }

          goto LABEL_16;
        }
      }

      v7 = v5;
      if (!v15)
      {
        goto LABEL_25;
      }

LABEL_16:
      if (v7 < v9)
      {
        goto LABEL_125;
      }

      if (v9 < v7)
      {
        v22 = 48 * v7 - 24;
        v23 = 48 * v9 + 40;
        v24 = v7;
        v25 = v9;
        do
        {
          if (v25 != --v24)
          {
            v35 = *a3;
            if (!*a3)
            {
              goto LABEL_131;
            }

            v26 = (v35 + v23);
            v27 = *(v35 + v23 - 40);
            v28 = v35 + v22;
            v29 = *(v26 - 2);
            v30 = *(v26 - 1);
            v31 = *v26;
            v32 = *(v26 - 2);
            v33 = *(v28 + 8);
            v34 = *(v28 - 8);
            *(v26 - 5) = *(v28 - 24);
            *(v26 - 3) = v34;
            *(v26 - 1) = v33;
            *(v28 - 24) = v27;
            *(v28 - 16) = v32;
            *v28 = v29;
            *(v28 + 8) = v30;
            *(v28 + 16) = v31;
          }

          ++v25;
          v22 -= 48;
          v23 += 48;
        }

        while (v25 < v24);
        v5 = a3[1];
      }
    }

LABEL_25:
    if (v7 < v5)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_124;
      }

      if (v7 - v9 < v6)
      {
        if (__OFADD__(v9, v6))
        {
          goto LABEL_126;
        }

        if (v9 + v6 < v5)
        {
          v5 = v9 + v6;
        }

        if (v5 < v9)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v7 != v5)
        {
          break;
        }
      }
    }

LABEL_45:
    if (v7 < v9)
    {
      goto LABEL_123;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v52 = *(v8 + 2);
    v51 = *(v8 + 3);
    v53 = v52 + 1;
    if (v52 >= v51 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v53;
    v54 = &v8[16 * v52];
    *(v54 + 4) = v9;
    *(v54 + 5) = v7;
    v55 = *v102;
    if (!*v102)
    {
      goto LABEL_133;
    }

    if (v52)
    {
      while (1)
      {
        v56 = v53 - 1;
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v57 = *(v8 + 4);
          v58 = *(v8 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_65:
          if (v60)
          {
            goto LABEL_112;
          }

          v73 = &v8[16 * v53];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_115;
          }

          v79 = &v8[16 * v56 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_119;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v56 = v53 - 2;
            }

            goto LABEL_86;
          }

          goto LABEL_79;
        }

        v83 = &v8[16 * v53];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_79:
        if (v78)
        {
          goto LABEL_114;
        }

        v86 = &v8[16 * v56];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_117;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_86:
        v6 = v56 - 1;
        if (v56 - 1 >= v53)
        {
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
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v94 = *&v8[16 * v6 + 32];
        v95 = *&v8[16 * v56 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 48 * v94), (*a3 + 48 * *&v8[16 * v56 + 32]), *a3 + 48 * v95, v55);
        if (v4)
        {
        }

        if (v95 < v94)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v6 >= *(v8 + 2))
        {
          goto LABEL_109;
        }

        v96 = &v8[16 * v6];
        *(v96 + 4) = v94;
        *(v96 + 5) = v95;
        result = specialized Array.remove(at:)(v56);
        v53 = *(v8 + 2);
        if (v53 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v8[16 * v53 + 32];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_110;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_111;
      }

      v68 = &v8[16 * v53];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_113;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_116;
      }

      if (v72 >= v64)
      {
        v90 = &v8[16 * v56 + 32];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_120;
        }

        if (v59 < v93)
        {
          v56 = v53 - 2;
        }

        goto LABEL_86;
      }

      goto LABEL_65;
    }

LABEL_3:
    v5 = a3[1];
    v6 = a4;
    if (v7 >= v5)
    {
      goto LABEL_96;
    }
  }

  v36 = *a3;
  v37 = *a3 + 48 * v7 - 48;
  v38 = v9 - v7;
LABEL_35:
  v39 = v36 + 48 * v7;
  v40 = *(v39 + 24);
  v41 = *(v39 + 32);
  v42 = v38;
  v43 = v37;
  while (1)
  {
    v44 = *(v43 + 24);
    if (v40 == v44)
    {
      v45 = *(v43 + 32) < v41;
    }

    else
    {
      v45 = v44 < v40;
    }

    if (!v45)
    {
LABEL_34:
      ++v7;
      v37 += 48;
      --v38;
      if (v7 != v5)
      {
        goto LABEL_35;
      }

      v7 = v5;
      goto LABEL_45;
    }

    if (!v36)
    {
      break;
    }

    v46 = *(v43 + 48);
    v47 = *(v43 + 88);
    v48 = *(v43 + 56);
    v49 = *(v43 + 16);
    *(v43 + 48) = *v43;
    *(v43 + 64) = v49;
    *(v43 + 80) = *(v43 + 32);
    *v43 = v46;
    *(v43 + 8) = v48;
    *(v43 + 24) = v40;
    *(v43 + 32) = v41;
    *(v43 + 40) = v47;
    v43 -= 48;
    if (__CFADD__(v42++, 1))
    {
      goto LABEL_34;
    }
  }

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
  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v99 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v100 = *v99;
    if (!*v99)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
      v7 = result;
    }

    v91 = (v7 + 16);
    v92 = *(v7 + 16);
    if (v92 >= 2)
    {
      while (*a3)
      {
        v93 = (v7 + 16 * v92);
        v94 = *v93;
        v95 = &v91[2 * v92];
        v96 = v95[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 48 * *v93), (*a3 + 48 * *v95), (*a3 + 48 * v96), v100);
        if (v4)
        {
        }

        if (v96 < v94)
        {
          goto LABEL_114;
        }

        if (v92 - 2 >= *v91)
        {
          goto LABEL_115;
        }

        *v93 = v94;
        v93[1] = v96;
        v97 = *v91 - v92;
        if (*v91 < v92)
        {
          goto LABEL_116;
        }

        v92 = *v91 - 1;
        result = memmove(v95, v95 + 2, 16 * v97);
        *v91 = v92;
        if (v92 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v98 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 48 * v6 + 24);
      v10 = *a3 + 48 * v8;
      v11 = *(v10 + 24);
      v12 = v8 + 2;
      v13 = (v10 + 120);
      v14 = v9;
      while (v5 != v12)
      {
        v15 = *v13;
        v13 += 6;
        v16 = (v11 < v9) ^ (v14 >= v15);
        ++v12;
        v14 = v15;
        if ((v16 & 1) == 0)
        {
          v6 = v12 - 1;
          if (v11 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v11 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v17 = 48 * v6 - 24;
        v18 = 48 * v8 + 40;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v30 + v18);
            v22 = *(v30 + v18 - 40);
            v23 = v30 + v17;
            v24 = *(v21 - 2);
            v25 = *(v21 - 1);
            v26 = *v21;
            v27 = *(v21 - 2);
            v28 = *(v23 + 8);
            v29 = *(v23 - 8);
            *(v21 - 5) = *(v23 - 24);
            *(v21 - 3) = v29;
            *(v21 - 1) = v28;
            *(v23 - 24) = v22;
            *(v23 - 16) = v27;
            *v23 = v24;
            *(v23 + 8) = v25;
            *(v23 + 16) = v26;
          }

          ++v20;
          v17 -= 48;
          v18 += 48;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v44 = *(v7 + 16);
    v43 = *(v7 + 24);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v45;
    v46 = v7 + 32;
    v47 = (v7 + 32 + 16 * v44);
    *v47 = v8;
    v47[1] = v6;
    v100 = *v99;
    if (!*v99)
    {
      goto LABEL_127;
    }

    if (v44)
    {
      while (1)
      {
        v48 = v45 - 1;
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v49 = *(v7 + 32);
          v50 = *(v7 + 40);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_57:
          if (v52)
          {
            goto LABEL_104;
          }

          v65 = (v7 + 16 * v45);
          v67 = *v65;
          v66 = v65[1];
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_106;
          }

          v71 = (v46 + 16 * v48);
          v73 = *v71;
          v72 = v71[1];
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_111;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = v45 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v45 < 2)
        {
          goto LABEL_112;
        }

        v75 = (v7 + 16 * v45);
        v77 = *v75;
        v76 = v75[1];
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_72:
        if (v70)
        {
          goto LABEL_108;
        }

        v78 = (v46 + 16 * v48);
        v80 = *v78;
        v79 = v78[1];
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_110;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v48 - 1 >= v45)
        {
          __break(1u);
LABEL_99:
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v86 = (v46 + 16 * (v48 - 1));
        v87 = *v86;
        v88 = (v46 + 16 * v48);
        v89 = v88[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 48 * *v86), (*a3 + 48 * *v88), (*a3 + 48 * v89), v100);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_99;
        }

        if (v48 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *(v7 + 16);
        if (v48 >= v90)
        {
          goto LABEL_101;
        }

        v45 = v90 - 1;
        result = memmove((v46 + 16 * v48), v88 + 2, 16 * (v90 - 1 - v48));
        *(v7 + 16) = v90 - 1;
        if (v90 <= 2)
        {
          goto LABEL_3;
        }
      }

      v53 = v46 + 16 * v45;
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_102;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_103;
      }

      v60 = (v7 + 16 * v45);
      v62 = *v60;
      v61 = v60[1];
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_105;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_107;
      }

      if (v64 >= v56)
      {
        v82 = (v46 + 16 * v48);
        v84 = *v82;
        v83 = v82[1];
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_113;
        }

        if (v51 < v85)
        {
          v48 = v45 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v98;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v31 = *a3;
  v32 = *a3 + 48 * v6 - 48;
  v33 = v8 - v6;
LABEL_30:
  v34 = *(v31 + 48 * v6 + 24);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    if (*(v36 + 24) >= v34)
    {
LABEL_29:
      ++v6;
      v32 += 48;
      --v33;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v31)
    {
      break;
    }

    v37 = *(v36 + 48);
    v38 = *(v36 + 80);
    v39 = *(v36 + 88);
    v40 = *(v36 + 56);
    v41 = *(v36 + 16);
    *(v36 + 48) = *v36;
    *(v36 + 64) = v41;
    *(v36 + 80) = *(v36 + 32);
    *v36 = v37;
    *(v36 + 8) = v40;
    *(v36 + 24) = v34;
    *(v36 + 32) = v38;
    *(v36 + 40) = v39;
    v36 -= 48;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 48;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 48;
  if (v9 >= v11)
  {
    if (a4 != __dst || &__dst[48 * v11] <= a4)
    {
      memmove(a4, __dst, 48 * v11);
    }

    v12 = &v4[48 * v11];
    if (v10 < 48 || v6 <= v7)
    {
LABEL_37:
      v20 = v6;
    }

    else
    {
      do
      {
        v21 = 0;
        v22 = v12;
        while (1)
        {
          v12 = &v22[v21];
          v23 = (v5 + v21);
          v24 = *&v22[v21 - 24];
          v25 = *(v6 - 3);
          v26 = v24 == v25 ? *(v6 - 2) < *&v22[v21 - 16] : v25 < v24;
          v27 = v23 - 48;
          if (v26)
          {
            break;
          }

          if (v23 != v12)
          {
            v28 = *(v12 - 3);
            v29 = *(v12 - 1);
            *(v23 - 2) = *(v12 - 2);
            *(v23 - 1) = v29;
            *v27 = v28;
          }

          v21 -= 48;
          v12 = &v22[v21];
          if (&v22[v21] <= v4)
          {
            goto LABEL_37;
          }
        }

        v20 = v6 - 48;
        if (v23 != v6)
        {
          v30 = *v20;
          v31 = *(v6 - 1);
          *(v23 - 2) = *(v6 - 2);
          *(v23 - 1) = v31;
          *v27 = v30;
        }

        if (v12 <= v4)
        {
          break;
        }

        v5 = (v23 - 48);
        v6 -= 48;
      }

      while (v20 > v7);
      v12 = &v22[v21];
    }
  }

  else
  {
    if (a4 != __src || &__src[48 * v9] <= a4)
    {
      memmove(a4, __src, 48 * v9);
    }

    v12 = &v4[48 * v9];
    if (v8 >= 48 && v6 < v5)
    {
      while (1)
      {
        v13 = *(v6 + 3);
        v14 = *(v4 + 3);
        if (!(v13 == v14 ? *(v4 + 4) < *(v6 + 4) : v14 < v13))
        {
          break;
        }

        v16 = v6;
        v17 = v7 == v6;
        v6 += 48;
        if (!v17)
        {
          goto LABEL_15;
        }

LABEL_16:
        v7 += 48;
        if (v4 >= v12 || v6 >= v5)
        {
          goto LABEL_18;
        }
      }

      v16 = v4;
      v17 = v7 == v4;
      v4 += 48;
      if (v17)
      {
        goto LABEL_16;
      }

LABEL_15:
      v18 = *v16;
      v19 = *(v16 + 2);
      *(v7 + 1) = *(v16 + 1);
      *(v7 + 2) = v19;
      *v7 = v18;
      goto LABEL_16;
    }

LABEL_18:
    v20 = v7;
  }

  v32 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v33 = (v32 >> 3) + (v32 >> 63);
  if (v20 != v4 || v20 >= &v4[48 * v33])
  {
    memmove(v20, v4, 48 * v33);
  }

  return 1;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 48;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 48;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[48 * v9] <= a4)
    {
      memmove(a4, __dst, 48 * v9);
    }

    v12 = &v4[48 * v9];
    if (v8 < 48)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*(v4 + 3) < *(v6 + 3))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 48;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 48;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 48;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 2);
    *(v7 + 1) = *(v13 + 1);
    *(v7 + 2) = v16;
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[48 * v11] <= a4)
  {
    memmove(a4, __src, 48 * v11);
  }

  v12 = &v4[48 * v11];
  if (v10 >= 48 && v6 > v7)
  {
LABEL_20:
    v5 -= 48;
    do
    {
      v17 = v5 + 48;
      if (*(v6 - 3) < *(v12 - 3))
      {
        v21 = v6 - 48;
        if (v17 != v6)
        {
          v22 = *v21;
          v23 = *(v6 - 1);
          *(v5 + 1) = *(v6 - 2);
          *(v5 + 2) = v23;
          *v5 = v22;
        }

        if (v12 <= v4 || (v6 -= 48, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v18 = v12 - 48;
      if (v17 != v12)
      {
        v19 = *v18;
        v20 = *(v12 - 1);
        *(v5 + 1) = *(v12 - 2);
        *(v5 + 2) = v20;
        *v5 = v19;
      }

      v5 -= 48;
      v12 -= 48;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_31:
  v24 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v25 = (v24 >> 3) + (v24 >> 63);
  if (v6 != v4 || v6 >= &v4[48 * v25])
  {
    memmove(v6, v4, 48 * v25);
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

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
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

uint64_t sub_266E0C238()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t lazy protocol witness table accessor for type ContactServiceError and conformance ContactServiceError()
{
  result = lazy protocol witness table cache variable for type ContactServiceError and conformance ContactServiceError;
  if (!lazy protocol witness table cache variable for type ContactServiceError and conformance ContactServiceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactServiceError and conformance ContactServiceError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactServiceError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ContactServiceError(uint64_t result, unsigned int a2, unsigned int a3)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SiriGeo28EnhancedMSPSharedTripContactVGMd, &_ss23_ContiguousArrayStorageCy7SiriGeo28EnhancedMSPSharedTripContactVGMR);
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

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t MapsService.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  *(v0 + 16) = OS_os_log.init(subsystem:category:)();
  *(v0 + 24) = xmmword_266E21800;
  return v0;
}

uint64_t EnhancedMSPSharedTripContact.handle.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t EnhancedMSPSharedTripContact.handle.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void *EnhancedMSPSharedTripContact.textMessageServiceName.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

uint64_t EnhancedMSPSharedTripContact.fullName.getter()
{
  v1 = [*(v0 + 16) contact];
  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = v1;
  v3 = [objc_opt_self() stringFromContact:v1 style:0];
  if (!v3)
  {

LABEL_5:
    v5 = *v0;

    return v5;
  }

  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v5;
}

uint64_t EnhancedMSPSharedTripContact.contactId.getter()
{
  v1 = [*(v0 + 16) contact];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t EnhancedMSPSharedTripContact.debugDescription.getter()
{
  _StringGuts.grow(_:)(91);
  MEMORY[0x26D5F2DD0](0xD000000000000024, 0x8000000266E22BB0);
  MEMORY[0x26D5F2DD0](*v0, *(v0 + 8));
  MEMORY[0x26D5F2DD0](0xD000000000000013, 0x8000000266E22BE0);
  v1 = [*(v0 + 16) description];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  MEMORY[0x26D5F2DD0](v2, v4);

  MEMORY[0x26D5F2DD0](0xD000000000000010, 0x8000000266E22C00);
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D5F2DD0](v5);

  MEMORY[0x26D5F2DD0](0x72616C75706F7020, 0xEC0000003A797469);
  Double.write<A>(to:)();
  return 0;
}

void EnhancedMSPSharedTripContact.init(_:_:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = [a1 displayName];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *a3 = v7;
  a3[1] = v9;
  a3[2] = a1;
  a3[3] = a2;
  a3[4] = 0;
  a3[5] = 0;
}

Swift::Int MapsService.ShareETAConfigurationError.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x26D5F30F0](a1 & 1);
  return Hasher._finalize()();
}

void *MapsService.observer.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void MapsService.observer.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t key path getter for MapsService.CapabilityFetcherObserver.completion : MapsService.CapabilityFetcherObserver@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed [EnhancedMSPSharedTripContact]) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for MapsService.CapabilityFetcherObserver.completion : MapsService.CapabilityFetcherObserver(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed [EnhancedMSPSharedTripContact]) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0x80);
  _sxq_Ri_zRi0_zRi__Ri0__r0_lySay7SiriGeo28EnhancedMSPSharedTripContactVGytIsegnr_SgWOy_0(v3, v4);
  return v7(v6, v5);
}

uint64_t MapsService.CapabilityFetcherObserver.completion.getter()
{
  v1 = (v0 + OBJC_IVAR____TtCC7SiriGeo11MapsService25CapabilityFetcherObserver_completion);
  swift_beginAccess();
  v2 = *v1;
  _sxq_Ri_zRi0_zRi__Ri0__r0_lySay7SiriGeo28EnhancedMSPSharedTripContactVGytIsegnr_SgWOy_0(*v1, v1[1]);
  return v2;
}

uint64_t MapsService.CapabilityFetcherObserver.completion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCC7SiriGeo11MapsService25CapabilityFetcherObserver_completion);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed [EnhancedMSPSharedTripContact]) -> ())?(v6, v7);
}

uint64_t MapsService.CapabilityFetcherObserver.capabilities.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC7SiriGeo11MapsService25CapabilityFetcherObserver_capabilities;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id MapsService.CapabilityFetcherObserver.init(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC7SiriGeo11MapsService25CapabilityFetcherObserver_logObject;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  *&v1[v3] = OS_os_log.init(subsystem:category:)();
  *&v1[OBJC_IVAR____TtCC7SiriGeo11MapsService25CapabilityFetcherObserver_timeout] = 5;
  v4 = &v1[OBJC_IVAR____TtCC7SiriGeo11MapsService25CapabilityFetcherObserver_completion];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtCC7SiriGeo11MapsService25CapabilityFetcherObserver_capabilities] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtCC7SiriGeo11MapsService25CapabilityFetcherObserver_levelFetcher] = a1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for MapsService.CapabilityFetcherObserver();
  return objc_msgSendSuper2(&v6, sel_init);
}

void MapsService.CapabilityFetcherObserver.fetchCapabilities(_:_:)(unint64_t a1, void (*a2)(void), unint64_t a3)
{
  v7 = 1702195828;
  v8 = static os_log_type_t.info.getter();
  v9 = *(v3 + OBJC_IVAR____TtCC7SiriGeo11MapsService25CapabilityFetcherObserver_logObject);
  v10 = MEMORY[0x277D84F90];
  os_log(_:dso:log:_:_:)(v8, &dword_266E03000, v9, "fetchCapabilities", 17, 2, MEMORY[0x277D84F90]);
  v11 = *((*MEMORY[0x277D85000] & *v3) + 0x80);

  v61 = a2;
  v68 = v3;
  v11(a2, a3);
  v75 = v10;
  v12 = static os_log_type_t.info.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_266E21F10;
  *(v13 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo20MSPSharedTripContactCGMd, &_sSaySo20MSPSharedTripContactCGMR);
  *(v13 + 64) = lazy protocol witness table accessor for type [CNContact] and conformance [A](&lazy protocol witness table cache variable for type [MSPSharedTripContact] and conformance [A], &_sSaySo20MSPSharedTripContactCGMd, &_sSaySo20MSPSharedTripContactCGMR);
  *(v13 + 32) = v10;
  v14 = 0xE400000000000000;
  v15 = v10 >> 62;
  v16 = 1702195828;
  if (v15)
  {
    v56 = MEMORY[0x26D5F3000](MEMORY[0x277D84F90]);
    v16 = v56 ? 0x65736C6166 : 1702195828;
    if (v56)
    {
      v14 = 0xE500000000000000;
    }
  }

  *(v13 + 96) = MEMORY[0x277D837D0];
  *(v13 + 104) = lazy protocol witness table accessor for type String and conformance String();
  *(v13 + 72) = v16;
  *(v13 + 80) = v14;
  os_log(_:dso:log:_:_:)(v12, &dword_266E03000, v9, "fetchCapabilities for: %@ %@", 28, 2, v13);

  if (a1 >> 62)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      v57 = a1;
    }

    else
    {
      v57 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v18 = MEMORY[0x26D5F3000](v57);
  }

  else
  {
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  oslog = v9;
  if (v18)
  {
    if (v18 < 1)
    {
      __break(1u);
LABEL_57:
      if (v7 < 0)
      {
        v60 = v7;
      }

      else
      {
        v60 = v17;
      }

      v49 = MEMORY[0x26D5F3000](v60);
      goto LABEL_31;
    }

    v19 = 0;
    v65 = *((*MEMORY[0x277D85000] & *v68) + 0xA0);
    v69 = *(v68 + OBJC_IVAR____TtCC7SiriGeo11MapsService25CapabilityFetcherObserver_levelFetcher);
    v64 = a1 & 0xC000000000000001;
    v62 = MEMORY[0x277D84F90];
    v66 = v18;
    v67 = a1;
    do
    {
      if (v64)
      {
        v20 = MEMORY[0x26D5F2F90](v19, a1);
      }

      else
      {
        v20 = *(a1 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = [v69 capabilityLevelForContact_];
      v23 = [v21 displayName];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v73[0] = v24;
      v73[1] = v26;
      v73[2] = v21;
      v73[3] = v22;
      v73[4] = 0;
      v74 = 0;
      v70 = v24;
      v71 = v22;
      if (v22)
      {
        if (v22 == 2)
        {
          v27 = [v69 serviceNameForContact_];
          if (v27)
          {
            v28 = v27;
            v29 = MSPSharedTripServiceNameForRawServiceName();

            swift_beginAccess();
            v74 = v29;
          }

          else
          {
            v29 = 0;
          }

          v31 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(oslog, v31))
          {
            v32 = swift_slowAlloc();
            v33 = swift_slowAlloc();
            *v32 = 138412290;
            *(v32 + 4) = v29;
            *v33 = v29;
            v34 = v29;
            _os_log_impl(&dword_266E03000, oslog, v31, "serviceName: %@", v32, 0xCu);
            outlined destroy of NSObject?(v33);
            MEMORY[0x26D5F3640](v33, -1, -1);
            MEMORY[0x26D5F3640](v32, -1, -1);
          }
        }

        else
        {
          v29 = 0;
        }
      }

      else
      {
        v30 = v21;
        MEMORY[0x26D5F2E10]();
        if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v29 = 0;
        v62 = v75;
      }

      v35 = v29;
      v36 = v21;

      v37 = v65(v72);
      v39 = v38;
      v40 = *v38;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v39 = v40;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v40 + 2) + 1, 1, v40);
        *v39 = v40;
      }

      v43 = *(v40 + 2);
      v42 = *(v40 + 3);
      if (v43 >= v42 >> 1)
      {
        v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v40);
        *v39 = v40;
      }

      a1 = v67;
      ++v19;
      *(v40 + 2) = v43 + 1;
      v44 = &v40[48 * v43];
      *(v44 + 4) = v70;
      *(v44 + 5) = v26;
      *(v44 + 6) = v36;
      *(v44 + 7) = v71;
      *(v44 + 8) = 0;
      *(v44 + 9) = v29;
      v37(v72, 0);
    }

    while (v66 != v19);
  }

  else
  {
    v62 = MEMORY[0x277D84F90];
  }

  LOBYTE(v13) = static os_log_type_t.default.getter();
  v9 = oslog;
  v7 = v62;
  a3 = v62 >> 62;
  if (!os_log_type_enabled(oslog, v13))
  {
    goto LABEL_38;
  }

  v12 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  v73[0] = v16;
  *v12 = 136315394;
  v45 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MSPSharedTripContact, 0x277D265F0);
  v46 = MEMORY[0x26D5F2E40](v62, v45);
  v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, v73);

  *(v12 + 4) = v48;
  *(v12 + 12) = 2080;
  v17 = v62 & 0xFFFFFFFFFFFFFF8;
  if (a3)
  {
    goto LABEL_57;
  }

  v49 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_31:
  v50 = v49 == 0;
  if (v49)
  {
    v51 = 0x65736C6166;
  }

  else
  {
    v51 = 1702195828;
  }

  if (v50)
  {
    v52 = 0xE400000000000000;
  }

  else
  {
    v52 = 0xE500000000000000;
  }

  v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, v73);

  *(v12 + 14) = v53;
  _os_log_impl(&dword_266E03000, v9, v13, "fetchCapabilities for: %s %s", v12, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x26D5F3640](v16, -1, -1);
  MEMORY[0x26D5F3640](v12, -1, -1);
LABEL_38:
  if (a3)
  {
    if (v7 < 0)
    {
      v58 = v7;
    }

    else
    {
      v58 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    if (MEMORY[0x26D5F3000](v58))
    {
      goto LABEL_40;
    }
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_40:
    v54 = *(v68 + OBJC_IVAR____TtCC7SiriGeo11MapsService25CapabilityFetcherObserver_levelFetcher);
    [v54 registerObserver_];
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MSPSharedTripContact, 0x277D265F0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v54 requestCapabilityLevelsForContacts_];

    return;
  }

  (*((*MEMORY[0x277D85000] & *v68) + 0x90))(v59);
  v61();
}

Swift::Void __swiftcall MapsService.CapabilityFetcherObserver.capabilityLevelsDidUpdate()()
{
  v1 = v0;
  v2 = static os_log_type_t.info.getter();
  v68 = *(v0 + OBJC_IVAR____TtCC7SiriGeo11MapsService25CapabilityFetcherObserver_logObject);
  v3 = os_log(_:dso:log:_:_:)(v2, &dword_266E03000, v68, "capabilityLevelsDidUpdate", 25, 2, MEMORY[0x277D84F90]);
  v4 = *((*MEMORY[0x277D85000] & *v0) + 0x90);
  v5 = *(v4(v3) + 16);

  if (v5)
  {
    v7 = 0;
    v60 = OBJC_IVAR____TtCC7SiriGeo11MapsService25CapabilityFetcherObserver_levelFetcher;
    v58 = 1;
    v66 = v4;
    v67 = v0;
    v59 = v5;
LABEL_3:
    v8 = 48 * v7 + 72;
    do
    {
      if (v7 >= v5)
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        return;
      }

      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_26;
      }

      v10 = v4(v6);
      if (v7 >= *(v10 + 16))
      {
        goto LABEL_27;
      }

      v11 = *(v10 + v8 - 16);

      if (!v11)
      {
        v64 = static os_log_type_t.info.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_266E21E90;
        v13 = (v4)();
        if (v7 >= *(v13 + 16))
        {
          goto LABEL_28;
        }

        v63 = v7 + 1;
        v15 = *(v13 + v8 - 40);
        v14 = *(v13 + v8 - 32);
        v16 = *(v13 + v8 - 24);
        v17 = *(v13 + v8 - 16);
        v18 = *(v13 + v8 - 8);
        v19 = *(v13 + v8);
        v20 = v19;

        v21 = v16;

        v76 = v15;
        v77 = v14;
        v78 = v21;
        v79 = v17;
        v1 = v67;
        v80 = v18;
        v81 = v19;
        v22 = EnhancedMSPSharedTripContact.description.getter();
        v24 = v23;

        v4 = v66;

        *(v12 + 56) = MEMORY[0x277D837D0];
        v25 = lazy protocol witness table accessor for type String and conformance String();
        *(v12 + 64) = v25;
        *(v12 + 32) = v22;
        *(v12 + 40) = v24;
        os_log(_:dso:log:_:_:)(v64, &dword_266E03000, v68, "%@", 2, 2, v12);

        v27 = *(v67 + v60);
        v28 = v66(v26);
        if (v7 >= *(v28 + 16))
        {
          goto LABEL_29;
        }

        v29 = *(v28 + v8 - 24);

        v30 = [v27 capabilityLevelForContact_];

        if (!v30)
        {
          v58 = 0;
          ++v7;
          v5 = v59;
          if (v63 != v59)
          {
            goto LABEL_3;
          }

          return;
        }

        v31 = static os_log_type_t.info.getter();
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_266E21F10;
        v33 = (v66)();
        if (v7 >= *(v33 + 16))
        {
          goto LABEL_30;
        }

        v65 = v30;
        v62 = v31;
        v34 = *(v33 + v8 - 40);
        v35 = *(v33 + v8 - 32);
        v61 = v25;
        v37 = *(v33 + v8 - 24);
        v36 = *(v33 + v8 - 16);
        v38 = *(v33 + v8 - 8);
        v39 = *(v33 + v8);
        v40 = v39;

        v41 = v37;

        v70 = v34;
        v71 = v35;
        v72 = v41;
        v73 = v36;
        v74 = v38;
        v75 = v39;
        v42 = EnhancedMSPSharedTripContact.description.getter();
        v44 = v43;

        v1 = v67;

        *(v32 + 56) = MEMORY[0x277D837D0];
        *(v32 + 64) = v61;
        *(v32 + 32) = v42;
        *(v32 + 40) = v44;
        *(v32 + 96) = MEMORY[0x277D83E88];
        *(v32 + 104) = MEMORY[0x277D83ED0];
        *(v32 + 72) = v65;
        os_log(_:dso:log:_:_:)(v62, &dword_266E03000, v68, "fetched Capability for : %@ - %d", 32, 2, v32);

        v45 = (*((*MEMORY[0x277D85000] & *v67) + 0xA0))(v69);
        v47 = v46;
        v48 = *v46;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v47 = v48;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v48 = specialized _ArrayBuffer._consumeAndCreateNew()(v48);
          *v47 = v48;
        }

        v4 = v66;
        v9 = v7 + 1;
        if (v7 >= *(v48 + 2))
        {
          goto LABEL_31;
        }

        *&v48[v8 - 16] = v65;
        v6 = v45(v69, 0);
        v5 = v59;
      }

      v8 += 48;
      ++v7;
    }

    while (v9 != v5);
    if ((v58 & 1) == 0)
    {
      return;
    }
  }

  v50 = (*((*MEMORY[0x277D85000] & *v1) + 0x78))(v6);
  if (v50)
  {
    v52 = v50;
    v53 = v51;
    v54 = static os_log_type_t.info.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_266E21E90;
    v56 = (v4)();
    *(v55 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7SiriGeo28EnhancedMSPSharedTripContactVGMd, &_sSay7SiriGeo28EnhancedMSPSharedTripContactVGMR);
    *(v55 + 64) = lazy protocol witness table accessor for type [CNContact] and conformance [A](&lazy protocol witness table cache variable for type [EnhancedMSPSharedTripContact] and conformance [A], &_sSay7SiriGeo28EnhancedMSPSharedTripContactVGMd, &_sSay7SiriGeo28EnhancedMSPSharedTripContactVGMR);
    *(v55 + 32) = v56;
    os_log(_:dso:log:_:_:)(v54, &dword_266E03000, v68, "retrieved level fetcher response %@", 35, 2, v55);

    v4([*(v1 + OBJC_IVAR____TtCC7SiriGeo11MapsService25CapabilityFetcherObserver_levelFetcher) unregisterObserver_]);
    v52();

    outlined consume of (@escaping @callee_guaranteed (@guaranteed [EnhancedMSPSharedTripContact]) -> ())?(v52, v53);
  }

  else
  {
    v57 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v57, &dword_266E03000, v68, "no completion handler", 21, 2, MEMORY[0x277D84F90]);
  }
}

id MapsService.CapabilityFetcherObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MapsService.CapabilityFetcherObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsService.CapabilityFetcherObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void MapsService.fetchCapabilities(for:_:)(uint64_t a1, void (*a2)(void, uint64_t), uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v35 = v11;
    *v10 = 136315138;
    v12 = MEMORY[0x26D5F2E40](a1, MEMORY[0x277D837D0]);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v35);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_266E03000, v8, v9, "fetchCapabilities %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x26D5F3640](v11, -1, -1);
    MEMORY[0x26D5F3640](v10, -1, -1);
  }

  v15 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v17 = [v15 contactsFromHandles_];

  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MSPSharedTripContact, 0x277D265F0);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = static os_log_type_t.info.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_266E21E90;
  *(v20 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo20MSPSharedTripContactCGMd, &_sSaySo20MSPSharedTripContactCGMR);
  *(v20 + 64) = lazy protocol witness table accessor for type [CNContact] and conformance [A](&lazy protocol witness table cache variable for type [MSPSharedTripContact] and conformance [A], &_sSaySo20MSPSharedTripContactCGMd, &_sSaySo20MSPSharedTripContactCGMR);
  *(v20 + 32) = v18;

  os_log(_:dso:log:_:_:)(v19, &dword_266E03000, v8, "sharedTripContacts %@", 21, 2, v20);

  v21 = [objc_opt_self() sharedFetcher];
  if (v21)
  {
    v22 = v21;
    v23 = objc_allocWithZone(type metadata accessor for MapsService.CapabilityFetcherObserver());
    v34 = v22;
    v24 = MapsService.CapabilityFetcherObserver.init(_:)(v34);
    v25 = (*(*v4 + 112))(v24);
    v26 = (*(*v4 + 104))(v25);
    if (v26)
    {
      v27 = v26;
      v28 = swift_allocObject();
      v28[2] = v4;
      v28[3] = a2;
      v28[4] = a3;
      v29 = *((*MEMORY[0x277D85000] & *v27) + 0xB0);

      v29(v18, partial apply for closure #1 in MapsService.fetchCapabilities(for:_:), v28);
    }

    v30 = v34;
  }

  else
  {

    v31 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v31, &dword_266E03000, v8, "could not get capability level fetcher instance", 47, 2, MEMORY[0x277D84F90]);
    lazy protocol witness table accessor for type MapsServiceError and conformance MapsServiceError();
    v32 = swift_allocError();
    *v33 = 0xD00000000000001BLL;
    v33[1] = 0x8000000266E22D80;
    a2(0, v32);
    v30 = v32;
  }
}

uint64_t closure #1 in MapsService.fetchCapabilities(for:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void))
{
  v5 = *(a2 + 16);
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    v9 = MEMORY[0x26D5F2E40](a1, &type metadata for EnhancedMSPSharedTripContact);
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_266E03000, v5, v6, "fetchCapabilities completion handler %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x26D5F3640](v8, -1, -1);
    MEMORY[0x26D5F3640](v7, -1, -1);
  }

  return a3(a1, 0);
}

uint64_t static MapsService.shareETAConfigurationCheck(_:)(NSObject *a1)
{
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(a1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_266E03000, a1, v2, "shareETAConfigurationCheck", v3, 2u);
    MEMORY[0x26D5F3640](v3, -1, -1);
  }

  if ((MSPSharedTripUserEnabled() & 1) == 0)
  {
    v5 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(a1, v5))
    {
      return 0;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_266E03000, a1, v5, "MSPSharedTripUserEnabled failed", v6, 2u);
    v4 = 0;
    goto LABEL_10;
  }

  if ((MSPSharedTripNetworkEnabled() & 1) == 0)
  {
    v7 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(a1, v7))
    {
      return 1;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_266E03000, a1, v7, "MSPSharedTripNetworkEnabled failed", v6, 2u);
    v4 = 1;
LABEL_10:
    MEMORY[0x26D5F3640](v6, -1, -1);
    return v4;
  }

  return 2;
}

uint64_t MapsService.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t MapsService.init()()
{
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  *(v0 + 16) = OS_os_log.init(subsystem:category:)();
  *(v0 + 24) = xmmword_266E21800;
  return v0;
}

void closure #1 in OSLogArguments.append(_:)(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

id specialized EnhancedMSPSharedTripContact.getPersonHandle()(void *a1)
{
  v2 = [a1 in_labeledValue];
  v3 = [a1 stringValue];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  if ([a1 isPhoneNumber])
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  if (v2)
  {
    v9 = v2;
    v10 = [v9 label];
    if (v10)
    {
      v11 = v10;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0xE000000000000000;
    }

    v15 = MEMORY[0x26D5F2D60](v12, v14);

    if (v7)
    {
      v16 = MEMORY[0x26D5F2D60](v5, v7);
    }

    else
    {
      v16 = 0;
    }

    v17 = [objc_allocWithZone(MEMORY[0x277CD3E98]) initWithValue:v16 type:v8 label:v15];
  }

  else
  {
    if (v7)
    {
      v15 = MEMORY[0x26D5F2D60](v5, v7);
    }

    else
    {
      v15 = 0;
    }

    v17 = [objc_allocWithZone(MEMORY[0x277CD3E98]) initWithValue:v15 type:v8];
  }

  return v17;
}

uint64_t _sxq_Ri_zRi0_zRi__Ri0__r0_lySay7SiriGeo28EnhancedMSPSharedTripContactVGytIsegnr_SgWOy_0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined consume of (@escaping @callee_guaranteed (@guaranteed [EnhancedMSPSharedTripContact]) -> ())?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type MapsServiceError and conformance MapsServiceError()
{
  result = lazy protocol witness table cache variable for type MapsServiceError and conformance MapsServiceError;
  if (!lazy protocol witness table cache variable for type MapsServiceError and conformance MapsServiceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MapsServiceError and conformance MapsServiceError);
  }

  return result;
}

uint64_t sub_266E0ED60()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t lazy protocol witness table accessor for type MapsService.ShareETAConfigurationError and conformance MapsService.ShareETAConfigurationError()
{
  result = lazy protocol witness table cache variable for type MapsService.ShareETAConfigurationError and conformance MapsService.ShareETAConfigurationError;
  if (!lazy protocol witness table cache variable for type MapsService.ShareETAConfigurationError and conformance MapsService.ShareETAConfigurationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MapsService.ShareETAConfigurationError and conformance MapsService.ShareETAConfigurationError);
  }

  return result;
}

uint64_t sub_266E0EE04@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 104))();
  *a2 = result;
  return result;
}

uint64_t sub_266E0EE50(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 112);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_266E0EEB0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x90))();
  *a2 = result;
  return result;
}

uint64_t sub_266E0EF0C(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x98);

  return v2(v3);
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

uint64_t getEnumTagSinglePayload for EnhancedMSPSharedTripContact(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for EnhancedMSPSharedTripContact(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for MapsServiceError(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for MapsServiceError(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266E0F104()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed [EnhancedMSPSharedTripContact]) -> (@out ())(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t static UsoRequest.makeSDAForPromptForContactValue()()
{
  v0 = type metadata accessor for Siri_Nlu_External_SystemPrompted();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  type metadata accessor for UsoTaskBuilder_noVerb_common_Person();
  swift_allocObject();
  v7 = UsoTaskBuilder_noVerb_common_Person.init()();
  type metadata accessor for UsoEntityBuilder_common_Person();
  swift_allocObject();
  UsoEntityBuilder_common_Person.init()();
  dispatch thunk of Uso_VerbTemplateBuilder_NoVerb.setEntity(value:)();
  static Siri_Nlu_External_SystemPrompted.from(_:)(v7, v6);
  Siri_Nlu_External_SystemDialogAct.init()();
  (*(v1 + 16))(v4, v6, v0);
  Siri_Nlu_External_SystemDialogAct.prompted.setter();

  return (*(v1 + 8))(v6, v0);
}

uint64_t outlined init with copy of Siri_Nlu_External_UsoGraph?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static UsoRequest.makeSDAForYesNoCancel()@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v25 = type metadata accessor for Siri_Nlu_External_SystemOffered();
  v1 = *(v25 - 8);
  v2 = MEMORY[0x28223BE20](v25);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v23 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = type metadata accessor for Siri_Nlu_External_UserCancelled();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = type metadata accessor for Siri_Nlu_External_UserAccepted();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v24 = v12;
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v23 - v17;
  Siri_Nlu_External_UserDialogAct.init()();
  Siri_Nlu_External_UserAccepted.init()();
  Siri_Nlu_External_UserDialogAct.accepted.setter();
  Siri_Nlu_External_UserCancelled.init()();
  Siri_Nlu_External_UserDialogAct.cancelled.setter();
  Siri_Nlu_External_SystemOffered.init()();
  (*(v13 + 16))(v16, v18, v12);
  Siri_Nlu_External_SystemOffered.offeredAct.setter();
  v19 = *(v1 + 16);
  v20 = v25;
  v19(v7, v9, v25);
  Siri_Nlu_External_SystemDialogAct.init()();
  v19(v4, v7, v20);
  Siri_Nlu_External_SystemDialogAct.offered.setter();
  v21 = *(v1 + 8);
  v21(v7, v20);
  v21(v9, v20);
  return (*(v13 + 8))(v18, v24);
}

uint64_t Siri_Nlu_External_UserDialogAct.init(_:)(uint64_t a1)
{
  return Siri_Nlu_External_SystemDialogAct.init(systemPrompted:)(a1, MEMORY[0x277D5DC20], MEMORY[0x277D5DB78], MEMORY[0x277D5DB60]);
}

{
  return Siri_Nlu_External_SystemDialogAct.init(systemPrompted:)(a1, MEMORY[0x277D5DD40], MEMORY[0x277D5DB78], MEMORY[0x277D5DB68]);
}

uint64_t Siri_Nlu_External_SystemDialogAct.init(systemPrompted:)(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t), void (*a4)(char *))
{
  v7 = a2(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v13 - v10;
  a3(v9);
  (*(v8 + 16))(v11, a1, v7);
  a4(v11);
  return (*(v8 + 8))(a1, v7);
}

uint64_t static Siri_Nlu_External_UserDialogAct.from(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  static Siri_Nlu_External_UserStatedTask.from(_:)(a1, &v10 - v7);
  Siri_Nlu_External_UserDialogAct.init()();
  (*(v3 + 16))(v6, v8, v2);
  Siri_Nlu_External_UserDialogAct.userStatedTask.setter();
  return (*(v3 + 8))(v8, v2);
}

uint64_t static Siri_Nlu_External_UserStatedTask.from(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v24 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v25 = &v24 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v24 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v24 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_266E21F00;
  *(v20 + 32) = a1;
  v21 = type metadata accessor for UsoBuilderOptions();
  (*(*(v21 - 8) + 56))(v19, 1, 1, v21);

  MEMORY[0x26D5F2B50](v20, v19);

  outlined destroy of ContactHandle.HandleType?(v19, &_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
  (*(v4 + 56))(v16, 0, 1, v3);
  outlined init with copy of Siri_Nlu_External_UsoGraph?(v16, v14);
  Siri_Nlu_External_UserStatedTask.init()();
  outlined init with copy of Siri_Nlu_External_UsoGraph?(v14, v11);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    outlined destroy of ContactHandle.HandleType?(v14, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
    outlined destroy of ContactHandle.HandleType?(v11, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  }

  else
  {
    v22 = v25;
    (*(v4 + 32))(v25, v11, v3);
    (*(v4 + 16))(v24, v22, v3);
    Siri_Nlu_External_UserStatedTask.task.setter();
    outlined destroy of ContactHandle.HandleType?(v14, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
    (*(v4 + 8))(v22, v3);
  }

  return outlined destroy of ContactHandle.HandleType?(v16, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
}

uint64_t static Siri_Nlu_External_UserDialogAct.from(_:)@<X0>(uint64_t a2@<X8>)
{
  v33 = a2;
  v2 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v31 = &v29 - v6;
  v7 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v32 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v29 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v29 - v23;
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
  (*(v3 + 56))(v24, 0, 1, v2);
  outlined init with copy of Siri_Nlu_External_UsoGraph?(v24, v22);
  Siri_Nlu_External_UserStatedTask.init()();
  outlined init with copy of Siri_Nlu_External_UsoGraph?(v22, v19);
  if ((*(v3 + 48))(v19, 1, v2) == 1)
  {
    outlined destroy of ContactHandle.HandleType?(v22, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
    outlined destroy of ContactHandle.HandleType?(v19, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  }

  else
  {
    v25 = v31;
    (*(v3 + 32))(v31, v19, v2);
    (*(v3 + 16))(v30, v25, v2);
    Siri_Nlu_External_UserStatedTask.task.setter();
    outlined destroy of ContactHandle.HandleType?(v22, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
    (*(v3 + 8))(v25, v2);
  }

  v26 = *(v8 + 16);
  v26(v13, v15, v7);
  Siri_Nlu_External_UserDialogAct.init()();
  v26(v32, v13, v7);
  Siri_Nlu_External_UserDialogAct.userStatedTask.setter();
  v27 = *(v8 + 8);
  v27(v13, v7);
  v27(v15, v7);
  return outlined destroy of ContactHandle.HandleType?(v24, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
}

uint64_t Siri_Nlu_External_UserStatedTask.init(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - v10;
  Siri_Nlu_External_UserStatedTask.init()();
  outlined init with copy of Siri_Nlu_External_UsoGraph?(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of ContactHandle.HandleType?(a1, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
    return outlined destroy of ContactHandle.HandleType?(v4, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    (*(v6 + 16))(v9, v11, v5);
    Siri_Nlu_External_UserStatedTask.task.setter();
    outlined destroy of ContactHandle.HandleType?(a1, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
    return (*(v6 + 8))(v11, v5);
  }
}

unint64_t Siri_Nlu_External_UserDialogAct.usoTask.getter()
{
  result = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
  if (result >> 62)
  {
    v2 = result & 0xFFFFFFFFFFFFFF8;
    if ((result & 0x8000000000000000) != 0)
    {
      v2 = result;
    }

    v3 = result;
    v4 = MEMORY[0x26D5F3000](v2);
    result = v3;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:

    return 0;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x26D5F2F90](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v1 = *(result + 32);

LABEL_6:

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.contactId.getter()
{
  v31 = type metadata accessor for Google_Protobuf_StringValue();
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v1 = &v29 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v2 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMd, &_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v30 = &v29 - v14;
  Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
  Siri_Nlu_External_UserStatedTask.task.getter();
  (*(v10 + 8))(v12, v9);
  v15 = Siri_Nlu_External_UsoGraph.identifiers.getter();
  result = (*(v6 + 8))(v8, v5);
  v32 = *(v15 + 16);
  if (v32)
  {
    v17 = 0;
    v33 = v15 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v18 = (v29 + 8);
    v19 = v34;
    while (1)
    {
      if (v17 >= *(v15 + 16))
      {
        __break(1u);
        return result;
      }

      (*(v2 + 16))(v4, v33 + *(v2 + 72) * v17, v19);
      if (Siri_Nlu_External_UsoEntityIdentifier.backingAppBundleID.getter() == 0x73746361746E6F43 && v21 == 0xE800000000000000)
      {
      }

      else
      {
        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v22 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
      v23 = Google_Protobuf_StringValue.value.getter();
      v25 = v24;
      (*v18)(v1, v31);
      if (v23 == 0x64695F6D657469 && v25 == 0xE700000000000000)
      {

LABEL_16:

        v27 = v30;
        v19 = v34;
        (*(v2 + 32))(v30, v4, v34);
        v26 = 0;
        goto LABEL_17;
      }

      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v20)
      {
        goto LABEL_16;
      }

LABEL_4:
      ++v17;
      v19 = v34;
      result = (*(v2 + 8))(v4, v34);
      if (v32 == v17)
      {

        v26 = 1;
        goto LABEL_15;
      }
    }
  }

  v26 = 1;
  v19 = v34;
LABEL_15:
  v27 = v30;
LABEL_17:
  (*(v2 + 56))(v27, v26, 1, v19);
  if ((*(v2 + 48))(v27, 1, v19) == 1)
  {
    outlined destroy of ContactHandle.HandleType?(v27, &_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMd, &_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMR);
    return 0;
  }

  else
  {
    v28 = Siri_Nlu_External_UsoEntityIdentifier.value.getter();
    (*(v2 + 8))(v27, v19);
    return v28;
  }
}

uint64_t UsoIdentifierAppBundle.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x73746361746E6F43;
  }
}

uint64_t UsoIdentifierNamespace.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x64695F6D657469;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0x6369746E616D6573;
}

uint64_t static Siri_Nlu_External_SystemPrompted.from(_:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, void (*a3)(char *)@<X2>, uint64_t a4@<X8>)
{
  v30 = a3;
  v31 = a2;
  v32 = a4;
  v5 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v29 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v28 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_266E21F00;
  *(v23 + 32) = a1;
  v24 = type metadata accessor for UsoBuilderOptions();
  (*(*(v24 - 8) + 56))(v13, 1, 1, v24);

  MEMORY[0x26D5F2B50](v23, v13);

  outlined destroy of ContactHandle.HandleType?(v13, &_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();

  (*(v6 + 56))(v22, 0, 1, v5);
  v25 = outlined init with copy of Siri_Nlu_External_UsoGraph?(v22, v20);
  v31(v25);
  outlined init with copy of Siri_Nlu_External_UsoGraph?(v20, v17);
  if ((*(v6 + 48))(v17, 1, v5) == 1)
  {
    outlined destroy of ContactHandle.HandleType?(v20, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
    outlined destroy of ContactHandle.HandleType?(v17, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  }

  else
  {
    (*(v6 + 32))(v10, v17, v5);
    v26 = v29;
    (*(v6 + 16))(v29, v10, v5);
    v30(v26);
    outlined destroy of ContactHandle.HandleType?(v20, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
    (*(v6 + 8))(v10, v5);
  }

  return outlined destroy of ContactHandle.HandleType?(v22, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
}

uint64_t static Siri_Nlu_External_SystemOffered.from(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[0] = a1;
  v18[1] = a2;
  v2 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - v7;
  v9 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v18 - v14;
  v16 = *(v3 + 16);
  v16(v8, v18[0], v2);
  Siri_Nlu_External_UserDialogAct.init()();
  v16(v6, v8, v2);
  Siri_Nlu_External_UserDialogAct.wantedToProceed.setter();
  (*(v3 + 8))(v8, v2);
  Siri_Nlu_External_SystemOffered.init()();
  (*(v10 + 16))(v13, v15, v9);
  Siri_Nlu_External_SystemOffered.offeredAct.setter();
  return (*(v10 + 8))(v15, v9);
}

SiriGeo::UsoIdentifierAppBundle_optional __swiftcall UsoIdentifierAppBundle.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UsoIdentifierAppBundle.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = SiriGeo_UsoIdentifierAppBundle_siriNL;
  }

  else
  {
    v4.value = SiriGeo_UsoIdentifierAppBundle_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UsoIdentifierAppBundle(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v3 = 0x73746361746E6F43;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0x8000000266E226A0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0x73746361746E6F43;
  }

  if (*a2)
  {
    v6 = 0x8000000266E226A0;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UsoIdentifierAppBundle()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance UsoIdentifierAppBundle(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UsoIdentifierAppBundle(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance UsoIdentifierAppBundle@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UsoIdentifierAppBundle.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance UsoIdentifierAppBundle(unint64_t *a1@<X8>)
{
  v2 = 0x8000000266E226A0;
  v3 = 0x73746361746E6F43;
  if (*v1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UsoIdentifierNamespace(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000012;
  v4 = 0x8000000266E226C0;
  if (v2 == 1)
  {
    v5 = 0x8000000266E226C0;
  }

  else
  {
    v3 = 0x6369746E616D6573;
    v5 = 0xEE0065756C61765FLL;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x64695F6D657469;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0xD000000000000012;
  if (*a2 != 1)
  {
    v8 = 0x6369746E616D6573;
    v4 = 0xEE0065756C61765FLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x64695F6D657469;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UsoIdentifierNamespace()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance UsoIdentifierNamespace(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UsoIdentifierNamespace(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance UsoIdentifierNamespace@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized UsoIdentifierNamespace.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance UsoIdentifierNamespace(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x8000000266E226C0;
  v5 = 0xD000000000000012;
  if (v2 != 1)
  {
    v5 = 0x6369746E616D6573;
    v4 = 0xEE0065756C61765FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64695F6D657469;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t specialized UsoIdentifierNamespace.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UsoIdentifierNamespace.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type UsoIdentifierAppBundle and conformance UsoIdentifierAppBundle()
{
  result = lazy protocol witness table cache variable for type UsoIdentifierAppBundle and conformance UsoIdentifierAppBundle;
  if (!lazy protocol witness table cache variable for type UsoIdentifierAppBundle and conformance UsoIdentifierAppBundle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsoIdentifierAppBundle and conformance UsoIdentifierAppBundle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UsoIdentifierNamespace and conformance UsoIdentifierNamespace()
{
  result = lazy protocol witness table cache variable for type UsoIdentifierNamespace and conformance UsoIdentifierNamespace;
  if (!lazy protocol witness table cache variable for type UsoIdentifierNamespace and conformance UsoIdentifierNamespace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsoIdentifierNamespace and conformance UsoIdentifierNamespace);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UsoIdentifierNamespace(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UsoIdentifierNamespace(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void INShareETAIntentHandler.resolveRecipients(for:with:)(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v7 = *&v3[OBJC_IVAR____TtC7SiriGeo23INShareETAIntentHandler_logObject];
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_266E03000, v7, v8, "resolveRecipient called", v9, 2u);
    MEMORY[0x26D5F3640](v9, -1, -1);
  }

  v10 = [objc_opt_self() sharedInstance];
  if (v10)
  {
    v11 = v10;
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_266E03000, v7, v12, "share ETA confirm ready", v13, 2u);
      MEMORY[0x26D5F3640](v13, -1, -1);
    }

    v14 = swift_allocObject();
    v14[2] = v3;
    v14[3] = v11;
    v14[4] = a1;
    v14[5] = a2;
    v14[6] = a3;
    v21[4] = partial apply for closure #1 in INShareETAIntentHandler.resolveRecipients(for:with:);
    v21[5] = v14;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 1107296256;
    v21[2] = thunk for @escaping @callee_guaranteed (@guaranteed MSPSharedTripService) -> ();
    v21[3] = &block_descriptor_0;
    v15 = _Block_copy(v21);
    v16 = v3;
    v17 = v11;
    v18 = a1;

    [v17 performBlockAfterInitialSync_];
    _Block_release(v15);
  }

  else
  {
    v19 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v19, &dword_266E03000, v7, "could not get shared instance", 29, 2, MEMORY[0x277D84F90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_266E21F00;
    *(v20 + 32) = [objc_opt_self() unsupportedForReason_];
    a2(v20);
  }
}

void closure #1 in INShareETAIntentHandler.resolveRecipients(for:with:)(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = static os_log_type_t.info.getter();
  v12 = *(a2 + OBJC_IVAR____TtC7SiriGeo23INShareETAIntentHandler_logObject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_266E21E90;
  *(v13 + 56) = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MSPSharedTripService, 0x277D265F8);
  *(v13 + 64) = lazy protocol witness table accessor for type MSPSharedTripService and conformance NSObject();
  *(v13 + 32) = a3;
  v14 = a3;
  os_log(_:dso:log:_:_:)(v11, &dword_266E03000, v12, "after initialSync shared trip retrieved %@", 42, 2, v13);

  INShareETAIntentHandler.resolveRecipientsInsideBlock(for:with:)(a4, a5, a6);
}

void thunk for @escaping @callee_guaranteed (@guaranteed MSPSharedTripService) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> ()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INShareETARecipientResolutionResult, 0x277CD4148);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

{
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INStopShareETARecipientResolutionResult, 0x277CD4200);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

void INShareETAIntentHandler.resolveRecipientsInsideBlock(for:with:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *&v3[OBJC_IVAR____TtC7SiriGeo23INShareETAIntentHandler_logObject];
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_266E03000, v8, v9, "resolveRecipients", v10, 2u);
    MEMORY[0x26D5F3640](v10, -1, -1);
  }

  v11 = [a1 recipients];
  if (!v11)
  {
    goto LABEL_97;
  }

  v12 = v11;
  v120 = v3;
  v13 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, 0x277CD3E90);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  if (!(v14 >> 62))
  {
    v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v17 = v16;
    if (v16)
    {
      goto LABEL_6;
    }

    goto LABEL_96;
  }

  while (2)
  {
    if (v15 < 0)
    {
      v96 = v15;
    }

    else
    {
      v96 = v15 & 0xFFFFFFFFFFFFFF8;
    }

    v97 = MEMORY[0x26D5F3000](v96);
    if (!v97)
    {
LABEL_96:

LABEL_97:
      v98 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v98))
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v124 = v100;
        *v99 = 136315138;
        v101 = a1;
        v102 = a2;
        v103 = [v101 description];
        v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v106 = v105;

        a2 = v102;
        v107 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v106, &v124);

        *(v99 + 4) = v107;
        _os_log_impl(&dword_266E03000, v8, v98, "resolveRecipients nil/empty recipients intent - %s", v99, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v100);
        MEMORY[0x26D5F3640](v100, -1, -1);
        MEMORY[0x26D5F3640](v99, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v92 = swift_allocObject();
      *(v92 + 16) = xmmword_266E21F00;
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INShareETARecipientResolutionResult, 0x277CD4148);
      *(v92 + 32) = [swift_getObjCClassFromMetadata() needsValue];
      goto LABEL_100;
    }

    v16 = v97;
    v17 = MEMORY[0x26D5F3000](v96);
LABEL_6:
    oslog = v8;
    v118 = v13;
    v119 = v12;
    if (v17 != 1)
    {
      v8 = (v15 & 0xC000000000000001);
      if (v17 < 2)
      {
        goto LABEL_47;
      }

      if (v8)
      {
        goto LABEL_118;
      }

      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v22 = *(v15 + 32);
        goto LABEL_17;
      }

      __break(1u);
      goto LABEL_120;
    }

    v8 = (v15 & 0xC000000000000001);
    if ((v15 & 0xC000000000000001) != 0)
    {
      goto LABEL_106;
    }

    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_108;
    }

    for (i = *(v15 + 32); ; i = MEMORY[0x26D5F2F90](0, v15))
    {
      v19 = i;
      v20 = [i personHandle];

      if (v20)
      {

        if (v8)
        {
          v21 = MEMORY[0x26D5F2F90](0, v15);
        }

        else
        {
          v21 = *(v15 + 32);
        }

        v25 = v21;
        v26 = [v21 personHandle];

        v4 = v119;
        if (!v26)
        {
          goto LABEL_126;
        }

        v27 = [v26 value];

        if (v27)
        {

          v28 = static os_log_type_t.default.getter();
          os_log(_:dso:log:_:_:)(v28, &dword_266E03000, oslog, "SHORT CIRCUITED FULLY RESOLVED", 30, 2, MEMORY[0x277D84F90]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
          v29 = swift_allocObject();
          *(v29 + 16) = xmmword_266E21E90;
          if (v8)
          {
            v30 = MEMORY[0x26D5F2F90](0, v15);
          }

          else
          {
            v30 = *(v15 + 32);
          }

          v67 = v30;
          v122 = v8;
          v68 = [v30 personHandle];

          if (!v68)
          {
LABEL_127:
            __break(1u);
            goto LABEL_128;
          }

          v8 = a2;
          v69 = [v68 value];

          if (!v69)
          {
LABEL_128:
            __break(1u);
            return;
          }

          v70 = objc_opt_self();
          v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v4 = v72;

          *(v29 + 32) = v71;
          *(v29 + 40) = v4;
          isa = Array._bridgeToObjectiveC()().super.isa;

          v74 = [v70 contactsFromHandles_];

          type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MSPSharedTripContact, 0x277D265F0);
          a1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (!(a1 >> 62))
          {
            v75 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_78:
            if (v75 <= 0)
            {

              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
              v91 = swift_allocObject();
              *(v91 + 16) = xmmword_266E21F00;
              *(v91 + 32) = [objc_opt_self() unsupportedForReason_];
              (v8)(v91);
              goto LABEL_101;
            }

            if ((a1 & 0xC000000000000001) != 0)
            {
              v76 = MEMORY[0x26D5F2F90](0, a1);
              goto LABEL_82;
            }

            if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v76 = *(a1 + 32);
LABEL_82:
              v77 = v76;

              v78 = [v77 displayName];
              v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v81 = v80;

              v82 = &v120[OBJC_IVAR____TtC7SiriGeo23INShareETAIntentHandler_sharedTripContact];
              v83 = *&v120[OBJC_IVAR____TtC7SiriGeo23INShareETAIntentHandler_sharedTripContact];
              v84 = *&v120[OBJC_IVAR____TtC7SiriGeo23INShareETAIntentHandler_sharedTripContact + 8];
              v85 = *&v120[OBJC_IVAR____TtC7SiriGeo23INShareETAIntentHandler_sharedTripContact + 16];
              v86 = *&v120[OBJC_IVAR____TtC7SiriGeo23INShareETAIntentHandler_sharedTripContact + 24];
              v87 = *&v120[OBJC_IVAR____TtC7SiriGeo23INShareETAIntentHandler_sharedTripContact + 32];
              v88 = *&v120[OBJC_IVAR____TtC7SiriGeo23INShareETAIntentHandler_sharedTripContact + 40];
              *v82 = v79;
              v82[1] = v81;
              v82[2] = v77;
              v82[3] = 0;
              v82[4] = 0;
              v82[5] = 0;
              outlined consume of EnhancedMSPSharedTripContact?(v83, v84, v85, v86, v87, v88);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
              v89 = swift_allocObject();
              *(v89 + 16) = xmmword_266E21F00;
              if (v122)
              {
                v90 = MEMORY[0x26D5F2F90](0, v15);
              }

              else
              {
                v90 = *(v15 + 32);
              }

              v94 = v90;

              v95 = [objc_opt_self() resolutionResultSuccessWithResolvedValue_];

              *(v89 + 32) = v95;
              (v8)(v89);
              goto LABEL_101;
            }

            __break(1u);
LABEL_126:

            __break(1u);
            goto LABEL_127;
          }

LABEL_120:
          if ((a1 & 0x8000000000000000) != 0)
          {
            v113 = a1;
          }

          else
          {
            v113 = a1 & 0xFFFFFFFFFFFFFF8;
          }

          v75 = MEMORY[0x26D5F3000](v113);
          goto LABEL_78;
        }
      }

LABEL_47:

      if (v8)
      {
        break;
      }

      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v37 = *(v15 + 32);
        goto LABEL_50;
      }

      __break(1u);
LABEL_106:
      ;
    }

    v37 = MEMORY[0x26D5F2F90](0, v15);
LABEL_50:
    v38 = v37;

    if (v8)
    {
      v39 = MEMORY[0x26D5F2F90](0, v15);
    }

    else
    {
      v39 = *(v15 + 32);
    }

    v40 = v39;

    v41 = [v40 siriMatches];

    if (!v41)
    {
      v44 = MEMORY[0x277D84F90];
      goto LABEL_114;
    }

    v115 = a2;
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v13 >> 62))
    {
      a2 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v117 = a3;
      if (a2)
      {
        goto LABEL_56;
      }

LABEL_112:
      v44 = MEMORY[0x277D84F90];
LABEL_113:

      a2 = v115;
      a3 = v117;
LABEL_114:
      v109 = *&v120[OBJC_IVAR____TtC7SiriGeo23INShareETAIntentHandler_contactService];
      v110 = swift_allocObject();
      v110[2] = v120;
      v110[3] = a2;
      v110[4] = a3;
      v111 = *(*v109 + 144);
      v112 = v120;

      v111(v44, partial apply for closure #2 in INShareETAIntentHandler.resolveRecipientsInsideBlock(for:with:), v110);

      return;
    }

LABEL_108:
    if (v13 < 0)
    {
      v108 = v13;
    }

    else
    {
      v108 = v13 & 0xFFFFFFFFFFFFFF8;
    }

    a2 = MEMORY[0x26D5F3000](v108);
    v117 = a3;
    if (!a2)
    {
      goto LABEL_112;
    }

LABEL_56:
    if (a2 >= 1)
    {
      v42 = 0;
      v43 = v13 & 0xC000000000000001;
      v44 = MEMORY[0x277D84F90];
      v45 = 0x279C05000uLL;
      v123 = a2;
      do
      {
        if (v43)
        {
          v46 = MEMORY[0x26D5F2F90](v42, v13);
        }

        else
        {
          v46 = *(v13 + 8 * v42 + 32);
        }

        v47 = v46;
        v48 = [v46 *(v45 + 1816)];
        if (v48 && (v49 = v48, v50 = [v48 value], v49, v50))
        {
          v51 = v43;
          v52 = v13;
          v53 = v45;
          v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v56 = v55;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v44 + 2) + 1, 1, v44);
          }

          v58 = *(v44 + 2);
          v57 = *(v44 + 3);
          if (v58 >= v57 >> 1)
          {
            v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v44);
          }

          *(v44 + 2) = v58 + 1;
          v59 = &v44[16 * v58];
          *(v59 + 4) = v54;
          *(v59 + 5) = v56;
          v45 = v53;
          v13 = v52;
          v43 = v51;
          a2 = v123;
        }

        else
        {
        }

        ++v42;
      }

      while (a2 != v42);
      goto LABEL_113;
    }

    __break(1u);
LABEL_118:
    v22 = MEMORY[0x26D5F2F90](0, v15);
LABEL_17:
    v23 = v22;
    v116 = a3;
    v12 = [v22 contactIdentifier];

    v115 = a2;
    if (v12)
    {
      v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      a3 = v24;
    }

    else
    {
      v121 = 0;
      a3 = 0;
    }

    a1 = 0;
    v122 = v15 & 0xFFFFFFFFFFFFFF8;
    v4 = 1;
LABEL_29:
    if (v8)
    {
      v31 = MEMORY[0x26D5F2F90](a1, v15);
    }

    else
    {
      if (a1 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_90;
      }

      v31 = *(v15 + 8 * a1 + 32);
    }

    v12 = v31;
    v13 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
LABEL_90:
      __break(1u);
      continue;
    }

    break;
  }

  if ((v4 & 1) == 0)
  {

    goto LABEL_41;
  }

  v32 = [v31 contactIdentifier];
  if (!v32)
  {

    if (!a3)
    {
      v4 = 1;
      goto LABEL_28;
    }

LABEL_41:
    v4 = 0;
    goto LABEL_28;
  }

  v33 = v32;
  a2 = v8;
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  if (a3)
  {
    if (v34 == v121 && a3 == v36)
    {

      v4 = 1;
    }

    else
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {

    v4 = 0;
  }

  v8 = a2;
LABEL_28:
  ++a1;
  if (v13 != v16)
  {
    goto LABEL_29;
  }

  a2 = v115;
  a3 = v116;
  if (v4)
  {
    goto LABEL_47;
  }

  v60 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v124 = v62;
    *v61 = 136315138;
    v63 = MEMORY[0x26D5F2E40](v15, v118);
    v65 = v64;

    v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v65, &v124);

    *(v61 + 4) = v66;
    _os_log_impl(&dword_266E03000, oslog, v60, "resolveRecipients more than 1 disambiguation required %s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v62);
    MEMORY[0x26D5F3640](v62, -1, -1);
    MEMORY[0x26D5F3640](v61, -1, -1);
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_266E21F00;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INShareETARecipientResolutionResult, 0x277CD4148);
  v93 = [swift_getObjCClassFromMetadata() disambiguationWithPeopleToDisambiguate_];

  *(v92 + 32) = v93;
LABEL_100:
  (a2)(v92);
LABEL_101:
}

uint64_t closure #2 in INShareETAIntentHandler.resolveRecipientsInsideBlock(for:with:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v127 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v123 = &v119 - v11;
  v12 = static os_log_type_t.info.getter();
  v13 = *(a2 + OBJC_IVAR____TtC7SiriGeo23INShareETAIntentHandler_logObject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_266E21E90;
  v15 = MEMORY[0x26D5F2E60](a1, &type metadata for EnhancedMSPSharedTripContact);
  v17 = v16;
  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  os_log(_:dso:log:_:_:)(v12, &dword_266E03000, v13, "shared trip ranked contacts %@", 30, 2, v14);

  if (!*(a1 + 16))
  {
    v48 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v48, &dword_266E03000, v13, "resolveRecipients no MSPSharedContact could be retrieved", 56, 2, MEMORY[0x277D84F90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_266E21F00;
    *(v49 + 32) = [objc_opt_self() unsupportedForReason_];
    a3(v49);
  }

  v122 = v13;
  result = specialized INShareETAIntentHandler.phoneDisambiguationCandidates(_:)(a1);
  v20 = v19[2];
  if (result)
  {
    if (v20)
    {
      v120 = a4;
      v121 = a3;
      v131[0] = MEMORY[0x277D84F90];
      v21 = v19;
      specialized ContiguousArray.reserveCapacity(_:)();
      v119 = v21;
      v22 = v21 + 40;
      v23 = 0x279C05000;
      while (1)
      {
        v28 = *(v22 - 8);
        v27 = *v22;
        v29 = *(v22 + 8);
        v126 = *(v22 + 32);

        v30 = v29;
        v125 = specialized EnhancedMSPSharedTripContact.getPersonHandle()(v30);
        v31 = type metadata accessor for PersonNameComponents();
        v32 = *(v31 - 8);
        v33 = v123;
        (*(v32 + 56))(v123, 1, 1, v31);
        v34 = [v30 *(v23 + 2056)];
        v127 = v27;
        if (!v34)
        {
          break;
        }

        v35 = v34;
        v36 = [objc_opt_self() stringFromContact:v34 style:0];
        if (!v36)
        {
          v124 = v28;

          goto LABEL_12;
        }

        v37 = v36;
        v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v39 = v38;

LABEL_13:
        v40 = [v30 *(v23 + 2056)];
        if (v40)
        {
          v41 = v40;
          v42 = [v40 identifier];
          v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v45 = v44;

          v33 = v123;
        }

        else
        {
          v43 = 0;
          v45 = 0;
        }

        if ((*(v32 + 48))(v33, 1, v31) == 1)
        {
          isa = 0;
        }

        else
        {
          isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
          (*(v32 + 8))(v33, v31);
        }

        v47 = MEMORY[0x26D5F2D60](v124, v39);

        if (v45)
        {
          v24 = MEMORY[0x26D5F2D60](v43, v45);
        }

        else
        {
          v24 = 0;
        }

        v23 = 0x279C05000uLL;
        v22 += 48;
        v25 = objc_allocWithZone(MEMORY[0x277CD3E90]);
        v26 = v125;
        [v25 initWithPersonHandle:v125 nameComponents:isa displayName:v47 image:0 contactIdentifier:v24 customIdentifier:0];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if (!--v20)
        {

          v79 = v131[0];
          a3 = v121;
          goto LABEL_30;
        }
      }

      v124 = v28;
LABEL_12:

      v39 = v27;
      goto LABEL_13;
    }

    v79 = MEMORY[0x277D84F90];
LABEL_30:
    v80 = static os_log_type_t.default.getter();
    v81 = v122;
    if (os_log_type_enabled(v122, v80))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v131[0] = v83;
      *v82 = 136315138;
      v84 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, 0x277CD3E90);
      v85 = MEMORY[0x26D5F2E40](v79, v84);
      v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v86, v131);

      *(v82 + 4) = v87;
      _os_log_impl(&dword_266E03000, v81, v80, "disambiguation list %s", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v83);
      MEMORY[0x26D5F3640](v83, -1, -1);
      MEMORY[0x26D5F3640](v82, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v88 = swift_allocObject();
    *(v88 + 16) = xmmword_266E21F00;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INShareETARecipientResolutionResult, 0x277CD4148);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, 0x277CD3E90);
    v90 = Array._bridgeToObjectiveC()().super.isa;

    v91 = [ObjCClassFromMetadata disambiguationWithPeopleToDisambiguate_];

    *(v88 + 32) = v91;
    a3(v88);
  }

  if (v20)
  {
    v120 = a4;
    v121 = a3;
    v50 = v19[4];
    v51 = v19[5];
    v53 = v19[6];
    v52 = v19[7];
    v54 = v19[9];
    v125 = v19[8];
    v126 = v52;
    v123 = v54;

    v55 = v53;

    v56 = (a2 + OBJC_IVAR____TtC7SiriGeo23INShareETAIntentHandler_sharedTripContact);
    v57 = *(a2 + OBJC_IVAR____TtC7SiriGeo23INShareETAIntentHandler_sharedTripContact);
    v119 = v56[1];
    v58 = v56[2];
    v59 = v56[3];
    v61 = v56[4];
    v60 = v56[5];
    *v56 = v50;
    v56[1] = v51;
    v62 = v125;
    v63 = v126;
    v56[2] = v55;
    v56[3] = v63;
    v56[4] = v62;
    v56[5] = v54;
    v124 = v50;
    v125 = v51;

    v126 = v55;
    v123 = v123;
    outlined consume of EnhancedMSPSharedTripContact?(v57, v119, v58, v59, v61, v60);
    v64 = static os_log_type_t.default.getter();
    v65 = os_log_type_enabled(v122, v64);
    v66 = v127;
    if (v65)
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v130 = v68;
      *v67 = 136315138;
      v69 = v56[1];
      if (v69)
      {
        v70 = v56[5];
        v71 = v56[4];
        v73 = v56[2];
        v72 = v56[3];
        v131[0] = *v56;
        v131[1] = v69;
        v131[2] = v73;
        v131[3] = v72;
        v131[4] = v71;
        v131[5] = v70;
        v74 = v70;

        v75 = v73;
        v76 = EnhancedMSPSharedTripContact.description.getter();
        v78 = v77;
      }

      else
      {
        v76 = 0;
        v78 = 0;
      }

      v128 = v76;
      v129 = v78;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v92 = String.init<A>(describing:)();
      v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v93, &v130);

      *(v67 + 4) = v94;
      _os_log_impl(&dword_266E03000, v122, v64, "resolveRecipients successful %s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v68);
      MEMORY[0x26D5F3640](v68, -1, -1);
      MEMORY[0x26D5F3640](v67, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_266E21F00;
    v96 = v126;
    v122 = specialized EnhancedMSPSharedTripContact.getPersonHandle()(v126);
    v97 = type metadata accessor for PersonNameComponents();
    v98 = *(v97 - 8);
    (*(v98 + 56))(v66, 1, 1, v97);
    v99 = [v96 contact];
    if (v99)
    {
      v100 = v99;
      v101 = [objc_opt_self() stringFromContact:v99 style:0];
      if (v101)
      {
        v102 = v101;
        v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v104 = v103;

LABEL_40:
        v105 = [v126 contact];
        if (v105)
        {
          v106 = v105;
          v107 = [v105 identifier];

          v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v110 = v109;
        }

        else
        {
          v108 = 0;
          v110 = 0;
        }

        if ((*(v98 + 48))(v66, 1, v97) == 1)
        {
          v111 = 0;
        }

        else
        {
          v111 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
          (*(v98 + 8))(v66, v97);
        }

        v112 = MEMORY[0x26D5F2D60](v124, v104);

        if (v110)
        {
          v113 = MEMORY[0x26D5F2D60](v108, v110);
        }

        else
        {
          v113 = 0;
        }

        v114 = v121;
        v115 = objc_allocWithZone(MEMORY[0x277CD3E90]);
        v116 = v122;
        v117 = [v115 initWithPersonHandle:v122 nameComponents:v111 displayName:v112 image:0 contactIdentifier:v113 customIdentifier:0];

        v118 = [objc_opt_self() resolutionResultSuccessWithResolvedValue_];
        *(v95 + 32) = v118;
        v114(v95);
      }
    }

    v104 = v125;

    goto LABEL_40;
  }

  __break(1u);
  return result;
}

void INShareETAIntentHandler.confirm(intent:completion:)(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = [objc_opt_self() sharedInstance];
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = v7;
    v8[4] = a2;
    v8[5] = a3;
    aBlock[4] = partial apply for closure #1 in INShareETAIntentHandler.confirm(intent:completion:);
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed MSPSharedTripService) -> ();
    aBlock[3] = &block_descriptor_6;
    v9 = _Block_copy(aBlock);
    v10 = v3;
    v11 = v7;

    [v11 performBlockAfterInitialSync_];
    _Block_release(v9);
  }

  else
  {
    v12 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v12, &dword_266E03000, *&v3[OBJC_IVAR____TtC7SiriGeo23INShareETAIntentHandler_logObject], "could not get shared instance", 29, 2, MEMORY[0x277D84F90]);
    v13 = [objc_allocWithZone(MEMORY[0x277CD4140]) initWithCode:4 userActivity:0];
    a2();
  }
}

void closure #1 in INShareETAIntentHandler.confirm(intent:completion:)(void *a1, char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = static os_log_type_t.info.getter();
  v11 = *&a2[OBJC_IVAR____TtC7SiriGeo23INShareETAIntentHandler_logObject];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_266E21E90;
  *(v12 + 56) = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MSPSharedTripService, 0x277D265F8);
  *(v12 + 64) = lazy protocol witness table accessor for type MSPSharedTripService and conformance NSObject();
  *(v12 + 32) = a3;
  v13 = a3;
  os_log(_:dso:log:_:_:)(v10, &dword_266E03000, v11, "shared trip retrieved %@", 24, 2, v12);

  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a4;
  v14[4] = a5;
  v17[4] = partial apply for closure #1 in closure #1 in INShareETAIntentHandler.confirm(intent:completion:);
  v17[5] = v14;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed String?, @guaranteed Error?) -> ();
  v17[3] = &block_descriptor_73;
  v15 = _Block_copy(v17);
  v16 = a2;

  [a1 fetchRequiresUserConfirmationOfSharingIdentityWithCompletion_];
  _Block_release(v15);
}

void closure #1 in closure #1 in INShareETAIntentHandler.confirm(intent:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(void))
{
  v8 = a1;
  v9 = *(a5 + OBJC_IVAR____TtC7SiriGeo23INShareETAIntentHandler_logObject);
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_266E03000, v9, v10, "share ETA confirm ready", v11, 2u);
    MEMORY[0x26D5F3640](v11, -1, -1);
  }

  if (a4)
  {
    v12 = a4;
    v13 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_266E21E90;
    swift_getErrorValue();
    v15 = Error.localizedDescription.getter();
    v17 = v16;
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    os_log(_:dso:log:_:_:)(v13, &dword_266E03000, v9, "fetchRequiresUserConfirmationOfSharingIdentity error %@", 55, 2, v14);

    v18 = [objc_allocWithZone(MEMORY[0x277CD4140]) initWithCode:1 userActivity:0];
    a6();
  }

  else
  {
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28 = v21;
      *v20 = 136315138;
      if (v8)
      {
        v22 = 1702195828;
      }

      else
      {
        v22 = 0x65736C6166;
      }

      if (v8)
      {
        v23 = 0xE400000000000000;
      }

      else
      {
        v23 = 0xE500000000000000;
      }

      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v28);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_266E03000, v9, v19, "fetchRequiresUserConfirmationOfSharingIdentity requiresConfirmation value: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x26D5F3640](v21, -1, -1);
      MEMORY[0x26D5F3640](v20, -1, -1);
    }

    v25 = objc_allocWithZone(MEMORY[0x277CD4140]);
    if (v8)
    {
      v26 = 2;
    }

    else
    {
      v26 = 1;
    }

    v27 = [v25 initWithCode:v26 userActivity:0];
    a6();
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed String?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  if (a3)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a4;
  v6(a2, v7, v9, a4);
}

uint64_t INShareETAIntentHandler.handle(intent:completion:)(void *a1, void (*a2)(void), uint64_t a3)
{
  v7 = v3;

  specialized INShareETAIntentHandler.handleShareETA(intent:completion:)(a1, v7, v7, a2, a3);
}

void closure #1 in INShareETAIntentHandler.handleShareETA(intent:completion:)(void *a1, char *a2, void *a3, void (*a4)(void), uint64_t a5, void *a6)
{
  v12 = static os_log_type_t.info.getter();
  v13 = *&a2[OBJC_IVAR____TtC7SiriGeo23INShareETAIntentHandler_logObject];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_266E21E90;
  *(v14 + 56) = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MSPSharedTripService, 0x277D265F8);
  *(v14 + 64) = lazy protocol witness table accessor for type MSPSharedTripService and conformance NSObject();
  *(v14 + 32) = a3;
  v15 = a3;
  os_log(_:dso:log:_:_:)(v12, &dword_266E03000, v13, "shared trip retrieved %@", 24, 2, v14);

  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *&v56 = partial apply for closure #1 in closure #1 in INShareETAIntentHandler.handleShareETA(intent:completion:);
  *(&v56 + 1) = v16;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v55 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed String?, @guaranteed Error?) -> ();
  *(&v55 + 1) = &block_descriptor_55;
  v17 = _Block_copy(&aBlock);
  v18 = a1;
  v19 = a2;

  [v18 fetchRequiresUserConfirmationOfSharingIdentityWithCompletion_];
  _Block_release(v17);
  v20 = &v19[OBJC_IVAR____TtC7SiriGeo23INShareETAIntentHandler_sharedTripContact];
  v21 = *&v19[OBJC_IVAR____TtC7SiriGeo23INShareETAIntentHandler_sharedTripContact + 8];
  if (v21)
  {
    v22 = *(v20 + 5);
    v23 = *(v20 + 4);
    v25 = *(v20 + 2);
    v24 = *(v20 + 3);
    *&aBlock = *v20;
    *(&aBlock + 1) = v21;
    *&v55 = v25;
    *(&v55 + 1) = v24;
    *&v56 = v23;
    *(&v56 + 1) = v22;
    v52 = v22;

    v51 = v25;
    v26 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v26))
    {
      v49 = v19;
      v27 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v53[0] = v48;
      *v27 = 136315138;

      v28 = a6;
      v29 = a5;
      v30 = v51;
      log = v13;
      v31 = a4;
      v32 = v52;
      v33 = EnhancedMSPSharedTripContact.description.getter();
      v50 = v18;
      v35 = v34;

      a4 = v31;
      a5 = v29;
      a6 = v28;

      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, v53);
      v18 = v50;

      *(v27 + 4) = v36;
      _os_log_impl(&dword_266E03000, log, v26, "shared trip contact retrieved %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x26D5F3640](v48, -1, -1);
      v37 = v27;
      v19 = v49;
      MEMORY[0x26D5F3640](v37, -1, -1);
    }

    v38 = swift_allocObject();
    v39 = v55;
    *(v38 + 40) = aBlock;
    *(v38 + 16) = v19;
    *(v38 + 24) = a4;
    *(v38 + 32) = a5;
    *(v38 + 56) = v39;
    *(v38 + 72) = v56;
    *(v38 + 88) = a6;
    v53[4] = partial apply for closure #2 in closure #1 in INShareETAIntentHandler.handleShareETA(intent:completion:);
    v53[5] = v38;
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 1107296256;
    v53[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned MSPSharedTripCapabilityType, @guaranteed Error?) -> ();
    v53[3] = &block_descriptor_61;
    v40 = _Block_copy(v53);
    v41 = v19;

    v42 = v51;
    v43 = v52;

    v44 = a6;

    [v18 startSharingWithContact:v42 completion:v40];
    _Block_release(v40);
  }

  else
  {
    v45 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v45, &dword_266E03000, v13, "could not get shared instance", 29, 2, MEMORY[0x277D84F90]);
    v46 = [objc_allocWithZone(MEMORY[0x277CD4140]) initWithCode:4 userActivity:0];
    a4();
  }
}

void closure #1 in closure #1 in INShareETAIntentHandler.handleShareETA(intent:completion:)(char a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (a1)
  {
    if (a3)
    {
      v8 = a2;
    }

    else
    {
      v8 = 0;
    }

    if (a3)
    {
      v9 = a3;
    }

    else
    {
      v9 = 0xE000000000000000;
    }

    v10 = MEMORY[0x26D5F2D60](v8, v9);

    v11 = swift_allocObject();
    *(v11 + 16) = a6;
    v14[4] = partial apply for closure #1 in closure #1 in closure #1 in INShareETAIntentHandler.handleShareETA(intent:completion:);
    v14[5] = v11;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    v14[3] = &block_descriptor_67;
    v12 = _Block_copy(v14);
    v13 = a6;

    [a5 reportUserConfirmationOfSharingIdentity:v10 completion:v12];
    _Block_release(v12);
  }
}

void closure #1 in closure #1 in closure #1 in INShareETAIntentHandler.handleShareETA(intent:completion:)(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1;
    v5 = static os_log_type_t.error.getter();
    v6 = *(a2 + OBJC_IVAR____TtC7SiriGeo23INShareETAIntentHandler_logObject);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_266E21E90;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = v9;
    *(v7 + 56) = MEMORY[0x277D837D0];
    *(v7 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    os_log(_:dso:log:_:_:)(v5, &dword_266E03000, v6, "reportUserConfirmation error %@", 31, 2, v7);
  }
}

void closure #2 in closure #1 in INShareETAIntentHandler.handleShareETA(intent:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id), uint64_t a5, uint64_t a6, void *a7)
{
  if (a2)
  {
    v42 = _convertErrorToNSError(_:)();
  }

  else
  {
    v42 = 0;
  }

  v11 = static os_log_type_t.info.getter();
  v12 = *(a3 + OBJC_IVAR____TtC7SiriGeo23INShareETAIntentHandler_logObject);
  os_log(_:dso:log:_:_:)(v11, &dword_266E03000, v12, "shared trip start sharing completion block", 42, 2, MEMORY[0x277D84F90]);
  v13 = v42;
  if (v42)
  {
    v40 = a1;
    v14 = v42;
    v15 = [v14 code];
    v16 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_266E21E90;
    v18 = [v14 localizedDescription];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    *(v17 + 56) = MEMORY[0x277D837D0];
    *(v17 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v17 + 32) = v19;
    *(v17 + 40) = v21;
    os_log(_:dso:log:_:_:)(v16, &dword_266E03000, v12, "MSPSharedTripError: %@", 22, 2, v17);

    if (v15 <= 11)
    {
      if (v15 == 5)
      {
        v22 = [objc_allocWithZone(MEMORY[0x277CD4140]) initWithCode:13 userActivity:0];
        goto LABEL_12;
      }

      if (v15 == 8)
      {
        v22 = [objc_allocWithZone(MEMORY[0x277CD4140]) initWithCode:12 userActivity:0];
LABEL_12:
        v43 = v22;
        (a4)();

        goto LABEL_22;
      }

LABEL_10:
      v22 = [objc_allocWithZone(MEMORY[0x277CD4140]) initWithCode:4 userActivity:0];
      goto LABEL_12;
    }

    if (v15 != 12)
    {
      goto LABEL_10;
    }

    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_266E03000, v12, v23, "Already sharing with Contact", v24, 2u);
      MEMORY[0x26D5F3640](v24, -1, -1);
    }

    a1 = v40;
    v13 = v42;
  }

  v43 = v13;
  v14 = [objc_allocWithZone(MEMORY[0x277CD4140]) initWithCode:3 userActivity:0];
  v25 = *(a6 + 40);
  if (v25)
  {
    v26 = *(a6 + 40);
  }

  else
  {
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
    v26 = NSString.init(stringLiteral:)();
    v25 = 0;
  }

  v27 = v25;
  v28 = specialized INShareETAIntentHandler.convertCompatibilityTypeToMedium(type:serviceName:)(a1, v26);

  [v14 setMediums_];
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, 0x277CD3E90);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v14 setRecipients_];

  v30 = [a7 recipients];
  [v14 setRecipients_];

  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v44 = v33;
    *v32 = 136315138;
    v34 = v14;
    v35 = [v34 description];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v44);

    *(v32 + 4) = v39;
    _os_log_impl(&dword_266E03000, v12, v31, "Sending response : %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x26D5F3640](v33, -1, -1);
    MEMORY[0x26D5F3640](v32, -1, -1);
  }

  a4(v14);
LABEL_22:
}

void thunk for @escaping @callee_guaranteed @Sendable (@unowned MSPSharedTripCapabilityType, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id INShareETAIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id INShareETAIntentHandler.init()()
{
  v1 = OBJC_IVAR____TtC7SiriGeo23INShareETAIntentHandler_logObject;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  *&v0[v1] = OS_os_log.init(subsystem:category:)();
  v2 = &v0[OBJC_IVAR____TtC7SiriGeo23INShareETAIntentHandler_sharedTripContact];
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *v2 = 0u;
  v3 = OBJC_IVAR____TtC7SiriGeo23INShareETAIntentHandler_contactService;
  type metadata accessor for ContactService();
  swift_allocObject();
  *&v0[v3] = ContactService.init()();
  v5.receiver = v0;
  v5.super_class = type metadata accessor for INShareETAIntentHandler();
  return objc_msgSendSuper2(&v5, sel_init);
}

id INShareETAIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for INShareETAIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized INShareETAIntentHandler.resolveRecipients(for:with:)(void *a1, char *a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = *&a2[OBJC_IVAR____TtC7SiriGeo23INShareETAIntentHandler_logObject];
  _Block_copy(a3);
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_266E03000, v7, v8, "resolveRecipient called", v9, 2u);
    MEMORY[0x26D5F3640](v9, -1, -1);
  }

  v10 = [objc_opt_self() sharedInstance];
  if (v10)
  {
    v11 = v10;
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_266E03000, v7, v12, "share ETA confirm ready", v13, 2u);
      MEMORY[0x26D5F3640](v13, -1, -1);
    }

    v14 = swift_allocObject();
    v14[2] = a2;
    v14[3] = v11;
    v14[4] = a1;
    v14[5] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> ();
    v14[6] = v6;
    aBlock[4] = closure #1 in INShareETAIntentHandler.resolveRecipients(for:with:)partial apply;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed MSPSharedTripService) -> ();
    aBlock[3] = &block_descriptor_40;
    v15 = _Block_copy(aBlock);
    v16 = a2;
    v17 = v11;
    v18 = a1;

    [v17 performBlockAfterInitialSync_];
    _Block_release(v15);
  }

  else
  {
    v19 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v19, &dword_266E03000, v7, "could not get shared instance", 29, 2, MEMORY[0x277D84F90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_266E21F00;
    *(v20 + 32) = [objc_opt_self() unsupportedForReason_];
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INShareETARecipientResolutionResult, 0x277CD4148);
    isa = Array._bridgeToObjectiveC()().super.isa;
    (a3)[2](a3, isa);
  }
}

uint64_t specialized INShareETAIntentHandler.phoneDisambiguationCandidates(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 > 1)
  {
    v11 = *(a1 + 48);
    if ([v11 isPhoneNumber])
    {
      v12 = *(a1 + 64);
      v13 = *(a1 + 56);
      v14 = (a1 + 72);
      v15 = MEMORY[0x277D84F90];
      do
      {
        v16 = *(v14 - 1);
        if (v13 != *(v14 - 2) || v12 != v16)
        {
          break;
        }

        v19 = *(v14 - 5);
        v18 = *(v14 - 4);
        v20 = *(v14 - 3);
        v21 = *v14;
        v22 = *v14;

        v23 = v20;
        if (([v23 isPhoneNumber] & 1) == 0)
        {

          return *(v15 + 2) > 1uLL;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
        }

        v25 = *(v15 + 2);
        v24 = *(v15 + 3);
        if (v25 >= v24 >> 1)
        {
          v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v15);
        }

        v14 += 6;
        *(v15 + 2) = v25 + 1;
        v26 = &v15[48 * v25];
        *(v26 + 4) = v19;
        *(v26 + 5) = v18;
        *(v26 + 6) = v23;
        *(v26 + 7) = v13;
        *(v26 + 8) = v16;
        *(v26 + 9) = v21;
        --v2;
      }

      while (v2);
      return *(v15 + 2) > 1uLL;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SiriGeo28EnhancedMSPSharedTripContactVGMd, &_ss23_ContiguousArrayStorageCy7SiriGeo28EnhancedMSPSharedTripContactVGMR);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_266E21E90;
      v28 = *(a1 + 40);
      v29 = *(a1 + 56);
      v30 = *(a1 + 64);
      v31 = *(a1 + 72);
      *(v27 + 32) = *(a1 + 32);
      *(v27 + 40) = v28;
      *(v27 + 48) = v11;
      *(v27 + 56) = v29;
      *(v27 + 64) = v30;
      *(v27 + 72) = v31;
      v32 = v31;

      v33 = v11;
      return 0;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SiriGeo28EnhancedMSPSharedTripContactVGMd, &_ss23_ContiguousArrayStorageCy7SiriGeo28EnhancedMSPSharedTripContactVGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_266E21E90;
    if (v2 == 1)
    {
      v4 = *(a1 + 40);
      v6 = *(a1 + 48);
      v5 = *(a1 + 56);
      v7 = *(a1 + 64);
      v8 = *(a1 + 72);
      *(result + 32) = *(a1 + 32);
      *(result + 40) = v4;
      *(result + 48) = v6;
      *(result + 56) = v5;
      *(result + 64) = v7;
      *(result + 72) = v8;
      v9 = v8;

      v10 = v6;
      return 0;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void specialized INShareETAIntentHandler.confirm(intent:completion:)(char *a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = objc_opt_self();
  _Block_copy(a2);
  v6 = [v5 sharedInstance];
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = v7;
    v8[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned INShareETAIntentResponse) -> ()partial apply;
    v8[5] = v4;
    aBlock[4] = closure #1 in INShareETAIntentHandler.confirm(intent:completion:)partial apply;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed MSPSharedTripService) -> ();
    aBlock[3] = &block_descriptor_30;
    v9 = _Block_copy(aBlock);
    v10 = a1;
    v11 = v7;

    [v11 performBlockAfterInitialSync_];
    _Block_release(v9);
  }

  else
  {
    v12 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v12, &dword_266E03000, *&a1[OBJC_IVAR____TtC7SiriGeo23INShareETAIntentHandler_logObject], "could not get shared instance", 29, 2, MEMORY[0x277D84F90]);
    v13 = [objc_allocWithZone(MEMORY[0x277CD4140]) initWithCode:4 userActivity:0];
    (a2)[2](a2, v13);
  }
}

void specialized INShareETAIntentHandler.handleShareETA(intent:completion:)(void *a1, char *a2, void *a3, void (*a4)(void), uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v11 = *&a2[OBJC_IVAR____TtC7SiriGeo23INShareETAIntentHandler_logObject];
  v12 = a3;

  v13 = a1;
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v14))
  {
    v39 = a4;
    v40 = v12;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    v17 = [v13 recipients];

    if (!v17)
    {

      __break(1u);
      return;
    }

    v18 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, 0x277CD3E90);
    v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = MEMORY[0x26D5F2E40](v19, v18);
    v22 = v21;

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, aBlock);

    *(v15 + 4) = v23;
    _os_log_impl(&dword_266E03000, v11, v14, "handle Contact: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x26D5F3640](v16, -1, -1);
    MEMORY[0x26D5F3640](v15, -1, -1);
    v12 = v40;
    a4 = v39;
  }

  else
  {
  }

  v24 = [objc_opt_self() sharedInstance];
  if (v24)
  {
    v25 = v24;
    v26 = swift_allocObject();
    v26[2] = a2;
    v26[3] = v25;
    v26[4] = partial apply for closure #1 in INShareETAIntentHandler.handle(intent:completion:);
    v26[5] = v10;
    v26[6] = v13;
    aBlock[4] = partial apply for closure #1 in INShareETAIntentHandler.handleShareETA(intent:completion:);
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed MSPSharedTripService) -> ();
    aBlock[3] = &block_descriptor_49;
    v27 = _Block_copy(aBlock);
    v28 = v13;
    v29 = a2;
    v30 = v25;

    [v30 performBlockAfterInitialSync_];
    _Block_release(v27);
  }

  else
  {
    v31 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v31, &dword_266E03000, v11, "could not get shared instance", 29, 2, MEMORY[0x277D84F90]);
    v41 = [objc_allocWithZone(MEMORY[0x277CD4140]) initWithCode:6 userActivity:0];
    v32 = &v12[OBJC_IVAR____TtC7SiriGeo23INShareETAIntentHandler_sharedTripContact];
    v33 = *&v12[OBJC_IVAR____TtC7SiriGeo23INShareETAIntentHandler_sharedTripContact];
    v34 = *&v12[OBJC_IVAR____TtC7SiriGeo23INShareETAIntentHandler_sharedTripContact + 8];
    v35 = *&v12[OBJC_IVAR____TtC7SiriGeo23INShareETAIntentHandler_sharedTripContact + 16];
    v36 = *&v12[OBJC_IVAR____TtC7SiriGeo23INShareETAIntentHandler_sharedTripContact + 24];
    v37 = *&v12[OBJC_IVAR____TtC7SiriGeo23INShareETAIntentHandler_sharedTripContact + 32];
    v38 = *&v12[OBJC_IVAR____TtC7SiriGeo23INShareETAIntentHandler_sharedTripContact + 40];
    *v32 = 0u;
    *(v32 + 1) = 0u;
    *(v32 + 2) = 0u;
    outlined consume of EnhancedMSPSharedTripContact?(v33, v34, v35, v36, v37, v38);
    a4(v41);
  }
}

void outlined consume of EnhancedMSPSharedTripContact?(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a2)
  {
  }
}

uint64_t sub_266E15BCC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroy_2Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> ()(uint64_t a1)
{
  thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> ()(a1, *(v1 + 16));
}

{
  thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> ()(a1, *(v1 + 16));
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t partial apply for closure #1 in INShareETAIntentHandler.handle(intent:completion:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = (*(v1 + 16) + OBJC_IVAR____TtC7SiriGeo23INShareETAIntentHandler_sharedTripContact);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = v4[5];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  outlined consume of EnhancedMSPSharedTripContact?(v5, v6, v7, v8, v9, v10);
  return v3(a1);
}

uint64_t sub_266E15D08()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t lazy protocol witness table accessor for type MSPSharedTripService and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type MSPSharedTripService and conformance NSObject;
  if (!lazy protocol witness table cache variable for type MSPSharedTripService and conformance NSObject)
  {
    type metadata accessor for OS_os_log(255, &lazy cache variable for type metadata for MSPSharedTripService, 0x277D265F8);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MSPSharedTripService and conformance NSObject);
  }

  return result;
}

uint64_t sub_266E15DF0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_266E15E38()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t specialized INShareETAIntentHandler.convertCompatibilityTypeToMedium(type:serviceName:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 4)
  {
    return 2;
  }

  if (a1 == 3)
  {
    return 4;
  }

  if (a1 != 2)
  {
    return 1;
  }

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {

    return 1;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
    return 1;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
  {

    return 8;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {
      return 8;
    }

    else
    {
      return 1;
    }
  }
}

uint64_t sub_266E16000()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroy_15Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void INStopShareETAIntentHandler.resolveRecipients(for:with:)(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v7 = [objc_opt_self() sharedInstance];
  if (v7)
  {
    v8 = v7;
    v9 = swift_allocObject();
    v9[2] = v3;
    v9[3] = a1;
    v9[4] = a2;
    v9[5] = a3;
    v17[4] = partial apply for closure #1 in INStopShareETAIntentHandler.resolveRecipients(for:with:);
    v17[5] = v9;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 1107296256;
    v17[2] = thunk for @escaping @callee_guaranteed (@guaranteed MSPSharedTripService) -> ();
    v17[3] = &block_descriptor_1;
    v10 = _Block_copy(v17);
    v11 = v3;
    v12 = a1;

    [v8 performBlockAfterInitialSync_];
    _Block_release(v10);
  }

  else
  {
    v13 = *&v3[OBJC_IVAR____TtC7SiriGeo27INStopShareETAIntentHandler_logObject];
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_266E03000, v13, v14, "could not get msp shared instance to check if the there is a match with receivers", v15, 2u);
      MEMORY[0x26D5F3640](v15, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_266E21F00;
    *(v16 + 32) = [objc_opt_self() unsupportedForReason_];
    a2(v16);
  }
}

void INStopShareETAIntentHandler.resolveRecipientsInsideBlock(for:sharedTrip:with:)(void *a1, void *a2, void (*a3)(uint64_t))
{
  v6 = [a1 recipients];
  if (!v6)
  {
    v37 = *(v3 + OBJC_IVAR____TtC7SiriGeo27INStopShareETAIntentHandler_logObject);
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_266E03000, v37, v38, "resolveRecipients nil recipients - stop sharing ETA with all recipients", v39, 2u);
      MEMORY[0x26D5F3640](v39, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_266E21F00;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INStopShareETARecipientResolutionResult, 0x277CD4200);
    *(v40 + 32) = [swift_getObjCClassFromMetadata() notRequired];
    a3(v40);
    goto LABEL_41;
  }

  v7 = v6;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, 0x277CD3E90);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = specialized static INPerson.contactsWithContactIdentifiers(_:)(v8);

  v59 = a3;
  v65 = v3;
  if (v9 >> 62)
  {
LABEL_61:
    if (v9 < 0)
    {
      v56 = v9;
    }

    else
    {
      v56 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    v10 = MEMORY[0x26D5F3000](v56);
    if (v10)
    {
      goto LABEL_4;
    }

    goto LABEL_37;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
LABEL_37:

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_266E21F00;
    *(v36 + 32) = [objc_opt_self() unsupportedForReason_];
    v59(v36);
LABEL_41:

    return;
  }

LABEL_4:
  v11 = 0;
  v12 = *(v65 + OBJC_IVAR____TtC7SiriGeo27INStopShareETAIntentHandler_logObject);
  v63 = OBJC_IVAR____TtC7SiriGeo27INStopShareETAIntentHandler_contactService;
  v64 = v9 & 0xC000000000000001;
  v57 = v9 + 32;
  v58 = v9 & 0xFFFFFFFFFFFFFF8;
  oslog = v12;
  v62 = v9;
  v60 = v10;
  while (1)
  {
    if (v64)
    {
      v13 = MEMORY[0x26D5F2F90](v11, v9);
      v14 = __OFADD__(v11++, 1);
      if (v14)
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (v11 >= *(v58 + 16))
      {
        goto LABEL_60;
      }

      v13 = *(v57 + 8 * v11);
      v14 = __OFADD__(v11++, 1);
      if (v14)
      {
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }
    }

    v66 = v13;
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v67 = v17;
      *v16 = 136315138;
      v18 = v66;
      v19 = [v18 description];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v67);
      v12 = oslog;

      *(v16 + 4) = v23;
      _os_log_impl(&dword_266E03000, oslog, v15, "match %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x26D5F3640](v17, -1, -1);
      MEMORY[0x26D5F3640](v16, -1, -1);
    }

    v24 = *(**(v65 + v63) + 128);

    v25 = v24(v66);
    v27 = v26;

    if (v25)
    {
      break;
    }

LABEL_35:

LABEL_36:
    v9 = v62;
    if (v11 == v60)
    {
      goto LABEL_37;
    }
  }

  if (!(v25 >> 62))
  {
    v28 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

  if (v25 >= 0)
  {
    v9 = v25 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v9 = v25;
  }

  if (!MEMORY[0x26D5F3000](v9))
  {
LABEL_33:

    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_266E03000, v12, v34, "failed to fetch contact from recipient", v35, 2u);
      MEMORY[0x26D5F3640](v35, -1, -1);
    }

    goto LABEL_35;
  }

  v33 = MEMORY[0x26D5F3000](v9);
  if (v33 < 0)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v28 = v33;
LABEL_16:
  v9 = 0;
  v29 = v25 & 0xC000000000000001;
  do
  {
    if (v28 == v9)
    {

      v12 = oslog;
      goto LABEL_36;
    }

    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    if (v29)
    {
      v30 = MEMORY[0x26D5F2F90](v9, v25);
    }

    else
    {
      if (v9 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_57;
      }

      v30 = *(v25 + 8 * v9 + 32);
    }

    v31 = v30;
    v32 = [a2 isSharingWithContact_];

    ++v9;
  }

  while (!v32);

  if (v29)
  {
    v41 = MEMORY[0x26D5F2F90](v9 - 1, v25);
  }

  else
  {
    v41 = *(v25 + 8 * v9 + 24);
  }

  v42 = v59;
  v43 = *(v65 + OBJC_IVAR____TtC7SiriGeo27INStopShareETAIntentHandler_sharedTripContact);
  *(v65 + OBJC_IVAR____TtC7SiriGeo27INStopShareETAIntentHandler_sharedTripContact) = v41;

  v44 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v67 = v46;
    *v45 = 136315138;
    if (v29)
    {
      v47 = MEMORY[0x26D5F2F90](v9 - 1, v25);
    }

    else
    {
      v47 = *(v25 + 8 * v9 + 24);
    }

    v48 = v47;

    v49 = [v48 description];
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, &v67);

    *(v45 + 4) = v53;
    _os_log_impl(&dword_266E03000, oslog, v44, "resolveRecipients successful %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x26D5F3640](v46, -1, -1);
    MEMORY[0x26D5F3640](v45, -1, -1);
    v42 = v59;
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_266E21F00;
  *(v54 + 32) = v27;
  v55 = v27;
  v42(v54);
}

void INStopShareETAIntentHandler.confirm(intent:completion:)(uint64_t a1, void (*a2)(id), uint64_t a3)
{
  v6 = *&v3[OBJC_IVAR____TtC7SiriGeo27INStopShareETAIntentHandler_logObject];
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_266E03000, v6, v7, "stop sharing ETA - confirm", v8, 2u);
    MEMORY[0x26D5F3640](v8, -1, -1);
  }

  v17 = [objc_allocWithZone(MEMORY[0x277CD41F8]) initWithCode:1 userActivity:0];
  v9 = [objc_opt_self() sharedInstance];
  if (v9)
  {
    v10 = v9;
    v11 = swift_allocObject();
    v11[2] = v3;
    v11[3] = v17;
    v11[4] = a2;
    v11[5] = a3;
    aBlock[4] = partial apply for closure #1 in INStopShareETAIntentHandler.confirm(intent:completion:);
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed MSPSharedTripService) -> ();
    aBlock[3] = &block_descriptor_6_0;
    v12 = _Block_copy(aBlock);
    v13 = v3;
    v14 = v17;

    [v10 performBlockAfterInitialSync_];
    _Block_release(v12);
  }

  else
  {
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_266E03000, v6, v15, "failed to retrieve shared instance", v16, 2u);
      MEMORY[0x26D5F3640](v16, -1, -1);
    }

    a2(v17);
  }
}

uint64_t closure #1 in INStopShareETAIntentHandler.confirm(intent:completion:)(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *))
{
  v6 = *(a2 + OBJC_IVAR____TtC7SiriGeo27INStopShareETAIntentHandler_logObject);
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v31 = v9;
    *v8 = 136315138;
    v10 = [a1 receivers];
    v11 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MSPSharedTripContact, 0x277D265F0);
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = MEMORY[0x26D5F2E40](v12, v11);
    v15 = v14;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v31);

    *(v8 + 4) = v16;
    _os_log_impl(&dword_266E03000, v6, v7, "receivers of shared trip %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26D5F3640](v9, -1, -1);
    MEMORY[0x26D5F3640](v8, -1, -1);
  }

  v17 = [a1 receivers];
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MSPSharedTripContact, 0x277D265F0);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  specialized INStopShareETAIntentHandler.convertSharedTripToRecipients(_:)(v18);

  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, 0x277CD3E90);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a3 setRecipients_];

  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v31 = v22;
    *v21 = 136315138;
    v23 = a3;
    v24 = [v23 description];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v31);

    *(v21 + 4) = v28;
    _os_log_impl(&dword_266E03000, v6, v20, "confirm response %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x26D5F3640](v22, -1, -1);
    MEMORY[0x26D5F3640](v21, -1, -1);
  }

  return a4(a3);
}

void INStopShareETAIntentHandler.handle(intent:completion:)(void *a1, void (*a2)(id), uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a2;
  v7[4] = a3;
  v8 = objc_opt_self();

  v9 = v3;
  v10 = [v8 sharedInstance];
  if (v10)
  {
    v11 = v10;
    v12 = swift_allocObject();
    v12[2] = v9;
    v12[3] = partial apply for closure #1 in INStopShareETAIntentHandler.handle(intent:completion:);
    v12[4] = v7;
    v12[5] = a1;
    v19[4] = partial apply for closure #1 in INStopShareETAIntentHandler.handleStopShareETA(intent:completion:);
    v19[5] = v12;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 1107296256;
    v19[2] = thunk for @escaping @callee_guaranteed (@guaranteed MSPSharedTripService) -> ();
    v19[3] = &block_descriptor_15;
    v13 = _Block_copy(v19);
    v14 = v9;

    v15 = a1;

    [v11 performBlockAfterInitialSync_];

    _Block_release(v13);
  }

  else
  {
    v16 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v16, &dword_266E03000, *&v9[OBJC_IVAR____TtC7SiriGeo27INStopShareETAIntentHandler_logObject], "could not get shared instance", 29, 2, MEMORY[0x277D84F90]);
    v17 = [objc_allocWithZone(MEMORY[0x277CD41F8]) initWithCode:4 userActivity:0];
    v18 = *&v9[OBJC_IVAR____TtC7SiriGeo27INStopShareETAIntentHandler_sharedTripContact];
    *&v9[OBJC_IVAR____TtC7SiriGeo27INStopShareETAIntentHandler_sharedTripContact] = 0;

    a2(v17);
  }
}

void @objc INStopShareETAIntentHandler.resolveRecipients(for:with:)(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

void closure #1 in INStopShareETAIntentHandler.handleStopShareETA(intent:completion:)(void *a1, char *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = *&a2[OBJC_IVAR____TtC7SiriGeo27INStopShareETAIntentHandler_logObject];
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    aBlock = v49;
    *v11 = 136315138;
    v12 = a1;
    v13 = [v12 description];
    v14 = a3;
    v15 = v8;
    v16 = a4;
    v17 = a5;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    log = v9;
    v20 = v19;

    v21 = v18;
    a5 = v17;
    a4 = v16;
    v8 = v15;
    a3 = v14;
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v20, &aBlock);
    v9 = log;

    *(v11 + 4) = v22;
    _os_log_impl(&dword_266E03000, log, v10, "stop sharing ETA - shared trip retrieved %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x26D5F3640](v49, -1, -1);
    MEMORY[0x26D5F3640](v11, -1, -1);
  }

  v23 = *&v8[OBJC_IVAR____TtC7SiriGeo27INStopShareETAIntentHandler_sharedTripContact];
  if (v23 && (objc_opt_self(), (v24 = swift_dynamicCastObjCClass()) != 0))
  {
    v25 = v24;
    v26 = v23;
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v27))
    {
      v28 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      aBlock = v48;
      *v28 = 136315138;
      v47 = v26;
      loga = v9;
      v29 = [v25 description];
      v30 = v26;
      v31 = a5;
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = a4;
      v34 = v33;

      v35 = v32;
      a5 = v31;
      v26 = v30;
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v34, &aBlock);
      a4 = v50;

      *(v28 + 4) = v36;
      _os_log_impl(&dword_266E03000, loga, v27, "handle stop sharing ETA to recipient: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x26D5F3640](v48, -1, -1);
      MEMORY[0x26D5F3640](v28, -1, -1);
    }

    v37 = swift_allocObject();
    v37[2] = v8;
    v37[3] = a3;
    v37[4] = a4;
    v37[5] = a5;
    v58 = partial apply for closure #1 in closure #1 in INStopShareETAIntentHandler.handleStopShareETA(intent:completion:);
    v59 = v37;
    aBlock = MEMORY[0x277D85DD0];
    v55 = 1107296256;
    v56 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    v57 = &block_descriptor_71;
    v38 = _Block_copy(&aBlock);
    v39 = v8;

    v40 = a5;

    [a1 stopSharingWithContact:v25 completion:v38];
    _Block_release(v38);
  }

  else
  {
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_266E03000, v9, v41, "handle stop sharing ETA to all recipients", v42, 2u);
      MEMORY[0x26D5F3640](v42, -1, -1);
    }

    v43 = swift_allocObject();
    v43[2] = v8;
    v43[3] = a3;
    v43[4] = a4;
    v43[5] = a5;
    v58 = partial apply for closure #2 in closure #1 in INStopShareETAIntentHandler.handleStopShareETA(intent:completion:);
    v59 = v43;
    aBlock = MEMORY[0x277D85DD0];
    v55 = 1107296256;
    v56 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    v57 = &block_descriptor_65;
    v44 = _Block_copy(&aBlock);
    v45 = v8;

    v46 = a5;

    [a1 stopAllSharingWithCompletion_];
    _Block_release(v44);
  }
}

void closure #1 in closure #1 in INStopShareETAIntentHandler.handleStopShareETA(intent:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5)
{
  if (a1)
  {
    v20 = _convertErrorToNSError(_:)();
    INStopShareETAIntentHandler.stopShareETAErrorHandling(_:completion:)(v20, a3);
  }

  else
  {
    v20 = [objc_allocWithZone(MEMORY[0x277CD41F8]) initWithCode:3 userActivity:0];
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, 0x277CD3E90);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v20 setRecipients_];

    v9 = [a5 recipients];
    [v20 setRecipients_];

    v10 = *(a2 + OBJC_IVAR____TtC7SiriGeo27INStopShareETAIntentHandler_logObject);
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = v13;
      *v12 = 136315138;
      v14 = v20;
      v15 = [v14 description];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v21);

      *(v12 + 4) = v19;
      _os_log_impl(&dword_266E03000, v10, v11, "INStopShareETAIntentHandler Sending response : %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x26D5F3640](v13, -1, -1);
      MEMORY[0x26D5F3640](v12, -1, -1);
    }

    (a3)(v20);
  }
}

void INStopShareETAIntentHandler.stopShareETAErrorHandling(_:completion:)(void *a1, void (*a2)(void))
{
  v5 = [a1 code];
  v6 = static os_log_type_t.error.getter();
  v7 = *(v2 + OBJC_IVAR____TtC7SiriGeo27INStopShareETAIntentHandler_logObject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_266E21E90;
  v9 = [a1 localizedDescription];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v8 + 32) = v10;
  *(v8 + 40) = v12;
  os_log(_:dso:log:_:_:)(v6, &dword_266E03000, v7, "stop sharing ETA - MSPSharedTripError: %@", 41, 2, v8);

  v13 = objc_allocWithZone(MEMORY[0x277CD41F8]);
  if ((v5 - 5) > 9)
  {
    v14 = 4;
  }

  else
  {
    v14 = qword_266E224D8[(v5 - 5)];
  }

  v15 = [v13 initWithCode:v14 userActivity:0];
  a2();
}

id INStopShareETAIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id INStopShareETAIntentHandler.init()()
{
  v1 = OBJC_IVAR____TtC7SiriGeo27INStopShareETAIntentHandler_logObject;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  *&v0[v1] = OS_os_log.init(subsystem:category:)();
  v2 = OBJC_IVAR____TtC7SiriGeo27INStopShareETAIntentHandler_contactService;
  type metadata accessor for ContactService();
  swift_allocObject();
  *&v0[v2] = ContactService.init()();
  *&v0[OBJC_IVAR____TtC7SiriGeo27INStopShareETAIntentHandler_sharedTripContact] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for INStopShareETAIntentHandler();
  return objc_msgSendSuper2(&v4, sel_init);
}