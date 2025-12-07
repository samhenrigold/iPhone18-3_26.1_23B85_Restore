Swift::Void __swiftcall VocabularyResult.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = MEMORY[0x1E1299430](*(v1 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_appId), *(v1 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_appId + 8));
  v5 = MEMORY[0x1E1299430](0x6449707061, 0xE500000000000000);
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];

  v6 = MEMORY[0x1E1299430](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_itemId), *(v2 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_itemId + 8));
  v7 = MEMORY[0x1E1299430](0x64496D657469, 0xE600000000000000);
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];

  v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedShort_];
  v9 = MEMORY[0x1E1299430](0x657079546D657469, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeObject:v8 forKey:v9];

  v10 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_fieldTypes);
  v11 = *(v10 + 16);
  if (v11)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v12 = (v10 + 32);
    do
    {
      v13 = *v12++;
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedShort_];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v11;
    }

    while (v11);
  }

  type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v15 = MEMORY[0x1E1299430](0x707954646C656966, 0xEA00000000007365);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v15];

  v16 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_score);
  v17 = MEMORY[0x1E1299430](0x65726F6373, 0xE500000000000000);
  LODWORD(v18) = v16;
  [(objc_class *)with.super.isa encodeFloat:v17 forKey:v18];

  v19 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_spanBegin);
  v20 = MEMORY[0x1E1299430](0x696765426E617073, 0xE90000000000006ELL);
  [(objc_class *)with.super.isa encodeInteger:v19 forKey:v20];

  v21 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_spanEnd);
  v22 = MEMORY[0x1E1299430](0x646E456E617073, 0xE700000000000000);
  [(objc_class *)with.super.isa encodeInteger:v21 forKey:v22];

  v23 = MEMORY[0x1E1299430](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_semanticValue), *(v2 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_semanticValue + 8));
  v24 = MEMORY[0x1E1299430](0x6369746E616D6573, 0xED000065756C6156);
  [(objc_class *)with.super.isa encodeObject:v23 forKey:v24];

  v25 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_fields);
  if (v25)
  {
    type metadata accessor for VocabularyField();
    v25 = Array._bridgeToObjectiveC()().super.isa;
  }

  v26 = MEMORY[0x1E1299430](0x73646C656966, 0xE600000000000000);
  [(objc_class *)with.super.isa encodeObject:v25 forKey:v26];
  swift_unknownObjectRelease();

  if (*(v2 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_userId + 8))
  {
    v27 = MEMORY[0x1E1299430](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_userId));
    v28 = MEMORY[0x1E1299430](0x644972657375, 0xE600000000000000);
    [(objc_class *)with.super.isa encodeObject:v27 forKey:v28];
  }

  if (*(v2 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_personaId + 8))
  {
    v29 = MEMORY[0x1E1299430](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_personaId));
    v30 = MEMORY[0x1E1299430](0x49616E6F73726570, 0xE900000000000064);
    [(objc_class *)with.super.isa encodeObject:v29 forKey:v30];
  }

  v31 = MEMORY[0x1E69E7D40];
  v32 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xC0))();
  if (v33)
  {
    v34 = MEMORY[0x1E1299430](v32);

    v35 = MEMORY[0x1E1299430](0xD000000000000018, 0x80000001DC652280);
    [(objc_class *)with.super.isa encodeObject:v34 forKey:v35];
  }

  v36 = (*((*v31 & *v2) + 0xD8))(v32);
  if (v37)
  {
    v38 = MEMORY[0x1E1299430](v36);

    v39 = MEMORY[0x1E1299430](0x6C4173656E755469, 0xED00004449534474);
    [(objc_class *)with.super.isa encodeObject:v38 forKey:v39];
  }
}

id @objc VocabularyField.description.getter(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  v8 = MEMORY[0x1E1299430](v5, v7);

  return v8;
}

char *VocabularyResult.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(205);
  MEMORY[0x1E1299490](0xD000000000000017, 0x80000001DC6522A0);
  MEMORY[0x1E1299490](*(v1 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_appId), *(v1 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_appId + 8));
  MEMORY[0x1E1299490](0x64496D657469202CLL, 0xE90000000000003DLL);
  MEMORY[0x1E1299490](*(v1 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_itemId), *(v1 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_itemId + 8));
  MEMORY[0x1E1299490](0x79546D657469202CLL, 0xEB000000003D6570);
  v2 = UInt16.cascadeDescription.getter(*(v0 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_itemType));
  MEMORY[0x1E1299490](v2);

  MEMORY[0x1E1299490](0x54646C656966202CLL, 0xEE005B3D73657079);
  v56 = v0;
  v3 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_fieldTypes);
  v4 = *(v3 + 16);
  if (v4)
  {
    v57 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    type metadata accessor for NSArray(0, &lazy cache variable for type metadata for CCTypeIdentifierRegistry, 0x1E69AA778);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = (v3 + 32);
    do
    {
      v8 = *v6++;
      v7 = v8;
      if (([ObjCClassFromMetadata isValidItemType_] & 1) != 0 || objc_msgSend(ObjCClassFromMetadata, sel_isValidFieldType_, v7))
      {
        v9 = [ObjCClassFromMetadata descriptionForTypeIdentifier_];
        if (v9)
        {
          v10 = v9;
          v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v13 = v12;
        }

        else
        {
          v13 = 0xE700000000000000;
          v11 = 0x6E776F6E6B6E75;
        }
      }

      else
      {
        lazy protocol witness table accessor for type UInt16 and conformance UInt16();
        v11 = BinaryInteger.description.getter();
        v13 = v14;
      }

      v16 = *(v57 + 16);
      v15 = *(v57 + 24);
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
      }

      *(v57 + 16) = v16 + 1;
      v17 = v57 + 16 * v16;
      *(v17 + 32) = v11;
      *(v17 + 40) = v13;
      --v4;
    }

    while (v4);
  }

  v18 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v19 = BidirectionalCollection<>.joined(separator:)();
  v21 = v20;

  MEMORY[0x1E1299490](v19, v21);

  MEMORY[0x1E1299490](0x65726F6373202C5DLL, 0xE90000000000003DLL);
  Float.write<A>(to:)();
  MEMORY[0x1E1299490](0x7B3D6E617073202CLL, 0xE800000000000000);
  v22 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1E1299490](v22);

  MEMORY[0x1E1299490](8236, 0xE200000000000000);
  v23 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1E1299490](v23);

  MEMORY[0x1E1299490](0xD000000000000012, 0x80000001DC6522C0);
  MEMORY[0x1E1299490](*(v18 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_semanticValue), *(v18 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_semanticValue + 8));
  MEMORY[0x1E1299490](0x646C656966202C22, 0xEB000000005B3D73);
  v24 = *(v56 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_fields);
  if (v24)
  {
    if (v24 >> 62)
    {
      if (v24 >= 0)
      {
        v55 = v24 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
        v55 = *(v56 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_fields);
      }

      v25 = MEMORY[0x1E1299770](v55);
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v25)
    {
      v58 = MEMORY[0x1E69E7CC0];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25 & ~(v25 >> 63), 0);
      if (v25 < 0)
      {
        __break(1u);
        return result;
      }

      v27 = 0;
      do
      {
        if ((v24 & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x1E12996A0](v27, v24);
        }

        else
        {
          v28 = *(v24 + 8 * v27 + 32);
        }

        v29 = v28;
        v30 = [v28 description];
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;

        v35 = *(v58 + 16);
        v34 = *(v58 + 24);
        if (v35 >= v34 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1);
        }

        ++v27;
        *(v58 + 16) = v35 + 1;
        v36 = v58 + 16 * v35;
        *(v36 + 32) = v31;
        *(v36 + 40) = v33;
      }

      while (v25 != v27);
      v18 = v56;
    }

    v37 = BidirectionalCollection<>.joined(separator:)();
    v39 = v38;
  }

  else
  {
    v39 = 0xE300000000000000;
    v37 = 7104878;
  }

  MEMORY[0x1E1299490](v37, v39);

  MEMORY[0x1E1299490](0x4972657375202C5DLL, 0xEB00000000223D64);
  if (*(v18 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_userId + 8))
  {
    v40 = *(v18 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_userId);
    v41 = *(v18 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_userId + 8);
  }

  else
  {
    v41 = 0xE300000000000000;
    v40 = 7104878;
  }

  MEMORY[0x1E1299490](v40, v41);

  MEMORY[0x1E1299490](0x6F73726570202C22, 0xEE00223D6449616ELL);
  if (*(v18 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_personaId + 8))
  {
    v42 = *(v18 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_personaId);
    v43 = *(v18 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_personaId + 8);
  }

  else
  {
    v43 = 0xE300000000000000;
    v42 = 7104878;
  }

  MEMORY[0x1E1299490](v42, v43);

  v44 = MEMORY[0x1E1299490](0xD000000000000012, 0x80000001DC6522E0);
  v45 = *v18;
  v46 = v18;
  v47 = MEMORY[0x1E69E7D40];
  v48 = (*((*MEMORY[0x1E69E7D40] & v45) + 0xD8))(v44);
  if (v49)
  {
    v50 = v49;
  }

  else
  {
    v48 = 7104878;
    v50 = 0xE300000000000000;
  }

  MEMORY[0x1E1299490](v48, v50);

  v51 = MEMORY[0x1E1299490](0xD00000000000001DLL, 0x80000001DC652300);
  v52 = (*((*v47 & *v46) + 0xC0))(v51);
  if (v53)
  {
    v54 = v53;
  }

  else
  {
    v52 = 7104878;
    v54 = 0xE300000000000000;
  }

  MEMORY[0x1E1299490](v52, v54);

  MEMORY[0x1E1299490](32034, 0xE200000000000000);
  return 0;
}

id VocabularyField.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void specialized VocabularyField.init(coder:)(void *a1)
{
  v2 = v1;
  type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v4 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v4)
  {
    v5 = v4;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v6 = &v2[OBJC_IVAR____TtC21SiriInformationSearch15VocabularyField_value];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = MEMORY[0x1E1299430](0x707954646C656966, 0xE900000000000065);
  v8 = [a1 decodeIntegerForKey_];

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!(v8 >> 16))
  {
    *&v2[OBJC_IVAR____TtC21SiriInformationSearch15VocabularyField_fieldType] = v8;
    v9.receiver = v2;
    v9.super_class = type metadata accessor for VocabularyField();
    objc_msgSendSuper2(&v9, sel_init);
    return;
  }

  __break(1u);
}

unint64_t lazy protocol witness table accessor for type UInt16 and conformance UInt16()
{
  result = lazy protocol witness table cache variable for type UInt16 and conformance UInt16;
  if (!lazy protocol witness table cache variable for type UInt16 and conformance UInt16)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt16 and conformance UInt16);
  }

  return result;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

uint64_t DeviceExpertExperience.deviceExpertClientComponent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20SiriInformationTypes22DeviceExpertExperience_deviceExpertClientComponent;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id DeviceExpertExperience.__allocating_init(pluginId:deviceExpertClientComponent:queryConfidenceScore:userDialogAct:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v30 = a4;
  v34 = a3;
  v36 = a1;
  v37 = a2;
  v35 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v10 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v31 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v32 = *(v12 - 8);
  v13 = v32;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_allocWithZone(v6);
  v17 = OBJC_IVAR____TtC20SiriInformationTypes22DeviceExpertExperience_deviceExpertClientComponent;
  v33 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent();
  v18 = *(v33 - 8);
  (*(v18 + 16))(&v16[v17], a3, v33);
  v19 = *(v13 + 16);
  v20 = v12;
  v19(v15, a4, v12);
  v21 = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  v22 = v31;
  v23 = v35;
  (*(v10 + 104))(v31, *MEMORY[0x1E69BCBD8], v35);
  *&v16[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v24 = &v16[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  v25 = v37;
  *v24 = v36;
  v24[1] = v25;
  *&v16[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a5;
  v19(&v16[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v15, v20);
  *&v16[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = v21;
  (*(v10 + 16))(&v16[OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent], v22, v23);
  v26 = type metadata accessor for Experience(0);
  v38.receiver = v16;
  v38.super_class = v26;
  v27 = objc_msgSendSuper2(&v38, sel_init);
  v28 = *(v32 + 8);
  v28(v30, v20);
  (*(v18 + 8))(v34, v33);
  (*(v10 + 8))(v22, v23);
  v28(v15, v20);
  return v27;
}

id DeviceExpertExperience.init(pluginId:deviceExpertClientComponent:queryConfidenceScore:userDialogAct:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v31 = a4;
  v34 = a3;
  v35 = a1;
  v36 = a2;
  v32 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v29 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC20SiriInformationTypes22DeviceExpertExperience_deviceExpertClientComponent;
  v33 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent();
  v15 = *(v33 - 8);
  (*(v15 + 16))(&v5[v14], a3, v33);
  v16 = *(v11 + 16);
  v17 = v10;
  v16(v13, a4, v10);
  v28 = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  v19 = v29;
  v18 = v30;
  v20 = v32;
  (*(v30 + 104))(v29, *MEMORY[0x1E69BCBD8], v32);
  *&v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v21 = &v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  v22 = v36;
  *v21 = v35;
  v21[1] = v22;
  *&v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a5;
  v16(&v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v13, v17);
  *&v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = v28;
  (*(v18 + 16))(&v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent], v19, v20);
  v23 = type metadata accessor for Experience(0);
  v37.receiver = v5;
  v37.super_class = v23;
  v24 = objc_msgSendSuper2(&v37, sel_init);
  v25 = *(v11 + 8);
  v25(v31, v17);
  (*(v15 + 8))(v34, v33);
  (*(v18 + 8))(v19, v20);
  v25(v13, v17);
  return v24;
}

NSObject *DeviceExpertExperience.init(coder:)(NSObject *a1)
{
  v3 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for NSData();
  v8 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v8)
  {
    v9 = v8;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = 0;
    memset(&v17[48], 0, 32);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent and conformance Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent();
    Message.init(serializedData:extensions:partial:options:)();
    (*(v5 + 32))(v1 + OBJC_IVAR____TtC20SiriInformationTypes22DeviceExpertExperience_deviceExpertClientComponent, v7, v4);
    v14 = Experience.init(coder:)(a1);
    v15 = v14;

    if (v14)
    {

      return v14;
    }
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.pommes);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DC5C3000, v11, v12, "DeviceExpertClientComponent cannot be decoded", v13, 2u);
      MEMORY[0x1E1299E70](v13, -1, -1);
    }

    type metadata accessor for DeviceExpertExperience(0);
    swift_deallocPartialClassInstance();
  }

  return 0;
}

Swift::Void __swiftcall DeviceExpertExperience.encode(with:)(NSCoder with)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent and conformance Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent();
  v2 = Message.serializedData(partial:)();
  v4 = v3;
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v2, v4);
  v6 = MEMORY[0x1E1299430](0xD00000000000001BLL, 0x80000001DC652440);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v6];

  Experience.encode(with:)(with);
}

uint64_t DeviceExpertExperience.__ivar_destroyer()
{
  v1 = OBJC_IVAR____TtC20SiriInformationTypes22DeviceExpertExperience_deviceExpertClientComponent;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id DeviceExpertExperience.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceExpertExperience(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DeviceExpertExperience(uint64_t a1)
{
  result = type metadata singleton initialization cache for DeviceExpertExperience;
  if (!type metadata singleton initialization cache for DeviceExpertExperience)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent and conformance Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent()
{
  result = lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent and conformance Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent;
  if (!lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent and conformance Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent and conformance Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent);
  }

  return result;
}

uint64_t type metadata completion function for DeviceExpertExperience(uint64_t a1)
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent();
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

uint64_t PatternDrivenExperience.__allocating_init(_:queryConfidence:)(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E12990B0](v7);
  v12 = v11;
  v13 = Apple_Parsec_Responseframework_PatternDrivenExperience.patternComponents.getter();
  Siri_Nlu_External_UserDialogAct.init()();
  v14 = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  v15 = (*(v3 + 336))(v10, v12, v13, v9, v14, a2);
  v16 = type metadata accessor for Apple_Parsec_Responseframework_PatternDrivenExperience();
  (*(*(v16 - 8) + 8))(a1, v16);
  return v15;
}

uint64_t PatternDrivenExperience.__allocating_init(pluginIdentifier:components:queryConfidence:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Siri_Nlu_External_UserDialogAct.init()();
  v12 = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  return (*(v4 + 336))(a1, a2, a3, v11, v12, a4);
}

uint64_t PatternDrivenExperience.__allocating_init(pluginIdentifier:components:queryConfidence:userDialogAct:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v11 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a4, v11);
  v15 = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  v16 = (*(v5 + 336))(a1, a2, a3, v14, v15, a5);
  (*(v12 + 8))(a4, v11);
  return v16;
}

id PatternDrivenExperience.__allocating_init(pluginIdentifier:components:queryConfidence:userDialogAct:renderOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = v6;
  v29 = a2;
  v30 = a5;
  v28 = a1;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = objc_allocWithZone(v7);
  *&v19[OBJC_IVAR____TtC21SiriInformationSearch23PatternDrivenExperience_components] = a3;
  v20 = *(v16 + 16);
  v20(v18, a4, v15);
  (*(v12 + 104))(v14, *MEMORY[0x1E69BCBD8], v11);
  *&v19[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v21 = &v19[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  v22 = v29;
  *v21 = v28;
  v21[1] = v22;
  *&v19[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a6;
  v20(&v19[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v18, v15);
  *&v19[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = v30;
  (*(v12 + 16))(&v19[OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent], v14, v11);
  v23 = type metadata accessor for Experience(0);
  v31.receiver = v19;
  v31.super_class = v23;
  v24 = objc_msgSendSuper2(&v31, sel_init);
  v25 = *(v16 + 8);
  v25(a4, v15);
  (*(v12 + 8))(v14, v11);
  v25(v18, v15);
  return v24;
}

id PatternDrivenExperience.init(pluginIdentifier:components:queryConfidence:userDialogAct:renderOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v27 = a2;
  v28 = a5;
  v26 = a1;
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6[OBJC_IVAR____TtC21SiriInformationSearch23PatternDrivenExperience_components] = a3;
  v18 = *(v15 + 16);
  v18(v17, a4, v14);
  (*(v11 + 104))(v13, *MEMORY[0x1E69BCBD8], v10);
  *&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v19 = &v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  v20 = v27;
  *v19 = v26;
  v19[1] = v20;
  *&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a6;
  v18(&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v17, v14);
  *&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = v28;
  (*(v11 + 16))(&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent], v13, v10);
  v21 = type metadata accessor for Experience(0);
  v29.receiver = v6;
  v29.super_class = v21;
  v22 = objc_msgSendSuper2(&v29, sel_init);
  v23 = *(v15 + 8);
  v23(a4, v14);
  (*(v11 + 8))(v13, v10);
  v23(v17, v14);
  return v22;
}

NSObject *PatternDrivenExperience.init(coder:)(NSObject *a1)
{
  v3 = v1;
  v5 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Parsec_Responseframework_PatternComponent();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DC64ED70;
  *(v10 + 32) = type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
  *(v10 + 40) = type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0);
  NSCoder.decodeObject(of:forKey:)();

  if (*(&v44 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo6NSDataCGMd, &_sSaySo6NSDataCGMR);
    if (swift_dynamicCast())
    {
      v11 = v46;
      if (v46 >> 62)
      {
        if (v46 < 0)
        {
          v33 = v46;
        }

        else
        {
          v33 = v46 & 0xFFFFFFFFFFFFFF8;
        }

        v12 = MEMORY[0x1E1299770](v33);
        if (v12)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v12 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v12)
        {
LABEL_5:
          v34 = a1;
          v35 = v1;
          v46 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12 & ~(v12 >> 63), 0);
          if ((v12 & 0x8000000000000000) == 0)
          {
            a1 = 0;
            v13 = v46;
            v39 = v11;
            v40 = v11 & 0xC000000000000001;
            v36 = v11 & 0xFFFFFFFFFFFFFF8;
            v37 = v8 + 32;
            v38 = v12;
            while (1)
            {
              v14 = &a1->isa + 1;
              if (__OFADD__(a1, 1))
              {
                break;
              }

              if (v40)
              {
                v15 = MEMORY[0x1E12996A0](a1, v11);
              }

              else
              {
                if (a1 >= *(v36 + 16))
                {
                  goto LABEL_26;
                }

                v15 = *(v11 + 8 * a1 + 32);
              }

              v16 = v15;
              static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v45 = 0;
              v43 = 0u;
              v44 = 0u;
              BinaryDecodingOptions.init()();
              lazy protocol witness table accessor for type Apple_Parsec_Responseframework_PatternComponent and conformance Apple_Parsec_Responseframework_PatternComponent();
              Message.init(serializedData:extensions:partial:options:)();

              v46 = v13;
              v18 = *(v13 + 16);
              v17 = *(v13 + 24);
              v11 = v39;
              if (v18 >= v17 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
                v13 = v46;
              }

              *(v13 + 16) = v18 + 1;
              (*(v8 + 32))(v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v18, v42, v7);
              a1 = (a1 + 1);
              if (v14 == v38)
              {

                a1 = v34;
                v3 = v35;
                goto LABEL_33;
              }
            }

            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          __break(1u);
          swift_once();
          v24 = type metadata accessor for Logger();
          __swift_project_value_buffer(v24, static Logger.pommes);
          v25 = v2;
          v26 = Logger.logObject.getter();
          v27 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            *&v43 = v29;
            *v28 = 136315138;
            swift_getErrorValue();
            v30 = Error.localizedDescription.getter();
            v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v43);

            *(v28 + 4) = v32;
            _os_log_impl(&dword_1DC5C3000, v26, v27, "PatternExperience.Component failed %s", v28, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v29);
            MEMORY[0x1E1299E70](v29, -1, -1);
            MEMORY[0x1E1299E70](v28, -1, -1);
          }

          else
          {
          }

          a1 = v34;
          return Experience.init(coder:)(a1);
        }
      }

      v13 = MEMORY[0x1E69E7CC0];
LABEL_33:
      *(v3 + OBJC_IVAR____TtC21SiriInformationSearch23PatternDrivenExperience_components) = v13;
      return Experience.init(coder:)(a1);
    }
  }

  else
  {
    outlined destroy of Any?(&v43);
  }

  if (one-time initialization token for pommes != -1)
  {
LABEL_27:
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.pommes);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1DC5C3000, v20, v21, "PatternExperience failed to extract components array", v22, 2u);
    MEMORY[0x1E1299E70](v22, -1, -1);
  }

  type metadata accessor for PatternDrivenExperience(0);
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall PatternDrivenExperience.encode(with:)(NSCoder with)
{
  isa = with.super.isa;
  v2 = type metadata accessor for Apple_Parsec_Responseframework_PatternComponent();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v1;
  v7 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch23PatternDrivenExperience_components);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v33 = (v3 + 8);
    v34 = v3 + 16;
    v28 = MEMORY[0x1E69E7CC0];
    v25 = v8 - 1;
    *&v5 = 136315138;
    v29 = v5;
    v31 = v7;
    v32 = v3;
    v30 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    while (1)
    {
      v10 = v9;
      if (v9 >= *(v7 + 16))
      {
        break;
      }

      (*(v3 + 16))(v6, v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v9++, v2);
      lazy protocol witness table accessor for type Apple_Parsec_Responseframework_PatternComponent and conformance Apple_Parsec_Responseframework_PatternComponent();
      v11 = Message.serializedData(partial:)();
      v13 = v12;
      v14 = v11;
      (*v33)(v6, v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
      }

      v16 = *(v28 + 2);
      v15 = *(v28 + 3);
      if (v16 >= v15 >> 1)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v28);
        v18 = v13;
        v28 = v21;
        v17 = v14;
      }

      else
      {
        v17 = v14;
        v18 = v13;
      }

      v19 = v28;
      *(v28 + 2) = v16 + 1;
      v20 = &v19[16 * v16];
      *(v20 + 4) = v17;
      *(v20 + 5) = v18;
      v7 = v31;
      v3 = v32;
      if (v25 == v10)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
LABEL_12:
    v22 = Array._bridgeToObjectiveC()().super.isa;

    v23 = MEMORY[0x1E1299430](0x6E656E6F706D6F63, 0xEA00000000007374);
    v24 = isa;
    [(objc_class *)isa encodeObject:v22 forKey:v23];

    Experience.encode(with:)(v24);
  }
}

id PatternDrivenExperience.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PatternDrivenExperience(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PatternDrivenExperience(uint64_t a1)
{
  result = type metadata singleton initialization cache for PatternDrivenExperience;
  if (!type metadata singleton initialization cache for PatternDrivenExperience)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Parsec_Responseframework_PatternComponent and conformance Apple_Parsec_Responseframework_PatternComponent()
{
  result = lazy protocol witness table cache variable for type Apple_Parsec_Responseframework_PatternComponent and conformance Apple_Parsec_Responseframework_PatternComponent;
  if (!lazy protocol witness table cache variable for type Apple_Parsec_Responseframework_PatternComponent and conformance Apple_Parsec_Responseframework_PatternComponent)
  {
    type metadata accessor for Apple_Parsec_Responseframework_PatternComponent();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Parsec_Responseframework_PatternComponent and conformance Apple_Parsec_Responseframework_PatternComponent);
  }

  return result;
}

uint64_t one-time initialization function for pommes(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for vocabularyResults()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.vocabularyResults);
  __swift_project_value_buffer(v0, static Logger.vocabularyResults);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSSignposter();
  __swift_allocate_value_buffer(v4, static Signposter.vocabularyResults);
  __swift_project_value_buffer(v4, static Signposter.vocabularyResults);
  if (one-time initialization token for vocabularyResults != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, static Logger.vocabularyResults);
  (*(v1 + 16))(v3, v5, v0);
  return OSSignposter.init(logger:)();
}

uint64_t Logger.pommes.unsafeMutableAddressor(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (*a1 == -1)
  {
    v5 = a2(0);
  }

  else
  {
    swift_once();
    v5 = a2(0);
  }

  return __swift_project_value_buffer(v5, a3);
}

uint64_t static Logger.pommes.getter@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
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

unint64_t protocol witness for CodingKey.stringValue.getter in conformance PommesContext.Source.CodingKeys()
{
  v1 = 0x5273757361676570;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    v1 = 0x65446E6967756C70;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PommesContext.Source.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized PommesContext.Source.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PommesContext.Source.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesContext.Source.CodingKeys and conformance PommesContext.Source.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PommesContext.Source.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesContext.Source.CodingKeys and conformance PommesContext.Source.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PommesContext.Source.ModalityTranslatedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesContext.Source.ModalityTranslatedCodingKeys and conformance PommesContext.Source.ModalityTranslatedCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PommesContext.Source.ModalityTranslatedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesContext.Source.ModalityTranslatedCodingKeys and conformance PommesContext.Source.ModalityTranslatedCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PommesContext.Source.PegasusResponseCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000001DC651D20 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PommesContext.Source.PegasusResponseCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesContext.Source.PegasusResponseCodingKeys and conformance PommesContext.Source.PegasusResponseCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PommesContext.Source.PegasusResponseCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesContext.Source.PegasusResponseCodingKeys and conformance PommesContext.Source.PegasusResponseCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PommesContext.Source.PluginDefinedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesContext.Source.PluginDefinedCodingKeys and conformance PommesContext.Source.PluginDefinedCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PommesContext.Source.PluginDefinedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesContext.Source.PluginDefinedCodingKeys and conformance PommesContext.Source.PluginDefinedCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PommesContext.Source.UnknownCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesContext.Source.UnknownCodingKeys and conformance PommesContext.Source.UnknownCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PommesContext.Source.UnknownCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesContext.Source.UnknownCodingKeys and conformance PommesContext.Source.UnknownCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PommesContext.Source.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SiriInformationSearch13PommesContextV6SourceO17UnknownCodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMd, &_ss22KeyedEncodingContainerVy21SiriInformationSearch13PommesContextV6SourceO17UnknownCodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMR);
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SiriInformationSearch13PommesContextV6SourceO28ModalityTranslatedCodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMd, &_ss22KeyedEncodingContainerVy21SiriInformationSearch13PommesContextV6SourceO28ModalityTranslatedCodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMR);
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v23 - v7;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SiriInformationSearch13PommesContextV6SourceO23PluginDefinedCodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMd, &_ss22KeyedEncodingContainerVy21SiriInformationSearch13PommesContextV6SourceO23PluginDefinedCodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMR);
  v26 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v9 = &v23 - v8;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SiriInformationSearch13PommesContextV6SourceO25PegasusResponseCodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMd, &_ss22KeyedEncodingContainerVy21SiriInformationSearch13PommesContextV6SourceO25PegasusResponseCodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMR);
  v25 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SiriInformationSearch13PommesContextV6SourceO10CodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMd, &_ss22KeyedEncodingContainerVy21SiriInformationSearch13PommesContextV6SourceO10CodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMR);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - v14;
  v16 = v2[1];
  v24 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PommesContext.Source.CodingKeys and conformance PommesContext.Source.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = v16 >> 60;
  if (v16 >> 60 == 3)
  {
    LOBYTE(v35) = v16 >> 60;
    lazy protocol witness table accessor for type PommesContext.Source.UnknownCodingKeys and conformance PommesContext.Source.UnknownCodingKeys();
    v18 = v32;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v20 = v33;
    v19 = v34;
    goto LABEL_7;
  }

  if (v17 == 7)
  {
    LOBYTE(v35) = 2;
    lazy protocol witness table accessor for type PommesContext.Source.ModalityTranslatedCodingKeys and conformance PommesContext.Source.ModalityTranslatedCodingKeys();
    v18 = v29;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v20 = v30;
    v19 = v31;
LABEL_7:
    (*(v20 + 8))(v18, v19);
    return (*(v13 + 8))(v15, v12);
  }

  if (v17 == 11)
  {
    LOBYTE(v35) = 1;
    lazy protocol witness table accessor for type PommesContext.Source.PluginDefinedCodingKeys and conformance PommesContext.Source.PluginDefinedCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v26 + 8))(v9, v28);
  }

  else
  {
    LOBYTE(v35) = 0;
    lazy protocol witness table accessor for type PommesContext.Source.PegasusResponseCodingKeys and conformance PommesContext.Source.PegasusResponseCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v35 = v24;
    v36 = v16;
    lazy protocol witness table accessor for type Data and conformance Data();
    v22 = v27;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    (*(v25 + 8))(v11, v22);
  }

  return (*(v13 + 8))(v15, v12);
}

uint64_t PommesContext.Source.init(from:)@<X0>(void *a1@<X0>, __int128 *a2@<X8>)
{
  v48 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21SiriInformationSearch13PommesContextV6SourceO17UnknownCodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMd, &_ss22KeyedDecodingContainerVy21SiriInformationSearch13PommesContextV6SourceO17UnknownCodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMR);
  v51 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v39 - v3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21SiriInformationSearch13PommesContextV6SourceO28ModalityTranslatedCodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMd, &_ss22KeyedDecodingContainerVy21SiriInformationSearch13PommesContextV6SourceO28ModalityTranslatedCodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMR);
  v43 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v49 = &v39 - v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21SiriInformationSearch13PommesContextV6SourceO23PluginDefinedCodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMd, &_ss22KeyedDecodingContainerVy21SiriInformationSearch13PommesContextV6SourceO23PluginDefinedCodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMR);
  v42 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v6 = &v39 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21SiriInformationSearch13PommesContextV6SourceO25PegasusResponseCodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMd, &_ss22KeyedDecodingContainerVy21SiriInformationSearch13PommesContextV6SourceO25PegasusResponseCodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMR);
  v44 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21SiriInformationSearch13PommesContextV6SourceO10CodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMd, &_ss22KeyedDecodingContainerVy21SiriInformationSearch13PommesContextV6SourceO10CodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMR);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v39 - v12;
  v14 = a1[3];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  lazy protocol witness table accessor for type PommesContext.Source.CodingKeys and conformance PommesContext.Source.CodingKeys();
  v15 = v52;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v15)
  {
    v16 = v9;
    v40 = v7;
    v41 = 0;
    v17 = v49;
    v18 = v50;
    v19 = v51;
    v52 = v11;
    v20 = v13;
    v21 = KeyedDecodingContainer.allKeys.getter();
    v22 = (2 * *(v21 + 16)) | 1;
    v54 = v21;
    v55 = v21 + 32;
    v56 = 0;
    v57 = v22;
    v23 = specialized Collection<>.popFirst()();
    if (v23 == 4 || v56 != v57 >> 1)
    {
      v27 = type metadata accessor for DecodingError();
      swift_allocError();
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v29 = &type metadata for PommesContext.Source;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6AF8], v27);
      swift_willThrow();
LABEL_10:
      (*(v52 + 8))(v13, v10);
LABEL_11:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0(v58);
    }

    if (v23 <= 1u)
    {
      if (v23)
      {
        LOBYTE(v53) = 1;
        lazy protocol witness table accessor for type PommesContext.Source.PluginDefinedCodingKeys and conformance PommesContext.Source.PluginDefinedCodingKeys();
        v35 = v41;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v35)
        {
          (*(v42 + 8))(v6, v46);
          (*(v52 + 8))(v13, v10);
          swift_unknownObjectRelease();
          v26 = xmmword_1DC650140;
LABEL_18:
          *v48 = v26;
          return __swift_destroy_boxed_opaque_existential_0(v58);
        }
      }

      else
      {
        LOBYTE(v53) = 0;
        lazy protocol witness table accessor for type PommesContext.Source.PegasusResponseCodingKeys and conformance PommesContext.Source.PegasusResponseCodingKeys();
        v24 = v41;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v24)
        {
          lazy protocol witness table accessor for type Data and conformance Data();
          v25 = v40;
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          (*(v44 + 8))(v16, v25);
          (*(v52 + 8))(v13, v10);
          swift_unknownObjectRelease();
          v26 = v53;
          goto LABEL_18;
        }
      }

      goto LABEL_10;
    }

    v31 = v52;
    if (v23 == 2)
    {
      LOBYTE(v53) = 2;
      lazy protocol witness table accessor for type PommesContext.Source.ModalityTranslatedCodingKeys and conformance PommesContext.Source.ModalityTranslatedCodingKeys();
      v32 = v20;
      v33 = v41;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v34 = v48;
      if (!v33)
      {
        (*(v43 + 8))(v17, v45);
        (*(v31 + 8))(v32, v10);
        swift_unknownObjectRelease();
        *v34 = xmmword_1DC650130;
        return __swift_destroy_boxed_opaque_existential_0(v58);
      }

      (*(v31 + 8))(v32, v10);
      goto LABEL_11;
    }

    LOBYTE(v53) = 3;
    lazy protocol witness table accessor for type PommesContext.Source.UnknownCodingKeys and conformance PommesContext.Source.UnknownCodingKeys();
    v36 = v20;
    v37 = v41;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v38 = v48;
    if (v37)
    {
      (*(v31 + 8))(v36, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      (*(v19 + 8))(v18, v47);
      (*(v31 + 8))(v36, v10);
      swift_unknownObjectRelease();
      *v38 = xmmword_1DC650120;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v58);
}

uint64_t PommesContext.init(source:domain:listenAfterSpeaking:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = type metadata accessor for PommesContext(0);
  v12 = v11[7];
  v13 = *MEMORY[0x1E69BCBD8];
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  (*(*(v14 - 8) + 104))(a5 + v12, v13, v14);
  v15 = MEMORY[0x1E69E7CC0];
  *(a5 + v11[8]) = MEMORY[0x1E69E7CC0];
  *(a5 + v11[9]) = v15;
  v16 = v11[10];
  v17 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  result = (*(*(v17 - 8) + 56))(a5 + v16, 1, 1, v17);
  *a5 = v9;
  *(a5 + 8) = v10;
  *(a5 + 16) = a2;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  return result;
}

uint64_t PommesContext.init(pegasusConversationContext:domain:listenAfterSpeaking:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  if (a2 >> 60 == 15)
  {
    v10 = 0;
  }

  else
  {
    v10 = a1;
  }

  if (a2 >> 60 == 15)
  {
    v11 = 0x3000000000000000;
  }

  else
  {
    v11 = a2;
  }

  v12 = type metadata accessor for PommesContext(0);
  v13 = v12[7];
  v14 = *MEMORY[0x1E69BCBD8];
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  (*(*(v15 - 8) + 104))(a6 + v13, v14, v15);
  v16 = MEMORY[0x1E69E7CC0];
  *(a6 + v12[8]) = MEMORY[0x1E69E7CC0];
  *(a6 + v12[9]) = v16;
  v17 = v12[10];
  v18 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  result = (*(*(v18 - 8) + 56))(a6 + v17, 1, 1, v18);
  *a6 = v10;
  *(a6 + 8) = v11;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t PommesContext.init(pegasusConversationContext:legacyNLContext:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - v11;
  outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(a3, &v29 - v11, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  v13 = type metadata accessor for Siri_Nlu_External_LegacyNLContext();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v12, 1, v13) == 1)
  {
    outlined destroy of ClientExperienceSignals?(v12, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
    v29 = 0;
    v16 = 0;
  }

  else
  {
    v29 = Siri_Nlu_External_LegacyNLContext.previousDomainName.getter();
    v16 = v17;
    (*(v14 + 8))(v12, v13);
  }

  outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(a3, v10, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  if (v15(v10, 1, v13) == 1)
  {
    outlined destroy of ClientExperienceSignals?(v10, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
    v18 = 0;
  }

  else
  {
    v18 = Siri_Nlu_External_LegacyNLContext.listenAfterSpeaking.getter();
    (*(v14 + 8))(v10, v13);
  }

  if (a2 >> 60 == 15)
  {
    v19 = 0;
  }

  else
  {
    v19 = v30;
  }

  if (a2 >> 60 == 15)
  {
    v20 = 0x3000000000000000;
  }

  else
  {
    v20 = a2;
  }

  v21 = type metadata accessor for PommesContext(0);
  v22 = v21[7];
  v23 = *MEMORY[0x1E69BCBD8];
  v24 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  (*(*(v24 - 8) + 104))(a4 + v22, v23, v24);
  v25 = MEMORY[0x1E69E7CC0];
  *(a4 + v21[8]) = MEMORY[0x1E69E7CC0];
  *(a4 + v21[9]) = v25;
  v26 = v21[10];
  v27 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  (*(*(v27 - 8) + 56))(a4 + v26, 1, 1, v27);
  *a4 = v19;
  *(a4 + 8) = v20;
  *(a4 + 16) = v29;
  *(a4 + 24) = v16;
  *(a4 + 32) = v18 & 1;
  PommesContext.addRenderedTexts(from:)(a3);
  return outlined destroy of ClientExperienceSignals?(a3, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
}

uint64_t PommesContext.addRenderedTexts(from:)(uint64_t a1)
{
  v2 = v1;
  v32 = type metadata accessor for Google_Protobuf_StringValue();
  v4 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v28 - v8;
  outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(a1, v28 - v8, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  v10 = type metadata accessor for Siri_Nlu_External_LegacyNLContext();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of ClientExperienceSignals?(v9, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
LABEL_10:
    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  v12 = MEMORY[0x1E1299150]();
  (*(v11 + 8))(v9, v10);
  v13 = *(v12 + 16);
  if (!v13)
  {

    goto LABEL_10;
  }

  v28[2] = v2;
  v33 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
  v14 = v33;
  v16 = *(v4 + 16);
  v15 = v4 + 16;
  v17 = *(v15 + 64);
  v28[1] = v12;
  v18 = v12 + ((v17 + 32) & ~v17);
  v29 = *(v15 + 56);
  v30 = v16;
  v31 = v15;
  v19 = (v15 - 8);
  do
  {
    v20 = v32;
    v30(v6, v18, v32);
    v21 = Google_Protobuf_StringValue.value.getter();
    v23 = v22;
    (*v19)(v6, v20);
    v33 = v14;
    v25 = *(v14 + 16);
    v24 = *(v14 + 24);
    if (v25 >= v24 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
      v14 = v33;
    }

    *(v14 + 16) = v25 + 1;
    v26 = v14 + 16 * v25;
    *(v26 + 32) = v21;
    *(v26 + 40) = v23;
    v18 += v29;
    --v13;
  }

  while (v13);

LABEL_11:
  type metadata accessor for PommesContext(0);
  return specialized Array.append<A>(contentsOf:)(v14);
}

uint64_t PommesContext.source.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return outlined copy of PommesContext.Source(v2, v3);
}

uint64_t PommesContext.domain.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PommesContext.instructionIntent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PommesContext(0) + 28);
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PommesContext.instructionIntent.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PommesContext(0) + 28);
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

BOOL PommesContext.isConfirmation.getter()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PommesContext(0);
  (*(v1 + 104))(v3, *MEMORY[0x1E69BCBE0], v0);
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent, MEMORY[0x1E69BCBE8], MEMORY[0x1E69BCBF0]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v1 + 8))(v3, v0);
  return v5[1] == v5[0];
}

uint64_t PommesContext.renderedTexts.getter()
{
  type metadata accessor for PommesContext(0);
}

uint64_t PommesContext.redactedRenderedTexts.getter()
{
  type metadata accessor for PommesContext(0);
}

Swift::Int __swiftcall PommesContext.contextSize()()
{
  v1 = v0[1];
  if ((v1 >> 60) <= 0xB && ((1 << (v1 >> 60)) & 0x888) != 0)
  {
    return 0;
  }

  result = *v0;
  if (v1 >> 60 == 15)
  {
    outlined copy of Data?(result, v1);
    return 0;
  }

  v4 = v1 >> 62;
  if ((v1 >> 62) <= 1)
  {
    if (!v4)
    {
      return BYTE6(v1);
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      return HIDWORD(result) - result;
    }

    goto LABEL_17;
  }

  if (v4 != 2)
  {
    return 0;
  }

  v6 = *(result + 16);
  v5 = *(result + 24);
  result = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall PommesContext.addRenderedTexts(_:)(Swift::OpaquePointer a1)
{
  type metadata accessor for PommesContext(0);

  specialized Array.append<A>(contentsOf:)(v1);
}

Swift::Void __swiftcall PommesContext.addRedactedRenderedTexts(_:)(Swift::OpaquePointer a1)
{
  type metadata accessor for PommesContext(0);

  specialized Array.append<A>(contentsOf:)(v1);
}

Swift::Bool __swiftcall PommesContext.isWithinMaxSize()()
{
  v1 = v0[1];
  if ((v1 >> 60) <= 0xB && ((1 << (v1 >> 60)) & 0x888) != 0)
  {
    goto LABEL_5;
  }

  v3 = *v0;
  if (v1 >> 60 == 15)
  {
    outlined copy of Data?(v3, v1);
    goto LABEL_5;
  }

  v4 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_5;
    }

    v7 = *(v3 + 16);
    v6 = *(v3 + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
      goto LABEL_14;
    }

LABEL_17:
    __break(1u);
    return v3;
  }

  if (!v4)
  {
    goto LABEL_5;
  }

  LODWORD(v5) = HIDWORD(v3) - v3;
  if (__OFSUB__(HIDWORD(v3), v3))
  {
    __break(1u);
    goto LABEL_17;
  }

  v5 = v5;
LABEL_14:
  if (v5 > 0x10000)
  {
    LOBYTE(v3) = 0;
    return v3;
  }

LABEL_5:
  LOBYTE(v3) = 1;
  return v3;
}

uint64_t PommesContext.exportLegacyNLContext()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Google_Protobuf_StringValue();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v53 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v52 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Siri_Nlu_External_LegacyNLContext.LegacyContextSource();
  v51 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v50 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Siri_Nlu_External_LegacyNLContext();
  MEMORY[0x1EEE9AC00](v12);
  v15 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + 24);
  if (v16)
  {
    v48 = v10;
    v49 = v8;
    v54 = v13;
    v17 = *(v2 + 16);
    Siri_Nlu_External_LegacyNLContext.init()();
    PommesContext.convertPegasusDomainToLegacyNLDomain(pegasusDomain:)(v17, v16);
    Siri_Nlu_External_LegacyNLContext.previousDomainName.setter();
    Siri_Nlu_External_LegacyNLContext.listenAfterSpeaking.setter();
    Siri_Nlu_External_LegacyNLContext.strictPrompt.setter();
    Siri_Nlu_External_LegacyNLContext.dictationPrompt.setter();
    v47 = type metadata accessor for PommesContext(0);
    v18 = *(v2 + *(v47 + 32));
    v19 = *(v18 + 16);
    v20 = MEMORY[0x1E69E7CC0];
    if (v19)
    {
      v44[1] = v2;
      v45 = v12;
      v46 = a1;
      v55 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19, 0);
      v20 = v55;
      v21 = v18 + 40;
      do
      {

        Google_Protobuf_StringValue.init(_:)();
        v55 = v20;
        v23 = v20[2];
        v22 = v20[3];
        if (v23 >= v22 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
          v20 = v55;
        }

        v20[2] = v23 + 1;
        (*(v5 + 32))(v20 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v23, v7, v4);
        v21 += 16;
        --v19;
      }

      while (v19);
      v12 = v45;
      a1 = v46;
    }

    MEMORY[0x1E1299160](v20);
    (*(v51 + 104))(v50, *MEMORY[0x1E69D0B20], v48);
    Siri_Nlu_External_LegacyNLContext.legacyContextSource.setter();
    v25 = v52;
    v24 = v53;
    v26 = v49;
    (*(v53 + 104))(v52, *MEMORY[0x1E69BCBE0], v49);
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent, MEMORY[0x1E69BCBE8], MEMORY[0x1E69BCBF0]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    (*(v24 + 8))(v25, v26);
    if (v55 == v56)
    {
      MEMORY[0x1E12991E0](&outlined read-only object #0 of PommesContext.exportLegacyNLContext());
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, static Logger.pommes);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = a1;
        v32 = swift_slowAlloc();
        v56 = v32;
        *v30 = 136315138;
        v33 = swift_beginAccess();
        v34 = MEMORY[0x1E12991D0](v33);
        swift_endAccess();
        v35 = v12;
        v36 = MEMORY[0x1E1299530](v34, MEMORY[0x1E69E6158]);
        v38 = v37;

        v39 = v36;
        v12 = v35;
        v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v38, &v56);

        *(v30 + 4) = v40;
        _os_log_impl(&dword_1DC5C3000, v28, v29, "Confirmation prompt accepts semantics values %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v32);
        v41 = v32;
        a1 = v31;
        MEMORY[0x1E1299E70](v41, -1, -1);
        MEMORY[0x1E1299E70](v30, -1, -1);
      }
    }

    else
    {
      MEMORY[0x1E12991E0](MEMORY[0x1E69E7CC0]);
    }

    swift_beginAccess();
    (*(v54 + 16))(a1, v15, v12);
    (*(v54 + 56))(a1, 0, 1, v12);
    return (*(v54 + 8))(v15, v12);
  }

  else
  {
    v42 = *(v13 + 56);

    return v42(a1, 1, 1, v12);
  }
}

uint64_t PommesContext.convertPegasusDomainToLegacyNLDomain(pegasusDomain:)(uint64_t a1, uint64_t a2)
{
  v4 = 0x4572656874616577;
  if ((a1 != 0x72656874616577 || a2 != 0xE700000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v4 = 0x6B636F7473;
    if ((a1 != 0x736B636F7473 || a2 != 0xE600000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v4 = 0x706F6C6379636E65;
      if ((a1 != 26475 || a2 != 0xE200000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (a1 != 1852008299 || a2 != 0xE400000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v4 = 0x74656D6874697261;
        if ((a1 != 1752457581 || a2 != 0xE400000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v4 = 0x6372616553626577;
          if ((a1 != 0x67616D695F626577 || a2 != 0xEA00000000007365) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (a1 != 0x65646E695F626577 || a2 != 0xE900000000000078) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (a1 != 0x77736E615F626577 || a2 != 0xEA00000000007265) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (a1 != 0x695F6265775F3276 || a2 != 0xEC0000007865646ELL) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            if (a1 == 0x6F65646976 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              return 0x616964656DLL;
            }

            else if (a1 == 0x616E6F6974636964 && a2 == 0xEA00000000007972 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              return 0xD000000000000014;
            }

            else
            {
              v4 = 0x6165536C61636F6CLL;
              if ((a1 != 1936744813 || a2 != 0xE400000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (a1 != 7300455 || a2 != 0xE300000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                v4 = 0x616C50616964656DLL;
                if ((a1 != 0x616964656DLL || a2 != 0xE500000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  v4 = 0x636E75614C707061;
                  if ((a1 != 1936748641 || a2 != 0xE400000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                  {

                    return a1;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v4;
}

uint64_t PommesContext.exportPromptContext()@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - v11;
  v13 = type metadata accessor for PommesContext(0);
  outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(v1 + *(v13 + 40), v5, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of ClientExperienceSignals?(v5, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
    v14 = *(v1 + 24);
    if (!v14)
    {
      v17 = 1;
      return (*(v7 + 56))(a1, v17, 1, v6);
    }

    v15 = *(v1 + 16);
    Com_Apple_Siri_Product_Proto_PromptContext.init()();
    PommesContext.convertPegasusDomainToLegacyNLDomain(pegasusDomain:)(v15, v14);
    Com_Apple_Siri_Product_Proto_PromptContext.previousDomainName.setter();
    Com_Apple_Siri_Product_Proto_PromptContext.listenAfterSpeaking.setter();
    (*(v7 + 32))(a1, v10, v6);
  }

  else
  {
    v16 = *(v7 + 32);
    v16(v12, v5, v6);
    v16(a1, v12, v6);
  }

  v17 = 0;
  return (*(v7 + 56))(a1, v17, 1, v6);
}

uint64_t PommesContext.exportPromptContextData()()
{
  v1 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v21[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21[-v12];
  v14 = type metadata accessor for PommesContext(0);
  outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(v0 + *(v14 + 40), v11, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  v15 = *(v2 + 48);
  if (v15(v11, 1, v1) == 1)
  {
    outlined destroy of ClientExperienceSignals?(v11, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
    v16 = *(v0 + 24);
    if (!v16)
    {
      (*(v2 + 56))(v13, 1, 1, v1);
      goto LABEL_8;
    }

    v17 = *(v0 + 16);
    Com_Apple_Siri_Product_Proto_PromptContext.init()();
    PommesContext.convertPegasusDomainToLegacyNLDomain(pegasusDomain:)(v17, v16);
    Com_Apple_Siri_Product_Proto_PromptContext.previousDomainName.setter();
    Com_Apple_Siri_Product_Proto_PromptContext.listenAfterSpeaking.setter();
    (*(v2 + 32))(v13, v5, v1);
  }

  else
  {
    v18 = *(v2 + 32);
    v18(v7, v11, v1);
    v18(v13, v7, v1);
  }

  (*(v2 + 56))(v13, 0, 1, v1);
  if (v15(v13, 1, v1) != 1)
  {
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent(&lazy protocol witness table cache variable for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext, MEMORY[0x1E69D1500], MEMORY[0x1E69D14F8]);
    v19 = Message.serializedData(partial:)();
    (*(v2 + 8))(v13, v1);
    return v19;
  }

LABEL_8:
  outlined destroy of ClientExperienceSignals?(v13, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  return 0;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance PommesContext.CodingKeys()
{
  v1 = *v0;
  v2 = 0x656372756F73;
  v3 = 0x6F4374706D6F7270;
  if (v1 != 5)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x64657265646E6572;
  if (v1 != 3)
  {
    v4 = 0xD000000000000015;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000013;
  if (v1 == 1)
  {
    v5 = 0x6E69616D6F64;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PommesContext.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized PommesContext.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PommesContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesContext.CodingKeys and conformance PommesContext.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PommesContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesContext.CodingKeys and conformance PommesContext.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PommesContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV17InstructionIntentOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV17InstructionIntentOSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v48 = &v43 - v4;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v49 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v50 = &v43 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21SiriInformationSearch13PommesContextV10CodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMd, &_ss22KeyedDecodingContainerVy21SiriInformationSearch13PommesContextV10CodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMR);
  v53 = *(v12 - 8);
  v54 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - v13;
  v15 = type metadata accessor for PommesContext(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v16 + 28);
  v20 = *MEMORY[0x1E69BCBD8];
  v57 = v6;
  v58 = v5;
  v21 = *(v6 + 104);
  v55 = v19;
  v21(&v18[v19], v20, v5);
  v22 = *(v15 + 40);
  v23 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v26 = v24 + 56;
  v56 = v22;
  v27 = v18;
  v25(&v18[v22], 1, 1, v23);
  v28 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  lazy protocol witness table accessor for type PommesContext.CodingKeys and conformance PommesContext.CodingKeys();
  v29 = v59;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v29)
  {
    __swift_destroy_boxed_opaque_existential_0(v60);
    (*(v57 + 8))(&v18[v55], v58);

    return outlined destroy of ClientExperienceSignals?(&v18[v56], &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  }

  else
  {
    v30 = v15;
    v46 = v26;
    v47 = v25;
    v59 = v23;
    v31 = v53;
    v64 = 0;
    lazy protocol witness table accessor for type PommesContext.Source and conformance PommesContext.Source();
    v32 = v54;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *v27 = v61;
    LOBYTE(v61) = 1;
    *(v27 + 16) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v27 + 24) = v34;
    LOBYTE(v61) = 2;
    v45 = 0;
    *(v27 + 32) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v64 = 3;
    v44 = lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v27 + *(v30 + 32)) = v61;
    v64 = 4;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v27 + *(v30 + 36)) = v61;
    v64 = 5;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    if (*(&v61 + 1) >> 60 != 15)
    {
      v44 = v61;
      v63 = 0;
      v61 = 0u;
      v62 = 0u;
      BinaryDecodingOptions.init()();
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent(&lazy protocol witness table cache variable for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext, MEMORY[0x1E69D1500], MEMORY[0x1E69D14F8]);
      v35 = v59;
      Message.init(serializedData:extensions:partial:options:)();
      v36 = v50;
      v47(v50, 0, 1, v35);
      outlined assign with take of Com_Apple_Siri_Product_Proto_PromptContext?(v36, v27 + v56);
    }

    LOBYTE(v61) = 6;
    KeyedDecodingContainer.decode(_:forKey:)();
    v37 = (v31 + 8);
    v38 = v51;
    v39 = v52;
    v40 = v48;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent.init(rawValue:)();
    (*v37)(v14, v32);
    v41 = v57;
    v42 = v58;
    if ((*(v57 + 48))(v40, 1, v58) == 1)
    {
      outlined destroy of ClientExperienceSignals?(v40, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV17InstructionIntentOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV17InstructionIntentOSgMR);
    }

    else
    {
      (*(v41 + 32))(v39, v40, v42);
      (*(v41 + 40))(v27 + v55, v39, v42);
    }

    outlined init with copy of PommesContext(v27, v38);
    __swift_destroy_boxed_opaque_existential_0(v60);
    return outlined destroy of PommesContext(v27);
  }
}

uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
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
      result = MEMORY[0x1E1298B00]();
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
  result = MEMORY[0x1E1298B00]();
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
  v13[2] = *MEMORY[0x1E69E9840];
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

  MEMORY[0x1E1298B00]();
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

BOOL specialized static PommesContext.Source.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = v2 >> 60;
  if (v2 >> 60 == 3)
  {
    if (v4 >> 60 != 3)
    {
LABEL_14:
      outlined copy of PommesContext.Source(*a2, *(a2 + 8));
      outlined copy of PommesContext.Source(v3, v2);
      outlined consume of PommesContext.Source(v3, v2);
      outlined consume of PommesContext.Source(v5, v4);
      return 0;
    }

LABEL_9:
    outlined consume of PommesContext.Source(*a1, v2);
    outlined consume of PommesContext.Source(v5, v4);
    return 1;
  }

  if (v6 == 7)
  {
    if (v4 >> 60 != 7)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  if (v6 == 11)
  {
    if (v4 >> 60 != 11)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  if ((v4 >> 60) <= 0xB && ((1 << (v4 >> 60)) & 0x888) != 0)
  {
    goto LABEL_14;
  }

  if (v2 >> 60 == 15)
  {
    outlined copy of PommesContext.Source(*a1, v2);
    outlined copy of PommesContext.Source(v5, v4);
    outlined copy of PommesContext.Source(v5, v4);
    outlined copy of PommesContext.Source(v3, v2);
    outlined consume of PommesContext.Source(v3, v2);
    outlined consume of PommesContext.Source(v5, v4);
    if (v4 >> 60 == 15)
    {
      outlined consume of Data._Representation?(v3, v2);
      return 1;
    }

LABEL_21:
    outlined consume of Data._Representation?(v3, v2);
    outlined consume of Data._Representation?(v5, v4);
    return 0;
  }

  if (v4 >> 60 == 15)
  {
    outlined copy of PommesContext.Source(*a1, v2);
    outlined copy of PommesContext.Source(v5, v4);
    outlined copy of PommesContext.Source(v5, v4);
    outlined copy of PommesContext.Source(v3, v2);
    outlined consume of PommesContext.Source(v3, v2);
    outlined consume of PommesContext.Source(v5, v4);
    goto LABEL_21;
  }

  outlined copy of PommesContext.Source(*a2, *(a2 + 8));
  outlined copy of PommesContext.Source(v3, v2);
  outlined copy of PommesContext.Source(v3, v2);
  outlined copy of PommesContext.Source(v5, v4);
  outlined copy of PommesContext.Source(v5, v4);
  outlined copy of PommesContext.Source(v3, v2);
  v9 = specialized static Data.== infix(_:_:)(v3, v2, v5, v4);
  outlined consume of Data._Representation?(v5, v4);
  outlined consume of PommesContext.Source(v5, v4);
  outlined consume of PommesContext.Source(v3, v2);
  outlined consume of PommesContext.Source(v3, v2);
  outlined consume of PommesContext.Source(v5, v4);
  outlined consume of Data._Representation?(v3, v2);
  return v9;
}

unint64_t lazy protocol witness table accessor for type PommesContext.Source.CodingKeys and conformance PommesContext.Source.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PommesContext.Source.CodingKeys and conformance PommesContext.Source.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesContext.Source.CodingKeys and conformance PommesContext.Source.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.Source.CodingKeys and conformance PommesContext.Source.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesContext.Source.CodingKeys and conformance PommesContext.Source.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesContext.Source.CodingKeys and conformance PommesContext.Source.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.Source.CodingKeys and conformance PommesContext.Source.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesContext.Source.CodingKeys and conformance PommesContext.Source.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesContext.Source.CodingKeys and conformance PommesContext.Source.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.Source.CodingKeys and conformance PommesContext.Source.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesContext.Source.CodingKeys and conformance PommesContext.Source.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesContext.Source.CodingKeys and conformance PommesContext.Source.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.Source.CodingKeys and conformance PommesContext.Source.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PommesContext.Source.UnknownCodingKeys and conformance PommesContext.Source.UnknownCodingKeys()
{
  result = lazy protocol witness table cache variable for type PommesContext.Source.UnknownCodingKeys and conformance PommesContext.Source.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesContext.Source.UnknownCodingKeys and conformance PommesContext.Source.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.Source.UnknownCodingKeys and conformance PommesContext.Source.UnknownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesContext.Source.UnknownCodingKeys and conformance PommesContext.Source.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesContext.Source.UnknownCodingKeys and conformance PommesContext.Source.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.Source.UnknownCodingKeys and conformance PommesContext.Source.UnknownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesContext.Source.UnknownCodingKeys and conformance PommesContext.Source.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesContext.Source.UnknownCodingKeys and conformance PommesContext.Source.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.Source.UnknownCodingKeys and conformance PommesContext.Source.UnknownCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PommesContext.Source.ModalityTranslatedCodingKeys and conformance PommesContext.Source.ModalityTranslatedCodingKeys()
{
  result = lazy protocol witness table cache variable for type PommesContext.Source.ModalityTranslatedCodingKeys and conformance PommesContext.Source.ModalityTranslatedCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesContext.Source.ModalityTranslatedCodingKeys and conformance PommesContext.Source.ModalityTranslatedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.Source.ModalityTranslatedCodingKeys and conformance PommesContext.Source.ModalityTranslatedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesContext.Source.ModalityTranslatedCodingKeys and conformance PommesContext.Source.ModalityTranslatedCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesContext.Source.ModalityTranslatedCodingKeys and conformance PommesContext.Source.ModalityTranslatedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.Source.ModalityTranslatedCodingKeys and conformance PommesContext.Source.ModalityTranslatedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesContext.Source.ModalityTranslatedCodingKeys and conformance PommesContext.Source.ModalityTranslatedCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesContext.Source.ModalityTranslatedCodingKeys and conformance PommesContext.Source.ModalityTranslatedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.Source.ModalityTranslatedCodingKeys and conformance PommesContext.Source.ModalityTranslatedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PommesContext.Source.PluginDefinedCodingKeys and conformance PommesContext.Source.PluginDefinedCodingKeys()
{
  result = lazy protocol witness table cache variable for type PommesContext.Source.PluginDefinedCodingKeys and conformance PommesContext.Source.PluginDefinedCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesContext.Source.PluginDefinedCodingKeys and conformance PommesContext.Source.PluginDefinedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.Source.PluginDefinedCodingKeys and conformance PommesContext.Source.PluginDefinedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesContext.Source.PluginDefinedCodingKeys and conformance PommesContext.Source.PluginDefinedCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesContext.Source.PluginDefinedCodingKeys and conformance PommesContext.Source.PluginDefinedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.Source.PluginDefinedCodingKeys and conformance PommesContext.Source.PluginDefinedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesContext.Source.PluginDefinedCodingKeys and conformance PommesContext.Source.PluginDefinedCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesContext.Source.PluginDefinedCodingKeys and conformance PommesContext.Source.PluginDefinedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.Source.PluginDefinedCodingKeys and conformance PommesContext.Source.PluginDefinedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PommesContext.Source.PegasusResponseCodingKeys and conformance PommesContext.Source.PegasusResponseCodingKeys()
{
  result = lazy protocol witness table cache variable for type PommesContext.Source.PegasusResponseCodingKeys and conformance PommesContext.Source.PegasusResponseCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesContext.Source.PegasusResponseCodingKeys and conformance PommesContext.Source.PegasusResponseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.Source.PegasusResponseCodingKeys and conformance PommesContext.Source.PegasusResponseCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesContext.Source.PegasusResponseCodingKeys and conformance PommesContext.Source.PegasusResponseCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesContext.Source.PegasusResponseCodingKeys and conformance PommesContext.Source.PegasusResponseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.Source.PegasusResponseCodingKeys and conformance PommesContext.Source.PegasusResponseCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesContext.Source.PegasusResponseCodingKeys and conformance PommesContext.Source.PegasusResponseCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesContext.Source.PegasusResponseCodingKeys and conformance PommesContext.Source.PegasusResponseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.Source.PegasusResponseCodingKeys and conformance PommesContext.Source.PegasusResponseCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesContext.Source.PegasusResponseCodingKeys and conformance PommesContext.Source.PegasusResponseCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesContext.Source.PegasusResponseCodingKeys and conformance PommesContext.Source.PegasusResponseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.Source.PegasusResponseCodingKeys and conformance PommesContext.Source.PegasusResponseCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

uint64_t specialized static PommesContext.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if ((v4 >> 60) > 0xB || ((1 << (v4 >> 60)) & 0x888) == 0)
  {
    v6 = *a1;
    outlined copy of Data?(*a1, v4);
  }

  else
  {
    v6 = 0;
    v4 = 0xF000000000000000;
  }

  v7 = *(a2 + 8);
  if ((v7 >> 60) > 0xB || ((1 << (v7 >> 60)) & 0x888) == 0)
  {
    v9 = *a2;
    outlined copy of Data?(*a2, *(a2 + 8));
  }

  else
  {
    v9 = 0;
    v7 = 0xF000000000000000;
  }

  if (v4 >> 60 != 15)
  {
    if (v7 >> 60 != 15)
    {
      outlined copy of Data?(v6, v4);
      outlined copy of Data?(v9, v7);
      v12 = specialized static Data.== infix(_:_:)(v6, v4, v9, v7);
      outlined consume of Data._Representation?(v9, v7);
      outlined consume of Data._Representation?(v9, v7);
      outlined consume of Data._Representation?(v6, v4);
      outlined consume of Data._Representation?(v6, v4);
      if (!v12)
      {
        goto LABEL_18;
      }

      goto LABEL_21;
    }

LABEL_17:
    outlined consume of Data._Representation?(v6, v4);
    outlined consume of Data._Representation?(v9, v7);
    goto LABEL_18;
  }

  if (v7 >> 60 != 15)
  {
    goto LABEL_17;
  }

  outlined consume of Data._Representation?(v6, v4);
LABEL_21:
  v13 = *(a1 + 24);
  v14 = *(a2 + 24);
  if (v13)
  {
    if (v14 && (*(a1 + 16) == *(a2 + 16) && v13 == v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_28;
    }
  }

  else if (!v14)
  {
LABEL_28:
    v10 = *(a1 + 32) ^ *(a2 + 32) ^ 1;
    return v10 & 1;
  }

LABEL_18:
  v10 = 0;
  return v10 & 1;
}

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void outlined consume of PommesContext.Source(uint64_t a1, unint64_t a2)
{
  if ((a2 >> 60) > 0xB || ((1 << (a2 >> 60)) & 0x888) == 0)
  {
    outlined consume of Data._Representation?(a1, a2);
  }
}

uint64_t outlined init with copy of PommesContext(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PommesContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PommesContext(uint64_t a1)
{
  v2 = type metadata accessor for PommesContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined assign with take of Com_Apple_Siri_Product_Proto_PromptContext?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A](unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata completion function for PommesContext(uint64_t a1)
{
  _sSSSgMaTm_0(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
    if (v2 <= 0x3F)
    {
      _sSSSgMaTm_0(319, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext?(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void _sSSSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Com_Apple_Siri_Product_Proto_PromptContext?)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Com_Apple_Siri_Product_Proto_PromptContext?);
    }
  }
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for PommesContext.Source(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 9 && *(a1 + 16))
  {
    return (*a1 + 9);
  }

  v3 = *(a1 + 8) >> 60;
  v4 = ((4 * v3) & 0xC) == 0;
  v5 = ((4 * v3) & 0xC | (v3 >> 2)) ^ 0xF;
  if (v4)
  {
    v5 = 0;
  }

  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PommesContext.Source(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 8)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 9;
    if (a3 >= 9)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 9)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((12 - a2) >> 2) | (4 * (12 - a2))) << 60;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for PommesContext.Source(void *result, unsigned int a2)
{
  if (a2 > 0xB)
  {
    *result = a2 - 12;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = 0;
    result[1] = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PommesContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t getEnumTagSinglePayload for PommesContext.Source.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PommesContext.Source.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t specialized PommesContext.Source.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5273757361676570 && a2 == 0xEF65736E6F707365;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65446E6967756C70 && a2 == 0xED000064656E6966 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DC6525E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
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

uint64_t specialized PommesContext.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001DC651AE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64657265646E6572 && a2 == 0xED00007374786554 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DC651AA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F4374706D6F7270 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DC652600 == a2)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t one-time initialization function for mathSuggestionIntents()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI42Apple_Parsec_Siri_V2alpha_SuggestionIntentOGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI42Apple_Parsec_Siri_V2alpha_SuggestionIntentOGMR);
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SuggestionIntent();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DC6509C0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E69BD418], v0);
  v6(v5 + v2, *MEMORY[0x1E69BD488], v0);
  v6(v5 + 2 * v2, *MEMORY[0x1E69BD458], v0);
  v6(v5 + 3 * v2, *MEMORY[0x1E69BD498], v0);
  v6(v5 + 4 * v2, *MEMORY[0x1E69BD428], v0);
  result = (v6)(v5 + 5 * v2, *MEMORY[0x1E69BD470], v0);
  static SuggestionConstants.mathSuggestionIntents = v4;
  return result;
}

uint64_t one-time initialization function for weatherServerIntents()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI42Apple_Parsec_Siri_V2alpha_SuggestionIntentOGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI42Apple_Parsec_Siri_V2alpha_SuggestionIntentOGMR);
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SuggestionIntent();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DC6509D0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E69BD490], v0);
  v6(v5 + v2, *MEMORY[0x1E69BD480], v0);
  v6(v5 + 2 * v2, *MEMORY[0x1E69BD468], v0);
  v6(v5 + 3 * v2, *MEMORY[0x1E69BD460], v0);
  v6(v5 + 4 * v2, *MEMORY[0x1E69BD430], v0);
  v6(v5 + 5 * v2, *MEMORY[0x1E69BD478], v0);
  v6(v5 + 6 * v2, *MEMORY[0x1E69BD448], v0);
  v6(v5 + 7 * v2, *MEMORY[0x1E69BD450], v0);
  result = (v6)(v5 + 8 * v2, *MEMORY[0x1E69BD438], v0);
  static SuggestionConstants.weatherServerIntents = v4;
  return result;
}

uint64_t one-time initialization function for clockServerIntents()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI42Apple_Parsec_Siri_V2alpha_SuggestionIntentOGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI42Apple_Parsec_Siri_V2alpha_SuggestionIntentOGMR);
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SuggestionIntent();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DC6509E0;
  result = (*(v1 + 104))(v3 + v2, *MEMORY[0x1E69BD440], v0);
  static SuggestionConstants.clockServerIntents = v3;
  return result;
}

uint64_t one-time initialization function for t41Locales()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation6LocaleVGMd, "h7");
  type metadata accessor for Locale();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DC6509F0;
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.init(identifier:)();
  result = Locale.init(identifier:)();
  static SuggestionConstants.t41Locales = v0;
  return result;
}

uint64_t static SuggestionConstants.mathSuggestionIntents.getter(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

const char *FeatureFlag.feature.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 32))
  {
    return specialized FeatureFlag.domainLocaleFeature(_:_:)(v1, v2, *(v0 + 16), *(v0 + 24));
  }

  else
  {
    return specialized FeatureFlag.domainFeature(for:)(v1, v2);
  }
}

uint64_t FeatureFlag.isOn.getter()
{
  v6[3] = &type metadata for FeatureFlag;
  v6[4] = lazy protocol witness table accessor for type FeatureFlag and conformance FeatureFlag();
  v1 = swift_allocObject();
  v6[0] = v1;
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  outlined init with copy of FeatureFlag(v0, &v5);
  v3 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v3 & 1;
}

const char *protocol witness for FeatureFlagsKey.feature.getter in conformance FeatureFlag()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 32))
  {
    return specialized FeatureFlag.domainLocaleFeature(_:_:)(v1, v2, *(v0 + 16), *(v0 + 24));
  }

  else
  {
    return specialized FeatureFlag.domainFeature(for:)(v1, v2);
  }
}

const char *specialized FeatureFlag.domainLocaleFeature(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = a3;
  }

  else
  {
    v6 = 0;
  }

  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  MEMORY[0x1E1299490](95, 0xE100000000000000);
  MEMORY[0x1E1299490](v6, v7);
  if (a1 == 7300455 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 1936744813 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (v6 == 0x524B5F6F6BLL && v7 == 0xE500000000000000)
    {

LABEL_17:

      return "geo_search_ko_KR";
    }

    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  if (a1 == 0x7A5F7374726F7073 && a2 == 0xEC0000004E435F68 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return "sports_zh_CN";
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DC652800 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return "edutainment_zh_CN";
  }

  else if (a1 == 0x687A5F636973756DLL && a2 == 0xEB000000004E435FLL)
  {

    return "music_zh_CN";
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      return "music_zh_CN";
    }

    else
    {
      return "";
    }
  }
}

const char *specialized FeatureFlag.domainFeature(for:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73676E6974697277 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return "writings_search";
  }

  if (a1 == 7300455 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 1936744813 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return "geo_search";
  }

  if (a1 == 0x6D6E696174756465 && a2 == 0xEB00000000746E65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return "edutainment_search";
  }

  if (a1 == 0x74616C736E617274 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return "translation_search";
  }

  if (a1 == 0x636E75616C707061 && a2 == 0xE900000000000068)
  {
    return "applaunch_search";
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v7 = a1 == 1936748641 && a2 == 0xE400000000000000;
  result = "applaunch_search";
  if ((v5 & 1) == 0 && !v7)
  {
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return "applaunch_search";
    }

    result = "emergency_search";
    if (a1 != 0x636E656772656D65 || a2 != 0xE900000000000079)
    {
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        return "emergency_search";
      }

      else
      {
        return "";
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeatureFlag(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for FeatureFlag(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t AppLaunchExperience.appsClientComponent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20SiriInformationTypes19AppLaunchExperience_appsClientComponent;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppLaunchExperience.__allocating_init(pluginId:appsClientComponent:queryConfidenceScore:userDialogAct:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v22 = a2;
  v10 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, a3, v14);
  (*(v11 + 16))(v13, a4, v10);
  v18 = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  v19 = (*(v5 + 336))(a1, v22, v17, v13, v18, a5);
  (*(v11 + 8))(a4, v10);
  (*(v15 + 8))(a3, v14);
  return v19;
}

id AppLaunchExperience.__allocating_init(pluginId:appsClientComponent:queryConfidenceScore:userDialogAct:renderOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = v6;
  v32 = a5;
  v33 = a4;
  v29 = a3;
  v30 = a1;
  v31 = a2;
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = objc_allocWithZone(v7);
  v19 = OBJC_IVAR____TtC20SiriInformationTypes19AppLaunchExperience_appsClientComponent;
  v28 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent();
  v20 = *(v28 - 8);
  (*(v20 + 16))(&v18[v19], a3, v28);
  v21 = *(v15 + 16);
  v21(v17, v33, v14);
  (*(v11 + 104))(v13, *MEMORY[0x1E69BCBD8], v10);
  *&v18[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v22 = &v18[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  v23 = v31;
  *v22 = v30;
  v22[1] = v23;
  *&v18[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a6;
  v21(&v18[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v17, v14);
  *&v18[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = v32;
  (*(v11 + 16))(&v18[OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent], v13, v10);
  v24 = type metadata accessor for Experience(0);
  v34.receiver = v18;
  v34.super_class = v24;
  v25 = objc_msgSendSuper2(&v34, sel_init);
  v26 = *(v15 + 8);
  v26(v33, v14);
  (*(v20 + 8))(v29, v28);
  (*(v11 + 8))(v13, v10);
  v26(v17, v14);
  return v25;
}

id AppLaunchExperience.init(pluginId:appsClientComponent:queryConfidenceScore:userDialogAct:renderOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v32 = a5;
  v33 = a4;
  v29 = a3;
  v30 = a1;
  v31 = a2;
  v27 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v9 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC20SiriInformationTypes19AppLaunchExperience_appsClientComponent;
  v28 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent();
  v17 = *(v28 - 8);
  (*(v17 + 16))(&v6[v16], a3, v28);
  v18 = *(v13 + 16);
  v18(v15, v33, v12);
  v19 = v27;
  (*(v9 + 104))(v11, *MEMORY[0x1E69BCBD8], v27);
  *&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v20 = &v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  v21 = v31;
  *v20 = v30;
  v20[1] = v21;
  *&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a6;
  v18(&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v15, v12);
  *&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = v32;
  (*(v9 + 16))(&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent], v11, v19);
  v22 = type metadata accessor for Experience(0);
  v34.receiver = v6;
  v34.super_class = v22;
  v23 = objc_msgSendSuper2(&v34, sel_init);
  v24 = *(v13 + 8);
  v24(v33, v12);
  (*(v17 + 8))(v29, v28);
  (*(v9 + 8))(v11, v19);
  v24(v15, v12);
  return v23;
}

NSObject *AppLaunchExperience.init(coder:)(NSObject *a1)
{
  v3 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for NSData();
  v8 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v8)
  {
    v9 = v8;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = 0;
    memset(&v17[48], 0, 32);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AppsClientComponent and conformance Apple_Parsec_Siri_V2alpha_AppsClientComponent();
    Message.init(serializedData:extensions:partial:options:)();
    (*(v5 + 32))(v1 + OBJC_IVAR____TtC20SiriInformationTypes19AppLaunchExperience_appsClientComponent, v7, v4);
    v14 = Experience.init(coder:)(a1);
    v15 = v14;

    if (v14)
    {

      return v14;
    }
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.pommes);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DC5C3000, v11, v12, "AppLaunchExperience cannot be decoded", v13, 2u);
      MEMORY[0x1E1299E70](v13, -1, -1);
    }

    type metadata accessor for AppLaunchExperience(0);
    swift_deallocPartialClassInstance();
  }

  return 0;
}

uint64_t type metadata accessor for AppLaunchExperience(uint64_t a1)
{
  result = type metadata singleton initialization cache for AppLaunchExperience;
  if (!type metadata singleton initialization cache for AppLaunchExperience)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall AppLaunchExperience.encode(with:)(NSCoder with)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AppsClientComponent and conformance Apple_Parsec_Siri_V2alpha_AppsClientComponent();
  v2 = Message.serializedData(partial:)();
  v4 = v3;
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v2, v4);
  v6 = MEMORY[0x1E1299430](0xD000000000000013, 0x80000001DC652850);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v6];

  Experience.encode(with:)(with);
}

uint64_t AppLaunchExperience.__ivar_destroyer()
{
  v1 = OBJC_IVAR____TtC20SiriInformationTypes19AppLaunchExperience_appsClientComponent;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id AppLaunchExperience.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppLaunchExperience(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AppsClientComponent and conformance Apple_Parsec_Siri_V2alpha_AppsClientComponent()
{
  result = lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AppsClientComponent and conformance Apple_Parsec_Siri_V2alpha_AppsClientComponent;
  if (!lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AppsClientComponent and conformance Apple_Parsec_Siri_V2alpha_AppsClientComponent)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AppsClientComponent and conformance Apple_Parsec_Siri_V2alpha_AppsClientComponent);
  }

  return result;
}

uint64_t type metadata completion function for AppLaunchExperience(uint64_t a1)
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent();
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

uint64_t AFPreferences.siriLanguageCode.getter()
{
  v1 = [v0 languageCode];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  lazy protocol witness table accessor for type String and conformance String();
  v3 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  return v3;
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

uint64_t one-time initialization function for sportsUseCases()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_DomainUseCaseOGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_DomainUseCaseOGMR);
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCase();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DC64F450;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E69BD280], v0);
  v6(v5 + v2, *MEMORY[0x1E69BD290], v0);
  v6(v5 + 2 * v2, *MEMORY[0x1E69BD288], v0);
  v6(v5 + 3 * v2, *MEMORY[0x1E69BD298], v0);
  v7 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10PegasusAPI39Apple_Parsec_Siri_V2alpha_DomainUseCaseO_SayAFGTt0g5Tf4g_n(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  static Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.sportsUseCases = v7;
  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.sportsUseCases.getter()
{
  if (one-time initialization token for sportsUseCases != -1)
  {
    swift_once();
  }
}

id Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.toINInformationUseCase(_:utterance:locale:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t), objc_class *a4, objc_class *a5)
{
  v75 = a4;
  ObjCClassFromMetadata = a5;
  v74 = a3;
  v78 = type metadata accessor for Google_Protobuf_Value();
  v71 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter();
  v80 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v79 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v69 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCase();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v72 = (&v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v69 - v17;
  v19 = [objc_allocWithZone(type metadata accessor for INInformationUseCaseIntent()) init];

  v20 = MEMORY[0x1E1299430](a1, a2);

  [v19 setInfoDomain_];

  v81 = 0;
  v82 = 0xE000000000000000;
  Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.useCase.getter();
  _print_unlocked<A, B>(_:_:)();
  v73 = v14;
  v21 = *(v14 + 8);
  v21(v18, v13);
  v22 = MEMORY[0x1E1299430](v81, v82);

  [v19 setDomainUseCase_];

  [v19 setExampleUtterance_];
  v23 = MEMORY[0x1E1299430](v75, ObjCClassFromMetadata);
  v70 = v19;
  [v19 setLocale_];

  if (one-time initialization token for sportsUseCases != -1)
  {
    swift_once();
  }

  v24 = static Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.sportsUseCases;
  Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.useCase.getter();
  LOBYTE(v24) = specialized Set.contains(_:)(v18, v24);
  v21(v18, v13);
  v25 = v80;
  if (v24)
  {
    v81 = MEMORY[0x1E69E7CC0];
    v26 = Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.parameters.getter();
    v27 = *(v26 + 16);
    if (v27)
    {
      v30 = *(v25 + 16);
      v29 = v25 + 16;
      v28 = v30;
      v31 = v26 + ((*(v29 + 64) + 32) & ~*(v29 + 64));
      v32 = *(v29 + 56);
      do
      {
        v28(v12, v31, v8);
        v33 = Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.parseSportsTeamParameterInfo(_:)();
        specialized Array.append<A>(contentsOf:)(v33);
        (*(v29 - 8))(v12, v8);
        v31 += v32;
        --v27;
      }

      while (v27);
    }

    type metadata accessor for INInformationUseCaseParameter();
    v66.super.isa = Array._bridgeToObjectiveC()().super.isa;
    v67 = v70;
    [v70 setParameters_];
  }

  else
  {
    v34 = v72;
    Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.useCase.getter();
    v35 = (*(v73 + 88))(v34, v13);
    v36 = *MEMORY[0x1E69BD278];
    v21(v34, v13);
    v37 = Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.parameters.getter();
    if (v35 == v36)
    {
      Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.parseGeoParameterInfo(_:)(v37);
    }

    else
    {
      v38 = *(v37 + 16);
      if (v38)
      {
        v81 = MEMORY[0x1E69E7CC0];
        v39 = v37;
        specialized ContiguousArray.reserveCapacity(_:)();
        type metadata accessor for INInformationUseCaseParameter();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        type metadata accessor for INInformationUseCaseParameterValue();
        v40 = swift_getObjCClassFromMetadata();
        v42 = *(v25 + 16);
        v41 = v25 + 16;
        v74 = v42;
        v75 = v40;
        v43 = (*(v41 + 64) + 32) & ~*(v41 + 64);
        v69 = v39;
        v44 = v39 + v43;
        v45 = *(v41 + 56);
        v72 = v71 + 1;
        v73 = v45;
        v71 = (v41 - 8);
        v46 = v79;
        do
        {
          v80 = v38;
          v74(v46, v44, v8);
          v47 = Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.label.getter();
          v49 = v48;
          v50 = v77;
          Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.value.getter();
          v51 = Google_Protobuf_Value.stringValue.getter();
          v53 = v52;
          (*v72)(v50, v78);
          v54 = v8;
          v55 = v41;
          v56 = objc_allocWithZone(ObjCClassFromMetadata);
          v57 = MEMORY[0x1E1299430](v47, v49);
          v58 = MEMORY[0x1E1299430](v47, v49);

          v59 = v56;
          v41 = v55;
          v8 = v54;
          v60 = [v59 initWithIdentifier:v57 displayString:{v58, v69}];

          v61 = objc_allocWithZone(v75);
          v62 = MEMORY[0x1E1299430](v51, v53);
          v63 = MEMORY[0x1E1299430](v51, v53);

          v64 = [v61 initWithIdentifier:v62 displayString:v63];

          v46 = v79;
          [v60 setValue_];

          (*v71)(v46, v54);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v65 = v80;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v44 += v73;
          v38 = v65 - 1;
        }

        while (v38);
      }
    }

    type metadata accessor for INInformationUseCaseParameter();
    v66.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v67 = v70;
    [v70 setParameters_];
  }

  return v67;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCase();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SuggestionIntent and conformance Apple_Parsec_Siri_V2alpha_SuggestionIntent(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_DomainUseCase and conformance Apple_Parsec_Siri_V2alpha_DomainUseCase, MEMORY[0x1E69BD2A8], MEMORY[0x1E69BD2B0]), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SuggestionIntent and conformance Apple_Parsec_Siri_V2alpha_SuggestionIntent(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_DomainUseCase and conformance Apple_Parsec_Siri_V2alpha_DomainUseCase, MEMORY[0x1E69BD2A8], MEMORY[0x1E69BD2B8]);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.parseSportsTeamParameterInfo(_:)()
{
  v88 = type metadata accessor for Google_Protobuf_Struct();
  v0 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v2 = &v80 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Google_Protobuf_Value();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v81 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v82 = &v80 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v83 = &v80 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v80 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v80 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v80 - v17;
  v19 = Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.label.getter();
  v21 = v20;
  v92 = v19;
  v93 = v20;
  v89 = v19;
  v90 = 0x6D616E5F6D616574;
  v91 = 0xE900000000000065;
  lazy protocol witness table accessor for type String and conformance String();
  if ((StringProtocol.contains<A>(_:)() & 1) == 0 && (v89 != 0x6E5F65756761656CLL || v21 != 0xEB00000000656D61) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v56 = v21;
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1DC650BC0;
    Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.value.getter();
    v57 = Google_Protobuf_Value.stringValue.getter();
    v59 = v58;
    (*(v4 + 8))(v18, v3);
    v60 = specialized static Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.createUseCaseParameter(identifier:value:)(v89, v56, v57, v59);

    *(v26 + 32) = v60;
    return v26;
  }

  Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.value.getter();
  Google_Protobuf_Value.structValue.getter();
  v22 = *(v4 + 8);
  v84 = v3;
  v85 = v22;
  v86 = v4 + 8;
  v23 = (v22)(v18, v3);
  v24 = MEMORY[0x1E1299320](v23);
  v25 = *(v0 + 8);
  v25(v2, v88);
  if (!*(v24 + 16))
  {

    return MEMORY[0x1E69E7CC0];
  }

  v87 = v21;
  v26 = MEMORY[0x1E69E7CC0];
  v90 = MEMORY[0x1E69E7CC0];
  v27 = specialized __RawDictionaryStorage.find<A>(_:)(1701667182, 0xE400000000000000);
  if (v28)
  {
    v29 = *(v24 + 56);
    v80 = v4;
    v30 = *(v4 + 16);
    v31 = v29 + *(v4 + 72) * v27;
    v32 = v84;
    v30(v16, v31, v84);
    v33 = Google_Protobuf_Value.stringValue.getter();
    v35 = v34;
    v85(v16, v32);
    v92 = v89;
    v93 = v87;

    MEMORY[0x1E1299490](0x656D616E5FLL, 0xE500000000000000);
    v36 = specialized static Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.createUseCaseParameter(identifier:value:)(v92, v93, v33, v35);

    v37 = v36;
    MEMORY[0x1E1299500]();
    if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v26 = v90;
    v4 = v80;
  }

  if (!*(v24 + 16))
  {
    goto LABEL_18;
  }

  v38 = specialized __RawDictionaryStorage.find<A>(_:)(6516598, 0xE300000000000000);
  if ((v39 & 1) == 0)
  {
    goto LABEL_18;
  }

  v40 = *(v24 + 56);
  v41 = *(v4 + 16);
  v80 = *(v4 + 72);
  v42 = v84;
  v41(v13, v40 + v80 * v38, v84);

  Google_Protobuf_Value.structValue.getter();
  v43 = (v85)(v13, v42);
  v44 = MEMORY[0x1E1299320](v43);
  v25(v2, v88);
  if (!v44)
  {
LABEL_19:

    return v26;
  }

  if (!*(v44 + 16))
  {
    goto LABEL_18;
  }

  v45 = specialized __RawDictionaryStorage.find<A>(_:)(0x656D614E6D616574, 0xE800000000000000);
  if ((v46 & 1) == 0)
  {

    v49 = v84;
    v47 = v80;
    if (*(v44 + 16))
    {
      goto LABEL_24;
    }

LABEL_18:

    goto LABEL_19;
  }

  v47 = v80;
  v48 = v83;
  v49 = v84;
  v50 = v41;
  v41(v83, *(v44 + 56) + v80 * v45, v84);

  v51 = Google_Protobuf_Value.stringValue.getter();
  v53 = v52;
  v85(v48, v49);
  v92 = v89;
  v93 = v87;

  MEMORY[0x1E1299490](0x6165745F636F765FLL, 0xED0000656D614E6DLL);
  v54 = specialized static Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.createUseCaseParameter(identifier:value:)(v92, v93, v51, v53);

  v55 = v54;
  MEMORY[0x1E1299500]();
  if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v26 = v90;
  v41 = v50;
  if (!*(v44 + 16))
  {
    goto LABEL_18;
  }

LABEL_24:

  v62 = specialized __RawDictionaryStorage.find<A>(_:)(0x61636F4C6D616574, 0xEC0000006E6F6974);
  if (v63)
  {
    v64 = v82;
    v65 = v41;
    v41(v82, *(v44 + 56) + v47 * v62, v49);

    v66 = Google_Protobuf_Value.stringValue.getter();
    v68 = v67;
    v85(v64, v49);
    v92 = 0;
    v93 = 0xE000000000000000;
    _StringGuts.grow(_:)(19);
    v69 = v87;

    v92 = v89;
    v93 = v69;
    MEMORY[0x1E1299490](0xD000000000000011, 0x80000001DC6528E0);
    v70 = specialized static Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.createUseCaseParameter(identifier:value:)(v92, v93, v66, v68);

    v71 = v70;
    MEMORY[0x1E1299500]();
    if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v26 = v90;
    v41 = v65;
  }

  else
  {
  }

  if (!*(v44 + 16))
  {
    goto LABEL_18;
  }

  v72 = specialized __RawDictionaryStorage.find<A>(_:)(0x614E65756761656CLL, 0xEA0000000000656DLL);
  if ((v73 & 1) == 0)
  {
    goto LABEL_18;
  }

  v74 = v81;
  v41(v81, *(v44 + 56) + v47 * v72, v49);

  v75 = Google_Protobuf_Value.stringValue.getter();
  v77 = v76;
  v85(v74, v49);
  v92 = 0;
  v93 = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  v92 = v89;
  v93 = v87;
  MEMORY[0x1E1299490](0x61656C5F636F765FLL, 0xEF656D614E657567);
  v78 = specialized static Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.createUseCaseParameter(identifier:value:)(v92, v93, v75, v77);

  v79 = v78;
  MEMORY[0x1E1299500]();
  if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  return v90;
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.parseGeoParameterInfo(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Google_Protobuf_Value();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v64 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v61 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v63 = &v60 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v71 = &v60 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v75 = &v60 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v70 = &v60 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v60 - v17;
  v19 = *(a1 + 16);
  v65 = v2;
  if (v19)
  {
    v62 = v3;
    v66 = v6;
    v72 = *(v6 + 16);
    v73 = v6 + 16;
    v68 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v20 = a1 + v68;
    v21 = *(v6 + 72);
    v67 = (v6 + 8);
    v76 = (v6 + 32);
    v22 = MEMORY[0x1E69E7CC0];
    v23 = a1 + v68;
    v24 = v19;
    v69 = v5;
    v74 = v21;
    v72(v18, v23, v5);
    while (1)
    {
      if (Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.label.getter() == 0x6E6F697461636F6CLL && v26 == 0xEC00000065707954)
      {
      }

      else
      {
        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v27 & 1) == 0)
        {
          (*v67)(v18, v5);
          v25 = v74;
          goto LABEL_4;
        }
      }

      v28 = *v76;
      (*v76)(v70, v18, v5);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v77 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 16) + 1, 1);
        v22 = v77;
      }

      v25 = v74;
      v31 = *(v22 + 16);
      v30 = *(v22 + 24);
      if (v31 >= v30 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
        v25 = v74;
        v22 = v77;
      }

      *(v22 + 16) = v31 + 1;
      v32 = v22 + v68 + v31 * v25;
      v5 = v69;
      v28(v32, v70, v69);
LABEL_4:
      v23 += v25;
      if (!--v24)
      {
        v33 = MEMORY[0x1E69E7CC0];
        v6 = v66;
        while (1)
        {
          v72(v75, v20, v5);
          if (Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.label.getter() == 0x6E6F697461636F6CLL && v35 == 0xE800000000000000)
          {
            break;
          }

          v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v36)
          {
            goto LABEL_22;
          }

          (*v67)(v75, v5);
          v34 = v74;
LABEL_17:
          v20 += v34;
          if (!--v19)
          {
            v3 = v62;
            goto LABEL_29;
          }
        }

LABEL_22:
        v37 = *v76;
        (*v76)(v71, v75, v5);
        v38 = swift_isUniquelyReferenced_nonNull_native();
        v77 = v33;
        if ((v38 & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v33 + 16) + 1, 1);
          v33 = v77;
        }

        v40 = *(v33 + 16);
        v39 = *(v33 + 24);
        v34 = v74;
        if (v40 >= v39 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
          v34 = v74;
          v33 = v77;
        }

        *(v33 + 16) = v40 + 1;
        v41 = v33 + v68 + v40 * v34;
        v5 = v69;
        v37(v41, v71, v69);
        goto LABEL_17;
      }

      v72(v18, v23, v5);
    }
  }

  v22 = MEMORY[0x1E69E7CC0];
  v33 = MEMORY[0x1E69E7CC0];
LABEL_29:
  if (*(v22 + 16) == 1)
  {
    v42 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v43 = v63;
    v75 = *(v6 + 16);
    (v75)(v63, v22 + v42, v5);

    v44 = v64;
    Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.value.getter();
    v45 = *(v6 + 8);
    v66 = v6 + 8;
    v45(v43, v5);
    v76 = Google_Protobuf_Value.stringValue.getter();
    v47 = v46;
    v48 = v5;
    v49 = *(v3 + 8);
    v50 = v65;
    v49(v44, v65);
    if (*(v33 + 16) == 1)
    {
      v51 = v33 + v42;
      v52 = v47;
      v53 = v61;
      (v75)(v61, v51, v48);

      Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.value.getter();
      v45(v53, v48);
      v54 = Google_Protobuf_Value.stringValue.getter();
      v56 = v55;
      v49(v44, v50);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_1DC650BC0;
      v58 = specialized static Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.createUseCaseParameter(identifier:value:)(v76, v52, v54, v56);

      result = v57;
      *(v57 + 32) = v58;
      return result;
    }
  }

  else
  {
  }

  return MEMORY[0x1E69E7CC0];
}

id Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate.toINInformationUseCase(locale:)(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v25 = a2;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance();
  v22 = *(v2 - 8);
  v23 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SuggestionIntent();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  v12 = [objc_allocWithZone(type metadata accessor for INInformationUseCaseIntent()) init];
  Apple_Parsec_Siri_V2alpha_ServerSuggestion.currentIntent.getter();
  v13 = Apple_Parsec_Siri_V2alpha_SuggestionIntent.domain.getter();
  v15 = v14;
  v16 = *(v6 + 8);
  v16(v11, v5);
  if (v15)
  {
    v17 = MEMORY[0x1E1299430](v13, v15);
  }

  else
  {
    v17 = 0;
  }

  [v12 setInfoDomain_];

  v26 = 0;
  v27 = 0xE000000000000000;
  Apple_Parsec_Siri_V2alpha_ServerSuggestion.currentIntent.getter();
  _print_unlocked<A, B>(_:_:)();
  v16(v9, v5);
  v18 = MEMORY[0x1E1299430](v26, v27);

  [v12 setDomainUseCase_];

  Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate.utterance.getter();
  v19 = specialized static INInformationUseCaseUtterance.create(_:)();
  (*(v22 + 8))(v4, v23);
  [v12 setExampleUtterance_];

  v20 = MEMORY[0x1E1299430](v24, v25);
  [v12 setLocale_];

  return v12;
}

uint64_t Apple_Parsec_Siri_V2alpha_SuggestionIntent.domain.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SuggestionIntent();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x1E69BD420])
  {
    return 26475;
  }

  if (v6 == *MEMORY[0x1E69BD490] || v6 == *MEMORY[0x1E69BD480] || v6 == *MEMORY[0x1E69BD468] || v6 == *MEMORY[0x1E69BD460] || v6 == *MEMORY[0x1E69BD430] || v6 == *MEMORY[0x1E69BD478] || v6 == *MEMORY[0x1E69BD448] || v6 == *MEMORY[0x1E69BD450] || v6 == *MEMORY[0x1E69BD438])
  {
    return 0x72656874616577;
  }

  if (v6 == *MEMORY[0x1E69BD440])
  {
    return 0x6B636F6C63;
  }

  v7 = 1752457581;
  if (v6 != *MEMORY[0x1E69BD418] && v6 != *MEMORY[0x1E69BD488] && v6 != *MEMORY[0x1E69BD458] && v6 != *MEMORY[0x1E69BD498] && v6 != *MEMORY[0x1E69BD428])
  {
    if (v6 != *MEMORY[0x1E69BD470])
    {
      (*(v3 + 8))(v5, v2);
      return 0;
    }

    return 26475;
  }

  return v7;
}

id Apple_Parsec_Siri_V2alpha_SuggestionIntent.toINInformationUseCase(_:utterance:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SuggestionIntent();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(type metadata accessor for INInformationUseCaseIntent()) init];

  v15 = MEMORY[0x1E1299430](a1, a2);

  [v14 setInfoDomain_];

  (*(v11 + 104))(v13, *MEMORY[0x1E69BD420], v10);
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SuggestionIntent and conformance Apple_Parsec_Siri_V2alpha_SuggestionIntent(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SuggestionIntent and conformance Apple_Parsec_Siri_V2alpha_SuggestionIntent, MEMORY[0x1E69BD4A0], MEMORY[0x1E69BD4A8]);
  LOBYTE(a2) = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v11 + 8))(v13, v10);
  if ((a2 & 1) == 0)
  {
    v19 = 0;
    v20 = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v16 = MEMORY[0x1E1299430](v19, v20);

    [v14 setDomainUseCase_];
  }

  [v14 setExampleUtterance_];
  v17 = MEMORY[0x1E1299430](a4, a5);
  [v14 setLocale_];

  return v14;
}

NSObject *PommesResponse.getINInformationUseCases(locale:)(objc_class *a1, objc_class *a2)
{
  v128 = a2;
  v142 = a1;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SuggestionIntent();
  v118 = *(v3 - 1);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v119 = &v115 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v115 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v115 - v12;
  v130 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion();
  v117 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v120 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCase();
  v145 = *(v141 - 8);
  v15 = MEMORY[0x1EEE9AC00](v141);
  v140 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v139 = (&v115 - v17);
  v127 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata();
  v149 = *(v127 - 8);
  v18 = MEMORY[0x1EEE9AC00](v127);
  v116 = &v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v138 = (&v115 - v21);
  MEMORY[0x1EEE9AC00](v20);
  v148 = (&v115 - v22);
  v23 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_metadataDomainName + 8);
  v147 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_metadataDomainName);
  v125 = v2;
  v24 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_searchRequestUtterance);
  v25 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_searchRequestUtterance + 8);
  type metadata accessor for INInformationUseCaseUtterance();
  v26 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v27 = MEMORY[0x1E1299430](v24, v25);
  v28 = MEMORY[0x1E1299430](v24, v25);
  v29 = [v26 initWithIdentifier:v27 displayString:v28];

  v30 = MEMORY[0x1E1299430](v24, v25);
  [v29 setSpokenString_];

  if (one-time initialization token for pommes == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v31 = type metadata accessor for Logger();
    v32 = __swift_project_value_buffer(v31, static Logger.pommes);

    v33 = v29;
    v123 = v32;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();

    v36 = v34;
    v37 = os_log_type_enabled(v34, v35);
    v143 = v33;
    v146 = v23;
    v129 = v13;
    if (v37)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      v40 = v10;
      v41 = v6;
      v42 = v3;
      v43 = v150;
      *v38 = 136315394;
      *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v147, v23, &v150);
      *(v38 + 12) = 2112;
      *(v38 + 14) = v33;
      *v39 = v33;
      v44 = v33;
      _os_log_impl(&dword_1DC5C3000, v36, v35, "Using domain in INInformationUseCaseIntent as %s and utterance as: %@", v38, 0x16u);
      outlined destroy of ClientExperienceSignals?(v39, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E1299E70](v39, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v43);
      v45 = v43;
      v3 = v42;
      v6 = v41;
      v10 = v40;
      MEMORY[0x1E1299E70](v45, -1, -1);
      MEMORY[0x1E1299E70](v38, -1, -1);
    }

    v46 = v128;
    v122 = v10;
    v121 = v6;
    v124 = v3;
    v6 = *(v125 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_domainUseCases);
    v47 = MEMORY[0x1E69E7CC0];
    v29 = v127;
    v13 = v149;
    v137 = *(v6 + 16);
    if (!v137)
    {
      break;
    }

    v23 = 0;
    v135 = v149 + 16;
    v134 = *MEMORY[0x1E69BD2A0];
    v133 = (v145 + 104);
    v132 = (v145 + 8);
    v131 = (v149 + 32);
    v126 = (v149 + 8);
    v3 = v148;
    v136 = v6;
    while (v23 < *(v6 + 16))
    {
      v148 = v47;
      v145 = (v13[80] + 32) & ~v13[80];
      v144 = *(v13 + 9);
      (*(v13 + 2))(v3, v6 + v145 + v144 * v23, v29);
      v10 = v139;
      Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.useCase.getter();
      v48 = v3;
      v50 = v140;
      v49 = v141;
      (*v133)(v140, v134, v141);
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SuggestionIntent and conformance Apple_Parsec_Siri_V2alpha_SuggestionIntent(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_DomainUseCase and conformance Apple_Parsec_Siri_V2alpha_DomainUseCase, MEMORY[0x1E69BD2A8], MEMORY[0x1E69BD2B8]);
      v51 = dispatch thunk of static Equatable.== infix(_:_:)();
      v52 = v29;
      v53 = *v132;
      (*v132)(v50, v49);
      v53(v10, v49);
      if (v51)
      {
        (*v126)(v48, v52);
        v29 = v52;
        v3 = v48;
        v47 = v148;
        v6 = v136;
      }

      else
      {
        v54 = *v131;
        (*v131)(v138, v48, v52);
        v47 = v148;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v150 = v47;
        v3 = v48;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47[2].isa + 1, 1);
          v47 = v150;
        }

        v6 = v136;
        v56 = v144;
        v10 = v145;
        isa = v47[2].isa;
        v57 = v47[3].isa;
        if (isa >= v57 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), isa + 1, 1);
          v47 = v150;
        }

        v47[2].isa = (isa + 1);
        v59 = v10 + v47 + isa * v56;
        v29 = v127;
        v54(v59, v138, v127);
        v46 = v128;
      }

      v13 = v149;
      if (v137 == ++v23)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
  }

LABEL_15:
  v60 = v47[2].isa;
  if (v60)
  {
    v150 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v148 = *(v13 + 2);
    v149 = (v13 + 16);
    v61 = v29;
    v62 = v47 + ((v13[80] + 32) & ~v13[80]);
    v145 = *(v13 + 9);
    v63 = (v13 + 8);
    v64 = v116;
    do
    {
      (v148)(v64, v62, v61);
      v3 = Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.toINInformationUseCase(_:utterance:locale:)(v147, v146, v143, v142, v46);
      (*v63)(v64, v61);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v62 += v145;
      v60 = (v60 - 1);
    }

    while (v60);

    v23 = v150;
  }

  else
  {

    v23 = MEMORY[0x1E69E7CC0];
  }

  v66 = (*((*MEMORY[0x1E69E7D40] & *v125) + 0x170))(v65);
  v6 = v66;
  v152 = MEMORY[0x1E69E7CC0];
  v13 = (v66 & 0xFFFFFFFFFFFFFF8);
  if (v66 >> 62)
  {
    if (v66 >= 0)
    {
      v66 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v67 = MEMORY[0x1E1299770](v66);
    v144 = v23;
    if (v67)
    {
LABEL_22:
      v29 = 0;
      v149 = v6 & 0xC000000000000001;
      v10 = (v117 + 48);
      v139 = (v117 + 32);
      LODWORD(v141) = *MEMORY[0x1E69BD420];
      v140 = (v118 + 104);
      v145 = v118 + 8;
      v148 = MEMORY[0x1E69E7CC0];
      v138 = (v117 + 8);
      v68 = 0;
      if ((v6 & 0xC000000000000001) != 0)
      {
LABEL_44:
        v69 = MEMORY[0x1E12996A0](v68, v6);
        goto LABEL_28;
      }

      while (1)
      {
        if (v68 >= *(v13 + 2))
        {
          goto LABEL_47;
        }

        v69 = *(v6 + 8 * v68 + 32);
LABEL_28:
        v23 = v69;
        v3 = v68 + 1;
        if (__OFADD__(v68, 1))
        {
          goto LABEL_46;
        }

        type metadata accessor for GenericExperience(0);
        v70 = swift_dynamicCastClass();
        if (!v70)
        {
          goto LABEL_24;
        }

        v71 = v129;
        (*((*MEMORY[0x1E69E7D40] & *v70) + 0x160))();
        if ((*v10)(v71, 1, v130) == 1)
        {
          v72 = outlined destroy of ClientExperienceSignals?(v71, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMR);
          v73 = v147;
          v150 = v147;
          v151 = v146;
          MEMORY[0x1EEE9AC00](v72);
          *(&v115 - 2) = &v150;
          if (specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v115 - 4), &outlined read-only object #0 of one-time initialization function for relatedQuestionSupportedDomains))
          {
            v74 = Logger.logObject.getter();
            v75 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v74, v75))
            {
              v76 = swift_slowAlloc();
              v148 = v74;
              v77 = v76;
              *v76 = 0;
              _os_log_impl(&dword_1DC5C3000, v148, v75, "RelatedQuestions supported domain without server suggestions, create INInformationUseCaseIntent for current utterance for engagement tracking", v76, 2u);
              v78 = v77;
              v74 = v148;
              MEMORY[0x1E1299E70](v78, -1, -1);
            }

            Apple_Parsec_Siri_V2alpha_SuggestionIntent.init()();
            v79 = [objc_allocWithZone(type metadata accessor for INInformationUseCaseIntent()) init];
            v80 = v146;

            v81 = v73;
            v82 = v79;
            v83 = MEMORY[0x1E1299430](v81, v80);

            v148 = v82;
            [v82 setInfoDomain:v83];

            v84 = v119;
            v85 = v124;
            (*v140)(v119, v141, v124);
            lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SuggestionIntent and conformance Apple_Parsec_Siri_V2alpha_SuggestionIntent(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SuggestionIntent and conformance Apple_Parsec_Siri_V2alpha_SuggestionIntent, MEMORY[0x1E69BD4A0], MEMORY[0x1E69BD4A8]);
            LOBYTE(v82) = dispatch thunk of static Equatable.== infix(_:_:)();
            v137 = *v145;
            v137(v84, v85);
            if ((v82 & 1) == 0)
            {
              v150 = 0;
              v151 = 0xE000000000000000;
              _print_unlocked<A, B>(_:_:)();
              v86 = MEMORY[0x1E1299430](v150, v151);

              [v148 setDomainUseCase:v86];
            }

            v87 = v148;
            [v148 setExampleUtterance:v143];
            v88 = MEMORY[0x1E1299430](v142, v128);
            [v87 setLocale:v88];

            v89 = (v137)(v121, v124);
            goto LABEL_40;
          }

LABEL_24:

          ++v68;
          if (v3 == v67)
          {
            goto LABEL_53;
          }

          if (v149)
          {
            goto LABEL_44;
          }
        }

        else
        {
          (*v139)(v120, v71, v130);
          Apple_Parsec_Siri_V2alpha_ServerSuggestion.currentIntent.getter();
          v90 = [objc_allocWithZone(type metadata accessor for INInformationUseCaseIntent()) init];
          v91 = v146;

          v92 = MEMORY[0x1E1299430](v147, v91);

          v148 = v90;
          [v90 setInfoDomain:v92];

          v93 = v119;
          v94 = v124;
          (*v140)(v119, v141, v124);
          lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SuggestionIntent and conformance Apple_Parsec_Siri_V2alpha_SuggestionIntent(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SuggestionIntent and conformance Apple_Parsec_Siri_V2alpha_SuggestionIntent, MEMORY[0x1E69BD4A0], MEMORY[0x1E69BD4A8]);
          LOBYTE(v90) = dispatch thunk of static Equatable.== infix(_:_:)();
          v137 = *v145;
          v137(v93, v94);
          if ((v90 & 1) == 0)
          {
            v150 = 0;
            v151 = 0xE000000000000000;
            _print_unlocked<A, B>(_:_:)();
            v95 = MEMORY[0x1E1299430](v150, v151);

            [v148 setDomainUseCase:v95];
          }

          v96 = v148;
          [v148 setExampleUtterance:v143];
          v97 = MEMORY[0x1E1299430](v142, v128);
          [v96 setLocale:v97];

          v137(v122, v124);
          v89 = (*v138)(v120, v130);
LABEL_40:
          MEMORY[0x1E1299500](v89);
          if (*((v152 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v152 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v23 = *((v152 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v148 = v152;
          if (v3 == v67)
          {
            goto LABEL_53;
          }

          v68 = v3;
          if (v149)
          {
            goto LABEL_44;
          }
        }
      }
    }
  }

  else
  {
    v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v144 = v23;
    if (v67)
    {
      goto LABEL_22;
    }
  }

  v148 = MEMORY[0x1E69E7CC0];
LABEL_53:

  v98 = v148;

  v99 = Logger.logObject.getter();
  v100 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v150 = v102;
    *v101 = 136315394;
    v103 = type metadata accessor for INInformationUseCaseIntent();
    v104 = v144;

    v106 = MEMORY[0x1E1299530](v105, v103);
    v108 = v107;

    v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v108, &v150);

    *(v101 + 4) = v109;
    *(v101 + 12) = 2080;
    v110 = MEMORY[0x1E1299530](v98, v103);
    v112 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v111, &v150);

    *(v101 + 14) = v112;
    _os_log_impl(&dword_1DC5C3000, v99, v100, "Returning INInformationUseCaseIntent with domainUseCaseIntents: %s and serverSuggestionIntents: %s", v101, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1299E70](v102, -1, -1);
    MEMORY[0x1E1299E70](v101, -1, -1);

    v113 = v143;
  }

  else
  {

    v113 = v143;
    v104 = v144;
  }

  v150 = v104;

  specialized Array.append<A>(contentsOf:)(v98);

  return v150;
}

id static INInformationUseCaseUtterance.create(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for INInformationUseCaseUtterance();
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = MEMORY[0x1E1299430](a1, a2);
  v6 = MEMORY[0x1E1299430](a1, a2);
  v7 = [v4 initWithIdentifier:v5 displayString:v6];

  v8 = MEMORY[0x1E1299430](a1, a2);
  [v7 setSpokenString_];

  return v7;
}

Swift::Bool __swiftcall INInformationUseCaseIntent.supportsRelatedQuestions()()
{
  v1 = [v0 infoDomain];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v10[0] = v3;
    v10[1] = v5;
    MEMORY[0x1EEE9AC00](v6);
    v9[2] = v10;
    v7 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v9, &outlined read-only object #0 of one-time initialization function for relatedQuestionSupportedDomains);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
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

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCase();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SuggestionIntent and conformance Apple_Parsec_Siri_V2alpha_SuggestionIntent(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_DomainUseCase and conformance Apple_Parsec_Siri_V2alpha_DomainUseCase, MEMORY[0x1E69BD2A8], MEMORY[0x1E69BD2B0]);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SuggestionIntent and conformance Apple_Parsec_Siri_V2alpha_SuggestionIntent(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_DomainUseCase and conformance Apple_Parsec_Siri_V2alpha_DomainUseCase, MEMORY[0x1E69BD2A8], MEMORY[0x1E69BD2B8]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCase();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_DomainUseCaseOGMd, &_ss11_SetStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_DomainUseCaseOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SuggestionIntent and conformance Apple_Parsec_Siri_V2alpha_SuggestionIntent(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_DomainUseCase and conformance Apple_Parsec_Siri_V2alpha_DomainUseCase, MEMORY[0x1E69BD2A8], MEMORY[0x1E69BD2B0]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCase();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v10 + 1);
  }

  v12 = *v3;
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SuggestionIntent and conformance Apple_Parsec_Siri_V2alpha_SuggestionIntent(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_DomainUseCase and conformance Apple_Parsec_Siri_V2alpha_DomainUseCase, MEMORY[0x1E69BD2A8], MEMORY[0x1E69BD2B0]);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SuggestionIntent and conformance Apple_Parsec_Siri_V2alpha_SuggestionIntent(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_DomainUseCase and conformance Apple_Parsec_Siri_V2alpha_DomainUseCase, MEMORY[0x1E69BD2A8], MEMORY[0x1E69BD2B8]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCase();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_DomainUseCaseOGMd, &_ss11_SetStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_DomainUseCaseOGMR);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
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
    *v1 = v8;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCase();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_DomainUseCaseOGMd, &_ss11_SetStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_DomainUseCaseOGMR);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SuggestionIntent and conformance Apple_Parsec_Siri_V2alpha_SuggestionIntent(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_DomainUseCase and conformance Apple_Parsec_Siri_V2alpha_DomainUseCase, MEMORY[0x1E69BD2A8], MEMORY[0x1E69BD2B0]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10PegasusAPI39Apple_Parsec_Siri_V2alpha_DomainUseCaseO_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCase();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SuggestionIntent and conformance Apple_Parsec_Siri_V2alpha_SuggestionIntent(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_DomainUseCase and conformance Apple_Parsec_Siri_V2alpha_DomainUseCase, MEMORY[0x1E69BD2A8], MEMORY[0x1E69BD2B0]);
  result = MEMORY[0x1E1299580](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      specialized Set._Variant.insert(_:)(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

id specialized static Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.createUseCaseParameter(identifier:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for INInformationUseCaseParameter();
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = MEMORY[0x1E1299430](a1, a2);
  v10 = MEMORY[0x1E1299430](a1, a2);
  v11 = [v8 initWithIdentifier:v9 displayString:v10];

  type metadata accessor for INInformationUseCaseParameterValue();
  v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v13 = MEMORY[0x1E1299430](a3, a4);
  v14 = MEMORY[0x1E1299430](a3, a4);
  v15 = [v12 initWithIdentifier:v13 displayString:v14];

  [v11 setValue_];
  return v11;
}

id specialized static INInformationUseCaseUtterance.create(_:)()
{
  type metadata accessor for INInformationUseCaseUtterance();
  v0 = Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance.print.getter();
  v2 = v1;
  v3 = Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance.print.getter();
  v5 = v4;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = MEMORY[0x1E1299430](v0, v2);

  v8 = MEMORY[0x1E1299430](v3, v5);

  v9 = [v6 initWithIdentifier:v7 displayString:v8];

  v10 = Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance.speak.getter();
  v11 = MEMORY[0x1E1299430](v10);

  [v9 setSpokenString_];

  return v9;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

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

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SuggestionIntent and conformance Apple_Parsec_Siri_V2alpha_SuggestionIntent(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

SiriInformationTypes::WarmupComponent_optional __swiftcall WarmupComponent.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t lazy protocol witness table accessor for type WarmupComponent and conformance WarmupComponent()
{
  result = lazy protocol witness table cache variable for type WarmupComponent and conformance WarmupComponent;
  if (!lazy protocol witness table cache variable for type WarmupComponent and conformance WarmupComponent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WarmupComponent and conformance WarmupComponent);
  }

  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance WarmupComponent@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t PhoneCallExperience.phoneCall.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch19PhoneCallExperience_phoneCall;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PhoneCallExperience.__allocating_init(phoneCall:queryConfidenceScore:)(uint64_t a1, double a2)
{
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a1, v5);
  v9 = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  v10 = (*(v2 + 336))(v8, v9, a2);
  (*(v6 + 8))(a1, v5);
  return v10;
}

id PhoneCallExperience.init(phoneCall:queryConfidenceScore:renderOptions:)(uint64_t a1, uint64_t a2, double a3)
{
  v22 = a1;
  v23 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC21SiriInformationSearch19PhoneCallExperience_phoneCall;
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams();
  v15 = *(v14 - 8);
  v16 = &v3[v13];
  v17 = v22;
  (*(v15 + 16))(v16, v22, v14);
  Siri_Nlu_External_UserDialogAct.init()();
  (*(v6 + 104))(v8, *MEMORY[0x1E69BCBD8], v5);
  *&v3[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v18 = &v3[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  *v18 = 0x73757361676570;
  *(v18 + 1) = 0xE700000000000000;
  *&v3[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a3;
  (*(v10 + 16))(&v3[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v12, v9);
  *&v3[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = v23;
  (*(v6 + 16))(&v3[OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent], v8, v5);
  v19 = type metadata accessor for Experience(0);
  v24.receiver = v3;
  v24.super_class = v19;
  v20 = objc_msgSendSuper2(&v24, sel_init);
  (*(v15 + 8))(v17, v14);
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
  return v20;
}

BOOL PhoneCallExperience.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallExperience.CodingKeys.init(rawValue:), v2);

  return v3 != 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PhoneCallExperience.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PhoneCallExperience.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallExperience.CodingKeys@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallExperience.CodingKeys, *a1);

  *a2 = v3 != 0;
  return result;
}

NSObject *PhoneCallExperience.init(coder:)(NSObject *a1)
{
  v3 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSData();
  v8 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v8)
  {
    v9 = v8;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams and conformance Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams();
    Message.init(serializedData:extensions:partial:options:)();
    (*(v5 + 32))(v1 + OBJC_IVAR____TtC21SiriInformationSearch19PhoneCallExperience_phoneCall, v7, v4);
    v14 = Experience.init(coder:)(a1);
    v15 = v14;

    if (v14)
    {

      return v14;
    }
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.pommes);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DC5C3000, v11, v12, "Failed to extract phoneCall data", v13, 2u);
      MEMORY[0x1E1299E70](v13, -1, -1);
    }

    type metadata accessor for PhoneCallExperience(0);
    swift_deallocPartialClassInstance();
  }

  return 0;
}

uint64_t type metadata accessor for PhoneCallExperience(uint64_t a1)
{
  result = type metadata singleton initialization cache for PhoneCallExperience;
  if (!type metadata singleton initialization cache for PhoneCallExperience)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall PhoneCallExperience.encode(with:)(NSCoder with)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams and conformance Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams();
  v2 = Message.serializedData(partial:)();
  v4 = v3;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = MEMORY[0x1E1299430](0x6C6143656E6F6870, 0xE90000000000006CLL);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v6];

  outlined consume of Data._Representation(v2, v4);
  Experience.encode(with:)(with);
}

uint64_t PhoneCallExperience.__ivar_destroyer()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch19PhoneCallExperience_phoneCall;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id PhoneCallExperience.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhoneCallExperience(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams and conformance Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams()
{
  result = lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams and conformance Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams;
  if (!lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams and conformance Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams and conformance Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallExperience.CodingKeys and conformance PhoneCallExperience.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneCallExperience.CodingKeys and conformance PhoneCallExperience.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneCallExperience.CodingKeys and conformance PhoneCallExperience.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallExperience.CodingKeys and conformance PhoneCallExperience.CodingKeys);
  }

  return result;
}

uint64_t type metadata completion function for PhoneCallExperience(uint64_t a1)
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams();
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

id INInformationUseCaseIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void key path getter for INInformationUseCaseIntent.parameters : INInformationUseCaseIntent(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 parameters];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for INInformationUseCaseParameter();
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void key path setter for INInformationUseCaseIntent.parameters : INInformationUseCaseIntent(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    type metadata accessor for INInformationUseCaseParameter();
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  isa = v3.super.isa;
  [v2 setParameters_];
}

void key path getter for INInformationUseCaseIntent.infoDomain : INInformationUseCaseIntent(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void key path setter for INInformationUseCaseIntent.infoDomain : INInformationUseCaseIntent(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v7 = a1[1];
  v8 = *a2;
  if (v7)
  {
    v9 = MEMORY[0x1E1299430](*a1, v7, a3, a4);
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  [v8 *a5];
}

id INInformationUseCaseIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for INInformationUseCaseIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id INInformationUseCaseIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id INInformationUseCaseIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for INInformationUseCaseIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance INInformationUseCaseIntentResponseCode()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1E1299920](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance INInformationUseCaseIntentResponseCode(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x1E1299920](v2);
  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance INInformationUseCaseIntentResponseCode@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized INInformationUseCaseIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t INInformationUseCaseIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___INInformationUseCaseIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *INInformationUseCaseIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___INInformationUseCaseIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

char *INInformationUseCaseIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___INInformationUseCaseIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id INInformationUseCaseIntentResponse.init()()
{
  *&v0[OBJC_IVAR___INInformationUseCaseIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for INInformationUseCaseIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id INInformationUseCaseIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___INInformationUseCaseIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for INInformationUseCaseIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id INInformationUseCaseIntent.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t specialized INInformationUseCaseIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type INInformationUseCaseIntentResponseCode and conformance INInformationUseCaseIntentResponseCode()
{
  result = lazy protocol witness table cache variable for type INInformationUseCaseIntentResponseCode and conformance INInformationUseCaseIntentResponseCode;
  if (!lazy protocol witness table cache variable for type INInformationUseCaseIntentResponseCode and conformance INInformationUseCaseIntentResponseCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type INInformationUseCaseIntentResponseCode and conformance INInformationUseCaseIntentResponseCode);
  }

  return result;
}

id INInformationUseCaseParameter.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v11 = MEMORY[0x1E1299430](a1);
  }

  else
  {
    v11 = 0;
  }

  v12 = MEMORY[0x1E1299430](a3, a4);

  if (a6)
  {
    v13 = MEMORY[0x1E1299430](a5, a6);
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(v6) initWithIdentifier:v11 displayString:v12 pronunciationHint:v13];

  return v14;
}

id INInformationUseCaseParameter.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v11 = MEMORY[0x1E1299430](a1);
  }

  else
  {
    v11 = 0;
  }

  v12 = MEMORY[0x1E1299430](a3, a4);

  if (a6)
  {
    v13 = MEMORY[0x1E1299430](a5, a6);
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v6;
  v16.super_class = type metadata accessor for INInformationUseCaseParameter();
  v14 = objc_msgSendSuper2(&v16, sel_initWithIdentifier_displayString_pronunciationHint_, v11, v12, v13);

  return v14;
}

id INInformationUseCaseParameter.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id INInformationUseCaseParameter.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for INInformationUseCaseParameter();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id static INInformationUseCaseParameterResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___INInformationUseCaseParameterResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id static INInformationUseCaseParameterResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    type metadata accessor for INObject();

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for INObject();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for INObject();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___INInformationUseCaseParameterResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, isa);

  return v3;
}

unint64_t type metadata accessor for INObject()
{
  result = lazy cache variable for type metadata for INObject;
  if (!lazy cache variable for type metadata for INObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INObject);
  }

  return result;
}

id static INInformationUseCaseParameterResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___INInformationUseCaseParameterResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id INInformationUseCaseParameter.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id INInformationUseCaseParameterValue.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v11 = MEMORY[0x1E1299430](a1);
  }

  else
  {
    v11 = 0;
  }

  v12 = MEMORY[0x1E1299430](a3, a4);

  if (a6)
  {
    v13 = MEMORY[0x1E1299430](a5, a6);
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(v6) initWithIdentifier:v11 displayString:v12 pronunciationHint:v13];

  return v14;
}

id INInformationUseCaseParameterValue.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v11 = MEMORY[0x1E1299430](a1);
  }

  else
  {
    v11 = 0;
  }

  v12 = MEMORY[0x1E1299430](a3, a4);

  if (a6)
  {
    v13 = MEMORY[0x1E1299430](a5, a6);
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v6;
  v16.super_class = type metadata accessor for INInformationUseCaseParameterValue();
  v14 = objc_msgSendSuper2(&v16, sel_initWithIdentifier_displayString_pronunciationHint_, v11, v12, v13);

  return v14;
}

id INInformationUseCaseParameterValue.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id INInformationUseCaseParameterValue.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for INInformationUseCaseParameterValue();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id static INInformationUseCaseParameterValueResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___INInformationUseCaseParameterValueResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id static INInformationUseCaseParameterValueResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    type metadata accessor for INObject();

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for INObject();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for INObject();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___INInformationUseCaseParameterValueResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, isa);

  return v3;
}

id static INInformationUseCaseParameterValueResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___INInformationUseCaseParameterValueResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id INInformationUseCaseParameterValue.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void key path getter for INInformationUseCaseUtterance.spokenString : INInformationUseCaseUtterance(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 spokenString];
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

  *a2 = v5;
  a2[1] = v7;
}

void key path setter for INInformationUseCaseUtterance.spokenString : INInformationUseCaseUtterance(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = MEMORY[0x1E1299430](*a1);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setSpokenString_];
}

id INInformationUseCaseUtterance.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v11 = MEMORY[0x1E1299430](a1);
  }

  else
  {
    v11 = 0;
  }

  v12 = MEMORY[0x1E1299430](a3, a4);

  if (a6)
  {
    v13 = MEMORY[0x1E1299430](a5, a6);
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(v6) initWithIdentifier:v11 displayString:v12 pronunciationHint:v13];

  return v14;
}

id INInformationUseCaseUtterance.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v11 = MEMORY[0x1E1299430](a1);
  }

  else
  {
    v11 = 0;
  }

  v12 = MEMORY[0x1E1299430](a3, a4);

  if (a6)
  {
    v13 = MEMORY[0x1E1299430](a5, a6);
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v6;
  v16.super_class = type metadata accessor for INInformationUseCaseUtterance();
  v14 = objc_msgSendSuper2(&v16, sel_initWithIdentifier_displayString_pronunciationHint_, v11, v12, v13);

  return v14;
}

id INInformationUseCaseUtterance.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id INInformationUseCaseUtterance.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for INInformationUseCaseUtterance();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id static INInformationUseCaseUtteranceResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___INInformationUseCaseUtteranceResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id static INInformationUseCaseUtteranceResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    type metadata accessor for INObject();

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for INObject();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for INObject();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___INInformationUseCaseUtteranceResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, isa);

  return v3;
}

id static INInformationUseCaseUtteranceResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___INInformationUseCaseUtteranceResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id INInformationUseCaseUtterance.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = MEMORY[0x1EEDC4558](options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t BinaryDecodingOptions.init()()
{
  return MEMORY[0x1EEE3F530]();
}

{
  return MEMORY[0x1EEE156B8]();
}

uint64_t type metadata accessor for BinaryDecodingOptions()
{
  return MEMORY[0x1EEE3F538]();
}

{
  return MEMORY[0x1EEE156D0]();
}

uint64_t Message.init(serializedData:extensions:partial:options:)()
{
  return MEMORY[0x1EEE3F628]();
}

{
  return MEMORY[0x1EEE158F0]();
}

uint64_t Message.serializedData(partial:)()
{
  return MEMORY[0x1EEE3F630]();
}

{
  return MEMORY[0x1EEE158F8]();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x1EEE6ACC8]();
}

{
  return MEMORY[0x1EEE6ACD0]();
}

{
  return MEMORY[0x1EEE6ACE8]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x1EEE6AE00]();
}

{
  return MEMORY[0x1EEE6AE08]();
}

{
  return MEMORY[0x1EEE6AE20]();
}