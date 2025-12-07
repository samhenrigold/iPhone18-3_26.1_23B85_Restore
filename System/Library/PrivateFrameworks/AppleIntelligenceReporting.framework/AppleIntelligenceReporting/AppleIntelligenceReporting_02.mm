uint64_t specialized Dictionary.merging(_:uniquingKeysWith:)(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a1, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

void AppleIntelligenceError.userInfo.getter()
{
  OUTLINED_FUNCTION_26_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_29(v1);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8_2();
  dispatch thunk of CustomStringConvertible.description.getter();
  v3 = OUTLINED_FUNCTION_33_0();
  v4(v3);
  v5 = OUTLINED_FUNCTION_33_0();
  v6(v5);
  v7 = OUTLINED_FUNCTION_33_0();
  v8(v7);
  v9 = OUTLINED_FUNCTION_33_0();
  v10(v9);
  v11 = OUTLINED_FUNCTION_33_0();
  v12(v11);
  _s26AppleIntelligenceReporting0aB5ErrorPAAE15defaultUserInfo11description16underlyingErrors8category14retryAfterDate010additionalfG015requestFeedbackSDyS2SGSS_SayAaB_pGAA0abD8CategoryO10Foundation0N0VSgAKSbtFZAA07GeneralabD0C_Tt5B5();

  outlined destroy of AppleIntelligenceError?(v0, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_27_1();
}

uint64_t specialized AppleIntelligenceError.errorCode.getter()
{
  return *(v0 + 32);
}

{
  outlined init with copy of AppleIntelligenceReportingError(v0, v3);
  result = 4001;
  v2 = 4002;
  switch(v3[40])
  {
    case 1:
      v2 = 4003;
      goto LABEL_4;
    case 2:
      v2 = 4004;
      goto LABEL_4;
    case 3:
      return result;
    default:
LABEL_4:
      outlined destroy of AppleIntelligenceReportingError(v3);
      return v2;
  }
}

uint64_t AppleIntelligenceError.description.getter(uint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + 40))();
  v5 = v4;
  v6 = *(a2 + 48);
  v7 = OUTLINED_FUNCTION_26();
  v8 = *(v6(v7) + 16);

  if (!v8)
  {
    goto LABEL_4;
  }

  v16 = 14906;
  v17 = 0xE200000000000000;
  v9 = OUTLINED_FUNCTION_26();
  v10 = v6(v9);
  specialized Collection.first.getter(v10, v14);

  if (v15)
  {
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1C68E25F0](v12);

    __swift_destroy_boxed_opaque_existential_1(v14);
LABEL_4:
    v14[0] = v3;
    v14[1] = v5;

    v13 = OUTLINED_FUNCTION_26();
    MEMORY[0x1C68E25F0](v13);

    return v14[0];
  }

  __break(1u);
  return result;
}

id AppleIntelligenceError.toDetailedNSError.getter(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 80))();
  v7 = v6;
  v8 = dispatch thunk of CustomNSError.errorCode.getter();
  AppleIntelligenceError.userInfo.getter();
  v10 = v9;
  v11 = (*(a2 + 72))(a1, a2);
  v12 = specialized Dictionary.merging(_:uniquingKeysWith:)(v11, v10);
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v12);
  OUTLINED_FUNCTION_42_1();

  v13 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  return @nonobjc NSError.init(domain:code:userInfo:)(v5, v7, v8, v2);
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
    v2 = MEMORY[0x1E69E7CC8];
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
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v13 = *v11;
    v12 = v11[1];

    swift_dynamicCast();
    outlined init with take of Any(&v22, v24);
    outlined init with take of Any(v24, v25);
    outlined init with take of Any(v25, &v23);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
    v14 = result;
    if (v15)
    {
      v16 = (v2[6] + 16 * result);
      *v16 = v13;
      v16[1] = v12;

      v17 = (v2[7] + 32 * v14);
      __swift_destroy_boxed_opaque_existential_1(v17);
      result = outlined init with take of Any(&v23, v17);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v2[6] + 16 * result);
      *v18 = v13;
      v18[1] = v12;
      result = outlined init with take of Any(&v23, (v2[7] + 32 * result));
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      v2[2] = v21;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Sequence<>.max()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v9;
  v21 = *(a1 + 16);
  if (v21)
  {
    v20 = a2;
    v12 = *(v5 + 16);
    v13 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12(&v20 - v9, v13, v4, v10);
    v14 = (v5 + 32);
    for (i = 1; v21 != i; ++i)
    {
      (v12)(v7, v13 + *(v5 + 72) * i, v4);
      lazy protocol witness table accessor for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      v16 = dispatch thunk of static Comparable.< infix(_:_:)();
      v17 = *(v5 + 8);
      if (v16)
      {
        v17(v11, v4);
        (*v14)(v11, v7, v4);
      }

      else
      {
        v17(v7, v4);
      }
    }

    v18 = v20;
    (*v14)(v20, v11, v4);
    return __swift_storeEnumTagSinglePayload(v18, 0, 1, v4);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

BOOL _s26AppleIntelligenceReporting0aB5ErrorPAAE2eeoiySbx_xtFZAA07GeneralabD0C_Tt1g5(void *a1, void *a2)
{
  if (a1[2] == a2[2] && a1[3] == a2[3])
  {
    return a1[4] == a2[4];
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v5)
  {
    return a1[4] == a2[4];
  }

  return result;
}

void static AppleIntelligenceError.== infix(_:_:)()
{
  OUTLINED_FUNCTION_26_1();
  v1 = v0;
  v3 = v2;
  v4 = *(v0 + 80);
  v5 = v4(v2, v0);
  v7 = v6;
  if (v5 == v4(v3, v1) && v7 == v8)
  {
  }

  else
  {
    v10 = OUTLINED_FUNCTION_45_0(v5);

    if ((v10 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  dispatch thunk of CustomNSError.errorCode.getter();
  dispatch thunk of CustomNSError.errorCode.getter();
LABEL_9:
  OUTLINED_FUNCTION_27_1();
}

uint64_t AppleIntelligenceError.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 80))(a2, a3);
  String.hash(into:)();

  v3 = dispatch thunk of CustomNSError.errorCode.getter();
  return MEMORY[0x1C68E2B10](v3);
}

uint64_t specialized Sequence.forEach(_:)(uint64_t a1, uint64_t *a2)
{
  v40 = a2;
  v39 = type metadata accessor for AppleIntelligenceReportingGeneralError.UserInfoParameter();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_10_2();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v10 = v32 - v9;
  v11 = a1 + 64;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 64);
  v15 = (v12 + 63) >> 6;
  v32[2] = v8 + 8;
  v33 = (v8 + 16);
  v36 = v8;
  v37 = a1;
  v32[1] = v8 + 32;

  v17 = 0;
  v34 = a1 + 64;
  v35 = v6;
  if (v14)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
    }

    v14 = *(v11 + 8 * v18);
    ++v17;
    if (v14)
    {
      v17 = v18;
      do
      {
LABEL_8:
        v19 = *(*(v37 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v14)))) + 8);

        AppleIntelligenceReportingAsset.init()();

        AppleIntelligenceReportingAsset.assetIdentifier.setter();

        AppleIntelligenceReportingAsset.version.setter();
        (*v33)(v6, v10, v39);
        v20 = v40;
        v21 = *v40;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v20 = v21;
        v38 = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
          *v40 = v21;
        }

        v24 = v21[2];
        v23 = v21[3];
        if (v24 >= v23 >> 1)
        {
          v30 = OUTLINED_FUNCTION_25_1(v23);
          v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v30, v24 + 1, 1, v21);
          *v40 = v31;
        }

        v14 &= v14 - 1;
        v25 = v36;
        v26 = v39;
        (*(v36 + 8))(v10, v39);
        v27 = *v40;
        *(v27 + 16) = v24 + 1;
        v28 = v27 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v24;
        v29 = *(v25 + 32);
        v6 = v35;
        v29(v28, v35, v26);

        v11 = v34;
      }

      while (v14);
    }
  }

  __break(1u);
  return result;
}

uint64_t AppleIntelligenceError.deepestUnderlyingError.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 48);
  v7 = v6();
  specialized Collection.first.getter(v7, v12);

  v8 = v13;
  if (v13)
  {
    v9 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    AppleIntelligenceError.deepestUnderlyingError.getter(v8, v9, &v15);
    __swift_destroy_boxed_opaque_existential_1(v12);
    if (*(&v16 + 1))
    {
      return outlined init with take of any Source<Self.Stream == A>(&v15, a3);
    }
  }

  else
  {
    outlined destroy of AppleIntelligenceError?(v12, &_s26AppleIntelligenceReporting0aB5Error_pSgMd, &_s26AppleIntelligenceReporting0aB5Error_pSgMR);
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
  }

  v11 = (v6)(a1, a2);
  specialized Collection.first.getter(v11, a3);

  if (*(&v16 + 1))
  {
    return outlined destroy of AppleIntelligenceError?(&v15, &_s26AppleIntelligenceReporting0aB5Error_pSgMd, &_s26AppleIntelligenceReporting0aB5Error_pSgMR);
  }

  return result;
}

BOOL specialized Sequence<>.contains(_:)(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != (a1 & 1));
  return v4 != 0;
}

void GeneralAppleIntelligenceError.__allocating_init(from:)()
{
  OUTLINED_FUNCTION_26_1();
  v122 = v0;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_29(v3);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v103 - v5;
  v118 = type metadata accessor for AppleIntelligenceReportingGeneralError.UserInfoParameter();
  OUTLINED_FUNCTION_1();
  v115 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2();
  v116 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA21ReportingGeneralErrorVSgMd, "*6");
  v12 = OUTLINED_FUNCTION_29(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_10_2();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v103 - v17;
  type metadata accessor for AppleIntelligenceReportingGeneralError();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_10_2();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v103 - v26;
  v29 = v28;
  outlined init with copy of Date?(v2, v18, &_s27IntelligencePlatformLibrary05AppleA21ReportingGeneralErrorVSgMd, "*6");
  if (__swift_getEnumTagSinglePayload(v18, 1, v29) == 1)
  {
    outlined destroy of AppleIntelligenceError?(v2, &_s27IntelligencePlatformLibrary05AppleA21ReportingGeneralErrorVSgMd, "*6");
    outlined destroy of AppleIntelligenceError?(v18, &_s27IntelligencePlatformLibrary05AppleA21ReportingGeneralErrorVSgMd, "*6");
LABEL_12:
    OUTLINED_FUNCTION_27_1();
    return;
  }

  (*(v20 + 32))(v27, v18, v29);
  v30 = AppleIntelligenceReportingGeneralError.domain.getter();
  if (!v31)
  {
LABEL_11:
    outlined destroy of AppleIntelligenceError?(v2, &_s27IntelligencePlatformLibrary05AppleA21ReportingGeneralErrorVSgMd, "*6");
    (*(v20 + 8))(v27, v29);
    goto LABEL_12;
  }

  v109 = v30;
  v110 = v31;
  v32 = AppleIntelligenceReportingGeneralError.errorCode.getter();
  if ((v32 & 0x100000000) != 0)
  {

    goto LABEL_11;
  }

  v104 = v32;
  v33 = AppleIntelligenceReportingGeneralError.category.getter();
  v107 = v6;
  v108 = v2;
  if (v34)
  {
    AppleIntelligenceErrorCategory.init(rawValue:)(*&v33);
    if (v123 == 23)
    {
      v35 = 21;
    }

    else
    {
      v35 = v123;
    }

    v105 = v35;
  }

  else
  {
    v105 = 21;
  }

  v36 = AppleIntelligenceReportingGeneralError.internalUnderlyingErrors.getter();
  v123 = MEMORY[0x1E69E7CC0];
  v37 = *(v36 + 16);
  v114 = v29;
  v112 = v27;
  v106 = v20;
  if (v37)
  {
    v40 = *(v20 + 16);
    v38 = v20 + 16;
    v39 = v40;
    OUTLINED_FUNCTION_39_0();
    v43 = v41 + v42;
    v44 = *(v38 + 56);
    v120 = v41;
    v121 = v44;
    v113 = MEMORY[0x1E69E7CC0];
    do
    {
      v39(v24, v43, v29);
      v39(v15, v24, v29);
      __swift_storeEnumTagSinglePayload(v15, 0, 1, v29);
      GeneralAppleIntelligenceError.__allocating_init(from:)();
      v46 = v45;
      v47 = (*(v38 - 8))(v24, v29);
      if (v46)
      {
        MEMORY[0x1C68E2660](v47);
        v48 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v48 >> 1)
        {
          OUTLINED_FUNCTION_25_1(v48);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v113 = v123;
        v29 = v114;
      }

      v43 += v121;
      --v37;
    }

    while (v37);

    v27 = v112;
  }

  else
  {

    v113 = MEMORY[0x1E69E7CC0];
  }

  v49 = AppleIntelligenceReportingGeneralError.additionalUserInfo.getter();
  v50 = Dictionary.init(dictionaryLiteral:)();
  v51 = *(v49 + 16);
  v52 = v118;
  v54 = v115;
  v53 = v116;
  if (!v51)
  {
LABEL_40:

    v90 = AppleIntelligenceReportingGeneralError.descriptionWithoutUnderlying.getter();
    if (v91)
    {
      v92 = v90;
    }

    else
    {
      v92 = 0;
    }

    if (v91)
    {
      v93 = v91;
    }

    else
    {
      v93 = 0xE000000000000000;
    }

    v94 = AppleIntelligenceReportingGeneralError.description.getter();
    if (v95)
    {
      v96 = v94;
    }

    else
    {
      v96 = 0;
    }

    if (v95)
    {
      v97 = v95;
    }

    else
    {
      v97 = 0xE000000000000000;
    }

    v98 = v104;
    specialized _arrayForceCast<A, B>(_:)();
    v99 = v27;
    v101 = v100;

    v102 = v107;
    AppleIntelligenceReportingGeneralError.retryAfterDate.getter();
    LOBYTE(v123) = v105;
    swift_allocObject();
    GeneralAppleIntelligenceError.init(domain:rawCode:additionalUserInfo:descriptionWithoutUnderlying:description:underlyingErrors:retryAfterDate:category:)(v109, v110, v98, v50, v92, v93, v96, v97, v101, v102, &v123);
    outlined destroy of AppleIntelligenceError?(v108, &_s27IntelligencePlatformLibrary05AppleA21ReportingGeneralErrorVSgMd, "*6");
    (*(v106 + 8))(v99, v114);
    goto LABEL_12;
  }

  v55 = 0;
  OUTLINED_FUNCTION_39_0();
  v121 = v49 + v56;
  v119 = v54 + 8;
  v120 = v54 + 16;
  v111 = v51;
  while (v55 < *(v49 + 16))
  {
    v57 = (*(v54 + 16))(v53, v121 + *(v54 + 72) * v55, v52);
    v58 = MEMORY[0x1C68E18E0](v57);
    if (v59)
    {
      v60 = v58;
      v61 = v59;
      v62 = MEMORY[0x1C68E1900]();
      if (v63)
      {
        v64 = v63;
        v117 = v62;
        v65 = v49;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v123 = v50;
        v67 = specialized __RawDictionaryStorage.find<A>(_:)(v60, v61);
        v69 = v50[2];
        v70 = (v68 & 1) == 0;
        v71 = v69 + v70;
        if (__OFADD__(v69, v70))
        {
          goto LABEL_54;
        }

        v72 = v67;
        v73 = v68;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVyS2SGMd, "*6");
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v71))
        {
          v74 = specialized __RawDictionaryStorage.find<A>(_:)(v60, v61);
          v27 = v112;
          if ((v73 & 1) != (v75 & 1))
          {
            goto LABEL_56;
          }

          v72 = v74;
          if ((v73 & 1) == 0)
          {
LABEL_32:
            v50 = v123;
            *(v123 + 8 * (v72 >> 6) + 64) |= 1 << v72;
            v76 = (v50[6] + 16 * v72);
            *v76 = v60;
            v76[1] = v61;
            v77 = (v50[7] + 16 * v72);
            v53 = v116;
            *v77 = v117;
            v77[1] = v64;
            v52 = v118;
            v78 = OUTLINED_FUNCTION_31_1();
            v79(v78);
            v80 = v50[2];
            v81 = __OFADD__(v80, 1);
            v82 = v80 + 1;
            if (v81)
            {
              goto LABEL_55;
            }

            v50[2] = v82;
            goto LABEL_38;
          }
        }

        else
        {
          v27 = v112;
          if ((v73 & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        v50 = v123;
        v87 = (*(v123 + 56) + 16 * v72);
        *v87 = v117;
        v87[1] = v64;

        v52 = v118;
        v53 = v116;
        v88 = OUTLINED_FUNCTION_31_1();
        v89(v88);
LABEL_38:
        v54 = v115;
        v49 = v65;
        v51 = v111;
        goto LABEL_39;
      }

      v52 = v118;
      v85 = OUTLINED_FUNCTION_31_1();
      v86(v85);
    }

    else
    {
      v83 = OUTLINED_FUNCTION_31_1();
      v84(v83);
    }

LABEL_39:
    if (v51 == ++v55)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void specialized _arrayForceCast<A, B>(_:)()
{
  OUTLINED_FUNCTION_26_1();
  v1 = v0;
  if (v0 >> 62)
  {
    if (v0 >= 0)
    {
      v0 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v2 = MEMORY[0x1C68E2860](v0);
  }

  else
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    goto LABEL_14;
  }

  v20 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = 0;
    v4 = v20;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1C68E2790](v3, v1);
      }

      else
      {
        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = type metadata accessor for GeneralAppleIntelligenceError(0);
      v18 = v6;
      OUTLINED_FUNCTION_0_3();
      v8 = lazy protocol witness table accessor for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError(&lazy protocol witness table cache variable for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError, v7, &protocol conformance descriptor for GeneralAppleIntelligenceError);
      v19 = v8;
      v20 = v4;
      v17[0] = v5;
      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v6 = v18;
        v11 = v19;
      }

      else
      {
        v11 = v8;
      }

      ++v3;
      __swift_mutable_project_boxed_opaque_existential_1(v17, v6);
      OUTLINED_FUNCTION_2_5();
      MEMORY[0x1EEE9AC00](v12);
      OUTLINED_FUNCTION_2();
      v15 = v14 - v13;
      (*(v16 + 16))(v14 - v13);
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v10, v15, &v20, v6, v11);
      __swift_destroy_boxed_opaque_existential_1(v17);
      v4 = v20;
    }

    while (v2 != v3);
LABEL_14:
    OUTLINED_FUNCTION_27_1();
    return;
  }

  __break(1u);
}

uint64_t GeneralAppleIntelligenceError.descriptiveComponents.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, ".6");
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C0CDD160;
  v2 = *(v0 + 24);
  *(v1 + 32) = *(v0 + 16);
  *(v1 + 40) = v2;

  *(v1 + 48) = dispatch thunk of CustomStringConvertible.description.getter();
  *(v1 + 56) = v3;
  v4 = *(v0 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_internalUnderlyingErrors);
  result = specialized Array.count.getter(v4);
  if (!result)
  {
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_7;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68E2790](0, v4);
    goto LABEL_5;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_5:
    v6 = GeneralAppleIntelligenceError.descriptiveComponents.getter();

LABEL_7:
    specialized Array.append<A>(contentsOf:)(v6);
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t GeneralAppleIntelligenceError.telemetryHash.getter()
{
  GeneralAppleIntelligenceError.descriptiveComponents.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  BidirectionalCollection<>.joined(separator:)();
  OUTLINED_FUNCTION_43_1();

  v0._countAndFlagsBits = OUTLINED_FUNCTION_31_1();
  v1 = crc32Checksum(_:)(v0);

  return v1;
}

void GeneralAppleIntelligenceError.__allocating_init(error:)()
{
  OUTLINED_FUNCTION_26_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScESgMd, "06");
  OUTLINED_FUNCTION_29(v3);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8_2();
  v5 = type metadata accessor for CancellationError();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_10_2();
  v11 = v9 - v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v31 - v14 + 48;
  v33 = v2;
  MEMORY[0x1C68E2E60](v2, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AppleIntelligenceReporting0aB5Error_pMd, &_s26AppleIntelligenceReporting0aB5Error_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v32 = 0;
    memset(v31, 0, sizeof(v31));
    outlined destroy of AppleIntelligenceError?(v31, &_s26AppleIntelligenceReporting0aB5Error_pSgMd, &_s26AppleIntelligenceReporting0aB5Error_pSgMR);
    swift_getErrorValue();
    swift_getDynamicType();
    type metadata accessor for NSError();
    if (swift_dynamicCastMetatype())
    {
      _convertErrorToNSError(_:)();
      OUTLINED_FUNCTION_3_3();
      swift_allocObject();
      OUTLINED_FUNCTION_44_1();
      GeneralAppleIntelligenceError.init(nsError:)();
    }

    else
    {
      v34[0] = v2;
      MEMORY[0x1C68E2E60](v2);
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v0, 0, 1, v5);
        v16 = OUTLINED_FUNCTION_26();
        v17(v16);
        v18 = OUTLINED_FUNCTION_33_0();
        v19(v18);
        OUTLINED_FUNCTION_3_3();
        swift_allocObject();
        GeneralAppleIntelligenceError.init(cancellationError:)(v11);

        (*(v7 + 8))(v15, v5);
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_47_1();
      __swift_storeEnumTagSinglePayload(v20, v21, v22, v5);
      outlined destroy of AppleIntelligenceError?(v0, &_sScESgMd, "06");
      swift_getErrorValue();
      OUTLINED_FUNCTION_2_5();
      MEMORY[0x1EEE9AC00](v23);
      OUTLINED_FUNCTION_2();
      (*(v26 + 16))(v25 - v24);
      OUTLINED_FUNCTION_15();
      String.init<A>(reflecting:)();
      v28 = v27;
      OUTLINED_FUNCTION_3_3();
      swift_allocObject();
      v29 = OUTLINED_FUNCTION_44_1();
      GeneralAppleIntelligenceError.init(description:)(v29, v28);
    }

    goto LABEL_9;
  }

  outlined init with take of any Source<Self.Stream == A>(v31, v34);
  outlined init with copy of any Source<Self.Stream == A>(v34, v31);
  OUTLINED_FUNCTION_3_3();
  swift_allocObject();
  GeneralAppleIntelligenceError.init(appleIntelligenceError:)();

  __swift_destroy_boxed_opaque_existential_1(v34);
LABEL_9:
  OUTLINED_FUNCTION_27_1();
}

uint64_t GeneralAppleIntelligenceError.requestFeedback.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_internalRequestFeedback);
  if (v1 == 2)
  {
    specialized _arrayForceCast<A, B>(_:)();
    v3 = v2;
    if (*(v2 + 16))
    {
      v18 = MEMORY[0x1E69E7CC0];
      v4 = OUTLINED_FUNCTION_17_1();
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v4, v5, v6);
      v7 = v18;
      do
      {
        outlined init with copy of any Source<Self.Stream == A>(v3 + 32, v17);
        OUTLINED_FUNCTION_54_1(v17);
        v8 = OUTLINED_FUNCTION_24_1();
        v9(v8);
        __swift_destroy_boxed_opaque_existential_1(v17);
        OUTLINED_FUNCTION_49_1();
        if (v11)
        {
          OUTLINED_FUNCTION_25_1(v10);
          OUTLINED_FUNCTION_48_1();
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v13, v14, v15);
          v7 = v18;
        }

        OUTLINED_FUNCTION_34_1();
      }

      while (!v12);
    }

    else
    {

      v7 = MEMORY[0x1E69E7CC0];
    }

    LOBYTE(v1) = specialized Sequence<>.contains(_:)(1, v7);
  }

  return v1 & 1;
}

uint64_t GeneralAppleIntelligenceError.init(domain:rawCode:descriptionWithoutUnderlying:description:additionalUserInfo:category:internalUnderlyingErrors:retryAfterDate:requestFeedback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, uint64_t a10, uint64_t a11, char a12)
{
  v13 = *a9;
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 48) = a5;
  *(v12 + 56) = a6;
  *(v12 + 64) = a7;
  *(v12 + 72) = a8;
  *(v12 + 80) = v13;
  *(v12 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_internalUnderlyingErrors) = a10;
  outlined init with take of Date?(a11, v12 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_retryAfterDate);
  *(v12 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_internalRequestFeedback) = a12;
  return v12;
}

uint64_t GeneralAppleIntelligenceError.__allocating_init(appleIntelligenceError:)()
{
  OUTLINED_FUNCTION_3_3();
  swift_allocObject();
  OUTLINED_FUNCTION_42_1();
  GeneralAppleIntelligenceError.init(appleIntelligenceError:)();
  return v0;
}

void GeneralAppleIntelligenceError.init(appleIntelligenceError:)()
{
  OUTLINED_FUNCTION_26_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_29(v4);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_16_1();
  v6 = OUTLINED_FUNCTION_8_3();
  *(v0 + 16) = v7(v6);
  *(v0 + 24) = v8;
  OUTLINED_FUNCTION_38_1();
  *(v0 + 32) = dispatch thunk of CustomNSError.errorCode.getter();
  OUTLINED_FUNCTION_16_1();
  v9 = OUTLINED_FUNCTION_8_3();
  *(v0 + 40) = v10(v9);
  *(v0 + 48) = v11;
  OUTLINED_FUNCTION_38_1();
  *(v0 + 56) = dispatch thunk of CustomStringConvertible.description.getter();
  *(v0 + 64) = v12;
  OUTLINED_FUNCTION_16_1();
  v13 = OUTLINED_FUNCTION_8_3();
  *(v0 + 72) = v14(v13);
  OUTLINED_FUNCTION_38_1();
  v15 = OUTLINED_FUNCTION_8_3();
  v16(v15);
  *(v0 + 80) = v27[0];
  OUTLINED_FUNCTION_16_1();
  v17 = OUTLINED_FUNCTION_8_3();
  v19 = v18(v17);
  v20 = *(v19 + 16);
  if (v20)
  {
    v28 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v21 = v19 + 32;
    do
    {
      outlined init with copy of any Source<Self.Stream == A>(v21, v27);
      OUTLINED_FUNCTION_29_1(v27);
      __swift_destroy_boxed_opaque_existential_1(v27);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v21 += 40;
      --v20;
    }

    while (v20);

    v22 = v28;
  }

  else
  {

    v22 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_internalUnderlyingErrors) = v22;
  OUTLINED_FUNCTION_38_1();
  v23 = OUTLINED_FUNCTION_8_3();
  v24(v23);
  outlined init with take of Date?(v1, v0 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_retryAfterDate);
  v25 = v3[3];
  v26 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v25);
  *(v0 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_internalRequestFeedback) = (*(v26 + 88))(v25, v26) & 1;
  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_27_1();
}

uint64_t GeneralAppleIntelligenceError.__allocating_init(nsError:)()
{
  OUTLINED_FUNCTION_3_3();
  swift_allocObject();
  OUTLINED_FUNCTION_42_1();
  GeneralAppleIntelligenceError.init(nsError:)();
  return v0;
}

void GeneralAppleIntelligenceError.init(nsError:)()
{
  OUTLINED_FUNCTION_26_1();
  v1 = v0;
  v3 = v2;
  v76 = *v1;
  v4 = [v2 domain];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v1[2] = v5;
  v1[3] = v7;
  v1[4] = [v3 code];
  v8 = v3;
  v9 = [v8 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v1[5] = v10;
  v1[6] = v12;
  v13 = [v8 description];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v1[7] = v14;
  v1[8] = v16;
  v77 = v1;
  v75 = v8;
  v17 = [v8 userInfo];
  v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  OUTLINED_FUNCTION_42_1();
  v19 = static _DictionaryStorage.copy(original:)();
  v20 = v19;
  v21 = 0;
  v22 = 1 << *(v18 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v18 + 64;
  v25 = v23 & *(v18 + 64);
  v26 = (v22 + 63) >> 6;
  v78 = v19 + 64;
  v79 = v18;
  if (!v25)
  {
LABEL_5:
    v28 = v21;
    while (1)
    {
      v21 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v21 >= v26)
      {
        break;
      }

      v29 = *(v24 + 8 * v21);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v25 = (v29 - 1) & v29;
        goto LABEL_10;
      }
    }

    v46 = specialized Dictionary.compactMapValues<A>(_:)(v20);

    v47 = v77;
    v77[9] = v46;
    v48 = v47[2];
    v49 = v47[3];
    v51 = v48 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v49 == v50;
    v52 = v75;
    if (v51)
    {
    }

    else
    {
      v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v53 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    if (v47[4] == -999)
    {
      goto LABEL_37;
    }

LABEL_21:
    v54 = v47[2];
    v55 = v47[3];
    if (v54 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v55 == v56)
    {
    }

    else
    {
      v58 = OUTLINED_FUNCTION_45_0(v54);

      if ((v58 & 1) == 0)
      {
LABEL_29:
        v59 = v47[2];
        v60 = v47[3];
        if (v59 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v60 == v61)
        {
        }

        else
        {
          v63 = OUTLINED_FUNCTION_45_0(v59);

          if ((v63 & 1) == 0)
          {
            goto LABEL_38;
          }
        }

        if (v47[4] != 3072)
        {
LABEL_38:
          v64 = 21;
          goto LABEL_39;
        }

LABEL_37:
        v64 = 1;
LABEL_39:
        *(v47 + 80) = v64;
        v65 = [v52 underlyingErrors];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v66 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v67 = *(v66 + 16);
        if (v67)
        {
          v81[0] = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray.reserveCapacity(_:)();
          v68 = 32;
          do
          {
            MEMORY[0x1C68E2E60](*(v66 + v68));
            GeneralAppleIntelligenceError.__allocating_init(error:)();
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v68 += 8;
            --v67;
          }

          while (v67);

          v69 = v81[0];
        }

        else
        {

          v69 = MEMORY[0x1E69E7CC0];
        }

        *(v47 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_internalUnderlyingErrors) = v69;
        type metadata accessor for Date();
        OUTLINED_FUNCTION_47_1();
        __swift_storeEnumTagSinglePayload(v70, v71, v72, v73);
        *(v47 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_internalRequestFeedback) = 2;
        OUTLINED_FUNCTION_27_1();
        return;
      }
    }

    if (v47[4] == -1012)
    {
      goto LABEL_37;
    }

    goto LABEL_29;
  }

  while (1)
  {
    v27 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
LABEL_10:
    v30 = v27 | (v21 << 6);
    v31 = *(v79 + 56);
    v32 = (*(v79 + 48) + 16 * v30);
    v33 = v32[1];
    v80 = *v32;
    outlined init with copy of Any(v31 + 32 * v30, v81);
    __swift_project_boxed_opaque_existential_1(v81, v81[3]);
    v14 = &v74;
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v34);
    OUTLINED_FUNCTION_2();
    (*(v37 + 16))(v36 - v35);

    v38 = String.init<A>(describing:)();
    v40 = v39;
    __swift_destroy_boxed_opaque_existential_1(v81);
    *(v78 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v41 = (v20[6] + 16 * v30);
    *v41 = v80;
    v41[1] = v33;
    v42 = (v20[7] + 16 * v30);
    *v42 = v38;
    v42[1] = v40;
    v43 = v20[2];
    v44 = __OFADD__(v43, 1);
    v45 = v43 + 1;
    if (v44)
    {
      break;
    }

    v20[2] = v45;
    if (!v25)
    {
      goto LABEL_5;
    }
  }

LABEL_46:
  __break(1u);

  swift_deallocPartialClassInstance();
  __break(1u);
}

uint64_t specialized Dictionary.compactMapValues<A>(_:)(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC8];
  v30 = MEMORY[0x1E69E7CC8];
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_5:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v9 >= v6)
    {

      return v1;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
  }

  while (!v5);
  v8 = v9;
  while (1)
  {
LABEL_9:
    v10 = (v8 << 10) | (16 * __clz(__rbit64(v5)));
    v11 = (*(a1 + 48) + v10);
    v12 = *v11;
    v13 = v11[1];
    v14 = (*(a1 + 56) + v10);
    v15 = v14[1];
    v29 = *v14;
    v16 = *(v1 + 16);
    if (*(v1 + 24) <= v16)
    {

      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16 + 1, 1);
      v1 = v30;
    }

    else
    {
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v17 = v1 + 64;
    v18 = -1 << *(v1 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v1 + 64 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v1 + 64 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v5 &= v5 - 1;
    v26 = (*(v1 + 48) + 16 * v21);
    *v26 = v12;
    v26[1] = v13;
    v27 = (*(v1 + 56) + 16 * v21);
    *v27 = v29;
    v27[1] = v15;
    ++*(v1 + 16);
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v17 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t GeneralAppleIntelligenceError.__allocating_init(cancellationError:)()
{
  OUTLINED_FUNCTION_3_3();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_42_1();
  GeneralAppleIntelligenceError.init(cancellationError:)(v1);
  return v0;
}

uint64_t GeneralAppleIntelligenceError.init(cancellationError:)(uint64_t a1)
{
  OUTLINED_FUNCTION_30_1();
  *(v1 + 16) = 0xD000000000000011;
  *(v1 + 24) = v2;
  *(v1 + 32) = 0;
  type metadata accessor for CancellationError();
  lazy protocol witness table accessor for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
  *(v1 + 40) = Error.localizedDescription.getter();
  *(v1 + 48) = v3;
  *(v1 + 56) = Error.localizedDescription.getter();
  *(v1 + 64) = v4;
  v5 = MEMORY[0x1E69E7CC0];
  *(v1 + 72) = Dictionary.init(dictionaryLiteral:)();
  *(v1 + 80) = 1;
  OUTLINED_FUNCTION_42();
  v6 = OUTLINED_FUNCTION_31_1();
  v7(v6);
  *(v1 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_internalUnderlyingErrors) = v5;
  type metadata accessor for Date();
  OUTLINED_FUNCTION_47_1();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  *(v1 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_internalRequestFeedback) = 2;
  return v1;
}

uint64_t GeneralAppleIntelligenceError.__allocating_init(description:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_3();
  swift_allocObject();
  v4 = OUTLINED_FUNCTION_44_1();
  GeneralAppleIntelligenceError.init(description:)(v4, a2);
  return v2;
}

uint64_t GeneralAppleIntelligenceError.init(description:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0x6669636570736E75;
  *(v2 + 24) = 0xEB00000000646569;
  *(v2 + 32) = 0;
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  *(v2 + 80) = 21;

  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 72) = Dictionary.init(dictionaryLiteral:)();
  *(v2 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_internalUnderlyingErrors) = v3;
  type metadata accessor for Date();
  OUTLINED_FUNCTION_47_1();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  *(v2 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_internalRequestFeedback) = 2;
  return v2;
}

uint64_t GeneralAppleIntelligenceError.__allocating_init(domain:rawCode:additionalUserInfo:descriptionWithoutUnderlying:description:underlyingErrors:retryAfterDate:category:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_3_3();
  v9 = swift_allocObject();
  v10 = OUTLINED_FUNCTION_4_2();
  GeneralAppleIntelligenceError.init(domain:rawCode:additionalUserInfo:descriptionWithoutUnderlying:description:underlyingErrors:retryAfterDate:category:)(v10, v11, v12, v13, v14, v15, v16, a8, v18, v19, v20);
  return v9;
}

uint64_t GeneralAppleIntelligenceError.init(domain:rawCode:additionalUserInfo:descriptionWithoutUnderlying:description:underlyingErrors:retryAfterDate:category:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11)
{
  v13 = *a11;
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 40) = a5;
  *(v11 + 48) = a6;
  *(v11 + 56) = a7;
  *(v11 + 64) = a8;
  v14 = *(a9 + 16);
  if (v14)
  {
    v19 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v15 = a9 + 32;
    do
    {
      outlined init with copy of any Source<Self.Stream == A>(v15, v18);
      OUTLINED_FUNCTION_29_1(v18);
      __swift_destroy_boxed_opaque_existential_1(v18);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v15 += 40;
      --v14;
    }

    while (v14);

    v16 = v19;
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
  }

  *(v11 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_internalUnderlyingErrors) = v16;
  *(v11 + 80) = v13;
  outlined init with take of Date?(a10, v11 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_retryAfterDate);
  *(v11 + 72) = a4;
  *(v11 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_internalRequestFeedback) = 2;
  return v11;
}

void GeneralAppleIntelligenceError.init(domain:rawCode:additionalUserInfo:descriptionWithoutUnderlying:description:underlyingErrors:retryAfterDate:category:requestFeedback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char *a31, char a32)
{
  OUTLINED_FUNCTION_53_1();
  a27 = v33;
  a28 = v35;
  v36 = v32;
  v37 = v34;
  v38 = a32;
  v40 = a29;
  v39 = a30;
  v41 = *a31;
  *(v36 + 16) = v42;
  *(v36 + 24) = v43;
  *(v36 + 32) = v44;
  *(v36 + 40) = v45;
  *(v36 + 48) = v46;
  *(v36 + 56) = v47;
  *(v36 + 64) = v48;
  v49 = *(v40 + 16);
  if (v49)
  {
    v52 = v34;
    a16 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v50 = v40 + 32;
    do
    {
      outlined init with copy of any Source<Self.Stream == A>(v50, &a11);
      OUTLINED_FUNCTION_29_1(&a11);
      __swift_destroy_boxed_opaque_existential_1(&a11);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v50 += 40;
      --v49;
    }

    while (v49);

    v51 = a16;
    v37 = v52;
  }

  else
  {

    v51 = MEMORY[0x1E69E7CC0];
  }

  *(v36 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_internalUnderlyingErrors) = v51;
  *(v36 + 80) = v41;
  outlined init with take of Date?(v39, v36 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_retryAfterDate);
  *(v36 + 72) = v37;
  *(v36 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_internalRequestFeedback) = v38 & 1;
  OUTLINED_FUNCTION_52_1();
}

uint64_t GeneralAppleIntelligenceError.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65646F43776172 && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001CLL && 0x80000001C0CDF2E0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x80000001C0CDF310 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x79726F6765746163 && a2 == 0xE800000000000000;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7466417972746572 && a2 == 0xEE00657461447265;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000018 && 0x80000001C0CDF340 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD000000000000017 && 0x80000001C0CDF360 == a2)
                {

                  return 8;
                }

                else
                {
                  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t GeneralAppleIntelligenceError.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6E69616D6F64;
  switch(a1)
  {
    case 1:
      result = 0x65646F43776172;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0x7470697263736564;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x79726F6765746163;
      break;
    case 6:
      result = 0x7466417972746572;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GeneralAppleIntelligenceError.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = GeneralAppleIntelligenceError.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeneralAppleIntelligenceError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeneralAppleIntelligenceError.CodingKeys and conformance GeneralAppleIntelligenceError.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeneralAppleIntelligenceError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeneralAppleIntelligenceError.CodingKeys and conformance GeneralAppleIntelligenceError.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GeneralAppleIntelligenceError.deinit()
{

  outlined destroy of AppleIntelligenceError?(v0 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_retryAfterDate, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

  return v0;
}

uint64_t GeneralAppleIntelligenceError.__deallocating_deinit()
{
  GeneralAppleIntelligenceError.deinit();

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t GeneralAppleIntelligenceError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting07GeneraldE5ErrorC10CodingKeys33_7CD3AB9C6F40D675AAB6A4E202A599F4LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting07GeneraldE5ErrorC10CodingKeys33_7CD3AB9C6F40D675AAB6A4E202A599F4LLOGMR);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_2();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeneralAppleIntelligenceError.CodingKeys and conformance GeneralAppleIntelligenceError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_39();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encode(_:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B], MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    OUTLINED_FUNCTION_21_0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    lazy protocol witness table accessor for type AppleIntelligenceErrorCategory and conformance AppleIntelligenceErrorCategory();
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    type metadata accessor for Date();
    OUTLINED_FUNCTION_14_1();
    lazy protocol witness table accessor for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError(v8, v9, MEMORY[0x1E6969538]);
    OUTLINED_FUNCTION_21_0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGMd, &_sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGMR);
    _sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGSayxGSEsSERzlWlTm_0(&lazy protocol witness table cache variable for type [GeneralAppleIntelligenceError] and conformance <A> [A], &lazy protocol witness table cache variable for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError, &protocol conformance descriptor for GeneralAppleIntelligenceError, MEMORY[0x1E69E6300]);
    OUTLINED_FUNCTION_21_0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t GeneralAppleIntelligenceError.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_3_3();
  v2 = swift_allocObject();
  GeneralAppleIntelligenceError.init(from:)(a1);
  return v2;
}

uint64_t *GeneralAppleIntelligenceError.init(from:)(void *a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_29(v4);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v23 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting07GeneraldE5ErrorC10CodingKeys33_7CD3AB9C6F40D675AAB6A4E202A599F4LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting07GeneraldE5ErrorC10CodingKeys33_7CD3AB9C6F40D675AAB6A4E202A599F4LLOGMR);
  OUTLINED_FUNCTION_1();
  v23[2] = v9;
  v23[3] = v8;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeneralAppleIntelligenceError.CodingKeys and conformance GeneralAppleIntelligenceError.CodingKeys();
  v11 = v1;
  v12 = v24;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    swift_deallocPartialClassInstance();
    v22 = a1;
  }

  else
  {
    v24 = a1;
    v23[1] = v3;
    LOBYTE(v26) = 0;
    v1[2] = KeyedDecodingContainer.decode(_:forKey:)();
    v1[3] = v13;
    OUTLINED_FUNCTION_9_2(1);
    v1[4] = KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_9_2(2);
    v1[5] = KeyedDecodingContainer.decode(_:forKey:)();
    v1[6] = v15;
    OUTLINED_FUNCTION_9_2(3);
    v1[7] = KeyedDecodingContainer.decode(_:forKey:)();
    v1[8] = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    v25 = 4;
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B], MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    OUTLINED_FUNCTION_20_1();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v1[9] = v26;
    v25 = 5;
    lazy protocol witness table accessor for type AppleIntelligenceErrorCategory and conformance AppleIntelligenceErrorCategory();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v1 + 80) = v26;
    type metadata accessor for Date();
    LOBYTE(v26) = 6;
    OUTLINED_FUNCTION_14_1();
    lazy protocol witness table accessor for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError(v17, v18, MEMORY[0x1E6969558]);
    OUTLINED_FUNCTION_20_1();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v23[0] = v1;
    outlined init with take of Date?(v7, v1 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_retryAfterDate);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGMd, &_sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGMR);
    v25 = 7;
    _sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGSayxGSEsSERzlWlTm_0(&lazy protocol witness table cache variable for type [GeneralAppleIntelligenceError] and conformance <A> [A], &lazy protocol witness table cache variable for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError, &protocol conformance descriptor for GeneralAppleIntelligenceError, MEMORY[0x1E69E6330]);
    OUTLINED_FUNCTION_20_1();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v23[0];
    *(v23[0] + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_internalUnderlyingErrors) = v26;
    OUTLINED_FUNCTION_9_2(8);
    v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v20 = OUTLINED_FUNCTION_6_3();
    v21(v20);
    *(v11 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_internalRequestFeedback) = v19;
    v22 = v24;
  }

  __swift_destroy_boxed_opaque_existential_1(v22);
  return v11;
}

uint64_t protocol witness for Decodable.init(from:) in conformance GeneralAppleIntelligenceError@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = GeneralAppleIntelligenceError.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t protocol witness for Error._domain.getter in conformance GeneralAppleIntelligenceError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError(&lazy protocol witness table cache variable for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError, type metadata accessor for GeneralAppleIntelligenceError, &protocol conformance descriptor for GeneralAppleIntelligenceError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance GeneralAppleIntelligenceError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError(&lazy protocol witness table cache variable for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError, type metadata accessor for GeneralAppleIntelligenceError, &protocol conformance descriptor for GeneralAppleIntelligenceError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

id @nonobjc NSError.init(domain:code:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x1C68E2560](a1);

  if (a4)
  {
    v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8.super.isa];

  return v9;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation4DateV_Tt1g5Tm(v9, a2, &_ss23_ContiguousArrayStorageCy10Foundation4DateVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DateVGMR, MEMORY[0x1E6969530]);
  v11 = *(type metadata accessor for Date() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + v12, v9, v10 + v12, MEMORY[0x1E6969530]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation4DateV_Tt1g5Tm(v9, a2, &_ss23_ContiguousArrayStorageCy27IntelligencePlatformLibrary05AppleD21ReportingGeneralErrorV17UserInfoParameterVGMd, &_ss23_ContiguousArrayStorageCy27IntelligencePlatformLibrary05AppleD21ReportingGeneralErrorV17UserInfoParameterVGMR, MEMORY[0x1E69AA0E8]);
  v11 = *(type metadata accessor for AppleIntelligenceReportingGeneralError.UserInfoParameter() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + v12, v9, v10 + v12, MEMORY[0x1E69AA0E8]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, ".6");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation4DateV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void specialized UnsafeMutablePointer.moveInitialize(from:count:)(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_42(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    v10 = OUTLINED_FUNCTION_50_1();

    MEMORY[0x1EEE6BD00](v10);
  }

  else if (a3 != a1)
  {
    v9 = OUTLINED_FUNCTION_50_1();

    MEMORY[0x1EEE6BCF8](v9);
  }
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
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

void specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)()
{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v1;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v1;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v1;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v1;
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

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_42();
  v5 = OUTLINED_FUNCTION_50();
  v6(v5);
  return a2;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26AppleIntelligenceReporting0dE5Error_pGMd, &_ss23_ContiguousArrayStorageCy26AppleIntelligenceReporting0dE5Error_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AppleIntelligenceReporting0aB5Error_pMd, &_s26AppleIntelligenceReporting0aB5Error_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySbGMd, &_ss23_ContiguousArrayStorageCySbGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, ".6");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  v2 = OUTLINED_FUNCTION_15();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v2, v3, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x1C68E2AF0](*(v1 + 40), a1, 4);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v2, v3);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

uint64_t specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a4;
  a1[1] = a5;

  return a2;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v55 = a5;
  specialized LazyMapSequence.makeIterator()(a1, a2, a3, v54);
  v6 = v54[1];
  v7 = v54[3];
  v8 = v54[4];
  v49 = v54[5];
  v50 = v54[0];
  v9 = (v54[2] + 64) >> 6;

  v47 = v9;
  v48 = v6;
  if (v8)
  {
    while (1)
    {
      v51 = a4;
      v10 = v7;
LABEL_8:
      v12 = (v10 << 10) | (16 * __clz(__rbit64(v8)));
      v13 = (*(v50 + 48) + v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*(v50 + 56) + v12);
      v17 = *v16;
      v18 = v16[1];
      v53[0] = v14;
      v53[1] = v15;
      v53[2] = v17;
      v53[3] = v18;

      v49(v52, v53);

      v20 = v52[0];
      v19 = v52[1];
      v21 = v52[2];
      v22 = v52[3];
      v23 = *v55;
      v24 = OUTLINED_FUNCTION_26();
      v27 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v25);
      v28 = v23[2];
      v29 = (v26 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        break;
      }

      v31 = v26;
      if (v23[3] >= v30)
      {
        if ((v51 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVyS2SGMd, "*6");
          _NativeDictionary.copy()();
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v30, v51 & 1);
        v32 = OUTLINED_FUNCTION_26();
        v34 = specialized __RawDictionaryStorage.find<A>(_:)(v32, v33);
        if ((v31 & 1) != (v35 & 1))
        {
          goto LABEL_24;
        }

        v27 = v34;
      }

      v8 &= v8 - 1;
      v36 = *v55;
      if (v31)
      {
        v37 = (v36[7] + 16 * v27);
        v39 = *v37;
        v38 = v37[1];

        v40 = (v36[7] + 16 * v27);
        *v40 = v39;
        v40[1] = v38;
      }

      else
      {
        v36[(v27 >> 6) + 8] |= 1 << v27;
        v41 = (v36[6] + 16 * v27);
        *v41 = v20;
        v41[1] = v19;
        v42 = (v36[7] + 16 * v27);
        *v42 = v21;
        v42[1] = v22;
        v43 = v36[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_23;
        }

        v36[2] = v45;
      }

      a4 = 1;
      v7 = v10;
      v9 = v47;
      v6 = v48;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        outlined consume of [String : String].Iterator._Variant(v50);
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v51 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v36 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

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
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v34 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = (*(v5 + 56) + 16 * v18);
    v23 = v22[1];
    v37 = *v22;
    if ((v36 & 1) == 0)
    {
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v24 = -1 << *(v7 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v7 + 48) + 16 * v27);
    *v32 = v20;
    v32[1] = v21;
    v33 = (*(v7 + 56) + 16 * v27);
    *v33 = v37;
    v33[1] = v23;
    ++*(v7 + 16);
    v5 = v35;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v14 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t specialized UnsafeMutablePointer.assign(repeating:count:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1C0CDD170;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t type metadata accessor for NSError()
{
  result = lazy cache variable for type metadata for NSError;
  if (!lazy cache variable for type metadata for NSError)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSError);
  }

  return result;
}

uint64_t outlined destroy of AppleIntelligenceError?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_42();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t outlined init with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t lazy protocol witness table accessor for type GeneralAppleIntelligenceError.CodingKeys and conformance GeneralAppleIntelligenceError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GeneralAppleIntelligenceError.CodingKeys and conformance GeneralAppleIntelligenceError.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeneralAppleIntelligenceError.CodingKeys and conformance GeneralAppleIntelligenceError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeneralAppleIntelligenceError.CodingKeys and conformance GeneralAppleIntelligenceError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeneralAppleIntelligenceError.CodingKeys and conformance GeneralAppleIntelligenceError.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeneralAppleIntelligenceError.CodingKeys and conformance GeneralAppleIntelligenceError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeneralAppleIntelligenceError.CodingKeys and conformance GeneralAppleIntelligenceError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeneralAppleIntelligenceError.CodingKeys and conformance GeneralAppleIntelligenceError.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeneralAppleIntelligenceError.CodingKeys and conformance GeneralAppleIntelligenceError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeneralAppleIntelligenceError.CodingKeys and conformance GeneralAppleIntelligenceError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeneralAppleIntelligenceError.CodingKeys and conformance GeneralAppleIntelligenceError.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeneralAppleIntelligenceError.CodingKeys and conformance GeneralAppleIntelligenceError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeneralAppleIntelligenceError.CodingKeys and conformance GeneralAppleIntelligenceError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceErrorCategory and conformance AppleIntelligenceErrorCategory()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceErrorCategory and conformance AppleIntelligenceErrorCategory;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceErrorCategory and conformance AppleIntelligenceErrorCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceErrorCategory and conformance AppleIntelligenceErrorCategory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceErrorCategory and conformance AppleIntelligenceErrorCategory;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceErrorCategory and conformance AppleIntelligenceErrorCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceErrorCategory and conformance AppleIntelligenceErrorCategory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceErrorCategory and conformance AppleIntelligenceErrorCategory;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceErrorCategory and conformance AppleIntelligenceErrorCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceErrorCategory and conformance AppleIntelligenceErrorCategory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceErrorCategory and conformance AppleIntelligenceErrorCategory;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceErrorCategory and conformance AppleIntelligenceErrorCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceErrorCategory and conformance AppleIntelligenceErrorCategory);
  }

  return result;
}

uint64_t _sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGSayxGSEsSERzlWlTm_0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGMd, &_sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGMR);
    OUTLINED_FUNCTION_0_3();
    lazy protocol witness table accessor for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError(a2, v8, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for GeneralAppleIntelligenceError(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError(&lazy protocol witness table cache variable for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError, type metadata accessor for GeneralAppleIntelligenceError, &protocol conformance descriptor for GeneralAppleIntelligenceError);
  a1[2] = lazy protocol witness table accessor for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError(&lazy protocol witness table cache variable for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError, type metadata accessor for GeneralAppleIntelligenceError, &protocol conformance descriptor for GeneralAppleIntelligenceError);
  result = lazy protocol witness table accessor for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError(&lazy protocol witness table cache variable for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError, type metadata accessor for GeneralAppleIntelligenceError, &protocol conformance descriptor for GeneralAppleIntelligenceError);
  a1[3] = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AppleIntelligenceErrorCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEA)
  {
    if (a2 + 22 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 22) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 23;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v5 = v6 - 23;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AppleIntelligenceErrorCategory(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE9)
  {
    v6 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
          *result = a2 + 22;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GeneralAppleIntelligenceError.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

char *specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return outlined init with take of any Source<Self.Stream == A>(&v12, v10 + 40 * a1 + 32);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)(v7, *a1, a1[1], a1[2], a1[3]);
  v4 = v7[0];
  v5 = v7[1];
  *a2 = result;
  a2[1] = v6;
  a2[2] = v4;
  a2[3] = v5;
  return result;
}

uint64_t specialized LazyMapSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t lazy protocol witness table accessor for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *OUTLINED_FUNCTION_38_1()
{

  return __swift_project_boxed_opaque_existential_1(v0, v1);
}

void OUTLINED_FUNCTION_41_1(uint64_t a1@<X8>)
{
  *(v3 + 224) = v4 + 5;
  *(v3 + 232) = a1;
  *(v2 + 80) = 0;
  *(v2 + 88) = v1;
}

uint64_t OUTLINED_FUNCTION_45_0(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_55_1()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t AppleIntelligenceEvent.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C0CDF3B0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x636E657265666E69 && a2 == 0xE900000000000065;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6C65447465737361 && a2 == 0xED00007972657669)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t AppleIntelligenceEvent.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0x636E657265666E69;
  }

  return 0x6C65447465737361;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceEvent.AssetDeliveryCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceEvent.AssetDeliveryCodingKeys and conformance AppleIntelligenceEvent.AssetDeliveryCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceEvent.AssetDeliveryCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceEvent.AssetDeliveryCodingKeys and conformance AppleIntelligenceEvent.AssetDeliveryCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppleIntelligenceEvent.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppleIntelligenceEvent.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceEvent.CodingKeys and conformance AppleIntelligenceEvent.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceEvent.CodingKeys and conformance AppleIntelligenceEvent.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceEvent.InferenceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceEvent.InferenceCodingKeys and conformance AppleIntelligenceEvent.InferenceCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceEvent.InferenceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceEvent.InferenceCodingKeys and conformance AppleIntelligenceEvent.InferenceCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceEvent.MinimalInferenceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceEvent.MinimalInferenceCodingKeys and conformance AppleIntelligenceEvent.MinimalInferenceCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceEvent.MinimalInferenceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceEvent.MinimalInferenceCodingKeys and conformance AppleIntelligenceEvent.MinimalInferenceCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppleIntelligenceEvent.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_48();
  a23 = v27;
  a24 = v28;
  v90 = v25;
  v88 = v24;
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE5EventO23AssetDeliveryCodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE5EventO23AssetDeliveryCodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMR);
  OUTLINED_FUNCTION_1();
  v86 = v32;
  v87 = v31;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_19_0();
  v85 = v34;
  v83 = type metadata accessor for AppleIntelligenceAssetDeliveryEvent(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_2();
  v84 = v37 - v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE5EventO19InferenceCodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE5EventO19InferenceCodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMR);
  OUTLINED_FUNCTION_1();
  v81 = v39;
  v82 = v38;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_19_0();
  v80 = v41;
  v78 = type metadata accessor for AppleIntelligenceInferenceEvent(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_2();
  v79 = v44 - v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE5EventO26MinimalInferenceCodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE5EventO26MinimalInferenceCodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMR);
  OUTLINED_FUNCTION_1();
  v76 = v46;
  v77 = v45;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_14();
  v75 = type metadata accessor for MinimalInferenceEvent(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_2();
  v51 = v50 - v49;
  type metadata accessor for AppleIntelligenceEvent(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_2();
  v55 = v54 - v53;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE5EventO10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE5EventO10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMR);
  OUTLINED_FUNCTION_1();
  v57 = v56;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v75 - v59;
  OUTLINED_FUNCTION_28_0(v30, v30[3]);
  lazy protocol witness table accessor for type AppleIntelligenceEvent.CodingKeys and conformance AppleIntelligenceEvent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of AppleIntelligenceEvent(v88, v55);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v62 = (v57 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v63 = v79;
      outlined init with take of AppleIntelligenceAssetDeliveryEvent(v55, v79);
      OUTLINED_FUNCTION_77();
      lazy protocol witness table accessor for type AppleIntelligenceEvent.InferenceCodingKeys and conformance AppleIntelligenceEvent.InferenceCodingKeys();
      OUTLINED_FUNCTION_56_1(&unk_1F40305E0, &a13);
      OUTLINED_FUNCTION_25_2();
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent and conformance AppleIntelligenceAssetDeliveryEvent(v64);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v65 = OUTLINED_FUNCTION_24_2();
      v66(v65);
      v67 = type metadata accessor for AppleIntelligenceInferenceEvent;
    }

    else
    {
      v63 = v84;
      outlined init with take of AppleIntelligenceAssetDeliveryEvent(v55, v84);
      a14 = 2;
      lazy protocol witness table accessor for type AppleIntelligenceEvent.AssetDeliveryCodingKeys and conformance AppleIntelligenceEvent.AssetDeliveryCodingKeys();
      OUTLINED_FUNCTION_56_1(&unk_1F4030670, &a14);
      OUTLINED_FUNCTION_19_3();
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent and conformance AppleIntelligenceAssetDeliveryEvent(v72);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v73 = OUTLINED_FUNCTION_24_2();
      v74(v73);
      v67 = type metadata accessor for AppleIntelligenceAssetDeliveryEvent;
    }

    outlined destroy of AppleIntelligenceAssetDeliveryEvent(v63, v67);
    (*v62)(v60, v26);
  }

  else
  {
    outlined init with take of AppleIntelligenceAssetDeliveryEvent(v55, v51);
    lazy protocol witness table accessor for type AppleIntelligenceEvent.MinimalInferenceCodingKeys and conformance AppleIntelligenceEvent.MinimalInferenceCodingKeys();
    v68 = v89;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    OUTLINED_FUNCTION_22_1();
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent and conformance AppleIntelligenceAssetDeliveryEvent(v69);
    v70 = v77;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v76 + 8))(v26, v70);
    OUTLINED_FUNCTION_21_1();
    outlined destroy of AppleIntelligenceAssetDeliveryEvent(v51, v71);
    (*v62)(v60, v68);
  }

  OUTLINED_FUNCTION_47();
}

void AppleIntelligenceEvent.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_48();
  a23 = v26;
  a24 = v27;
  v113 = v25;
  v29 = v28;
  v105 = v30;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE5EventO23AssetDeliveryCodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE5EventO23AssetDeliveryCodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMR);
  OUTLINED_FUNCTION_1();
  v104 = v31;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_19_0();
  v107 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE5EventO19InferenceCodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE5EventO19InferenceCodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMR);
  OUTLINED_FUNCTION_1();
  v102 = v35;
  v103 = v34;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_19_0();
  v108 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE5EventO26MinimalInferenceCodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE5EventO26MinimalInferenceCodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMR);
  OUTLINED_FUNCTION_1();
  v100 = v39;
  v101 = v38;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_19_0();
  v106 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE5EventO10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE5EventO10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMR);
  OUTLINED_FUNCTION_1();
  v109 = v43;
  v110 = v42;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_20();
  v45 = type metadata accessor for AppleIntelligenceEvent(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v94 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v94 - v50;
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v94 - v53;
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v94 - v56;
  v58 = v29[3];
  v112 = v29;
  OUTLINED_FUNCTION_28_0(v29, v58);
  lazy protocol witness table accessor for type AppleIntelligenceEvent.CodingKeys and conformance AppleIntelligenceEvent.CodingKeys();
  v59 = v113;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v59)
  {
    goto LABEL_10;
  }

  v96 = v51;
  v97 = v54;
  v98 = v48;
  v99 = v57;
  v60 = v110;
  v113 = v45;
  v61 = v24;
  KeyedDecodingContainer.allKeys.getter();
  _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC26AppleIntelligenceReporting0jK18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLO_Tt1g5();
  if (v63 == v64 >> 1)
  {
LABEL_9:
    v74 = type metadata accessor for DecodingError();
    swift_allocError();
    v76 = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v76 = v113;
    v77 = KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_65(v77);
    (*(*(v74 - 8) + 104))(v76, *MEMORY[0x1E69E6AF8], v74);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v109 + 8))(v61, v60);
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v112);
LABEL_11:
    OUTLINED_FUNCTION_47();
    return;
  }

  if (v63 < (v64 >> 1))
  {
    v65 = v24;
    v66 = *(v62 + v63);
    specialized ArraySlice.subscript.getter();
    v68 = v67;
    v70 = v69;
    swift_unknownObjectRelease();
    if (v68 == v70 >> 1)
    {
      if (v66)
      {
        if (v66 == 1)
        {
          OUTLINED_FUNCTION_77();
          lazy protocol witness table accessor for type AppleIntelligenceEvent.InferenceCodingKeys and conformance AppleIntelligenceEvent.InferenceCodingKeys();
          OUTLINED_FUNCTION_36_1(&unk_1F40305E0, &a13);
          v71 = v99;
          type metadata accessor for AppleIntelligenceInferenceEvent(0);
          OUTLINED_FUNCTION_25_2();
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent and conformance AppleIntelligenceAssetDeliveryEvent(v72);
          v73 = v96;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v95 = 0;
          swift_unknownObjectRelease();
          v81 = OUTLINED_FUNCTION_106();
          v82(v81);
          v83 = OUTLINED_FUNCTION_12_1();
        }

        else
        {
          a14 = 2;
          lazy protocol witness table accessor for type AppleIntelligenceEvent.AssetDeliveryCodingKeys and conformance AppleIntelligenceEvent.AssetDeliveryCodingKeys();
          OUTLINED_FUNCTION_36_1(&unk_1F4030670, &a14);
          v71 = v99;
          type metadata accessor for AppleIntelligenceAssetDeliveryEvent(0);
          OUTLINED_FUNCTION_19_3();
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent and conformance AppleIntelligenceAssetDeliveryEvent(v80);
          v73 = v98;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v95 = 0;
          swift_unknownObjectRelease();
          v91 = OUTLINED_FUNCTION_62_1();
          v92(v91);
          v83 = OUTLINED_FUNCTION_30_2();
        }

        v84(v83);
        swift_storeEnumTagMultiPayload();
        v90 = v73;
        v89 = v112;
      }

      else
      {
        a12 = 0;
        lazy protocol witness table accessor for type AppleIntelligenceEvent.MinimalInferenceCodingKeys and conformance AppleIntelligenceEvent.MinimalInferenceCodingKeys();
        OUTLINED_FUNCTION_36_1(&unk_1F4030550, &a12);
        type metadata accessor for MinimalInferenceEvent(0);
        OUTLINED_FUNCTION_22_1();
        lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent and conformance AppleIntelligenceAssetDeliveryEvent(v78);
        v79 = v97;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v95 = 0;
        swift_unknownObjectRelease();
        v85 = OUTLINED_FUNCTION_61_1();
        v86(v85);
        v87 = OUTLINED_FUNCTION_30_2();
        v88(v87);
        swift_storeEnumTagMultiPayload();
        v89 = v112;
        v71 = v99;
        v90 = v79;
      }

      v93 = v105;
      outlined init with take of AppleIntelligenceAssetDeliveryEvent(v90, v71);
      outlined init with take of AppleIntelligenceAssetDeliveryEvent(v71, v93);
      __swift_destroy_boxed_opaque_existential_1(v89);
      goto LABEL_11;
    }

    v61 = v65;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t AppleIntelligenceInferenceEvent.internalSessionIdentifier.getter()
{
  v0 = OUTLINED_FUNCTION_35_1();
  v1 = type metadata accessor for AppleIntelligenceInferenceEvent(v0);
  return OUTLINED_FUNCTION_57_0(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR, *(v1 + 20));
}

uint64_t AppleIntelligenceInferenceEvent.internalStepIdentifier.getter()
{
  type metadata accessor for AppleIntelligenceInferenceEvent(0);
  OUTLINED_FUNCTION_31_2();
  return OUTLINED_FUNCTION_50();
}

uint64_t AppleIntelligenceInferenceEvent.internalInvocationRequestIdentifier.getter()
{
  v0 = OUTLINED_FUNCTION_35_1();
  v1 = type metadata accessor for AppleIntelligenceInferenceEvent(v0);
  return OUTLINED_FUNCTION_57_0(&_s26AppleIntelligenceReporting14UUIDIdentifierVSgMd, &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMR, *(v1 + 28));
}

uint64_t AppleIntelligenceInferenceEvent.internalClientRequestIdentifier.getter()
{
  v0 = OUTLINED_FUNCTION_35_1();
  v1 = type metadata accessor for AppleIntelligenceInferenceEvent(v0);
  return OUTLINED_FUNCTION_57_0(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR, *(v1 + 32));
}

uint64_t AppleIntelligenceInferenceEvent.internalModelManagerRequestIdentifier.getter()
{
  v0 = OUTLINED_FUNCTION_35_1();
  v1 = type metadata accessor for AppleIntelligenceInferenceEvent(v0);
  return OUTLINED_FUNCTION_57_0(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR, *(v1 + 36));
}

uint64_t AppleIntelligenceInferenceEvent.internalErrors.getter()
{
  type metadata accessor for AppleIntelligenceInferenceEvent(0);
}

uint64_t AppleIntelligenceInferenceEvent.internalUseCaseIdentifier.getter()
{
  v2 = OUTLINED_FUNCTION_35_1();
  v3 = (v1 + *(type metadata accessor for AppleIntelligenceInferenceEvent(v2) + 44));
  v5 = v3[3];
  v10 = v3[2];
  v4 = v10;
  v11 = v5;
  v6 = v3[1];
  v9[0] = *v3;
  v9[1] = v6;
  *v0 = v9[0];
  v0[1] = v6;
  v0[2] = v4;
  v0[3] = v5;
  return outlined init with copy of UUID?(v9, &v8, &_s26AppleIntelligenceReporting0aB7UseCaseVSgMd, &_s26AppleIntelligenceReporting0aB7UseCaseVSgMR);
}

uint64_t AppleIntelligenceInferenceEvent.internalAdditionalUseCaseIdentifiers.getter()
{
  type metadata accessor for AppleIntelligenceInferenceEvent(0);
}

uint64_t AppleIntelligenceInferenceEvent.internalRequestorBundleIdentifier.getter()
{
  type metadata accessor for AppleIntelligenceInferenceEvent(0);
  OUTLINED_FUNCTION_31_2();
  return OUTLINED_FUNCTION_50();
}

uint64_t AppleIntelligenceInferenceEvent.internalOnBehalfOfBundleIdentifier.getter()
{
  type metadata accessor for AppleIntelligenceInferenceEvent(0);
  OUTLINED_FUNCTION_31_2();
  return OUTLINED_FUNCTION_50();
}

uint64_t AppleIntelligenceInferenceEvent.internalInferenceProviderIdentifier.getter()
{
  type metadata accessor for AppleIntelligenceInferenceEvent(0);
  OUTLINED_FUNCTION_31_2();
  return OUTLINED_FUNCTION_50();
}

uint64_t AppleIntelligenceInferenceEvent.internalAssetBundleIdentifier.getter()
{
  type metadata accessor for AppleIntelligenceInferenceEvent(0);
  OUTLINED_FUNCTION_31_2();
  return OUTLINED_FUNCTION_50();
}

uint64_t AppleIntelligenceInferenceEvent.internalAssets.getter()
{
  type metadata accessor for AppleIntelligenceInferenceEvent(0);
}

uint64_t AppleIntelligenceInferenceEvent.internalMetadata.getter()
{
  v2 = OUTLINED_FUNCTION_35_1();
  result = type metadata accessor for AppleIntelligenceInferenceEvent(v2);
  *v0 = *(v1 + *(result + 72));
  return result;
}

uint64_t AppleIntelligenceInferenceEvent.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000011 && 0x80000001C0CDF3D0 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000019 && 0x80000001C0CDF3F0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000016 && 0x80000001C0CDF410 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000023 && 0x80000001C0CDF430 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001FLL && 0x80000001C0CDF460 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000025 && 0x80000001C0CDF480 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6C616E7265746E69 && a2 == 0xEE0073726F727245;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000019 && 0x80000001C0CDF4B0 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000024 && 0x80000001C0CDF4D0 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000021 && 0x80000001C0CDF500 == a2;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000022 && 0x80000001C0CDF530 == a2;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000023 && 0x80000001C0CDF560 == a2;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD00000000000001DLL && 0x80000001C0CDF590 == a2;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6C616E7265746E69 && a2 == 0xEE00737465737341;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0xD000000000000010 && 0x80000001C0CDF5B0 == a2)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
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
        }
      }
    }
  }
}

unint64_t AppleIntelligenceInferenceEvent.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6C616E7265746E69;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000019;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
    case 11:
      result = 0xD000000000000023;
      break;
    case 4:
      result = 0xD00000000000001FLL;
      break;
    case 5:
      result = 0xD000000000000025;
      break;
    case 6:
    case 13:
      return result;
    case 7:
      result = 0xD000000000000019;
      break;
    case 8:
      result = 0xD000000000000024;
      break;
    case 9:
      result = 0xD000000000000021;
      break;
    case 10:
      result = 0xD000000000000022;
      break;
    case 12:
      result = 0xD00000000000001DLL;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppleIntelligenceInferenceEvent.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppleIntelligenceInferenceEvent.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance AppleIntelligenceInferenceEvent.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = AppleIntelligenceInferenceEvent.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceInferenceEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceInferenceEvent.CodingKeys and conformance AppleIntelligenceInferenceEvent.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceInferenceEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceInferenceEvent.CodingKeys and conformance AppleIntelligenceInferenceEvent.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppleIntelligenceInferenceEvent.encode(to:)()
{
  OUTLINED_FUNCTION_48();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE14InferenceEventV10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE14InferenceEventV10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMR);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_28_0(v5, v5[3]);
  lazy protocol witness table accessor for type AppleIntelligenceInferenceEvent.CodingKeys and conformance AppleIntelligenceInferenceEvent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v24) = 0;
  OUTLINED_FUNCTION_16_2();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v10 = type metadata accessor for AppleIntelligenceInferenceEvent(0);
    LOBYTE(v24) = 1;
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_3_4();
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent and conformance AppleIntelligenceAssetDeliveryEvent(v11);
    OUTLINED_FUNCTION_39_1();
    OUTLINED_FUNCTION_16_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_51_1(v10[6]);
    OUTLINED_FUNCTION_16_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    type metadata accessor for UUIDIdentifier(0);
    OUTLINED_FUNCTION_23_2();
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent and conformance AppleIntelligenceAssetDeliveryEvent(v12);
    OUTLINED_FUNCTION_13_1();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_39_1();
    OUTLINED_FUNCTION_16_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v24) = 5;
    OUTLINED_FUNCTION_39_1();
    OUTLINED_FUNCTION_16_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v29 = *(v3 + v10[10]);
    v28 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGMd, &_sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGMR);
    OUTLINED_FUNCTION_20_2();
    _sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGSayxGSEsSERzlWlTm_1(v13);
    OUTLINED_FUNCTION_13_1();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = (v3 + v10[11]);
    v15 = *v14;
    v16 = v14[2];
    v25 = v14[1];
    v26 = v16;
    v17 = v14[2];
    v27 = v14[3];
    v20 = v15;
    v21 = v25;
    v18 = *v14;
    v22 = v17;
    v23 = v14[3];
    v24 = v18;
    v19[79] = 7;
    outlined init with copy of UUID?(&v24, v19, &_s26AppleIntelligenceReporting0aB7UseCaseVSgMd, &_s26AppleIntelligenceReporting0aB7UseCaseVSgMR);
    lazy protocol witness table accessor for type AppleIntelligenceUseCase and conformance AppleIntelligenceUseCase();
    OUTLINED_FUNCTION_16_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_18_1();
    outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v19, &_s26AppleIntelligenceReporting0aB7UseCaseVSgMd, &_s26AppleIntelligenceReporting0aB7UseCaseVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26AppleIntelligenceReporting0aB7UseCaseVGMd, &_sSay26AppleIntelligenceReporting0aB7UseCaseVGMR);
    lazy protocol witness table accessor for type [AppleIntelligenceUseCase] and conformance <A> [A](&lazy protocol witness table cache variable for type [AppleIntelligenceUseCase] and conformance <A> [A]);
    OUTLINED_FUNCTION_13_1();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    OUTLINED_FUNCTION_51_1(v10[13]);
    OUTLINED_FUNCTION_11_2(9);
    OUTLINED_FUNCTION_51_1(v10[14]);
    OUTLINED_FUNCTION_11_2(10);
    OUTLINED_FUNCTION_51_1(v10[15]);
    OUTLINED_FUNCTION_11_2(11);
    OUTLINED_FUNCTION_51_1(v10[16]);
    OUTLINED_FUNCTION_11_2(12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26AppleIntelligenceReporting0aB5AssetVGMd, &_sSay26AppleIntelligenceReporting0aB5AssetVGMR);
    lazy protocol witness table accessor for type [AppleIntelligenceAsset] and conformance <A> [A](&lazy protocol witness table cache variable for type [AppleIntelligenceAsset] and conformance <A> [A]);
    OUTLINED_FUNCTION_13_1();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    lazy protocol witness table accessor for type AppleIntelligenceReportingMetadata and conformance AppleIntelligenceReportingMetadata();
    OUTLINED_FUNCTION_16_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  (*(v8 + 8))(v2, v6);
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_47();
}

void AppleIntelligenceInferenceEvent.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_48();
  v104 = v23;
  v27 = v26;
  v100 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AppleIntelligenceReporting14UUIDIdentifierVSgMd, &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMR);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_7_2();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = v97 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = v97 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = v97 - v37;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE14InferenceEventV10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE14InferenceEventV10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMR);
  OUTLINED_FUNCTION_1();
  v40 = v39;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_12_0();
  v105 = type metadata accessor for AppleIntelligenceInferenceEvent(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_2();
  v106 = (v44 - v43);
  v103 = v27;
  v45 = OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_28_0(v45, v46);
  lazy protocol witness table accessor for type AppleIntelligenceInferenceEvent.CodingKeys and conformance AppleIntelligenceInferenceEvent.CodingKeys();
  v101 = v25;
  v47 = v104;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v47)
  {
    v104 = v47;
    v50 = 0;
    LODWORD(v51) = 0;
    v52 = 0;
    LODWORD(v53) = 0;
    v54 = 0;
    LODWORD(v55) = 0;
    LODWORD(v56) = 0;
    LODWORD(v100) = 0;
    LODWORD(v101) = 0;
    LODWORD(v102) = 0;
  }

  else
  {
    v48 = v24;
    v104 = v35;
    v98 = v32;
    v99 = v40;
    LOBYTE(v108) = 0;
    v53 = v101;
    v51 = v102;
    v49 = KeyedDecodingContainer.decode(_:forKey:)();
    v55 = v106;
    *v106 = v49;
    v55[1] = v63;
    v64 = type metadata accessor for UUID();
    LOBYTE(v108) = 1;
    OUTLINED_FUNCTION_3_4();
    v52 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent and conformance AppleIntelligenceAssetDeliveryEvent(v65);
    OUTLINED_FUNCTION_55_2();
    v97[1] = v64;
    outlined init with take of UUID?(v38, v55 + v105[5], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    LOBYTE(v108) = 2;
    v66 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v67 = (v55 + v105[6]);
    *v67 = v66;
    v67[1] = v68;
    type metadata accessor for UUIDIdentifier(0);
    LOBYTE(v108) = 3;
    OUTLINED_FUNCTION_23_2();
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent and conformance AppleIntelligenceAssetDeliveryEvent(v69);
    OUTLINED_FUNCTION_47_2();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined init with take of UUID?(v48, v55 + v105[7], &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMd, &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMR);
    LOBYTE(v108) = 4;
    v56 = v104;
    OUTLINED_FUNCTION_55_2();
    outlined init with take of UUID?(v56, v55 + v105[8], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    LOBYTE(v108) = 5;
    v70 = v98;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined init with take of UUID?(v70, v55 + v105[9], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGMd, &_sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGMR);
    LOBYTE(v107) = 6;
    OUTLINED_FUNCTION_26_2();
    _sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGSayxGSEsSERzlWlTm_1(v71);
    OUTLINED_FUNCTION_47_2();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v55 + v105[10]) = v108;
    lazy protocol witness table accessor for type AppleIntelligenceUseCase and conformance AppleIntelligenceUseCase();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v104 = 0;
    v72 = v99;
    v73 = (v55 + v105[11]);
    v74 = v109;
    *v73 = v108;
    v73[1] = v74;
    v75 = v111;
    v73[2] = v110;
    v73[3] = v75;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26AppleIntelligenceReporting0aB7UseCaseVGMd, &_sSay26AppleIntelligenceReporting0aB7UseCaseVGMR);
    lazy protocol witness table accessor for type [AppleIntelligenceUseCase] and conformance <A> [A](&lazy protocol witness table cache variable for type [AppleIntelligenceUseCase] and conformance <A> [A]);
    OUTLINED_FUNCTION_47_2();
    v76 = v104;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v104 = v76;
    if (!v76)
    {
      *(v106 + v105[12]) = v107;
      LOBYTE(v107) = 9;
      v77 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v104 = 0;
      OUTLINED_FUNCTION_63_1(v77, v78, v105[13]);
      v79 = OUTLINED_FUNCTION_37_1(10);
      v104 = 0;
      OUTLINED_FUNCTION_63_1(v79, v80, v105[14]);
      v81 = OUTLINED_FUNCTION_37_1(11);
      v104 = 0;
      OUTLINED_FUNCTION_63_1(v81, v82, v105[15]);
      v83 = OUTLINED_FUNCTION_37_1(12);
      v104 = 0;
      OUTLINED_FUNCTION_63_1(v83, v84, v105[16]);
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26AppleIntelligenceReporting0aB5AssetVGMd, &_sSay26AppleIntelligenceReporting0aB5AssetVGMR);
      lazy protocol witness table accessor for type [AppleIntelligenceAsset] and conformance <A> [A](&lazy protocol witness table cache variable for type [AppleIntelligenceAsset] and conformance <A> [A]);
      LODWORD(v53) = v101;
      v85 = v104;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v104 = v85;
      if (v85)
      {
        v86 = OUTLINED_FUNCTION_10_3();
        v87(v86);
        __swift_destroy_boxed_opaque_existential_1(v103);
        LODWORD(v103) = 0;
        OUTLINED_FUNCTION_0_4();
        OUTLINED_FUNCTION_29_2(v88);
        v57 = 1;
        v50 = 1;
      }

      else
      {
        *(v106 + v105[17]) = v107;
        lazy protocol witness table accessor for type AppleIntelligenceReportingMetadata and conformance AppleIntelligenceReportingMetadata();
        LODWORD(v53) = v101;
        v89 = v104;
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v104 = v89;
        if (!v89)
        {
          v94 = OUTLINED_FUNCTION_10_3();
          v95(v94);
          v96 = v106;
          *(v106 + v105[18]) = v107;
          outlined init with copy of AppleIntelligenceEvent(v96, v100);
          __swift_destroy_boxed_opaque_existential_1(v103);
          outlined destroy of AppleIntelligenceAssetDeliveryEvent(v96, type metadata accessor for AppleIntelligenceInferenceEvent);
          goto LABEL_34;
        }

        v90 = OUTLINED_FUNCTION_10_3();
        v91(v90);
        __swift_destroy_boxed_opaque_existential_1(v103);
        OUTLINED_FUNCTION_0_4();
        OUTLINED_FUNCTION_29_2(v92);
        v57 = 1;
        v50 = 1;
        LODWORD(v103) = v93;
      }

LABEL_6:

      if (v51)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }

    (*(v72 + 8))(v53, v51);
    LODWORD(v101) = 0;
    LODWORD(v102) = 0;
    v50 = 1;
    OUTLINED_FUNCTION_0_4();
  }

  __swift_destroy_boxed_opaque_existential_1(v103);
  if (v50)
  {
    LODWORD(v38) = 0;
    v57 = 0;
    v50 = 0;
    LODWORD(v103) = 0;
    goto LABEL_6;
  }

  LODWORD(v103) = 0;
  v57 = 0;
  LODWORD(v38) = 0;
  if (v51)
  {
LABEL_7:
    v58 = v106;
    outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v106 + v105[5], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if ((v52 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v58 = v106;
  if (!v52)
  {
LABEL_8:
    v59 = v105;
    if (v53)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v59 = v105;
  OUTLINED_FUNCTION_58_1();
  if (v53)
  {
LABEL_9:
    outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v58 + v59[7], &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMd, &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMR);
    if ((v54 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  if (!v54)
  {
LABEL_10:
    if (v55)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v58 + v59[8], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v55)
  {
LABEL_11:
    outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v58 + v59[9], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if ((v56 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  if (!v56)
  {
LABEL_12:
    if (v100)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:

  if (v100)
  {
LABEL_13:
    v60 = (v58 + v59[11]);
    v61 = v60[1];
    v108 = *v60;
    v109 = v61;
    v62 = v60[3];
    v110 = v60[2];
    v111 = v62;
    outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(&v108, &_s26AppleIntelligenceReporting0aB7UseCaseVSgMd, &_s26AppleIntelligenceReporting0aB7UseCaseVSgMR);
    if ((v101 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  if (!v101)
  {
LABEL_14:
    if (v102)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_28:

  if (v102)
  {
LABEL_15:
    OUTLINED_FUNCTION_58_1();
    if ((v38 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

LABEL_29:
  if (!v38)
  {
LABEL_16:
    if (v57)
    {
      goto LABEL_17;
    }

    goto LABEL_31;
  }

LABEL_30:
  OUTLINED_FUNCTION_58_1();
  if (v57)
  {
LABEL_17:
    OUTLINED_FUNCTION_58_1();
    if ((v50 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_31:
  if (!v50)
  {
LABEL_18:
    if (!v103)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_32:
  OUTLINED_FUNCTION_58_1();
  if (v103)
  {
LABEL_33:
  }

LABEL_34:
  OUTLINED_FUNCTION_47();
}

uint64_t AppleIntelligenceAsset.toReportingAsset.getter(uint64_t a1)
{
  AppleIntelligenceReportingAsset.init()();

  AppleIntelligenceReportingAsset.assetIdentifier.setter();

  return AppleIntelligenceReportingAsset.version.setter();
}

uint64_t AppleIntelligenceAsset.description.getter()
{
  v1 = *v0;
  v2 = v0[3];
  if (v2)
  {
    v3 = v0[2];
    v5 = *v0;

    MEMORY[0x1C68E25F0](44, 0xE100000000000000);
    MEMORY[0x1C68E25F0](v3, v2);

    return v5;
  }

  else
  {
  }

  return v1;
}

uint64_t static AppleIntelligenceAsset.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t AppleIntelligenceAsset.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x80000001C0CDF5D0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C616E7265746E69 && a2 == 0xEF6E6F6973726556)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int AppleIntelligenceAsset.CodingKeys.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68E2B10](a1 & 1);
  return Hasher._finalize()();
}

uint64_t AppleIntelligenceAsset.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6C616E7265746E69;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppleIntelligenceAsset.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppleIntelligenceAsset.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAsset.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAsset.CodingKeys and conformance AppleIntelligenceAsset.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAsset.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAsset.CodingKeys and conformance AppleIntelligenceAsset.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppleIntelligenceAsset.encode(to:)()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE5AssetV10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE5AssetV10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMR);
  OUTLINED_FUNCTION_1();
  v7 = v5;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_28_0(v3, v3[3]);
  lazy protocol witness table accessor for type AppleIntelligenceAsset.CodingKeys and conformance AppleIntelligenceAsset.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_39();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  (*(v7 + 8))(v1, v4);
  OUTLINED_FUNCTION_47();
}

void AppleIntelligenceAsset.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_48();
  v24 = v23;
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE5AssetV10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE5AssetV10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_28_0(v24, v24[3]);
  lazy protocol witness table accessor for type AppleIntelligenceAsset.CodingKeys and conformance AppleIntelligenceAsset.CodingKeys();
  OUTLINED_FUNCTION_39_1();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    v28 = KeyedDecodingContainer.decode(_:forKey:)();
    v30 = v29;
    OUTLINED_FUNCTION_77();
    v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v33 = v32;
    v36 = v31;
    v34 = OUTLINED_FUNCTION_50_2();
    v35(v34);
    *v26 = v28;
    v26[1] = v30;
    v26[2] = v36;
    v26[3] = v33;

    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_47();
}

uint64_t AppleIntelligenceUseCase.init(useCaseIdentifier:parameters:mode:locale:countryCode:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 28) = BYTE4(a4) & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceEvent.CodingKeys and conformance AppleIntelligenceEvent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceEvent.CodingKeys and conformance AppleIntelligenceEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceEvent.CodingKeys and conformance AppleIntelligenceEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceEvent.CodingKeys and conformance AppleIntelligenceEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceEvent.CodingKeys and conformance AppleIntelligenceEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceEvent.CodingKeys and conformance AppleIntelligenceEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceEvent.CodingKeys and conformance AppleIntelligenceEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceEvent.CodingKeys and conformance AppleIntelligenceEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceEvent.CodingKeys and conformance AppleIntelligenceEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceEvent.CodingKeys and conformance AppleIntelligenceEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceEvent.CodingKeys and conformance AppleIntelligenceEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceEvent.CodingKeys and conformance AppleIntelligenceEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceEvent.CodingKeys and conformance AppleIntelligenceEvent.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceEvent.AssetDeliveryCodingKeys and conformance AppleIntelligenceEvent.AssetDeliveryCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceEvent.AssetDeliveryCodingKeys and conformance AppleIntelligenceEvent.AssetDeliveryCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceEvent.AssetDeliveryCodingKeys and conformance AppleIntelligenceEvent.AssetDeliveryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceEvent.AssetDeliveryCodingKeys and conformance AppleIntelligenceEvent.AssetDeliveryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceEvent.AssetDeliveryCodingKeys and conformance AppleIntelligenceEvent.AssetDeliveryCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceEvent.AssetDeliveryCodingKeys and conformance AppleIntelligenceEvent.AssetDeliveryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceEvent.AssetDeliveryCodingKeys and conformance AppleIntelligenceEvent.AssetDeliveryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceEvent.AssetDeliveryCodingKeys and conformance AppleIntelligenceEvent.AssetDeliveryCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceEvent.AssetDeliveryCodingKeys and conformance AppleIntelligenceEvent.AssetDeliveryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceEvent.AssetDeliveryCodingKeys and conformance AppleIntelligenceEvent.AssetDeliveryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceEvent.AssetDeliveryCodingKeys and conformance AppleIntelligenceEvent.AssetDeliveryCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceEvent.AssetDeliveryCodingKeys and conformance AppleIntelligenceEvent.AssetDeliveryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceEvent.AssetDeliveryCodingKeys and conformance AppleIntelligenceEvent.AssetDeliveryCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceEvent.InferenceCodingKeys and conformance AppleIntelligenceEvent.InferenceCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceEvent.InferenceCodingKeys and conformance AppleIntelligenceEvent.InferenceCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceEvent.InferenceCodingKeys and conformance AppleIntelligenceEvent.InferenceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceEvent.InferenceCodingKeys and conformance AppleIntelligenceEvent.InferenceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceEvent.InferenceCodingKeys and conformance AppleIntelligenceEvent.InferenceCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceEvent.InferenceCodingKeys and conformance AppleIntelligenceEvent.InferenceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceEvent.InferenceCodingKeys and conformance AppleIntelligenceEvent.InferenceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceEvent.InferenceCodingKeys and conformance AppleIntelligenceEvent.InferenceCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceEvent.InferenceCodingKeys and conformance AppleIntelligenceEvent.InferenceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceEvent.InferenceCodingKeys and conformance AppleIntelligenceEvent.InferenceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceEvent.InferenceCodingKeys and conformance AppleIntelligenceEvent.InferenceCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceEvent.InferenceCodingKeys and conformance AppleIntelligenceEvent.InferenceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceEvent.InferenceCodingKeys and conformance AppleIntelligenceEvent.InferenceCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent and conformance AppleIntelligenceAssetDeliveryEvent(uint64_t a1)
{
  result = OUTLINED_FUNCTION_53_2(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceEvent.MinimalInferenceCodingKeys and conformance AppleIntelligenceEvent.MinimalInferenceCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceEvent.MinimalInferenceCodingKeys and conformance AppleIntelligenceEvent.MinimalInferenceCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceEvent.MinimalInferenceCodingKeys and conformance AppleIntelligenceEvent.MinimalInferenceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceEvent.MinimalInferenceCodingKeys and conformance AppleIntelligenceEvent.MinimalInferenceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceEvent.MinimalInferenceCodingKeys and conformance AppleIntelligenceEvent.MinimalInferenceCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceEvent.MinimalInferenceCodingKeys and conformance AppleIntelligenceEvent.MinimalInferenceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceEvent.MinimalInferenceCodingKeys and conformance AppleIntelligenceEvent.MinimalInferenceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceEvent.MinimalInferenceCodingKeys and conformance AppleIntelligenceEvent.MinimalInferenceCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceEvent.MinimalInferenceCodingKeys and conformance AppleIntelligenceEvent.MinimalInferenceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceEvent.MinimalInferenceCodingKeys and conformance AppleIntelligenceEvent.MinimalInferenceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceEvent.MinimalInferenceCodingKeys and conformance AppleIntelligenceEvent.MinimalInferenceCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceEvent.MinimalInferenceCodingKeys and conformance AppleIntelligenceEvent.MinimalInferenceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceEvent.MinimalInferenceCodingKeys and conformance AppleIntelligenceEvent.MinimalInferenceCodingKeys);
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in AppleIntelligenceUseCase.toReportingUseCase.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  AppleIntelligenceReportingAsset.assetIdentifier.setter();

  return AppleIntelligenceReportingAsset.version.setter();
}

BOOL static AppleIntelligenceUseCase.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a1 + 6);
  v4 = *(a1 + 28);
  v5 = a1[4];
  v6 = a1[5];
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 28);
  v11 = *(a2 + 32);
  v10 = *(a2 + 40);
  v12 = *a1 == *a2 && a1[1] == *(a2 + 8);
  v17 = *(a2 + 48);
  v18 = a1[6];
  v19 = *(a2 + 56);
  v20 = a1[7];
  if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(v2, v7) & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == v8)
    {
      v13 = v9;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v10)
    {
      return 0;
    }

    v14 = v5 == v11 && v6 == v10;
    if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v20)
  {
    if (!v19)
    {
      return 0;
    }

    v15 = v18 == v17 && v20 == v19;
    return v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
  }

  return !v19;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = result;
    v14 = (*(result + 48) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + 16 * v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t AppleIntelligenceUseCase.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000019 && 0x80000001C0CDF4B0 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001C0CDF5F0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C616E7265746E69 && a2 == 0xEC00000065646F4DLL;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6C616E7265746E69 && a2 == 0xEE00656C61636F4CLL;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000013 && 0x80000001C0CDF610 == a2)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t AppleIntelligenceUseCase.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6C616E7265746E69;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
    case 3:
      return result;
    case 4:
      result = 0xD000000000000013;
      break;
    default:
      result = 0xD000000000000019;
      break;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppleIntelligenceUseCase.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppleIntelligenceUseCase.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance AppleIntelligenceUseCase.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = AppleIntelligenceUseCase.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceUseCase.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceUseCase.CodingKeys and conformance AppleIntelligenceUseCase.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceUseCase.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceUseCase.CodingKeys and conformance AppleIntelligenceUseCase.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppleIntelligenceUseCase.encode(to:)()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE7UseCaseV10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE7UseCaseV10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMR);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_28_0(v3, v3[3]);
  lazy protocol witness table accessor for type AppleIntelligenceUseCase.CodingKeys and conformance AppleIntelligenceUseCase.CodingKeys();
  OUTLINED_FUNCTION_39_1();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    OUTLINED_FUNCTION_77();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    _sSDyS2SGSDyxq_GSEsSERzSER_rlWlTm_0(&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_47();
}

void AppleIntelligenceUseCase.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_48();
  v27 = v26;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE7UseCaseV10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE7UseCaseV10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMR);
  OUTLINED_FUNCTION_1();
  v32 = v31;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_28_0(v27, v27[3]);
  lazy protocol witness table accessor for type AppleIntelligenceUseCase.CodingKeys and conformance AppleIntelligenceUseCase.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    LOBYTE(v53[0]) = 0;
    OUTLINED_FUNCTION_41_2();
    v34 = KeyedDecodingContainer.decode(_:forKey:)();
    v48 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    LOBYTE(v49) = 1;
    _sSDyS2SGSDyxq_GSEsSERzSER_rlWlTm_0(&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
    OUTLINED_FUNCTION_28_2();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v47 = v53[0];
    OUTLINED_FUNCTION_41_2();
    v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v60 = BYTE4(v36) & 1;
    LOBYTE(v53[0]) = 3;
    v45 = v36;
    OUTLINED_FUNCTION_41_2();
    v44 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v46 = v37;
    OUTLINED_FUNCTION_41_2();
    v38 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v39 = v25;
    v41 = v40;
    (*(v32 + 8))(v39, v30);
    *&v49 = v34;
    *(&v49 + 1) = v48;
    *&v50 = v47;
    DWORD2(v50) = v45;
    BYTE12(v50) = v60;
    *&v51 = v44;
    *(&v51 + 1) = v46;
    *&v52 = v38;
    *(&v52 + 1) = v41;
    v42 = v52;
    v29[2] = v51;
    v29[3] = v42;
    v43 = v50;
    *v29 = v49;
    v29[1] = v43;
    outlined init with copy of AppleIntelligenceUseCase(&v49, v53);
    __swift_destroy_boxed_opaque_existential_1(v27);
    v53[0] = v34;
    v53[1] = v48;
    v53[2] = v47;
    v54 = v45;
    v55 = v60;
    v56 = v44;
    v57 = v46;
    v58 = v38;
    v59 = v41;
    outlined destroy of AppleIntelligenceUseCase(v53);
  }

  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_47();
}

uint64_t AppleIntelligenceReportingMetadata.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6669636570736E75 && a2 == 0xEB00000000646569)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppleIntelligenceReportingMetadata.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppleIntelligenceReportingMetadata.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceReportingMetadata.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceReportingMetadata.CodingKeys and conformance AppleIntelligenceReportingMetadata.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceReportingMetadata.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceReportingMetadata.CodingKeys and conformance AppleIntelligenceReportingMetadata.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys and conformance AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys and conformance AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppleIntelligenceReportingMetadata.encode(to:)()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0deF8MetadataO21UnspecifiedCodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0deF8MetadataO21UnspecifiedCodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMR);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0deF8MetadataO10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0deF8MetadataO10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_28_0(v2, v2[3]);
  lazy protocol witness table accessor for type AppleIntelligenceReportingMetadata.CodingKeys and conformance AppleIntelligenceReportingMetadata.CodingKeys();
  OUTLINED_FUNCTION_39_1();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys and conformance AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v5 + 8))(v0, v3);
  v8 = OUTLINED_FUNCTION_50_2();
  v9(v8);
  OUTLINED_FUNCTION_47();
}

Swift::Int AppleIntelligenceReportingMetadata.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68E2B10](0);
  return Hasher._finalize()();
}

void AppleIntelligenceReportingMetadata.init(from:)()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0deF8MetadataO21UnspecifiedCodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0deF8MetadataO21UnspecifiedCodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMR);
  OUTLINED_FUNCTION_1();
  v35 = v5;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_20();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0deF8MetadataO10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0deF8MetadataO10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMR);
  OUTLINED_FUNCTION_1();
  v36 = v8;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  OUTLINED_FUNCTION_28_0(v3, v3[3]);
  lazy protocol witness table accessor for type AppleIntelligenceReportingMetadata.CodingKeys and conformance AppleIntelligenceReportingMetadata.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_9;
  }

  v33 = v0;
  v34 = v3;
  v12 = KeyedDecodingContainer.allKeys.getter();
  _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC26AppleIntelligenceReporting0jK18AssetDeliveryEventV29ModelCatalogSubscriptionStateV0R6ActionO10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLO_Tt1g5(v12, 0);
  v16 = v11;
  if (v14 == v15 >> 1)
  {
    v35 = v13;
LABEL_8:
    v26 = v7;
    v27 = type metadata accessor for DecodingError();
    swift_allocError();
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v29 = &type metadata for AppleIntelligenceReportingMetadata;
    v30 = KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_65(v30);
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6AF8], v27);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v36 + 8))(v16, v26);
    v3 = v34;
LABEL_9:
    v31 = v3;
    goto LABEL_10;
  }

  if (v14 < (v15 >> 1))
  {
    v17 = specialized ArraySlice.subscript.getter();
    v19 = v18;
    v21 = v20;
    swift_unknownObjectRelease();
    v22 = v19 == v21 >> 1;
    v23 = v34;
    v24 = v35;
    if (v22)
    {
      lazy protocol witness table accessor for type AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys and conformance AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys();
      v25 = v33;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_unknownObjectRelease();
      (*(v24 + 8))(v25, v4);
      (*(v36 + 8))(v16, v7);
      v31 = v23;
LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v31);
      OUTLINED_FUNCTION_47();
      return;
    }

    v35 = v17;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t MinimalInferenceEvent.internalModelManagerRequestIdentifier.getter()
{
  v0 = OUTLINED_FUNCTION_35_1();
  v1 = type metadata accessor for MinimalInferenceEvent(v0);
  return OUTLINED_FUNCTION_57_0(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR, *(v1 + 24));
}

uint64_t MinimalInferenceEvent.internalErrors.getter()
{
  type metadata accessor for MinimalInferenceEvent(0);
}

uint64_t MinimalInferenceEvent.init(subsystem:stepIdentifier:modelManagerRequestIdentifier:errors:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  v10 = type metadata accessor for MinimalInferenceEvent(0);
  outlined init with copy of UUID?(a5, a7 + *(v10 + 24), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = *(a6 + 16);
  if (v11)
  {
    v16 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v12 = a6 + 32;
    do
    {
      outlined init with copy of any Source<Self.Stream == A>(v12, v15);
      __swift_project_boxed_opaque_existential_1(v15, v15[3]);
      AppleIntelligenceError.toGeneral.getter();
      __swift_destroy_boxed_opaque_existential_1(v15);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v12 += 40;
      --v11;
    }

    while (v11);
    outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(a5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

    v14 = v16;
  }

  else
  {

    result = outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(a5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v14 = MEMORY[0x1E69E7CC0];
  }

  *(a7 + *(v10 + 28)) = v14;
  return result;
}

uint64_t MinimalInferenceEvent.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001C0CDF3D0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x80000001C0CDF410 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000025 && 0x80000001C0CDF480 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6C616E7265746E69 && a2 == 0xEE0073726F727245)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t MinimalInferenceEvent.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6C616E7265746E69;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD000000000000025;
      break;
    case 3:
      return result;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MinimalInferenceEvent.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MinimalInferenceEvent.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MinimalInferenceEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MinimalInferenceEvent.CodingKeys and conformance MinimalInferenceEvent.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MinimalInferenceEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MinimalInferenceEvent.CodingKeys and conformance MinimalInferenceEvent.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MinimalInferenceEvent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting21MinimalInferenceEventV10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting21MinimalInferenceEventV10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMR);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_28_0(a1, a1[3]);
  lazy protocol witness table accessor for type MinimalInferenceEvent.CodingKeys and conformance MinimalInferenceEvent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_39();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    type metadata accessor for MinimalInferenceEvent(0);
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_3_4();
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent and conformance AppleIntelligenceAssetDeliveryEvent(v8);
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGMd, &_sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGMR);
    OUTLINED_FUNCTION_20_2();
    _sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGSayxGSEsSERzlWlTm_1(v9);
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v2, v4);
}

void MinimalInferenceEvent.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_48();
  v25 = v24;
  v43 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting21MinimalInferenceEventV10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting21MinimalInferenceEventV10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_12_0();
  v29 = type metadata accessor for MinimalInferenceEvent(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_2();
  v33 = (v32 - v31);
  v34 = OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_28_0(v34, v35);
  lazy protocol witness table accessor for type MinimalInferenceEvent.CodingKeys and conformance MinimalInferenceEvent.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    OUTLINED_FUNCTION_41_2();
    *v33 = KeyedDecodingContainer.decode(_:forKey:)();
    v33[1] = v36;
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_41_2();
    v33[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v33[3] = v37;
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_3_4();
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent and conformance AppleIntelligenceAssetDeliveryEvent(v38);
    OUTLINED_FUNCTION_28_2();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined init with take of UUID?(v22, v33 + *(v29 + 24), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGMd, &_sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGMR);
    OUTLINED_FUNCTION_26_2();
    _sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGSayxGSEsSERzlWlTm_1(v39);
    OUTLINED_FUNCTION_28_2();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v40 = OUTLINED_FUNCTION_17_2();
    v41(v40);
    *(v33 + *(v29 + 28)) = v44;
    outlined init with copy of AppleIntelligenceEvent(v33, v43);
    __swift_destroy_boxed_opaque_existential_1(v25);
    OUTLINED_FUNCTION_21_1();
    outlined destroy of AppleIntelligenceAssetDeliveryEvent(v33, v42);
  }

  OUTLINED_FUNCTION_47();
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceInferenceEvent.CodingKeys and conformance AppleIntelligenceInferenceEvent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceInferenceEvent.CodingKeys and conformance AppleIntelligenceInferenceEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceInferenceEvent.CodingKeys and conformance AppleIntelligenceInferenceEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceInferenceEvent.CodingKeys and conformance AppleIntelligenceInferenceEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceInferenceEvent.CodingKeys and conformance AppleIntelligenceInferenceEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceInferenceEvent.CodingKeys and conformance AppleIntelligenceInferenceEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceInferenceEvent.CodingKeys and conformance AppleIntelligenceInferenceEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceInferenceEvent.CodingKeys and conformance AppleIntelligenceInferenceEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceInferenceEvent.CodingKeys and conformance AppleIntelligenceInferenceEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceInferenceEvent.CodingKeys and conformance AppleIntelligenceInferenceEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceInferenceEvent.CodingKeys and conformance AppleIntelligenceInferenceEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceInferenceEvent.CodingKeys and conformance AppleIntelligenceInferenceEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceInferenceEvent.CodingKeys and conformance AppleIntelligenceInferenceEvent.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [AppleIntelligenceAsset] and conformance <A> [A](uint64_t a1)
{
  result = OUTLINED_FUNCTION_53_2(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay26AppleIntelligenceReporting0aB5AssetVGMd, &_sSay26AppleIntelligenceReporting0aB5AssetVGMR);
    v4();
    OUTLINED_FUNCTION_106();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAsset and conformance AppleIntelligenceAsset()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAsset and conformance AppleIntelligenceAsset;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAsset and conformance AppleIntelligenceAsset)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAsset and conformance AppleIntelligenceAsset);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAsset and conformance AppleIntelligenceAsset;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAsset and conformance AppleIntelligenceAsset)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAsset and conformance AppleIntelligenceAsset);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceReportingMetadata and conformance AppleIntelligenceReportingMetadata()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata and conformance AppleIntelligenceReportingMetadata;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata and conformance AppleIntelligenceReportingMetadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata and conformance AppleIntelligenceReportingMetadata);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata and conformance AppleIntelligenceReportingMetadata;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata and conformance AppleIntelligenceReportingMetadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata and conformance AppleIntelligenceReportingMetadata);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata and conformance AppleIntelligenceReportingMetadata;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata and conformance AppleIntelligenceReportingMetadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata and conformance AppleIntelligenceReportingMetadata);
  }

  return result;
}

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_66_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_9();
  v5 = OUTLINED_FUNCTION_50();
  v6(v5);
  return v4;
}

unint64_t _sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGSayxGSEsSERzlWlTm_1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_53_2(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGMd, &_sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGMR);
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent and conformance AppleIntelligenceAssetDeliveryEvent(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [AppleIntelligenceUseCase] and conformance <A> [A](uint64_t a1)
{
  result = OUTLINED_FUNCTION_53_2(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay26AppleIntelligenceReporting0aB7UseCaseVGMd, &_sSay26AppleIntelligenceReporting0aB7UseCaseVGMR);
    v4();
    OUTLINED_FUNCTION_106();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAsset.CodingKeys and conformance AppleIntelligenceAsset.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAsset.CodingKeys and conformance AppleIntelligenceAsset.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAsset.CodingKeys and conformance AppleIntelligenceAsset.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAsset.CodingKeys and conformance AppleIntelligenceAsset.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAsset.CodingKeys and conformance AppleIntelligenceAsset.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAsset.CodingKeys and conformance AppleIntelligenceAsset.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAsset.CodingKeys and conformance AppleIntelligenceAsset.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAsset.CodingKeys and conformance AppleIntelligenceAsset.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAsset.CodingKeys and conformance AppleIntelligenceAsset.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAsset.CodingKeys and conformance AppleIntelligenceAsset.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAsset.CodingKeys and conformance AppleIntelligenceAsset.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAsset.CodingKeys and conformance AppleIntelligenceAsset.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAsset.CodingKeys and conformance AppleIntelligenceAsset.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceUseCase.CodingKeys and conformance AppleIntelligenceUseCase.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceUseCase.CodingKeys and conformance AppleIntelligenceUseCase.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceUseCase.CodingKeys and conformance AppleIntelligenceUseCase.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceUseCase.CodingKeys and conformance AppleIntelligenceUseCase.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceUseCase.CodingKeys and conformance AppleIntelligenceUseCase.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceUseCase.CodingKeys and conformance AppleIntelligenceUseCase.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceUseCase.CodingKeys and conformance AppleIntelligenceUseCase.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceUseCase.CodingKeys and conformance AppleIntelligenceUseCase.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceUseCase.CodingKeys and conformance AppleIntelligenceUseCase.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceUseCase.CodingKeys and conformance AppleIntelligenceUseCase.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceUseCase.CodingKeys and conformance AppleIntelligenceUseCase.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceUseCase.CodingKeys and conformance AppleIntelligenceUseCase.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceUseCase.CodingKeys and conformance AppleIntelligenceUseCase.CodingKeys);
  }

  return result;
}

unint64_t _sSDyS2SGSDyxq_GSEsSERzSER_rlWlTm_0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_53_2(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceReportingMetadata.CodingKeys and conformance AppleIntelligenceReportingMetadata.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata.CodingKeys and conformance AppleIntelligenceReportingMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata.CodingKeys and conformance AppleIntelligenceReportingMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata.CodingKeys and conformance AppleIntelligenceReportingMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata.CodingKeys and conformance AppleIntelligenceReportingMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata.CodingKeys and conformance AppleIntelligenceReportingMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata.CodingKeys and conformance AppleIntelligenceReportingMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata.CodingKeys and conformance AppleIntelligenceReportingMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata.CodingKeys and conformance AppleIntelligenceReportingMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata.CodingKeys and conformance AppleIntelligenceReportingMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata.CodingKeys and conformance AppleIntelligenceReportingMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata.CodingKeys and conformance AppleIntelligenceReportingMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata.CodingKeys and conformance AppleIntelligenceReportingMetadata.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys and conformance AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys and conformance AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys and conformance AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys and conformance AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys and conformance AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys and conformance AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys and conformance AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys and conformance AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys and conformance AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys and conformance AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MinimalInferenceEvent.CodingKeys and conformance MinimalInferenceEvent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MinimalInferenceEvent.CodingKeys and conformance MinimalInferenceEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type MinimalInferenceEvent.CodingKeys and conformance MinimalInferenceEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MinimalInferenceEvent.CodingKeys and conformance MinimalInferenceEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MinimalInferenceEvent.CodingKeys and conformance MinimalInferenceEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type MinimalInferenceEvent.CodingKeys and conformance MinimalInferenceEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MinimalInferenceEvent.CodingKeys and conformance MinimalInferenceEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MinimalInferenceEvent.CodingKeys and conformance MinimalInferenceEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type MinimalInferenceEvent.CodingKeys and conformance MinimalInferenceEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MinimalInferenceEvent.CodingKeys and conformance MinimalInferenceEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MinimalInferenceEvent.CodingKeys and conformance MinimalInferenceEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type MinimalInferenceEvent.CodingKeys and conformance MinimalInferenceEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MinimalInferenceEvent.CodingKeys and conformance MinimalInferenceEvent.CodingKeys);
  }

  return result;
}

uint64_t type metadata completion function for AppleIntelligenceEvent(uint64_t a1)
{
  result = type metadata accessor for MinimalInferenceEvent(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AppleIntelligenceInferenceEvent(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for AppleIntelligenceAssetDeliveryEvent(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata completion function for AppleIntelligenceInferenceEvent(uint64_t a1)
{
  type metadata accessor for UUID?(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      type metadata accessor for UUID?(319, &lazy cache variable for type metadata for UUIDIdentifier?, type metadata accessor for UUIDIdentifier, MEMORY[0x1E69E6720]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        type metadata accessor for UUID?(319, &lazy cache variable for type metadata for [GeneralAppleIntelligenceError], type metadata accessor for GeneralAppleIntelligenceError, MEMORY[0x1E69E62F8]);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          type metadata accessor for String?(319, &lazy cache variable for type metadata for AppleIntelligenceUseCase?, &type metadata for AppleIntelligenceUseCase, MEMORY[0x1E69E6720]);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            type metadata accessor for String?(319, &lazy cache variable for type metadata for [AppleIntelligenceUseCase], &type metadata for AppleIntelligenceUseCase, MEMORY[0x1E69E62F8]);
            v2 = v12;
            if (v13 <= 0x3F)
            {
              type metadata accessor for String?(319, &lazy cache variable for type metadata for [AppleIntelligenceAsset], &type metadata for AppleIntelligenceAsset, MEMORY[0x1E69E62F8]);
              v2 = v14;
              if (v15 <= 0x3F)
              {
                type metadata accessor for String?(319, &lazy cache variable for type metadata for AppleIntelligenceReportingMetadata?, &type metadata for AppleIntelligenceReportingMetadata, MEMORY[0x1E69E6720]);
                v2 = v16;
                if (v17 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

void type metadata accessor for UUID?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for String?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata completion function for MinimalInferenceEvent(uint64_t a1)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID?(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UUID?(319, &lazy cache variable for type metadata for [GeneralAppleIntelligenceError], type metadata accessor for GeneralAppleIntelligenceError, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for MinimalInferenceEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MinimalInferenceEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleIntelligenceUseCase.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for AppleIntelligenceUseCase.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AppleIntelligenceAsset.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AppleIntelligenceAsset.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AppleIntelligenceInferenceEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AppleIntelligenceInferenceEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleIntelligenceEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AppleIntelligenceEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

void OUTLINED_FUNCTION_5_4()
{
  *(v0 - 224) = 0;
  *(v0 - 216) = 0;
  *(v0 - 208) = 0;
}

void OUTLINED_FUNCTION_6_4()
{
  *(v0 - 224) = 0;
  *(v0 - 216) = 0;
  *(v0 - 208) = 0;
}

__n128 OUTLINED_FUNCTION_18_1()
{
  v2 = *(v1 - 224);
  *(v1 - 320) = *(v1 - 240);
  *(v1 - 304) = v2;
  result = *(v1 - 208);
  v4 = *(v0 + 48);
  *(v1 - 288) = result;
  *(v1 - 272) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_37_1@<X0>(char a1@<W8>)
{
  *(v1 - 168) = a1;

  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_49_2()
{
  v1 = *(v0 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_54_2(uint64_t a1)
{

  return outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(a1, v1, v2);
}

void *OUTLINED_FUNCTION_55_2()
{

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_56_1(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_57_0@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return outlined init with copy of UUID?(v4 + a3, v3, a1, a2);
}

uint64_t OUTLINED_FUNCTION_58_1()
{
}

uint64_t OUTLINED_FUNCTION_63_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_66_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t specialized AppleIntelligenceError.description.getter()
{
  v0 = AppleIntelligenceReportingError.descriptionWithoutUnderlying.getter();
  v2 = v1;
  v3 = *(AppleIntelligenceReportingError.underlyingErrors.getter() + 16);

  if (!v3)
  {
    v8 = 0;
    v7 = 0xE000000000000000;
    goto LABEL_5;
  }

  v11 = 14906;
  v12 = 0xE200000000000000;
  v4 = AppleIntelligenceReportingError.underlyingErrors.getter();
  specialized Collection.first.getter(v4, v9);

  if (v10)
  {
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1C68E25F0](v6);

    __swift_destroy_boxed_opaque_existential_1(v9);
    v8 = v11;
    v7 = v12;
LABEL_5:
    v9[0] = v0;
    v9[1] = v2;

    MEMORY[0x1C68E25F0](v8, v7);

    return v9[0];
  }

  __break(1u);
  return result;
}

uint64_t specialized AppleIntelligenceError.errorDescription.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t AppleIntelligenceReportingError.rawCode.getter()
{
  outlined init with copy of AppleIntelligenceReportingError(v0, v3);
  result = 4001;
  v2 = 4002;
  switch(v3[40])
  {
    case 1:
      v2 = 4003;
      goto LABEL_4;
    case 2:
      v2 = 4004;
      goto LABEL_4;
    case 3:
      return result;
    default:
LABEL_4:
      outlined destroy of AppleIntelligenceReportingError(v3);
      return v2;
  }
}

unint64_t AppleIntelligenceReportingError.descriptionWithoutUnderlying.getter()
{
  outlined init with copy of AppleIntelligenceReportingError(v1, v7);
  switch(v7[40])
  {
    case 1:
      outlined destroy of AppleIntelligenceReportingError(v7);
      result = 0xD000000000000035;
      break;
    case 2:
      OUTLINED_FUNCTION_1_4();
      _StringGuts.grow(_:)(39);

      OUTLINED_FUNCTION_0_5();
      v3 = v4 + 21;
      goto LABEL_4;
    case 3:
      result = 0xD000000000000018;
      break;
    default:
      OUTLINED_FUNCTION_1_4();
      _StringGuts.grow(_:)(18);

      OUTLINED_FUNCTION_0_5();
LABEL_4:
      v6 = v3;
      MEMORY[0x1C68E25F0](v0, v2);

      result = v6;
      break;
  }

  return result;
}

uint64_t AppleIntelligenceReportingError.underlyingErrors.getter()
{
  outlined init with copy of AppleIntelligenceReportingError(v0, v4);
  switch(v5)
  {
    case 1:
      outlined init with take of any Source<Self.Stream == A>(v4, v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26AppleIntelligenceReporting0dE5Error_pGMd, &_ss23_ContiguousArrayStorageCy26AppleIntelligenceReporting0dE5Error_pGMR);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1C0CDE720;
      outlined init with take of any Source<Self.Stream == A>(v3, v1 + 32);
      break;
    case 3:
      goto LABEL_3;
    default:
      outlined destroy of AppleIntelligenceReportingError(v4);
LABEL_3:
      v1 = MEMORY[0x1E69E7CC0];
      break;
  }

  return v1;
}

uint64_t AppleIntelligenceReportingError.category.getter@<X0>(char *a1@<X8>)
{
  result = outlined init with copy of AppleIntelligenceReportingError(v1, v5);
  v4 = 20;
  if (v6 < 2u)
  {
    goto LABEL_4;
  }

  if (v6 == 2)
  {
    v4 = 5;
LABEL_4:
    result = outlined destroy of AppleIntelligenceReportingError(v5);
  }

  *a1 = v4;
  return result;
}

uint64_t protocol witness for Error._domain.getter in conformance AppleIntelligenceReportingError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance AppleIntelligenceReportingError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t instantiation function for generic protocol witness table for AppleIntelligenceReportingError(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError();
  a1[2] = lazy protocol witness table accessor for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError();
  result = lazy protocol witness table accessor for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError();
  a1[3] = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_26AppleIntelligenceReporting0abC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 40) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AppleIntelligenceReportingError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AppleIntelligenceReportingError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for AppleIntelligenceReportingError(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t EventReporter.__allocating_init()()
{
  type metadata accessor for BiomeEventReporter();
  swift_allocObject();
  v0 = BiomeEventReporter.init(user:)(0x100000000uLL);
  type metadata accessor for BiomeEventReporterGenerator();
  v1 = swift_allocObject();
  v2 = swift_allocObject();
  return specialized EventReporter.init(biomeEventReporter:biomeEventReporterGenerator:)(v0, v1, v2);
}

uint64_t specialized EventReporter.init(biomeEventReporter:biomeEventReporterGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[3] = type metadata accessor for BiomeEventReporter();
  v9[4] = &protocol witness table for BiomeEventReporter;
  v9[0] = a1;
  v8[3] = type metadata accessor for BiomeEventReporterGenerator();
  v8[4] = &protocol witness table for BiomeEventReporterGenerator;
  v8[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AppleIntelligenceReporting010BiomeEventC0_pMd, &_s26AppleIntelligenceReporting010BiomeEventC0_pMR);
  v6 = Dictionary.init(dictionaryLiteral:)();
  *(a3 + 96) = v6;
  outlined init with copy of any Source<Self.Stream == A>(v9, a3 + 16);
  outlined init with copy of any Source<Self.Stream == A>(v8, a3 + 56);

  __swift_destroy_boxed_opaque_existential_1(v8);
  __swift_destroy_boxed_opaque_existential_1(v9);
  *(a3 + 104) = 0;
  *(a3 + 112) = v6;
  return a3;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    outlined init with take of any Source<Self.Stream == A>(a1, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v11;
  }

  else
  {
    outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(a1, &_s26AppleIntelligenceReporting010BiomeEventC0_pSgMd, &_s26AppleIntelligenceReporting010BiomeEventC0_pSgMR);
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v7)
    {
      v8 = v6;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v10 = *(*v2 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVys6UInt32V26AppleIntelligenceReporting010BiomeEventF0_pGMd, &_ss17_NativeDictionaryVys6UInt32V26AppleIntelligenceReporting010BiomeEventF0_pGMR);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v9, v10);
      outlined init with take of any Source<Self.Stream == A>((*(v12 + 56) + 40 * v8), v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AppleIntelligenceReporting010BiomeEventC0_pMd, &_s26AppleIntelligenceReporting010BiomeEventC0_pMR);
      _NativeDictionary._delete(at:)();
      *v2 = v12;
    }

    else
    {
      v14 = 0;
      memset(v13, 0, sizeof(v13));
    }

    return outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v13, &_s26AppleIntelligenceReporting010BiomeEventC0_pSgMd, &_s26AppleIntelligenceReporting010BiomeEventC0_pSgMR);
  }

  return result;
}

uint64_t EventReporter.userBiomeEventReporters.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 96) = a1;
}

uint64_t EventReporter.__allocating_init(biomeEventReporter:biomeEventReporterGenerator:)(void *a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = v3;
  v9 = a1[3];
  v8 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  v13 = v12 - v11;
  (*(v14 + 16))(v12 - v11);
  v15 = a2[3];
  v16 = a2[4];
  __swift_mutable_project_boxed_opaque_existential_1(a2, v15);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2();
  v20 = v19 - v18;
  (*(v21 + 16))(v19 - v18);
  v22 = a3(v13, v20, v5, v9, v15, v8, v16);
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v22;
}

void EventReporter.getBiomeEventReporter(for:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  os_unfair_lock_lock((v2 + 104));
  _s26AppleIntelligenceReporting13EventReporterC08getBiomedE03forAA0gdC0_pAA0abD0O_tFAaF_pSDys6UInt32VAaF_pGzYuYTXEfU_(a1, v2, a2);

  os_unfair_lock_unlock((v2 + 104));
}

uint64_t _s26AppleIntelligenceReporting13EventReporterC08getBiomedE03forAA0gdC0_pAA0abD0O_tFAaF_pSDys6UInt32VAaF_pGzYuYTXEfU_@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AppleIntelligenceAssetDeliveryEvent(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AppleIntelligenceEvent(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AppleIntelligenceEvent(a1, v11);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    outlined init with copy of any Source<Self.Stream == A>((a2 + 2), a3);
    v13 = type metadata accessor for AppleIntelligenceEvent;
    v14 = v11;
    return outlined destroy of UUIDIdentifier(v14, v13);
  }

  outlined init with take of AppleIntelligenceEvent(v11, v8, type metadata accessor for AppleIntelligenceAssetDeliveryEvent);
  if (v8[132] == 1)
  {
    outlined destroy of UUIDIdentifier(v8, type metadata accessor for AppleIntelligenceAssetDeliveryEvent);
    return outlined init with copy of any Source<Self.Stream == A>((a2 + 2), a3);
  }

  v15 = *(v8 + 32);
  swift_beginAccess();
  specialized Dictionary.subscript.getter(v15, a2[12], &v27);
  if (!v28)
  {
    outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(&v27, &_s26AppleIntelligenceReporting010BiomeEventC0_pSgMd, &_s26AppleIntelligenceReporting010BiomeEventC0_pSgMR);
    swift_endAccess();
    if (one-time initialization token for general != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logging.general);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 67109120;
      *(v23 + 4) = v15;
      _os_log_impl(&dword_1C0C94000, v21, v22, "No reporter for user %u. Creating one.", v23, 8u);
      MEMORY[0x1C68E2FD0](v23, -1, -1);
    }

    v24 = a2[10];
    v25 = a2[11];
    __swift_project_boxed_opaque_existential_1(a2 + 7, v24);
    (*(v25 + 8))(v15, v24, v25);
    outlined init with copy of any Source<Self.Stream == A>(a3, v29);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v29, v15);
    swift_endAccess();
    v13 = type metadata accessor for AppleIntelligenceAssetDeliveryEvent;
    v14 = v8;
    return outlined destroy of UUIDIdentifier(v14, v13);
  }

  outlined init with take of any Source<Self.Stream == A>(&v27, v29);
  swift_endAccess();
  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logging.general);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67109120;
    *(v19 + 4) = v15;
    _os_log_impl(&dword_1C0C94000, v17, v18, "Found existing reporter for %u.", v19, 8u);
    MEMORY[0x1C68E2FD0](v19, -1, -1);
  }

  outlined destroy of UUIDIdentifier(v8, type metadata accessor for AppleIntelligenceAssetDeliveryEvent);
  return outlined init with take of any Source<Self.Stream == A>(v29, a3);
}

double specialized Dictionary.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    outlined init with copy of any Source<Self.Stream == A>(*(a2 + 56) + 40 * v5, a3);
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t EventReporter.emitAppleIntelligenceIntervalEvent<A>(eventInfo:_:)()
{
  OUTLINED_FUNCTION_36_2();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = type metadata accessor for AppleIntelligenceEvent(0);
  OUTLINED_FUNCTION_4_4(v6);
  v1[7] = v7;
  v1[8] = *(v8 + 64);
  v1[9] = OUTLINED_FUNCTION_34_2();
  v9 = type metadata accessor for UUIDIdentifier(0);
  OUTLINED_FUNCTION_29(v9);
  v1[10] = OUTLINED_FUNCTION_34_2();
  v10 = type metadata accessor for UUID();
  v1[11] = v10;
  OUTLINED_FUNCTION_4_4(v10);
  v1[12] = v11;
  v1[13] = *(v12 + 64);
  v1[14] = OUTLINED_FUNCTION_41_3();
  v1[15] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_16_3();

  return MEMORY[0x1EEE6DFA0](v13);
}

{
  OUTLINED_FUNCTION_36_2();
  v2 = *v1;
  OUTLINED_FUNCTION_33_1();
  *v3 = v2;
  *(v4 + 168) = v0;

  if (v0)
  {
    v5 = EventReporter.emitAppleIntelligenceIntervalEvent<A>(eventInfo:_:);
  }

  else
  {
    v5 = EventReporter.emitAppleIntelligenceIntervalEvent<A>(eventInfo:_:);
  }

  return MEMORY[0x1EEE6DFA0](v5);
}

uint64_t EventReporter.emitAppleIntelligenceIntervalEvent<A>(eventInfo:_:)(double a1)
{
  v4 = *(v2 + 96);
  v5 = *(v2 + 88);
  v6 = *(v2 + 72);
  v31 = *(v2 + 112);
  v32 = *(v2 + 64);
  v7 = *(v2 + 56);
  OUTLINED_FUNCTION_53_3(a1);
  OUTLINED_FUNCTION_47_3();
  *(v2 + 128) = v1;
  *(v2 + 136) = v8;
  v9 = OUTLINED_FUNCTION_48_2();
  v1(v9);
  v10 = outlined init with copy of AppleIntelligenceEvent(v3, v6);
  v11 = *(v4 + 16);
  v4 += 16;
  *(v2 + 144) = v11;
  *(v2 + 152) = v4 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v19 = OUTLINED_FUNCTION_43_2(v10, v12, v13, v14, v15, v16, v17, v18, v31);
  v20(v19);
  v21 = *(v7 + 80);
  *(v2 + 176) = v21;
  v22 = (v21 + 24) & ~v21;
  v23 = *(v4 + 64);
  *(v2 + 180) = v23;
  v24 = (v22 + v32 + v23) & ~v23;
  v25 = swift_allocObject();
  *(v25 + 16) = v33;
  OUTLINED_FUNCTION_0_6();
  outlined init with take of AppleIntelligenceEvent(v6, v26 + v22, v27);
  (v1)(v25 + v24, v3, v5);

  EventReporter.runAndSupressError(_:)(partial apply for closure #1 in EventReporter.emitAppleIntelligenceIntervalEvent<A>(eventInfo:_:));

  v34 = (v35 + *v35);
  v28 = swift_task_alloc();
  *(v2 + 160) = v28;
  *v28 = v2;
  v28[1] = EventReporter.emitAppleIntelligenceIntervalEvent<A>(eventInfo:_:);
  v29 = *(v2 + 16);

  return v34(v29);
}

{
  v15 = *(v1 + 144);
  v16 = *(v1 + 128);
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  v4 = *(v1 + 96);
  v5 = *(v1 + 88);
  v6 = *(v1 + 72);
  v7 = *(v1 + 48);
  v8 = (*(v1 + 176) + 24) & ~*(v1 + 176);
  v9 = (v8 + *(v1 + 180) + *(v1 + 64)) & ~*(v1 + 180);
  outlined init with copy of AppleIntelligenceEvent(*(v1 + 24), v6);
  v15(v2, v3, v5);
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  OUTLINED_FUNCTION_0_6();
  outlined init with take of AppleIntelligenceEvent(v6, v11 + v8, v12);
  v16(v10 + v9, v2, v5);

  EventReporter.runAndSupressError(_:)(partial apply for closure #2 in EventReporter.emitAppleIntelligenceIntervalEvent<A>(eventInfo:_:));

  (*(v4 + 8))(v3, v5);

  OUTLINED_FUNCTION_21_2();

  return v13();
}

{
  v2 = *(v1 + 180);
  v3 = *(v1 + 144);
  v19 = *(v1 + 168);
  v4 = *(v1 + 120);
  v5 = *(v1 + 112);
  v18 = *(v1 + 128);
  v6 = *(v1 + 88);
  v20 = v4;
  v21 = *(v1 + 96);
  v7 = *(v1 + 72);
  v8 = *(v1 + 64);
  v17 = *(v1 + 48);
  v9 = (*(v1 + 176) + 24) & ~*(v1 + 176);
  outlined init with copy of AppleIntelligenceEvent(*(v1 + 24), v7);
  v3(v5, v4, v6);
  v10 = (v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v2 + v10 + 8) & ~v2;
  v12 = swift_allocObject();
  *(v12 + 16) = v17;
  OUTLINED_FUNCTION_0_6();
  outlined init with take of AppleIntelligenceEvent(v7, v13 + v9, v14);
  *(v12 + v10) = v19;
  v18(v12 + v11, v5, v6);

  MEMORY[0x1C68E2E60](v19);
  EventReporter.runAndSupressError(_:)(partial apply for closure #3 in EventReporter.emitAppleIntelligenceIntervalEvent<A>(eventInfo:_:));

  swift_willThrow();
  (*(v21 + 8))(v20, v6);

  OUTLINED_FUNCTION_21_2();

  return v15();
}

void closure #1 in EventReporter.emitAppleIntelligenceIntervalEvent<A>(eventInfo:_:)()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_29(v8);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2();
  v16 = v15 - v14;
  EventReporter.getBiomeEventReporter(for:)(v7, v32);
  OUTLINED_FUNCTION_28_3();
  (*(v12 + 104))(v16, *v3, v10);
  v17 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_9();
  (*(v18 + 16))(v1, v5, v17);
  OUTLINED_FUNCTION_13_2();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v17);
  OUTLINED_FUNCTION_26_3();
  _s26AppleIntelligenceReporting010BiomeEventC0PAAE05writeE09eventInfo6errors4type0G2IDyAA0abE0O_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcL0OYKFfA0_();
  OUTLINED_FUNCTION_30_3();
  _s26AppleIntelligenceReporting010BiomeEventC0PAAE05writeE09eventInfo6errors4type0G2IDyAA0abE0O_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcL0OYKF(v22, v23, v24, v25, v26, v27, v28);

  outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(v12 + 8))(v16, v10);
  if (v0)
  {
    lazy protocol witness table accessor for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError();
    swift_allocError();
    *v29 = v30;
    v29[1] = *v31;
    *(v29 + 25) = *&v31[9];
  }

  __swift_destroy_boxed_opaque_existential_1(v32);
  OUTLINED_FUNCTION_44_2();
  OUTLINED_FUNCTION_47();
}

void EventReporter.emitAppleIntelligenceIntervalEvent<A>(eventInfo:_:)()
{
  OUTLINED_FUNCTION_48();
  v62 = v2;
  v63 = v0;
  v56 = v4;
  v57 = v3;
  v55 = v5;
  v6 = type metadata accessor for AppleIntelligenceEvent(0);
  v7 = OUTLINED_FUNCTION_4_4(v6);
  v59 = v8;
  v58 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v11;
  v12 = type metadata accessor for UUIDIdentifier(0);
  v13 = OUTLINED_FUNCTION_29(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2();
  v16 = v15 - v14;
  v17 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v23 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v47 - v25;
  UUID.init()();
  v61 = *(v19 + 32);
  v61(v26, v16, v17);
  outlined init with copy of AppleIntelligenceEvent(v62, v11);
  v27 = *(v19 + 16);
  v60 = v26;
  v50 = v27;
  v51 = v19 + 16;
  v27(v23, v26, v17);
  v28 = *(v59 + 80);
  v29 = (v28 + 24) & ~v28;
  v59 = v19;
  v30 = *(v19 + 80);
  v48 = v29 + v58;
  v31 = (v29 + v58 + v30) & ~v30;
  v53 = v21;
  v49 = v28 | v30;
  v32 = swift_allocObject();
  *(v32 + 16) = v63;
  OUTLINED_FUNCTION_0_6();
  v52 = v29;
  outlined init with take of AppleIntelligenceEvent(v64, v33 + v29, v34);
  v54 = v17;
  v58 = v19 + 32;
  v61((v32 + v31), v23, v17);

  EventReporter.runAndSupressError(_:)(partial apply for closure #1 in EventReporter.emitAppleIntelligenceIntervalEvent<A>(eventInfo:_:));

  v57(v35);
  outlined init with copy of AppleIntelligenceEvent(v62, v64);
  if (v1)
  {
    v36 = v54;
    v50(v23, v60, v54);
    v37 = v63;
    v38 = (v48 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    *(v39 + 16) = v37;
    OUTLINED_FUNCTION_0_6();
    outlined init with take of AppleIntelligenceEvent(v64, v40 + v52, v41);
    *(v39 + v38) = v1;
    v61((v39 + ((v30 + v38 + 8) & ~v30)), v23, v36);

    MEMORY[0x1C68E2E60](v1);
    EventReporter.runAndSupressError(_:)(partial apply for closure #3 in EventReporter.emitAppleIntelligenceIntervalEvent<A>(eventInfo:_:));

    swift_willThrow();
    (*(v59 + 8))(v60, v36);
  }

  else
  {
    v42 = v60;
    v43 = v54;
    v50(v23, v60, v54);
    v44 = swift_allocObject();
    *(v44 + 16) = v63;
    OUTLINED_FUNCTION_0_6();
    outlined init with take of AppleIntelligenceEvent(v64, v45 + v52, v46);
    v61((v44 + v31), v23, v43);

    EventReporter.runAndSupressError(_:)(partial apply for closure #2 in EventReporter.emitAppleIntelligenceIntervalEvent<A>(eventInfo:_:));

    (*(v59 + 8))(v42, v43);
  }

  OUTLINED_FUNCTION_47();
}

void closure #3 in EventReporter.emitAppleIntelligenceIntervalEvent<A>(eventInfo:_:)()
{
  OUTLINED_FUNCTION_48();
  v26 = v3;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_29(v8);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_52_3();
  v14 = v28[3];
  OUTLINED_FUNCTION_39_2(v28[4]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26AppleIntelligenceReporting0dE5Error_pGMd, &_ss23_ContiguousArrayStorageCy26AppleIntelligenceReporting0dE5Error_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C0CDE720;
  convertToAppleIntelligenceError(error:)(v5, (inited + 32));
  (*(v12 + 104))(v2, *MEMORY[0x1E69AA0D0], v10);
  v16 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_9();
  (*(v17 + 16))(v1, v26, v16);
  OUTLINED_FUNCTION_13_2();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v16);
  _s26AppleIntelligenceReporting010BiomeEventC0PAAE05writeE09eventInfo6errors4type0G2IDyAA0abE0O_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcL0OYKF(v7, inited, v2, v1, v14, v25, &v27);
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v21 = OUTLINED_FUNCTION_50_3();
  v22(v21);
  if (v0)
  {
    lazy protocol witness table accessor for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError();
    v23 = swift_allocError();
    OUTLINED_FUNCTION_37_2(v23, v24);
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
  OUTLINED_FUNCTION_47();
}

void _s26AppleIntelligenceReporting13EventReporterC04emitab8IntervalD09eventInfo_s6ResultOyxq_GAA0abD0O_AH_AA0abC8MetadataOSgtyctAA0abC5ErrorOYKs8SendableRzAA0abL0R_r0_lF()
{
  OUTLINED_FUNCTION_48();
  v149 = v2;
  v147 = v1;
  v134 = v3;
  v135 = v4;
  v6 = v5;
  v140 = v7;
  OUTLINED_FUNCTION_2_5();
  v130 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_29_0(v11 - v10);
  v128 = v12;
  v138 = v13;
  v141 = type metadata accessor for Result();
  OUTLINED_FUNCTION_1();
  v142 = v14;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_29_0(&v125 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v18 = OUTLINED_FUNCTION_29(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_29_0(v21);
  v22 = type metadata accessor for AppleIntelligenceReportingEventType();
  OUTLINED_FUNCTION_1();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v125 - v28;
  v30 = type metadata accessor for UUIDIdentifier(0);
  v31 = OUTLINED_FUNCTION_29(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2();
  v34 = v33 - v32;
  v35 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v37 = v36;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_2();
  v41 = v40 - v39;
  UUID.init()();
  (*(v37 + 32))(v41, v34, v35);
  v136 = v0;
  EventReporter.getBiomeEventReporter(for:)(v6, v156);
  v144 = OUTLINED_FUNCTION_39_2(v158);
  v42 = *MEMORY[0x1E69AA0D8];
  v151 = v24;
  v44 = *(v24 + 104);
  v43 = v24 + 104;
  v132 = v44;
  v44(v29, v42, v22);
  v148 = v37;
  v46 = *(v37 + 16);
  v45 = (v37 + 16);
  v47 = v145;
  v150 = v41;
  v133 = v46;
  v46(v145, v41, v35);
  OUTLINED_FUNCTION_13_2();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v35);
  v51 = v143;
  _s26AppleIntelligenceReporting010BiomeEventC0PAAE05writeE09eventInfo6errors4type0G2IDyAA0abE0O_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcL0OYKFfA0_();
  v131 = v6;
  v146 = v29;
  OUTLINED_FUNCTION_30_3();
  v52 = v147;
  _s26AppleIntelligenceReporting010BiomeEventC0PAAE05writeE09eventInfo6errors4type0G2IDyAA0abE0O_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcL0OYKF(v53, v54, v55, v56, v57, v58, v59);
  if (v52)
  {

    outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v47, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v60 = OUTLINED_FUNCTION_35_2();
    v61(v60);
    (*(v148 + 8))(v150, v35);
    v62 = *v155;
    v63 = v149;
    *v149 = v154;
    v63[1] = v62;
    *(v63 + 25) = *&v155[9];
LABEL_3:
    __swift_destroy_boxed_opaque_existential_1(v156);
    goto LABEL_4;
  }

  v126 = 0;
  v143 = v43;
  v144 = v45;
  v64 = v138;

  outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v47, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v65 = OUTLINED_FUNCTION_35_2();
  v151 = v66;
  v147 = v67;
  v67(v65);
  __swift_destroy_boxed_opaque_existential_1(v156);
  v68 = v140;
  v135(v140, &v154);
  v69 = v139;
  (*(v142 + 16))(v139, v68, v141);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v70 = v69;
    v71 = v130;
    v72 = v137;
    (*(v130 + 32))(v137, v70, v64);
    OUTLINED_FUNCTION_40_0();
    v73 = v157;
    v146 = v158;
    __swift_project_boxed_opaque_existential_1(v156, v157);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26AppleIntelligenceReporting0dE5Error_pGMd, &_ss23_ContiguousArrayStorageCy26AppleIntelligenceReporting0dE5Error_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C0CDE720;
    v75 = v128;
    *(inited + 56) = v64;
    *(inited + 64) = v75;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
    (*(v71 + 16))(boxed_opaque_existential_1, v72, v64);
    v77 = OUTLINED_FUNCTION_19_4(&v153);
    v78(v77);
    v79 = v129;
    OUTLINED_FUNCTION_20_3();
    v80();
    OUTLINED_FUNCTION_13_2();
    __swift_storeEnumTagSinglePayload(v81, v82, v83, v35);
    v84 = OUTLINED_FUNCTION_45_1();
    v85 = v126;
    _s26AppleIntelligenceReporting010BiomeEventC0PAAE05writeE09eventInfo6errors4type0G2IDyAA0abE0O_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcL0OYKF(v84, v86, v72, v79, v73, v146, v87);
    v88 = v149;
    if (!v85)
    {
      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v79, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v117 = OUTLINED_FUNCTION_7_4();
      v118(v117);
      v119 = OUTLINED_FUNCTION_38_2();
      v120(v119);
      v121 = OUTLINED_FUNCTION_5_5();
      v122(v121);
      __swift_destroy_boxed_opaque_existential_1(v156);
      goto LABEL_4;
    }

    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v79, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v89 = OUTLINED_FUNCTION_7_4();
    v90(v89);
    v91 = OUTLINED_FUNCTION_38_2();
    v92(v91);
    (*(v142 + 8))(v140, v141);
    v93 = OUTLINED_FUNCTION_5_5();
    v94(v93);
    v95 = *v155;
    *v88 = v154;
    v88[1] = v95;
    *(v88 + 25) = *&v155[9];
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_40_0();
  v96 = v157;
  v97 = v158;
  __swift_project_boxed_opaque_existential_1(v156, v157);
  v98 = OUTLINED_FUNCTION_19_4(&v152);
  v99(v98);
  v100 = v127;
  OUTLINED_FUNCTION_20_3();
  v101();
  OUTLINED_FUNCTION_13_2();
  __swift_storeEnumTagSinglePayload(v102, v103, v104, v35);
  _s26AppleIntelligenceReporting010BiomeEventC0PAAE05writeE09eventInfo6errors4type0G2IDyAA0abE0O_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcL0OYKFfA0_();
  v105 = OUTLINED_FUNCTION_45_1();
  v106 = v126;
  _s26AppleIntelligenceReporting010BiomeEventC0PAAE05writeE09eventInfo6errors4type0G2IDyAA0abE0O_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcL0OYKF(v105, v107, v51, v100, v96, v97, v108);
  v109 = v149;

  outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v100, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v110 = OUTLINED_FUNCTION_7_4();
  v111(v110);
  if (v106)
  {
    v112 = *(v142 + 8);
    v113 = v141;
    v112(v140, v141);
    v114 = OUTLINED_FUNCTION_5_5();
    v115(v114);
    v116 = *v155;
    *v109 = v154;
    v109[1] = v116;
    *(v109 + 25) = *&v155[9];
    __swift_destroy_boxed_opaque_existential_1(v156);
    v112(v139, v113);
  }

  else
  {
    v123 = OUTLINED_FUNCTION_5_5();
    v124(v123);
    __swift_destroy_boxed_opaque_existential_1(v156);
    (*(v142 + 8))(v139, v141);
  }

LABEL_4:
  OUTLINED_FUNCTION_47();
}

uint64_t _s26AppleIntelligenceReporting13EventReporterC04emitab8IntervalD09eventInfo_s6ResultOyxq_GAA0abD0O_AH_AA0abC8MetadataOSgtyYactYaAA0abC5ErrorOYKs8SendableRzAA0abL0R_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[50] = v8;
  v9[51] = a8;
  v9[48] = a6;
  v9[49] = a7;
  v9[46] = a3;
  v9[47] = a4;
  v9[44] = a1;
  v9[45] = a2;
  OUTLINED_FUNCTION_2_5();
  v9[52] = v10;
  v9[53] = OUTLINED_FUNCTION_34_2();
  v11 = type metadata accessor for Result();
  v9[54] = v11;
  OUTLINED_FUNCTION_4_4(v11);
  v9[55] = v12;
  v9[56] = OUTLINED_FUNCTION_34_2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_29(v13);
  v9[57] = OUTLINED_FUNCTION_41_3();
  v9[58] = swift_task_alloc();
  v9[59] = swift_task_alloc();
  v14 = type metadata accessor for AppleIntelligenceReportingEventType();
  v9[60] = v14;
  OUTLINED_FUNCTION_4_4(v14);
  v9[61] = v15;
  v9[62] = OUTLINED_FUNCTION_41_3();
  v9[63] = swift_task_alloc();
  v9[64] = swift_task_alloc();
  v16 = type metadata accessor for UUIDIdentifier(0);
  OUTLINED_FUNCTION_29(v16);
  v9[65] = OUTLINED_FUNCTION_34_2();
  v17 = type metadata accessor for UUID();
  v9[66] = v17;
  OUTLINED_FUNCTION_4_4(v17);
  v9[67] = v18;
  v9[68] = OUTLINED_FUNCTION_34_2();
  v19 = OUTLINED_FUNCTION_16_3();

  return MEMORY[0x1EEE6DFA0](v19);
}

uint64_t _s26AppleIntelligenceReporting13EventReporterC04emitab8IntervalD09eventInfo_s6ResultOyxq_GAA0abD0O_AH_AA0abC8MetadataOSgtyYactYaAA0abC5ErrorOYKs8SendableRzAA0abL0R_r0_lFTY0_(double a1)
{
  v2 = *(v1 + 68);
  v3 = *(v1 + 67);
  v4 = *(v1 + 66);
  v5 = *(v1 + 65);
  v6 = *(v1 + 64);
  v7 = *(v1 + 61);
  v28 = *(v1 + 60);
  v8 = *(v1 + 59);
  v9 = *(v1 + 45);
  UUID.init()();
  (*(v3 + 32))(v2, v5, v4);
  EventReporter.getBiomeEventReporter(for:)(v9, (v1 + 232));
  v10 = *(v1 + 32);
  v11 = *(v1 + 33);
  __swift_project_boxed_opaque_existential_1(v1 + 29, v10);
  v12 = *MEMORY[0x1E69AA0D8];
  v13 = *(v7 + 104);
  *(v1 + 69) = v13;
  *(v1 + 70) = (v7 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v13(v6, v12, v28);
  v14 = *(v3 + 16);
  *(v1 + 71) = v14;
  *(v1 + 72) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v8, v2, v4);
  OUTLINED_FUNCTION_13_2();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v4);
  v18 = _s26AppleIntelligenceReporting010BiomeEventC0PAAE05writeE09eventInfo6errors4type0G2IDyAA0abE0O_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcL0OYKFfA0_();
  _s26AppleIntelligenceReporting010BiomeEventC0PAAE05writeE09eventInfo6errors4type0G2IDyAA0abE0O_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcL0OYKF(v9, v18, v6, v8, v10, v11, (v1 + 88));
  *(v1 + 73) = 0;
  v19 = *(v1 + 64);
  v20 = *(v1 + 60);
  v21 = *(v1 + 61);
  v22 = *(v1 + 59);
  v23 = *(v1 + 46);

  outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v24 = *(v21 + 8);
  *(v1 + 74) = v24;
  *(v1 + 75) = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v24(v19, v20);
  __swift_destroy_boxed_opaque_existential_1(v1 + 29);
  v29 = (v23 + *v23);
  v25 = swift_task_alloc();
  *(v1 + 76) = v25;
  *v25 = v1;
  v25[1] = _s26AppleIntelligenceReporting13EventReporterC04emitab8IntervalD09eventInfo_s6ResultOyxq_GAA0abD0O_AH_AA0abC8MetadataOSgtyYactYaAA0abC5ErrorOYKs8SendableRzAA0abL0R_r0_lFTQ1_;
  v26 = *(v1 + 44);

  return v29(v26, v1 + 129);
}

uint64_t _s26AppleIntelligenceReporting13EventReporterC04emitab8IntervalD09eventInfo_s6ResultOyxq_GAA0abD0O_AH_AA0abC8MetadataOSgtyYactYaAA0abC5ErrorOYKs8SendableRzAA0abL0R_r0_lFTQ1_()
{
  OUTLINED_FUNCTION_36_2();
  v1 = *v0;
  OUTLINED_FUNCTION_33_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_3();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t _s26AppleIntelligenceReporting13EventReporterC04emitab8IntervalD09eventInfo_s6ResultOyxq_GAA0abD0O_AH_AA0abC8MetadataOSgtyYactYaAA0abC5ErrorOYKs8SendableRzAA0abL0R_r0_lFTY2_()
{
  (*(*(v0 + 440) + 16))(*(v0 + 448), *(v0 + 352), *(v0 + 432));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v73 = *(v0 + 584);
    v59 = *(v0 + 552);
    v67 = *(v0 + 544);
    v69 = *(v0 + 568);
    v1 = *(v0 + 528);
    v2 = *(v0 + 496);
    v57 = *(v0 + 480);
    v3 = *(v0 + 456);
    v4 = *(v0 + 416);
    v5 = *(v0 + 424);
    v6 = *(v0 + 360);
    v56 = *(v0 + 384);
    v7 = *(v0 + 384);
    (*(v4 + 32))(v5, *(v0 + 448), v7);
    EventReporter.getBiomeEventReporter(for:)(v6, v0 + 272);
    v8 = *(v0 + 296);
    v63 = *(v0 + 304);
    __swift_project_boxed_opaque_existential_1((v0 + 272), v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26AppleIntelligenceReporting0dE5Error_pGMd, &_ss23_ContiguousArrayStorageCy26AppleIntelligenceReporting0dE5Error_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C0CDE720;
    *(inited + 56) = v56;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
    (*(v4 + 16))(boxed_opaque_existential_1, v5, v7);
    v59(v2, *MEMORY[0x1E69AA0D0], v57);
    v69(v3, v67, v1);
    OUTLINED_FUNCTION_13_2();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v1);
    v14 = v73;
    _s26AppleIntelligenceReporting010BiomeEventC0PAAE05writeE09eventInfo6errors4type0G2IDyAA0abE0O_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcL0OYKF(v6, inited, v2, v3, v8, v63, v0 + 136);
    v68 = *(v0 + 592);
    v15 = *(v0 + 536);
    v71 = *(v0 + 528);
    v74 = *(v0 + 544);
    v16 = *(v0 + 496);
    v17 = *(v0 + 480);
    v18 = *(v0 + 456);
    if (v14)
    {
      v19 = *(v0 + 440);
      v20 = *(v0 + 416);
      v21 = *(v0 + 408);
      v58 = *(v0 + 384);
      v60 = *(v0 + 424);
      v61 = *(v0 + 352);
      v64 = *(v0 + 432);
      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v68(v16, v17);
      (*(v20 + 8))(v60, v58);
      (*(v19 + 8))(v61, v64);
      (*(v15 + 8))(v74, v71);
      v22 = *(v0 + 136);
      v23 = *(v0 + 152);
      *(v21 + 25) = *(v0 + 161);
      *v21 = v22;
      v21[1] = v23;
    }

    else
    {
      v51 = *(v0 + 416);
      v50 = *(v0 + 424);
      v52 = *(v0 + 384);
      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v68(v16, v17);
      (*(v51 + 8))(v50, v52);
      (*(v15 + 8))(v74, v71);
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 272));
  }

  else
  {
    v75 = *(v0 + 584);
    v65 = *(v0 + 568);
    v24 = *(v0 + 552);
    v62 = *(v0 + 544);
    v25 = *(v0 + 528);
    v26 = *(v0 + 504);
    v27 = *(v0 + 480);
    v28 = *(v0 + 464);
    EventReporter.getBiomeEventReporter(for:)(*(v0 + 360), v0 + 312);
    __swift_project_boxed_opaque_existential_1((v0 + 312), *(v0 + 336));
    v24(v26, *MEMORY[0x1E69AA0D0], v27);
    v65(v28, v62, v25);
    OUTLINED_FUNCTION_13_2();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v25);
    OUTLINED_FUNCTION_26_3();
    _s26AppleIntelligenceReporting010BiomeEventC0PAAE05writeE09eventInfo6errors4type0G2IDyAA0abE0O_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcL0OYKFfA0_();
    OUTLINED_FUNCTION_30_3();
    v32 = v75;
    _s26AppleIntelligenceReporting010BiomeEventC0PAAE05writeE09eventInfo6errors4type0G2IDyAA0abE0O_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcL0OYKF(v33, v34, v26, v35, v36, v37, v38);
    v39 = *(v0 + 592);
    v40 = *(v0 + 536);
    v70 = *(v0 + 528);
    v41 = *(v0 + 464);
    v43 = *(v0 + 440);
    v42 = *(v0 + 448);
    v72 = *(v0 + 544);
    v76 = *(v0 + 432);
    if (v32)
    {
      v66 = *(v0 + 448);
      v44 = *(v0 + 408);
      v45 = *(v0 + 352);

      outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v41, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v46 = OUTLINED_FUNCTION_48_2();
      v39(v46);
      v47 = *(v43 + 8);
      v47(v45, v76);
      (*(v40 + 8))(v72, v70);
      v48 = *(v0 + 184);
      v49 = *(v0 + 200);
      *(v44 + 25) = *(v0 + 209);
      *v44 = v48;
      v44[1] = v49;
      __swift_destroy_boxed_opaque_existential_1((v0 + 312));
      v47(v66, v76);
    }

    else
    {

      outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v41, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v53 = OUTLINED_FUNCTION_48_2();
      v39(v53);
      (*(v40 + 8))(v72, v70);
      __swift_destroy_boxed_opaque_existential_1((v0 + 312));
      (*(v43 + 8))(v42, v76);
    }
  }

  OUTLINED_FUNCTION_12_2();

  OUTLINED_FUNCTION_21_2();

  return v54();
}

uint64_t _s26AppleIntelligenceReporting13EventReporterC04emitab8IntervalD09eventInfo_xAA0abD0O_x_AA0abC8MetadataOSgtyYaq_YKctYaq_YKs8SendableRzAA0aB5ErrorR_r0_lF()
{
  OUTLINED_FUNCTION_36_2();
  v1[9] = v0;
  v1[10] = v2;
  v1[7] = v3;
  v1[8] = v4;
  v1[5] = v5;
  v1[6] = v6;
  v1[3] = v7;
  v1[4] = v8;
  v1[2] = v9;
  v10 = *(v3 - 8);
  v1[11] = v10;
  v1[12] = *(v10 + 64);
  v1[13] = OUTLINED_FUNCTION_41_3();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v11 = type metadata accessor for AppleIntelligenceEvent(0);
  OUTLINED_FUNCTION_4_4(v11);
  v1[17] = v12;
  v1[18] = *(v13 + 64);
  v1[19] = OUTLINED_FUNCTION_34_2();
  v14 = type metadata accessor for UUIDIdentifier(0);
  OUTLINED_FUNCTION_29(v14);
  v1[20] = OUTLINED_FUNCTION_34_2();
  v15 = type metadata accessor for UUID();
  v1[21] = v15;
  OUTLINED_FUNCTION_4_4(v15);
  v1[22] = v16;
  v1[23] = *(v17 + 64);
  v1[24] = OUTLINED_FUNCTION_41_3();
  v1[25] = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_16_3();

  return MEMORY[0x1EEE6DFA0](v18);
}

uint64_t _s26AppleIntelligenceReporting13EventReporterC04emitab8IntervalD09eventInfo_xAA0abD0O_x_AA0abC8MetadataOSgtyYaq_YKctYaq_YKs8SendableRzAA0aB5ErrorR_r0_lFTY0_(double a1)
{
  v4 = *(v2 + 176);
  v5 = *(v2 + 168);
  v6 = *(v2 + 152);
  v32 = *(v2 + 192);
  v33 = *(v2 + 144);
  v7 = *(v2 + 136);
  OUTLINED_FUNCTION_53_3(a1);
  OUTLINED_FUNCTION_47_3();
  *(v2 + 208) = v1;
  *(v2 + 216) = v8;
  v9 = OUTLINED_FUNCTION_48_2();
  v1(v9);
  v10 = outlined init with copy of AppleIntelligenceEvent(v3, v6);
  v11 = *(v4 + 16);
  v4 += 16;
  *(v2 + 224) = v11;
  *(v2 + 232) = v4 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v19 = OUTLINED_FUNCTION_43_2(v10, v12, v13, v14, v15, v16, v17, v18, v32);
  v20(v19);
  v21 = *(v7 + 80);
  *(v2 + 248) = v21;
  v22 = (v21 + 24) & ~v21;
  v23 = *(v4 + 64);
  *(v2 + 252) = v23;
  v24 = (v33 + v23 + v22) & ~v23;
  v25 = swift_allocObject();
  *(v25 + 16) = v34;
  OUTLINED_FUNCTION_0_6();
  outlined init with take of AppleIntelligenceEvent(v6, v26 + v22, v27);
  (v1)(v25 + v24, v3, v5);

  EventReporter.runAndSupressError(_:)(_s26AppleIntelligenceReporting13EventReporterC04emitab8IntervalD09eventInfo_xAA0abD0O_x_AA0abC8MetadataOSgtyYaq_YKctYaq_YKs8SendableRzAA0aB5ErrorR_r0_lFyyKcfU_TA);

  v35 = (v36 + *v36);
  v28 = swift_task_alloc();
  *(v2 + 240) = v28;
  *v28 = v2;
  v28[1] = _s26AppleIntelligenceReporting13EventReporterC04emitab8IntervalD09eventInfo_xAA0abD0O_x_AA0abC8MetadataOSgtyYaq_YKctYaq_YKs8SendableRzAA0aB5ErrorR_r0_lFTQ1_;
  v29 = *(v2 + 120);
  v30 = *(v2 + 16);

  return v35(v30, v2 + 256, v29);
}

uint64_t _s26AppleIntelligenceReporting13EventReporterC04emitab8IntervalD09eventInfo_xAA0abD0O_x_AA0abC8MetadataOSgtyYaq_YKctYaq_YKs8SendableRzAA0aB5ErrorR_r0_lFTQ1_()
{
  OUTLINED_FUNCTION_36_2();
  v2 = *v1;
  OUTLINED_FUNCTION_33_1();
  *v3 = v2;

  if (v0)
  {
    v4 = _s26AppleIntelligenceReporting13EventReporterC04emitab8IntervalD09eventInfo_xAA0abD0O_x_AA0abC8MetadataOSgtyYaq_YKctYaq_YKs8SendableRzAA0aB5ErrorR_r0_lFTY3_;
  }

  else
  {
    v4 = _s26AppleIntelligenceReporting13EventReporterC04emitab8IntervalD09eventInfo_xAA0abD0O_x_AA0abC8MetadataOSgtyYaq_YKctYaq_YKs8SendableRzAA0aB5ErrorR_r0_lFTY2_;
  }

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t _s26AppleIntelligenceReporting13EventReporterC04emitab8IntervalD09eventInfo_xAA0abD0O_x_AA0abC8MetadataOSgtyYaq_YKctYaq_YKs8SendableRzAA0aB5ErrorR_r0_lFTY2_(double a1)
{
  v15 = *(v1 + 224);
  v16 = *(v1 + 208);
  v2 = *(v1 + 192);
  v3 = *(v1 + 200);
  v4 = *(v1 + 176);
  v5 = *(v1 + 168);
  v6 = *(v1 + 152);
  v7 = (*(v1 + 248) + 24) & ~*(v1 + 248);
  v8 = *(v1 + 72);
  v9 = (v7 + *(v1 + 252) + *(v1 + 144)) & ~*(v1 + 252);
  outlined init with copy of AppleIntelligenceEvent(*(v1 + 24), v6);
  v15(v2, v3, v5);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  OUTLINED_FUNCTION_0_6();
  outlined init with take of AppleIntelligenceEvent(v6, v11 + v7, v12);
  v16(v10 + v9, v2, v5);

  EventReporter.runAndSupressError(_:)(_s26AppleIntelligenceReporting13EventReporterC04emitab8IntervalD09eventInfo_xAA0abD0O_x_AA0abC8MetadataOSgtyYaq_YKctYaq_YKs8SendableRzAA0aB5ErrorR_r0_lFyyKcfU0_TA);

  (*(v4 + 8))(v3, v5);

  OUTLINED_FUNCTION_21_2();

  return v13();
}

uint64_t _s26AppleIntelligenceReporting13EventReporterC04emitab8IntervalD09eventInfo_xAA0abD0O_x_AA0abC8MetadataOSgtyYaq_YKctYaq_YKs8SendableRzAA0aB5ErrorR_r0_lFTY3_()
{
  v23 = *(v0 + 252);
  v20 = *(v0 + 248);
  v18 = *(v0 + 224);
  v26 = *(v0 + 208);
  v33 = *(v0 + 200);
  v29 = *(v0 + 192);
  v28 = *(v0 + 176);
  v31 = *(v0 + 168);
  v1 = *(v0 + 152);
  v17 = *(v0 + 144);
  v2 = *(v0 + 128);
  v3 = *(v0 + 112);
  v24 = v3;
  v32 = *(v0 + 104);
  v4 = *(v0 + 88);
  v16 = *(v0 + 96);
  v27 = *(v0 + 80);
  v22 = *(v0 + 72);
  v5 = *(v0 + 56);
  v30 = *(v0 + 64);
  v19 = *(v0 + 48);
  v6 = *(v0 + 24);
  v21 = *(v4 + 32);
  v21(v2);
  (v21)(v3, v2, v5);
  outlined init with copy of AppleIntelligenceEvent(v6, v1);
  v25 = *(v4 + 16);
  v7 = OUTLINED_FUNCTION_26_3();
  v8(v7);
  v18(v29, v33, v31);
  v9 = (v20 + 48) & ~v20;
  v10 = (v17 + v9 + *(v4 + 80)) & ~*(v4 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = v19;
  *(v11 + 3) = v5;
  *(v11 + 4) = v30;
  *(v11 + 5) = v22;
  OUTLINED_FUNCTION_0_6();
  outlined init with take of AppleIntelligenceEvent(v1, v12 + v9, v13);
  (v21)(&v11[v10], v32, v5);
  v26(&v11[(v16 + v23 + v10) & ~v23], v29, v31);

  EventReporter.runAndSupressError(_:)(_s26AppleIntelligenceReporting13EventReporterC04emitab8IntervalD09eventInfo_xAA0abD0O_x_AA0abC8MetadataOSgtyYaq_YKctYaq_YKs8SendableRzAA0aB5ErrorR_r0_lFyyKcfU1_TA);

  v25(v27, v24, v5);
  swift_willThrowTypedImpl();
  (*(v4 + 8))(v24, v5);
  (*(v28 + 8))(v33, v31);

  OUTLINED_FUNCTION_21_2();

  return v14();
}

void _s26AppleIntelligenceReporting13EventReporterC04emitab8IntervalD09eventInfo_xAA0abD0O_x_AA0abC8MetadataOSgtyq_YKctq_YKs8SendableRzAA0aB5ErrorR_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_48();
  a22 = v25;
  a23 = v26;
  v109 = v27;
  v129 = v23;
  v124 = v28;
  v106 = v29;
  v116 = v31;
  v117 = v30;
  v128 = v32;
  v115 = v33;
  v107 = v34;
  OUTLINED_FUNCTION_2_5();
  v108 = v35;
  MEMORY[0x1EEE9AC00](v36);
  v122 = &v100 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_51_2();
  v123 = v39;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_51_2();
  v113 = v41;
  v105 = v42;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_29_0(v44);
  v45 = type metadata accessor for AppleIntelligenceEvent(0);
  v46 = OUTLINED_FUNCTION_4_4(v45);
  v126 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v130 = &v100 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for UUIDIdentifier(0);
  v51 = OUTLINED_FUNCTION_29(v50);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_2();
  v54 = v53 - v52;
  v55 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v57 = v56;
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v100 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v100 - v63;
  UUID.init()();
  v65 = v57 + 32;
  v66 = *(v57 + 32);
  v66(v64, v54, v55);
  outlined init with copy of AppleIntelligenceEvent(v128, v130);
  v67 = *(v57 + 16);
  v127 = v64;
  v110 = v67;
  v111 = v57 + 16;
  v67(v61, v64, v55);
  v68 = *(v126 + 80);
  v69 = (v68 + 24) & ~v68;
  v121 = v57;
  v70 = *(v57 + 80);
  v104 = v49;
  v71 = (v49 + v70 + v69) & ~v70;
  v102 = v70;
  v101 = v68;
  v114 = v59;
  v112 = v68 | v70 | 7;
  v72 = swift_allocObject();
  *(v72 + 16) = v129;
  OUTLINED_FUNCTION_0_6();
  v100 = v69;
  outlined init with take of AppleIntelligenceEvent(v130, v73 + v69, v74);
  v125 = v61;
  v126 = v55;
  v120 = v65;
  v118 = v66;
  v66((v72 + v71), v61, v55);
  v75 = v113;

  EventReporter.runAndSupressError(_:)(partial apply for closure #1 in EventReporter.emitAppleIntelligenceIntervalEvent<A>(eventInfo:_:));

  (v117)(v115, &a13, v75);
  if (v24)
  {
    v76 = v101;
    v77 = v102;
    v117 = ~v102;
    v78 = v108;
    v79 = *(v108 + 32);
    v119 = v79;
    v80 = v103;
    v81 = v107;
    v79(v103, v75, v107);
    v82 = v123;
    v79(v123, v80, v81);
    outlined init with copy of AppleIntelligenceEvent(v128, v130);
    v128 = *(v78 + 16);
    v128(v122, v82, v81);
    v110(v125, v127, v126);
    v83 = (v76 + 48) & ~v76;
    v84 = (v83 + v104 + *(v78 + 80)) & ~*(v78 + 80);
    v85 = v81;
    v86 = v129;
    v87 = (v105 + v77 + v84) & v117;
    v88 = swift_allocObject();
    *(v88 + 2) = v106;
    *(v88 + 3) = v85;
    *(v88 + 4) = v124;
    *(v88 + 5) = v86;
    OUTLINED_FUNCTION_0_6();
    outlined init with take of AppleIntelligenceEvent(v130, v89 + v83, v90);
    v119(&v88[v84], v122, v85);
    v91 = v126;
    v118(&v88[v87], v125, v126);

    EventReporter.runAndSupressError(_:)(_s26AppleIntelligenceReporting13EventReporterC04emitab8IntervalD09eventInfo_xAA0abD0O_x_AA0abC8MetadataOSgtyq_YKctq_YKs8SendableRzAA0aB5ErrorR_r0_lFyyKcfU1_TA);

    v92 = v123;
    v128(v109, v123, v85);
    swift_willThrowTypedImpl();
    (*(v78 + 8))(v92, v85);
    (*(v121 + 8))(v127, v91);
  }

  else
  {
    v93 = v130;
    outlined init with copy of AppleIntelligenceEvent(v128, v130);
    v94 = v125;
    v95 = v126;
    v96 = v127;
    v110(v125, v127, v126);
    v97 = swift_allocObject();
    *(v97 + 16) = v129;
    OUTLINED_FUNCTION_0_6();
    outlined init with take of AppleIntelligenceEvent(v93, v98 + v100, v99);
    v118((v97 + v71), v94, v95);

    EventReporter.runAndSupressError(_:)(partial apply for closure #2 in EventReporter.emitAppleIntelligenceIntervalEvent<A>(eventInfo:_:));

    (*(v121 + 8))(v96, v95);
  }

  OUTLINED_FUNCTION_44_2();
  OUTLINED_FUNCTION_47();
}

void _s26AppleIntelligenceReporting13EventReporterC04emitab8IntervalD09eventInfo_xAA0abD0O_x_AA0abC8MetadataOSgtyYaq_YKctYaq_YKs8SendableRzAA0aB5ErrorR_r0_lFyyKcfU1_Tm()
{
  OUTLINED_FUNCTION_48();
  v4 = v3;
  v6 = v5;
  v31 = v7;
  v30 = v8;
  v28 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_29(v10);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_52_3();
  v16 = v33[3];
  OUTLINED_FUNCTION_39_2(v33[4]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26AppleIntelligenceReporting0dE5Error_pGMd, &_ss23_ContiguousArrayStorageCy26AppleIntelligenceReporting0dE5Error_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C0CDE720;
  *(inited + 56) = v6;
  *(inited + 64) = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v30, v6);
  (*(v14 + 104))(v2, *MEMORY[0x1E69AA0D0], v12);
  v19 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_9();
  (*(v20 + 16))(v1, v31, v19);
  OUTLINED_FUNCTION_13_2();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v19);
  _s26AppleIntelligenceReporting010BiomeEventC0PAAE05writeE09eventInfo6errors4type0G2IDyAA0abE0O_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcL0OYKF(v28, inited, v2, v1, v16, v29, &v32);
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v24 = OUTLINED_FUNCTION_50_3();
  v25(v24);
  if (v0)
  {
    lazy protocol witness table accessor for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError();
    v26 = swift_allocError();
    OUTLINED_FUNCTION_37_2(v26, v27);
  }

  __swift_destroy_boxed_opaque_existential_1(v33);
  OUTLINED_FUNCTION_47();
}

void _s26AppleIntelligenceReporting13EventReporterC04emitab5StartD09eventInfoAA14UUIDIdentifierVAA0abD0O_tAA0abC5ErrorOYKF()
{
  OUTLINED_FUNCTION_48();
  v34 = v2;
  v35 = v1;
  v3 = v1;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_29(v6);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  v10 = type metadata accessor for AppleIntelligenceReportingEventType();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2();
  v16 = v15 - v14;
  UUID.init()();
  EventReporter.getBiomeEventReporter(for:)(v3, &v38);
  OUTLINED_FUNCTION_28_3();
  (*(v12 + 104))(v16, *MEMORY[0x1E69AA0D8], v10);
  v17 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_9();
  v19 = *(v18 + 16);
  v33 = v5;
  v19(v9, v5, v17);
  OUTLINED_FUNCTION_13_2();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v17);
  OUTLINED_FUNCTION_26_3();
  _s26AppleIntelligenceReporting010BiomeEventC0PAAE05writeE09eventInfo6errors4type0G2IDyAA0abE0O_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcL0OYKFfA0_();
  OUTLINED_FUNCTION_30_3();
  _s26AppleIntelligenceReporting010BiomeEventC0PAAE05writeE09eventInfo6errors4type0G2IDyAA0abE0O_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcL0OYKF(v23, v24, v25, v26, v27, v28, v29);

  outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v30 = OUTLINED_FUNCTION_45_1();
  v31(v30);
  if (v0)
  {
    OUTLINED_FUNCTION_14_2();
    outlined destroy of UUIDIdentifier(v33, v32);
    OUTLINED_FUNCTION_23_3(v34, v36, v37);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v38);
  }

  OUTLINED_FUNCTION_44_2();
  OUTLINED_FUNCTION_47();
}

uint64_t EventReporter.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v0 + 112, &_sSDys6UInt32V26AppleIntelligenceReporting010BiomeEventD0_pGMd, &_sSDys6UInt32V26AppleIntelligenceReporting010BiomeEventD0_pGMR);
  return v0;
}

uint64_t EventReporter.__deallocating_deinit()
{
  EventReporter.deinit();

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t specialized _ContiguousArrayStorage.__deallocating_deinit()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AppleIntelligenceReporting0aB5Error_pMd, &_s26AppleIntelligenceReporting0aB5Error_pMR);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v9;
  v15 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVys6UInt32V26AppleIntelligenceReporting010BiomeEventF0_pGMd, &_ss17_NativeDictionaryVys6UInt32V26AppleIntelligenceReporting010BiomeEventF0_pGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v13))
  {
    goto LABEL_5;
  }

  v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v4;
  if (v15)
  {
    v19 = (v18[7] + 40 * v14);
    __swift_destroy_boxed_opaque_existential_1(v19);

    return outlined init with take of any Source<Self.Stream == A>(a1, v19);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v14, a2, a1, v18);
  }
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, int a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 4 * a1) = a2;
  result = outlined init with take of any Source<Self.Stream == A>(a3, a4[7] + 40 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t specialized EventReporter.__allocating_init(biomeEventReporter:biomeEventReporterGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  v12 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  (*(v16 + 16))(v19, a1, a4);
  (*(v12 + 16))(v14, a2, a5);
  v21 = specialized EventReporter.init(biomeEventReporter:biomeEventReporterGenerator:)(v19, v14, v20, a4, a5, a6, v24);
  (*(v12 + 8))(a2, a5);
  (*(v16 + 8))(a1, a4);
  return v21;
}

uint64_t specialized EventReporter.init(biomeEventReporter:biomeEventReporterGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18[3] = a4;
  v18[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v17[3] = a5;
  v17[4] = a7;
  v14 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(a5 - 8) + 32))(v14, a2, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AppleIntelligenceReporting010BiomeEventC0_pMd, &_s26AppleIntelligenceReporting010BiomeEventC0_pMR);
  v15 = Dictionary.init(dictionaryLiteral:)();
  *(a3 + 96) = v15;
  outlined init with copy of any Source<Self.Stream == A>(v18, a3 + 16);
  outlined init with copy of any Source<Self.Stream == A>(v17, a3 + 56);

  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_destroy_boxed_opaque_existential_1(v18);
  *(a3 + 104) = 0;
  *(a3 + 112) = v15;
  return a3;
}

uint64_t objectdestroy_2Tm()
{
  type metadata accessor for AppleIntelligenceEvent(0);
  OUTLINED_FUNCTION_15_0();
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v5 = *(v4 + 64);
  v6 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  v9 = *(v7 + 80);
  v11 = *(v10 + 64);

  v12 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      if (*(v12 + 16))
      {
      }

      v27 = v12 + *(type metadata accessor for AppleIntelligenceAssetDeliveryEvent(0) + 48);
      type metadata accessor for AppleIntelligenceAssetDeliveryEvent.EventType(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v28 = type metadata accessor for AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState(0);
          (*(v8 + 8))(v27 + *(v28 + 24), v6);
          goto LABEL_28;
        case 2u:

          goto LABEL_27;
        case 3u:
        case 7u:

          goto LABEL_27;
        case 4u:
          goto LABEL_25;
        case 5u:

          goto LABEL_27;
        case 6u:

          if (*(v27 + 88) != 1)
          {
LABEL_25:

LABEL_27:
          }

          break;
        default:
          goto LABEL_28;
      }

      break;
    case 1:
      v32 = v11;

      v16 = type metadata accessor for AppleIntelligenceInferenceEvent(0);
      if (!OUTLINED_FUNCTION_27_2())
      {
        v17 = OUTLINED_FUNCTION_8_4();
        v18(v17);
      }

      OUTLINED_FUNCTION_32_2();
      v19 = *(v16 + 28);
      v20 = type metadata accessor for UUIDIdentifier(0);
      if (!__swift_getEnumTagSinglePayload(v12 + v19, 1, v20))
      {
        v21 = OUTLINED_FUNCTION_8_4();
        v22(v21);
      }

      if (!OUTLINED_FUNCTION_27_2())
      {
        v23 = OUTLINED_FUNCTION_8_4();
        v24(v23);
      }

      if (!OUTLINED_FUNCTION_27_2())
      {
        v25 = OUTLINED_FUNCTION_8_4();
        v26(v25);
      }

      if (*(v12 + *(v16 + 44) + 8))
      {
      }

      OUTLINED_FUNCTION_32_2();
      OUTLINED_FUNCTION_32_2();
      OUTLINED_FUNCTION_32_2();
      OUTLINED_FUNCTION_32_2();

      v11 = v32;
      break;
    case 0:

      type metadata accessor for MinimalInferenceEvent(0);
      if (!OUTLINED_FUNCTION_27_2())
      {
        v14 = OUTLINED_FUNCTION_8_4();
        v15(v14);
      }

      v3 = (v2 + 24) & ~v2;
      break;
  }

LABEL_28:
  v29 = (v5 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + v9 + 8) & ~v9;

  (*(v8 + 8))(v0 + v30, v6);

  return MEMORY[0x1EEE6BDD0](v0, v30 + v11, v2 | v9 | 7);
}

void partial apply for closure #3 in EventReporter.emitAppleIntelligenceIntervalEvent<A>(eventInfo:_:)()
{
  partial apply for closure #3 in EventReporter.emitAppleIntelligenceIntervalEvent<A>(eventInfo:_:)();
}

{
  v0 = type metadata accessor for AppleIntelligenceEvent(0);
  OUTLINED_FUNCTION_4_4(v0);
  v1 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_29(v1);
  closure #3 in EventReporter.emitAppleIntelligenceIntervalEvent<A>(eventInfo:_:)();
}

{
  partial apply for closure #3 in EventReporter.emitAppleIntelligenceIntervalEvent<A>(eventInfo:_:)();
}

uint64_t objectdestroy_24Tm()
{
  v1 = *(v0 + 24);
  type metadata accessor for AppleIntelligenceEvent(0);
  OUTLINED_FUNCTION_15_0();
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_2_5();
  v7 = v6;
  v38 = *(v6 + 80);
  v37 = *(v8 + 64);
  v9 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  v12 = *(v10 + 80);
  v36 = *(v13 + 64);

  v14 = v0 + ((v3 + 48) & ~v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    if (*(v14 + 16))
    {
    }

    v29 = v14 + *(type metadata accessor for AppleIntelligenceAssetDeliveryEvent(0) + 48);
    type metadata accessor for AppleIntelligenceAssetDeliveryEvent.EventType(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v30 = type metadata accessor for AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState(0);
        (*(v11 + 8))(v29 + *(v30 + 24), v9);
        goto LABEL_28;
      case 2u:

        break;
      case 3u:
      case 7u:

        break;
      case 4u:
        goto LABEL_25;
      case 5u:

        break;
      case 6u:

        if (*(v29 + 88) == 1)
        {
          goto LABEL_28;
        }

LABEL_25:

        break;
      default:
        goto LABEL_28;
    }

LABEL_27:

    goto LABEL_28;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_28;
    }

    type metadata accessor for MinimalInferenceEvent(0);
    if (!OUTLINED_FUNCTION_29_3())
    {
      v16 = OUTLINED_FUNCTION_9_3();
      v17(v16);
    }

    goto LABEL_27;
  }

  v35 = v1;

  v18 = type metadata accessor for AppleIntelligenceInferenceEvent(0);
  if (!OUTLINED_FUNCTION_29_3())
  {
    v19 = OUTLINED_FUNCTION_9_3();
    v20(v19);
  }

  OUTLINED_FUNCTION_42_2();
  v21 = *(v18 + 28);
  v22 = type metadata accessor for UUIDIdentifier(0);
  if (!__swift_getEnumTagSinglePayload(v14 + v21, 1, v22))
  {
    v23 = OUTLINED_FUNCTION_9_3();
    v24(v23);
  }

  if (!OUTLINED_FUNCTION_29_3())
  {
    v25 = OUTLINED_FUNCTION_9_3();
    v26(v25);
  }

  if (!OUTLINED_FUNCTION_29_3())
  {
    v27 = OUTLINED_FUNCTION_9_3();
    v28(v27);
  }

  if (*(v14 + *(v18 + 44) + 8))
  {
  }

  OUTLINED_FUNCTION_42_2();
  OUTLINED_FUNCTION_42_2();
  OUTLINED_FUNCTION_42_2();
  OUTLINED_FUNCTION_42_2();

  v1 = v35;
LABEL_28:
  v31 = v3 | v38 | v12;
  v32 = (((v3 + 48) & ~v3) + v5 + v38) & ~v38;
  v33 = (v32 + v37 + v12) & ~v12;
  (*(v7 + 8))(v0 + v32, v1);
  (*(v11 + 8))(v0 + v33, v9);

  return MEMORY[0x1EEE6BDD0](v0, v33 + v36, v31 | 7);
}

void _s26AppleIntelligenceReporting13EventReporterC04emitab8IntervalD09eventInfo_xAA0abD0O_x_AA0abC8MetadataOSgtyYaq_YKctYaq_YKs8SendableRzAA0aB5ErrorR_r0_lFyyKcfU1_TATm()
{
  v0 = type metadata accessor for AppleIntelligenceEvent(0);
  OUTLINED_FUNCTION_4_4(v0);
  OUTLINED_FUNCTION_15_0();
  v1 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_29(v1);
  _s26AppleIntelligenceReporting13EventReporterC04emitab8IntervalD09eventInfo_xAA0abD0O_x_AA0abC8MetadataOSgtyYaq_YKctYaq_YKs8SendableRzAA0aB5ErrorR_r0_lFyyKcfU1_Tm();
}

uint64_t objectdestroyTm()
{
  type metadata accessor for AppleIntelligenceEvent(0);
  OUTLINED_FUNCTION_15_0();
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v5 = *(v4 + 64);
  v6 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  v9 = *(v7 + 80);
  v11 = *(v10 + 64);

  v12 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      if (*(v12 + 16))
      {
      }

      v27 = v12 + *(type metadata accessor for AppleIntelligenceAssetDeliveryEvent(0) + 48);
      type metadata accessor for AppleIntelligenceAssetDeliveryEvent.EventType(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v28 = type metadata accessor for AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState(0);
          (*(v8 + 8))(v27 + *(v28 + 24), v6);
          goto LABEL_28;
        case 2u:

          goto LABEL_27;
        case 3u:
        case 7u:

          goto LABEL_27;
        case 4u:
          goto LABEL_25;
        case 5u:

          goto LABEL_27;
        case 6u:

          if (*(v27 + 88) != 1)
          {
LABEL_25:

LABEL_27:
          }

          break;
        default:
          goto LABEL_28;
      }

      break;
    case 1:
      v31 = v5;

      v16 = type metadata accessor for AppleIntelligenceInferenceEvent(0);
      if (!OUTLINED_FUNCTION_31_3())
      {
        v17 = OUTLINED_FUNCTION_6_5();
        v18(v17);
      }

      OUTLINED_FUNCTION_32_2();
      v19 = *(v16 + 28);
      v20 = type metadata accessor for UUIDIdentifier(0);
      if (!__swift_getEnumTagSinglePayload(v12 + v19, 1, v20))
      {
        v21 = OUTLINED_FUNCTION_6_5();
        v22(v21);
      }

      if (!OUTLINED_FUNCTION_31_3())
      {
        v23 = OUTLINED_FUNCTION_6_5();
        v24(v23);
      }

      if (!OUTLINED_FUNCTION_31_3())
      {
        v25 = OUTLINED_FUNCTION_6_5();
        v26(v25);
      }

      if (*(v12 + *(v16 + 44) + 8))
      {
      }

      OUTLINED_FUNCTION_32_2();
      OUTLINED_FUNCTION_32_2();
      OUTLINED_FUNCTION_32_2();
      OUTLINED_FUNCTION_32_2();

      v5 = v31;
      break;
    case 0:

      type metadata accessor for MinimalInferenceEvent(0);
      if (!OUTLINED_FUNCTION_31_3())
      {
        v14 = OUTLINED_FUNCTION_6_5();
        v15(v14);
      }

      v3 = (v2 + 24) & ~v2;
      break;
  }

LABEL_28:
  v29 = (v3 + v5 + v9) & ~v9;
  (*(v8 + 8))(v0 + v29, v6);

  return MEMORY[0x1EEE6BDD0](v0, v29 + v11, v2 | v9 | 7);
}

void partial apply for closure #1 in EventReporter.emitAppleIntelligenceIntervalEvent<A>(eventInfo:_:)()
{
  v0 = type metadata accessor for AppleIntelligenceEvent(0);
  OUTLINED_FUNCTION_4_4(v0);
  v1 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_29(v1);
  closure #1 in EventReporter.emitAppleIntelligenceIntervalEvent<A>(eventInfo:_:)();
}

{
  _s26AppleIntelligenceReporting13EventReporterC04emitab8IntervalD09eventInfo_xAA0abD0O_x_AA0abC8MetadataOSgtyYaq_YKctYaq_YKs8SendableRzAA0aB5ErrorR_r0_lFyyKcfU_TA();
}

uint64_t outlined init with take of AppleIntelligenceEvent(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t outlined destroy of UUIDIdentifier(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_23_3@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>)
{
  *a1 = a2;
  *(a1 + 16) = a3;
  *(a1 + 25) = *(v3 - 143);

  return __swift_destroy_boxed_opaque_existential_1((v3 - 120));
}

uint64_t OUTLINED_FUNCTION_24_3()
{

  return type metadata accessor for AppleIntelligenceReportingEventType();
}

void *OUTLINED_FUNCTION_28_3()
{
  v2 = *(v0 - 96);

  return __swift_project_boxed_opaque_existential_1((v0 - 120), v2);
}

uint64_t OUTLINED_FUNCTION_34_2()
{

  return swift_task_alloc();
}

__n128 OUTLINED_FUNCTION_37_2(uint64_t a1, uint64_t a2)
{
  result = *(v2 - 223);
  v4 = *(v2 - 232);
  *a2 = *(v2 - 248);
  *(a2 + 16) = v4;
  *(a2 + 25) = result;
  return result;
}

void OUTLINED_FUNCTION_40_0()
{

  EventReporter.getBiomeEventReporter(for:)(v0, v1 - 128);
}

uint64_t OUTLINED_FUNCTION_41_3()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_42_2()
{
}

void OUTLINED_FUNCTION_52_3()
{

  EventReporter.getBiomeEventReporter(for:)(v0, v1 - 128);
}

uint64_t OUTLINED_FUNCTION_53_3(double a1)
{

  return UUID.init()();
}

uint64_t specialized AppleIntelligenceError.toGeneralReportingError.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_29(v5);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_39_3();
  v7 = type metadata accessor for AppleIntelligenceReportingGeneralError();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v29 - v14;
  AppleIntelligenceReportingGeneralError.init()();

  result = AppleIntelligenceReportingGeneralError.domain.setter();
  v17 = *(v3 + 32);
  if (v17 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v17 > 0x7FFFFFFF)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  LOBYTE(v32[0]) = 0;
  AppleIntelligenceReportingGeneralError.errorCode.setter();

  AppleIntelligenceReportingGeneralError.descriptionWithoutUnderlying.setter();

  AppleIntelligenceReportingGeneralError.description.setter();
  v34 = MEMORY[0x1E69E7CC0];
  v18 = specialized AppleIntelligenceError.userInfo.getter();
  specialized Sequence.forEach(_:)(v18, &v34);

  v19 = v34;

  AppleIntelligenceReportingGeneralError.additionalUserInfo.setter();
  LOBYTE(v32[0]) = *(v3 + 80);
  AppleIntelligenceErrorCategory.rawValue.getter();
  AppleIntelligenceReportingGeneralError.category.setter();
  outlined init with copy of UUIDIdentifier?(v3 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_retryAfterDate, v2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v31 = v15;
  AppleIntelligenceReportingGeneralError.retryAfterDate.setter();
  specialized _arrayForceCast<A, B>(_:)();
  v21 = v20;
  v22 = *(v20 + 16);
  if (v22)
  {
    v29[1] = v19;
    v30 = a1;
    v33 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v23 = v33;
    v29[0] = v21;
    v24 = v21 + 32;
    do
    {
      outlined init with copy of any Source<Self.Stream == A>(v24, v32);
      __swift_project_boxed_opaque_existential_1(v32, v32[3]);
      OUTLINED_FUNCTION_50();
      AppleIntelligenceError.toGeneralReportingError.getter();
      __swift_destroy_boxed_opaque_existential_1(v32);
      v33 = v23;
      v26 = *(v23 + 16);
      v25 = *(v23 + 24);
      if (v26 >= v25 >> 1)
      {
        OUTLINED_FUNCTION_25_1(v25);
        OUTLINED_FUNCTION_48_3();
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v23 = v33;
      }

      *(v23 + 16) = v26 + 1;
      OUTLINED_FUNCTION_39_0();
      (*(v9 + 32))(v23 + v27 + *(v9 + 72) * v26, v12, v7);
      v24 += 40;
      --v22;
    }

    while (v22);

    a1 = v30;
  }

  else
  {
  }

  v28 = v31;
  AppleIntelligenceReportingGeneralError.internalUnderlyingErrors.setter();
  (*(v9 + 32))(a1, v28, v7);
}

uint64_t specialized AppleIntelligenceError.userInfo.getter()
{
  specialized _arrayForceCast<A, B>(_:)();
  GeneralAppleIntelligenceError.requestFeedback.getter();
  _s26AppleIntelligenceReporting0aB5ErrorPAAE15defaultUserInfo11description16underlyingErrors8category14retryAfterDate010additionalfG015requestFeedbackSDyS2SGSS_SayAaB_pGAA0abD8CategoryO10Foundation0N0VSgAKSbtFZAA07GeneralabD0C_Tt5B5();
  v1 = v0;

  return v1;
}

void _s26AppleIntelligenceReporting010BiomeEventC0PAAE020emitMinimalInferenceE05event6errors4type0I2IDyAA0ghE0V_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcM0OYKF()
{
  OUTLINED_FUNCTION_48();
  v85 = v1;
  v86 = v2;
  v83 = v0;
  v84 = v3;
  v5 = v4;
  v80 = v6;
  v87 = v8;
  v88 = v7;
  v10 = v9;
  v81 = type metadata accessor for AppleIntelligenceBiomeEvent(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_0();
  v82 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_29(v13);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_19_0();
  v79 = v15;
  OUTLINED_FUNCTION_19();
  v89 = type metadata accessor for AppleIntelligenceReportingGeneralError();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_60();
  v73 = v19;
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v73 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA18ReportingEventTypeOSgMd, &_s27IntelligencePlatformLibrary05AppleA18ReportingEventTypeOSgMR);
  OUTLINED_FUNCTION_29(v23);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v73 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_29(v27);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v73 - v29;
  type metadata accessor for AppleIntelligenceReportingInvocationStep();
  OUTLINED_FUNCTION_1();
  v77 = v32;
  v78 = v31;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2();
  v35 = v34 - v33;
  AppleIntelligenceReportingInvocationStep.init()();

  OUTLINED_FUNCTION_26_4();
  AppleIntelligenceReportingInvocationStep.subsystem.setter();

  OUTLINED_FUNCTION_26_4();
  AppleIntelligenceReportingInvocationStep.stepIdentifier.setter();
  v36 = type metadata accessor for MinimalInferenceEvent(0);
  outlined init with copy of UUIDIdentifier?(v10 + *(v36 + 24), v30, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v75 = v30;
  AppleIntelligenceReportingInvocationStep.modelManagerRequestID.setter();
  v37 = type metadata accessor for AppleIntelligenceReportingEventType();
  OUTLINED_FUNCTION_9();
  (*(v38 + 16))(v26, v87, v37);
  OUTLINED_FUNCTION_13_2();
  v39 = v37;
  v40 = v88;
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v39);
  v76 = v35;
  AppleIntelligenceReportingInvocationStep.type.setter();
  v44 = *(v40 + 16);
  if (v44)
  {
    v74 = v5;
    v92 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v45 = v40 + 32;
    do
    {
      outlined init with copy of any Source<Self.Stream == A>(v45, &v90);
      __swift_project_boxed_opaque_existential_1(&v90, *&v91[8]);
      OUTLINED_FUNCTION_50();
      AppleIntelligenceError.toGeneralReportingError.getter();
      __swift_destroy_boxed_opaque_existential_1(&v90);
      v47 = *(v92 + 16);
      v46 = *(v92 + 24);
      if (v47 >= v46 >> 1)
      {
        OUTLINED_FUNCTION_25_1(v46);
        OUTLINED_FUNCTION_48_3();
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      *(v92 + 16) = v47 + 1;
      OUTLINED_FUNCTION_39_0();
      (*(v17 + 32))(v92 + v48 + *(v17 + 72) * v47, v22, v89);
      v45 += 40;
      --v44;
    }

    while (v44);
    v49 = v86;
    v5 = v74;
  }

  else
  {
    v50 = v73;
    v51 = v86;
    v88 = *(v10 + *(v36 + 28));
    v52 = specialized Array.count.getter(v88);
    if (v52)
    {
      v53 = v52;
      v74 = v5;
      *&v90 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v87 = v53;
      if (v53 < 0)
      {
        __break(1u);
        return;
      }

      v54 = 0;
      v55 = v90;
      v56 = v88 & 0xC000000000000001;
      v57 = v50;
      do
      {
        if (v56)
        {
          MEMORY[0x1C68E2790](v54, v88);
        }

        else
        {
        }

        specialized AppleIntelligenceError.toGeneralReportingError.getter(v57);

        *&v90 = v55;
        v59 = *(v55 + 16);
        v58 = *(v55 + 24);
        if (v59 >= v58 >> 1)
        {
          OUTLINED_FUNCTION_25_1(v58);
          OUTLINED_FUNCTION_48_3();
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v55 = v90;
        }

        ++v54;
        *(v55 + 16) = v59 + 1;
        OUTLINED_FUNCTION_39_0();
        (*(v17 + 32))(v55 + v60 + *(v17 + 72) * v59, v57, v89);
      }

      while (v87 != v54);
      v5 = v74;
      v49 = v86;
    }

    else
    {
      v49 = v51;
    }
  }

  v61 = v76;
  AppleIntelligenceReportingInvocationStep.errors.setter();
  v62 = v84;
  (*(v5 + 16))(v84, v5);
  type metadata accessor for Date();
  OUTLINED_FUNCTION_13_2();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v66);
  AppleIntelligenceReportingInvocationStep.timestamp.setter();
  outlined init with copy of UUIDIdentifier?(v80, v75, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  AppleIntelligenceReportingInvocationStep.eventPairID.setter();
  v68 = v77;
  v67 = v78;
  v69 = v82;
  (*(v77 + 16))(v82, v61, v78);
  swift_storeEnumTagMultiPayload();
  v70 = v85;
  (*(v5 + 24))(v69, &v90, v62, v5);
  OUTLINED_FUNCTION_0_7();
  _s26AppleIntelligenceReporting0aB18AssetDeliveryEventVWOhTm_0(v69, v71);
  (*(v68 + 8))(v61, v67);
  if (v70)
  {
    v72 = *v91;
    *v49 = v90;
    v49[1] = v72;
    *(v49 + 25) = *&v91[9];
  }

  OUTLINED_FUNCTION_47();
}

void _s26AppleIntelligenceReporting010BiomeEventC0PAAE017emitAssetDeliveryE05event6errors4type0I2IDyAA0abghE0V_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcM0OYKF()
{
  OUTLINED_FUNCTION_48();
  v212 = v3;
  v224 = v1;
  v229 = v0;
  v230 = v4;
  v6 = v5;
  v231 = v7;
  v219 = v8;
  OUTLINED_FUNCTION_52_2();
  type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
  OUTLINED_FUNCTION_1();
  v207 = v10;
  v208 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_0();
  v223 = v11;
  OUTLINED_FUNCTION_19();
  v215 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
  OUTLINED_FUNCTION_1();
  v228 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_60();
  v206 = v14;
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_45();
  v211 = v16;
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_45();
  v205 = v18;
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_45();
  v210 = v20;
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_45();
  v204 = v22;
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v23);
  v203 = v189 - v24;
  OUTLINED_FUNCTION_19();
  type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  OUTLINED_FUNCTION_1();
  v201 = v26;
  v202 = v25;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2_0();
  v222 = v27;
  v28 = OUTLINED_FUNCTION_19();
  v29 = type metadata accessor for AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState(v28);
  v30 = OUTLINED_FUNCTION_29(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_2_0();
  v209 = v31;
  v32 = OUTLINED_FUNCTION_19();
  v225 = type metadata accessor for AppleIntelligenceBiomeEvent(v32);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_60();
  v199 = v34;
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_45();
  v200 = v36;
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_45();
  v189[2] = v38;
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_45();
  v221 = v40;
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_45();
  v198 = v42;
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_45();
  v189[1] = v44;
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_45();
  v197 = v46;
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_45();
  v196 = v48;
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_45();
  v195 = v50;
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_45();
  v194 = v52;
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v53);
  v191 = v189 - v54;
  OUTLINED_FUNCTION_19();
  type metadata accessor for AppleIntelligenceReportingAvailabilityLog();
  OUTLINED_FUNCTION_1();
  v192 = v56;
  v193 = v55;
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_2_0();
  v190 = v57;
  v58 = OUTLINED_FUNCTION_19();
  v218 = type metadata accessor for AppleIntelligenceAssetDeliveryEvent.EventType(v58);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_2_0();
  v220 = v60;
  OUTLINED_FUNCTION_19();
  v232 = type metadata accessor for AppleIntelligenceReportingGeneralError();
  OUTLINED_FUNCTION_1();
  v62 = v61;
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_2_0();
  v213 = v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA18ReportingEventTypeOSgMd, &_s27IntelligencePlatformLibrary05AppleA18ReportingEventTypeOSgMR);
  OUTLINED_FUNCTION_29(v65);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_50_4();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_29(v67);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v68);
  v69 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
  OUTLINED_FUNCTION_1();
  v71 = v70;
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_2();
  v75 = v74 - v73;
  v227 = v0;
  v233 = v0;
  v76 = v224;
  static Buildable.with(_:)();
  v224 = v76;
  v77 = *(v6 + 16);
  v226 = v6;
  v77(v230, v6);
  type metadata accessor for Date();
  OUTLINED_FUNCTION_13_2();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v81);
  v82 = v75;
  v83 = v219;
  AppleIntelligenceReportingAssetDeliveryEvent.date.setter();
  v84 = type metadata accessor for AppleIntelligenceReportingEventType();
  OUTLINED_FUNCTION_9();
  (*(v85 + 16))(v2, v231, v84);
  OUTLINED_FUNCTION_13_2();
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v84);
  AppleIntelligenceReportingAssetDeliveryEvent.type.setter();
  v89 = *(v83 + 16);
  v216 = v69;
  v217 = v71;
  if (v89)
  {
    v214 = v82;
    v242 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v90 = v83 + 32;
    v231 = v62 + 32;
    v91 = v213;
    do
    {
      outlined init with copy of any Source<Self.Stream == A>(v90, v234);
      __swift_project_boxed_opaque_existential_1(v234, v234[3]);
      AppleIntelligenceError.toGeneralReportingError.getter();
      __swift_destroy_boxed_opaque_existential_1(v234);
      v93 = *(v242 + 16);
      v92 = *(v242 + 24);
      if (v93 >= v92 >> 1)
      {
        OUTLINED_FUNCTION_25_1(v92);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      *(v242 + 16) = v93 + 1;
      OUTLINED_FUNCTION_39_0();
      (*(v62 + 32))(v242 + v94 + *(v62 + 72) * v93, v91, v232);
      v90 += 40;
      v89 = (v89 - 1);
    }

    while (v89);
    v82 = v214;
    AppleIntelligenceReportingAssetDeliveryEvent.errors.setter();
  }

  type metadata accessor for AppleIntelligenceAssetDeliveryEvent(0);
  OUTLINED_FUNCTION_5_6();
  v96 = v220;
  _s26AppleIntelligenceReporting0aB5EventOWOcTm_0(v227 + v95, v220);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v98 = v228;
  v99 = v225;
  v100 = v221;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v125 = v96;
      v126 = v209;
      _s26AppleIntelligenceReporting0aB18AssetDeliveryEventVWObTm_0(v125, v209);
      OUTLINED_FUNCTION_46_1();
      MEMORY[0x1EEE9AC00](v127);
      OUTLINED_FUNCTION_92();
      *(v128 - 16) = v82;
      *(v128 - 8) = v126;
      v129 = v224;
      static Buildable.with(_:)();
      OUTLINED_FUNCTION_55_3();
      v130 = v194;
      v131 = OUTLINED_FUNCTION_42_3();
      v132(v131);
      swift_storeEnumTagMultiPayload();
      v133 = OUTLINED_FUNCTION_8_5();
      v134(v133);
      if (v129)
      {
        OUTLINED_FUNCTION_0_7();
        _s26AppleIntelligenceReporting0aB18AssetDeliveryEventVWOhTm_0(v130, v135);
        v136 = OUTLINED_FUNCTION_24_4();
        v137(v136);
        OUTLINED_FUNCTION_9_4();
        OUTLINED_FUNCTION_22_2();
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_0_7();
      _s26AppleIntelligenceReporting0aB18AssetDeliveryEventVWOhTm_0(v130, v171);
      v172 = OUTLINED_FUNCTION_24_4();
      v173(v172);
      OUTLINED_FUNCTION_22_2();
      goto LABEL_34;
    case 2:
      v89 = v189;
      v117 = v96[1];
      v235[0] = *v96;
      v235[1] = v117;
      v236 = *(v96 + 4);
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      OUTLINED_FUNCTION_92();
      *(v118 - 16) = v82;
      *(v118 - 8) = v235;
      OUTLINED_FUNCTION_21_3(_s26AppleIntelligenceReporting010BiomeEventC0PAAE017emitAssetDeliveryE05event6errors4type0I2IDyAA0abghE0V_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcM0OYKFyAM0abc6MobileG3LogVzXEfU2_TA);
      outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState(v235);
      OUTLINED_FUNCTION_10_4();
      v119 = v195;
      goto LABEL_18;
    case 3:
      memcpy(v237, v96, sizeof(v237));
      OUTLINED_FUNCTION_46_1();
      MEMORY[0x1EEE9AC00](v120);
      OUTLINED_FUNCTION_92();
      *(v121 - 16) = v82;
      *(v121 - 8) = v237;
      OUTLINED_FUNCTION_21_3(_s26AppleIntelligenceReporting010BiomeEventC0PAAE017emitAssetDeliveryE05event6errors4type0I2IDyAA0abghE0V_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcM0OYKFyAM0abc6MobileG3LogVzXEfU3_TA);
      outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState(v237);
      OUTLINED_FUNCTION_10_4();
      v119 = v196;
      goto LABEL_18;
    case 4:
      memcpy(v238, v96, sizeof(v238));
      OUTLINED_FUNCTION_46_1();
      MEMORY[0x1EEE9AC00](v110);
      OUTLINED_FUNCTION_92();
      v214 = v82;
      *(v111 - 16) = v82;
      *(v111 - 8) = v238;
      v112 = v210;
      OUTLINED_FUNCTION_40_1(_s26AppleIntelligenceReporting010BiomeEventC0PAAE017emitAssetDeliveryE05event6errors4type0I2IDyAA0abghE0V_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcM0OYKFyAM0abc6MobileG3LogVzXEfU4_TA);
      v232 = v76;
      outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState(v238);
      OUTLINED_FUNCTION_30_4();
      v113 = v197;
      v114(v197, v112, v99);
      OUTLINED_FUNCTION_42_3();
      swift_storeEnumTagMultiPayload();
      v115 = OUTLINED_FUNCTION_27_3();
      v112(v115);
      if (v76)
      {
        OUTLINED_FUNCTION_0_7();
        _s26AppleIntelligenceReporting0aB18AssetDeliveryEventVWOhTm_0(v113, v116);
        (*(v98 + 8))(v210, v99);
        goto LABEL_23;
      }

      v232 = v112;
      OUTLINED_FUNCTION_0_7();
      _s26AppleIntelligenceReporting0aB18AssetDeliveryEventVWOhTm_0(v113, v169);
      BiomeEventReporting.secondaryJobEvent(from:)();
      swift_storeEnumTagMultiPayload();
      v180 = OUTLINED_FUNCTION_37_3();
      v181(v180);
      v182 = v228;
      OUTLINED_FUNCTION_0_7();
      _s26AppleIntelligenceReporting0aB18AssetDeliveryEventVWOhTm_0(v185, v186);
      (*(v182 + 8))(v210, v215);
      goto LABEL_37;
    case 5:
      memcpy(v239, v96, sizeof(v239));
      OUTLINED_FUNCTION_46_1();
      MEMORY[0x1EEE9AC00](v139);
      OUTLINED_FUNCTION_92();
      *(v140 - 16) = v82;
      *(v140 - 8) = v239;
      OUTLINED_FUNCTION_21_3(_s26AppleIntelligenceReporting010BiomeEventC0PAAE017emitAssetDeliveryE05event6errors4type0I2IDyAA0abghE0V_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcM0OYKFyAM0abc6MobileG3LogVzXEfU5_TA);
      outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState(v239);
      OUTLINED_FUNCTION_10_4();
      v119 = v198;
      goto LABEL_18;
    case 6:
      memcpy(v240, v96, sizeof(v240));
      OUTLINED_FUNCTION_46_1();
      MEMORY[0x1EEE9AC00](v151);
      OUTLINED_FUNCTION_92();
      v214 = v82;
      *(v152 - 16) = v82;
      *(v152 - 8) = v240;
      v153 = v211;
      OUTLINED_FUNCTION_40_1(_s26AppleIntelligenceReporting010BiomeEventC0PAAE017emitAssetDeliveryE05event6errors4type0I2IDyAA0abghE0V_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcM0OYKFyAM0abc6MobileG3LogVzXEfU6_TA);
      v232 = v76;
      outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState(v240);
      OUTLINED_FUNCTION_30_4();
      v154(v100, v153, v99);
      OUTLINED_FUNCTION_42_3();
      swift_storeEnumTagMultiPayload();
      v155 = OUTLINED_FUNCTION_27_3();
      v153(v155);
      if (v76)
      {
        OUTLINED_FUNCTION_0_7();
        _s26AppleIntelligenceReporting0aB18AssetDeliveryEventVWOhTm_0(v100, v156);
        (*(v98 + 8))(v211, v99);
LABEL_23:
        v138 = OUTLINED_FUNCTION_9_4();
        v157 = v217;
        v82 = v214;
        goto LABEL_28;
      }

      v232 = v153;
      OUTLINED_FUNCTION_0_7();
      _s26AppleIntelligenceReporting0aB18AssetDeliveryEventVWOhTm_0(v100, v174);
      BiomeEventReporting.secondarySecureEvent(from:)();
      swift_storeEnumTagMultiPayload();
      v183 = OUTLINED_FUNCTION_37_3();
      v184(v183);
      OUTLINED_FUNCTION_0_7();
      _s26AppleIntelligenceReporting0aB18AssetDeliveryEventVWOhTm_0(v187, v188);
      (*(v228 + 8))(v211, v215);
LABEL_37:
      v179 = v217;
      v82 = v214;
      goto LABEL_35;
    case 7:
      v89 = v189;
      v122 = v96[1];
      v241[0] = *v96;
      v241[1] = v122;
      v123 = v96[3];
      v241[2] = v96[2];
      v241[3] = v123;
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      OUTLINED_FUNCTION_92();
      *(v124 - 16) = v82;
      *(v124 - 8) = v241;
      OUTLINED_FUNCTION_21_3(_s26AppleIntelligenceReporting010BiomeEventC0PAAE017emitAssetDeliveryE05event6errors4type0I2IDyAA0abghE0V_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcM0OYKFyAM0abc6MobileG3LogVzXEfU7_TA);
      outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState(v241);
      OUTLINED_FUNCTION_10_4();
      v119 = v200;
LABEL_18:
      v141 = OUTLINED_FUNCTION_42_3();
      v142(v141);
      swift_storeEnumTagMultiPayload();
      v143 = OUTLINED_FUNCTION_8_5();
      v144(v143);
      if (v76)
      {
        OUTLINED_FUNCTION_0_7();
        _s26AppleIntelligenceReporting0aB18AssetDeliveryEventVWOhTm_0(v119, v145);
        v146 = OUTLINED_FUNCTION_43_3();
        v147(v146, v89);
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_0_7();
      _s26AppleIntelligenceReporting0aB18AssetDeliveryEventVWOhTm_0(v119, v148);
      v149 = OUTLINED_FUNCTION_43_3();
      v150(v149, v89);
      goto LABEL_34;
    case 8:
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      v189[-2] = v82;
      LOWORD(v189[-1]) = v158;
      v159 = v224;
      static Buildable.with(_:)();
      OUTLINED_FUNCTION_55_3();
      v160 = v199;
      v161 = OUTLINED_FUNCTION_42_3();
      v162(v161);
      swift_storeEnumTagMultiPayload();
      v163 = OUTLINED_FUNCTION_8_5();
      v164(v163);
      if (v159)
      {
        OUTLINED_FUNCTION_0_7();
        _s26AppleIntelligenceReporting0aB18AssetDeliveryEventVWOhTm_0(v160, v165);
        v166 = OUTLINED_FUNCTION_24_4();
        v168(v166, v167);
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_0_7();
      _s26AppleIntelligenceReporting0aB18AssetDeliveryEventVWOhTm_0(v160, v175);
      v176 = OUTLINED_FUNCTION_24_4();
      v178(v176, v177);
      goto LABEL_34;
    default:
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      v189[-4] = v82;
      v189[-3] = v101;
      LOBYTE(v189[-2]) = v102;
      v103 = v190;
      v104 = v193;
      v105 = v224;
      static Buildable.with(_:)();
      v107 = v191;
      v106 = v192;
      OUTLINED_FUNCTION_55_3();
      v108(v107, v103, v104);
      swift_storeEnumTagMultiPayload();
      (*(v226 + 24))(v107, v234, v230);
      if (v105)
      {
        OUTLINED_FUNCTION_0_7();
        _s26AppleIntelligenceReporting0aB18AssetDeliveryEventVWOhTm_0(v107, v109);
        (*(v106 + 8))(v103, v104);
LABEL_26:
        v138 = OUTLINED_FUNCTION_9_4();
LABEL_27:
        v157 = v217;
LABEL_28:
        (*(v157 + 8))(v82, v216, v138);
      }

      else
      {
        OUTLINED_FUNCTION_0_7();
        _s26AppleIntelligenceReporting0aB18AssetDeliveryEventVWOhTm_0(v107, v170);
        (*(v106 + 8))(v103, v104);
LABEL_34:
        v179 = v217;
LABEL_35:
        (*(v179 + 8))(v82, v216);
      }

      OUTLINED_FUNCTION_47();
      return;
  }
}

void BiomeEventReporting.secondaryJobEvent(from:)()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary21MADownloadResultEventVSgMd, &_s27IntelligencePlatformLibrary21MADownloadResultEventVSgMR);
  OUTLINED_FUNCTION_29(v4);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_19_0();
  v45 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary15MAAssetMetadataVSgMd, &_s27IntelligencePlatformLibrary15MAAssetMetadataVSgMR);
  OUTLINED_FUNCTION_29(v7);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_19_0();
  v42 = v9;
  OUTLINED_FUNCTION_19();
  type metadata accessor for MADownloadResultEvent();
  OUTLINED_FUNCTION_1();
  v43 = v11;
  v44 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_39_3();
  v12 = type metadata accessor for MAAssetMetadata();
  OUTLINED_FUNCTION_1();
  v46 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary11MAEventTypeOSgMd, &_s27IntelligencePlatformLibrary11MAEventTypeOSgMR);
  OUTLINED_FUNCTION_29(v18);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_50_4();
  type metadata accessor for AppleIntelligenceAssetDeliveryEvent.EventType(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2();
  v23 = v22 - v21;
  type metadata accessor for AppleIntelligenceAssetDeliveryEvent(0);
  OUTLINED_FUNCTION_5_6();
  _s26AppleIntelligenceReporting0aB5EventOWOcTm_0(v3 + v24, v23);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v41 = *(v23 + 96);
    MobileAssetInstrumentationEvent.init()();
    v25 = *MEMORY[0x1E69AA300];
    v26 = type metadata accessor for MAEventType();
    OUTLINED_FUNCTION_9();
    (*(v27 + 104))(v0, v25, v26);
    OUTLINED_FUNCTION_13_2();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v26);
    MobileAssetInstrumentationEvent.eventType.setter();
    OUTLINED_FUNCTION_49_3();
    MobileAssetInstrumentationEvent.subSystemName.setter();
    MAAssetMetadata.init()();

    MAAssetMetadata.assetSpecifier.setter();

    MAAssetMetadata.assetType.setter();

    MAAssetMetadata.assetVersion.setter();
    MADownloadResultEvent.init()();
    (*(v46 + 16))(v42, v17, v12);
    v31 = OUTLINED_FUNCTION_16_4();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v12);
    MADownloadResultEvent.assetMetaData.setter();
    MADownloadResultEvent.cellularAccessRequest.setter();
    MADownloadResultEvent.cellularAccessResponse.setter();
    MADownloadResultEvent.constrainedNetworkAccessRequest.setter();
    MADownloadResultEvent.constrainedNetworkAccessResponse.setter();
    MADownloadResultEvent.expensiveNetworkAccessRequest.setter();
    MADownloadResultEvent.expensiveNetworkAccessResponse.setter();
    MADownloadResultEvent.isMAAutoAsset.setter();
    MADownloadResultEvent.isDiscretionary.setter();
    MADownloadResultEvent.IsUserPriority.setter();
    if (!v41)
    {
    }

    MADownloadResultEvent.result.setter();
    OUTLINED_FUNCTION_55_3();
    v37(v45, v1, v44);
    v38 = OUTLINED_FUNCTION_16_4();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v44);
    MobileAssetInstrumentationEvent.maDownloadResult.setter();
    (*(v43 + 8))(v1, v44);
    (*(v46 + 8))(v17, v12);
  }

  else
  {
    OUTLINED_FUNCTION_20_4();
    _s26AppleIntelligenceReporting0aB18AssetDeliveryEventVWOhTm_0(v23, v34);
    v35 = lazy protocol witness table accessor for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError();
    OUTLINED_FUNCTION_134(&type metadata for AppleIntelligenceReportingError, v35);
    OUTLINED_FUNCTION_35_3(v36, "secondarySecureEvent with wrong event type");
  }

  OUTLINED_FUNCTION_47();
}

void BiomeEventReporting.secondarySecureEvent(from:)()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary19MASecureDetailEventVSgMd, &_s27IntelligencePlatformLibrary19MASecureDetailEventVSgMR);
  OUTLINED_FUNCTION_29(v6);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_29_0(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary21MASecureOperationTypeOSgMd, _s27IntelligencePlatformLibrary21MASecureOperationTypeOSgMR);
  OUTLINED_FUNCTION_29(v9);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_29_0(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary15MAAssetMetadataVSgMd, &_s27IntelligencePlatformLibrary15MAAssetMetadataVSgMR);
  OUTLINED_FUNCTION_29(v12);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v58 - v14;
  v61 = type metadata accessor for MASecureDetailEvent();
  OUTLINED_FUNCTION_1();
  v60 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_39_3();
  v18 = type metadata accessor for MAAssetMetadata();
  OUTLINED_FUNCTION_1();
  v58[1] = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2();
  v23 = v22 - v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary11MAEventTypeOSgMd, &_s27IntelligencePlatformLibrary11MAEventTypeOSgMR);
  OUTLINED_FUNCTION_29(v24);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v25);
  v27 = v58 - v26;
  type metadata accessor for AppleIntelligenceAssetDeliveryEvent.EventType(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_4();
  type metadata accessor for AppleIntelligenceAssetDeliveryEvent(0);
  OUTLINED_FUNCTION_5_6();
  _s26AppleIntelligenceReporting0aB5EventOWOcTm_0(v3 + v29, v0);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    memcpy(v63, v0, 0xA8uLL);
    MobileAssetInstrumentationEvent.init()();
    v30 = *MEMORY[0x1E69AA2F8];
    v31 = type metadata accessor for MAEventType();
    OUTLINED_FUNCTION_9();
    (*(v32 + 104))(v27, v30, v31);
    OUTLINED_FUNCTION_13_2();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v31);
    MobileAssetInstrumentationEvent.eventType.setter();
    OUTLINED_FUNCTION_49_3();
    v58[0] = v5;
    MobileAssetInstrumentationEvent.subSystemName.setter();
    MAAssetMetadata.init()();

    MAAssetMetadata.assetSpecifier.setter();

    MAAssetMetadata.assetType.setter();

    MAAssetMetadata.assetVersion.setter();
    MASecureDetailEvent.init()();
    OUTLINED_FUNCTION_30_4();
    v36(v15, v23, v18);
    v37 = OUTLINED_FUNCTION_16_4();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v18);
    MASecureDetailEvent.assetMetaData.setter();
    switch(LOBYTE(v63[9]))
    {
      case 1:
        if (v63[11] == 1)
        {
          OUTLINED_FUNCTION_51_3();
        }

        else
        {
          OUTLINED_FUNCTION_57_1();
        }

        OUTLINED_FUNCTION_15_1();
        MASecureDetailEvent.graftingFailureReason.setter();
        OUTLINED_FUNCTION_11_3();
        MASecureDetailEvent.graftingResult.setter();
        v44 = MEMORY[0x1E69AA330];
        goto LABEL_20;
      case 2:
        if (v63[11] == 1)
        {
          OUTLINED_FUNCTION_51_3();
        }

        else
        {
          OUTLINED_FUNCTION_57_1();
        }

        OUTLINED_FUNCTION_15_1();
        MASecureDetailEvent.mapExclaveFailureReason.setter();
        OUTLINED_FUNCTION_11_3();
        MASecureDetailEvent.mapExclaveFailureResult.setter();
        v43 = v59;
        *v59 = 42;
        v44 = MEMORY[0x1E69AA328];
        goto LABEL_21;
      case 3:
        if (v63[11] == 1)
        {
          OUTLINED_FUNCTION_51_3();
        }

        else
        {
          OUTLINED_FUNCTION_57_1();
        }

        OUTLINED_FUNCTION_15_1();
        MASecureDetailEvent.mountingFailureReason.setter();
        OUTLINED_FUNCTION_11_3();
        MASecureDetailEvent.mountingFailureResult.setter();
        v44 = MEMORY[0x1E69AA338];
        goto LABEL_20;
      default:
        if (v63[11] == 1)
        {
          OUTLINED_FUNCTION_51_3();
        }

        else
        {
          OUTLINED_FUNCTION_57_1();
        }

        OUTLINED_FUNCTION_15_1();
        MASecureDetailEvent.personalizeFailureReason.setter();
        OUTLINED_FUNCTION_11_3();
        MASecureDetailEvent.personalizeFailureResult.setter();
        v44 = MEMORY[0x1E69AA320];
LABEL_20:
        v43 = v59;
LABEL_21:
        v45 = *v44;
        v46 = type metadata accessor for MASecureOperationType();
        OUTLINED_FUNCTION_9();
        (*(v47 + 104))(v43, v45, v46);
        OUTLINED_FUNCTION_13_2();
        __swift_storeEnumTagSinglePayload(v48, v49, v50, v46);
        MASecureDetailEvent.maSecureOperationType.setter();
        if (v63[11] == 1)
        {
          MASecureDetailEvent.secureReason.setter();
          outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState(v63);
        }

        else
        {

          OUTLINED_FUNCTION_15_1();
          MASecureDetailEvent.secureReason.setter();

          outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState(v63);

          outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(&v63[10], &_s26AppleIntelligenceReporting0aB18AssetDeliveryEventV06MobiledD11SecureStateV8MetadataVSgMd, &_s26AppleIntelligenceReporting0aB18AssetDeliveryEventV06MobiledD11SecureStateV8MetadataVSgMR);
        }

        MASecureDetailEvent.result.setter();
        v51 = v60;
        v52 = v61;
        (*(v60 + 16))(v62, v1, v61);
        v53 = OUTLINED_FUNCTION_16_4();
        __swift_storeEnumTagSinglePayload(v53, v54, v55, v52);
        MobileAssetInstrumentationEvent.maSecureDetail.setter();
        (*(v51 + 8))(v1, v52);
        v56 = OUTLINED_FUNCTION_43_3();
        v57(v56, v18);
        break;
    }
  }

  else
  {
    OUTLINED_FUNCTION_20_4();
    _s26AppleIntelligenceReporting0aB18AssetDeliveryEventVWOhTm_0(v0, v40);
    v41 = lazy protocol witness table accessor for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError();
    OUTLINED_FUNCTION_134(&type metadata for AppleIntelligenceReportingError, v41);
    OUTLINED_FUNCTION_35_3(v42, "secondarySecureEvent with wrong event type");
  }

  OUTLINED_FUNCTION_47();
}

uint64_t _s26AppleIntelligenceReporting010BiomeEventC0PAAE017emitAssetDeliveryE05event6errors4type0I2IDyAA0abghE0V_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcM0OYKFyAM0abC15AvailabilityLogVzXEfU0_(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v16[-v11];
  v13 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
  (*(*(v13 - 8) + 16))(v12, a2, v13);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
  AppleIntelligenceReportingAvailabilityLog.event.setter();
  v14 = type metadata accessor for AppleIntelligenceReportingAvailabilityLog.AvailabilityState();
  v17 = a3;
  v18 = a4;
  static Buildable.with(_:)();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v14);
  return AppleIntelligenceReportingAvailabilityLog.availabilityChangeEventState.setter();
}

uint64_t _s26AppleIntelligenceReporting010BiomeEventC0PAAE017emitAssetDeliveryE05event6errors4type0I2IDyAA0abghE0V_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcM0OYKFyAM0abC15ModelCatalogLogVzXEfU1_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogV0fG17SubscriptionStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogV0fG17SubscriptionStateVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14[-v9];
  v11 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
  (*(*(v11 - 8) + 16))(v10, a2, v11);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  AppleIntelligenceReportingModelCatalogLog.event.setter();
  v12 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState();
  v15 = a3;
  static Buildable.with(_:)();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v12);
  return AppleIntelligenceReportingModelCatalogLog.modelCatalogSubscriptionEventState.setter();
}

uint64_t _s26AppleIntelligenceReporting010BiomeEventC0PAAE017emitAssetDeliveryE05event6errors4type0I2IDyAA0abghE0V_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcM0OYKFyAM0abc6MobileG3LogVzXEfU2_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14SchedulerStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14SchedulerStateVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14[-v9];
  v11 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
  (*(*(v11 - 8) + 16))(v10, a2, v11);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  AppleIntelligenceReportingMobileAssetLog.event.setter();
  v12 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetSchedulerState();
  v15 = a3;
  static Buildable.with(_:)();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v12);
  return AppleIntelligenceReportingMobileAssetLog.mobileAssetSchedulerEventState.setter();
}

uint64_t _s26AppleIntelligenceReporting010BiomeEventC0PAAE017emitAssetDeliveryE05event6errors4type0I2IDyAA0abghE0V_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcM0OYKFyAM0abc6MobileG3LogVzXEfU3_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG21SetConfigurationStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG21SetConfigurationStateVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14[-v9];
  v11 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
  (*(*(v11 - 8) + 16))(v10, a2, v11);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  AppleIntelligenceReportingMobileAssetLog.event.setter();
  v12 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetSetConfigurationState();
  v15 = a3;
  static Buildable.with(_:)();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v12);
  return AppleIntelligenceReportingMobileAssetLog.mobileAssetSetConfigurationEventState.setter();
}

uint64_t _s26AppleIntelligenceReporting010BiomeEventC0PAAE017emitAssetDeliveryE05event6errors4type0I2IDyAA0abghE0V_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcM0OYKFyAM0abc6MobileG3LogVzXEfU4_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8JobStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8JobStateVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14[-v9];
  v11 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
  (*(*(v11 - 8) + 16))(v10, a2, v11);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  AppleIntelligenceReportingMobileAssetLog.event.setter();
  v12 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState();
  v15 = a3;
  static Buildable.with(_:)();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v12);
  return AppleIntelligenceReportingMobileAssetLog.mobileAssetAssetJobEventState.setter();
}

uint64_t _s26AppleIntelligenceReporting010BiomeEventC0PAAE017emitAssetDeliveryE05event6errors4type0I2IDyAA0abghE0V_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcM0OYKFyAM0abc6MobileG3LogVzXEfU5_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG11UpdateStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG11UpdateStateVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14[-v9];
  v11 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
  (*(*(v11 - 8) + 16))(v10, a2, v11);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  AppleIntelligenceReportingMobileAssetLog.event.setter();
  updated = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetUpdateState();
  v15 = a3;
  static Buildable.with(_:)();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, updated);
  return AppleIntelligenceReportingMobileAssetLog.mobileAssetAssetUpdateEventState.setter();
}

uint64_t _s26AppleIntelligenceReporting010BiomeEventC0PAAE017emitAssetDeliveryE05event6errors4type0I2IDyAA0abghE0V_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcM0OYKFyAM0abc6MobileG3LogVzXEfU6_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG11SecureStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG11SecureStateVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14[-v9];
  v11 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
  (*(*(v11 - 8) + 16))(v10, a2, v11);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  AppleIntelligenceReportingMobileAssetLog.event.setter();
  v12 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState();
  v15 = a3;
  static Buildable.with(_:)();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v12);
  return AppleIntelligenceReportingMobileAssetLog.mobileAssetAssetSecureEventState.setter();
}

uint64_t _s26AppleIntelligenceReporting010BiomeEventC0PAAE017emitAssetDeliveryE05event6errors4type0I2IDyAA0abghE0V_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcM0OYKFyAM0abc6MobileG3LogVzXEfU7_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG19AtomicInstanceStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG19AtomicInstanceStateVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14[-v9];
  v11 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
  (*(*(v11 - 8) + 16))(v10, a2, v11);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  AppleIntelligenceReportingMobileAssetLog.event.setter();
  v12 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstanceState();
  v15 = a3;
  static Buildable.with(_:)();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v12);
  return AppleIntelligenceReportingMobileAssetLog.mobileAssetAtomicInstanceEventState.setter();
}

uint64_t _s26AppleIntelligenceReporting010BiomeEventC0PAAE017emitAssetDeliveryE05event6errors4type0I2IDyAA0abghE0V_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcM0OYKFyAM0abc7UnifiedG12FrameworkLogVzXEfU8_(uint64_t a1, uint64_t a2, __int16 a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14[-v9];
  v11 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
  (*(*(v11 - 8) + 16))(v10, a2, v11);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  AppleIntelligenceReportingUnifiedAssetFrameworkLog.event.setter();
  v12 = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState();
  v15 = a3;
  static Buildable.with(_:)();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v12);
  return AppleIntelligenceReportingUnifiedAssetFrameworkLog.unifiedAssetFrameworkSubscriptionState.setter();
}

uint64_t outlined init with copy of UUIDIdentifier?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_9();
  v5 = OUTLINED_FUNCTION_50();
  v6(v5);
  return a2;
}

__n128 OUTLINED_FUNCTION_9_4()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 200);
  *v2 = *(v0 + 400);
  *(v2 + 16) = v1;
  result = *(v0 + 425);
  *(v2 + 25) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_23_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_35_3@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a2 = 0xD00000000000002ALL;
  *(a2 + 8) = (a3 - 32) | 0x8000000000000000;
  *(a2 + 40) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_40_1(uint64_t a1)
{

  return static Buildable.with(_:)();
}

uint64_t OUTLINED_FUNCTION_47_4(uint64_t a1)
{

  return outlined init with copy of UUIDIdentifier?(a1, v3, v1, v2);
}

void OUTLINED_FUNCTION_56_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_57_1()
{
}

void OUTLINED_FUNCTION_58_2()
{

  JUMPOUT(0x1C68E2FD0);
}

uint64_t static AppleIntelligenceBiomeEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v86 = a1;
  v87 = a2;
  type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
  OUTLINED_FUNCTION_1();
  v84 = v3;
  v85 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_0();
  v73 = v4;
  OUTLINED_FUNCTION_19();
  type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  OUTLINED_FUNCTION_1();
  v82 = v6;
  v83 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  v72 = v7;
  OUTLINED_FUNCTION_19();
  type metadata accessor for MobileAssetInstrumentationEvent();
  OUTLINED_FUNCTION_1();
  v80 = v9;
  v81 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_0();
  v71 = v10;
  OUTLINED_FUNCTION_19();
  type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
  OUTLINED_FUNCTION_1();
  v78 = v12;
  v79 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_0();
  v70 = v13;
  OUTLINED_FUNCTION_19();
  type metadata accessor for AppleIntelligenceReportingAvailabilityLog();
  OUTLINED_FUNCTION_1();
  v76 = v15;
  v77 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_0();
  v69 = v16;
  OUTLINED_FUNCTION_19();
  type metadata accessor for AppleIntelligenceReportingInvocationStep();
  OUTLINED_FUNCTION_1();
  v74 = v18;
  v75 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for AppleIntelligenceBiomeEvent(0);
  v22 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v69 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v69 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v69 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = (&v69 - v35);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v69 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AppleIntelligenceReporting0aB10BiomeEventO_ACtMd, &_s26AppleIntelligenceReporting0aB10BiomeEventO_ACtMR);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v42 = &v69 - v41;
  v44 = *(v43 + 56);
  outlined init with copy of AppleIntelligenceBiomeEvent(v86, &v69 - v41);
  outlined init with copy of AppleIntelligenceBiomeEvent(v87, &v42[v44]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      outlined init with copy of AppleIntelligenceBiomeEvent(v42, v36);
      if (OUTLINED_FUNCTION_4_5() == 1)
      {
        v57 = v76;
        v56 = v77;
        OUTLINED_FUNCTION_2_7();
        v58 = v69;
        v59(v69);
        v22 = static AppleIntelligenceReportingAvailabilityLog.== infix(_:_:)();
        v60 = *(v57 + 8);
        v60(v58, v56);
        v60(v36, v56);
        goto LABEL_23;
      }

      (*(v76 + 8))(v36, v77);
      goto LABEL_20;
    case 2u:
      outlined init with copy of AppleIntelligenceBiomeEvent(v42, v33);
      if (OUTLINED_FUNCTION_4_5() == 2)
      {
        v50 = v78;
        v49 = v79;
        OUTLINED_FUNCTION_2_7();
        v51 = v70;
        v52(v70);
        v22 = static AppleIntelligenceReportingMobileAssetLog.== infix(_:_:)();
        v53 = *(v50 + 8);
        v53(v51, v49);
        v53(v33, v49);
        goto LABEL_23;
      }

      (*(v78 + 8))(v33, v79);
      goto LABEL_20;
    case 3u:
      outlined init with copy of AppleIntelligenceBiomeEvent(v42, v30);
      if (OUTLINED_FUNCTION_4_5() == 3)
      {
        v45 = v81;
        OUTLINED_FUNCTION_2_7();
        v54(v71);
        static MobileAssetInstrumentationEvent.== infix(_:_:)();
        v55 = OUTLINED_FUNCTION_5_7();
        v36(v55);
        v48 = v30;
        goto LABEL_14;
      }

      (*(v80 + 8))(v30, v81);
      goto LABEL_20;
    case 4u:
      outlined init with copy of AppleIntelligenceBiomeEvent(v42, v27);
      if (OUTLINED_FUNCTION_4_5() == 4)
      {
        v45 = v83;
        OUTLINED_FUNCTION_2_7();
        v46(v72);
        static AppleIntelligenceReportingModelCatalogLog.== infix(_:_:)();
        v47 = OUTLINED_FUNCTION_5_7();
        v36(v47);
        v48 = v27;
        goto LABEL_14;
      }

      (*(v82 + 8))(v27, v83);
      goto LABEL_20;
    case 5u:
      outlined init with copy of AppleIntelligenceBiomeEvent(v42, v24);
      if (OUTLINED_FUNCTION_4_5() != 5)
      {
        (*(v84 + 8))(v24, v85);
        goto LABEL_20;
      }

      v61 = v84;
      v45 = v85;
      OUTLINED_FUNCTION_2_7();
      v62 = v73;
      v63(v73);
      v22 = static AppleIntelligenceReportingUnifiedAssetFrameworkLog.== infix(_:_:)();
      v36 = *(v61 + 8);
      (v36)(v62, v45);
      v48 = v24;
LABEL_14:
      (v36)(v48, v45);
      goto LABEL_23;
    default:
      outlined init with copy of AppleIntelligenceBiomeEvent(v42, v39);
      if (OUTLINED_FUNCTION_4_5())
      {
        (*(v74 + 8))(v39, v75);
LABEL_20:
        outlined destroy of (AppleIntelligenceBiomeEvent, AppleIntelligenceBiomeEvent)(v42);
        v22 = 0;
      }

      else
      {
        v65 = v74;
        v64 = v75;
        OUTLINED_FUNCTION_2_7();
        v66(v20);
        v22 = static AppleIntelligenceReportingInvocationStep.== infix(_:_:)();
        v67 = *(v65 + 8);
        v67(v20, v64);
        v67(v39, v64);
LABEL_23:
        outlined destroy of AppleIntelligenceBiomeEvent(v42);
      }

      return v22 & 1;
  }
}

uint64_t outlined destroy of (AppleIntelligenceBiomeEvent, AppleIntelligenceBiomeEvent)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AppleIntelligenceReporting0aB10BiomeEventO_ACtMd, &_s26AppleIntelligenceReporting0aB10BiomeEventO_ACtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of AppleIntelligenceBiomeEvent(uint64_t a1)
{
  v2 = type metadata accessor for AppleIntelligenceBiomeEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata completion function for AppleIntelligenceBiomeEvent(uint64_t a1)
{
  result = type metadata accessor for AppleIntelligenceReportingInvocationStep();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AppleIntelligenceReportingAvailabilityLog();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for MobileAssetInstrumentationEvent();
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
            if (v7 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_5()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t RawRepresentable<>.encode(to:)()
{
  return MEMORY[0x1EEE692E0]();
}

{
  return MEMORY[0x1EEE69320]();
}

{
  return MEMORY[0x1EEE69338]();
}

uint64_t RawRepresentable<>.init(from:)()
{
  return MEMORY[0x1EEE69360]();
}

{
  return MEMORY[0x1EEE693A0]();
}

{
  return MEMORY[0x1EEE693B8]();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return MEMORY[0x1EEE6AC50]();
}

{
  return MEMORY[0x1EEE6AC58]();
}

{
  return MEMORY[0x1EEE6ACB8]();
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

{
  return MEMORY[0x1EEE6ACF0]();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return MEMORY[0x1EEE6AD90]();
}

{
  return MEMORY[0x1EEE6AD98]();
}

{
  return MEMORY[0x1EEE6ADF0]();
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

{
  return MEMORY[0x1EEE6AE28]();
}