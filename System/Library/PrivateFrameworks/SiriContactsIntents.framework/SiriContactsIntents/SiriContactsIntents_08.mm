uint64_t static RREntity.makeDisambiguationGroup(for:with:)(void *a1, uint64_t a2)
{
  v92 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMd, &_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMR);
  v5 = OUTLINED_FUNCTION_18_0(v4);
  MEMORY[0x28223BE20](v5);
  v88 = v73 - v6;
  OUTLINED_FUNCTION_13_8();
  v7 = type metadata accessor for GroupIdentifier();
  OUTLINED_FUNCTION_1_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
  v15 = OUTLINED_FUNCTION_18_0(v14);
  MEMORY[0x28223BE20](v15);
  v17 = v73 - v16;
  v96 = type metadata accessor for RREntity();
  OUTLINED_FUNCTION_1_0();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_16();
  v78 = v21;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_19_4();
  v77 = v23;
  OUTLINED_FUNCTION_13_8();
  v24 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1_0();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_15_17(v28);
  v90 = UUID.uuidString.getter();
  v94 = v29;
  v30 = *(v26 + 8);
  v81 = v2;
  v82 = v26 + 8;
  v83 = v24;
  v80 = v30;
  v30(v2, v24);
  v95 = specialized Array._getCount()();
  v31 = 0;
  v93 = a2 & 0xC000000000000001;
  v89 = (v9 + 8);
  v84 = (v9 + 16);
  v76 = (v19 + 32);
  v74 = (v19 + 16);
  v75 = v19;
  v73[1] = v19 + 8;
  v79 = MEMORY[0x277D84F90];
  v86 = v13;
  v87 = v7;
  v85 = v17;
  v91 = a2;
  while (v95 != v31)
  {
    v32 = v93;
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (v32)
    {
      v33 = MEMORY[0x26D5E29D0](v31, a2);
    }

    else
    {
      v33 = *(a2 + 8 * v31 + 32);
    }

    v34 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_21;
    }

    v35 = v33;

    GroupIdentifier.init(id:seq:)();
    type metadata accessor for UsoEntity();
    v36 = v35;
    static UsoEntity.from(_:_:)(v92, v35);

    outlined bridged method (ob) of @objc INObject.identifier.getter(v36);
    if (!v37)
    {
      v38 = v81;
      UUID.init()();
      UUID.uuidString.getter();
      v80(v38, v83);
    }

    v39 = v87;
    v40 = v88;
    v41 = v86;
    (*v84)(v88, v86, v87);
    __swift_storeEnumTagSinglePayload(v40, 0, 1, v39);
    v42 = v41;
    v43 = v85;
    OUTLINED_FUNCTION_13_21();
    RREntity.init(id:appBundleId:usoEntity:dataType:data:group:)();

    (*v89)(v42, v39);
    v44 = v96;
    __swift_storeEnumTagSinglePayload(v43, 0, 1, v96);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v43, 1, v44);
    a2 = v91;
    if (EnumTagSinglePayload == 1)
    {

      outlined destroy of RREntity?(v43);
      ++v31;
    }

    else
    {
      v46 = *v76;
      v47 = v77;
      v48 = v96;
      (*v76)(v77, v43, v96);
      (*v74)(v78, v47, v48);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v73[0] = v46;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v79 = v56;
      }

      v51 = *(v79 + 16);
      v50 = *(v79 + 24);
      if (v51 >= v50 >> 1)
      {
        OUTLINED_FUNCTION_1_27(v50);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v79 = v57;
      }

      v52 = v75;
      v53 = v96;
      (*(v75 + 8))(v77, v96);
      v54 = v78;
      v55 = v79;
      *(v79 + 16) = v51 + 1;
      (v73[0])(v55 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v51, v54, v53);
      v31 = v34;
    }
  }

  if (one-time initialization token for siriContacts == -1)
  {
    goto LABEL_17;
  }

LABEL_21:
  OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
LABEL_17:
  v58 = type metadata accessor for Logger();
  __swift_project_value_buffer(v58, static Logger.siriContacts);
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.debug.getter();
  v61 = os_log_type_enabled(v59, v60);
  v62 = v79;
  if (v61)
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v97[0] = v64;
    *v63 = 136315138;

    v66 = MEMORY[0x26D5E2610](v65, v96);
    v68 = v67;

    v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v68, v97);

    *(v63 + 4) = v69;
    OUTLINED_FUNCTION_18_14(&dword_26686A000, v70, v71, "#RREntity.makeDisambiguationGroup returning entities: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v64);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  return v62;
}

uint64_t static RREntity.makeDisambiguationGroup(with:)(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMd, &_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMR);
  v5 = OUTLINED_FUNCTION_18_0(v4);
  MEMORY[0x28223BE20](v5);
  v63 = &v58 - v6;
  OUTLINED_FUNCTION_13_8();
  v71 = type metadata accessor for GroupIdentifier();
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  v67 = type metadata accessor for RREntity();
  OUTLINED_FUNCTION_1_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_16();
  v66 = v16;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7_6();
  v61 = v18;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_19_4();
  v65 = v20;
  OUTLINED_FUNCTION_13_8();
  v21 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1_0();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_15_17(v25);
  v70 = UUID.uuidString.getter();
  v75 = v26;
  (*(v23 + 8))(v1, v21);
  v76 = specialized Array._getCount()();
  v27 = 0;
  v73 = a1;
  v74 = a1 & 0xC000000000000001;
  v72 = a1 & 0xFFFFFFFFFFFFFF8;
  v69 = 0x8000000266971D30;
  v28 = (v8 + 8);
  v64 = (v14 + 32);
  v59 = (v14 + 16);
  v60 = (v8 + 16);
  v62 = v14;
  v58 = v14 + 8;
  v68 = MEMORY[0x277D84F90];
  while (v76 != v27)
  {
    if (v74)
    {
      v29 = MEMORY[0x26D5E29D0](v27, v73);
    }

    else
    {
      if (v27 >= *(v72 + 16))
      {
        goto LABEL_18;
      }

      v29 = *(v73 + 8 * v27 + 32);
    }

    v30 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v31 = v29;

    GroupIdentifier.init(id:seq:)();
    v32 = [v31 identifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for UsoEntity();
    static UsoEntity.from(_:_:)(v31, 0);
    v33 = v63;
    v34 = v71;
    (*v60)(v63, v12, v71);
    __swift_storeEnumTagSinglePayload(v33, 0, 1, v34);
    v35 = v61;
    OUTLINED_FUNCTION_13_21();
    RREntity.init(id:appBundleId:usoEntity:dataType:data:group:)();

    (*v28)(v12, v34);
    v36 = v65;
    v37 = v35;
    v38 = *v64;
    v39 = v67;
    (*v64)(v65, v37, v67);
    (*v59)(v66, v36, v39);
    v2 = v68;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v2 = v45;
    }

    v41 = *(v2 + 16);
    v40 = *(v2 + 24);
    if (v41 >= v40 >> 1)
    {
      OUTLINED_FUNCTION_1_27(v40);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v2 = v46;
    }

    v42 = v62;
    v43 = v67;
    (*(v62 + 8))(v65, v67);
    *(v2 + 16) = v41 + 1;
    v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v68 = v2;
    v38(v2 + v44 + *(v42 + 72) * v41, v66, v43);
    v27 = v30;
  }

  v2 = v68;
  if (one-time initialization token for siriContacts == -1)
  {
    goto LABEL_14;
  }

LABEL_19:
  OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
LABEL_14:
  v47 = type metadata accessor for Logger();
  __swift_project_value_buffer(v47, static Logger.siriContacts);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v77[0] = v51;
    *v50 = 136315138;

    v53 = MEMORY[0x26D5E2610](v52, v67);
    v55 = v54;

    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, v77);

    *(v50 + 4) = v56;
    _os_log_impl(&dword_26686A000, v48, v49, "#RREntity.makeDisambiguationGroup returning entities: %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v51);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  return v2;
}

void RREntity.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMd, &_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = [a1 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for UsoEntity();
  static UsoEntity.from(_:_:)(a1, 0);
  if (v1)
  {

    type metadata accessor for ContactsError(0);
    lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
    swift_allocError();
    v8 = v7;
    type metadata accessor for CNContact();
    *v8 = _typeName(_:qualified:)();
    v8[1] = v9;
    v8[2] = 0xD000000000000017;
    v8[3] = 0x8000000266971D30;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v10 = type metadata accessor for GroupIdentifier();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v10);
    RREntity.init(id:appBundleId:usoEntity:dataType:data:group:)();
  }
}

uint64_t RREntity.init(from:groupId:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMd, &_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v22 - v8;
  v10 = type metadata accessor for UsoIdentifier();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UsoEntity();
  static UsoEntity.from(_:)(a1);
  if (v3)
  {
    type metadata accessor for ContactsError(0);
    lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
    swift_allocError();
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
    *v15 = _typeName(_:qualified:)();
    v15[1] = v16;
    v15[2] = 0xD00000000000001ELL;
    v15[3] = 0x8000000266971CF0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v17 = type metadata accessor for GroupIdentifier();
    return (*(*(v17 - 8) + 8))(a2, v17);
  }

  else
  {
    v22[3] = a3;
    result = UsoEntity.usoIdentifiers.getter();
    if (*(result + 16))
    {
      (*(v11 + 16))(v13, result + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v10);

      UsoIdentifier.value.getter();
      v22[1] = v19;
      (*(v11 + 8))(v13, v10);
      v20 = type metadata accessor for GroupIdentifier();
      v21 = *(v20 - 8);
      (*(v21 + 16))(v9, a2, v20);
      __swift_storeEnumTagSinglePayload(v9, 0, 1, v20);
      RREntity.init(id:appBundleId:usoEntity:dataType:data:group:)();

      return (*(v21 + 8))(a2, v20);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMd, &_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v22 - v8;
  v10 = type metadata accessor for UsoIdentifier();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UsoEntity();
  static UsoEntity.from(_:)(a1);
  if (v3)
  {
    type metadata accessor for ContactsError(0);
    lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
    swift_allocError();
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
    *v15 = _typeName(_:qualified:)();
    v15[1] = v16;
    v15[2] = 0xD00000000000001CLL;
    v15[3] = 0x8000000266971CB0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v17 = type metadata accessor for GroupIdentifier();
    return (*(*(v17 - 8) + 8))(a2, v17);
  }

  else
  {
    v22[3] = a3;
    result = UsoEntity.usoIdentifiers.getter();
    if (*(result + 16))
    {
      (*(v11 + 16))(v13, result + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v10);

      UsoIdentifier.value.getter();
      v22[1] = v19;
      (*(v11 + 8))(v13, v10);
      v20 = type metadata accessor for GroupIdentifier();
      v21 = *(v20 - 8);
      (*(v21 + 16))(v9, a2, v20);
      __swift_storeEnumTagSinglePayload(v9, 0, 1, v20);
      RREntity.init(id:appBundleId:usoEntity:dataType:data:group:)();

      return (*(v21 + 8))(a2, v20);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMd, &_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v22 - v8;
  v10 = type metadata accessor for UsoIdentifier();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UsoEntity();
  static UsoEntity.from(_:)(a1);
  if (v3)
  {
    type metadata accessor for ContactsError(0);
    lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
    swift_allocError();
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
    *v15 = _typeName(_:qualified:)();
    v15[1] = v16;
    v15[2] = 0xD00000000000001DLL;
    v15[3] = 0x8000000266971C70;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v17 = type metadata accessor for GroupIdentifier();
    return (*(*(v17 - 8) + 8))(a2, v17);
  }

  else
  {
    v22[3] = a3;
    result = UsoEntity.usoIdentifiers.getter();
    if (*(result + 16))
    {
      (*(v11 + 16))(v13, result + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v10);

      UsoIdentifier.value.getter();
      v22[1] = v19;
      (*(v11 + 8))(v13, v10);
      v20 = type metadata accessor for GroupIdentifier();
      v21 = *(v20 - 8);
      (*(v21 + 16))(v9, a2, v20);
      __swift_storeEnumTagSinglePayload(v9, 0, 1, v20);
      RREntity.init(id:appBundleId:usoEntity:dataType:data:group:)();

      return (*(v21 + 8))(a2, v20);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t outlined destroy of RREntity?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_7_24(uint64_t a1)
{
  v3 = *(v1 - 112);

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
}

uint64_t OUTLINED_FUNCTION_11_20(uint64_t a1)
{
  v3 = *(v1 - 112);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
}

uint64_t OUTLINED_FUNCTION_15_17(uint64_t a1)
{

  return UUID.init()();
}

void OUTLINED_FUNCTION_18_14(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t ContactsEmailHandle.Builder.withEmailLabel(print:speak:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v5);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;

  SpeakableString.init(print:speak:)();
  v9 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  v10 = OBJC_IVAR____TtCC19SiriContactsIntents19ContactsEmailHandle7Builder_emailLabel;
  swift_beginAccess();
  outlined assign with take of SpeakableString?(v8, v4 + v10);
  swift_endAccess();
}

uint64_t ContactsEmailHandle.Builder.__deallocating_deinit()
{
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC19SiriContactsIntents19ContactsEmailHandle7Builder_emailLabel);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC19SiriContactsIntents19ContactsEmailHandle7Builder_emailHandle);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t ContactsEmailHandle.init(builder:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v3);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v4);
  v6 = &v10[-v5];
  *(v1 + 16) = 0;
  v7 = OBJC_IVAR____TtCC19SiriContactsIntents19ContactsEmailHandle7Builder_emailLabel;
  swift_beginAccess();
  outlined init with copy of SpeakableString?(a1 + v7, v1 + OBJC_IVAR____TtC19SiriContactsIntents19ContactsEmailHandle_emailLabel);
  v8 = OBJC_IVAR____TtCC19SiriContactsIntents19ContactsEmailHandle7Builder_emailHandle;
  swift_beginAccess();
  outlined init with copy of SpeakableString?(a1 + v8, v6);

  outlined init with take of SpeakableString?(v6, v1 + OBJC_IVAR____TtC19SiriContactsIntents19ContactsEmailHandle_emailHandle);
  return v1;
}

uint64_t ContactsEmailHandle.getProperty(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = OUTLINED_FUNCTION_18_0(v7);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  v14 = a1 == 0x62614C6C69616D65 && a2 == 0xEA00000000006C65;
  if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    outlined init with copy of SpeakableString?(v3 + OBJC_IVAR____TtC19SiriContactsIntents19ContactsEmailHandle_emailLabel, v13);
    v15 = type metadata accessor for SpeakableString();
    if (__swift_getEnumTagSinglePayload(v13, 1, v15) == 1)
    {
      v16 = v13;
LABEL_8:
      result = outlined destroy of SpeakableString?(v16);
LABEL_9:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    *(a3 + 24) = v15;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(*(v15 - 8) + 32))(boxed_opaque_existential_1, v13, v15);
  }

  else
  {
    if (a1 != 0x6E61486C69616D65 || a2 != 0xEB00000000656C64)
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    outlined init with copy of SpeakableString?(v3 + OBJC_IVAR____TtC19SiriContactsIntents19ContactsEmailHandle_emailHandle, v11);
    v20 = type metadata accessor for SpeakableString();
    if (__swift_getEnumTagSinglePayload(v11, 1, v20) == 1)
    {
      v16 = v11;
      goto LABEL_8;
    }

    *(a3 + 24) = v20;
    v21 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(*(v20 - 8) + 32))(v21, v11, v20);
  }
}

uint64_t ContactsEmailHandle.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ContactsEmailHandle.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
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

uint64_t ContactsEmailHandle.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6E61486C69616D65;
  }

  else
  {
    return 0x62614C6C69616D65;
  }
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ContactsEmailHandle.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = ContactsEmailHandle.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ContactsEmailHandle.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = ContactsEmailHandle.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ContactsEmailHandle.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = ContactsEmailHandle.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ContactsEmailHandle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsEmailHandle.CodingKeys and conformance ContactsEmailHandle.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ContactsEmailHandle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsEmailHandle.CodingKeys and conformance ContactsEmailHandle.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContactsEmailHandle.deinit()
{
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC19SiriContactsIntents19ContactsEmailHandle_emailLabel);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC19SiriContactsIntents19ContactsEmailHandle_emailHandle);
  return v0;
}

uint64_t ContactsEmailHandle.__deallocating_deinit()
{
  ContactsEmailHandle.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void type metadata completion function for ContactsEmailHandle(uint64_t a1)
{
  type metadata accessor for SpeakableString?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t ContactsEmailHandle.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriContactsIntents0E11EmailHandleC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy19SiriContactsIntents0E11EmailHandleC10CodingKeysOGMR);
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ContactsEmailHandle.CodingKeys and conformance ContactsEmailHandle.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = OBJC_IVAR____TtC19SiriContactsIntents19ContactsEmailHandle_emailLabel;
  v17 = 0;
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_0_48();
  lazy protocol witness table accessor for type ContactsEmailHandle and conformance ContactsEmailHandle(v12, v13, MEMORY[0x277D55C50]);
  OUTLINED_FUNCTION_2_29(v3 + v11, &v17);
  if (!v2)
  {
    v16 = 1;
    OUTLINED_FUNCTION_2_29(v3 + OBJC_IVAR____TtC19SiriContactsIntents19ContactsEmailHandle_emailHandle, &v16);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t ContactsEmailHandle.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ContactsEmailHandle.init(from:)(a1);
  return v2;
}

id *ContactsEmailHandle.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = OUTLINED_FUNCTION_18_0(v4);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v21 = v20 - v9;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriContactsIntents0E11EmailHandleC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy19SiriContactsIntents0E11EmailHandleC10CodingKeysOGMR);
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v12);
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ContactsEmailHandle.CodingKeys and conformance ContactsEmailHandle.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {

    type metadata accessor for ContactsEmailHandle(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20[1] = v11;
    v13 = type metadata accessor for SpeakableString();
    v24 = 0;
    OUTLINED_FUNCTION_0_48();
    lazy protocol witness table accessor for type ContactsEmailHandle and conformance ContactsEmailHandle(v14, v15, MEMORY[0x277D55C60]);
    v16 = v21;
    OUTLINED_FUNCTION_6_19(v13, &v24, v22);
    outlined init with take of SpeakableString?(v16, v1 + OBJC_IVAR____TtC19SiriContactsIntents19ContactsEmailHandle_emailLabel);
    v23 = 1;
    OUTLINED_FUNCTION_6_19(v13, &v23, v22);
    v18 = OUTLINED_FUNCTION_1_25();
    v19(v18);
    outlined init with take of SpeakableString?(v8, v1 + OBJC_IVAR____TtC19SiriContactsIntents19ContactsEmailHandle_emailHandle);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v1;
}

uint64_t protocol witness for Decodable.init(from:) in conformance ContactsEmailHandle@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = ContactsEmailHandle.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ContactsEmailHandle and conformance ContactsEmailHandle(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type ContactsEmailHandle.CodingKeys and conformance ContactsEmailHandle.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ContactsEmailHandle.CodingKeys and conformance ContactsEmailHandle.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsEmailHandle.CodingKeys and conformance ContactsEmailHandle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsEmailHandle.CodingKeys and conformance ContactsEmailHandle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsEmailHandle.CodingKeys and conformance ContactsEmailHandle.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsEmailHandle.CodingKeys and conformance ContactsEmailHandle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsEmailHandle.CodingKeys and conformance ContactsEmailHandle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsEmailHandle.CodingKeys and conformance ContactsEmailHandle.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsEmailHandle.CodingKeys and conformance ContactsEmailHandle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsEmailHandle.CodingKeys and conformance ContactsEmailHandle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsEmailHandle.CodingKeys and conformance ContactsEmailHandle.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsEmailHandle.CodingKeys and conformance ContactsEmailHandle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsEmailHandle.CodingKeys and conformance ContactsEmailHandle.CodingKeys);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContactsEmailHandle.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for ContactsCommonCATsModern(uint64_t a1)
{
  result = type metadata singleton initialization cache for ContactsCommonCATsModern;
  if (!type metadata singleton initialization cache for ContactsCommonCATsModern)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ContactsCommonCATsModern.cancellationAcknowledgement()()
{
  v4 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = ContactsCommonCATsModern.cancellationAcknowledgement();
  v2 = MEMORY[0x277D84F90];

  return v4(0xD00000000000002ALL, 0x8000000266971E40, v2);
}

uint64_t ContactsCommonCATsModern.cancellationAcknowledgement()(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t ContactsCommonCATsModern.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_10_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  outlined init with copy of URL?(a1, &v15 - v12);
  (*(v7 + 16))(v10, a2, v3);
  v13 = CATWrapperSimple.init(templateDir:options:globals:)();
  (*(v7 + 8))(a2, v3);
  outlined destroy of URL?(a1);
  return v13;
}

uint64_t ContactsCommonCATsModern.__allocating_init(useResponseMode:options:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_10_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = CATWrapperSimple.init(useResponseMode:options:)();
  (*(v5 + 8))(a2, v2);
  return v9;
}

uint64_t type metadata accessor for GetContactAttributeCATsModern(uint64_t a1)
{
  result = type metadata singleton initialization cache for GetContactAttributeCATsModern;
  if (!type metadata singleton initialization cache for GetContactAttributeCATsModern)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GetContactAttributeCATsModern.disambiguateAddress(matchingHandles:alternativeHandles:requestedLabel:contact:isMe:isVoiceMode:)()
{
  OUTLINED_FUNCTION_4();
  v1[5] = v2;
  v1[6] = v0;
  OUTLINED_FUNCTION_10_30(v3, v4, v5, v2, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v8);
  v1[7] = OUTLINED_FUNCTION_10_0();
  v9 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_9_2();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_2_41();

    return v11(v10);
  }
}

uint64_t GetContactAttributeCATsModern.disambiguateAddress(matchingHandles:alternativeHandles:requestedLabel:contact:isMe:isVoiceMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_10_7();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_6_34();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_27_1(v13);
  v15 = OUTLINED_FUNCTION_29_12(v14);
  OUTLINED_FUNCTION_0_13(v15, xmmword_266967D10);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriContactsIntents0B13AddressHandleCGMd, &_sSay19SiriContactsIntents0B13AddressHandleCGMR);
  v17 = OUTLINED_FUNCTION_0_49(v16, "alternativeHandles");
  OUTLINED_FUNCTION_41_9(v17, v18, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v19 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_38(v19);
  if (v20)
  {

    outlined destroy of ResponseMode?(v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31_8();
  }

  else
  {
    OUTLINED_FUNCTION_40_5();
    OUTLINED_FUNCTION_12_11();
    OUTLINED_FUNCTION_30_10();
    v21();
  }

  OUTLINED_FUNCTION_2_46();
  if (v10)
  {
    type metadata accessor for DialogPerson();
  }

  else
  {
    *(v12 + 200) = 0;
    *(v12 + 208) = 0;
  }

  OUTLINED_FUNCTION_36_9();
  OUTLINED_FUNCTION_17_15(v22);
  OUTLINED_FUNCTION_8_27(v23);
  OUTLINED_FUNCTION_11_3();
  v24 = swift_task_alloc();
  v25 = OUTLINED_FUNCTION_18_15(v24);
  *v25 = v26;
  OUTLINED_FUNCTION_33_9(v25);
  OUTLINED_FUNCTION_9_26();
  OUTLINED_FUNCTION_8_6();

  return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
}

uint64_t GetContactAttributeCATsModern.disambiguateEmail(matchingHandles:alternativeHandles:requestedLabel:contact:isMe:isVoiceMode:)()
{
  OUTLINED_FUNCTION_4();
  v1[5] = v2;
  v1[6] = v0;
  OUTLINED_FUNCTION_10_30(v3, v4, v5, v2, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v8);
  v1[7] = OUTLINED_FUNCTION_10_0();
  v9 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_9_2();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_2_41();

    return v11(v10);
  }
}

{
  OUTLINED_FUNCTION_4();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t GetContactAttributeCATsModern.disambiguateEmail(matchingHandles:alternativeHandles:requestedLabel:contact:isMe:isVoiceMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_10_7();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_6_34();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_27_1(v13);
  v15 = OUTLINED_FUNCTION_29_12(v14);
  OUTLINED_FUNCTION_0_13(v15, xmmword_266967D10);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriContactsIntents0B11EmailHandleCGMd, &_sSay19SiriContactsIntents0B11EmailHandleCGMR);
  v17 = OUTLINED_FUNCTION_0_49(v16, "alternativeHandles");
  OUTLINED_FUNCTION_41_9(v17, v18, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v19 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_38(v19);
  if (v20)
  {

    outlined destroy of ResponseMode?(v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31_8();
  }

  else
  {
    OUTLINED_FUNCTION_40_5();
    OUTLINED_FUNCTION_12_11();
    OUTLINED_FUNCTION_30_10();
    v21();
  }

  OUTLINED_FUNCTION_2_46();
  if (v10)
  {
    type metadata accessor for DialogPerson();
  }

  else
  {
    *(v12 + 200) = 0;
    *(v12 + 208) = 0;
  }

  OUTLINED_FUNCTION_36_9();
  OUTLINED_FUNCTION_17_15(v22);
  OUTLINED_FUNCTION_8_27(v23);
  OUTLINED_FUNCTION_11_3();
  v24 = swift_task_alloc();
  v25 = OUTLINED_FUNCTION_18_15(v24);
  *v25 = v26;
  OUTLINED_FUNCTION_33_9(v25);
  OUTLINED_FUNCTION_9_26();
  OUTLINED_FUNCTION_8_6();

  return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
}

uint64_t GetContactAttributeCATsModern.disambiguatePhone(matchingHandles:alternativeHandles:requestedLabel:contact:isMe:isVoiceMode:)()
{
  OUTLINED_FUNCTION_4();
  v1[5] = v2;
  v1[6] = v0;
  OUTLINED_FUNCTION_10_30(v3, v4, v5, v2, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v8);
  v1[7] = OUTLINED_FUNCTION_10_0();
  v9 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t GetContactAttributeCATsModern.disambiguatePhone(matchingHandles:alternativeHandles:requestedLabel:contact:isMe:isVoiceMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_10_7();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_6_34();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_27_1(v13);
  v15 = OUTLINED_FUNCTION_29_12(v14);
  OUTLINED_FUNCTION_0_13(v15, xmmword_266967D10);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriContactsIntents0B11PhoneHandleCGMd, &_sSay19SiriContactsIntents0B11PhoneHandleCGMR);
  v17 = OUTLINED_FUNCTION_0_49(v16, "alternativeHandles");
  OUTLINED_FUNCTION_41_9(v17, v18, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v19 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_38(v19);
  if (v20)
  {

    outlined destroy of ResponseMode?(v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31_8();
  }

  else
  {
    OUTLINED_FUNCTION_40_5();
    OUTLINED_FUNCTION_12_11();
    OUTLINED_FUNCTION_30_10();
    v21();
  }

  OUTLINED_FUNCTION_2_46();
  if (v10)
  {
    type metadata accessor for DialogPerson();
  }

  else
  {
    *(v12 + 200) = 0;
    *(v12 + 208) = 0;
  }

  OUTLINED_FUNCTION_36_9();
  OUTLINED_FUNCTION_17_15(v22);
  OUTLINED_FUNCTION_8_27(v23);
  OUTLINED_FUNCTION_11_3();
  v24 = swift_task_alloc();
  v25 = OUTLINED_FUNCTION_18_15(v24);
  *v25 = v26;
  OUTLINED_FUNCTION_33_9(v25);
  OUTLINED_FUNCTION_9_26();
  OUTLINED_FUNCTION_8_6();

  return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
}

uint64_t GetContactAttributeCATsModern.intentHandledShowAddress(matchingHandles:alternativeHandles:requestedLabel:contact:isMe:hasSameLabels:isVoiceMode:)()
{
  OUTLINED_FUNCTION_4();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 90) = v3;
  OUTLINED_FUNCTION_10_30(v4, v5, v6, v2, v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v9);
  *(v1 + 56) = OUTLINED_FUNCTION_10_0();
  v10 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t GetContactAttributeCATsModern.intentHandledShowAddress(matchingHandles:alternativeHandles:requestedLabel:contact:isMe:hasSameLabels:isVoiceMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_10_7();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_6_34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = swift_allocObject();
  v14 = OUTLINED_FUNCTION_29_12(v13);
  OUTLINED_FUNCTION_0_13(v14, xmmword_266967D20);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriContactsIntents0B13AddressHandleCGMd, &_sSay19SiriContactsIntents0B13AddressHandleCGMR);
  v16 = OUTLINED_FUNCTION_0_49(v15, "alternativeHandles");
  OUTLINED_FUNCTION_41_9(v16, v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v18 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_38(v18);
  if (v19)
  {

    outlined destroy of ResponseMode?(v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31_8();
  }

  else
  {
    OUTLINED_FUNCTION_40_5();
    OUTLINED_FUNCTION_12_11();
    OUTLINED_FUNCTION_30_10();
    v20();
  }

  OUTLINED_FUNCTION_2_46();
  if (v10)
  {
    type metadata accessor for DialogPerson();
  }

  else
  {
    *(v12 + 200) = 0;
    *(v12 + 208) = 0;
  }

  OUTLINED_FUNCTION_43_7();
  OUTLINED_FUNCTION_34_8(v21);
  v22 = MEMORY[0x277D839B0];
  *(v12 + 240) = v23;
  *(v12 + 264) = v22;
  strcpy((v12 + 272), "hasSameLabels");
  *(v12 + 286) = -4864;
  *(v12 + 288) = v24;
  OUTLINED_FUNCTION_11_21();
  *(v12 + 312) = v26;
  *(v12 + 320) = v25;
  OUTLINED_FUNCTION_16_14();
  *(v12 + 328) = v27;
  *(v12 + 360) = v28;
  OUTLINED_FUNCTION_24_12();
  *(v12 + 336) = v29;

  v30 = swift_task_alloc();
  v31 = OUTLINED_FUNCTION_18_15(v30);
  *v31 = v32;
  OUTLINED_FUNCTION_33_9(v31);
  OUTLINED_FUNCTION_9_26();
  OUTLINED_FUNCTION_8_6();

  return v36(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10);
}

uint64_t GetContactAttributeCATsModern.intentHandledShowAge(birthdayInfo:ageInfo:contact:isMe:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 72) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = OUTLINED_FUNCTION_3_1();
  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t GetContactAttributeCATsModern.intentHandledShowAge(birthdayInfo:ageInfo:contact:isMe:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_10_7();
  OUTLINED_FUNCTION_28();
  v11 = *(v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v12 = swift_allocObject();
  *(v10 + 48) = v12;
  OUTLINED_FUNCTION_16_3(v12, xmmword_266967350);
  if (v11)
  {
    v13 = type metadata accessor for DialogCalendar();
    v14 = v11;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_13_3();
    v12[3].n128_u64[1] = 0;
    v12[4].n128_u64[0] = 0;
  }

  v15 = *(v10 + 24);
  v12[3].n128_u64[0] = v14;
  v12[4].n128_u64[1] = v13;
  v12[5].n128_u64[0] = 0x6F666E49656761;
  v12[5].n128_u64[1] = 0xE700000000000000;
  if (v15)
  {
    type metadata accessor for ContactsAgeInfo();
    v16 = v15;
  }

  else
  {
    OUTLINED_FUNCTION_13_3();
    v12[6].n128_u64[1] = 0;
    v12[7].n128_u64[0] = 0;
  }

  v17 = *(v10 + 32);
  v12[6].n128_u64[0] = v16;
  OUTLINED_FUNCTION_2_14();
  v12[7].n128_u64[1] = v18;
  v12[8].n128_u64[0] = v19;
  v12[8].n128_u64[1] = 0xE700000000000000;
  v20 = 0;
  if (v17)
  {
    v20 = type metadata accessor for DialogPerson();
  }

  else
  {
    v12[9].n128_u64[1] = 0;
    v12[10].n128_u64[0] = 0;
  }

  v21 = *(v10 + 72);
  v12[9].n128_u64[0] = v17;
  v12[10].n128_u64[1] = v20;
  v12[11].n128_u64[0] = 1699574633;
  v12[11].n128_u64[1] = 0xE400000000000000;
  v12[13].n128_u64[1] = MEMORY[0x277D839B0];
  v12[12].n128_u8[0] = v21;
  v32 = *MEMORY[0x277D55C70] + MEMORY[0x277D55C70];

  v22 = swift_task_alloc();
  *(v10 + 56) = v22;
  *v22 = v10;
  v22[1] = GetContactAttributeCATsModern.intentHandledShowAge(birthdayInfo:ageInfo:contact:isMe:);
  OUTLINED_FUNCTION_8_6();

  return v26(v23, v24, v25, v26, v27, v28, v29, v30, v32, a10);
}

uint64_t GetContactAttributeCATsModern.intentHandledShowAge(birthdayInfo:ageInfo:contact:isMe:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_9_2();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_2_3();

    return v11(v10);
  }
}

{
  OUTLINED_FUNCTION_4();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t GetContactAttributeCATsModern.intentHandledShowBirthday(birthdayInfo:contact:isMe:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  v5 = OUTLINED_FUNCTION_3_1();
  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t GetContactAttributeCATsModern.intentHandledShowBirthday(birthdayInfo:contact:isMe:)()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  OUTLINED_FUNCTION_16_3(v2, xmmword_266966D80);
  if (v1)
  {
    type metadata accessor for DialogCalendar();
    v3 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_13_3();
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v4 = *(v0 + 24);
  v2[3].n128_u64[0] = v3;
  OUTLINED_FUNCTION_2_14();
  v2[4].n128_u64[1] = v5;
  v2[5].n128_u64[0] = v6;
  v2[5].n128_u64[1] = 0xE700000000000000;
  v7 = 0;
  if (v4)
  {
    v7 = type metadata accessor for DialogPerson();
  }

  else
  {
    v2[6].n128_u64[1] = 0;
    v2[7].n128_u64[0] = 0;
  }

  v8 = *(v0 + 64);
  v2[6].n128_u64[0] = v4;
  v2[7].n128_u64[1] = v7;
  v2[8].n128_u64[0] = 1699574633;
  v2[8].n128_u64[1] = 0xE400000000000000;
  v2[10].n128_u64[1] = MEMORY[0x277D839B0];
  v2[9].n128_u8[0] = v8;
  v11 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v9 = swift_task_alloc();
  *(v0 + 48) = v9;
  *v9 = v0;
  v9[1] = GetContactAttributeCATsModern.intentHandledShowBirthday(birthdayInfo:contact:isMe:);

  return v11(0xD00000000000002DLL, 0x800000026696F770, v2);
}

{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_9_2();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_2_3();

    return v11(v10);
  }
}

uint64_t GetContactAttributeCATsModern.intentHandledShowCompany(isMe:companyName:contact:)()
{
  OUTLINED_FUNCTION_4();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 16) = v3;
  *(v1 + 72) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v5);
  *(v1 + 40) = OUTLINED_FUNCTION_10_0();
  v6 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = swift_allocObject();
  *(v0 + 48) = v4;
  *(v4 + 16) = xmmword_266966D80;
  *(v4 + 32) = 1699574633;
  *(v4 + 40) = 0xE400000000000000;
  v5 = MEMORY[0x277D839B0];
  *(v4 + 48) = v3;
  *(v4 + 72) = v5;
  *(v4 + 80) = 0x4E796E61706D6F63;
  *(v4 + 88) = 0xEB00000000656D61;
  _s10Foundation3URLVSgWOcTm_1(v2, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v1, 1, v6) == 1)
  {
    outlined destroy of ResponseMode?(*(v0 + 40), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v6;
    __swift_allocate_boxed_opaque_existential_1((v4 + 96));
    OUTLINED_FUNCTION_52();
    (*(v7 + 32))();
  }

  v8 = *(v0 + 24);
  OUTLINED_FUNCTION_1_13();
  *(v4 + 128) = v9;
  *(v4 + 136) = v10;
  v11 = 0;
  if (v8)
  {
    v11 = type metadata accessor for DialogPerson();
  }

  else
  {
    *(v4 + 152) = 0;
    *(v4 + 160) = 0;
  }

  *(v4 + 144) = v8;
  *(v4 + 168) = v11;
  OUTLINED_FUNCTION_11_3();
  v12 = swift_task_alloc();
  *(v0 + 56) = v12;
  *v12 = v0;
  v12[1] = GetContactAttributeCATsModern.intentHandledShowCompany(isMe:companyName:contact:);

  return v14(0xD00000000000002CLL, 0x800000026696F6E0, v4);
}

{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_9_2();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_2_41();

    return v11(v10);
  }
}

uint64_t GetContactAttributeCATsModern.intentHandledShowEmail(matchingHandles:alternativeHandles:requestedLabel:contact:isMe:hasSameLabels:isVoiceMode:)()
{
  OUTLINED_FUNCTION_4();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 90) = v3;
  OUTLINED_FUNCTION_10_30(v4, v5, v6, v2, v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v9);
  *(v1 + 56) = OUTLINED_FUNCTION_10_0();
  v10 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t GetContactAttributeCATsModern.intentHandledShowEmail(matchingHandles:alternativeHandles:requestedLabel:contact:isMe:hasSameLabels:isVoiceMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_10_7();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_6_34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = swift_allocObject();
  v14 = OUTLINED_FUNCTION_29_12(v13);
  OUTLINED_FUNCTION_0_13(v14, xmmword_266967D20);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriContactsIntents0B11EmailHandleCGMd, &_sSay19SiriContactsIntents0B11EmailHandleCGMR);
  v16 = OUTLINED_FUNCTION_0_49(v15, "alternativeHandles");
  OUTLINED_FUNCTION_41_9(v16, v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v18 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_38(v18);
  if (v19)
  {

    outlined destroy of ResponseMode?(v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31_8();
  }

  else
  {
    OUTLINED_FUNCTION_40_5();
    OUTLINED_FUNCTION_12_11();
    OUTLINED_FUNCTION_30_10();
    v20();
  }

  OUTLINED_FUNCTION_2_46();
  if (v10)
  {
    type metadata accessor for DialogPerson();
  }

  else
  {
    *(v12 + 200) = 0;
    *(v12 + 208) = 0;
  }

  OUTLINED_FUNCTION_43_7();
  OUTLINED_FUNCTION_34_8(v21);
  v22 = MEMORY[0x277D839B0];
  *(v12 + 240) = v23;
  *(v12 + 264) = v22;
  strcpy((v12 + 272), "hasSameLabels");
  *(v12 + 286) = -4864;
  *(v12 + 288) = v24;
  OUTLINED_FUNCTION_11_21();
  *(v12 + 312) = v26;
  *(v12 + 320) = v25;
  OUTLINED_FUNCTION_16_14();
  *(v12 + 328) = v27;
  *(v12 + 360) = v28;
  OUTLINED_FUNCTION_24_12();
  *(v12 + 336) = v29;

  v30 = swift_task_alloc();
  v31 = OUTLINED_FUNCTION_18_15(v30);
  *v31 = v32;
  OUTLINED_FUNCTION_33_9(v31);
  OUTLINED_FUNCTION_9_26();
  OUTLINED_FUNCTION_8_6();

  return v36(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10);
}

uint64_t GetContactAttributeCATsModern.intentHandledShowName(nicknameRequest:lastNameRequest:nameValue:contact:isMe:)()
{
  OUTLINED_FUNCTION_4();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 82) = v3;
  *(v1 + 16) = v4;
  *(v1 + 81) = v5;
  *(v1 + 80) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v7);
  *(v1 + 40) = swift_task_alloc();
  *(v1 + 48) = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_9_2();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_2_41();

    return v11(v10);
  }
}

{
  OUTLINED_FUNCTION_4();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t GetContactAttributeCATsModern.intentHandledShowName(nicknameRequest:lastNameRequest:nameValue:contact:isMe:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_10_7();
  OUTLINED_FUNCTION_28();
  v11 = *(v10 + 48);
  v12 = *(v10 + 16);
  v13 = *(v10 + 81);
  v14 = *(v10 + 80);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v16 = OUTLINED_FUNCTION_27_1(v15);
  *(v10 + 56) = v16;
  *(v16 + 16) = xmmword_266967D10;
  v17 = MEMORY[0x277D839B0];
  *(v16 + 32) = 0x656D616E6B63696ELL;
  *(v16 + 40) = 0xEF74736575716552;
  *(v16 + 48) = v14;
  *(v16 + 72) = v17;
  *(v16 + 80) = 0x656D614E7473616CLL;
  *(v16 + 88) = 0xEF74736575716552;
  *(v16 + 96) = v13;
  *(v16 + 120) = v17;
  *(v16 + 128) = 0x756C6156656D616ELL;
  *(v16 + 136) = 0xE900000000000065;
  _s10Foundation3URLVSgWOcTm_1(v12, v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v18 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v11, 1, v18) == 1)
  {
    outlined destroy of ResponseMode?(*(v10 + 48), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v16 + 144) = 0u;
    *(v16 + 160) = 0u;
  }

  else
  {
    *(v16 + 168) = v18;
    __swift_allocate_boxed_opaque_existential_1((v16 + 144));
    OUTLINED_FUNCTION_52();
    (*(v19 + 32))();
  }

  v20 = *(v10 + 24);
  OUTLINED_FUNCTION_1_13();
  *(v16 + 176) = v21;
  *(v16 + 184) = v22;
  if (v20)
  {
    v23 = type metadata accessor for DialogPerson();
    v24 = v20;
  }

  else
  {
    v23 = OUTLINED_FUNCTION_13_3();
    *(v16 + 200) = 0;
    *(v16 + 208) = 0;
  }

  v25 = *(v10 + 82);
  *(v16 + 192) = v24;
  *(v16 + 216) = v23;
  *(v16 + 224) = 1699574633;
  *(v16 + 232) = 0xE400000000000000;
  *(v16 + 240) = v25;
  *(v16 + 264) = v17;
  strcpy((v16 + 272), "nicknameValue");
  *(v16 + 286) = -4864;
  if (!v20)
  {
    goto LABEL_10;
  }

  v26 = *(v10 + 40);

  DialogPerson.nickname.getter();
  if (__swift_getEnumTagSinglePayload(v26, 1, v18) == 1)
  {
    outlined destroy of ResponseMode?(*(v10 + 40), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
LABEL_10:
    *(v16 + 288) = 0u;
    *(v16 + 304) = 0u;
    goto LABEL_12;
  }

  *(v16 + 312) = v18;
  __swift_allocate_boxed_opaque_existential_1((v16 + 288));
  OUTLINED_FUNCTION_52();
  (*(v27 + 32))();
LABEL_12:
  v38 = *MEMORY[0x277D55C70] + MEMORY[0x277D55C70];
  v28 = swift_task_alloc();
  *(v10 + 64) = v28;
  *v28 = v10;
  v28[1] = GetContactAttributeCATsModern.intentHandledShowName(nicknameRequest:lastNameRequest:nameValue:contact:isMe:);
  OUTLINED_FUNCTION_8_6();

  return v32(v29, v30, v31, v32, v33, v34, v35, v36, v38, a10);
}

uint64_t GetContactAttributeCATsModern.intentHandledShowPhone(matchingHandles:alternativeHandles:requestedLabel:contact:isMe:hasSameLabels:hasAnyMatchingLabels:isVoiceMode:)()
{
  OUTLINED_FUNCTION_4();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 91) = v3;
  *(v1 + 90) = v4;
  OUTLINED_FUNCTION_10_30(v5, v6, v7, v2, v8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v10);
  *(v1 + 56) = OUTLINED_FUNCTION_10_0();
  v11 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t GetContactAttributeCATsModern.intentHandledShowPhone(matchingHandles:alternativeHandles:requestedLabel:contact:isMe:hasSameLabels:hasAnyMatchingLabels:isVoiceMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_10_7();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_6_34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = swift_allocObject();
  v16 = OUTLINED_FUNCTION_29_12(v15);
  OUTLINED_FUNCTION_0_13(v16, xmmword_26696C180);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriContactsIntents0B11PhoneHandleCGMd, &_sSay19SiriContactsIntents0B11PhoneHandleCGMR);
  v18 = OUTLINED_FUNCTION_0_49(v17, "alternativeHandles");
  OUTLINED_FUNCTION_41_9(v18, v19, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v20 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_38(v20);
  if (v21)
  {

    outlined destroy of ResponseMode?(v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31_8();
  }

  else
  {
    OUTLINED_FUNCTION_40_5();
    OUTLINED_FUNCTION_12_11();
    OUTLINED_FUNCTION_30_10();
    v22();
  }

  v23 = OUTLINED_FUNCTION_2_46();
  if (v10)
  {
    v23 = type metadata accessor for DialogPerson();
  }

  else
  {
    *(v13 + 200) = 0;
    *(v13 + 208) = 0;
  }

  v24 = v12[90];
  v25 = v12[89];
  v26 = v12[88];
  *(v13 + 192) = v10;
  *(v13 + 216) = v23;
  *(v13 + 224) = 1699574633;
  *(v13 + 232) = 0xE400000000000000;
  v27 = MEMORY[0x277D839B0];
  *(v13 + 240) = v26;
  *(v13 + 264) = v27;
  strcpy((v13 + 272), "hasSameLabels");
  *(v13 + 286) = -4864;
  *(v13 + 288) = v25;
  *(v13 + 312) = v27;
  *(v13 + 320) = v14 + 2;
  *(v13 + 328) = 0x8000000266971EB0;
  *(v13 + 336) = v24;
  OUTLINED_FUNCTION_11_21();
  *(v13 + 360) = v29;
  *(v13 + 368) = v28;
  OUTLINED_FUNCTION_16_14();
  *(v13 + 376) = v30;
  *(v13 + 408) = v31;
  OUTLINED_FUNCTION_24_12();
  *(v13 + 384) = v32;

  v33 = swift_task_alloc();
  v34 = OUTLINED_FUNCTION_18_15(v33);
  *v34 = v35;
  OUTLINED_FUNCTION_33_9(v34);
  OUTLINED_FUNCTION_9_26();
  OUTLINED_FUNCTION_8_6();

  return v39(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10);
}

uint64_t GetContactAttributeCATsModern.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_10_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v12 = OUTLINED_FUNCTION_18_0(v11);
  MEMORY[0x28223BE20](v12);
  _s10Foundation3URLVSgWOcTm_1(a1, &v16 - v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v7 + 16))(v10, a2, v3);
  v14 = CATWrapperSimple.init(templateDir:options:globals:)();
  (*(v7 + 8))(a2, v3);
  outlined destroy of ResponseMode?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v14;
}

uint64_t GetContactAttributeCATsModern.__allocating_init(useResponseMode:options:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_10_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = CATWrapperSimple.init(useResponseMode:options:)();
  (*(v5 + 8))(a2, v2);
  return v9;
}

uint64_t OUTLINED_FUNCTION_0_49@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v4 + 48) = v3;
  *(v4 + 72) = result;
  *(v4 + 80) = v5;
  *(v4 + 88) = (a2 - 32) | 0x8000000000000000;
  *(v4 + 96) = v2;
  *(v4 + 120) = result;
  strcpy((v4 + 128), "requestedLabel");
  *(v4 + 143) = -18;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_46()
{
  *(v0 + 176) = 0x746361746E6F63;
  *(v0 + 184) = 0xE700000000000000;
  return 0;
}

void OUTLINED_FUNCTION_8_27(char a1@<W8>)
{
  *(v3 + 240) = v1;
  *(v3 + 264) = v2;
  *(v3 + 272) = 0x4D6563696F567369;
  *(v3 + 280) = 0xEB0000000065646FLL;
  *(v3 + 312) = v2;
  *(v3 + 288) = a1;
}

uint64_t OUTLINED_FUNCTION_10_30(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v6 + 89) = a6;
  *(v6 + 88) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_15(uint64_t result)
{
  v1[27] = result;
  v1[28] = 1699574633;
  v1[29] = 0xE400000000000000;
  return result;
}

double OUTLINED_FUNCTION_31_8()
{
  result = 0.0;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_34_8(uint64_t result)
{
  v1[27] = result;
  v1[28] = 1699574633;
  v1[29] = 0xE400000000000000;
  return result;
}

uint64_t *OUTLINED_FUNCTION_40_5()
{
  *(v1 + 168) = v0;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 144));
}

uint64_t OUTLINED_FUNCTION_41_9(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return _s10Foundation3URLVSgWOcTm_1(v5, v4, a3, a4);
}

uint64_t one-time initialization function for siriContacts()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.siriContacts);
  __swift_project_value_buffer(v0, static Logger.siriContacts);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.siriContacts.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for siriContacts != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.siriContacts);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

_BYTE *storeEnumTagSinglePayload for Logger(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t GetContactAttributeViewBuilder.makeViewsForWatch()()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v31[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.siriContacts);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_31(v10))
  {
    *OUTLINED_FUNCTION_30() = 0;
    OUTLINED_FUNCTION_27(&dword_26686A000, v11, v12, "#GetContactAttributeViewBuilder Constructing view for watchOS.");
    OUTLINED_FUNCTION_6();
  }

  v13 = v1[9];
  outlined init with copy of DeviceState((v1 + 4), v34);
  v34[8] = &type metadata for InstalledAppsProvider;
  v34[9] = &protocol witness table for InstalledAppsProvider;
  v33 = v13;
  v14 = *v1;
  v15 = v1[1];
  v16 = v1[3];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v1[7]);

  dispatch thunk of DeviceState.siriLocale.getter();
  v32[2] = Locale.identifier.getter();
  v32[3] = v17;
  v32[0] = 45;
  v32[1] = 0xE100000000000000;
  v31[0] = 95;
  v31[1] = 0xE100000000000000;
  v18 = lazy protocol witness table accessor for type String and conformance String();
  v24 = OUTLINED_FUNCTION_1_45(v32, v31, v19, v20, v21, v22, MEMORY[0x277D837D0], v23, MEMORY[0x277D837D0], v18, v18, v18);
  v26 = v25;

  (*(v4 + 8))(v7, v2);
  v27 = WatchViews.buildGetAttributeSnippet(handles:contact:contactAttribute:localeString:)(v14, v15, v16, v24, v26);

  outlined destroy of WatchViews(&v33);
  if (!v27)
  {
    return MEMORY[0x277D84F90];
  }

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  result = OUTLINED_FUNCTION_4_21(v28);
  *(result + 16) = xmmword_266966A40;
  *(result + 32) = v27;
  return result;
}

uint64_t GetContactAttributeViewBuilder.makeViewsForMac()()
{
  v1 = v0;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriContacts);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_31(v4))
  {
    v5 = OUTLINED_FUNCTION_30();
    *v5 = 0;
    _os_log_impl(&dword_26686A000, v3, v4, "#GetContactAttributeViewBuilder Constructing PersonSnippet with display properties for macOS.", v5, 2u);
    OUTLINED_FUNCTION_6();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v7 = OUTLINED_FUNCTION_4_21(v6);
  *(v7 + 16) = xmmword_266966A40;
  type metadata accessor for SAABPersonSnippet();
  v8 = *(v1 + 24);
  v9 = *(v1 + 8);
  v10 = [v8 contactAttributeType];
  v11 = *(v1 + 16);
  v14 = &type metadata for InstalledAppsProvider;
  v15 = &protocol witness table for InstalledAppsProvider;
  *(v7 + 32) = SAABPersonSnippet.init(contact:attributeType:isMe:appUtil:)(v9, v10, v11, v13);
  return v7;
}

uint64_t GetContactAttributeViewBuilder.makeViewsForCarPlay()(const char *a1)
{
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriContacts);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_31(v4))
  {
    v5 = OUTLINED_FUNCTION_30();
    *v5 = 0;
    _os_log_impl(&dword_26686A000, v3, v4, a1, v5, 2u);
    OUTLINED_FUNCTION_6();
  }

  return MEMORY[0x277D84F90];
}

uint64_t GetContactAttributeViewBuilder.makeViewsForIOS()()
{
  v1 = v0;
  v26 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v27[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.siriContacts);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_31(v9))
  {
    *OUTLINED_FUNCTION_30() = 0;
    OUTLINED_FUNCTION_27(&dword_26686A000, v10, v11, "#GetContactAttributeViewBuilder Constructing compact view for iOS.");
    OUTLINED_FUNCTION_6();
  }

  v12 = *(v1 + 72);
  v29[4] = &type metadata for InstalledAppsProvider;
  v29[5] = &protocol witness table for InstalledAppsProvider;
  v29[0] = v12;
  v29[6] = 0;
  v13 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1((v1 + 32), *(v1 + 56));

  dispatch thunk of DeviceState.siriLocale.getter();
  v28[2] = Locale.identifier.getter();
  v28[3] = v14;
  v28[0] = 45;
  v28[1] = 0xE100000000000000;
  v27[0] = 95;
  v27[1] = 0xE100000000000000;
  v15 = lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_1_45(v28, v27, v16, v17, v18, v19, MEMORY[0x277D837D0], v20, MEMORY[0x277D837D0], v15, v15, v15);

  (*(v3 + 8))(v6, v26);
  CompactViews.buildGetAttributeSnippet(handles:contact:contactAttribute:localeString:)();
  v22 = v21;

  outlined destroy of CompactViews(v29);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v24 = OUTLINED_FUNCTION_4_21(v23);
  *(v24 + 16) = xmmword_266966A40;
  if (v22)
  {
    *(v24 + 32) = v22;
  }

  else
  {
    type metadata accessor for SAABPersonSnippet();
    *(v24 + 32) = SAABPersonSnippet.init(_:isMe:)(v13, *(v1 + 16));
  }

  return v24;
}

unint64_t type metadata accessor for SAABPersonSnippet()
{
  result = lazy cache variable for type metadata for SAABPersonSnippet;
  if (!lazy cache variable for type metadata for SAABPersonSnippet)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SAABPersonSnippet);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GetContactAttributeViewBuilder(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GetContactAttributeViewBuilder(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_45(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
}

double specialized SiriKitContactIntent.value(forSlot:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 24))(v4, v5);
  v7 = MEMORY[0x26D5E2470](v6);

  v8 = [v2 valueForKey_];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t specialized ContactsNeedsValueStrategy.needsValueOutput(templateResult:nlContextUpdate:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v8 - v4;
  v6 = type metadata accessor for NLContextUpdate();
  (*(*(v6 - 8) + 16))(v5, a2, v6);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v8, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  return outlined destroy of UsoEntity_common_Person.DefinedValues?(v5, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
}

id _s19SiriContactsIntents39ModifyContactAttributeStrategyProvidingPAAE010getRelatedE06intent14contactServiceSo9CNContactCAA0deF6IntentC_AA0eM8Protocol_ptFAA0def16UnsupportedValueG0C_Tt1g5Tm(void *a1, void *a2)
{
  v4 = [a1 relatedSiriMatches];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for SiriMatch();
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
    v7 = (v6 & 0xC000000000000001) != 0 ? MEMORY[0x26D5E29D0](0, v6) : *(v6 + 32);
    v8 = v7;

    v9 = [v8 identifier];

    if (v9)
    {
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = a2[3];
      v14 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v13);
      v19 = (*(v14 + 8))(v10, v12, v13, v14);

      if (v19)
      {
        return v19;
      }
    }
  }

  v15 = [a1 relatedContact];
  if (v15)
  {
    v16 = v15;
    type metadata accessor for CNContact();
    return CNContact.init(from:)(v16);
  }

  else
  {
    v18 = objc_allocWithZone(MEMORY[0x277CBDA58]);

    return [v18 init];
  }
}

uint64_t ModifyContactAttributeNeedsValueStrategy.parseValueResponse(input:resolveRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v5 = type metadata accessor for Parse();
  v1[13] = v5;
  OUTLINED_FUNCTION_1_1(v5);
  v1[14] = v6;
  v1[15] = OUTLINED_FUNCTION_10_0();
  v7 = type metadata accessor for ParameterIdentifier();
  v1[16] = v7;
  OUTLINED_FUNCTION_1_1(v7);
  v1[17] = v8;
  v1[18] = OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_39();
  v26 = v0;
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  *(v0 + 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents28ModifyContactAttributeIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents28ModifyContactAttributeIntentCGMR);
  ParameterResolutionRecord.parameter.getter();
  v4 = ParameterIdentifier.name.getter();
  v6 = v5;
  (*(v2 + 8))(v1, v3);

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  v8.value = ModifyContactAttributeSlots.init(rawValue:)(v7).value;
  *(v0 + 66) = v8;
  if (v8.value == SiriContactsIntents_ModifyContactAttributeSlots_unknownDefault)
  {
    type metadata accessor for ContactsError(0);
    v9 = lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
    OUTLINED_FUNCTION_15_1(v9);
    *v10 = v4;
    v10[1] = v6;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    OUTLINED_FUNCTION_3();

    return v11();
  }

  else
  {
    value = v8.value;

    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    *(v0 + 160) = __swift_project_value_buffer(v14, static Logger.siriContacts);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_33_2();
      v25[0] = swift_slowAlloc();
      *v17 = 136315394;
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000266970710, v25);
      *(v17 + 12) = 2080;
      *(v0 + 65) = value;
      v18 = String.init<A>(describing:)();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v25);

      *(v17 + 14) = v20;
      _os_log_impl(&dword_26686A000, v15, v16, "[%s] Slot: %s", v17, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    v21 = *(v0 + 96);
    Input.parse.getter();
    v22 = ParameterResolutionRecord.intent.getter();
    *(v0 + 168) = v22;
    swift_task_alloc();
    OUTLINED_FUNCTION_36_0();
    *(v0 + 176) = v23;
    *v23 = v24;
    v23[1] = ModifyContactAttributeNeedsValueStrategy.parseValueResponse(input:resolveRecord:);

    return Parse.toSiriKitIntent(referenceResolver:previousIntent:)(v21 + 192, v22, &protocol witness table for ModifyContactAttributeIntent);
  }
}

{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_12_0();
  *v2 = v1;
  v4 = v3[21];
  v5 = v3[15];
  v6 = v3[14];
  v7 = v3[13];
  v8 = *v0;
  OUTLINED_FUNCTION_0();
  *v9 = v8;
  *(v11 + 184) = v10;

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t ModifyContactAttributeNeedsValueStrategy.parseValueResponse(input:resolveRecord:)(uint64_t a1)
{
  v100 = v1;
  v2 = *(v1 + 184);
  if (!v2)
  {
    goto LABEL_11;
  }

  type metadata accessor for ModifyContactAttributeIntent();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {

LABEL_11:
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = OUTLINED_FUNCTION_33_2();
      v35 = swift_slowAlloc();
      *&v99[0] = v35;
      *v34 = 136315394;
      v42 = OUTLINED_FUNCTION_8_28(v35, 0x8000000266970710, v36, v37, v38, v39, v40, v41, *&v99[0]);
      *(v34 + 4) = v42;
      *(v34 + 12) = 2080;
      *(v34 + 14) = OUTLINED_FUNCTION_8_28(v42, 0x8000000266970710, v43, v44, v45, v46, v47, v48, *&v99[0]);
      _os_log_impl(&dword_26686A000, v32, v33, "[%s] failed to convert parse to expected intent type %s, returning empty answeredValue and same intent", v34, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_7_25();
    memset(v99, 0, sizeof(v99));
    ParameterResolutionRecord.intent.getter();
    type metadata accessor for ModifyContactAttributeIntent();
    goto LABEL_14;
  }

  v4 = v3;
  v5 = v2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  v8 = &off_266966000;
  if (os_log_type_enabled(v6, v7))
  {
    v9 = OUTLINED_FUNCTION_33_2();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v99[0] = v11;
    *v9 = 136315394;
    v8 = &off_266966000;
    *(v9 + 4) = OUTLINED_FUNCTION_8_28(v11, 0x8000000266970710, v12, v13, v14, v15, v16, v17, *&v99[0]);
    *(v9 + 12) = 2112;
    *(v9 + 14) = v4;
    *v10 = v4;
    v18 = v5;
    _os_log_impl(&dword_26686A000, v6, v7, "[%s] SiriKit Intent:     %@", v9, 0x16u);
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_6();
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v19 = *(v1 + 66);
  OUTLINED_FUNCTION_7_25();
  v20 = ParameterResolutionRecord.intent.getter();
  v21 = [v20 contactAttributeToModify];

  *(v1 + 56) = ContactAttributeType.init(rawValue:)(v21);
  *(v1 + 64) = v22 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriContactsIntents20ContactAttributeTypeOSgMd, &_s19SiriContactsIntents20ContactAttributeTypeOSgMR);
  v23 = Optional.debugDescription.getter();
  v25 = v24;
  switch(v19)
  {
    case 2:
      OUTLINED_FUNCTION_7_25();
      v56 = ParameterResolutionRecord.intent.getter();
      v57 = [v56 contactAttributeToModify];

      if (v57 != 10)
      {
        type metadata accessor for ContactsError(0);
        v72 = lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
        OUTLINED_FUNCTION_15_1(v72);
        v30 = v73;
        v31 = 2;
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_14_19();
      v58 = ParameterResolutionRecord.intent.getter();
      [v58 modifyOperation];

      OUTLINED_FUNCTION_21_16(v59, sel_setModifyOperation_);
      v60 = ParameterResolutionRecord.intent.getter();
      v61 = [v60 relatedContact];

      OUTLINED_FUNCTION_21_16(v62, sel_setRelatedContact_);
      v63 = ParameterResolutionRecord.intent.getter();
      if (outlined bridged method (ob) of @objc ModifyContactAttributeIntent.relatedSiriMatches.getter(v63))
      {
        type metadata accessor for SiriMatch();
        v64.super.isa = Array._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        v64.super.isa = 0;
      }

      [v4 setRelatedSiriMatches_];
LABEL_34:

LABEL_35:
      v84 = v5;
      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v85, v86))
      {
        v87 = OUTLINED_FUNCTION_33_2();
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        *&v99[0] = v89;
        *v87 = *(v8 + 279);
        *(v87 + 4) = OUTLINED_FUNCTION_8_28(v89, 0x8000000266970710, v90, v91, v92, v93, v94, v95, *&v99[0]);
        *(v87 + 12) = 2112;
        *(v87 + 14) = v4;
        *v88 = v4;
        v96 = v84;
        _os_log_impl(&dword_26686A000, v85, v86, "[%s] Converted ContactIntent to SK intent. %@", v87, 0x16u);
        outlined destroy of UsoEntity_common_Person.DefinedValues?(v88, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        OUTLINED_FUNCTION_6();
        __swift_destroy_boxed_opaque_existential_0Tm(v89);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_6();
      }

      v97 = *(v1 + 66);
      OUTLINED_FUNCTION_7_25();
      v98 = ParameterResolutionRecord.intent.getter();
      *(v1 + 40) = &type metadata for ModifyContactAttributeSlots;
      *(v1 + 48) = &protocol witness table for ModifyContactAttributeSlots;
      *(v1 + 16) = v97;
      specialized SiriKitContactIntent.value(forSlot:)((v1 + 16), v99);

      __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));
LABEL_14:
      IntentPromptAnswer.init(answeredValue:updatedIntent:)();
      v49 = *(v1 + 72);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVy0A15ContactsIntents022ModifyContactAttributeD0CGMd, &_s11SiriKitFlow18IntentPromptAnswerVy0A15ContactsIntents022ModifyContactAttributeD0CGMR);
      __swift_storeEnumTagSinglePayload(v49, 0, 1, v50);

      OUTLINED_FUNCTION_3();
      goto LABEL_25;
    case 3:
      OUTLINED_FUNCTION_7_25();
      v52 = ParameterResolutionRecord.intent.getter();
      v53 = [v52 contactAttributeToModify];

      if (v53 != 6)
      {
        type metadata accessor for ContactsError(0);
        v70 = lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
        OUTLINED_FUNCTION_15_1(v70);
        v30 = v71;
        v31 = 3;
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_14_19();
      v54 = ParameterResolutionRecord.intent.getter();
      v55 = [v54 modifyOperation];

      [v4 setModifyOperation_];
      goto LABEL_35;
    case 4:
      OUTLINED_FUNCTION_7_25();
      v26 = ParameterResolutionRecord.intent.getter();
      v27 = [v26 contactAttributeToModify];

      if (v27 == 6)
      {
        type metadata accessor for ContactsError(0);
        v28 = lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
        OUTLINED_FUNCTION_15_1(v28);
        v30 = v29;
        v31 = 4;
LABEL_23:
        ModifyContactAttributeSlots.rawValue.getter(v31);
        *v30 = v74;
        v30[1] = v75;
        v30[2] = v23;
        v30[3] = v25;
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_14_19();
      v77 = ParameterResolutionRecord.intent.getter();
      [v77 contactAttributeToModify];

      OUTLINED_FUNCTION_21_16(v78, sel_setContactAttributeToModify_);
      v79 = ParameterResolutionRecord.intent.getter();
      [v79 modifyOperation];

      OUTLINED_FUNCTION_21_16(v80, sel_setModifyOperation_);
      v81 = ParameterResolutionRecord.intent.getter();
      v82 = outlined bridged method (ob) of @objc ModifyContactAttributeIntent.modifyRelationship.getter(v81);
      if (v83)
      {
        v64.super.isa = MEMORY[0x26D5E2470](v82);
      }

      else
      {
        v64.super.isa = 0;
      }

      [v4 setModifyRelationship_];
      goto LABEL_34;
  }

  v65 = *(v1 + 66);
  type metadata accessor for ContactsError(0);
  lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
  swift_allocError();
  v67 = v66;
  ModifyContactAttributeSlots.rawValue.getter(v65);
  *v67 = v68;
  v67[1] = v69;
  v67[2] = v23;
  v67[3] = v25;
LABEL_24:
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  OUTLINED_FUNCTION_3();
LABEL_25:

  return v51();
}

uint64_t ModifyContactAttributeNeedsValueStrategy.makePromptForValue(resolveRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  type metadata accessor for Locale();
  v1[5] = OUTLINED_FUNCTION_10_0();
  v4 = type metadata accessor for NLContextUpdate();
  v1[6] = v4;
  OUTLINED_FUNCTION_1_1(v4);
  v1[7] = v5;
  v1[8] = OUTLINED_FUNCTION_10_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v1[9] = OUTLINED_FUNCTION_10_0();
  v6 = type metadata accessor for TemplatingResult();
  v1[10] = v6;
  OUTLINED_FUNCTION_1_1(v6);
  v1[11] = v7;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v8 = type metadata accessor for SpeakableString();
  v1[15] = v8;
  OUTLINED_FUNCTION_1_1(v8);
  v1[16] = v9;
  v1[17] = OUTLINED_FUNCTION_10_0();
  v10 = type metadata accessor for ParameterIdentifier();
  v1[18] = v10;
  OUTLINED_FUNCTION_1_1(v10);
  v1[19] = v11;
  v1[20] = OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

{
  OUTLINED_FUNCTION_39();
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents28ModifyContactAttributeIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents28ModifyContactAttributeIntentCGMR);
  ParameterResolutionRecord.parameter.getter();
  v4 = ParameterIdentifier.name.getter();
  v6 = v5;
  (*(v2 + 8))(v1, v3);

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  value = ModifyContactAttributeSlots.init(rawValue:)(v7).value;
  if (value == 2)
  {
    v23 = v0[4];
    v22 = v0[5];

    v24 = ParameterResolutionRecord.intent.getter();
    v25 = _s19SiriContactsIntents39ModifyContactAttributeStrategyProvidingPAAE010getRelatedE06intent14contactServiceSo9CNContactCAA0deF6IntentC_AA0eM8Protocol_ptFAA0def16UnsupportedValueG0C_Tt1g5Tm(v24, v23 + 7);
    v0[23] = v25;

    type metadata accessor for DialogPerson();
    __swift_project_boxed_opaque_existential_1(v23 + 2, v23[5]);
    v26 = v25;
    dispatch thunk of DeviceState.siriLocale.getter();
    v0[24] = DialogPerson.init(from:useConversationalName:locale:mockGlobals:)(v26, 1, v22, 0);
    swift_task_alloc();
    OUTLINED_FUNCTION_36_0();
    v0[25] = v27;
    *v27 = v28;
    v27[1] = ModifyContactAttributeNeedsValueStrategy.makePromptForValue(resolveRecord:);
    OUTLINED_FUNCTION_28_4();

    return ModifyContactAttributeCATs.promptForRelationship(contact:)(v29, v30);
  }

  else if (value == 3)
  {

    swift_task_alloc();
    OUTLINED_FUNCTION_36_0();
    v0[27] = v19;
    *v19 = v20;
    v19[1] = ModifyContactAttributeNeedsValueStrategy.makePromptForValue(resolveRecord:);
    OUTLINED_FUNCTION_28_4();

    return ModifyContactAttributeCATs.promptForNickname()();
  }

  else
  {
    if (value != 4)
    {
      type metadata accessor for ContactsError(0);
      lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
      swift_allocError();
      *v32 = v4;
      v32[1] = v6;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_28_4();

      __asm { BRAA            X1, X16 }
    }

    v9 = ParameterResolutionRecord.intent.getter();
    outlined bridged method (ob) of @objc ModifyContactAttributeIntent.modifyRelationship.getter(v9);
    if (!v10)
    {
      static String.EMPTY.getter();
    }

    v12 = v0[16];
    v11 = v0[17];
    v13 = v0[15];
    v14 = v0[9];
    SpeakableString.init(print:speak:)();
    (*(v12 + 16))(v14, v11, v13);
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v13);
    swift_task_alloc();
    OUTLINED_FUNCTION_36_0();
    v0[21] = v15;
    *v15 = v16;
    v15[1] = ModifyContactAttributeNeedsValueStrategy.makePromptForValue(resolveRecord:);
    OUTLINED_FUNCTION_28_4();

    return ModifyContactAttributeCATs.promptForRelationshipContact(requestedRelationship:)();
  }
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_0();
  *v7 = v6;
  *(v8 + 176) = v0;

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 208) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  *(v6 + 224) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  (*(v0[16] + 8))(v0[17], v0[15]);
  OUTLINED_FUNCTION_1_46();

  OUTLINED_FUNCTION_3();

  return v1();
}

{

  OUTLINED_FUNCTION_1_46();

  OUTLINED_FUNCTION_3();

  return v1();
}

uint64_t ModifyContactAttributeNeedsValueStrategy.makePromptForValue(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_39();
  v13 = v12[14];
  v15 = v12[7];
  v14 = v12[8];
  v16 = v12[6];
  v17 = v12[2];
  static ContactsContextProvider.needsValueRelatedSiriMatches()(v18);
  v19 = type metadata accessor for AceOutput();
  v20 = MEMORY[0x277D5C1D8];
  v17[3] = v19;
  v17[4] = v20;
  __swift_allocate_boxed_opaque_existential_1(v17);
  specialized ContactsNeedsValueStrategy.needsValueOutput(templateResult:nlContextUpdate:)(v13, v14);
  (*(v15 + 8))(v14, v16);
  v22 = v12[16];
  v21 = v12[17];
  v23 = v12[15];
  v33 = v12[5];
  (*(v12[11] + 8))(v12[14], v12[10]);
  (*(v22 + 8))(v21, v23);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_22_3();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, v33, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_39();
  v13 = v12[23];
  v14 = v12[13];
  v15 = v12[8];
  v16 = v12[2];
  NLContextUpdate.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v17 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  OUTLINED_FUNCTION_1_1(v17);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_266966D90;
  static ContactsContextProvider.makeSDAForNeedsValueModifyRelationship()(v20 + v19);
  NLContextUpdate.nluSystemDialogActs.setter();
  v21 = type metadata accessor for AceOutput();
  v22 = MEMORY[0x277D5C1D8];
  v16[3] = v21;
  v16[4] = v22;
  __swift_allocate_boxed_opaque_existential_1(v16);
  specialized ContactsNeedsValueStrategy.needsValueOutput(templateResult:nlContextUpdate:)(v14, v15);

  v23 = v12[8];
  v24 = v12[13];
  v25 = v12[11];
  OUTLINED_FUNCTION_15_18();
  v26(v23);
  (*(v25 + 8))(v24, v19);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_22_3();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_39();
  v14 = v12[12];
  v15 = v12[8];
  v16 = v12[2];
  static ContactsContextProvider.needsValueModifyNickname()(v17);
  v18 = type metadata accessor for AceOutput();
  v19 = MEMORY[0x277D5C1D8];
  v16[3] = v18;
  v16[4] = v19;
  __swift_allocate_boxed_opaque_existential_1(v16);
  specialized ContactsNeedsValueStrategy.needsValueOutput(templateResult:nlContextUpdate:)(v14, v15);
  v21 = v12[11];
  v20 = v12[12];
  v22 = v12[8];
  OUTLINED_FUNCTION_15_18();
  v23(v22);
  (*(v21 + 8))(v20, v13);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_22_3();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t ModifyContactAttributeNeedsValueStrategy.makePromptForValue(resolveRecord:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1_46();

  OUTLINED_FUNCTION_3();

  return v1();
}

uint64_t type metadata accessor for ModifyContactAttributeNeedsValueStrategy(uint64_t a1)
{
  result = type metadata singleton initialization cache for ModifyContactAttributeNeedsValueStrategy;
  if (!type metadata singleton initialization cache for ModifyContactAttributeNeedsValueStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined bridged method (ob) of @objc ModifyContactAttributeIntent.relatedSiriMatches.getter(void *a1)
{
  v2 = [a1 relatedSiriMatches];

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for SiriMatch();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (ob) of @objc ModifyContactAttributeIntent.modifyRelationship.getter(void *a1)
{
  v2 = [a1 modifyRelationship];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t OUTLINED_FUNCTION_1_46()
{
}

unint64_t OUTLINED_FUNCTION_8_28(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, a2, &a9);
}

uint64_t OUTLINED_FUNCTION_14_19()
{
}

id OUTLINED_FUNCTION_21_16(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:)()
{
  OUTLINED_FUNCTION_18_16();
  OUTLINED_FUNCTION_16_15();
  OUTLINED_FUNCTION_7_26();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_43();
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  v3 = static Signpost.contactsLog;
  OUTLINED_FUNCTION_15_19();
  v4 = static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_4_33(v4);
  OUTLINED_FUNCTION_6_35();
  OUTLINED_FUNCTION_1_47(v1);
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v5 = type metadata accessor for Logger();
    v6 = OUTLINED_FUNCTION_52_0(v5, static Logger.siriContacts);
    v7 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_8_29(v7))
    {
      v8 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_10_31(v8);
      OUTLINED_FUNCTION_27(&dword_26686A000, v9, v10, "#IdiomSensitiveViewBuilder Building views for Watch");
      OUTLINED_FUNCTION_5_32();
    }

    ErrorViewBuilder.makeViewsForWatch()();
  }

  else
  {
    OUTLINED_FUNCTION_1_47(v1);
    if (dispatch thunk of DeviceState.isMac.getter())
    {
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
      }

      v11 = type metadata accessor for Logger();
      v12 = OUTLINED_FUNCTION_52_0(v11, static Logger.siriContacts);
      v13 = static os_log_type_t.info.getter();
      if (OUTLINED_FUNCTION_8_29(v13))
      {
        v14 = OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_10_31(v14);
        OUTLINED_FUNCTION_27(&dword_26686A000, v15, v16, "#IdiomSensitiveViewBuilder Building views for Mac");
        OUTLINED_FUNCTION_5_32();
      }

      ErrorViewBuilder.makeViewsForMac()();
    }

    else
    {
      OUTLINED_FUNCTION_1_47(v1);
      if (dispatch thunk of DeviceState.isCarDNDMode.getter())
      {
        if (one-time initialization token for siriContacts != -1)
        {
          OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
        }

        v17 = type metadata accessor for Logger();
        v18 = OUTLINED_FUNCTION_52_0(v17, static Logger.siriContacts);
        v19 = static os_log_type_t.info.getter();
        if (OUTLINED_FUNCTION_8_29(v19))
        {
          v20 = OUTLINED_FUNCTION_30();
          OUTLINED_FUNCTION_10_31(v20);
          OUTLINED_FUNCTION_27(&dword_26686A000, v21, v22, "#IdiomSensitiveViewBuilder Building views for CarDND");
          OUTLINED_FUNCTION_5_32();
        }

        ErrorViewBuilder.makeViewsForCarDND()();
      }

      else
      {
        OUTLINED_FUNCTION_1_47(v1);
        if (dispatch thunk of DeviceState.isCarPlay.getter())
        {
          if (one-time initialization token for siriContacts != -1)
          {
            OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
          }

          v23 = type metadata accessor for Logger();
          v24 = OUTLINED_FUNCTION_52_0(v23, static Logger.siriContacts);
          v25 = static os_log_type_t.info.getter();
          if (OUTLINED_FUNCTION_8_29(v25))
          {
            v26 = OUTLINED_FUNCTION_30();
            OUTLINED_FUNCTION_10_31(v26);
            OUTLINED_FUNCTION_27(&dword_26686A000, v27, v28, "#IdiomSensitiveViewBuilder Building views for CarPlay");
            OUTLINED_FUNCTION_5_32();
          }

          ErrorViewBuilder.makeViewsForCarPlay()();
        }

        else
        {
          OUTLINED_FUNCTION_1_47(v1);
          if (dispatch thunk of DeviceState.isXRDevice.getter())
          {
            if (one-time initialization token for siriContacts != -1)
            {
              OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
            }

            v29 = type metadata accessor for Logger();
            v30 = OUTLINED_FUNCTION_52_0(v29, static Logger.siriContacts);
            v31 = static os_log_type_t.info.getter();
            if (OUTLINED_FUNCTION_8_29(v31))
            {
              v32 = OUTLINED_FUNCTION_30();
              OUTLINED_FUNCTION_10_31(v32);
              OUTLINED_FUNCTION_27(&dword_26686A000, v33, v34, "#IdiomSensitiveViewBuilder Building views for XROS");
              OUTLINED_FUNCTION_5_32();
            }

            ErrorViewBuilder.makeViewsForXROS()();
          }

          else
          {
            if (one-time initialization token for siriContacts != -1)
            {
              OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
            }

            v35 = type metadata accessor for Logger();
            v36 = OUTLINED_FUNCTION_52_0(v35, static Logger.siriContacts);
            v37 = static os_log_type_t.info.getter();
            if (OUTLINED_FUNCTION_8_29(v37))
            {
              v38 = OUTLINED_FUNCTION_30();
              OUTLINED_FUNCTION_10_31(v38);
              OUTLINED_FUNCTION_27(&dword_26686A000, v39, v40, "#IdiomSensitiveViewBuilder Building views for IOS");
              OUTLINED_FUNCTION_5_32();
            }

            ErrorViewBuilder.makeViewsForIOS()();
          }
        }
      }
    }
  }

  v41 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_11_22(v41);
  outlined destroy of Signpost.OpenSignpost(v0);
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_19_13();
}

{
  OUTLINED_FUNCTION_18_16();
  OUTLINED_FUNCTION_16_15();
  OUTLINED_FUNCTION_7_26();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_43();
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  v3 = static Signpost.contactsLog;
  OUTLINED_FUNCTION_15_19();
  v4 = static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_4_33(v4);
  OUTLINED_FUNCTION_6_35();
  OUTLINED_FUNCTION_1_47((v1 + 8));
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v5 = type metadata accessor for Logger();
    v6 = OUTLINED_FUNCTION_52_0(v5, static Logger.siriContacts);
    v7 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_8_29(v7))
    {
      v8 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_10_31(v8);
      OUTLINED_FUNCTION_27(&dword_26686A000, v9, v10, "#IdiomSensitiveViewBuilder Building views for Watch");
      OUTLINED_FUNCTION_5_32();
    }

    ConfirmationViewBuilder.makeViewsForWatch()();
  }

  else
  {
    OUTLINED_FUNCTION_1_47((v1 + 8));
    if (dispatch thunk of DeviceState.isMac.getter())
    {
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
      }

      v11 = type metadata accessor for Logger();
      v12 = OUTLINED_FUNCTION_52_0(v11, static Logger.siriContacts);
      v13 = static os_log_type_t.info.getter();
      if (OUTLINED_FUNCTION_8_29(v13))
      {
        v14 = OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_10_31(v14);
        OUTLINED_FUNCTION_27(&dword_26686A000, v15, v16, "#IdiomSensitiveViewBuilder Building views for Mac");
        OUTLINED_FUNCTION_5_32();
      }

      ConfirmationViewBuilder.makeViewsForMac()();
    }

    else
    {
      OUTLINED_FUNCTION_1_47((v1 + 8));
      if (dispatch thunk of DeviceState.isCarDNDMode.getter())
      {
        if (one-time initialization token for siriContacts != -1)
        {
          OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
        }

        v18 = type metadata accessor for Logger();
        v19 = OUTLINED_FUNCTION_52_0(v18, static Logger.siriContacts);
        v20 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = OUTLINED_FUNCTION_30();
          *v21 = 0;
          _os_log_impl(&dword_26686A000, v19, v20, "#IdiomSensitiveViewBuilder Building views for CarDND", v21, 2u);
          MEMORY[0x26D5E3300](v21, -1, -1);
        }
      }

      else
      {
        OUTLINED_FUNCTION_1_47((v1 + 8));
        if (dispatch thunk of DeviceState.isCarPlay.getter())
        {
          if (one-time initialization token for siriContacts != -1)
          {
            OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
          }

          v22 = type metadata accessor for Logger();
          v23 = OUTLINED_FUNCTION_52_0(v22, static Logger.siriContacts);
          v24 = static os_log_type_t.info.getter();
          if (OUTLINED_FUNCTION_8_29(v24))
          {
            v25 = OUTLINED_FUNCTION_30();
            OUTLINED_FUNCTION_10_31(v25);
            OUTLINED_FUNCTION_27(&dword_26686A000, v26, v27, "#IdiomSensitiveViewBuilder Building views for CarPlay");
            OUTLINED_FUNCTION_5_32();
          }

          ConfirmationViewBuilder.makeViewsForCarPlay()();
        }

        else
        {
          OUTLINED_FUNCTION_1_47((v1 + 8));
          if (dispatch thunk of DeviceState.isXRDevice.getter())
          {
            if (one-time initialization token for siriContacts != -1)
            {
              OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
            }

            v28 = type metadata accessor for Logger();
            v29 = OUTLINED_FUNCTION_52_0(v28, static Logger.siriContacts);
            v30 = static os_log_type_t.info.getter();
            if (OUTLINED_FUNCTION_8_29(v30))
            {
              v31 = OUTLINED_FUNCTION_30();
              OUTLINED_FUNCTION_10_31(v31);
              OUTLINED_FUNCTION_27(&dword_26686A000, v32, v33, "#IdiomSensitiveViewBuilder Building views for XROS");
              OUTLINED_FUNCTION_5_32();
            }

            ConfirmationViewBuilder.makeViewsForXROS()();
          }

          else
          {
            if (one-time initialization token for siriContacts != -1)
            {
              OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
            }

            v34 = type metadata accessor for Logger();
            v35 = OUTLINED_FUNCTION_52_0(v34, static Logger.siriContacts);
            v36 = static os_log_type_t.info.getter();
            if (OUTLINED_FUNCTION_8_29(v36))
            {
              v37 = OUTLINED_FUNCTION_30();
              OUTLINED_FUNCTION_10_31(v37);
              OUTLINED_FUNCTION_27(&dword_26686A000, v38, v39, "#IdiomSensitiveViewBuilder Building views for IOS");
              OUTLINED_FUNCTION_5_32();
            }

            ConfirmationViewBuilder.makeViewsForIOS()();
          }
        }
      }
    }
  }

  v17 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_11_22(v17);
  outlined destroy of Signpost.OpenSignpost(v0);
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_19_13();
}

{
  OUTLINED_FUNCTION_18_16();
  OUTLINED_FUNCTION_16_15();
  OUTLINED_FUNCTION_7_26();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_43();
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  v3 = static Signpost.contactsLog;
  OUTLINED_FUNCTION_15_19();
  v4 = static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_4_33(v4);
  OUTLINED_FUNCTION_6_35();
  OUTLINED_FUNCTION_1_47(v1);
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v5 = type metadata accessor for Logger();
    v6 = OUTLINED_FUNCTION_52_0(v5, static Logger.siriContacts);
    v7 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_8_29(v7))
    {
      v8 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_10_31(v8);
      OUTLINED_FUNCTION_27(&dword_26686A000, v9, v10, "#IdiomSensitiveViewBuilder Building views for Watch");
      OUTLINED_FUNCTION_5_32();
    }

    MissingMeCardViewBuilder.makeViewsForWatch()();
  }

  else
  {
    OUTLINED_FUNCTION_1_47(v1);
    if (dispatch thunk of DeviceState.isMac.getter())
    {
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
      }

      v11 = type metadata accessor for Logger();
      v12 = OUTLINED_FUNCTION_52_0(v11, static Logger.siriContacts);
      v13 = static os_log_type_t.info.getter();
      if (OUTLINED_FUNCTION_8_29(v13))
      {
        v14 = OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_10_31(v14);
        OUTLINED_FUNCTION_27(&dword_26686A000, v15, v16, "#IdiomSensitiveViewBuilder Building views for Mac");
        OUTLINED_FUNCTION_5_32();
      }

      MissingMeCardViewBuilder.makeViewsForMac()();
    }

    else
    {
      OUTLINED_FUNCTION_1_47(v1);
      if (dispatch thunk of DeviceState.isCarDNDMode.getter())
      {
        if (one-time initialization token for siriContacts != -1)
        {
          OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
        }

        v17 = type metadata accessor for Logger();
        v18 = OUTLINED_FUNCTION_52_0(v17, static Logger.siriContacts);
        v19 = static os_log_type_t.info.getter();
        if (OUTLINED_FUNCTION_8_29(v19))
        {
          v20 = OUTLINED_FUNCTION_30();
          OUTLINED_FUNCTION_10_31(v20);
          OUTLINED_FUNCTION_27(&dword_26686A000, v21, v22, "#IdiomSensitiveViewBuilder Building views for CarDND");
          OUTLINED_FUNCTION_5_32();
        }

        MissingMeCardViewBuilder.makeViewsForCarDND()();
      }

      else
      {
        OUTLINED_FUNCTION_1_47(v1);
        if (dispatch thunk of DeviceState.isCarPlay.getter())
        {
          if (one-time initialization token for siriContacts != -1)
          {
            OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
          }

          v23 = type metadata accessor for Logger();
          v24 = OUTLINED_FUNCTION_52_0(v23, static Logger.siriContacts);
          v25 = static os_log_type_t.info.getter();
          if (OUTLINED_FUNCTION_8_29(v25))
          {
            v26 = OUTLINED_FUNCTION_30();
            OUTLINED_FUNCTION_10_31(v26);
            OUTLINED_FUNCTION_27(&dword_26686A000, v27, v28, "#IdiomSensitiveViewBuilder Building views for CarPlay");
            OUTLINED_FUNCTION_5_32();
          }

          MissingMeCardViewBuilder.makeViewsForCarPlay()();
        }

        else
        {
          OUTLINED_FUNCTION_1_47(v1);
          if (dispatch thunk of DeviceState.isXRDevice.getter())
          {
            if (one-time initialization token for siriContacts != -1)
            {
              OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
            }

            v29 = type metadata accessor for Logger();
            v30 = OUTLINED_FUNCTION_52_0(v29, static Logger.siriContacts);
            v31 = static os_log_type_t.info.getter();
            if (OUTLINED_FUNCTION_8_29(v31))
            {
              v32 = OUTLINED_FUNCTION_30();
              OUTLINED_FUNCTION_10_31(v32);
              OUTLINED_FUNCTION_27(&dword_26686A000, v33, v34, "#IdiomSensitiveViewBuilder Building views for XROS");
              OUTLINED_FUNCTION_5_32();
            }

            MissingMeCardViewBuilder.makeViewsForXROS()();
          }

          else
          {
            if (one-time initialization token for siriContacts != -1)
            {
              OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
            }

            v35 = type metadata accessor for Logger();
            v36 = OUTLINED_FUNCTION_52_0(v35, static Logger.siriContacts);
            v37 = static os_log_type_t.info.getter();
            if (OUTLINED_FUNCTION_8_29(v37))
            {
              v38 = OUTLINED_FUNCTION_30();
              OUTLINED_FUNCTION_10_31(v38);
              OUTLINED_FUNCTION_27(&dword_26686A000, v39, v40, "#IdiomSensitiveViewBuilder Building views for IOS");
              OUTLINED_FUNCTION_5_32();
            }

            MissingMeCardViewBuilder.makeViewsForIOS()();
          }
        }
      }
    }
  }

  v41 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_11_22(v41);
  outlined destroy of Signpost.OpenSignpost(v0);
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_19_13();
}

{
  OUTLINED_FUNCTION_18_16();
  OUTLINED_FUNCTION_16_15();
  OUTLINED_FUNCTION_7_26();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_43();
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  v3 = static Signpost.contactsLog;
  OUTLINED_FUNCTION_15_19();
  v4 = static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_4_33(v4);
  OUTLINED_FUNCTION_6_35();
  OUTLINED_FUNCTION_1_47((v1 + 32));
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v5 = type metadata accessor for Logger();
    v6 = OUTLINED_FUNCTION_52_0(v5, static Logger.siriContacts);
    v7 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_8_29(v7))
    {
      v8 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_10_31(v8);
      OUTLINED_FUNCTION_27(&dword_26686A000, v9, v10, "#IdiomSensitiveViewBuilder Building views for Watch");
      OUTLINED_FUNCTION_5_32();
    }

    GetContactAttributeViewBuilder.makeViewsForWatch()();
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_1_47((v1 + 32));
  if (dispatch thunk of DeviceState.isMac.getter())
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v11 = type metadata accessor for Logger();
    v12 = OUTLINED_FUNCTION_52_0(v11, static Logger.siriContacts);
    v13 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_8_29(v13))
    {
      v14 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_10_31(v14);
      OUTLINED_FUNCTION_27(&dword_26686A000, v15, v16, "#IdiomSensitiveViewBuilder Building views for Mac");
      OUTLINED_FUNCTION_5_32();
    }

    GetContactAttributeViewBuilder.makeViewsForMac()();
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_1_47((v1 + 32));
  if (dispatch thunk of DeviceState.isCarDNDMode.getter())
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v17 = type metadata accessor for Logger();
    v18 = OUTLINED_FUNCTION_52_0(v17, static Logger.siriContacts);
    v19 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_8_29(v19))
    {
      v20 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_10_31(v20);
      OUTLINED_FUNCTION_27(&dword_26686A000, v21, v22, "#IdiomSensitiveViewBuilder Building views for CarDND");
      OUTLINED_FUNCTION_5_32();
    }

    GetContactAttributeViewBuilder.makeViewsForCarDND()();
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_1_47((v1 + 32));
  if ((dispatch thunk of DeviceState.isCarPlay.getter() & 1) == 0)
  {
    OUTLINED_FUNCTION_1_47((v1 + 32));
    if (dispatch thunk of DeviceState.isXRDevice.getter())
    {
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
      }

      v29 = type metadata accessor for Logger();
      v30 = OUTLINED_FUNCTION_52_0(v29, static Logger.siriContacts);
      v31 = static os_log_type_t.info.getter();
      if (!OUTLINED_FUNCTION_8_29(v31))
      {
        goto LABEL_37;
      }

      v32 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_10_31(v32);
      v35 = "#IdiomSensitiveViewBuilder Building views for XROS";
    }

    else
    {
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
      }

      v36 = type metadata accessor for Logger();
      v30 = OUTLINED_FUNCTION_52_0(v36, static Logger.siriContacts);
      v37 = static os_log_type_t.info.getter();
      if (!OUTLINED_FUNCTION_8_29(v37))
      {
        goto LABEL_37;
      }

      v38 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_10_31(v38);
      v35 = "#IdiomSensitiveViewBuilder Building views for IOS";
    }

    OUTLINED_FUNCTION_27(&dword_26686A000, v33, v34, v35);
    OUTLINED_FUNCTION_5_32();
LABEL_37:

    GetContactAttributeViewBuilder.makeViewsForIOS()();
    goto LABEL_38;
  }

  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v23 = type metadata accessor for Logger();
  v24 = OUTLINED_FUNCTION_52_0(v23, static Logger.siriContacts);
  v25 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_8_29(v25))
  {
    v26 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_10_31(v26);
    OUTLINED_FUNCTION_27(&dword_26686A000, v27, v28, "#IdiomSensitiveViewBuilder Building views for CarPlay");
    OUTLINED_FUNCTION_5_32();
  }

  GetContactAttributeViewBuilder.makeViewsForCarPlay()();
LABEL_38:
  v39 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_11_22(v39);
  outlined destroy of Signpost.OpenSignpost(v0);
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_19_13();
}

{
  OUTLINED_FUNCTION_18_16();
  OUTLINED_FUNCTION_16_15();
  OUTLINED_FUNCTION_7_26();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_43();
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  v3 = static Signpost.contactsLog;
  OUTLINED_FUNCTION_15_19();
  v4 = static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_4_33(v4);
  OUTLINED_FUNCTION_6_35();
  OUTLINED_FUNCTION_1_47((v1 + 56));
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v5 = type metadata accessor for Logger();
    v6 = OUTLINED_FUNCTION_52_0(v5, static Logger.siriContacts);
    v7 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_8_29(v7))
    {
      v8 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_10_31(v8);
      OUTLINED_FUNCTION_27(&dword_26686A000, v9, v10, "#IdiomSensitiveViewBuilder Building views for Watch");
      OUTLINED_FUNCTION_5_32();
    }

    ModifyContactAttributeViewBuilder.makeViewsForWatch()();
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_1_47((v1 + 56));
  if (dispatch thunk of DeviceState.isMac.getter())
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v11 = type metadata accessor for Logger();
    v12 = OUTLINED_FUNCTION_52_0(v11, static Logger.siriContacts);
    v13 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_8_29(v13))
    {
      v14 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_10_31(v14);
      OUTLINED_FUNCTION_27(&dword_26686A000, v15, v16, "#IdiomSensitiveViewBuilder Building views for Mac");
      OUTLINED_FUNCTION_5_32();
    }

    ModifyContactAttributeViewBuilder.makeViewsForMac()();
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_1_47((v1 + 56));
  if (dispatch thunk of DeviceState.isCarDNDMode.getter())
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v17 = type metadata accessor for Logger();
    v18 = OUTLINED_FUNCTION_52_0(v17, static Logger.siriContacts);
    v19 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_8_29(v19))
    {
      v20 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_10_31(v20);
      OUTLINED_FUNCTION_27(&dword_26686A000, v21, v22, "#IdiomSensitiveViewBuilder Building views for CarDND");
      OUTLINED_FUNCTION_5_32();
    }

    ModifyContactAttributeViewBuilder.makeViewsForCarDND()();
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_1_47((v1 + 56));
  if ((dispatch thunk of DeviceState.isCarPlay.getter() & 1) == 0)
  {
    OUTLINED_FUNCTION_1_47((v1 + 56));
    if (dispatch thunk of DeviceState.isXRDevice.getter())
    {
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
      }

      v29 = type metadata accessor for Logger();
      v30 = OUTLINED_FUNCTION_52_0(v29, static Logger.siriContacts);
      v31 = static os_log_type_t.info.getter();
      if (!OUTLINED_FUNCTION_8_29(v31))
      {
        goto LABEL_37;
      }

      v32 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_10_31(v32);
      v35 = "#IdiomSensitiveViewBuilder Building views for XROS";
    }

    else
    {
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
      }

      v36 = type metadata accessor for Logger();
      v30 = OUTLINED_FUNCTION_52_0(v36, static Logger.siriContacts);
      v37 = static os_log_type_t.info.getter();
      if (!OUTLINED_FUNCTION_8_29(v37))
      {
        goto LABEL_37;
      }

      v38 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_10_31(v38);
      v35 = "#IdiomSensitiveViewBuilder Building views for IOS";
    }

    OUTLINED_FUNCTION_27(&dword_26686A000, v33, v34, v35);
    OUTLINED_FUNCTION_5_32();
LABEL_37:

    ModifyContactAttributeViewBuilder.makeViewsForIOS()();
    goto LABEL_38;
  }

  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v23 = type metadata accessor for Logger();
  v24 = OUTLINED_FUNCTION_52_0(v23, static Logger.siriContacts);
  v25 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_8_29(v25))
  {
    v26 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_10_31(v26);
    OUTLINED_FUNCTION_27(&dword_26686A000, v27, v28, "#IdiomSensitiveViewBuilder Building views for CarPlay");
    OUTLINED_FUNCTION_5_32();
  }

  ModifyContactAttributeViewBuilder.makeViewsForCarPlay()();
LABEL_38:
  v39 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_11_22(v39);
  outlined destroy of Signpost.OpenSignpost(v0);
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_19_13();
}

{
  OUTLINED_FUNCTION_18_16();
  OUTLINED_FUNCTION_16_15();
  OUTLINED_FUNCTION_7_26();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_43();
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  v3 = static Signpost.contactsLog;
  OUTLINED_FUNCTION_15_19();
  v4 = static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_4_33(v4);
  OUTLINED_FUNCTION_6_35();
  OUTLINED_FUNCTION_1_47((v1 + 40));
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v5 = type metadata accessor for Logger();
    v6 = OUTLINED_FUNCTION_52_0(v5, static Logger.siriContacts);
    v7 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_8_29(v7))
    {
      v8 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_10_31(v8);
      OUTLINED_FUNCTION_27(&dword_26686A000, v9, v10, "#IdiomSensitiveViewBuilder Building views for Watch");
      OUTLINED_FUNCTION_5_32();
    }

    ModifyNicknameUnsupportedViewBuilder.makeViewsForWatch()();
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_1_47((v1 + 40));
  if (dispatch thunk of DeviceState.isMac.getter())
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v11 = type metadata accessor for Logger();
    v12 = OUTLINED_FUNCTION_52_0(v11, static Logger.siriContacts);
    v13 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_8_29(v13))
    {
      v14 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_10_31(v14);
      OUTLINED_FUNCTION_27(&dword_26686A000, v15, v16, "#IdiomSensitiveViewBuilder Building views for Mac");
      OUTLINED_FUNCTION_5_32();
    }

    ModifyNicknameUnsupportedViewBuilder.makeViewsForMac()();
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_1_47((v1 + 40));
  if (dispatch thunk of DeviceState.isCarDNDMode.getter())
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v17 = type metadata accessor for Logger();
    v18 = OUTLINED_FUNCTION_52_0(v17, static Logger.siriContacts);
    v19 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_8_29(v19))
    {
      v20 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_10_31(v20);
      OUTLINED_FUNCTION_27(&dword_26686A000, v21, v22, "#IdiomSensitiveViewBuilder Building views for CarDND");
      OUTLINED_FUNCTION_5_32();
    }

    ModifyNicknameUnsupportedViewBuilder.makeViewsForCarDND()();
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_1_47((v1 + 40));
  if ((dispatch thunk of DeviceState.isCarPlay.getter() & 1) == 0)
  {
    OUTLINED_FUNCTION_1_47((v1 + 40));
    if (dispatch thunk of DeviceState.isXRDevice.getter())
    {
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
      }

      v29 = type metadata accessor for Logger();
      v30 = OUTLINED_FUNCTION_52_0(v29, static Logger.siriContacts);
      v31 = static os_log_type_t.info.getter();
      if (!OUTLINED_FUNCTION_8_29(v31))
      {
        goto LABEL_37;
      }

      v32 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_10_31(v32);
      v35 = "#IdiomSensitiveViewBuilder Building views for XROS";
    }

    else
    {
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
      }

      v36 = type metadata accessor for Logger();
      v30 = OUTLINED_FUNCTION_52_0(v36, static Logger.siriContacts);
      v37 = static os_log_type_t.info.getter();
      if (!OUTLINED_FUNCTION_8_29(v37))
      {
        goto LABEL_37;
      }

      v38 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_10_31(v38);
      v35 = "#IdiomSensitiveViewBuilder Building views for IOS";
    }

    OUTLINED_FUNCTION_27(&dword_26686A000, v33, v34, v35);
    OUTLINED_FUNCTION_5_32();
LABEL_37:

    ModifyNicknameUnsupportedViewBuilder.makeViewsForIOS()();
    goto LABEL_38;
  }

  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v23 = type metadata accessor for Logger();
  v24 = OUTLINED_FUNCTION_52_0(v23, static Logger.siriContacts);
  v25 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_8_29(v25))
  {
    v26 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_10_31(v26);
    OUTLINED_FUNCTION_27(&dword_26686A000, v27, v28, "#IdiomSensitiveViewBuilder Building views for CarPlay");
    OUTLINED_FUNCTION_5_32();
  }

  ModifyNicknameUnsupportedViewBuilder.makeViewsForCarPlay()();
LABEL_38:
  v39 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_11_22(v39);
  outlined destroy of Signpost.OpenSignpost(v0);
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_19_13();
}

uint64_t ModifyContactAttributeContinueInAppFlowStrategy.makeContinueInAppResponse(intentResolutionRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1[18] = v2;
  v1[19] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v1[20] = swift_task_alloc();
  v3 = type metadata accessor for TemplatingResult();
  v1[21] = v3;
  v1[22] = *(v3 - 8);
  v1[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](ModifyContactAttributeContinueInAppFlowStrategy.makeContinueInAppResponse(intentResolutionRecord:), 0, 0);
}

{
  if (ContactsStrategy.isSmartEnabled.getter())
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v1 = type metadata accessor for Logger();
    v2 = OUTLINED_FUNCTION_52_0(v1, static Logger.siriContacts);
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = OUTLINED_FUNCTION_30();
      *v4 = 0;
      _os_log_impl(&dword_26686A000, v2, v3, "#ModifyContactAttributeContinueInAppFlowStrategy makeIntentHandledResponse SMART enabled but not yet implemented for the intent", v4, 2u);
      MEMORY[0x26D5E3300](v4, -1, -1);
    }
  }

  v5 = v0[19];
  __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
  v6 = DeviceState.toSiriKitDeviceState.getter();
  v0[24] = v6;
  OUTLINED_FUNCTION_1_47((v5 + 16));
  v7 = dispatch thunk of DeviceState.isXRDevice.getter();
  v8 = swift_task_alloc();
  v0[25] = v8;
  *v8 = v0;
  v8[1] = ModifyContactAttributeContinueInAppFlowStrategy.makeContinueInAppResponse(intentResolutionRecord:);
  v9 = v0[23];

  return ModifyContactAttributeCATs.unsupportedAttributeToModify(device:contactsAppUnavailable:)(v9, v6, v7 & 1);
}

{
  OUTLINED_FUNCTION_4();
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = ModifyContactAttributeContinueInAppFlowStrategy.makeContinueInAppResponse(intentResolutionRecord:);
  }

  else
  {
    v2 = ModifyContactAttributeContinueInAppFlowStrategy.makeContinueInAppResponse(intentResolutionRecord:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 160);
  v12 = *(v0 + 168);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  outlined init with copy of DeviceState(v4 + 16, v0 + 16);
  v6 = *(v4 + 104);
  *(v0 + 88) = &type metadata for InstalledAppsProvider;
  *(v0 + 96) = &protocol witness table for InstalledAppsProvider;
  *(v0 + 56) = v6;

  specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:)();
  outlined destroy of ErrorViewBuilder(v0 + 16);
  v7 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v7);
  v8 = type metadata accessor for AceOutput();
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0;
  *(v0 + 104) = 0u;
  v9 = MEMORY[0x277D5C1D8];
  v5[3] = v8;
  v5[4] = v9;
  __swift_allocate_boxed_opaque_existential_1(v5);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v0 + 104, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v3, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v2 + 8))(v1, v12);

  v10 = *(v0 + 8);

  return v10();
}

{
  OUTLINED_FUNCTION_4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ModifyContactAttributeContinueInAppFlowStrategy.__deallocating_deinit()
{
  v0 = specialized ContactsStrategy.deinit();
  outlined destroy of AppUtil(v0 + 184);

  return MEMORY[0x2821FE8D8](v0, 224, 7);
}

uint64_t type metadata accessor for ModifyContactAttributeContinueInAppFlowStrategy(uint64_t a1)
{
  result = type metadata singleton initialization cache for ModifyContactAttributeContinueInAppFlowStrategy;
  if (!type metadata singleton initialization cache for ModifyContactAttributeContinueInAppFlowStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifyContactAttributeContinueInAppFlowStrategy and conformance ModifyContactAttributeContinueInAppFlowStrategy()
{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeContinueInAppFlowStrategy and conformance ModifyContactAttributeContinueInAppFlowStrategy;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeContinueInAppFlowStrategy and conformance ModifyContactAttributeContinueInAppFlowStrategy)
  {
    type metadata accessor for ModifyContactAttributeContinueInAppFlowStrategy(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeContinueInAppFlowStrategy and conformance ModifyContactAttributeContinueInAppFlowStrategy);
  }

  return result;
}

uint64_t protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance ModifyContactAttributeContinueInAppFlowStrategy()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = GetContactAttributeCATs.unsupportedContactAttribute();

  return ModifyContactAttributeContinueInAppFlowStrategy.makeContinueInAppResponse(intentResolutionRecord:)();
}

uint64_t OUTLINED_FUNCTION_4_33(uint64_t a1)
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

void OUTLINED_FUNCTION_6_35()
{
  v5 = v0 + *(v1 + 20);
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
}

BOOL OUTLINED_FUNCTION_8_29(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_11_22(uint64_t a1)
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t OUTLINED_FUNCTION_15_19()
{

  return OSSignpostID.init(log:)();
}

uint64_t OUTLINED_FUNCTION_16_15()
{

  return type metadata accessor for Signpost.OpenSignpost(0);
}

uint64_t ContactsLabeledAddress.Builder.__deallocating_deinit()
{
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC19SiriContactsIntents22ContactsLabeledAddress7Builder_label);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC19SiriContactsIntents22ContactsLabeledAddress7Builder_addressString);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t ContactsLabeledAddress.getProperty(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  v13 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    outlined init with copy of SpeakableString?(v3 + OBJC_IVAR____TtC19SiriContactsIntents22ContactsLabeledAddress_label, v12);
    v14 = type metadata accessor for SpeakableString();
    if (__swift_getEnumTagSinglePayload(v12, 1, v14) == 1)
    {
      v15 = v12;
LABEL_8:
      result = outlined destroy of SpeakableString?(v15);
LABEL_9:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    *(a3 + 24) = v14;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(*(v14 - 8) + 32))(boxed_opaque_existential_1, v12, v14);
  }

  else
  {
    if (a1 != 0x5373736572646461 || a2 != 0xED0000676E697274)
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    outlined init with copy of SpeakableString?(v3 + OBJC_IVAR____TtC19SiriContactsIntents22ContactsLabeledAddress_addressString, v10);
    v19 = type metadata accessor for SpeakableString();
    if (__swift_getEnumTagSinglePayload(v10, 1, v19) == 1)
    {
      v15 = v10;
      goto LABEL_8;
    }

    *(a3 + 24) = v19;
    v20 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(*(v19 - 8) + 32))(v20, v10, v19);
  }
}

uint64_t ContactsLabeledAddress.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ContactsLabeledAddress.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
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

uint64_t ContactsLabeledAddress.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x5373736572646461;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ContactsLabeledAddress.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = ContactsLabeledAddress.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ContactsLabeledAddress.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = ContactsLabeledAddress.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ContactsLabeledAddress.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = ContactsLabeledAddress.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ContactsLabeledAddress.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsLabeledAddress.CodingKeys and conformance ContactsLabeledAddress.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ContactsLabeledAddress.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsLabeledAddress.CodingKeys and conformance ContactsLabeledAddress.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContactsLabeledAddress.deinit()
{
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC19SiriContactsIntents22ContactsLabeledAddress_label);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC19SiriContactsIntents22ContactsLabeledAddress_addressString);
  return v0;
}

uint64_t ContactsLabeledAddress.__deallocating_deinit()
{
  ContactsLabeledAddress.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void type metadata completion function for ContactsLabeledAddress(uint64_t a1)
{
  type metadata accessor for SpeakableString?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t ContactsLabeledAddress.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriContactsIntents0E14LabeledAddressC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy19SiriContactsIntents0E14LabeledAddressC10CodingKeysOGMR);
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ContactsLabeledAddress.CodingKeys and conformance ContactsLabeledAddress.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = OBJC_IVAR____TtC19SiriContactsIntents22ContactsLabeledAddress_label;
  v17 = 0;
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_0_50();
  lazy protocol witness table accessor for type ContactsLabeledAddress and conformance ContactsLabeledAddress(v12, v13, MEMORY[0x277D55C50]);
  OUTLINED_FUNCTION_2_29(v3 + v11, &v17);
  if (!v2)
  {
    v16 = 1;
    OUTLINED_FUNCTION_2_29(v3 + OBJC_IVAR____TtC19SiriContactsIntents22ContactsLabeledAddress_addressString, &v16);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t ContactsLabeledAddress.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ContactsLabeledAddress.init(from:)(a1);
  return v2;
}

id *ContactsLabeledAddress.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v20 = v19 - v8;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriContactsIntents0E14LabeledAddressC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy19SiriContactsIntents0E14LabeledAddressC10CodingKeysOGMR);
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ContactsLabeledAddress.CodingKeys and conformance ContactsLabeledAddress.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {

    type metadata accessor for ContactsLabeledAddress(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v19[1] = v10;
    v12 = type metadata accessor for SpeakableString();
    v23 = 0;
    OUTLINED_FUNCTION_0_50();
    lazy protocol witness table accessor for type ContactsLabeledAddress and conformance ContactsLabeledAddress(v13, v14, MEMORY[0x277D55C60]);
    v15 = v20;
    OUTLINED_FUNCTION_6_19(v12, &v23, v21);
    outlined init with take of SpeakableString?(v15, v1 + OBJC_IVAR____TtC19SiriContactsIntents22ContactsLabeledAddress_label);
    v22 = 1;
    OUTLINED_FUNCTION_6_19(v12, &v22, v21);
    v17 = OUTLINED_FUNCTION_1_25();
    v18(v17);
    outlined init with take of SpeakableString?(v7, v1 + OBJC_IVAR____TtC19SiriContactsIntents22ContactsLabeledAddress_addressString);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v1;
}

uint64_t protocol witness for Decodable.init(from:) in conformance ContactsLabeledAddress@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = ContactsLabeledAddress.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ContactsLabeledAddress and conformance ContactsLabeledAddress(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type ContactsLabeledAddress.CodingKeys and conformance ContactsLabeledAddress.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ContactsLabeledAddress.CodingKeys and conformance ContactsLabeledAddress.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsLabeledAddress.CodingKeys and conformance ContactsLabeledAddress.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabeledAddress.CodingKeys and conformance ContactsLabeledAddress.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsLabeledAddress.CodingKeys and conformance ContactsLabeledAddress.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsLabeledAddress.CodingKeys and conformance ContactsLabeledAddress.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabeledAddress.CodingKeys and conformance ContactsLabeledAddress.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsLabeledAddress.CodingKeys and conformance ContactsLabeledAddress.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsLabeledAddress.CodingKeys and conformance ContactsLabeledAddress.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabeledAddress.CodingKeys and conformance ContactsLabeledAddress.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsLabeledAddress.CodingKeys and conformance ContactsLabeledAddress.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsLabeledAddress.CodingKeys and conformance ContactsLabeledAddress.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabeledAddress.CodingKeys and conformance ContactsLabeledAddress.CodingKeys);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContactsLabeledAddress.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void specialized SiriKitContactIntent.shouldRunReferenceResolution(given:)()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v4 = type metadata accessor for UsoEntity_common_Person.DefinedValues();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMR);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  v16 = OUTLINED_FUNCTION_18_0(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_38_6();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_49_7();
  MEMORY[0x28223BE20](v18);
  v20 = &v27 - v19;
  if (v3)
  {

    UsoEntity_common_Person.contactId.getter();
    if (v21 || (dispatch thunk of UsoEntity_common_Person.name.getter(), v22))
    {

      goto LABEL_18;
    }

    if (!dispatch thunk of UsoEntity_common_Person.identifyingRelationship.getter() && !dispatch thunk of UsoEntity_common_Person.associatedOrganization.getter())
    {
      dispatch thunk of UsoEntity_common_Person.definedValue.getter();
      (*(v6 + 104))(v1, *MEMORY[0x277D5E828], v4);
      __swift_storeEnumTagSinglePayload(v1, 0, 1, v4);
      v23 = *(v11 + 48);
      outlined init with copy of Result<RRResult, Error>(v20, v14, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      v28 = v23;
      outlined init with copy of Result<RRResult, Error>(v1, &v14[v23], &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      OUTLINED_FUNCTION_57(v14, 1, v4);
      if (v25)
      {

        OUTLINED_FUNCTION_68_2(v1);
        OUTLINED_FUNCTION_68_2(v20);
        OUTLINED_FUNCTION_57(&v14[v28], 1, v4);
        if (v25)
        {
          outlined destroy of Result<TemplatingResult, Error>(v14, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          goto LABEL_18;
        }
      }

      else
      {
        outlined init with copy of Result<RRResult, Error>(v14, v0, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        v24 = v28;
        OUTLINED_FUNCTION_57(&v14[v28], 1, v4);
        if (!v25)
        {
          (*(v6 + 32))(v10, &v14[v24], v4);
          lazy protocol witness table accessor for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues();
          dispatch thunk of static Equatable.== infix(_:_:)();

          v26 = *(v6 + 8);
          v26(v10, v4);
          outlined destroy of Result<TemplatingResult, Error>(v1, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          outlined destroy of Result<TemplatingResult, Error>(v20, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          v26(v0, v4);
          outlined destroy of Result<TemplatingResult, Error>(v14, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          goto LABEL_18;
        }

        OUTLINED_FUNCTION_68_2(v1);
        OUTLINED_FUNCTION_68_2(v20);
        (*(v6 + 8))(v0, v4);
      }

      outlined destroy of Result<TemplatingResult, Error>(v14, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMR);
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_48_0();
  }

LABEL_18:
  OUTLINED_FUNCTION_14();
}

uint64_t specialized SiriKitGetEntityIntent.runReferenceResolution(_:)(uint64_t a1, void (*a2)(uint64_t, _BYTE *))
{
  swift_unknownObjectWeakInit();
  a2(a1, v5);
  return MEMORY[0x26D5E33A0](v5);
}

void _s19SiriContactsIntents0A18KitGetEntityIntentPAAE18resolveAddressType4fromAA017SpecifyingContactiJ0OSg0A8Ontology03Usof8_common_mI0CSg_tFZAA0emG0C_Tt1g5(unint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v130 = type metadata accessor for UsoIdentifier();
  v4 = *(v130 - 8);
  v5 = MEMORY[0x28223BE20](v130);
  v124 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v129 = &v120 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v126 = (&v120 - v10);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v120 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v127 = &v120 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v120 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v120 - v19;
  if (one-time initialization token for siriContacts != -1)
  {
    goto LABEL_96;
  }

  while (1)
  {
    v21 = type metadata accessor for Logger();
    v22 = __swift_project_value_buffer(v21, static Logger.siriContacts);

    v128 = v22;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();

    v25 = os_log_type_enabled(v23, v24);
    v125 = v18;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v131 = a1;
      v132 = v123;
      *v26 = 136315138;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology31UsoEntity_common_ContactAddressCSgMd, &_s12SiriOntology31UsoEntity_common_ContactAddressCSgMR);
      v27 = String.init<A>(describing:)();
      v29 = a1;
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v132);

      *(v26 + 4) = v30;
      a1 = v29;
      _os_log_impl(&dword_26686A000, v23, v24, "#SiriKitGetEntityIntent resolveAddressType from address %s", v26, 0xCu);
      v31 = v123;
      __swift_destroy_boxed_opaque_existential_0Tm(v123);
      MEMORY[0x26D5E3300](v31, -1, -1);
      MEMORY[0x26D5E3300](v26, -1, -1);
    }

    if (!a1)
    {
      goto LABEL_70;
    }

    swift_retain_n();
    CodeGenBase.entity.getter();
    static UsoEntity_CodeGenConverter.convert(entity:)();

    v18 = MEMORY[0x277D84F70];
    if (v134)
    {
      type metadata accessor for UsoEntity_common_PhoneNumber();
      if (swift_dynamicCast())
      {
        v121 = v131;
        v122 = a2;
        v32 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
        v33 = a1;
        a1 = v32;
        v123 = v33;

        v34 = 0;
        v35 = *(a1 + 16);
        v129 = (v4 + 16);
        v13 = (v4 + 8);
        v124 = (v4 + 32);
        v126 = MEMORY[0x277D84F90];
        while (1)
        {
          while (1)
          {
            if (v35 == v34)
            {

              if (v126[2])
              {
                v56 = v125;
                v57 = v130;
                (*(v4 + 16))(v125, v126 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v130);

                v58 = UsoIdentifier.value.getter();
                v60 = v59;
                (*(v4 + 8))(v56, v57);
              }

              else
              {

                v86 = dispatch thunk of UsoEntity_common_PhoneNumber.label.getter();
                v58 = v86;
                if (v87)
                {
                  v58 = String.convertToContactAttributeLabel.getter(v86, v87);
                  v60 = v88;
                }

                else
                {
                  v60 = 0;
                }
              }

              v95 = Logger.logObject.getter();
              v96 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v95, v96))
              {
                v97 = swift_slowAlloc();
                v98 = swift_slowAlloc();
                v131 = v98;
                v132 = v58;
                *v97 = 136315138;
                v133 = v60;

                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
                v99 = String.init<A>(describing:)();
                v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v100, &v131);

                *(v97 + 4) = v101;
                _os_log_impl(&dword_26686A000, v95, v96, "#SiriKitGetEntityIntent address was converted to a phone number with value %s", v97, 0xCu);
                __swift_destroy_boxed_opaque_existential_0Tm(v98);
                MEMORY[0x26D5E3300](v98, -1, -1);
                MEMORY[0x26D5E3300](v97, -1, -1);
              }

              v102 = v122;
              *v122 = v58;
              v102[1] = v60;
              *(v102 + 16) = 1;
              return;
            }

            if (v34 >= *(a1 + 16))
            {
              __break(1u);
              goto LABEL_94;
            }

            a2 = (*(v4 + 80) + 32) & ~*(v4 + 80);
            v18 = *(v4 + 72);
            (*(v4 + 16))(v20, a1 + a2 + v18 * v34, v130);
            v36 = UsoIdentifier.namespace.getter();
            if (v37)
            {
              break;
            }

LABEL_16:
            (*v13)(v20, v130);
            ++v34;
          }

          if (v36 == 0x707954656E6F6870 && v37 == 0xE900000000000065)
          {
          }

          else
          {
            v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v39 & 1) == 0)
            {
              goto LABEL_16;
            }
          }

          v40 = *v124;
          (*v124)(v127, v20, v130);
          v41 = v126;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v43 = v41;
          v132 = v41;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v41 + 16) + 1, 1);
            v43 = v132;
          }

          v45 = *(v43 + 16);
          v44 = *(v43 + 24);
          v46 = (v45 + 1);
          if (v45 >= v44 >> 1)
          {
            v120 = v40;
            v126 = (v45 + 1);
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v44 > 1, v45 + 1, 1);
            v46 = v126;
            v40 = v120;
            v43 = v132;
          }

          ++v34;
          *(v43 + 16) = v46;
          v126 = v43;
          v40(v43 + a2 + v45 * v18, v127, v130);
        }
      }
    }

    else
    {
      outlined destroy of Result<TemplatingResult, Error>(&v132, &_sypSgMd, &_sypSgMR);
    }

    CodeGenBase.entity.getter();
    static UsoEntity_CodeGenConverter.convert(entity:)();

    if (!v134)
    {
      break;
    }

    type metadata accessor for UsoEntity_common_EmailAddress();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_45;
    }

    v122 = a2;
    v120 = v131;
    v47 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
    v123 = a1;

    a1 = 0;
    v20 = *(v47 + 16);
    v129 = (v4 + 16);
    v124 = (v4 + 32);
    v127 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v20 == a1)
      {

        if (*(v127 + 2))
        {
          v71 = v125;
          v72 = v130;
          (*(v4 + 16))(v125, &v127[(*(v4 + 80) + 32) & ~*(v4 + 80)], v130);

          v73 = UsoIdentifier.value.getter();
          v75 = v74;
          (*(v4 + 8))(v71, v72);
        }

        else
        {

          v89 = dispatch thunk of UsoEntity_common_EmailAddress.label.getter();
          v73 = v89;
          if (v90)
          {
            v73 = String.convertToContactAttributeLabel.getter(v89, v90);
            v75 = v91;
          }

          else
          {
            v75 = 0;
          }
        }

        v103 = Logger.logObject.getter();
        v104 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v103, v104))
        {
          v105 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          v131 = v106;
          v132 = v73;
          *v105 = 136315138;
          v133 = v75;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
          v107 = String.init<A>(describing:)();
          v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107, v108, &v131);

          *(v105 + 4) = v109;
          _os_log_impl(&dword_26686A000, v103, v104, "#SiriKitGetEntityIntent address was converted to an email with value %s", v105, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v106);
          MEMORY[0x26D5E3300](v106, -1, -1);
          MEMORY[0x26D5E3300](v105, -1, -1);
        }

        v110 = v122;
        *v122 = v73;
        v110[1] = v75;
        *(v110 + 16) = 0;
        return;
      }

      if (a1 >= *(v47 + 16))
      {
        break;
      }

      a2 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v48 = *(v4 + 72);
      (*(v4 + 16))(v13, v47 + a2 + v48 * a1, v130);
      v49 = UsoIdentifier.namespace.getter();
      if (!v50)
      {
        goto LABEL_35;
      }

      if (v49 == 0x7079546C69616D65 && v50 == 0xE900000000000065)
      {

LABEL_37:
        v121 = *v124;
        v121(v126, v13, v130);
        v52 = v127;
        v53 = swift_isUniquelyReferenced_nonNull_native();
        v132 = v52;
        if ((v53 & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v52 + 16) + 1, 1);
          v52 = v132;
        }

        v18 = *(v52 + 16);
        v54 = *(v52 + 24);
        v55 = (v18 + 1);
        if (v18 >= v54 >> 1)
        {
          v127 = (v18 + 1);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v54 > 1, v18 + 1, 1);
          v55 = v127;
          v52 = v132;
        }

        ++a1;
        *(v52 + 16) = v55;
        v127 = v52;
        v121(v52 + a2 + v18 * v48, v126, v130);
      }

      else
      {
        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v18)
        {
          goto LABEL_37;
        }

LABEL_35:
        (*(v4 + 8))(v13, v130);
        ++a1;
      }
    }

LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    swift_once();
  }

  outlined destroy of Result<TemplatingResult, Error>(&v132, &_sypSgMd, &_sypSgMR);
LABEL_45:
  CodeGenBase.entity.getter();
  static UsoEntity_CodeGenConverter.convert(entity:)();

  if (!v134)
  {

    outlined destroy of Result<TemplatingResult, Error>(&v132, &_sypSgMd, &_sypSgMR);
LABEL_67:
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_26686A000, v76, v77, "#SiriKitGetEntityIntent address did not convert to a known contact address type", v78, 2u);
      MEMORY[0x26D5E3300](v78, -1, -1);
    }

LABEL_70:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = -1;
    return;
  }

  type metadata accessor for UsoEntity_common_PostalAddress();
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_67;
  }

  v122 = a2;
  v120 = v131;
  v61 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v123 = a1;

  v62 = 0;
  v13 = *(v61 + 16);
  a1 = v4 + 16;
  v126 = (v4 + 32);
  v127 = MEMORY[0x277D84F90];
  while (v13 != v62)
  {
    if (v62 >= *(v61 + 16))
    {
      goto LABEL_95;
    }

    a2 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v20 = *(v4 + 72);
    (*(v4 + 16))(v129, v61 + a2 + v20 * v62, v130);
    v63 = UsoIdentifier.namespace.getter();
    if (v64)
    {
      if (v63 == 0x5473736572646461 && v64 == 0xEB00000000657079)
      {
      }

      else
      {
        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v18 & 1) == 0)
        {
          goto LABEL_56;
        }
      }

      v66 = *v126;
      (*v126)(v124, v129, v130);
      v67 = v127;
      v68 = swift_isUniquelyReferenced_nonNull_native();
      v132 = v67;
      v121 = v66;
      if ((v68 & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v67 + 16) + 1, 1);
        v67 = v132;
      }

      v18 = *(v67 + 16);
      v69 = *(v67 + 24);
      v70 = (v18 + 1);
      if (v18 >= v69 >> 1)
      {
        v127 = (v18 + 1);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v69 > 1, v18 + 1, 1);
        v70 = v127;
        v67 = v132;
      }

      ++v62;
      *(v67 + 16) = v70;
      v127 = v67;
      v121(v67 + a2 + v18 * v20, v124, v130);
    }

    else
    {
LABEL_56:
      (*(v4 + 8))(v129, v130);
      ++v62;
    }
  }

  if (*(v127 + 2))
  {
    v79 = v125;
    v80 = v130;
    (*(v4 + 16))(v125, &v127[(*(v4 + 80) + 32) & ~*(v4 + 80)], v130);

    v81 = UsoIdentifier.value.getter();
    v83 = v82;
    (*(v4 + 8))(v79, v80);
    v84 = v122;
    v85 = &off_266966000;
  }

  else
  {

    v92 = dispatch thunk of UsoEntity_common_PostalAddress.label.getter();
    if (v93)
    {
      v81 = String.convertToContactAttributeLabel.getter(v92, v93);
      v83 = v94;

      v84 = v122;
      v85 = &off_266966000;
    }

    else
    {
      v111 = UsoEntity_common_PostalAddress.requestedAddressField.getter(v92);
      v84 = v122;
      v85 = &off_266966000;
      if (v111 == 5)
      {
        v81 = 0;
        v83 = 0;
      }

      else
      {
        v81 = ContactNLIntent.ContactPostalAddressField.rawValue.getter(v111);
        v83 = v112;
      }
    }
  }

  v113 = Logger.logObject.getter();
  v114 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v131 = v116;
    v132 = v81;
    *v115 = *(v85 + 327);
    v133 = v83;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v117 = String.init<A>(describing:)();
    v119 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, v118, &v131);

    *(v115 + 4) = v119;
    _os_log_impl(&dword_26686A000, v113, v114, "#SiriKitGetEntityIntent address was converted to a postal address with value %s", v115, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v116);
    MEMORY[0x26D5E3300](v116, -1, -1);
    MEMORY[0x26D5E3300](v115, -1, -1);
  }

  *v84 = v81;
  v84[1] = v83;
  *(v84 + 16) = 2;
}

void UsoEntity_common_PersonRelationship.relationshipIdentifierOrLabel.getter()
{
  OUTLINED_FUNCTION_15();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v4 = OUTLINED_FUNCTION_18_0(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_4();
  v88 = v5 - v6;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v7);
  v9 = &v83 - v8;
  v10 = type metadata accessor for UsoIdentifier();
  OUTLINED_FUNCTION_1_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_9_27();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7_6();
  v86 = v15;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7_6();
  v96 = v17;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7_6();
  v91 = v19;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_49_7();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_26_6();
  v22 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
  v87 = v0;
  if (!v22)
  {
    v95 = 0x800000026696E150;
    goto LABEL_28;
  }

  v23 = v22;
  v84 = v2;
  v85 = v9;
  v24 = 0;
  v25 = *(v22 + 16);
  v93 = v12 + 16;
  v94 = v25;
  v95 = 0x800000026696E150;
  v90 = (v12 + 32);
  v92 = MEMORY[0x277D84F90];
  while (v94 != v24)
  {
    if (v24 >= *(v23 + 16))
    {
LABEL_51:
      __break(1u);
      return;
    }

    v26 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v27 = *(v12 + 72);
    (*(v12 + 16))(v1, v23 + v26 + v27 * v24, v10);
    UsoIdentifier.namespace.getter();
    if (!v28)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_47_6();
    v32 = v32 && v30 == v95;
    if (v32)
    {
LABEL_18:

LABEL_19:
      v40 = *v90;
      (*v90)(v91, v1, v10);
      v41 = v92;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = v41;
      v97 = v41;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v44 = OUTLINED_FUNCTION_18_17();
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v44, v45, v46);
        v43 = v97;
      }

      v48 = v43[2];
      v47 = v43[3];
      v49 = (v48 + 1);
      if (v48 >= v47 >> 1)
      {
        v50 = OUTLINED_FUNCTION_28_6(v47);
        v83 = v40;
        v92 = v51;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v50, v51, 1);
        v49 = v92;
        v40 = v83;
        v43 = v97;
      }

      ++v24;
      v43[2] = v49;
      v92 = v43;
      v40(v43 + v26 + v48 * v27, v91, v10);
    }

    else
    {
      v33 = OUTLINED_FUNCTION_54_5(v29, v30, v31, v95);

      if (v33)
      {
        goto LABEL_19;
      }

LABEL_11:
      v34 = UsoIdentifier.namespace.getter();
      if (!v35)
      {
        goto LABEL_17;
      }

      if (v34 == 0x6369746E616D6573 && v35 == 0xEE0065756C61765FLL)
      {
        goto LABEL_18;
      }

      v37 = OUTLINED_FUNCTION_57_4(v34, v35, 0x6369746E616D6573, 0xEE0065756C61765FLL);

      if (v37)
      {
        goto LABEL_19;
      }

LABEL_17:
      v38 = OUTLINED_FUNCTION_61_1();
      v39(v38);
      ++v24;
    }
  }

  v52 = v85;
  specialized Collection.first.getter(v92, v85);

  OUTLINED_FUNCTION_11_23(v52);
  if (!v32)
  {
    v81 = v84;
    OUTLINED_FUNCTION_2_18();
    v82();
    UsoIdentifier.value.getter();
    (*(v12 + 8))(v81, v10);
    goto LABEL_49;
  }

  outlined destroy of Result<TemplatingResult, Error>(v52, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
LABEL_28:
  v53 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v54 = 0;
  v55 = *(v53 + 16);
  v94 = v12 + 16;
  v92 = (v12 + 32);
  v56 = (v12 + 8);
  v93 = MEMORY[0x277D84F90];
  while (v55 != v54)
  {
    if (v54 >= *(v53 + 16))
    {
      __break(1u);
      goto LABEL_51;
    }

    v57 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v58 = *(v12 + 72);
    v59 = OUTLINED_FUNCTION_36_10();
    v60(v59);
    UsoIdentifier.namespace.getter();
    if (!v61)
    {
LABEL_37:
      (*v56)(v96, v10);
      ++v54;
      continue;
    }

    OUTLINED_FUNCTION_47_6();
    if (v32 && v63 == v95)
    {
    }

    else
    {
      v66 = OUTLINED_FUNCTION_54_5(v62, v63, v64, v95);

      if ((v66 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    v91 = *v92;
    v91(v89, v96, v10);
    v67 = v93;
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v97 = v67;
    if ((v68 & 1) == 0)
    {
      OUTLINED_FUNCTION_42_8();
      v69 = OUTLINED_FUNCTION_18_17();
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v69, v70, v71);
      v67 = v97;
    }

    v73 = *(v67 + 16);
    v72 = *(v67 + 24);
    v74 = v73 + 1;
    if (v73 >= v72 >> 1)
    {
      v75 = OUTLINED_FUNCTION_28_6(v72);
      v93 = v76;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v75, v76, 1);
      v74 = v93;
      v67 = v97;
    }

    ++v54;
    *(v67 + 16) = v74;
    v93 = v67;
    v91(v67 + v57 + v73 * v58, v89, v10);
  }

  v77 = v88;
  specialized Collection.first.getter(v93, v88);

  OUTLINED_FUNCTION_11_23(v77);
  if (v32)
  {
    outlined destroy of Result<TemplatingResult, Error>(v77, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
    dispatch thunk of UsoEntity_common_PersonRelationship.relationshipType.getter();
    if (!v78 && dispatch thunk of UsoEntity_common_PersonRelationship.relationshipTypeAsExpression.getter())
    {
      dispatch thunk of CodeGenExpression.operand.getter();
    }
  }

  else
  {
    v79 = v86;
    OUTLINED_FUNCTION_2_18();
    v80();
    UsoIdentifier.value.getter();
    (*v56)(v79, v10);
  }

LABEL_49:
  OUTLINED_FUNCTION_14();
}

uint64_t one-time initialization function for transformer()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A15ContactsIntents16ContactAttributeC0A8Ontology032UsoEntityBuilderProtocol_common_F7Address_pSgGMd, &_s13SiriUtilities11TransformerVy0A15ContactsIntents16ContactAttributeC0A8Ontology032UsoEntityBuilderProtocol_common_F7Address_pSgGMR);
  __swift_allocate_value_buffer(v0, static Transformer<>.transformer);
  __swift_project_value_buffer(v0, static Transformer<>.transformer);
  type metadata accessor for ContactAttribute();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology46UsoEntityBuilderProtocol_common_ContactAddress_pSgMd, &_s12SiriOntology46UsoEntityBuilderProtocol_common_ContactAddress_pSgMR);
  return Transformer.init(transform:)();
}

void closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 contactAttributeType];
  if (v4 == 1)
  {
    type metadata accessor for UsoEntityBuilder_common_EmailAddress();
    v5 = UsoEntityBuilder_common_EmailAddress.init(emailAddress:)(v3);
    v6 = MEMORY[0x277D5F270];
    goto LABEL_10;
  }

  if (v4 == 3)
  {
    v5 = [v3 postalAddress];
    if (v5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
      v7 = v5;
      v8 = CNLabeledValue<>.init(address:)(v7);
      type metadata accessor for UsoEntityBuilder_common_PostalAddress();
      static UsoEntityBuilder_common_PostalAddress.from(_:)();
      v5 = v9;

      v6 = MEMORY[0x277D5F2F8];
      goto LABEL_10;
    }

LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  if (v4 != 2)
  {
    v5 = 0;
    goto LABEL_9;
  }

  type metadata accessor for UsoEntityBuilder_common_PhoneNumber();
  v5 = UsoEntityBuilder_common_PhoneNumber.init(phoneNumber:)(v3);
  v6 = MEMORY[0x277D5F218];
LABEL_10:
  *a2 = v5;
  a2[1] = v6;
}

void closure #1 in static Transformer<>.transformer(_:referenceResolver:)(void *a2@<X1>, uint64_t a3@<X2>, void *x8_0@<X8>)
{
  closure #1 in static Transformer<>.transformer(_:referenceResolver:)(a2, a3, MEMORY[0x277D5EA08], x8_0);
}

{
  closure #1 in static Transformer<>.transformer(_:referenceResolver:)(a2, a3, MEMORY[0x277D5F098], x8_0);
}

void *specialized SiriKitGetEntityIntent.resolveReference(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v54[-v3];
  v5 = type metadata accessor for UsoEntity_common_Person.DefinedValues();
  v57 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v56 = &v54[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMR);
  MEMORY[0x28223BE20](v7);
  v9 = &v54[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v54[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v54[-v15];
  MEMORY[0x28223BE20](v14);
  v18 = &v54[-v17];
  v58 = v1;
  specialized SiriKitGetEntityIntent.setIsMe(reference:)();
  if (!dispatch thunk of UsoEntity_common_Person.identifyingRelationship.getter())
  {
    v20 = dispatch thunk of UsoEntity_common_Person.name.getter();
    v22 = v58;
    if (v21)
    {
      v23 = v20;
      v24 = v21;
      v61 = v20;
      v62 = v21;
      v59 = 39;
      v60 = 0xE100000000000000;
      v25 = type metadata accessor for Locale();
      __swift_storeEnumTagSinglePayload(v4, 1, 1, v25);
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol.range<A>(of:options:range:locale:)();
      v27 = v26;
      outlined destroy of Result<TemplatingResult, Error>(v4, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      if ((v27 & 1) == 0)
      {
        v61 = v23;
        v62 = v24;
        v23 = StringProtocol.substring(to:)();
        v29 = v28;

        v24 = v29;
      }

      v30 = MEMORY[0x26D5E2470](v23, v24);

      v31 = MEMORY[0x26D5E2470](0x656D614E6C6C7566, 0xE800000000000000);
      [v22 setValue:v30 forKey:v31];
    }

    if (dispatch thunk of UsoEntity_common_Person.associatedOrganization.getter())
    {
      v32 = dispatch thunk of UsoEntity_common_Organization.name.getter();
      v34 = v33;

      if (v34)
      {
        v35 = MEMORY[0x26D5E2470](v32, v34);

        v36 = MEMORY[0x26D5E2470](0xD000000000000010, 0x800000026696E320);
        [v22 setValue:v35 forKey:v36];
      }
    }

    v37 = dispatch thunk of UsoEntity_common_Person.specifyingContactAddress.getter();
    _s19SiriContactsIntents0A18KitGetEntityIntentPAAE18resolveAddressType4fromAA017SpecifyingContactiJ0OSg0A8Ontology03Usof8_common_mI0CSg_tFZAA0emG0C_Tt1g5(v37, &v61);

    v38 = v61;
    v39 = v62;
    v40 = v63;
    if (v63)
    {
      if (v63 != 1)
      {
        if (v63 != 2)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      if (v62)
      {
        v48 = MEMORY[0x26D5E2470](v61, v62);
      }

      else
      {
        v48 = 0;
      }

      v49 = 0x6D754E656E6F6870;
      v50 = 0xEB00000000726562;
    }

    else
    {
      if (v62)
      {
        v48 = MEMORY[0x26D5E2470](v61, v62);
      }

      else
      {
        v48 = 0;
      }

      v49 = 0x6464416C69616D65;
      v50 = 0xEC00000073736572;
    }

    v51 = MEMORY[0x26D5E2470](v49, v50);
    [v22 setValue:v48 forKey:v51];
    swift_unknownObjectRelease();

LABEL_35:
    outlined consume of SpecifyingContactAddressType?(v38, v39, v40);
LABEL_36:
    v52 = v22;
    return v22;
  }

  if (!dispatch thunk of UsoEntity_common_PersonRelationship.fromPerson.getter())
  {
LABEL_22:
    UsoEntity_common_PersonRelationship.relationshipIdentifierOrLabel.getter();
    if (v45)
    {
      v46 = MEMORY[0x26D5E2470]();
    }

    else
    {
      v46 = 0;
    }

    v22 = v58;
    v47 = MEMORY[0x26D5E2470](0x52746361746E6F63, 0xEF6E6F6974616C65);
    [v22 setValue:v46 forKey:v47];

    swift_unknownObjectRelease();

    goto LABEL_36;
  }

  dispatch thunk of UsoEntity_common_Person.definedValue.getter();
  (*(v57 + 104))(v16, *MEMORY[0x277D5E828], v5);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v5);
  v19 = *(v7 + 48);
  outlined init with copy of Result<RRResult, Error>(v18, v9, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  outlined init with copy of Result<RRResult, Error>(v16, &v9[v19], &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  if (__swift_getEnumTagSinglePayload(v9, 1, v5) == 1)
  {

    outlined destroy of Result<TemplatingResult, Error>(v16, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
    outlined destroy of Result<TemplatingResult, Error>(v18, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
    if (__swift_getEnumTagSinglePayload(&v9[v19], 1, v5) == 1)
    {
      outlined destroy of Result<TemplatingResult, Error>(v9, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  outlined init with copy of Result<RRResult, Error>(v9, v13, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  if (__swift_getEnumTagSinglePayload(&v9[v19], 1, v5) == 1)
  {

    outlined destroy of Result<TemplatingResult, Error>(v16, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
    outlined destroy of Result<TemplatingResult, Error>(v18, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
    (*(v57 + 8))(v13, v5);
LABEL_19:
    outlined destroy of Result<TemplatingResult, Error>(v9, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMR);
    goto LABEL_20;
  }

  v41 = v57;
  v42 = &v9[v19];
  v43 = v56;
  (*(v57 + 32))(v56, v42, v5);
  lazy protocol witness table accessor for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues();
  v55 = dispatch thunk of static Equatable.== infix(_:_:)();

  v44 = *(v41 + 8);
  v44(v43, v5);
  outlined destroy of Result<TemplatingResult, Error>(v16, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  outlined destroy of Result<TemplatingResult, Error>(v18, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  v44(v13, v5);
  outlined destroy of Result<TemplatingResult, Error>(v9, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  if (v55)
  {
    goto LABEL_22;
  }

LABEL_20:

  return 0;
}

void SiriKitGetEntityIntent.resolveReference(_:)()
{
  OUTLINED_FUNCTION_15();
  v79[1] = v2;
  v80 = v3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  OUTLINED_FUNCTION_18_0(v6);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v7);
  v9 = v79 - v8;
  v10 = type metadata accessor for UsoEntity_common_Person.DefinedValues();
  OUTLINED_FUNCTION_1_0();
  v81 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8();
  v79[0] = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMR);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v16);
  v18 = v79 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  v20 = OUTLINED_FUNCTION_18_0(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_4();
  v23 = v21 - v22;
  v25 = MEMORY[0x28223BE20](v24);
  v27 = v79 - v26;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_26_6();
  v82 = v0;
  SiriKitGetEntityIntent.setIsMe(reference:)(v5);
  if (!dispatch thunk of UsoEntity_common_Person.identifyingRelationship.getter())
  {
    v35 = dispatch thunk of UsoEntity_common_Person.name.getter();
    v37 = v82;
    if (v36)
    {
      v38 = v35;
      v39 = v36;
      v85 = v35;
      v86 = v36;
      v83 = 39;
      v84 = 0xE100000000000000;
      v40 = type metadata accessor for Locale();
      __swift_storeEnumTagSinglePayload(v9, 1, 1, v40);
      lazy protocol witness table accessor for type String and conformance String();
      OUTLINED_FUNCTION_16_1();
      StringProtocol.range<A>(of:options:range:locale:)();
      v42 = v41;
      outlined destroy of Result<TemplatingResult, Error>(v9, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      if ((v42 & 1) == 0)
      {
        v85 = v38;
        v86 = v39;
        StringProtocol.substring(to:)();
      }

      v43 = OUTLINED_FUNCTION_61_1();
      v44 = MEMORY[0x26D5E2470](v43);

      v45 = MEMORY[0x26D5E2470](0x656D614E6C6C7566, 0xE800000000000000);
      OUTLINED_FUNCTION_40_6();
      [v46 v47];
    }

    if (dispatch thunk of UsoEntity_common_Person.associatedOrganization.getter())
    {
      v48 = dispatch thunk of UsoEntity_common_Organization.name.getter();
      v50 = v49;

      if (v50)
      {
        v51 = MEMORY[0x26D5E2470](v48, v50);

        v52 = MEMORY[0x26D5E2470](0xD000000000000010, 0x800000026696E320);
        [v37 setValue:v51 forKey:v52];
      }
    }

    v53 = dispatch thunk of UsoEntity_common_Person.specifyingContactAddress.getter();
    static SiriKitGetEntityIntent.resolveAddressType(from:)(v53);

    v54 = v87;
    if (v87)
    {
      if (v87 != 1)
      {
        if (v87 != 2)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }

      if (v86)
      {
        v70 = OUTLINED_FUNCTION_22_0();
        v71 = MEMORY[0x26D5E2470](v70);
      }

      else
      {
        v71 = 0;
      }

      v73 = 0x6D754E656E6F6870;
      v74 = 0xEB00000000726562;
    }

    else
    {
      if (v86)
      {
        v72 = OUTLINED_FUNCTION_22_0();
        v71 = MEMORY[0x26D5E2470](v72);
      }

      else
      {
        v71 = 0;
      }

      v73 = 0x6464416C69616D65;
      v74 = 0xEC00000073736572;
    }

    v75 = MEMORY[0x26D5E2470](v73, v74);
    [v37 setValue:v71 forKey:v75];
    swift_unknownObjectRelease();

LABEL_37:
    v76 = OUTLINED_FUNCTION_22_0();
    outlined consume of SpecifyingContactAddressType?(v76, v77, v54);
LABEL_38:
    v78 = v37;
    goto LABEL_39;
  }

  if (!dispatch thunk of UsoEntity_common_PersonRelationship.fromPerson.getter())
  {
    goto LABEL_25;
  }

  dispatch thunk of UsoEntity_common_Person.definedValue.getter();
  (*(v81 + 104))(v27, *MEMORY[0x277D5E828], v10);
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v10);
  v28 = *(v15 + 48);
  outlined init with copy of Result<RRResult, Error>(v1, v18, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  outlined init with copy of Result<RRResult, Error>(v27, &v18[v28], &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  OUTLINED_FUNCTION_57(v18, 1, v10);
  if (v55)
  {

    OUTLINED_FUNCTION_14_20();
    outlined destroy of Result<TemplatingResult, Error>(v29, v30, v31);
    OUTLINED_FUNCTION_14_20();
    outlined destroy of Result<TemplatingResult, Error>(v32, v33, v34);
    OUTLINED_FUNCTION_57(&v18[v28], 1, v10);
    if (!v55)
    {
      goto LABEL_22;
    }

    outlined destroy of Result<TemplatingResult, Error>(v18, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
LABEL_25:
    UsoEntity_common_PersonRelationship.relationshipIdentifierOrLabel.getter();
    if (v66)
    {
      MEMORY[0x26D5E2470]();
    }

    v37 = v82;
    v67 = MEMORY[0x26D5E2470](0x52746361746E6F63, 0xEF6E6F6974616C65);
    OUTLINED_FUNCTION_40_6();
    [v68 v69];

    swift_unknownObjectRelease();

    goto LABEL_38;
  }

  outlined init with copy of Result<RRResult, Error>(v18, v23, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  OUTLINED_FUNCTION_57(&v18[v28], 1, v10);
  if (v55)
  {

    OUTLINED_FUNCTION_14_20();
    outlined destroy of Result<TemplatingResult, Error>(v56, v57, v58);
    OUTLINED_FUNCTION_14_20();
    outlined destroy of Result<TemplatingResult, Error>(v59, v60, v61);
    (*(v81 + 8))(v23, v10);
LABEL_22:
    outlined destroy of Result<TemplatingResult, Error>(v18, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMR);
    goto LABEL_23;
  }

  v62 = v81;
  v63 = &v18[v28];
  v64 = v79[0];
  (*(v81 + 32))(v79[0], v63, v10);
  lazy protocol witness table accessor for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues();
  LODWORD(v80) = dispatch thunk of static Equatable.== infix(_:_:)();

  v65 = *(v62 + 8);
  v65(v64, v10);
  outlined destroy of Result<TemplatingResult, Error>(v27, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  outlined destroy of Result<TemplatingResult, Error>(v1, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  v65(v23, v10);
  outlined destroy of Result<TemplatingResult, Error>(v18, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  if (v80)
  {
    goto LABEL_25;
  }

LABEL_23:

LABEL_39:
  OUTLINED_FUNCTION_14();
}

void closure #1 in static Transformer<>.transformer(_:)(void *a2@<X1>, void *x8_0@<X8>)
{
  closure #1 in static Transformer<>.transformer(_:)(a2, MEMORY[0x277D5E228], x8_0);
}

{
  sub_26686DBC8(a2, x8_0);
}

void closure #1 in static Transformer<>.transformer(_:referenceResolver:)(void *a1@<X1>, uint64_t a2@<X2>, void (*a3)(uint64_t *__return_ptr, void *)@<X3>, void *a4@<X8>)
{
  if (a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = [objc_allocWithZone(type metadata accessor for GetContactIntent()) init];
  }

  a3(&v13, a1);
  v9 = v13;
  if (v13)
  {

    specialized SiriKitContactIntent.shouldRunReferenceResolution(given:)();
    v11 = v10;

    if (v11)
    {
      specialized SiriKitGetEntityIntent.runReferenceResolution(_:)(a2, _s19SiriContactsIntents0A16KitContactIntentPAAE22runReferenceResolution_10completiony0ahI027RRReferenceResolverProtocol_p_yAA0adeF13ResolvedValueOctFZAA03GeteF0C_Tt1g504_s19ab11Intents0A18dp6Entityf9PAAE22runh19Resolutionyy0aiJ027klm10_pFyAA0ad7e3G13nO24OcfU_Tf0ns_nAA0enG0C_Tg5AKSgXwTf1nc_n);
    }

    v12 = specialized SiriKitGetEntityIntent.resolveReference(_:)(v9);
  }

  else
  {
    v12 = v8;
  }

  *a4 = v12;
}

void closure #1 in static Transformer<>.transformer(_:)(void *a1@<X1>, void (*a2)(uint64_t *__return_ptr, void *)@<X2>, void *a3@<X8>)
{
  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = [objc_allocWithZone(type metadata accessor for GetContactIntent()) init];
  }

  a2(&v8, a1);
  if (v8)
  {
    v7 = specialized SiriKitGetEntityIntent.resolveReference(_:)(v8);
  }

  else
  {
    v7 = v6;
  }

  *a3 = v7;
}

uint64_t static GetContactAttributeIntent.from(_:_:referenceResolver:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return OUTLINED_FUNCTION_0_3();
}

{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return OUTLINED_FUNCTION_0_3();
}

{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return OUTLINED_FUNCTION_0_3();
}

{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return OUTLINED_FUNCTION_0_3();
}

uint64_t static GetContactAttributeIntent.from(_:_:referenceResolver:)()
{
  v2 = v1[4];
  if (v2)
  {
    v0 = v1[4];
  }

  else
  {
    [objc_allocWithZone(type metadata accessor for GetContactAttributeIntent()) init];
    OUTLINED_FUNCTION_51_4();
  }

  v1[6] = v0;
  v3 = v2;
  dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
  v4 = v1[2];
  v1[7] = v4;
  if (v4)
  {

    v5 = swift_task_alloc();
    v1[8] = v5;
    *v5 = v1;
    OUTLINED_FUNCTION_8_30(v5);

    return GetContactAttributeIntent.resolveReferenceAndAttribute(_:)();
  }

  else
  {

    OUTLINED_FUNCTION_12_14();

    return v7(0);
  }
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 72) = v3;

  v4 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  v2 = v1[4];
  if (v2)
  {
    v0 = v1[4];
  }

  else
  {
    [objc_allocWithZone(type metadata accessor for GetContactAttributeIntent()) init];
    OUTLINED_FUNCTION_51_4();
  }

  v1[6] = v0;
  v3 = v2;
  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
  v4 = v1[2];
  v1[7] = v4;
  if (v4)
  {

    v5 = swift_task_alloc();
    v1[8] = v5;
    *v5 = v1;
    OUTLINED_FUNCTION_8_30(v5);

    return GetContactAttributeIntent.resolveReferenceAndAttribute(_:)();
  }

  else
  {

    OUTLINED_FUNCTION_12_14();

    return v7(0);
  }
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 72) = v3;

  v4 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  OUTLINED_FUNCTION_4();
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  if (v1)
  {

    GetContactAttributeIntent.resolveStructuredName(from:)(v2);
    specialized SiriKitContactIntent.shouldRunReferenceResolution(given:)();
    v4 = v3;

    if (v4)
    {
      OUTLINED_FUNCTION_16_16();
      specialized SiriKitGetEntityIntent.runReferenceResolution(_:)(v5, v6);
    }

    v7 = *(v0 + 48);
  }

  else
  {

    v7 = 0;
  }

  OUTLINED_FUNCTION_12_14();

  return v8(v7);
}

{
  v2 = v1[4];
  if (v2)
  {
    v0 = v1[4];
  }

  else
  {
    [objc_allocWithZone(type metadata accessor for GetContactAttributeIntent()) init];
    OUTLINED_FUNCTION_51_4();
  }

  v1[6] = v0;
  v3 = v2;
  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
  v4 = v1[2];
  v1[7] = v4;
  if (v4)
  {

    v5 = swift_task_alloc();
    v1[8] = v5;
    *v5 = v1;
    OUTLINED_FUNCTION_8_30(v5);

    return GetContactAttributeIntent.resolveReferenceAndAttribute(_:)();
  }

  else
  {

    OUTLINED_FUNCTION_12_14();

    return v7(0);
  }
}

{
  OUTLINED_FUNCTION_4();
  v2 = v1[7];
  if (v2)
  {
    v0 = v1[7];
  }

  else
  {
    [objc_allocWithZone(type metadata accessor for GetContactAttributeIntent()) init];
    OUTLINED_FUNCTION_51_4();
  }

  v1[9] = v0;
  v3 = v2;
  dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
  v1[10] = v1[2];
  v4 = swift_task_alloc();
  v1[11] = v4;
  *v4 = v1;
  OUTLINED_FUNCTION_8_30(v4);

  return GetContactAttributeIntent.resolveReferenceAndAttribute(_:)();
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v1 = v0;
  *(v0 + 96) = v2;

  v3 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

{
  v1 = *(v0 + 96);
  if (!v1)
  {

    goto LABEL_21;
  }

  dispatch thunk of Uso_VerbTemplate_ReferenceSelect.select.getter();
  v2 = *(v0 + 24);
  if (v2)
  {
    v3 = [*(v0 + 72) contactAttributeToGet];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 contactAttributeType];

      if (v5 == 4)
      {
LABEL_18:

        goto LABEL_19;
      }
    }

    if (dispatch thunk of UsoEntity_common_Person.age.getter() || dispatch thunk of UsoEntity_common_Person.birthdate.getter())
    {
      v6 = *(v0 + 72);

      type metadata accessor for ContactAttribute();
      OUTLINED_FUNCTION_15_20();
    }

    else
    {
      dispatch thunk of UsoEntity_common_Person.phoneticName.getter();
      if (v7 || (dispatch thunk of UsoEntity_common_Person.name.getter(), v8))
      {
        v6 = *(v0 + 72);

        type metadata accessor for ContactAttribute();
        OUTLINED_FUNCTION_15_20();
      }

      else
      {
        v25 = dispatch thunk of UsoEntity_common_Person.associatedOrganization.getter();
        v6 = *(v0 + 72);
        if (!v25)
        {
          GetContactAttributeIntent.resolveStructuredName(from:)(v2);
          goto LABEL_13;
        }

        type metadata accessor for ContactAttribute();
        OUTLINED_FUNCTION_15_20();
      }
    }

    OUTLINED_FUNCTION_0_51();
    v16 = ContactAttribute.__allocating_init(contactAttributeType:identifier:handleLabel:handleValue:ageDateTime:postalAddress:)(v9, v10, v11, v12, v13, v14, v15, 0, v26);
    [v6 setContactAttributeToGet_];

LABEL_13:
    dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
    if (*(v0 + 40) && (dispatch thunk of UsoEntity_common_Person.specifyingContactAddress.getter(), OUTLINED_FUNCTION_41_10(), , v17 = *(v0 + 72), , (v18 = [v17 contactAttributeToGet]) != 0))
    {
    }

    else if (dispatch thunk of UsoEntity_common_Person.specifyingContactAddress.getter())
    {
      GetContactAttributeIntent.setHandleAttribute(from:)();
    }

    goto LABEL_18;
  }

LABEL_19:
  dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
  specialized SiriKitContactIntent.shouldRunReferenceResolution(given:)();
  v20 = v19;

  if (v20)
  {
    OUTLINED_FUNCTION_16_16();
    specialized SiriKitGetEntityIntent.runReferenceResolution(_:)(v21, v22);
  }

LABEL_21:
  OUTLINED_FUNCTION_12_14();

  return v23();
}

uint64_t GetContactAttributeIntent.resolveReferenceAndAttribute(_:)()
{
  OUTLINED_FUNCTION_4();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = swift_getObjectType();
  v3 = type metadata accessor for UsoIdentifier();
  v1[5] = v3;
  v1[6] = *(v3 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  if (!v0[2])
  {
    goto LABEL_6;
  }

  SiriKitGetEntityIntent.resolveReference(_:)();
  if (!v1)
  {

LABEL_6:
    v2 = 0;
    goto LABEL_58;
  }

  if (dispatch thunk of UsoEntity_common_Person.specifyingContactAddress.getter())
  {
    GetContactAttributeIntent.setHandleAttribute(from:)();
    goto LABEL_56;
  }

  v3 = dispatch thunk of UsoEntity_common_Person.associatedDate.getter();
  v0[10] = v3;
  if (!v3)
  {
    v35 = dispatch thunk of UsoEntity_common_Person.age.getter();
    v0[13] = v35;
    if (!v35)
    {
      goto LABEL_57;
    }

    if (!dispatch thunk of UsoEntity_common_Age.referenceDateTime.getter() || (v36 = dispatch thunk of UsoEntity_common_DateTime.date.getter(), v0[14] = v36, , !v36))
    {
      type metadata accessor for ContactAttribute();
      OUTLINED_FUNCTION_15_20();
      OUTLINED_FUNCTION_0_51();
      v55 = ContactAttribute.__allocating_init(contactAttributeType:identifier:handleLabel:handleValue:ageDateTime:postalAddress:)(v48, v49, v50, v51, v52, v53, v54, 0, v80);
      v56 = OUTLINED_FUNCTION_27_11();
      [v56 v57];

      goto LABEL_56;
    }

    v37 = swift_task_alloc();
    v0[15] = v37;
    *v37 = v0;
    v37[1] = GetContactAttributeIntent.resolveReferenceAndAttribute(_:);
    OUTLINED_FUNCTION_24_13();
LABEL_51:

    return static DateTimeUtil.getRequestedAgeDateTime(from:)();
  }

  v4 = 0x7961646874726962;
  v5 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  result = dispatch thunk of UsoEntity_common_Date.name.getter();
  if (!v8)
  {
    goto LABEL_17;
  }

  if (result == 0x7961646874726962 && v8 == 0xE800000000000000)
  {

    goto LABEL_39;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v10)
  {
LABEL_39:

    v39 = v0[3];
    type metadata accessor for ContactAttribute();
    OUTLINED_FUNCTION_15_20();
    OUTLINED_FUNCTION_0_51();
    v47 = ContactAttribute.__allocating_init(contactAttributeType:identifier:handleLabel:handleValue:ageDateTime:postalAddress:)(v40, v41, v42, v43, v44, v45, v46, 0, v80);
    [v39 setContactAttributeToGet_];

    goto LABEL_56;
  }

LABEL_17:
  v11 = 0;
  v12 = v0[6];
  v85 = *(v6 + 16);
  v13 = (v12 + 8);
  v82 = (v12 + 32);
  v83 = MEMORY[0x277D84F90];
  while (v85 != v11)
  {
    if (v11 >= *(v6 + 16))
    {
      __break(1u);
LABEL_62:
      __break(1u);
      return result;
    }

    v14 = v0[9];
    OUTLINED_FUNCTION_21_17();
    v17 = v16 & ~v15;
    v18 = *(v12 + 72);
    (*(v12 + 16))(v14, v6 + v17 + v18 * v11);
    if (UsoIdentifier.value.getter() == v4 && v19 == 0xE800000000000000)
    {
      v21 = v4;

LABEL_27:
      v23 = *v82;
      (*v82)(v0[8], v0[9], v0[5]);
      v24 = v83;
      v86 = v83;
      v81 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_42_8();
        v25 = OUTLINED_FUNCTION_18_17();
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v25, v26, v27);
        v24 = v83;
      }

      v29 = *(v24 + 16);
      v28 = *(v24 + 24);
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        v33 = OUTLINED_FUNCTION_28_6(v28);
        v84 = v34;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v33, v34, 1);
        v30 = v84;
        v24 = v86;
      }

      ++v11;
      v31 = v0[8];
      v32 = v0[5];
      *(v24 + 16) = v30;
      v83 = v24;
      result = v81(v24 + v17 + v29 * v18, v31, v32);
      v4 = v21;
    }

    else
    {
      v21 = v4;
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v22)
      {
        goto LABEL_27;
      }

      result = (*v13)(v0[9], v0[5]);
      ++v11;
      v4 = v21;
    }
  }

  v38 = *(v83 + 16);

  if (v38)
  {
    goto LABEL_39;
  }

  v58 = 0;
  while (1)
  {
    if (v85 == v58)
    {

      v68 = swift_task_alloc();
      v0[11] = v68;
      *v68 = v0;
      v68[1] = GetContactAttributeIntent.resolveReferenceAndAttribute(_:);
      goto LABEL_51;
    }

    if (v58 >= *(v6 + 16))
    {
      goto LABEL_62;
    }

    v59 = v0[7];
    OUTLINED_FUNCTION_21_17();
    (*(v12 + 16))(v59, v6 + (v61 & ~v60) + *(v12 + 72) * v58);
    v62 = UsoIdentifier.value.getter();
    v64 = v0[7];
    v65 = v0[5];
    if (v62 == 0x73726576696E6E61 && v63 == 0xEB00000000797261)
    {
      break;
    }

    ++v58;
    v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = (*v13)(v64, v65);
    if (v67)
    {
      goto LABEL_55;
    }
  }

  (*v13)(v64, v65);
LABEL_55:
  v69 = v0[3];

  type metadata accessor for ContactAttribute();
  OUTLINED_FUNCTION_15_20();
  OUTLINED_FUNCTION_0_51();
  v77 = ContactAttribute.__allocating_init(contactAttributeType:identifier:handleLabel:handleValue:ageDateTime:postalAddress:)(v70, v71, v72, v73, v74, v75, v76, 0, v80);
  [v69 setContactAttributeToGet_];

LABEL_56:

LABEL_57:
  v2 = v0[3];

  v78 = v2;
LABEL_58:

  OUTLINED_FUNCTION_12_14();

  return v79(v2);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 96) = v3;

  v4 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  v1 = *(v0 + 96);
  if (v1)
  {
    type metadata accessor for ContactAttribute();
    v2 = v1;
    OUTLINED_FUNCTION_0_51();
    v10 = ContactAttribute.__allocating_init(contactAttributeType:identifier:handleLabel:handleValue:ageDateTime:postalAddress:)(v3, v4, v5, v6, v7, v8, v9, v1, 0);
    v11 = OUTLINED_FUNCTION_27_11();
    [v11 v12];
  }

  v13 = *(v0 + 24);

  v14 = v13;

  OUTLINED_FUNCTION_12_14();

  return v15(v13);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 128) = v3;

  v4 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  v1 = *(v0 + 128);
  if (v1)
  {
    v2 = *(v0 + 24);
    type metadata accessor for ContactAttribute();
    v3 = v1;
    OUTLINED_FUNCTION_0_51();
    v11 = ContactAttribute.__allocating_init(contactAttributeType:identifier:handleLabel:handleValue:ageDateTime:postalAddress:)(v4, v5, v6, v7, v8, v9, v10, v1, 0);
    [v2 setContactAttributeToGet_];
  }

  else
  {

    type metadata accessor for ContactAttribute();
    OUTLINED_FUNCTION_15_20();
    OUTLINED_FUNCTION_0_51();
    v19 = ContactAttribute.__allocating_init(contactAttributeType:identifier:handleLabel:handleValue:ageDateTime:postalAddress:)(v12, v13, v14, v15, v16, v17, v18, 0, v26);
    v20 = OUTLINED_FUNCTION_27_11();
    [v20 v21];
  }

  v22 = *(v0 + 24);

  v23 = v22;

  OUTLINED_FUNCTION_12_14();

  return v24(v22);
}

void GetContactAttributeIntent.resolveStructuredName(from:)(uint64_t a1)
{
  v2 = v1;
  if (dispatch thunk of UsoEntity_common_Person.structuredName.getter())
  {

    v4 = CodeGenBase.entity.getter();
    UsoEntity.attributes.getter();
    OUTLINED_FUNCTION_24_13();

    specialized Dictionary.subscript.getter(0x6D614E6E65766967, 0xE900000000000065, a1);
    OUTLINED_FUNCTION_48_0();

    if (v4 || (v13 = CodeGenBase.entity.getter(), UsoEntity.attributes.getter(), OUTLINED_FUNCTION_24_13(), , specialized Dictionary.subscript.getter(0x614E796C696D6166, 0xEA0000000000656DLL, a1), OUTLINED_FUNCTION_48_0(), , v13))
    {

      type metadata accessor for ContactAttribute();
      OUTLINED_FUNCTION_15_20();
    }

    else
    {
      CodeGenBase.entity.getter();
      OUTLINED_FUNCTION_41_10();

      UsoEntity.attributes.getter();
      OUTLINED_FUNCTION_24_13();

      specialized Dictionary.subscript.getter(0x656D614E6B63696ELL, 0xE800000000000000, a1);
      OUTLINED_FUNCTION_48_0();

      type metadata accessor for ContactAttribute();
      OUTLINED_FUNCTION_15_20();
    }

    OUTLINED_FUNCTION_0_51();
    v26 = ContactAttribute.__allocating_init(contactAttributeType:identifier:handleLabel:handleValue:ageDateTime:postalAddress:)(v19, v20, v21, v22, v23, v24, v25, 0, v29);
    v27 = OUTLINED_FUNCTION_27_11();
    [v27 v28];

    return;
  }

  v5 = CodeGenBase.entity.getter();
  v6 = UsoEntity.attributes.getter();

  specialized Dictionary.subscript.getter(1701667182, 0xE400000000000000, v6);
  OUTLINED_FUNCTION_41_10();

  if (v5)
  {
    if (specialized Array._getCount()())
    {
      OUTLINED_FUNCTION_6_32();
      if (v6)
      {
        MEMORY[0x26D5E29D0](0, v5);
      }

      else
      {
      }

      v7 = dispatch thunk of UsoValue.getAsPrimitiveValueString()();
      if (!v8)
      {
        v14 = v7;
        type metadata accessor for ContactAttribute();
        OUTLINED_FUNCTION_15_20();
        v15 = v14;
        v16 = v14;
        v17 = v14;
        goto LABEL_26;
      }
    }
  }

  v9 = CodeGenBase.entity.getter();
  v10 = UsoEntity.attributes.getter();

  specialized Dictionary.subscript.getter(0x636974656E6F6870, 0xEC000000656D614ELL, v10);
  OUTLINED_FUNCTION_41_10();

  if (!v9)
  {
    return;
  }

  if (!specialized Array._getCount()())
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_6_32();
  if (v10)
  {
    MEMORY[0x26D5E29D0](0, v9);
  }

  else
  {
  }

  v11 = dispatch thunk of UsoValue.getAsPrimitiveValueString()();
  if (v12)
  {

LABEL_21:

    return;
  }

  v18 = v11;
  type metadata accessor for ContactAttribute();
  v29 = 0;
  v15 = v18;
  v16 = v18;
  v17 = v18;
LABEL_26:
  v30 = ContactAttribute.__allocating_init(contactAttributeType:identifier:handleLabel:handleValue:ageDateTime:postalAddress:)(9, v15, 0, v16, 0, v17, 0, 0, v29);
  [v2 setContactAttributeToGet_];
}

void GetContactAttributeIntent.setHandleAttribute(from:)()
{
  OUTLINED_FUNCTION_15();
  v2 = v0;
  v4 = v3;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for UsoIdentifier();
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_38_6();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_6();
  v189 = v11;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_6();
  v198 = v13;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7_6();
  v192 = v15;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_9_27();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7_6();
  v200 = v18;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_6();
  v190 = v20;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7_6();
  v196 = v22;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v23);
  v25 = (v186 - v24);
  OUTLINED_FUNCTION_44_6();
  v26 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
  if (!v26)
  {
    goto LABEL_109;
  }

  v27 = v26;
  v186[1] = ObjectType;
  if (one-time initialization token for siriContacts != -1)
  {
LABEL_119:
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  v29 = __swift_project_value_buffer(v28, static Logger.siriContacts);

  v202 = v29;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  v32 = os_log_type_enabled(v30, v31);
  v191 = v2;
  v187 = v1;
  v188 = v4;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v203[0] = v2;
    *v33 = 136315138;
    v34 = MEMORY[0x26D5E2610](v27, v6);
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, v203);

    *(v33 + 4) = v36;
    _os_log_impl(&dword_26686A000, v30, v31, "#GetContactAttributeIntent: checking against %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v2);
    OUTLINED_FUNCTION_6();
    v4 = v188;
    OUTLINED_FUNCTION_6();
  }

  static GetContactAttributeIntent.shouldHandleAmbiguousAddressIdentifiers(for:)();
  v39 = v38;
  if (v40)
  {
    v41 = v37;

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v203[0] = v45;
      *v44 = 136315138;
      if (v39)
      {
        v46 = v41;
      }

      else
      {
        v46 = 7104878;
      }

      if (v39)
      {
        v47 = v39;
      }

      else
      {
        v47 = 0xE300000000000000;
      }

      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, v203);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_26686A000, v42, v43, "#GetContactAttributeIntent: ambiguous address case; assuming user wants postalAddress for %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v45);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    v49 = v191;
    type metadata accessor for ContactAttribute();
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_14_16();
    v202 = ContactAttribute.__allocating_init(contactAttributeType:identifier:handleLabel:handleValue:ageDateTime:postalAddress:)(v50, v51, v52, v53, v54, v55, v56, v57, 0);
    [v49 setContactAttributeToGet_];
    OUTLINED_FUNCTION_14();

    return;
  }

  v60 = 0;
  v201 = *(v27 + 16);
  v202 = (v8 + 16);
  v195 = (v8 + 32);
  v1 = (v8 + 8);
  v194 = MEMORY[0x277D84F90];
  v199 = v6;
  while (v201 != v60)
  {
    if (v60 >= *(v27 + 16))
    {
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    OUTLINED_FUNCTION_21_17();
    v4 = v62 & ~v61;
    v63 = *(v8 + 72);
    (*(v8 + 16))(v25, v27 + v4 + v63 * v60, v6);
    v64 = UsoIdentifier.namespace.getter();
    if (v65)
    {
      v66 = v64 == 0x707954656E6F6870 && v65 == 0xE900000000000065;
      if (v66)
      {
        goto LABEL_39;
      }

      OUTLINED_FUNCTION_21(v64, v65, 0x707954656E6F6870);
      OUTLINED_FUNCTION_59_7();
      if (v2)
      {
        goto LABEL_40;
      }
    }

    v67 = UsoIdentifier.namespace.getter();
    if (!v68)
    {
      goto LABEL_32;
    }

    if (v67 == 0x7079546C69616D65 && v68 == 0xE900000000000065)
    {
LABEL_39:

LABEL_40:
      v75 = *v195;
      (*v195)(v196, v25, v6);
      v76 = v194;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v203[0] = v76;
      v193 = v75;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_42_8();
        v78 = OUTLINED_FUNCTION_18_17();
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v78, v79, v80);
        v76 = v203[0];
      }

      v82 = *(v76 + 16);
      v81 = *(v76 + 24);
      v2 = v82 + 1;
      if (v82 >= v81 >> 1)
      {
        v84 = OUTLINED_FUNCTION_28_6(v81);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v84, v82 + 1, 1);
        v76 = v203[0];
      }

      ++v60;
      *(v76 + 16) = v2;
      v194 = v76;
      v83 = v76 + v4 + v82 * v63;
      v6 = v199;
      v193(v83, v196, v199);
    }

    else
    {
      OUTLINED_FUNCTION_21(v67, v68, 0x7079546C69616D65);
      OUTLINED_FUNCTION_59_7();
      if (v2)
      {
        goto LABEL_40;
      }

LABEL_32:
      UsoIdentifier.namespace.getter();
      if (!v70)
      {
        goto LABEL_38;
      }

      OUTLINED_FUNCTION_6_36();
      if (v66 && v72 == 0xEB00000000657079)
      {
        goto LABEL_39;
      }

      OUTLINED_FUNCTION_57_4(v71, v72, v73, 0xEB00000000657079);
      OUTLINED_FUNCTION_59_7();
      if (v2)
      {
        goto LABEL_40;
      }

LABEL_38:
      (*v1)(v25, v6);
      ++v60;
    }
  }

  v85 = v194;
  if (*(v194 + 2))
  {

    if (*(v85 + 2))
    {
      OUTLINED_FUNCTION_21_17();
      v88 = v87 & ~v86;
      v89 = *(v8 + 16);
      v90 = v190;
      v91 = v199;
      v89(v190, &v85[v88], v199);
      v201 = UsoIdentifier.value.getter();
      v92 = *(v8 + 8);
      v92(v90, v91);
      v89(v90, &v85[v88], v91);

      v93 = UsoIdentifier.namespace.getter();
      v95 = v94;
      v92(v90, v91);
      static UsoIdentifierNamespace.attributeType(for:)(v93, v95);

      type metadata accessor for ContactAttribute();
      OUTLINED_FUNCTION_32_8();
      OUTLINED_FUNCTION_16_1();
LABEL_78:
      OUTLINED_FUNCTION_14_16();
      v140 = ContactAttribute.__allocating_init(contactAttributeType:identifier:handleLabel:handleValue:ageDateTime:postalAddress:)(v132, v133, v134, v135, v136, v137, v138, v139, v186[0]);
      [v191 setContactAttributeToGet_];
      goto LABEL_114;
    }

    __break(1u);
    goto LABEL_121;
  }

  v25 = 0;
  v196 = MEMORY[0x277D84F90];
  while (v201 != v25)
  {
    if (v25 >= *(v27 + 16))
    {
      goto LABEL_117;
    }

    OUTLINED_FUNCTION_21_17();
    v4 = v97 & ~v96;
    v98 = *(v8 + 72);
    v99 = OUTLINED_FUNCTION_36_10();
    v100(v99);
    v101 = UsoIdentifier.namespace.getter();
    if (!v102)
    {
LABEL_57:
      (*v1)(v200, v6);
      v25 = (v25 + 1);
      continue;
    }

    if (v101 == 0xD000000000000011 && v102 == 0x800000026696E1A0)
    {
    }

    else
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
      OUTLINED_FUNCTION_59_7();
      if ((v2 & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    v194 = *v195;
    (v194)(v192, v200, v6);
    v104 = v196;
    v105 = swift_isUniquelyReferenced_nonNull_native();
    v203[0] = v104;
    if ((v105 & 1) == 0)
    {
      OUTLINED_FUNCTION_42_8();
      v106 = OUTLINED_FUNCTION_18_17();
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v106, v107, v108);
      v104 = v203[0];
    }

    v110 = *(v104 + 16);
    v109 = *(v104 + 24);
    v2 = v110 + 1;
    if (v110 >= v109 >> 1)
    {
      v112 = OUTLINED_FUNCTION_28_6(v109);
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v112, v110 + 1, 1);
      v104 = v203[0];
    }

    v25 = (v25 + 1);
    *(v104 + 16) = v2;
    v196 = v104;
    v111 = v104 + v4 + v110 * v98;
    v6 = v199;
    (v194)(v111, v192, v199);
  }

  v113 = *(v196 + 16);
  if (v113)
  {
    OUTLINED_FUNCTION_21_17();
    v117 = v116 + (v115 & ~v114);
    v4 = *(v8 + 72);
    v25 = *(v8 + 16);
    v2 = MEMORY[0x277D84F90];
    v200 = v4;
    do
    {
      v118 = v197;
      OUTLINED_FUNCTION_2_18();
      v25();
      v119._countAndFlagsBits = UsoIdentifier.value.getter();
      ContactNLv3Intent.NLContactAttributesValue.init(rawValue:)(v119);
      (*v1)(v118, v6);
      v120 = v203[0];
      if (LOBYTE(v203[0]) != 70)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v123 = OUTLINED_FUNCTION_18_17();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v123, v124, v125, v2);
          v2 = v126;
        }

        v122 = *(v2 + 16);
        v121 = *(v2 + 24);
        if (v122 >= v121 >> 1)
        {
          v127 = OUTLINED_FUNCTION_28_6(v121);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v127, v122 + 1, 1, v2);
          v2 = v128;
        }

        *(v2 + 16) = v122 + 1;
        *(v2 + v122 + 32) = v120;
        v4 = v200;
      }

      v117 += v4;
      --v113;
      v6 = v199;
    }

    while (v113);
  }

  else
  {

    v2 = MEMORY[0x277D84F90];
  }

  if (*(v2 + 16))
  {

    if (*(v2 + 16))
    {
      v129 = *(v2 + 32);

      LOBYTE(v203[0]) = v129;
      ContactNLv3Intent.NLContactAttributesValue.attributeTypeAndLabel()(v130, v131);
      OUTLINED_FUNCTION_33_10();
      type metadata accessor for ContactAttribute();
      OUTLINED_FUNCTION_28_7();
      goto LABEL_78;
    }

LABEL_121:
    __break(1u);
    return;
  }

  v141 = 0;
  v200 = MEMORY[0x277D84F90];
  while (v201 != v141)
  {
    if (v141 >= *(v27 + 16))
    {
      goto LABEL_118;
    }

    OUTLINED_FUNCTION_21_17();
    v25 = (v143 & ~v142);
    v2 = *(v8 + 72);
    v144 = OUTLINED_FUNCTION_36_10();
    v145(v144);
    v146 = UsoIdentifier.namespace.getter();
    if (!v147)
    {
LABEL_88:
      (*v1)(v198, v6);
      ++v141;
      continue;
    }

    if (v146 == 0x54746361746E6F63 && v147 == 0xEB00000000657079)
    {
    }

    else
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v4 & 1) == 0)
      {
        goto LABEL_88;
      }
    }

    v197 = *v195;
    v197(v187, v198, v6);
    v149 = v200;
    v150 = swift_isUniquelyReferenced_nonNull_native();
    v203[0] = v149;
    if ((v150 & 1) == 0)
    {
      OUTLINED_FUNCTION_42_8();
      v151 = OUTLINED_FUNCTION_18_17();
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v151, v152, v153);
      v149 = v203[0];
    }

    v155 = *(v149 + 16);
    v154 = *(v149 + 24);
    v4 = v155 + 1;
    if (v155 >= v154 >> 1)
    {
      v157 = OUTLINED_FUNCTION_28_6(v154);
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v157, v155 + 1, 1);
      v149 = v203[0];
    }

    ++v141;
    *(v149 + 16) = v4;
    v200 = v149;
    v156 = v25 + v149 + v155 * v2;
    v6 = v199;
    v197(v156, v187, v199);
  }

  v158 = *(v200 + 16);
  if (v158)
  {
    OUTLINED_FUNCTION_21_17();
    v162 = v161 + (v160 & ~v159);
    v163 = *(v8 + 72);
    v164 = *(v8 + 16);
    v165 = MEMORY[0x277D84F90];
    v166 = v189;
    do
    {
      v164(v166, v162, v6);
      v167._countAndFlagsBits = UsoIdentifier.value.getter();
      v168.value = ContactNLIntent.NLContactTypeValue.init(rawValue:)(v167).value;
      (*v1)(v166, v6);
      if (v168.value != SiriContactsIntents_ContactNLIntent_NLContactTypeValue_unknownDefault)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v171 = OUTLINED_FUNCTION_18_17();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v171, v172, v173, v165);
          v165 = v174;
        }

        v170 = *(v165 + 16);
        v169 = *(v165 + 24);
        if (v170 >= v169 >> 1)
        {
          v175 = OUTLINED_FUNCTION_28_6(v169);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v175, v170 + 1, 1, v165);
          v165 = v176;
        }

        *(v165 + 16) = v170 + 1;
        *(v165 + v170 + 32) = v168;
      }

      v162 += v163;
      --v158;
      v6 = v199;
    }

    while (v158);
  }

  else
  {

    v165 = MEMORY[0x277D84F90];
  }

  v2 = v191;
  v4 = v188;
  if (*(v165 + 16))
  {
    v177 = *(v165 + 32);

    ContactNLIntent.NLContactTypeValue.attributeTypeAndLabel()(v177);
    OUTLINED_FUNCTION_33_10();
    type metadata accessor for ContactAttribute();
    OUTLINED_FUNCTION_28_7();
    goto LABEL_113;
  }

LABEL_109:
  static SiriKitGetEntityIntent.resolveAddressType(from:)(v4);
  if (!v204 || v204 == 1 || v204 == 2)
  {
    type metadata accessor for ContactAttribute();
    OUTLINED_FUNCTION_32_8();
    OUTLINED_FUNCTION_16_1();
LABEL_113:
    OUTLINED_FUNCTION_14_16();
    v140 = ContactAttribute.__allocating_init(contactAttributeType:identifier:handleLabel:handleValue:ageDateTime:postalAddress:)(v178, v179, v180, v181, v182, v183, v184, v185, v186[0]);
    [v2 setContactAttributeToGet_];
LABEL_114:
  }

  OUTLINED_FUNCTION_14();
}

uint64_t closure #1 in static Transformer<>.transformer(_:referenceResolver:)@<X0>(void *a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v58 = a3;
  v57 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  OUTLINED_FUNCTION_18_0(v5);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_50_7();
  v7 = type metadata accessor for UsoEntity_common_Person.DefinedValues();
  OUTLINED_FUNCTION_1_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_4();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v57 - v15;
  if (a1)
  {
    v17 = a1;
  }

  else
  {
    v18 = objc_allocWithZone(type metadata accessor for ModifyContactAttributeIntent());
    v17 = [v18 init];
  }

  v60 = v17;
  v19 = a1;
  OUTLINED_FUNCTION_23_15();
  v20 = dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter();
  if (v59)
  {
    dispatch thunk of UsoEntity_common_Person.definedValue.getter();
    if (__swift_getEnumTagSinglePayload(v3, 1, v7) == 1)
    {
      outlined destroy of Result<TemplatingResult, Error>(v3, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
    }

    else
    {
      (*(v9 + 32))(v16, v3, v7);
      (*(v9 + 104))(v13, *MEMORY[0x277D5E828], v7);
      lazy protocol witness table accessor for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues();
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *(v9 + 8);
      v22(v13, v7);
      v22(v16, v7);
      if ((v21 & 1) == 0)
      {
LABEL_27:

        v17 = 0;
        goto LABEL_32;
      }
    }

    dispatch thunk of UsoEntity_common_Person.name.getter();
    if (v23)
    {
      OUTLINED_FUNCTION_33_10();
      type metadata accessor for Contact();
      OUTLINED_FUNCTION_40_6();
      OUTLINED_FUNCTION_1_48();
      v32 = Contact.__allocating_init(contactIdentifier:givenName:middleName:familyName:nickName:fullName:namePrefix:suffix:phoneNumber:emailAddress:)(v24, v25, v26, v27, v28, v29, v30, v31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
      [v17 setRelatedContact_];
    }
  }

  result = UsoTask_update_common_Person.updateTaskType.getter(v20);
  if (result)
  {
    if (result == 1)
    {
      updated = UsoTask_update_common_Person.updateRelationshipInfoLocation.getter(result);
      if (updated)
      {
        OUTLINED_FUNCTION_23_15();
        updated = dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
        if (v59)
        {
          OUTLINED_FUNCTION_23_15();
          dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter();
          if (v59)
          {
            dispatch thunk of UsoEntity_common_Person.name.getter();
            OUTLINED_FUNCTION_33_10();

            type metadata accessor for Contact();
            OUTLINED_FUNCTION_40_6();
            OUTLINED_FUNCTION_1_48();
            v43 = Contact.__allocating_init(contactIdentifier:givenName:middleName:familyName:nickName:fullName:namePrefix:suffix:phoneNumber:emailAddress:)(v35, v36, v37, v38, v39, v40, v41, v42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
            [v17 setRelatedContact_];
          }

          UsoEntity_common_Person.updateModifyContactAttributeIntent(_:)();
          if ((v44 & 1) == 0)
          {
            OUTLINED_FUNCTION_23_15();
            dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter();
            goto LABEL_29;
          }

          goto LABEL_27;
        }
      }

      result = UsoTask_update_common_Person.updateRelationshipInfoLocation.getter(updated);
      if (result != 2 && (result & 1) == 0)
      {
        OUTLINED_FUNCTION_23_15();
        result = dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter();
        if (v59)
        {
          OUTLINED_FUNCTION_23_15();
          dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
          if (v59)
          {
            dispatch thunk of UsoEntity_common_Person.name.getter();
            OUTLINED_FUNCTION_33_10();

            type metadata accessor for Contact();
            OUTLINED_FUNCTION_40_6();
            OUTLINED_FUNCTION_1_48();
            v53 = Contact.__allocating_init(contactIdentifier:givenName:middleName:familyName:nickName:fullName:namePrefix:suffix:phoneNumber:emailAddress:)(v45, v46, v47, v48, v49, v50, v51, v52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
            [v17 setRelatedContact_];
          }

          UsoEntity_common_Person.updateModifyContactAttributeIntent(_:)();
          if ((v54 & 1) == 0)
          {
            OUTLINED_FUNCTION_23_15();
            dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
LABEL_29:
            specialized SiriKitContactIntent.shouldRunReferenceResolution(given:)();
            v56 = v55;

            if (v56)
            {
              ModifyContactAttributeIntent.runReferenceResolution(_:)(v57);
            }

            goto LABEL_31;
          }

          goto LABEL_27;
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_23_15();
    result = dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
    if (v59)
    {
      UsoEntity_common_Person.updateModifyContactAttributeIntent(_:)();
LABEL_31:
    }
  }

LABEL_32:
  *v58 = v17;
  return result;
}

void UsoEntity_common_Person.updateModifyContactAttributeIntent(_:)()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v3 = type metadata accessor for UsoEntity_common_Person.DefinedValues();
  OUTLINED_FUNCTION_1_0();
  v124 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_8();
  v119 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMR);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v9);
  v122 = &v113 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  v12 = OUTLINED_FUNCTION_18_0(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_4();
  v121 = v13 - v14;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_9_27();
  MEMORY[0x28223BE20](v16);
  v128 = &v113 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology24PrimitiveStringOperatorsOSgMd, &_s12SiriOntology24PrimitiveStringOperatorsOSgMR);
  v19 = OUTLINED_FUNCTION_18_0(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_4();
  v120 = v20 - v21;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v22);
  v24 = &v113 - v23;
  v126 = type metadata accessor for PrimitiveStringOperators();
  OUTLINED_FUNCTION_1_0();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_4();
  v117 = v28 - v29;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7_6();
  v118 = v31;
  OUTLINED_FUNCTION_16();
  v33 = MEMORY[0x28223BE20](v32);
  v35 = &v113 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v113 - v36;
  v127 = v0;
  v38 = dispatch thunk of UsoEntity_common_Person.structuredName.getter();
  v125 = v2;
  if (!v38)
  {
    goto LABEL_14;
  }

  v123 = *v2;
  [v123 setContactAttributeToModify_];
  if (!dispatch thunk of UsoEntity_common_PersonName.nickNameAsExpression.getter())
  {
    dispatch thunk of UsoEntity_common_PersonName.nickName.getter();
    if (v47)
    {
      OUTLINED_FUNCTION_33_10();
      v48 = v123;
      [v123 setModifyOperation_];

      OUTLINED_FUNCTION_14_20();
      specialized Collection.prefix(_:)(v49, v50, v51);
      v52 = Substring.uppercased()();

      OUTLINED_FUNCTION_14_20();
      v56 = specialized Collection.dropFirst(_:)(v53, v54, v55);
      v135 = v52;
      v131 = v56;
      v132 = v57;
      v133 = v58;
      v134 = v59;
      lazy protocol witness table accessor for type Substring and conformance Substring();

      String.append<A>(contentsOf:)();

      outlined bridged method (mbnn) of @objc ModifyContactAttributeIntent.modifyNickName.setter(v135._countAndFlagsBits, v135._object, v48);
    }

    goto LABEL_13;
  }

  dispatch thunk of CodeGenExpression.operand.getter();
  object = v135._object;
  if (v135._object)
  {
    v115 = v3;
    countAndFlagsBits = v135._countAndFlagsBits;

    specialized Collection.prefix(_:)(1, countAndFlagsBits, object);
    v41 = Substring.uppercased()();
    v116 = v26;
    v114 = v8;

    v42 = specialized Collection.dropFirst(_:)(1uLL, countAndFlagsBits, object);
    v130 = v41;
    v131 = v42;
    v132 = v43;
    v133 = v44;
    v134 = v45;
    lazy protocol witness table accessor for type Substring and conformance Substring();

    object = &v130;
    v26 = v116;
    String.append<A>(contentsOf:)();
    v8 = v114;

    MEMORY[0x26D5E2470](v130._countAndFlagsBits, v130._object);
    OUTLINED_FUNCTION_41_10();
    v3 = v115;
  }

  [v123 setModifyNickName_];

  dispatch thunk of CodeGenExpression.operatorAsString.getter();
  if (!v46)
  {
LABEL_9:
    [v123 setModifyOperation_];

LABEL_13:

LABEL_14:
    v60 = v129;
    goto LABEL_15;
  }

  PrimitiveStringOperators.init(rawValue:)();
  OUTLINED_FUNCTION_57(v24, 1, v126);
  if (v75)
  {
    outlined destroy of Result<TemplatingResult, Error>(v24, &_s12SiriOntology24PrimitiveStringOperatorsOSgMd, &_s12SiriOntology24PrimitiveStringOperatorsOSgMR);
    goto LABEL_9;
  }

  v82 = v126;
  (*(v26 + 32))(v37, v24, v126);
  (*(v26 + 16))(v35, v37, v82);
  v83 = (*(v26 + 88))(v35, v82);
  if (v83 == *MEMORY[0x277D5E860] || v83 == *MEMORY[0x277D5E868])
  {
    v111 = 3;
  }

  else
  {
    (*(v26 + 8))(v35, v126);
    v111 = 0;
  }

  v60 = v129;
  [v123 setModifyOperation_];

  (*(v26 + 8))(v37, v126);
LABEL_15:
  v61 = dispatch thunk of UsoEntity_common_Person.identifyingRelationship.getter();
  v62 = v128;
  if (!v61)
  {
    goto LABEL_46;
  }

  v63 = *v125;
  [*v125 setContactAttributeToModify_];
  UsoEntity_common_PersonRelationship.relationshipIdentifierOrLabel.getter();
  if (v64)
  {
    v65 = MEMORY[0x26D5E2470]();
  }

  else
  {
    v65 = 0;
  }

  [v63 setModifyRelationship_];

  if (!dispatch thunk of UsoEntity_common_PersonRelationship.fromPerson.getter())
  {
    goto LABEL_38;
  }

  v116 = v26;
  dispatch thunk of UsoEntity_common_Person.definedValue.getter();
  (*(v124 + 104))(v60, *MEMORY[0x277D5E828], v3);
  __swift_storeEnumTagSinglePayload(v60, 0, 1, v3);
  v66 = *(v8 + 48);
  v67 = v122;
  outlined init with copy of Result<RRResult, Error>(v62, v122, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  outlined init with copy of Result<RRResult, Error>(v60, v67 + v66, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  OUTLINED_FUNCTION_11_23(v67);
  if (v75)
  {

    OUTLINED_FUNCTION_14_20();
    outlined destroy of Result<TemplatingResult, Error>(v68, v69, v70);
    OUTLINED_FUNCTION_14_20();
    outlined destroy of Result<TemplatingResult, Error>(v71, v72, v73);
    OUTLINED_FUNCTION_11_23(v67 + v66);
    if (v75)
    {
      outlined destroy of Result<TemplatingResult, Error>(v67, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      v26 = v116;
      goto LABEL_38;
    }

LABEL_29:
    outlined destroy of Result<TemplatingResult, Error>(v67, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMR);
    goto LABEL_45;
  }

  v74 = v121;
  outlined init with copy of Result<RRResult, Error>(v67, v121, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  OUTLINED_FUNCTION_11_23(v67 + v66);
  if (v75)
  {

    OUTLINED_FUNCTION_14_20();
    outlined destroy of Result<TemplatingResult, Error>(v76, v77, v78);
    OUTLINED_FUNCTION_14_20();
    outlined destroy of Result<TemplatingResult, Error>(v79, v80, v81);
    (*(v124 + 8))(v74, v3);
    goto LABEL_29;
  }

  v85 = v124;
  v86 = v67 + v66;
  v87 = v119;
  (*(v124 + 32))(v119, v86, v3);
  lazy protocol witness table accessor for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues();
  v88 = dispatch thunk of static Equatable.== infix(_:_:)();

  v89 = *(v85 + 8);
  v89(v87, v3);
  OUTLINED_FUNCTION_2_18();
  outlined destroy of Result<TemplatingResult, Error>(v90, v91, v92);
  OUTLINED_FUNCTION_2_18();
  outlined destroy of Result<TemplatingResult, Error>(v93, v94, v95);
  v89(v74, v3);
  OUTLINED_FUNCTION_2_18();
  outlined destroy of Result<TemplatingResult, Error>(v96, v97, v98);
  v26 = v116;
  if ((v88 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_38:
  if (!dispatch thunk of UsoEntity_common_PersonRelationship.relationshipTypeAsExpression.getter())
  {
    [v63 setModifyOperation_];
    goto LABEL_45;
  }

  dispatch thunk of CodeGenExpression.operatorAsString.getter();
  if (!v99)
  {
LABEL_43:
    v101 = dispatch thunk of CodeGenExpression.operatorAsString.getter();
    v103 = static ModifyOperation.from(_:)(v101, v102);

    [v63 setModifyOperation_];

LABEL_45:

    goto LABEL_46;
  }

  v100 = v120;
  PrimitiveStringOperators.init(rawValue:)();
  OUTLINED_FUNCTION_57(v100, 1, v126);
  if (v75)
  {
    outlined destroy of Result<TemplatingResult, Error>(v100, &_s12SiriOntology24PrimitiveStringOperatorsOSgMd, &_s12SiriOntology24PrimitiveStringOperatorsOSgMR);
    goto LABEL_43;
  }

  v104 = v118;
  v105 = OUTLINED_FUNCTION_22_0();
  v106 = v126;
  v107(v105);
  v108 = v117;
  (*(v26 + 16))(v117, v104, v106);
  v109 = (*(v26 + 88))(v108, v106);
  if (v109 == *MEMORY[0x277D5E860] || v109 == *MEMORY[0x277D5E868])
  {
    v112 = 3;
  }

  else
  {
    (*(v26 + 8))(v108, v126);
    v112 = 0;
  }

  [v63 setModifyOperation_];

  (*(v26 + 8))(v104, v126);
LABEL_46:
  OUTLINED_FUNCTION_14();
}

void specialized SiriKitGetEntityIntent.setIsMe(reference:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for UsoEntity_common_Person.DefinedValues();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  dispatch thunk of UsoEntity_common_Person.definedValue.getter();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    outlined destroy of Result<TemplatingResult, Error>(v4, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    (*(v6 + 104))(v9, *MEMORY[0x277D5E828], v5);
    v12 = specialized == infix<A>(_:_:)(v11, v9);
    v13 = *(v6 + 8);
    v13(v9, v5);
    if (v12)
    {
      isa = Bool._bridgeToObjectiveC()().super.super.isa;
      v15 = MEMORY[0x26D5E2470](1699574633, 0xE400000000000000);
      [v1 setValue:isa forKey:v15];

      v13(v11, v5);
      return;
    }

    v13(v11, v5);
  }

  v16 = Bool._bridgeToObjectiveC()().super.super.isa;
  v17 = MEMORY[0x26D5E2470](1699574633, 0xE400000000000000);
  [v1 setValue:v16 forKey:v17];
}

void SiriKitGetEntityIntent.setIsMe(reference:)(uint64_t a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  OUTLINED_FUNCTION_18_0(v5);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_50_7();
  v7 = type metadata accessor for UsoEntity_common_Person.DefinedValues();
  OUTLINED_FUNCTION_1_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_38_6();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_26_6();
  dispatch thunk of UsoEntity_common_Person.definedValue.getter();
  OUTLINED_FUNCTION_11_23(v2);
  if (v12)
  {
    outlined destroy of Result<TemplatingResult, Error>(v2, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  }

  else
  {
    (*(v9 + 32))(v1, v2, v7);
    (*(v9 + 104))(v3, *MEMORY[0x277D5E828], v7);
    a1 = specialized == infix<A>(_:_:)(v1, v3);
    v13 = *(v9 + 8);
    v13(v3, v7);
    if (a1)
    {
      Bool._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_55_6();
      v15 = v14;
      v16 = OUTLINED_FUNCTION_27_11();
      [v16 v17];

      v18 = OUTLINED_FUNCTION_61_1();
      (v13)(v18);
      return;
    }

    v19 = OUTLINED_FUNCTION_61_1();
    (v13)(v19);
  }

  Bool._bridgeToObjectiveC()();
  OUTLINED_FUNCTION_55_6();
  v21 = v20;
  v22 = OUTLINED_FUNCTION_27_11();
  [v22 v23];
}

void static GetContactAttributeIntent.shouldHandleAmbiguousAddressIdentifiers(for:)()
{
  OUTLINED_FUNCTION_15();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v1 = OUTLINED_FUNCTION_18_0(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_4();
  v4 = v2 - v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_6();
  v79 = v6;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v7);
  v9 = &v74 - v8;
  v85 = type metadata accessor for UsoIdentifier();
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_4();
  v81 = (v13 - v14);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_9_27();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v74 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v74 - v20;
  OUTLINED_FUNCTION_44_6();
  v22 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
  if (!v22)
  {
    goto LABEL_48;
  }

  v84 = *(v22 + 16);
  if (!v84)
  {
LABEL_14:

    goto LABEL_48;
  }

  v75 = v9;
  v76 = v4;
  v23 = 0;
  v78 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v82 = (v22 + v78);
  v83 = v22;
  v86 = (v11 + 8);
  v87 = v11 + 16;
  v24 = v85;
  while (1)
  {
    if (v23 >= *(v22 + 16))
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      return;
    }

    v25 = *(v11 + 72);
    v26 = *(v11 + 16);
    v27 = OUTLINED_FUNCTION_27_11();
    v26(v27);
    UsoIdentifier.namespace.getter();
    if (!v28)
    {
      (*v86)(v21, v24);
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_6_36();
    v32 = v32 && v30 == 0xEB00000000657079;
    if (v32)
    {
      break;
    }

    v33 = OUTLINED_FUNCTION_57_4(v29, v30, v31, 0xEB00000000657079);

    v24 = v85;
    v34 = *v86;
    (*v86)(v21, v85);
    if (v33)
    {
      v82 = v34;
      goto LABEL_17;
    }

LABEL_13:
    ++v23;
    v22 = v83;
    if (v84 == v23)
    {
      goto LABEL_14;
    }
  }

  v82 = *v86;
  v82(v21, v85);
LABEL_17:
  v35 = 0;
  v77 = (v11 + 32);
  v36 = v83 + v78;
  v37 = MEMORY[0x277D84F90];
  v74 = v83 + v78;
LABEL_18:
  v38 = v36 + v25 * v35;
  while (v84 != v35)
  {
    if (v35 >= *(v83 + 16))
    {
      __break(1u);
      goto LABEL_50;
    }

    v39 = v85;
    v40 = (v26)(v19, v38, v85);
    MEMORY[0x28223BE20](v40);
    *(&v74 - 2) = v19;
    if (specialized Sequence.contains(where:)(partial apply for closure #1 in closure #2 in static GetContactAttributeIntent.shouldHandleAmbiguousAddressIdentifiers(for:), (&v74 - 4), outlined read-only object #0 of static ContactNLIntent.ContactIntentAddressAttributes.allCases.getter))
    {
      v41 = *v77;
      (*v77)(v80, v19, v39);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v88 = v37;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v43 = OUTLINED_FUNCTION_18_17();
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v43, v44, v45);
        v37 = v88;
      }

      v47 = *(v37 + 16);
      v46 = *(v37 + 24);
      v48 = v47 + 1;
      if (v47 >= v46 >> 1)
      {
        v49 = OUTLINED_FUNCTION_28_6(v46);
        v51 = v50;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v49, v50, 1);
        v48 = v51;
        v37 = v88;
      }

      ++v35;
      *(v37 + 16) = v48;
      v41(v37 + v78 + v47 * v25, v80);
      v36 = v74;
      goto LABEL_18;
    }

    v82(v19, v39);
    v38 += v25;
    ++v35;
  }

  v52 = *(v37 + 16);
  if (v52)
  {
    v53 = 0;
    v54 = v37 + v78;
    v55 = v82;
    while (1)
    {
      if (v53 >= *(v37 + 16))
      {
        goto LABEL_51;
      }

      OUTLINED_FUNCTION_14_20();
      (v26)();
      UsoIdentifier.namespace.getter();
      if (v56)
      {
        OUTLINED_FUNCTION_6_36();
        if (v32 && v58 == 0xEB00000000657079)
        {

          goto LABEL_42;
        }

        v61 = OUTLINED_FUNCTION_57_4(v57, v58, v59, 0xEB00000000657079);

        if (v61)
        {
          break;
        }
      }

      ++v53;
      v62 = v85;
      v55(v81, v85);
      v54 += v25;
      if (v52 == v53)
      {

        v63 = 1;
        v65 = v75;
        v64 = v76;
        goto LABEL_43;
      }
    }

LABEL_42:
    v65 = v75;
    v62 = v85;
    (*v77)(v75, v81, v85);
    v63 = 0;
    v64 = v76;
LABEL_43:
    v66 = v79;
    v67 = v83;
    __swift_storeEnumTagSinglePayload(v65, v63, 1, v62);
    outlined init with copy of Result<RRResult, Error>(v65, v66, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
    OUTLINED_FUNCTION_57(v66, 1, v62);
    if (v32)
    {
      outlined destroy of Result<TemplatingResult, Error>(v66, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      specialized Collection.first.getter(v67, v64);

      OUTLINED_FUNCTION_57(v64, 1, v62);
      if (v32)
      {
        OUTLINED_FUNCTION_14_20();
        outlined destroy of Result<TemplatingResult, Error>(v68, v69, v70);
        OUTLINED_FUNCTION_14_20();
        outlined destroy of Result<TemplatingResult, Error>(v71, v72, v73);
      }

      else
      {
        UsoIdentifier.value.getter();
        outlined destroy of Result<TemplatingResult, Error>(v65, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        v55(v64, v62);
      }
    }

    else
    {
      UsoIdentifier.value.getter();
      v55(v66, v62);

      outlined destroy of Result<TemplatingResult, Error>(v65, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
    }

    goto LABEL_48;
  }

LABEL_48:
  OUTLINED_FUNCTION_14();
}

uint64_t closure #1 in closure #2 in static GetContactAttributeIntent.shouldHandleAmbiguousAddressIdentifiers(for:)(char *a1)
{
  v1 = ContactNLIntent.ContactIntentAddressAttributes.rawValue.getter(*a1);
  v3 = v2;
  if (v1 == UsoIdentifier.value.getter() && v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v6 & 1;
}

uint64_t outlined consume of SpecifyingContactAddressType?(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return outlined consume of SiriKitContactIntentResolvedValue(a1, a2, a3);
  }

  return a1;
}

uint64_t OUTLINED_FUNCTION_54_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void OUTLINED_FUNCTION_55_6()
{

  JUMPOUT(0x26D5E2470);
}

uint64_t OUTLINED_FUNCTION_57_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_59_7()
{
}

uint64_t static Dictionary<>.cnLabel(forNLSemantic:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Signpost.OpenSignpost(0);
  OUTLINED_FUNCTION_3_33();
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  v8 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_2_47();
  os_signpost(_:dso:log:name:signpostID:)();
  v9 = &v7[*(v2 + 20)];
  *v9 = "RelationshipLabelValueForKey";
  *(v9 + 1) = 28;
  v9[16] = 2;
  if (one-time initialization token for NLSemanticValueToCNRelationLabel != -1)
  {
    OUTLINED_FUNCTION_0_52(&one-time initialization token for NLSemanticValueToCNRelationLabel);
  }

  swift_beginAccess();
  v10 = specialized Dictionary.subscript.getter(a1, a2, static Dictionary<>.NLSemanticValueToCNRelationLabel);
  v12 = v11;
  swift_endAccess();
  if (v12)
  {
    a1 = v10;
  }

  else
  {
  }

  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_2_47();
  os_signpost(_:dso:log:name:signpostID:)();
  outlined destroy of Signpost.OpenSignpost(v7);
  return a1;
}

uint64_t static Dictionary<>.nlSemantic(forCNLabel:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Signpost.OpenSignpost(0);
  OUTLINED_FUNCTION_3_33();
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for contactsLog != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v8 = static Signpost.contactsLog;
    OSSignpostID.init(log:)();
    static os_signpost_type_t.begin.getter();
    OUTLINED_FUNCTION_2_47();
    os_signpost(_:dso:log:name:signpostID:)();
    v9 = &v7[*(v2 + 5)];
    *v9 = "RelationshipLabelKeyForValue";
    *(v9 + 1) = 28;
    v9[16] = 2;
    if (!a2)
    {
      break;
    }

    v10 = one-time initialization token for GenderedCNRelationLabelToNLSemanticValue;

    if (v10 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v11 = specialized Dictionary.subscript.getter(a1, a2, static Dictionary<>.GenderedCNRelationLabelToNLSemanticValue);
    v13 = v12;
    swift_endAccess();
    if (v13)
    {

      a1 = v11;
      goto LABEL_29;
    }

    v32 = v8;
    if (one-time initialization token for NLSemanticValueToCNRelationLabel != -1)
    {
      OUTLINED_FUNCTION_0_52(&one-time initialization token for NLSemanticValueToCNRelationLabel);
    }

    v2 = &static Dictionary<>.NLSemanticValueToCNRelationLabel;
    swift_beginAccess();
    v18 = 0;
    v19 = static Dictionary<>.NLSemanticValueToCNRelationLabel;
    v20 = static Dictionary<>.NLSemanticValueToCNRelationLabel + 64;
    v21 = 1 << *(static Dictionary<>.NLSemanticValueToCNRelationLabel + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(static Dictionary<>.NLSemanticValueToCNRelationLabel + 64);
    v24 = (v21 + 63) >> 6;
    while (v23)
    {
LABEL_22:
      v26 = (v18 << 10) | (16 * __clz(__rbit64(v23)));
      v27 = (*(v19 + 48) + v26);
      v28 = *v27;
      v2 = v27[1];
      v29 = (*(v19 + 56) + v26);
      if (*v29 != a1 || v29[1] != a2)
      {
        v23 &= v23 - 1;
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          continue;
        }
      }

      a1 = v28;
      goto LABEL_29;
    }

    while (1)
    {
      v25 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v25 >= v24)
      {

        goto LABEL_29;
      }

      v23 = *(v20 + 8 * v25);
      ++v18;
      if (v23)
      {
        v18 = v25;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_31:
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  if (one-time initialization token for siriContacts != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.siriContacts);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_26686A000, v15, v16, "#NLSemanticForCNLabel provided value was nil, returning empty string for key", v17, 2u);
    MEMORY[0x26D5E3300](v17, -1, -1);
  }

  a1 = static String.EMPTY.getter();
LABEL_29:
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_2_47();
  os_signpost(_:dso:log:name:signpostID:)();
  outlined destroy of Signpost.OpenSignpost(v7);
  return a1;
}

uint64_t one-time initialization function for NLSemanticValueToCNRelationLabel()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26696C7C0;
  *(v0 + 32) = 0x656972666C726967;
  *(v0 + 40) = 0xEA0000000000646ELL;
  *(v0 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 56) = v1;
  *(v0 + 64) = 0x6E65697266796F62;
  *(v0 + 72) = 0xE900000000000064;
  *(v0 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 88) = v2;
  *(v0 + 96) = 0x726568746166;
  *(v0 + 104) = 0xE600000000000000;
  *(v0 + 112) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 120) = v3;
  *(v0 + 128) = 0x726568746F6DLL;
  *(v0 + 136) = 0xE600000000000000;
  *(v0 + 144) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 152) = v4;
  *(v0 + 160) = 0x746E65726170;
  *(v0 + 168) = 0xE600000000000000;
  *(v0 + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 184) = v5;
  *(v0 + 192) = 0x726568746F7262;
  *(v0 + 200) = 0xE700000000000000;
  *(v0 + 208) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 216) = v6;
  *(v0 + 224) = 0x726574736973;
  *(v0 + 232) = 0xE600000000000000;
  *(v0 + 240) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 248) = v7;
  *(v0 + 256) = 0x676E696C626973;
  *(v0 + 264) = 0xE700000000000000;
  *(v0 + 272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 280) = v8;
  strcpy((v0 + 288), "sibling_female");
  *(v0 + 303) = -18;
  *(v0 + 304) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 312) = v9;
  *(v0 + 320) = 0x646E65697266;
  *(v0 + 328) = 0xE600000000000000;
  *(v0 + 336) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 344) = v10;
  *(v0 + 352) = 0x6573756F7073;
  *(v0 + 360) = 0xE600000000000000;
  *(v0 + 368) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 376) = v11;
  strcpy((v0 + 384), "female_spouse");
  *(v0 + 398) = -4864;
  *(v0 + 400) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 408) = v12;
  *(v0 + 416) = 0x6F70735F656C616DLL;
  *(v0 + 424) = 0xEB00000000657375;
  *(v0 + 432) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 440) = v13;
  *(v0 + 448) = 1701210487;
  *(v0 + 456) = 0xE400000000000000;
  *(v0 + 464) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 472) = v14;
  *(v0 + 480) = 0x646E6162737568;
  *(v0 + 488) = 0xE700000000000000;
  *(v0 + 496) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 504) = v15;
  *(v0 + 512) = 0x72656E74726170;
  *(v0 + 520) = 0xE700000000000000;
  *(v0 + 528) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 536) = v16;
  *(v0 + 544) = 0x6E61747369737361;
  *(v0 + 552) = 0xE900000000000074;
  *(v0 + 560) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 568) = v17;
  strcpy((v0 + 576), "male_assistant");
  *(v0 + 591) = -18;
  *(v0 + 592) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 600) = v18;
  *(v0 + 608) = 0xD000000000000010;
  *(v0 + 616) = 0x8000000266972030;
  *(v0 + 624) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 632) = v19;
  *(v0 + 640) = 0xD000000000000010;
  *(v0 + 648) = 0x8000000266972050;
  *(v0 + 656) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 664) = v20;
  *(v0 + 672) = 0x726567616E616DLL;
  *(v0 + 680) = 0xE700000000000000;
  *(v0 + 688) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 696) = v21;
  strcpy((v0 + 704), "manager_female");
  *(v0 + 719) = -18;
  *(v0 + 720) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 728) = v22;
  strcpy((v0 + 736), "female_manager");
  *(v0 + 751) = -18;
  *(v0 + 752) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 760) = v23;
  strcpy((v0 + 768), "male_manager");
  *(v0 + 781) = 0;
  *(v0 + 782) = -5120;
  *(v0 + 784) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 792) = v24;
  *(v0 + 800) = 0x756761656C6C6F63;
  *(v0 + 808) = 0xE900000000000065;
  *(v0 + 816) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 824) = v25;
  strcpy((v0 + 832), "male_colleague");
  *(v0 + 847) = -18;
  *(v0 + 848) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 856) = v26;
  *(v0 + 864) = 0xD000000000000010;
  *(v0 + 872) = 0x8000000266972070;
  *(v0 + 880) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 888) = v27;
  *(v0 + 896) = 0x72656863616574;
  *(v0 + 904) = 0xE700000000000000;
  *(v0 + 912) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 920) = v28;
  strcpy((v0 + 928), "male_teacher");
  *(v0 + 941) = 0;
  *(v0 + 942) = -5120;
  *(v0 + 944) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 952) = v29;
  strcpy((v0 + 960), "female_teacher");
  *(v0 + 975) = -18;
  *(v0 + 976) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 984) = v30;
  *(v0 + 992) = 0x646C696863;
  *(v0 + 1000) = 0xE500000000000000;
  *(v0 + 1008) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1016) = v31;
  *(v0 + 1024) = 7237491;
  *(v0 + 1032) = 0xE300000000000000;
  *(v0 + 1040) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1048) = v32;
  *(v0 + 1056) = 0x7265746867756164;
  *(v0 + 1064) = 0xE800000000000000;
  *(v0 + 1072) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1080) = v33;
  *(v0 + 1088) = 0x77656870656ELL;
  *(v0 + 1096) = 0xE600000000000000;
  *(v0 + 1104) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1112) = v34;
  *(v0 + 1120) = 0x656365696ELL;
  *(v0 + 1128) = 0xE500000000000000;
  *(v0 + 1136) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1144) = v35;
  *(v0 + 1152) = 0x656C636E75;
  *(v0 + 1160) = 0xE500000000000000;
  *(v0 + 1168) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1176) = v36;
  *(v0 + 1184) = 1953396065;
  *(v0 + 1192) = 0xE400000000000000;
  *(v0 + 1200) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1208) = v37;
  *(v0 + 1216) = 0x746F6D646E617267;
  *(v0 + 1224) = 0xEB00000000726568;
  *(v0 + 1232) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1240) = v38;
  *(v0 + 1248) = 0x746166646E617267;
  *(v0 + 1256) = 0xEB00000000726568;
  *(v0 + 1264) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1272) = v39;
  *(v0 + 1280) = 0x726170646E617267;
  *(v0 + 1288) = 0xEB00000000746E65;
  *(v0 + 1296) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1304) = v40;
  *(v0 + 1312) = 0x6E6F73646E617267;
  *(v0 + 1320) = 0xE800000000000000;
  *(v0 + 1328) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1336) = v41;
  strcpy((v0 + 1344), "granddaughter");
  *(v0 + 1358) = -4864;
  *(v0 + 1360) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1368) = v42;
  *(v0 + 1376) = 0x696863646E617267;
  *(v0 + 1384) = 0xEA0000000000646CLL;
  *(v0 + 1392) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1400) = v43;
  strcpy((v0 + 1408), "brother-in-law");
  *(v0 + 1423) = -18;
  *(v0 + 1424) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1432) = v44;
  *(v0 + 1440) = 0x6C2D6E692D6E6F73;
  *(v0 + 1448) = 0xEA00000000007761;
  *(v0 + 1456) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1464) = v45;
  strcpy((v0 + 1472), "sister-in-law");
  *(v0 + 1486) = -4864;
  *(v0 + 1488) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1496) = v46;
  *(v0 + 1504) = 0x7265746867756164;
  *(v0 + 1512) = 0xEF77616C2D6E692DLL;
  *(v0 + 1520) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1528) = v47;
  strcpy((v0 + 1536), "child-in-law");
  *(v0 + 1549) = 0;
  *(v0 + 1550) = -5120;
  *(v0 + 1552) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1560) = v48;
  strcpy((v0 + 1568), "mother-in-law");
  *(v0 + 1582) = -4864;
  *(v0 + 1584) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1592) = v49;
  strcpy((v0 + 1600), "father-in-law");
  *(v0 + 1614) = -4864;
  *(v0 + 1616) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1624) = v50;
  *(v0 + 1632) = 0x6E7561646E617267;
  *(v0 + 1640) = 0xE900000000000074;
  *(v0 + 1648) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1656) = v51;
  *(v0 + 1664) = 0x636E75646E617267;
  *(v0 + 1672) = 0xEA0000000000656CLL;
  *(v0 + 1680) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1688) = v52;
  *(v0 + 1696) = 0x70656E646E617267;
  *(v0 + 1704) = 0xEB00000000776568;
  *(v0 + 1712) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1720) = v53;
  *(v0 + 1728) = 0x65696E646E617267;
  *(v0 + 1736) = 0xEA00000000006563;
  *(v0 + 1744) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1752) = v54;
  *(v0 + 1760) = 0xD000000000000013;
  *(v0 + 1768) = 0x8000000266972090;
  *(v0 + 1776) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1784) = v55;
  strcpy((v0 + 1792), "great grandson");
  *(v0 + 1807) = -18;
  *(v0 + 1808) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1816) = v56;
  *(v0 + 1824) = 0xD000000000000011;
  *(v0 + 1832) = 0x80000002669720B0;
  *(v0 + 1840) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1848) = v57;
  *(v0 + 1856) = 0xD000000000000011;
  *(v0 + 1864) = 0x80000002669720D0;
  *(v0 + 1872) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1880) = v58;
  *(v0 + 1888) = 0xD000000000000011;
  *(v0 + 1896) = 0x80000002669720F0;
  *(v0 + 1904) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1912) = v59;
  *(v0 + 1920) = 0x6572617070657473;
  *(v0 + 1928) = 0xEA0000000000746ELL;
  *(v0 + 1936) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1944) = v60;
  *(v0 + 1952) = 0x6874616670657473;
  *(v0 + 1960) = 0xEA00000000007265;
  *(v0 + 1968) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1976) = v61;
  *(v0 + 1984) = 0x68746F6D70657473;
  *(v0 + 1992) = 0xEA00000000007265;
  *(v0 + 2000) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2008) = v62;
  *(v0 + 2016) = 0x6C69686370657473;
  *(v0 + 2024) = 0xE900000000000064;
  *(v0 + 2032) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2040) = v63;
  *(v0 + 2048) = 0x6E6F7370657473;
  *(v0 + 2056) = 0xE700000000000000;
  *(v0 + 2064) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2072) = v64;
  strcpy((v0 + 2080), "stepdaughter");
  *(v0 + 2093) = 0;
  *(v0 + 2094) = -5120;
  *(v0 + 2096) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2104) = v65;
  *(v0 + 2112) = 0x746F726270657473;
  *(v0 + 2120) = 0xEB00000000726568;
  *(v0 + 2128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2136) = v66;
  *(v0 + 2144) = 0x7473697370657473;
  *(v0 + 2152) = 0xEA00000000007265;
  *(v0 + 2160) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2168) = v67;
  *(v0 + 2176) = 0x207265676E756F79;
  *(v0 + 2184) = 0xEF676E696C626973;
  *(v0 + 2192) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2200) = v68;
  strcpy((v0 + 2208), "elder sibling");
  *(v0 + 2222) = -4864;
  *(v0 + 2224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2232) = v69;
  strcpy((v0 + 2240), "younger sister");
  *(v0 + 2255) = -18;
  *(v0 + 2256) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2264) = v70;
  *(v0 + 2272) = 0x747365676E756F79;
  *(v0 + 2280) = 0xEF72657473697320;
  *(v0 + 2288) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2296) = v71;
  strcpy((v0 + 2304), "elder sister");
  *(v0 + 2317) = 0;
  *(v0 + 2318) = -5120;
  *(v0 + 2320) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2328) = v72;
  strcpy((v0 + 2336), "eldest sister");
  *(v0 + 2350) = -4864;
  *(v0 + 2352) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2360) = v73;
  *(v0 + 2368) = 0x207265676E756F79;
  *(v0 + 2376) = 0xEF726568746F7262;
  *(v0 + 2384) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2392) = v74;
  *(v0 + 2400) = 0xD000000000000010;
  *(v0 + 2408) = 0x8000000266972110;
  *(v0 + 2416) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2424) = v75;
  strcpy((v0 + 2432), "elder brother");
  *(v0 + 2446) = -4864;
  *(v0 + 2448) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2456) = v76;
  strcpy((v0 + 2464), "eldest brother");
  *(v0 + 2479) = -18;
  *(v0 + 2480) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2488) = v77;
  *(v0 + 2496) = 0xD000000000000013;
  *(v0 + 2504) = 0x8000000266972130;
  *(v0 + 2512) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2520) = v78;
  *(v0 + 2528) = 0xD00000000000001BLL;
  *(v0 + 2536) = 0x8000000266972150;
  *(v0 + 2544) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2552) = v79;
  *(v0 + 2560) = 0xD000000000000019;
  *(v0 + 2568) = 0x8000000266972170;
  *(v0 + 2576) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2584) = v80;
  *(v0 + 2592) = 0xD000000000000013;
  *(v0 + 2600) = 0x8000000266972190;
  *(v0 + 2608) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2616) = v81;
  *(v0 + 2624) = 0xD00000000000001BLL;
  *(v0 + 2632) = 0x80000002669721B0;
  *(v0 + 2640) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2648) = v82;
  *(v0 + 2656) = 0xD000000000000019;
  *(v0 + 2664) = 0x80000002669721D0;
  *(v0 + 2672) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2680) = v83;
  *(v0 + 2688) = 0xD000000000000019;
  *(v0 + 2696) = 0x80000002669721F0;
  *(v0 + 2704) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2712) = v84;
  *(v0 + 2720) = 0xD000000000000022;
  *(v0 + 2728) = 0x8000000266972210;
  *(v0 + 2736) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2744) = v85;
  *(v0 + 2752) = 0xD000000000000020;
  *(v0 + 2760) = 0x8000000266972240;
  *(v0 + 2768) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2776) = v86;
  *(v0 + 2784) = 0xD000000000000013;
  *(v0 + 2792) = 0x8000000266972270;
  *(v0 + 2800) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2808) = v87;
  *(v0 + 2816) = 0xD00000000000001BLL;
  *(v0 + 2824) = 0x8000000266972290;
  *(v0 + 2832) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2840) = v88;
  *(v0 + 2848) = 0xD000000000000019;
  *(v0 + 2856) = 0x80000002669722B0;
  *(v0 + 2864) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2872) = v89;
  *(v0 + 2880) = 0xD00000000000001ALL;
  *(v0 + 2888) = 0x80000002669722D0;
  *(v0 + 2896) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2904) = v90;
  *(v0 + 2912) = 0xD000000000000015;
  *(v0 + 2920) = 0x80000002669722F0;
  *(v0 + 2928) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2936) = v91;
  *(v0 + 2944) = 0xD00000000000001DLL;
  *(v0 + 2952) = 0x8000000266972310;
  *(v0 + 2960) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2968) = v92;
  *(v0 + 2976) = 0xD00000000000001BLL;
  *(v0 + 2984) = 0x8000000266972330;
  *(v0 + 2992) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3000) = v93;
  *(v0 + 3008) = 0xD000000000000015;
  *(v0 + 3016) = 0x8000000266972350;
  *(v0 + 3024) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3032) = v94;
  *(v0 + 3040) = 0xD00000000000001DLL;
  *(v0 + 3048) = 0x8000000266972370;
  *(v0 + 3056) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3064) = v95;
  *(v0 + 3072) = 0xD00000000000001BLL;
  *(v0 + 3080) = 0x8000000266972390;
  *(v0 + 3088) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3096) = v96;
  *(v0 + 3104) = 0xD00000000000001DLL;
  *(v0 + 3112) = 0x80000002669723B0;
  *(v0 + 3120) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3128) = v97;
  *(v0 + 3136) = 0xD000000000000015;
  *(v0 + 3144) = 0x80000002669723D0;
  *(v0 + 3152) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3160) = v98;
  *(v0 + 3168) = 0xD00000000000001DLL;
  *(v0 + 3176) = 0x80000002669723F0;
  *(v0 + 3184) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3192) = v99;
  *(v0 + 3200) = 0xD00000000000001BLL;
  *(v0 + 3208) = 0x8000000266972410;
  *(v0 + 3216) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3224) = v100;
  *(v0 + 3232) = 0xD00000000000001DLL;
  *(v0 + 3240) = 0x8000000266972430;
  *(v0 + 3248) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3256) = v101;
  *(v0 + 3264) = 0xD000000000000025;
  *(v0 + 3272) = 0x8000000266972450;
  *(v0 + 3280) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3288) = v102;
  *(v0 + 3296) = 0xD000000000000023;
  *(v0 + 3304) = 0x8000000266972480;
  *(v0 + 3312) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3320) = v103;
  *(v0 + 3328) = 0x5F73746E65726170;
  *(v0 + 3336) = 0xEF676E696C626973;
  *(v0 + 3344) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3352) = v104;
  *(v0 + 3360) = 0xD000000000000017;
  *(v0 + 3368) = 0x80000002669724B0;
  *(v0 + 3376) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3384) = v105;
  *(v0 + 3392) = 0xD000000000000015;
  *(v0 + 3400) = 0x80000002669724D0;
  *(v0 + 3408) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3416) = v106;
  *(v0 + 3424) = 0xD00000000000001FLL;
  *(v0 + 3432) = 0x80000002669724F0;
  *(v0 + 3440) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3448) = v107;
  *(v0 + 3456) = 0xD000000000000027;
  *(v0 + 3464) = 0x8000000266972510;
  *(v0 + 3472) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3480) = v108;
  *(v0 + 3488) = 0xD000000000000025;
  *(v0 + 3496) = 0x8000000266972540;
  *(v0 + 3504) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3512) = v109;
  *(v0 + 3520) = 0xD00000000000001FLL;
  *(v0 + 3528) = 0x8000000266972570;
  *(v0 + 3536) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3544) = v110;
  *(v0 + 3552) = 0xD000000000000027;
  *(v0 + 3560) = 0x8000000266972590;
  *(v0 + 3568) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3576) = v111;
  *(v0 + 3584) = 0xD000000000000025;
  *(v0 + 3592) = 0x80000002669725C0;
  *(v0 + 3600) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3608) = v112;
  *(v0 + 3616) = 0xD000000000000016;
  *(v0 + 3624) = 0x80000002669725F0;
  *(v0 + 3632) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3640) = v113;
  *(v0 + 3648) = 0xD000000000000014;
  *(v0 + 3656) = 0x8000000266972610;
  *(v0 + 3664) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3672) = v114;
  *(v0 + 3680) = 0xD00000000000001ELL;
  *(v0 + 3688) = 0x8000000266972630;
  *(v0 + 3696) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3704) = v115;
  *(v0 + 3712) = 0xD00000000000001FLL;
  *(v0 + 3720) = 0x8000000266972650;
  *(v0 + 3728) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3736) = v116;
  *(v0 + 3744) = 0xD00000000000001CLL;
  *(v0 + 3752) = 0x8000000266972670;
  *(v0 + 3760) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3768) = v117;
  *(v0 + 3776) = 0xD00000000000001ELL;
  *(v0 + 3784) = 0x8000000266972690;
  *(v0 + 3792) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3800) = v118;
  *(v0 + 3808) = 0xD000000000000026;
  *(v0 + 3816) = 0x80000002669726B0;
  *(v0 + 3824) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3832) = v119;
  *(v0 + 3840) = 0xD000000000000024;
  *(v0 + 3848) = 0x80000002669726E0;
  *(v0 + 3856) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3864) = v120;
  *(v0 + 3872) = 0xD000000000000024;
  *(v0 + 3880) = 0x8000000266972710;
  *(v0 + 3888) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3896) = v121;
  *(v0 + 3904) = 0xD000000000000027;
  *(v0 + 3912) = 0x8000000266972740;
  *(v0 + 3920) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3928) = v122;
  *(v0 + 3936) = 0xD000000000000021;
  *(v0 + 3944) = 0x8000000266972770;
  *(v0 + 3952) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3960) = v123;
  *(v0 + 3968) = 0xD000000000000024;
  *(v0 + 3976) = 0x80000002669727A0;
  *(v0 + 3984) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 3992) = v124;
  *(v0 + 4000) = 0xD000000000000010;
  *(v0 + 4008) = 0x80000002669727D0;
  *(v0 + 4016) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4024) = v125;
  *(v0 + 4032) = 0xD000000000000010;
  *(v0 + 4040) = 0x80000002669727F0;
  *(v0 + 4048) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4056) = v126;
  *(v0 + 4064) = 0xD000000000000010;
  *(v0 + 4072) = 0x8000000266972810;
  *(v0 + 4080) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4088) = v127;
  *(v0 + 4096) = 0xD000000000000011;
  *(v0 + 4104) = 0x8000000266972830;
  *(v0 + 4112) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4120) = v128;
  *(v0 + 4128) = 0xD000000000000010;
  *(v0 + 4136) = 0x8000000266972850;
  *(v0 + 4144) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4152) = v129;
  *(v0 + 4160) = 0xD000000000000011;
  *(v0 + 4168) = 0x8000000266972870;
  *(v0 + 4176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4184) = v130;
  strcpy((v0 + 4192), "parent-in-law");
  *(v0 + 4206) = -4864;
  *(v0 + 4208) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4216) = v131;
  *(v0 + 4224) = 0xD00000000000001ALL;
  *(v0 + 4232) = 0x8000000266972890;
  *(v0 + 4240) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4248) = v132;
  *(v0 + 4256) = 0xD00000000000001DLL;
  *(v0 + 4264) = 0x80000002669728B0;
  *(v0 + 4272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4280) = v133;
  *(v0 + 4288) = 0xD00000000000001ALL;
  *(v0 + 4296) = 0x80000002669728D0;
  *(v0 + 4304) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4312) = v134;
  *(v0 + 4320) = 0xD00000000000001DLL;
  *(v0 + 4328) = 0x80000002669728F0;
  *(v0 + 4336) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4344) = v135;
  strcpy((v0 + 4352), "sibling-in-law");
  *(v0 + 4367) = -18;
  *(v0 + 4368) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4376) = v136;
  *(v0 + 4384) = 0xD000000000000016;
  *(v0 + 4392) = 0x8000000266972910;
  *(v0 + 4400) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4408) = v137;
  *(v0 + 4416) = 0xD000000000000014;
  *(v0 + 4424) = 0x8000000266972930;
  *(v0 + 4432) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4440) = v138;
  *(v0 + 4448) = 0xD000000000000015;
  *(v0 + 4456) = 0x8000000266972950;
  *(v0 + 4464) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4472) = v139;
  *(v0 + 4480) = 0xD000000000000013;
  *(v0 + 4488) = 0x8000000266972970;
  *(v0 + 4496) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4504) = v140;
  *(v0 + 4512) = 0xD00000000000001CLL;
  *(v0 + 4520) = 0x8000000266972990;
  *(v0 + 4528) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4536) = v141;
  *(v0 + 4544) = 0xD00000000000001ALL;
  *(v0 + 4552) = 0x80000002669729B0;
  *(v0 + 4560) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4568) = v142;
  *(v0 + 4576) = 0xD00000000000001DLL;
  *(v0 + 4584) = 0x80000002669729D0;
  *(v0 + 4592) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4600) = v143;
  *(v0 + 4608) = 0xD00000000000001BLL;
  *(v0 + 4616) = 0x80000002669729F0;
  *(v0 + 4624) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4632) = v144;
  *(v0 + 4640) = 0xD000000000000023;
  *(v0 + 4648) = 0x8000000266972A10;
  *(v0 + 4656) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4664) = v145;
  *(v0 + 4672) = 0xD000000000000020;
  *(v0 + 4680) = 0x8000000266972A40;
  *(v0 + 4688) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4696) = v146;
  *(v0 + 4704) = 0x6E6973756F63;
  *(v0 + 4712) = 0xE600000000000000;
  *(v0 + 4720) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4728) = v147;
  *(v0 + 4736) = 0x756F635F656C616DLL;
  *(v0 + 4744) = 0xEB000000006E6973;
  *(v0 + 4752) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4760) = v148;
  strcpy((v0 + 4768), "female_cousin");
  *(v0 + 4782) = -4864;
  *(v0 + 4784) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4792) = v149;
  *(v0 + 4800) = 0xD00000000000001DLL;
  *(v0 + 4808) = 0x8000000266972A70;
  *(v0 + 4816) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4824) = v150;
  *(v0 + 4832) = 0xD00000000000001BLL;
  *(v0 + 4840) = 0x8000000266972A90;
  *(v0 + 4848) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4856) = v151;
  *(v0 + 4864) = 0xD000000000000023;
  *(v0 + 4872) = 0x8000000266972AB0;
  *(v0 + 4880) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4888) = v152;
  *(v0 + 4896) = 0xD000000000000021;
  *(v0 + 4904) = 0x8000000266972AE0;
  *(v0 + 4912) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4920) = v153;
  *(v0 + 4928) = 0xD000000000000020;
  *(v0 + 4936) = 0x8000000266972B10;
  *(v0 + 4944) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4952) = v154;
  *(v0 + 4960) = 0xD000000000000028;
  *(v0 + 4968) = 0x8000000266972B40;
  *(v0 + 4976) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 4984) = v155;
  *(v0 + 4992) = 0xD000000000000026;
  *(v0 + 5000) = 0x8000000266972B70;
  *(v0 + 5008) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5016) = v156;
  *(v0 + 5024) = 0xD00000000000001FLL;
  *(v0 + 5032) = 0x8000000266972BA0;
  *(v0 + 5040) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5048) = v157;
  *(v0 + 5056) = 0xD000000000000027;
  *(v0 + 5064) = 0x8000000266972BC0;
  *(v0 + 5072) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5080) = v158;
  *(v0 + 5088) = 0xD000000000000025;
  *(v0 + 5096) = 0x8000000266972BF0;
  *(v0 + 5104) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5112) = v159;
  *(v0 + 5120) = 0xD00000000000001ALL;
  *(v0 + 5128) = 0x8000000266972C20;
  *(v0 + 5136) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5144) = v160;
  *(v0 + 5152) = 0xD000000000000022;
  *(v0 + 5160) = 0x8000000266972C40;
  *(v0 + 5168) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5176) = v161;
  *(v0 + 5184) = 0xD000000000000020;
  *(v0 + 5192) = 0x8000000266972C70;
  *(v0 + 5200) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5208) = v162;
  *(v0 + 5216) = 0xD000000000000020;
  *(v0 + 5224) = 0x8000000266972CA0;
  *(v0 + 5232) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5240) = v163;
  *(v0 + 5248) = 0xD000000000000028;
  *(v0 + 5256) = 0x8000000266972CD0;
  *(v0 + 5264) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5272) = v164;
  *(v0 + 5280) = 0xD000000000000026;
  *(v0 + 5288) = 0x8000000266972D00;
  *(v0 + 5296) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5304) = v165;
  *(v0 + 5312) = 0xD00000000000001BLL;
  *(v0 + 5320) = 0x8000000266972D30;
  *(v0 + 5328) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5336) = v166;
  *(v0 + 5344) = 0xD000000000000023;
  *(v0 + 5352) = 0x8000000266972D50;
  *(v0 + 5360) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5368) = v167;
  *(v0 + 5376) = 0xD000000000000021;
  *(v0 + 5384) = 0x8000000266972D80;
  *(v0 + 5392) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5400) = v168;
  *(v0 + 5408) = 0xD00000000000001FLL;
  *(v0 + 5416) = 0x8000000266972DB0;
  *(v0 + 5424) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5432) = v169;
  *(v0 + 5440) = 0xD000000000000027;
  *(v0 + 5448) = 0x8000000266972DD0;
  *(v0 + 5456) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5464) = v170;
  *(v0 + 5472) = 0xD000000000000025;
  *(v0 + 5480) = 0x8000000266972E00;
  *(v0 + 5488) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5496) = v171;
  *(v0 + 5504) = 0xD00000000000001ALL;
  *(v0 + 5512) = 0x8000000266972E30;
  *(v0 + 5520) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5528) = v172;
  *(v0 + 5536) = 0xD000000000000022;
  *(v0 + 5544) = 0x8000000266972E50;
  *(v0 + 5552) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5560) = v173;
  *(v0 + 5568) = 0xD000000000000020;
  *(v0 + 5576) = 0x8000000266972E80;
  *(v0 + 5584) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5592) = v174;
  *(v0 + 5600) = 0xD000000000000020;
  *(v0 + 5608) = 0x8000000266972EB0;
  *(v0 + 5616) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5624) = v175;
  *(v0 + 5632) = 0xD000000000000028;
  *(v0 + 5640) = 0x8000000266972EE0;
  *(v0 + 5648) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5656) = v176;
  *(v0 + 5664) = 0xD000000000000026;
  *(v0 + 5672) = 0x8000000266972F10;
  *(v0 + 5680) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5688) = v177;
  *(v0 + 5696) = 0xD00000000000001BLL;
  *(v0 + 5704) = 0x8000000266972F40;
  *(v0 + 5712) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5720) = v178;
  *(v0 + 5728) = 0x1000000000000025;
  *(v0 + 5736) = 0x8000000266972F60;
  *(v0 + 5744) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5752) = v179;
  *(v0 + 5760) = 0xD000000000000021;
  *(v0 + 5768) = 0x8000000266972F90;
  *(v0 + 5776) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5784) = v180;
  *(v0 + 5792) = 0xD000000000000022;
  *(v0 + 5800) = 0x8000000266972FC0;
  *(v0 + 5808) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5816) = v181;
  *(v0 + 5824) = 0xD000000000000025;
  *(v0 + 5832) = 0x8000000266972FF0;
  *(v0 + 5840) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5848) = v182;
  *(v0 + 5856) = 0xD000000000000020;
  *(v0 + 5864) = 0x8000000266973020;
  *(v0 + 5872) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5880) = v183;
  *(v0 + 5888) = 0xD00000000000003ALL;
  *(v0 + 5896) = 0x8000000266973050;
  *(v0 + 5904) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5912) = v184;
  *(v0 + 5920) = 0xD000000000000038;
  *(v0 + 5928) = 0x8000000266973090;
  *(v0 + 5936) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5944) = v185;
  *(v0 + 5952) = 0xD000000000000044;
  *(v0 + 5960) = 0x80000002669730D0;
  *(v0 + 5968) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 5976) = v186;
  *(v0 + 5984) = 0xD000000000000042;
  *(v0 + 5992) = 0x8000000266973120;
  *(v0 + 6000) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6008) = v187;
  strcpy((v0 + 6016), "male_partner");
  *(v0 + 6029) = 0;
  *(v0 + 6030) = -5120;
  *(v0 + 6032) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6040) = v188;
  strcpy((v0 + 6048), "female_partner");
  *(v0 + 6063) = -18;
  *(v0 + 6064) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6072) = v189;
  *(v0 + 6080) = 0x6972665F656C616DLL;
  *(v0 + 6088) = 0xEB00000000646E65;
  *(v0 + 6096) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6104) = v190;
  strcpy((v0 + 6112), "female_friend");
  *(v0 + 6126) = -4864;
  *(v0 + 6128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6136) = v191;
  *(v0 + 6144) = 0xD000000000000020;
  *(v0 + 6152) = 0x8000000266973170;
  *(v0 + 6160) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6168) = v192;
  *(v0 + 6176) = 0xD000000000000021;
  *(v0 + 6184) = 0x80000002669731A0;
  *(v0 + 6192) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6200) = v193;
  *(v0 + 6208) = 0xD00000000000001CLL;
  *(v0 + 6216) = 0x80000002669731D0;
  *(v0 + 6224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6232) = v194;
  *(v0 + 6240) = 0xD00000000000001DLL;
  *(v0 + 6248) = 0x80000002669731F0;
  *(v0 + 6256) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6264) = v195;
  *(v0 + 6272) = 0xD00000000000001ALL;
  *(v0 + 6280) = 0x8000000266973210;
  *(v0 + 6288) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6296) = v196;
  *(v0 + 6304) = 0xD00000000000001ALL;
  *(v0 + 6312) = 0x8000000266973230;
  *(v0 + 6320) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6328) = v197;
  *(v0 + 6336) = 0xD00000000000001ALL;
  *(v0 + 6344) = 0x8000000266973250;
  *(v0 + 6352) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6360) = v198;
  *(v0 + 6368) = 0xD00000000000001ALL;
  *(v0 + 6376) = 0x8000000266973270;
  *(v0 + 6384) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6392) = v199;
  strcpy((v0 + 6400), "siblings_child");
  *(v0 + 6415) = -18;
  *(v0 + 6416) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6424) = v200;
  *(v0 + 6432) = 0xD000000000000016;
  *(v0 + 6440) = 0x8000000266973290;
  *(v0 + 6448) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6456) = v201;
  *(v0 + 6464) = 0xD000000000000016;
  *(v0 + 6472) = 0x80000002669732B0;
  *(v0 + 6480) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6488) = v202;
  *(v0 + 6496) = 0xD000000000000031;
  *(v0 + 6504) = 0x80000002669732D0;
  *(v0 + 6512) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6520) = v203;
  *(v0 + 6528) = 0xD000000000000035;
  *(v0 + 6536) = 0x8000000266973310;
  *(v0 + 6544) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6552) = v204;
  *(v0 + 6560) = 0xD000000000000012;
  *(v0 + 6568) = 0x8000000266973350;
  *(v0 + 6576) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6584) = v205;
  *(v0 + 6592) = 0xD000000000000013;
  *(v0 + 6600) = 0x8000000266973370;
  *(v0 + 6608) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6616) = v206;
  *(v0 + 6624) = 0xD00000000000002CLL;
  *(v0 + 6632) = 0x8000000266973390;
  *(v0 + 6640) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6648) = v207;
  *(v0 + 6656) = 0xD000000000000028;
  *(v0 + 6664) = 0x80000002669733C0;
  *(v0 + 6672) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6680) = v208;
  *(v0 + 6688) = 0xD00000000000001BLL;
  *(v0 + 6696) = 0x80000002669733F0;
  *(v0 + 6704) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6712) = v209;
  *(v0 + 6720) = 0x100000000000001DLL;
  *(v0 + 6728) = 0x8000000266973410;
  *(v0 + 6736) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6744) = v210;
  *(v0 + 6752) = 0xD00000000000001FLL;
  *(v0 + 6760) = 0x8000000266973430;
  *(v0 + 6768) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6776) = v211;
  *(v0 + 6784) = 0xD000000000000015;
  *(v0 + 6792) = 0x8000000266973450;
  *(v0 + 6800) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6808) = v212;
  *(v0 + 6816) = 0xD000000000000018;
  *(v0 + 6824) = 0x8000000266973470;
  *(v0 + 6832) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6840) = v213;
  *(v0 + 6848) = 0x726F5F656365696ELL;
  *(v0 + 6856) = 0xEF6E6973756F635FLL;
  *(v0 + 6864) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6872) = v214;
  *(v0 + 6880) = 0xD000000000000010;
  *(v0 + 6888) = 0x8000000266973490;
  *(v0 + 6896) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6904) = v215;
  *(v0 + 6912) = 0xD00000000000001CLL;
  *(v0 + 6920) = 0x80000002669734B0;
  *(v0 + 6928) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6936) = v216;
  *(v0 + 6944) = 0xD000000000000027;
  *(v0 + 6952) = 0x80000002669734D0;
  *(v0 + 6960) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 6968) = v217;
  *(v0 + 6976) = 0xD000000000000020;
  *(v0 + 6984) = 0x8000000266973500;
  *(v0 + 6992) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7000) = v218;
  *(v0 + 7008) = 0xD00000000000001CLL;
  *(v0 + 7016) = 0x8000000266973530;
  *(v0 + 7024) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7032) = v219;
  *(v0 + 7040) = 0xD000000000000016;
  *(v0 + 7048) = 0x8000000266973550;
  *(v0 + 7056) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7064) = v220;
  *(v0 + 7072) = 0xD000000000000017;
  *(v0 + 7080) = 0x8000000266973570;
  *(v0 + 7088) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7096) = v221;
  *(v0 + 7104) = 0xD000000000000014;
  *(v0 + 7112) = 0x8000000266973590;
  *(v0 + 7120) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7128) = v222;
  *(v0 + 7136) = 0xD000000000000014;
  *(v0 + 7144) = 0x80000002669735B0;
  *(v0 + 7152) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7160) = v223;
  *(v0 + 7168) = 0xD000000000000014;
  *(v0 + 7176) = 0x80000002669735D0;
  *(v0 + 7184) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7192) = v224;
  *(v0 + 7200) = 0xD000000000000018;
  *(v0 + 7208) = 0x80000002669735F0;
  *(v0 + 7216) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7224) = v225;
  *(v0 + 7232) = 0xD000000000000015;
  *(v0 + 7240) = 0x8000000266973610;
  *(v0 + 7248) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7256) = v226;
  *(v0 + 7264) = 0xD000000000000014;
  *(v0 + 7272) = 0x8000000266973630;
  *(v0 + 7280) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7288) = v227;
  *(v0 + 7296) = 0xD000000000000015;
  *(v0 + 7304) = 0x8000000266973650;
  *(v0 + 7312) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7320) = v228;
  *(v0 + 7328) = 0xD000000000000012;
  *(v0 + 7336) = 0x8000000266973670;
  *(v0 + 7344) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7352) = v229;
  *(v0 + 7360) = 0xD000000000000012;
  *(v0 + 7368) = 0x8000000266973690;
  *(v0 + 7376) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7384) = v230;
  *(v0 + 7392) = 0xD000000000000012;
  *(v0 + 7400) = 0x80000002669736B0;
  *(v0 + 7408) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7416) = v231;
  *(v0 + 7424) = 0xD000000000000016;
  *(v0 + 7432) = 0x80000002669736D0;
  *(v0 + 7440) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7448) = v232;
  *(v0 + 7456) = 0xD000000000000013;
  *(v0 + 7464) = 0x80000002669736F0;
  *(v0 + 7472) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7480) = v233;
  *(v0 + 7488) = 0xD00000000000001FLL;
  *(v0 + 7496) = 0x8000000266973710;
  *(v0 + 7504) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7512) = v234;
  *(v0 + 7520) = 0xD000000000000020;
  *(v0 + 7528) = 0x8000000266973730;
  *(v0 + 7536) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7544) = v235;
  *(v0 + 7552) = 0xD00000000000001DLL;
  *(v0 + 7560) = 0x8000000266973760;
  *(v0 + 7568) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7576) = v236;
  *(v0 + 7584) = 0xD00000000000001DLL;
  *(v0 + 7592) = 0x8000000266973780;
  *(v0 + 7600) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7608) = v237;
  *(v0 + 7616) = 0xD00000000000001DLL;
  *(v0 + 7624) = 0x80000002669737A0;
  *(v0 + 7632) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7640) = v238;
  *(v0 + 7648) = 0xD000000000000021;
  *(v0 + 7656) = 0x80000002669737C0;
  *(v0 + 7664) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7672) = v239;
  *(v0 + 7680) = 0xD00000000000001ELL;
  *(v0 + 7688) = 0x80000002669737F0;
  *(v0 + 7696) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7704) = v240;
  *(v0 + 7712) = 0xD000000000000014;
  *(v0 + 7720) = 0x8000000266973810;
  *(v0 + 7728) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 7736) = v241;
  result = Dictionary.init(dictionaryLiteral:)();
  static Dictionary<>.NLSemanticValueToCNRelationLabel = result;
  return result;
}