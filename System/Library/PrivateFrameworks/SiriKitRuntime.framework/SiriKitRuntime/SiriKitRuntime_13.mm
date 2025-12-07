void *specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2, void (*a3)(_BYTE *, uint64_t))
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v5 = *v3;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v4;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
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
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = 40 * v20;
        outlined init with copy of ReferenceResolutionClientProtocol(*(v5 + 56) + 40 * v20, v29);
        v26 = (*(v7 + 48) + v21);
        *v26 = v23;
        v26[1] = v24;
        a3(v29, *(v7 + 56) + v25);
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

        v4 = v27;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v7;
  }

  return result;
}

char *specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v49 = a1;
  v50 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v48 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v47 = &v38 - v9;
  v46 = type metadata accessor for UUID();
  v51 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v11 = *v4;
  v12 = static _DictionaryStorage.copy(original:)();
  v13 = v12;
  if (*(v11 + 16))
  {
    result = (v12 + 64);
    v15 = (v11 + 64);
    v16 = ((1 << *(v13 + 32)) + 63) >> 6;
    v39 = v4;
    v40 = v11 + 64;
    if (v13 != v11 || result >= &v15[8 * v16])
    {
      result = memmove(result, v15, 8 * v16);
    }

    v17 = 0;
    v18 = *(v11 + 16);
    v52 = v13;
    *(v13 + 16) = v18;
    v19 = 1 << *(v11 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v11 + 64);
    v22 = (v19 + 63) >> 6;
    v23 = v50;
    v41 = v51 + 32;
    v42 = v51 + 16;
    v43 = v22;
    v44 = v11;
    v24 = v46;
    if (v21)
    {
      do
      {
        v25 = __clz(__rbit64(v21));
        v53 = (v21 - 1) & v21;
LABEL_14:
        v28 = v25 | (v17 << 6);
        v29 = v51;
        v30 = *(v51 + 72) * v28;
        v31 = v45;
        (*(v51 + 16))(v45, *(v11 + 48) + v30, v24);
        v32 = v47;
        v33 = *(v48 + 72) * v28;
        v34 = *(v11 + 56) + v33;
        v35 = v49;
        outlined init with copy of ReferenceResolutionClientProtocol?(v34, v47, v49, v23);
        v36 = v52;
        (*(v29 + 32))(*(v52 + 48) + v30, v31, v24);
        v37 = v35;
        v11 = v44;
        result = outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v32, *(v36 + 56) + v33, v37, v23);
        v22 = v43;
        v21 = v53;
      }

      while (v53);
    }

    v26 = v17;
    v13 = v52;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v7 = v39;
        goto LABEL_18;
      }

      v27 = *(v40 + 8 * v17);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v53 = (v27 - 1) & v27;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v7 = v13;
  }

  return result;
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = _minimumMergeRunLength(_:)(v4);
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v8 + 16) = v7;
      }

      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR) - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v10, v11, a1, v6, a2);
      *(v8 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v4, 1, a1, a2);
  }
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v87 = a5;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
  MEMORY[0x1EEE9AC00](v97);
  v85 = &v71[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v79 = &v71[-v11];
  MEMORY[0x1EEE9AC00](v12);
  v82 = &v71[-v13];
  MEMORY[0x1EEE9AC00](v14);
  v81 = &v71[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v96 = &v71[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v71[-v19];
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v71[-v23];
  v73 = a2;
  if (a3 != a2)
  {
    v25 = *a4;
    v26 = *(v22 + 72);
    v27 = *a4 + v26 * (a3 - 1);
    v83 = -v26;
    v84 = v25;
    v28 = a1 - a3;
    v72 = v26;
    v29 = v25 + v26 * a3;
    v86 = v20;
    v80 = &v71[-v23];
LABEL_5:
    v77 = a3;
    v74 = v29;
    v75 = v28;
    v30 = v28;
    v76 = v27;
    while (1)
    {
      v93 = v30;
      outlined init with copy of ReferenceResolutionClientProtocol?(v29, v24, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      outlined init with copy of ReferenceResolutionClientProtocol?(v27, v20, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      outlined init with copy of ReferenceResolutionClientProtocol?(v24, v96, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      v31 = *(v97 + 48);
      v32 = *v87;
      v33 = *(*v87 + 16);
      v92 = v27;
      if (v33 && (v34 = specialized __RawDictionaryStorage.find<A>(_:)(v96), (v35 & 1) != 0))
      {
        v78 = *(*(v32 + 56) + 8 * v34);
        v36 = type metadata accessor for ActionCandidate();
        v37 = *(v36 - 8);
        v38 = *(v37 + 8);
        v39 = v96;
        v95 = v36;
        v90 = v37 + 8;
        v91 = v38;
        v38(&v96[v31]);
        v40 = type metadata accessor for UUID();
        v41 = *(v40 - 8);
        v42 = *(v41 + 8);
        v94 = (v40 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
        v43 = v40;
        v88 = (v41 + 8);
        v89 = v42;
        v42(v39);
        outlined init with copy of ReferenceResolutionClientProtocol?(v20, v79, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
        v44 = *(v97 + 48);
        v45 = *v87;
        if (*(*v87 + 16) && (v46 = specialized __RawDictionaryStorage.find<A>(_:)(v79), (v47 & 1) != 0))
        {
          v48 = *(*(v45 + 56) + 8 * v46);
          v49 = v79;
          v50 = v95;
          v91(&v79[v44], v95);
          v51 = v49;
          v52 = v43;
          v89(v51, v43);
          v53 = v94;
          if (v78 != v48)
          {
            v54 = v78 < v48;
            v55 = v86;
            goto LABEL_15;
          }
        }

        else
        {
          v57 = v79;
          v50 = v95;
          v91(&v79[v44], v95);
          v58 = v57;
          v52 = v43;
          v89(v58, v43);
          v53 = v94;
        }
      }

      else
      {
        v50 = type metadata accessor for ActionCandidate();
        v56 = v96;
        (*(*(v50 - 8) + 8))(&v96[v31], v50);
        v52 = type metadata accessor for UUID();
        v53 = (v52 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
        (*(*(v52 - 8) + 8))(v56, v52);
      }

      v94 = v53;
      v95 = v50;
      v90 = v52;
      v59 = v81;
      outlined init with copy of ReferenceResolutionClientProtocol?(v24, v81, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      v91 = v29;
      v60 = v97;
      v61 = *(v97 + 48);
      v89 = ActionCandidate.affinityScore.getter();
      type metadata accessor for ActionCandidate();
      v88 = *(*(v50 - 8) + 8);
      v88(&v59[v61], v50);
      v55 = v86;
      v62 = v82;
      outlined init with copy of ReferenceResolutionClientProtocol?(v86, v82, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      v63 = *(v60 + 48);
      v64 = ActionCandidate.affinityScore.getter();
      v88(&v62[v63], v95);
      v54 = v64 < v89;
      type metadata accessor for UUID();
      v65 = v90;
      v66 = *(*(v90 - 8) + 8);
      v66(v62, v90);
      v66(v59, v65);
      v29 = v91;
      v24 = v80;
LABEL_15:
      v67 = v93;
      outlined destroy of ReferenceResolutionClientProtocol?(v55, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v24, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      v20 = v55;
      v68 = v92;
      if (!v54)
      {
        goto LABEL_4;
      }

      if (!v84)
      {
        __break(1u);
        return;
      }

      v69 = v85;
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v29, v85, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      swift_arrayInitWithTakeFrontToBack();
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v69, v68, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      v27 = v68 + v83;
      v29 += v83;
      v70 = __CFADD__(v67, 1);
      v30 = v67 + 1;
      if (v70)
      {
LABEL_4:
        a3 = v77 + 1;
        v27 = v76 + v72;
        v28 = v75 - 1;
        v29 = v74 + v72;
        if (v77 + 1 == v73)
        {
          return;
        }

        goto LABEL_5;
      }
    }
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v7 = v6;
  v228 = a5;
  v203 = a4;
  v199 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
  v213 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v205 = &v198 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v223 = &v198 - v12;
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v198 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v198 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v235 = &v198 - v21;
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  v225 = &v198 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v224 = &v198 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v211 = &v198 - v28;
  MEMORY[0x1EEE9AC00](v29);
  MEMORY[0x1EEE9AC00](v30);
  v216 = &v198 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v198 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v214 = a3;
  v40 = a3[1];
  if (v40 < 1)
  {
    v42 = MEMORY[0x1E69E7CC0];
LABEL_116:
    v41 = *v199;
    if (!*v199)
    {
      goto LABEL_156;
    }

    v5 = v42;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v193 = v5;
    }

    else
    {
LABEL_150:
      v193 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    }

    v237 = v193;
    v5 = *(v193 + 2);
    if (v5 >= 2)
    {
      while (*v214)
      {
        v194 = *&v193[16 * v5];
        v195 = v193;
        v196 = *&v193[16 * v5 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v214 + *(v213 + 72) * v194), (*v214 + *(v213 + 72) * *&v193[16 * v5 + 16]), (*v214 + *(v213 + 72) * v196), v41, v228);
        if (v7)
        {
          goto LABEL_127;
        }

        if (v196 < v194)
        {
          goto LABEL_143;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v195 = specialized _ArrayBuffer._consumeAndCreateNew()(v195);
        }

        if (v5 - 2 >= *(v195 + 2))
        {
          goto LABEL_144;
        }

        v197 = &v195[16 * v5];
        *v197 = v194;
        *(v197 + 1) = v196;
        v237 = v195;
        specialized Array.remove(at:)(v5 - 1);
        v193 = v237;
        v5 = *(v237 + 2);
        if (v5 <= 1)
        {
          goto LABEL_127;
        }
      }

      goto LABEL_154;
    }

LABEL_127:

    return;
  }

  v200 = &v198 - v36;
  v198 = v34;
  v218 = v39;
  v201 = v38;
  v217 = v37;
  v41 = 0;
  v42 = MEMORY[0x1E69E7CC0];
  v43 = &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd;
  v226 = v16;
  v227 = v9;
  v236 = v19;
  while (1)
  {
    v206 = v42;
    v202 = v41;
    if ((v41 + 1) >= v40)
    {
      v50 = v41 + 1;
      v89 = v203;
      goto LABEL_33;
    }

    v215 = v40;
    v44 = *v214;
    v45 = *(v213 + 72);
    v233 = *v214 + v45 * (v41 + 1);
    outlined init with copy of ReferenceResolutionClientProtocol?(v233, v200, v43, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
    v234 = v44;
    v222 = v45;
    v46 = v44 + v45 * v41;
    v5 = v43;
    v47 = v198;
    outlined init with copy of ReferenceResolutionClientProtocol?(v46, v198, v5, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
    LODWORD(v221) = closure #3 in ActionGenerator.generateActionCandidates(from:rrCandidates:appShortcutProvider:)(v200, v47, v228);
    if (v7)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v47, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v200, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      goto LABEL_127;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v47, v5, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v200, v5, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
    v48 = v41 + 2;
    v49 = v234 + v222 * (v41 + 2);
    v212 = 0;
    v43 = v5;
    v41 = v233;
    while (1)
    {
      v50 = v215;
      if (v215 == v48)
      {
        break;
      }

      v231 = v49;
      v232 = v48;
      v51 = v216;
      outlined init with copy of ReferenceResolutionClientProtocol?(v49, v216, v43, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      v233 = v41;
      outlined init with copy of ReferenceResolutionClientProtocol?(v41, v218, v43, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      v52 = v211;
      outlined init with copy of ReferenceResolutionClientProtocol?(v51, v211, v43, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      v53 = *(v9 + 48);
      v54 = *v228;
      if (!*(*v228 + 16) || (v55 = specialized __RawDictionaryStorage.find<A>(_:)(v52), (v56 & 1) == 0))
      {
        v72 = type metadata accessor for ActionCandidate();
        (*(*(v72 - 8) + 8))(v52 + v53, v72);
        v73 = type metadata accessor for UUID();
        v74 = (v73 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
        (*(*(v73 - 8) + 8))(v52, v73);
LABEL_16:
        v234 = v74;
        v230 = v73;
        v79 = v224;
        outlined init with copy of ReferenceResolutionClientProtocol?(v51, v224, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
        v80 = v227;
        v81 = *(v227 + 48);
        v229 = ActionCandidate.affinityScore.getter();
        type metadata accessor for ActionCandidate();
        v82 = *(*(v72 - 8) + 8);
        v82(v79 + v81, v72);
        v43 = &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd;
        v83 = v225;
        outlined init with copy of ReferenceResolutionClientProtocol?(v218, v225, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
        v84 = *(v80 + 48);
        v16 = v226;
        v85 = ActionCandidate.affinityScore.getter();
        v82(v83 + v84, v72);
        v5 = v85 < v229;
        type metadata accessor for UUID();
        v86 = *(*(v230 - 1) + 8);
        v87 = v83;
        v88 = v230;
        v86(v87);
        (v86)(v79, v88);
        v76 = v218;
        v75 = v216;
        v7 = v212;
        v19 = v236;
        goto LABEL_17;
      }

      v219 = *(*(v54 + 56) + 8 * v55);
      v57 = type metadata accessor for ActionCandidate();
      v58 = *(v57 - 8);
      v229 = *(v58 + 8);
      v230 = v57;
      v220 = v58 + 8;
      v229(v52 + v53);
      v59 = type metadata accessor for UUID();
      v60 = *(*(v59 - 8) + 8);
      v234 = (v59 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
      v61 = v52;
      v62 = v60;
      v63 = v59;
      (v60)(v61);
      v64 = v201;
      outlined init with copy of ReferenceResolutionClientProtocol?(v218, v201, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      v65 = *(v227 + 48);
      v66 = *v228;
      if (!*(*v228 + 16) || (v67 = specialized __RawDictionaryStorage.find<A>(_:)(v64), (v68 & 1) == 0))
      {
        v77 = v230;
        (v229)(v64 + v65, v230);
        v78 = v64;
        v72 = v77;
        v73 = v63;
        v62(v78, v63);
        v51 = v216;
        v74 = v234;
        goto LABEL_16;
      }

      v210 = *(*(v66 + 56) + 8 * v67);
      v69 = v62;
      v70 = v230;
      (v229)(v64 + v65, v230);
      v71 = v64;
      v72 = v70;
      v73 = v63;
      v69(v71, v63);
      v51 = v216;
      v74 = v234;
      if (v219 == v210)
      {
        goto LABEL_16;
      }

      v5 = v219 < v210;
      v7 = v212;
      v75 = v216;
      v19 = v236;
      v43 = &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd;
      v76 = v218;
LABEL_17:
      outlined destroy of ReferenceResolutionClientProtocol?(v76, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v75, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      v48 = v232 + 1;
      v49 = v231 + v222;
      v41 = v233 + v222;
      v9 = v227;
      if ((v221 ^ v5))
      {
        v50 = v232;
        break;
      }
    }

    v89 = v203;
    if ((v221 & 1) == 0)
    {
      goto LABEL_33;
    }

    if (v50 < v202)
    {
      goto LABEL_149;
    }

    if (v202 < v50)
    {
      v90 = v222;
      v5 = v222 * (v50 - 1);
      v91 = v50 * v222;
      v215 = v50;
      v92 = v50;
      v93 = v202;
      v94 = v202 * v222;
      do
      {
        if (v93 != --v92)
        {
          v95 = *v214;
          if (!*v214)
          {
            goto LABEL_153;
          }

          v41 = v95 + v94;
          outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v95 + v94, v205, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
          if (v94 < v5 || v41 >= v95 + v91)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v94 != v5)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v205, v95 + v5, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
          v89 = v203;
        }

        ++v93;
        v5 -= v90;
        v91 -= v90;
        v94 += v90;
      }

      while (v93 < v92);
      v7 = v212;
      v16 = v226;
      v19 = v236;
      v43 = &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd;
      v50 = v215;
    }

LABEL_33:
    v96 = v214[1];
    if (v50 >= v96)
    {
      goto LABEL_61;
    }

    v97 = v50;
    v98 = v50 - v202;
    if (__OFSUB__(v97, v202))
    {
      goto LABEL_146;
    }

    v99 = v97;
    if (v98 >= v89)
    {
      v50 = v97;
      goto LABEL_61;
    }

    if (__OFADD__(v202, v89))
    {
      goto LABEL_147;
    }

    if (v202 + v89 < v96)
    {
      v96 = v202 + v89;
    }

    if (v96 < v202)
    {
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    v50 = v97;
    if (v97 == v96)
    {
      goto LABEL_61;
    }

    v100 = v43;
    v207 = v96;
    v212 = v7;
    v101 = *v214;
    v102 = *(v213 + 72);
    v41 = *v214 + v102 * (v99 - 1);
    v221 = -v102;
    v103 = v202 - v99;
    v222 = v101;
    v204 = v102;
    v5 = v101 + v99 * v102;
LABEL_44:
    v215 = v50;
    v208 = v5;
    v209 = v103;
    v104 = v103;
    v210 = v41;
LABEL_45:
    v232 = v5;
    v233 = v104;
    v105 = v5;
    v106 = v235;
    outlined init with copy of ReferenceResolutionClientProtocol?(v105, v235, v100, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v41, v19, v100, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v106, v16, v100, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
    v107 = *(v9 + 48);
    v108 = *v228;
    v109 = *(*v228 + 16);
    v231 = v41;
    if (v109 && (v110 = specialized __RawDictionaryStorage.find<A>(_:)(v16), (v111 & 1) != 0))
    {
      v219 = *(*(v108 + 56) + 8 * v110);
      v112 = type metadata accessor for ActionCandidate();
      v113 = *(v112 - 8);
      v114 = *(v113 + 8);
      v220 = v112;
      v229 = (v113 + 8);
      v230 = v114;
      v114(&v16[v107]);
      v115 = type metadata accessor for UUID();
      v116 = *(*(v115 - 8) + 8);
      v234 = (v115 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
      v117 = v9;
      v118 = v115;
      v119 = v116;
      (v116)(v16);
      v120 = v217;
      outlined init with copy of ReferenceResolutionClientProtocol?(v19, v217, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      v121 = *(v117 + 48);
      v122 = *v228;
      if (*(*v228 + 16) && (v123 = specialized __RawDictionaryStorage.find<A>(_:)(v120), (v124 & 1) != 0))
      {
        v125 = *(*(v122 + 56) + 8 * v123);
        v126 = v220;
        (v230)(v120 + v121, v220);
        v127 = v118;
        v119(v120, v118);
        v128 = v234;
        v9 = v227;
        if (v219 != v125)
        {
          v129 = v219 < v125;
          v130 = v236;
          goto LABEL_54;
        }
      }

      else
      {
        v126 = v220;
        (v230)(v120 + v121, v220);
        v127 = v118;
        v119(v120, v118);
        v128 = v234;
        v9 = v227;
      }
    }

    else
    {
      v126 = type metadata accessor for ActionCandidate();
      (*(*(v126 - 8) + 8))(&v16[v107], v126);
      v127 = type metadata accessor for UUID();
      v128 = (v127 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
      (*(*(v127 - 8) + 8))(v16, v127);
    }

    v230 = v127;
    v234 = v128;
    v131 = v224;
    outlined init with copy of ReferenceResolutionClientProtocol?(v235, v224, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
    v132 = v9;
    v133 = *(v9 + 48);
    v229 = ActionCandidate.affinityScore.getter();
    type metadata accessor for ActionCandidate();
    v134 = *(*(v126 - 8) + 8);
    v134(v131 + v133, v126);
    v135 = v225;
    outlined init with copy of ReferenceResolutionClientProtocol?(v236, v225, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
    v136 = *(v132 + 48);
    v137 = ActionCandidate.affinityScore.getter();
    v134(v135 + v136, v126);
    v129 = v137 < v229;
    type metadata accessor for UUID();
    v138 = v230;
    v139 = *(*(v230 - 1) + 8);
    v139(v135, v230);
    v140 = v138;
    v130 = v236;
    v139(v131, v140);
LABEL_54:
    outlined destroy of ReferenceResolutionClientProtocol?(v130, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v235, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
    v100 = &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd;
    if (v129)
    {
      break;
    }

    v19 = v130;
    v16 = v226;
    v9 = v227;
LABEL_43:
    v50 = v215 + 1;
    v41 = v210 + v204;
    v103 = v209 - 1;
    v5 = v208 + v204;
    if (v215 + 1 != v207)
    {
      goto LABEL_44;
    }

    v7 = v212;
    v50 = v207;
    v43 = &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd;
LABEL_61:
    v146 = v202;
    if (v50 < v202)
    {
      goto LABEL_145;
    }

    v207 = v50;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v42 = v206;
    }

    else
    {
      v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v206 + 2) + 1, 1, v206);
    }

    v5 = *(v42 + 2);
    v147 = *(v42 + 3);
    v41 = v5 + 1;
    if (v5 >= v147 >> 1)
    {
      v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v147 > 1), v5 + 1, 1, v42);
    }

    *(v42 + 2) = v41;
    v148 = &v42[16 * v5];
    v149 = v207;
    *(v148 + 4) = v146;
    *(v148 + 5) = v149;
    v150 = *v199;
    if (!*v199)
    {
      goto LABEL_155;
    }

    if (v5)
    {
      while (2)
      {
        v151 = v41 - 1;
        if (v41 >= 4)
        {
          v156 = &v42[16 * v41 + 32];
          v157 = *(v156 - 64);
          v158 = *(v156 - 56);
          v162 = __OFSUB__(v158, v157);
          v159 = v158 - v157;
          if (v162)
          {
            goto LABEL_132;
          }

          v161 = *(v156 - 48);
          v160 = *(v156 - 40);
          v162 = __OFSUB__(v160, v161);
          v154 = v160 - v161;
          v155 = v162;
          if (v162)
          {
            goto LABEL_133;
          }

          v163 = &v42[16 * v41];
          v165 = *v163;
          v164 = *(v163 + 1);
          v162 = __OFSUB__(v164, v165);
          v166 = v164 - v165;
          if (v162)
          {
            goto LABEL_135;
          }

          v162 = __OFADD__(v154, v166);
          v167 = v154 + v166;
          if (v162)
          {
            goto LABEL_138;
          }

          if (v167 >= v159)
          {
            v185 = &v42[16 * v151 + 32];
            v187 = *v185;
            v186 = *(v185 + 1);
            v162 = __OFSUB__(v186, v187);
            v188 = v186 - v187;
            if (v162)
            {
              goto LABEL_142;
            }

            if (v154 < v188)
            {
              v151 = v41 - 2;
            }
          }

          else
          {
LABEL_81:
            if (v155)
            {
              goto LABEL_134;
            }

            v168 = &v42[16 * v41];
            v170 = *v168;
            v169 = *(v168 + 1);
            v171 = __OFSUB__(v169, v170);
            v172 = v169 - v170;
            v173 = v171;
            if (v171)
            {
              goto LABEL_137;
            }

            v174 = &v42[16 * v151 + 32];
            v176 = *v174;
            v175 = *(v174 + 1);
            v162 = __OFSUB__(v175, v176);
            v177 = v175 - v176;
            if (v162)
            {
              goto LABEL_140;
            }

            if (__OFADD__(v172, v177))
            {
              goto LABEL_141;
            }

            if (v172 + v177 < v154)
            {
              goto LABEL_95;
            }

            if (v154 < v177)
            {
              v151 = v41 - 2;
            }
          }
        }

        else
        {
          if (v41 == 3)
          {
            v152 = *(v42 + 4);
            v153 = *(v42 + 5);
            v162 = __OFSUB__(v153, v152);
            v154 = v153 - v152;
            v155 = v162;
            goto LABEL_81;
          }

          v178 = &v42[16 * v41];
          v180 = *v178;
          v179 = *(v178 + 1);
          v162 = __OFSUB__(v179, v180);
          v172 = v179 - v180;
          v173 = v162;
LABEL_95:
          if (v173)
          {
            goto LABEL_136;
          }

          v181 = &v42[16 * v151];
          v183 = *(v181 + 4);
          v182 = *(v181 + 5);
          v162 = __OFSUB__(v182, v183);
          v184 = v182 - v183;
          if (v162)
          {
            goto LABEL_139;
          }

          if (v184 < v172)
          {
            break;
          }
        }

        v5 = v151 - 1;
        if (v151 - 1 >= v41)
        {
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v214)
        {
          goto LABEL_152;
        }

        v189 = v42;
        v41 = *&v42[16 * v5 + 32];
        v190 = *&v42[16 * v151 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v214 + *(v213 + 72) * v41), (*v214 + *(v213 + 72) * *&v42[16 * v151 + 32]), (*v214 + *(v213 + 72) * v190), v150, v228);
        if (v7)
        {
          goto LABEL_127;
        }

        if (v190 < v41)
        {
          goto LABEL_130;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v191 = v189;
        }

        else
        {
          v191 = specialized _ArrayBuffer._consumeAndCreateNew()(v189);
        }

        if (v5 >= *(v191 + 2))
        {
          goto LABEL_131;
        }

        v192 = &v191[16 * v5];
        *(v192 + 4) = v41;
        *(v192 + 5) = v190;
        v237 = v191;
        v5 = &v237;
        specialized Array.remove(at:)(v151);
        v42 = v237;
        v41 = *(v237 + 2);
        if (v41 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v40 = v214[1];
    v41 = v207;
    v16 = v226;
    v19 = v236;
    if (v207 >= v40)
    {
      goto LABEL_116;
    }
  }

  v16 = v226;
  v9 = v227;
  v141 = v233;
  if (v222)
  {
    v142 = v232;
    v143 = v223;
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v232, v223, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
    v144 = v231;
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v143, v144, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
    v41 = v144 + v221;
    v5 = v142 + v221;
    v145 = __CFADD__(v141, 1);
    v104 = v141 + 1;
    v19 = v236;
    if (v145)
    {
      goto LABEL_43;
    }

    goto LABEL_45;
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
}

void specialized _merge<A>(low:mid:high:buffer:by:)(char *a1, char *a2, char *a3, unint64_t a4, uint64_t *a5)
{
  v135 = a5;
  v141 = a4;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
  MEMORY[0x1EEE9AC00](v142);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v119 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v119 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v138 = v119 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v126 = v119 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v132 = v119 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v131 = v119 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v119 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v136 = v119 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v134 = v119 - v29;
  v31 = *(v30 + 72);
  if (!v31)
  {
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v31 == -1)
  {
    goto LABEL_88;
  }

  v32 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v31 == -1)
  {
    goto LABEL_89;
  }

  v33 = (a2 - a1) / v31;
  v145 = a1;
  v144 = v141;
  if (v33 >= v32 / v31)
  {
    v121 = v28;
    v37 = v32 / v31 * v31;
    if (v141 < a2 || &a2[v37] <= v141)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v141 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v37 < 1)
    {
      v83 = v141 + v37;
      goto LABEL_85;
    }

    v129 = v13;
    v130 = -v31;
    v82 = v141 + v37;
    v139 = a1;
    v125 = v10;
    v83 = v141 + v37;
    while (1)
    {
      v119[0] = v83;
      v84 = a2;
      a2 += v130;
      v140 = a2;
      v126 = v84;
      while (1)
      {
        v136 = a3;
        if (v84 <= a1)
        {
          v145 = v84;
          v143 = v119[0];
          goto LABEL_86;
        }

        v124 = v83;
        v137 = v82 + v130;
        v85 = v138;
        outlined init with copy of ReferenceResolutionClientProtocol?(v82 + v130, v138, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
        outlined init with copy of ReferenceResolutionClientProtocol?(a2, v13, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
        outlined init with copy of ReferenceResolutionClientProtocol?(v85, v10, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
        v86 = *(v142 + 48);
        v87 = *v135;
        if (!*(*v135 + 16) || (v88 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v89 & 1) == 0))
        {
          v90 = type metadata accessor for ActionCandidate();
          (*(*(v90 - 8) + 8))(&v10[v86], v90);
          v102 = type metadata accessor for UUID();
          v104 = (v102 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
          (*(*(v102 - 8) + 8))(v10, v102);
          v13 = v129;
LABEL_68:
          v133 = v104;
          v134 = v102;
          v128 = v82;
          v106 = v131;
          outlined init with copy of ReferenceResolutionClientProtocol?(v138, v131, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
          v107 = v142;
          v108 = *(v142 + 48);
          v127 = ActionCandidate.affinityScore.getter();
          type metadata accessor for ActionCandidate();
          v109 = *(*(v90 - 8) + 8);
          v109(v106 + v108, v90);
          v110 = v13;
          v111 = v132;
          outlined init with copy of ReferenceResolutionClientProtocol?(v110, v132, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
          v112 = *(v107 + 48);
          v113 = ActionCandidate.affinityScore.getter();
          v109(v111 + v112, v90);
          v105 = v113 < v127;
          type metadata accessor for UUID();
          v114 = v134;
          v115 = *(*(v134 - 8) + 8);
          v116 = v111;
          v13 = v129;
          v115(v116, v134);
          v117 = v106;
          v82 = v128;
          v115(v117, v114);
          a2 = v140;
          goto LABEL_69;
        }

        v120 = *(*(v87 + 56) + 8 * v88);
        v90 = type metadata accessor for ActionCandidate();
        v91 = *(v90 - 8);
        v92 = *(v91 + 8);
        v127 = v91 + 8;
        v128 = v92;
        v92(&v10[v86], v90);
        v93 = type metadata accessor for UUID();
        v94 = *(v93 - 8);
        v95 = *(v94 + 8);
        v133 = (v93 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
        v134 = v93;
        v123 = v95;
        v122 = v94 + 8;
        (v95)(v10);
        v13 = v129;
        v96 = v121;
        outlined init with copy of ReferenceResolutionClientProtocol?(v129, v121, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
        v97 = *(v142 + 48);
        v98 = *v135;
        if (!*(*v135 + 16) || (v99 = specialized __RawDictionaryStorage.find<A>(_:)(v96), (v100 & 1) == 0))
        {
          v128(v96 + v97, v90);
          v102 = v134;
          v123(v96, v134);
          v104 = v133;
          goto LABEL_68;
        }

        v101 = *(*(v98 + 56) + 8 * v99);
        v128(v96 + v97, v90);
        v102 = v134;
        v123(v96, v134);
        v60 = v120 == v101;
        v103 = v120 < v101;
        v104 = v133;
        if (v60)
        {
          goto LABEL_68;
        }

        v105 = v103;
LABEL_69:
        v118 = v136;
        a3 = (v136 + v130);
        outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v138, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
        if (v105)
        {
          break;
        }

        v83 = v137;
        v38 = v118 >= v82;
        a1 = v139;
        v10 = v125;
        if (v38 && a3 < v82)
        {
          if (v136 != v82)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        v82 = v83;
        v84 = v126;
        if (v137 <= v141)
        {
          a2 = v126;
          goto LABEL_85;
        }
      }

      v10 = v125;
      v38 = v118 >= v126;
      a1 = v139;
      if (v38 && a3 < v126)
      {
        v83 = v124;
        if (v136 != v126)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      else
      {
        swift_arrayInitWithTakeFrontToBack();
        v83 = v124;
      }

      if (v82 <= v141)
      {
LABEL_85:
        v145 = a2;
        v143 = v83;
        goto LABEL_86;
      }
    }
  }

  v130 = v24;
  v34 = v33 * v31;
  if (v141 < a1 || &a1[v34] <= v141)
  {
    swift_arrayInitWithTakeFrontToBack();
    v35 = v136;
    v36 = v134;
  }

  else
  {
    v35 = v136;
    v36 = v134;
    if (v141 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }
  }

  v129 = v141 + v34;
  v143 = v141 + v34;
  v38 = v34 < 1 || a2 >= a3;
  v39 = v130;
  if (!v38)
  {
    v127 = v31;
    v128 = a3;
    do
    {
      v140 = a2;
      outlined init with copy of ReferenceResolutionClientProtocol?(a2, v36, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      outlined init with copy of ReferenceResolutionClientProtocol?(v141, v35, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      outlined init with copy of ReferenceResolutionClientProtocol?(v36, v39, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      v40 = *(v142 + 48);
      v41 = *v135;
      if (*(*v135 + 16) && (v42 = specialized __RawDictionaryStorage.find<A>(_:)(v39), (v43 & 1) != 0))
      {
        v125 = *(*(v41 + 56) + 8 * v42);
        v44 = type metadata accessor for ActionCandidate();
        v45 = *(v44 - 8);
        v46 = *(v45 + 8);
        v138 = v44;
        v139 = v46;
        v133 = v45 + 8;
        (v46)(v39 + v40);
        v47 = type metadata accessor for UUID();
        v48 = *(*(v47 - 8) + 8);
        v49 = v47;
        v137 = (v47 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
        v48(v39, v47);
        v50 = v126;
        outlined init with copy of ReferenceResolutionClientProtocol?(v136, v126, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
        v51 = *(v142 + 48);
        v52 = *v135;
        if (*(*v135 + 16) && (v53 = specialized __RawDictionaryStorage.find<A>(_:)(v50), (v54 & 1) != 0))
        {
          v55 = *(*(v52 + 56) + 8 * v53);
          v56 = v50 + v51;
          v57 = v138;
          (v139)(v56, v138);
          v58 = v50;
          v59 = v57;
          v48(v58, v49);
          v60 = v125 == v55;
          v61 = v125 < v55;
          v62 = v137;
          if (!v60)
          {
            v63 = v61;
            v65 = v127;
            v64 = v128;
            v35 = v136;
            v36 = v134;
            goto LABEL_33;
          }
        }

        else
        {
          v68 = v50 + v51;
          v69 = v138;
          (v139)(v68, v138);
          v70 = v50;
          v59 = v69;
          v48(v70, v49);
          v62 = v137;
        }
      }

      else
      {
        v66 = type metadata accessor for ActionCandidate();
        v67 = v39 + v40;
        v59 = v66;
        (*(*(v66 - 8) + 8))(v67, v66);
        v49 = type metadata accessor for UUID();
        v62 = (v49 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
        (*(*(v49 - 8) + 8))(v39, v49);
      }

      v137 = v62;
      v138 = v59;
      v71 = v131;
      outlined init with copy of ReferenceResolutionClientProtocol?(v134, v131, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      v139 = a1;
      v72 = v142;
      v73 = *(v142 + 48);
      v133 = ActionCandidate.affinityScore.getter();
      type metadata accessor for ActionCandidate();
      v74 = *(*(v59 - 8) + 8);
      v74(v71 + v73, v59);
      v75 = v132;
      outlined init with copy of ReferenceResolutionClientProtocol?(v136, v132, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      v76 = *(v72 + 48);
      a1 = v139;
      v77 = ActionCandidate.affinityScore.getter();
      v74(v75 + v76, v138);
      v63 = v77 < v133;
      type metadata accessor for UUID();
      v78 = *(*(v49 - 8) + 8);
      v79 = v75;
      v36 = v134;
      v78(v79, v49);
      v80 = v71;
      v35 = v136;
      v78(v80, v49);
      v65 = v127;
      v64 = v128;
LABEL_33:
      outlined destroy of ReferenceResolutionClientProtocol?(v35, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v36, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      a2 = v140;
      if (v63)
      {
        if (a1 < v140 || a1 >= v140 + v65)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v140)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v65;
      }

      else
      {
        v81 = v141 + v65;
        if (a1 < v141 || a1 >= v81)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v141)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v144 = v81;
        v141 = v81;
      }

      a1 += v65;
      v145 = a1;
      v39 = v130;
    }

    while (v141 < v129 && a2 < v64);
  }

LABEL_86:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v145, &v144, &v143);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_SiTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_SitMd, &_s10Foundation4UUIDV_SitMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of ReferenceResolutionClientProtocol?(v9, v5, &_s10Foundation4UUIDV_SitMd, &_s10Foundation4UUIDV_SitMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC13SiriInference8DateTimeC0eF5RangeC07DefinedefG0O_AETt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference8DateTimeC0cD5RangeC07DefinedcdE0O_ACtMd, &_s13SiriInference8DateTimeC0cD5RangeC07DefinedcdE0O_ACtMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy13SiriInference8DateTimeC0eF5RangeC07DefinedefG0OAEGMd, &_ss18_DictionaryStorageCy13SiriInference8DateTimeC0eF5RangeC07DefinedefG0OAEGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of ReferenceResolutionClientProtocol?(v9, v5, &_s13SiriInference8DateTimeC0cD5RangeC07DefinedcdE0O_ACtMd, &_s13SiriInference8DateTimeC0cD5RangeC07DefinedcdE0O_ACtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for DateTime.DateTimeRange.DefinedDateTimeRange();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_14SiriKitRuntime16StringKeyedValueVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_14SiriKitRuntime16StringKeyedValueVtMd, &_sSS_14SiriKitRuntime16StringKeyedValueVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14SiriKitRuntime16StringKeyedValueVGMd, &_ss18_DictionaryStorageCySS14SiriKitRuntime16StringKeyedValueVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of ReferenceResolutionClientProtocol?(v9, v5, &_sSS_14SiriKitRuntime16StringKeyedValueVtMd, &_sSS_14SiriKitRuntime16StringKeyedValueVtMR);
      v11 = *v5;
      v12 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for StringKeyedValue(0);
      result = outlined init with take of StringKeyedValue(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for StringKeyedValue);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_SDySSypGTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v14 = static _DictionaryStorage.allocate(capacity:)();
    v15 = *(v9 + 48);
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);

    while (1)
    {
      outlined init with copy of ReferenceResolutionClientProtocol?(v16, v12, a2, v27);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v12);
      if (v19)
      {
        break;
      }

      v20 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = v14[6];
      v22 = type metadata accessor for UUID();
      result = (*(*(v22 - 8) + 32))(v21 + *(*(v22 - 8) + 72) * v20, v12, v22);
      *(v14[7] + 8 * v20) = *&v12[v15];
      v23 = v14[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_10;
      }

      v14[2] = v25;
      v16 += v17;
      if (!--v13)
      {

        return v14;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16SiriMessageTypes6UserIDV_So15AFSpeechPackageCTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v14 = static _DictionaryStorage.allocate(capacity:)();
    v15 = *(v9 + 48);
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);

    while (1)
    {
      outlined init with copy of ReferenceResolutionClientProtocol?(v16, v12, a2, v27);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v12);
      if (v19)
      {
        break;
      }

      v20 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = v14[6];
      v22 = type metadata accessor for UserID();
      result = (*(*(v22 - 8) + 32))(v21 + *(*(v22 - 8) + 72) * v20, v12, v22);
      *(v14[7] + 8 * v20) = *&v12[v15];
      v23 = v14[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_10;
      }

      v14[2] = v25;
      v16 += v17;
      if (!--v13)
      {

        return v14;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC0g7HandlerJ0CyAC0fI0C_GTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC0g7HandlerJ0CyAC0fI0C_GGMd, &_ss18_DictionaryStorageCySS14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC0g7HandlerJ0CyAC0fI0C_GGMR);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
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
      outlined init with copy of ReferenceResolutionClientProtocol?(v4, v13, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So11SMTTCUStateVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo11SMTTCUStateVGMd, &_ss18_DictionaryStorageCySSSo11SMTTCUStateVGMR);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_7SiriCam15ActionCandidateVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_7SiriCam15ActionCandidateVtMd, &_s10Foundation4UUIDV_7SiriCam15ActionCandidateVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV7SiriCam15ActionCandidateVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV7SiriCam15ActionCandidateVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of ReferenceResolutionClientProtocol?(v9, v5, &_s10Foundation4UUIDV_7SiriCam15ActionCandidateVtMd, &_s10Foundation4UUIDV_7SiriCam15ActionCandidateVtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for ActionCandidate();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo16LNSystemProtocolC_Say14SiriKitRuntime18LinkActionMetadataVGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo16LNSystemProtocolCSay14SiriKitRuntime18LinkActionMetadataVGGMd, &_ss18_DictionaryStorageCySo16LNSystemProtocolCSay14SiriKitRuntime18LinkActionMetadataVGGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So16LNSystemProtocolCSg12SiriOntology7UsoTaskCcTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo16LNSystemProtocolCSg12SiriOntology7UsoTaskCcGMd, &_ss18_DictionaryStorageCySSSo16LNSystemProtocolCSg12SiriOntology7UsoTaskCcGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](0);
  v0 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v0);
}

uint64_t specialized ActionGenerator.dedupeAppShortcuts(parses:)(uint64_t a1)
{
  v89 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v93 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v88 = &v79 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow32AppShortcutGeneralizedInvocationVSgMd, &_s11SiriKitFlow32AppShortcutGeneralizedInvocationVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v92 = &v79 - v4;
  v91 = type metadata accessor for AppShortcutGeneralizedInvocation();
  v82 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v87 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v105 = &v79 - v11;
  v104 = type metadata accessor for Siri_Nlu_External_Parser();
  v12 = *(v104 - 1);
  MEMORY[0x1EEE9AC00](v104);
  v103 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for Siri_Nlu_External_UserParse();
  MEMORY[0x1EEE9AC00](v109);
  v90 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v107 = &v79 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v102 = &v79 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v108 = &v79 - v20;
  v23.n128_f64[0] = MEMORY[0x1EEE9AC00](v21);
  v25 = &v79 - v24;
  v26 = *(a1 + 16);
  v81 = a1;
  v83 = v22;
  v80 = v26;
  if (v26)
  {
    v28 = *(v22 + 16);
    v27 = v22 + 16;
    v100 = v28;
    v85 = (*(v27 + 64) + 32) & ~*(v27 + 64);
    v29 = a1 + v85;
    v30 = *(v27 + 56);
    v98 = (v12 + 8);
    v97 = *MEMORY[0x1E69D0970];
    v95 = (v7 + 8);
    v96 = (v7 + 104);
    v84 = (v27 - 8);
    v101 = v27;
    v94 = (v27 + 16);
    v106 = MEMORY[0x1E69E7CC0];
    v31 = v26;
    v86 = v9;
    v99 = v30;
    v32 = v109;
    (v28)(v25, v29, v109, v23);
    while (1)
    {
      v34 = v103;
      Siri_Nlu_External_UserParse.parser.getter();
      v35 = v105;
      Siri_Nlu_External_Parser.parserID.getter();
      (*v98)(v34, v104);
      (*v96)(v9, v97, v6);
      lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier, MEMORY[0x1E69D0990], MEMORY[0x1E69D09A8]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v36 = *v95;
      (*v95)(v9, v6);
      v36(v35, v6);
      if (v111 == v110)
      {
        v37 = *v94;
        (*v94)(v102, v25, v32);
        v38 = v106;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v38;
        v112 = v38;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v38 + 16) + 1, 1);
          v40 = v112;
        }

        v42 = *(v40 + 16);
        v41 = *(v40 + 24);
        if (v42 >= v41 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1);
          v40 = v112;
        }

        *(v40 + 16) = v42 + 1;
        v106 = v40;
        v43 = v40 + v85 + v42 * v99;
        v33 = v99;
        v37(v43, v102, v109);
        v9 = v86;
      }

      else
      {
        (*v84)(v25, v32);
        v33 = v99;
      }

      v29 += v33;
      if (!--v31)
      {
        break;
      }

      (v100)(v25, v29, v32, v23);
    }
  }

  else
  {
    v106 = MEMORY[0x1E69E7CC0];
  }

  v44 = *(v106 + 16);
  if (v44)
  {
    v45 = *(v83 + 16);
    v46 = v106 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
    v103 = *(v83 + 72);
    v104 = v45;
    v105 = (v83 + 16);
    v47 = (v83 + 8);
    v101 = v93 + 8;
    v102 = (v93 + 16);
    v48 = (v82 + 48);
    v99 = (v82 + 56);
    v100 = (v82 + 32);
    v49 = MEMORY[0x1E69E7CC0];
    v50 = v108;
    v51 = v109;
    v52 = v92;
    v53 = v91;
    for (i = v45(v108, v46, v109, v23); ; i = v104(v50, v46, v51, v55))
    {
      v56 = MEMORY[0x1E129C0F0](i);
      if (!*(v56 + 16))
      {
        break;
      }

      v57 = v93;
      v58 = v88;
      v59 = v89;
      (*(v93 + 16))(v88, v56 + ((*(v57 + 80) + 32) & ~*(v57 + 80)), v89);
      v52 = v92;

      LOBYTE(v112) = 1;
      Siri_Nlu_External_UserDialogAct.extractGeneralizedAppShortcutInvocation(groupIndex:)();
      (*v47)(v108, v51);
      v60 = *(v57 + 8);
      v53 = v91;
      v61 = v58;
      v50 = v108;
      v60(v61, v59);
      if ((*v48)(v52, 1, v53) == 1)
      {
        goto LABEL_16;
      }

      v62 = *v100;
      (*v100)(v87, v52, v53);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v49 + 2) + 1, 1, v49, &_ss23_ContiguousArrayStorageCy11SiriKitFlow32AppShortcutGeneralizedInvocationVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow32AppShortcutGeneralizedInvocationVGMR, MEMORY[0x1E69D00D0]);
      }

      v64 = *(v49 + 2);
      v63 = *(v49 + 3);
      if (v64 >= v63 >> 1)
      {
        v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v49, &_ss23_ContiguousArrayStorageCy11SiriKitFlow32AppShortcutGeneralizedInvocationVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow32AppShortcutGeneralizedInvocationVGMR, MEMORY[0x1E69D00D0]);
      }

      *(v49 + 2) = v64 + 1;
      v62(&v49[((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v64], v87, v53);
      v50 = v108;
      v51 = v109;
LABEL_17:
      v46 += v103;
      if (!--v44)
      {

        goto LABEL_28;
      }
    }

    (*v47)(v50, v51);
    (*v99)(v52, 1, 1, v53);
LABEL_16:
    outlined destroy of ReferenceResolutionClientProtocol?(v52, &_s11SiriKitFlow32AppShortcutGeneralizedInvocationVSgMd, &_s11SiriKitFlow32AppShortcutGeneralizedInvocationVSgMR);
    goto LABEL_17;
  }

  v49 = MEMORY[0x1E69E7CC0];
  v51 = v109;
LABEL_28:
  v66 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11SiriKitFlow32AppShortcutGeneralizedInvocationV_SayAFGTt0g5Tf4g_n(v49, v65);

  v67 = v81;
  if (*(v66 + 16))
  {
    v68 = v80;
    if (v80)
    {
      v108 = *(v83 + 16);
      v69 = *(v83 + 72);
      v105 = ((*(v83 + 80) + 32) & ~*(v83 + 80));
      v70 = &v105[v81];
      v106 = v83 + 8;
      v71 = (v83 + 32);
      v67 = MEMORY[0x1E69E7CC0];
      v83 += 16;
      do
      {
        v72 = v107;
        (v108)(v107, v70, v51);
        if (closure #3 in ActionGenerator.dedupeAppShortcuts(parses:)(v72, v66))
        {
          v73 = *v71;
          (*v71)(v90, v107, v51);
          v74 = swift_isUniquelyReferenced_nonNull_native();
          v112 = v67;
          if ((v74 & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v67 + 16) + 1, 1);
            v67 = v112;
          }

          v76 = *(v67 + 16);
          v75 = *(v67 + 24);
          if (v76 >= v75 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), v76 + 1, 1);
            v67 = v112;
          }

          *(v67 + 16) = v76 + 1;
          v77 = &v105[v67 + v76 * v69];
          v51 = v109;
          v73(v77, v90, v109);
        }

        else
        {
          (*v106)(v107, v51);
        }

        v70 += v69;
        --v68;
      }

      while (v68);
    }

    else
    {
      v67 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
  }

  return v67;
}

char *initializeBufferWithCopyOfBuffer for ParseUserDataAttachment(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = type metadata accessor for Parse();
    (*(*(v9 - 8) + 16))(&a1[v8], &a2[v8], v9);
    *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  }

  return a1;
}

uint64_t destroy for ParseUserDataAttachment(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a2 + 20);
  v6 = type metadata accessor for Parse();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);
}

uint64_t initializeWithCopy for ParseUserDataAttachment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for Parse();
  (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));

  return a1;
}

uint64_t assignWithCopy for ParseUserDataAttachment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for Parse();
  (*(*(v8 - 8) + 24))(a1 + v7, a2 + v7, v8);
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));

  return a1;
}

uint64_t initializeWithTake for ParseUserDataAttachment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for Parse();
  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t assignWithTake for ParseUserDataAttachment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for Parse();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));

  return a1;
}

uint64_t type metadata completion function for ParseUserDataAttachment(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Parse();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t outlined init with copy of StringKeyedValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StringKeyedValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t type metadata accessor for LNSystemProtocol()
{
  result = lazy cache variable for type metadata for LNSystemProtocol;
  if (!lazy cache variable for type metadata for LNSystemProtocol)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LNSystemProtocol);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriPhoneFeature and conformance SiriPhoneFeature()
{
  result = lazy protocol witness table cache variable for type SiriPhoneFeature and conformance SiriPhoneFeature;
  if (!lazy protocol witness table cache variable for type SiriPhoneFeature and conformance SiriPhoneFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriPhoneFeature and conformance SiriPhoneFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriPhoneFeature and conformance SiriPhoneFeature;
  if (!lazy protocol witness table cache variable for type SiriPhoneFeature and conformance SiriPhoneFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriPhoneFeature and conformance SiriPhoneFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriPhoneFeature and conformance SiriPhoneFeature;
  if (!lazy protocol witness table cache variable for type SiriPhoneFeature and conformance SiriPhoneFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriPhoneFeature and conformance SiriPhoneFeature);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriPlaybackControlFeature and conformance SiriPlaybackControlFeature()
{
  result = lazy protocol witness table cache variable for type SiriPlaybackControlFeature and conformance SiriPlaybackControlFeature;
  if (!lazy protocol witness table cache variable for type SiriPlaybackControlFeature and conformance SiriPlaybackControlFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriPlaybackControlFeature and conformance SiriPlaybackControlFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriPlaybackControlFeature and conformance SiriPlaybackControlFeature;
  if (!lazy protocol witness table cache variable for type SiriPlaybackControlFeature and conformance SiriPlaybackControlFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriPlaybackControlFeature and conformance SiriPlaybackControlFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriPlaybackControlFeature and conformance SiriPlaybackControlFeature;
  if (!lazy protocol witness table cache variable for type SiriPlaybackControlFeature and conformance SiriPlaybackControlFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriPlaybackControlFeature and conformance SiriPlaybackControlFeature);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AmbiguityFeatureFlags and conformance AmbiguityFeatureFlags()
{
  result = lazy protocol witness table cache variable for type AmbiguityFeatureFlags and conformance AmbiguityFeatureFlags;
  if (!lazy protocol witness table cache variable for type AmbiguityFeatureFlags and conformance AmbiguityFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AmbiguityFeatureFlags and conformance AmbiguityFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AmbiguityFeatureFlags and conformance AmbiguityFeatureFlags;
  if (!lazy protocol witness table cache variable for type AmbiguityFeatureFlags and conformance AmbiguityFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AmbiguityFeatureFlags and conformance AmbiguityFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AmbiguityFeatureFlags and conformance AmbiguityFeatureFlags;
  if (!lazy protocol witness table cache variable for type AmbiguityFeatureFlags and conformance AmbiguityFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AmbiguityFeatureFlags and conformance AmbiguityFeatureFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SydneyConversationFeatureFlags and conformance SydneyConversationFeatureFlags()
{
  result = lazy protocol witness table cache variable for type SydneyConversationFeatureFlags and conformance SydneyConversationFeatureFlags;
  if (!lazy protocol witness table cache variable for type SydneyConversationFeatureFlags and conformance SydneyConversationFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SydneyConversationFeatureFlags and conformance SydneyConversationFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SydneyConversationFeatureFlags and conformance SydneyConversationFeatureFlags;
  if (!lazy protocol witness table cache variable for type SydneyConversationFeatureFlags and conformance SydneyConversationFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SydneyConversationFeatureFlags and conformance SydneyConversationFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SydneyConversationFeatureFlags and conformance SydneyConversationFeatureFlags;
  if (!lazy protocol witness table cache variable for type SydneyConversationFeatureFlags and conformance SydneyConversationFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SydneyConversationFeatureFlags and conformance SydneyConversationFeatureFlags);
  }

  return result;
}

uint64_t _ss6ResultOsRi_zRi0_zrlE3getxyq_YKF@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  return swift_willThrowTypedImpl();
}

uint64_t specialized logAction<A>(label:_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void (*a3)(void **__return_ptr)@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v50 = a1;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.executor);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = a4;
    v14 = swift_slowAlloc();
    v46 = v14;
    *v12 = 136315138;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, a2, &v46);
    _os_log_impl(&dword_1DC659000, v10, v11, "==>> %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    v15 = v14;
    a4 = v13;
    v5 = v4;
    MEMORY[0x1E12A2F50](v15, -1, -1);
    MEMORY[0x1E12A2F50](v12, -1, -1);
  }

  a3(&v42);
  if (v5)
  {
    v16 = 1;
    LOBYTE(v42) = 1;
    v17 = v5;
  }

  else
  {
    v16 = 0;
    v45 = 0;
    v17 = v42;
    v40 = v43;
    v41 = v44;
  }

  v46 = v17;
  v47 = v40;
  v48 = v41;
  v49 = v16;
  outlined init with copy of ReferenceResolutionClientProtocol?(&v46, &v42, &_ss6ResultOy14SiriKitRuntime14AffinityScorer_ps5Error_pGMd, &_ss6ResultOy14SiriKitRuntime14AffinityScorer_ps5Error_pGMR);
  if (v45)
  {
    v18 = v42;

    v19 = v18;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v40 = v23;
      *v22 = 136315394;
      *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, a2, &v40);
      *(v22 + 12) = 2080;
      v39[0] = v18;
      v24 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v25 = String.init<A>(describing:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v40);

      *(v22 + 14) = v27;
      _os_log_impl(&dword_1DC659000, v20, v21, "<<== %s threw %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v23, -1, -1);
      MEMORY[0x1E12A2F50](v22, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    outlined init with take of ReferenceResolutionClientProtocol(&v42, &v40);
    outlined init with copy of ReferenceResolutionClientProtocol(&v40, v39);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v38 = v31;
      *v30 = 136315394;
      *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, a2, &v38);
      *(v30 + 12) = 2080;
      outlined init with copy of ReferenceResolutionClientProtocol(v39, v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime14AffinityScorer_pMd, &_s14SiriKitRuntime14AffinityScorer_pMR);
      v32 = String.init<A>(describing:)();
      v34 = v33;
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v38);

      *(v30 + 14) = v35;
      _os_log_impl(&dword_1DC659000, v28, v29, "<<== %s -> %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v31, -1, -1);
      MEMORY[0x1E12A2F50](v30, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v39);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v40);
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(&v46, &v42, &_ss6ResultOy14SiriKitRuntime14AffinityScorer_ps5Error_pGMd, &_ss6ResultOy14SiriKitRuntime14AffinityScorer_ps5Error_pGMR);
  if (v45)
  {
    *&v40 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    swift_willThrowTypedImpl();
    return outlined destroy of ReferenceResolutionClientProtocol?(&v46, &_ss6ResultOy14SiriKitRuntime14AffinityScorer_ps5Error_pGMd, &_ss6ResultOy14SiriKitRuntime14AffinityScorer_ps5Error_pGMR);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v46, &_ss6ResultOy14SiriKitRuntime14AffinityScorer_ps5Error_pGMd, &_ss6ResultOy14SiriKitRuntime14AffinityScorer_ps5Error_pGMR);
    return outlined init with take of ReferenceResolutionClientProtocol(&v42, a4);
  }
}

uint64_t logAction<A>(label:_:)@<X0>(char *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void, void, void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v87 = a6;
  v82 = a3;
  v83 = a4;
  v85 = a1;
  v80 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v78 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v79 = &v76 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v76 - v12;
  v88 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v89 = a5;
  v14 = type metadata accessor for Result();
  v15 = *(v14 - 1);
  MEMORY[0x1EEE9AC00](v14);
  v86 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v76 - v18);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v76 - v21;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  v24 = __swift_project_value_buffer(v23, static Logger.executor);

  v81 = v24;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  v27 = os_log_type_enabled(v25, v26);
  v84 = v13;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = a2;
    v31 = v22;
    v32 = v14;
    v33 = v15;
    v34 = v29;
    v91 = v29;
    *v28 = 136315138;
    v35 = v30;
    *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v30, &v91);
    _os_log_impl(&dword_1DC659000, v25, v26, "==>> %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    v36 = v34;
    v15 = v33;
    v14 = v32;
    v22 = v31;
    MEMORY[0x1E12A2F50](v36, -1, -1);
    MEMORY[0x1E12A2F50](v28, -1, -1);
  }

  else
  {
    v35 = a2;
  }

  MEMORY[0x1EEE9AC00](v37);
  v38 = v89;
  v40 = v82;
  v39 = v83;
  *(&v76 - 4) = v89;
  *(&v76 - 3) = v40;
  *(&v76 - 2) = v39;
  _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC(partial apply for closure #1 in logAction<A>(label:_:), v22);
  v83 = *(v15 + 16);
  v83(v19, v22, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v41 = *v19;
    v42 = v35;

    v43 = v41;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      LODWORD(v84) = v45;
      v47 = v46;
      v89 = swift_slowAlloc();
      v91 = v89;
      *v47 = 136315394;
      *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v42, &v91);
      *(v47 + 12) = 2080;
      v90 = v41;
      v48 = v41;
      v49 = String.init<A>(describing:)();
      v51 = v44;
      v52 = v22;
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v91);

      *(v47 + 14) = v53;
      v22 = v52;
      _os_log_impl(&dword_1DC659000, v51, v84, "<<== %s threw %s", v47, 0x16u);
      v54 = v89;
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v54, -1, -1);
      MEMORY[0x1E12A2F50](v47, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v82 = v15 + 16;
    v88 = v15;
    v55 = v84;
    v56 = v19;
    v57 = v80;
    (*(v80 + 32))(v84, v56, v38);
    v58 = *(v57 + 16);
    v59 = v79;
    v58(v79, v55, v38);
    v60 = v35;

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();

    LODWORD(v81) = v62;
    v63 = v62;
    v64 = v61;
    if (os_log_type_enabled(v61, v63))
    {
      v65 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v91 = v77;
      *v65 = 136315394;
      *(v65 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v60, &v91);
      *(v65 + 12) = 2080;
      v66 = v89;
      v58(v78, v59, v89);
      v67 = String.init<A>(describing:)();
      v69 = v68;
      v85 = v22;
      v70 = *(v80 + 8);
      v70(v59, v66);
      v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, &v91);

      *(v65 + 14) = v71;
      _os_log_impl(&dword_1DC659000, v64, v81, "<<== %s -> %s", v65, 0x16u);
      v72 = v77;
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v72, -1, -1);
      MEMORY[0x1E12A2F50](v65, -1, -1);

      v70(v84, v66);
      v22 = v85;
    }

    else
    {

      v73 = *(v57 + 8);
      v74 = v89;
      v73(v59, v89);
      v73(v84, v74);
    }

    v15 = v88;
  }

  v83(v86, v22, v14);
  _ss6ResultOsRi_zRi0_zrlE3getxyq_YKF(v14, &v91, v87);
  return (*(v15 + 8))(v22, v14);
}

unint64_t AffinityScorer.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v13 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v12 = 0xD000000000000013;
  v13 = 0x80000001DCA7C680;
  (*(a2 + 24))(a1, a2);
  v8 = UUID.uuidString.getter();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  MEMORY[0x1E12A1580](v8, v10);

  MEMORY[0x1E12A1580](41, 0xE100000000000000);
  return v12;
}

uint64_t FixedAffinityScorer.__allocating_init(score:)(uint64_t a1, char a2)
{
  v4 = swift_allocObject();
  UUID.init()();
  v5 = v4 + OBJC_IVAR____TtC14SiriKitRuntime19FixedAffinityScorer_score;
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return v4;
}

uint64_t FixedAffinityScorer.init(score:)(uint64_t a1, char a2)
{
  UUID.init()();
  v5 = v2 + OBJC_IVAR____TtC14SiriKitRuntime19FixedAffinityScorer_score;
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return v2;
}

uint64_t protocol witness for AffinityScorer.score(for:loopCheck:) in conformance FixedAffinityScorer()
{
  result = (*(**v0 + 104))();
  if (v1)
  {
    return v3;
  }

  return result;
}

unint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FixedAffinityScorer(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return AffinityScorer.debugDescription.getter(a1, WitnessTable);
}

uint64_t FixedAffinityScorer.id.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t CachingAffinityScorer.__allocating_init()()
{
  v0 = swift_allocObject();
  UUID.init()();
  v1 = v0 + OBJC_IVAR____TtC14SiriKitRuntime21CachingAffinityScorer_scoreState;
  *v1 = 0;
  *(v1 + 8) = 256;
  return v0;
}

uint64_t CachingAffinityScorer.init()(uint64_t a1)
{
  UUID.init()();
  v2 = v1 + OBJC_IVAR____TtC14SiriKitRuntime21CachingAffinityScorer_scoreState;
  *v2 = 0;
  *(v2 + 8) = 256;
  return v1;
}

uint64_t CachingAffinityScorer.score(for:loopCheck:)(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  v14 = (v2 + OBJC_IVAR____TtC14SiriKitRuntime21CachingAffinityScorer_scoreState);
  if ((*(v2 + OBJC_IVAR____TtC14SiriKitRuntime21CachingAffinityScorer_scoreState + 9) & 1) == 0)
  {
    return *v14;
  }

  v21 = a1;
  v15 = v2;
  (*(v7 + 16))(v9, v2 + OBJC_IVAR____TtC14SiriKitRuntime21CachingAffinityScorer_id, v6, v11);
  v16 = specialized Set._Variant.insert(_:)(v13, v9);
  (*(v7 + 8))(v13, v6);
  if (v16)
  {
    result = (*(*v15 + 136))(v21, a2);
    if (!v3)
    {
      *v14 = result;
      v14[8] = v18 & 1;
      v14[9] = 0;
    }
  }

  else
  {
    lazy protocol witness table accessor for type AffinityScoreError and conformance AffinityScoreError();
    swift_allocError();
    *v19 = 0;
    *(v19 + 8) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t CachingAffinityScorer.computeScore(for:loopCheck:)(uint64_t a1)
{
  lazy protocol witness table accessor for type AffinityScoreError and conformance AffinityScoreError();
  swift_allocError();
  *v1 = 1;
  *(v1 + 8) = 1;
  return swift_willThrow();
}

uint64_t FixedAffinityScorer.deinit(uint64_t *a1)
{
  v2 = *a1;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  return v1;
}

uint64_t FixedAffinityScorer.__deallocating_deinit(uint64_t *a1)
{
  v2 = *a1;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for AffinityScorer.score(for:loopCheck:) in conformance CachingAffinityScorer()
{
  result = (*(**v0 + 128))();
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t protocol witness for AffinityScorer.id.getter in conformance FixedAffinityScorer@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4 + v5, v6);
}

unint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CachingAffinityScorer(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return AffinityScorer.debugDescription.getter(a1, WitnessTable);
}

uint64_t CombiningAffinityScorer.__allocating_init(children:reducer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_children) = a1;
  v7 = (v6 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_reducer);
  *v7 = a2;
  v7[1] = a3;
  UUID.init()();
  v8 = v6 + OBJC_IVAR____TtC14SiriKitRuntime21CachingAffinityScorer_scoreState;
  *v8 = 0;
  *(v8 + 8) = 256;
  return v6;
}

uint64_t CombiningAffinityScorer.init(children:reducer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_children) = a1;
  v4 = (v3 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_reducer);
  *v4 = a2;
  v4[1] = a3;
  UUID.init()();
  v5 = v3 + OBJC_IVAR____TtC14SiriKitRuntime21CachingAffinityScorer_scoreState;
  *v5 = 0;
  *(v5 + 8) = 256;
  return v3;
}

uint64_t CombiningAffinityScorer.computeScore(for:loopCheck:)()
{
  _StringGuts.grow(_:)(26);
  v1 = specialized AffinityScorer.debugDescription.getter();
  v3 = v2;

  MEMORY[0x1E12A1580](0xD000000000000015, 0x80000001DCA7C6A0);
  type metadata accessor for Input();
  lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type Input and conformance Input, MEMORY[0x1E69D0100], MEMORY[0x1E69D0118]);
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1E12A1580](v4);

  MEMORY[0x1E12A1580](41, 0xE100000000000000);
  v5 = specialized logAction<A>(label:_:)(v1, v3, partial apply for closure #1 in CombiningAffinityScorer.computeScore(for:loopCheck:));

  if (v0)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

void *closure #1 in CombiningAffinityScorer.computeScore(for:loopCheck:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_children);
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  result = specialized Sequence.reduce<A>(_:_:)(0, 1, partial apply for closure #1 in closure #1 in CombiningAffinityScorer.computeScore(for:loopCheck:), v9, v6);
  if (!v4)
  {
    *a4 = result;
    *(a4 + 8) = v8 & 1;
  }

  return result;
}

uint64_t closure #1 in closure #1 in CombiningAffinityScorer.computeScore(for:loopCheck:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v17 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a3 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_reducer);
  v12 = a2[3];
  v13 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v12);
  result = (*(v13 + 32))(a4, a5, v12, v13);
  if (!v6)
  {
    result = v11(v17, v10, result, v15 & 1);
    *a6 = result;
    *(a6 + 8) = v16 & 1;
  }

  return result;
}

void *specialized Sequence.reduce<A>(_:_:)(void *result, char a2, void *(*a3)(void **__return_ptr, void **, uint64_t), uint64_t a4, uint64_t a5)
{
  v11 = result;
  v12 = a2 & 1;
  v6 = *(a5 + 16);
  if (v6)
  {
    v8 = a5 + 32;
    do
    {
      result = (a3)(&v9, &v11, v8, a3, a4);
      if (v5)
      {
        break;
      }

      result = v9;
      v11 = v9;
      v12 = v10;
      v8 += 40;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t closure #1 in static CombiningAffinityScorer.max(children:requireAll:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7)
{
  swift_beginAccess();
  v14 = *(a5 + 16);
  swift_beginAccess();
  *(a5 + 16) = 0;
  if (a4)
  {
    if (a6)
    {
      swift_beginAccess();
      if ((*(a7 + 16) & 1) == 0)
      {
        swift_beginAccess();
        *(a7 + 16) = 1;
      }

      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static Logger.executor);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_1DC659000, v16, v17, "CombiningAffinityScorer with requireAll got nil value, returning nil", v18, 2u);
        MEMORY[0x1E12A2F50](v18, -1, -1);
      }

      return 0;
    }
  }

  else
  {
    if (a1 <= a3)
    {
      v19 = a3;
    }

    else
    {
      v19 = a1;
    }

    if (v14)
    {
      v20 = a3;
    }

    else
    {
      v20 = 0;
    }

    if (a2)
    {
      return v20;
    }

    else
    {
      return v19;
    }
  }

  return a1;
}

uint64_t static CombiningAffinityScorer.max(children:requireAll:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = 1;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = a2;
  *(v9 + 32) = v8;
  type metadata accessor for CombiningAffinityScorer(0);
  v10 = swift_allocObject();
  *(v10 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_children) = a1;
  v11 = (v10 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_reducer);
  *v11 = a4;
  v11[1] = v9;

  UUID.init()();
  v12 = v10 + OBJC_IVAR____TtC14SiriKitRuntime21CachingAffinityScorer_scoreState;
  *v12 = 0;
  *(v12 + 8) = 256;
  return v10;
}

uint64_t closure #1 in static CombiningAffinityScorer.min(children:requireAll:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7)
{
  swift_beginAccess();
  v14 = *(a5 + 16);
  swift_beginAccess();
  *(a5 + 16) = 0;
  if (a4)
  {
    if (a6)
    {
      swift_beginAccess();
      if ((*(a7 + 16) & 1) == 0)
      {
        swift_beginAccess();
        *(a7 + 16) = 1;
      }

      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static Logger.executor);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_1DC659000, v16, v17, "CombiningAffinityScorer with requireAll got nil value, returning nil", v18, 2u);
        MEMORY[0x1E12A2F50](v18, -1, -1);
      }

      return 0;
    }
  }

  else
  {
    if (a1 >= a3)
    {
      v19 = a3;
    }

    else
    {
      v19 = a1;
    }

    if (v14)
    {
      v20 = a3;
    }

    else
    {
      v20 = 0;
    }

    if (a2)
    {
      return v20;
    }

    else
    {
      return v19;
    }
  }

  return a1;
}

uint64_t closure #1 in static CombiningAffinityScorer.sum(children:requireAll:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, unsigned __int8 a6, uint64_t a7)
{
  swift_beginAccess();
  v14 = *(a5 + 16);
  result = swift_beginAccess();
  *(a5 + 16) = 0;
  if (a4)
  {
    if (a6)
    {
      swift_beginAccess();
      if ((*(a7 + 16) & 1) == 0)
      {
        swift_beginAccess();
        *(a7 + 16) = 1;
      }

      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static Logger.executor);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_1DC659000, v17, v18, "CombiningAffinityScorer with requireAll got nil value, returning nil", v19, 2u);
        MEMORY[0x1E12A2F50](v19, -1, -1);
      }

      return 0;
    }

    return a1;
  }

  if (a2)
  {
    if ((a6 ^ 1 | v14))
    {
      return a3;
    }

    else
    {
      return 0;
    }
  }

  v20 = __OFADD__(a1, a3);
  a1 += a3;
  if (!v20)
  {
    return a1;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in static CombiningAffinityScorer.first(children:)(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    return a3;
  }

  return result;
}

uint64_t static CombiningAffinityScorer.first(children:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CombiningAffinityScorer(0);
  v4 = swift_allocObject();
  *(v4 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_children) = a1;
  v5 = (v4 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_reducer);
  *v5 = a2;
  v5[1] = 0;

  UUID.init()();
  v6 = v4 + OBJC_IVAR____TtC14SiriKitRuntime21CachingAffinityScorer_scoreState;
  *v6 = 0;
  *(v6 + 8) = 256;
  return v4;
}

uint64_t closure #1 in static CombiningAffinityScorer.last(children:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    return a3;
  }

  return result;
}

uint64_t static CombiningAffinityScorer.invert(child:fallbackValue:)(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime14AffinityScorer_pGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime14AffinityScorer_pGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DCA66060;
  outlined init with copy of ReferenceResolutionClientProtocol(a1, v6 + 32);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3 & 1;
  type metadata accessor for CombiningAffinityScorer(0);
  v8 = swift_allocObject();
  *(v8 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_children) = v6;
  v9 = (v8 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_reducer);
  *v9 = partial apply for closure #1 in static CombiningAffinityScorer.invert(child:fallbackValue:);
  v9[1] = v7;
  UUID.init()();
  v10 = v8 + OBJC_IVAR____TtC14SiriKitRuntime21CachingAffinityScorer_scoreState;
  *v10 = 0;
  *(v10 + 8) = 256;
  return v8;
}

uint64_t CombiningAffinityScorer.__ivar_destroyer()
{
}

uint64_t CombiningAffinityScorer.deinit()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime21CachingAffinityScorer_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t CombiningAffinityScorer.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime21CachingAffinityScorer_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t ComparingAffinityScorer.__allocating_init(score:comparison:_:_:)(uint64_t a1, char a2, char a3, void *a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v11 = v10 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_score;
  *v11 = a1;
  *(v11 + 8) = a2 & 1;
  *(v10 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_comparison) = a3;
  outlined init with copy of ReferenceResolutionClientProtocol(a4, v10 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_first);
  outlined init with copy of ReferenceResolutionClientProtocol?(a5, v10 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_second, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMd, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMR);
  UUID.init()();
  outlined destroy of ReferenceResolutionClientProtocol?(a5, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMd, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  v12 = v10 + OBJC_IVAR____TtC14SiriKitRuntime21CachingAffinityScorer_scoreState;
  *v12 = 0;
  *(v12 + 8) = 256;
  return v10;
}

uint64_t ComparingAffinityScorer.init(score:comparison:_:_:)(uint64_t a1, char a2, char a3, void *a4, uint64_t a5)
{
  v8 = v5 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_score;
  *v8 = a1;
  *(v8 + 8) = a2 & 1;
  *(v5 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_comparison) = a3;
  outlined init with copy of ReferenceResolutionClientProtocol(a4, v5 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_first);
  outlined init with copy of ReferenceResolutionClientProtocol?(a5, v5 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_second, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMd, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMR);
  UUID.init()();
  outlined destroy of ReferenceResolutionClientProtocol?(a5, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMd, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  v9 = v5 + OBJC_IVAR____TtC14SiriKitRuntime21CachingAffinityScorer_scoreState;
  *v9 = 0;
  *(v9 + 8) = 256;
  return v5;
}

uint64_t ComparingAffinityScorer.computeScore(for:loopCheck:)(uint64_t a1)
{
  result = AffinityValueComparison.evaluate(input:_:_:)(a1, (v1 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_first), v1 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_second, *(v1 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_comparison));
  if (!v2)
  {
    if (result)
    {
      return *(v1 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_score);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AffinityValueComparison.evaluate(input:_:_:)(uint64_t a1, void *a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 3u)
  {
    if (a4 > 5u)
    {
      if (a4 == 6)
      {
        v10 = a2[3];
        v11 = a2[4];
        __swift_project_boxed_opaque_existential_1(a2, v10);
        v12 = (*(v11 + 8))(a1, v10, v11);
        if (!v4)
        {
          if (v13)
          {
            v14 = v12 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v14 = 0;
          }

          if (v13)
          {
            v15 = v13;
          }

          else
          {
            v15 = 0xE000000000000000;
          }

          v16 = HIBYTE(v15) & 0xF;
          if ((v15 & 0x2000000000000000) == 0)
          {
            v16 = v14;
          }

          LOBYTE(a1) = v16 != 0;
        }
      }

      else
      {
        v28 = a2[3];
        v29 = a2[4];
        __swift_project_boxed_opaque_existential_1(a2, v28);
        v30 = (*(v29 + 8))(a1, v28, v29);
        if (!v4)
        {
          if (v31)
          {
            v32 = v30 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v32 = 0;
          }

          if (v31)
          {
            v33 = v31;
          }

          else
          {
            v33 = 0xE000000000000000;
          }

          v34 = HIBYTE(v33) & 0xF;
          if ((v33 & 0x2000000000000000) == 0)
          {
            v34 = v32;
          }

          LOBYTE(a1) = v34 == 0;
        }
      }

      return a1 & 1;
    }

    if (a4 == 4)
    {
      v9 = closure #5 in AffinityValueComparison.evaluate(input:_:_:);
    }

    else
    {
      v9 = closure #6 in AffinityValueComparison.evaluate(input:_:_:);
    }

    goto LABEL_23;
  }

  if (a4 > 1u)
  {
    if (a4 == 2)
    {
      v9 = closure #3 in AffinityValueComparison.evaluate(input:_:_:);
    }

    else
    {
      v9 = closure #4 in AffinityValueComparison.evaluate(input:_:_:);
    }

    goto LABEL_23;
  }

  v8 = closure #1 in AffinityValueComparison.evaluate(input:_:_:);
  if (a4)
  {
    v9 = closure #2 in AffinityValueComparison.evaluate(input:_:_:);
LABEL_23:
    v8 = v9;
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(a3, &v69, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMd, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMR);
  if (!v70)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v69, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMd, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMR);
    lazy protocol witness table accessor for type AffinityScoreError and conformance AffinityScoreError();
    swift_allocError();
    *v27 = 2;
    *(v27 + 8) = 1;
    swift_willThrow();
    return a1 & 1;
  }

  outlined init with take of ReferenceResolutionClientProtocol(&v69, v71);
  v17 = a2[3];
  v18 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v17);
  v19 = (*(v18 + 8))(a1, v17, v18);
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v71);
    return a1 & 1;
  }

  if (v20)
  {
    v21 = v19;
    v22 = v20;
    v23 = v72;
    v24 = v73;
    __swift_project_boxed_opaque_existential_1(v71, v72);
    v25 = (*(v24 + 8))(a1, v23, v24);
    v35 = v26;
    if (v26)
    {
      v74 = v25;
      v36 = (v8)(v21, v22);
      LOBYTE(a1) = v36;
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v52 = type metadata accessor for Logger();
      __swift_project_value_buffer(v52, static Logger.executor);

      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.debug.getter();

      v68 = v54;
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *&v69 = v56;
        *v55 = 136315906;
        v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v69);

        *(v55 + 4) = v57;
        v58 = 0xE100000000000000;
        v59 = 60;
        *(v55 + 12) = 2080;
        v60 = 15678;
        v61 = 15677;
        if (a4 != 4)
        {
          v61 = 15649;
        }

        if (a4 != 3)
        {
          v60 = v61;
        }

        v62 = 0xE100000000000000;
        v63 = 62;
        if (a4 != 1)
        {
          v63 = 15676;
          v62 = 0xE200000000000000;
        }

        if (a4)
        {
          v59 = v63;
          v58 = v62;
        }

        if (a4 <= 2u)
        {
          v64 = v59;
        }

        else
        {
          v64 = v60;
        }

        if (a4 <= 2u)
        {
          v65 = v58;
        }

        else
        {
          v65 = 0xE200000000000000;
        }

        v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, &v69);

        *(v55 + 14) = v66;
        *(v55 + 22) = 2080;
        v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v35, &v69);

        *(v55 + 24) = v67;
        *(v55 + 32) = 1024;
        *(v55 + 34) = a1 & 1;
        _os_log_impl(&dword_1DC659000, v53, v68, "AffinityValueComparison: %s %s %s -> %{BOOL}d", v55, 0x26u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v56, -1, -1);
        MEMORY[0x1E12A2F50](v55, -1, -1);
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v71);
      return a1 & 1;
    }
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  __swift_project_value_buffer(v37, static Logger.executor);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&v69 = v41;
    v42 = 0xE100000000000000;
    v43 = 60;
    *v40 = 136315138;
    v44 = 15678;
    v45 = 15677;
    if (a4 != 4)
    {
      v45 = 15649;
    }

    if (a4 != 3)
    {
      v44 = v45;
    }

    v46 = 0xE100000000000000;
    v47 = 62;
    if (a4 != 1)
    {
      v47 = 15676;
      v46 = 0xE200000000000000;
    }

    if (a4)
    {
      v43 = v47;
      v42 = v46;
    }

    if (a4 <= 2u)
    {
      v48 = v43;
    }

    else
    {
      v48 = v44;
    }

    if (a4 <= 2u)
    {
      v49 = v42;
    }

    else
    {
      v49 = 0xE200000000000000;
    }

    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v69);

    *(v40 + 4) = v50;
    _os_log_impl(&dword_1DC659000, v38, v39, "AffinityValueComparison: op=%s, at least one arg was nil; returning false", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    MEMORY[0x1E12A2F50](v41, -1, -1);
    MEMORY[0x1E12A2F50](v40, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v71);
  LOBYTE(a1) = 0;
  return a1 & 1;
}

uint64_t ComparingAffinityScorer.debugDescription.getter()
{
  v9 = 0;
  v10 = 0xE000000000000000;
  _StringGuts.grow(_:)(69);
  v11 = 0;
  v12 = 0xE000000000000000;
  MEMORY[0x1E12A1580](0xD00000000000001ELL, 0x80000001DCA7C6F0);
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_score + 8);
  v9 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_score);
  LOBYTE(v10) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  v2 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v2);

  MEMORY[0x1E12A1580](0x7261706D6F63202CLL, 0xED00003D6E6F7369);
  v3 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_comparison);
  if (v3 > 3)
  {
    if (*(v0 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_comparison) > 5u)
    {
      v4 = 0xE100000000000000;
      if (v3 == 6)
      {
        v5 = 42;
      }

      else
      {
        v5 = 33;
      }
    }

    else
    {
      v4 = 0xE200000000000000;
      if (v3 == 4)
      {
        v5 = 15677;
      }

      else
      {
        v5 = 15649;
      }
    }
  }

  else if (*(v0 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_comparison) > 1u)
  {
    v4 = 0xE200000000000000;
    if (v3 == 2)
    {
      v5 = 15676;
    }

    else
    {
      v5 = 15678;
    }
  }

  else
  {
    v4 = 0xE100000000000000;
    if (*(v0 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_comparison))
    {
      v5 = 62;
    }

    else
    {
      v5 = 60;
    }
  }

  MEMORY[0x1E12A1580](v5, v4);

  MEMORY[0x1E12A1580](0x3D7473726966202CLL, 0xE800000000000000);
  outlined init with copy of ReferenceResolutionClientProtocol(v0 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_first, &v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime20AffinityValueFetcher_pMd, &_s14SiriKitRuntime20AffinityValueFetcher_pMR);
  v6 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v6);

  MEMORY[0x1E12A1580](0x646E6F636573202CLL, 0xE90000000000003DLL);
  outlined init with copy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_second, &v9, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMd, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime20AffinityValueFetcher_pSgMd, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMR);
  v7 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v7);

  MEMORY[0x1E12A1580](41, 0xE100000000000000);
  return v11;
}

uint64_t AffinityValueComparison.rawValue.getter(unsigned __int8 a1)
{
  v1 = 60;
  v2 = 42;
  if (a1 != 6)
  {
    v2 = 33;
  }

  v3 = 15677;
  if (a1 != 4)
  {
    v3 = 15649;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  v4 = 15676;
  if (a1 != 2)
  {
    v4 = 15678;
  }

  if (a1)
  {
    v1 = 62;
  }

  if (a1 > 1u)
  {
    v1 = v4;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t ComparingAffinityScorer.deinit()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime21CachingAffinityScorer_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_first));
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_second, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMd, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMR);
  return v0;
}

uint64_t ComparingAffinityScorer.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime21CachingAffinityScorer_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_first;

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v3));
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_second, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMd, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMR);

  return swift_deallocClassInstance();
}

BOOL closure #1 in AffinityValueComparison.evaluate(input:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[0] = a3;
  v8 = type metadata accessor for TypeIdentifier();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v20 - v13;
  v15 = MEMORY[0x1E69E6158];
  v23 = MEMORY[0x1E69E6158];
  v21 = a1;
  v22 = a2;

  TypeIdentifier.init(for:)();
  static Transformation.defaultLengthLimit.getter();
  static Transformation.transform<A>(_:to:lengthLimit:)();
  if (v4)
  {
    (*(v9 + 8))(v14, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(&v21);
  }

  else
  {
    v16 = *(v9 + 8);
    v16(v14, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(&v21);
    v17 = v24;
    v23 = v15;
    v21 = v20[0];
    v22 = a4;

    TypeIdentifier.init(for:)();
    static Transformation.defaultLengthLimit.getter();
    static Transformation.transform<A>(_:to:lengthLimit:)();
    v16(v11, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(&v21);
    return v17 < v20[1];
  }

  return v18;
}

BOOL closure #2 in AffinityValueComparison.evaluate(input:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[0] = a3;
  v8 = type metadata accessor for TypeIdentifier();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v20 - v13;
  v15 = MEMORY[0x1E69E6158];
  v23 = MEMORY[0x1E69E6158];
  v21 = a1;
  v22 = a2;

  TypeIdentifier.init(for:)();
  static Transformation.defaultLengthLimit.getter();
  static Transformation.transform<A>(_:to:lengthLimit:)();
  if (v4)
  {
    (*(v9 + 8))(v14, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(&v21);
  }

  else
  {
    v16 = *(v9 + 8);
    v16(v14, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(&v21);
    v17 = v24;
    v23 = v15;
    v21 = v20[0];
    v22 = a4;

    TypeIdentifier.init(for:)();
    static Transformation.defaultLengthLimit.getter();
    static Transformation.transform<A>(_:to:lengthLimit:)();
    v16(v11, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(&v21);
    return v20[1] < v17;
  }

  return v18;
}

BOOL closure #3 in AffinityValueComparison.evaluate(input:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[0] = a3;
  v8 = type metadata accessor for TypeIdentifier();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v20 - v13;
  v15 = MEMORY[0x1E69E6158];
  v23 = MEMORY[0x1E69E6158];
  v21 = a1;
  v22 = a2;

  TypeIdentifier.init(for:)();
  static Transformation.defaultLengthLimit.getter();
  static Transformation.transform<A>(_:to:lengthLimit:)();
  if (v4)
  {
    (*(v9 + 8))(v14, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(&v21);
  }

  else
  {
    v16 = *(v9 + 8);
    v16(v14, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(&v21);
    v17 = v24;
    v23 = v15;
    v21 = v20[0];
    v22 = a4;

    TypeIdentifier.init(for:)();
    static Transformation.defaultLengthLimit.getter();
    static Transformation.transform<A>(_:to:lengthLimit:)();
    v16(v11, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(&v21);
    return v20[1] >= v17;
  }

  return v18;
}

BOOL closure #4 in AffinityValueComparison.evaluate(input:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[0] = a3;
  v8 = type metadata accessor for TypeIdentifier();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v20 - v13;
  v15 = MEMORY[0x1E69E6158];
  v23 = MEMORY[0x1E69E6158];
  v21 = a1;
  v22 = a2;

  TypeIdentifier.init(for:)();
  static Transformation.defaultLengthLimit.getter();
  static Transformation.transform<A>(_:to:lengthLimit:)();
  if (v4)
  {
    (*(v9 + 8))(v14, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(&v21);
  }

  else
  {
    v16 = *(v9 + 8);
    v16(v14, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(&v21);
    v17 = v24;
    v23 = v15;
    v21 = v20[0];
    v22 = a4;

    TypeIdentifier.init(for:)();
    static Transformation.defaultLengthLimit.getter();
    static Transformation.transform<A>(_:to:lengthLimit:)();
    v16(v11, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(&v21);
    return v17 >= v20[1];
  }

  return v18;
}

uint64_t closure #5 in AffinityValueComparison.evaluate(input:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t closure #6 in AffinityValueComparison.evaluate(input:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 0;
  }

  else
  {
    return (_stringCompareWithSmolCheck(_:_:expecting:)() ^ 1) & 1;
  }
}

uint64_t AffinityValueComparison.requiredChildCount.getter(char a1)
{
  if ((a1 & 0xFE) == 6)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AffinityValueComparison(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE100000000000000;
  v4 = 60;
  v5 = *a2;
  v6 = 0xE100000000000000;
  v7 = 42;
  if (v2 != 6)
  {
    v7 = 33;
    v6 = 0xE100000000000000;
  }

  v8 = 15677;
  if (v2 != 4)
  {
    v8 = 15649;
  }

  if (*a1 <= 5u)
  {
    v7 = v8;
    v6 = 0xE200000000000000;
  }

  v9 = 15676;
  if (v2 != 2)
  {
    v9 = 15678;
  }

  if (*a1)
  {
    v4 = 62;
    v3 = 0xE100000000000000;
  }

  if (*a1 > 1u)
  {
    v4 = v9;
    v3 = 0xE200000000000000;
  }

  if (*a1 <= 3u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v7;
  }

  if (v2 <= 3)
  {
    v11 = v3;
  }

  else
  {
    v11 = v6;
  }

  if (*a2 > 3u)
  {
    if (*a2 > 5u)
    {
      v12 = 0xE100000000000000;
      if (v5 == 6)
      {
        if (v10 != 42)
        {
          goto LABEL_43;
        }
      }

      else if (v10 != 33)
      {
LABEL_43:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_44;
      }
    }

    else
    {
      v12 = 0xE200000000000000;
      if (v5 == 4)
      {
        if (v10 != 15677)
        {
          goto LABEL_43;
        }
      }

      else if (v10 != 15649)
      {
        goto LABEL_43;
      }
    }
  }

  else if (*a2 > 1u)
  {
    v12 = 0xE200000000000000;
    if (v5 == 2)
    {
      if (v10 != 15676)
      {
        goto LABEL_43;
      }
    }

    else if (v10 != 15678)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v12 = 0xE100000000000000;
    if (*a2)
    {
      if (v10 != 62)
      {
        goto LABEL_43;
      }
    }

    else if (v10 != 60)
    {
      goto LABEL_43;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_43;
  }

  v13 = 1;
LABEL_44:

  return v13 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AffinityValueComparison()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AffinityValueComparison(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AffinityValueComparison(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AffinityValueComparison@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized AffinityValueComparison.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance AffinityValueComparison(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 60;
  v5 = 0xE100000000000000;
  v6 = 42;
  if (v2 != 6)
  {
    v6 = 33;
    v5 = 0xE100000000000000;
  }

  v7 = 15677;
  if (v2 != 4)
  {
    v7 = 15649;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = 0xE200000000000000;
  }

  v8 = 15676;
  if (v2 != 2)
  {
    v8 = 15678;
  }

  if (*v1)
  {
    v4 = 62;
    v3 = 0xE100000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v8;
    v3 = 0xE200000000000000;
  }

  if (*v1 <= 3u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t FixedValueFetcher.value.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FixedValueFetcher.__allocating_init(value:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t FixedValueFetcher.init(value:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t FixedValueFetcher.fetchValue(input:)()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FixedValueFetcher.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t EnvironmentValueFetcher.provider.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t EnvironmentValueFetcher.valueKey.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void *EnvironmentValueFetcher.init(plist:)(void *a1)
{
  v2 = v1;
  outlined init with copy of Any(a1, v41);
  if ((swift_dynamicCast() & 1) == 0)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.executor);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_17;
    }

    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_1DC659000, v29, v30, "EnvironmentValueFetcher needs string argument", v31, 2u);
    v32 = v31;
LABEL_16:
    MEMORY[0x1E12A2F50](v32, -1, -1);
LABEL_17:

LABEL_18:
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    type metadata accessor for EnvironmentValueFetcher();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v41[0] = v39;
  v41[1] = v40;
  v4 = lazy protocol witness table accessor for type String and conformance String();
  v5 = MEMORY[0x1E12A1E10](46, 0xE100000000000000, 1, 1, MEMORY[0x1E69E6158], v4);
  if (v5[2] != 2)
  {

    if (one-time initialization token for executor == -1)
    {
LABEL_14:
      v33 = type metadata accessor for Logger();
      __swift_project_value_buffer(v33, static Logger.executor);

      v29 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v29, v34))
      {

        goto LABEL_18;
      }

      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v41[0] = v36;
      *v35 = 136315138;
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v41);

      *(v35 + 4) = v37;
      _os_log_impl(&dword_1DC659000, v29, v34, "EnvironmentValueFetcher needs 2-part provider.value keypath, got %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x1E12A2F50](v36, -1, -1);
      v32 = v35;
      goto LABEL_16;
    }

LABEL_22:
    swift_once();
    goto LABEL_14;
  }

  if (!v5[2])
  {
    __break(1u);
    goto LABEL_22;
  }

  v6 = v5[4];
  v7 = v5[5];
  v8 = v5[6];
  v9 = v5[7];

  v10 = MEMORY[0x1E12A1500](v6, v7, v8, v9);
  v12 = v11;

  v2[2] = v10;
  v2[3] = v12;
  if (v5[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  v13 = v5[8];
  v14 = v5[9];
  v15 = v5[10];
  v16 = v5[11];

  v17 = MEMORY[0x1E12A1500](v13, v14, v15, v16);
  v19 = v18;

  v2[4] = v17;
  v2[5] = v19;
  if (one-time initialization token for executor != -1)
  {
LABEL_24:
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.executor);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v41[0] = v24;
    *v23 = 136315138;
    v25 = (*(*v2 + 120))();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v41);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_1DC659000, v21, v22, "%s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x1E12A2F50](v24, -1, -1);
    MEMORY[0x1E12A2F50](v23, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

uint64_t EnvironmentValueFetcher.__allocating_init(provider:valueKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  EnvironmentValueFetcher.init(provider:valueKey:)(a1, a2, a3, a4);
  return v8;
}

void *EnvironmentValueFetcher.init(provider:valueKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.executor);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    v10 = (*(*v4 + 120))();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1DC659000, v6, v7, "%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E12A2F50](v9, -1, -1);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  return v4;
}

uint64_t EnvironmentValueFetcher.fetchValue(input:)()
{
  type metadata accessor for SiriEnvironment();
  v1 = static SiriEnvironment.forCurrentTask.getter();
  if (!v1)
  {
    v1 = static SiriEnvironment.default.getter();
  }

  v2 = v1;
  v6 = (*(*v0 + 120))();
  v7 = v3;
  MEMORY[0x1E12A1580](0x615668637465662ELL, 0xED0000292865756CLL);

  v4 = specialized logAction<A>(label:_:)(v6, v7, v2, v0);

  return v4;
}

uint64_t EnvironmentValueFetcher.debugDescription.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(53);
  MEMORY[0x1E12A1580](0xD000000000000022, 0x80000001DCA7C740);
  MEMORY[0x1E12A1580](v1[2], v1[3]);
  MEMORY[0x1E12A1580](0x65756C6176202C22, 0xED0000223D79654BLL);
  MEMORY[0x1E12A1580](v1[4], v1[5]);
  MEMORY[0x1E12A1580](10530, 0xE200000000000000);
  return 0;
}

uint64_t EnvironmentValueFetcher.deinit()
{

  return v0;
}

uint64_t EnvironmentValueFetcher.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void closure #1 in static AffinityScore.loadAffinityScorer(from:defaultVersion:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for TypeIdentifier();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v190 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any(a1, &v204);
  if (swift_dynamicCast())
  {
    v12 = *&v202[0];
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.executor);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_14;
    }

    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = v12;
    v17 = "FixedAffinityScorer(score: %ld)";
    v18 = v15;
    v19 = v14;
    v20 = v16;
    v21 = 12;
    goto LABEL_13;
  }

  outlined init with copy of Any(a1, &v204);
  if (swift_dynamicCast())
  {
    v22 = *&v202[0];
    v23 = round(*v202);
    if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v23 > -9.22337204e18)
    {
      if (v23 < 9.22337204e18)
      {
        if (one-time initialization token for executor == -1)
        {
LABEL_11:
          v12 = v23;
          v24 = type metadata accessor for Logger();
          __swift_project_value_buffer(v24, static Logger.executor);
          v14 = Logger.logObject.getter();
          v25 = static os_log_type_t.debug.getter();
          if (!os_log_type_enabled(v14, v25))
          {
LABEL_14:

            v26 = type metadata accessor for FixedAffinityScorer(0);
            v27 = swift_allocObject();
            UUID.init()();
            v28 = v27 + OBJC_IVAR____TtC14SiriKitRuntime19FixedAffinityScorer_score;
            *v28 = v12;
            *(v28 + 8) = 0;
LABEL_15:
            a3[3] = v26;
            v29 = lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type FixedAffinityScorer and conformance FixedAffinityScorer, type metadata accessor for FixedAffinityScorer, &protocol conformance descriptor for FixedAffinityScorer);
LABEL_16:
            a3[4] = v29;
            *a3 = v27;
            return;
          }

          v16 = swift_slowAlloc();
          *v16 = 134218240;
          *(v16 + 4) = v12;
          *(v16 + 12) = 2048;
          *(v16 + 14) = v22;
          v17 = "FixedAffinityScorer(score: %ld) (rounded from double value %f)";
          v18 = v25;
          v19 = v14;
          v20 = v16;
          v21 = 22;
LABEL_13:
          _os_log_impl(&dword_1DC659000, v19, v18, v17, v20, v21);
          MEMORY[0x1E12A2F50](v16, -1, -1);
          goto LABEL_14;
        }

LABEL_68:
        v201 = *&v23;
        swift_once();
        v23 = *&v201;
        goto LABEL_11;
      }

LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    __break(1u);
    goto LABEL_67;
  }

  v201 = a3;
  outlined init with copy of Any(a1, &v204);
  v30 = MEMORY[0x1E69E6158];
  if (swift_dynamicCast())
  {
    v31 = *(&v202[0] + 1);
    v32 = HIBYTE(*(&v202[0] + 1)) & 0xFLL;
    if ((*(&v202[0] + 1) & 0x2000000000000000) == 0)
    {
      v32 = *&v202[0] & 0xFFFFFFFFFFFFLL;
    }

    if (!v32)
    {

      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      __swift_project_value_buffer(v35, static Logger.executor);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.debug.getter();
      v38 = os_log_type_enabled(v36, v37);
      a3 = v201;
      if (v38)
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1DC659000, v36, v37, "FixedAffinityScorer(score: nil) (from empty string)", v39, 2u);
        MEMORY[0x1E12A2F50](v39, -1, -1);
      }

      v26 = type metadata accessor for FixedAffinityScorer(0);
      v27 = swift_allocObject();
      UUID.init()();
      v40 = v27 + OBJC_IVAR____TtC14SiriKitRuntime19FixedAffinityScorer_score;
      *v40 = 0;
      *(v40 + 8) = 1;
      goto LABEL_15;
    }

    v205 = v30;
    v204 = v202[0];
    v200 = *&v202[0];

    TypeIdentifier.init(for:)();
    static Transformation.defaultLengthLimit.getter();
    static Transformation.transform<A>(_:to:lengthLimit:)();
    if (!v3)
    {
      v44 = v200;
      (*(v9 + 8))(v11, v8);
      __swift_destroy_boxed_opaque_existential_1Tm(&v204);
      v45 = *&v202[0];
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      __swift_project_value_buffer(v46, static Logger.executor);

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *&v204 = v50;
        *v49 = 134218242;
        *(v49 + 4) = v45;
        *(v49 + 12) = 2080;
        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v31, &v204);

        *(v49 + 14) = v51;
        _os_log_impl(&dword_1DC659000, v47, v48, "FixedAffinityScorer(score: %ld) (from string %s)", v49, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v50);
        MEMORY[0x1E12A2F50](v50, -1, -1);
        MEMORY[0x1E12A2F50](v49, -1, -1);
      }

      else
      {
      }

      v26 = type metadata accessor for FixedAffinityScorer(0);
      v27 = swift_allocObject();
      UUID.init()();
      v52 = v27 + OBJC_IVAR____TtC14SiriKitRuntime19FixedAffinityScorer_score;
      *v52 = v45;
      *(v52 + 8) = 0;
      a3 = v201;
      goto LABEL_15;
    }

    (*(v9 + 8))(v11, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(&v204);
    v4 = 0;
  }

  outlined init with copy of Any(a1, &v204);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_40;
  }

  v33 = *&v202[0];
  specialized Dictionary.getAsType<A>(key:)(1701869940, 0xE400000000000000, *&v202[0]);
  if (v4)
  {
LABEL_25:

    return;
  }

  if (!v34)
  {

LABEL_40:
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    __swift_project_value_buffer(v53, static Logger.executor);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v54, v55))
    {
      goto LABEL_46;
    }

    v56 = swift_slowAlloc();
    *v56 = 0;
    v57 = "bad encoding dict";
    goto LABEL_44;
  }

  v41 = String.lowercased()();
  object = v41._object;

  v43 = specialized Dictionary.getAsType<A>(key:)(0x6E6572646C696863, 0xE800000000000000, v33);
  v60 = MEMORY[0x1E69E7CC0];
  if (v43)
  {
    v61 = v43;
  }

  else
  {
    v61 = MEMORY[0x1E69E7CC0];
  }

  v199 = specialized Dictionary.getAsType<A>(key:)(0x4165726975716572, 0xEA00000000006C6CLL, v33);
  v62 = specialized Dictionary.getAsType<A>(key:)(0x6E6F6973726576, 0xE700000000000000, v33);
  if (v63)
  {
    v64 = a2;
  }

  else
  {
    v64 = v62;
  }

  v65 = specialized Dictionary.getAsType<A>(key:)(0x65726F6373, 0xE500000000000000, v33);
  v200 = 0;
  if (v64 > 1)
  {

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    __swift_project_value_buffer(v67, static Logger.executor);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 134218240;
      *(v70 + 4) = v64;
      *(v70 + 12) = 2048;
      *(v70 + 14) = 1;
      _os_log_impl(&dword_1DC659000, v68, v69, "bad version: got %ld, newer than our version %ld", v70, 0x16u);
      MEMORY[0x1E12A2F50](v70, -1, -1);
    }

    lazy protocol witness table accessor for type AffinityScoreError and conformance AffinityScoreError();
    swift_allocError();
    *v71 = v64;
    *(v71 + 8) = 0;
    goto LABEL_48;
  }

  v195 = v65;
  v196 = v66;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v197 = v64;
  v72 = type metadata accessor for Logger();
  v73 = __swift_project_value_buffer(v72, static Logger.executor);
  swift_bridgeObjectRetain_n();

  v192 = v73;
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.debug.getter();

  v194 = v75;
  v76 = os_log_type_enabled(v74, v75);
  v198 = v61;
  if (v76)
  {
    v77 = swift_slowAlloc();
    v190 = v74;
    v78 = v77;
    v191 = swift_slowAlloc();
    *&v202[0] = v191;
    *v78 = 136315906;
    *(v78 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41._countAndFlagsBits, v41._object, v202);
    *(v78 + 12) = 2080;
    *&v204 = v195;
    BYTE8(v204) = v196 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    v79 = String.init<A>(describing:)();
    v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v80, v202);
    v61 = v198;

    *(v78 + 14) = v81;
    *(v78 + 22) = 2048;
    v82 = *(v61 + 16);

    *(v78 + 24) = v82;

    *(v78 + 32) = 1024;
    *(v78 + 34) = v199 & 1;
    v83 = v190;
    _os_log_impl(&dword_1DC659000, v190, v194, "Loading scorer type=%s, score=%s, childCount=%ld, requireAll=%{BOOL}d", v78, 0x26u);
    v84 = v191;
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v84, -1, -1);
    MEMORY[0x1E12A2F50](v78, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  countAndFlagsBits = v41._countAndFlagsBits;
  if (v41._countAndFlagsBits == 7235949 && v41._object == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v85 = *(v61 + 16);
    if (v85)
    {
      v206 = v60;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v85, 0);
      v86 = 0;
      v87 = v206;
      v88 = v61 + 32;
      while (v86 < *(v61 + 16))
      {
        v89 = outlined init with copy of Any(v88, v202);
        MEMORY[0x1EEE9AC00](v89);
        *(&v190 - 2) = v202;
        *(&v190 - 1) = v197;
        v90 = v200;
        specialized logAction<A>(label:_:)(0xD000000000000012, 0x80000001DCA7C770, closure #1 in static AffinityScore.loadAffinityScorer(from:defaultVersion:)partial apply, &v204);
        v200 = v90;
        if (v90)
        {
          goto LABEL_155;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v202);
        v206 = v87;
        v92 = *(v87 + 16);
        v91 = *(v87 + 24);
        if (v92 >= v91 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v91 > 1), v92 + 1, 1);
          v87 = v206;
        }

        ++v86;
        *(v87 + 16) = v92 + 1;
        outlined init with take of ReferenceResolutionClientProtocol(&v204, v87 + 40 * v92 + 32);
        v88 += 32;
        v61 = v198;
        if (v85 == v86)
        {

          goto LABEL_93;
        }
      }

      __break(1u);
LABEL_139:

LABEL_140:
      if (*(v87 + 16))
      {

        v104 = type metadata accessor for CombiningAffinityScorer(0);
        v27 = swift_allocObject();
        *(v27 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_children) = v87;
        v133 = (v27 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_reducer);
        v134 = closure #1 in static CombiningAffinityScorer.first(children:);
LABEL_142:
        *v133 = v134;
        v133[1] = 0;
        UUID.init()();
        v135 = v27 + OBJC_IVAR____TtC14SiriKitRuntime21CachingAffinityScorer_scoreState;
        *v135 = 0;
        *(v135 + 8) = 256;
        goto LABEL_96;
      }

      goto LABEL_160;
    }

    v87 = MEMORY[0x1E69E7CC0];
LABEL_93:
    if (*(v87 + 16))
    {

      v101 = swift_allocObject();
      *(v101 + 16) = 1;
      v102 = swift_allocObject();
      *(v102 + 16) = 0;
      v103 = swift_allocObject();
      *(v103 + 16) = v101;
      *(v103 + 24) = v199 & 1;
      *(v103 + 32) = v102;
      v104 = type metadata accessor for CombiningAffinityScorer(0);
      v27 = swift_allocObject();
      *(v27 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_children) = v87;
      v105 = (v27 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_reducer);
      v106 = closure #1 in static CombiningAffinityScorer.min(children:requireAll:)partial apply;
LABEL_95:
      *v105 = v106;
      v105[1] = v103;

      UUID.init()();
      v107 = v27 + OBJC_IVAR____TtC14SiriKitRuntime21CachingAffinityScorer_scoreState;
      *v107 = 0;
      *(v107 + 8) = 256;

LABEL_96:
      a3 = v201;
      v201[3] = v104;
LABEL_97:
      v29 = lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type CombiningAffinityScorer and conformance CachingAffinityScorer, type metadata accessor for CombiningAffinityScorer, &protocol conformance descriptor for CachingAffinityScorer);
      goto LABEL_16;
    }

    goto LABEL_160;
  }

  if (v41._countAndFlagsBits == 7889261 && v41._object == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v93 = *(v198 + 16);
    if (!v93)
    {

      v95 = MEMORY[0x1E69E7CC0];
LABEL_110:
      if (*(v95 + 16))
      {

        v116 = swift_allocObject();
        *(v116 + 16) = 1;
        v117 = swift_allocObject();
        *(v117 + 16) = 0;
        v103 = swift_allocObject();
        *(v103 + 16) = v116;
        *(v103 + 24) = v199 & 1;
        *(v103 + 32) = v117;
        v104 = type metadata accessor for CombiningAffinityScorer(0);
        v27 = swift_allocObject();
        *(v27 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_children) = v95;
        v105 = (v27 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_reducer);
        v106 = closure #1 in static CombiningAffinityScorer.max(children:requireAll:)partial apply;
        goto LABEL_95;
      }

LABEL_160:

      v144 = Logger.logObject.getter();
      v145 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v144, v145))
      {

        goto LABEL_165;
      }

      v146 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      *&v204 = v147;
      *v146 = 136315138;
      v148 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, v41._object, &v204);

      *(v146 + 4) = v148;
      v149 = "bad operand count, %s operator has no children";
      v150 = v145;
      v151 = v144;
      v152 = v146;
      v153 = 12;
      goto LABEL_162;
    }

    v206 = v60;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v93, 0);
    v94 = 0;
    v95 = v206;
    v96 = v198 + 32;
    while (v94 < *(v198 + 16))
    {
      v97 = outlined init with copy of Any(v96, v202);
      MEMORY[0x1EEE9AC00](v97);
      *(&v190 - 2) = v202;
      *(&v190 - 1) = v197;
      v98 = v200;
      specialized logAction<A>(label:_:)(0xD000000000000012, 0x80000001DCA7C770, closure #1 in static AffinityScore.loadAffinityScorer(from:defaultVersion:)partial apply, &v204);
      v200 = v98;
      if (v98)
      {
        goto LABEL_155;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v202);
      v206 = v95;
      v100 = *(v95 + 16);
      v99 = *(v95 + 24);
      if (v100 >= v99 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v99 > 1), v100 + 1, 1);
        v95 = v206;
      }

      ++v94;
      *(v95 + 16) = v100 + 1;
      outlined init with take of ReferenceResolutionClientProtocol(&v204, v95 + 40 * v100 + 32);
      v96 += 32;
      if (v93 == v94)
      {

        goto LABEL_110;
      }
    }

    __break(1u);
LABEL_157:

LABEL_158:
    if (*(v95 + 16))
    {

      v104 = type metadata accessor for CombiningAffinityScorer(0);
      v27 = swift_allocObject();
      *(v27 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_children) = v95;
      v133 = (v27 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_reducer);
      v134 = closure #1 in static CombiningAffinityScorer.last(children:);
      goto LABEL_142;
    }

    goto LABEL_160;
  }

  if (countAndFlagsBits == 7173491 && v41._object == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v108 = *(v198 + 16);
    if (!v108)
    {

      v110 = MEMORY[0x1E69E7CC0];
LABEL_124:
      if (*(v110 + 16))
      {

        v124 = swift_allocObject();
        *(v124 + 16) = 1;
        v125 = swift_allocObject();
        *(v125 + 16) = 0;
        v103 = swift_allocObject();
        *(v103 + 16) = v124;
        *(v103 + 24) = v199 & 1;
        *(v103 + 32) = v125;
        v104 = type metadata accessor for CombiningAffinityScorer(0);
        v27 = swift_allocObject();
        *(v27 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_children) = v110;
        v105 = (v27 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_reducer);
        v106 = closure #1 in static CombiningAffinityScorer.sum(children:requireAll:)partial apply;
        goto LABEL_95;
      }

      goto LABEL_160;
    }

    v206 = v60;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v108, 0);
    v109 = 0;
    v110 = v206;
    v111 = v198 + 32;
    while (v109 < *(v198 + 16))
    {
      v112 = outlined init with copy of Any(v111, v202);
      MEMORY[0x1EEE9AC00](v112);
      *(&v190 - 2) = v202;
      *(&v190 - 1) = v197;
      v113 = v200;
      specialized logAction<A>(label:_:)(0xD000000000000012, 0x80000001DCA7C770, closure #1 in static AffinityScore.loadAffinityScorer(from:defaultVersion:)partial apply, &v204);
      v200 = v113;
      if (v113)
      {
        goto LABEL_155;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v202);
      v206 = v110;
      v115 = *(v110 + 16);
      v114 = *(v110 + 24);
      if (v115 >= v114 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v114 > 1), v115 + 1, 1);
        v110 = v206;
      }

      ++v109;
      *(v110 + 16) = v115 + 1;
      outlined init with take of ReferenceResolutionClientProtocol(&v204, v110 + 40 * v115 + 32);
      v111 += 32;
      if (v108 == v109)
      {

        goto LABEL_124;
      }
    }

    __break(1u);
LABEL_174:

    goto LABEL_175;
  }

  if (countAndFlagsBits == 0x7473726966 && v41._object == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v118 = *(v198 + 16);
    if (!v118)
    {

      v87 = MEMORY[0x1E69E7CC0];
      goto LABEL_140;
    }

    v206 = v60;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v118, 0);
    v54 = 0;
    v87 = v206;
    v119 = v198 + 32;
    while (v54 < *(v198 + 16))
    {
      v120 = outlined init with copy of Any(v119, v202);
      MEMORY[0x1EEE9AC00](v120);
      *(&v190 - 2) = v202;
      *(&v190 - 1) = v197;
      v121 = v200;
      specialized logAction<A>(label:_:)(0xD000000000000012, 0x80000001DCA7C770, closure #1 in static AffinityScore.loadAffinityScorer(from:defaultVersion:)partial apply, &v204);
      v200 = v121;
      if (v121)
      {
        goto LABEL_155;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v202);
      v206 = v87;
      v123 = *(v87 + 16);
      v122 = *(v87 + 24);
      if (v123 >= v122 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v122 > 1), v123 + 1, 1);
        v87 = v206;
      }

      v54 = (v54 + 1);
      *(v87 + 16) = v123 + 1;
      outlined init with take of ReferenceResolutionClientProtocol(&v204, v87 + 40 * v123 + 32);
      v119 += 32;
      if (v118 == v54)
      {
        goto LABEL_139;
      }
    }

    __break(1u);
    goto LABEL_189;
  }

  if (countAndFlagsBits == 1953718636 && v41._object == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v126 = *(v198 + 16);
    if (!v126)
    {

      v95 = MEMORY[0x1E69E7CC0];
      goto LABEL_158;
    }

    v206 = v60;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v126, 0);
    v127 = 0;
    v95 = v206;
    v128 = v198 + 32;
    while (v127 < *(v198 + 16))
    {
      v129 = outlined init with copy of Any(v128, v202);
      MEMORY[0x1EEE9AC00](v129);
      *(&v190 - 2) = v202;
      *(&v190 - 1) = v197;
      v130 = v200;
      specialized logAction<A>(label:_:)(0xD000000000000012, 0x80000001DCA7C770, closure #1 in static AffinityScore.loadAffinityScorer(from:defaultVersion:)partial apply, &v204);
      v200 = v130;
      if (v130)
      {
        goto LABEL_155;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v202);
      v206 = v95;
      v132 = *(v95 + 16);
      v131 = *(v95 + 24);
      if (v132 >= v131 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v131 > 1), v132 + 1, 1);
        v95 = v206;
      }

      ++v127;
      *(v95 + 16) = v132 + 1;
      outlined init with take of ReferenceResolutionClientProtocol(&v204, v95 + 40 * v132 + 32);
      v128 += 32;
      if (v126 == v127)
      {
        goto LABEL_157;
      }
    }

    __break(1u);
LABEL_204:

    v144 = Logger.logObject.getter();
    v177 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v144, v177))
    {
      v146 = swift_slowAlloc();
      v178 = swift_slowAlloc();
      *&v204 = v178;
      *v146 = 134218498;
      v179 = *(v198 + 16);

      *(v146 + 4) = v179;

      *(v146 + 12) = 2080;
      v180 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v200, object, &v204);

      *(v146 + 14) = v180;
      *(v146 + 22) = 2048;
      *(v146 + 24) = v95;
      _os_log_impl(&dword_1DC659000, v144, v177, "bad operand count %ld for operator %s; needs %ld", v146, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v178);
      v154 = v178;
      goto LABEL_163;
    }

    goto LABEL_180;
  }

  if ((countAndFlagsBits != 0x747265766E69 || v41._object != 0xE600000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if ((countAndFlagsBits != 0x657261706D6F63 || v41._object != 0xE700000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {

      v54 = Logger.logObject.getter();
      v169 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v54, v169))
      {
        v56 = swift_slowAlloc();
        v170 = swift_slowAlloc();
        *&v204 = v170;
        *v56 = 136315138;
        v171 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, v41._object, &v204);

        *(v56 + 4) = v171;
        _os_log_impl(&dword_1DC659000, v54, v169, "unknown node type %s; throwing bad encoding", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v170);
        v168 = v170;
        goto LABEL_187;
      }

LABEL_189:

      goto LABEL_46;
    }

    v155 = v200;
    v200 = specialized Dictionary.getAsType<A>(key:)(0x726F74617265706FLL, 0xE800000000000000, v33);
    if (v155)
    {

      goto LABEL_25;
    }

    object = v156;

    if (object)
    {

      v207._countAndFlagsBits = v200;
      v207._object = object;
      v199 = specialized AffinityValueComparison.init(rawValue:)(v207);
      if (v199 != 8)
      {
        v172 = *(v198 + 16);
        if ((v199 & 0xFE) == 6)
        {
          v95 = 1;
        }

        else
        {
          v95 = 2;
        }

        if (v172 == v95)
        {
          v206 = v60;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v172, 0);
          v173 = 0;
          v110 = v206;
          v174 = v198 + 32;
          while (v172 != v173)
          {
            if (v173 >= *(v198 + 16))
            {
              goto LABEL_218;
            }

            outlined init with copy of Any(v174, v202);
            static AffinityScore.loadValueFetcher(from:)(v202, &v204);
            __swift_destroy_boxed_opaque_existential_1Tm(v202);
            v206 = v110;
            v176 = *(v110 + 16);
            v175 = *(v110 + 24);
            if (v176 >= v175 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v175 > 1), v176 + 1, 1);
              v110 = v206;
            }

            ++v173;
            *(v110 + 16) = v176 + 1;
            v138 = (v110 + 32);
            outlined init with take of ReferenceResolutionClientProtocol(&v204, v110 + 32 + 40 * v176);
            v174 += 32;
            if (v172 == v173)
            {

              v137 = Logger.logObject.getter();
              v181 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v137, v181))
              {
                v183 = swift_slowAlloc();
                v184 = swift_slowAlloc();
                *&v204 = v184;
                *v183 = 136315394;
                v185 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v200, object, &v204);

                *(v183 + 4) = v185;
                *(v183 + 12) = 2048;
                *(v183 + 14) = *(v110 + 16);

                _os_log_impl(&dword_1DC659000, v137, v181, "returning CombiningAffinityScorer(oper=%s, children=%ld)", v183, 0x16u);
                __swift_destroy_boxed_opaque_existential_1Tm(v184);
                MEMORY[0x1E12A2F50](v184, -1, -1);
                MEMORY[0x1E12A2F50](v183, -1, -1);

                goto LABEL_211;
              }

              goto LABEL_210;
            }
          }

LABEL_217:
          __break(1u);
LABEL_218:
          __break(1u);
          goto LABEL_219;
        }

        goto LABEL_204;
      }

      v54 = Logger.logObject.getter();
      v165 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v54, v165))
      {
        v56 = swift_slowAlloc();
        v166 = swift_slowAlloc();
        *&v204 = v166;
        *v56 = 136315138;
        v167 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v200, object, &v204);

        *(v56 + 4) = v167;
        _os_log_impl(&dword_1DC659000, v54, v165, "unknown comparison operator %s; throwing badEncoding", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v166);
        v168 = v166;
LABEL_187:
        MEMORY[0x1E12A2F50](v168, -1, -1);
        goto LABEL_45;
      }

      goto LABEL_189;
    }

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v54, v55))
    {
      goto LABEL_46;
    }

    v56 = swift_slowAlloc();
    *v56 = 0;
    v57 = "bad comparison operator encoding; missing or non-string operator";
LABEL_44:
    _os_log_impl(&dword_1DC659000, v54, v55, v57, v56, 2u);
LABEL_45:
    MEMORY[0x1E12A2F50](v56, -1, -1);
LABEL_46:

    lazy protocol witness table accessor for type AffinityScoreError and conformance AffinityScoreError();
    swift_allocError();
    v59 = 3;
LABEL_47:
    *v58 = v59;
    *(v58 + 8) = 1;
LABEL_48:
    swift_willThrow();
    return;
  }

  v136 = *(v198 + 16);
  if (!v136)
  {

    v110 = MEMORY[0x1E69E7CC0];
LABEL_175:
    if (*(v110 + 16) == 1)
    {

      if (*(v110 + 16))
      {
        outlined init with copy of ReferenceResolutionClientProtocol(v110 + 32, &v204);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime14AffinityScorer_pGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime14AffinityScorer_pGMR);
        v157 = swift_allocObject();
        *(v157 + 16) = xmmword_1DCA66060;
        outlined init with copy of ReferenceResolutionClientProtocol(&v204, v157 + 32);
        v158 = swift_allocObject();
        *(v158 + 16) = v195;
        *(v158 + 24) = v196 & 1;
        v159 = type metadata accessor for CombiningAffinityScorer(0);
        v27 = swift_allocObject();
        *(v27 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_children) = v157;
        v160 = (v27 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_reducer);
        *v160 = closure #1 in static CombiningAffinityScorer.invert(child:fallbackValue:)partial apply;
        v160[1] = v158;
        UUID.init()();
        __swift_destroy_boxed_opaque_existential_1Tm(&v204);
        v161 = v27 + OBJC_IVAR____TtC14SiriKitRuntime21CachingAffinityScorer_scoreState;
        *v161 = 0;
        *(v161 + 8) = 256;
        a3 = v201;
        v201[3] = v159;
        goto LABEL_97;
      }

      __break(1u);
      goto LABEL_217;
    }

    v144 = Logger.logObject.getter();
    v162 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v144, v162))
    {
      v146 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      *&v204 = v147;
      *v146 = 136315394;
      v163 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, v41._object, &v204);

      *(v146 + 4) = v163;
      *(v146 + 12) = 2048;
      v164 = *(v110 + 16);

      *(v146 + 14) = v164;

      v149 = "bad operand count, %s operator has %ld children (should have 1)";
      v150 = v162;
      v151 = v144;
      v152 = v146;
      v153 = 22;
LABEL_162:
      _os_log_impl(&dword_1DC659000, v151, v150, v149, v152, v153);
      __swift_destroy_boxed_opaque_existential_1Tm(v147);
      v154 = v147;
LABEL_163:
      MEMORY[0x1E12A2F50](v154, -1, -1);
      MEMORY[0x1E12A2F50](v146, -1, -1);
LABEL_165:

LABEL_166:
      lazy protocol witness table accessor for type AffinityScoreError and conformance AffinityScoreError();
      swift_allocError();
      v59 = 2;
      goto LABEL_47;
    }

LABEL_180:

    swift_bridgeObjectRelease_n();
    goto LABEL_166;
  }

  v206 = v60;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v136, 0);
  v137 = 0;
  v110 = v206;
  v138 = "Fetcher(provider=";
  v139 = v198 + 32;
  while (v137 < *(v198 + 16))
  {
    v140 = outlined init with copy of Any(v139, v202);
    MEMORY[0x1EEE9AC00](v140);
    *(&v190 - 2) = v202;
    *(&v190 - 1) = v197;
    v141 = v200;
    specialized logAction<A>(label:_:)(0xD000000000000012, 0x80000001DCA7C770, closure #1 in static AffinityScore.loadAffinityScorer(from:defaultVersion:)partial apply, &v204);
    v200 = v141;
    if (v141)
    {
LABEL_155:

      __swift_destroy_boxed_opaque_existential_1Tm(v202);

      return;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v202);
    v206 = v110;
    v143 = *(v110 + 16);
    v142 = *(v110 + 24);
    if (v143 >= v142 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v142 > 1), v143 + 1, 1);
      v110 = v206;
    }

    v137 = (v137 + 1);
    *(v110 + 16) = v143 + 1;
    outlined init with take of ReferenceResolutionClientProtocol(&v204, v110 + 40 * v143 + 32);
    v139 += 32;
    if (v136 == v137)
    {
      goto LABEL_174;
    }
  }

  __break(1u);
LABEL_210:

LABEL_211:
  v186 = *(v110 + 16);
  if (v186 == 2)
  {
    outlined init with copy of ReferenceResolutionClientProtocol(v138, &v204);
    outlined init with copy of ReferenceResolutionClientProtocol(v110 + 72, v202);

    v187 = type metadata accessor for ComparingAffinityScorer(0);
LABEL_215:
    v27 = swift_allocObject();
    v188 = v27 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_score;
    *v188 = v195;
    *(v188 + 8) = v196 & 1;
    *(v27 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_comparison) = v199;
    outlined init with copy of ReferenceResolutionClientProtocol(&v204, v27 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_first);
    outlined init with copy of ReferenceResolutionClientProtocol?(v202, v27 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_second, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMd, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMR);
    UUID.init()();
    outlined destroy of ReferenceResolutionClientProtocol?(v202, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMd, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(&v204);
    v189 = v27 + OBJC_IVAR____TtC14SiriKitRuntime21CachingAffinityScorer_scoreState;
    *v189 = 0;
    *(v189 + 8) = 256;
    a3 = v201;
    v201[3] = v187;
    v29 = lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type ComparingAffinityScorer and conformance CachingAffinityScorer, type metadata accessor for ComparingAffinityScorer, &protocol conformance descriptor for CachingAffinityScorer);
    goto LABEL_16;
  }

  if (v186)
  {
    outlined init with copy of ReferenceResolutionClientProtocol(v138, &v204);

    v187 = type metadata accessor for ComparingAffinityScorer(0);
    memset(v202, 0, sizeof(v202));
    v203 = 0;
    goto LABEL_215;
  }

LABEL_219:
  __break(1u);
}

uint64_t specialized Dictionary.getAsType<A>(key:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v4, v9);
  outlined init with take of Any(v9, v10);
  outlined init with copy of Any(v10, v9);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    return v8;
  }

  else
  {
    lazy protocol witness table accessor for type AffinityScoreError and conformance AffinityScoreError();
    swift_allocError();
    *v7 = 3;
    *(v7 + 8) = 1;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }
}

{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v4, v9);
  outlined init with take of Any(v9, v10);
  outlined init with copy of Any(v10, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    return v8;
  }

  else
  {
    lazy protocol witness table accessor for type AffinityScoreError and conformance AffinityScoreError();
    swift_allocError();
    *v7 = 3;
    *(v7 + 8) = 1;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }
}

{
  if (!*(a3 + 16))
  {
    return 2;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 2;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v4, v9);
  outlined init with take of Any(v9, v10);
  outlined init with copy of Any(v10, v9);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    return v8;
  }

  else
  {
    lazy protocol witness table accessor for type AffinityScoreError and conformance AffinityScoreError();
    swift_allocError();
    *v7 = 3;
    *(v7 + 8) = 1;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }
}

{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v4, v9);
  outlined init with take of Any(v9, v10);
  outlined init with copy of Any(v10, v9);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    return v8;
  }

  else
  {
    lazy protocol witness table accessor for type AffinityScoreError and conformance AffinityScoreError();
    swift_allocError();
    *v7 = 3;
    *(v7 + 8) = 1;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }
}

uint64_t static AffinityScore.loadValueFetcher(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  outlined init with copy of Any(a1, v65);
  if (swift_dynamicCast())
  {
    v4 = *&v64[0];
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.executor);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = v4;
      _os_log_impl(&dword_1DC659000, v6, v7, "FixedValueFetcher(value: %ld)", v8, 0xCu);
      MEMORY[0x1E12A2F50](v8, -1, -1);
    }

    *&v65[0] = v4;
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    v12 = type metadata accessor for FixedValueFetcher();
    result = swift_allocObject();
    *(result + 16) = v9;
    *(result + 24) = v11;
    a2[3] = v12;
    goto LABEL_20;
  }

  outlined init with copy of Any(a1, v65);
  if (swift_dynamicCast())
  {
    v14 = *&v64[0];
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.executor);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = v14;
      _os_log_impl(&dword_1DC659000, v16, v17, "FixedValueFetcher(value: %f)", v18, 0xCu);
      MEMORY[0x1E12A2F50](v18, -1, -1);
    }

    *&v65[0] = 0;
    *(&v65[0] + 1) = 0xE000000000000000;
    Double.write<A>(to:)();
    v20 = *(&v65[0] + 1);
    v19 = *&v65[0];
LABEL_19:
    v26 = type metadata accessor for FixedValueFetcher();
    result = swift_allocObject();
    *(result + 16) = v19;
    *(result + 24) = v20;
    a2[3] = v26;
LABEL_20:
    a2[4] = &protocol witness table for FixedValueFetcher;
    *a2 = result;
    return result;
  }

  outlined init with copy of Any(a1, v65);
  if (swift_dynamicCast())
  {
    v20 = *(&v64[0] + 1);
    v19 = *&v64[0];
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.executor);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v65[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v65);
      _os_log_impl(&dword_1DC659000, v22, v23, "FixedValueFetcher(value: %s)", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x1E12A2F50](v25, -1, -1);
      MEMORY[0x1E12A2F50](v24, -1, -1);
    }

    goto LABEL_19;
  }

  outlined init with copy of Any(a1, v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  if (swift_dynamicCast())
  {
    if (*(*&v64[0] + 16) && (v27 = specialized __RawDictionaryStorage.find<A>(_:)(0x6D6E6F7269766E65, 0xEB00000000746E65), (v28 & 1) != 0))
    {
      outlined init with copy of Any(*(*&v64[0] + 56) + 32 * v27, v65);
    }

    else
    {
      memset(v65, 0, sizeof(v65));
    }

    if (*(*&v64[0] + 16) && (v34 = specialized __RawDictionaryStorage.find<A>(_:)(0x7475706E69, 0xE500000000000000), (v35 & 1) != 0))
    {
      outlined init with copy of Any(*(*&v64[0] + 56) + 32 * v34, v64);
    }

    else
    {

      memset(v64, 0, sizeof(v64));
    }

    outlined init with copy of ReferenceResolutionClientProtocol?(v65, v62, &_sypSgMd, &_sypSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v64, v63, &_sypSgMd, &_sypSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v62, &v60, &_sypSgMd, &_sypSgMR);
    v56 = v60;
    v57 = v61;
    if (*(&v61 + 1))
    {
      outlined init with take of Any(&v56, &v58);
      v36 = MEMORY[0x1E69E7CC0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 2) + 1, 1, v36);
      }

      v38 = *(v36 + 2);
      v37 = *(v36 + 3);
      if (v38 >= v37 >> 1)
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v36);
      }

      *(v36 + 2) = v38 + 1;
      outlined init with take of Any(&v58, &v36[32 * v38 + 32]);
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v56, &_sypSgMd, &_sypSgMR);
      v36 = MEMORY[0x1E69E7CC0];
    }

    outlined init with copy of ReferenceResolutionClientProtocol?(v63, &v60, &_sypSgMd, &_sypSgMR);
    v56 = v60;
    v57 = v61;
    if (*(&v61 + 1))
    {
      outlined init with take of Any(&v56, &v58);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 2) + 1, 1, v36);
      }

      v40 = *(v36 + 2);
      v39 = *(v36 + 3);
      if (v40 >= v39 >> 1)
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v36);
      }

      *(v36 + 2) = v40 + 1;
      outlined init with take of Any(&v58, &v36[32 * v40 + 32]);
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v56, &_sypSgMd, &_sypSgMR);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
    swift_arrayDestroy();
    v41 = *(v36 + 2);

    if (v41 == 1)
    {
      outlined init with copy of ReferenceResolutionClientProtocol?(v65, &v58, &_sypSgMd, &_sypSgMR);
      if (v59)
      {
        outlined init with take of Any(&v58, &v60);
        outlined init with copy of Any(&v60, &v58);
        v42 = type metadata accessor for EnvironmentValueFetcher();
        swift_allocObject();
        v43 = EnvironmentValueFetcher.init(plist:)(&v58);
        if (v43)
        {
          v44 = &protocol witness table for EnvironmentValueFetcher;
LABEL_62:
          a2[3] = v42;
          a2[4] = v44;
          *a2 = v43;
LABEL_64:
          __swift_destroy_boxed_opaque_existential_1Tm(&v60);
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      outlined destroy of ReferenceResolutionClientProtocol?(&v58, &_sypSgMd, &_sypSgMR);
      outlined init with copy of ReferenceResolutionClientProtocol?(v64, &v58, &_sypSgMd, &_sypSgMR);
      if (v59)
      {
        outlined init with take of Any(&v58, &v60);
        outlined init with copy of Any(&v60, &v58);
        v42 = type metadata accessor for InputValueFetcher();
        swift_allocObject();
        v43 = InputValueFetcher.init(plist:)(&v58);
        if (v43)
        {
          v44 = &protocol witness table for InputValueFetcher;
          goto LABEL_62;
        }

LABEL_63:
        lazy protocol witness table accessor for type AffinityScoreError and conformance AffinityScoreError();
        swift_allocError();
        *v50 = 3;
        *(v50 + 8) = 1;
        swift_willThrow();
        goto LABEL_64;
      }

      outlined destroy of ReferenceResolutionClientProtocol?(&v58, &_sypSgMd, &_sypSgMR);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      __swift_project_value_buffer(v51, static Logger.executor);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_1DC659000, v52, v53, "loadValueFetcher logic error", v54, 2u);
        MEMORY[0x1E12A2F50](v54, -1, -1);
      }

      lazy protocol witness table accessor for type AffinityScoreError and conformance AffinityScoreError();
      swift_allocError();
      *v55 = 1;
      *(v55 + 8) = 1;
    }

    else
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      __swift_project_value_buffer(v45, static Logger.executor);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_1DC659000, v46, v47, "value fetcher must be either an input fetcher XOR an environment value fetcher", v48, 2u);
        MEMORY[0x1E12A2F50](v48, -1, -1);
      }

      lazy protocol witness table accessor for type AffinityScoreError and conformance AffinityScoreError();
      swift_allocError();
      *v49 = 3;
      *(v49 + 8) = 1;
    }

    swift_willThrow();
LABEL_65:
    outlined destroy of ReferenceResolutionClientProtocol?(v64, &_sypSgMd, &_sypSgMR);
    return outlined destroy of ReferenceResolutionClientProtocol?(v65, &_sypSgMd, &_sypSgMR);
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Logger.executor);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1DC659000, v30, v31, "bad encoding, not fixed or a dict", v32, 2u);
    MEMORY[0x1E12A2F50](v32, -1, -1);
  }

  lazy protocol witness table accessor for type AffinityScoreError and conformance AffinityScoreError();
  swift_allocError();
  *v33 = 3;
  *(v33 + 8) = 1;
  return swift_willThrow();
}

uint64_t _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC@<X0>(void (*a1)(_BYTE *, double)@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for Result();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v12[-v9];
  a1(v5, v8);
  swift_storeEnumTagMultiPayload();
  return (*(v7 + 32))(a2, v10, v6);
}

uint64_t specialized logAction<A>(label:_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.executor);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *&v27[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v27);
    _os_log_impl(&dword_1DC659000, v11, v12, "==>> %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1E12A2F50](v14, -1, -1);
    MEMORY[0x1E12A2F50](v13, -1, -1);
  }

  closure #1 in implicit closure #1 in RemoteFlowPluginPackage.init(bundleId:bundlePath:supportedTopics:sharedFlowPluginServiceClient:overrideAffinityScorer:)(a3, a4, v27);
  outlined init with copy of ReferenceResolutionClientProtocol(v27, v26);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25 = v18;
    *v17 = 136315394;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v25);
    *(v17 + 12) = 2080;
    outlined init with copy of ReferenceResolutionClientProtocol(v26, &v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime14AffinityScorer_pMd, &_s14SiriKitRuntime14AffinityScorer_pMR);
    v19 = String.init<A>(describing:)();
    v21 = v20;
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v25);

    *(v17 + 14) = v22;
    _os_log_impl(&dword_1DC659000, v15, v16, "<<== %s -> %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v18, -1, -1);
    MEMORY[0x1E12A2F50](v17, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  outlined init with take of ReferenceResolutionClientProtocol(v27, a5);
}

void logAction<A>(label:_:)(uint64_t a1@<X0>, unint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a5;
  v39 = a1;
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v38 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v36 - v14;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.executor);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v36[1] = a4;
    v20 = v19;
    v21 = swift_slowAlloc();
    v37 = a6;
    v22 = a3;
    v23 = v6;
    v24 = v21;
    v40 = v21;
    *v20 = 136315138;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, a2, &v40);
    _os_log_impl(&dword_1DC659000, v17, v18, "==>> %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    v25 = v24;
    v6 = v23;
    a3 = v22;
    a6 = v37;
    MEMORY[0x1E12A2F50](v25, -1, -1);
    MEMORY[0x1E12A2F50](v20, -1, -1);
  }

  a3();
  v26 = *(v11 + 16);
  v26(v15, a6, v6);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = v6;
    v31 = swift_slowAlloc();
    v40 = v31;
    *v29 = 136315394;
    *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, a2, &v40);
    *(v29 + 12) = 2080;
    v26(v38, v15, v30);
    v32 = String.init<A>(describing:)();
    v34 = v33;
    (*(v11 + 8))(v15, v30);
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v40);

    *(v29 + 14) = v35;
    _os_log_impl(&dword_1DC659000, v27, v28, "<<== %s -> %s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v31, -1, -1);
    MEMORY[0x1E12A2F50](v29, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v15, v6);
  }
}

uint64_t partial apply for closure #1 in logAction<A>(label:_:)(void *a1)
{
  result = (*(v1 + 24))();
  if (v2)
  {
    *a1 = v2;
  }

  return result;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC14SiriKitRuntime24RemoteConversationClientC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy14SiriKitRuntime24RemoteConversationClientCGMd, &_ss11_SetStorageCy14SiriKitRuntime24RemoteConversationClientCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for RemoteConversationClient();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1);
        }

        v2 = v15;
        Hasher.init(_seed:)();
        String.hash(into:)();
        result = Hasher._finalize()();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo16LNSystemProtocolC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16LNSystemProtocolCGMd, &_ss11_SetStorageCySo16LNSystemProtocolCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for LNSystemProtocol();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1, double a2)
{
  v3 = v2;
  v37 = type metadata accessor for AppShortcutGeneralizedInvocation();
  v4 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SiriKitFlow32AppShortcutGeneralizedInvocationVGMd, &_ss11_SetStorageCy11SiriKitFlow32AppShortcutGeneralizedInvocationVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v2;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
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
    v35 = v4 + 32;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v4 + 72) * (v17 | (v9 << 6));
      v21 = *(v4 + 32);
      v33 = *(v4 + 72);
      v34 = v21;
      v21(v36, v20, v37);
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type AppShortcutGeneralizedInvocation and conformance AppShortcutGeneralizedInvocation, MEMORY[0x1E69D00D0], MEMORY[0x1E69D00D8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v34(*(v8 + 48) + v16 * v33, v36, v37);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v3 = v31;
    *(v6 + 16) = 0;
  }

  *v3 = v8;
  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCyScTySo13SABaseCommandCSgs5Error_pGGMd, &_ss11_SetStorageCyScTySo13SABaseCommandCSgs5Error_pGGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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
  return specialized _NativeSet.copy()(MEMORY[0x1E69D0820], &_ss11_SetStorageCy16SiriMessageTypes22ConversationSessionKeyOGMd, &_ss11_SetStorageCy16SiriMessageTypes22ConversationSessionKeyOGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy14SiriKitRuntime24RemoteConversationClientCGMd, &_ss11_SetStorageCy14SiriKitRuntime24RemoteConversationClientCGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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

id specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16LNSystemProtocolCGMd, &_ss11_SetStorageCySo16LNSystemProtocolCGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1, double a2)
{
  v3 = v2;
  v34 = type metadata accessor for AppShortcutGeneralizedInvocation();
  v4 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SiriKitFlow32AppShortcutGeneralizedInvocationVGMd, &_ss11_SetStorageCy11SiriKitFlow32AppShortcutGeneralizedInvocationVGMR);
  v8 = static _SetStorage.resize(original:capacity:move:)();
  result = v7;
  if (*(v7 + 16))
  {
    v29 = v2;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v32 = v4 + 16;
    v33 = v4;
    v16 = v8 + 56;
    v30 = (v4 + 32);
    v31 = result;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v33 + 72);
      (*(v33 + 16))(v6, *(result + 48) + v21 * (v18 | (v10 << 6)), v34);
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type AppShortcutGeneralizedInvocation and conformance AppShortcutGeneralizedInvocation, MEMORY[0x1E69D00D0], MEMORY[0x1E69D00D8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v30)(*(v8 + 48) + v17 * v21, v6, v34);
      ++*(v8 + 16);
      result = v31;
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

        v3 = v29;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
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
    *v3 = v8;
  }

  return result;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, char *a2, double a3)
{
  v4 = v3;
  v7 = type metadata accessor for AppShortcutGeneralizedInvocation();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type AppShortcutGeneralizedInvocation and conformance AppShortcutGeneralizedInvocation, MEMORY[0x1E69D00D0], MEMORY[0x1E69D00D8]);
  v35 = a2;
  v12 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v13 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v30 = v3;
    v31 = a1;
    v32 = ~v14;
    v29 = v8;
    v18 = *(v8 + 16);
    v17 = v8 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v28[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v34 + 48) + v19 * v15, v7);
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type AppShortcutGeneralizedInvocation and conformance AppShortcutGeneralizedInvocation, MEMORY[0x1E69D00D0], MEMORY[0x1E69D00E0]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      v23 = *v20;
      (*v20)(v10, v7);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v32;
      v16 = v21;
      if (((*(v33 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v4 = v30;
        a1 = v31;
        v8 = v29;
        goto LABEL_7;
      }
    }

    v23(v35, v7);
    v21(v31, *(v34 + 48) + v19 * v15, v7);
    return 0;
  }

  else
  {
    v16 = *(v8 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v35;
    v26 = (v16)(v10, v35, v7);
    v36 = *v4;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v10, v15, isUniquelyReferenced_nonNull_native, v26);
    *v4 = v36;
    (*(v8 + 32))(a1, v25, v7);
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

unint64_t lazy protocol witness table accessor for type AffinityScoreError and conformance AffinityScoreError()
{
  result = lazy protocol witness table cache variable for type AffinityScoreError and conformance AffinityScoreError;
  if (!lazy protocol witness table cache variable for type AffinityScoreError and conformance AffinityScoreError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AffinityScoreError and conformance AffinityScoreError);
  }

  return result;
}

uint64_t partial apply for closure #1 in static CombiningAffinityScorer.invert(child:fallbackValue:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return *(v4 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for LNSystemProtocol();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo16LNSystemProtocolC_Tt1g5(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      specialized _NativeSet.resize(capacity:)(v20 + 1);
    }

    v18 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for LNSystemProtocol();
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3, double a4)
{
  v33 = a1;
  v7 = type metadata accessor for AppShortcutGeneralizedInvocation();
  v8 = *(v7 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 24);
  v30 = v4;
  v31 = v8;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v12 + 1, v9.n128_f64[0]);
  }

  else
  {
    if (v13 > v12)
    {
      specialized _NativeSet.copy()(MEMORY[0x1E69D00D0], &_ss11_SetStorageCy11SiriKitFlow32AppShortcutGeneralizedInvocationVGMd, &_ss11_SetStorageCy11SiriKitFlow32AppShortcutGeneralizedInvocationVGMR);
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v12 + 1, v9.n128_f64[0]);
  }

  v14 = *v4;
  lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type AppShortcutGeneralizedInvocation and conformance AppShortcutGeneralizedInvocation, MEMORY[0x1E69D00D0], MEMORY[0x1E69D00D8]);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v14 + 56;
  v32 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v8 + 16);
    v20 = v8 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v11, *(v32 + 48) + v22 * a2, v7);
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type AppShortcutGeneralizedInvocation and conformance AppShortcutGeneralizedInvocation, MEMORY[0x1E69D00D0], MEMORY[0x1E69D00E0]);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v11, v7);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v7, v9);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(unint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for LNSystemProtocol();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t specialized logAction<A>(label:_:)(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.executor);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v39[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v39);
    _os_log_impl(&dword_1DC659000, v7, v8, "==>> %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E12A2F50](v10, -1, -1);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  v11 = a4[2];
  v12 = a4[3];
  v14 = a4[4];
  v13 = a4[5];
  SiriEnvironment.getProvider(name:)(v11, v12);
  if (!v15)
  {
    countAndFlagsBits = 0;
    object = 0;
    goto LABEL_11;
  }

  swift_getObjectType();
  v16._countAndFlagsBits = v14;
  v16._object = v13;
  v18 = SiriEnvironmentStringKeyedValueFetching.getValue(forKey:)(v16);
  if (!v17)
  {
    countAndFlagsBits = v18.value._countAndFlagsBits;
    object = v18.value._object;
    swift_unknownObjectRelease();
LABEL_11:
    swift_bridgeObjectRetain_n();

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v40 = v33;
      *v32 = 136315394;
      *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v40);
      *(v32 + 12) = 2080;
      v39[0] = countAndFlagsBits;
      v39[1] = object;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v34 = String.init<A>(describing:)();
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v40);

      *(v32 + 14) = v36;
      _os_log_impl(&dword_1DC659000, v30, v31, "<<== %s -> %s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v33, -1, -1);
      MEMORY[0x1E12A2F50](v32, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    return countAndFlagsBits;
  }

  swift_unknownObjectRelease();
  v19 = v17;

  v20 = v17;
  v21 = Logger.logObject.getter();
  countAndFlagsBits = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v21, countAndFlagsBits))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v39[0] = v24;
    *v23 = 136315394;
    *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v39);
    *(v23 + 12) = 2080;
    v40 = v17;
    v25 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v26 = String.init<A>(describing:)();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v39);

    *(v23 + 14) = v28;
    _os_log_impl(&dword_1DC659000, v21, countAndFlagsBits, "<<== %s threw %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v24, -1, -1);
    MEMORY[0x1E12A2F50](v23, -1, -1);
  }

  else
  {
  }

  v39[0] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_willThrowTypedImpl();
  return countAndFlagsBits;
}

unint64_t specialized AffinityValueComparison.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AffinityValueComparison.init(rawValue:), v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t instantiation function for generic protocol witness table for FixedAffinityScorer(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type FixedAffinityScorer and conformance FixedAffinityScorer, type metadata accessor for FixedAffinityScorer, &protocol conformance descriptor for FixedAffinityScorer);
  result = lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type FixedAffinityScorer and conformance FixedAffinityScorer, type metadata accessor for FixedAffinityScorer, &protocol conformance descriptor for FixedAffinityScorer);
  *(a1 + 16) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for CachingAffinityScorer(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type CachingAffinityScorer and conformance CachingAffinityScorer, type metadata accessor for CachingAffinityScorer, &protocol conformance descriptor for CachingAffinityScorer);
  result = lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type CachingAffinityScorer and conformance CachingAffinityScorer, type metadata accessor for CachingAffinityScorer, &protocol conformance descriptor for CachingAffinityScorer);
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AffinityValueComparison and conformance AffinityValueComparison()
{
  result = lazy protocol witness table cache variable for type AffinityValueComparison and conformance AffinityValueComparison;
  if (!lazy protocol witness table cache variable for type AffinityValueComparison and conformance AffinityValueComparison)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AffinityValueComparison and conformance AffinityValueComparison);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AffinityScoreError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AffinityScoreError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTag for AffinityScoreError(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for AffinityScoreError(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t type metadata completion function for FixedAffinityScorer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  if (v5 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AffinityValueComparison(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AffinityValueComparison(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AffinityScore(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AffinityScore(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CachingAffinityScorer.ScoreState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CachingAffinityScorer.ScoreState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 10) = v3;
  return result;
}

uint64_t getEnumTag for CachingAffinityScorer.ScoreState(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for CachingAffinityScorer.ScoreState(uint64_t result, int a2)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    *(result + 9) = 1;
  }

  else
  {
    *(result + 9) = 0;
  }

  return result;
}

uint64_t static AffinityScorerUtils.topCloseableEntity(candidates:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = type metadata accessor for RREntity();
  v5 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RRCandidate();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[0] = a1;

  specialized MutableCollection<>.sort(by:)(v25, v12);
  v13 = v25[0];
  v22 = *(v25[0] + 16);
  if (v22)
  {
    v14 = 0;
    v21 = v25[0] + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v19 = a2;
    v20 = v9 + 16;
    v15 = (v9 + 8);
    while (v14 < v13[2])
    {
      (*(v9 + 16))(v11, v21 + *(v9 + 72) * v14, v8);
      RRCandidate.entity.getter();
      RREntity.usoEntity.getter();
      (*(v5 + 8))(v7, v23);
      static UsoEntity_CodeGenConverter.convert(entity:)();

      if (v25[3])
      {
        outlined init with copy of Any?(v25, v24);
        type metadata accessor for UsoEntity_common_App();
        if (swift_dynamicCast() || (type metadata accessor for UsoEntity_common_Window(), swift_dynamicCast()))
        {

          __swift_destroy_boxed_opaque_existential_1Tm(v24);
          outlined destroy of ReferenceResolutionClientProtocol?(v25, &_sypSgMd, &_sypSgMR);
          a2 = v19;
          (*(v9 + 32))(v19, v11, v8);
          v16 = 0;
          return (*(v9 + 56))(a2, v16, 1, v8);
        }

        type metadata accessor for UsoEntity_common_AppEntity();
        if (swift_dynamicCast() || (type metadata accessor for UsoEntity_common_UserEntity(), swift_dynamicCast()))
        {

          dispatch thunk of CodeGenBase.usoIdentifiers.getter();
        }

        (*v15)(v11, v8);
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
      }

      else
      {
        (*v15)(v11, v8);
      }

      ++v14;
      outlined destroy of ReferenceResolutionClientProtocol?(v25, &_sypSgMd, &_sypSgMR);
      if (v22 == v14)
      {

        v16 = 1;
        a2 = v19;
        return (*(v9 + 56))(a2, v16, 1, v8);
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {

    v16 = 1;
    return (*(v9 + 56))(a2, v16, 1, v8);
  }

  return result;
}

uint64_t static AffinityScorerUtils.topOpenableEntity(candidates:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = type metadata accessor for RREntity();
  v5 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RRCandidate();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[0] = a1;

  specialized MutableCollection<>.sort(by:)(v25, v12);
  v13 = v25[0];
  v22 = *(v25[0] + 16);
  if (v22)
  {
    v14 = 0;
    v21 = v25[0] + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v19 = a2;
    v20 = v9 + 16;
    v15 = (v9 + 8);
    while (v14 < v13[2])
    {
      (*(v9 + 16))(v11, v21 + *(v9 + 72) * v14, v8);
      RRCandidate.entity.getter();
      RREntity.usoEntity.getter();
      (*(v5 + 8))(v7, v23);
      static UsoEntity_CodeGenConverter.convert(entity:)();

      if (v25[3])
      {
        outlined init with copy of Any?(v25, v24);
        type metadata accessor for UsoEntity_common_App();
        if (swift_dynamicCast())
        {

          if (!RRCandidate.isOnScreen.getter())
          {

            v17 = v19;
            (*(v9 + 32))(v19, v11, v8);
            (*(v9 + 56))(v17, 0, 1, v8);
            __swift_destroy_boxed_opaque_existential_1Tm(v24);
            return outlined destroy of ReferenceResolutionClientProtocol?(v25, &_sypSgMd, &_sypSgMR);
          }
        }

        else
        {
          type metadata accessor for UsoEntity_common_AppEntity();
          if (swift_dynamicCast())
          {

            dispatch thunk of CodeGenBase.usoIdentifiers.getter();
          }
        }

        (*v15)(v11, v8);
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
      }

      else
      {
        (*v15)(v11, v8);
      }

      ++v14;
      outlined destroy of ReferenceResolutionClientProtocol?(v25, &_sypSgMd, &_sypSgMR);
      if (v22 == v14)
      {

        a2 = v19;
        return (*(v9 + 56))(a2, 1, 1, v8);
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {

    return (*(v9 + 56))(a2, 1, 1, v8);
  }

  return result;
}

void specialized MutableCollection<>.sort(by:)(uint64_t *a1, double a2)
{
  v3 = *(type metadata accessor for RRCandidate() - 8);
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v4);
  }

  v5 = v4[2];
  v6[0] = v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v6[1] = v5;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v4;
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, double a5)
{
  v9 = type metadata accessor for RRCandidate();
  MEMORY[0x1EEE9AC00](v9);
  v46 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v50 = &v36 - v12;
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  v49 = &v36 - v16;
  v38 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v47 = *(v14 + 16);
    v48 = v14 + 16;
    v18 = *(v14 + 72);
    v19 = (v14 + 8);
    v44 = (v14 + 32);
    v45 = v17;
    v20 = (v17 + v18 * (a3 - 1));
    v43 = -v18;
    v21 = a1 - a3;
    v37 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v41 = v20;
    v42 = a3;
    v39 = v22;
    v40 = v21;
    v23 = v21;
    v24 = v20;
    while (1)
    {
      v25 = v49;
      v26 = v47;
      (v47)(v49, v22, v9, v15);
      v27 = v50;
      v26(v50, v24, v9);
      RRCandidate.score.getter();
      v29 = v28;
      RRCandidate.score.getter();
      v31 = v30;
      v32 = *v19;
      (*v19)(v27, v9);
      v32(v25, v9);
      if (v31 >= v29)
      {
LABEL_4:
        a3 = v42 + 1;
        v20 = &v41[v37];
        v21 = v40 - 1;
        v22 = v39 + v37;
        if (v42 + 1 == v38)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v45)
      {
        break;
      }

      v33 = *v44;
      v34 = v46;
      (*v44)(v46, v22, v9);
      swift_arrayInitWithTakeFrontToBack();
      v33(v24, v34, v9);
      v24 += v43;
      v22 += v43;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(int64_t *a1, double a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = v5;
  v127 = a1;
  v10 = type metadata accessor for RRCandidate();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v129 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v140 = &v124 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v146 = &v124 - v16;
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
  v145 = &v124 - v19;
  v137 = a4;
  v20 = *(a4 + 8);
  if (v20 < 1)
  {
    v22 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v6 = *v127;
    if (!*v127)
    {
      goto LABEL_134;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v119 = a4;
    }

    else
    {
LABEL_128:
      v119 = specialized _ArrayBuffer._consumeAndCreateNew()(a4);
    }

    v147 = v119;
    a4 = *(v119 + 2);
    if (a4 >= 2)
    {
      while (*v137)
      {
        v120 = *&v119[16 * a4];
        v121 = v119;
        v122 = *&v119[16 * a4 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)(&(*v137)[v11[9] * v120], &(*v137)[v11[9] * *&v119[16 * a4 + 16]], &(*v137)[v11[9] * v122], v6, v118);
        if (v7)
        {
          goto LABEL_106;
        }

        if (v122 < v120)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v121 = specialized _ArrayBuffer._consumeAndCreateNew()(v121);
        }

        if (a4 - 2 >= *(v121 + 2))
        {
          goto LABEL_122;
        }

        v123 = &v121[16 * a4];
        *v123 = v120;
        *(v123 + 1) = v122;
        v147 = v121;
        specialized Array.remove(at:)(a4 - 1);
        v119 = v147;
        a4 = *(v147 + 2);
        if (a4 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v21 = 0;
  v143 = (v11 + 1);
  v144 = v11 + 2;
  v142 = (v11 + 4);
  v22 = MEMORY[0x1E69E7CC0];
  v136 = v11;
  v126 = a5;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v130 = v22;
    if (v21 + 1 >= v20)
    {
      v39 = v21 + 1;
    }

    else
    {
      v138 = v20;
      v131 = v7;
      v25 = v11[9];
      v6 = &(*v137)[v25 * v24];
      v134 = *v137;
      v26 = v134;
      v27 = v11[2];
      v28 = v145;
      v27(v145, &v134[v25 * v24], v10, v18);
      v29 = &v26[v25 * v23];
      v30 = v146;
      v139 = v27;
      (v27)(v146, v29, v10);
      RRCandidate.score.getter();
      v32 = v31;
      RRCandidate.score.getter();
      v34 = v33;
      v35 = v23;
      v36 = v11[1];
      a4 = v143;
      v36(v30, v10);
      v135 = v36;
      v36(v28, v10);
      v125 = v35;
      v37 = v35 + 2;
      v141 = v25;
      v38 = &v134[v25 * (v35 + 2)];
      while (1)
      {
        v39 = v138;
        if (v138 == v37)
        {
          break;
        }

        a4 = v145;
        v40 = v139;
        v139(v145, v38, v10);
        v41 = v146;
        v40(v146, v6, v10);
        RRCandidate.score.getter();
        v43 = v42;
        RRCandidate.score.getter();
        v45 = v44;
        v46 = v135;
        (v135)(v41, v10);
        v46(a4, v10);
        v11 = v136;
        ++v37;
        v38 += v141;
        v6 += v141;
        if (v34 < v32 == v45 >= v43)
        {
          v39 = v37 - 1;
          break;
        }
      }

      v47 = v130;
      v7 = v131;
      a5 = v126;
      v23 = v125;
      if (v34 < v32)
      {
        if (v39 < v125)
        {
          goto LABEL_125;
        }

        if (v125 < v39)
        {
          v48 = v39;
          a4 = v141 * (v39 - 1);
          v6 = v39 * v141;
          v138 = v39;
          v49 = v125 * v141;
          do
          {
            if (v23 != --v48)
            {
              v131 = v7;
              v50 = *v137;
              if (!*v137)
              {
                goto LABEL_131;
              }

              v51 = *v142;
              (*v142)(v129, &v50[v49], v10, v47);
              if (v49 < a4 || &v50[v49] >= &v50[v6])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v49 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v51(&v50[a4], v129, v10);
              v47 = v130;
              v7 = v131;
            }

            ++v23;
            a4 -= v141;
            v6 -= v141;
            v49 += v141;
          }

          while (v23 < v48);
          v11 = v136;
          a5 = v126;
          v23 = v125;
          v39 = v138;
        }
      }
    }

    v52 = v137[1];
    if (v39 < v52)
    {
      if (__OFSUB__(v39, v23))
      {
        goto LABEL_124;
      }

      if (v39 - v23 < a5)
      {
        if (__OFADD__(v23, a5))
        {
          goto LABEL_126;
        }

        if (v23 + a5 >= v52)
        {
          v6 = v137[1];
        }

        else
        {
          v6 = v23 + a5;
        }

        if (v6 < v23)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v39 != v6)
        {
          break;
        }
      }
    }

    v6 = v39;
    if (v39 < v23)
    {
      goto LABEL_123;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v22 = v130;
    }

    else
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v130 + 2) + 1, 1, v130);
    }

    a4 = *(v22 + 2);
    v53 = *(v22 + 3);
    v54 = a4 + 1;
    if (a4 >= v53 >> 1)
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), a4 + 1, 1, v22);
    }

    *(v22 + 2) = v54;
    v55 = &v22[16 * a4];
    *(v55 + 4) = v23;
    *(v55 + 5) = v6;
    v56 = *v127;
    if (!*v127)
    {
      goto LABEL_133;
    }

    v132 = v6;
    if (a4)
    {
      while (1)
      {
        v6 = v54 - 1;
        if (v54 >= 4)
        {
          break;
        }

        if (v54 == 3)
        {
          v57 = *(v22 + 4);
          v58 = *(v22 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_52:
          if (v60)
          {
            goto LABEL_112;
          }

          v73 = &v22[16 * v54];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_115;
          }

          v79 = &v22[16 * v6 + 32];
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
              v6 = v54 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v83 = &v22[16 * v54];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_66:
        if (v78)
        {
          goto LABEL_114;
        }

        v86 = &v22[16 * v6];
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

LABEL_73:
        a4 = v6 - 1;
        if (v6 - 1 >= v54)
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

        if (!*v137)
        {
          goto LABEL_130;
        }

        v94 = v22;
        v95 = *&v22[16 * a4 + 32];
        v96 = *&v22[16 * v6 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)(&(*v137)[v11[9] * v95], &(*v137)[v11[9] * *&v22[16 * v6 + 32]], &(*v137)[v11[9] * v96], v56, v18.n128_f64[0]);
        if (v7)
        {
          goto LABEL_106;
        }

        if (v96 < v95)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = specialized _ArrayBuffer._consumeAndCreateNew()(v94);
        }

        if (a4 >= *(v94 + 2))
        {
          goto LABEL_109;
        }

        v97 = &v94[16 * a4];
        *(v97 + 4) = v95;
        *(v97 + 5) = v96;
        v147 = v94;
        specialized Array.remove(at:)(v6);
        v22 = v147;
        v54 = *(v147 + 2);
        if (v54 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v22[16 * v54 + 32];
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

      v68 = &v22[16 * v54];
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
        v90 = &v22[16 * v6 + 32];
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
          v6 = v54 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = v137[1];
    v21 = v132;
    a5 = v126;
    if (v132 >= v20)
    {
      goto LABEL_95;
    }
  }

  v131 = v7;
  v98 = *v137;
  v99 = v11[9];
  v141 = v11[2];
  v100 = &v98[v99 * (v39 - 1)];
  v101 = v23;
  v102 = -v99;
  v125 = v101;
  v103 = (v101 - v39);
  v139 = v98;
  v128 = v99;
  v104 = &v98[v39 * v99];
  v132 = v6;
LABEL_85:
  v138 = v39;
  v133 = v104;
  v134 = v103;
  v105 = v104;
  v135 = v100;
  while (1)
  {
    v106 = v145;
    v107 = v141;
    (v141)(v145, v105, v10, v18);
    v108 = v146;
    v107(v146, v100, v10);
    RRCandidate.score.getter();
    v110 = v109;
    RRCandidate.score.getter();
    v112 = v111;
    v113 = *v143;
    (*v143)(v108, v10);
    v114 = v106;
    a4 = v10;
    v113(v114, v10);
    if (v112 >= v110)
    {
LABEL_84:
      v39 = v138 + 1;
      v100 = &v135[v128];
      v103 = v134 - 1;
      v6 = v132;
      v104 = &v133[v128];
      if (v138 + 1 != v132)
      {
        goto LABEL_85;
      }

      v7 = v131;
      v11 = v136;
      v23 = v125;
      if (v132 < v125)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v139)
    {
      break;
    }

    v115 = *v142;
    v116 = v140;
    (*v142)(v140, v105, v10);
    swift_arrayInitWithTakeFrontToBack();
    v115(v100, v116, v10);
    v100 += v102;
    v105 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
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
}

void specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, double a5)
{
  v66 = type metadata accessor for RRCandidate();
  v9 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v64 = &v54 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_60;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v17 = (a2 - a1) / v15;
  v69 = a1;
  v68 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v35 = a4 + v19;
    if (v19 >= 1)
    {
      v36 = -v15;
      v58 = a4;
      v59 = (v9 + 16);
      v56 = (v9 + 8);
      v57 = a1;
      v37 = v35;
      v60 = -v15;
      do
      {
        v55 = v35;
        v38 = a2;
        v39 = a2 + v36;
        v62 = v38;
        v63 = v39;
        while (1)
        {
          if (v38 <= a1)
          {
            v69 = v38;
            v67 = v55;
            goto LABEL_58;
          }

          v41 = a3;
          v61 = v35;
          v42 = a3 + v36;
          v43 = v37 + v36;
          v44 = *v59;
          v45 = v64;
          v46 = v66;
          (*v59)(v64, v43, v66);
          v47 = v39;
          v48 = v65;
          (v44)(v65, v47, v46);
          RRCandidate.score.getter();
          v50 = v49;
          RRCandidate.score.getter();
          v52 = v51;
          v53 = *v56;
          (*v56)(v48, v46);
          v53(v45, v46);
          if (v52 < v50)
          {
            break;
          }

          v35 = v43;
          a3 = v42;
          if (v41 < v37 || v42 >= v37)
          {
            swift_arrayInitWithTakeFrontToBack();
            v39 = v63;
            a1 = v57;
          }

          else
          {
            v39 = v63;
            a1 = v57;
            if (v41 != v37)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v37 = v43;
          v40 = v43 > v58;
          v36 = v60;
          v38 = v62;
          if (!v40)
          {
            a2 = v62;
            goto LABEL_57;
          }
        }

        a3 = v42;
        if (v41 < v62 || v42 >= v62)
        {
          a2 = v63;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v57;
          v36 = v60;
          v35 = v61;
        }

        else
        {
          a2 = v63;
          a1 = v57;
          v36 = v60;
          v35 = v61;
          if (v41 != v62)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v37 > v58);
    }

LABEL_57:
    v69 = a2;
    v67 = v35;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v63 = a4 + v18;
    v67 = a4 + v18;
    if (v18 >= 1 && a2 < a3)
    {
      v21 = *(v9 + 16);
      v61 = a3;
      v62 = v9 + 16;
      v59 = (v9 + 8);
      v60 = v21;
      v22 = v65;
      do
      {
        v23 = a1;
        v24 = v64;
        v25 = a2;
        v26 = v66;
        v27 = a2;
        v28 = v60;
        (v60)(v64, v25, v66);
        v28(v22, a4, v26);
        RRCandidate.score.getter();
        v30 = v29;
        RRCandidate.score.getter();
        v32 = v31;
        v33 = *v59;
        (*v59)(v22, v26);
        v33(v24, v26);
        if (v32 >= v30)
        {
          v34 = v23;
          if (v23 < a4 || v23 >= a4 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v27;
          }

          else
          {
            a2 = v27;
            if (v23 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v68 = a4 + v15;
          a4 += v15;
        }

        else
        {
          a2 = v27 + v15;
          v34 = v23;
          if (v23 < v27 || v23 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v23 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v34 + v15;
        v69 = a1;
      }

      while (a4 < v63 && a2 < v61);
    }
  }

LABEL_58:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v69, &v68, &v67, v12);
}