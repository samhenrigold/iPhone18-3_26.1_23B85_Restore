id sub_10011BB8C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  _StringGuts.grow(_:)(23);
  v4 = [v3 identifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._object = 0x8000000100158BA0;
  v8._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v8);
  v9 = v5;
  v10 = v7;
  sub_100003D44(0, &unk_10019B460, LNEntityValueType_ptr);
  v11 = [v3 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = sub_1000AEC0C();
  v13 = Dictionary.init(dictionaryLiteral:)();
  v14 = [v3 effectiveBundleIdentifiers];
  v15 = sub_10011C034(v3);
  v16 = [v3 visibilityMetadata];
  v17 = objc_allocWithZone(LNQueryMetadata);
  result = sub_10011BD6C(v9, v10, 0, v12, 0, 0xE000000000000000, v13, v14, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v15, 1, 0, v16, 0, 0, 0, 0);
  *a2 = result;
  return result;
}

id sub_10011BD6C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v26 = String._bridgeToObjectiveC()();

  v27 = String._bridgeToObjectiveC()();

  v25.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_100003D44(0, &qword_10019C9B0, LNQueryParameterMetadata_ptr);
  v18.super.isa = Array._bridgeToObjectiveC()().super.isa;

  sub_100003D44(0, &qword_10019C9B8, LNQuerySortingOptionMetadata_ptr);
  v19.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (a11)
  {
    type metadata accessor for LNPlatformName(0);
    sub_100003D44(0, &qword_10019A0A8, LNAvailabilityAnnotation_ptr);
    sub_10011C15C(&qword_100198940, type metadata accessor for LNPlatformName, &unk_10014CDB0);
    v20.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v20.super.isa = 0;
  }

  if (a17)
  {
    v21 = String._bridgeToObjectiveC()();
  }

  else
  {
    v21 = 0;
  }

  if (a18)
  {
    sub_100003D44(0, &unk_10019C9C0, LNTargetMetadata_ptr);
    v22.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v22.super.isa = 0;
  }

  LOBYTE(v24) = a15 & 1;
  v29 = [v28 initWithIdentifier:v26 inputValueType:a3 resultValueType:a4 mangledTypeName:v27 mangledTypeNameByBundleIdentifier:v25.super.isa effectiveBundleIdentifiers:a8 parameters:v18.super.isa sortingOptions:v19.super.isa availabilityAnnotations:v20.super.isa capabilities:a12 descriptionMetadata:a13 visibilityMetadata:a14 defaultQueryForEntity:v24 fullyQualifiedIdentifier:v21 allowedTargets:v22.super.isa];

  return v29;
}

uint64_t sub_10011C034(void *a1)
{
  v1 = [a1 availabilityAnnotations];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for LNPlatformName(0);
  sub_100003D44(0, &qword_10019A0A8, LNAvailabilityAnnotation_ptr);
  sub_10011C15C(&qword_100198940, type metadata accessor for LNPlatformName, &unk_10014CDB0);
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10011C0F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10002EB80(a3, a4);
  v5 = sub_1000077D8();
  v6(v5);
  return a2;
}

uint64_t sub_10011C15C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_10011C1A4(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for LSLinkBundleRecord(0);
  v22 = v4;
  v23 = &off_10018F930;
  v5 = sub_100013234(v21);
  sub_100027910(a1, v5);
  if ([objc_opt_self() isAppShortcutsOmittingAppNameEnabled] && *(sub_1000034B4(v21, v22) + *(v4 + 32)) == 1)
  {
    v6 = [a2 autoShortcuts];
    sub_100003D44(0, &qword_1001994F8, LNAutoShortcutMetadata_ptr);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    goto LABEL_12;
  }

  v8 = [a2 autoShortcuts];
  sub_100003D44(0, &qword_1001994F8, LNAutoShortcutMetadata_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = sub_100108460(10, v9);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  if ((v15 & 1) == 0)
  {
LABEL_5:
    sub_10006B760(v10, v12, v14, v16);
    v7 = v17;
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v18 = swift_dynamicCastClass();
  if (!v18)
  {
    swift_unknownObjectRelease();
    v18 = _swiftEmptyArrayStorage;
  }

  v19 = v18[2];

  if (__OFSUB__(v16 >> 1, v14))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v19 != (v16 >> 1) - v14)
  {
LABEL_14:
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  v7 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v7)
  {
    swift_unknownObjectRelease();
    v7 = _swiftEmptyArrayStorage;
  }

LABEL_12:
  sub_1000034F8(v21);
  return v7;
}

void *sub_10011C3B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v107 = type metadata accessor for LSLinkBundleRecord(0);
  v108 = &off_10018F930;
  v6 = sub_100013234(v106);
  sub_100027910(a1, v6);
  v91 = v6[1];
  v92 = *v6;

  v93 = a3;
  v7 = [a3 actions];
  sub_100003D44(0, &unk_10019AB20, LNActionMetadata_ptr);
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = *(v8 + 16);
  if (v9)
  {
    v104[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = sub_100091D1C();
    v12 = result;
    v14 = v13;
    v15 = 0;
    v16 = v8 + 64;
    v94 = v13;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(v8 + 32))
    {
      v17 = v12 >> 6;
      if ((*(v16 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_75;
      }

      if (*(v8 + 36) != v14)
      {
        goto LABEL_76;
      }

      v100 = v15;
      v97 = v11;
      v18 = *(*(v8 + 56) + 8 * v12);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v19 = 1 << *(v8 + 32);
      if (v12 >= v19)
      {
        goto LABEL_77;
      }

      v20 = *(v16 + 8 * v17);
      if ((v20 & (1 << v12)) == 0)
      {
        goto LABEL_78;
      }

      if (*(v8 + 36) != v14)
      {
        goto LABEL_79;
      }

      v21 = v20 & (-2 << (v12 & 0x3F));
      if (v21)
      {
        v19 = __clz(__rbit64(v21)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v17 << 6;
        v23 = v17 + 1;
        v24 = (v8 + 72 + 8 * v17);
        while (v23 < (v19 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_100060B50(v12, v14, v97 & 1);
            v19 = __clz(__rbit64(v25)) + v22;
            goto LABEL_17;
          }
        }

        result = sub_100060B50(v12, v14, v97 & 1);
      }

LABEL_17:
      v11 = 0;
      v15 = v100 + 1;
      v12 = v19;
      v14 = v94;
      if (v100 + 1 == v9)
      {

        v88 = v104[0];
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v88 = _swiftEmptyArrayStorage;
LABEL_20:
  v27 = sub_100056300(v93, &selRef_autoShortcutProviderMangledName);
  v86 = v28;
  v87 = v27;
  v85 = [v93 shortcutTileColor];
  v29 = sub_1000034B4(v106, v107);
  v84 = sub_10011C1A4(v29, v93);
  v30 = [v93 entities];
  sub_100003D44(0, &qword_10019AB50, LNEntityMetadata_ptr);
  v31 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v32 = *(v31 + 16);
  if (v32)
  {
    v104[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = sub_100091D1C();
    v34 = result;
    v36 = v35;
    v37 = 0;
    v38 = v31 + 64;
    v95 = v35;
    while ((v34 & 0x8000000000000000) == 0 && v34 < 1 << *(v31 + 32))
    {
      v39 = v34 >> 6;
      if ((*(v38 + 8 * (v34 >> 6)) & (1 << v34)) == 0)
      {
        goto LABEL_81;
      }

      if (*(v31 + 36) != v36)
      {
        goto LABEL_82;
      }

      v98 = v33;
      v40 = *(*(v31 + 56) + 8 * v34);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v41 = 1 << *(v31 + 32);
      if (v34 >= v41)
      {
        goto LABEL_83;
      }

      v42 = *(v38 + 8 * v39);
      if ((v42 & (1 << v34)) == 0)
      {
        goto LABEL_84;
      }

      if (*(v31 + 36) != v36)
      {
        goto LABEL_85;
      }

      v43 = v42 & (-2 << (v34 & 0x3F));
      if (v43)
      {
        v41 = __clz(__rbit64(v43)) | v34 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v44 = v39 << 6;
        v45 = v39 + 1;
        v46 = (v31 + 72 + 8 * v39);
        while (v45 < (v41 + 63) >> 6)
        {
          v48 = *v46++;
          v47 = v48;
          v44 += 64;
          ++v45;
          if (v48)
          {
            result = sub_100060B50(v34, v36, v98 & 1);
            v41 = __clz(__rbit64(v47)) + v44;
            goto LABEL_36;
          }
        }

        result = sub_100060B50(v34, v36, v98 & 1);
      }

LABEL_36:
      v33 = 0;
      ++v37;
      v34 = v41;
      v36 = v95;
      if (v37 == v32)
      {

        v83 = v104[0];
        goto LABEL_39;
      }
    }

LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v83 = _swiftEmptyArrayStorage;
LABEL_39:
  v49 = [v93 enums];
  sub_100003D44(0, &qword_10019AB60, LNEnumMetadata_ptr);
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v81 = sub_1000B631C();
  v50 = sub_10011B234();
  v51 = v50[2];
  if (v51)
  {
    v104[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = sub_100091D1C();
    v53 = result;
    v55 = v54;
    v56 = 0;
    v57 = v50 + 8;
    v96 = v54;
    while ((v53 & 0x8000000000000000) == 0 && v53 < 1 << *(v50 + 32))
    {
      v58 = v53 >> 6;
      if ((v57[v53 >> 6] & (1 << v53)) == 0)
      {
        goto LABEL_87;
      }

      if (*(v50 + 9) != v55)
      {
        goto LABEL_88;
      }

      v101 = v56;
      v99 = v52;
      v59 = *(v50[7] + 8 * v53);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v60 = 1 << *(v50 + 32);
      if (v53 >= v60)
      {
        goto LABEL_89;
      }

      v61 = v57[v58];
      if ((v61 & (1 << v53)) == 0)
      {
        goto LABEL_90;
      }

      if (*(v50 + 9) != v55)
      {
        goto LABEL_91;
      }

      v62 = v61 & (-2 << (v53 & 0x3F));
      if (v62)
      {
        v60 = __clz(__rbit64(v62)) | v53 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v63 = v58 << 6;
        v64 = v58 + 1;
        v65 = &v50[v58 + 9];
        while (v64 < (v60 + 63) >> 6)
        {
          v67 = *v65++;
          v66 = v67;
          v63 += 64;
          ++v64;
          if (v67)
          {
            result = sub_100060B50(v53, v55, v99 & 1);
            v60 = __clz(__rbit64(v66)) + v63;
            goto LABEL_55;
          }
        }

        result = sub_100060B50(v53, v55, v99 & 1);
      }

LABEL_55:
      v52 = 0;
      v56 = v101 + 1;
      v53 = v60;
      v55 = v96;
      if (v101 + 1 == v51)
      {

        v68 = v104[0];
        goto LABEL_58;
      }
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    return result;
  }

  v68 = _swiftEmptyArrayStorage;
LABEL_58:
  v69 = [v93 version];
  v70 = sub_10005628C(v93, &selRef_negativePhrases, &qword_10019C9A0, LNAppShortcutNegativePhrase_ptr);
  v71 = sub_10005628C(v93, &selRef_examplePhrases, &qword_10019B2B0, LNExamplePhraseDescription_ptr);
  v72 = sub_10005628C(v93, &selRef_assistantIntents, &qword_10019C990, LNAssistantIntentMetadata_ptr);
  v73 = sub_10005628C(v93, &selRef_assistantIntentNegativePhrases, &qword_10019BEA8, LNAssistantIntentNegativePhrases_ptr);
  v74 = sub_10005628C(v93, &selRef_assistantEntities, &qword_10019C980, LNAssistantAppEntityMetadata_ptr);
  sub_100003D44(0, &qword_10019ACD0, LSBundleRecord_ptr);

  v75 = sub_1000FEC40(v92, v91, 0);
  if (v74)
  {
    v76 = v74;
  }

  else
  {
    v76 = _swiftEmptyArrayStorage;
  }

  __src[0] = v92;
  __src[1] = v91;
  if (v73)
  {
    v77 = v73;
  }

  else
  {
    v77 = _swiftEmptyArrayStorage;
  }

  if (v72)
  {
    v78 = v72;
  }

  else
  {
    v78 = _swiftEmptyArrayStorage;
  }

  __src[2] = v75;
  __src[3] = v88;
  if (v71)
  {
    v79 = v71;
  }

  else
  {
    v79 = _swiftEmptyArrayStorage;
  }

  if (v70)
  {
    v80 = v70;
  }

  else
  {
    v80 = _swiftEmptyArrayStorage;
  }

  __src[4] = v87;
  __src[5] = v86;
  __src[6] = v85;
  __src[7] = v84;
  __src[8] = a2;
  __src[9] = v83;
  __src[10] = v82;
  __src[11] = v68;
  __src[12] = v69;
  __src[13] = v80;
  __src[14] = v79;
  __src[15] = v78;
  __src[16] = v77;
  __src[17] = v76;
  __src[18] = _swiftEmptyArrayStorage;
  strcpy(&__src[19], "UnknownDomain");
  HIWORD(__src[20]) = -4864;
  v104[0] = v92;
  v104[1] = v91;
  v104[2] = v75;
  v104[3] = v88;
  v104[4] = v87;
  v104[5] = v86;
  v104[6] = v85;
  v104[7] = v84;
  v104[8] = a2;
  v104[9] = v83;
  v104[10] = v82;
  v104[11] = v68;
  v104[12] = v69;
  v104[13] = v80;
  v104[14] = v79;
  v104[15] = v78;
  v104[16] = v77;
  v104[17] = v76;
  v104[18] = _swiftEmptyArrayStorage;
  strcpy(v105, "UnknownDomain");
  v105[7] = -4864;

  sub_10011CF50(__src, v102);
  sub_1000FC14C(v104);
  sub_1000034F8(v106);
  return memcpy(a4, __src, 0xA8uLL);
}

id sub_10011CD8C(uint64_t a1, void *a2, char a3, uint64_t *a4)
{
  v7 = *a4;
  v8 = sub_10004B2BC();
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v8;
  v14 = v9;
  sub_10002EB80(&qword_10019C968, &unk_100152578);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v12))
  {
    goto LABEL_5;
  }

  v15 = sub_10004B2BC();
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_13:
    type metadata accessor for LNSystemProtocolIdentifier(0);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v13 = v15;
LABEL_5:
  v17 = *a4;
  if (v14)
  {
    *(v17[7] + 8 * v13) = a1;

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_10011CEB8(v13, a2, a1, v17);

    return a2;
  }
}

unint64_t sub_10011CEB8(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_10011CEFC()
{
  result = qword_10019C978;
  if (!qword_10019C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019C978);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ApplicationMetadataExtractor.Errors(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10011D07C()
{
  result = qword_10019C9D0;
  if (!qword_10019C9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019C9D0);
  }

  return result;
}

uint64_t sub_10011D150(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v5 = *(a1 + 16);
  [v5 lock];
  swift_beginAccess();
  v6 = *(a2 + 48);
  *(a2 + 48) = 0;
  v7 = *(a2 + 56);
  *(a2 + 56) = -1;
  a3(v6, v7);
  [v5 unlock];
}

uint64_t sub_10011D1E8(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_10011D200(result, a2 & 1);
  }

  return result;
}

uint64_t sub_10011D200(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_10011D20C(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_10011D224(result, a2 & 1);
  }

  return result;
}

uint64_t sub_10011D224(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

double sub_10011D260@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_10011D26C@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_10011D2B4@<X0>(uint64_t *a1@<X8>)
{
  result = String.datatypeValue.getter(*v1, v1[1]);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t (*static Bool.declaredDatatype.modify())(uint64_t a1)
{
  sub_1000066C0();
  swift_beginAccess();
  return j__swift_endAccess;
}

BOOL sub_10011D404@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = static Bool.fromDatatypeValue(_:)(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10011D434@<X0>(uint64_t *a1@<X8>)
{
  result = Bool.datatypeValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_10011D478(uint64_t a1, void *a2)
{
  swift_beginAccess();

  return sub_1000066C0();
}

uint64_t sub_10011D4D4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  *a3 = a1;
  *a4 = a2;
}

uint64_t (*static Int.declaredDatatype.modify())(uint64_t)
{
  sub_1000066C0();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_10011D598(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();

  return sub_1000066C0();
}

uint64_t variable initialization expression of QueryClauses.select()
{
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10014CE90;
  v1 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  *(v0 + 64) = &protocol witness table for Expression<A>;
  *(v0 + 32) = 42;
  *(v0 + 40) = 0xE100000000000000;
  *(v0 + 48) = _swiftEmptyArrayStorage;
  *(v0 + 56) = v1;
  return 0;
}

uint64_t variable initialization expression of Connection.queue()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  sub_100002958();
  v4 = v3 - v2;
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_100002958();
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  sub_100002958();
  sub_100015918();
  sub_100066220();
  sub_10002EB80(&qword_1001992C8, &unk_10014DFF0);
  sub_10004AE28();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  static DispatchQoS.unspecified.getter();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

void type metadata accessor for ComparisonResult()
{
  if (!qword_10019CBB0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_10019CBB0);
    }
  }
}

Swift::String __swiftcall SchemaType.drop(ifExists:)(Swift::Bool ifExists)
{
  sub_100017D44();
  sub_10011DC4C(0x454C424154, 0xE500000000000000, v5, ifExists);
  sub_100002714();
  v2 = sub_100012118(v5);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t sub_10011DC4C(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  sub_10002EB80(&qword_10019CBB8, &unk_100152950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014E1F0;
  *&v26 = 0x20504F5244;
  *(&v26 + 1) = 0xE500000000000000;
  v9._countAndFlagsBits = a1;
  v9._object = a2;
  String.append(_:)(v9);
  v10 = v26;
  v11 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = v10;
  *(inited + 48) = _swiftEmptyArrayStorage;
  *(inited + 56) = v11;
  if (a4)
  {
    v12 = xmmword_100152900;
    v13 = _swiftEmptyArrayStorage;
    v14 = &protocol witness table for Expression<A>;
  }

  else
  {
    v11 = 0;
    v14 = 0;
    v13 = 0;
    v12 = 0uLL;
  }

  *(inited + 96) = v11;
  *(inited + 104) = v14;
  *(inited + 72) = v12;
  *(inited + 88) = v13;
  sub_100013334(a3, inited + 112);
  v15 = _swiftEmptyArrayStorage;
  for (i = 32; i != 152; i += 40)
  {
    sub_100011EE4(inited + i, &v26, &qword_10019CBC0, &qword_100152960);
    v23[0] = v26;
    v23[1] = v27;
    v24 = v28;
    if (*(&v27 + 1))
    {
      sub_10001A798(v23, v25);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10001A674(0, v15[2] + 1, 1, v15, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v15 = v19;
      }

      v18 = v15[2];
      v17 = v15[3];
      if (v18 >= v17 >> 1)
      {
        sub_10001A674(v17 > 1, v18 + 1, 1, v15, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v15 = v20;
      }

      v15[2] = v18 + 1;
      sub_10001A798(v25, &v15[5 * v18 + 4]);
    }

    else
    {
      sub_100003E9C(v23, &qword_10019CBC0, &qword_100152960);
    }
  }

  swift_setDeallocating();
  sub_100018848(&qword_10019CBC0, &qword_100152960);
  sub_100013640(v15, &v26);

  sub_1000034B4(&v26, *(&v27 + 1));
  countAndFlagsBits = Expressible.asSQL()()._countAndFlagsBits;
  sub_1000034F8(&v26);
  return countAndFlagsBits;
}

void Table.create(temporary:ifNotExists:withoutRowid:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, uint64_t a13, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  sub_100015628();
  a54 = v56;
  a55 = v57;
  v58 = v55;
  v60 = v59;
  v95 = v61;
  v96 = v62;
  v64 = v63;
  type metadata accessor for TableBuilder();
  *(swift_allocObject() + 16) = _swiftEmptyArrayStorage;
  v60();
  sub_10002EB80(&qword_10019CBB8, &unk_100152950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014E1F0;
  v66 = *(v55 + 16);
  v67 = *(v58 + 24);
  v68 = *(v58 + 32);
  v69 = *(v58 + 40);
  v70 = *(v58 + 64);
  swift_bridgeObjectRetain_n();

  if (v69)
  {

    v66 = v68;
    v67 = v69;
  }

  sub_100019760(v66, v67, v70 & 1, &a21);

  if (v64)
  {
    v71 = 1;
  }

  else
  {
    v71 = 2;
  }

  sub_10011E298(0x454C424154, 0xE500000000000000, &a21, v71, v95 & 1, (inited + 32));
  sub_1000034F8(&a21);
  swift_beginAccess();

  sub_100013640(v72, &a21);

  v73 = sub_1000034B4(&a21, *(&a22 + 1));
  v74 = sub_100128720(v73);
  v76 = v75;
  v78 = v77;
  sub_1000034F8(&a21);
  v79 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  *(inited + 96) = v79;
  *(inited + 104) = &protocol witness table for Expression<A>;
  *(inited + 72) = v74;
  *(inited + 80) = v76;
  *(inited + 88) = v78;
  if (v96)
  {
    v80 = xmmword_100152910;
    v81 = _swiftEmptyArrayStorage;
    v82 = &protocol witness table for Expression<A>;
  }

  else
  {
    *&v80 = sub_10000E838();
  }

  *(inited + 136) = v79;
  *(inited + 144) = v82;
  *(inited + 112) = v80;
  v83 = 32;
  *(inited + 128) = v81;
  v84 = _swiftEmptyArrayStorage;
  do
  {
    sub_100011EE4(inited + v83, &a21, &qword_10019CBC0, &qword_100152960);
    a11 = a21;
    a12 = a22;
    a13 = a23;
    if (*(&a22 + 1))
    {
      sub_10001A798(&a11, &a14);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v87 = sub_100004E28();
        sub_10001A674(v87, v88, v89, v84, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v84 = v90;
      }

      v86 = v84[2];
      v85 = v84[3];
      if (v86 >= v85 >> 1)
      {
        v91 = sub_100009A90(v85);
        sub_10001A674(v91, v92, v93, v84, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v84 = v94;
      }

      v84[2] = v86 + 1;
      sub_10001A798(&a14, &v84[5 * v86 + 4]);
    }

    else
    {
      sub_100003E9C(&a11, &qword_10019CBC0, &qword_100152960);
    }

    v83 += 40;
  }

  while (v83 != 152);
  swift_setDeallocating();
  sub_100018848(&qword_10019CBC0, &qword_100152960);
  sub_10000EF08(v84, &a21);

  sub_1000034B4(&a21, *(&a22 + 1));
  sub_10001317C();
  Expressible.asSQL()();
  sub_1000064BC();

  sub_1000034F8(&a21);
  sub_10001317C();
  sub_1001286A8();
}

uint64_t sub_10011E298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  v13 = a4;
  sub_10002EB80(&qword_10019CBB8, &unk_100152950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014F0D0;
  v15 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = 0x455441455243;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = _swiftEmptyArrayStorage;
  *(inited + 56) = v15;
  if (v13 == 2)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
  }

  else
  {
    v16 = 0x455551494E55;
    if (a4)
    {
      v16 = 0x5241524F504D4554;
    }

    v17 = 0xE900000000000059;
    if ((a4 & 1) == 0)
    {
      v17 = 0xE600000000000000;
    }

    v20 = &protocol witness table for Expression<A>;
    v18 = _swiftEmptyArrayStorage;
    v19 = v15;
  }

  *(inited + 72) = v16;
  *(inited + 80) = v17;
  *(inited + 88) = v18;
  *(inited + 96) = v19;
  *(inited + 136) = v15;
  *(inited + 144) = &protocol witness table for Expression<A>;
  *(inited + 104) = v20;
  *(inited + 112) = a1;
  *(inited + 120) = a2;
  *(inited + 128) = _swiftEmptyArrayStorage;
  if (a5)
  {
    v21 = xmmword_100152920;
    v22 = _swiftEmptyArrayStorage;
    v23 = &protocol witness table for Expression<A>;
  }

  else
  {
    *&v21 = sub_10000E838();
  }

  *(inited + 176) = v15;
  *(inited + 184) = v23;
  *(inited + 152) = v21;
  *(inited + 168) = v22;
  sub_100013334(a3, inited + 192);

  v24 = _swiftEmptyArrayStorage;
  for (i = 32; i != 232; i += 40)
  {
    sub_10001330C();
    v30 = sub_100011EE4(v26, v27, v28, v29);
    sub_100128444(v30, v31, v32, v33, v34, v35, v36, v37, v54, *(&v54 + 1), v55, v56, v57, v58, v59, *(&v59 + 1), v60, v61, v62, v63, v64, v65);
    if (v38)
    {
      sub_1001283B4(&v54, &v59);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_1000073C4();
        sub_10001A674(v43, v44, v45, v46, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v24 = v47;
      }

      sub_100128528();
      if (v39)
      {
        sub_10000274C();
        sub_10001A674(v48, v49, v50, v51, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v24 = v52;
      }

      v24[2] = v6;
      sub_10001A798(&v59, &v24[5 * v13 + 4]);
    }

    else
    {
      sub_1000111C8();
      sub_100003E9C(v40, v41, v42);
    }
  }

  swift_setDeallocating();
  sub_100018848(&qword_10019CBC0, &qword_100152960);
  sub_100009AA4(a6);
}

void Table.addColumn<A>(_:check:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_100006A04();
  v100 = v22;
  v101 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = sub_100128618();
  v110[3] = type metadata accessor for Expression(v37, v38, v39, v40);
  v110[4] = &protocol witness table for Expression<A>;
  v110[0] = v36;
  v110[1] = v34;
  v110[2] = v32;
  v41 = *(a21 + 40);

  v42 = v41(v24, a21);
  v44 = v43;
  if (v28)
  {
    v45 = sub_10002EB80(&qword_10019CBD8, &qword_100152978);
    v46 = &protocol witness table for Expression<A>;
  }

  else
  {
    v45 = sub_100002E28();
  }

  sub_100018B04(v45, v46);
  sub_1000294F4(*(a21 + 8));
  sub_1000116F4();
  (*(v47 + 16))();
  sub_100128604();
  v48 = sub_10002EB80(&qword_10019CBB8, &unk_100152950);
  v49 = sub_10012842C(v48);
  v50 = sub_100017FC0(v49, xmmword_100152930);
  sub_100013334(v50, &v49[2]);
  v51 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  v49[6].n128_u64[1] = &protocol witness table for Expression<A>;
  v49[4].n128_u64[1] = v42;
  v49[5].n128_u64[0] = v44;
  v52.n128_f64[0] = sub_100018D54(v51, _swiftEmptyArrayStorage);
  v49[11].n128_u64[0] = v53;
  v49[11].n128_u64[1] = v54;
  sub_10012833C(v55, v52);
  sub_100011EE4(&v109, &v105, &qword_10019CBC0, &qword_100152960);
  if (v106)
  {
    v56 = sub_1001283B4(&v105, v103);
    sub_100018C6C(v56, v28, v26);

    sub_10012749C(v103, &v49[14].n128_i64[1]);
    sub_1000034F8(v103);
  }

  else
  {
    sub_100003968();
    sub_100018C6C(v30, v28, v26);
  }

  sub_100011EE4(&v108, &v105, &qword_10019CBC0, &qword_100152960);
  if (v106)
  {
    sub_10001A798(&v105, v103);
    sub_100005334();
    sub_100129270(v103, v57, 0xE700000000000000, v58);
    sub_1000034F8(v103);
  }

  else
  {
    sub_100013D10();
  }

  v59 = sub_100011EE4(v107, &v105, &qword_10019CBC8, &qword_100152968);
  if (v106)
  {
    sub_1001286E0(v59, v60, v61, v62, v63, v64, v65, v66, v99, v100, v101, v102, v103[0], v103[1], v103[2], v103[3], v103[4], v103[5], v103[6], v103[7], v103[8], v103[9], v104[0], v104[1], v104[2], v104[3], v104[4], v104[5]);
    sub_1001271A4(v103, v28 + 40, &v49[19].n128_i64[1]);

    sub_100003E9C(v103, &qword_10019CBD0, &qword_100152970);
  }

  else
  {

    sub_100007588();
  }

  v67 = _swiftEmptyArrayStorage;
  sub_10012869C();
  sub_100128380();
  do
  {
    sub_10001330C();
    sub_100011EE4(v68, v69, v70, v71);
    sub_100128584();
    if (v72)
    {
      sub_1001283B4(v104, v103);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v83 = sub_1000073C4();
        sub_10001A674(v83, v84, v85, v86, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v67 = v87;
      }

      sub_100128528();
      if (v78)
      {
        v88 = sub_100009A90(v77);
        sub_10001A674(v88, v89, v90, v67, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v67 = v73;
      }

      sub_100016900(v73, v74, v75, v76);
    }

    else
    {
      sub_1000111C8();
      sub_100003E9C(v79, v80, v81);
    }

    sub_1000196A4();
  }

  while (!v82);
  swift_setDeallocating();
  v91 = sub_10000373C();
  sub_100018848(v91, v92);
  sub_100009AA4(&v105);

  sub_100003E9C(v107, &qword_10019CBC8, &qword_100152968);
  sub_1000111C8();
  sub_100003E9C(v93, v94, v95);
  sub_1000111C8();
  sub_100003E9C(v96, v97, v98);
  sub_1000034F8(v110);
  sub_10011EED8(&v105);
  sub_100002714();
  sub_100012118(&v105);
  sub_1000069EC();
}

{
  sub_100006A04();
  v96 = v22;
  v97 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = sub_100128618();
  v106[3] = type metadata accessor for Expression(v37, v38, v39, v40);
  v106[4] = &protocol witness table for Expression<A>;
  v106[0] = v36;
  v106[1] = v34;
  v106[2] = v32;
  v41 = *(a21 + 40);

  v42 = v41(v24, a21);
  v44 = v43;
  v105[3] = sub_10002EB80(&qword_10019CBE0, &unk_100152980);
  v105[4] = &protocol witness table for Expression<A>;
  v105[0] = v30;
  v105[1] = v28;
  v105[2] = v26;
  sub_1000294F4(*(a21 + 8));
  sub_1000116F4();
  (*(v45 + 16))();
  sub_100128604();
  v46 = sub_10002EB80(&qword_10019CBB8, &unk_100152950);
  v47 = sub_10012842C(v46);
  v48 = sub_100017FC0(v47, xmmword_100152930);
  sub_100013334(v48, &v47[2]);
  v49 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  v47[6].n128_u64[1] = &protocol witness table for Expression<A>;
  v47[4].n128_u64[1] = v42;
  v47[5].n128_u64[0] = v44;
  v50.n128_f64[0] = sub_100018D54(v49, _swiftEmptyArrayStorage);
  v47[11].n128_u64[0] = v51;
  v47[11].n128_u64[1] = &protocol witness table for Expression<A>;
  sub_10012833C(v52, v50);
  sub_100011EE4(v105, &v101, &qword_10019CBC0, &qword_100152960);
  if (v102)
  {
    sub_1001283B4(&v101, v99);

    sub_10012749C(v99, &v47[14].n128_i64[1]);
    sub_1000034F8(v99);
  }

  else
  {
    sub_100003968();
  }

  sub_100011EE4(&v104, &v101, &qword_10019CBC0, &qword_100152960);
  if (v102)
  {
    sub_10001A798(&v101, v99);
    sub_100005334();
    sub_100129270(v99, v53, 0xE700000000000000, v54);
    sub_1000034F8(v99);
  }

  else
  {
    sub_100013D10();
  }

  v55 = sub_100011EE4(v103, &v101, &qword_10019CBC8, &qword_100152968);
  if (v102)
  {
    sub_1001286E0(v55, v56, v57, v58, v59, v60, v61, v62, v95, v96, v97, v98, v99[0], v99[1], v99[2], v99[3], v99[4], v99[5], v99[6], v99[7], v99[8], v99[9], v100[0], v100[1], v100[2], v100[3], v100[4], v100[5]);
    sub_1001271A4(v99, v26 + 40, &v47[19].n128_i64[1]);

    sub_100003E9C(v99, &qword_10019CBD0, &qword_100152970);
  }

  else
  {

    sub_100007588();
  }

  v63 = _swiftEmptyArrayStorage;
  sub_10012869C();
  sub_100128380();
  do
  {
    sub_10001330C();
    sub_100011EE4(v64, v65, v66, v67);
    sub_100128584();
    if (v68)
    {
      sub_1001283B4(v100, v99);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v79 = sub_1000073C4();
        sub_10001A674(v79, v80, v81, v82, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v63 = v83;
      }

      sub_100128528();
      if (v74)
      {
        v84 = sub_100009A90(v73);
        sub_10001A674(v84, v85, v86, v63, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v63 = v69;
      }

      sub_100016900(v69, v70, v71, v72);
    }

    else
    {
      sub_1000111C8();
      sub_100003E9C(v75, v76, v77);
    }

    sub_1000196A4();
  }

  while (!v78);
  swift_setDeallocating();
  v87 = sub_10000373C();
  sub_100018848(v87, v88);
  sub_100009AA4(&v101);

  sub_100003E9C(v103, &qword_10019CBC8, &qword_100152968);
  sub_1000111C8();
  sub_100003E9C(v89, v90, v91);
  sub_1000111C8();
  sub_100003E9C(v92, v93, v94);
  sub_1000034F8(v106);
  sub_10011EED8(&v101);
  sub_100002714();
  sub_100012118(&v101);
  sub_1000069EC();
}

{
  sub_100006A04();
  v23 = v22;
  v89 = v24;
  v90 = v25;
  v27 = v26;
  v88 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_100128618();
  v35 = type metadata accessor for Optional();
  sub_100002944();
  v91 = v36;
  sub_100003A54();
  __chkstk_darwin(v37);
  v101[3] = sub_1001285B4(v38, v39, v40, v41);
  v101[4] = &protocol witness table for Expression<A>;
  v101[0] = v34;
  v101[1] = v32;
  v101[2] = v30;
  v42 = *(a21 + 40);

  v43 = v42(v23, a21);
  v92 = v44;
  v93 = v43;
  if (v27)
  {
    v45 = sub_10002EB80(&qword_10019CBD8, &qword_100152978);
    v46 = &protocol witness table for Expression<A>;
    v47 = v88;
    v48 = v89;
    v49 = v89;
  }

  else
  {
    v48 = v89;
    v47 = 0;
    v49 = 0;
    v45 = 0;
    v46 = 0;
  }

  v100[0] = v47;
  v100[1] = v27;
  v100[2] = v49;
  v100[3] = v45;
  v100[4] = v46;
  (*(v91 + 16))(v21, v90, v35);
  sub_100009C04(v21);
  if (v50)
  {
    v51 = sub_100016D84();
    sub_100018C6C(v51, v52, v48);
    (*(v91 + 8))(v21, v35);
    *&v53 = sub_100013200();
    v99[0] = v53;
    v99[1] = v53;
  }

  else
  {
    sub_1001287E8(*(a21 + 8));
    sub_1000116F4();
    (*(v54 + 32))();
    v55 = sub_100016D84();
    sub_100018C6C(v55, v56, v48);
  }

  memset(v98, 0, sizeof(v98));
  v57 = sub_10002EB80(&qword_10019CBB8, &unk_100152950);
  v58 = sub_10012842C(v57);
  v59 = sub_100017FC0(v58, xmmword_100152930);
  sub_100013334(v59, v58 + 32);
  v60 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  *(v58 + 104) = &protocol witness table for Expression<A>;
  *(v58 + 72) = v93;
  *(v58 + 80) = v92;
  v61.n128_f64[0] = sub_100018D54(v60, _swiftEmptyArrayStorage);
  sub_100128664(v61);
  sub_100011EE4(v100, v97, &qword_10019CBC0, &qword_100152960);
  if (*(&v97[1] + 1))
  {
    sub_10001A798(v97, v94);

    sub_10012749C(v94, (v58 + 232));
    sub_1000034F8(v94);
  }

  else
  {
    sub_100003968();
  }

  sub_100011EE4(v99, v97, &qword_10019CBC0, &qword_100152960);
  if (*(&v97[1] + 1))
  {
    sub_10001A798(v97, v94);
    sub_100005334();
    sub_100129270(v94, v62, 0xE700000000000000, v63);
    sub_1000034F8(v94);
  }

  else
  {
    sub_100013D10();
  }

  sub_100011EE4(v98, v97, &qword_10019CBC8, &qword_100152968);
  if (*(&v97[1] + 1))
  {
    memcpy(v94, v97, sizeof(v94));
    sub_1001271A4(v94, &v94[2] + 8, (v58 + 312));

    sub_100003E9C(v94, &qword_10019CBD0, &qword_100152970);
  }

  else
  {

    sub_100007588();
  }

  v64 = _swiftEmptyArrayStorage;
  v65 = 32;
  *(v58 + 384) = 0;
  *(v58 + 352) = 0u;
  *(v58 + 368) = 0u;
  do
  {
    sub_100011EE4(v58 + v65, v97, &qword_10019CBC0, &qword_100152960);
    v95[0] = v97[0];
    v95[1] = v97[1];
    v96 = *&v97[2];
    if (*(&v97[1] + 1))
    {
      sub_1001283B4(v95, v94);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v71 = sub_1000073C4();
        sub_10001A674(v71, v72, v73, v74, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v64 = v75;
      }

      v67 = v64[2];
      v66 = v64[3];
      if (v67 >= v66 >> 1)
      {
        v76 = sub_100009A90(v66);
        sub_10001A674(v76, v77, v78, v64, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v64 = v79;
      }

      v64[2] = v67 + 1;
      sub_10001A798(v94, &v64[5 * v67 + 4]);
    }

    else
    {
      sub_1000113C0();
      sub_100003E9C(v68, v69, v70);
    }

    v65 += 40;
  }

  while (v65 != 392);
  swift_setDeallocating();
  v80 = sub_10000373C();
  sub_100018848(v80, v81);
  sub_100009AA4(v97);

  sub_100003E9C(v98, &qword_10019CBC8, &qword_100152968);
  sub_1000111C8();
  sub_100003E9C(v82, v83, v84);
  sub_1000111C8();
  sub_100003E9C(v85, v86, v87);
  sub_1000034F8(v101);
  sub_10011EED8(v97);
  sub_1000064BC();
  sub_1000034F8(v97);
  sub_10001317C();
  sub_1000069EC();
}

uint64_t sub_10011E964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, unint64_t a12)
{
  v20 = a4;
  sub_10002EB80(&qword_10019CBB8, &unk_100152950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100152930;
  sub_100013334(a1, inited + 32);
  v22 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  v23 = v22;
  *(inited + 104) = &protocol witness table for Expression<A>;
  *(inited + 72) = a2;
  *(inited + 80) = a3;
  *(inited + 88) = _swiftEmptyArrayStorage;
  *(inited + 96) = v22;
  if (v20 == 2)
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
  }

  else
  {
    v25 = 0x8000000100158D30;
    v24 = 0x205952414D495250;
    if (a4)
    {
      v24 = 0xD000000000000019;
    }

    else
    {
      v25 = 0xEB0000000059454BLL;
    }

    v28 = &protocol witness table for Expression<A>;
    v26 = _swiftEmptyArrayStorage;
    v27 = v22;
  }

  *(inited + 112) = v24;
  *(inited + 120) = v25;
  *(inited + 128) = v26;
  *(inited + 136) = v27;
  *(inited + 144) = v28;
  if (a5)
  {
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
  }

  else
  {
    v30 = 0xE800000000000000;
    v29 = 0x4C4C554E20544F4ELL;
    v31 = _swiftEmptyArrayStorage;
    v32 = v22;
    v33 = &protocol witness table for Expression<A>;
  }

  *(inited + 152) = v29;
  *(inited + 160) = v30;
  *(inited + 168) = v31;
  *(inited + 176) = v32;
  *(inited + 184) = v33;
  if (a6)
  {
    v34 = xmmword_100152940;
    v35 = _swiftEmptyArrayStorage;
    v36 = &protocol witness table for Expression<A>;
    v37 = v22;
  }

  else
  {
    v37 = 0;
    v36 = 0;
    v35 = 0;
    v34 = 0uLL;
  }

  *(inited + 216) = v37;
  *(inited + 224) = v36;
  *(inited + 192) = v34;
  *(inited + 208) = v35;
  sub_100011EE4(a7, __src, &qword_10019CBC0, &qword_100152960);
  if (*(&__src[1] + 1))
  {
    sub_10001A798(__src, __dst);

    sub_10012749C(__dst, (inited + 232));
    sub_1000034F8(__dst);
  }

  else
  {
    *(inited + 264) = 0;
    *(inited + 248) = 0u;
    *(inited + 232) = 0u;
  }

  sub_100011EE4(a8, __src, &qword_10019CBC0, &qword_100152960);
  if (*(&__src[1] + 1))
  {
    sub_10001A798(__src, __dst);
    sub_100129270(__dst, 0x544C5541464544, 0xE700000000000000, (inited + 272));
    sub_1000034F8(__dst);
  }

  else
  {
    *(inited + 304) = 0;
    *(inited + 272) = 0u;
    *(inited + 288) = 0u;
  }

  sub_100011EE4(a10, __src, &qword_10019CBC8, &qword_100152968);
  if (*(&__src[1] + 1))
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_1001271A4(__dst, &__dst[2] + 8, (inited + 312));
    sub_100003E9C(__dst, &qword_10019CBD0, &qword_100152970);
  }

  else
  {
    *(inited + 344) = 0;
    *(inited + 312) = 0u;
    *(inited + 328) = 0u;
  }

  if (a12 == 3)
  {
    *(inited + 384) = 0;
    *(inited + 352) = 0u;
    *(inited + 368) = 0u;
  }

  else
  {
    sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
    v38 = swift_initStackObject();
    *(v38 + 16) = xmmword_10014BC40;
    *(v38 + 32) = 0x4554414C4C4F43;
    *(v38 + 40) = 0xE700000000000000;
    *(v38 + 48) = _swiftEmptyArrayStorage;
    *(v38 + 56) = v23;
    *(v38 + 96) = &type metadata for Collation;
    *(v38 + 104) = &protocol witness table for Collation;
    *(v38 + 64) = &protocol witness table for Expression<A>;
    *(v38 + 72) = a11;
    *(v38 + 80) = a12;
    sub_100127814(a11, a12);
    sub_100013640(v38, (inited + 352));
    swift_setDeallocating();
    sub_100018848(&qword_10019B238, &unk_100152B50);
  }

  v39 = _swiftEmptyArrayStorage;
  for (i = 32; i != 392; i += 40)
  {
    sub_100011EE4(inited + i, __src, &qword_10019CBC0, &qword_100152960);
    v48[0] = __src[0];
    v48[1] = __src[1];
    v49 = *&__src[2];
    if (*(&__src[1] + 1))
    {
      sub_10001A798(v48, __dst);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10001A674(0, v39[2] + 1, 1, v39, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v39 = v43;
      }

      v42 = v39[2];
      v41 = v39[3];
      if (v42 >= v41 >> 1)
      {
        sub_10001A674(v41 > 1, v42 + 1, 1, v39, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v39 = v44;
      }

      v39[2] = v42 + 1;
      sub_10001A798(__dst, &v39[5 * v42 + 4]);
    }

    else
    {
      sub_100003E9C(v48, &qword_10019CBC0, &qword_100152960);
    }
  }

  swift_setDeallocating();
  sub_100018848(&qword_10019CBC0, &qword_100152960);
  sub_100013640(v39, a9);
}

uint64_t sub_10011EED8(uint64_t a1)
{
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014ECA0;
  v3 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = 0x4154205245544C41;
  *(inited + 40) = 0xEB00000000454C42;
  *(inited + 48) = _swiftEmptyArrayStorage;
  *(inited + 56) = v3;
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v7 = *(v1 + 32);
  v6 = *(v1 + 40);
  v8 = *(v1 + 64);
  swift_bridgeObjectRetain_n();

  if (v6)
  {

    v5 = v7;
    v4 = v6;
  }

  sub_100019760(v5, v4, v8 & 1, (inited + 72));

  *(inited + 136) = v3;
  *(inited + 144) = &protocol witness table for Expression<A>;
  *(inited + 112) = 0x554C4F4320444441;
  *(inited + 120) = 0xEA00000000004E4DLL;
  *(inited + 128) = _swiftEmptyArrayStorage;
  sub_100013334(a1, inited + 152);
  sub_100013640(inited, v12);
  swift_setDeallocating();
  sub_100018848(&qword_10019B238, &unk_100152B50);
  sub_1000034B4(v12, v12[3]);
  countAndFlagsBits = Expressible.asSQL()()._countAndFlagsBits;
  sub_1000034F8(v12);
  return countAndFlagsBits;
}

void Table.addColumn<A>(_:check:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 a27, __int128 a28, uint64_t a29, uint64_t a30, __int128 a31, __int128 a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, __int128 a39, __int128 a40, __int128 a41, __int128 a42, __int128 a43, __int128 a44, __int128 a45)
{
  sub_100006A04();
  a19 = v46;
  a20 = v47;
  sub_100023388();
  a14 = v48;
  a15 = v45;
  v50 = v49;
  a10 = v51;
  a11 = v52;
  a12 = v53;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v60 = *(v46 + 16);
  sub_100128618();
  v61 = type metadata accessor for Optional();
  sub_100002944();
  a9 = v62;
  sub_100003A54();
  __chkstk_darwin(v63);
  v65 = &a9 - v64;
  *(v46 - 112) = sub_100021344(v66, v67, v68, v69);
  *(v46 - 104) = &protocol witness table for Expression<A>;
  *(v46 - 136) = v59;
  *(v46 - 128) = v57;
  *(v46 - 120) = v55;
  v70 = *(v60 + 40);

  v71 = v60;
  v72 = v70(v50, v60);
  v74 = a10;
  v73 = a11;
  a13 = v72;
  v76 = v75;
  *(v46 - 152) = sub_10002EB80(&qword_10019CBE0, &unk_100152980);
  *(v46 - 144) = &protocol witness table for Expression<A>;
  *(v46 - 176) = a12;
  *(v46 - 168) = v74;
  *(v46 - 160) = v73;
  v77 = a9;
  (*(a9 + 16))(v65, a14, v61);
  sub_100009C04(v65);
  if (v78)
  {
    v79 = *(v77 + 8);

    v79(v65, v61);
    *&v80 = sub_100013200();
    a44 = v80;
    a45 = v80;
  }

  else
  {
    sub_1001287E8(*(v71 + 8));
    sub_1000116F4();
    (*(v81 + 32))();
  }

  a42 = 0u;
  a43 = 0u;
  a40 = 0u;
  a41 = 0u;
  a39 = 0u;
  v82 = sub_10002EB80(&qword_10019CBB8, &unk_100152950);
  v83 = sub_10012842C(v82);
  v84 = sub_100017FC0(v83, xmmword_100152930);
  sub_100013334(v84, v83 + 32);
  v85 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  *(v83 + 104) = &protocol witness table for Expression<A>;
  *(v83 + 72) = a13;
  *(v83 + 80) = v76;
  v86.n128_f64[0] = sub_100018D54(v85, _swiftEmptyArrayStorage);
  sub_100128664(v86);
  sub_100011EE4(v46 - 176, &a31, &qword_10019CBC0, &qword_100152960);
  if (*(&a32 + 1))
  {
    sub_10001A798(&a31, &a17);

    sub_10012749C(&a17, (v83 + 232));
    sub_1000034F8(&a17);
  }

  else
  {
    sub_100003968();
  }

  sub_100011EE4(v46 - 224, &a31, &qword_10019CBC0, &qword_100152960);
  if (*(&a32 + 1))
  {
    sub_10001A798(&a31, &a17);
    sub_100005334();
    sub_100129270(&a17, v87, 0xE700000000000000, v88);
    sub_1000034F8(&a17);
  }

  else
  {
    sub_100013D10();
  }

  sub_100011EE4(&a39, &a31, &qword_10019CBC8, &qword_100152968);
  if (*(&a32 + 1))
  {
    memcpy(&a17, &a31, 0x50uLL);
    sub_1001271A4(&a17, &a22, (v83 + 312));

    sub_100003E9C(&a17, &qword_10019CBD0, &qword_100152970);
  }

  else
  {

    sub_100007588();
  }

  v89 = _swiftEmptyArrayStorage;
  v90 = 32;
  *(v83 + 384) = 0;
  *(v83 + 352) = 0u;
  *(v83 + 368) = 0u;
  do
  {
    sub_100011EE4(v83 + v90, &a31, &qword_10019CBC0, &qword_100152960);
    a27 = a31;
    a28 = a32;
    a29 = a33;
    if (*(&a32 + 1))
    {
      sub_1001283B4(&a27, &a17);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v96 = sub_1000073C4();
        sub_10001A674(v96, v97, v98, v99, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v89 = v100;
      }

      v92 = v89[2];
      v91 = v89[3];
      if (v92 >= v91 >> 1)
      {
        sub_100005150(v91);
        sub_10000274C();
        sub_10001A674(v101, v102, v103, v104, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v89 = v105;
      }

      v89[2] = v92 + 1;
      sub_10001A798(&a17, &v89[5 * v92 + 4]);
    }

    else
    {
      sub_1000113C0();
      sub_100003E9C(v93, v94, v95);
    }

    v90 += 40;
  }

  while (v90 != 392);
  swift_setDeallocating();
  v106 = sub_10000373C();
  sub_100018848(v106, v107);
  sub_100009AA4(&a31);

  sub_100003E9C(&a39, &qword_10019CBC8, &qword_100152968);
  sub_1000111C8();
  sub_100003E9C(v108, v109, v110);
  sub_1000111C8();
  sub_100003E9C(v111, v112, v113);
  sub_1000034F8((v46 - 136));
  sub_10011EED8(&a31);
  sub_1000064BC();
  sub_1000034F8(&a31);
  sub_10001317C();
  sub_1000069EC();
}

void Table.addColumn<A>(_:unique:check:references:_:)()
{
  sub_100006A04();
  v181 = v1;
  v182 = v2;
  sub_100023388();
  v159 = v0;
  v166 = v3;
  v131 = v4;
  v6 = v5;
  HIDWORD(v138) = v7;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v145 = v1[3];
  v124 = v1[2];
  v14 = v1[6];
  v152 = v1[4];
  v15 = sub_100128300();
  v19 = type metadata accessor for Expression(v15, v16, v17, v18);
  *(v1 - 14) = v19;
  *(v1 - 13) = &protocol witness table for Expression<A>;
  *(v1 - 17) = v13;
  *(v1 - 16) = v11;
  *(v1 - 15) = v9;
  v20 = *(v14 + 40);

  v21 = sub_10001317C();
  v22 = v20(v21);
  v24 = v23;
  if (v6)
  {
    v25 = sub_10002EB80(&qword_10019CBD8, &qword_100152978);
    v26 = &protocol witness table for Expression<A>;
  }

  else
  {
    v25 = sub_100002E28();
  }

  sub_100018B04(v25, v26);
  *&v27 = sub_100013200();
  v204 = v27;
  v205 = v27;
  sub_100013334(v131, v203);
  v203[8] = v19;
  v203[9] = &protocol witness table for Expression<A>;
  v28 = v145;
  v203[5] = v124;
  v203[6] = v145;
  v203[7] = v152;
  v29 = sub_10002EB80(&qword_10019CBB8, &unk_100152950);
  v30 = sub_10012842C(v29);
  v31 = sub_100017FC0(v30, xmmword_100152930);
  sub_100013334(v31, v30 + 32);
  sub_10002EB80(&qword_10019CA28, &unk_100152718);
  sub_10000EEFC();
  *(v30 + 104) = &protocol witness table for Expression<A>;
  *(v30 + 88) = _swiftEmptyArrayStorage;
  *(v30 + 96) = v32;
  *(v30 + 176) = v32;
  *(v30 + 184) = &protocol witness table for Expression<A>;
  sub_10000D364();
  *(v30 + 72) = v22;
  *(v30 + 80) = v24;
  *(v30 + 112) = v34;
  *(v30 + 128) = v34;
  if ((v138 & 0x100000000) != 0)
  {
    v34 = xmmword_100152940;
    v33 = _swiftEmptyArrayStorage;
  }

  sub_100018BE4(v33, v34);
  v41 = sub_100128770(v35, v36, &qword_10019CBC0, &qword_100152960, v37, v38, v39, v40, v124, v131, v138, v145, v152, v159, v166, v173, v180, *(&v180 + 1), v181, v182, v183, v184, v185, v186, v187, v188, v189, *(&v189 + 1), v190, v191, v192, v193);
  if (v196)
  {
    sub_100005D4C(v41, v42, v43, v44, v45, v46, v47, v48, v125, v132, v139, v146, v153, v160, v167, v174, v180, *(&v180 + 1), v181, v182, v183, v184, v185, v186, v187, v188, v189, *(&v189 + 1), v190, v191, v192, v193, v194);
    v49 = sub_100016D84();
    sub_100018C6C(v49, v50, v168);

    sub_100128404(v51, v52, v53, v54, v55, v56, v57, v58, v126, v133, v140, v147, v154, v161, v168, v175);
    v59 = sub_1000034F8(&v180);
  }

  else
  {
    sub_100003968();
    v65 = sub_100016D84();
    sub_100018C6C(v65, v66, v167);
  }

  v67 = sub_1001287D0(v59, v60, &qword_10019CBC0, &qword_100152960, v61, v62, v63, v64, v125, v132, v139, v146, v153, v160, v167, v174, v180, *(&v180 + 1), v181, v182, v183, v184, v185, v186, v187, v188, v189, *(&v189 + 1), v190, v191, v192, v193);
  if (v196)
  {
    sub_100005D4C(v67, v68, v69, v70, v71, v72, v73, v74, v127, v134, v141, v148, v155, v162, v169, v176, v180, *(&v180 + 1), v181, v182, v183, v184, v185, v186, v187, v188, v189, *(&v189 + 1), v190, v191, v192, v193, v194);
    sub_100005334();
    sub_100128758(v75, v76, v128, v135, v142, v149, v156, v163, v170, v177);
    v77 = sub_1000034F8(&v180);
  }

  else
  {
    v83 = sub_100013D10();
  }

  v84 = sub_100128740(v77, v78, &qword_10019CBC8, &qword_100152968, v79, v80, v81, v82, v127, v134, v141, v148, v155, v162, v169, v176, v180, *(&v180 + 1), v181, v182, v183, v184, v185, v186, v187, v188, v189, *(&v189 + 1), v190, v191, v192, v193, v194, *(&v194 + 1), v195, v196, v197, v198, v199, v200, v201, v202, v83);
  if (v196)
  {
    v92 = sub_1000129D4(v84, v85, v86, v87, v88, v89, v90, v91, v129, v136, v143, v150, v157, v164, v171, v178, v180, *(&v180 + 1), v181, v182, v183, v184, v185, v186, v187, v188, v189, *(&v189 + 1), v190, v191, v192, v193);
    sub_1001283E8(v92, v93, v94, v95, v96, v97, v98, v99, v130, v137, v144, v151, v158, v165, v172, v179);

    sub_100003E9C(&v180, &qword_10019CBD0, &qword_100152970);
  }

  else
  {

    sub_100018530();
  }

  v100 = _swiftEmptyArrayStorage;
  sub_10012869C();
  *(v30 + 352) = 0u;
  *(v30 + 368) = 0u;
  do
  {
    sub_10001330C();
    sub_100011EE4(v101, v102, v103, v104);
    sub_100018908();
    if (v105)
    {
      sub_1001283B4(&v189, &v180);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v112 = sub_1000073C4();
        sub_10001A674(v112, v113, v114, v115, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v100 = v116;
      }

      sub_100128518();
      if (v107)
      {
        sub_100005150(v106);
        sub_10000274C();
        sub_10001A674(v117, v118, v119, v120, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v100 = v121;
      }

      v100[2] = v30 + 312;
      sub_1000208B8(&v100[5 * v28], v129, v136, v143, v150, v157, v164, v171, v178, v180);
    }

    else
    {
      sub_1000111C8();
      sub_100003E9C(v108, v109, v110);
    }

    sub_1000196A4();
  }

  while (!v111);
  swift_setDeallocating();
  sub_100128818();
  sub_100009AA4(&v194);

  sub_10012848C();
  sub_100003E9C(v203, &qword_10019CBC8, &qword_100152968);
  v122 = sub_100128420();
  sub_100003E9C(v122, v123, &qword_100152960);
  sub_1000034F8(v1 - 17);
  sub_10011EED8(&v194);
  sub_100002714();
  sub_100012118(&v194);
  sub_1000069EC();
}

{
  sub_100006A04();
  v178 = v1;
  v179 = v2;
  sub_100023388();
  v163 = v0;
  v142 = v3;
  v149 = v4;
  v121 = v5;
  v135 = v6;
  HIDWORD(v156) = v7;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v1[3];
  v128 = v1[2];
  v15 = v1[5];
  v16 = v1[6];
  v17 = v1[4];
  v18 = sub_100128300();
  v22 = type metadata accessor for Expression(v18, v19, v20, v21);
  *(v1 - 14) = v22;
  *(v1 - 13) = &protocol witness table for Expression<A>;
  *(v1 - 17) = v13;
  *(v1 - 16) = v11;
  *(v1 - 15) = v9;
  v23 = *(v16 + 40);

  v24 = v16;
  v25 = v121;
  v26 = v23(v15, v24);
  v28 = v27;
  *(v1 - 19) = sub_10002EB80(&qword_10019CBE0, &unk_100152980);
  *(v1 - 18) = &protocol witness table for Expression<A>;
  *(v1 - 22) = v135;
  *(v1 - 21) = v121;
  *(v1 - 20) = v142;
  *&v29 = sub_100013200();
  v201 = v29;
  v202 = v29;
  sub_100013334(v149, v200);
  v200[8] = v22;
  v200[9] = &protocol witness table for Expression<A>;
  v200[5] = v128;
  v200[6] = v14;
  v200[7] = v17;
  v30 = sub_10002EB80(&qword_10019CBB8, &unk_100152950);
  v31 = sub_10012842C(v30);
  v32 = sub_100017FC0(v31, xmmword_100152930);
  sub_100013334(v32, v31 + 32);
  sub_10002EB80(&qword_10019CA28, &unk_100152718);
  sub_10000EEFC();
  *(v31 + 104) = &protocol witness table for Expression<A>;
  *(v31 + 88) = _swiftEmptyArrayStorage;
  *(v31 + 96) = v33;
  *(v31 + 176) = v33;
  *(v31 + 184) = &protocol witness table for Expression<A>;
  sub_10000D364();
  *(v31 + 72) = v26;
  *(v31 + 80) = v28;
  *(v31 + 112) = v35;
  *(v31 + 128) = v35;
  if ((v156 & 0x100000000) != 0)
  {
    v35 = xmmword_100152940;
    v34 = _swiftEmptyArrayStorage;
  }

  sub_100018BE4(v34, v35);
  v42 = sub_100128770(v36, v37, &qword_10019CBC0, &qword_100152960, v38, v39, v40, v41, v121, v128, v135, v142, v149, v156, v163, v170, v177, *(&v177 + 1), v178, v179, v180, v181, v182, v183, v184, v185, v186, *(&v186 + 1), v187, v188, v189, v190);
  if (v193)
  {
    sub_100005D4C(v42, v43, v44, v45, v46, v47, v48, v49, v122, v129, v136, v143, v150, v157, v164, v171, v177, *(&v177 + 1), v178, v179, v180, v181, v182, v183, v184, v185, v186, *(&v186 + 1), v187, v188, v189, v190, v191);

    sub_100128404(v50, v51, v52, v53, v54, v55, v56, v57, v123, v130, v137, v144, v151, v158, v165, v172);
    v58 = sub_1000034F8(&v177);
  }

  else
  {
    sub_100003968();
  }

  v64 = sub_1001287D0(v58, v59, &qword_10019CBC0, &qword_100152960, v60, v61, v62, v63, v122, v129, v136, v143, v150, v157, v164, v171, v177, *(&v177 + 1), v178, v179, v180, v181, v182, v183, v184, v185, v186, *(&v186 + 1), v187, v188, v189, v190);
  if (v193)
  {
    sub_100005D4C(v64, v65, v66, v67, v68, v69, v70, v71, v124, v131, v138, v145, v152, v159, v166, v173, v177, *(&v177 + 1), v178, v179, v180, v181, v182, v183, v184, v185, v186, *(&v186 + 1), v187, v188, v189, v190, v191);
    sub_100005334();
    sub_100128758(v72, v73, v125, v132, v139, v146, v153, v160, v167, v174);
    v74 = sub_1000034F8(&v177);
  }

  else
  {
    v80 = sub_100013D10();
  }

  v81 = sub_100128740(v74, v75, &qword_10019CBC8, &qword_100152968, v76, v77, v78, v79, v124, v131, v138, v145, v152, v159, v166, v173, v177, *(&v177 + 1), v178, v179, v180, v181, v182, v183, v184, v185, v186, *(&v186 + 1), v187, v188, v189, v190, v191, *(&v191 + 1), v192, v193, v194, v195, v196, v197, v198, v199, v80);
  if (v193)
  {
    v89 = sub_1000129D4(v81, v82, v83, v84, v85, v86, v87, v88, v126, v133, v140, v147, v154, v161, v168, v175, v177, *(&v177 + 1), v178, v179, v180, v181, v182, v183, v184, v185, v186, *(&v186 + 1), v187, v188, v189, v190);
    sub_1001283E8(v89, v90, v91, v92, v93, v94, v95, v96, v127, v134, v141, v148, v155, v162, v169, v176);

    sub_100003E9C(&v177, &qword_10019CBD0, &qword_100152970);
  }

  else
  {

    sub_100018530();
  }

  v97 = _swiftEmptyArrayStorage;
  v98 = 32;
  *(v31 + 384) = 0;
  sub_100128380();
  do
  {
    sub_10001330C();
    sub_100011EE4(v99, v100, v101, v102);
    sub_100018908();
    if (v103)
    {
      sub_1001283B4(&v186, &v177);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v109 = sub_1000073C4();
        sub_10001A674(v109, v110, v111, v112, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v97 = v113;
      }

      sub_100128518();
      if (v105)
      {
        sub_100005150(v104);
        sub_10000274C();
        sub_10001A674(v114, v115, v116, v117, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v97 = v118;
      }

      v97[2] = v31 + 312;
      sub_1000208B8(v97 + v25 * v14, v126, v133, v140, v147, v154, v161, v168, v175, v177);
    }

    else
    {
      sub_1000111C8();
      sub_100003E9C(v106, v107, v108);
    }

    v98 += 40;
  }

  while (v98 != 392);
  swift_setDeallocating();
  sub_100128818();
  sub_100009AA4(&v191);

  sub_10012848C();
  sub_100003E9C(v200, &qword_10019CBC8, &qword_100152968);
  v119 = sub_100128420();
  sub_100003E9C(v119, v120, &qword_100152960);
  sub_1000034F8(v1 - 17);
  sub_10011EED8(&v191);
  sub_100002714();
  sub_100012118(&v191);
  sub_1000069EC();
}

{
  sub_100006A04();
  v182 = v1;
  v183 = v2;
  sub_100023388();
  v167 = v0;
  v139 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  HIDWORD(v146) = v10;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v160 = v1[4];
  v153 = v1[3];
  v132 = v1[2];
  v17 = v1[6];
  v18 = sub_100128560();
  *(v1 - 14) = sub_1000048F8(v18, v19, v20, v21);
  *(v1 - 13) = &protocol witness table for Expression<A>;
  *(v1 - 17) = v16;
  *(v1 - 16) = v14;
  *(v1 - 15) = v12;
  v22 = *(v17 + 40);

  v23 = sub_10001317C();
  v24 = v22(v23);
  v26 = v25;
  if (v7)
  {
    v27 = sub_10002EB80(&qword_10019CBD8, &qword_100152978);
    v28 = &protocol witness table for Expression<A>;
  }

  else
  {
    v27 = sub_100002E28();
  }

  sub_100018B04(v27, v28);
  *&v29 = sub_100013200();
  v205 = v29;
  v206 = v29;
  sub_100013334(v139, v204);
  v30 = sub_100128300();
  v204[8] = type metadata accessor for Expression(v30, v31, v32, v33);
  v204[9] = &protocol witness table for Expression<A>;
  v204[5] = v132;
  v204[6] = v153;
  v204[7] = v160;
  v34 = sub_10002EB80(&qword_10019CBB8, &unk_100152950);
  v35 = sub_10012842C(v34);
  v36 = sub_100017FC0(v35, xmmword_100152930);
  sub_100013334(v36, v35 + 32);
  sub_10002EB80(&qword_10019CA28, &unk_100152718);
  sub_10000EEFC();
  v38 = 0;
  *(v35 + 104) = &protocol witness table for Expression<A>;
  *(v35 + 88) = _swiftEmptyArrayStorage;
  *(v35 + 96) = v39;
  *(v35 + 72) = v24;
  *(v35 + 80) = v26;
  *(v35 + 112) = v37;
  *(v35 + 128) = v37;
  *(v35 + 144) = v37;
  *(v35 + 160) = v37;
  *(v35 + 176) = v37;
  if ((v146 & 0x100000000) != 0)
  {
    v37 = xmmword_100152940;
    v38 = _swiftEmptyArrayStorage;
  }

  sub_100018BE4(v38, v37);
  v46 = sub_100128770(v40, v41, &qword_10019CBC0, &qword_100152960, v42, v43, v44, v45, v125, v132, v139, v146, v153, v160, v167, v174, v181, *(&v181 + 1), v182, v183, v184, v185, v186, v187, v188, v189, v190, *(&v190 + 1), v191, v192, v193, v194);
  if (v197)
  {
    sub_100005D4C(v46, v47, v48, v49, v50, v51, v52, v53, v126, v133, v140, v147, v154, v161, v168, v175, v181, *(&v181 + 1), v182, v183, v184, v185, v186, v187, v188, v189, v190, *(&v190 + 1), v191, v192, v193, v194, v195);
    sub_100018C6C(v9, v7, v5);

    sub_100128404(v54, v55, v56, v57, v58, v59, v60, v61, v127, v134, v141, v148, v155, v162, v169, v176);
    v62 = sub_1000034F8(&v181);
  }

  else
  {
    sub_100003968();
    sub_100018C6C(v9, v7, v5);
  }

  v68 = sub_1001287D0(v62, v63, &qword_10019CBC0, &qword_100152960, v64, v65, v66, v67, v126, v133, v140, v147, v154, v161, v168, v175, v181, *(&v181 + 1), v182, v183, v184, v185, v186, v187, v188, v189, v190, *(&v190 + 1), v191, v192, v193, v194);
  if (v197)
  {
    sub_100005D4C(v68, v69, v70, v71, v72, v73, v74, v75, v128, v135, v142, v149, v156, v163, v170, v177, v181, *(&v181 + 1), v182, v183, v184, v185, v186, v187, v188, v189, v190, *(&v190 + 1), v191, v192, v193, v194, v195);
    sub_100005334();
    sub_100128758(v76, v77, v129, v136, v143, v150, v157, v164, v171, v178);
    v78 = sub_1000034F8(&v181);
  }

  else
  {
    v84 = sub_100013D10();
  }

  v85 = sub_100128740(v78, v79, &qword_10019CBC8, &qword_100152968, v80, v81, v82, v83, v128, v135, v142, v149, v156, v163, v170, v177, v181, *(&v181 + 1), v182, v183, v184, v185, v186, v187, v188, v189, v190, *(&v190 + 1), v191, v192, v193, v194, v195, *(&v195 + 1), v196, v197, v198, v199, v200, v201, v202, v203, v84);
  if (v197)
  {
    v93 = sub_1000129D4(v85, v86, v87, v88, v89, v90, v91, v92, v130, v137, v144, v151, v158, v165, v172, v179, v181, *(&v181 + 1), v182, v183, v184, v185, v186, v187, v188, v189, v190, *(&v190 + 1), v191, v192, v193, v194);
    sub_1001283E8(v93, v94, v95, v96, v97, v98, v99, v100, v131, v138, v145, v152, v159, v166, v173, v180);

    sub_100003E9C(&v181, &qword_10019CBD0, &qword_100152970);
  }

  else
  {

    sub_100018530();
  }

  v101 = _swiftEmptyArrayStorage;
  sub_10012869C();
  *(v35 + 352) = 0u;
  *(v35 + 368) = 0u;
  do
  {
    sub_10001330C();
    sub_100011EE4(v102, v103, v104, v105);
    sub_100018908();
    if (v106)
    {
      sub_1001283B4(&v190, &v181);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v113 = sub_1000073C4();
        sub_10001A674(v113, v114, v115, v116, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v101 = v117;
      }

      v108 = v101[2];
      v107 = v101[3];
      if (v108 >= v107 >> 1)
      {
        sub_100005150(v107);
        sub_10000274C();
        sub_10001A674(v118, v119, v120, v121, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v101 = v122;
      }

      v101[2] = v108 + 1;
      sub_1000208B8(&v101[5 * v108], v130, v137, v144, v151, v158, v165, v172, v179, v181);
    }

    else
    {
      sub_1000111C8();
      sub_100003E9C(v109, v110, v111);
    }

    sub_1000196A4();
  }

  while (!v112);
  swift_setDeallocating();
  sub_100128818();
  sub_100009AA4(&v195);

  sub_10012848C();
  sub_100003E9C(v204, &qword_10019CBC8, &qword_100152968);
  v123 = sub_100128420();
  sub_100003E9C(v123, v124, &qword_100152960);
  sub_1000034F8(v1 - 17);
  sub_10011EED8(&v195);
  sub_100002714();
  sub_100012118(&v195);
  sub_1000069EC();
}

{
  sub_100006A04();
  v180 = v1;
  v181 = v2;
  sub_100023388();
  v165 = v0;
  v151 = v3;
  v130 = v4;
  v137 = v5;
  v7 = v6;
  HIDWORD(v158) = v8;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = v1[3];
  v144 = v1[2];
  v16 = v1[6];
  v17 = v1[4];
  v18 = sub_100128560();
  *(v1 - 14) = sub_1000048F8(v18, v19, v20, v21);
  *(v1 - 13) = &protocol witness table for Expression<A>;
  *(v1 - 17) = v14;
  *(v1 - 16) = v12;
  *(v1 - 15) = v10;
  v22 = *(v16 + 40);

  v23 = sub_10001317C();
  v24 = v22(v23);
  v26 = v25;
  *(v1 - 19) = sub_10002EB80(&qword_10019CBE0, &unk_100152980);
  *(v1 - 18) = &protocol witness table for Expression<A>;
  *(v1 - 22) = v130;
  *(v1 - 21) = v7;
  *(v1 - 20) = v137;
  *&v27 = sub_100013200();
  v203 = v27;
  v204 = v27;
  sub_100013334(v151, v202);
  v28 = sub_100128300();
  v202[8] = type metadata accessor for Expression(v28, v29, v30, v31);
  v202[9] = &protocol witness table for Expression<A>;
  v202[5] = v144;
  v202[6] = v15;
  v202[7] = v17;
  v32 = sub_10002EB80(&qword_10019CBB8, &unk_100152950);
  v33 = sub_10012842C(v32);
  v34 = sub_100017FC0(v33, xmmword_100152930);
  sub_100013334(v34, v33 + 32);
  sub_10002EB80(&qword_10019CA28, &unk_100152718);
  sub_10000EEFC();
  v36 = 0;
  *(v33 + 104) = &protocol witness table for Expression<A>;
  *(v33 + 88) = _swiftEmptyArrayStorage;
  *(v33 + 96) = v37;
  *(v33 + 72) = v24;
  *(v33 + 80) = v26;
  *(v33 + 112) = v35;
  *(v33 + 128) = v35;
  *(v33 + 144) = v35;
  *(v33 + 160) = v35;
  *(v33 + 176) = v35;
  if ((v158 & 0x100000000) != 0)
  {
    v35 = xmmword_100152940;
    v36 = _swiftEmptyArrayStorage;
  }

  sub_100018BE4(v36, v35);
  v44 = sub_100128770(v38, v39, &qword_10019CBC0, &qword_100152960, v40, v41, v42, v43, v123, v130, v137, v144, v151, v158, v165, v172, v179, *(&v179 + 1), v180, v181, v182, v183, v184, v185, v186, v187, v188, *(&v188 + 1), v189, v190, v191, v192);
  if (v195)
  {
    sub_100005D4C(v44, v45, v46, v47, v48, v49, v50, v51, v124, v131, v138, v145, v152, v159, v166, v173, v179, *(&v179 + 1), v180, v181, v182, v183, v184, v185, v186, v187, v188, *(&v188 + 1), v189, v190, v191, v192, v193);

    sub_100128404(v52, v53, v54, v55, v56, v57, v58, v59, v125, v132, v139, v146, v153, v160, v167, v174);
    v60 = sub_1000034F8(&v179);
  }

  else
  {
    sub_100003968();
  }

  v66 = sub_1001287D0(v60, v61, &qword_10019CBC0, &qword_100152960, v62, v63, v64, v65, v124, v131, v138, v145, v152, v159, v166, v173, v179, *(&v179 + 1), v180, v181, v182, v183, v184, v185, v186, v187, v188, *(&v188 + 1), v189, v190, v191, v192);
  if (v195)
  {
    sub_100005D4C(v66, v67, v68, v69, v70, v71, v72, v73, v126, v133, v140, v147, v154, v161, v168, v175, v179, *(&v179 + 1), v180, v181, v182, v183, v184, v185, v186, v187, v188, *(&v188 + 1), v189, v190, v191, v192, v193);
    sub_100005334();
    sub_100128758(v74, v75, v127, v134, v141, v148, v155, v162, v169, v176);
    v76 = sub_1000034F8(&v179);
  }

  else
  {
    v82 = sub_100013D10();
  }

  v83 = sub_100128740(v76, v77, &qword_10019CBC8, &qword_100152968, v78, v79, v80, v81, v126, v133, v140, v147, v154, v161, v168, v175, v179, *(&v179 + 1), v180, v181, v182, v183, v184, v185, v186, v187, v188, *(&v188 + 1), v189, v190, v191, v192, v193, *(&v193 + 1), v194, v195, v196, v197, v198, v199, v200, v201, v82);
  if (v195)
  {
    v91 = sub_1000129D4(v83, v84, v85, v86, v87, v88, v89, v90, v128, v135, v142, v149, v156, v163, v170, v177, v179, *(&v179 + 1), v180, v181, v182, v183, v184, v185, v186, v187, v188, *(&v188 + 1), v189, v190, v191, v192);
    sub_1001283E8(v91, v92, v93, v94, v95, v96, v97, v98, v129, v136, v143, v150, v157, v164, v171, v178);

    sub_100003E9C(&v179, &qword_10019CBD0, &qword_100152970);
  }

  else
  {

    sub_100018530();
  }

  v99 = _swiftEmptyArrayStorage;
  v100 = 32;
  *(v33 + 384) = 0;
  sub_100128380();
  do
  {
    sub_10001330C();
    sub_100011EE4(v101, v102, v103, v104);
    sub_100018908();
    if (v105)
    {
      sub_1001283B4(&v188, &v179);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v111 = sub_1000073C4();
        sub_10001A674(v111, v112, v113, v114, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v99 = v115;
      }

      sub_100128518();
      if (v107)
      {
        sub_100005150(v106);
        sub_10000274C();
        sub_10001A674(v116, v117, v118, v119, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v99 = v120;
      }

      v99[2] = v33 + 312;
      sub_1000208B8(v99 + &protocol witness table for Expression<A> * v15, v128, v135, v142, v149, v156, v163, v170, v177, v179);
    }

    else
    {
      sub_1000111C8();
      sub_100003E9C(v108, v109, v110);
    }

    v100 += 40;
  }

  while (v100 != 392);
  swift_setDeallocating();
  sub_100128818();
  sub_100009AA4(&v193);

  sub_10012848C();
  sub_100003E9C(v202, &qword_10019CBC8, &qword_100152968);
  v121 = sub_100128420();
  sub_100003E9C(v121, v122, &qword_100152960);
  sub_1000034F8(v1 - 17);
  sub_10011EED8(&v193);
  sub_100002714();
  sub_100012118(&v193);
  sub_1000069EC();
}

void Table.addColumn<A>(_:check:defaultValue:collate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_100006A04();
  v72 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = sub_100128300();
  v80[3] = type metadata accessor for Expression(v36, v37, v38, v39);
  v80[4] = &protocol witness table for Expression<A>;
  v80[0] = v35;
  v80[1] = v33;
  v80[2] = v31;
  v40 = *(a23 + 40);

  v41 = v40(a22, a23);
  v43 = v42;
  if (v27)
  {
    v44 = sub_10002EB80(&qword_10019CBD8, &qword_100152978);
    v45 = &protocol witness table for Expression<A>;
  }

  else
  {
    v44 = sub_100002E28();
  }

  v46 = v29;
  sub_100018B04(v44, v45);
  sub_1000294F4(*(a23 + 8));
  sub_1000116F4();
  (*(v47 + 16))();
  sub_100016658();
  v48 = sub_10002EB80(&qword_10019CBB8, &unk_100152950);
  v49 = sub_10012842C(v48);
  v50 = sub_100017FC0(v49, xmmword_100152930);
  sub_100013334(v50, v49 + 32);
  v51 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  *(v49 + 104) = &protocol witness table for Expression<A>;
  *(v49 + 72) = v41;
  *(v49 + 80) = v43;
  v52 = _swiftEmptyArrayStorage;
  *(v49 + 88) = _swiftEmptyArrayStorage;
  *(v49 + 96) = v51;
  *(v49 + 112) = 0u;
  *(v49 + 128) = 0u;
  *(v49 + 176) = v51;
  *(v49 + 184) = &protocol witness table for Expression<A>;
  sub_10000E1C8();
  *(v49 + 160) = v53;
  *(v49 + 168) = _swiftEmptyArrayStorage;
  *(v49 + 192) = v54;
  *(v49 + 208) = v54;
  *(v49 + 224) = 0;
  sub_100011EE4(&v79, __src, &qword_10019CBC0, &qword_100152960);
  if (*(&__src[1] + 1))
  {
    v55 = sub_1001283B4(__src, __dst);
    sub_100018C6C(v55, v27, v25);

    sub_10012749C(__dst, (v49 + 232));
    sub_1000034F8(__dst);
  }

  else
  {
    sub_100128624();
    sub_100018C6C(v46, v27, v25);
  }

  sub_100011EE4(v78, __src, &qword_10019CBC0, &qword_100152960);
  if (*(&__src[1] + 1))
  {
    sub_10001A798(__src, __dst);
    sub_100003CA4();
    sub_100129270(__dst, v56, 0xE700000000000000, (v49 + 272));
    sub_1000034F8(__dst);
  }

  else
  {
    *(v49 + 304) = 0;
    *(v49 + 272) = 0u;
    *(v49 + 288) = 0u;
  }

  sub_100011EE4(v77, __src, &qword_10019CBC8, &qword_100152968);
  if (*(&__src[1] + 1))
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_1001271A4(__dst, &__dst[2] + 8, (v49 + 312));
    sub_100003E9C(__dst, &qword_10019CBD0, &qword_100152970);
  }

  else
  {
    sub_100007588();
  }

  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  inited = swift_initStackObject();
  v58 = sub_1000135CC(inited, xmmword_10014BC40);
  v58[3].n128_u64[0] = _swiftEmptyArrayStorage;
  v58[3].n128_u64[1] = v51;
  v58[6].n128_u64[0] = &type metadata for Collation;
  v58[6].n128_u64[1] = &protocol witness table for Collation;
  v58[4].n128_u64[0] = &protocol witness table for Expression<A>;
  inited[4].n128_u64[1] = v72;
  inited[5].n128_u64[0] = a21;
  sub_100127814(v72, a21);
  v59 = 32;
  sub_10000EF08(inited, (v49 + 352));
  swift_setDeallocating();
  sub_100018848(&qword_10019B238, &unk_100152B50);

  do
  {
    sub_100011EE4(v49 + v59, __src, &qword_10019CBC0, &qword_100152960);
    v74[0] = __src[0];
    v74[1] = __src[1];
    v75 = *&__src[2];
    if (*(&__src[1] + 1))
    {
      sub_10001A798(v74, __dst);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_100004E28();
        sub_10001A674(v62, v63, v64, v52, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v52 = v65;
      }

      v61 = v52[2];
      v60 = v52[3];
      if (v61 >= v60 >> 1)
      {
        v66 = sub_100009A90(v60);
        sub_10001A674(v66, v67, v68, v52, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v52 = v69;
      }

      v52[2] = v61 + 1;
      sub_10001A798(__dst, &v52[5 * v61 + 4]);
    }

    else
    {
      sub_100003E9C(v74, &qword_10019CBC0, &qword_100152960);
    }

    v59 += 40;
  }

  while (v59 != 392);
  swift_setDeallocating();
  sub_100018848(&qword_10019CBC0, &qword_100152960);
  sub_10000EF08(v52, __src);

  sub_100003E9C(v77, &qword_10019CBC8, &qword_100152968);
  sub_100003E9C(v78, &qword_10019CBC0, &qword_100152960);
  v70 = sub_100128420();
  sub_100003E9C(v70, v71, &qword_100152960);
  sub_1000034F8(v80);
  sub_10011EED8(__src);
  sub_100002714();
  sub_100012118(__src);
  sub_1000069EC();
}

{
  sub_100006A04();
  v68 = v23;
  v67 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = sub_100128300();
  v76[3] = type metadata accessor for Expression(v35, v36, v37, v38);
  v76[4] = &protocol witness table for Expression<A>;
  v76[0] = v34;
  v76[1] = v32;
  v76[2] = v30;
  v39 = *(a23 + 40);

  v40 = v39(a22, a23);
  v42 = v41;
  v75[3] = sub_10002EB80(&qword_10019CBE0, &unk_100152980);
  v75[4] = &protocol witness table for Expression<A>;
  v75[0] = v67;
  v75[1] = v28;
  v75[2] = v26;
  sub_1000294F4(*(a23 + 8));
  sub_1000116F4();
  (*(v43 + 16))();
  memset(v73, 0, 80);
  v44 = sub_10002EB80(&qword_10019CBB8, &unk_100152950);
  v45 = sub_10012842C(v44);
  v46 = sub_100017FC0(v45, xmmword_100152930);
  sub_100013334(v46, v45 + 32);
  v47 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  *(v45 + 104) = &protocol witness table for Expression<A>;
  *(v45 + 72) = v40;
  *(v45 + 80) = v42;
  v48 = _swiftEmptyArrayStorage;
  *(v45 + 88) = _swiftEmptyArrayStorage;
  *(v45 + 96) = v47;
  *(v45 + 112) = 0u;
  *(v45 + 128) = 0u;
  *(v45 + 176) = v47;
  *(v45 + 184) = &protocol witness table for Expression<A>;
  sub_10000E1C8();
  *(v45 + 160) = v49;
  *(v45 + 168) = _swiftEmptyArrayStorage;
  *(v45 + 192) = v50;
  *(v45 + 208) = v50;
  *(v45 + 224) = 0;
  sub_100011EE4(v75, __src, &qword_10019CBC0, &qword_100152960);
  if (*(&__src[1] + 1))
  {
    sub_10001A798(__src, __dst);

    sub_10012749C(__dst, (v45 + 232));
    sub_1000034F8(__dst);
  }

  else
  {
    sub_100128624();
  }

  sub_100011EE4(v74, __src, &qword_10019CBC0, &qword_100152960);
  if (*(&__src[1] + 1))
  {
    sub_10001A798(__src, __dst);
    sub_100003CA4();
    sub_100129270(__dst, v51, 0xE700000000000000, (v45 + 272));
    sub_1000034F8(__dst);
  }

  else
  {
    *(v45 + 304) = 0;
    *(v45 + 272) = 0u;
    *(v45 + 288) = 0u;
  }

  sub_100011EE4(v73, __src, &qword_10019CBC8, &qword_100152968);
  if (*(&__src[1] + 1))
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_1001271A4(__dst, &__dst[2] + 8, (v45 + 312));
    sub_100003E9C(__dst, &qword_10019CBD0, &qword_100152970);
  }

  else
  {
    sub_100007588();
  }

  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  inited = swift_initStackObject();
  v53 = sub_1000135CC(inited, xmmword_10014BC40);
  v53[3].n128_u64[0] = _swiftEmptyArrayStorage;
  v53[3].n128_u64[1] = v47;
  v53[6].n128_u64[0] = &type metadata for Collation;
  v53[6].n128_u64[1] = &protocol witness table for Collation;
  v53[4].n128_u64[0] = &protocol witness table for Expression<A>;
  inited[4].n128_u64[1] = v68;
  inited[5].n128_u64[0] = a21;
  sub_100127814(v68, a21);
  v54 = 32;
  sub_10000EF08(inited, (v45 + 352));
  swift_setDeallocating();
  sub_100018848(&qword_10019B238, &unk_100152B50);

  do
  {
    sub_100011EE4(v45 + v54, __src, &qword_10019CBC0, &qword_100152960);
    v70[0] = __src[0];
    v70[1] = __src[1];
    v71 = *&__src[2];
    if (*(&__src[1] + 1))
    {
      sub_10001A798(v70, __dst);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = sub_100004E28();
        sub_10001A674(v57, v58, v59, v48, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v48 = v60;
      }

      v56 = v48[2];
      v55 = v48[3];
      if (v56 >= v55 >> 1)
      {
        v61 = sub_100009A90(v55);
        sub_10001A674(v61, v62, v63, v48, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v48 = v64;
      }

      v48[2] = v56 + 1;
      sub_10001A798(__dst, &v48[5 * v56 + 4]);
    }

    else
    {
      sub_100003E9C(v70, &qword_10019CBC0, &qword_100152960);
    }

    v54 += 40;
  }

  while (v54 != 392);
  swift_setDeallocating();
  sub_100018848(&qword_10019CBC0, &qword_100152960);
  sub_10000EF08(v48, __src);

  sub_100003E9C(v73, &qword_10019CBC8, &qword_100152968);
  sub_100003E9C(v74, &qword_10019CBC0, &qword_100152960);
  v65 = sub_100128420();
  sub_100003E9C(v65, v66, &qword_100152960);
  sub_1000034F8(v76);
  sub_10011EED8(__src);
  sub_100002714();
  sub_100012118(__src);
  sub_1000069EC();
}

{
  sub_100006A04();
  v96 = v23;
  v91 = v24;
  v92 = v25;
  v90 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_100128300();
  v35 = type metadata accessor for Optional();
  sub_100002944();
  v93 = v36;
  sub_100003A54();
  __chkstk_darwin(v37);
  v39 = &v89 - v38;
  v103[3] = type metadata accessor for Expression(0, v35, v40, v41);
  v103[4] = &protocol witness table for Expression<A>;
  v103[0] = v34;
  v103[1] = v32;
  v103[2] = v30;
  v42 = *(a23 + 40);

  v89 = a23;
  v43 = v42(a22, a23);
  v44 = v90;
  v94 = v45;
  v95 = v43;
  if (v90)
  {
    v46 = sub_10002EB80(&qword_10019CBD8, &qword_100152978);
    v47 = &protocol witness table for Expression<A>;
    v48 = v28;
    v49 = v44;
    v50 = v44;
    v51 = v91;
    v52 = v91;
  }

  else
  {
    v48 = v28;
    v49 = 0;
    v28 = 0;
    v50 = 0;
    v52 = 0;
    v46 = 0;
    v47 = 0;
    v51 = v91;
  }

  v102[0] = v28;
  v102[1] = v50;
  v102[2] = v52;
  v102[3] = v46;
  v102[4] = v47;
  v53 = v93;
  (*(v93 + 16))(v39, v92, v35);
  sub_100009C04(v39);
  if (v54)
  {
    sub_100018C6C(v48, v49, v51);
    (*(v53 + 8))(v39, v35);
    *&v55 = sub_100013200();
    v101[0] = v55;
    v101[1] = v55;
  }

  else
  {
    sub_1001287E8(*(v89 + 8));
    sub_1000116F4();
    (*(v56 + 32))();
    sub_100018C6C(v48, v49, v51);
  }

  memset(v100, 0, sizeof(v100));
  v57 = sub_10002EB80(&qword_10019CBB8, &unk_100152950);
  v58 = sub_10012842C(v57);
  v59 = sub_100017FC0(v58, xmmword_100152930);
  sub_100013334(v59, v58 + 32);
  v60 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  *(v58 + 104) = &protocol witness table for Expression<A>;
  v61 = v94;
  *(v58 + 72) = v95;
  *(v58 + 80) = v61;
  v62 = _swiftEmptyArrayStorage;
  *(v58 + 88) = _swiftEmptyArrayStorage;
  *(v58 + 96) = v60;
  *(v58 + 112) = 0u;
  *(v58 + 128) = 0u;
  *(v58 + 144) = 0u;
  *(v58 + 160) = 0u;
  *(v58 + 176) = 0u;
  *(v58 + 192) = 0u;
  *(v58 + 208) = 0u;
  *(v58 + 224) = 0;
  sub_100011EE4(v102, v99, &qword_10019CBC0, &qword_100152960);
  if (v99[1].n128_u64[1])
  {
    sub_100128848();
    sub_100128788();
    sub_10012749C(v97, (v58 + 232));
    sub_1000034F8(v97);
  }

  else
  {
    *(v58 + 264) = 0;
    *(v58 + 248) = 0u;
    *(v58 + 232) = 0u;
    sub_100128788();
  }

  sub_100011EE4(v101, v99, &qword_10019CBC0, &qword_100152960);
  if (v99[1].n128_u64[1])
  {
    sub_100128848();
    sub_100003CA4();
    sub_100129270(v97, v63, 0xE700000000000000, (v58 + 272));
    sub_1000034F8(v97);
  }

  else
  {
    *(v58 + 304) = 0;
    *(v58 + 272) = 0u;
    *(v58 + 288) = 0u;
  }

  sub_100011EE4(v100, v99, &qword_10019CBC8, &qword_100152968);
  if (v99[1].n128_u64[1])
  {
    memcpy(v97, v99, sizeof(v97));
    sub_1001271A4(v97, &v97[2] + 8, (v58 + 312));
    sub_100003E9C(v97, &qword_10019CBD0, &qword_100152970);
  }

  else
  {
    sub_100007588();
  }

  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  inited = swift_initStackObject();
  v65 = sub_1000135CC(inited, xmmword_10014BC40);
  v65[3].n128_u64[0] = _swiftEmptyArrayStorage;
  v65[3].n128_u64[1] = v60;
  v65[6].n128_u64[0] = &type metadata for Collation;
  v65[6].n128_u64[1] = &protocol witness table for Collation;
  v65[4].n128_u64[0] = &protocol witness table for Expression<A>;
  v66 = v96;
  inited[4].n128_u64[1] = v96;
  inited[5].n128_u64[0] = a21;
  sub_100127814(v66, a21);
  v67 = 32;
  sub_10000EF08(inited, (v58 + 352));
  swift_setDeallocating();
  sub_100018848(&qword_10019B238, &unk_100152B50);

  do
  {
    sub_100013DD0();
    sub_100011EE4(v68, v69, v70, v71);
    sub_100128638(v99[1], v99[0]);
    if (v72)
    {
      sub_10001A798(v98, v97);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v75 = sub_100004E28();
        sub_10001A674(v75, v76, v77, v62, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v62 = v78;
      }

      v74 = v62[2];
      v73 = v62[3];
      if (v74 >= v73 >> 1)
      {
        v79 = sub_100005150(v73);
        sub_10001A674(v79, v74 + 1, 1, v62, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v62 = v80;
      }

      v62[2] = v74 + 1;
      sub_10001A798(v97, &v62[5 * v74 + 4]);
    }

    else
    {
      sub_100010D8C(v98);
    }

    v67 += 40;
  }

  while (v67 != 392);
  swift_setDeallocating();
  v81 = sub_1000064C8();
  sub_100018848(v81, v82);
  sub_10000EF08(v62, v99);

  sub_100003E9C(v100, &qword_10019CBC8, &qword_100152968);
  sub_10000724C();
  sub_100003E9C(v83, v84, v85);
  sub_10000724C();
  sub_100003E9C(v86, v87, v88);
  sub_1000034F8(v103);
  sub_10011EED8(v99);
  sub_1000064BC();
  sub_1000034F8(v99);
  sub_10001317C();
  sub_1000069EC();
}

{
  sub_100006A04();
  v81 = v24;
  v80 = v25;
  v75 = v27;
  v76 = v26;
  v77 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_100128300();
  v35 = type metadata accessor for Optional();
  sub_100002944();
  v74 = v36;
  sub_100003A54();
  __chkstk_darwin(v37);
  v88[3] = sub_1001285B4(v38, v39, v40, v41);
  v88[4] = &protocol witness table for Expression<A>;
  v88[0] = v34;
  v88[1] = v32;
  v88[2] = v30;
  v42 = *(a23 + 40);

  v78 = v42(a22, a23);
  v79 = v43;
  v87[3] = sub_10002EB80(&qword_10019CBE0, &unk_100152980);
  v87[4] = &protocol witness table for Expression<A>;
  v87[0] = v76;
  v87[1] = v77;
  v87[2] = v75;
  (*(v74 + 16))(v23, v80, v35);
  sub_100009C04(v23);
  if (v44)
  {
    v45 = *(v74 + 8);

    v45(v23, v35);
    *&v46 = sub_100013200();
    v86[0] = v46;
    v86[1] = v46;
  }

  else
  {
    sub_1001287E8(*(a23 + 8));
    sub_1000116F4();
    (*(v47 + 32))();
  }

  sub_100016658();
  v48 = sub_10002EB80(&qword_10019CBB8, &unk_100152950);
  v49 = sub_10012842C(v48);
  v50 = sub_100017FC0(v49, xmmword_100152930);
  sub_100013334(v50, v49 + 32);
  v51 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  *(v49 + 104) = &protocol witness table for Expression<A>;
  *(v49 + 72) = v78;
  *(v49 + 80) = v79;
  v52 = _swiftEmptyArrayStorage;
  *(v49 + 88) = _swiftEmptyArrayStorage;
  *(v49 + 96) = v51;
  *(v49 + 112) = 0u;
  *(v49 + 128) = 0u;
  *(v49 + 144) = 0u;
  *(v49 + 160) = 0u;
  *(v49 + 176) = 0u;
  *(v49 + 192) = 0u;
  *(v49 + 208) = 0u;
  *(v49 + 224) = 0;
  sub_100011EE4(v87, v84, &qword_10019CBC0, &qword_100152960);
  if (v84[1].n128_u64[1])
  {
    sub_100128848();
    sub_100128788();
    sub_10012749C(v82, (v49 + 232));
    sub_1000034F8(v82);
  }

  else
  {
    *(v49 + 264) = 0;
    *(v49 + 248) = 0u;
    *(v49 + 232) = 0u;
    sub_100128788();
  }

  sub_100011EE4(v86, v84, &qword_10019CBC0, &qword_100152960);
  if (v84[1].n128_u64[1])
  {
    sub_100128848();
    sub_100003CA4();
    sub_100129270(v82, v53, 0xE700000000000000, (v49 + 272));
    sub_1000034F8(v82);
  }

  else
  {
    *(v49 + 304) = 0;
    *(v49 + 272) = 0u;
    *(v49 + 288) = 0u;
  }

  sub_100011EE4(v85, v84, &qword_10019CBC8, &qword_100152968);
  if (v84[1].n128_u64[1])
  {
    memcpy(v82, v84, sizeof(v82));
    sub_1001271A4(v82, &v82[2] + 8, (v49 + 312));
    sub_100003E9C(v82, &qword_10019CBD0, &qword_100152970);
  }

  else
  {
    sub_100007588();
  }

  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  inited = swift_initStackObject();
  v55 = sub_1000135CC(inited, xmmword_10014BC40);
  v55[3].n128_u64[0] = _swiftEmptyArrayStorage;
  v55[3].n128_u64[1] = v51;
  v55[6].n128_u64[0] = &type metadata for Collation;
  v55[6].n128_u64[1] = &protocol witness table for Collation;
  v55[4].n128_u64[0] = &protocol witness table for Expression<A>;
  inited[4].n128_u64[1] = v81;
  inited[5].n128_u64[0] = a21;
  sub_100127814(v81, a21);
  v56 = 32;
  sub_10000EF08(inited, (v49 + 352));
  swift_setDeallocating();
  sub_100018848(&qword_10019B238, &unk_100152B50);

  do
  {
    sub_100011EE4(v49 + v56, v84, &qword_10019CBC0, &qword_100152960);
    sub_100128638(v84[1], v84[0]);
    if (v57)
    {
      sub_10001A798(v83, v82);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = sub_100004E28();
        sub_10001A674(v60, v61, v62, v52, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v52 = v63;
      }

      v59 = v52[2];
      v58 = v52[3];
      if (v59 >= v58 >> 1)
      {
        v64 = sub_100005150(v58);
        sub_10001A674(v64, v59 + 1, 1, v52, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v52 = v65;
      }

      v52[2] = v59 + 1;
      sub_10001A798(v82, &v52[5 * v59 + 4]);
    }

    else
    {
      sub_100003E9C(v83, &qword_10019CBC0, &qword_100152960);
    }

    v56 += 40;
  }

  while (v56 != 392);
  swift_setDeallocating();
  v66 = sub_1000064C8();
  sub_100018848(v66, v67);
  sub_10000EF08(v52, v84);

  sub_100003E9C(v85, &qword_10019CBC8, &qword_100152968);
  sub_10000724C();
  sub_100003E9C(v68, v69, v70);
  sub_10000724C();
  sub_100003E9C(v71, v72, v73);
  sub_1000034F8(v88);
  sub_10011EED8(v84);
  sub_1000064BC();
  sub_1000034F8(v84);
  sub_10001317C();
  sub_1000069EC();
}

uint64_t sub_100122570()
{
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014ECA0;
  v2 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = 0x4154205245544C41;
  *(inited + 40) = 0xEB00000000454C42;
  *(inited + 48) = _swiftEmptyArrayStorage;
  *(inited + 56) = v2;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 64);
  swift_bridgeObjectRetain_n();

  if (v5)
  {

    v4 = v6;
    v3 = v5;
  }

  sub_100019760(v4, v3, v7 & 1, (inited + 72));

  *(inited + 136) = v2;
  *(inited + 144) = &protocol witness table for Expression<A>;
  *(inited + 112) = 0x5420454D414E4552;
  *(inited + 120) = 0xE90000000000004FLL;
  *(inited + 128) = _swiftEmptyArrayStorage;
  *(inited + 176) = v2;
  *(inited + 184) = &protocol witness table for Expression<A>;
  v8 = sub_100012BA4();
  *(inited + 152) = sub_1000198BC(v8, v9, v10, v11);
  *(inited + 160) = v12;
  *(inited + 168) = _swiftEmptyArrayStorage;
  sub_10000EF08(inited, v14);
  swift_setDeallocating();
  sub_100018848(&qword_10019B238, &unk_100152B50);
  sub_10001E178(v14);
  sub_100002714();
  return sub_100012118(v14);
}

void Table.createIndex(_:unique:ifNotExists:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16, __int128 a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  sub_100015628();
  a54 = v56;
  a55 = v57;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  sub_10002EB80(&qword_10019CBB8, &unk_100152950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014ECA0;
  sub_100122A18(v63, &a16);
  if (v61)
  {
    v65 = 0;
  }

  else
  {
    v65 = 2;
  }

  sub_10011E298(0x5845444E49, 0xE500000000000000, &a16, v65, v59, (inited + 32));
  sub_1000034F8(&a16);
  v66 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  *(inited + 104) = &protocol witness table for Expression<A>;
  *(inited + 72) = 20047;
  *(inited + 80) = 0xE200000000000000;
  v67 = _swiftEmptyArrayStorage;
  *(inited + 88) = _swiftEmptyArrayStorage;
  *(inited + 96) = v66;
  v69 = v55[2];
  v68 = v55[3];
  v71 = v55[4];
  v70 = v55[5];
  swift_bridgeObjectRetain_n();

  if (v70)
  {

    v69 = v71;
    v68 = v70;
  }

  *(inited + 136) = v66;
  *(inited + 144) = &protocol witness table for Expression<A>;
  v72 = sub_100012BA4();
  v74 = sub_1000198BC(v72, v73, v69, v68);
  v76 = v75;

  *(inited + 112) = v74;
  *(inited + 120) = v76;
  *(inited + 128) = _swiftEmptyArrayStorage;
  sub_100013640(v63, &a16);
  v77 = sub_1000034B4(&a16, *(&a17 + 1));
  v78 = sub_100128720(v77);
  v80 = v79;
  v82 = v81;
  sub_1000034F8(&a16);
  v83 = 32;
  *(inited + 176) = v66;
  *(inited + 184) = &protocol witness table for Expression<A>;
  *(inited + 152) = v78;
  *(inited + 160) = v80;
  *(inited + 168) = v82;
  do
  {
    sub_10001330C();
    sub_100011EE4(v84, v85, v86, v87);
    a9 = a16;
    a10 = a17;
    a11 = a18;
    if (*(&a17 + 1))
    {
      sub_1001283B4(&a9, &a12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v93 = sub_1000073C4();
        sub_10001A674(v93, v94, v95, v96, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v67 = v97;
      }

      v89 = v67[2];
      v88 = v67[3];
      if (v89 >= v88 >> 1)
      {
        sub_100005150(v88);
        sub_10000274C();
        sub_10001A674(v98, v99, v100, v101, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v67 = v102;
      }

      v67[2] = v89 + 1;
      sub_10001A798(&a12, &v67[5 * v89 + 4]);
    }

    else
    {
      sub_1000111C8();
      sub_100003E9C(v90, v91, v92);
    }

    v83 += 40;
  }

  while (v83 != 192);
  swift_setDeallocating();
  sub_100018848(&qword_10019CBC0, &qword_100152960);
  sub_100009AA4(&a16);

  sub_10001E178(&a16);
  sub_100002714();
  sub_100012118(&a16);
  sub_1001286A8();
}

uint64_t sub_100122A18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10002EB80(&unk_100198B60, &qword_10014E3C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10014E1F0;
  *(v5 + 32) = 0x7865646E69;
  *(v5 + 40) = 0xE500000000000000;
  v6 = v2[2];
  v37 = v2[6];
  v38 = v2[7];

  *(v5 + 48) = v6;
  *(v5 + 56) = v7;
  *(v5 + 64) = 28271;
  *(v5 + 72) = 0xE200000000000000;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100011438(0, v8, 0);
    v9 = a1 + 32;
    do
    {
      sub_100013334(v9, &v41);
      v10 = v43;
      v11 = v44;
      sub_1000034B4(&v41, v43);
      v12 = (*(v11 + 8))(v10, v11);
      v14 = v13;

      sub_1000034F8(&v41);
      v16 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];
      if (v16 >= v15 >> 1)
      {
        sub_100011438(v15 > 1, v16 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v16 + 1;
      v17 = &_swiftEmptyArrayStorage[2 * v16];
      v17[4] = v12;
      v17[5] = v14;
      v9 += 40;
      --v8;
    }

    while (v8);
  }

  v41._countAndFlagsBits = v5;
  sub_10006E3AC(_swiftEmptyArrayStorage);
  sub_10002EB80(&unk_10019ACC0, &qword_1001507B0);
  sub_10009153C();
  BidirectionalCollection<>.joined(separator:)();

  v18 = String.lowercased()();

  v19 = (v18._object >> 56) & 0xF;
  v41 = v18;
  if ((v18._object & 0x2000000000000000) == 0)
  {
    v19 = v18._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v42 = 0;
  v43 = v19;

  v20 = 0;
  v21 = 0xE000000000000000;
  while (1)
  {
    v22 = String.Iterator.next()();
    if (!v22.value._object)
    {
      break;
    }

    v23 = v22.value._countAndFlagsBits == 34 && v22.value._object == 0xE100000000000000;
    if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
    }

    else
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        __break(1u);
LABEL_45:
        __break(1u);
        return result;
      }

      if (v22.value._countAndFlagsBits == 97 && v22.value._object == 0xE100000000000000)
      {
        goto LABEL_26;
      }

      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        if (v22.value._countAndFlagsBits == 122 && v22.value._object == 0xE100000000000000)
        {
          goto LABEL_39;
        }

LABEL_26:
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_45;
      }

      if (v22.value._countAndFlagsBits == 48 && v22.value._object == 0xE100000000000000)
      {
        goto LABEL_37;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_38;
      }

      if (v22.value._countAndFlagsBits != 57 || v22.value._object != 0xE100000000000000)
      {
LABEL_37:
        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
LABEL_38:
          v39 = v20;
          v40 = v21;

          countAndFlagsBits = 95;
          object = 0xE100000000000000;
          goto LABEL_40;
        }
      }

LABEL_39:
      v39 = v20;
      v40 = v21;

      countAndFlagsBits = v22.value._countAndFlagsBits;
      object = v22.value._object;
LABEL_40:
      String.append(_:)(*&countAndFlagsBits);

      v20 = v39;
      v21 = v40;
    }
  }

  v31 = sub_1000198BC(34, 0xE100000000000000, v20, v21);
  v33 = v32;

  if (v38)
  {
    sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10014BC40;
    v35 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
    *(inited + 56) = v35;
    *(inited + 64) = &protocol witness table for Expression<A>;
    *(inited + 32) = sub_1000198BC(34, 0xE100000000000000, v37, v38);
    *(inited + 40) = v36;
    *(inited + 48) = _swiftEmptyArrayStorage;
    *(inited + 96) = v35;
    *(inited + 104) = &protocol witness table for Expression<A>;
    *(inited + 72) = v31;
    *(inited + 80) = v33;
    *(inited + 88) = _swiftEmptyArrayStorage;
    sub_100013640(inited, a2);
    swift_setDeallocating();
    return sub_100018848(&qword_10019B238, &unk_100152B50);
  }

  else
  {
    result = sub_10002EB80(&qword_10019CA28, &unk_100152718);
    a2[3] = result;
    a2[4] = &protocol witness table for Expression<A>;
    *a2 = v31;
    a2[1] = v33;
    a2[2] = _swiftEmptyArrayStorage;
  }

  return result;
}

void sub_100122F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  sub_100015628();
  a54 = v56;
  a55 = v57;
  v94 = v58;
  v95 = v59;
  v93 = v60;
  v62 = v61;
  v64 = v63;
  sub_10002EB80(&qword_10019CBB8, &unk_100152950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014E1F0;
  v67 = *(v55 + 16);
  v66 = *(v55 + 24);
  v68 = *(v55 + 32);
  v69 = *(v55 + 40);
  v70 = *(v55 + 64);
  swift_bridgeObjectRetain_n();

  if (v69)
  {

    v67 = v68;
    v66 = v69;
  }

  sub_100019760(v67, v66, v70 & 1, &a21);

  if (v62)
  {
    v71 = 1;
  }

  else
  {
    v71 = 2;
  }

  sub_10011E298(v94, v95, &a21, v71, v93 & 1, (inited + 32));
  sub_1000034F8(&a21);
  v72 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  *(inited + 104) = &protocol witness table for Expression<A>;
  *(inited + 72) = 21313;
  *(inited + 80) = 0xE200000000000000;
  v73 = _swiftEmptyArrayStorage;
  *(inited + 88) = _swiftEmptyArrayStorage;
  *(inited + 96) = v72;
  v74 = v64[3];
  v75 = v64[4];
  sub_1000034B4(v64, v74);
  *(inited + 136) = v74;
  *(inited + 144) = *(v75 + 8);
  sub_100013234((inited + 112));
  sub_1000116F4();
  (*(v76 + 16))();
  for (i = 32; i != 152; i += 40)
  {
    sub_100013DD0();
    sub_100011EE4(v78, v79, v80, v81);
    a13 = a21;
    a14 = a22;
    a15 = a23;
    if (*(&a22 + 1))
    {
      sub_1001283B4(&a13, &a17);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v83 = sub_1000073C4();
        sub_10001D338(v83, v84, v85, v86, &qword_1001987A0, &qword_10014BE50);
        v73 = v87;
      }

      sub_1001284F0();
      if (v82)
      {
        sub_10000274C();
        sub_10001D338(v88, v89, v90, v91, &qword_1001987A0, &qword_10014BE50);
        v73 = v92;
      }

      v73[2] = v67;
      sub_10001A798(&a17, &v73[5 * v68 + 4]);
    }

    else
    {
      sub_100010D8C(&a13);
    }
  }

  swift_setDeallocating();
  sub_100018848(&qword_10019CBC0, &qword_100152960);
  sub_100009AA4(&a21);

  sub_10001E178(&a21);
  sub_100002714();
  sub_100012118(&a21);
  sub_1001286A8();
}

uint64_t TableBuilder.column<A>(_:primaryKey:check:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100128658();
  v37 = v13;
  sub_10012839C();
  sub_10001A8D0(v14, v15, v16);
  v17 = *(a9 + 40);

  v17(a8, a9);
  sub_10000E20C();
  if (v9)
  {
    sub_10002EB80(&qword_10019CBD8, &qword_100152978);
    sub_100010458();
  }

  else
  {
    v18 = sub_100002E28();
  }

  sub_100011918(v18, v19);
  sub_1001284D4();
  sub_100018C6C(v10, v9, a7);
  v22 = type metadata accessor for Expression(0, a8, v20, v21);
  sub_1000046E4(v22, v23, v24, v25, v26, v27, v28, v29, v31, v32, v33, v34, v22, &protocol witness table for Expression<A>, v35, v36, v37, SHIWORD(v37), *v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48[0]);

  sub_100003E9C(v38, &qword_10019CBC8, &qword_100152968);
  sub_100010D8C(v48);
  sub_1000248F0();
}

{
  sub_10000C0FC();
  v38 = v12;
  sub_10012839C();
  sub_10001A8D0(v13, v14, v15);
  v16 = *(a9 + 40);

  v17 = sub_10001A638();
  v16(v17, a9);
  sub_10000E20C();
  v53 = sub_10002EB80(&qword_10019CBE0, &unk_100152980);
  v54 = &protocol witness table for Expression<A>;
  v50 = v11;
  v51 = v10;
  v52 = v9;
  sub_1001284D4();
  v22 = sub_100021344(v18, v19, v20, v21);

  sub_1000046E4(v23, v24, v25, v26, v27, v28, v29, v30, v32, v33, v34, v35, v22, &protocol witness table for Expression<A>, v36, v37, v38, SHIWORD(v38), *v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49[0]);

  sub_100003E9C(v39, &qword_10019CBC8, &qword_100152968);
  sub_100010D8C(v49);
  sub_1000248F0();
}

uint64_t TableBuilder.primaryKey<A>(_:)()
{
  sub_1001285F0();
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  inited = swift_initStackObject();
  v5 = sub_1000287C4(inited, xmmword_10014CE90);
  inited[3].n128_u64[1] = type metadata accessor for Expression(v5, v0, v6, v7);
  inited[4].n128_u64[0] = &protocol witness table for Expression<A>;
  inited[2].n128_u64[0] = v3;
  inited[2].n128_u64[1] = v2;
  inited[3].n128_u64[0] = v1;

  sub_100018510();
  sub_100126648(inited, v8, v9);
  swift_setDeallocating();
  return sub_100018848(&qword_10019B238, &unk_100152B50);
}

uint64_t TableBuilder.primaryKey<A, B>(_:_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  inited = swift_initStackObject();
  v17 = sub_1000287C4(inited, xmmword_10014BC40);
  inited[3].n128_u64[1] = type metadata accessor for Expression(v17, a7, v18, v19);
  inited[4].n128_u64[0] = &protocol witness table for Expression<A>;
  inited[2].n128_u64[0] = a1;
  inited[2].n128_u64[1] = a2;
  inited[3].n128_u64[0] = a3;
  inited[6].n128_u64[0] = type metadata accessor for Expression(0, a8, v20, v21);
  inited[6].n128_u64[1] = &protocol witness table for Expression<A>;
  inited[4].n128_u64[1] = a4;
  inited[5].n128_u64[0] = a5;
  inited[5].n128_u64[1] = a6;

  sub_100018510();
  sub_100126648(inited, v22, v23);
  swift_setDeallocating();
  return sub_100018848(&qword_10019B238, &unk_100152B50);
}

uint64_t TableBuilder.primaryKey<A, B, C>(_:_:_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  inited = swift_initStackObject();
  v19 = sub_1000287C4(inited, xmmword_10014E1F0);
  inited[3].n128_u64[1] = type metadata accessor for Expression(v19, a10, v20, v21);
  inited[4].n128_u64[0] = &protocol witness table for Expression<A>;
  inited[2].n128_u64[0] = a1;
  inited[2].n128_u64[1] = a2;
  inited[3].n128_u64[0] = a3;
  v22 = sub_100128300();
  inited[6].n128_u64[0] = type metadata accessor for Expression(v22, v23, v24, v25);
  inited[6].n128_u64[1] = &protocol witness table for Expression<A>;
  inited[4].n128_u64[1] = a4;
  inited[5].n128_u64[0] = a5;
  inited[5].n128_u64[1] = a6;
  inited[8].n128_u64[1] = type metadata accessor for Expression(0, a12, v26, v27);
  inited[9].n128_u64[0] = &protocol witness table for Expression<A>;
  inited[7].n128_u64[0] = a7;
  inited[7].n128_u64[1] = a8;
  inited[8].n128_u64[0] = a9;

  sub_100018510();
  sub_100126648(inited, v28, v29);
  swift_setDeallocating();
  return sub_100018848(&qword_10019B238, &unk_100152B50);
}

void TableBuilder.primaryKey<A, B, C, D>(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, unint64_t a55, unint64_t a56, unint64_t a57, unint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  sub_1000273A0();
  v88 = v62;
  v89 = v63;
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v75 = v74;
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  inited = swift_initStackObject();
  v77 = sub_1000287C4(inited, xmmword_10014ECA0);
  inited[3].n128_u64[1] = type metadata accessor for Expression(v77, a59, v78, v79);
  inited[4].n128_u64[0] = &protocol witness table for Expression<A>;
  inited[2].n128_u64[0] = v75;
  inited[2].n128_u64[1] = v73;
  inited[3].n128_u64[0] = v71;
  inited[6].n128_u64[0] = type metadata accessor for Expression(0, a60, v80, v81);
  inited[6].n128_u64[1] = &protocol witness table for Expression<A>;
  inited[4].n128_u64[1] = v69;
  inited[5].n128_u64[0] = v67;
  inited[5].n128_u64[1] = v65;
  inited[8].n128_u64[1] = type metadata accessor for Expression(0, a61, v82, v83);
  inited[9].n128_u64[0] = &protocol witness table for Expression<A>;
  inited[7].n128_u64[0] = v88;
  inited[7].n128_u64[1] = v89;
  inited[8].n128_u64[0] = a55;
  inited[11].n128_u64[0] = type metadata accessor for Expression(0, a62, v84, v85);
  inited[11].n128_u64[1] = &protocol witness table for Expression<A>;
  inited[9].n128_u64[1] = a56;
  inited[10].n128_u64[0] = a57;
  inited[10].n128_u64[1] = a58;

  sub_100018510();
  sub_100126648(inited, v86, v87);
  swift_setDeallocating();
  sub_100018848(&qword_10019B238, &unk_100152B50);
  sub_100128364();
}

uint64_t sub_100126648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100129198(a1, a2, a3, v7);
  swift_beginAccess();
  sub_1000111C8();
  sub_1001275A8();
  sub_10001330C();
  sub_100127678(v4);
  sub_10002135C();
  sub_10001A798(v7, v5 + 32);
  *(v3 + 16) = v3 + 16;
  return swift_endAccess();
}

uint64_t TableBuilder.check(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v11[3] = sub_10002EB80(&qword_10019CBE0, &unk_100152980);
  v11[4] = &protocol witness table for Expression<A>;
  v11[0] = a1;
  v11[1] = a2;
  v11[2] = a3;

  sub_100129270(v11, 0x4B43454843, 0xE500000000000000, v12);
  sub_1000034F8(v11);
  swift_beginAccess();
  sub_1000111C8();
  sub_1001275A8();
  sub_10001330C();
  sub_100127678(v8);
  sub_10002135C();
  sub_10001A798(v12, v9 + 32);
  *(v4 + 16) = v4 + 16;
  return swift_endAccess();
}

AppIntents_SQLite::TableBuilder::Dependency_optional __swiftcall TableBuilder.Dependency.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100190B48, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t TableBuilder.Dependency.rawValue.getter(char a1)
{
  result = 0x4F49544341204F4ELL;
  switch(a1)
  {
    case 1:
      result = 0x5443495254534552;
      break;
    case 2:
      result = 0x4C4C554E20544553;
      break;
    case 3:
      result = 0x4146454420544553;
      break;
    case 4:
      result = 0x45444143534143;
      break;
    default:
      return result;
  }

  return result;
}

AppIntents_SQLite::TableBuilder::Dependency_optional sub_10012695C@<W0>(Swift::String *a1@<X0>, AppIntents_SQLite::TableBuilder::Dependency_optional *a2@<X8>)
{
  result.value = TableBuilder.Dependency.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_10012698C@<X0>(uint64_t *a1@<X8>)
{
  result = TableBuilder.Dependency.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t TableBuilder.foreignKey<A>(_:references:_:update:delete:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10)
{
  v11 = a8;
  v17[0] = a1;
  v17[1] = a2;
  v17[2] = a3;
  v16[0] = a5;
  v16[1] = a6;
  v16[2] = a7;
  v13 = type metadata accessor for Expression(0, a10, a3, a4);

  sub_1001279B0(v17, a4, v16, v11, a9, v10, v13, v13, v14, &protocol witness table for Expression<A>, &protocol witness table for Expression<A>);
}

uint64_t TableBuilder.foreignKey<A>(_:references:_:update:delete:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = a8;
  v24[0] = a1;
  v24[1] = a2;
  v24[2] = a3;
  v23[0] = a5;
  v23[1] = a6;
  v23[2] = a7;
  v12 = sub_10012859C();
  v16 = sub_1000048F8(v12, v13, v14, v15);
  v20 = sub_100021344(v16, v17, v18, v19);

  sub_1001279B0(v24, a4, v23, v10, a9, v9, v16, v20, v21, &protocol witness table for Expression<A>, &protocol witness table for Expression<A>);
}

void TableBuilder.foreignKey<A, B>(_:references:_:update:delete:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, char a27, uint64_t a28, uint64_t a29)
{
  sub_100006A04();
  v65 = v29;
  v64 = v30;
  v63 = v31;
  v33 = v32;
  v35 = v34;
  v62 = v36;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  inited = swift_initStackObject();
  v44 = sub_1000287C4(inited, xmmword_10014BC40);
  v47 = type metadata accessor for Expression(v44, a28, v45, v46);
  inited[3].n128_u64[1] = v47;
  inited[4].n128_u64[0] = &protocol witness table for Expression<A>;
  inited[2].n128_u64[0] = v42;
  inited[2].n128_u64[1] = v40;
  inited[3].n128_u64[0] = v38;
  v50 = type metadata accessor for Expression(0, a29, v48, v49);
  inited[6].n128_u64[0] = v50;
  inited[6].n128_u64[1] = &protocol witness table for Expression<A>;
  inited[4].n128_u64[1] = v62;
  inited[5].n128_u64[0] = v35;
  inited[5].n128_u64[1] = v33;

  sub_10001728C(v72);
  swift_setDeallocating();
  sub_100018848(&qword_10019B238, &unk_100152B50);
  sub_100013334(v63, v70);
  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_10014BC40;
  *(v51 + 32) = v64;
  *(v51 + 40) = a21;
  *(v51 + 48) = a22;
  *(v51 + 56) = v47;
  *(v51 + 64) = &protocol witness table for Expression<A>;
  *(v51 + 96) = v50;
  *(v51 + 104) = &protocol witness table for Expression<A>;
  *(v51 + 72) = a23;
  *(v51 + 80) = a24;
  *(v51 + 88) = a25;

  sub_10001728C(v71);
  swift_setDeallocating();
  sub_100018848(&qword_10019B238, &unk_100152B50);
  sub_100011EE4(v70, v66, &qword_10019CBD0, &qword_100152970);
  v52 = v73;
  v53 = v74;
  v54 = sub_1000034B4(v72, v73);
  v55 = v68;
  v56 = v69;
  v57 = sub_1000034B4(v67, v68);
  sub_1001279B0(v54, v66, v57, a26, a27, v65, v52, v55, v58, v53, v56);
  sub_100010608();
  sub_100003E9C(v59, v60, v61);
  sub_1000034F8(v72);
  sub_1000034F8(v67);
  sub_1000034F8(v66);
  sub_1000069EC();
}

void TableBuilder.foreignKey<A, B, C>(_:references:_:update:delete:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  sub_100006A04();
  v80 = v36;
  v77 = v37;
  v79 = v38;
  v40 = v39;
  v42 = v41;
  v76 = v43;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014E1F0;

  v78 = sub_100021344(v51, v52, v53, v54);
  *(inited + 56) = v78;
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = v49;
  *(inited + 40) = v47;
  *(inited + 48) = v45;

  v57 = type metadata accessor for Expression(0, a35, v55, v56);
  *(inited + 96) = v57;
  *(inited + 104) = &protocol witness table for Expression<A>;
  *(inited + 72) = v76;
  *(inited + 80) = v42;
  *(inited + 88) = v40;

  v60 = type metadata accessor for Expression(0, a36, v58, v59);
  *(inited + 136) = v60;
  *(inited + 144) = &protocol witness table for Expression<A>;
  *(inited + 112) = v79;
  *(inited + 120) = v77;
  *(inited + 128) = a21;
  sub_10001728C(v87);
  swift_setDeallocating();
  v61 = sub_1000064C8();
  sub_100018848(v61, v62);
  sub_100013334(a22, v85);
  v63 = swift_initStackObject();
  *(v63 + 16) = xmmword_10014E1F0;

  *(v63 + 32) = a23;
  *(v63 + 40) = a24;
  *(v63 + 56) = v78;
  *(v63 + 64) = &protocol witness table for Expression<A>;
  *(v63 + 48) = a25;

  *(v63 + 96) = v57;
  *(v63 + 104) = &protocol witness table for Expression<A>;
  *(v63 + 72) = a26;
  *(v63 + 80) = a27;
  *(v63 + 88) = a28;

  *(v63 + 136) = v60;
  *(v63 + 144) = &protocol witness table for Expression<A>;
  *(v63 + 112) = a29;
  *(v63 + 120) = a30;
  *(v63 + 128) = a31;
  sub_10001728C(v86);
  swift_setDeallocating();
  v64 = sub_1000064C8();
  sub_100018848(v64, v65);
  sub_100011EE4(v85, v81, &qword_10019CBD0, &qword_100152970);
  v66 = v88;
  v67 = v89;
  v68 = sub_1000034B4(v87, v88);
  v69 = v83;
  v70 = v84;
  v71 = sub_1000034B4(v82, v83);
  sub_1001279B0(v68, v81, v71, a32, a33, v80, v66, v69, v72, v67, v70);
  sub_100010608();
  sub_100003E9C(v73, v74, v75);
  sub_1000034F8(v87);
  sub_1000034F8(v82);
  sub_1000034F8(v81);
  sub_1000069EC();
}

uint64_t sub_1001271A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_100013334(a1, v12);
  sub_100013334(a2, v13);
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014E1F0;
  v6 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = 0x434E455245464552;
  *(inited + 40) = 0xEA00000000005345;
  *(inited + 48) = _swiftEmptyArrayStorage;
  *(inited + 56) = v6;
  v7 = v12[4];
  sub_1000034B4(v12, v12[3]);
  sub_10012EA90(0, v7, (inited + 72));
  sub_1000034B4(v13, v13[3]);
  v8 = sub_100129C20();
  *(inited + 136) = v6;
  *(inited + 144) = &protocol witness table for Expression<A>;
  *(inited + 112) = v8;
  *(inited + 120) = v9;
  *(inited + 128) = v10;
  sub_100013640(inited, a3);
  swift_setDeallocating();
  sub_100018848(&qword_10019B238, &unk_100152B50);
  return sub_100003E9C(v12, &qword_10019CBD0, &qword_100152970);
}

uint64_t TableBuilder.__deallocating_deinit()
{

  return _swift_deallocClassInstance(v0);
}

Swift::Int sub_100127378(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  PrimaryKey.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t Module.init(_:_:)(uint64_t a1, unint64_t a2)
{
  v3 = sub_100012BA4();
  sub_1000198BC(v3, v4, v5, a2);

  return sub_1000064C8();
}

uint64_t Module.expression.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100013640(a3, v4);
  sub_1000034B4(v4, v5);
  sub_100129C20();
  sub_100002714();
  return sub_100012118(v4);
}

uint64_t sub_10012749C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014BC40;
  v5 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = 0x4B43454843;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = _swiftEmptyArrayStorage;
  *(inited + 56) = v5;
  sub_100013334(a1, inited + 72);
  sub_100013640(inited, a2);
  swift_setDeallocating();
  return sub_100018848(&qword_10019B238, &unk_100152B50);
}

void sub_1001275A8()
{
  sub_1001285F0();
  v5 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v5;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10001A674(0, v5[2] + 1, 1, v5, v4, v3, v2, v0);
    *v1 = v7;
  }
}

void sub_100127678(uint64_t a1)
{
  v2 = *(*v1 + 24);
  if (a1 + 1 > (v2 >> 1))
  {
    v3 = sub_100005150(v2);
    sub_10001A674(v3, v4, 1, v5, v6, v7, v8, v9);
    *v1 = v10;
  }
}

void sub_100127700()
{
  sub_1000088A4();
  if (v4)
  {
    sub_1000079A4();
    if (v5 != v6)
    {
      sub_100006A88();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  sub_100006778();
  if (v3)
  {
    sub_10002EB80(&unk_10019AAE0, &unk_10014BE30);
    v7 = swift_allocObject();
    sub_100011820(v7);
    sub_10000DE6C(v8 / 80);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v9 = (v3 + 4);
  v10 = (v0 + 4);
  if (v1)
  {
    if (v3 != v0 || &v10[80 * v2] <= v9)
    {
      memmove(v9, v10, 80 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_1001277EC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[80 * a2] <= a3)
  {
    return sub_100002B0C(a3, result);
  }

  return result;
}

double sub_100127814(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_100127828(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, char a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v27[3] = a13;
  v27[4] = a14;
  v21 = sub_100013234(v27);
  (*(*(a13 - 8) + 16))(v21, a1, a13);
  sub_10011E964(v27, a2, a3, a4, a5, a6, a7, a8, v26, a9, a10, a11);
  swift_beginAccess();
  sub_1001275A8();
  v22 = *(*(a12 + 16) + 16);
  sub_100127678(v22);
  v23 = *(a12 + 16);
  *(v23 + 16) = v22 + 1;
  sub_10001A798(v26, v23 + 40 * v22 + 32);
  *(a12 + 16) = v23;
  swift_endAccess();
  return sub_1000034F8(v27);
}

uint64_t sub_1001279B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10, uint64_t a11)
{
  v19 = a4;
  v54[3] = a7;
  v54[4] = a10;
  v20 = sub_100013234(v54);
  (*(*(a7 - 8) + 16))(v20, a1, a7);
  v53[3] = a8;
  v53[4] = a11;
  v21 = sub_100013234(v53);
  (*(*(a8 - 8) + 16))(v21, a3, a8);
  sub_100013334(a2, v51);
  sub_100013334(v53, &v52);
  sub_10002EB80(&qword_10019CBB8, &unk_100152950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014ECA0;
  sub_100129270(v54, 0x204E474945524F46, 0xEB0000000059454BLL, (inited + 32));
  sub_100011EE4(v51, &v47, &qword_10019CBD0, &qword_100152970);
  sub_1001271A4(&v47, v50, (inited + 72));
  sub_1000034F8(v50);
  sub_1000034F8(&v47);
  if (v19 == 5)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
  }

  else
  {
    *&v47 = 0x5441445055204E4FLL;
    *(&v47 + 1) = 0xEA00000000002045;
    v28._countAndFlagsBits = TableBuilder.Dependency.rawValue.getter(a4);
    String.append(_:)(v28);

    v24 = *(&v47 + 1);
    v23 = v47;
    v26 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
    v27 = &protocol witness table for Expression<A>;
    v25 = _swiftEmptyArrayStorage;
  }

  *(inited + 112) = v23;
  *(inited + 120) = v24;
  *(inited + 128) = v25;
  *(inited + 136) = v26;
  *(inited + 144) = v27;
  if (a5 == 5)
  {
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
  }

  else
  {
    *&v47 = 0x54454C4544204E4FLL;
    *(&v47 + 1) = 0xEA00000000002045;
    v34._countAndFlagsBits = TableBuilder.Dependency.rawValue.getter(a5);
    String.append(_:)(v34);

    v30 = *(&v47 + 1);
    v29 = v47;
    v32 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
    v33 = &protocol witness table for Expression<A>;
    v31 = _swiftEmptyArrayStorage;
  }

  *(inited + 152) = v29;
  *(inited + 160) = v30;
  v35 = 32;
  *(inited + 168) = v31;
  *(inited + 176) = v32;
  *(inited + 184) = v33;
  v36 = _swiftEmptyArrayStorage;
  do
  {
    sub_100011EE4(inited + v35, &v47, &qword_10019CBC0, &qword_100152960);
    v44[0] = v47;
    v44[1] = v48;
    v45 = v49;
    if (*(&v48 + 1))
    {
      sub_10001A798(v44, v46);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10001A674(0, v36[2] + 1, 1, v36, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v36 = v39;
      }

      v38 = v36[2];
      v37 = v36[3];
      if (v38 >= v37 >> 1)
      {
        sub_10001A674(v37 > 1, v38 + 1, 1, v36, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v36 = v40;
      }

      v36[2] = v38 + 1;
      sub_10001A798(v46, &v36[5 * v38 + 4]);
    }

    else
    {
      sub_100003E9C(v44, &qword_10019CBC0, &qword_100152960);
    }

    v35 += 40;
  }

  while (v35 != 192);
  swift_setDeallocating();
  sub_100018848(&qword_10019CBC0, &qword_100152960);
  sub_100013640(v36, &v47);

  swift_beginAccess();
  sub_1001275A8();
  v41 = *(*(a6 + 16) + 16);
  sub_100127678(v41);
  v42 = *(a6 + 16);
  *(v42 + 16) = v41 + 1;
  sub_10001A798(&v47, v42 + 40 * v41 + 32);
  *(a6 + 16) = v42;
  swift_endAccess();
  sub_100003E9C(v51, &qword_10019CBD0, &qword_100152970);
  sub_1000034F8(v54);
  return sub_1000034F8(v53);
}

unint64_t sub_100127E98()
{
  result = qword_10019CBE8;
  if (!qword_10019CBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019CBE8);
  }

  return result;
}

unint64_t sub_100127EF0()
{
  result = qword_10019CBF0;
  if (!qword_10019CBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019CBF0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TableBuilder.Dependency(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TableBuilder.Dependency(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PrimaryKey(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_10012833C(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v2[9].n128_u64[0] = 0;
  v2[9].n128_u64[1] = 0x4C4C554E20544F4ELL;
  v2[10].n128_u64[0] = 0xE800000000000000;
  v2[10].n128_u64[1] = a1;
  v2[12] = a2;
  v2[13] = a2;
  v2[14].n128_u64[0] = 0;
}

double sub_100128380()
{
  result = 0.0;
  *(v0 + 352) = 0u;
  *(v0 + 368) = 0u;
  return result;
}

void sub_1001283CC()
{

  sub_100018C6C(v2, v1, v0);
}

uint64_t sub_1001283E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return sub_1001271A4(va, v17 + 40, v16);
}

uint64_t sub_100128404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return sub_10012749C(va, (v16 + 232));
}

uint64_t sub_10012842C(uint64_t a1)
{

  return swift_allocObject();
}

void sub_100128460()
{

  sub_100018C6C(v1, v0, v2);
}

uint64_t sub_10012848C()
{

  return sub_100003E9C(v2 - 224, v0, v1);
}

void sub_1001284A8()
{

  sub_100018C6C(v2, v1, v0);
}

double sub_100128500(uint64_t a1, uint64_t a2)
{

  return result;
}

double sub_100128538()
{

  return result;
}

uint64_t sub_100128560()
{

  return type metadata accessor for Optional();
}

uint64_t sub_10012859C()
{

  return type metadata accessor for Optional();
}

uint64_t sub_1001285B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return type metadata accessor for Expression(0, v4, a3, a4);
}

double sub_1001285D8()
{

  return result;
}

double sub_100128604()
{
  result = 0.0;
  v0[8] = 0u;
  v0[9] = 0u;
  v0[6] = 0u;
  v0[7] = 0u;
  v0[5] = 0u;
  return result;
}

double sub_100128624()
{
  *(v0 + 264) = 0;
  result = 0.0;
  *(v0 + 248) = 0u;
  *(v0 + 232) = 0u;
  return result;
}

void sub_100128638(__n128 a1, __n128 a2)
{
  v2[10] = a2;
  v2[11] = a1;
  v2[12].n128_u64[0] = v2[22].n128_u64[0];
}

void sub_100128664(__n128 a1)
{
  v1[9] = a1;
  v1[10] = a1;
  v1[11] = a1;
  v1[12] = a1;
  v1[13] = a1;
  v1[14].n128_u64[0] = 0;
}

void *sub_1001286E0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char __dst, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va1, a28);
  va_start(__srca, a28);
  __src = va_arg(va1, void);
  v32 = va_arg(va1, void);
  v33 = va_arg(va1, void);
  v34 = va_arg(va1, void);
  v35 = va_arg(va1, void);
  v36 = va_arg(va1, void);
  v37 = va_arg(va1, void);
  v38 = va_arg(va1, void);
  v39 = va_arg(va1, void);
  v40 = va_arg(va1, void);

  return memcpy(&__dst, __srca, 0x50uLL);
}

double sub_100128700(uint64_t a1, uint64_t a2)
{

  return result;
}

uint64_t sub_100128720(uint64_t a1)
{

  return sub_100129C20();
}

uint64_t sub_100128740(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);

  return sub_100011EE4(va, &a33, a3, a4);
}

uint64_t sub_100128758@<X0>(uint64_t a2@<X1>, uint64_t *x8_0@<X8>, uint64_t _0, uint64_t _8, uint64_t _10, uint64_t _18, uint64_t _20, uint64_t _28, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return sub_100129270(va, a2, 0xE700000000000000, x8_0);
}

uint64_t sub_100128770(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);

  return sub_100011EE4(v32 - 176, va, a3, a4);
}

double sub_100128788()
{

  return result;
}

double sub_1001287A0(uint64_t a1, uint64_t a2)
{

  return result;
}

double sub_1001287B8()
{

  return result;
}

uint64_t sub_1001287D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);

  return sub_100011EE4(v32 - 224, va, a3, a4);
}

uint64_t *sub_1001287E8@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 200) = v1;
  *(v2 - 192) = a1;

  return sub_100013234((v2 - 224));
}

double sub_100128800()
{

  return result;
}

uint64_t sub_100128818()
{

  return sub_100018848(v0, v1);
}

uint64_t sub_100128830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  return sub_100013334(a16, va);
}

uint64_t sub_100128848()
{

  return sub_10001A798((v0 + 320), v0 + 80);
}

void *Blob.init(bytes:length:)(const void *a1, int64_t a2)
{
  if (!a2)
  {
    return _swiftEmptyArrayStorage;
  }

  if (a2 < 1)
  {
    v4 = _swiftEmptyArrayStorage;
  }

  else
  {
    sub_10002EB80(&qword_100198D58, &unk_100152B60);
    v4 = swift_allocObject();
    v5 = j__malloc_size(v4);
    v4[2] = a2;
    v4[3] = 2 * v5 - 64;
  }

  memcpy(v4 + 4, a1, a2);
  return v4;
}

Swift::String __swiftcall Blob.toHex()()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v0;
    sub_100011438(0, v1, 0);
    v3 = (v2 + 32);
    sub_100128B5C();
    do
    {
      v4 = *v3++;
      v5 = v4 >= 0x10;
      if (v4 >= 0x10)
      {
        v6 = 0;
      }

      else
      {
        v6 = 48;
      }

      if (v5)
      {
        v7 = 0xE000000000000000;
      }

      else
      {
        v7 = 0xE100000000000000;
      }

      v8 = String.init<A>(_:radix:uppercase:)();
      v10 = v9;

      v11._countAndFlagsBits = v8;
      v11._object = v10;
      String.append(_:)(v11);

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        sub_100011438(v12 > 1, v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[2 * v13];
      v14[4] = v6;
      v14[5] = v7;
      --v1;
    }

    while (v1);
  }

  sub_10002EB80(&unk_10019ACC0, &qword_1001507B0);
  sub_10009153C();
  v15 = BidirectionalCollection<>.joined(separator:)();
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result._object = v19;
  result._countAndFlagsBits = v18;
  return result;
}

uint64_t Blob.description.getter()
{
  v0 = Blob.toHex()();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 39;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 10104;
}

uint64_t sub_100128B00(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100128B5C()
{
  result = qword_10019CCB8;
  if (!qword_10019CCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019CCB8);
  }

  return result;
}

char *sub_100128BC0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100128D58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100128BE0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100128E68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100128C00(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100128F70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100128C20(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100129088(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100128C40(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_100071698((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10002EB80(&qword_10019B238, &unk_100152B50);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_100128D58(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10002EB80(&qword_10019CCD0, &qword_100152C08);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1001282E8((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10002EB80(&qword_10019CCD8, &unk_100152C10);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_100128E68(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10002EB80(&unk_10019AAE0, &unk_10014BE30);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 80);
      if (v5)
      {
LABEL_13:
        sub_1001277EC((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_100128F70(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10002EB80(&qword_10019CC98, &qword_100152B20);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_100071698((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10002EB80(&qword_10019CCA0, &unk_100152B28);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_100129088(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10002EB80(&qword_10019CCC0, &qword_100152BF8);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1001282E8((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10002EB80(&qword_10019CCC8, &qword_100152C00);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_100129198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v18 = a2;
  v19 = a3;

  v6._countAndFlagsBits = 32;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  v7 = v18;
  v8 = v19;
  sub_100013640(a1, &v18);
  v9 = v20;
  v10 = v21;
  v11 = sub_1000034B4(&v18, v20);
  v12 = sub_100129AC4(v11, v7, v8, v9, v10);
  v14 = v13;
  v16 = v15;

  sub_1000034F8(&v18);
  result = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  a4[3] = result;
  a4[4] = &protocol witness table for Expression<A>;
  *a4 = v12;
  a4[1] = v14;
  a4[2] = v16;
  return result;
}

uint64_t sub_100129270@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{

  v6._countAndFlagsBits = 32;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  v7 = a1[3];
  v8 = a1[4];
  v9 = sub_1000034B4(a1, v7);
  v10 = sub_100129AC4(v9, a2, a3, v7, v8);
  v12 = v11;
  v14 = v13;

  result = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  a4[3] = result;
  a4[4] = &protocol witness table for Expression<A>;
  *a4 = v10;
  a4[1] = v12;
  a4[2] = v14;
  return result;
}

void sub_10012932C(void *a1, uint64_t a2, uint64_t a3)
{

  v4._countAndFlagsBits = 40;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v5 = a1[3];
  v6 = a1[4];
  sub_1000034B4(a1, v5);
  v7 = *(v6 + 8);
  v8 = v7(v5, v6);
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 41;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  v7(v5, v6);

  static Int64.fromDatatypeValue(_:)();
}

uint64_t sub_10012946C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v9 = a3;
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014BC40;
  sub_100013334(a1, inited + 32);
  sub_100013334(a2, inited + 72);
  v13 = sub_100129544(inited, v9, a4, a5, a6);
  swift_setDeallocating();
  sub_100018898();
  return v13;
}

uint64_t sub_100129544(uint64_t a1, char a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = type metadata accessor for Expression(0, a5, a3, a4);
  v23 = 32;
  v24 = 0xE100000000000000;
  v10._countAndFlagsBits = a3;
  v10._object = a4;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 32;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  sub_100013640(a1, &v23);

  v12 = v26;
  v13 = v27;
  sub_1000034B4(&v23, v26);
  v22[0] = (v13[1])(v12, v13);
  v22[1] = v14;
  v22[2] = v15;
  v16 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  WitnessTable = swift_getWitnessTable();
  v18 = sub_100013EBC(&qword_10019CCF0, &qword_10019CA28, &unk_100152718, &protocol conformance descriptor for Expression<A>);
  ExpressionType.init<A>(_:)(v22, v9, v16, WitnessTable, v18);
  sub_1000034F8(&v23);
  v19 = v28;
  if (a2)
  {
    v26 = v9;
    v27 = &protocol witness table for Expression<A>;
    v23 = v28;
    v24 = v29;
    v25 = v30;
    sub_10012932C(&v23, 0, 0xE000000000000000);
    v19 = v20;
    sub_1000034F8(&v23);
  }

  return v19;
}

uint64_t sub_1001296FC(uint64_t a1)
{
  sub_10001B618(a1, &v8);
  if (v9)
  {
    sub_1000716A0(&v8, v10);
    sub_100013334(v10, &v8);
    sub_10002EB80(&unk_10019ABC0, &qword_10014F8D0);
    if (swift_dynamicCast())
    {
      v6 = 10104;
      v7 = 0xE200000000000000;
      v1 = Blob.toHex()();
      String.append(_:)(v1);

      v2._countAndFlagsBits = 39;
      v2._object = 0xE100000000000000;
      String.append(_:)(v2);

      v3 = 10104;
    }

    else
    {
      if (!swift_dynamicCast())
      {
        sub_1000716A0(&v8, &v6);
        _print_unlocked<A, B>(_:_:)();
        v3 = 0;
        sub_1000034F8(&v6);
        v4 = v10;
        goto LABEL_9;
      }

      v3 = sub_1000198BC(39, 0xE100000000000000, v6, v7);
    }

    sub_1000034F8(v10);
    v4 = &v8;
LABEL_9:
    sub_1000034F8(v4);
    return v3;
  }

  sub_10010E64C(&v8);
  return 1280070990;
}

uint64_t sub_100129890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v10 = &v14[-v9 - 8];
  v11 = swift_getAssociatedTypeWitness();
  __chkstk_darwin(v11);
  sub_100013334(a1, v14);
  sub_10002EB80(&unk_10019ABC0, &qword_10014F8D0);
  swift_dynamicCast();
  (*(a3 + 48))(v10, a2, a3);
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  return swift_dynamicCast();
}

uint64_t sub_100129A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001B618(a1, v7);
  if (v7[3])
  {
    sub_100129890(v7, a2, a3);
    return sub_1000034F8(v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100129AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a4;
  v23 = a5;
  v9 = sub_100013234(v21);
  (*(*(a4 - 8) + 16))(v9, a1, a4);
  v20 = a2;

  v10._countAndFlagsBits = 40;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  v11 = v22;
  v12 = v23;
  sub_1000034B4(v21, v22);
  v13 = *(a5 + 8);
  v14 = v13(a4, a5);
  v16 = v15;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 41;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  v13(v11, v12);

  sub_1000034F8(v21);
  return v20;
}

void sub_100129C24(uint64_t a1)
{
  v4 = sub_100007F00(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_100147A24(v4, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_10012E798();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = v6 + 40 * v7;
  v10 = sub_10002EB80(&qword_100199ED0, &qword_10014ED20);
  sub_100011560(v9 + 32, v11, v12, v10);

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v13 = *(v6 + 16);
  v5 = __OFADD__(v13, v1);
  v14 = v13 + v1;
  if (!v5)
  {
    *(v6 + 16) = v14;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_100129CE0(uint64_t a1)
{
  v4 = sub_100007F00(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_100147A3C(v4, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_10012E798();
  if (v10 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_100011560(v6 + 80 * v9 + 32, v7, v8, &type metadata for Setter);

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v11 = *(v6 + 16);
  v5 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v5)
  {
    *(v6 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_100129D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100129E08(a4);
  v11 = sub_10012946C(a1, a2, a3, v9, v10, a5);

  return v11;
}

uint64_t sub_100129E08(char a1)
{
  result = 43;
  switch(a1)
  {
    case 1:
      result = 45;
      break;
    case 2:
      result = 21071;
      break;
    case 3:
      result = 4476481;
      break;
    case 4:
      result = 542396238;
      break;
    case 5:
      result = 42;
      break;
    case 6:
      result = 47;
      break;
    case 7:
      result = 37;
      break;
    case 8:
      result = 15420;
      break;
    case 9:
      result = 15934;
      break;
    case 10:
      result = 38;
      break;
    case 11:
      result = 124;
      break;
    case 12:
      result = 126;
      break;
    case 13:
      result = 61;
      break;
    case 14:
      result = 15649;
      break;
    case 15:
      result = 62;
      break;
    case 16:
      result = 60;
      break;
    case 17:
      result = 15678;
      break;
    case 18:
      result = 15676;
      break;
    case 19:
      result = 31868;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100129EFC(void *a1, char a2)
{
  v3 = sub_100129E08(a2);
  sub_10012932C(a1, v3, v4);
  v6 = v5;

  return v6;
}

uint64_t + infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_10012A274(a1, a2, a3, a4, a5, &unk_10019AAC0, &unk_10014BE40);
}

{
  return sub_10012A274(a1, a2, a3, a4, a5, &qword_100199518, &unk_10014ED10);
}

{
  return sub_10012A3D8(a1, a2, a3, a4, a5, &unk_10019AAC0, &unk_10014BE40);
}

{
  return sub_10012A3D8(a1, a2, a3, a4, a5, &qword_100199518, &unk_10014ED10);
}

uint64_t + infix<A>(_:_:)()
{
  sub_100013A44();
  return sub_10012A750();
}

{
  sub_100013A44();
  return sub_10012A7FC();
}

{
  sub_100013A44();
  return sub_10012A8B8();
}

{
  sub_100013A44();
  return sub_10012A97C();
}

uint64_t + infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return sub_10012AA0C(a1, a2, a3, a4, a5, a6, a7, 0);
}

{
  return sub_10012AAB4(a1, a2, a3, a4, a5, a6, a7, 0);
}

{
  return sub_10012AB64();
}

{
  return sub_10012AC0C();
}

uint64_t - infix<A>(_:_:)()
{
  sub_100011B7C();
  return sub_10012A750();
}

{
  sub_100011B7C();
  return sub_10012A7FC();
}

{
  sub_100011B7C();
  return sub_10012A8B8();
}

{
  sub_100011B7C();
  return sub_10012A97C();
}

uint64_t - infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return sub_10012AA0C(a1, a2, a3, a4, a5, a6, a7, 1);
}

{
  return sub_10012AAB4(a1, a2, a3, a4, a5, a6, a7, 1);
}

{
  return sub_10012AB64();
}

{
  return sub_10012AC0C();
}

uint64_t * infix<A>(_:_:)()
{
  sub_10000C970();
  return sub_10012A750();
}

{
  sub_10000C970();
  return sub_10012A7FC();
}

{
  sub_10000C970();
  return sub_10012A8B8();
}

{
  sub_10000C970();
  return sub_10012A97C();
}

uint64_t * infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return sub_10012AA0C(a1, a2, a3, a4, a5, a6, a7, 5);
}

{
  return sub_10012AAB4(a1, a2, a3, a4, a5, a6, a7, 5);
}

{
  return sub_10012AB64();
}

{
  return sub_10012AC0C();
}

uint64_t / infix<A>(_:_:)()
{
  sub_100004910();
  return sub_10012A750();
}

{
  sub_100004910();
  return sub_10012A7FC();
}

{
  sub_100004910();
  return sub_10012A8B8();
}

{
  sub_100004910();
  return sub_10012A97C();
}

uint64_t / infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return sub_10012AA0C(a1, a2, a3, a4, a5, a6, a7, 6);
}

{
  return sub_10012AAB4(a1, a2, a3, a4, a5, a6, a7, 6);
}

{
  return sub_10012AB64();
}

{
  return sub_10012AC0C();
}

uint64_t sub_10012AB64()
{
  sub_100005078();
  sub_10012E83C(v1, v2, v3, v4, v5, v6, v7, v8, v27, v28, v29, v30, v31, v32[0], v32[1], v32[2], v32[3], v32[4]);
  sub_1000073F4();
  sub_1000106C4();
  v10 = v9();
  sub_100023394(v10, v11, v12, v13);
  sub_1000128B0();

  v22 = sub_100018540(v14, v15, v16, v17, v18, v19, v20, v21, v27, v28, v29, v30, v31, v32[0]);
  sub_100129D84(v22, v23, v24, v25, v0);
  sub_100003CB8();
  sub_1000034F8(&v27);
  return sub_10000534C(v32);
}

uint64_t sub_10012AC0C()
{
  sub_100005078();
  sub_10012E83C(v0, v1, v2, v3, v4, v5, v6, v7, v26, v27, v28, v29, v30, v31[0], v31[1], v31[2], v31[3], v31[4]);
  sub_1000073F4();
  sub_1000106C4();
  v8();
  v9 = type metadata accessor for Optional();
  sub_100023394(v9, v10, v11, v12);
  sub_1000128B0();

  v21 = sub_100018540(v13, v14, v15, v16, v17, v18, v19, v20, v26, v27, v28, v29, v30, v31[0]);
  sub_100129D84(v21, v22, v23, v24, v9);
  sub_100003CB8();
  sub_1000034F8(&v26);
  return sub_10000534C(v31);
}

uint64_t - prefix<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10001320C(a1, a2, a3, a4);
  sub_10012EA44();

  sub_100129EFC(v5, 1);
  sub_100003CB8();
  return sub_10000534C(v5);
}

{
  v4 = sub_10012E8FC(a1, a2, a3, a4);
  type metadata accessor for Expression(0, v4, v5, v6);
  sub_10012EA24();

  sub_100129EFC(v8, 1);
  sub_100003CB8();
  return sub_10000534C(v8);
}

uint64_t % infix<A>(_:_:)()
{
  sub_100012BB0();
  return sub_10012B070();
}

{
  sub_100012BB0();
  return sub_10012B11C();
}

{
  sub_100012BB0();
  return sub_10012B1D8();
}

{
  sub_100012BB0();
  return sub_10012B29C();
}

uint64_t % infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_10012B32C(a1, a2, a3, a4, a5, a6, 7);
}

{
  return sub_10012B3D4(a1, a2, a3, a4, a5, a6, 7);
}

{
  return sub_10012B484();
}

{
  return sub_10012B52C();
}

uint64_t << infix<A>(_:_:)()
{
  sub_100019AB0();
  return sub_10012B070();
}

{
  sub_100019AB0();
  return sub_10012B11C();
}

{
  sub_100019AB0();
  return sub_10012B1D8();
}

{
  sub_100019AB0();
  return sub_10012B29C();
}

uint64_t << infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_10012B32C(a1, a2, a3, a4, a5, a6, 8);
}

{
  return sub_10012B3D4(a1, a2, a3, a4, a5, a6, 8);
}

{
  return sub_10012B484();
}

{
  return sub_10012B52C();
}

uint64_t >> infix<A>(_:_:)()
{
  sub_1000294DC();
  return sub_10012B070();
}

{
  sub_1000294DC();
  return sub_10012B11C();
}

{
  sub_1000294DC();
  return sub_10012B1D8();
}

{
  sub_1000294DC();
  return sub_10012B29C();
}

uint64_t >> infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_10012B32C(a1, a2, a3, a4, a5, a6, 9);
}

{
  return sub_10012B3D4(a1, a2, a3, a4, a5, a6, 9);
}

{
  return sub_10012B484();
}

{
  return sub_10012B52C();
}

uint64_t & infix<A>(_:_:)()
{
  sub_1000186E4();
  return sub_10012B070();
}

{
  sub_1000186E4();
  return sub_10012B11C();
}

{
  sub_1000186E4();
  return sub_10012B1D8();
}

{
  sub_1000186E4();
  return sub_10012B29C();
}

uint64_t & infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_10012B32C(a1, a2, a3, a4, a5, a6, 10);
}

{
  return sub_10012B3D4(a1, a2, a3, a4, a5, a6, 10);
}

{
  return sub_10012B484();
}

{
  return sub_10012B52C();
}

uint64_t | infix<A>(_:_:)()
{
  sub_10000E1E4();
  return sub_10012B070();
}

{
  sub_10000E1E4();
  return sub_10012B11C();
}

{
  sub_10000E1E4();
  return sub_10012B1D8();
}

{
  sub_10000E1E4();
  return sub_10012B29C();
}

uint64_t | infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_10012B32C(a1, a2, a3, a4, a5, a6, 11);
}

{
  return sub_10012B3D4(a1, a2, a3, a4, a5, a6, 11);
}

{
  return sub_10012B484();
}

{
  return sub_10012B52C();
}

uint64_t sub_10012B484()
{
  sub_100005078();
  sub_10012E83C(v1, v2, v3, v4, v5, v6, v7, v8, v27, v28, v29, v30, v31, v32[0], v32[1], v32[2], v32[3], v32[4]);
  sub_1000073F4();
  sub_1000106C4();
  v10 = v9();
  sub_100023394(v10, v11, v12, v13);
  sub_1000128B0();

  v22 = sub_100018540(v14, v15, v16, v17, v18, v19, v20, v21, v27, v28, v29, v30, v31, v32[0]);
  sub_100129D84(v22, v23, v24, v25, v0);
  sub_100003CB8();
  sub_1000034F8(&v27);
  return sub_10000534C(v32);
}

uint64_t sub_10012B52C()
{
  sub_100005078();
  sub_10012E83C(v0, v1, v2, v3, v4, v5, v6, v7, v26, v27, v28, v29, v30, v31[0], v31[1], v31[2], v31[3], v31[4]);
  sub_1000073F4();
  sub_1000106C4();
  v8();
  v9 = type metadata accessor for Optional();
  sub_100023394(v9, v10, v11, v12);
  sub_1000128B0();

  v21 = sub_100018540(v13, v14, v15, v16, v17, v18, v19, v20, v26, v27, v28, v29, v30, v31[0]);
  sub_100129D84(v21, v22, v23, v24, v9);
  sub_100003CB8();
  sub_1000034F8(&v26);
  return sub_10000534C(v31);
}

uint64_t ~ prefix<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10001320C(a1, a2, a3, a4);
  sub_10012EA44();

  sub_100129EFC(v5, 12);
  sub_100003CB8();
  return sub_10000534C(v5);
}

{
  v4 = sub_10012E8FC(a1, a2, a3, a4);
  type metadata accessor for Expression(0, v4, v5, v6);
  sub_10012EA24();

  sub_100129EFC(v8, 12);
  sub_100003CB8();
  return sub_10000534C(v8);
}

void sub_10012B70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t (*a25)(void), uint64_t (*a26)(uint64_t), uint64_t (*a27)(uint64_t), void (*a28)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_10012E988();
  v29 = v28;
  sub_1000067D4();
  v30 = a25();
  v39 = a26(v30);
  v32 = v31;
  v34 = v33;

  v35 = sub_100004BF4();
  v36 = a27(v35);
  a28(v39, v32, v34, v36, v37, v38, v29);

  sub_1000113C0();
  sub_10012E96C();
}

uint64_t ^ infix<A>(_:_:)()
{
  sub_100021608();
  return sub_10012B9FC(v0);
}

{
  sub_10000C10C();
  return sub_10012B9FC(v0);
}

{
  sub_100021608();
  return sub_10012BB60(v0);
}

{
  sub_10000C10C();
  return sub_10012BB60(v0);
}

uint64_t === infix<A>(_:_:)()
{
  sub_100019DA0();
  return sub_10001D890();
}

{
  sub_100019DA0();
  return sub_10012C034();
}

{
  sub_10012E884();
  return sub_10012C1B4(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
}

{
  sub_10001DD64();
  return sub_10012C6A4(v0);
}

{
  sub_10012E884();
  return sub_10012C818(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
}

uint64_t sub_10012C1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void *a11)
{
  v74 = a8;
  v75 = a6;
  v76 = a2;
  v77 = a3;
  sub_10001DA0C();
  v14 = type metadata accessor for Optional();
  sub_10000518C();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_1000273BC();
  __chkstk_darwin(v18);
  v20 = v73 - v19;
  sub_10000518C();
  v22 = v21;
  v24 = __chkstk_darwin(v23);
  v26 = v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v20, a4, v14, v24);
  if (sub_1000032C4(v20, 1, a5) == 1)
  {
    (*(v16 + 8))(v20, v14);
    v29 = type metadata accessor for Expression(0, v14, v27, v28);
    v88 = v29;
    v89 = &protocol witness table for Expression<A>;
    v85 = a1;
    v86 = v76;
    v87 = v77;
    sub_10012E9C4();
    v83 = v29;
    v84 = &protocol witness table for Expression<A>;

    sub_100012948();
    swift_getWitnessTable();
    sub_100010614();
    swift_getWitnessTable();
    sub_1000106C4();
    ExpressionType<>.init(value:)(v30, v31, v32, v75, v33);
    sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
    inited = swift_initStackObject();
    v35 = sub_10012E7CC(inited, xmmword_10014BC40);
    sub_100013334(v35, &inited[2]);
    sub_100013334(v82, &inited[4].n128_i64[1]);
    sub_100002758();
    v78 = v36;
    v79 = v37;
    v38._countAndFlagsBits = a10;
    v38._object = a11;
    String.append(_:)(v38);
    sub_10000EF48();
    sub_10012E960();
    sub_100013640(inited, v39);

    sub_1000034B4(&v78, v80);
    sub_1000126CC();
    v40 = sub_10000373C();
    v41(v40);
    sub_1000034F8(&v78);
    sub_100009AE4();
    v49 = sub_10001859C(v42, v43, v44, v45, v46, v47, v48);

    swift_setDeallocating();
    sub_100018898();
  }

  else
  {
    v73[1] = v22;
    (*(v22 + 32))(v26, v20, a5);
    v88 = type metadata accessor for Expression(0, v14, v50, v51);
    v89 = &protocol witness table for Expression<A>;
    v85 = a1;
    v86 = v76;
    v87 = v77;
    v52 = *(v75 + 8);
    v83 = a5;
    v84 = v52;
    sub_100013234(v82);
    sub_10012E7F0();
    v53();
    sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
    v54 = swift_initStackObject();
    v55 = sub_10012E7CC(v54, xmmword_10014BC40);
    sub_100013334(v55, &v54[2]);
    sub_100013334(v82, &v54[4].n128_i64[1]);
    sub_100002758();
    v78 = v56;
    v79 = v57;

    v58._countAndFlagsBits = v74;
    v58._object = a9;
    String.append(_:)(v58);
    sub_10000EF48();
    sub_10012E960();
    sub_100013640(v54, v59);

    v60 = v80;
    v61 = v81;
    sub_1000034B4(&v78, v80);
    sub_1000126CC();
    v62(v60, v61);
    sub_10001830C();
    sub_100009AE4();
    v49 = sub_10001859C(v63, v64, v65, v66, v67, v68, v69);

    swift_setDeallocating();
    sub_100018898();
    v70 = sub_100004F8C();
    v71(v70);
  }

  sub_1000034F8(v82);
  sub_1000034F8(&v85);
  return v49;
}

uint64_t sub_10012C818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void *a11)
{
  v73 = a8;
  v74 = a2;
  v75 = a3;
  v76 = a4;
  sub_10001DA0C();
  v15 = type metadata accessor for Optional();
  sub_10000518C();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_1000273BC();
  __chkstk_darwin(v19);
  v21 = &v71 - v20;
  sub_10000518C();
  v23 = v22;
  v25 = __chkstk_darwin(v24);
  v27 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v21, a1, v15, v25);
  if (sub_1000032C4(v21, 1, a5) == 1)
  {
    v28 = (*(v17 + 8))(v21, v15);
    v32 = sub_100021344(v28, v29, v30, v31);
    sub_10012E9C4();
    v84 = v32;
    v85 = &protocol witness table for Expression<A>;
    sub_100012948();
    WitnessTable = swift_getWitnessTable();
    sub_100010614();
    swift_getWitnessTable();
    ExpressionType<>.init(value:)(v11, v32, WitnessTable, a6, v83);
    v81 = v32;
    v82 = &protocol witness table for Expression<A>;
    sub_10012E938();
    sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
    inited = swift_initStackObject();
    v35 = sub_10012E7CC(inited, xmmword_10014BC40);
    sub_100013334(v35, &inited[2]);
    sub_100013334(v80, &inited[4].n128_i64[1]);
    sub_100002758();
    v77 = v36;
    v78 = v37;

    v38._countAndFlagsBits = a10;
    v38._object = a11;
    String.append(_:)(v38);
    sub_10000EF48();
    sub_10012E960();
    sub_100013640(inited, v39);

    sub_1000034B4(&v77, v79);
    sub_1000126CC();
    v40 = sub_10000373C();
    v41(v40);
    sub_1000034F8(&v77);
    sub_100009AE4();
    sub_10001859C(v42, v43, v44, v45, v46, v47, v48);

    swift_setDeallocating();
    sub_100018898();
  }

  else
  {
    v72 = v23;
    (*(v23 + 32))(v27, v21, a5);
    v49 = *(a6 + 8);
    v84 = a5;
    v85 = v49;
    v50 = sub_100013234(v83);
    v51 = (*(v23 + 16))(v50, v27, a5);
    v81 = sub_100021344(v51, v52, v53, v54);
    v82 = &protocol witness table for Expression<A>;
    sub_10012E938();
    sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
    v55 = swift_initStackObject();
    v56 = sub_10012E7CC(v55, xmmword_10014BC40);
    sub_100013334(v56, &v55[2]);
    sub_100013334(v80, &v55[4].n128_i64[1]);
    sub_100002758();
    v77 = v57;
    v78 = v58;

    v59._countAndFlagsBits = v73;
    v59._object = a9;
    String.append(_:)(v59);
    sub_10000EF48();
    sub_10012E960();
    sub_100013640(v55, v60);

    sub_1000034B4(&v77, v79);
    sub_1000126CC();
    v61 = sub_10000373C();
    v62(v61);
    sub_10001830C();
    sub_100009AE4();
    sub_10001859C(v63, v64, v65, v66, v67, v68, v69);

    swift_setDeallocating();
    sub_100018898();
    (*(v72 + 8))(v27, a5);
  }

  sub_1000034F8(v80);
  sub_1000034F8(v83);
  return sub_10000373C();
}

uint64_t != infix<A>(_:_:)()
{
  sub_1000247A0();
  return sub_10001D890();
}

{
  sub_1000247A0();
  return sub_10012C034();
}

{
  sub_100018B14();
  return sub_10012C1B4(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
}

{
  sub_10001DD64();
  return sub_10012C6A4(v0);
}

{
  sub_100018B14();
  return sub_10012C818(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
}

uint64_t !== infix<A>(_:_:)()
{
  sub_100007904();
  return sub_10001D890();
}

{
  sub_100007904();
  return sub_10012C034();
}

{
  sub_100013318();
  return sub_10012C1B4(v0, v1, v2, v3, v4, v5, v6, v7, v8, v7, v8);
}

{
  sub_100013318();
  return sub_10012C6A4(v0);
}

{
  sub_100013318();
  return sub_10012C818(v0, v1, v2, v3, v4, v5, v6, v7, v8, v7, v8);
}

uint64_t > infix<A>(_:_:)()
{
  sub_100013D20();
  return sub_10001D890();
}

{
  sub_100013D20();
  return sub_10012C034();
}

{
  sub_10000472C();
  return sub_10012D138();
}

{
  sub_10000472C();
  return sub_10012C6A4(v0);
}

{
  sub_10000472C();
  return sub_10012D2D0();
}

uint64_t >= infix<A>(_:_:)()
{
  sub_10002490C();
  return sub_10001D890();
}

{
  sub_10002490C();
  return sub_10012C034();
}

{
  sub_10001DD64();
  return sub_10012D138();
}

{
  sub_10001DD64();
  return sub_10012C6A4(v0);
}

{
  sub_10001DD64();
  return sub_10012D2D0();
}

uint64_t < infix<A>(_:_:)()
{
  sub_1000187DC();
  return sub_10001D890();
}

{
  sub_1000187DC();
  return sub_10012C034();
}

{
  sub_10000472C();
  return sub_10012D138();
}

{
  sub_10000472C();
  return sub_10012C6A4(v0);
}

{
  sub_10000472C();
  return sub_10012D2D0();
}

uint64_t <= infix<A>(_:_:)()
{
  sub_10001AA60();
  return sub_10001D890();
}

{
  sub_10001AA60();
  return sub_10012C034();
}

{
  sub_10001DD64();
  return sub_10012D138();
}

{
  sub_10001DD64();
  return sub_10012C6A4(v0);
}

{
  sub_10001DD64();
  return sub_10012D2D0();
}

uint64_t ~= infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return sub_10012D68C(a1, a2, a3, a4, a5, a6, a7);
}

{
  return ~= infix<A>(_:_:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_10012D68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_10012E9E4();

  v10._object = 0x8000000100158D50;
  v10._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v10);
  sub_10002EB80(&unk_10019B450, &unk_10014ED30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014BC40;
  v12 = *(a6 + 56);
  sub_10000E84C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(inited + 56) = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(inited + 64) = AssociatedConformanceWitness;
  sub_100013234((inited + 32));
  v12(a5, a6);
  type metadata accessor for ClosedRange();
  *(inited + 96) = AssociatedTypeWitness;
  *(inited + 104) = AssociatedConformanceWitness;
  sub_100013234((inited + 72));
  v12(a5, a6);

  sub_100129C24(inited);
  return a2;
}

void ~= infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  sub_10012D83C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50);
}

{
  ~= infix<A>(_:_:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50);
}

void sub_10012D83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  sub_100007A0C();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  sub_10012E9E4();

  v58._countAndFlagsBits = 0x4E41203F203D3E20;
  v58._object = 0xEA00000000002044;
  String.append(_:)(v58);
  v59._countAndFlagsBits = v57;
  v59._object = v55;
  String.append(_:)(v59);
  v60._countAndFlagsBits = 1059077152;
  v60._object = 0xE400000000000000;
  String.append(_:)(v60);
  sub_10002EB80(&unk_10019B450, &unk_10014ED30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014CE90;
  v62 = *(v51 + 56);
  sub_10012E7F0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(inited + 56) = AssociatedTypeWitness;
  sub_100004F8C();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(inited + 64) = AssociatedConformanceWitness;
  sub_100013234((inited + 32));

  v65 = sub_1000064C8();
  v62(v65);

  sub_100129C24(inited);
  sub_100129C24(v53);
  v66 = swift_initStackObject();
  *(v66 + 16) = xmmword_10014CE90;
  type metadata accessor for Range();
  *(v66 + 56) = AssociatedTypeWitness;
  *(v66 + 64) = AssociatedConformanceWitness;
  sub_100013234((v66 + 32));
  v67 = sub_1000064C8();
  v62(v67);
  sub_100129C24(v66);
  sub_10001D634();
}

uint64_t ~= infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return sub_100005D64(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

{
  return sub_10012DAB0(a1, a2, a3, a4, a5, a6, a7, a8, a9, 1059077152, 0xE400000000000000);
}

{
  return sub_100005D64(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

{
  return ~= infix<A>(_:_:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

{
  return ~= infix<A>(_:_:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

{
  return ~= infix<A>(_:_:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_10012DAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{

  v12._countAndFlagsBits = a10;
  v12._object = a11;
  String.append(_:)(v12);
  sub_10002EB80(&unk_10019B450, &unk_10014ED30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014CE90;
  v14 = *(a6 + 56);
  *(inited + 56) = swift_getAssociatedTypeWitness();
  sub_1000064C8();
  *(inited + 64) = swift_getAssociatedConformanceWitness();
  sub_100013234((inited + 32));
  v15 = sub_100004F8C();
  v14(v15);

  sub_100129C24(inited);
  return a2;
}

void *sub_10012DBF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v15 = _swiftEmptyArrayStorage;
    sub_10001E058(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 48);
    do
    {
      v6 = *(v4 - 2);
      v5 = *(v4 - 1);
      v7 = *v4;
      v15 = v2;
      v8 = v2[2];
      v9 = v2[3];

      if (v8 >= v9 >> 1)
      {
        sub_10001E058((v9 > 1), v8 + 1, 1);
        v2 = v15;
      }

      v13 = sub_10002EB80(&qword_10019CBD8, &qword_100152978);
      v14 = &protocol witness table for Expression<A>;
      *&v11 = v6;
      *(&v11 + 1) = v5;
      v12 = v7;
      v2[2] = v8 + 1;
      sub_10001A798(&v11, &v2[5 * v8 + 4]);
      v4 += 3;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_10012DD10(uint64_t a1)
{
  sub_10012DBF4(a1);
  sub_1000135EC();
  v1._countAndFlagsBits = sub_100004F8C();
  String.append(_:)(v1);
  sub_1000127CC();
  sub_10001A8DC(v2, v3, v4, v5, v6, v7, v8, v9, v17, v18[0], v18[1]);

  v10 = sub_100007D04(v18);
  v11(v10);
  sub_100012134();
  v12 = sub_1000034F8(v18);
  sub_100009AC0(v12, v13, v14, v15, v16, &qword_10019CBD8, &qword_100152978);
  sub_10000896C();

  sub_1000113C0();
}

uint64_t && infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_100012FA0(a1, a2, a3, a4, &qword_10019CBD8, &qword_100152978);
}

{
  return sub_100012FA0(a1, a2, a3, a4, &qword_10019CBE0, &unk_100152980);
}

{
  return sub_1000112E4(a1, a2, a3, a4, &qword_10019CBD8, &qword_100152978);
}

{
  return sub_1000112E4(a1, a2, a3, a4, &qword_10019CBE0, &unk_100152980);
}

uint64_t || infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_10001D690(a1, a2, a3, a4, &qword_10019CBD8, &qword_100152978);
}

{
  return sub_10001D690(a1, a2, a3, a4, &qword_10019CBE0, &unk_100152980);
}

{
  return sub_100018BF4(a1, a2, a3, a4, &qword_10019CBD8, &qword_100152978);
}

{
  return sub_100018BF4(a1, a2, a3, a4, &qword_10019CBE0, &unk_100152980);
}

uint64_t ! prefix(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_10001859C(a1, a2, a3, 542396238, 0xE400000000000000, &qword_10019CBD8, &qword_100152978);
}

{
  return sub_10001859C(a1, a2, a3, 542396238, 0xE400000000000000, &qword_10019CBE0, &unk_100152980);
}

uint64_t sub_10012E814@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v5 - 96) = result;
  *(v5 - 88) = a2;
  *(v5 - 120) = v4;
  *(v5 - 112) = v3;
  *(v5 - 104) = v2;
  return result;
}

uint64_t *sub_10012E83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = *(a6 + 8);
  a17 = a5;
  a18 = v19;

  return sub_100013234(&a14);
}

uint64_t sub_10012E874(uint64_t result)
{
  *(v5 - 96) = result;
  *(v5 - 88) = v4;
  *(v5 - 120) = v1;
  *(v5 - 112) = v3;
  *(v5 - 104) = v2;
  return result;
}

uint64_t sub_10012E89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);

  return sub_100013334(va, v28 + 72);
}

uint64_t sub_10012E8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return type metadata accessor for Optional();
}

uint64_t sub_10012E8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_10001859C(a1, a2, a3, a4, a5, v5, v6);
}

uint64_t sub_10012E8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return type metadata accessor for Expression(0, a7, a3, a4);
}

uint64_t sub_10012E8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return type metadata accessor for Optional();
}

void sub_10012E938()
{
  v2 = v0[4];
  *(v1 - 168) = v0[3];
  *(v1 - 160) = v2;
  *(v1 - 152) = v0[5];
}

void sub_10012E9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  sub_100013640(v10, &a9);
}

uint64_t sub_10012E9C4()
{

  return sub_1000075C4(v1, 1, 1, v0);
}

void sub_10012E9E4()
{
  *(v0 - 104) = 0;
  *(v0 - 96) = 0xE000000000000000;

  _StringGuts.grow(_:)(18);
}

void sub_10012EA04()
{
  v1 = 4476481;
  v2 = 0xE300000000000000;

  String.append(_:)(*&v1);
}

double sub_10012EA24()
{

  return result;
}

double sub_10012EA44()
{

  return result;
}

uint64_t sub_10012EA64()
{
}

void sub_10012EA90(char a1@<W0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  if (a1)
  {
    sub_100013328();
    sub_100017FF8();
    sub_100018B38();

    sub_100017D44();
  }

  else
  {
    v6 = *(a2 + 16);
    v7 = sub_100013328();
    v6(v7);
    v8 = v13[4];
    v9 = v13[5];

    sub_100018C3C(v13);
    if (!v9)
    {
      v10 = sub_100013328();
      v6(v10);
      v8 = v15;
      v9 = v16;

      sub_100018C3C(v14);
    }

    a3[3] = sub_10002EB80(&qword_10019CA28, &unk_100152718);
    a3[4] = &protocol witness table for Expression<A>;
    v11 = sub_100012BA4();
    sub_1000198BC(v11, v12, v8, v9);
    sub_1000064BC();

    *a3 = v3;
    a3[1] = v8;
    a3[2] = _swiftEmptyArrayStorage;
    sub_100018B38();
  }
}

void *sub_10012EBBC(void (*a1)(void *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v19 = _swiftEmptyArrayStorage;
  sub_100011438(0, v5, 0);
  v6 = _swiftEmptyArrayStorage;
  for (i = (a3 + 40); ; i += 2)
  {
    v9 = *i;
    v17[0] = *(i - 1);
    v17[1] = v9;

    (a1)(v18, v17);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v18[0];
    v10 = v18[1];
    v19 = v6;
    v13 = v6[2];
    v12 = v6[3];
    if (v13 >= v12 >> 1)
    {
      sub_100011438(v12 > 1, v13 + 1, 1);
      v6 = v19;
    }

    v6[2] = v13 + 1;
    v14 = &v6[2 * v13];
    v14[4] = v11;
    v14[5] = v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10012ED5C()
{
  sub_100006A04();
  v1 = v0;
  sub_100002764();
  v3 = v2;
  v4 = sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  v5 = sub_100004C0C(v4);
  *(v5 + 16) = xmmword_10014CE90;
  v6 = sub_100011A68();
  v7 = v3(v6);
  v9 = v8;
  v11 = v10;
  *(v5 + 56) = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  *(v5 + 64) = &protocol witness table for Expression<A>;
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  *(v5 + 48) = v11;
  sub_10001DD70();
  v1();
  sub_1000069EC();
}

void *sub_10012EE64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, void *a5@<X8>)
{
  v10 = sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  v11 = sub_100004C0C(v10);
  *(v11 + 16) = xmmword_10014CE90;
  v12 = sub_100018378();
  *(v11 + 56) = type metadata accessor for Expression(v12, v13, v14, v15);
  *(v11 + 64) = &protocol witness table for Expression<A>;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 48) = a3;
  v16 = sub_100018378();
  v20 = type metadata accessor for ScalarQuery(v16, v17, v18, v19);
  v21 = *(a4 + 8);

  v22 = sub_1001341F4();
  sub_10001D6A8(v22, v23, v24, v20, v21, v25);

  memcpy(__dst, __src, sizeof(__dst));
  return memcpy(a5, __dst, 0xB0uLL);
}

void *sub_10012EF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_100002764();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  v15 = sub_100004C0C(v14);
  *(v15 + 16) = xmmword_10014CE90;
  v16 = type metadata accessor for Optional();
  *(v15 + 56) = type metadata accessor for Expression(0, v16, v17, v18);
  *(v15 + 64) = &protocol witness table for Expression<A>;
  *(v15 + 32) = v11;
  *(v15 + 40) = v9;
  *(v15 + 48) = v6;
  v21 = type metadata accessor for ScalarQuery(0, v16, v19, v20);
  v22 = *(a6 + 8);

  v23 = sub_1001341F4();
  sub_10001D6A8(v23, v24, v25, v21, v22, v26);

  memcpy(__dst, __src, sizeof(__dst));
  return memcpy(v13, __dst, 0xB0uLL);
}

void *SchemaType.count.getter()
{
  sub_100007D40();
  v2 = v1;
  sub_100133FD0();
  sub_10001D69C();
  SchemaType.select<A>(_:)(v3, v4, v5, v0, v7);

  return memcpy(v2, v7, 0xB0uLL);
}

uint64_t QueryType.union(_:)()
{
  sub_10000C984();
  sub_1000073F4();
  sub_1000111FC();
  v2 = v1();
  v10 = sub_1000131A4(v2, v3, v4, v5, v6, v7, v8, v9, v21[0]);
  v12 = v11(v10);
  v14 = v13;
  sub_100127584(v12, v13, v15, v16, v17);
  v18 = *(*(v14 + 168) + 16);
  sub_100127654(v18);
  v19 = *(v14 + 168);
  *(v19 + 16) = v18 + 1;
  sub_10001C4A4(v0, v19 + 40 * v18 + 32);
  return v12(v21, 0);
}

void QueryType.join(_:_:on:)()
{
  sub_100006A04();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if (v6)
  {
    v14 = v1;
    v15 = v0;
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  sub_10001DB48(v11, v9, v15, v7, v14, v5, v3, v13);
  sub_1000069EC();

  sub_100018CD0(v16, v17, v18);
}

uint64_t _s17AppIntents_SQLite9QueryTypePAAE5group_6havingxSayAA11Expressible_pG_AA10ExpressionVySbGtF_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a5 - 8) + 16))(a7, v7, a5);
  v14 = *(a6 + 32);

  sub_100018C6C(a2, a3, a4);
  v15 = v14(v22, a5, a6);
  v17 = v16[13];
  v18 = v16[14];
  v19 = v16[15];
  v20 = v16[16];
  v16[13] = a1;
  v16[14] = a2;
  v16[15] = a3;
  v16[16] = a4;
  sub_100134134(v17, v18, v19, v20);
  return v15(v22, 0);
}

uint64_t _s17AppIntents_SQLite9QueryTypePAAE5group_6havingxAA11Expressible_p_AA10ExpressionVySbGtF_0()
{
  sub_100006A04();
  v3 = v2;
  v5 = v4;
  sub_100002764();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  v13 = sub_100004C0C(v12);
  *(v13 + 16) = xmmword_10014CE90;
  sub_10001C4A4(v9, v13 + 32);
  _s17AppIntents_SQLite9QueryTypePAAE5group_6havingxSayAA11Expressible_pG_AA10ExpressionVySbGtF_0(v13, v7, v1, v0, v5, v3, v11);
  sub_1000069EC();
}

uint64_t QueryType.order(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000C984();
  sub_1000073F4();
  sub_1000111FC();
  v5();
  v6 = *(a3 + 32);

  v15 = sub_1000131A4(v7, v8, v9, v10, v11, v12, v13, v14, v19[0]);
  v16 = v6(v15);
  *(v17 + 136) = v3;

  return v16(v19, 0);
}

uint64_t sub_10012F5B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014ECA0;
  v6 = *(a2 + 16);
  v6(v13, a1, a2);
  sub_100018C3C(v13);
  if (LOBYTE(v13[0]))
  {
    v7 = 0x44205443454C4553;
  }

  else
  {
    v7 = 0x5443454C4553;
  }

  if (LOBYTE(v13[0]))
  {
    v8 = 0xEF54434E49545349;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  v9 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = v7;
  *(inited + 40) = v8;
  *(inited + 48) = _swiftEmptyArrayStorage;
  *(inited + 56) = v9;
  v6(v14, a1, a2);
  v10 = v14[1];

  sub_100018C3C(v14);
  sub_100013640(v10, (inited + 72));

  *(inited + 136) = v9;
  *(inited + 144) = &protocol witness table for Expression<A>;
  *(inited + 112) = 1297044038;
  *(inited + 120) = 0xE400000000000000;
  *(inited + 128) = _swiftEmptyArrayStorage;
  sub_100017D44();
  sub_100013640(inited, a3);
  swift_setDeallocating();
  return sub_100018898();
}

uint64_t sub_10012F760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v6(v33);
  v7 = v34;
  v38 = v34;

  sub_100018C3C(v33);
  v8 = *(v7 + 16);
  result = sub_10001A940(&v38, &unk_10019CEE8);
  if (v8)
  {
    (v6)(v35, a1, a2);
    v10 = v36;
    v37 = v36;

    sub_100018C3C(v35);
    v11 = *(v10 + 16);
    if (v11)
    {
      v26 = a3;
      v32 = _swiftEmptyArrayStorage;
      sub_10001E058(0, v11, 0);
      v12 = 0;
      v13 = _swiftEmptyArrayStorage;
      v14 = v10 + 32;
      v27 = v10;
      while (v12 < *(v10 + 16))
      {
        sub_100011F4C();
        sub_10001E1DC(v29);
        sub_10001A940(&v28, &qword_10019CCB0);
        v15 = v11;
        v32 = v13;
        v17 = v13[2];
        v16 = v13[3];
        if (v17 >= v16 >> 1)
        {
          sub_10001E058((v16 > 1), v17 + 1, 1);
        }

        ++v12;
        v18 = v30;
        v19 = v31;
        v20 = sub_10001C5D0(v29, v30);
        v21 = __chkstk_darwin(v20);
        v23 = &v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v24 + 16))(v23, v21);
        sub_10001E5C0(v17, v23, &v32, v18, v19);
        sub_1000034F8(v29);
        v13 = v32;
        v14 += 88;
        v11 = v15;
        v10 = v27;
        if (v15 == v12)
        {
          sub_10001A940(&v37, &unk_10019CEE8);
          a3 = v26;
          goto LABEL_11;
        }
      }

      __break(1u);

      __break(1u);
    }

    else
    {
      sub_10001A940(&v37, &unk_10019CEE8);
      v13 = _swiftEmptyArrayStorage;
LABEL_11:
      sub_100013640(v13, a3);
    }
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t JoinType.rawValue.getter(char a1)
{
  result = 0x53534F5243;
  switch(a1)
  {
    case 1:
      result = 0x52454E4E49;
      break;
    case 2:
      result = 0x54554F205446454CLL;
      break;
    case 3:
      result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10012FAC0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 16))(v12);
  v15 = v13;
  v16 = v14;
  sub_100011F4C();
  result = sub_100018C3C(v12);
  v4 = v15;
  if (v15)
  {
    v5 = *(&v15 + 1);
    v10 = v16;
    sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10014BC40;
    v7 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
    *(inited + 64) = &protocol witness table for Expression<A>;
    *(inited + 32) = 0x59422050554F5247;
    *(inited + 40) = 0xE800000000000000;
    *(inited + 48) = _swiftEmptyArrayStorage;
    *(inited + 56) = v7;
    sub_100013640(v4, (inited + 72));
    sub_100013640(inited, v11);
    swift_setDeallocating();
    sub_100018898();

    if (v10)
    {
      v8 = swift_initStackObject();
      *(v8 + 16) = xmmword_10014BC40;
      sub_10001C4A4(v11, v8 + 32);
      v9 = swift_initStackObject();
      *(v9 + 16) = xmmword_10014BC40;
      *(v9 + 56) = v7;
      *(v9 + 64) = &protocol witness table for Expression<A>;
      *(v9 + 32) = 0x474E49564148;
      *(v9 + 40) = 0xE600000000000000;
      *(v9 + 48) = _swiftEmptyArrayStorage;
      *(v9 + 96) = sub_10002EB80(&qword_10019CBE0, &unk_100152980);
      *(v9 + 104) = &protocol witness table for Expression<A>;
      *(v9 + 72) = v5;
      *(v9 + 80) = v10;
      sub_100013640(v9, (v8 + 72));
      swift_setDeallocating();
      sub_100018898();
      sub_100013640(v8, a2);
      swift_setDeallocating();
      sub_100018898();
      return sub_1000034F8(v11);
    }

    else
    {
      return sub_10001A798(v11, a2);
    }
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10012FD14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v6(v38);
  v7 = v39;
  v43 = v39;

  sub_100018C3C(v38);
  v8 = *(v7 + 16);
  result = sub_10001A940(&v43, &unk_10019CEE0);
  if (v8)
  {
    (v6)(v40, a1, a2);
    v10 = v41;
    v42 = v41;

    sub_100018C3C(v40);
    v11 = *(v10 + 16);
    if (v11)
    {
      v29 = a3;
      v37 = _swiftEmptyArrayStorage;
      sub_10001E058(0, v11, 0);
      v12 = _swiftEmptyArrayStorage;
      v13 = v10 + 32;
      v30 = xmmword_10014BC40;
      do
      {
        sub_10001C4A4(v13, v31);
        sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
        inited = swift_initStackObject();
        *(inited + 16) = v30;
        *(inited + 56) = sub_10002EB80(&qword_10019CA28, &unk_100152718);
        *(inited + 64) = &protocol witness table for Expression<A>;
        *(inited + 32) = 0x4E4F494E55;
        *(inited + 40) = 0xE500000000000000;
        *(inited + 48) = _swiftEmptyArrayStorage;
        v15 = v32;
        v16 = v33;
        v17 = sub_1000034B4(v31, v32);
        *(inited + 96) = v15;
        *(inited + 104) = *(v16 + 8);
        v18 = sub_100013234((inited + 72));
        (*(*(v15 - 8) + 16))(v18, v17, v15);
        sub_100013640(inited, v34);
        swift_setDeallocating();
        sub_100018898();
        sub_1000034F8(v31);
        v37 = v12;
        v20 = v12[2];
        v19 = v12[3];
        if (v20 >= v19 >> 1)
        {
          sub_10001E058((v19 > 1), v20 + 1, 1);
        }

        v21 = v35;
        v22 = v36;
        v23 = sub_10001C5D0(v34, v35);
        v24 = __chkstk_darwin(v23);
        v26 = &v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v27 + 16))(v26, v24);
        sub_10001E5C0(v20, v26, &v37, v21, v22);
        sub_1000034F8(v34);
        v12 = v37;
        v13 += 40;
        --v11;
      }

      while (v11);
      sub_10001A940(&v42, &unk_10019CEE0);
      a3 = v29;
    }

    else
    {
      sub_10001A940(&v42, &unk_10019CEE0);
      v12 = _swiftEmptyArrayStorage;
    }

    sub_100013640(v12, a3);
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

void QueryType.alias(_:)()
{
  sub_100006A04();
  sub_100002764();
  v3 = v2;
  v21 = v4;
  v6 = v5;
  sub_1000073F4();
  (*(v7 + 16))(v6, v0);
  v8 = *(v1 + 16);
  v9 = sub_10001209C();
  v8(v9);
  v10 = v24;
  v11 = v25;

  sub_100018C3C(v23);
  v12 = sub_10001209C();
  v8(v12);
  v13 = v28;
  v20 = v27;

  sub_100018C3C(v26);
  v14 = sub_10001209C();
  v8(v14);
  sub_100018C3C(v29);
  v15 = v29[64];
  sub_10001DD70();
  v17 = v16();
  v19 = v18;
  *(v18 + 16) = v10;
  *(v18 + 24) = v11;

  *(v19 + 32) = v21;
  *(v19 + 40) = v3;

  *(v19 + 48) = v20;
  *(v19 + 56) = v13;

  *(v19 + 64) = v15;
  v17(v22, 0);
  sub_1000069EC();
}

uint64_t QueryType.insert(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_10002EB80(&unk_10019AAE0, &unk_10014BE30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014CE90;
  sub_1001339BC(a1, inited + 32);

  sub_100129CE0(v4);
  v5 = sub_10001209C();
  QueryType.insert(_:)(v5);
  sub_100003CB8();

  return sub_100007D30();
}

AppIntents_SQLite::Insert __swiftcall QueryType.insert(_:)(Swift::OpaquePointer a1)
{
  TypePAAE6insert2or_AA6InsertVAA10OnConflictO_SayAA6SetterVGtF_0 = _s17AppIntents_SQLite9QueryTypePAAE6insert2or_AA6InsertVAA10OnConflictO_SayAA6SetterVGtF_0(5, a1._rawValue, v1, v2);
  result.bindings._rawValue = v5;
  result.template._object = v4;
  result.template._countAndFlagsBits = TypePAAE6insert2or_AA6InsertVAA10OnConflictO_SayAA6SetterVGtF_0;
  return result;
}

uint64_t _s17AppIntents_SQLite9QueryTypePAAE6insert2or_AA6InsertVAA10OnConflictO_SayAA6SetterVGtF_0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 16);
  v5 = _swiftEmptyArrayStorage;
  if (v4)
  {
    v6 = a2 + 32;
    do
    {
      sub_1001339BC(v6, &v41);
      sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10014CE90;
      sub_10001C4A4(&v41, inited + 32);

      sub_100018274(inited);
      v8 = swift_initStackObject();
      *(v8 + 16) = xmmword_10014CE90;
      sub_10001C4A4(&v44, v8 + 32);
      *&v40[0] = _swiftEmptyArrayStorage;

      sub_100018274(v8);

      sub_10002EBC8(&v41);
      v6 += 80;
      --v4;
    }

    while (v4);
  }

  sub_10002EB80(&qword_10019CBB8, &unk_100152950);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_100150B50;
  v10 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  *(v9 + 56) = v10;
  *(v9 + 64) = &protocol witness table for Expression<A>;
  *(v9 + 32) = 0x545245534E49;
  *(v9 + 40) = 0xE600000000000000;
  *(v9 + 48) = _swiftEmptyArrayStorage;
  if (a1 == 5)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  else
  {
    *&v41 = 2118223;
    *(&v41 + 1) = 0xE300000000000000;
    v16._countAndFlagsBits = OnConflict.rawValue.getter(a1);
    String.append(_:)(v16);

    v12 = *(&v41 + 1);
    v11 = v41;
    v15 = &protocol witness table for Expression<A>;
    v14 = v10;
    v13 = _swiftEmptyArrayStorage;
  }

  *(v9 + 72) = v11;
  *(v9 + 80) = v12;
  *(v9 + 88) = v13;
  *(v9 + 96) = v14;
  *(v9 + 136) = v10;
  *(v9 + 144) = &protocol witness table for Expression<A>;
  *(v9 + 104) = v15;
  *(v9 + 112) = 1330925129;
  *(v9 + 120) = 0xE400000000000000;
  *(v9 + 128) = _swiftEmptyArrayStorage;
  sub_100017FF8();
  sub_100017D44();
  sub_100013640(_swiftEmptyArrayStorage, &v41);
  sub_1000034B4(&v41, *(&v42 + 1));
  v17 = sub_100129C20();
  v19 = v18;
  v21 = v20;
  sub_1000034F8(&v41);
  *(v9 + 192) = v17;
  *(v9 + 200) = v19;
  *(v9 + 208) = v21;
  *(v9 + 216) = v10;
  *(v9 + 256) = v10;
  *(v9 + 264) = &protocol witness table for Expression<A>;
  *(v9 + 224) = &protocol witness table for Expression<A>;
  *(v9 + 232) = 0x5345554C4156;
  *(v9 + 240) = 0xE600000000000000;
  *(v9 + 248) = _swiftEmptyArrayStorage;
  sub_100013640(_swiftEmptyArrayStorage, &v41);
  sub_1000034B4(&v41, *(&v42 + 1));
  v22 = sub_100129C20();
  v24 = v23;
  v26 = v25;

  sub_1000034F8(&v41);
  *(v9 + 296) = v10;
  *(v9 + 304) = &protocol witness table for Expression<A>;
  *(v9 + 272) = v22;
  *(v9 + 280) = v24;
  *(v9 + 288) = v26;
  sub_100026438(a4, v9 + 312);
  for (i = 32; i != 352; i += 40)
  {
    sub_100011F4C();
    v38[0] = v41;
    v38[1] = v42;
    v39 = v43;
    if (*(&v42 + 1))
    {
      sub_10001A798(v38, v40);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10001A80C(0, v5[2] + 1, 1, v5);
        v5 = v30;
      }

      v29 = v5[2];
      v28 = v5[3];
      if (v29 >= v28 >> 1)
      {
        sub_10001A80C(v28 > 1, v29 + 1, 1, v5);
        v5 = v31;
      }

      v5[2] = v29 + 1;
      sub_10001A798(v40, &v5[5 * v29 + 4]);
    }

    else
    {
      sub_10001A940(v38, &qword_10019CBC0);
    }
  }

  swift_setDeallocating();
  sub_10001AC30();
  sub_100013640(v5, &v41);

  v32 = *(&v42 + 1);
  v33 = v43;
  sub_1000034B4(&v41, *(&v42 + 1));
  v34 = (*(v33 + 8))(v32, v33);
  sub_1000034F8(&v41);
  return v34;
}

AppIntents_SQLite::Insert __swiftcall QueryType.insertMany(_:)(Swift::OpaquePointer a1)
{
  _s17AppIntents_SQLite9QueryTypePAAE10insertMany2or_AA6InsertVAA10OnConflictO_SayAA6SetterVGdtF_0(5, a1._rawValue, v1, v2);
  result.bindings._rawValue = v5;
  result.template._object = v4;
  result.template._countAndFlagsBits = v3;
  return result;
}

void _s17AppIntents_SQLite9QueryTypePAAE10insertMany2or_AA6InsertVAA10OnConflictO_SayAA6SetterVGdtF_0(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v69 = a1;
    v71 = a3;
    v70 = a4;
    v5 = *(a2 + 32);
    v72 = a2 + 32;
    v6 = *(v5 + 16);
    v7 = _swiftEmptyArrayStorage;
    v73 = v4;
    if (v6)
    {
      *&v78[0] = _swiftEmptyArrayStorage;

      sub_10001E058(0, v6, 0);
      v8 = _swiftEmptyArrayStorage;
      v9 = v5 + 32;
      do
      {
        sub_1001339BC(v9, &v80);
        sub_10001C4A4(&v80, &v84);
        sub_10002EBC8(&v80);
        *&v78[0] = v8;
        v11 = v8[2];
        v10 = v8[3];
        if (v11 >= v10 >> 1)
        {
          sub_10001E058((v10 > 1), v11 + 1, 1);
        }

        v12 = v85;
        v13 = v86;
        v14 = sub_10001C5D0(&v84, v85);
        v15 = __chkstk_darwin(v14);
        v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v18 + 16))(v17, v15);
        sub_10001E5C0(v11, v17, v78, v12, v13);
        sub_1000034F8(&v84);
        v8 = *&v78[0];
        v9 += 80;
        --v6;
      }

      while (v6);
      v68 = *&v78[0];

      v4 = v73;
    }

    else
    {
      v68 = _swiftEmptyArrayStorage;
    }

    *&v84 = _swiftEmptyArrayStorage;
    sub_100128BC0(0, v4, 0);
    v20 = v72;
    v19 = v73;
    v21 = 0;
    v22 = v84;
    v77 = xmmword_10014CE90;
    do
    {
      if (v21 == v19)
      {
        goto LABEL_45;
      }

      v76 = v22;
      v23 = *(v20 + 8 * v21);
      v24 = *(v23 + 16);
      if (v24)
      {
        v74 = *(v20 + 8 * v21);
        v75 = v21;
        v25 = v23 + 32;

        while (1)
        {
          sub_1001339BC(v25, &v80);
          sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
          inited = swift_initStackObject();
          *(inited + 16) = v77;
          sub_10001C4A4(&v83, inited + 32);
          v27 = v7[2];

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || (v29 = v7[3] >> 1, v30 = v7, v29 <= v27))
          {
            sub_10001A80C(isUniquelyReferenced_nonNull_native, v27 + 1, 1, v7);
            v30 = v31;
            v29 = v31[3] >> 1;
          }

          if (v29 <= v30[2])
          {
            break;
          }

          sub_10002EB80(&qword_10019B238, &unk_100152B50);
          swift_arrayInitWithCopy();

          sub_10002EBC8(&v80);

          ++v30[2];
          v25 += 80;
          v7 = v30;
          if (!--v24)
          {

            v7 = _swiftEmptyArrayStorage;
            v20 = v72;
            v19 = v73;
            v21 = v75;
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_45:
        __break(1u);
        return;
      }

      v30 = _swiftEmptyArrayStorage;
LABEL_21:
      v22 = v76;
      *&v84 = v76;
      v33 = *(v76 + 16);
      v32 = *(v76 + 24);
      if (v33 >= v32 >> 1)
      {
        v75 = v21;
        sub_100128BC0((v32 > 1), v33 + 1, 1);
        v21 = v75;
        v19 = v73;
        v22 = v84;
      }

      ++v21;
      *(v22 + 16) = v33 + 1;
      *(v22 + 8 * v33 + 32) = v30;
    }

    while (v21 != v19);
    v76 = v22;
    sub_10002EB80(&qword_10019CBB8, &unk_100152950);
    v34 = swift_initStackObject();
    *(v34 + 16) = xmmword_100150B50;
    v35 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
    *(v34 + 56) = v35;
    *(v34 + 64) = &protocol witness table for Expression<A>;
    *(v34 + 32) = 0x545245534E49;
    *(v34 + 40) = 0xE600000000000000;
    *(v34 + 48) = _swiftEmptyArrayStorage;
    if (v69 == 5)
    {
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
    }

    else
    {
      *&v80 = 2118223;
      *(&v80 + 1) = 0xE300000000000000;
      v41._countAndFlagsBits = OnConflict.rawValue.getter(v69);
      String.append(_:)(v41);

      v37 = *(&v80 + 1);
      v36 = v80;
      v40 = &protocol witness table for Expression<A>;
      v39 = v35;
      v38 = _swiftEmptyArrayStorage;
    }

    v42 = v70;
    *(v34 + 72) = v36;
    *(v34 + 80) = v37;
    *(v34 + 88) = v38;
    *(v34 + 96) = v39;
    *(v34 + 136) = v35;
    *(v34 + 144) = &protocol witness table for Expression<A>;
    *(v34 + 104) = v40;
    *(v34 + 112) = 1330925129;
    *(v34 + 120) = 0xE400000000000000;
    *(v34 + 128) = _swiftEmptyArrayStorage;
    sub_100017FF8();
    sub_100017D44();
    sub_100013640(v68, &v80);

    sub_1000034B4(&v80, *(&v81 + 1));
    v43 = sub_100129C20();
    v45 = v44;
    v47 = v46;
    sub_1000034F8(&v80);
    *(v34 + 192) = v43;
    *(v34 + 200) = v45;
    *(v34 + 208) = v47;
    *(v34 + 216) = v35;
    *(v34 + 256) = v35;
    *(v34 + 264) = &protocol witness table for Expression<A>;
    *(v34 + 224) = &protocol witness table for Expression<A>;
    *(v34 + 232) = 0x5345554C4156;
    *(v34 + 240) = 0xE600000000000000;
    *(v34 + 248) = _swiftEmptyArrayStorage;
    v75 = v34;
    v48 = *(v76 + 16);
    if (v48)
    {
      *&v77 = v35;
      *&v84 = _swiftEmptyArrayStorage;
      sub_10001E058(0, v48, 0);
      v49 = 32;
      v50 = v84;
      do
      {

        sub_100013640(v51, &v80);
        sub_1000034B4(&v80, *(&v81 + 1));
        v52 = sub_100129C20();
        v54 = v53;
        v56 = v55;
        sub_1000034F8(&v80);

        *&v84 = v50;
        v58 = v50[2];
        v57 = v50[3];
        if (v58 >= v57 >> 1)
        {
          sub_10001E058((v57 > 1), v58 + 1, 1);
          v50 = v84;
        }

        *&v80 = v52;
        *(&v80 + 1) = v54;
        *(&v81 + 1) = v77;
        v82 = &protocol witness table for Expression<A>;
        *&v81 = v56;
        v50[2] = v58 + 1;
        sub_10001A798(&v80, &v50[5 * v58 + 4]);
        v49 += 8;
        --v48;
      }

      while (v48);

      v42 = v70;
    }

    else
    {

      v50 = _swiftEmptyArrayStorage;
    }

    v59 = v75;
    sub_100013640(v50, (v75 + 272));

    sub_100026438(v42, v59 + 312);
    v60 = _swiftEmptyArrayStorage;
    for (i = 32; i != 352; i += 40)
    {
      sub_100011F4C();
      v78[0] = v80;
      v78[1] = v81;
      v79 = v82;
      if (*(&v81 + 1))
      {
        sub_10001A798(v78, &v84);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10001A80C(0, v60[2] + 1, 1, v60);
          v60 = v64;
        }

        v63 = v60[2];
        v62 = v60[3];
        if (v63 >= v62 >> 1)
        {
          sub_10001A80C(v62 > 1, v63 + 1, 1, v60);
          v60 = v65;
        }

        v60[2] = v63 + 1;
        sub_10001A798(&v84, &v60[5 * v63 + 4]);
      }

      else
      {
        sub_10001A940(v78, &qword_10019CBC0);
      }
    }

    swift_setDeallocating();
    sub_10001AC30();
    sub_100013640(v60, &v80);

    v66 = *(&v81 + 1);
    v67 = v82;
    sub_1000034B4(&v80, *(&v81 + 1));
    (v67[1])(v66, v67);
    sub_1000034F8(&v80);
  }

  else
  {
    QueryType.insert()();
  }
}

uint64_t OnConflict.rawValue.getter(char a1)
{
  result = 0x4543414C504552;
  switch(a1)
  {
    case 1:
      result = 0x4B4341424C4C4F52;
      break;
    case 2:
      result = 0x54524F4241;
      break;
    case 3:
      result = 1279869254;
      break;
    case 4:
      result = 0x45524F4E4749;
      break;
    default:
      return result;
  }

  return result;
}

AppIntents_SQLite::Insert __swiftcall QueryType.insert()()
{
  sub_10000C984();
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014E1F0;
  v1 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  *(inited + 64) = &protocol witness table for Expression<A>;
  sub_100013D38();
  *(inited + 48) = _swiftEmptyArrayStorage;
  *(inited + 56) = v2;
  sub_100004F8C();
  v3 = sub_100017FF8();
  sub_100012FB0(v3);
  *(inited + 136) = v1;
  *(inited + 144) = &protocol witness table for Expression<A>;
  strcpy((inited + 112), "DEFAULT VALUES");
  *(inited + 127) = -18;
  *(inited + 128) = _swiftEmptyArrayStorage;
  sub_10000EF08(inited, v9);
  swift_setDeallocating();
  sub_100018898();
  v4 = sub_100002E7C(v9);
  v5(v4);
  sub_100003CB8();
  sub_1000034F8(v9);
  v6 = sub_100007D30();
  result.bindings._rawValue = v8;
  result.template._object = v7;
  result.template._countAndFlagsBits = v6;
  return result;
}

uint64_t QueryType.insert(_:)(void *a1)
{
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014E1F0;
  v3 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  *(inited + 64) = &protocol witness table for Expression<A>;
  sub_100013D38();
  *(inited + 48) = _swiftEmptyArrayStorage;
  *(inited + 56) = v4;
  sub_100004F8C();
  v5 = sub_100017FF8();
  sub_100012FB0(v5);
  v6 = a1[3];
  sub_1000034B4(a1, v6);
  sub_1000126CC();
  v8 = v7(v6);
  *(inited + 136) = v3;
  *(inited + 144) = &protocol witness table for Expression<A>;
  *(inited + 112) = v8;
  *(inited + 120) = v9;
  *(inited + 128) = v10;
  sub_10000EF08(inited, v14);
  swift_setDeallocating();
  sub_100018898();
  v11 = sub_100002E7C(v14);
  v12(v11);
  sub_100003CB8();
  sub_1000034F8(v14);
  return sub_100007D30();
}

void QueryType.upsert(_:onConflictOf:)()
{
  sub_100006A04();
  sub_100011724();
  v21 = v1;

  v2 = sub_100131630(sub_100133A18, v20, v0);
  v3 = *(v2 + 2);
  if (v3)
  {
    v27[0] = _swiftEmptyArrayStorage;
    v4 = v27;
    sub_100128BE0(0, v3, 0);
    v5 = v27[0];
    v6 = v2 + 32;
    do
    {
      sub_1001339BC(v6, v25);
      sub_10001C4A4(v25, v22);
      v7 = sub_100012BA4();
      sub_1000198BC(v7, v8, 0x646564756C637865, 0xE800000000000000);
      sub_1000064BC();
      sub_10001C4A4(v22, v26);
      sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10014BC40;
      v10 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
      *(inited + 56) = v10;
      *(inited + 64) = &protocol witness table for Expression<A>;
      *(inited + 32) = v4;
      *(inited + 40) = v2;
      *(inited + 48) = _swiftEmptyArrayStorage;
      v11 = v23;
      v12 = v24;
      sub_1000034B4(v22, v23);
      sub_1000126CC();
      v14 = v13(v11, v12);
      *(inited + 96) = v10;
      *(inited + 104) = &protocol witness table for Expression<A>;
      *(inited + 72) = v14;
      *(inited + 80) = v15;
      *(inited + 88) = v16;
      sub_100013640(inited, &v26[5]);
      swift_setDeallocating();
      v4 = inited;
      sub_100018898();
      sub_1000034F8(v22);
      sub_10002EBC8(v25);
      v27[0] = v5;
      v18 = *(v5 + 16);
      v17 = *(v5 + 24);
      v2 = (v18 + 1);
      if (v18 >= v17 >> 1)
      {
        v19 = sub_100005150(v17);
        v4 = v27;
        sub_100128BE0(v19, v18 + 1, 1);
        v5 = v27[0];
      }

      *(v5 + 16) = v2;
      memcpy((v5 + 80 * v18 + 32), v26, 0x50uLL);
      v6 += 80;
      --v3;
    }

    while (v3);
  }

  sub_10000485C();
  QueryType.upsert(_:onConflictOf:set:)();
  sub_100003CB8();

  sub_100007D30();
  sub_1000069EC();
}

uint64_t sub_100131550(void *a1, void *a2)
{
  sub_1000034B4(a1, a1[3]);
  v3 = Expressible.asSQL()();
  sub_1000034B4(a2, a2[3]);
  v4 = Expressible.asSQL()();
  if (v3._countAndFlagsBits == v4._countAndFlagsBits && v3._object == v4._object)
  {

    v7 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v6 ^ 1;
  }

  return v7 & 1;
}

uint64_t (*sub_100131630(uint64_t (*result)(_BYTE *), uint64_t a2, uint64_t a3))(_BYTE *)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = a3 + 32;
  v9 = _swiftEmptyArrayStorage;
  v14 = result;
  while (1)
  {
    if (v7 == v6)
    {
      goto LABEL_14;
    }

    if (v6 >= *(a3 + 16))
    {
      break;
    }

    sub_1001339BC(v8, __src);
    v10 = v5(__src);
    if (v3)
    {
      sub_10002EBC8(__src);

LABEL_14:

      return v9;
    }

    if (v10)
    {
      memcpy(__dst, __src, sizeof(__dst));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100128BE0(0, v9[2] + 1, 1);
        v9 = v17;
      }

      v13 = v9[2];
      v12 = v9[3];
      if (v13 >= v12 >> 1)
      {
        sub_100128BE0((v12 > 1), v13 + 1, 1);
        v9 = v17;
      }

      v9[2] = v13 + 1;
      result = memcpy(&v9[10 * v13 + 4], __dst, 0x50uLL);
      v5 = v14;
    }

    else
    {
      result = sub_10002EBC8(__src);
    }

    v8 += 80;
    ++v6;
  }

  __break(1u);
  return result;
}

void QueryType.upsert(_:onConflictOf:set:)()
{
  sub_100006A04();
  v47 = v1;
  v44 = v2;
  v45 = v3;
  v46 = v4;
  v5 = *(v0 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v7 = v0 + 32;
    do
    {
      sub_1001339BC(v7, &v54);
      sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10014CE90;
      sub_10001C4A4(&v54, inited + 32);

      sub_100018274(inited);
      v9 = swift_initStackObject();
      *(v9 + 16) = xmmword_10014CE90;
      sub_10001C4A4(v57, v9 + 32);
      *&v51 = _swiftEmptyArrayStorage;

      sub_100018274(v9);

      sub_10002EBC8(&v54);
      v7 += 80;
      --v5;
    }

    while (v5);
  }

  sub_10002EB80(&qword_10019CBB8, &unk_100152950);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100152C60;
  v11 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  *(v10 + 32) = 0x545245534E49;
  *(v10 + 40) = 0xE600000000000000;
  *(v10 + 48) = _swiftEmptyArrayStorage;
  *(v10 + 56) = v11;
  *(v10 + 96) = v11;
  *(v10 + 104) = &protocol witness table for Expression<A>;
  *(v10 + 64) = &protocol witness table for Expression<A>;
  *(v10 + 72) = 1330925129;
  *(v10 + 80) = 0xE400000000000000;
  *(v10 + 88) = _swiftEmptyArrayStorage;
  v12 = v44;
  sub_100017FF8();
  sub_100017D44();
  sub_10000C124(_swiftEmptyArrayStorage, &v54);
  v13 = *(&v55 + 1);
  v14 = v56;
  sub_100024924(&v54);
  sub_1000064BC();
  v16 = v15;
  sub_1000034F8(&v54);
  *(v10 + 152) = v13;
  *(v10 + 160) = v14;
  *(v10 + 168) = v16;
  *(v10 + 176) = v11;
  *(v10 + 216) = v11;
  *(v10 + 224) = &protocol witness table for Expression<A>;
  *(v10 + 184) = &protocol witness table for Expression<A>;
  *(v10 + 192) = 0x5345554C4156;
  *(v10 + 200) = 0xE600000000000000;
  *(v10 + 208) = _swiftEmptyArrayStorage;
  sub_10000C124(_swiftEmptyArrayStorage, &v54);
  v17 = *(&v55 + 1);
  v18 = v56;
  sub_100024924(&v54);
  sub_1000064BC();
  v20 = v19;

  sub_1000034F8(&v54);
  *(v10 + 256) = v11;
  *(v10 + 264) = &protocol witness table for Expression<A>;
  *(v10 + 232) = v17;
  *(v10 + 240) = v18;
  *(v10 + 248) = v20;
  sub_100026438(v45, v10 + 272);
  *(v10 + 336) = v11;
  *(v10 + 344) = &protocol witness table for Expression<A>;
  *(v10 + 312) = 0x4C464E4F43204E4FLL;
  *(v10 + 320) = 0xEB00000000544349;
  *(v10 + 328) = _swiftEmptyArrayStorage;
  *(v10 + 352) = sub_100024924(v46);
  *(v10 + 360) = v21;
  *(v10 + 368) = v22;
  *(v10 + 376) = v11;
  v48 = v11;
  *(v10 + 416) = v11;
  *(v10 + 424) = &protocol witness table for Expression<A>;
  *(v10 + 384) = &protocol witness table for Expression<A>;
  strcpy((v10 + 392), "DO UPDATE SET");
  *(v10 + 406) = -4864;
  *(v10 + 408) = _swiftEmptyArrayStorage;
  v23 = *(v47 + 16);
  if (v23)
  {
    sub_10001E058(0, v23, 0);
    v6 = _swiftEmptyArrayStorage;
    v24 = v47 + 32;
    do
    {
      sub_1001339BC(v24, &v54);
      sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
      v25 = swift_initStackObject();
      *(v25 + 16) = xmmword_10014BC40;
      sub_10001C4A4(&v54, v25 + 32);
      sub_10001C4A4(v57, v25 + 72);
      sub_100134224(&v51);
      swift_setDeallocating();
      sub_100018898();
      v26 = v52;
      v27 = v53;
      sub_1000034B4(&v51, v52);
      sub_1000126CC();
      v29 = v28(v26, v27);
      v31 = v30;
      v33 = v32;
      sub_1000034F8(&v51);
      sub_10002EBC8(&v54);
      *&v49[0] = v6;
      v11 = v6[2];
      v34 = v6[3];
      v12 = v11 + 1;
      if (v11 >= v34 >> 1)
      {
        v35 = sub_100005150(v34);
        sub_10001E058(v35, v11 + 1, 1);
        v6 = *&v49[0];
      }

      *&v54 = v29;
      *(&v54 + 1) = v31;
      *(&v55 + 1) = v48;
      v56 = &protocol witness table for Expression<A>;
      *&v55 = v33;
      v6[2] = v12;
      sub_10001A798(&v54, &v6[5 * v11 + 4]);
      v24 += 80;
      --v23;
    }

    while (v23);
  }

  sub_10000C124(v6, (v10 + 432));

  v36 = _swiftEmptyArrayStorage;
  for (i = 32; i != 472; i += 40)
  {
    sub_100011F4C();
    v49[0] = v54;
    v49[1] = v55;
    v50 = v56;
    if (*(&v55 + 1))
    {
      sub_10001A798(v49, &v51);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100003CC8();
        v36 = v40;
      }

      sub_100012144();
      if (v39)
      {
        sub_100006B88(v38);
        v36 = v41;
      }

      v36[2] = v11;
      sub_10001A798(&v51, &v36[5 * v12 + 4]);
    }

    else
    {
      sub_10001A940(v49, &qword_10019CBC0);
    }
  }

  swift_setDeallocating();
  sub_10001AC30();
  sub_100009AA4(&v54);

  v42 = sub_100002E7C(&v54);
  v43(v42);
  sub_100003CB8();
  sub_1000034F8(&v54);
  sub_100007D30();
  sub_1000069EC();
}

AppIntents_SQLite::Update __swiftcall QueryType.update(_:)(Swift::OpaquePointer a1)
{
  sub_100006A04();
  v2 = v1;
  sub_10002EB80(&qword_10019CBB8, &unk_100152950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014EE00;
  v4 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = 0x455441445055;
  *(inited + 40) = 0xE600000000000000;
  v5 = _swiftEmptyArrayStorage;
  *(inited + 48) = _swiftEmptyArrayStorage;
  *(inited + 56) = v4;
  sub_10001E1D0();
  sub_100017FF8();
  sub_100017D44();
  *(inited + 136) = v4;
  *(inited + 144) = &protocol witness table for Expression<A>;
  *(inited + 112) = 5522771;
  *(inited + 120) = 0xE300000000000000;
  *(inited + 128) = _swiftEmptyArrayStorage;
  v6 = *(v2 + 16);
  if (v6)
  {
    *&v39[0] = _swiftEmptyArrayStorage;
    sub_10001E058(0, v6, 0);
    v5 = _swiftEmptyArrayStorage;
    v7 = v2 + 32;
    do
    {
      sub_1001339BC(v7, &v41);
      sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
      v8 = swift_initStackObject();
      *(v8 + 16) = xmmword_10014BC40;
      sub_10001C4A4(&v41, v8 + 32);
      sub_10001C4A4(&v44, v8 + 72);
      sub_100134224(&v45);
      swift_setDeallocating();
      sub_100018898();
      sub_10002EBC8(&v41);
      *&v39[0] = v5;
      v10 = v5[2];
      v9 = v5[3];
      if (v10 >= v9 >> 1)
      {
        v18 = sub_100005150(v9);
        sub_10001E058(v18, v10 + 1, 1);
      }

      v11 = v46;
      v12 = v47;
      sub_10001C5D0(&v45, v46);
      sub_10000518C();
      __chkstk_darwin(v13);
      sub_100002958();
      v16 = v15 - v14;
      (*(v17 + 16))(v15 - v14);
      sub_10001E5C0(v10, v16, v39, v11, v12);
      sub_1000034F8(&v45);
      v5 = *&v39[0];
      v7 += 80;
      --v6;
    }

    while (v6);
  }

  sub_10000C124(v5, (inited + 152));

  sub_10001E1D0();
  sub_100026438(v19, v20);
  v21 = sub_10001E1D0();
  sub_1000265D4(v21, v22, v23);
  sub_10001E1D0();
  sub_100026758(v24, v25);
  v26 = _swiftEmptyArrayStorage;
  for (i = 32; i != 312; i += 40)
  {
    sub_100011F4C();
    v39[0] = v41;
    v39[1] = v42;
    v40 = v43;
    if (*(&v42 + 1))
    {
      sub_10001A798(v39, &v45);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10001A80C(0, v26[2] + 1, 1, v26);
        v26 = v30;
      }

      v29 = v26[2];
      v28 = v26[3];
      if (v29 >= v28 >> 1)
      {
        v31 = sub_100005150(v28);
        sub_10001A80C(v31, v29 + 1, 1, v26);
        v26 = v32;
      }

      v26[2] = v29 + 1;
      sub_10001A798(&v45, &v26[5 * v29 + 4]);
    }

    else
    {
      sub_10001A940(v39, &qword_10019CBC0);
    }
  }

  swift_setDeallocating();
  sub_10001AC30();
  sub_10000EF08(v26, &v41);

  v33 = *(&v42 + 1);
  v34 = v43;
  sub_1000034B4(&v41, *(&v42 + 1));
  sub_1000126CC();
  v35(v33, v34);
  sub_1000064BC();
  sub_1000034F8(&v41);
  sub_10001317C();
  sub_1000069EC();
  result.bindings._rawValue = v38;
  result.template._object = v37;
  result.template._countAndFlagsBits = v36;
  return result;
}

uint64_t QueryType.exists.getter()
{
  sub_10000C984();
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014BC40;
  v3 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  *(inited + 64) = &protocol witness table for Expression<A>;
  strcpy((inited + 32), "SELECT EXISTS");
  *(inited + 46) = -4864;
  *(inited + 48) = _swiftEmptyArrayStorage;
  *(inited + 56) = v3;
  (*(*(v0 + 8) + 8))(v1);
  v4 = sub_100133FD0();
  sub_10001D69C();

  *(inited + 96) = v3;
  *(inited + 104) = &protocol witness table for Expression<A>;
  *(inited + 72) = v4;
  *(inited + 80) = &qword_10019CA28;
  *(inited + 88) = &unk_100152718;
  sub_10000EF08(inited, v8);
  swift_setDeallocating();
  sub_100018898();
  v5 = sub_100002E7C(v8);
  v6(v5);
  sub_100003CB8();
  sub_1000034F8(v8);
  return sub_100007D30();
}

void QueryType.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  sub_100011724();
  type metadata accessor for Optional();
  v49 = sub_10000485C();

  QueryType.namespace<A>(_:)(v49, v50, v46, a4, v51, a6, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46);
}

void QueryType.expression.getter()
{
  sub_100006A04();
  sub_10000C984();
  sub_10002EB80(&qword_10019CBB8, &unk_100152950);
  *(swift_initStackObject() + 16) = xmmword_10014EE00;
  v0 = sub_100004F8C();
  sub_10012F5B0(v0, v1, v2);
  v3 = sub_100004F8C();
  sub_10012F760(v3, v4, v5);
  sub_100004F8C();
  sub_100026438(v6, v7);
  sub_100004F8C();
  sub_10012FAC0(v8, v9);
  v10 = sub_100004F8C();
  sub_10012FD14(v10, v11, v12);
  v13 = sub_100004F8C();
  sub_1000265D4(v13, v14, v15);
  sub_100004F8C();
  sub_100026758(v16, v17);
  for (i = 32; i != 312; i += 40)
  {
    v19 = sub_1000127E8();
    sub_100011950(v19, v20, v21, v22, v23, v24, v25, v26, v50, *(&v50 + 1), v51, v52, v53, v54, *(&v54 + 1), v55, v56, v57, v58[0], v58[1], v59);
    if (v35)
    {
      sub_10001A798(&v50, &v54);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100003CC8();
      }

      sub_100012144();
      if (v45)
      {
        sub_100006B88(v44);
      }

      sub_10001A8FC(v36, v37, v38, v39, v40, v41, v42, v43, v50, *(&v50 + 1), v51, v52, v53, v54);
    }

    else
    {
      v46 = sub_1000247B8(v27, v28, v29, v30, v31, v32, v33, v34, v50);
      sub_10001A940(v46, v47);
    }
  }

  swift_setDeallocating();
  sub_10001AC30();
  sub_100009AA4(v58);

  v48 = sub_100002E7C(v58);
  v49(v48);
  sub_100003CB8();
  sub_1000034F8(v58);
  sub_100007D30();
  sub_1000069EC();
}

void *Table.clauses.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_1000247B8(a1, a2, a3, a4, a5, a6, a7, a8, v13[0]);
  memcpy(v8, v9, 0xB0uLL);
  sub_10001970C(v13);
  v10 = sub_1000066C0();
  return memcpy(v10, v11, 0xB0uLL);
}

void Table.init(jsonEach:key:)()
{
  sub_100011724();
  v1 = v0;
  _StringGuts.grow(_:)(19);

  v2._countAndFlagsBits = sub_10000485C();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 2564140;
  v3._object = 0xE300000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = sub_100004F8C();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 10535;
  v5._object = 0xE200000000000000;
  String.append(_:)(v5);
  v6 = sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  v7 = sub_100004C0C(v6);
  *(v7 + 16) = xmmword_10014CE90;
  v8 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  *(v7 + 64) = &protocol witness table for Expression<A>;
  *(v7 + 32) = 42;
  *(v7 + 40) = 0xE100000000000000;
  *(v7 + 48) = _swiftEmptyArrayStorage;
  *(v7 + 56) = v8;
  *v1 = 0;
  *(v1 + 8) = v7;
  *(v1 + 16) = 0x6361655F6E6F736ALL;
  *(v1 + 24) = 0xEA00000000002868;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0;
  *(v1 + 72) = _swiftEmptyArrayStorage;
  sub_10000536C(_swiftEmptyArrayStorage, 0);
}

void *View.clauses.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_1000247B8(a1, a2, a3, a4, a5, a6, a7, a8, v13[0]);
  memcpy(v8, v9, 0xB0uLL);
  sub_100128294(v13);
  v10 = sub_1000066C0();
  return memcpy(v10, v11, 0xB0uLL);
}

void *sub_100132720(const void *a1)
{
  memcpy(v4, v1, sizeof(v4));
  sub_100128294(v4);
  return memcpy(v1, a1, 0xB0uLL);
}

void *VirtualTable.clauses.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_1000247B8(a1, a2, a3, a4, a5, a6, a7, a8, v13[0]);
  memcpy(v8, v9, 0xB0uLL);
  sub_1001281E4(v13);
  v10 = sub_1000066C0();
  return memcpy(v10, v11, 0xB0uLL);
}

void *sub_1001327F4(const void *a1)
{
  memcpy(v4, v1, sizeof(v4));
  sub_1001281E4(v4);
  return memcpy(v1, a1, 0xB0uLL);
}

void *ScalarQuery.clauses.setter()
{
  sub_100007D40();
  v9 = sub_1000247B8(v1, v2, v3, v4, v5, v6, v7, v8, v15[0]);
  memcpy(v9, v10, 0xB0uLL);
  sub_1000073F4();
  (*(v11 + 8))(v15, v0);
  v12 = sub_10001317C();
  return memcpy(v12, v13, 0xB0uLL);
}

void *sub_1001328D0(const void *a1, uint64_t a2)
{
  memcpy(v6, v2, sizeof(v6));
  (*(*(a2 - 8) + 8))(v6, a2);
  return memcpy(v2, a1, 0xB0uLL);
}

uint64_t Select.template.getter()
{
  sub_1000046C8();

  return sub_1000066C0();
}

uint64_t Select.template.setter()
{
  sub_100007D40();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Select.bindings.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

AppIntents_SQLite::Row_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RowIterator.failableNext()()
{
  sub_1000046C8();
  v2 = Statement.failableNext()();
  if (!v4)
  {
    v1 = v2;
    if (v2)
    {
    }

    else
    {
      v0 = 0;
    }
  }

  v5 = v0;
  v6 = v1;
  result.value.values._rawValue = v6;
  result.value.columnNames._rawValue = v5;
  result.is_nil = v3;
  return result;
}

void RowIterator.map<A>(_:)()
{
  sub_100004DF0();
  v1 = v0;
  sub_1000073F4();
  __chkstk_darwin(v2);
  sub_100002958();
  sub_100013A54();
  Array.init()();
  while (1)
  {
    v3 = Statement.failableNext()();
    if (v4)
    {
      break;
    }

    v5 = v3;
    if (!v3)
    {
      goto LABEL_6;
    }

    v1(v6, v5);

    type metadata accessor for Array();
    Array.append(_:)();
  }

LABEL_6:
  sub_100004674();
}

uint64_t sub_100132BC0@<X0>(void *a1@<X8>)
{
  *&result = RowIterator.failableNext()();
  if (!v4)
  {
    *a1 = result;
    a1[1] = v3;
  }

  return result;
}

uint64_t sub_100132BF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100139AB4(*v1, v1[1]);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_100132C1C(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  sub_1000034B4(a2, a2[3]);
  sub_100017FF8();
  sub_100017D44();
  v6 = v15;
  v7 = v16;
  sub_1000034B4(v14, v15);
  v8 = (*(v7 + 8))(v6, v7);
  v10 = v9;

  v17 = v8;
  v18 = v10;
  sub_1000034F8(v14);
  v11._countAndFlagsBits = 46;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = v4;
  v12._object = v5;
  String.append(_:)(v12);
  v13 = v18;
  *a3 = v17;
  a3[1] = v13;
}

uint64_t Connection.scalar<A>(_:)(void *__src, uint64_t a2, uint64_t a3)
{
  memcpy(v10, __src, sizeof(v10));
  type metadata accessor for ScalarQuery(0, a2, v7, v8);
  QueryType.expression.getter();
  Connection.scalar(_:_:)();

  if (v4)
  {
  }

  sub_100129A5C(v10, a2, a3);
  return sub_10001A940(v10, &qword_100199ED0);
}

void Connection.scalar<A>(_:)()
{
  sub_100004DF0();
  sub_1000046C8();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_100018378();
  v5 = type metadata accessor for Optional();
  sub_10000518C();
  v18 = v6;
  sub_100003A54();
  __chkstk_darwin(v7);
  sub_100013A54();
  sub_10000518C();
  v19 = v8;
  sub_100003A54();
  __chkstk_darwin(v9);
  sub_10001891C();
  memcpy(v20, v0, sizeof(v20));
  v10 = type metadata accessor for Optional();
  type metadata accessor for ScalarQuery(0, v10, v11, v12);
  QueryType.expression.getter();
  Connection.scalar(_:_:)();
  if (v1)
  {
  }

  else
  {

    sub_10002EB80(&qword_100199ED0, &qword_10014ED20);
    if (swift_dynamicCast())
    {
      sub_1000075C4(v2, 0, 1, AssociatedTypeWitness);
      v13 = sub_10001E1D0();
      v14(v13);
      v15 = sub_10001CEFC();
      v16(v15);
      (*(v19 + 8))(v3, AssociatedTypeWitness);
    }

    else
    {
      sub_10001A650();
      (*(v18 + 8))(v2, v5);
    }

    v17 = swift_getAssociatedTypeWitness();
    sub_10000E858(v17);
  }

  sub_100004674();
}

{
  sub_100004DF0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_100018378();
  v4 = type metadata accessor for Optional();
  sub_10000518C();
  v17 = v5;
  sub_100003A54();
  __chkstk_darwin(v6);
  sub_100013A54();
  sub_10000518C();
  v18 = v7;
  sub_100003A54();
  __chkstk_darwin(v8);
  sub_10001891C();
  v9 = type metadata accessor for Optional();
  type metadata accessor for Select(0, v9, v10, v11);
  ExpressionType.expression.getter();
  Connection.scalar(_:_:)();
  if (v0)
  {
  }

  else
  {

    sub_10002EB80(&qword_100199ED0, &qword_10014ED20);
    if (swift_dynamicCast())
    {
      sub_1000075C4(v1, 0, 1, AssociatedTypeWitness);
      v12 = sub_10001E1D0();
      v13(v12);
      v14 = sub_10001CEFC();
      v15(v14);
      (*(v18 + 8))(v2, AssociatedTypeWitness);
    }

    else
    {
      sub_10001A650();
      (*(v17 + 8))(v1, v4);
    }

    v16 = swift_getAssociatedTypeWitness();
    sub_10000E858(v16);
  }

  sub_100004674();
}

uint64_t Connection.scalar<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v10[2] = a3;
  type metadata accessor for Select(0, a4, a3, a4);
  ExpressionType.expression.getter();
  Connection.scalar(_:_:)();

  if (v6)
  {
  }

  sub_100129A5C(v10, a4, a5);
  return sub_10001A940(v10, &qword_100199ED0);
}

uint64_t sub_10013347C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1000FDAEC(a1, a2);
  result = Connection.run(_:_:)();
  if (!v3)
  {

    v8 = Connection.handle.getter(v6, v7);
    result = sqlite3_last_insert_rowid(v8);
    *a3 = result;
  }

  return result;
}

uint64_t sub_1001334D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1000FDAEC(a1, a2);
  result = Connection.run(_:_:)();
  if (!v3)
  {

    v8 = Connection.handle.getter(v6, v7);
    result = sqlite3_changes(v8);
    *a3 = result;
  }

  return result;
}

uint64_t sub_100133528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100012BA4();
  v10 = sub_1000198BC(v6, v7, v8, v9);
  v12 = sub_100015D3C(v10, v11, a3);
  v14 = v13;

  if (v14)
  {
    return 0;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v12 < *(a4 + 16))
  {
    sub_100011F4C();
    v16 = v19 != 0;
    sub_1000111FC();
    sub_10001A940(v17, v18);
    return v16;
  }

  __break(1u);
  return result;
}

void *sub_1001335F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1000142A0(*(a1 + 16), 0);
  v6 = sub_100021620(v3, v4, v5);

  sub_100014464(v8);
  if (v6 != v2)
  {
    __break(1u);
LABEL_4:
    v1 = _swiftEmptyArrayStorage;
  }

  v8 = v1;
  sub_10013385C(&v8);
  return v8;
}