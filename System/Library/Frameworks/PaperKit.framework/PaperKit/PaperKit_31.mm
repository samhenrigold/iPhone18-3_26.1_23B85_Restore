unint64_t protocol witness for CodingKey.stringValue.getter in conformance SortableCalculateExpression.CodingKeys()
{
  v1 = *v0;
  v2 = 1684632949;
  v3 = 0x65646E4974726F73;
  v4 = 0x74616D726F66;
  if (v1 != 3)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance SortableCalculateExpression.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized SortableCalculateExpression.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SortableCalculateExpression.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SortableCalculateExpression.CodingKeys and conformance SortableCalculateExpression.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SortableCalculateExpression.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SortableCalculateExpression.CodingKeys and conformance SortableCalculateExpression.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id protocol witness for CalculateMathItem.strokeGroupIdentifier.getter in conformance SortableCalculateExpression()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

double protocol witness for Decodable.init(from:) in conformance SortableCalculateExpression@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  specialized SortableCalculateExpression.init(from:)(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CanvasCalculateDocumentProxy.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CanvasCalculateDocumentProxy.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance CanvasCalculateDocumentProxy.CodingKeys(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance CanvasCalculateDocumentProxy.CodingKeys, *a1);

  *a2 = v3 != 0;
}

void protocol witness for CodingKey.init(stringValue:) in conformance CanvasCalculateDocumentProxy.CodingKeys(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance CanvasCalculateDocumentProxy.CodingKeys, v3);

  *a2 = v5 != 0;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CanvasCalculateDocumentProxy.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CanvasCalculateDocumentProxy.CodingKeys and conformance CanvasCalculateDocumentProxy.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CanvasCalculateDocumentProxy.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CanvasCalculateDocumentProxy.CodingKeys and conformance CanvasCalculateDocumentProxy.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id CanvasCalculateDocumentProxy.numberFormatter.getter()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
    [v3 setUsesGroupingSeparator_];
    [v3 setMaximumIntegerDigits_];
    [v3 setNumberStyle_];
    [v3 setRoundingMode_];
    v4 = *(v0 + 40);
    *(v0 + 40) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

unint64_t CanvasCalculateDocumentProxy.documentOptions.getter()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo12CalculateKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo12CalculateKeya_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D405C110;
    v3 = *MEMORY[0x1E6992270];
    *(inited + 32) = *MEMORY[0x1E6992270];
    v4 = v3;
    v5 = CanvasCalculateDocumentProxy.numberFormatter.getter();
    v6 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSNumberFormatter, 0x1E696ADA0);
    *(inited + 40) = v5;
    v7 = *MEMORY[0x1E6992280];
    *(inited + 64) = v6;
    *(inited + 72) = v7;
    v8 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v9 = v7;
    v10 = [v8 initWithUnsignedInteger_];
    v11 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
    *(inited + 80) = v10;
    v12 = *MEMORY[0x1E6992228];
    *(inited + 104) = v11;
    *(inited + 112) = v12;
    v13 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v14 = v12;
    *(inited + 120) = [v13 initWithBool_];
    v15 = *MEMORY[0x1E6992240];
    *(inited + 144) = v11;
    *(inited + 152) = v15;
    v16 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v17 = v15;
    v18 = [v16 initWithBool_];
    *(inited + 184) = v11;
    *(inited + 160) = v18;
    v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo12CalculateKeya_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12CalculateKeya_yptMd, &_sSo12CalculateKeya_yptMR);
    swift_arrayDestroy();
    *(v0 + 48) = v1;
  }

  return v1;
}

void CanvasCalculateDocumentProxy.updateDocumentIfNecessary()()
{
  v1 = v0;
  v129 = type metadata accessor for UUID();
  v128 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v117 = &v113 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v115 = &v113 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v113 = &v113 - v6;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLV5valuetMd, &_s10Foundation4UUIDV3key_8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLV5valuetMR);
  MEMORY[0x1EEE9AC00](v127);
  v126 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v125 = &v113 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v124 = &v113 - v11;
  if (*(v0 + 16) != 1)
  {
    return;
  }

  *(v0 + 16) = 0;
  swift_beginAccess();
  v12 = *(v0 + 56);
  v13 = *(v12 + 16);
  v114 = v0;
  if (!v13)
  {
    v14 = MEMORY[0x1E69E7CC0];
LABEL_22:
    v140 = v14;
    specialized MutableCollection<>.sort(by:)(&v140);
    swift_beginAccess();
    v57 = MEMORY[0x1E69E7CC8];
    v1[3] = MEMORY[0x1E69E7CC8];

    swift_beginAccess();
    v1[4] = v57;

    v58 = v1[7];
    v61 = *(v58 + 64);
    v60 = v58 + 64;
    v59 = v61;
    v62 = 1 << *(v1[7] + 32);
    v63 = -1;
    if (v62 < 64)
    {
      v63 = ~(-1 << v62);
    }

    v64 = v63 & v59;
    v131 = (v62 + 63) >> 6;
    v134 = (v128 + 32);
    v130 = v128 + 40;
    v127 = v128 + 16;
    v132 = v128 + 8;

    v66 = 0;
    for (i = v65; ; v65 = i)
    {
      do
      {
        if (!v64)
        {
          while (1)
          {
            v68 = v66 + 1;
            if (__OFADD__(v66, 1))
            {
              __break(1u);
              goto LABEL_61;
            }

            if (v68 >= v131)
            {
              break;
            }

            v64 = *(v60 + 8 * v68);
            ++v66;
            if (v64)
            {
              v66 = v68;
              goto LABEL_32;
            }
          }

          CanvasCalculateDocumentProxy.internalDocument.getter();
          v111 = *(v140 + 2);
          if (v111)
          {
            v138 = MEMORY[0x1E69E7CC0];
            specialized ContiguousArray.reserveCapacity(_:)();
            v112 = 40;
            do
            {

              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              v112 += 40;
              --v111;
            }

            while (v111);
          }

          dispatch thunk of CalculateDocument.expressions.setter();

          return;
        }

LABEL_32:
        v69 = __clz(__rbit64(v64));
        v64 &= v64 - 1;
        v70 = *(v65 + 56) + 40 * (v69 | (v66 << 6));
        v71 = *(v70 + 24);
        v72 = *(v70 + 32);
        v73 = HIBYTE(v72) & 0xF;
        if ((v72 & 0x2000000000000000) == 0)
        {
          v73 = v71 & 0xFFFFFFFFFFFFLL;
        }
      }

      while (!v73);
      v74 = *(v70 + 8);
      v135 = *v70;

      swift_bridgeObjectRetain_n();
      v75 = v113;
      v136 = v74;
      CalculateExpression.id.getter();
      swift_beginAccess();
      v76 = *v134;
      (*v134)(v115, v75, v129);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v137 = v1[4];
      v78 = v137;
      v1[4] = 0x8000000000000000;
      v79 = specialized __RawDictionaryStorage.find<A>(_:)(v71, v72);
      v81 = v78[2];
      v82 = (v80 & 1) == 0;
      v83 = __OFADD__(v81, v82);
      v84 = v81 + v82;
      if (v83)
      {
        goto LABEL_66;
      }

      v85 = v80;
      if (v78[3] < v84)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_40;
      }

      v90 = v79;
      specialized _NativeDictionary.copy()(MEMORY[0x1E69695A8], &_ss18_DictionaryStorageCySS10Foundation4UUIDVGMd, &_ss18_DictionaryStorageCySS10Foundation4UUIDVGMR);
      v79 = v90;
      v87 = v137;
      if (v85)
      {
LABEL_41:
        v88 = v71;
        v89 = *(v128 + 72);
        (*(v128 + 40))(v87[7] + v89 * v79, v115, v129);
        goto LABEL_45;
      }

LABEL_43:
      v87[(v79 >> 6) + 8] |= 1 << v79;
      v91 = (v87[6] + 16 * v79);
      v88 = v71;
      *v91 = v71;
      v91[1] = v72;
      v89 = *(v128 + 72);
      v76((v87[7] + v89 * v79), v115, v129);
      v92 = v87[2];
      v83 = __OFADD__(v92, 1);
      v93 = v92 + 1;
      if (v83)
      {
        goto LABEL_68;
      }

      v87[2] = v93;

LABEL_45:
      v94 = v114;
      v114[4] = v87;

      swift_endAccess();
      v95 = v117;
      CalculateExpression.id.getter();
      swift_beginAccess();
      v96 = swift_isUniquelyReferenced_nonNull_native();
      v137 = v94[3];
      v97 = v137;
      v94[3] = 0x8000000000000000;
      v98 = specialized __RawDictionaryStorage.find<A>(_:)(v95);
      v100 = v97[2];
      v101 = (v99 & 1) == 0;
      v83 = __OFADD__(v100, v101);
      v102 = v100 + v101;
      if (v83)
      {
        goto LABEL_67;
      }

      v103 = v99;
      if (v97[3] < v102)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v102, v96);
        v98 = specialized __RawDictionaryStorage.find<A>(_:)(v117);
        if ((v103 & 1) != (v104 & 1))
        {
          goto LABEL_70;
        }

LABEL_50:
        v105 = v137;
        if (v103)
        {
          goto LABEL_25;
        }

        goto LABEL_51;
      }

      if (v96)
      {
        goto LABEL_50;
      }

      v110 = v98;
      specialized _NativeDictionary.copy()();
      v98 = v110;
      v105 = v137;
      if (v103)
      {
LABEL_25:
        v67 = (v105[7] + 16 * v98);
        *v67 = v88;
        v67[1] = v72;

        goto LABEL_26;
      }

LABEL_51:
      v105[(v98 >> 6) + 8] |= 1 << v98;
      v106 = v98;
      (*v127)(v105[6] + v89 * v98, v117, v129);
      v107 = (v105[7] + 16 * v106);
      *v107 = v88;
      v107[1] = v72;
      v108 = v105[2];
      v83 = __OFADD__(v108, 1);
      v109 = v108 + 1;
      if (v83)
      {
        goto LABEL_69;
      }

      v105[2] = v109;
LABEL_26:
      (*v132)(v117, v129);
      v1 = v114;
      v114[3] = v105;
      swift_endAccess();
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v84, isUniquelyReferenced_nonNull_native, MEMORY[0x1E69695A8], &_ss18_DictionaryStorageCySS10Foundation4UUIDVGMd, &_ss18_DictionaryStorageCySS10Foundation4UUIDVGMR);
    v79 = specialized __RawDictionaryStorage.find<A>(_:)(v71, v72);
    if ((v85 & 1) != (v86 & 1))
    {
      goto LABEL_71;
    }

LABEL_40:
    v87 = v137;
    if (v85)
    {
      goto LABEL_41;
    }

    goto LABEL_43;
  }

  v139 = MEMORY[0x1E69E7CC0];

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
  v14 = v139;
  v15 = v12 + 64;
  v16 = _HashTable.startBucket.getter();
  v17 = 0;
  v123 = v128 + 16;
  v122 = v128 + 32;
  v121 = v128 + 8;
  v116 = v12 + 72;
  v118 = v13;
  v119 = v12 + 64;
  v120 = v12;
  v18 = v128;
  v19 = v129;
  while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(v12 + 32))
  {
    v21 = v16 >> 6;
    if ((*(v15 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
    {
      goto LABEL_62;
    }

    v132 = 1 << v16;
    v130 = v17;
    v131 = *(v12 + 36);
    v22 = v124;
    (*(v18 + 16))(v124, *(v12 + 48) + *(v18 + 72) * v16, v19);
    v23 = *(v12 + 56) + 40 * v16;
    v25 = *v23;
    v24 = *(v23 + 8);
    v26 = *(v23 + 16);
    v27 = *(v23 + 24);
    v28 = *(v23 + 32);
    v29 = *(v18 + 32);
    v136 = v14;
    v30 = v125;
    v29(v125, v22, v19);
    v31 = v127;
    v32 = &v30[*(v127 + 48)];
    *v32 = v25;
    *(v32 + 1) = v24;
    *(v32 + 2) = v26;
    *(v32 + 3) = v27;
    *(v32 + 4) = v28;
    v33 = v30;
    v34 = v126;
    outlined init with take of Range<AttributedString.Index>(v33, v126, &_s10Foundation4UUIDV3key_8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLV5valuetMd, &_s10Foundation4UUIDV3key_8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLV5valuetMR);
    v35 = (v34 + *(v31 + 48));
    v37 = *v35;
    v36 = v35[1];
    v38 = v35[2];
    v40 = v35[3];
    v39 = v35[4];
    v134 = v40;
    v135 = v36;
    i = v39;
    v41 = *(v18 + 8);
    v42 = v25;

    v43 = v34;
    v14 = v136;
    v41(v43, v19);
    v139 = v14;
    v45 = *(v14 + 16);
    v44 = *(v14 + 24);
    if (v45 >= v44 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1);
      v14 = v139;
    }

    *(v14 + 16) = v45 + 1;
    v46 = (v14 + 40 * v45);
    v48 = v134;
    v47 = v135;
    v46[4] = v37;
    v46[5] = v47;
    v46[6] = v38;
    v49 = i;
    v46[7] = v48;
    v46[8] = v49;
    v12 = v120;
    v20 = 1 << *(v120 + 32);
    if (v16 >= v20)
    {
      goto LABEL_63;
    }

    v15 = v119;
    v50 = *(v119 + 8 * v21);
    if ((v50 & v132) == 0)
    {
      goto LABEL_64;
    }

    if (v131 != *(v120 + 36))
    {
      goto LABEL_65;
    }

    v51 = v50 & (-2 << (v16 & 0x3F));
    if (v51)
    {
      v20 = __clz(__rbit64(v51)) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v52 = v21 << 6;
      v53 = v21 + 1;
      v54 = (v116 + 8 * v21);
      while (v53 < (v20 + 63) >> 6)
      {
        v56 = *v54++;
        v55 = v56;
        v52 += 64;
        ++v53;
        if (v56)
        {
          outlined consume of [AnalyticsKeys : NSObject].Index._Variant(v16, v131, 0);
          v20 = __clz(__rbit64(v55)) + v52;
          goto LABEL_5;
        }
      }

      outlined consume of [AnalyticsKeys : NSObject].Index._Variant(v16, v131, 0);
    }

LABEL_5:
    v17 = v130 + 1;
    v16 = v20;
    if (v130 + 1 == v118)
    {

      v1 = v114;
      goto LABEL_22;
    }
  }

LABEL_61:
  __break(1u);
LABEL_62:
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
LABEL_70:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_71:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t CanvasCalculateDocumentProxy.internalDocument.getter()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    CanvasCalculateDocumentProxy.documentOptions.getter();
    type metadata accessor for CalculateDocument();
    swift_allocObject();
    v1 = CalculateDocument.init(expressions:options:)();
    *(v0 + 64) = v1;
  }

  return v1;
}

uint64_t CanvasCalculateDocumentProxy.copy()()
{
  v81 = type metadata accessor for UUID();
  v1 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v84 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v72 = &v69 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLV5valuetSgMd, &_s10Foundation4UUIDV3key_8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLV5valuetSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v77 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v75 = &v69 - v8;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = MEMORY[0x1E69E7CC0];
  *(v9 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4UUIDVTt0g5Tf4g_n(v10);
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 32) = v11;
  *(v9 + 56) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLVTt0g5Tf4g_n(v10);
  v83 = (v9 + 56);
  v70 = v9;
  *(v9 + 64) = 0;
  swift_beginAccess();
  v12 = *(v0 + 56);
  v13 = *(v12 + 64);
  v76 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v71 = (v14 + 63) >> 6;
  v78 = v1 + 16;
  v79 = v1;
  v82 = (v1 + 32);
  v73 = v12;
  v74 = (v1 + 8);

  v17 = 0;
  while (v16)
  {
    v20 = v17;
LABEL_16:
    v24 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v25 = v24 | (v20 << 6);
    v26 = v73;
    v27 = v79;
    v28 = v72;
    v29 = v81;
    (*(v79 + 16))(v72, *(v73 + 48) + *(v79 + 72) * v25, v81);
    v30 = *(v26 + 56) + 40 * v25;
    v32 = *v30;
    v31 = *(v30 + 8);
    v33 = *(v30 + 16);
    v34 = *(v30 + 32);
    v80 = *(v30 + 24);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLV5valuetMd, &_s10Foundation4UUIDV3key_8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLV5valuetMR);
    v36 = &v77[*(v35 + 48)];
    v37 = *(v27 + 32);
    v23 = v77;
    v37(v77, v28, v29);
    *v36 = v32;
    *(v36 + 1) = v31;
    *(v36 + 2) = v33;
    *(v36 + 3) = v80;
    *(v36 + 4) = v34;
    (*(*(v35 - 8) + 56))(v23, 0, 1, v35);
    v38 = v32;

LABEL_17:
    v39 = v23;
    v40 = v75;
    outlined init with take of Range<AttributedString.Index>(v39, v75, &_s10Foundation4UUIDV3key_8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLV5valuetSgMd, &_s10Foundation4UUIDV3key_8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLV5valuetSgMR);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLV5valuetMd, &_s10Foundation4UUIDV3key_8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLV5valuetMR);
    if ((*(*(v41 - 8) + 48))(v40, 1, v41) == 1)
    {

      result = v70;
      *(v70 + 16) = 1;
      return result;
    }

    v42 = v40 + *(v41 + 48);
    v43 = *v42;
    v44 = *(v42 + 8);
    v45 = *(v42 + 16);
    v46 = v84;
    v47 = v40;
    v48 = v81;
    (*v82)(v84, v47);
    v49 = v83;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = *v49;
    v85 = v51;
    v53 = specialized __RawDictionaryStorage.find<A>(_:)(v46);
    v54 = v51[2];
    v55 = (v52 & 1) == 0;
    v56 = v54 + v55;
    if (__OFADD__(v54, v55))
    {
      goto LABEL_32;
    }

    v57 = v52;
    if (v51[3] >= v56)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v60 = v85;
        if (v52)
        {
          goto LABEL_4;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v60 = v85;
        if (v57)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v56, isUniquelyReferenced_nonNull_native);
      v58 = specialized __RawDictionaryStorage.find<A>(_:)(v84);
      if ((v57 & 1) != (v59 & 1))
      {
        goto LABEL_34;
      }

      v53 = v58;
      v60 = v85;
      if (v57)
      {
LABEL_4:
        v18 = v60[7] + 40 * v53;
        v19 = *v18;
        *v18 = 0;
        *(v18 + 8) = v44;
        *(v18 + 16) = v45;
        *(v18 + 24) = 0;
        *(v18 + 32) = 0xE000000000000000;

        (*v74)(v84, v48);
        goto LABEL_5;
      }
    }

    v60[(v53 >> 6) + 8] |= 1 << v53;
    v61 = v79;
    v62 = v84;
    (*(v79 + 16))(v60[6] + *(v79 + 72) * v53, v84, v48);
    v63 = (v60[7] + 40 * v53);
    *v63 = 0;
    v63[1] = v44;
    v63[2] = v45;
    v63[3] = 0;
    v63[4] = 0xE000000000000000;
    (*(v61 + 8))(v62, v48);
    v64 = v60[2];
    v65 = __OFADD__(v64, 1);
    v66 = v64 + 1;
    if (v65)
    {
      goto LABEL_33;
    }

    v60[2] = v66;
LABEL_5:
    *v83 = v60;
    swift_endAccess();
  }

  if (v71 <= v17 + 1)
  {
    v21 = v17 + 1;
  }

  else
  {
    v21 = v71;
  }

  v22 = v21 - 1;
  v23 = v77;
  while (1)
  {
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v20 >= v71)
    {
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLV5valuetMd, &_s10Foundation4UUIDV3key_8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLV5valuetMR);
      (*(*(v67 - 8) + 56))(v23, 1, 1, v67);
      v16 = 0;
      v17 = v22;
      goto LABEL_17;
    }

    v16 = *(v76 + 8 * v20);
    ++v17;
    if (v16)
    {
      v17 = v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t CanvasCalculateDocumentProxy.calculateDocumentProvider.getter()
{
  v27 = MEMORY[0x1E69E7CC0];
  v26 = MEMORY[0x1E69E7CD0];
  CanvasCalculateDocumentProxy.updateDocumentIfNecessary()();
  CanvasCalculateDocumentProxy.internalDocument.getter();
  v0 = dispatch thunk of CalculateDocument.declaredSymbols.getter();
  v1 = v0;
  v2 = 0;
  v3 = v0 + 56;
  v4 = 1 << *(v0 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v0 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      specialized Set._Variant.insert(_:)(&v25, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  result = MEMORY[0x1DA6CACA0](v13);
  v1 = result;
  if (!(result >> 62))
  {
    v15 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_13;
    }

LABEL_24:
    v23 = MEMORY[0x1E69E7CC0];
LABEL_25:

    v24 = [objc_allocWithZone(type metadata accessor for CalculateDocumentProvider()) init];
    *&v24[OBJC_IVAR____TtC8PaperKit25CalculateDocumentProvider_declaredVariables] = v26;

    *&v24[OBJC_IVAR____TtC8PaperKit25CalculateDocumentProvider_expressions] = v23;

    return v24;
  }

LABEL_23:
  result = __CocoaSet.count.getter();
  v15 = result;
  if (!result)
  {
    goto LABEL_24;
  }

LABEL_13:
  if (v15 >= 1)
  {
    v16 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA6CE0C0](v16, v1);
      }

      else
      {
      }

      v17 = CalculateExpression.expression.getter();
      v19 = v18;
      v20 = [objc_allocWithZone(type metadata accessor for MathExpression()) init];
      v21 = &v20[OBJC_IVAR____TtC8PaperKit14MathExpression_expression];
      *v21 = v17;
      v21[1] = v19;

      v22 = v20;
      MEMORY[0x1DA6CD190]();
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v16;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    while (v15 != v16);
    v23 = v27;
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

void CanvasCalculateDocumentProxy.setGraphableIdentifier(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v3 + 56);
  if (*(v8 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(a3), (v10 & 1) != 0))
  {
    v11 = *(v8 + 56) + 40 * v9;
    v13 = *v11;
    v12 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
    v16 = *(v11 + 32);
    swift_endAccess();
    v17 = v15 == a1 && v16 == a2;
    if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v22[0] = v13;
      v22[1] = v12;
      v22[2] = v14;
      v22[3] = a1;
      v22[4] = a2;
      swift_beginAccess();
      v18 = v13;
      swift_retain_n();
      v19 = v18;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *(v4 + 56);
      *(v4 + 56) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, a3, isUniquelyReferenced_nonNull_native);
      *(v4 + 56) = v21;
      swift_endAccess();

      *(v4 + 16) = 1;
    }
  }

  else
  {
    swift_endAccess();
  }
}

void CanvasCalculateDocumentProxy.move(_:sortIndex:)(uint64_t a1, double a2)
{
  v3 = v2;
  v31 = type metadata accessor for UUID();
  v6 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v32 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  CalculateExpression.id.getter();
  swift_beginAccess();
  v11 = *(v2 + 56);
  if (*(v11 + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v13 & 1) != 0))
  {
    v14 = *(v11 + 56) + 40 * v12;
    v15 = *(v14 + 8);
    v17 = *(v14 + 16);
    v16 = *(v14 + 24);
    v18 = *(v14 + 32);
    v19 = *v14;
    v20 = *v14;

    v21 = v18;
  }

  else
  {
    v19 = 0;
    v15 = 0;
    v17 = 0;
    v16 = 0;
    v21 = 0;
  }

  swift_endAccess();
  v22 = v6 + 8;
  v23 = *(v6 + 8);
  v24 = v10;
  v25 = v31;
  v30 = v22;
  v23(v24, v31);
  CalculateExpression.id.getter();
  if (v15)
  {
    outlined copy of SortableCalculateExpression?(v19, v15, v17, v16, v21);

    v26 = v16;
    v27 = v21;
  }

  else
  {
    v26 = 0;
    v27 = 0xE000000000000000;
  }

  v34[0] = 0;
  v34[1] = a1;
  *&v34[2] = a2;
  v34[3] = v26;
  v34[4] = v27;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = *(v3 + 56);
  *(v3 + 56) = 0x8000000000000000;
  v29 = v32;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v34, v32, isUniquelyReferenced_nonNull_native);
  v23(v29, v25);
  *(v3 + 56) = v33;
  swift_endAccess();
  outlined consume of SortableCalculateExpression?(v19, v15, v17, v16, v21);
  *(v3 + 16) = 1;
}

uint64_t CanvasCalculateDocumentProxy.expression(withId:)(uint64_t a1)
{
  CanvasCalculateDocumentProxy.updateDocumentIfNecessary()();
  swift_beginAccess();
  v3 = *(v1 + 56);
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v5 & 1) != 0))
  {
    v6 = *(v3 + 56) + 40 * v4;
    v7 = *v6;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
    v11 = *(v6 + 32);
    v12 = *v6;
    swift_retain_n();

    swift_endAccess();
    outlined consume of SortableCalculateExpression?(v7, v8, v9, v10, v11);
    return v8;
  }

  else
  {
    swift_endAccess();
    return 0;
  }
}

uint64_t CanvasCalculateDocumentProxy.expression(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v48 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v45 = v44 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v44 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v44 - v16;
  CanvasCalculateDocumentProxy.updateDocumentIfNecessary()();
  v18 = *(type metadata accessor for GraphableExpression(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  v46 = a1;
  v44[1] = v18;
  CRRegister.wrappedValue.getter();
  v20 = v50;
  v19 = v51;
  swift_beginAccess();
  v47 = v2;
  v21 = *(v2 + 32);
  if (*(v21 + 16))
  {
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v19);
    v24 = v23;

    if (v24)
    {
      (*(v5 + 16))(v17, *(v21 + 56) + *(v5 + 72) * v22, v4);
      v25 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v25 = 1;
LABEL_6:
  (*(v5 + 56))(v17, v25, 1, v4);
  swift_endAccess();
  outlined init with copy of Date?(v17, v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v49 = v5;
  v26 = *(v5 + 48);
  v27 = v26(v14, 1, v4);
  outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v27 == 1)
  {
    CRRegister.wrappedValue.getter();
    v28 = v45;
    UUID.init(uuidString:)();

    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined init with take of Range<AttributedString.Index>(v28, v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  outlined init with copy of Date?(v17, v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v26(v9, 1, v4) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v29 = 0;
    v17 = v9;
  }

  else
  {
    v31 = v48;
    v30 = v49;
    (*(v49 + 32))(v48, v9, v4);
    v32 = v47;
    swift_beginAccess();
    v33 = *(v32 + 56);
    if (*(v33 + 16) && (v34 = specialized __RawDictionaryStorage.find<A>(_:)(v31), (v35 & 1) != 0))
    {
      v36 = *(v33 + 56) + 40 * v34;
      v37 = *v36;
      v29 = *(v36 + 8);
      v38 = v30;
      v39 = *(v36 + 16);
      v40 = *(v36 + 24);
      v41 = *(v36 + 32);
      v42 = *v36;
      swift_retain_n();

      swift_endAccess();
      outlined consume of SortableCalculateExpression?(v37, v29, v39, v40, v41);
      (*(v38 + 8))(v31, v4);
    }

    else
    {
      swift_endAccess();
      (*(v30 + 8))(v31, v4);
      v29 = 0;
    }
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return v29;
}

uint64_t CanvasCalculateDocumentProxy.graphableExpression(for:)@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v32 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v38 = v32 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v37 = v32 - v12;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  CanvasCalculateDocumentProxy.updateDocumentIfNecessary()();
  CalculateExpression.id.getter();
  swift_beginAccess();
  v17 = *(v1 + 24);
  if (*(v17 + 16) && (v18 = specialized __RawDictionaryStorage.find<A>(_:)(v16), (v19 & 1) != 0))
  {
    v20 = (*(v17 + 56) + 16 * v18);
    v21 = *v20;
    v35 = v20[1];
    v36 = v21;
    swift_endAccess();
    v22 = *(v14 + 8);

    v22(v16, v13);
    v23 = CalculateExpression.expression.getter();
    v33 = v24;
    v34 = v23;
    v25 = type metadata accessor for Color(0);
    v26 = *(*(v25 - 8) + 56);
    v27 = v37;
    v26(v37, 1, 1, v25);
    outlined init with copy of Date?(v27, v38, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    v39 = 0;
    v40 = 0xE000000000000000;
    CRRegister.init(wrappedValue:)();
    v28 = type metadata accessor for GraphableExpression(0);
    v32[1] = *(v28 + 20);
    v39 = 0;
    v40 = 0xE000000000000000;
    CRRegister.init(wrappedValue:)();
    v32[2] = *(v28 + 24);
    v26(v8, 1, 1, v25);
    outlined init with copy of Date?(v8, v5, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    lazy protocol witness table accessor for type Color? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    v39 = 0;
    v40 = 0xE000000000000000;
    CRRegister.init(wrappedValue:)();
    UnknownProperties.init()();
    v39 = v34;
    v40 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
    CRRegister.wrappedValue.setter();
    v39 = v36;
    v40 = v35;
    CRRegister.wrappedValue.setter();
    v29 = v38;
    outlined init with copy of Date?(v38, v8, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    outlined init with copy of Date?(v8, v5, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
    CRRegister.wrappedValue.setter();
    outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    v39 = 0;
    v40 = 0xE000000000000000;
    CRRegister.wrappedValue.setter();
    outlined destroy of StocksKitCurrencyCache.Provider?(v29, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v37, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    return (*(*(v28 - 8) + 56))(a1, 0, 1, v28);
  }

  else
  {
    swift_endAccess();
    (*(v14 + 8))(v16, v13);
    v31 = type metadata accessor for GraphableExpression(0);
    return (*(*(v31 - 8) + 56))(a1, 1, 1, v31);
  }
}

uint64_t CanvasCalculateDocumentProxy.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for CanvasCalculateDocument.document.getter in conformance CanvasCalculateDocumentProxy()
{
  CanvasCalculateDocumentProxy.updateDocumentIfNecessary()();

  return CanvasCalculateDocumentProxy.internalDocument.getter();
}

void protocol witness for CanvasCalculateDocument.insert(_:atIndex:) in conformance CanvasCalculateDocumentProxy(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  CalculateExpression.id.getter();
  v14[0] = 0;
  v14[1] = a1;
  v14[2] = v10;
  v14[3] = 0;
  v14[4] = 0xE000000000000000;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v3 + 56);
  *(v3 + 56) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, v9, isUniquelyReferenced_nonNull_native);
  (*(v7 + 8))(v9, v6);
  *(v3 + 56) = v13;
  swift_endAccess();
  *(v3 + 16) = 1;
}

void protocol witness for CanvasCalculateDocument.remove(_:) in conformance CanvasCalculateDocumentProxy()
{
  v1 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  CalculateExpression.id.getter();
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v5, v3);
  swift_endAccess();
  *(v0 + 16) = 1;
}

uint64_t protocol witness for Decodable.init(from:) in conformance CanvasCalculateDocumentProxy@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized CanvasCalculateDocumentProxy.__allocating_init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t CanvasCalculateDocumentProxy.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8PaperKit28CanvasCalculateDocumentProxyC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy8PaperKit28CanvasCalculateDocumentProxyC10CodingKeysOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CanvasCalculateDocumentProxy.CodingKeys and conformance CanvasCalculateDocumentProxy.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  swift_beginAccess();
  v9 = *(v2 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy10Foundation4UUIDV8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLVGMd, &_sSDy10Foundation4UUIDV8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLVGMR);
  lazy protocol witness table accessor for type [UUID : SortableCalculateExpression] and conformance <> [A : B]();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CanvasCalculateDocumentProxy(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v2 + 56);
  swift_beginAccess();
  v5 = *(v3 + 56);

  _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ10Foundation4UUIDV_8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLVTt1g5(v4, v5);
  v7 = v6;

  return v7 & 1;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLVGMd, &_ss23_ContiguousArrayStorageCy8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
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
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo7CGPointVGMd, &_ss23_ContiguousArrayStorageCySo7CGPointVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatVGMd, &_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit0D18DocumentFindResultVGMd, &_ss23_ContiguousArrayStorageCy8PaperKit0D18DocumentFindResultVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableVGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit14ReflowTextLineVGMd, &_ss23_ContiguousArrayStorageCy8PaperKit14ReflowTextLineVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 168);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[168 * v8])
    {
      memmove(v12, v13, 168 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit17SearchQueryResultVGMd, &_ss23_ContiguousArrayStorageCy8PaperKit17SearchQueryResultVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit12WeakObserver33_8D2F688A48D6891537C9DABEFCA94965LLVGMd, &_ss23_ContiguousArrayStorageCy8PaperKit12WeakObserver33_8D2F688A48D6891537C9DABEFCA94965LLVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit9AnyCanvasC_12CoreGraphics7CGFloatVtGMd, &_ss23_ContiguousArrayStorageCy8PaperKit9AnyCanvasC_12CoreGraphics7CGFloatVtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9AnyCanvasC_12CoreGraphics7CGFloatVtMd, &_s8PaperKit9AnyCanvasC_12CoreGraphics7CGFloatVtMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo17UITextContentTypeaGMd, &_ss23_ContiguousArrayStorageCySo17UITextContentTypeaGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    type metadata accessor for UITextContentType(0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySDySSypGSgGMd, &_ss23_ContiguousArrayStorageCySDySSypGSgGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGSgMd, &_sSDySSypGSgMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI7BindingVySbGGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI7BindingVySbGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyShy8PaperKit16ResizeHandleTypeOGGMd, &_ss23_ContiguousArrayStorageCyShy8PaperKit16ResizeHandleTypeOGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy8PaperKit16ResizeHandleTypeOGMd, &_sShy8PaperKit16ResizeHandleTypeOGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit8LinkItem_pGMd, &_ss23_ContiguousArrayStorageCy8PaperKit8LinkItem_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit8LinkItem_pMd, &_s8PaperKit8LinkItem_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9Calculate0D10ExpressionC9TokenTypeOGMd, &_ss23_ContiguousArrayStorageCy9Calculate0D10ExpressionC9TokenTypeOGMR, MEMORY[0x1E69921B8]);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy8PaperKit16PKCalculateToken_pGMd, &_ss23_ContiguousArrayStorageCy8PaperKit16PKCalculateToken_pGMR, &_s8PaperKit16PKCalculateToken_pMd, &_s8PaperKit16PKCalculateToken_pMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy8PaperKit17CalculateMathItem_pGMd, &_ss23_ContiguousArrayStorageCy8PaperKit17CalculateMathItem_pGMR, &_s8PaperKit17CalculateMathItem_pMd, &_s8PaperKit17CalculateMathItem_pMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9Coherence9CRKeyPathVGMd, &_ss23_ContiguousArrayStorageCy9Coherence9CRKeyPathVGMR, MEMORY[0x1E69954B8]);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9Coherence9CRKeyPathV_8PaperKit20AnyCanvasElementViewCtGMd, &_ss23_ContiguousArrayStorageCy9Coherence9CRKeyPathV_8PaperKit20AnyCanvasElementViewCtGMR, &_s9Coherence9CRKeyPathV_8PaperKit20AnyCanvasElementViewCtMd, &_s9Coherence9CRKeyPathV_8PaperKit20AnyCanvasElementViewCtMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy8PaperKit19GraphableExpressionVGMd, &_ss23_ContiguousArrayStorageCy8PaperKit19GraphableExpressionVGMR, type metadata accessor for GraphableExpression);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x1E69695A8]);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMd, &_ss23_ContiguousArrayStorageCy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMR, &_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9Coherence7WeakRefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_ss23_ContiguousArrayStorageCy9Coherence7WeakRefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9PencilKit8PKStrokeVGMd, &_ss23_ContiguousArrayStorageCy9PencilKit8PKStrokeVGMR, MEMORY[0x1E69783C8]);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9Coherence9CRKeyPathV_SitGMd, &_ss23_ContiguousArrayStorageCy9Coherence9CRKeyPathV_SitGMR, &_s9Coherence9CRKeyPathV_SitMd, &_s9Coherence9CRKeyPathV_SitMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9Coherence15SharedTagged_10Vy8PaperKit0F13CanvasElementVGGMd, &_ss23_ContiguousArrayStorageCy9Coherence15SharedTagged_10Vy8PaperKit0F13CanvasElementVGGMR, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy8PaperKit10FindResult_pGMd, &_ss23_ContiguousArrayStorageCy8PaperKit10FindResult_pGMR, &_s8PaperKit10FindResult_pMd, &_s8PaperKit10FindResult_pMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGGMd, &_ss23_ContiguousArrayStorageCy9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGGMR, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGMd, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9PencilKit13PKStrokePointVGMd, &_ss23_ContiguousArrayStorageCy9PencilKit13PKStrokePointVGMR, MEMORY[0x1E6978390]);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9Coherence3RefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_ss23_ContiguousArrayStorageCy9Coherence3RefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9Coherence13WeakTagged_10Vy8PaperKit0F13CanvasElementVGGMd, &_ss23_ContiguousArrayStorageCy9Coherence13WeakTagged_10Vy8PaperKit0F13CanvasElementVGGMR, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy8PaperKit5ColorVGMd, &_ss23_ContiguousArrayStorageCy8PaperKit5ColorVGMR, type metadata accessor for Color);
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3, char *a4)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySi9pageIndex_8PaperKit17SearchQueryResultV05queryJ0tGMd, &_ss23_ContiguousArrayStorageCySi9pageIndex_8PaperKit17SearchQueryResultV05queryJ0tGMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySi_8PaperKit17SearchQueryResultVtGMd, &_ss23_ContiguousArrayStorageCySi_8PaperKit17SearchQueryResultVtGMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySo6CGRectVGMd, &_ss23_ContiguousArrayStorageCySo6CGRectVGMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySo7CGPointV_ADtGMd, &_ss23_ContiguousArrayStorageCySo7CGPointV_ADtGMR);
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 40);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[40 * v10])
    {
      memmove(v14, v15, 40 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 40 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[32 * v10])
    {
      memmove(v15, v16, 32 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 32 * v10);
  }

  return v12;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size_0(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

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
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v19);
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

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v17);
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

void specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSSGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSSGMR);
  v45 = v4;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v50 = v8;
    v41 = v2;
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
    v42 = (v6 + 16);
    v43 = v9;
    v44 = v6;
    v46 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v25 = v22 | (v12 << 6);
      v26 = *(v9 + 48);
      v49 = *(v44 + 72);
      v27 = v26 + v49 * v25;
      if (v45)
      {
        (*v46)(v50, v27, v5);
        v28 = (*(v9 + 56) + 16 * v25);
        v29 = *v28;
        v47 = v28[1];
        v48 = v29;
      }

      else
      {
        (*v42)(v50, v27, v5);
        v30 = (*(v9 + 56) + 16 * v25);
        v31 = *v30;
        v47 = v30[1];
        v48 = v31;
      }

      _s8PaperKit5ColorVAC9Coherence7CRValueAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v33 = -1 << *(v11 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v18 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v18 + 8 * v35);
          if (v39 != -1)
          {
            v19 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v34) & ~*(v18 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v46)((*(v11 + 48) + v49 * v19), v50, v5);
      v20 = (*(v11 + 56) + 16 * v19);
      v21 = v47;
      *v20 = v48;
      v20[1] = v21;
      ++*(v11 + 16);
      v9 = v43;
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v16 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v13, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, MEMORY[0x1E69695A8], &_ss18_DictionaryStorageCySS10Foundation4UUIDVGMd, &_ss18_DictionaryStorageCySS10Foundation4UUIDVGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy8PaperKit17DrawingIdentifier33_8D2F688A48D6891537C9DABEFCA94965LLVAC27CalculateDocumentControllerCGMd, &_ss18_DictionaryStorageCy8PaperKit17DrawingIdentifier33_8D2F688A48D6891537C9DABEFCA94965LLVAC27CalculateDocumentControllerCGMR);
  v33 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v33 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      Hasher.init(_seed:)();
      MEMORY[0x1DA6CE810]([v20 hash]);
      v24 = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLVGMR);
  v50 = v4;
  v9 = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    v57 = v5;
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
    v46 = v2;
    v47 = (v6 + 16);
    v48 = v8;
    v49 = v6;
    v52 = (v6 + 32);
    v17 = v9 + 64;
    v18 = v51;
    while (v15)
    {
      v22 = __clz(__rbit64(v15));
      v23 = (v15 - 1) & v15;
LABEL_15:
      v26 = v22 | (v11 << 6);
      v27 = *(v8 + 48);
      v55 = *(v49 + 72);
      v56 = v23;
      v28 = v27 + v55 * v26;
      if (v50)
      {
        (*v52)(v18, v28, v57);
        v29 = (*(v8 + 56) + 40 * v26);
        v30 = *v29;
        v31 = v29[1];
        v32 = v29[2];
        v33 = v29[4];
        v53 = v29[3];
        v54 = v30;
      }

      else
      {
        (*v47)(v18, v28, v57);
        v34 = *(v8 + 56) + 40 * v26;
        v35 = *v34;
        v31 = *(v34 + 8);
        v32 = *(v34 + 16);
        v33 = *(v34 + 32);
        v53 = *(v34 + 24);
        v54 = v35;
        v36 = v35;
      }

      _s8PaperKit5ColorVAC9Coherence7CRValueAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v37 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v38 = -1 << *(v10 + 32);
      v39 = v37 & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v17 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        v18 = v51;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v17 + 8 * v40);
          if (v44 != -1)
          {
            v19 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v39) & ~*(v17 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
      v18 = v51;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v52)((*(v10 + 48) + v55 * v19), v18, v57);
      v20 = (*(v10 + 56) + 40 * v19);
      v21 = v53;
      *v20 = v54;
      v20[1] = v31;
      v20[2] = v32;
      v20[3] = v21;
      v20[4] = v33;
      ++*(v10 + 16);
      v8 = v48;
      v15 = v56;
    }

    v24 = v11;
    while (1)
    {
      v11 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v25 = v12[v11];
      ++v24;
      if (v25)
      {
        v22 = __clz(__rbit64(v25));
        v23 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v50 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_34;
    }

    v45 = 1 << *(v8 + 32);
    v3 = v46;
    if (v45 >= 64)
    {
      bzero(v12, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v45;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVGMR);
  v39 = v4;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v35 = v2;
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
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = v10 + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        (*v40)(v42, v25, v43);
        outlined init with take of WeakCalculateExpression(*(v9 + 56) + 8 * v23, v44);
      }

      else
      {
        (*v36)(v42, v25, v43);
        outlined init with copy of WeakCalculateExpression(*(v9 + 56) + 8 * v23, v44);
      }

      _s8PaperKit5ColorVAC9Coherence7CRValueAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v6 = v37;
        v9 = v38;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v40)((*(v11 + 48) + v41 * v19), v42, v43);
      outlined init with take of WeakCalculateExpression(v44, *(v11 + 56) + 8 * v19);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy10Foundation4UUIDVSo9PKDrawingCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSo9PKDrawingCGMR);
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy10Foundation4UUIDVSo8NSNumberCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSo8NSNumberCGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV8PaperKit17CalculateMathItem_pGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV8PaperKit17CalculateMathItem_pGMR);
  v39 = v4;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v35 = v2;
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
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = v10 + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        (*v40)(v42, v25, v43);
        outlined init with take of CalculateMathItem((*(v9 + 56) + 40 * v23), v44);
      }

      else
      {
        (*v36)(v42, v25, v43);
        outlined init with copy of FindResult(*(v9 + 56) + 40 * v23, v44);
      }

      _s8PaperKit5ColorVAC9Coherence7CRValueAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v6 = v37;
        v9 = v38;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v40)((*(v11 + 48) + v41 * v19), v42, v43);
      outlined init with take of CalculateMathItem(v44, *(v11 + 56) + 40 * v19);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for CRKeyPath();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9Coherence9CRKeyPathV8PaperKit20AnyCanvasElementViewCGMd, &_ss18_DictionaryStorageCy9Coherence9CRKeyPathV8PaperKit20AnyCanvasElementViewCGMR);
  v40 = v4;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
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
    v37 = (v6 + 16);
    v38 = v9;
    v39 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      _s8PaperKit5ColorVAC9Coherence7CRValueAAWlTm_1(&lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, MEMORY[0x1E69954B8], MEMORY[0x1E69954C8]);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMd, &_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMR);
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v2;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        outlined init with take of Any(v22, v36);
      }

      else
      {
        outlined init with copy of Any(v22, v36);
        v23 = v21;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v24 = Hasher._finalize()();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
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

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      outlined init with take of Any(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
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

LABEL_34:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV11CalculateUI0E15GraphExpressionCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV11CalculateUI0E15GraphExpressionCGMR);
  v40 = v4;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
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
    v37 = (v6 + 16);
    v38 = v9;
    v39 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      _s8PaperKit5ColorVAC9Coherence7CRValueAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v38 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
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
    v14 = v6 + 64;
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
      v39 = *v26;
      if ((v38 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v28 = Hasher._finalize()();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v39;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefaypGMd, &_ss18_DictionaryStorageCySo11CFStringRefaypGMR);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        outlined init with take of Any(v21, v32);
      }

      else
      {
        outlined init with copy of Any(v21, v32);
        v22 = v20;
      }

      Hasher.init(_seed:)();
      type metadata accessor for CFStringRef(0);
      _s8PaperKit5ColorVAC9Coherence7CRValueAAWlTm_1(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, &protocol conformance descriptor for CFStringRef);
      _CFObject.hash(into:)();
      v23 = Hasher._finalize()();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      outlined init with take of Any(v32, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for CRKeyPath();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v39 - v9;
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9Coherence9CRKeyPathVAEGMd, &_ss18_DictionaryStorageCy9Coherence9CRKeyPathVAEGMR);
  v45 = v4;
  v50 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (*(v10 + 16))
  {
    v40 = v2;
    v11 = 0;
    v12 = (v10 + 64);
    v13 = 1 << *(v10 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v10 + 64);
    v16 = (v13 + 63) >> 6;
    v41 = (v6 + 16);
    v42 = v10;
    v43 = v6;
    v46 = (v6 + 32);
    v17 = v50 + 64;
    while (v15)
    {
      v22 = __clz(__rbit64(v15));
      v48 = (v15 - 1) & v15;
LABEL_15:
      v25 = *(v10 + 48);
      v47 = *(v43 + 72);
      v26 = v47 * (v22 | (v11 << 6));
      if (v45)
      {
        v27 = *v46;
        v28 = v44;
        (*v46)(v44, v25 + v26, v5);
      }

      else
      {
        v27 = *v41;
        v28 = v44;
        (*v41)(v44, v25 + v26, v5);
      }

      v27(v49, *(v10 + 56) + v26, v5);
      v29 = v50;
      _s8PaperKit5ColorVAC9Coherence7CRValueAAWlTm_1(&lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, MEMORY[0x1E69954B8], MEMORY[0x1E69954C8]);
      v30 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v31 = -1 << *(v29 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = v50;
      v20 = v47 * v18;
      v21 = *v46;
      (*v46)((*(v50 + 48) + v47 * v18), v28, v5);
      v21((*(v19 + 56) + v20), v49, v5);
      ++*(v19 + 16);
      v10 = v42;
      v15 = v48;
    }

    v23 = v11;
    while (1)
    {
      v11 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v24 = v12[v11];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v48 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v50;
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, MEMORY[0x1E69953F0], &_ss18_DictionaryStorageCySS9Coherence7AnyCRDTVGMd, &_ss18_DictionaryStorageCySS9Coherence7AnyCRDTVGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for PDFPageID(0);
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy8PaperKit9PDFPageIDVSiGMd, &_ss18_DictionaryStorageCy8PaperKit9PDFPageIDVSiGMR);
  v38 = v4;
  v9 = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    v34 = v2;
    v35 = v8;
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
    v17 = v9 + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(v8 + 48);
      v40 = *(v36 + 72);
      v24 = v23 + v40 * v22;
      if (v38)
      {
        _s8PaperKit19GraphableExpressionVWObTm_0(v24, v7, type metadata accessor for PDFPageID);
      }

      else
      {
        outlined init with copy of PDFPageID(v24, v7);
      }

      v39 = *(*(v8 + 56) + 8 * v22);
      Hasher.init(_seed:)();
      MEMORY[0x1DA6CE810](*v7);
      type metadata accessor for CRAsset();
      _s8PaperKit5ColorVAC9Coherence7CRValueAAWlTm_1(&lazy protocol witness table cache variable for type CRAsset and conformance CRAsset, MEMORY[0x1E6995408], MEMORY[0x1E6995418]);
      dispatch thunk of Hashable.hash(into:)();
      v25 = Hasher._finalize()();
      v26 = -1 << *(v10 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v8 = v35;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v8 = v35;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      _s8PaperKit19GraphableExpressionVWObTm_0(v7, *(v10 + 48) + v40 * v18, type metadata accessor for PDFPageID);
      *(*(v10 + 56) + 8 * v18) = v39;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v8 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_s9Coherence3RefVy8PaperKit20PDFAnnotationElementVGMd, &_s9Coherence3RefVy8PaperKit20PDFAnnotationElementVGMR, &_ss18_DictionaryStorageCy9Coherence9CRKeyPathVAC3RefVy8PaperKit20PDFAnnotationElementVGGMd, &_ss18_DictionaryStorageCy9Coherence9CRKeyPathVAC3RefVy8PaperKit20PDFAnnotationElementVGGMR);
}

{
  v3 = v2;
  v4 = a2;
  v40 = type metadata accessor for AnyCRValue();
  v5 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi9Coherence10AnyCRValueVGMd, &_ss18_DictionaryStorageCySi9Coherence10AnyCRValueVGMR);
  v38 = v4;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v35 = v3;
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
    v36 = (v5 + 16);
    v37 = v5;
    v16 = (v5 + 32);
    v17 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v38)
      {
        (*v16)(v39, v25, v40);
      }

      else
      {
        (*v36)(v39, v25, v40);
      }

      v26 = MEMORY[0x1DA6CE7F0](*(v9 + 40), v23);
      v27 = -1 << *(v9 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      (*v16)((*(v9 + 56) + v24 * v18), v39, v40);
      ++*(v9 + 16);
      v5 = v37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for CRKeyPath();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9Coherence9CRKeyPathV8PaperKit17FormPageAnalyticsCGMd, &_ss18_DictionaryStorageCy9Coherence9CRKeyPathV8PaperKit17FormPageAnalyticsCGMR);
  v40 = v4;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
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
    v37 = (v6 + 16);
    v38 = v9;
    v39 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      _s8PaperKit5ColorVAC9Coherence7CRValueAAWlTm_1(&lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, MEMORY[0x1E69954B8], MEMORY[0x1E69954C8]);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySo10UIDragItemCyycGMd, &_ss18_DictionaryStorageCySo10UIDragItemCyycGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for CRKeyPath();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9Coherence9CRKeyPathVSiGMd, &_ss18_DictionaryStorageCy9Coherence9CRKeyPathVSiGMR);
  v41 = v4;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v37 = v2;
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
    v38 = (v6 + 16);
    v39 = v6;
    v42 = (v6 + 32);
    v18 = v10 + 64;
    v40 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v43 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v41)
      {
        (*v42)(v44, v26, v5);
      }

      else
      {
        (*v38)(v44, v26, v5);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      _s8PaperKit5ColorVAC9Coherence7CRValueAAWlTm_1(&lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, MEMORY[0x1E69954B8], MEMORY[0x1E69954C8]);
      v28 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v29 = -1 << *(v11 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v18 + 8 * v31);
          if (v35 != -1)
          {
            v19 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v42)((*(v11 + 48) + v25 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v27;
      ++*(v11 + 16);
      v6 = v39;
      v9 = v40;
      v16 = v43;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v13, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v42 - v7;
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9Coherence3RefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGSo17CGAffineTransformVGMd, &_ss18_DictionaryStorageCy9Coherence3RefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGSo17CGAffineTransformVGMR);
  v46 = v4;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v51 = v8;
    v52 = v5;
    v43 = v2;
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
    v44 = (v6 + 16);
    v45 = v6;
    v47 = (v6 + 32);
    v18 = v10 + 64;
    v19 = v6;
    while (v16)
    {
      v23 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v26 = v23 | (v12 << 6);
      v27 = *(v9 + 48);
      v50 = *(v19 + 72);
      v28 = v27 + v50 * v26;
      if (v46)
      {
        (*v47)(v51, v28, v52);
      }

      else
      {
        (*v44)(v51, v28, v52);
      }

      v29 = *(v9 + 56) + 48 * v26;
      v31 = *(v29 + 32);
      v30 = *(v29 + 40);
      v32 = *v29;
      v48 = *(v29 + 16);
      v49 = v32;
      lazy protocol witness table accessor for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>();
      v33 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v34 = -1 << *(v11 + 32);
      v35 = v33 & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v18 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
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
            v20 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v20 = __clz(__rbit64((-1 << v35) & ~*(v18 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v47)((*(v11 + 48) + v50 * v20), v51, v52);
      v21 = *(v11 + 56) + 48 * v20;
      v22 = v48;
      *v21 = v49;
      *(v21 + 16) = v22;
      *(v21 + 32) = v31;
      *(v21 + 40) = v30;
      ++*(v11 + 16);
      v19 = v45;
    }

    v24 = v12;
    while (1)
    {
      v12 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v25 = v13[v12];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v16 = (v25 - 1) & v25;
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
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v34 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v34)
      {
        outlined init with take of Any(v24, v35);
      }

      else
      {
        outlined init with copy of Any(v24, v35);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      outlined init with take of Any(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_34:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo10UIDragItemCSo6CGRectV_12CoreGraphics7CGFloatVtGMd, &_ss18_DictionaryStorageCySo10UIDragItemCSo6CGRectV_12CoreGraphics7CGFloatVtGMR);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 40 * v20;
      v35 = *(v22 + 16);
      v36 = *v22;
      v23 = *(v22 + 32);
      if ((v4 & 1) == 0)
      {
        v24 = v21;
      }

      v25 = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 40 * v15;
      *v16 = v36;
      *(v16 + 16) = v35;
      *(v16 + 32) = v23;
      ++*(v7 + 16);
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
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo10UIDragItemC8PaperKit22StickerDropPreviewInfoVGMd, &_ss18_DictionaryStorageCySo10UIDragItemC8PaperKit22StickerDropPreviewInfoVGMR);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 40 * v20;
      v35 = *(v22 + 16);
      v36 = *v22;
      v23 = *(v22 + 32);
      if ((v4 & 1) == 0)
      {
        v24 = v21;
      }

      v25 = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 40 * v15;
      *v16 = v36;
      *(v16 + 16) = v35;
      *(v16 + 32) = v23;
      ++*(v7 + 16);
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
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySo10UIDragItemCySo21UITargetedDragPreviewCcGMd, &_ss18_DictionaryStorageCySo10UIDragItemCySo21UITargetedDragPreviewCcGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for CRAsset();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9Coherence7CRAssetV8PaperKit0eF11PDFDocumentCGMd, &_ss18_DictionaryStorageCy9Coherence7CRAssetV8PaperKit0eF11PDFDocumentCGMR);
  v40 = v4;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
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
    v37 = (v6 + 16);
    v38 = v9;
    v39 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      _s8PaperKit5ColorVAC9Coherence7CRValueAAWlTm_1(&lazy protocol witness table cache variable for type CRAsset and conformance CRAsset, MEMORY[0x1E6995408], MEMORY[0x1E6995418]);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo8NSObjectCyXlGMd, &_ss18_DictionaryStorageCySo8NSObjectCyXlGMR);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v2;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        swift_unknownObjectRetain();
      }

      v23 = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v4 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySo7UIColorCSo7UIImageCGMd, &_ss18_DictionaryStorageCySo7UIColorCSo7UIImageCGMR);
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR, &_ss18_DictionaryStorageCy9Coherence9CRKeyPathVAC15SharedTagged_10Vy8PaperKit0G13CanvasElementVGGMd, &_ss18_DictionaryStorageCy9Coherence9CRKeyPathVAC15SharedTagged_10Vy8PaperKit0G13CanvasElementVGGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
  v36 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v5;
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
    v14 = v6 + 64;
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
      if ((v36 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v26 = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v35;
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for CRAsset();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9Coherence7CRAssetVSiGMd, &_ss18_DictionaryStorageCy9Coherence7CRAssetVSiGMR);
  v41 = v4;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v37 = v2;
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
    v38 = (v6 + 16);
    v39 = v6;
    v42 = (v6 + 32);
    v18 = v10 + 64;
    v40 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v43 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v41)
      {
        (*v42)(v44, v26, v5);
      }

      else
      {
        (*v38)(v44, v26, v5);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      _s8PaperKit5ColorVAC9Coherence7CRValueAAWlTm_1(&lazy protocol witness table cache variable for type CRAsset and conformance CRAsset, MEMORY[0x1E6995408], MEMORY[0x1E6995418]);
      v28 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v29 = -1 << *(v11 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v18 + 8 * v31);
          if (v35 != -1)
          {
            v19 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v42)((*(v11 + 48) + v25 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v27;
      ++*(v11 + 16);
      v6 = v39;
      v9 = v40;
      v16 = v43;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v13, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for CRKeyPath();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9Coherence9CRKeyPathVSo13PDFAnnotationCGMd, &_ss18_DictionaryStorageCy9Coherence9CRKeyPathVSo13PDFAnnotationCGMR);
  v40 = v4;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
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
    v37 = (v6 + 16);
    v38 = v9;
    v39 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      _s8PaperKit5ColorVAC9Coherence7CRValueAAWlTm_1(&lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, MEMORY[0x1E69954B8], MEMORY[0x1E69954C8]);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo22PDFDocumentWriteOptionayXlGMd, &_ss18_DictionaryStorageCySo22PDFDocumentWriteOptionayXlGMR);
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v2;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v36 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v35 & 1) == 0)
      {
        v23 = v21;
        swift_unknownObjectRetain();
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v24 = Hasher._finalize()();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v34;
      v12 = v36;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        v36 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
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
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DataV8PaperKit10AsyncCacheC0H5State33_D762270EDF0902B2A411957938316D98LLOyAESo10CGImageRefa_GGMd, &_ss18_DictionaryStorageCy10Foundation4DataV8PaperKit10AsyncCacheC0H5State33_D762270EDF0902B2A411957938316D98LLOyAESo10CGImageRefa_GGMR);
  v37 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(*(v5 + 48) + 16 * v21);
      v23 = *(v5 + 56) + 24 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      v38 = v22;
      if ((v37 & 1) == 0)
      {
        outlined copy of Data._Representation(v22, *(&v22 + 1));
        outlined copy of AsyncCache<Data, CGImageRef>.CacheState(v24, v25, v26);
      }

      Hasher.init(_seed:)();
      Data.hash(into:)();
      v27 = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v16 = v38;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v16 = v38;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v16;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v24;
      *(v17 + 8) = v25;
      *(v17 + 16) = v26;
      ++*(v7 + 16);
      v5 = v36;
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
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, MEMORY[0x1E69783C8], &_ss18_DictionaryStorageCy10Foundation4UUIDV9PencilKit8PKStrokeVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV9PencilKit8PKStrokeVGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DataVSSGMd, &_ss18_DictionaryStorageCy10Foundation4DataVSSGMR);
  v36 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = *(*(v5 + 48) + v22);
      v24 = (*(v5 + 56) + v22);
      v25 = *v24;
      v26 = v24[1];
      v37 = v23;
      if ((v36 & 1) == 0)
      {
        outlined copy of Data._Representation(v23, *(&v23 + 1));
      }

      Hasher.init(_seed:)();
      Data.hash(into:)();
      v27 = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v16 = v37;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v16 = v37;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v17 = 16 * v15;
      *(*(v7 + 48) + v17) = v16;
      v18 = (*(v7 + 56) + v17);
      *v18 = v25;
      v18[1] = v26;
      ++*(v7 + 16);
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy8PaperKit0cD7PDFPageCAC15PageOverlayView_pGMd, &_ss18_DictionaryStorageCy8PaperKit0cD7PDFPageCAC15PageOverlayView_pGMR);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v2;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v33 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
        v21 = v20;
        v22 = v33;
      }

      v23 = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v33;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySo13PDFAnnotationC8PaperKit20AnyCanvasElementViewCGMd, &_ss18_DictionaryStorageCySo13PDFAnnotationC8PaperKit20AnyCanvasElementViewCGMR);
}

{
  v3 = v2;
  v4 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo10CGImageRefaSgs5NeverOGMd, &_sScCySo10CGImageRefaSgs5NeverOGMR);
  v5 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v41 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVScCySo10CGImageRefaSgs5NeverOGGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVScCySo10CGImageRefaSgs5NeverOGGMR);
  v48 = v4;
  v11 = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = v11;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v44 = (v14 + 16);
    v45 = v14;
    v42 = v2;
    v43 = v5 + 16;
    v46 = v10;
    v47 = v5;
    v49 = (v5 + 32);
    v50 = (v14 + 32);
    v20 = v11 + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v51 = *(v21 + 72);
      v28 = v27 + v51 * v26;
      if (v48)
      {
        (*v50)(v54, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v47 + 72);
        (*(v47 + 32))(v52, v29 + v30 * v26, v53);
      }

      else
      {
        (*v44)(v54, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v47 + 72);
        (*(v47 + 16))(v52, v31 + v30 * v26, v53);
      }

      _s8PaperKit5ColorVAC9Coherence7CRValueAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v33 = -1 << *(v12 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v20 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v20 + 8 * v35);
          if (v39 != -1)
          {
            v22 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v34) & ~*(v20 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v50)((*(v12 + 48) + v51 * v22), v54, v7);
      (*v49)(*(v12 + 56) + v30 * v22, v52, v53);
      ++*(v12 + 16);
      v21 = v45;
      v10 = v46;
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

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_34;
    }

    v40 = 1 << *(v10 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v15, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v40;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV8PaperKit28CanvasCollaborationStateViewC0H6CursorVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV8PaperKit28CanvasCollaborationStateViewC0H6CursorVGMR);
  v47 = v4;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v50 = v8;
    v51 = v5;
    v43 = v2;
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
    v44 = (v6 + 16);
    v45 = v6;
    v48 = (v6 + 32);
    v18 = v10 + 64;
    v46 = v9;
    while (v16)
    {
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v25 = v22 | (v12 << 6);
      v26 = *(v9 + 48);
      v49 = *(v6 + 72);
      v27 = v26 + v49 * v25;
      if (v47)
      {
        (*v48)(v50, v27, v51);
        v28 = (*(v9 + 56) + 32 * v25);
        v29 = v28[1];
        v52 = *v28;
        v53 = v29;
      }

      else
      {
        (*v44)(v50, v27, v51);
        v30 = (*(v9 + 56) + 32 * v25);
        v31 = v30[1];
        v52 = *v30;
        v53 = v31;

        v32 = *(&v52 + 1);
      }

      _s8PaperKit5ColorVAC9Coherence7CRValueAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v33 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v34 = -1 << *(v11 + 32);
      v35 = v33 & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v18 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v6 = v45;
        v9 = v46;
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
        return;
      }

      v19 = __clz(__rbit64((-1 << v35) & ~*(v18 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v6 = v45;
      v9 = v46;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v48)((*(v11 + 48) + v49 * v19), v50, v51);
      v20 = (*(v11 + 56) + 32 * v19);
      v21 = v53;
      *v20 = v52;
      v20[1] = v21;
      ++*(v11 + 16);
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v16 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
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
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSay8PaperKit20LoupeRenderDebouncerC0H5StateVGGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSay8PaperKit20LoupeRenderDebouncerC0H5StateVGGMR);
  v40 = v4;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
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
    v37 = (v6 + 16);
    v38 = v9;
    v39 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      _s8PaperKit5ColorVAC9Coherence7CRValueAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, MEMORY[0x1E6969530], &_ss18_DictionaryStorageCy10Foundation4UUIDVAC4DateVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVAC4DateVGMR);
}

void specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v44 = v8;
  v14 = static _DictionaryStorage.resize(original:capacity:move:)();
  v15 = v14;
  if (*(v13 + 16))
  {
    v48 = v12;
    v40 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v41 = (v10 + 16);
    v42 = v13;
    v43 = v10;
    v45 = (v10 + 32);
    v22 = v14 + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v47 = *(v43 + 72);
      v29 = v28 + v47 * v27;
      if (v44)
      {
        (*v45)(v48, v29, v9);
        v46 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v41)(v48, v29, v9);
        v46 = *(*(v13 + 56) + 8 * v27);
      }

      _s8PaperKit5ColorVAC9Coherence7CRValueAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v30 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v31 = -1 << *(v15 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v22 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v22 + 8 * v33);
          if (v37 != -1)
          {
            v23 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v23 = __clz(__rbit64((-1 << v32) & ~*(v22 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      (*v45)((*(v15 + 48) + v47 * v23), v48, v9);
      *(*(v15 + 56) + 8 * v23) = v46;
      ++*(v15 + 16);
      v13 = v42;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v7 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v13 + 32);
    v7 = v40;
    if (v38 >= 64)
    {
      bzero(v17, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v38;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
}

{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v33 = v4;
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
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v34 = *(*(v7 + 56) + 16 * v21);
      if ((v6 & 1) == 0)
      {
        v23 = v22;
      }

      v24 = NSObject._rawHashValue(seed:)(*(v9 + 40));
      v25 = -1 << *(v9 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 16 * v17) = v34;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v6)
    {
      v32 = 1 << *(v7 + 32);
      if (v32 >= 64)
      {
        bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v11 = -1 << v32;
      }

      *(v7 + 16) = 0;
    }

    v5 = v33;
  }

  else
  {
  }

  *v5 = v9;
}

{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v35 = v4;
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
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
        v24 = v22;
        v25 = v23;
      }

      v26 = NSObject._rawHashValue(seed:)(*(v9 + 40));
      v27 = -1 << *(v9 + 32);
      v28 = v26 & ~v27;
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
        return;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v6)
    {
      v34 = 1 << *(v7 + 32);
      if (v34 >= 64)
      {
        bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v11 = -1 << v34;
      }

      *(v7 + 16) = 0;
    }

    v5 = v35;
  }

  else
  {
  }

  *v5 = v9;
}

void specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v9 = a2;
  v51 = a3(0);
  v10 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v43 - v11;
  v12 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v48 = v9;
  v13 = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = v13;
  if (*(v12 + 16))
  {
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v44 = v5;
    v45 = (v10 + 16);
    v46 = v12;
    v47 = v10;
    v49 = (v10 + 32);
    v21 = v13 + 64;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v27 = v24 | (v15 << 6);
      v28 = *(v12 + 56);
      v29 = (*(v12 + 48) + 16 * v27);
      v31 = *v29;
      v30 = v29[1];
      v32 = *(v47 + 72);
      v33 = v28 + v32 * v27;
      if (v48)
      {
        (*v49)(v50, v33, v51);
      }

      else
      {
        (*v45)(v50, v33, v51);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v34 = Hasher._finalize()();
      v35 = -1 << *(v14 + 32);
      v36 = v34 & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v21 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v21 + 8 * v37);
          if (v41 != -1)
          {
            v22 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v36) & ~*(v21 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = (*(v14 + 48) + 16 * v22);
      *v23 = v31;
      v23[1] = v30;
      (*v49)((*(v14 + 56) + v32 * v22), v50, v51);
      ++*(v14 + 16);
      v12 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v8 = v44;
      goto LABEL_34;
    }

    v42 = 1 << *(v12 + 32);
    v8 = v44;
    if (v42 >= 64)
    {
      bzero(v16, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v42;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v8 = v14;
}

{
  v8 = v5;
  v9 = a2;
  v57 = a3(0);
  v10 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v45 - v11;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v58 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v52 = v9;
  v16 = static _DictionaryStorage.resize(original:capacity:move:)();
  v17 = v16;
  if (*(v15 + 16))
  {
    v18 = 0;
    v19 = (v15 + 64);
    v20 = 1 << *(v15 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v13;
    v23 = v21 & *(v15 + 64);
    v24 = (v20 + 63) >> 6;
    v48 = (v22 + 16);
    v49 = v22;
    v46 = v5;
    v47 = v10 + 16;
    v50 = v15;
    v51 = v10;
    v53 = (v10 + 32);
    v54 = (v22 + 32);
    v25 = v16 + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_15:
      v30 = v27 | (v18 << 6);
      v31 = *(v15 + 48);
      v55 = *(v22 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v12);
        v33 = *(v15 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v12);
        v35 = *(v15 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      _s8PaperKit5ColorVAC9Coherence7CRValueAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v36 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v37 = -1 << *(v17 + 32);
      v38 = v36 & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v25 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v25 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v25 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v17 + 48) + v55 * v26), v58, v12);
      (*v53)(*(v17 + 56) + v34 * v26, v56, v57);
      ++*(v17 + 16);
      v22 = v49;
      v15 = v50;
    }

    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v18 >= v24)
      {
        break;
      }

      v29 = v19[v18];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_15;
      }
    }

    if ((v52 & 1) == 0)
    {

      v8 = v46;
      goto LABEL_34;
    }

    v44 = 1 << *(v15 + 32);
    v8 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v15 + 16) = 0;
  }

LABEL_34:
  *v8 = v17;
}

void specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v10 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v11 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v46 - v12;
  v13 = type metadata accessor for CRKeyPath();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v59 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v53 = v10;
  v17 = static _DictionaryStorage.resize(original:capacity:move:)();
  v18 = v17;
  if (*(v16 + 16))
  {
    v19 = 0;
    v20 = (v16 + 64);
    v21 = 1 << *(v16 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v14;
    v24 = v22 & *(v16 + 64);
    v25 = (v21 + 63) >> 6;
    v49 = (v23 + 16);
    v50 = v23;
    v47 = v6;
    v48 = v11 + 16;
    v51 = v16;
    v52 = v11;
    v54 = (v11 + 32);
    v55 = (v23 + 32);
    v26 = v17 + 64;
    while (v24)
    {
      v28 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_15:
      v31 = v28 | (v19 << 6);
      v32 = *(v16 + 48);
      v56 = *(v23 + 72);
      v33 = v32 + v56 * v31;
      if (v53)
      {
        (*v55)(v59, v33, v13);
        v34 = *(v16 + 56);
        v35 = *(v52 + 72);
        (*(v52 + 32))(v57, v34 + v35 * v31, v58);
      }

      else
      {
        (*v49)(v59, v33, v13);
        v36 = *(v16 + 56);
        v35 = *(v52 + 72);
        (*(v52 + 16))(v57, v36 + v35 * v31, v58);
      }

      _s8PaperKit5ColorVAC9Coherence7CRValueAAWlTm_1(&lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, MEMORY[0x1E69954B8], MEMORY[0x1E69954C8]);
      v37 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v38 = -1 << *(v18 + 32);
      v39 = v37 & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v26 + 8 * (v39 >> 6))) == 0)
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
          v44 = *(v26 + 8 * v40);
          if (v44 != -1)
          {
            v27 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v27 = __clz(__rbit64((-1 << v39) & ~*(v26 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v26 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      (*v55)((*(v18 + 48) + v56 * v27), v59, v13);
      (*v54)(*(v18 + 56) + v35 * v27, v57, v58);
      ++*(v18 + 16);
      v23 = v50;
      v16 = v51;
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v19 >= v25)
      {
        break;
      }

      v30 = v20[v19];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v24 = (v30 - 1) & v30;
        goto LABEL_15;
      }
    }

    if ((v53 & 1) == 0)
    {

      v9 = v47;
      goto LABEL_34;
    }

    v45 = 1 << *(v16 + 32);
    v9 = v47;
    if (v45 >= 64)
    {
      bzero(v20, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v45;
    }

    *(v16 + 16) = 0;
  }

LABEL_34:
  *v9 = v18;
}

void specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v35 = type metadata accessor for UUID();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSSGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSSGMR);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
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
    v31 = v37 + 32;
    v32 = v37 + 16;
    v33 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v37;
        v20 = *(v37 + 72) * v18;
        v21 = v34;
        v22 = v35;
        (*(v37 + 16))(v34, *(v3 + 48) + v20, v35);
        v23 = 16 * v18;
        v24 = (*(v3 + 56) + 16 * v18);
        v25 = *v24;
        v26 = v24[1];
        v27 = v36;
        (*(v19 + 32))(*(v36 + 48) + v20, v21, v22);
        v28 = (*(v27 + 56) + v23);
        *v28 = v25;
        v28[1] = v26;
        v3 = v33;

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

        v1 = v29;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v30 + 8 * v9);
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
}

{
  specialized _NativeDictionary.copy()(MEMORY[0x1E69695A8], &_ss18_DictionaryStorageCySS10Foundation4UUIDVGMd, &_ss18_DictionaryStorageCySS10Foundation4UUIDVGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy8PaperKit17DrawingIdentifier33_8D2F688A48D6891537C9DABEFCA94965LLVAC27CalculateDocumentControllerCGMd, &_ss18_DictionaryStorageCy8PaperKit17DrawingIdentifier33_8D2F688A48D6891537C9DABEFCA94965LLVAC27CalculateDocumentControllerCGMR);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        v21 = v19;
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
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v42 = v2;
  v43 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v41 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLVGMR);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v35 = v1;
    v36 = v5 + 64;
    if (v7 != v5 || v8 >= &v9[8 * v10])
    {
      memmove(v8, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v44 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v37 = v43 + 32;
    v38 = v43 + 16;
    v39 = v16;
    v40 = v5;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v46 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v42;
        v22 = v43;
        v23 = *(v43 + 72) * v20;
        v24 = v41;
        (*(v43 + 16))(v41, *(v5 + 48) + v23, v42);
        v25 = *(v5 + 56);
        v26 = 40 * v20;
        v27 = v25 + 40 * v20;
        v28 = *v27;
        v29 = *(v27 + 8);
        v30 = *(v27 + 16);
        v31 = *(v27 + 32);
        v45 = *(v27 + 24);
        v32 = v44;
        (*(v22 + 32))(*(v44 + 48) + v23, v24, v21);
        v33 = (*(v32 + 56) + v26);
        v5 = v40;
        *v33 = v28;
        v33[1] = v29;
        v33[2] = v30;
        v33[3] = v45;
        v33[4] = v31;
        v34 = v28;

        v16 = v39;
        v15 = v46;
      }

      while (v46);
    }

    v18 = v11;
    v7 = v44;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v35;
        goto LABEL_18;
      }

      v19 = *(v36 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v46 = (v19 - 1) & v19;
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
}

{
  v1 = v0;
  v29 = type metadata accessor for UUID();
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVGMR);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    v6 = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v7 + 8 * v8)
    {
      memmove(v6, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v26 = v31 + 32;
    v27 = v31 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v32 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v31;
        v20 = *(v31 + 72) * v18;
        v21 = v28;
        v22 = v29;
        (*(v31 + 16))(v28, *(v3 + 48) + v20, v29);
        v18 *= 8;
        outlined init with copy of WeakCalculateExpression(*(v3 + 56) + v18, v33);
        v23 = v30;
        (*(v19 + 32))(*(v30 + 48) + v20, v21, v22);
        outlined init with take of WeakCalculateExpression(v33, *(v23 + 56) + v18);
        v13 = v32;
      }

      while (v32);
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

        v1 = v25;
        v5 = v30;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v32 = (v17 - 1) & v17;
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
}

{
  specialized _NativeDictionary.copy()(MEMORY[0x1E69695A8], &_ss18_DictionaryStorageCy10Foundation4UUIDVSo9PKDrawingCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSo9PKDrawingCGMR);
}

{
  specialized _NativeDictionary.copy()(MEMORY[0x1E69695A8], &_ss18_DictionaryStorageCy10Foundation4UUIDVSo8NSNumberCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSo8NSNumberCGMR);
}

{
  v1 = v0;
  v29 = type metadata accessor for UUID();
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV8PaperKit17CalculateMathItem_pGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV8PaperKit17CalculateMathItem_pGMR);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    v6 = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v7 + 8 * v8)
    {
      memmove(v6, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v26 = v31 + 32;
    v27 = v31 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v32 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v31;
        v20 = *(v31 + 72) * v18;
        v21 = v28;
        v22 = v29;
        (*(v31 + 16))(v28, *(v3 + 48) + v20, v29);
        v18 *= 40;
        outlined init with copy of FindResult(*(v3 + 56) + v18, v33);
        v23 = v30;
        (*(v19 + 32))(*(v30 + 48) + v20, v21, v22);
        outlined init with take of CalculateMathItem(v33, *(v23 + 56) + v18);
        v13 = v32;
      }

      while (v32);
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

        v1 = v25;
        v5 = v30;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v32 = (v17 - 1) & v17;
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
}

{
  specialized _NativeDictionary.copy()(MEMORY[0x1E69954B8], &_ss18_DictionaryStorageCy9Coherence9CRKeyPathV8PaperKit20AnyCanvasElementViewCGMd, &_ss18_DictionaryStorageCy9Coherence9CRKeyPathV8PaperKit20AnyCanvasElementViewCGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMd, &_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMR);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v20);
        *(*(v4 + 48) + 8 * v17) = v18;
        outlined init with take of Any(v20, (*(v4 + 56) + 32 * v17));
        v19 = v18;
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
  specialized _NativeDictionary.copy()(MEMORY[0x1E69695A8], &_ss18_DictionaryStorageCy10Foundation4UUIDV11CalculateUI0E15GraphExpressionCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV11CalculateUI0E15GraphExpressionCGMR);
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefaypGMd, &_ss18_DictionaryStorageCySo11CFStringRefaypGMR);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v20);
        *(*(v4 + 48) + 8 * v17) = v18;
        outlined init with take of Any(v20, (*(v4 + 56) + 32 * v17));
        v19 = v18;
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
  v34 = type metadata accessor for CRKeyPath();
  v38 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v30 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9Coherence9CRKeyPathVAEGMd, &_ss18_DictionaryStorageCy9Coherence9CRKeyPathVAEGMR);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || v8 >= &v9[8 * v10])
    {
      memmove(v8, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v37 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v38 + 32;
    v33 = v38 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v20 = v38;
        v21 = *(v38 + 72) * (v17 | (v11 << 6));
        v22 = *(v38 + 16);
        v24 = v34;
        v23 = v35;
        v22(v35, *(v5 + 48) + v21, v34);
        v25 = v36;
        v22(v36, *(v5 + 56) + v21, v24);
        v26 = v5;
        v27 = v37;
        v28 = *(v20 + 32);
        v28(*(v37 + 48) + v21, v23, v24);
        v29 = *(v27 + 56);
        v5 = v26;
        v28(v29 + v21, v25, v24);
        v15 = v39;
      }

      while (v39);
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

        v1 = v30;
        v7 = v37;
        goto LABEL_18;
      }

      v19 = *(v31 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v39 = (v19 - 1) & v19;
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
}

{
  specialized _NativeDictionary.copy()(MEMORY[0x1E69953F0], &_ss18_DictionaryStorageCySS9Coherence7AnyCRDTVGMd, &_ss18_DictionaryStorageCySS9Coherence7AnyCRDTVGMR);
}

{
  v1 = v0;
  v2 = type metadata accessor for PDFPageID(0);
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy8PaperKit9PDFPageIDVSiGMd, &_ss18_DictionaryStorageCy8PaperKit9PDFPageIDVSiGMR);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    v8 = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v9 + 8 * v10)
    {
      memmove(v8, (v5 + 64), 8 * v10);
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
        v21 = *(v24 + 72) * v20;
        outlined init with copy of PDFPageID(*(v5 + 48) + v21, v4);
        v22 = *(*(v5 + 56) + 8 * v20);
        _s8PaperKit19GraphableExpressionVWObTm_0(v4, *(v7 + 48) + v21, type metadata accessor for PDFPageID);
        *(*(v7 + 56) + 8 * v20) = v22;
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
}

{
  specialized _NativeDictionary.copy()(&_s9Coherence3RefVy8PaperKit20PDFAnnotationElementVGMd, &_s9Coherence3RefVy8PaperKit20PDFAnnotationElementVGMR, &_ss18_DictionaryStorageCy9Coherence9CRKeyPathVAC3RefVy8PaperKit20PDFAnnotationElementVGGMd, &_ss18_DictionaryStorageCy9Coherence9CRKeyPathVAC3RefVy8PaperKit20PDFAnnotationElementVGGMR);
}

{
  v1 = v0;
  v29 = type metadata accessor for AnyCRValue();
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi9Coherence10AnyCRValueVGMd, &_ss18_DictionaryStorageCySi9Coherence10AnyCRValueVGMR);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    v26 = v31 + 32;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
      (*(v19 + 32))(*(v23 + 56) + v20, v22, v21);
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
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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
}

{
  specialized _NativeDictionary.copy()(MEMORY[0x1E69954B8], &_ss18_DictionaryStorageCy9Coherence9CRKeyPathV8PaperKit17FormPageAnalyticsCGMd, &_ss18_DictionaryStorageCy9Coherence9CRKeyPathV8PaperKit17FormPageAnalyticsCGMR);
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySo10UIDragItemCyycGMd, &_ss18_DictionaryStorageCySo10UIDragItemCyycGMR);
}

{
  specialized _NativeDictionary.copy()(MEMORY[0x1E69954B8], &_ss18_DictionaryStorageCy9Coherence9CRKeyPathVSiGMd, &_ss18_DictionaryStorageCy9Coherence9CRKeyPathVSiGMR);
}

{
  v1 = v0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  v39 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v32 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9Coherence3RefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGSo17CGAffineTransformVGMd, &_ss18_DictionaryStorageCy9Coherence3RefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGSo17CGAffineTransformVGMR);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v33 = v1;
    v6 = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v7 + 8 * v8)
    {
      memmove(v6, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v38 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v42 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v39;
        v20 = *(v39 + 72) * v18;
        v21 = v36;
        v22 = v37;
        (*(v39 + 16))(v36, *(v3 + 48) + v20, v37);
        v18 *= 48;
        v23 = *(v3 + 56) + v18;
        v24 = *(v23 + 32);
        v25 = *(v23 + 40);
        v26 = v38;
        v27 = *(v38 + 48);
        v28 = *(v19 + 32);
        v29 = *v23;
        v40 = *(v23 + 16);
        v41 = v29;
        v28(v27 + v20, v21, v22);
        v30 = *(v26 + 56) + v18;
        v31 = v40;
        *v30 = v41;
        *(v30 + 16) = v31;
        *(v30 + 32) = v24;
        *(v30 + 40) = v25;
        v13 = v42;
      }

      while (v42);
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

        v1 = v33;
        v5 = v38;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v42 = (v17 - 1) & v17;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo10UIDragItemCSo6CGRectV_12CoreGraphics7CGFloatVtGMd, &_ss18_DictionaryStorageCySo10UIDragItemCSo6CGRectV_12CoreGraphics7CGFloatVtGMR);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(v2 + 56) + 40 * v17;
        v20 = *(v19 + 32);
        v21 = *v19;
        v22 = *(v19 + 16);
        *(*(v4 + 48) + 8 * v17) = v18;
        v23 = *(v4 + 56) + 40 * v17;
        *v23 = v21;
        *(v23 + 16) = v22;
        *(v23 + 32) = v20;
        v24 = v18;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo10UIDragItemC8PaperKit22StickerDropPreviewInfoVGMd, &_ss18_DictionaryStorageCySo10UIDragItemC8PaperKit22StickerDropPreviewInfoVGMR);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(v2 + 56) + 40 * v17;
        v20 = *(v19 + 32);
        v21 = *v19;
        v22 = *(v19 + 16);
        *(*(v4 + 48) + 8 * v17) = v18;
        v23 = *(v4 + 56) + 40 * v17;
        *v23 = v21;
        *(v23 + 16) = v22;
        *(v23 + 32) = v20;
        v24 = v18;
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
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySo10UIDragItemCySo21UITargetedDragPreviewCcGMd, &_ss18_DictionaryStorageCySo10UIDragItemCySo21UITargetedDragPreviewCcGMR);
}

{
  specialized _NativeDictionary.copy()(MEMORY[0x1E6995408], &_ss18_DictionaryStorageCy9Coherence7CRAssetV8PaperKit0eF11PDFDocumentCGMd, &_ss18_DictionaryStorageCy9Coherence7CRAssetV8PaperKit0eF11PDFDocumentCGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo8NSObjectCyXlGMd, &_ss18_DictionaryStorageCySo8NSObjectCyXlGMR);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        swift_unknownObjectRetain();
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
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySo7UIColorCSo7UIImageCGMd, &_ss18_DictionaryStorageCySo7UIColorCSo7UIImageCGMR);
}

{
  specialized _NativeDictionary.copy()(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR, &_ss18_DictionaryStorageCy9Coherence9CRKeyPathVAC15SharedTagged_10Vy8PaperKit0G13CanvasElementVGGMd, &_ss18_DictionaryStorageCy9Coherence9CRKeyPathVAC15SharedTagged_10Vy8PaperKit0G13CanvasElementVGGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
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

        v22 = v20;
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
  specialized _NativeDictionary.copy()(MEMORY[0x1E6995408], &_ss18_DictionaryStorageCy9Coherence7CRAssetVSiGMd, &_ss18_DictionaryStorageCy9Coherence7CRAssetVSiGMR);
}

{
  specialized _NativeDictionary.copy()(MEMORY[0x1E69954B8], &_ss18_DictionaryStorageCy9Coherence9CRKeyPathVSo13PDFAnnotationCGMd, &_ss18_DictionaryStorageCy9Coherence9CRKeyPathVSo13PDFAnnotationCGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo22PDFDocumentWriteOptionayXlGMd, &_ss18_DictionaryStorageCySo22PDFDocumentWriteOptionayXlGMR);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        swift_unknownObjectRetain();
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DataV8PaperKit10AsyncCacheC0H5State33_D762270EDF0902B2A411957938316D98LLOyAESo10CGImageRefa_GGMd, &_ss18_DictionaryStorageCy10Foundation4DataV8PaperKit10AsyncCacheC0H5State33_D762270EDF0902B2A411957938316D98LLOyAESo10CGImageRefa_GGMR);
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
        v18 = 16 * v17;
        v17 *= 24;
        v19 = *(v2 + 56) + v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = *(v19 + 16);
        v23 = *(*(v2 + 48) + v18);
        *(*(v4 + 48) + v18) = v23;
        v24 = *(v4 + 56) + v17;
        *v24 = v20;
        *(v24 + 8) = v21;
        *(v24 + 16) = v22;
        outlined copy of Data._Representation(v23, *(&v23 + 1));
        outlined copy of AsyncCache<Data, CGImageRef>.CacheState(v20, v21, v22);
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
  specialized _NativeDictionary.copy()(MEMORY[0x1E69783C8], &_ss18_DictionaryStorageCy10Foundation4UUIDV9PencilKit8PKStrokeVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV9PencilKit8PKStrokeVGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DataVSSGMd, &_ss18_DictionaryStorageCy10Foundation4DataVSSGMR);
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
        v18 = (*(v2 + 56) + v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v21;
        v22 = (*(v4 + 56) + v17);
        *v22 = v19;
        v22[1] = v20;
        outlined copy of Data._Representation(v21, *(&v21 + 1));
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy8PaperKit0cD7PDFPageCAC15PageOverlayView_pGMd, &_ss18_DictionaryStorageCy8PaperKit0cD7PDFPageCAC15PageOverlayView_pGMR);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v21 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 16 * v17) = v21;
        v19 = v18;
        v20 = v21;
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
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySo13PDFAnnotationC8PaperKit20AnyCanvasElementViewCGMd, &_ss18_DictionaryStorageCySo13PDFAnnotationC8PaperKit20AnyCanvasElementViewCGMR);
}

{
  v1 = v0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo10CGImageRefaSgs5NeverOGMd, &_sScCySo10CGImageRefaSgs5NeverOGMR);
  v44 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v30 - v2;
  v39 = type metadata accessor for UUID();
  v43 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVScCySo10CGImageRefaSgs5NeverOGGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVScCySo10CGImageRefaSgs5NeverOGGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || v7 >= &v8[8 * v9])
    {
      memmove(v7, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
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
}

{
  v1 = v0;
  v33 = type metadata accessor for UUID();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV8PaperKit28CanvasCollaborationStateViewC0H6CursorVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV8PaperKit28CanvasCollaborationStateViewC0H6CursorVGMR);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v31[0] = v1;
    v6 = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v7 + 8 * v8)
    {
      memmove(v6, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v31[1] = v35 + 32;
    v31[2] = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v21 = v32;
        v22 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v18 *= 32;
        v23 = (*(v3 + 56) + v18);
        v24 = v34;
        v25 = *(v34 + 48);
        v26 = *(v19 + 32);
        v27 = v23[1];
        v37 = *v23;
        v38 = v27;
        v26(v25 + v20, v21, v22);
        v28 = (*(v24 + 56) + v18);
        v29 = v38;
        *v28 = v37;
        v28[1] = v29;

        v30 = *(&v37 + 1);

        v13 = v36;
      }

      while (v36);
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

        v1 = v31[0];
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
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
}

{
  v1 = v0;
  v33 = type metadata accessor for UUID();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSay8PaperKit20LoupeRenderDebouncerC0H5StateVGGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSay8PaperKit20LoupeRenderDebouncerC0H5StateVGGMR);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
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

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
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
}

{
  specialized _NativeDictionary.copy()(MEMORY[0x1E6969530], &_ss18_DictionaryStorageCy10Foundation4UUIDVAC4DateVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVAC4DateVGMR);
}