__objc2_class **static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)(__objc2_class **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for _SwiftDeferredNSDictionary(0, a2, a3, a4);
  v9 = swift_unknownObjectRetain(a1);
  v10 = swift_dynamicCastClass(v9, v8);
  if (v10)
  {
    v11 = v10;
    swift_unknownObjectRelease(a1);
    v12 = *(v11 + 4);
    v12;
    swift_unknownObjectRelease(a1);
  }

  else
  {
    v13 = type metadata accessor for _DictionaryStorage(0, a2, a3, a4);
    v12 = swift_dynamicCastClass(a1, v13);
    swift_unknownObjectRelease(a1);
    if (!v12)
    {
      swift_unknownObjectRelease(a1);
      if (a1 == &_swiftEmptyDictionarySingleton)
      {
        return &_swiftEmptyDictionarySingleton;
      }

      else
      {
        return 0;
      }
    }
  }

  return v12;
}

__objc2_class **_DictionaryBuilder.init(count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  type metadata accessor for _DictionaryStorage(0, a2, a3, a4);
  return static _DictionaryStorage.allocate(capacity:)(a1);
}

uint64_t _DictionaryBuilder.add(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1, a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 16);
  MEMORY[0x1EEE9AC00](v8, v13);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v3;
  if (*(*v3 + 16) >= v3[1])
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v14 + 16))(v16);
  (*(v7 + 16))(v10, a2, v6);
  return _NativeDictionary._unsafeInsertNew(key:value:)(v16, v10, v17, v12, v6, *(a3 + 32));
}

__n128 specialized _NativeDictionary._unsafeInsertNew(key:value:)(__int128 *a1, uint64_t a2, void *a3)
{
  v6 = a3[5];
  v7 = *(a1 + 3);
  v8 = *(a1 + 4);
  __swift_project_boxed_opaque_existential_0Tm(a1, v7);
  (*(v8 + 8))(v19, v7, v8);
  v9 = v20;
  v10 = v21;
  __swift_project_boxed_opaque_existential_0Tm(v19, v20);
  v11 = (*(v10 + 40))(v6, v9, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  v12 = specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v11);
  if (v13)
  {
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for AnyHashable);
  }

  a3[(v12 >> 6) + 8] |= 1 << v12;
  v14 = a3[6] + 40 * v12;
  v15 = *a1;
  v16 = a1[1];
  *(v14 + 32) = *(a1 + 4);
  *v14 = v15;
  *(v14 + 16) = v16;
  v17 = a3[7] + 40 * v12;
  result = *(a2 + 16);
  *v17 = *a2;
  *(v17 + 16) = result;
  *(v17 + 32) = *(a2 + 32);
  ++a3[2];
  return result;
}

_OWORD *specialized _NativeDictionary._unsafeInsertNew(key:value:)(__int128 *a1, _OWORD *a2, void *a3)
{
  v6 = a3[5];
  v7 = *(a1 + 3);
  v8 = *(a1 + 4);
  __swift_project_boxed_opaque_existential_0Tm(a1, v7);
  (*(v8 + 8))(v18, v7, v8);
  v9 = v19;
  v10 = v20;
  __swift_project_boxed_opaque_existential_0Tm(v18, v19);
  v11 = (*(v10 + 40))(v6, v9, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  v12 = specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v11);
  if (v13)
  {
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for AnyHashable);
  }

  a3[(v12 >> 6) + 8] |= 1 << v12;
  v14 = a3[6] + 40 * v12;
  v15 = *a1;
  v16 = a1[1];
  *(v14 + 32) = *(a1 + 4);
  *v14 = v15;
  *(v14 + 16) = v16;
  result = outlined init with take of Any(a2, (a3[7] + 32 * v12));
  ++a3[2];
  return result;
}

uint64_t _NativeDictionary._unsafeInsertNew(key:value:)(uint64_t a1, uint64_t a2, void *a3, Class *a4, uint64_t a5, uint64_t a6)
{
  v12 = (*(a6 + 32))(a3[5], a4, a6);
  v13 = __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v12, a4, a6);
  if (v14)
  {
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(a4);
  }

  v15 = v13;
  a3[(v13 >> 6) + 8] |= 1 << v13;
  (*(*(a4 - 1) + 4))(a3[6] + *(*(a4 - 1) + 9) * v13, a1, a4);
  result = (*(*(a5 - 8) + 32))(a3[7] + *(*(a5 - 8) + 72) * v15, a2, a5);
  ++a3[2];
  return result;
}

uint64_t _DictionaryBuilder.take()(uint64_t result, uint64_t a2)
{
  if (*(result + 16) != a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

Swift::Void __swiftcall _NativeDictionary.uncheckedDestroy(at:)(Swift::_HashTable::Bucket at)
{
  v4 = v3;
  v5 = v1;
  (*(*(v2 - 8) + 8))(*(v1 + 48) + *(*(v2 - 8) + 72) * at.offset);
  v7 = *(v4 - 8);
  v8 = *(v7 + 8);
  v9 = *(v5 + 56) + *(v7 + 72) * at.offset;

  v8(v9, v4);
}

Swift::_HashTable::Bucket __swiftcall _HashTable.insertNew(hashValue:)(Swift::Int hashValue)
{
  v3 = v1;
  result.offset = _HashTable.nextHole(atOrAfter:)((v2 & hashValue)).offset;
  *(v3 + ((result.offset >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << SLOBYTE(result.offset);
  return result;
}

Swift::Void __swiftcall _NativeDictionary.moveEntry(from:to:)(Swift::_HashTable::Bucket from, Swift::_HashTable::Bucket to)
{
  v5 = v4;
  v6 = v2;
  UnsafeMutablePointer.moveInitialize(from:count:)((*(v2 + 48) + *(*(v3 - 1) + 72) * from.offset), 1, (*(v2 + 48) + *(*(v3 - 1) + 72) * to.offset), v3);
  v9 = *(v6 + 56);
  v10 = *(*(v5 - 1) + 72);

  UnsafeMutablePointer.moveInitialize(from:count:)((v9 + v10 * from.offset), 1, (v9 + v10 * to.offset), v5);
}

Swift::Void __swiftcall _NativeDictionary.swapEntry(_:with:)(Swift::_HashTable::Bucket _, Swift::_HashTable::Bucket with)
{
  v5 = v4;
  v6 = v3;
  v7 = v2;
  offset = _.offset;
  v9 = *(v4 - 8);
  v10 = MEMORY[0x1EEE9AC00](_.offset, with.offset);
  v33 = &offset - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v10, v14);
  v17 = &offset - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 + 48);
  v20 = *(v13 + 32);
  v21 = *(v13 + 72);
  v22 = (v19 + v21 * v15);
  v24 = (v19 + v21 * v23);
  v20(v17, v22, v25);
  v20(v22, v24, v6);
  v20(v24, v17, v6);
  v26 = *(v7 + 56);
  v27 = *(v9 + 32);
  v28 = *(v9 + 72);
  v29 = (v26 + v28 * offset);
  v30 = (v26 + v28 * with.offset);
  v31 = v33;
  v27(v33, v29, v5);
  v27(v29, v30, v5);
  v27(v30, v31, v5);
}

void _swift_dictionaryDownCastIndirect(unint64_t *a1, __objc2_class ***a2, char *a3, char *a4, char *a5, char *a6, unint64_t *a7, uint64_t a8)
{
  v15 = *a1;
  v16 = *a1;
  v17 = _dictionaryDownCast<A, B, C, D>(_:)(v16, a3, a4, a5, a6, a7, a8);
  v15;
  *a2 = v17;
}

__objc2_class **_dictionaryDownCast<A, B, C, D>(_:)(int64_t a1, char *a2, char *a3, char *a4, char *a5, unint64_t *a6, uint64_t a7)
{
  v309 = a7;
  v318 = a6;
  i = a1;
  swift_getTupleTypeMetadata2(0, a4, a5, "key value ", 0);
  v307 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v306 = &v263 - v13;
  swift_getTupleTypeMetadata2(0, a4, a5, 0, 0);
  v305 = v14;
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v304 = &v263 - v17;
  v296 = *(a5 - 1);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v301 = (&v263 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v300 = &v263 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v27 = &v263 - v26;
  v29 = MEMORY[0x1EEE9AC00](v25, v28);
  v294 = &v263 - v30;
  v316 = a4;
  v293 = *(a4 - 1);
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v299 = &v263 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v32, v34);
  v298 = &v263 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35, v37);
  v292 = &v263 - v39;
  MEMORY[0x1EEE9AC00](v38, v40);
  v288 = &v263 - v41;
  swift_getTupleTypeMetadata2(0, a2, a3, "key value ", 0);
  v43 = v42;
  v302 = *(v42 - 8);
  v45 = MEMORY[0x1EEE9AC00](v42, v44);
  v297 = &v263 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45, v47);
  v287 = &v263 - v48;
  v51 = type metadata accessor for Optional(0, a3, v49, v50);
  v312 = *(v51 - 8);
  v53 = MEMORY[0x1EEE9AC00](v51, v52);
  v282 = &v263 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x1EEE9AC00](v53, v55);
  v58 = &v263 - v57;
  v60 = MEMORY[0x1EEE9AC00](v56, v59);
  v279 = &v263 - v61;
  MEMORY[0x1EEE9AC00](v60, v62);
  v275 = &v263 - v63;
  v66 = type metadata accessor for Optional(0, a2, v64, v65);
  v314 = *(v66 - 8);
  v68 = MEMORY[0x1EEE9AC00](v66, v67);
  v281 = &v263 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = MEMORY[0x1EEE9AC00](v68, v70);
  v283 = &v263 - v72;
  v74 = MEMORY[0x1EEE9AC00](v71, v73);
  v295 = &v263 - v75;
  v77 = MEMORY[0x1EEE9AC00](v74, v76);
  v79 = &v263 - v78;
  v291 = *(a3 - 1);
  v81 = MEMORY[0x1EEE9AC00](v77, v80);
  v280 = (&v263 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0));
  v84 = MEMORY[0x1EEE9AC00](v81, v83);
  v278 = &v263 - v85;
  v87 = MEMORY[0x1EEE9AC00](v84, v86);
  v320 = &v263 - v88;
  v290 = *(a2 - 1);
  v90 = MEMORY[0x1EEE9AC00](v87, v89);
  v289 = &v263 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = MEMORY[0x1EEE9AC00](v90, v92);
  v284 = (&v263 - v94);
  MEMORY[0x1EEE9AC00](v93, v95);
  v319 = &v263 - v96;
  v97 = v43;
  v100 = type metadata accessor for Optional(0, v43, v98, v99);
  v102 = MEMORY[0x1EEE9AC00](v100 - 8, v101);
  v303 = &v263 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v102, v104);
  v311 = &v263 - v105;
  if (_swift_isClassOrObjCExistentialType(a2, a2) && _swift_isClassOrObjCExistentialType(a3, a3) && _swift_isClassOrObjCExistentialType(v316, v316) && _swift_isClassOrObjCExistentialType(a5, a5))
  {
    if ((i & 0xC000000000000001) != 0)
    {
      v106 = i & 0xFFFFFFFFFFFFFF8;
      if (i < 0)
      {
        v106 = i;
      }

      v107 = (~(v106 >> 1) & 0x4000000000000000 | v106);
      i;
    }

    else
    {
      v261 = i;
      v262 = _NativeDictionary.bridged()(v261, a2, a3, v318);
      return (~(v262 >> 1) & 0x4000000000000000 | v262);
    }

    return v107;
  }

  v286 = v27;
  v274 = v66;
  v108 = i & 0xC000000000000001;
  if ((i & 0xC000000000000001) != 0)
  {
    if (i < 0)
    {
      v109 = i;
    }

    else
    {
      v109 = (i & 0xFFFFFFFFFFFFFF8);
    }

    v110 = [v109 count];
  }

  else
  {
    v110 = *(i + 16);
  }

  v273 = v79;
  if (v110)
  {
    v111 = v316;
    type metadata accessor for _DictionaryStorage(0, v316, a5, v309);
    v107 = static _DictionaryStorage.allocate(capacity:)(v110);
  }

  else
  {
    v107 = &_swiftEmptyDictionarySingleton;
    v111 = v316;
  }

  v112 = i;
  v317 = a3;
  v318 = a2;
  v313 = a5;
  v308 = v97;
  v285 = v51;
  v310 = v107;
  if (v111 == &type metadata for String)
  {
    v119 = v97;
    if (v108)
    {
      if (i < 0)
      {
        v120 = i;
      }

      else
      {
        v120 = i & 0xFFFFFFFFFFFFFF8;
      }

      v121 = type metadata accessor for __CocoaDictionary.Iterator();
      v122 = swift_allocObject(v121, 0xE8, 7uLL);
      v277 = 0;
      v123 = 0;
      v124 = 0;
      *(v122 + 208) = v120;
      *(v122 + 216) = 0;
      v112 = i;
      *(v122 + 16) = 0u;
      *(v122 + 32) = 0u;
      *(v122 + 48) = 0u;
      *(v122 + 64) = 0u;
      *(v122 + 80) = 0u;
      *(v122 + 96) = 0u;
      *(v122 + 112) = 0u;
      *(v122 + 128) = 0u;
      *(v122 + 144) = 0u;
      *(v122 + 160) = 0u;
      *(v122 + 176) = 0u;
      *(v122 + 192) = 0u;
      *(v122 + 224) = 0;
      v125 = v122 | 0x8000000000000000;
    }

    else
    {
      v192 = -1 << *(i + 32);
      v123 = ~v192;
      v193 = *(i + 64);
      v277 = i + 64;
      v194 = -v192;
      if (v194 < 64)
      {
        v195 = ~(-1 << v194);
      }

      else
      {
        v195 = -1;
      }

      v124 = (v195 & v193);
      v125 = i;
    }

    v196 = v295;
    v197 = v311;
    v297 = (v125 & 0x7FFFFFFFFFFFFFFFLL);
    v271 = (v290 + 56);
    v270 = (v314 + 16);
    v269 = (v290 + 48);
    v268 = (v314 + 8);
    v314 = (v290 + 32);
    v267 = (v291 + 56);
    v266 = (v312 + 2);
    v265 = (v291 + 48);
    v264 = (v312 + 1);
    v312 = (v291 + 32);
    v301 = (v302 + 7);
    v272 = v123;
    v276 = ((v123 + 64) >> 6);
    v289 = v290 + 16;
    v283 = (v291 + 16);
    v300 = (v302 + 6);
    v298 = (v302 + 4);
    v303 = (v293 + 32);
    v302 = (v296 + 32);
    v280 = v107 + 8;
    v282 = (v293 + 40);
    v281 = (v296 + 40);
    v112;
    v107;
    v198 = 0;
    v299 = v125;
    while (1)
    {
      if ((v125 & 0x8000000000000000) != 0)
      {
        v217 = v297;
        v218 = *(v297 + 27);
        if ((v218 & 0x8000000000000000) != 0)
        {
          goto LABEL_114;
        }

        if (v218 == *(v297 + 28))
        {
          v219 = [*(v297 + 26) countByEnumeratingWithState:v297 + 16 objects:v297 + 80 count:16];
          v217 = v297;
          *(v297 + 28) = v219;
          if (!v219)
          {
            *(v217 + 27) = -1;
LABEL_114:
            (*v301)(v197, 1, 1, v119);
            _sSh8IteratorV8_VariantOySS__GWOe_0(v125);
            goto LABEL_111;
          }

          *(v217 + 27) = 0;
          v220 = *(v217 + 3);
          if (!v220)
          {
            goto LABEL_123;
          }

          v218 = 0;
        }

        else
        {
          v220 = *(v297 + 3);
          if (!v220)
          {
            goto LABEL_123;
          }

          if (v218 >> 60)
          {
            goto LABEL_122;
          }
        }

        v221 = (v220 + 8 * v218);
        if ((v221 & 7) != 0)
        {
          goto LABEL_118;
        }

        v222 = *v221;
        *(v217 + 27) = v218 + 1;
        v223 = *(v217 + 26);
        swift_unknownObjectRetain(v222);
        v224 = [v223 &sel:v222 objectForKey:?];
        if (!v224)
        {
          goto LABEL_123;
        }

        v225 = v224;
        v226 = v318;
        if (_swift_isClassOrObjCExistentialType(v318, v318))
        {
          v321 = v222;
          swift_dynamicCast(v284, &v321, qword_1EEEAC710, v226, 7uLL);
        }

        else
        {
          i = v198;
          v316 = v124;
          v257 = v273;
          (*v271)(v273, 1, 1, v226);
          _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v222, v226, v257);
          v258 = v274;
          (*v270)(v196, v257, v274);
          if ((*v269)(v196, 1, v226) == 1)
          {
            goto LABEL_120;
          }

          swift_unknownObjectRelease(v222);
          (*v268)(v257, v258);
          (*v314)(v284, v196, v226);
          v198 = i;
          v124 = v316;
        }

        v227 = v317;
        isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v317, v317);
        v229 = v279;
        if (isClassOrObjCExistentialType)
        {
          v321 = v225;
          v230 = v278;
          swift_dynamicCast(v278, &v321, qword_1EEEAC710, v227, 7uLL);
        }

        else
        {
          v259 = v275;
          (*v267)(v275, 1, 1, v227);
          _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v225, v227, v259);
          (*v266)(v229, v259, v51);
          if ((*v265)(v229, 1, v227) == 1)
          {
LABEL_120:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          swift_unknownObjectRelease(v225);
          (*v264)(v259, v51);
          v230 = v278;
          (*v312)(v278, v229, v227);
        }

        v231 = *(v119 + 48);
        (*v314)(v197, v284, v318);
        (*v312)(&v197[v231], v230, v227);
        (*v301)(v197, 0, 1, v119);
        v202 = v198;
        v316 = v124;
      }

      else
      {
        v199 = v124;
        v200 = v198;
        if (v124)
        {
LABEL_82:
          v316 = ((v199 - 1) & v199);
          v204 = __clz(__rbit64(v199)) | (v200 << 6);
          v205 = v119;
          v206 = v290;
          v207 = *(v125 + 48) + *(v290 + 72) * v204;
          v208 = *(v290 + 16);
          v209 = v319;
          i = v198;
          v210 = v318;
          v208(v319, v207, v318);
          v211 = *(v125 + 56);
          v212 = v291;
          v213 = v320;
          v214 = v317;
          (*(v291 + 16))(v320, v211 + *(v291 + 72) * v204, v317);
          v215 = *(v205 + 48);
          v216 = *(v206 + 32);
          v119 = v205;
          v197 = v311;
          v216(v311, v209, v210);
          (*(v212 + 32))(&v197[v215], v213, v214);
          (*v301)(v197, 0, 1, v119);
          v202 = v200;
        }

        else
        {
          if (v276 <= v198 + 1)
          {
            v201 = (v198 + 1);
          }

          else
          {
            v201 = v276;
          }

          v202 = v201 - 1;
          v203 = v198;
          while (1)
          {
            v200 = v203 + 1;
            if (__OFADD__(v203, 1))
            {
              goto LABEL_117;
            }

            if (v200 >= v276)
            {
              break;
            }

            v199 = *(v277 + 8 * v200);
            ++v203;
            if (v199)
            {
              goto LABEL_82;
            }
          }

          (*v301)(v197, 1, 1, v119);
          v316 = 0;
        }
      }

      if ((*v300)(v197, 1, v119) == 1)
      {
        v191 = v299;
        goto LABEL_110;
      }

      i = v202;
      v232 = v287;
      (*v298)(v287, v197, v119);
      v233 = *(v119 + 48);
      v234 = *(v307 + 48);
      v236 = v318;
      v235 = v319;
      (*v314)(v319, v232, v318);
      v237 = v306;
      swift_dynamicCast(v306, v235, v236, &type metadata for String, 7uLL);
      v238 = &v232[v233];
      v239 = v320;
      v240 = v317;
      (*v312)(v320, v238, v317);
      v241 = v313;
      swift_dynamicCast(v237 + v234, v239, v240, v313, 7uLL);
      v242 = v304;
      v243 = *(v305 + 48);
      v244 = *v303;
      (*v303)(v304, v237, &type metadata for String);
      v245 = *v302;
      (*v302)(&v242[v243], v237 + v234, v241);
      v246 = v288;
      v244(v288, v242, &type metadata for String);
      v247 = &v242[v243];
      v248 = v294;
      v245(v294, v247, v241);
      v249 = v292;
      v244(v292, v246, &type metadata for String);
      v250 = v286;
      v245(v286, v248, v241);
      v107 = v310;
      v251 = __RawDictionaryStorage.find<A>(_:)(v249, &type metadata for String, v309);
      v252 = v251;
      if (v253)
      {
        (*(v293 + 40))(v107[6] + *(v293 + 72) * v251, v249, &type metadata for String);
        (*(v296 + 40))(v107[7] + *(v296 + 72) * v252, v250, v241);
      }

      else
      {
        if (v107[2] >= v107[3])
        {
          goto LABEL_120;
        }

        *(v280 + ((v251 >> 3) & 0x1FFFFFFFFFFFFFF8)) = (*(v280 + ((v251 >> 3) & 0x1FFFFFFFFFFFFFF8)) | (1 << v251));
        v244(v107[6] + *(v293 + 72) * v251, v249, &type metadata for String);
        v245(v107[7] + *(v296 + 72) * v252, v250, v313);
        v254 = v107[2];
        v255 = __OFADD__(v254, 1);
        v256 = (&v254->isa + 1);
        if (v255)
        {
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v107[2] = v256;
      }

      v198 = i;
      v124 = v316;
      v119 = v308;
      v51 = v285;
      v196 = v295;
      v125 = v299;
      v197 = v311;
    }
  }

  v284 = v58;
  if (v108)
  {
    if (i < 0)
    {
      v113 = i;
    }

    else
    {
      v113 = i & 0xFFFFFFFFFFFFFF8;
    }

    v114 = type metadata accessor for __CocoaDictionary.Iterator();
    v115 = swift_allocObject(v114, 0xE8, 7uLL);
    v279 = 0;
    v116 = 0;
    v117 = 0;
    *(v115 + 208) = v113;
    *(v115 + 216) = 0;
    v112 = i;
    *(v115 + 16) = 0u;
    *(v115 + 32) = 0u;
    *(v115 + 48) = 0u;
    *(v115 + 64) = 0u;
    *(v115 + 80) = 0u;
    *(v115 + 96) = 0u;
    *(v115 + 112) = 0u;
    *(v115 + 128) = 0u;
    *(v115 + 144) = 0u;
    *(v115 + 160) = 0u;
    *(v115 + 176) = 0u;
    *(v115 + 192) = 0u;
    *(v115 + 224) = 0;
    v118 = v115 | 0x8000000000000000;
  }

  else
  {
    v126 = -1 << *(i + 32);
    v116 = ~v126;
    v127 = *(i + 64);
    v279 = (i + 64);
    v128 = -v126;
    if (v128 < 64)
    {
      v129 = ~(-1 << v128);
    }

    else
    {
      v129 = -1;
    }

    v117 = v129 & v127;
    v118 = i;
  }

  v130 = v302;
  v131 = v312;
  v286 = v118 & 0x7FFFFFFFFFFFFFFFLL;
  v276 = (v290 + 56);
  v275 = v314 + 16;
  v273 = (v290 + 48);
  v272 = (v314 + 8);
  v312 = (v290 + 32);
  v271 = (v291 + 56);
  v270 = (v131 + 2);
  v269 = (v291 + 48);
  v268 = (v131 + 1);
  v311 = (v291 + 32);
  v302 += 7;
  v277 = v116;
  v278 = (v116 + 64) >> 6;
  v288 = (v290 + 16);
  v287 = (v291 + 16);
  v295 = (v130 + 6);
  v294 = (v130 + 4);
  v293 += 32;
  v292 = (v296 + 32);
  v112;
  v107;
  v132 = 0;
  v296 = v118;
  if ((v118 & 0x8000000000000000) != 0)
  {
    goto LABEL_43;
  }

LABEL_34:
  v133 = v117;
  v134 = v132;
  v135 = v317;
  v136 = v318;
  v137 = v308;
  if (v117)
  {
LABEL_42:
    i = (v133 - 1) & v133;
    v142 = __clz(__rbit64(v133)) | (v134 << 6);
    v143 = v290;
    v144 = *(v118 + 48) + *(v290 + 72) * v142;
    v145 = *(v290 + 16);
    v314 = v132;
    v146 = v319;
    v145(v319, v144, v318);
    v147 = v291;
    v148 = *(v118 + 56) + *(v291 + 72) * v142;
    v149 = v320;
    (*(v291 + 16))(v320, v148, v135);
    v150 = *(v137 + 48);
    v151 = *(v143 + 32);
    v141 = v303;
    v151(v303, v146, v136);
    (*(v147 + 32))(&v141[v150], v149, v135);
    (*v302)(v141, 0, 1, v137);
    v139 = v134;
    goto LABEL_58;
  }

  if (v278 <= (v132 + 1))
  {
    v138 = (v132 + 1);
  }

  else
  {
    v138 = v278;
  }

  v139 = (v138 - 1);
  v140 = v132;
  v141 = v303;
  while (1)
  {
    v134 = (v140 + 1);
    if (__OFADD__(v140, 1))
    {
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v134 >= v278)
    {
      break;
    }

    v133 = *&v279[8 * v134];
    ++v140;
    if (v133)
    {
      goto LABEL_42;
    }
  }

  (*v302)(v303, 1, 1, v308);
  for (i = 0; ; i = v159)
  {
LABEL_58:
    if ((*v295)(v141, 1, v137) == 1)
    {
      v191 = v296;
      goto LABEL_110;
    }

    v170 = v297;
    (*v294)(v297, v141, v137);
    v171 = *(v137 + 48);
    v172 = *(v307 + 48);
    v173 = v319;
    (*v312)(v319, v170, v136);
    v174 = v306;
    v175 = v316;
    swift_dynamicCast(v306, v173, v136, v316, 7uLL);
    v176 = &v170[v171];
    v177 = v320;
    (*v311)(v320, v176, v135);
    v178 = v313;
    swift_dynamicCast(v174 + v172, v177, v135, v313, 7uLL);
    v179 = v304;
    v180 = *(v305 + 48);
    v314 = v139;
    v181 = *v293;
    (*v293)(v304, v174, v175);
    v182 = *v292;
    (*v292)(&v179[v180], v174 + v172, v178);
    v183 = v298;
    v181(v298, v179, v175);
    v184 = v300;
    v182(v300, &v179[v180], v178);
    v185 = v299;
    v186 = v183;
    v187 = v316;
    v181(v299, v186, v316);
    v188 = v301;
    v182(v301, v184, v178);
    _NativeDictionary._unsafeInsertNew(key:value:)(v185, v188, v310, v187, v178, v309);
    v132 = v314;
    v117 = i;
    v118 = v296;
    if ((v296 & 0x8000000000000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_43:
    v152 = v286;
    v153 = *(v286 + 216);
    v135 = v317;
    v136 = v318;
    v137 = v308;
    if ((v153 & 0x8000000000000000) != 0)
    {
      goto LABEL_109;
    }

    if (v153 == *(v286 + 224))
    {
      break;
    }

    v157 = *(v286 + 24);
    v155 = v284;
    v156 = v283;
    if (!v157)
    {
      goto LABEL_123;
    }

    if (v153 >> 60)
    {
      __break(1u);
      goto LABEL_120;
    }

LABEL_50:
    v158 = (v157 + 8 * v153);
    if ((v158 & 7) != 0)
    {
      goto LABEL_118;
    }

    v314 = v132;
    v159 = v117;
    v160 = *v158;
    v152[27] = v153 + 1;
    v161 = v152[26];
    swift_unknownObjectRetain(v160);
    v162 = [v161 &sel:v160 objectForKey:?];
    if (!v162)
    {
      goto LABEL_123;
    }

    v163 = v162;
    v164 = _swift_isClassOrObjCExistentialType(v136, v136);
    v165 = v281;
    if (v164)
    {
      v321 = v160;
      swift_dynamicCast(v289, &v321, qword_1EEEAC710, v136, 7uLL);
    }

    else
    {
      (*v276)(v156, 1, 1, v136);
      _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v160, v136, v156);
      v189 = v274;
      (*v275)(v165, v156, v274);
      if ((*v273)(v165, 1, v136) == 1)
      {
        goto LABEL_120;
      }

      swift_unknownObjectRelease(v160);
      (*v272)(v156, v189);
      (*v312)(v289, v165, v136);
    }

    v166 = _swift_isClassOrObjCExistentialType(v135, v135);
    v167 = v282;
    v141 = v303;
    if (v166)
    {
      v321 = v163;
      v168 = v280;
      swift_dynamicCast(v280, &v321, qword_1EEEAC710, v135, 7uLL);
    }

    else
    {
      (*v271)(v155, 1, 1, v135);
      _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v163, v135, v155);
      v190 = v285;
      (*v270)(v167, v155, v285);
      if ((*v269)(v167, 1, v135) == 1)
      {
        goto LABEL_120;
      }

      swift_unknownObjectRelease(v163);
      (*v268)(v155, v190);
      v168 = v280;
      (*v311)(v280, v167, v135);
    }

    v169 = *(v137 + 48);
    (*v312)(v141, v289, v136);
    (*v311)(&v141[v169], v168, v135);
    (*v302)(v141, 0, 1, v137);
    v139 = v314;
  }

  v154 = [*(v286 + 208) countByEnumeratingWithState:v286 + 16 objects:v286 + 80 count:16];
  v152[28] = v154;
  v155 = v284;
  v156 = v283;
  if (v154)
  {
    v152[27] = 0;
    v157 = v152[3];
    if (!v157)
    {
      goto LABEL_123;
    }

    v153 = 0;
    goto LABEL_50;
  }

  v152[27] = -1;
LABEL_109:
  (*v302)(v303, 1, 1, v137);
  v191 = v118;
LABEL_110:
  _sSh8IteratorV8_VariantOySS__GWOe_0(v191);
  v107 = v310;
LABEL_111:
  v107;
  return v107;
}

BOOL _swift_dictionaryDownCastConditionalIndirect(unint64_t *a1, __objc2_class ***a2, char *a3, char *a4, char *a5, char *a6, uint64_t a7, uint64_t a8)
{
  v14 = *a1;
  v15 = *a1;
  v17 = _dictionaryDownCastConditional<A, B, C, D>(_:)(v15, a3, a4, a5, a6, v16, a8);
  v14;
  if (v17)
  {
    *a2 = v17;
  }

  return v17 != 0;
}

__objc2_class **_dictionaryDownCastConditional<A, B, C, D>(_:)(int64_t a1, char *a2, char *a3, char *a4, char *a5, uint64_t a6, uint64_t a7)
{
  v384 = a7;
  v7 = a5;
  v12 = type metadata accessor for Optional(0, a5, a3, a4);
  v330 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v370 = (&v322 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14, v16);
  v357 = (&v322 - v17);
  v20 = type metadata accessor for Optional(0, a4, v18, v19);
  v21 = *(v20 - 8);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v373 = &v322 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v25);
  v388 = &v322 - v26;
  swift_getTupleTypeMetadata2(0, a4, v7, "key value ", 0);
  v383 = v27;
  v29 = MEMORY[0x1EEE9AC00](v27, v28);
  v366 = &v322 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v31);
  v354 = &v322 - v32;
  swift_getTupleTypeMetadata2(0, a4, v7, 0, 0);
  v382 = v33;
  v35 = MEMORY[0x1EEE9AC00](v33, v34);
  v365 = (&v322 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = MEMORY[0x1EEE9AC00](v35, v37);
  v353 = &v322 - v39;
  v368 = *(v7 - 1);
  v41 = MEMORY[0x1EEE9AC00](v38, v40);
  v364 = (&v322 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = MEMORY[0x1EEE9AC00](v41, v43);
  v363 = &v322 - v45;
  v47 = MEMORY[0x1EEE9AC00](v44, v46);
  v362 = (&v322 - v48);
  v50 = MEMORY[0x1EEE9AC00](v47, v49);
  v350 = &v322 - v51;
  v53 = MEMORY[0x1EEE9AC00](v50, v52);
  v349 = &v322 - v54;
  v56 = MEMORY[0x1EEE9AC00](v53, v55);
  v346 = &v322 - v57;
  v393 = a4;
  v348 = *(a4 - 1);
  v59 = MEMORY[0x1EEE9AC00](v56, v58);
  v361 = &v322 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x1EEE9AC00](v59, v61);
  v64 = &v322 - v63;
  v66 = MEMORY[0x1EEE9AC00](v62, v65);
  v360 = &v322 - v67;
  v69 = MEMORY[0x1EEE9AC00](v66, v68);
  v345 = &v322 - v70;
  v72 = MEMORY[0x1EEE9AC00](v69, v71);
  v386 = &v322 - v73;
  MEMORY[0x1EEE9AC00](v72, v74);
  v344 = &v322 - v75;
  swift_getTupleTypeMetadata2(0, a2, a3, "key value ", 0);
  v77 = v76;
  v389 = *(v76 - 8);
  v79 = MEMORY[0x1EEE9AC00](v76, v78);
  v378 = &v322 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v79, v81);
  v381 = (&v322 - v82);
  v342 = type metadata accessor for Optional(0, a3, v83, v84);
  v380 = *(v342 - 8);
  v86 = MEMORY[0x1EEE9AC00](v342, v85);
  v341 = &v322 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = MEMORY[0x1EEE9AC00](v86, v88);
  v340 = &v322 - v90;
  v92 = MEMORY[0x1EEE9AC00](v89, v91);
  v336 = &v322 - v93;
  MEMORY[0x1EEE9AC00](v92, v94);
  v335 = &v322 - v95;
  v338 = type metadata accessor for Optional(0, a2, v96, v97);
  v334 = *(v338 - 8);
  v99 = MEMORY[0x1EEE9AC00](v338, v98);
  v377 = &v322 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = MEMORY[0x1EEE9AC00](v99, v101);
  v376 = (&v322 - v103);
  v105 = MEMORY[0x1EEE9AC00](v102, v104);
  v367 = &v322 - v106;
  v108 = MEMORY[0x1EEE9AC00](v105, v107);
  v359 = &v322 - v109;
  v391 = a3;
  v375 = *(a3 - 1);
  v111 = MEMORY[0x1EEE9AC00](v108, v110);
  v369 = &v322 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = MEMORY[0x1EEE9AC00](v111, v113);
  v339 = &v322 - v115;
  v117 = MEMORY[0x1EEE9AC00](v114, v116);
  v355 = &v322 - v118;
  v120 = MEMORY[0x1EEE9AC00](v117, v119);
  v337 = (&v322 - v121);
  v123 = MEMORY[0x1EEE9AC00](v120, v122);
  v352 = &v322 - v124;
  v392 = a2;
  v374 = *(a2 - 1);
  v126 = MEMORY[0x1EEE9AC00](v123, v125);
  v372 = &v322 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = MEMORY[0x1EEE9AC00](v126, v128);
  v347 = (&v322 - v130);
  v132 = MEMORY[0x1EEE9AC00](v129, v131);
  v358 = (&v322 - v133);
  v135 = MEMORY[0x1EEE9AC00](v132, v134);
  v343 = &v322 - v136;
  MEMORY[0x1EEE9AC00](v135, v137);
  v351 = &v322 - v138;
  v141 = type metadata accessor for Optional(0, v77, v139, v140);
  v143 = MEMORY[0x1EEE9AC00](v141 - 8, v142);
  v379 = &v322 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v143, v145);
  v371 = &v322 - v146;
  v147 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v148 = a1;
    }

    else
    {
      v148 = (a1 & 0xFFFFFFFFFFFFFF8);
    }

    v149 = [v148 count];
    if (v149)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v149 = *(a1 + 16);
    if (v149)
    {
LABEL_6:
      v150 = v393;
      type metadata accessor for _DictionaryStorage(0, v393, v7, v384);
      v387 = static _DictionaryStorage.allocate(capacity:)(v149);
      goto LABEL_9;
    }
  }

  v387 = &_swiftEmptyDictionarySingleton;
  v150 = v393;
LABEL_9:
  v390 = v7;
  v385 = v77;
  v331 = v12;
  v333 = v20;
  v332 = v21;
  if (v150 == &type metadata for String)
  {
    if (v147)
    {
      if (a1 < 0)
      {
        v157 = a1;
      }

      else
      {
        v157 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      v158 = type metadata accessor for __CocoaDictionary.Iterator();
      v159 = swift_allocObject(v158, 0xE8, 7uLL);
      v340 = 0;
      v160 = 0;
      v161 = 0;
      *(v159 + 208) = v157;
      *(v159 + 216) = 0;
      *(v159 + 16) = 0u;
      *(v159 + 32) = 0u;
      *(v159 + 48) = 0u;
      *(v159 + 64) = 0u;
      *(v159 + 80) = 0u;
      *(v159 + 96) = 0u;
      *(v159 + 112) = 0u;
      *(v159 + 128) = 0u;
      *(v159 + 144) = 0u;
      *(v159 + 160) = 0u;
      *(v159 + 176) = 0u;
      *(v159 + 192) = 0u;
      *(v159 + 224) = 0;
      v162 = v159 | 0x8000000000000000;
    }

    else
    {
      v241 = -1 << *(a1 + 32);
      v160 = ~v241;
      v242 = *(a1 + 64);
      v340 = (a1 + 64);
      v243 = -v241;
      if (v243 < 64)
      {
        v244 = ~(-1 << v243);
      }

      else
      {
        v244 = -1;
      }

      v161 = (v244 & v242);
      v162 = a1;
    }

    v245 = v388;
    v246 = v386;
    v247 = v359;
    v341 = (v162 & 0x7FFFFFFFFFFFFFFFLL);
    v329 = (v374 + 56);
    v328 = (v334 + 2);
    v327 = (v374 + 48);
    v326 = (v334 + 1);
    v362 = (v374 + 32);
    v325 = (v375 + 56);
    v324 = (v380 + 16);
    v323 = (v375 + 48);
    v322 = (v380 + 8);
    v361 = (v375 + 32);
    v370 = (v389 + 56);
    v334 = v160;
    v339 = (v160 + 64) >> 6;
    v379 = (v374 + 16);
    v378 = (v375 + 16);
    v369 = (v389 + 48);
    v364 = (v389 + 32);
    v365 = (v348 + 56);
    v377 = (v348 + 32);
    v366 = (v389 + 8);
    v363 = (v368 + 56);
    v372 = (v368 + 32);
    v248 = v387;
    v347 = v387 + 8;
    v360 = (v348 + 40);
    v356 = (v368 + 40);
    a1;
    v249 = 0;
    v250 = &type metadata for String;
    v251 = v381;
    v252 = v367;
    v380 = v162;
    v253 = v161;
    while (1)
    {
      v376 = v253;
      v373 = v249;
      if ((v162 & 0x8000000000000000) != 0)
      {
        v272 = v341;
        v273 = *(v341 + 27);
        if ((v273 & 0x8000000000000000) != 0)
        {
          goto LABEL_116;
        }

        if (v273 == *(v341 + 28))
        {
          v274 = [*(v341 + 26) countByEnumeratingWithState:v341 + 16 objects:v341 + 80 count:16];
          v272[28] = v274;
          if (!v274)
          {
            v272[27] = -1;
LABEL_116:
            (*v370)(v371, 1, 1, v385);
            _sSh8IteratorV8_VariantOySS__GWOe_0(v162);
            return v248;
          }

          v272[27] = 0;
          v275 = v272[3];
          if (!v275)
          {
            goto LABEL_124;
          }

          v273 = 0;
          v276 = v338;
        }

        else
        {
          v275 = *(v341 + 3);
          if (!v275)
          {
            goto LABEL_124;
          }

          v276 = v338;
          if (v273 >> 60)
          {
            goto LABEL_123;
          }
        }

        v277 = (v275 + 8 * v273);
        if ((v277 & 7) != 0)
        {
          goto LABEL_119;
        }

        v278 = *v277;
        v272[27] = v273 + 1;
        v279 = v272[26];
        swift_unknownObjectRetain(v278);
        v280 = [v279 &sel:v278 objectForKey:?];
        if (!v280)
        {
          goto LABEL_124;
        }

        v281 = v280;
        v282 = v392;
        if (_swift_isClassOrObjCExistentialType(v392, v392))
        {
          v394 = v278;
          swift_dynamicCast(v343, &v394, qword_1EEEAC710, v282, 7uLL);
        }

        else
        {
          (*v329)(v247, 1, 1, v282);
          _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v278, v282, v247);
          (*v328)(v252, v247, v276);
          if ((*v327)(v252, 1, v282) == 1)
          {
            goto LABEL_121;
          }

          swift_unknownObjectRelease(v278);
          (*v326)(v247, v276);
          (*v362)(v343, v252, v282);
        }

        v283 = v391;
        isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v391, v391);
        v285 = v336;
        v286 = v335;
        v287 = v337;
        if (isClassOrObjCExistentialType)
        {
          v394 = v281;
          swift_dynamicCast(v337, &v394, qword_1EEEAC710, v283, 7uLL);
          v288 = v287;
        }

        else
        {
          (*v325)(v335, 1, 1, v283);
          _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v281, v283, v286);
          v319 = v342;
          (*v324)(v285, v286, v342);
          if ((*v323)(v285, 1, v283) == 1)
          {
            goto LABEL_121;
          }

          swift_unknownObjectRelease(v281);
          (*v322)(v286, v319);
          v288 = v337;
          (*v361)(v337, v285, v283);
        }

        v267 = v385;
        v289 = *(v385 + 48);
        v259 = v371;
        (*v362)(v371, v343, v392);
        (*v361)(&v259[v289], v288, v283);
        (*v370)(v259, 0, 1, v267);
        v257 = v373;
        v393 = v376;
        v7 = v390;
      }

      else
      {
        v254 = v253;
        v255 = v249;
        if (v253)
        {
LABEL_78:
          v393 = ((v254 - 1) & v254);
          v260 = __clz(__rbit64(v254)) | (v255 << 6);
          v261 = v380;
          v262 = v250;
          v263 = v374;
          (*(v374 + 16))(v351, *(v380 + 48) + *(v374 + 72) * v260, v392);
          v264 = v375;
          v265 = v352;
          v266 = v391;
          (*(v375 + 16))(v352, *(v261 + 56) + *(v375 + 72) * v260, v391);
          v267 = v385;
          v268 = *(v385 + 48);
          v269 = *(v263 + 32);
          v250 = v262;
          v7 = v390;
          v259 = v371;
          v269();
          v270 = *(v264 + 32);
          v251 = v381;
          v271 = v265;
          v246 = v386;
          v245 = v388;
          v270(&v259[v268], v271, v266);
          (*v370)(v259, 0, 1, v267);
          v257 = v255;
        }

        else
        {
          if (v339 <= v249 + 1)
          {
            v256 = v249 + 1;
          }

          else
          {
            v256 = v339;
          }

          v257 = v256 - 1;
          v258 = v249;
          v259 = v371;
          while (1)
          {
            v255 = v258 + 1;
            if (__OFADD__(v258, 1))
            {
              goto LABEL_118;
            }

            if (v255 >= v339)
            {
              break;
            }

            v254 = *&v340[8 * v255];
            ++v258;
            if (v254)
            {
              goto LABEL_78;
            }
          }

          v267 = v385;
          (*v370)(v371, 1, 1, v385);
          v393 = 0;
        }
      }

      if ((*v369)(v259, 1, v267) == 1)
      {
        v238 = v380;
        goto LABEL_113;
      }

      (*v364)(v251, v259, v267);
      v290 = *(v267 + 48);
      v291 = v358;
      v292 = v392;
      (*v379)(v358, v251, v392);
      if (!swift_dynamicCast(v245, v291, v292, v250, 6uLL))
      {
        _sSh8IteratorV8_VariantOySS__GWOe_0(v380);
        (*v365)(v245, 1, 1, &type metadata for String);
        (*v366)(v251, v267);
        v239 = *(v332 + 8);
        v240 = v245;
LABEL_107:
        v320 = &v365;
LABEL_110:
        v239(v240, *(v320 - 32));
        v387;
        return 0;
      }

      v389 = v257;
      (*v365)(v245, 0, 1, v250);
      v293 = *v377;
      (*v377)(v246, v245, v250);
      v294 = &v251[v290];
      v295 = v355;
      v296 = v391;
      (*v378)(v355, v294, v391);
      (*v366)(v251, v267);
      v297 = v357;
      if ((swift_dynamicCast(v357, v295, v296, v7, 6uLL) & 1) == 0)
      {
        _sSh8IteratorV8_VariantOySS__GWOe_0(v380);
        (*v363)(v297, 1, 1, v7);
        (*(v348 + 8))(v246, &type metadata for String);
        v239 = *(v330 + 8);
        v240 = v297;
LABEL_109:
        v320 = &v363;
        goto LABEL_110;
      }

      (*v363)(v297, 0, 1, v7);
      v298 = *v372;
      v299 = v349;
      (*v372)(v349, v297, v7);
      v300 = *(v383 + 48);
      v301 = v354;
      v293(v354, v246, v250);
      v298(&v301[v300], v299, v7);
      v302 = v382;
      v303 = *(v382 + 48);
      v304 = v353;
      v293(v353, v301, v250);
      v305 = &v304[v303];
      v7 = v390;
      v298(v305, &v301[v300], v390);
      v306 = *(v302 + 48);
      v307 = v344;
      v293(v344, v304, v250);
      v308 = &v304[v306];
      v309 = v346;
      v298(v346, v308, v7);
      v310 = v345;
      v293(v345, v307, v250);
      v311 = v350;
      v298(v350, v309, v7);
      v248 = v387;
      v312 = __RawDictionaryStorage.find<A>(_:)(v310, v250, v384);
      v313 = v312;
      if (v314)
      {
        (*(v348 + 40))(v248[6] + *(v348 + 72) * v312, v310, v250);
        (*(v368 + 40))(v248[7] + *(v368 + 72) * v313, v311, v7);
        v249 = v389;
      }

      else
      {
        v315 = v389;
        if (v248[2] >= v248[3])
        {
          goto LABEL_121;
        }

        *(v347 + ((v312 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v312;
        v293(v248[6] + *(v348 + 72) * v312, v310, v250);
        v298(v248[7] + *(v368 + 72) * v313, v311, v7);
        v316 = v248[2];
        v317 = __OFADD__(v316, 1);
        v318 = (&v316->isa + 1);
        if (v317)
        {
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v248[2] = v318;
        v249 = v315;
      }

      v253 = v393;
      v246 = v386;
      v162 = v380;
      v251 = v381;
      v252 = v367;
      v247 = v359;
      v245 = v388;
    }
  }

  v356 = v64;
  if (v147)
  {
    if (a1 < 0)
    {
      v151 = a1;
    }

    else
    {
      v151 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v152 = type metadata accessor for __CocoaDictionary.Iterator();
    v153 = swift_allocObject(v152, 0xE8, 7uLL);
    v345 = 0;
    v154 = 0;
    v155 = 0;
    *(v153 + 208) = v151;
    *(v153 + 216) = 0;
    *(v153 + 16) = 0u;
    *(v153 + 32) = 0u;
    *(v153 + 48) = 0u;
    *(v153 + 64) = 0u;
    *(v153 + 80) = 0u;
    *(v153 + 96) = 0u;
    *(v153 + 112) = 0u;
    *(v153 + 128) = 0u;
    *(v153 + 144) = 0u;
    *(v153 + 160) = 0u;
    *(v153 + 176) = 0u;
    *(v153 + 192) = 0u;
    *(v153 + 224) = 0;
    v156 = v153 | 0x8000000000000000;
  }

  else
  {
    v163 = -1 << *(a1 + 32);
    v154 = ~v163;
    v164 = *(a1 + 64);
    v345 = (a1 + 64);
    v165 = -v163;
    if (v165 < 64)
    {
      v166 = ~(-1 << v165);
    }

    else
    {
      v166 = -1;
    }

    v155 = (v166 & v164);
    v156 = a1;
  }

  v168 = v376;
  v167 = v377;
  v346 = (v156 & 0x7FFFFFFFFFFFFFFFLL);
  v337 = (v374 + 56);
  v336 = (v334 + 2);
  v335 = (v374 + 48);
  ++v334;
  v350 = (v374 + 32);
  v329 = (v375 + 56);
  v328 = (v380 + 16);
  v327 = (v375 + 48);
  v326 = (v380 + 8);
  v349 = (v375 + 32);
  v371 = (v389 + 56);
  v343 = v154;
  v344 = ((v154 + 64) >> 6);
  v381 = (v374 + 16);
  v380 = v375 + 16;
  v367 = (v389 + 48);
  v357 = (v389 + 32);
  v358 = (v348 + 56);
  v354 = (v348 + 32);
  v359 = (v389 + 8);
  v355 = (v368 + 56);
  v353 = (v368 + 32);
  a1;
  v169 = 0;
  v368 = v156;
  v386 = v155;
  while ((v368 & 0x8000000000000000) == 0)
  {
    v198 = v155;
    v199 = v169;
    v200 = v169;
    v201 = v391;
    v173 = v392;
    v174 = v385;
    if (v155)
    {
      goto LABEL_52;
    }

    v178 = v391;
    if (v344 <= (v199 + 1))
    {
      v202 = v199 + 1;
    }

    else
    {
      v202 = v344;
    }

    v191 = v202 - 1;
    v203 = v199;
    v192 = v378;
    v188 = v379;
    do
    {
      v200 = (v203 + 1);
      if (__OFADD__(v203, 1))
      {
        __break(1u);
LABEL_118:
        __break(1u);
LABEL_119:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (v200 >= v344)
      {
        (*v371)(v379, 1, 1, v385);
        v389 = 0;
        goto LABEL_53;
      }

      v198 = *&v345[8 * v200];
      ++v203;
    }

    while (!v198);
    v201 = v391;
LABEL_52:
    v389 = (v198 - 1) & v198;
    v204 = __clz(__rbit64(v198)) | (v200 << 6);
    v205 = v374;
    v206 = v351;
    (*(v374 + 16))(v351, *(v156 + 48) + *(v374 + 72) * v204, v392);
    v207 = *(v156 + 56);
    v208 = v375;
    v209 = v352;
    (*(v375 + 16))(v352, v207 + *(v375 + 72) * v204, v201);
    v210 = *(v174 + 48);
    v211 = *(v205 + 32);
    v212 = v379;
    v211(v379, v206, v173);
    v213 = v209;
    v188 = v212;
    v178 = v201;
    (*(v208 + 32))(&v212[v210], v213, v201);
    (*v371)(v212, 0, 1, v174);
    v191 = v200;
    v192 = v378;
LABEL_53:
    if ((*v367)(v188, 1, v174) == 1)
    {
      v238 = v368;
      goto LABEL_113;
    }

    v388 = v191;
    (*v357)(v192, v188, v174);
    v214 = *(v174 + 48);
    v215 = v372;
    (*v381)(v372, v192, v173);
    v216 = v373;
    if (!swift_dynamicCast(v373, v215, v173, v393, 6uLL))
    {
      _sSh8IteratorV8_VariantOySS__GWOe_0(v368);
      (*v358)(v216, 1, 1, v393);
      (*v359)(v192, v174);
      v239 = *(v332 + 8);
      v240 = v216;
      goto LABEL_107;
    }

    v217 = v393;
    (*v358)(v216, 0, 1, v393);
    v218 = *v354;
    v219 = v356;
    (*v354)(v356, v216, v217);
    v220 = &v192[v214];
    v221 = v369;
    (*v380)(v369, v220, v178);
    (*v359)(v192, v174);
    v222 = v370;
    v223 = v390;
    if ((swift_dynamicCast(v370, v221, v178, v390, 6uLL) & 1) == 0)
    {
      _sSh8IteratorV8_VariantOySS__GWOe_0(v368);
      (*v355)(v222, 1, 1, v223);
      (*(v348 + 8))(v219, v393);
      v239 = *(v330 + 8);
      v240 = v222;
      goto LABEL_109;
    }

    (*v355)(v222, 0, 1, v223);
    v224 = *v353;
    v225 = v363;
    (*v353)(v363, v222, v223);
    v226 = *(v383 + 48);
    v227 = v393;
    v228 = v366;
    v218(v366, v219, v393);
    v224(&v228[v226], v225, v223);
    v229 = v382;
    v386 = *(v382 + 48);
    v230 = v365;
    v218(v365, v228, v227);
    v224(v230 + v386, &v228[v226], v223);
    v231 = *(v229 + 48);
    v232 = v360;
    v218(v360, v230, v227);
    v233 = v230 + v231;
    v234 = v362;
    v224(v362, v233, v223);
    v235 = v361;
    v218(v361, v232, v227);
    v236 = v364;
    v224(v364, v234, v223);
    v237 = v235;
    v168 = v376;
    _NativeDictionary._unsafeInsertNew(key:value:)(v237, v236, v387, v227, v223, v384);
    v169 = v388;
    v155 = v389;
    v167 = v377;
    v156 = v368;
    v386 = v389;
  }

  v170 = v346;
  v171 = *(v346 + 27);
  v172 = v391;
  v173 = v392;
  v174 = v385;
  if ((v171 & 0x8000000000000000) == 0)
  {
    if (v171 != *(v346 + 28))
    {
      v176 = *(v346 + 3);
      if (!v176)
      {
        goto LABEL_124;
      }

      if (v171 >> 60)
      {
        __break(1u);
        goto LABEL_121;
      }

LABEL_32:
      v177 = (v176 + 8 * v171);
      if ((v177 & 7) != 0)
      {
        goto LABEL_119;
      }

      v178 = v172;
      v179 = *v177;
      v170[27] = v171 + 1;
      v180 = v170[26];
      swift_unknownObjectRetain(v179);
      v181 = [v180 &sel:v179 objectForKey:?];
      if (!v181)
      {
        goto LABEL_124;
      }

      v182 = v181;
      v183 = _swift_isClassOrObjCExistentialType(v173, v173);
      v184 = v341;
      if (v183)
      {
        v394 = v179;
        swift_dynamicCast(v347, &v394, qword_1EEEAC710, v173, 7uLL);
      }

      else
      {
        (*v337)(v168, 1, 1, v173);
        _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v179, v173, v168);
        v193 = v167;
        v194 = v168;
        v195 = v168;
        v196 = v167;
        v197 = v338;
        (*v336)(v193, v194, v338);
        if ((*v335)(v196, 1, v173) == 1)
        {
          goto LABEL_121;
        }

        swift_unknownObjectRelease(v179);
        (*v334)(v195, v197);
        (*v350)(v347, v196, v173);
      }

      v185 = _swift_isClassOrObjCExistentialType(v178, v178);
      v186 = v342;
      v187 = v340;
      v188 = v379;
      if (v185)
      {
        v394 = v182;
        v189 = v339;
        swift_dynamicCast(v339, &v394, qword_1EEEAC710, v178, 7uLL);
LABEL_38:
        v190 = *(v174 + 48);
        (*v350)(v188, v347, v173);
        (*v349)(&v188[v190], v189, v178);
        (*v371)(v188, 0, 1, v174);
        v191 = v169;
        v389 = v386;
        v192 = v378;
        goto LABEL_53;
      }

      (*v329)(v340, 1, 1, v178);
      _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v182, v178, v187);
      (*v328)(v184, v187, v186);
      if ((*v327)(v184, 1, v178) != 1)
      {
        swift_unknownObjectRelease(v182);
        (*v326)(v187, v186);
        v189 = v339;
        (*v349)(v339, v184, v178);
        goto LABEL_38;
      }

LABEL_121:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v175 = [*(v346 + 26) countByEnumeratingWithState:v346 + 16 objects:v346 + 80 count:16];
    v170 = v346;
    *(v346 + 28) = v175;
    if (v175)
    {
      v170[27] = 0;
      v176 = v170[3];
      if (!v176)
      {
        goto LABEL_124;
      }

      v171 = 0;
      goto LABEL_32;
    }

    v170[27] = -1;
  }

  (*v371)(v379, 1, 1, v174);
  v238 = v156;
LABEL_113:
  _sSh8IteratorV8_VariantOySS__GWOe_0(v238);
  return v387;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unint64_t a1, unint64_t a2)
{
  v5 = _swift_stdlib_Hashing_parameters ^ *(v2 + 40);
  v9 = 0u;
  v10 = 0u;
  v8[0] = 0;
  v8[1] = v5 ^ 0x736F6D6570736575;
  v8[2] = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x646F72616E646F6DLL;
  v8[3] = v5 ^ 0x6C7967656E657261;
  v8[4] = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x7465646279746573;
  String.hash(into:)(v8, a1, a2);
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(void *a1)
{
  v3 = *(v1 + 40);
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v4);
  (*(v5 + 8))(v10, v4, v5);
  v6 = v11;
  v7 = v12;
  __swift_project_boxed_opaque_existential_0Tm(v10, v11);
  v8 = (*(v7 + 40))(v3, v6, v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v8);
}

unint64_t __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = (*(a3 + 32))(*(v4 + 40));

  return __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v8, a2, a3);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(void *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v16 = ~v4;
    do
    {
      outlined init with copy of AnyHashable(*(v6 + 48) + 40 * v5, v21);
      v8 = v22;
      v9 = v23;
      __swift_project_boxed_opaque_existential_0Tm(v21, v22);
      (*(v9 + 8))(v18, v8, v9);
      v10 = v19;
      v11 = v20;
      __swift_project_boxed_opaque_existential_0Tm(v18, v19);
      v12 = a1[3];
      v13 = a1[4];
      __swift_project_boxed_opaque_existential_0Tm(a1, v12);
      (*(v13 + 8))(v17, v12, v13);
      v14 = (*(v11 + 16))(v17, v10, v11);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      outlined destroy of AnyHashable(v21);
      if (v14)
      {
        break;
      }

      v5 = (v5 + 1) & v16;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v16 = ~v4;
    do
    {
      outlined init with copy of AnyHashable(*(v6 + 48) + 40 * v5, v21);
      v8 = v22;
      v9 = v23;
      __swift_project_boxed_opaque_existential_0Tm(v21, v22);
      (*(v9 + 8))(v18, v8, v9);
      v10 = v19;
      v11 = v20;
      __swift_project_boxed_opaque_existential_0Tm(v18, v19);
      v12 = a1[3];
      v13 = a1[4];
      __swift_project_boxed_opaque_existential_0Tm(a1, v12);
      (*(v13 + 8))(v17, v12, v13);
      v14 = (*(v11 + 16))(v17, v10, v11);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      outlined destroy of AnyHashable(v21);
      if (v14)
      {
        break;
      }

      v5 = (v5 + 1) & v16;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    v9 = a2 & 0x6000000000000000;
    do
    {
      v10 = (*(v3 + 48) + 16 * v5);
      v11 = v10[1];
      if (*v10 == a1 && v11 == a2)
      {
        break;
      }

      v13 = (~v11 & 0x6000000000000000) == 0 && v9 == 0x6000000000000000;
      if (!v13 && (_stringCompareInternal(_:_:expecting:)(*v10, v11, a1, a2, 0) & 1) != 0)
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    v9 = a2 & 0x6000000000000000;
    do
    {
      v10 = (*(v3 + 48) + 16 * v5);
      v11 = v10[1];
      if (*v10 == a1 && v11 == a2)
      {
        break;
      }

      v13 = (~v11 & 0x6000000000000000) == 0 && v9 == 0x6000000000000000;
      if (!v13 && (_stringCompareInternal(_:_:expecting:)(*v10, v11, a1, a2, 0) & 1) != 0)
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
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

unint64_t __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v23 = a4;
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21 = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v24 + 48) + v16 * v11, a3);
      v19 = (*(*(v23 + 8) + 8))(v8, v22, a3);
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t *_DictionaryStorage.deinit()
{
  if (v0[2] < 1)
  {
    return v0;
  }

  v1 = *v0;
  v2 = *(*v0 + 176);
  if (*(*(v2 - 8) + 82))
  {
    v5 = *(v2 - 8);
    v6 = 0;
    v7 = 1 << *(v0 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v0[6];
    v10 = v8 & v0[8];
    for (i = (v7 + 63) >> 6; v10; result = (*(v5 + 8))(v9 + *(v5 + 72) * (v12 | (v6 << 6)), v2))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      ;
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= i)
      {
        goto LABEL_3;
      }

      v14 = v0[v6 + 8];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_3:
    v3 = *(v1 + 184);
    if ((*(*(v3 - 8) + 82) & 1) == 0)
    {
LABEL_4:
      v0[2] = 0;
      return v0;
    }

    v15 = *(v3 - 8);
    v16 = 0;
    v17 = 1 << *(v0 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v0[7];
    v20 = v18 & v0[8];
    for (j = (v17 + 63) >> 6; v20; result = (*(v15 + 8))(v19 + *(v15 + 72) * (v22 | (v16 << 6)), v3))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_26:
      ;
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= j)
      {
        goto LABEL_4;
      }

      v24 = v0[v16 + 8];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_26;
      }
    }
  }

  __break(1u);
  return result;
}

void _DictionaryStorage.__deallocating_deinit()
{
  _DictionaryStorage.deinit();

  swift_deallocClassInstance(v0);
}

id @objc _DictionaryStorage.copy(with:)()
{
  v0 = specialized _SwiftDeferredNSDictionary.copy(with:)();

  return swift_unknownObjectRetain(v0);
}

void *_DictionaryStorage.keyEnumerator()()
{
  v1 = type metadata accessor for _SwiftDictionaryNSEnumerator(0, *(*v0 + 176), *(*v0 + 184), *(*v0 + 192));
  v2 = swift_allocObject(v1, 0x30, 7uLL);
  v3 = v2;
  v4 = 0;
  v2[2] = v0;
  v2[3] = 0;
  v5 = v0 + 8;
  v6 = -1 << *(v0 + 32);
  v7 = -v6;
  v8 = (63 - v6) >> 6;
  while (1)
  {
    v10 = *v5++;
    v9 = v10;
    if (v10)
    {
      break;
    }

    v4 -= 64;
    if (!--v8)
    {
      v11 = v7;
      goto LABEL_6;
    }
  }

  v11 = __clz(__rbit64(v9)) - v4;
LABEL_6:
  v2[4] = v11;
  v2[5] = v7;
  v0;
  return v3;
}

void *@objc _DictionaryStorage.keyEnumerator()()
{
  v0 = _DictionaryStorage.keyEnumerator()();

  return v0;
}

uint64_t _DictionaryStorage.countByEnumerating(with:objects:count:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = *(*v2 + 176);
  v5 = *(v4 - 1);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v13 = (&v44 - v12);
  v14 = (v2 + 64);
  v15 = -1 << *(v2 + 32);
  v16 = *v9;
  v17 = v9[1];
  v18 = v9[2];
  v19 = v9[3];
  v20 = *(v9 + 3);
  v60 = *(v9 + 2);
  v61 = v20;
  if (!v16)
  {
    goto LABEL_26;
  }

  if (!v3)
  {
    return 0;
  }

LABEL_3:
  if ((v19 & 0x8000000000000000) != 0)
  {
    goto LABEL_40;
  }

  v21 = -v15;
  if (v19 + v15 && (v19 >= v21 || ((*(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v19) & 1) == 0))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v10 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v10)
  {
    v46 = v17;
    v47 = v16;
    v22 = 0;
    v23 = v5 + 2;
    v44 = (v5 + 4);
    v45 = v11;
    v59 = (v5 + 1);
    v50 = (63 - v15) >> 6;
    v48 = v18;
    v49 = v2 + 72;
    while (1)
    {
      if (v22 == v10)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (v19 == v21)
      {
        break;
      }

      v53 = v14;
      v57 = v9;
      v58 = v10;
      v24 = *(v2 + 48) + v5[9] * v19;
      v25 = v5[2];
      v51 = v23;
      v25(v13, v24, v4);
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v4, v4);
      v55 = v4;
      v56 = v13;
      v54 = v6;
      v52 = v21;
      if (isClassOrObjCExistentialType)
      {
        if (v6 != 8)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v6 = *v13;
        v27 = v5;
        v28 = v3;
        v29 = *v59;
        swift_unknownObjectRetain(*v13);
        v9 = v29(v13, v4);
        v3 = v28;
        v5 = v27;
        if (v22 == 0x1000000000000000)
        {
LABEL_25:
          __break(1u);
LABEL_26:
          v37 = 0;
          v19 = -v15;
          v38 = (63 - v15) >> 6;
          v39 = v14;
          while (1)
          {
            v41 = *v39++;
            v40 = v41;
            if (v41)
            {
              break;
            }

            v37 -= 64;
            if (!--v38)
            {
              goto LABEL_34;
            }
          }

          v19 = __clz(__rbit64(v40)) - v37;
LABEL_34:
          if ((v19 & 0x8000000000000000) != 0)
          {
            goto LABEL_40;
          }

          v18 = &_fastEnumerationStorageMutationsTarget;
          v16 = 1;
          v17 = v3;
          if (!v3)
          {
            return 0;
          }

          goto LABEL_3;
        }
      }

      else
      {
        v36 = v45;
        (*v44)(v45, v13, v4);
        v9 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v36, v4);
        v6 = v9;
        if (v22 == 0x1000000000000000)
        {
          goto LABEL_25;
        }
      }

      *(v3 + 8 * v22) = v6;
      swift_unknownObjectRelease(v6);
      v30 = v19 >> 6;
      v14 = v53;
      if ((v53[v19 >> 6] & (-2 << v19)) != 0)
      {
        v19 = __clz(__rbit64(v53[v19 >> 6] & (-2 << v19))) | v19 & 0xFFFFFFFFFFFFFFC0;
        v9 = v57;
        v10 = v58;
        v4 = v55;
        v13 = v56;
        v6 = v54;
        v23 = v51;
        v21 = v52;
      }

      else
      {
        v31 = v30 << 6;
        v32 = v30 + 1;
        v33 = (v49 + 8 * v30);
        v9 = v57;
        v10 = v58;
        v4 = v55;
        v13 = v56;
        v6 = v54;
        v23 = v51;
        v21 = v52;
        while (v32 < v50)
        {
          v35 = *v33++;
          v34 = v35;
          v31 += 64;
          ++v32;
          if (v35)
          {
            v19 = __clz(__rbit64(v34)) + v31;
            goto LABEL_22;
          }
        }

        v19 = v52;
      }

LABEL_22:
      if (++v22 == v10)
      {
        v22 = v10;
        v21 = v19;
        goto LABEL_39;
      }
    }

    v19 = v21;
LABEL_39:
    v16 = v47;
    v18 = v48;
    v17 = v46;
    if (v21 < 0)
    {
LABEL_40:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  else
  {
    v22 = 0;
  }

  *v9 = v16;
  v9[1] = v17;
  v9[2] = v18;
  v9[3] = v19;
  v42 = v61;
  *(v9 + 2) = v60;
  *(v9 + 3) = v42;
  return v22;
}

unint64_t *_DictionaryStorage.object(forKey:)(void *a1, uint64_t a2)
{
  v29 = *v2;
  v4 = *(v29 + 184);
  v28 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v6 = (&v28 - v5);
  v8 = *(v7 + 176);
  v11 = type metadata accessor for Optional(0, v8, v9, v10);
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = (&v28 - v15);
  v17 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v14, v18);
  v20 = &v28 - v19;
  _conditionallyBridgeFromObjectiveC<A>(_:_:)(a1, v8, v16, v21);
  if ((*(v17 + 48))(v16, 1, v8) == 1)
  {
    (*(v12 + 8))(v16, v11);
  }

  else
  {
    (*(v17 + 32))(v20, v16, v8);
    v22 = __RawDictionaryStorage.find<A>(_:)(v20, v8, *(v29 + 192));
    v24 = v23;
    (*(v17 + 8))(v20, v8);
    if (v24)
    {
      v25 = v28;
      (*(v28 + 16))(v6, v2[7] + *(v28 + 72) * v22, v4);
      v26 = _bridgeAnythingToObjectiveC<A>(_:)(v6, v4);
      (*(v25 + 8))(v6, v4);
      return v26;
    }
  }

  return 0;
}

void _DictionaryStorage.getObjects(_:andKeys:count:)(void (**a1)(char *, uint64_t *), void (**a2)(id *, char *, uint64_t *), unint64_t a3)
{
  v186 = a2;
  v187 = a1;
  v191 = *(*(*v3 + 184) - 8);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  v7 = (&v170 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = (&v170 - v10);
  v185 = v12;
  v14 = MEMORY[0x1EEE9AC00](v9, v13);
  v189 = &v170 - v15;
  v192 = v3;
  v17 = *(*(v16 + 176) - 8);
  v18 = MEMORY[0x1EEE9AC00](v14, *(v16 + 176));
  v20 = (&v170 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v24 = (&v170 - v23);
  v184 = v25;
  MEMORY[0x1EEE9AC00](v22, v26);
  v188 = &v170 - v27;
  v197 = v29;
  v198 = v28;
  swift_getTupleTypeMetadata2(255, v28, v29, "key value ", 0);
  v31 = v30;
  v195 = type metadata accessor for Optional(0, v30, v32, v33);
  v35 = MEMORY[0x1EEE9AC00](v195, v34);
  v37 = &v170 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v35, v38);
  v194 = &v170 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39, v41);
  v44 = MEMORY[0x1EEE9AC00](v42, v43);
  v46 = MEMORY[0x1EEE9AC00](v44, v45);
  v181 = (&v170 - v47);
  MEMORY[0x1EEE9AC00](v46, v48);
  v193 = &v170 - v52;
  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_87:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v176 = v50;
  v190 = v17;
  v177 = a3;
  if (!a3)
  {
    return;
  }

  v196 = v31;
  if (!v186)
  {
    if (!v187)
    {
      return;
    }

    v106 = 0;
    v107 = 0;
    v108 = *(v192 + 64);
    v173 = (v192 + 64);
    v109 = 1 << *(v192 + 32);
    v110 = -1;
    if (v109 < 64)
    {
      v110 = ~(-1 << v109);
    }

    v111 = v110 & v108;
    v112 = (v109 + 63) >> 6;
    v183 = v31 - 8;
    v176 = (v190 + 16);
    v175 = (v191 + 16);
    v174 = (v190 + 32);
    v186 = (v191 + 32);
    v179 = (v191 + 8);
    v181 = (v190 + 8);
    v182 = (v49 + 32);
    v180 = v177 - 1;
    v178 = v7;
    v177 = v37;
    if ((v110 & v108) != 0)
    {
LABEL_36:
      v184 = v106;
      v193 = ((v111 - 1) & v111);
      v113 = __clz(__rbit64(v111)) | (v107 << 6);
      goto LABEL_45;
    }

    while (1)
    {
      v114 = v112 <= v107 + 1 ? v107 + 1 : v112;
      v115 = v114 - 1;
      v116 = v194;
      do
      {
        v117 = v107 + 1;
        if (__OFADD__(v107, 1))
        {
          goto LABEL_82;
        }

        if (v117 >= v112)
        {
          v193 = 0;
          v128 = 1;
          goto LABEL_46;
        }

        v118 = v173[v117];
        ++v107;
      }

      while (!v118);
      v184 = v106;
      v193 = ((v118 - 1) & v118);
      v113 = __clz(__rbit64(v118)) | (v117 << 6);
      v107 = v117;
LABEL_45:
      v119 = v192;
      v120 = v190;
      (*(v190 + 16))(v188, *(v192 + 48) + *(v190 + 72) * v113, v198);
      v121 = v191;
      v122 = *(v119 + 56) + *(v191 + 72) * v113;
      v123 = v189;
      v124 = v197;
      (*(v191 + 16))(v189, v122, v197);
      v125 = v196;
      v126 = *(v196 + 48);
      v37 = v177;
      (*(v120 + 32))();
      v127 = *(v121 + 32);
      v31 = v125;
      v127(&v37[v126], v123, v124);
      v128 = 0;
      v115 = v107;
      v7 = v178;
      v116 = v194;
      v106 = v184;
LABEL_46:
      v129 = *(v31 - 8);
      (*(v129 + 56))(v37, v128, 1, v31);
      (*v182)(v116, v37, v195);
      if ((*(v129 + 48))(v116, 1, v31) == 1)
      {
        return;
      }

      v130 = *v186;
      v131 = v197;
      (*v186)(v7, &v116[*(v31 + 48)], v197);
      if (_swift_isClassOrObjCExistentialType(v131, v131))
      {
        if (v185 != 8)
        {
          goto LABEL_83;
        }

        v132 = v37;
        v133 = *v7;
        v134 = *v179;
        swift_unknownObjectRetain(*v7);
        v135 = v7;
        v134(v7, v197);
      }

      else
      {
        v132 = v37;
        v136 = v189;
        v135 = v7;
        v137 = v197;
        v130(v189, v7, v197);
        v133 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v136, v137);
      }

      if (v106 == 0x1000000000000000)
      {
        goto LABEL_86;
      }

      v187[v106] = v133;
      swift_unknownObjectRelease(v133);
      if (v106 == v180)
      {
        (*v181)(v194, v198);
        return;
      }

      ++v106;
      (*v181)(v194, v198);
      v107 = v115;
      v111 = v193;
      v7 = v135;
      v37 = v132;
      if (v193)
      {
        goto LABEL_36;
      }
    }
  }

  v53 = *(v192 + 64);
  v172 = v192 + 64;
  v54 = 1 << *(v192 + 32);
  v55 = -1;
  if (v54 < 64)
  {
    v55 = ~(-1 << v54);
  }

  v56 = v55 & v53;
  v171 = (v54 + 63) >> 6;
  v183 = v31 - 8;
  v180 = v190 + 16;
  v179 = (v191 + 16);
  v57 = (v190 + 32);
  v194 = (v191 + 32);
  v182 = (v49 + 32);
  v178 = (v190 + 32);
  if (!v187)
  {
    v138 = 0;
    v139 = 0;
    v181 = (v190 + 8);
    v187 = (v191 + 8);
    v185 = v177 - 1;
    v177 = v20;
    v193 = v51;
    if (v56)
    {
LABEL_57:
      v140 = (v56 - 1) & v56;
      v141 = __clz(__rbit64(v56)) | (v139 << 6);
      goto LABEL_66;
    }

    while (1)
    {
      v142 = v171 <= v139 + 1 ? v139 + 1 : v171;
      v143 = v142 - 1;
      do
      {
        v144 = v139 + 1;
        if (__OFADD__(v139, 1))
        {
          goto LABEL_81;
        }

        if (v144 >= v171)
        {
          v56 = 0;
          v159 = 1;
          v156 = v176;
          goto LABEL_67;
        }

        v145 = *(v172 + 8 * v144);
        ++v139;
      }

      while (!v145);
      v140 = (v145 - 1) & v145;
      v141 = __clz(__rbit64(v145)) | (v144 << 6);
      v139 = v144;
LABEL_66:
      v146 = v192;
      v147 = v190;
      v148 = v188;
      v149 = v198;
      (*(v190 + 16))(v188, *(v192 + 48) + *(v190 + 72) * v141, v198);
      v150 = v191;
      v151 = *(v146 + 56) + *(v191 + 72) * v141;
      v152 = v189;
      v153 = v197;
      (*(v191 + 16))(v189, v151, v197);
      v154 = *(v196 + 48);
      v155 = *(v147 + 32);
      v156 = v176;
      v157 = v148;
      v31 = v196;
      v158 = v149;
      v57 = v178;
      v155(v176, v157, v158);
      (*(v150 + 32))(&v156[v154], v152, v153);
      v159 = 0;
      v143 = v139;
      v56 = v140;
      v20 = v177;
LABEL_67:
      v160 = *(v31 - 8);
      (*(v160 + 56))(v156, v159, 1, v31);
      v161 = v193;
      (*v182)(v193, v156, v195);
      if ((*(v160 + 48))(v161, 1, v31) == 1)
      {
        return;
      }

      v162 = *v57;
      v163 = v198;
      (*v57)(v20, v161, v198);
      if (_swift_isClassOrObjCExistentialType(v163, v163))
      {
        if (v184 != 8)
        {
          goto LABEL_83;
        }

        v164 = v143;
        v165 = *v20;
        v166 = *v181;
        swift_unknownObjectRetain(*v20);
        v166(v20, v198);
      }

      else
      {
        v164 = v143;
        v168 = v188;
        v169 = v198;
        v162(v188, v20, v198);
        v165 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v168, v169);
      }

      if (v138 == 0x1000000000000000)
      {
        break;
      }

      v167 = *(v31 + 48);
      v186[v138] = v165;
      swift_unknownObjectRelease(v165);
      if (v138 == v185)
      {
        (*v187)(&v161[v167], v197);
        return;
      }

      ++v138;
      (*v187)(&v161[v167], v197);
      v139 = v164;
      if (v56)
      {
        goto LABEL_57;
      }
    }

LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v58 = 0;
  v59 = 0;
  v176 = (v191 + 8);
  v175 = (v190 + 8);
  v173 = v11;
  v174 = v24;
  do
  {
    if (v56)
    {
      v60 = (v56 - 1) & v56;
      v61 = __clz(__rbit64(v56)) | (v59 << 6);
      goto LABEL_18;
    }

    if (v171 <= v59 + 1)
    {
      v62 = v59 + 1;
    }

    else
    {
      v62 = v171;
    }

    v63 = v62 - 1;
    v64 = v181;
    do
    {
      v65 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      if (v65 >= v171)
      {
        v56 = 0;
        v81 = 1;
        v59 = v63;
        goto LABEL_19;
      }

      v66 = *(v172 + 8 * v65);
      ++v59;
    }

    while (!v66);
    v60 = (v66 - 1) & v66;
    v61 = __clz(__rbit64(v66)) | (v65 << 6);
    v59 = v65;
LABEL_18:
    v67 = v192;
    v68 = v190;
    v69 = v188;
    v70 = v198;
    (*(v190 + 16))(v188, *(v192 + 48) + *(v190 + 72) * v61, v198);
    v71 = v191;
    v72 = *(v67 + 56) + *(v191 + 72) * v61;
    v73 = v189;
    v74 = v197;
    (*(v191 + 16))(v189, v72, v197);
    v75 = *(v196 + 48);
    v76 = *(v68 + 32);
    v77 = v181;
    v78 = v69;
    v31 = v196;
    v79 = v70;
    v57 = v178;
    v76(v181, v78, v79);
    v80 = *(v71 + 32);
    v64 = v77;
    v80(v77 + v75, v73, v74);
    v81 = 0;
    v56 = v60;
    v11 = v173;
    v24 = v174;
LABEL_19:
    v82 = *(v31 - 8);
    (*(v82 + 56))(v64, v81, 1, v31);
    v83 = v193;
    (*v182)(v193, v64, v195);
    if ((*(v82 + 48))(v83, 1, v31) == 1)
    {
      return;
    }

    v84 = *(v31 + 48);
    v85 = *v57;
    v86 = v57;
    v87 = v24;
    v88 = v24;
    v89 = v11;
    v90 = v193;
    v91 = v86;
    v85(v88, v193, v198);
    v92 = *v194;
    v93 = &v90[v84];
    v11 = v89;
    v94 = v197;
    (*v194)(v89, v93, v197);
    if (_swift_isClassOrObjCExistentialType(v94, v94))
    {
      if (v185 == 8)
      {
        v95 = *v89;
        v96 = *v176;
        swift_unknownObjectRetain(*v89);
        v96(v89, v197);
        v24 = v87;
        goto LABEL_23;
      }

LABEL_83:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v99 = v56;
    v100 = v189;
    v101 = v197;
    v92(v189, v11, v197);
    v102 = v100;
    v56 = v99;
    v24 = v174;
    v95 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v102, v101);
LABEL_23:
    if (v58 == 0x1000000000000000)
    {
      __break(1u);
      goto LABEL_85;
    }

    v57 = v91;
    v187[v58] = v95;
    swift_unknownObjectRelease(v95);
    if (_swift_isClassOrObjCExistentialType(v198, v198))
    {
      v31 = v196;
      if (v184 != 8)
      {
        goto LABEL_83;
      }

      v97 = *v24;
      v98 = *v175;
      swift_unknownObjectRetain(*v24);
      v98(v24, v198);
    }

    else
    {
      v103 = v188;
      v104 = v198;
      v85(v188, v174, v198);
      v105 = v103;
      v24 = v174;
      v97 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v105, v104);
      v31 = v196;
    }

    v186[v58] = v97;
    swift_unknownObjectRelease(v97);
    ++v58;
  }

  while (v58 != v177);
}

uint64_t @objc _SwiftDeferredNSDictionary.getObjects(_:andKeys:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  a1;
  a6(a3, a4, a5);

  return a1;
}

int64x2_t *_ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZs11AnyHashableV_AOTt2g5(uint64_t a1, uint64_t a2, int64x2_t *a3, char a4)
{
  v5 = a1;
  v6 = a1;
  v7 = 1 << a1;
  v8 = ((1 << a1) + 63) >> 6;
  v9 = canonical specialized generic type metadata accessor for _DictionaryStorage<AnyHashable, AnyHashable>();
  v10 = swift_allocObject(v9, ((((40 << v6) + 8 * v8 + 71) & 0xFFFFFFFFFFFFFFF8) + (40 << v6)), 7uLL);
  v11 = v10 + 4;
  v12 = &v10[4].i64[v8];
  v10[1].i64[0] = 0;
  v10;
  v10[1].i64[1] = specialized static _HashTable.capacity(forScale:)(v5);
  v10[2].i8[0] = v5;
  v10[2].i8[1] = 0;
  v10[2].i16[1] = 0;
  if ((a2 & 0x100000000) != 0)
  {
    LODWORD(a2) = specialized static Hasher._hash(seed:_:)(0, v10);
  }

  v10[2].i32[1] = a2;
  if (qword_1ED42CFC8)
  {
    v13 = v6;
  }

  else
  {
    v13 = v10;
  }

  if ((a4 & 1) == 0)
  {
    v13 = a3;
  }

  v10[2].i64[1] = v13;
  v10[3].i64[0] = v12;
  v10[3].i64[1] = v12 + 40 * v7;
  v10;
  if (v7 > 63)
  {
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v8, v11);
  }

  else
  {
    v11->i64[0] = -1 << v7;
  }

  return v10;
}

int64x2_t *_ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZSS_ypTt2g5(uint64_t a1, uint64_t a2, int64x2_t *a3, char a4)
{
  v6 = a1;
  v7 = a1;
  v8 = 1 << a1;
  v9 = ((1 << a1) + 63) >> 6;
  v10 = canonical specialized generic type metadata accessor for _DictionaryStorage<String, Any>();
  v11 = swift_allocObject(v10, ((((16 << v7) + 8 * v9 + 71) & 0xFFFFFFFFFFFFFFF8) + (32 << v7)), 7uLL);
  v12 = v11 + 4;
  v13 = &v11[4].i64[v9];
  v11[1].i64[0] = 0;
  v11;
  v11[1].i64[1] = specialized static _HashTable.capacity(forScale:)(v6);
  v11[2].i8[0] = v6;
  v11[2].i8[1] = 0;
  v11[2].i16[1] = 0;
  if ((a2 & 0x100000000) != 0)
  {
    LODWORD(a2) = specialized static Hasher._hash(seed:_:)(0, v11);
  }

  v11[2].i32[1] = a2;
  if (qword_1ED42CFC8)
  {
    v14 = v7;
  }

  else
  {
    v14 = v11;
  }

  if ((a4 & 1) == 0)
  {
    v14 = a3;
  }

  v11[2].i64[1] = v14;
  v11[3].i64[0] = v13;
  v11[3].i64[1] = v13 + 16 * v8;
  v11;
  if (v8 > 63)
  {
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v9, v12);
  }

  else
  {
    v12->i64[0] = -1 << v8;
  }

  return v11;
}

int64x2_t *_ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZs11AnyHashableV_ypTt2g5(uint64_t a1, uint64_t a2, int64x2_t *a3, char a4)
{
  v5 = a1;
  v6 = a1;
  v7 = 1 << a1;
  v8 = ((1 << a1) + 63) >> 6;
  v9 = canonical specialized generic type metadata accessor for _DictionaryStorage<AnyHashable, Any>();
  v10 = swift_allocObject(v9, ((((40 << v6) + 8 * v8 + 71) & 0xFFFFFFFFFFFFFFF8) + (32 << v6)), 7uLL);
  v11 = v10 + 4;
  v12 = &v10[4].i64[v8];
  v10[1].i64[0] = 0;
  v10;
  v10[1].i64[1] = specialized static _HashTable.capacity(forScale:)(v5);
  v10[2].i8[0] = v5;
  v10[2].i8[1] = 0;
  v10[2].i16[1] = 0;
  if ((a2 & 0x100000000) != 0)
  {
    LODWORD(a2) = specialized static Hasher._hash(seed:_:)(0, v10);
  }

  v10[2].i32[1] = a2;
  if (qword_1ED42CFC8)
  {
    v13 = v6;
  }

  else
  {
    v13 = v10;
  }

  if ((a4 & 1) == 0)
  {
    v13 = a3;
  }

  v10[2].i64[1] = v13;
  v10[3].i64[0] = v12;
  v10[3].i64[1] = v12 + 40 * v7;
  v10;
  if (v7 > 63)
  {
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v8, v11);
  }

  else
  {
    v11->i64[0] = -1 << v7;
  }

  return v10;
}

int64x2_t *_ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZs11AnyHashableV_SSTt2g5(uint64_t a1, uint64_t a2, int64x2_t *a3, char a4)
{
  v5 = a1;
  v6 = a1;
  v7 = 1 << a1;
  v8 = ((1 << a1) + 63) >> 6;
  v9 = canonical specialized generic type metadata accessor for _DictionaryStorage<AnyHashable, String>();
  v10 = swift_allocObject(v9, ((((40 << v6) + 8 * v8 + 71) & 0xFFFFFFFFFFFFFFF8) + (16 << v6)), 7uLL);
  v11 = v10 + 4;
  v12 = &v10[4].i64[v8];
  v10[1].i64[0] = 0;
  v10;
  v10[1].i64[1] = specialized static _HashTable.capacity(forScale:)(v5);
  v10[2].i8[0] = v5;
  v10[2].i8[1] = 0;
  v10[2].i16[1] = 0;
  if ((a2 & 0x100000000) != 0)
  {
    LODWORD(a2) = specialized static Hasher._hash(seed:_:)(0, v10);
  }

  v10[2].i32[1] = a2;
  if (qword_1ED42CFC8)
  {
    v13 = v6;
  }

  else
  {
    v13 = v10;
  }

  if ((a4 & 1) == 0)
  {
    v13 = a3;
  }

  v10[2].i64[1] = v13;
  v10[3].i64[0] = v12;
  v10[3].i64[1] = v12 + 40 * v7;
  v10;
  if (v7 > 63)
  {
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v8, v11);
  }

  else
  {
    v11->i64[0] = -1 << v7;
  }

  return v10;
}

int64x2_t *_ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZSS_s11AnyHashableVTt2g5(uint64_t a1, uint64_t a2, int64x2_t *a3, char a4)
{
  v6 = a1;
  v7 = a1;
  v8 = 1 << a1;
  v9 = ((1 << a1) + 63) >> 6;
  v10 = canonical specialized generic type metadata accessor for _DictionaryStorage<String, AnyHashable>();
  v11 = swift_allocObject(v10, ((((16 << v7) + 8 * v9 + 71) & 0xFFFFFFFFFFFFFFF8) + (40 << v7)), 7uLL);
  v12 = v11 + 4;
  v13 = &v11[4].i64[v9];
  v11[1].i64[0] = 0;
  v11;
  v11[1].i64[1] = specialized static _HashTable.capacity(forScale:)(v6);
  v11[2].i8[0] = v6;
  v11[2].i8[1] = 0;
  v11[2].i16[1] = 0;
  if ((a2 & 0x100000000) != 0)
  {
    LODWORD(a2) = specialized static Hasher._hash(seed:_:)(0, v11);
  }

  v11[2].i32[1] = a2;
  if (qword_1ED42CFC8)
  {
    v14 = v7;
  }

  else
  {
    v14 = v11;
  }

  if ((a4 & 1) == 0)
  {
    v14 = a3;
  }

  v11[2].i64[1] = v14;
  v11[3].i64[0] = v13;
  v11[3].i64[1] = v13 + 16 * v8;
  v11;
  if (v8 > 63)
  {
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v9, v12);
  }

  else
  {
    v12->i64[0] = -1 << v8;
  }

  return v11;
}

int64x2_t *_ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZSS_SSTt2g5(uint64_t a1, uint64_t a2, int64x2_t *a3, char a4)
{
  v6 = a1;
  v7 = a1;
  v8 = 1 << a1;
  v9 = ((1 << a1) + 63) >> 6;
  v10 = canonical specialized generic type metadata accessor for _DictionaryStorage<String, String>();
  v11 = swift_allocObject(v10, ((((16 << v7) + 8 * v9 + 71) & 0xFFFFFFFFFFFFFFF8) + (16 << v7)), 7uLL);
  v12 = v11 + 4;
  v13 = &v11[4].i64[v9];
  v11[1].i64[0] = 0;
  v11;
  v11[1].i64[1] = specialized static _HashTable.capacity(forScale:)(v6);
  v11[2].i8[0] = v6;
  v11[2].i8[1] = 0;
  v11[2].i16[1] = 0;
  if ((a2 & 0x100000000) != 0)
  {
    LODWORD(a2) = specialized static Hasher._hash(seed:_:)(0, v11);
  }

  v11[2].i32[1] = a2;
  if (qword_1ED42CFC8)
  {
    v14 = v7;
  }

  else
  {
    v14 = v11;
  }

  if ((a4 & 1) == 0)
  {
    v14 = a3;
  }

  v11[2].i64[1] = v14;
  v11[3].i64[0] = v13;
  v11[3].i64[1] = v13 + 16 * v8;
  v11;
  if (v8 > 63)
  {
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v9, v12);
  }

  else
  {
    v12->i64[0] = -1 << v8;
  }

  return v11;
}

int64x2_t *_ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZSS_SiTt2g5(uint64_t a1, uint64_t a2, int64x2_t *a3, char a4)
{
  v6 = a1;
  v7 = a1;
  v8 = 1 << a1;
  v9 = ((1 << a1) + 63) >> 6;
  v10 = canonical specialized generic type metadata accessor for _DictionaryStorage<String, Int>();
  v11 = swift_allocObject(v10, ((((16 << v7) + 8 * v9 + 71) & 0xFFFFFFFFFFFFFFF8) + (8 << v7)), 7uLL);
  v12 = v11 + 4;
  v13 = &v11[4].i64[v9];
  v11[1].i64[0] = 0;
  v11;
  v11[1].i64[1] = specialized static _HashTable.capacity(forScale:)(v6);
  v11[2].i8[0] = v6;
  v11[2].i8[1] = 0;
  v11[2].i16[1] = 0;
  if ((a2 & 0x100000000) != 0)
  {
    LODWORD(a2) = specialized static Hasher._hash(seed:_:)(0, v11);
  }

  v11[2].i32[1] = a2;
  if (qword_1ED42CFC8)
  {
    v14 = v7;
  }

  else
  {
    v14 = v11;
  }

  if ((a4 & 1) == 0)
  {
    v14 = a3;
  }

  v11[2].i64[1] = v14;
  v11[3].i64[0] = v13;
  v11[3].i64[1] = v13 + 16 * v8;
  v11;
  if (v8 > 63)
  {
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v9, v12);
  }

  else
  {
    v12->i64[0] = -1 << v8;
  }

  return v11;
}

int64x2_t *_ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZSO_SiTt2g5Tm(uint64_t a1, uint64_t a2, int64x2_t *a3, char a4, uint64_t (*a5)(void))
{
  v7 = a1;
  v8 = a1;
  v9 = 1 << a1;
  v10 = ((1 << a1) + 63) >> 6;
  v11 = a5(0);
  v12 = swift_allocObject(v11, ((((8 << v8) + 8 * v10 + 71) & 0xFFFFFFFFFFFFFFF8) + (8 << v8)), 7uLL);
  v13 = v12 + 4;
  v14 = &v12[4].i64[v10];
  v12[1].i64[0] = 0;
  v12;
  v12[1].i64[1] = specialized static _HashTable.capacity(forScale:)(v7);
  v12[2].i8[0] = v7;
  v12[2].i8[1] = 0;
  v12[2].i16[1] = 0;
  if ((a2 & 0x100000000) != 0)
  {
    LODWORD(a2) = specialized static Hasher._hash(seed:_:)(0, v12);
  }

  v12[2].i32[1] = a2;
  if (qword_1ED42CFC8)
  {
    v15 = v8;
  }

  else
  {
    v15 = v12;
  }

  if ((a4 & 1) == 0)
  {
    v15 = a3;
  }

  v12[2].i64[1] = v15;
  v12[3].i64[0] = v14;
  v12[3].i64[1] = v14 + 8 * v9;
  v12;
  if (v9 > 63)
  {
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v10, v13);
  }

  else
  {
    v13->i64[0] = -1 << v9;
  }

  return v12;
}

int64x2_t *specialized static _DictionaryStorage.allocate(scale:age:seed:)(uint64_t a1, uint64_t a2, int64x2_t *a3, char a4, uint64_t a5, uint64_t a6)
{
  v8 = a1;
  v9 = a1;
  v10 = 1 << a1;
  v11 = ((1 << a1) + 63) >> 6;
  v12 = type metadata accessor for _DictionaryStorage(0, a5, byte_1EEEBE0E0, a6);
  v13 = *(*(a5 - 8) + 80);
  v14 = v13 + 8 * v11;
  v15 = (*(*(a5 - 8) + 72) << v9) + 7;
  v16 = swift_allocObject(v12, (((v15 + ((v14 + 64) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + (16 << v9)), v13 | 7);
  v17 = v16 + 4;
  v18 = (v16[4].u64 + v14) & ~v13;
  v16[1].i64[0] = 0;
  v16;
  v16[1].i64[1] = specialized static _HashTable.capacity(forScale:)(v8);
  v16[2].i8[0] = v8;
  v16[2].i8[1] = 0;
  v16[2].i16[1] = 0;
  if ((a2 & 0x100000000) != 0)
  {
    LODWORD(a2) = specialized static Hasher._hash(seed:_:)(0, v16);
  }

  v16[2].i32[1] = a2;
  if (qword_1ED42CFC8)
  {
    v19 = v9;
  }

  else
  {
    v19 = v16;
  }

  if ((a4 & 1) == 0)
  {
    v19 = a3;
  }

  v16[2].i64[1] = v19;
  v16[3].i64[0] = v18;
  v16[3].i64[1] = (v15 + v18) & 0xFFFFFFFFFFFFFFF8;
  v16;
  if (v10 > 63)
  {
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v11, v17);
  }

  else
  {
    v17->i64[0] = -1 << v10;
  }

  return v16;
}

int64x2_t *static _DictionaryStorage.allocate(scale:age:seed:)(uint64_t a1, uint64_t a2, int64x2_t *a3, char a4)
{
  v5 = v4;
  v7 = a1;
  v8 = a1;
  v9 = 1 << a1;
  v10 = *(*(v4 + 176) - 8);
  v11 = *(v10 + 80);
  v21 = ((1 << a1) + 63) >> 6;
  v12 = v11 + 8 * v21;
  v13 = *(v10 + 72) << a1;
  v14 = *(*(*(v5 + 184) - 8) + 80);
  v15 = v13 + v14;
  v16 = swift_allocObject(v5, (((((v12 + 64) & ~v11) + v13 + v14) & ~v14) + (*(*(*(v5 + 184) - 8) + 72) << a1)), v11 | v14 | 7);
  v17 = v16 + 4;
  v18 = (v16[4].u64 + v12) & ~v11;
  v16[1].i64[0] = 0;
  v16;
  v16[1].i64[1] = specialized static _HashTable.capacity(forScale:)(v7);
  v16[2].i8[0] = v7;
  v16[2].i8[1] = 0;
  v16[2].i16[1] = 0;
  if ((a2 & 0x100000000) != 0)
  {
    LODWORD(a2) = specialized static Hasher._hash(seed:_:)(0, v16);
  }

  v16[2].i32[1] = a2;
  if (qword_1ED42CFC8)
  {
    v19 = v8;
  }

  else
  {
    v19 = v16;
  }

  if ((a4 & 1) == 0)
  {
    v19 = a3;
  }

  v16[2].i64[1] = v19;
  v16[3].i64[0] = v18;
  v16[3].i64[1] = (v18 + v15) & ~v14;
  v16;
  if (v9 > 63)
  {
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v21, v17);
  }

  else
  {
    v17->i64[0] = -1 << v9;
  }

  return v16;
}

uint64_t Int16.init(_builtinIntegerLiteral:)(unsigned __int16 *a1, unint64_t a2)
{
  if (a2 >> 8 <= 0x10)
  {
    return *a1;
  }

  else
  {
    return 0;
  }
}

Swift::Void __swiftcall _HashTable.clear()()
{
  if (v1 + 1 > 63)
  {
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v1 + 64) >> 6, v0);
  }

  else
  {
    v0->i64[0] = -1 << (v1 + 1);
  }
}

unint64_t _sSh8_VariantV8asNatives01_C3SetVyxGvpSHRzlAByx_GTK_0@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

void _sSh8_VariantV8asNatives01_C3SetVyxGvpSHRzlAByx_GTk_0(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  *a1;
  v4;
  *a2 = v3;
}

__objc2_class **_NativeDictionary.init(_:capacity:)(void *a1, uint64_t a2, Class *a3, Class *a4, uint64_t a5)
{
  v10 = type metadata accessor for Optional(0, a4, a3, a4);
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v19 = &v65 - v18;
  v80 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](v17, v20);
  v85 = (&v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for Optional(0, a3, v22, v23);
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v28 = MEMORY[0x1EEE9AC00](v26, v27);
  v29 = *(a3 - 1);
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v84 = (&v65 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!a2)
  {
    swift_unknownObjectRelease(a1);
    return &_swiftEmptyDictionarySingleton;
  }

  v78 = v31;
  v79 = v32;
  v75 = v15;
  v76 = v33;
  v77 = v10;
  v36 = v34;
  type metadata accessor for _DictionaryStorage(0, a3, a4, a5);
  v37 = specialized static _HashTable.scale(forCapacity:)(a2);
  v38 = specialized static Hasher._hash(seed:_:)(0, a1);
  LOBYTE(v87) = 0;
  v39 = static _DictionaryStorage.allocate(scale:age:seed:)(v37, v38, 0, 1);
  v87 = v39;
  v40 = type metadata accessor for __CocoaDictionary.Iterator();
  v41 = swift_allocObject(v40, 0xE8, 7uLL);
  v42 = 0;
  *(v41 + 1) = 0u;
  v82 = v41 + 2;
  v41[27] = 0;
  v83 = v41 + 27;
  *(v41 + 2) = 0u;
  *(v41 + 3) = 0u;
  *(v41 + 4) = 0u;
  *(v41 + 6) = 0u;
  *(v41 + 7) = 0u;
  *(v41 + 8) = 0u;
  *(v41 + 9) = 0u;
  v73 = (v36 + 16);
  v74 = (v29 + 56);
  *(v41 + 10) = 0u;
  *(v41 + 11) = 0u;
  v71 = (v36 + 8);
  v72 = (v29 + 48);
  v70 = (v29 + 32);
  v43 = v80;
  *(v41 + 12) = 0u;
  *(v41 + 5) = 0u;
  v81 = v41 + 10;
  v68 = (v11 + 16);
  v69 = (v43 + 7);
  v67 = (v43 + 6);
  v41[28] = 0;
  v66 = (v11 + 8);
  v80 = v43 + 4;
  v41[26] = a1;
  v44 = &type metadata for Swift.AnyObject;
  while (1)
  {
    if (v42 != v41[28])
    {
      v46 = v41[3];
      if (!v46)
      {
        goto LABEL_28;
      }

      if (v42 >> 60)
      {
        __break(1u);
LABEL_27:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      goto LABEL_10;
    }

    v45 = [v41[26] countByEnumeratingWithState:v82 objects:v81 count:16];
    v41[28] = v45;
    if (!v45)
    {
      break;
    }

    v41[27] = 0;
    v46 = v41[3];
    if (!v46)
    {
      goto LABEL_28;
    }

    v42 = 0;
LABEL_10:
    v47 = (v46 + 8 * v42);
    if ((v47 & 7) != 0)
    {
      goto LABEL_27;
    }

    v48 = v44;
    v49 = v19;
    v50 = *v47;
    v41[27] = v42 + 1;
    v51 = v41[26];
    swift_unknownObjectRetain(v50);
    v52 = [v51 &sel:v50 objectForKey:?];
    if (!v52)
    {
LABEL_28:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v53 = v52;
    if (_swift_isClassOrObjCExistentialType(a3, a3))
    {
      v86 = v50;
      swift_dynamicCast(v84, &v86, v44 + 1, a3, 7uLL, v54, v55, v56, v65);
    }

    else
    {
      v61 = v79;
      (*v74)(v79, 1, 1, a3);
      _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v50, a3, v61);
      v62 = v76;
      (*v73)(v76, v79, v78);
      if ((*v72)(v62, 1, a3) == 1)
      {
        goto LABEL_29;
      }

      swift_unknownObjectRelease(v50);
      (*v71)(v79, v78);
      (*v70)(v84, v76, a3);
      v44 = v48;
    }

    if (_swift_isClassOrObjCExistentialType(a4, a4))
    {
      v86 = v53;
      swift_dynamicCast(v85, &v86, v44 + 1, a4, 7uLL, v57, v58, v59, v65);
    }

    else
    {
      (*v69)(v49, 1, 1, a4);
      _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v53, a4, v49);
      v63 = v75;
      (*v68)(v75, v49, v77);
      if ((*v67)(v63, 1, a4) == 1)
      {
LABEL_29:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      swift_unknownObjectRelease(v53);
      (*v66)(v49, v77);
      (*v80)(v85, v63, a4);
      v44 = v48;
    }

    v60 = v39[1].u64[0];
    if (v39[1].i64[1] <= v60)
    {
      type metadata accessor for _NativeDictionary(0, a3, a4, a5);
      _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v60 + 1, 1);
    }

    v39 = v87;
    _NativeDictionary._unsafeInsertNew(key:value:)(v84, v85, v87, a3, a4, a5);
    v42 = *v83;
    v19 = v49;
    if ((*v83 & 0x8000000000000000) != 0)
    {
      goto LABEL_24;
    }
  }

  v41[27] = -1;
LABEL_24:
  v41;
  return v39;
}

uint64_t _NativeDictionary.startIndex.getter(uint64_t a1)
{
  v1 = 0;
  v2 = (a1 + 64);
  v3 = -1 << *(a1 + 32);
  v4 = -v3;
  v5 = (63 - v3) >> 6;
  while (1)
  {
    v7 = *v2++;
    v6 = v7;
    if (v7)
    {
      break;
    }

    v1 -= 64;
    if (!--v5)
    {
      return v4;
    }
  }

  return __clz(__rbit64(v6)) - v1;
}

Swift::Int _NativeDictionary.index(after:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, Class *a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a5 - 1);
  v12 = MEMORY[0x1EEE9AC00](a1, a2);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v15)
  {
    v27 = v12;
    if (v12 >= 0)
    {
      v16 = (v12 & 0xFFFFFFFFFFFFFF8);
    }

    else
    {
      v16 = v12;
    }

    v17 = type metadata accessor for __CocoaDictionary.Index.Storage();
    if (!swift_dynamicCastClass(v16, v17))
    {
      goto LABEL_21;
    }

    if (*(a4 + 36) == specialized static Hasher._hash(seed:_:)(0, v16[2]))
    {
      if (!swift_dynamicCastClass(v16, v17))
      {
        goto LABEL_21;
      }

      v18 = v16[3];
      if (*(v18 + 16) <= a2)
      {
        goto LABEL_20;
      }

      v19 = *(v18 + 8 * a2 + 24);
      v20 = swift_unknownObjectRetain(v19);
      _forceBridgeFromObjectiveC<A>(_:_:)(v20, a5, v14, v21);
      swift_unknownObjectRelease(v19);
      __RawDictionaryStorage.find<A>(_:)(v14, a5, a7);
      v23 = v22;
      (*(v11 + 8))(v14, a5);
      if (v23)
      {
        if (swift_dynamicCastClass(v16, v17))
        {
          v24 = v16[2];
          swift_unknownObjectRetain(v24);
          if (swift_dynamicCastClass(v16, v17))
          {
            if (*(v16[3] + 16) > a2)
            {
              v27;
              swift_unknownObjectRelease(v24);
              return v27;
            }

LABEL_20:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }
        }

LABEL_21:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

LABEL_19:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v12 < 0 || -(-1 << *(a4 + 32)) <= v12 || ((*(a4 + 64 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v12) & 1) == 0 || *(a4 + 36) != a2)
  {
    goto LABEL_19;
  }

  return _HashTable.occupiedBucket(after:)(v12).offset;
}

unint64_t _NativeDictionary.index(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  result = __RawDictionaryStorage.find<A>(_:)(a1, a3, a5);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t _NativeDictionary.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  __RawDictionaryStorage.find<A>(_:)(a1, a3, a5);
  return v5 & 1;
}

uint64_t _NativeDictionary.lookup(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (*(a2 + 16) && (v9 = __RawDictionaryStorage.find<A>(_:)(a1, a3, a5), (v10 & 1) != 0))
  {
    v15 = *(a4 - 8);
    (*(v15 + 16))(a6, *(a2 + 56) + *(v15 + 72) * v9, a4);
    v11 = v15;
    v12 = 0;
  }

  else
  {
    v11 = *(a4 - 8);
    v12 = 1;
  }

  v13 = *(v11 + 56);

  return v13(a6, v12, 1, a4);
}

uint64_t _NativeDictionary.lookup(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, Class *a7, uint64_t a8, uint64_t a9)
{
  v15 = *(a7 - 1);
  v16 = MEMORY[0x1EEE9AC00](a1, a2);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v19)
  {
    v20 = v16;
    if (a3 >= 0)
    {
      a3 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v21 = type metadata accessor for __CocoaDictionary.Index.Storage();
    if (!swift_dynamicCastClass(a3, v21))
    {
      goto LABEL_17;
    }

    if (*(a6 + 36) != specialized static Hasher._hash(seed:_:)(0, *(a3 + 16)))
    {
      goto LABEL_15;
    }

    if (!swift_dynamicCastClass(a3, v21))
    {
LABEL_17:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v22 = *(a3 + 24);
    if (*(v22 + 16) <= a4)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v23 = *(v22 + 8 * a4 + 24);
    v24 = swift_unknownObjectRetain(v23);
    _forceBridgeFromObjectiveC<A>(_:_:)(v24, a7, v18, v25);
    swift_unknownObjectRelease(v23);
    a3 = __RawDictionaryStorage.find<A>(_:)(v18, a7, a9);
    LOBYTE(v23) = v26;
    (*(v15 + 8))(v18, a7);
    if (v23)
    {
      v16 = v20;
      goto LABEL_14;
    }

LABEL_15:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a3 < 0 || 1 << *(a6 + 32) <= a3 || ((*(a6 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0 || *(a6 + 36) != a4)
  {
    goto LABEL_15;
  }

LABEL_14:
  (*(v15 + 16))(v16, *(a6 + 48) + *(v15 + 72) * a3, a7);
  return (*(*(a8 - 8) + 16))(a2, *(a6 + 56) + *(*(a8 - 8) + 72) * a3, a8);
}

uint64_t _NativeDictionary.key(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, Class *a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v11 = *(a4 - 1);
  v12 = MEMORY[0x1EEE9AC00](a1, a2);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v15)
  {
    if (v12 >= 0)
    {
      v16 = (v12 & 0xFFFFFFFFFFFFFF8);
    }

    else
    {
      v16 = v12;
    }

    v17 = type metadata accessor for __CocoaDictionary.Index.Storage();
    if (!swift_dynamicCastClass(v16, v17))
    {
      goto LABEL_18;
    }

    if (*(a3 + 36) != specialized static Hasher._hash(seed:_:)(0, v16[2]))
    {
      goto LABEL_16;
    }

    if (!swift_dynamicCastClass(v16, v17))
    {
LABEL_18:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v18 = v16[3];
    if (*(v18 + 16) <= a2)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v19 = *(v18 + 8 * a2 + 24);
    v20 = swift_unknownObjectRetain(v19);
    _forceBridgeFromObjectiveC<A>(_:_:)(v20, a4, v14, v21);
    swift_unknownObjectRelease(v19);
    v22 = __RawDictionaryStorage.find<A>(_:)(v14, a4, a5);
    v24 = v23;
    (*(v11 + 8))(v14, a4);
    if (v24)
    {
      v12 = v22;
      return (*(v11 + 16))(a6, *(a3 + 48) + *(v11 + 72) * v12, a4);
    }

LABEL_16:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v12 < 0 || 1 << *(a3 + 32) <= v12 || ((*(a3 + 8 * (v12 >> 6) + 64) >> v12) & 1) == 0 || *(a3 + 36) != a2)
  {
    goto LABEL_16;
  }

  return (*(v11 + 16))(a6, *(a3 + 48) + *(v11 + 72) * v12, a4);
}

uint64_t _NativeDictionary.value(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, Class *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v13 = *(a4 - 1);
  v14 = MEMORY[0x1EEE9AC00](a1, a2);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v17)
  {
    if (v14 >= 0)
    {
      v18 = (v14 & 0xFFFFFFFFFFFFFF8);
    }

    else
    {
      v18 = v14;
    }

    v19 = type metadata accessor for __CocoaDictionary.Index.Storage();
    if (!swift_dynamicCastClass(v18, v19))
    {
      goto LABEL_18;
    }

    if (*(a3 + 36) != specialized static Hasher._hash(seed:_:)(0, v18[2]))
    {
      goto LABEL_16;
    }

    if (!swift_dynamicCastClass(v18, v19))
    {
LABEL_18:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v20 = v18[3];
    if (*(v20 + 16) <= a2)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v21 = *(v20 + 8 * a2 + 24);
    v22 = swift_unknownObjectRetain(v21);
    _forceBridgeFromObjectiveC<A>(_:_:)(v22, a4, v16, v23);
    swift_unknownObjectRelease(v21);
    v24 = __RawDictionaryStorage.find<A>(_:)(v16, a4, a6);
    LOBYTE(v21) = v25;
    (*(v13 + 8))(v16, a4);
    if (v21)
    {
      v14 = v24;
      return (*(*(a5 - 8) + 16))(a7, *(a3 + 56) + *(*(a5 - 8) + 72) * v14, a5);
    }

LABEL_16:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v14 < 0 || 1 << *(a3 + 32) <= v14 || ((*(a3 + 8 * (v14 >> 6) + 64) >> v14) & 1) == 0 || *(a3 + 36) != a2)
  {
    goto LABEL_16;
  }

  return (*(*(a5 - 8) + 16))(a7, *(a3 + 56) + *(*(a5 - 8) + 72) * v14, a5);
}

void (*_NativeDictionary.subscript.modify(void *a1, uint64_t a2, char a3, Class *a4))(uint64_t a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc(0x90, 0x6BB9uLL);
  }

  else
  {
    v8 = malloc(0x90uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a2;
  v8[1] = v4;
  v10 = a4[2];
  v8[2] = v10;
  v43 = v10;
  v11 = *(v10 - 8);
  v8[3] = v11;
  v12 = *(v11 + 64);
  if (swift_coroFrameAlloc)
  {
    v13 = swift_coroFrameAlloc(v12, 0x6BB9uLL);
  }

  else
  {
    v13 = malloc(v12);
  }

  v9[4] = v13;
  v14 = a4[3];
  v9[5] = v14;
  v15 = *(v14 - 8);
  v16 = v15;
  v9[6] = v15;
  v17 = *(v15 + 64);
  if (swift_coroFrameAlloc)
  {
    v9[7] = swift_coroFrameAlloc(v17, 0x6BB9uLL);
    v9[8] = swift_coroFrameAlloc(v17, 0x6BB9uLL);
    v18 = swift_coroFrameAlloc(v17, 0x6BB9uLL);
  }

  else
  {
    v9[7] = malloc(v17);
    v9[8] = malloc(v17);
    v18 = malloc(v17);
  }

  v9[9] = v18;
  v21 = type metadata accessor for Optional(0, v14, v19, v20);
  v9[10] = v21;
  v22 = *(v21 - 8);
  v9[11] = v22;
  v23 = *(v22 + 64);
  if (swift_coroFrameAlloc)
  {
    v9[12] = swift_coroFrameAlloc(v23, 0x6BB9uLL);
    v9[13] = swift_coroFrameAlloc(v23, 0x6BB9uLL);
    v24 = swift_coroFrameAlloc(v23, 0x6BB9uLL);
  }

  else
  {
    v9[12] = malloc(v23);
    v9[13] = malloc(v23);
    v24 = malloc(v23);
  }

  v25 = v24;
  v9[14] = v24;
  v42 = v4;
  v26 = *v4;
  v27 = a4;
  v28 = a4[4];
  v9[15] = v28;
  v29 = a2;
  v31 = __RawDictionaryStorage.find<A>(_:)(a2, v43, v28);
  *(v9 + 136) = v30 & 1;
  v32 = *(v26 + 16);
  v33 = (v30 & 1) == 0;
  v34 = v32 + v33;
  if (__OFADD__(v32, v33))
  {
    __break(1u);
    goto LABEL_26;
  }

  v35 = v30;
  v36 = *(v26 + 24);
  if (v36 >= v34 && (a3 & 1) != 0)
  {
    goto LABEL_21;
  }

  if (v36 >= v34 && (a3 & 1) == 0)
  {
    _NativeDictionary.copy()();
    goto LABEL_21;
  }

  _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, a3 & 1);
  v27 = v43;
  v37 = __RawDictionaryStorage.find<A>(_:)(v29, v43, v28);
  if ((v35 & 1) != (v38 & 1))
  {
LABEL_26:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v27);
  }

  v31 = v37;
LABEL_21:
  v9[16] = v31;
  if (v35)
  {
    (*(v16 + 32))(v25, *(*v42 + 56) + *(v16 + 72) * v31, v14);
    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  (*(v16 + 56))(v25, v39, 1, v14);
  return _NativeDictionary.subscript.modify;
}

void _NativeDictionary.subscript.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 80);
  v5 = *(*(*a1 + 88) + 16);
  v6 = *(*a1 + 40);
  v7 = (*(*a1 + 48) + 48);
  v8 = *(*a1 + 112);
  if ((a2 & 1) == 0)
  {
    v12 = v3[13];
    v5(v12, v8, v4);
    v13 = (*v7)(v12, 1, v6);
    v14 = *(v3 + 136);
    if (v13 == 1)
    {
      (*(v3[11] + 8))(v3[13], v3[10]);
      if ((v14 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_7;
    }

    v20 = v3[1];
    v21 = *(v3[6] + 32);
    v21(v3[9], v3[13], v3[5]);
    v18 = *v20;
    v22 = v3[16];
    v23 = v3[9];
    if (v14)
    {
      v21(v18[7] + *(v3[6] + 72) * v22, v3[9], v3[5]);
      goto LABEL_15;
    }

    v32 = v3[8];
    v33 = v3[4];
    v26 = v3[5];
    v28 = v3[2];
    (*(v3[3] + 16))(v33, *v3, v28);
    v21(v32, v23, v26);
    v29 = v22;
    v30 = v33;
    v31 = v32;
LABEL_14:
    _NativeDictionary._insert(at:key:value:)(v29, v30, v31, v18, v28, v26);
    goto LABEL_15;
  }

  v9 = v3[12];
  v5(v9, v8, v4);
  v10 = (*v7)(v9, 1, v6);
  v11 = *(v3 + 136);
  if (v10 != 1)
  {
    v16 = v3[1];
    v17 = *(v3[6] + 32);
    v17(v3[7], v3[12], v3[5]);
    v18 = *v16;
    v19 = v3[16];
    if (v11)
    {
      v17(v18[7] + *(v3[6] + 72) * v19, v3[7], v3[5]);
      goto LABEL_15;
    }

    v25 = v3[7];
    v24 = v3[8];
    v27 = v3[4];
    v26 = v3[5];
    v28 = v3[2];
    (*(v3[3] + 16))(v27, *v3, v28);
    v17(v24, v25, v26);
    v29 = v19;
    v30 = v27;
    v31 = v24;
    goto LABEL_14;
  }

  (*(v3[11] + 8))(v3[12], v3[10]);
  if (v11)
  {
LABEL_7:
    v15.offset = v3[16];
    (*(v3[3] + 8))(*(*v3[1] + 48) + *(v3[3] + 72) * v15.offset, v3[2]);
    _NativeDictionary._delete(at:)(v15);
  }

LABEL_15:
  v34 = v3[13];
  v35 = v3[14];
  v36 = v3[12];
  v37 = v3[9];
  v39 = v3[7];
  v38 = v3[8];
  v40 = v3[4];
  (*(v3[11] + 8))(v35, v3[10]);
  free(v35);
  free(v34);
  free(v36);
  free(v37);
  free(v38);
  free(v39);
  free(v40);

  free(v3);
}

uint64_t Dictionary._Variant.subscript.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = Dictionary._Variant.subscript.modify(v13, a2, a3);
  v8 = v7;
  v11 = type metadata accessor for Optional(0, a3[3], v9, v10);
  (*(*(v11 - 8) + 40))(v8, a1, v11);
  (v6)(v13, 0);
  return (*(*(a3[2] - 8) + 8))(a2);
}

unint64_t specialized _NativeDictionary.mutatingFind(_:isUnique:)(unint64_t a1, unint64_t a2, uint64_t a3)
{
  return specialized _NativeDictionary.mutatingFind(_:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));
}

{
  return specialized _NativeDictionary.mutatingFind(_:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));
}

{
  return specialized _NativeDictionary.mutatingFind(_:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));
}

unint64_t specialized _NativeDictionary.mutatingFind(_:isUnique:)(unint64_t a1, unint64_t a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void))
{
  v11 = *v5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_10;
  }

  v18 = v13;
  v19 = *(v11 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      v20 = result;
      a4();
      return v20;
    }

    a5(v17, a3 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if ((v18 & 1) != (v21 & 1))
    {
LABEL_10:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String);
    }
  }

  return result;
}

unint64_t specialized _NativeDictionary.mutatingFind(_:isUnique:)(void *a1, uint64_t a2)
{
  return specialized _NativeDictionary.mutatingFind(_:isUnique:)(a1, a2, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));
}

{
  return specialized _NativeDictionary.mutatingFind(_:isUnique:)(a1, a2, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));
}

unint64_t specialized _NativeDictionary.mutatingFind(_:isUnique:)(void *a1, char a2, void (*a3)(void), void (*a4)(uint64_t, void))
{
  v9 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_10;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a2 & 1) == 0)
  {
    if (v17 >= v15 && (a2 & 1) == 0)
    {
      v18 = result;
      a3();
      return v18;
    }

    a4(v15, a2 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if ((v16 & 1) != (v19 & 1))
    {
LABEL_10:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for AnyHashable);
    }
  }

  return result;
}

unint64_t _NativeDictionary.mutatingFind(_:isUnique:)(uint64_t a1, char a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *(a3 + 16);
  v8 = *(a3 + 32);
  result = __RawDictionaryStorage.find<A>(_:)(a1, v7, v8);
  v11 = *(v6 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_10;
  }

  v15 = v10;
  v16 = *(v6 + 24);
  if (v16 < v14 || (a2 & 1) == 0)
  {
    if (v16 >= v14 && (a2 & 1) == 0)
    {
      v17 = result;
      _NativeDictionary.copy()();
      return v17;
    }

    _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a2 & 1);
    result = __RawDictionaryStorage.find<A>(_:)(a1, v7, v8);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_10:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v7);
    }
  }

  return result;
}

int64x2_t *specialized _NativeDictionary.copy()()
{
  v1 = *v0;
  v2 = _ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZSS_SSTt2g5(*(*v0 + 32), *(*v0 + 36), *(*v0 + 40), 0);
  v3 = v2;
  if (*(v1 + 16))
  {
    result = v2 + 4;
    v5 = ((1 << v3[2].i8[0]) + 63) >> 6;
    if (v3 != v1 || result >= v1 + 64 + 8 * v5)
    {
      result = memmove(result, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    v3[1].i64[0] = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = 16 * (v13 | (v7 << 6));
        v17 = (*(v1 + 48) + v16);
        v19 = *v17;
        v18 = v17[1];
        v20 = (*(v1 + 56) + v16);
        v21 = *v20;
        v22 = v20[1];
        v23 = (v3[3].i64[0] + v16);
        *v23 = v19;
        v23[1] = v18;
        v24 = (v3[3].i64[1] + v16);
        *v24 = v21;
        v24[1] = v22;
        v18;
        result = v22;
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    result = v1;
    *v0 = v3;
  }

  return result;
}

{
  v1 = *v0;
  v2 = *(*v0 + 36);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  LOBYTE(v30[0]) = 0;
  v5 = _ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZSS_s11AnyHashableVTt2g5(v4, v2, v3, 0);
  v6 = v5;
  if (*(v1 + 16))
  {
    result = v5 + 4;
    v8 = ((1 << v6[2].i8[0]) + 63) >> 6;
    if (v6 != v1 || result >= v1 + 64 + 8 * v8)
    {
      result = memmove(result, (v1 + 64), 8 * v8);
    }

    v10 = 0;
    v29 = v6;
    v6[1].i64[0] = *(v1 + 16);
    v11 = 1 << *(v1 + 32);
    v12 = *(v1 + 64);
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
        v20 = 16 * v19;
        v21 = (*(v1 + 48) + 16 * v19);
        v23 = *v21;
        v22 = v21[1];
        v24 = 40 * v19;
        outlined init with copy of AnyHashable(*(v1 + 56) + 40 * v19, v30);
        v25 = (v29[3].i64[0] + v20);
        *v25 = v23;
        v25[1] = v22;
        v26 = v29[3].i64[1] + v24;
        v27 = v31;
        v28 = v30[1];
        *v26 = v30[0];
        *(v26 + 16) = v28;
        *(v26 + 32) = v27;
        result = v22;
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
        result = v1;
        v6 = v29;
        goto LABEL_21;
      }

      v18 = *(v1 + 64 + 8 * v10);
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
    result = v1;
LABEL_21:
    *v0 = v6;
  }

  return result;
}

{
  v1 = *v0;
  v2 = *(*v0 + 36);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  LOBYTE(v27[0]) = 0;
  v5 = _ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZSS_ypTt2g5(v4, v2, v3, 0);
  v6 = v5;
  if (*(v1 + 16))
  {
    result = v5 + 4;
    v8 = ((1 << v6[2].i8[0]) + 63) >> 6;
    if (v6 != v1 || result >= v1 + 64 + 8 * v8)
    {
      result = memmove(result, (v1 + 64), 8 * v8);
    }

    v10 = 0;
    v26 = v6;
    v6[1].i64[0] = *(v1 + 16);
    v11 = 1 << *(v1 + 32);
    v12 = *(v1 + 64);
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
        v20 = 16 * v19;
        v21 = (*(v1 + 48) + 16 * v19);
        v23 = *v21;
        v22 = v21[1];
        v24 = 32 * v19;
        outlined init with copy of Any(*(v1 + 56) + 32 * v19, v27);
        v25 = (v26[3].i64[0] + v20);
        *v25 = v23;
        v25[1] = v22;
        outlined init with take of Any(v27, (v26[3].i64[1] + v24));
        result = v22;
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
        result = v1;
        v6 = v26;
        goto LABEL_21;
      }

      v18 = *(v1 + 64 + 8 * v10);
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
    result = v1;
LABEL_21:
    *v0 = v6;
  }

  return result;
}

{
  v1 = *v0;
  v2 = *(*v0 + 36);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  LOBYTE(v27[0]) = 0;
  v5 = _ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZs11AnyHashableV_SSTt2g5(v4, v2, v3, 0);
  v6 = v5;
  if (*(v1 + 16))
  {
    result = v5 + 4;
    v8 = ((1 << v6[2].i8[0]) + 63) >> 6;
    if (v6 != v1 || result >= v1 + 64 + 8 * v8)
    {
      result = memmove(result, (v1 + 64), 8 * v8);
    }

    v10 = 0;
    v6[1].i64[0] = *(v1 + 16);
    v11 = 1 << *(v1 + 32);
    v12 = *(v1 + 64);
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
        outlined init with copy of AnyHashable(*(v1 + 48) + 40 * v19, v27);
        v20 = (*(v1 + 56) + 16 * v19);
        v22 = *v20;
        v21 = v20[1];
        v23 = v6[3].i64[0] + 40 * v19;
        v24 = v28;
        v25 = v27[1];
        *v23 = v27[0];
        *(v23 + 16) = v25;
        *(v23 + 32) = v24;
        v26 = (v6[3].i64[1] + 16 * v19);
        *v26 = v22;
        v26[1] = v21;
        result = v21;
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

      v18 = *(v1 + 64 + 8 * v10);
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
    result = v1;
    *v0 = v6;
  }

  return result;
}

{
  v1 = *v0;
  v2 = *(*v0 + 36);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  LOBYTE(v25[0]) = 0;
  v5 = _ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZs11AnyHashableV_ypTt2g5(v4, v2, v3, 0);
  v6 = v5;
  if (*(v1 + 16))
  {
    result = v5 + 4;
    v8 = ((1 << v6[2].i8[0]) + 63) >> 6;
    if (v6 != v1 || result >= v1 + 64 + 8 * v8)
    {
      result = memmove(result, (v1 + 64), 8 * v8);
    }

    v10 = 0;
    v6[1].i64[0] = *(v1 + 16);
    v11 = 1 << *(v1 + 32);
    v12 = *(v1 + 64);
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
        v20 = 40 * v19;
        outlined init with copy of AnyHashable(*(v1 + 48) + 40 * v19, v25);
        v19 *= 32;
        outlined init with copy of Any(*(v1 + 56) + v19, v24);
        v21 = v6[3].i64[0] + v20;
        v22 = v25[0];
        v23 = v25[1];
        *(v21 + 32) = v26;
        *v21 = v22;
        *(v21 + 16) = v23;
        result = outlined init with take of Any(v24, (v6[3].i64[1] + v19));
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

      v18 = *(v1 + 64 + 8 * v10);
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
    result = v1;
    *v0 = v6;
  }

  return result;
}

{
  v1 = *v0;
  v2 = _ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZSS_SiTt2g5(*(*v0 + 32), *(*v0 + 36), *(*v0 + 40), 0);
  v3 = v2;
  if (*(v1 + 16))
  {
    result = v2 + 4;
    v5 = ((1 << v3[2].i8[0]) + 63) >> 6;
    if (v3 != v1 || result >= v1 + 64 + 8 * v5)
    {
      result = memmove(result, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    v3[1].i64[0] = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = v13 | (v7 << 6);
        v17 = (*(v1 + 48) + 16 * v16);
        v19 = *v17;
        v18 = v17[1];
        v20 = *(*(v1 + 56) + 8 * v16);
        v21 = (v3[3].i64[0] + 16 * v16);
        *v21 = v19;
        v21[1] = v18;
        *(v3[3].i64[1] + 8 * v16) = v20;
        result = v18;
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    result = v1;
    *v0 = v3;
  }

  return result;
}

int64x2_t *specialized _NativeDictionary.copy()(uint64_t (*a1)(void))
{
  v2 = *v1;
  v3 = _ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZSO_SiTt2g5Tm(*(*v1 + 32), *(*v1 + 36), *(*v1 + 40), 0, a1);
  v4 = v3;
  if (*(v2 + 16))
  {
    result = v3 + 4;
    v6 = ((1 << v4[2].i8[0]) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    v4[1].i64[0] = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v4[3].i64[1] + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(v4[3].i64[0] + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    result = v2;
    *v1 = v4;
  }

  return result;
}

int64x2_t *specialized _NativeDictionary.copy()(uint64_t a1, uint64_t a2)
{
  v44 = *(*(a1 + 16) - 8);
  v3 = MEMORY[0x1EEE9AC00](a1, a2);
  v41 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v5;
  v6 = *v2;
  v7 = *(*v2 + 36);
  v8 = *(*v2 + 40);
  v9 = *(v3 + 32);
  v10 = *(*v2 + 32);
  v46 = 0;
  v11 = specialized static _DictionaryStorage.allocate(scale:age:seed:)(v10, v7, v8, 0, v5, v9);
  v12 = v11;
  if (*(v6 + 16))
  {
    result = v11 + 4;
    v14 = ((1 << v12[2].i8[0]) + 63) >> 6;
    v36 = v2;
    v37 = (v6 + 64);
    if (v12 != v6 || result >= v6 + 64 + 8 * v14)
    {
      result = memmove(result, v37, 8 * v14);
    }

    v16 = 0;
    v17 = *(v6 + 16);
    v43 = v12;
    v12[1].i64[0] = v17;
    v18 = 1 << *(v6 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v6 + 64);
    v21 = (v18 + 63) >> 6;
    v38 = v44 + 32;
    v39 = v44 + 16;
    v40 = v6;
    if (v20)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
LABEL_17:
        v25 = v22 | (v16 << 6);
        v26 = v44;
        v27 = *(v44 + 72) * v25;
        v29 = v41;
        v28 = v42;
        (*(v44 + 16))(v41, *(v6 + 48) + v27, v42);
        v25 *= 16;
        v30 = *(v6 + 56) + v25;
        v31 = *v30;
        v32 = *(v30 + 8);
        v33 = v43;
        result = (*(v26 + 32))(v43[3].i64[0] + v27, v29, v28);
        v34 = v33[3].i64[1] + v25;
        *v34 = v31;
        v6 = v40;
        *(v34 + 8) = v32;
        v20 = v45;
      }

      while (v45);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {
        result = v6;
        v2 = v36;
        v12 = v43;
        goto LABEL_21;
      }

      v24 = *(v37 + v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v45 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    result = v6;
LABEL_21:
    *v2 = v12;
  }

  return result;
}

Swift::Void __swiftcall _NativeDictionary.copy()()
{
  v2 = v1;
  v56 = *(*(v0 + 24) - 8);
  v3 = (MEMORY[0x1EEE9AC00])();
  v52 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v3 + 16);
  v55 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v50 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v8;
  v9 = *(v6 + 32);
  v53 = v10;
  type metadata accessor for _DictionaryStorage(0, v8, v10, v9);
  v11 = *v1;
  v12 = (*v1)[2].u32[1];
  v13 = (*v1)[2].i64[1];
  v14 = (*v1)[2].u8[0];
  v58 = 0;
  v15 = static _DictionaryStorage.allocate(scale:age:seed:)(v14, v12, v13, 0);
  v16 = v15;
  if (*(v11 + 16))
  {
    v17 = v15 + 4;
    v18 = ((1 << v16[2].i8[0]) + 63) >> 6;
    v42 = v2;
    v43 = (v11 + 64);
    if (v16 != v11 || v17 >= v11 + 64 + 8 * v18)
    {
      memmove(v17, v43, 8 * v18);
    }

    v20 = 0;
    v21 = *(v11 + 16);
    v54 = v16;
    v16[1].i64[0] = v21;
    v22 = 1 << *(v11 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & *(v11 + 64);
    v25 = (v22 + 63) >> 6;
    v47 = v55 + 16;
    v48 = v25;
    v45 = v55 + 32;
    v46 = v56 + 16;
    v44 = v56 + 32;
    v49 = v11;
    v27 = v50;
    v26 = v51;
    if (v24)
    {
      do
      {
        v28 = __clz(__rbit64(v24));
        v57 = (v24 - 1) & v24;
LABEL_17:
        v31 = v28 | (v20 << 6);
        v32 = v55;
        v33 = *(v55 + 72) * v31;
        (*(v55 + 16))(v27, *(v11 + 48) + v33, v26);
        v34 = v56;
        v35 = *(v56 + 72) * v31;
        v36 = *(v11 + 56) + v35;
        v37 = v52;
        v38 = v53;
        (*(v56 + 16))(v52, v36, v53);
        v39 = v54;
        (*(v32 + 32))(v54[3].i64[0] + v33, v27, v26);
        v40 = v38;
        v11 = v49;
        (*(v34 + 32))(v39[3].i64[1] + v35, v37, v40);
        v25 = v48;
        v24 = v57;
      }

      while (v57);
    }

    v29 = v20;
    while (1)
    {
      v20 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v20 >= v25)
      {
        v11;
        v2 = v42;
        v16 = v54;
        goto LABEL_21;
      }

      v30 = *(v43 + v20);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v57 = (v30 - 1) & v30;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    v11;
LABEL_21:
    *v2 = v16;
  }
}

uint64_t _NativeDictionary.updateValue(_:forKey:isUnique:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v37 = a1;
  v38 = a5;
  v10 = *(a4 + 16);
  v36 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v5;
  v15 = *(v14 + 32);
  v18 = __RawDictionaryStorage.find<A>(_:)(v16, v10, v15);
  v19 = v13[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = v13[3];
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      _NativeDictionary.copy()();
      goto LABEL_7;
    }

    _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v21, a3 & 1);
    v32 = __RawDictionaryStorage.find<A>(_:)(a2, v10, v15);
    if ((v22 & 1) == (v33 & 1))
    {
      v18 = v32;
      v24 = *v6;
      if (v22)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v36 + 16))(v12, a2, v10);
      v34 = *(a4 + 24);
      _NativeDictionary._insert(at:key:value:)(v18, v12, v37, v24, v10, v34);
      return (*(*(v34 - 8) + 56))(v38, 1, 1, v34);
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v10);
  }

LABEL_7:
  v24 = *v6;
  if ((v22 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v25 = v24[7];
  v26 = *(a4 + 24);
  v36 = *(v26 - 8);
  v27 = *(v36 + 72) * v18;
  v28 = *(v36 + 32);
  v29 = v38;
  v28(v38, v25 + v27, v26);
  v28(v24[7] + v27, v37, v26);
  v30 = *(v36 + 56);

  return v30(v29, 0, 1, v26);
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, unint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String);
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);

    return outlined init with take of Any(a1, v22);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);

    return a3;
  }
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      outlined init with copy of AnyHashable(a2, v21);
      return specialized _NativeDictionary._insert(at:key:value:)(v10, v21, a1, v16);
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for AnyHashable);
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);

  return outlined init with take of Any(a1, v17);
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for AnyHashable);
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 < v15 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4 & 1);
      v21 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
      if ((v16 & 1) != (v22 & 1))
      {
        goto LABEL_17;
      }

      v12 = v21;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    specialized _NativeDictionary.copy()();
  }

  v18 = *v5;
  if ((v16 & 1) == 0)
  {
LABEL_13:
    outlined init with copy of AnyHashable(a3, v30);
    v18[(v12 >> 6) + 8] |= 1 << v12;
    v23 = v18[6] + 40 * v12;
    v24 = v31;
    v25 = v30[1];
    *v23 = v30[0];
    *(v23 + 16) = v25;
    *(v23 + 32) = v24;
    v26 = (v18[7] + 16 * v12);
    *v26 = a1;
    v26[1] = a2;
    v27 = v18[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (!v28)
    {
      v18[2] = v29;
      return;
    }

    goto LABEL_16;
  }

LABEL_8:
  v19 = (v18[7] + 16 * v12);
  v20 = v19[1];
  *v19 = a1;
  v19[1] = a2;

  v20;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__int128 *a1, unint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;

    return outlined assign with take of AnyHashable(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = v21[7] + 40 * v11;
  v26 = *a1;
  v27 = a1[1];
  *(v25 + 32) = *(a1 + 4);
  *v25 = v26;
  *(v25 + 16) = v27;
  v28 = v21[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String);
  }

  v21[2] = v29;

  return a3;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    v25 = v24[1];
    *v24 = a1;
    v24[1] = a2;

    v25;
    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String);
  }

  v23[2] = v29;

  a4;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void), void (*a6)(uint64_t, void), Class *a7)
{
  v12 = v7;
  v16 = *v7;
  result = a4(a2);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_13;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a3 & 1) == 0)
  {
    if (v24 < v22 || (a3 & 1) != 0)
    {
      a6(v22, a3 & 1);
      result = a4(a2);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_14;
      }
    }

    else
    {
      a7 = result;
      specialized _NativeDictionary.copy()(a5);
      result = a7;
    }
  }

  v26 = *v12;
  if (v23)
  {
    *(v26[7] + 8 * result) = a1;
    return result;
  }

  v26[(result >> 6) + 8] |= 1 << result;
  *(v26[6] + 8 * result) = a2;
  *(v26[7] + 8 * result) = a1;
  v27 = v26[2];
  v21 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v21)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(a7);
  }

  v26[2] = v28;
  return result;
}

uint64_t _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  v9 = *(a4 + 16);
  v32 = *(v9 - 1);
  v33 = a1;
  MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v4;
  v14 = *(v13 + 32);
  v17 = __RawDictionaryStorage.find<A>(_:)(v15, v9, v14);
  v18 = v12[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = v12[3];
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      _NativeDictionary.copy()();
      goto LABEL_9;
    }

    _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a3 & 1);
    v23 = __RawDictionaryStorage.find<A>(_:)(a2, v9, v14);
    if ((v21 & 1) == (v24 & 1))
    {
      v17 = v23;
      goto LABEL_9;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v9);
  }

LABEL_9:
  v25 = v33;
  v26 = *v5;
  if (v21)
  {
    v27 = *(*(a4 + 24) - 8);
    v28 = *(v27 + 40);
    v29 = v26[7] + *(v27 + 72) * v17;
    v30 = v33;

    return v28(v29, v30);
  }

  else
  {
    (*(v32 + 16))(v11, a2, v9);
    return _NativeDictionary._insert(at:key:value:)(v17, v11, v25, v26, v9, *(a4 + 24));
  }
}

uint64_t specialized _NativeDictionary.uncheckedRemove(at:isUnique:)(void *a1, Swift::Int a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v13 = a1;
    specialized _NativeDictionary.copy()();
    a1 = v13;
  }

  v5 = *v3;
  v6 = *(*v3 + 56);
  v7 = *(*(*v3 + 48) + 16 * a2);
  v8 = (v6 + 16 * a2);
  v10 = *v8;
  v9 = v8[1];
  *a1 = v10;
  a1[1] = v9;
  v11.offset = a2;
  specialized _NativeDictionary._delete(at:)(v11, v5);
  return v7;
}

uint64_t specialized _NativeDictionary.uncheckedRemove(at:isUnique:)(uint64_t a1, Swift::Int a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v12 = a1;
    specialized _NativeDictionary.copy()();
    a1 = v12;
  }

  v5 = *v3;
  v6 = *(*v3 + 56);
  v7 = *(*(*v3 + 48) + 16 * a2);
  v8 = v6 + 40 * a2;
  v9 = *(v8 + 16);
  *a1 = *v8;
  *(a1 + 16) = v9;
  *(a1 + 32) = *(v8 + 32);
  v10.offset = a2;
  specialized _NativeDictionary._delete(at:)(v10, v5);
  return v7;
}

uint64_t specialized _NativeDictionary.uncheckedRemove(at:isUnique:)(_OWORD *a1, Swift::Int a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
  }

  v6 = *v3;
  v7 = *(*(v6 + 48) + 16 * a2);
  outlined init with take of Any((*(v6 + 56) + 32 * a2), a1);
  v8.offset = a2;
  specialized _NativeDictionary._delete(at:)(v8, v6);
  return v7;
}

uint64_t specialized _NativeDictionary.uncheckedRemove(at:isUnique:)(uint64_t a1, Swift::_HashTable::Bucket before, char a3)
{
  if ((a3 & 1) == 0)
  {
    v12 = a1;
    specialized _NativeDictionary.copy()();
    a1 = v12;
  }

  v5 = *v3;
  v6 = *(*v3 + 56);
  v7 = *(*v3 + 48) + 40 * before.offset;
  v8 = *(v7 + 16);
  *a1 = *v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = *(v7 + 32);
  v9 = *(v6 + 16 * before.offset);
  v10.offset = before.offset;
  specialized _NativeDictionary._delete(at:)(v10, v5);
  return v9;
}

Swift::Int specialized _NativeDictionary.uncheckedRemove(at:isUnique:)(uint64_t a1, _OWORD *a2, Swift::Int a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    v12 = a2;
    v13 = a1;
    specialized _NativeDictionary.copy()();
    a1 = v13;
    a2 = v12;
  }

  v6 = *v4;
  v7 = *(v6 + 56);
  v8 = *(v6 + 48) + 40 * a3;
  v9 = *(v8 + 16);
  *a1 = *v8;
  *(a1 + 16) = v9;
  *(a1 + 32) = *(v8 + 32);
  outlined init with take of Any((v7 + 32 * a3), a2);
  v10.offset = a3;

  return specialized _NativeDictionary._delete(at:)(v10, v6);
}

void _NativeDictionary.uncheckedRemove(at:isUnique:)(uint64_t a1, uint64_t a2, Swift::_HashTable::Bucket a3, char a4, uint64_t a5)
{
  if ((a4 & 1) == 0)
  {
    v10 = a1;
    _NativeDictionary.copy()();
    a1 = v10;
  }

  v9 = *v5;
  (*(*(*(a5 + 16) - 8) + 32))(a1, *(v9 + 48) + *(*(*(a5 + 16) - 8) + 72) * a3.offset, *(a5 + 16));
  (*(*(*(a5 + 24) - 8) + 32))(a2, *(v9 + 56) + *(*(*(a5 + 24) - 8) + 72) * a3.offset, *(a5 + 24));

  _NativeDictionary._delete(at:)(a3);
}

Swift::Void __swiftcall _NativeDictionary.removeAll(isUnique:)(Swift::Bool isUnique)
{
  v3 = v1;
  v4 = *v2;
  if (isUnique)
  {
    v5 = 0;
    v6 = v4 + 4;
    v7 = 1 << v4[2].i8[0];
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & v4[4].i64[0];
    v10 = (v7 + 63) >> 6;
    while (v9)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_11:
      v14 = v11 | (v5 << 6);
      (*(*(v3[2] - 8) + 8))(v4[3].i64[0] + *(*(v3[2] - 8) + 72) * v14);
      (*(*(v3[3] - 8) + 8))(v4[3].i64[1] + *(*(v3[3] - 8) + 72) * v14);
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return;
      }

      if (v5 >= v10)
      {
        break;
      }

      v13 = v6->u64[v5];
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_11;
      }
    }

    v18 = 1 << v4[2].i8[0];
    if (v18 > 63)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v18 + 63) >> 6, v4 + 4);
    }

    else
    {
      v6->i64[0] = -1 << v18;
    }

    v4[1].i64[0] = 0;
    ++v4[2].i32[1];
  }

  else
  {
    v15 = v2;
    v16 = v4[2].u8[0];
    type metadata accessor for _DictionaryStorage(0, v1[2], v1[3], v1[4]);
    v17 = static _DictionaryStorage.allocate(scale:age:seed:)(v16, 0x100000000, 0, 1);
    v4;
    *v15 = v17;
  }
}

int64x2_t *_NativeDictionary.mapValues<A>(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v79 = a1;
  v80 = a2;
  v9 = *(a6 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v10, v15);
  v78 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  v21 = MEMORY[0x1EEE9AC00](v16, v20);
  v76 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v23);
  v75 = &v62 - v24;
  v69 = v25;
  type metadata accessor for _DictionaryStorage(0, v26, v25, v27);
  v28 = *(a3 + 36);
  v29 = *(a3 + 40);
  v30 = *(a3 + 32);
  v87 = 0;
  result = static _DictionaryStorage.allocate(scale:age:seed:)(v30, v28, v29, 0);
  v32 = a5;
  v33 = result;
  v34 = 0;
  v35 = *(a3 + 64);
  v64 = a3 + 64;
  v81 = a3;
  v36 = 1 << *(a3 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & v35;
  v63 = (v36 + 63) >> 6;
  v71 = v14 + 16;
  v72 = v19 + 16;
  v82 = v19;
  v39 = v19 + 32;
  v40 = v32;
  v77 = v14;
  v73 = (v14 + 8);
  v74 = result;
  v67 = result + 4;
  v68 = v9;
  v66 = v9 + 32;
  v70 = v12;
  v65 = v32;
  if (v38)
  {
    while (1)
    {
      v41 = __clz(__rbit64(v38));
      v83 = (v38 - 1) & v38;
LABEL_10:
      v86 = v41 | (v34 << 6);
      v44 = v81;
      v45 = v82;
      v46 = *(v81 + 48);
      v47 = v86;
      v48 = *(v82 + 16);
      v84 = *(v82 + 72) * v86;
      v49 = v75;
      v48(v75, v46 + v84, a4);
      v50 = *(v44 + 56) + *(v77 + 72) * v47;
      v51 = v78;
      (*(v77 + 16))(v78, v50, v40);
      v52 = *(v45 + 32);
      v53 = v40;
      v54 = v76;
      v55 = v39;
      v52(v76, v49, a4);
      v56 = v70;
      v57 = v85;
      v79(v51);
      v85 = v57;
      if (v57)
      {
        break;
      }

      (*v73)(v51, v53);
      v58 = v86;
      *(v67->i64 + ((v86 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v86;
      v33 = v74;
      v52((v74[3].i64[0] + v84), v54, a4);
      result = (*(v68 + 32))(v33[3].i64[1] + *(v68 + 72) * v58, v56, v69);
      v59 = v33[1].i64[0];
      v60 = __OFADD__(v59, 1);
      v61 = v59 + 1;
      v40 = v65;
      if (v60)
      {
        goto LABEL_17;
      }

      v39 = v55;
      v33[1].i64[0] = v61;
      v38 = v83;
      if (!v83)
      {
        goto LABEL_5;
      }
    }

    v33 = v74;
    v74;
    (*(v82 + 8))(v54, a4);
    (*v73)(v51, v53);
    return v33;
  }

  else
  {
LABEL_5:
    v42 = v34;
    while (1)
    {
      v34 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v34 >= v63)
      {
        return v33;
      }

      v43 = *(v64 + 8 * v34);
      ++v42;
      if (v43)
      {
        v41 = __clz(__rbit64(v43));
        v83 = (v43 - 1) & v43;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t DiscontiguousSlice.subranges.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + *(a1 + 36));
  *a2 = v3;
  return v3;
}

uint64_t DiscontiguousSlice.init(_base:subranges:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  (*(*(a3 - 8) + 32))(a5, a1);
  result = type metadata accessor for DiscontiguousSlice(0, a3, a4, v9);
  *(a5 + *(result + 36)) = v8;
  return result;
}

uint64_t static DiscontiguousSlice<>.== infix(_:_:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for DiscontiguousSlice(0, a3, a4, a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for DiscontiguousSlice<A>, v7, v8);
  return Sequence<>.elementsEqual<A>(_:)(a2, v7, v7, WitnessTable, WitnessTable, a5) & 1;
}

uint64_t Sequence<>.elementsEqual<A>(_:)(char *a1, Class *a2, Class *a3, int **a4, int **a5, uint64_t a6)
{
  v93 = a1;
  v90 = a6;
  v82 = a5;
  swift_getAssociatedTypeWitness(0, a4, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v11 = v10;
  v75 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v79 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v78 = &v72 - v16;
  v19 = type metadata accessor for Optional(255, v11, v17, v18);
  swift_getTupleTypeMetadata2(0, v19, v19, 0, 0);
  v88 = v20;
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v24 = &v72 - v23;
  v89 = v19;
  v76 = *(v19 - 1);
  v26 = MEMORY[0x1EEE9AC00](v22, v25);
  v87 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v86 = &v72 - v30;
  v81 = a3;
  AssociatedConformanceWitness = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = &v72 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v94 = v34;
  v74 = *(v34 - 8);
  v36 = MEMORY[0x1EEE9AC00](v34, v35);
  v38 = &v72 - v37;
  v39 = a2;
  v40 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v36, v41);
  v43 = &v72 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a4;
  swift_getAssociatedTypeWitness(0, a4, v39, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v46 = v45;
  v73 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v47);
  v49 = &v72 - v48;
  (*(v40 + 16))(v43, v92, v39);
  v50 = v44[4];
  v91 = v49;
  (v50)(v39, v44);
  v51 = v81;
  (*(AssociatedConformanceWitness + 16))(v33, v93, v81);
  v52 = v82[4];
  v93 = v38;
  v53 = v82;
  (v52)(v51);
  v92 = v46;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v44, v39, v46, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v83 = *(AssociatedConformanceWitness + 16);
  v84 = AssociatedConformanceWitness + 16;
  v82 = swift_getAssociatedConformanceWitness(v53, v51, v94, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v80 = v82[2];
  v81 = (v82 + 2);
  v54 = (v76 + 32);
  v55 = (v75 + 48);
  v56 = (v75 + 32);
  v77 = v90 + 8;
  v57 = (v75 + 8);
  while (1)
  {
    v58 = v86;
    v83(v92, AssociatedConformanceWitness);
    v59 = v87;
    (v80)(v94, v82);
    v60 = *(v88 + 48);
    v61 = *v54;
    v62 = v58;
    v63 = v89;
    (*v54)(v24, v62, v89);
    v61(&v24[v60], v59, v63);
    v64 = *v55;
    if ((*v55)(v24, 1, v11) == 1)
    {
      break;
    }

    if (v64(&v24[v60], 1, v11) == 1)
    {
      (*(v74 + 8))(v93, v94);
      (*(v73 + 8))(v91, v92);
      (*v57)(v24, v11);
      return 0;
    }

    v65 = *v56;
    v66 = v78;
    (*v56)(v78, v24, v11);
    v67 = v79;
    v65(v79, &v24[v60], v11);
    v68 = (*(v90 + 8))(v66, v67, v11);
    v69 = *v57;
    (*v57)(v67, v11);
    v69(v66, v11);
    if ((v68 & 1) == 0)
    {
      (*(v74 + 8))(v93, v94);
      (*(v73 + 8))(v91, v92);
      return 0;
    }
  }

  (*(v74 + 8))(v93, v94);
  (*(v73 + 8))(v91, v92);
  v70 = v64(&v24[v60], 1, v11);
  result = 1;
  if (v70 == 1)
  {
    return result;
  }

  (*(v76 + 8))(&v24[v60], v89);
  return 0;
}

uint64_t DiscontiguousSlice<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v113 = a3;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  swift_getAssociatedTypeWitness(0, v7, v6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v133 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v101 = &v90 - v11;
  swift_getAssociatedTypeWitness(0, v7, v6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v129 = v12;
  v131 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v128 = &v90 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, v6, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v127 = type metadata accessor for Range(0, v9, AssociatedConformanceWitness, v15);
  v114 = *(v127 - 8);
  v17 = MEMORY[0x1EEE9AC00](v127, v16);
  v99 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v105 = &v90 - v20;
  v111 = type metadata accessor for DiscontiguousSlice.Index(0, v6, v7, v21);
  v130 = *(v111 - 8);
  v23 = MEMORY[0x1EEE9AC00](v111, v22);
  v132 = &v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v25);
  v110 = &v90 - v26;
  v27 = *(v7 + 8);
  v134 = v6;
  swift_getAssociatedTypeWitness(0, v27, v6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v126 = v28;
  v118 = *(v28 - 8);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v125 = &v90 - v31;
  v32 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v30, v33);
  v35 = &v90 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for DiscontiguousSlice<A>, a2, v36);
  v39 = type metadata accessor for IndexingIterator(0, a2, WitnessTable, v38);
  v90 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v90 - v41;
  v43 = DiscontiguousSlice.count.getter(a2);
  v102 = a1;
  Hasher._combine(_:)(v43);
  v44 = *(v32 + 16);
  v44(v35, v3, a2);
  v44(v42, v35, a2);
  v91 = v39;
  v45 = &v42[*(v39 + 36)];
  DiscontiguousSlice.startIndex.getter(a2, v45, v46);
  (*(v32 + 8))(v35, a2);
  v115 = *(v7 + 72);
  v116 = v7 + 72;
  v47 = *(a2 + 36);
  v48 = v111;
  v49 = *(v111 + 36);
  v109 = *(AssociatedConformanceWitness + 8);
  v107 = *(v109 + 8);
  v108 = v109 + 8;
  v136 = v42;
  v50 = *&v42[v47];
  v51 = (v130 + 8);
  v122 = v114 + 16;
  v135 = v7;
  v52 = v7 + 88;
  v53 = v50;
  v54 = v45;
  v120 = v114 + 8;
  v121 = v52;
  v104 = (v118 + 16);
  v119 = (v131 + 8);
  v103 = (v130 + 32);
  v106 = *(v50 + 16);
  v97 = AssociatedConformanceWitness + 16;
  v94 = (v133 + 8);
  v92 = (v133 + 16);
  v93 = (v133 + 32);
  v96 = v113 + 24;
  v95 = (v118 + 8);
  v133 = v49;
  v55 = v49;
  v100 = v9;
  v123 = v53;
  v124 = v45;
  v98 = (v130 + 8);
  while (1)
  {
    v59 = v110;
    v60 = &v110[v55];
    v115(v134, v135);
    *v59 = v106;
    v61 = v107(v54 + v133, v60, v9, v109);
    v62 = *v51;
    (*v51)(v59, v48);
    if (v61)
    {
      break;
    }

    v63 = *v54;
    if ((*v54 & 0x8000000000000000) != 0 || v63 >= *(v53 + 16) || (v117 = v62, v64 = v114, v65 = v53 + ((*(v64 + 80) + 32) & ~*(v64 + 80)), v130 = *(v114 + 72), v131 = v65, v66 = *(v114 + 16), v67 = v105, v68 = v127, v66(v105, v65 + v130 * v63, v127), v69 = v135, v70 = *(v135 + 11), v71 = v128, v72 = v134, v70(v67, v134, v135), v73 = v67, v74 = v124, v118 = *(v64 + 8), (v118)(v73, v68), v75 = v129, v76 = swift_getAssociatedConformanceWitness(v69, v72, v129, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection), v77 = (*(v76 + 80))(v137, &v74[v133], v75, v76), (*v104)(v125), v77(v137, 0), v78 = *v119, (*v119)(v71, v75), v79 = v132, v80 = v123, (*v103)(v132, v74, v48), v81 = *v79, (*v79 & 0x8000000000000000) != 0) || v81 >= *(v80 + 16))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v82 = v99;
    v83 = v127;
    v66(v99, v131 + v81 * v130, v127);
    v84 = v128;
    v70(v82, v134, v135);
    v85 = v101;
    v86 = v129;
    (*(v76 + 184))(&v132[*(v48 + 36)], v129, v76);
    v78(v84, v86);
    v9 = v100;
    v87 = (*(AssociatedConformanceWitness + 16))(v85, &v82[*(v83 + 36)], v100);
    (v118)(v82, v83);
    if (v87)
    {
      v54 = v124;
      (*v93)(&v124[v133], v85, v9);
      v48 = v111;
      v53 = v123;
    }

    else
    {
      (*v94)(v85, v9);
      ++v81;
      v53 = v123;
      v54 = v124;
      v88 = *(v123 + 16);
      if (v81 >= v88)
      {
        v115(v134, v135);
        v81 = v88;
      }

      else
      {
        (*v92)(&v124[v133], v131 + v81 * v130, v9);
      }

      v48 = v111;
    }

    v56 = v117;
    *v54 = v81;
    v51 = v98;
    v56(v132, v48);
    v58 = v125;
    v57 = v126;
    (*(v113 + 24))(v102, v126);
    (*v95)(v58, v57);
    v55 = *(v48 + 36);
  }

  return (*(v90 + 8))(v136, v91);
}

uint64_t DiscontiguousSlice.count.getter(uint64_t a1)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_getAssociatedTypeWitness(0, v3, v4, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v45 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v44 = &v37 - v8;
  swift_getAssociatedTypeWitness(255, v3, v4, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v10 = v9;
  v43 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v3, v4, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v13 = type metadata accessor for Range(0, v10, AssociatedConformanceWitness, v12);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v37 - v16;
  v18 = *(a1 + 36);
  v46 = v1;
  v19 = *(v1 + v18);
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = v14 + 16;
    v41 = v14 + 8;
    v42 = v3 + 88;
    v40 = (v6 + 8);
    v19;
    v22 = 0;
    v23 = 0;
    while (1)
    {
      if (v23 >= v20)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v24 = v19 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v23;
      v25 = *(v14 + 16);
      v38 = v21;
      v25(v17, v24, v13);
      v26 = v43;
      v27 = v44;
      (*(v3 + 88))(v17, v43, v3);
      v39 = v14;
      v28 = *(v14 + 8);
      v29 = v17;
      v30 = v17;
      v31 = v13;
      v28(v30, v13);
      v32 = v45;
      v33 = swift_getAssociatedConformanceWitness(v3, v26, v45, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection);
      v34 = (*(v33 + 112))(v32, v33);
      result = (*v40)(v27, v32);
      v36 = __OFADD__(v22, v34);
      v22 += v34;
      if (v36)
      {
        break;
      }

      ++v23;
      v20 = *(v19 + 16);
      v13 = v31;
      v17 = v29;
      v21 = v38;
      v14 = v39;
      if (v23 == v20)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v19;
    v22 = 0;
LABEL_9:
    v19;
    return v22;
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <> DiscontiguousSlice<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  specialized Hasher.init(_seed:)(a1, v6);
  DiscontiguousSlice<>.hash(into:)(v6, a2, v4);
  return Hasher._finalize()();
}

uint64_t DiscontiguousSlice.description.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  swift_getAssociatedTypeWitness(0, v2, v3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v170 = v4;
  v182 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v169 = &v150 - v6;
  swift_getAssociatedTypeWitness(255, v2, v3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v2, v3, v7, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v177 = v8;
  v168 = type metadata accessor for Range(0, v8, AssociatedConformanceWitness, v9);
  v179 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168, v10);
  v167 = &v150 - v11;
  v13 = type metadata accessor for DiscontiguousSlice.Index(0, v3, v2, v12);
  v158 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v150 - v15);
  v17 = *(v2 + 8);
  v186 = v3;
  swift_getAssociatedTypeWitness(0, v17, v3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v180 = v18;
  *&v156 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v183 = &v150 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v165 = &v150 - v24;
  v25 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v23, v26);
  v28 = &v150 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for DiscontiguousSlice<A>, a1, v29);
  v32 = type metadata accessor for IndexingIterator(0, a1, WitnessTable, v31);
  v152 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v150 - v34;
  0xE000000000000000;
  v190 = 91;
  v191 = 0xE100000000000000;
  v36 = *(v25 + 16);
  v36(v28, v185, a1);
  v36(v35, v28, a1);
  v37 = v13;
  v153 = v32;
  v38 = &v35[*(v32 + 36)];
  DiscontiguousSlice.startIndex.getter(a1, v38, v39);
  (*(v25 + 8))(v28, a1);
  v175 = *(v2 + 72);
  v176 = v2 + 72;
  v166 = a1;
  v40 = *(a1 + 36);
  v41 = v35;
  v42 = v38;
  v43 = *(v13 + 36);
  v174 = *(AssociatedConformanceWitness + 8);
  v172 = *(v174 + 8);
  v173 = v174 + 8;
  v164 = v40;
  v171 = *(*&v41[v40] + 16);
  v185 = (v158 + 1);
  v162 = v2 + 88;
  v161 = (v179 + 1);
  v160 = (v156 + 16);
  v159 = (v182 + 8);
  v158 += 4;
  v179 = (v156 + 32);
  v182 = 1;
  v156 = xmmword_18071DB30;
  v154 = xmmword_18071DB40;
  v44 = v43;
  v155 = v2;
  v181 = v37;
  v184 = v38;
  v157 = v43;
  v163 = v16;
  while (1)
  {
    v49 = v16 + v44;
    v175(v186, v2);
    *v16 = v171;
    v50 = v177;
    v51 = v172(v42 + v43, v49, v177, v174);
    v52 = *v185;
    (*v185)(v16, v37);
    if (v51)
    {
      break;
    }

    v54 = *v42;
    v189 = *&v41[v164];
    v55 = type metadata accessor for RangeSet.Ranges(0, v50, AssociatedConformanceWitness, v53);
    v56 = v41;
    v57 = v186;
    v58 = v43;
    v59 = v167;
    RangeSet.Ranges.subscript.getter(v54, v55, v167, v60);
    v61 = v169;
    (*(v2 + 88))(v59, v57, v2);
    v62 = v59;
    v63 = v181;
    (*v161)(v62, v168);
    v64 = v2;
    v65 = v2;
    v66 = v170;
    v67 = swift_getAssociatedConformanceWitness(v64, v57, v170, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection);
    v68 = (*(v67 + 80))(&v188, v184 + v58, v66, v67);
    v69 = v165;
    v45 = v180;
    (*v160)(v165);
    v68(&v188, 0);
    v70 = v61;
    v71 = v66;
    v2 = v65;
    v16 = v163;
    v41 = v56;
    v72 = v183;
    v42 = v184;
    (*v159)(v70, v71);
    (*v158)(v16, v42, v63);
    DiscontiguousSlice.index(after:)(v16, v166, v42);
    v52(v16, v63);
    v73 = *v179;
    v74 = v69;
    v37 = v63;
    (*v179)(v72, v74, v45);
    if (v182)
    {
      goto LABEL_4;
    }

    v76 = v190;
    v75 = v191;
    v77 = HIBYTE(v191) & 0xF;
    v78 = v190 & 0xFFFFFFFFFFFFLL;
    if ((v191 & 0x2000000000000000) != 0)
    {
      v79 = HIBYTE(v191) & 0xF;
    }

    else
    {
      v79 = v190 & 0xFFFFFFFFFFFFLL;
    }

    if (!v79 && (v190 & ~v191 & 0x2000000000000000) == 0)
    {
      v191;
      v190 = 8236;
      v191 = 0xE200000000000000;
      v2 = v155;
      v37 = v181;
      v45 = v180;
      goto LABEL_4;
    }

    if ((v191 & 0x2000000000000000) == 0 || v77 > 0xD)
    {
      0xE200000000000000;
      if ((v75 & 0x1000000000000000) != 0)
      {
        v79 = String.UTF8View._foreignCount()();
      }

      v87 = __OFADD__(v79, 2);
      v88 = v79 + 2;
      v89 = v181;
      if (v87)
      {
        __break(1u);
LABEL_118:
        v143 = String.UTF8View._foreignCount()();
        v116 = v143 + 1;
        if (!__OFADD__(v143, 1))
        {
          goto LABEL_69;
        }

LABEL_120:
        __break(1u);
LABEL_121:
        v144 = v75;
        if ((v76 & 0x1000000000000000) != 0)
        {
          v88 = _StringGuts._foreignConvertedToSmall()(v88, v76);
          v149 = v148;
          v76;
          v76 = v149;
          v75 = v144;
        }

        else
        {
          if ((v88 & 0x1000000000000000) != 0)
          {
            v145 = ((v76 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v146 = v88 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v145 = _StringObject.sharedUTF8.getter(v88, v76);
          }

          closure #1 in _StringGuts._convertedToSmall()(v145, v146, &v188, v115);
          v76;
          v76 = *(&v188 + 1);
          v88 = v188;
        }

        goto LABEL_104;
      }

      if ((v76 & ~v75 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v75 & 0xFFFFFFFFFFFFFFFLL))
      {
        v90 = _StringGuts.nativeUnusedCapacity.getter(v76, v75);
        v2 = v155;
        if (v91)
        {
          goto LABEL_127;
        }

        if (v88 > 15)
        {
          goto LABEL_2;
        }

        if ((v75 & 0x2000000000000000) == 0)
        {
          if (v90 < 2)
          {
LABEL_26:
            if ((v75 & 0x1000000000000000) != 0)
            {
              v76 = _StringGuts._foreignConvertedToSmall()(v76, v75);
              v182 = v109;
            }

            else
            {
              if ((v76 & 0x1000000000000000) != 0)
              {
                v92 = ((v75 & 0xFFFFFFFFFFFFFFFLL) + 32);
              }

              else
              {
                v92 = _StringObject.sharedUTF8.getter(v76, v75);
                v78 = v112;
              }

              closure #1 in _StringGuts._convertedToSmall()(v92, v78, &v188, v86);
              v182 = *(&v188 + 1);
              v76 = v188;
            }

LABEL_33:
            v93 = 0xE200000000000000;
            0xE200000000000000;
            v94._rawBits = 131073;
            v95._rawBits = 1;
            v96._rawBits = _StringGuts.validateScalarRange(_:)(v95, v94, 0x202CuLL, 0xE200000000000000)._rawBits;
            if (v96._rawBits < 0x10000)
            {
              v96._rawBits |= 3;
            }

            if (v96._rawBits >> 16 || (v99 = 8236, (v97._rawBits & 0xFFFFFFFFFFFF0000) != 0x20000))
            {
              v99 = specialized static String._copying(_:)(v96._rawBits, v97, 0x202CuLL, 0xE200000000000000);
              v93 = v100;
              0xE200000000000000;
            }

            if ((v93 & 0x2000000000000000) != 0)
            {
              v93;
              v101 = v93;
            }

            else if ((v93 & 0x1000000000000000) != 0)
            {
              v99 = _StringGuts._foreignConvertedToSmall()(v99, v93);
              v151 = v113;
              v93;
              v101 = v151;
            }

            else
            {
              if ((v99 & 0x1000000000000000) != 0)
              {
                v110 = ((v93 & 0xFFFFFFFFFFFFFFFLL) + 32);
                v111 = v99 & 0xFFFFFFFFFFFFLL;
              }

              else
              {
                v110 = _StringObject.sharedUTF8.getter(v99, v93);
              }

              closure #1 in _StringGuts._convertedToSmall()(v110, v111, &v188, v98);
              v93;
              v101 = *(&v188 + 1);
              v99 = v188;
            }

            v102 = specialized _SmallString.init(_:appending:)(v76, v182, v99, v101);
            if (v104)
            {
              goto LABEL_127;
            }

            v105 = v102;
            v106 = v103;
            v75;
            swift_bridgeObjectRelease_n(0xE200000000000000, 2);
            v190 = v105;
            v191 = v106;
LABEL_3:
            v45 = v180;
            v37 = v89;
            goto LABEL_4;
          }

LABEL_2:
          _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v88, 2);
          v188 = v154;
          closure #1 in _StringGuts.append(_:)(&v188, 2uLL, &v190, 1);
          swift_bridgeObjectRelease_n(0xE200000000000000, 2);
          goto LABEL_3;
        }
      }

      else
      {
        v2 = v155;
        if (v88 > 15)
        {
          goto LABEL_2;
        }

        if ((v75 & 0x2000000000000000) == 0)
        {
          goto LABEL_26;
        }
      }

      v182 = v75;
      goto LABEL_33;
    }

    v80 = 8 * (HIBYTE(v191) & 7);
    v81 = (-255 << v80) - 1;
    v82 = 44 << v80;
    v83 = v77 + 1;
    if (v77 >= 8)
    {
      v85 = v81 & v191 | v82;
      v84 = 8 * (v83 & 7);
    }

    else
    {
      v76 = v81 & v190 | v82;
      if (v77 != 7)
      {
        v76 = ((-255 << (8 * (v83 & 7u))) - 1) & v76 | (32 << (8 * (v83 & 7u)));
        v107 = v191;
        goto LABEL_46;
      }

      v84 = 0;
      v85 = v191;
    }

    v107 = ((-255 << v84) - 1) & v85 | (32 << v84);
LABEL_46:
    v191;
    0xE200000000000000;
    v108 = 0xE000000000000000;
    if (v76 & 0x8080808080808080 | v107 & 0x80808080808080)
    {
      v108 = 0xA000000000000000;
    }

    v190 = v76;
    v191 = (v108 & 0xFF00000000000000 | (v77 << 56) | v107 & 0xFFFFFFFFFFFFFFLL) + 0x200000000000000;
    v2 = v155;
    v37 = v181;
    v45 = v180;
LABEL_4:
    v46 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Any>(0);
    inited = swift_initStackObject(v46, &v187);
    *(inited + 1) = v156;
    inited[7] = v45;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(inited + 4);
    v73(boxed_opaque_existential_0Tm, v183, v45);
    specialized _debugPrint<A>(_:separator:terminator:to:)(inited, 0x20uLL, 0xE100000000000000, 0, 0xE000000000000000, &v190);
    0xE000000000000000;
    0xE100000000000000;
    swift_setDeallocating(inited);
    __swift_destroy_boxed_opaque_existential_1Tm(inited + 4);
    v182 = 0;
    v44 = *(v37 + 36);
    v43 = v157;
  }

  (*(v152 + 8))(v41, v153);
  v2 = v190;
  v75 = v191;
  v88 = HIBYTE(v191) & 0xF;
  v76 = v190 & 0xFFFFFFFFFFFFLL;
  if ((v191 & 0x2000000000000000) != 0)
  {
    v114 = HIBYTE(v191) & 0xF;
  }

  else
  {
    v114 = v190 & 0xFFFFFFFFFFFFLL;
  }

  if (!v114 && (v190 & ~v191 & 0x2000000000000000) == 0)
  {
    v191;
    return 93;
  }

  if ((v191 & 0x2000000000000000) == 0 || v88 == 15)
  {
    0xE100000000000000;
    if ((v75 & 0x1000000000000000) != 0)
    {
      goto LABEL_118;
    }

    v87 = __OFADD__(v114, 1);
    v116 = v114 + 1;
    if (v87)
    {
      goto LABEL_120;
    }

LABEL_69:
    v117 = v2 & ~v75;
    if ((v117 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v75 & 0xFFFFFFFFFFFFFFFLL))
    {
      v118 = _StringGuts.nativeUnusedCapacity.getter(v2, v75);
      if (v119)
      {
        goto LABEL_127;
      }

      if (v116 > 15)
      {
        goto LABEL_80;
      }

      if ((v75 & 0x2000000000000000) == 0)
      {
        if (v118 < 1)
        {
          goto LABEL_75;
        }

LABEL_80:
        v121 = v117 & 0x2000000000000000;
        v122 = _StringGuts.nativeUnusedCapacity.getter(v2, v75);
        if ((v123 & 1) != 0 || v122 <= 0)
        {
          if (v121)
          {
            swift_isUniquelyReferenced_nonNull_native(v75 & 0xFFFFFFFFFFFFFFFLL);
          }

          v124 = _StringGuts.nativeCapacity.getter(v2, v75);
          if (v125)
          {
            v126 = 0;
          }

          else
          {
            v126 = v124;
          }

          if (v126 + 0x4000000000000000 < 0)
          {
            __break(1u);
            goto LABEL_126;
          }

          v127 = 2 * v126;
          if (v127 > v116)
          {
            v116 = v127;
          }
        }

        else if (v121 && swift_isUniquelyReferenced_nonNull_native(v75 & 0xFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_94;
        }

        _StringGuts.grow(_:)(v116);
LABEL_94:
        v188 = xmmword_18071DB50;
        closure #1 in _StringGuts.append(_:)(&v188, 1uLL, &v190, 1);
        swift_bridgeObjectRelease_n(0xE100000000000000, 2);
        return v190;
      }
    }

    else
    {
      if (v116 > 15)
      {
        goto LABEL_80;
      }

      if ((v75 & 0x2000000000000000) == 0)
      {
LABEL_75:
        if ((v75 & 0x1000000000000000) != 0)
        {
          v2 = _StringGuts._foreignConvertedToSmall()(v2, v75);
          v116 = v142;
          goto LABEL_97;
        }

        if ((v2 & 0x1000000000000000) != 0)
        {
          v120 = ((v75 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_78:
          closure #1 in _StringGuts._convertedToSmall()(v120, v76, &v188, v115);
          v116 = *(&v188 + 1);
          v2 = v188;
LABEL_97:
          v76 = 0xE100000000000000;
          0xE100000000000000;
          v88 = 93;
          v128._rawBits = 1;
          v129._rawBits = 65537;
          v130._rawBits = _StringGuts.validateScalarRange(_:)(v128, v129, 0x5DuLL, 0xE100000000000000)._rawBits;
          if (v130._rawBits < 0x10000)
          {
            v130._rawBits |= 3;
          }

          if (v130._rawBits >> 16 || (v131._rawBits & 0xFFFFFFFFFFFF0000) != 0x10000)
          {
            v88 = specialized static String._copying(_:)(v130._rawBits, v131, 0x5DuLL, 0xE100000000000000);
            v76 = v132;
            0xE100000000000000;
          }

          if ((v76 & 0x2000000000000000) == 0)
          {
            goto LABEL_121;
          }

          v76;
LABEL_104:
          v133 = HIBYTE(v116) & 0xF;
          v134 = HIBYTE(v76) & 0xF;
          if (v134 + v133 <= 0xF)
          {
            0xE100000000000000;
            if (v134)
            {
              v135 = 0;
              v136 = 0;
              v137 = 8 * v133;
              do
              {
                v138 = v76 >> (v135 & 0x38);
                if (v136 < 8)
                {
                  v138 = v88 >> v135;
                }

                v139 = (v138 << (v137 & 0x38)) | ((-255 << (v137 & 0x38)) - 1) & v116;
                v140 = (v138 << v137) | ((-255 << v137) - 1) & v2;
                if (v133 <= 7)
                {
                  v2 = v140;
                }

                else
                {
                  v116 = v139;
                }

                ++v133;
                v137 += 8;
                v135 += 8;
                ++v136;
              }

              while (8 * v134 != v135);
            }

            v75;
            0xE100000000000000;
            return v2;
          }

LABEL_127:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

LABEL_126:
        v120 = _StringObject.sharedUTF8.getter(v2, v75);
        v76 = v147;
        goto LABEL_78;
      }
    }

    v116 = v75;
    goto LABEL_97;
  }

  if (v88 < 8)
  {
    v2 = ((-255 << (8 * (HIBYTE(v191) & 7u))) - 1) & v190 | (93 << (8 * (HIBYTE(v191) & 7u)));
  }

  v191;
  0xE100000000000000;
  return v2;
}

uint64_t static DiscontiguousSlice.Index.== infix(_:_:)(uint64_t a1, uint64_t a2, Class *a3, int **a4)
{
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v11 = *(type metadata accessor for DiscontiguousSlice.Index(0, a3, a4, v10) + 36);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  return (*(*(AssociatedConformanceWitness + 8) + 8))(a1 + v11, a2 + v11, v9) & 1;
}

uint64_t DiscontiguousSlice.Index<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness(0, *(a2 + 24), *(a2 + 16), &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  return v5(a1, v6, a3);
}

Swift::Int DiscontiguousSlice.Index<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  v9 = 0u;
  v10 = 0u;
  v6 = 0;
  v7 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB60);
  v8 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB70);
  v3 = *(a2 + 24);
  swift_getAssociatedTypeWitness(0, *(a1 + 24), *(a1 + 16), &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v3(&v6, v4, a2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <> DiscontiguousSlice<A>.Index(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  specialized Hasher.init(_seed:)(a1, v6);
  DiscontiguousSlice.Index<>.hash(into:)(v6, a2, v4);
  return Hasher._finalize()();
}

uint64_t static DiscontiguousSlice.Index.< infix(_:_:)(uint64_t a1, uint64_t a2, Class *a3, int **a4)
{
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v11 = *(type metadata accessor for DiscontiguousSlice.Index(0, a3, a4, v10) + 36);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  return (*(AssociatedConformanceWitness + 16))(a1 + v11, a2 + v11, v9, AssociatedConformanceWitness) & 1;
}

unint64_t DiscontiguousSlice.Index.description.getter(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  swift_getAssociatedTypeWitness(0, *(a1 + 24), *(a1 + 16), &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  countAndFlagsBits = &v274 - v8;
  v10 = _StringGuts.init(_initialCapacity:)(27);
  v12 = v10;
  object = v11;
  v279._countAndFlagsBits = v10;
  v279._object = v11;
  v14 = HIBYTE(v11) & 0xF;
  v15 = v10 & 0xFFFFFFFFFFFFLL;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v16 = v10 & 0xFFFFFFFFFFFFLL;
  }

  v277 = v2;
  if (!v16 && (v10 & ~v11 & 0x2000000000000000) == 0)
  {
    v11;
    v279._countAndFlagsBits = 0x203A657361623CLL;
    v279._object = 0xE700000000000000;
    goto LABEL_68;
  }

  if ((v11 & 0x2000000000000000) == 0 || v14 > 8)
  {
    0xE700000000000000;
    if ((object & 0x1000000000000000) != 0)
    {
      goto LABEL_304;
    }

    v23 = v16 + 7;
    if (!__OFADD__(v16, 7))
    {
      goto LABEL_13;
    }

LABEL_306:
    __break(1u);
    goto LABEL_307;
  }

  v17 = 8 * HIBYTE(v11);
  v18 = (-255 << (v17 & 0x38)) - 1;
  v19 = 60 << (v17 & 0x38);
  if (v14 >= 8)
  {
    v21 = v18 & v11 | v19;
    v20 = 8;
    goto LABEL_37;
  }

  v12 = v18 & v10 | v19;
  if (v14 == 7)
  {
    v20 = 0;
    v21 = v11;
LABEL_37:
    v36 = ((-255 << v20) - 1) & v21 | (98 << v20);
    v37 = (v17 + 16) & 0x38;
LABEL_38:
    v38 = ((-255 << v37) - 1) & v36 | (97 << v37);
    v39 = (v17 + 24) & 0x38;
LABEL_39:
    v40 = ((-255 << v39) - 1) & v38 | (115 << v39);
    v41 = v17 & 0x38 ^ 0x20;
LABEL_40:
    v42 = ((-255 << v41) - 1) & v40 | (101 << v41);
    v43 = (v17 + 40) & 0x38;
LABEL_41:
    v44 = ((-255 << v43) - 1) & v42 | (58 << v43);
    v45 = (v17 + 48) & 0x38;
    goto LABEL_42;
  }

  v12 = ((-255 << ((v17 + 8) & 0x38)) - 1) & v12 | (98 << ((v17 + 8) & 0x38));
  if (v14 >= 6)
  {
    v37 = 0;
    v36 = v11;
    goto LABEL_38;
  }

  v12 = ((-255 << ((v17 + 16) & 0x38)) - 1) & v12 | (97 << ((v17 + 16) & 0x38));
  if (v14 == 5)
  {
    v39 = 0;
    v38 = v11;
    goto LABEL_39;
  }

  v12 = ((-255 << ((v17 + 24) & 0x38)) - 1) & v12 | (115 << ((v17 + 24) & 0x38));
  if (v14 >= 4)
  {
    v41 = 0;
    v40 = v11;
    goto LABEL_40;
  }

  v12 = ((0xFFFFFF0100000000 << (8 * v14)) - 1) & v12 | (0x6500000000 << (8 * v14));
  if (v14 == 3)
  {
    v43 = 0;
    v42 = v11;
    goto LABEL_41;
  }

  v12 = ((-255 << ((v17 + 40) & 0x38)) - 1) & v12 | (58 << ((v17 + 40) & 0x38));
  if (v14 < 2)
  {
    v12 = ((0xFF01000000000000 << (8 * v14)) - 1) & v12 | (0x20000000000000 << (8 * v14));
    v46 = v11;
    goto LABEL_43;
  }

  v45 = 0;
  v44 = v11;
LABEL_42:
  v46 = ((-255 << v45) - 1) & v44 | (32 << v45);
LABEL_43:
  v11;
  0xE700000000000000;
  v47 = 0xA000000000000000;
  if (!(v12 & 0x8080808080808080 | v46 & 0x80808080808080))
  {
    v47 = 0xE000000000000000;
  }

  v279._countAndFlagsBits = v12;
  v279._object = ((v47 & 0xFF00000000000000 | (v14 << 56) | v46 & 0xFFFFFFFFFFFFFFLL) + 0x700000000000000);
  while (1)
  {
LABEL_68:
    (*(v6 + 16))(countAndFlagsBits, v2 + *(v3 + 36), v5);
    *&v278 = 0;
    *(&v278 + 1) = 0xE000000000000000;
    _debugPrint_unlocked<A, B>(_:_:)(countAndFlagsBits, &v278, v5, &type metadata for String, &protocol witness table for String);
    (*(v6 + 8))(countAndFlagsBits, v5);
    v5 = *(&v278 + 1);
    v2 = v278;
    countAndFlagsBits = v279._countAndFlagsBits;
    object = v279._object;
    v65 = (v279._object >> 56) & 0xF;
    v3 = v279._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if ((v279._object & 0x2000000000000000) != 0)
    {
      v66 = (v279._object >> 56) & 0xF;
    }

    else
    {
      v66 = v279._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (!v66 && (v279._countAndFlagsBits & ~v279._object & 0x2000000000000000) == 0)
    {
      v279._object;
      v279._countAndFlagsBits = v2;
      v279._object = v5;
      goto LABEL_157;
    }

    v67 = (*(&v278 + 1) & 0x2000000000000000) == 0;
    v68 = HIBYTE(*(&v278 + 1)) & 0xFLL;
    if ((v279._object & 0x2000000000000000) == 0)
    {
      v69 = v278 & 0xFFFFFFFFFFFFLL;
      v15 = HIBYTE(*(&v278 + 1)) & 0xFLL;
      if ((*(&v278 + 1) & 0x2000000000000000) != 0)
      {
        goto LABEL_78;
      }

      goto LABEL_77;
    }

    if ((*(&v278 + 1) & 0x2000000000000000) == 0)
    {
      v69 = v278 & 0xFFFFFFFFFFFFLL;
      v67 = 1;
LABEL_77:
      v15 = v69;
      goto LABEL_78;
    }

    v98 = v65 + v68;
    if (v65 + v68 < 0x10)
    {
      if (v68)
      {
        v111 = 0;
        v112 = 0;
        v113 = 8 * v65;
        v114 = 8 * v68;
        v115 = v279._object;
        do
        {
          v116 = *(&v278 + 1) >> (v111 & 0x38);
          if (v112 < 8)
          {
            v116 = v278 >> v111;
          }

          v117 = (v116 << (v113 & 0x38)) | ((-255 << (v113 & 0x38)) - 1) & v115;
          v118 = (v116 << v113) | ((-255 << v113) - 1) & countAndFlagsBits;
          if (v65 <= 7)
          {
            countAndFlagsBits = v118;
          }

          else
          {
            v115 = v117;
          }

          ++v65;
          v113 += 8;
          v111 += 8;
          ++v112;
        }

        while (v114 != v111);
      }

      else
      {
        v115 = v279._object;
      }

      v279._object;
      v5;
      v119 = 0xA000000000000000;
      if (!(countAndFlagsBits & 0x8080808080808080 | v115 & 0x80808080808080))
      {
        v119 = 0xE000000000000000;
      }

      v110 = (v119 & 0xFF00000000000000 | (v98 << 56) | v115 & 0xFFFFFFFFFFFFFFLL);
LABEL_156:
      v279._countAndFlagsBits = countAndFlagsBits;
      v279._object = v110;
      goto LABEL_157;
    }

    v67 = 0;
    v69 = v278 & 0xFFFFFFFFFFFFLL;
    v15 = HIBYTE(*(&v278 + 1)) & 0xFLL;
LABEL_78:
    LODWORD(v276) = v67;
    v274 = v69;
    v275 = HIBYTE(*(&v278 + 1)) & 0xFLL;
    if ((*(&v278 + 1) & 0x1000000000000000) != 0)
    {
      swift_bridgeObjectRetain_n(*(&v278 + 1), 2);
      v236._rawBits = 1;
      v237._rawBits = (v15 << 16) | 1;
      v238._rawBits = _StringGuts.validateScalarRange(_:)(v236, v237, v2, v5)._rawBits;
      if (v238._rawBits < 0x10000)
      {
        v238._rawBits |= 3;
      }

      v12 = String.UTF8View.distance(from:to:)(v238, v239);
      v5;
      if ((object & 0x1000000000000000) == 0)
      {
LABEL_80:
        v70 = __OFADD__(v66, v12);
        v6 = v66 + v12;
        if (!v70)
        {
          break;
        }

        goto LABEL_303;
      }
    }

    else
    {
      *(&v278 + 1);
      v12 = v15;
      if ((object & 0x1000000000000000) == 0)
      {
        goto LABEL_80;
      }
    }

    v240 = String.UTF8View._foreignCount()();
    v6 = v240 + v12;
    if (!__OFADD__(v240, v12))
    {
      break;
    }

LABEL_303:
    __break(1u);
LABEL_304:
    v241 = String.UTF8View._foreignCount()();
    v23 = v241 + 7;
    if (__OFADD__(v241, 7))
    {
      goto LABEL_306;
    }

LABEL_13:
    v24 = v12 & ~object;
    if ((v24 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(object & 0xFFFFFFFFFFFFFFFLL))
    {
      v25 = _StringGuts.nativeUnusedCapacity.getter(v12, object);
      if (v26)
      {
        goto LABEL_344;
      }

      if (v23 <= 15)
      {
        if ((object & 0x2000000000000000) != 0)
        {
          goto LABEL_47;
        }

        if (v25 < 7)
        {
          goto LABEL_19;
        }
      }

LABEL_24:
      v29 = v24 & 0x2000000000000000;
      v30 = _StringGuts.nativeUnusedCapacity.getter(v12, object);
      if ((v31 & 1) != 0 || v30 <= 6)
      {
        if (v29)
        {
          swift_isUniquelyReferenced_nonNull_native(object & 0xFFFFFFFFFFFFFFFLL);
        }

        v32 = _StringGuts.nativeCapacity.getter(v12, object);
        if (v33)
        {
          v34 = 0;
        }

        else
        {
          v34 = v32;
        }

        if (v34 + 0x4000000000000000 < 0)
        {
          goto LABEL_336;
        }

        v35 = 2 * v34;
        if (v35 > v23)
        {
          v23 = v35;
        }

LABEL_34:
        _StringGuts.grow(_:)(v23);
        goto LABEL_35;
      }

      if (!v29 || !swift_isUniquelyReferenced_nonNull_native(object & 0xFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_34;
      }

LABEL_35:
      v278 = xmmword_18071DC50;
      closure #1 in _StringGuts.append(_:)(&v278, 7uLL, &v279, 1);
      swift_bridgeObjectRelease_n(0xE700000000000000, 2);
    }

    else
    {
      if (v23 > 15)
      {
        goto LABEL_24;
      }

      if ((object & 0x2000000000000000) != 0)
      {
LABEL_47:
        v276 = v3;
        v28 = object;
        goto LABEL_48;
      }

LABEL_19:
      v276 = v3;
      if ((object & 0x1000000000000000) != 0)
      {
        v12 = _StringGuts._foreignConvertedToSmall()(v12, object);
        v28 = v235;
      }

      else
      {
        if ((v12 & 0x1000000000000000) != 0)
        {
          v27 = ((object & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v27 = _StringObject.sharedUTF8.getter(v12, object);
          v15 = v259;
        }

        closure #1 in _StringGuts._convertedToSmall()(v27, v15, &v278, v22);
        v28 = *(&v278 + 1);
        v12 = v278;
      }

LABEL_48:
      v48 = 0x203A657361623CLL;
      v49 = 0xE700000000000000;
      0xE700000000000000;
      v50._rawBits = 1;
      v51._rawBits = 458753;
      v52._rawBits = _StringGuts.validateScalarRange(_:)(v50, v51, 0x203A657361623CuLL, 0xE700000000000000)._rawBits;
      if (v52._rawBits < 0x10000)
      {
        v52._rawBits |= 3;
      }

      if (v52._rawBits >> 16 || (v53._rawBits & 0xFFFFFFFFFFFF0000) != 0x70000)
      {
        v48 = specialized static String._copying(_:)(v52._rawBits, v53, 0x203A657361623CuLL, 0xE700000000000000);
        v49 = v55;
        0xE700000000000000;
      }

      if ((v49 & 0x2000000000000000) != 0)
      {
        v49;
      }

      else if ((v49 & 0x1000000000000000) != 0)
      {
        v48 = _StringGuts._foreignConvertedToSmall()(v48, v49);
        v273 = v272;
        v49;
        v49 = v273;
      }

      else
      {
        if ((v48 & 0x1000000000000000) != 0)
        {
          v251 = ((v49 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v252 = v48 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v251 = _StringObject.sharedUTF8.getter(v48, v49);
        }

        closure #1 in _StringGuts._convertedToSmall()(v251, v252, &v278, v54);
        v49;
        v49 = *(&v278 + 1);
        v48 = v278;
      }

      v56 = HIBYTE(v28) & 0xF;
      v57 = HIBYTE(v49) & 0xF;
      v275 = v57 + v56;
      if (v57 + v56 > 0xF)
      {
        goto LABEL_344;
      }

      0xE700000000000000;
      if (v57)
      {
        v58 = 0;
        v59 = 0;
        v60 = 8 * v56;
        do
        {
          v61 = v49 >> (v58 & 0x38);
          if (v59 < 8)
          {
            v61 = v48 >> v58;
          }

          v62 = (v61 << (v60 & 0x38)) | ((-255 << (v60 & 0x38)) - 1) & v28;
          v63 = (v61 << v60) | ((-255 << v60) - 1) & v12;
          if (v56 <= 7)
          {
            v12 = v63;
          }

          else
          {
            v28 = v62;
          }

          ++v56;
          v60 += 8;
          v58 += 8;
          ++v59;
        }

        while (8 * v57 != v58);
      }

      object;
      0xE700000000000000;
      v64 = 0xA000000000000000;
      if (!(v12 & 0x8080808080808080 | v28 & 0x80808080808080))
      {
        v64 = 0xE000000000000000;
      }

      v3 = v276;
      v279._countAndFlagsBits = v12;
      v279._object = (v64 & 0xFF00000000000000 | (v275 << 56) | v28 & 0xFFFFFFFFFFFFFFLL);
      v2 = v277;
    }
  }

  v71 = countAndFlagsBits & ~object;
  if ((v71 & 0x2000000000000000) != 0)
  {
    v72 = object & 0xFFFFFFFFFFFFFFFLL;
    if (swift_isUniquelyReferenced_nonNull_native(object & 0xFFFFFFFFFFFFFFFLL))
    {
      v73 = _StringGuts.nativeUnusedCapacity.getter(countAndFlagsBits, object);
      if ((v74 & 1) == 0)
      {
        v75 = (object >> 61) & 1;
        if (v73 < v12)
        {
          LOBYTE(v75) = 1;
        }

        if (v6 > 15 || (v75 & 1) == 0)
        {
          v76 = _StringGuts.nativeUnusedCapacity.getter(countAndFlagsBits, object) >= v12;
          v78 = v76 & ~v77;
          goto LABEL_92;
        }

LABEL_99:
        if ((object & 0x2000000000000000) != 0)
        {
          v87 = object;
          goto LABEL_101;
        }

LABEL_307:
        if ((object & 0x1000000000000000) != 0)
        {
          countAndFlagsBits = _StringGuts._foreignConvertedToSmall()(countAndFlagsBits, object);
          v87 = v260;
        }

        else
        {
          if ((countAndFlagsBits & 0x1000000000000000) != 0)
          {
            v242 = ((object & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v242 = _StringObject.sharedUTF8.getter(countAndFlagsBits, object);
            v3 = v263;
          }

          closure #1 in _StringGuts._convertedToSmall()(v242, v3, &v278, v22);
          v87 = *(&v278 + 1);
          countAndFlagsBits = v278;
        }

LABEL_101:
        v5;
        v88._rawBits = 1;
        v89._rawBits = (v15 << 16) | 1;
        v90._rawBits = _StringGuts.validateScalarRange(_:)(v88, v89, v2, v5)._rawBits;
        if (v90._rawBits < 0x10000)
        {
          v90._rawBits |= 3;
        }

        if (v90._rawBits >> 16 || v91._rawBits >> 16 != v15)
        {
          v2 = specialized static String._copying(_:)(v90._rawBits, v91, v2, v5);
          v93 = v99;
          v5;
        }

        else
        {
          v93 = v5;
        }

        if ((v93 & 0x2000000000000000) != 0)
        {
          v93;
        }

        else if ((v93 & 0x1000000000000000) != 0)
        {
          v2 = _StringGuts._foreignConvertedToSmall()(v2, v93);
          v262 = v261;
          v93;
          v93 = v262;
        }

        else
        {
          if ((v2 & 0x1000000000000000) != 0)
          {
            v243 = ((v93 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v244 = v2 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v243 = _StringObject.sharedUTF8.getter(v2, v93);
          }

          closure #1 in _StringGuts._convertedToSmall()(v243, v244, &v278, v92);
          v93;
          v93 = *(&v278 + 1);
          v2 = v278;
        }

        v100 = HIBYTE(v87) & 0xF;
        v101 = HIBYTE(v93) & 0xF;
        v102 = v101 + v100;
        if (v101 + v100 <= 0xF)
        {
          v5;
          if (v101)
          {
            v103 = 0;
            v104 = 0;
            v105 = 8 * v100;
            do
            {
              v106 = v93 >> (v103 & 0x38);
              if (v104 < 8)
              {
                v106 = v2 >> v103;
              }

              v107 = (v106 << (v105 & 0x38)) | ((-255 << (v105 & 0x38)) - 1) & v87;
              v108 = (v106 << v105) | ((-255 << v105) - 1) & countAndFlagsBits;
              if (v100 <= 7)
              {
                countAndFlagsBits = v108;
              }

              else
              {
                v87 = v107;
              }

              ++v100;
              v105 += 8;
              v103 += 8;
              ++v104;
            }

            while (8 * v101 != v103);
          }

          object;
          v5;
          v109 = 0xA000000000000000;
          if (!(countAndFlagsBits & 0x8080808080808080 | v87 & 0x80808080808080))
          {
            v109 = 0xE000000000000000;
          }

          v110 = (v109 & 0xFF00000000000000 | (v102 << 56) | v87 & 0xFFFFFFFFFFFFFFLL);
          goto LABEL_156;
        }
      }

LABEL_344:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  if (v6 <= 15)
  {
    goto LABEL_99;
  }

  v79 = _StringGuts.nativeUnusedCapacity.getter(countAndFlagsBits, object) >= v12;
  v78 = v79 & ~v80;
  if ((v71 & 0x2000000000000000) == 0)
  {
    goto LABEL_106;
  }

  v72 = object & 0xFFFFFFFFFFFFFFFLL;
LABEL_92:
  if (!swift_isUniquelyReferenced_nonNull_native(v72))
  {
LABEL_106:
    if (v78)
    {
      goto LABEL_113;
    }

    goto LABEL_107;
  }

  if ((v78 & 1) == 0)
  {
LABEL_107:
    v94 = _StringGuts.nativeCapacity.getter(countAndFlagsBits, object);
    if (v95)
    {
      v96 = 0;
    }

    else
    {
      v96 = v94;
    }

    if (v96 + 0x4000000000000000 < 0)
    {
      __break(1u);
LABEL_336:
      __break(1u);
      goto LABEL_337;
    }

    v97 = 2 * v96;
    if (v97 > v6)
    {
      v6 = v97;
    }

LABEL_113:
    _StringGuts.grow(_:)(v6);
    if ((v5 & 0x1000000000000000) != 0)
    {
      goto LABEL_114;
    }

LABEL_95:
    if (!v276)
    {
      v86 = (v5 >> 62) & 1;
      *&v278 = v2;
      *(&v278 + 1) = v5 & 0xFFFFFFFFFFFFFFLL;
      v84 = &v278;
      v85 = v275;
      goto LABEL_146;
    }

    if ((v2 & 0x1000000000000000) != 0)
    {
      v81 = (v5 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v82 = v274;
      v83 = v274;
LABEL_98:
      v84 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v82, v81, v83);
      v86 = v2 >> 63;
LABEL_146:
      closure #1 in _StringGuts.append(_:)(v84, v85, &v279, v86);
      goto LABEL_147;
    }

LABEL_337:
    v253 = _StringObject.sharedUTF8.getter(v2, v5);
    if (v254 < v274)
    {
      goto LABEL_342;
    }

    v81 = v253;
    v83 = v254;
    v82 = v274;
    goto LABEL_98;
  }

  if ((v5 & 0x1000000000000000) == 0)
  {
    goto LABEL_95;
  }

LABEL_114:
  _StringGuts._foreignAppendInPlace(_:)(v2, v5, 0, v15);
LABEL_147:
  swift_bridgeObjectRelease_n(v5, 2);
LABEL_157:
  v120 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(", rangeOffset: ", 0xFuLL, 1);
  v121 = v120._countAndFlagsBits;
  v123 = v279._countAndFlagsBits;
  v122 = v279._object;
  v124 = (v279._object >> 56) & 0xF;
  v125 = v279._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((v279._object & 0x2000000000000000) != 0)
  {
    v126 = (v279._object >> 56) & 0xF;
  }

  else
  {
    v126 = v279._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v126 && (v279._countAndFlagsBits & ~v279._object & 0x2000000000000000) == 0)
  {
    v279._object;
    v279 = v120;
    goto LABEL_221;
  }

  v127 = (v120._object & 0x2000000000000000) == 0;
  v128 = (v120._object >> 56) & 0xF;
  if ((v279._object & 0x2000000000000000) == 0)
  {
    v129 = v120._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    v130 = (v120._object >> 56) & 0xF;
    if ((v120._object & 0x2000000000000000) == 0)
    {
LABEL_166:
      v130 = v129;
    }

    v276 = v129;
    if ((v120._object & 0x1000000000000000) == 0)
    {
      goto LABEL_168;
    }

LABEL_192:
    swift_bridgeObjectRetain_n(v120._object, 2);
    v150._rawBits = 1;
    v151._rawBits = (v130 << 16) | 1;
    v152._rawBits = _StringGuts.validateScalarRange(_:)(v150, v151, v120._countAndFlagsBits, v120._object)._rawBits;
    if (v152._rawBits < 0x10000)
    {
      v152._rawBits |= 3;
    }

    v134 = String.UTF8View.distance(from:to:)(v152, v153);
    v120._object;
    if ((v122 & 0x1000000000000000) != 0)
    {
      goto LABEL_195;
    }

LABEL_169:
    v70 = __OFADD__(v126, v134);
    v135 = v126 + v134;
    if (v70)
    {
      goto LABEL_197;
    }

LABEL_170:
    if ((v123 & ~v122 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v122 & 0xFFFFFFFFFFFFFFFLL))
    {
      v136 = _StringGuts.nativeUnusedCapacity.getter(v123, v122);
      if (v137)
      {
        goto LABEL_344;
      }

      v138 = (v122 >> 61) & 1;
      if (v136 < v134)
      {
        LODWORD(v138) = 1;
      }

      if (v135 <= 15 && v138)
      {
LABEL_177:
        if ((v122 & 0x2000000000000000) != 0)
        {
          v125 = v122;
        }

        else if ((v122 & 0x1000000000000000) != 0)
        {
          v123 = _StringGuts._foreignConvertedToSmall()(v123, v122);
          v125 = v264;
        }

        else
        {
          if ((v123 & 0x1000000000000000) != 0)
          {
            v245 = ((v122 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v245 = _StringObject.sharedUTF8.getter(v123, v122);
            v125 = v270;
          }

          closure #1 in _StringGuts._convertedToSmall()(v245, v125, &v278, v133);
          v125 = *(&v278 + 1);
          v123 = v278;
        }

        v120._object;
        v139._rawBits = 1;
        v140._rawBits = (v130 << 16) | 1;
        rawBits = _StringGuts.validateScalarRange(_:)(v139, v140, v120._countAndFlagsBits, v120._object)._rawBits;
        if (rawBits < 0x10000)
        {
          rawBits |= 3uLL;
        }

        if (rawBits >> 16 || v132._rawBits >> 16 != v130)
        {
          goto LABEL_198;
        }

        v142 = v120._object;
LABEL_199:
        if ((v142 & 0x2000000000000000) != 0)
        {
          v142;
        }

        else if ((v142 & 0x1000000000000000) != 0)
        {
          v121 = _StringGuts._foreignConvertedToSmall()(v121, v142);
          v266 = v265;
          v142;
          v142 = v266;
        }

        else
        {
          if ((v121 & 0x1000000000000000) != 0)
          {
            v246 = ((v142 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v247 = v121 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v246 = _StringObject.sharedUTF8.getter(v121, v142);
          }

          closure #1 in _StringGuts._convertedToSmall()(v246, v247, &v278, v141);
          v142;
          v142 = *(&v278 + 1);
          v121 = v278;
        }

        v155 = specialized _SmallString.init(_:appending:)(v123, v125, v121, v142);
        if (v157)
        {
          goto LABEL_344;
        }

        v158 = v155;
        v159 = v156;
        v122;
        swift_bridgeObjectRelease_n(v120._object, 2);
        v279._countAndFlagsBits = v158;
        v279._object = v159;
        goto LABEL_221;
      }
    }

    else if (v135 <= 15)
    {
      goto LABEL_177;
    }

    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v135, v134);
    if ((v120._object & 0x1000000000000000) != 0)
    {
      _StringGuts._foreignAppendInPlace(_:)(v120._countAndFlagsBits, v120._object, 0, v130);
    }

    else
    {
      if (v127)
      {
        if ((v120._countAndFlagsBits & 0x1000000000000000) != 0)
        {
          v143 = (v120._object & 0xFFFFFFFFFFFFFFFLL) + 32;
          v144 = v276;
          v145 = v276;
        }

        else
        {
          v255 = _StringObject.sharedUTF8.getter(v120._countAndFlagsBits, v120._object);
          if (v256 < v276)
          {
            goto LABEL_342;
          }

          v143 = v255;
          v145 = v256;
          v144 = v276;
        }

        v146 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v144, v143, v145);
        v148 = v120._countAndFlagsBits >> 63;
      }

      else
      {
        v148 = (v120._object >> 62) & 1;
        *&v278 = v120._countAndFlagsBits;
        *(&v278 + 1) = v120._object & 0xFFFFFFFFFFFFFFLL;
        v146 = &v278;
        v147 = (v120._object >> 56) & 0xF;
      }

      closure #1 in _StringGuts.append(_:)(v146, v147, &v279, v148);
    }

    swift_bridgeObjectRelease_n(v120._object, 2);
    goto LABEL_221;
  }

  if ((v120._object & 0x2000000000000000) == 0)
  {
    v129 = v120._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    v127 = 1;
    goto LABEL_166;
  }

  v149 = v124 + v128;
  if (v124 + v128 >= 0x10)
  {
    v127 = 0;
    v130 = (v120._object >> 56) & 0xF;
    v276 = v120._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if ((v120._object & 0x1000000000000000) != 0)
    {
      goto LABEL_192;
    }

LABEL_168:
    rawBits = v120._object;
    v134 = v130;
    if ((v122 & 0x1000000000000000) == 0)
    {
      goto LABEL_169;
    }

LABEL_195:
    rawBits = String.UTF8View._foreignCount()();
    v135 = rawBits + v134;
    if (!__OFADD__(rawBits, v134))
    {
      goto LABEL_170;
    }

LABEL_197:
    __break(1u);
LABEL_198:
    v121 = specialized static String._copying(_:)(rawBits, v132, v120._countAndFlagsBits, v120._object);
    v142 = v154;
    v120._object;
    goto LABEL_199;
  }

  if (v128)
  {
    v160 = 0;
    v161 = 0;
    v162 = 8 * v124;
    v163 = v279._object;
    do
    {
      v164 = v120._object >> (v160 & 0x38);
      if (v161 < 8)
      {
        v164 = v120._countAndFlagsBits >> v160;
      }

      v165 = (v164 << (v162 & 0x38)) | ((-255 << (v162 & 0x38)) - 1) & v163;
      v166 = (v164 << v162) | ((-255 << v162) - 1) & v123;
      if (v124 <= 7)
      {
        v123 = v166;
      }

      else
      {
        v163 = v165;
      }

      ++v124;
      v162 += 8;
      v160 += 8;
      ++v161;
    }

    while (8 * v128 != v160);
  }

  else
  {
    v163 = v279._object;
  }

  v279._object;
  v120._object;
  v167 = 0xA000000000000000;
  if (!(v123 & 0x8080808080808080 | v163 & 0x80808080808080))
  {
    v167 = 0xE000000000000000;
  }

  v279._countAndFlagsBits = v123;
  v279._object = (v167 & 0xFF00000000000000 | (v149 << 56) | v163 & 0xFFFFFFFFFFFFFFLL);
LABEL_221:
  v168 = _int64ToString(_:radix:uppercase:)(*v277, 10, 0, swift_int64ToString);
  v170 = v168;
  v171 = v169;
  v173 = v279._countAndFlagsBits;
  v172 = v279._object;
  v174 = (v279._object >> 56) & 0xF;
  v175 = v279._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((v279._object & 0x2000000000000000) != 0)
  {
    v176 = (v279._object >> 56) & 0xF;
  }

  else
  {
    v176 = v279._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v176 && (v279._countAndFlagsBits & ~v279._object & 0x2000000000000000) == 0)
  {
    v279._object;
    v279._countAndFlagsBits = v170;
    v279._object = v171;
    goto LABEL_281;
  }

  v177 = (v169 & 0x2000000000000000) == 0;
  v178 = HIBYTE(v169) & 0xF;
  if ((v279._object & 0x2000000000000000) == 0)
  {
    v179 = v168 & 0xFFFFFFFFFFFFLL;
    v180 = HIBYTE(v169) & 0xF;
    if ((v169 & 0x2000000000000000) == 0)
    {
LABEL_230:
      v180 = v179;
    }

    v277 = v179;
    if ((v169 & 0x1000000000000000) == 0)
    {
      goto LABEL_232;
    }

LABEL_257:
    swift_bridgeObjectRetain_n(v169, 2);
    v208._rawBits = 1;
    v209._rawBits = (v180 << 16) | 1;
    v210._rawBits = _StringGuts.validateScalarRange(_:)(v208, v209, v170, v171)._rawBits;
    if (v210._rawBits < 0x10000)
    {
      v210._rawBits |= 3;
    }

    v182 = String.UTF8View.distance(from:to:)(v210, v211);
    v171;
    if ((v172 & 0x1000000000000000) != 0)
    {
      goto LABEL_260;
    }

LABEL_233:
    v70 = __OFADD__(v176, v182);
    v183 = v176 + v182;
    if (v70)
    {
      goto LABEL_262;
    }

LABEL_234:
    if ((v173 & ~v172 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v172 & 0xFFFFFFFFFFFFFFFLL))
    {
      v184 = _StringGuts.nativeUnusedCapacity.getter(v173, v172);
      if (v185)
      {
        goto LABEL_344;
      }

      v186 = (v172 >> 61) & 1;
      if (v184 < v182)
      {
        LODWORD(v186) = 1;
      }

      if (v183 <= 15 && v186)
      {
        goto LABEL_241;
      }
    }

    else if (v183 <= 15)
    {
LABEL_241:
      if ((v172 & 0x2000000000000000) != 0)
      {
        v187 = v172;
      }

      else if ((v172 & 0x1000000000000000) != 0)
      {
        v173 = _StringGuts._foreignConvertedToSmall()(v173, v172);
        v187 = v267;
      }

      else
      {
        if ((v173 & 0x1000000000000000) != 0)
        {
          v248 = ((v172 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v248 = _StringObject.sharedUTF8.getter(v173, v172);
          v175 = v271;
        }

        closure #1 in _StringGuts._convertedToSmall()(v248, v175, &v278, v181);
        v187 = *(&v278 + 1);
        v173 = v278;
      }

      v171;
      v188._rawBits = 1;
      v189._rawBits = (v180 << 16) | 1;
      v190._rawBits = _StringGuts.validateScalarRange(_:)(v188, v189, v170, v171)._rawBits;
      if (v190._rawBits < 0x10000)
      {
        v190._rawBits |= 3;
      }

      v192 = Substring.description.getter(v190._rawBits, v191, v170, v171);
      v194 = v193;
      v171;
      if ((v194 & 0x2000000000000000) != 0)
      {
        v194;
      }

      else if ((v194 & 0x1000000000000000) != 0)
      {
        v192 = _StringGuts._foreignConvertedToSmall()(v192, v194);
        v269 = v268;
        v194;
        v194 = v269;
      }

      else
      {
        if ((v192 & 0x1000000000000000) != 0)
        {
          v249 = ((v194 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v250 = v192 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v249 = _StringObject.sharedUTF8.getter(v192, v194);
        }

        closure #1 in _StringGuts._convertedToSmall()(v249, v250, &v278, v195);
        v194;
        v194 = *(&v278 + 1);
        v192 = v278;
      }

      v196 = specialized _SmallString.init(_:appending:)(v173, v187, v192, v194);
      if (v198)
      {
        goto LABEL_344;
      }

      v199 = v196;
      v200 = v197;
      v172;
      swift_bridgeObjectRelease_n(v171, 2);
      v279._countAndFlagsBits = v199;
      v279._object = v200;
      goto LABEL_281;
    }

    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v183, v182);
    if ((v171 & 0x1000000000000000) != 0)
    {
      goto LABEL_263;
    }

    if (!v177)
    {
      v206 = (v171 >> 62) & 1;
      *&v278 = v170;
      *(&v278 + 1) = v171 & 0xFFFFFFFFFFFFFFLL;
      v204 = &v278;
      v205 = HIBYTE(v171) & 0xF;
      goto LABEL_275;
    }

    if ((v170 & 0x1000000000000000) != 0)
    {
      v201 = (v171 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v202 = v277;
      v203 = v277;
LABEL_254:
      v204 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v202, v201, v203);
      v206 = v170 >> 63;
LABEL_275:
      closure #1 in _StringGuts.append(_:)(v204, v205, &v279, v206);
      goto LABEL_276;
    }

    v257 = _StringObject.sharedUTF8.getter(v170, v171);
    if (v258 >= v277)
    {
      v201 = v257;
      v203 = v258;
      v202 = v277;
      goto LABEL_254;
    }

LABEL_342:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v169 & 0x2000000000000000) == 0)
  {
    v179 = v168 & 0xFFFFFFFFFFFFLL;
    v177 = 1;
    goto LABEL_230;
  }

  v207 = v174 + v178;
  if (v174 + v178 < 0x10)
  {
    if (v178)
    {
      v213 = 0;
      v214 = 0;
      v215 = 8 * v174;
      v216 = v279._object;
      do
      {
        v217 = v169 >> (v213 & 0x38);
        if (v214 < 8)
        {
          v217 = v168 >> v213;
        }

        v218 = (v217 << (v215 & 0x38)) | ((-255 << (v215 & 0x38)) - 1) & v216;
        v219 = (v217 << v215) | ((-255 << v215) - 1) & v173;
        if (v174 <= 7)
        {
          v173 = v219;
        }

        else
        {
          v216 = v218;
        }

        ++v174;
        v215 += 8;
        v213 += 8;
        ++v214;
      }

      while (8 * v178 != v213);
    }

    else
    {
      v216 = v279._object;
    }

    v279._object;
    v171;
    v220 = 0xA000000000000000;
    if (!(v173 & 0x8080808080808080 | v216 & 0x80808080808080))
    {
      v220 = 0xE000000000000000;
    }

    v279._countAndFlagsBits = v173;
    v279._object = (v220 & 0xFF00000000000000 | (v207 << 56) | v216 & 0xFFFFFFFFFFFFFFLL);
  }

  else
  {
    v177 = 0;
    v180 = HIBYTE(v169) & 0xF;
    v277 = (v168 & 0xFFFFFFFFFFFFLL);
    if ((v169 & 0x1000000000000000) != 0)
    {
      goto LABEL_257;
    }

LABEL_232:
    v169;
    v182 = v180;
    if ((v172 & 0x1000000000000000) == 0)
    {
      goto LABEL_233;
    }

LABEL_260:
    v212 = String.UTF8View._foreignCount()();
    v183 = v212 + v182;
    if (!__OFADD__(v212, v182))
    {
      goto LABEL_234;
    }

LABEL_262:
    __break(1u);
LABEL_263:
    _StringGuts._foreignAppendInPlace(_:)(v170, v171, 0, v180);
LABEL_276:
    swift_bridgeObjectRelease_n(v171, 2);
  }

LABEL_281:
  v221 = v279._object;
  v222 = (v279._object >> 56) & 0xF;
  if ((v279._object & 0x2000000000000000) == 0)
  {
    v222 = v279._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v222 || (v279._countAndFlagsBits & ~v279._object & 0x2000000000000000) != 0)
  {
    if ((v279._object & 0x2000000000000000) != 0 && (v223 = specialized _SmallString.init(_:appending:)(v279._countAndFlagsBits, v279._object, 0x3EuLL, 0xE100000000000000), (v224 & 1) == 0))
    {
      v234 = v223;
      v221;
      0xE100000000000000;
      return v234;
    }

    else
    {
      0xE100000000000000;
      _StringGuts.append(_:)(62, 0xE100000000000000, 0, 1, v225, v226, v227, v228, v229, v230, v231, v232);
      swift_bridgeObjectRelease_n(0xE100000000000000, 2);
      return v279._countAndFlagsBits;
    }
  }

  else
  {
    v279._object;
    return 62;
  }
}

uint64_t DiscontiguousSlice._customContainsEquatableElement(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for DiscontiguousSlice.Index(255, *(a2 + 16), *(a2 + 24), a4);
  v9 = type metadata accessor for Optional(0, v6, v7, v8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v27 - v12;
  v16 = type metadata accessor for Optional(0, v9, v14, v15);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v27 - v23;
  DiscontiguousSlice._customIndexOfEquatableElement(_:)(a1, a2, (&v27 - v23));
  (*(v17 + 32))(v21, v24, v16);
  if ((*(v10 + 48))(v21, 1, v9) == 1)
  {
    return 2;
  }

  (*(v10 + 32))(v13, v21, v9);
  v25 = (*(*(v6 - 8) + 48))(v13, 1, v6) != 1;
  (*(v10 + 8))(v13, v9);
  return v25;
}

uint64_t DiscontiguousSlice._customIndexOfEquatableElement(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v126 = a1;
  v107 = a3;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  swift_getAssociatedTypeWitness(0, v5, v6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v103 = &v103 - v11;
  swift_getAssociatedTypeWitness(0, v5, v6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v125 = v12;
  v142 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v124 = &v103 - v14;
  v17 = type metadata accessor for Optional(255, v8, v15, v16);
  v106 = type metadata accessor for Optional(0, v17, v18, v19);
  v111 = *(v106 - 8);
  v21 = MEMORY[0x1EEE9AC00](v106, v20);
  v23 = &v103 - v22;
  v143 = v17;
  v24 = *(v17 - 8);
  v26 = MEMORY[0x1EEE9AC00](v21, v25);
  v28 = &v103 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v29);
  v115 = &v103 - v30;
  v133 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, v6, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v118 = v8;
  v33 = type metadata accessor for Range(255, v8, AssociatedConformanceWitness, v32);
  swift_getTupleTypeMetadata2(0, &type metadata for Int, v33, "offset element ", 0);
  v35 = v34;
  v36 = *(v34 - 8);
  v38 = MEMORY[0x1EEE9AC00](v34, v37);
  v140 = &v103 - v39;
  v141 = v33;
  v40 = *(v33 - 1);
  v42 = MEMORY[0x1EEE9AC00](v38, v41);
  v123 = &v103 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42, v44);
  v139 = &v103 - v45;
  v132 = type metadata accessor for Optional(0, v35, v46, v47);
  v49 = MEMORY[0x1EEE9AC00](v132, v48);
  v136 = &v103 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49, v51);
  v131 = &v103 - v52;
  v53 = *(a2 + 36);
  v54 = v23;
  v127 = v3;
  v55 = *(v3 + v53);
  v138 = v40 + 16;
  v135 = (v40 + 32);
  v109 = (v36 + 32);
  v129 = (v56 + 32);
  v130 = (v36 + 56);
  v137 = *(v55 + 16);
  v128 = (v36 + 48);
  v134 = v5;
  v122 = v5 + 11;
  v121 = (v40 + 8);
  v120 = (v142 + 8);
  v119 = (v24 + 48);
  v114 = (v24 + 32);
  v104 = v9;
  v113 = (v9 + 48);
  v112 = (v24 + 8);
  v105 = (v111 + 8);
  v55;
  v111 = 0;
  v57 = 0;
  v108 = 1;
  v117 = v40;
  v116 = v35;
LABEL_2:
  v59 = v140;
  v58 = v141;
  v60 = v139;
  v61 = v137;
  if (v57 == v137)
  {
LABEL_3:
    v62 = 1;
    goto LABEL_9;
  }

  while (1)
  {
    if ((v57 & 0x8000000000000000) != 0 || v57 >= *(v55 + 16))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    (*(v40 + 16))(v60, v55 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v57, v58);
    if (v57 >= *(v55 + 16))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v63 = v57;
    v64 = *(v35 + 48);
    v65 = v111;
    *v59 = v111;
    result = (*v135)(&v59[v64], v60, v58);
    v111 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
      __break(1u);
      return result;
    }

    v61 = v63 + 1;
    (*v109)(v136, v59, v35);
    v62 = 0;
LABEL_9:
    v67 = v136;
    (*v130)(v136, v62, 1, v35);
    v68 = v131;
    (*v129)(v131, v67, v132);
    if ((*v128)(v68, 1, v35) == 1)
    {
      break;
    }

    v142 = v61;
    v69 = v28;
    v110 = *v68;
    v70 = v68 + *(v35 + 48);
    v71 = v123;
    (*v135)(v123, v70, v58);
    v72 = v58;
    v74 = v133;
    v73 = v134;
    v75 = v124;
    (v134[11])(v71, v133, v134);
    (*v121)(v71, v72);
    v76 = v73;
    v77 = v143;
    v78 = v125;
    v79 = swift_getAssociatedConformanceWitness(v76, v74, v125, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection);
    (*(v79 + 120))(v126, v78, v79);
    (*v120)(v75, v78);
    if ((*v119)(v54, 1, v77) == 1)
    {
      (*v105)(v54, v106);
      v108 = 0;
      v28 = v69;
      v35 = v116;
      v40 = v117;
      v57 = v142;
      goto LABEL_2;
    }

    v80 = *v114;
    v81 = v115;
    v82 = v143;
    (*v114)(v115, v54, v143);
    v28 = v69;
    v80(v69, v81, v82);
    if ((*v113)(v69, 1, v118) != 1)
    {
      v55;
      v89 = *(v104 + 32);
      v90 = v103;
      v91 = v69;
      v92 = v118;
      v89(v103, v91, v118);
      v94 = type metadata accessor for DiscontiguousSlice.Index(0, v133, v134, v93);
      v95 = v107;
      v89(v107 + *(v94 + 36), v90, v92);
      *v95 = v110;
      (*(*(v94 - 8) + 56))(v95, 0, 1, v94);
      v98 = type metadata accessor for Optional(0, v94, v96, v97);
      return (*(*(v98 - 8) + 56))(v95, 0, 1, v98);
    }

    (*v112)(v69, v143);
    v59 = v140;
    v58 = v141;
    v35 = v116;
    v40 = v117;
    v60 = v139;
    v61 = v137;
    v57 = v142;
    if (v142 == v137)
    {
      goto LABEL_3;
    }
  }

  v55;
  if (v108)
  {
    v84 = type metadata accessor for DiscontiguousSlice.Index(0, v133, v134, v83);
    v85 = v107;
    (*(*(v84 - 8) + 56))(v107, 1, 1, v84);
    v88 = type metadata accessor for Optional(0, v84, v86, v87);
    return (*(*(v88 - 8) + 56))(v85, 0, 1, v88);
  }

  else
  {
    v99 = type metadata accessor for DiscontiguousSlice.Index(255, v133, v134, v83);
    v102 = type metadata accessor for Optional(0, v99, v100, v101);
    return (*(*(v102 - 8) + 56))(v107, 1, 1, v102);
  }
}

__objc2_class **DiscontiguousSlice._copyToContiguousArray()(uint64_t a1)
{
  v3 = specialized DiscontiguousSlice._copyToContiguousArray()(v1, *(a1 + 16), *(a1 + 24));
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t RangeSet.ranges.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance DiscontiguousSlice<A>@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *(a1 - 1);
  (*(v12 + 16))(a2, v2, a1);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for DiscontiguousSlice<A>, a1, v5);
  v8 = type metadata accessor for IndexingIterator(0, a1, WitnessTable, v7);
  DiscontiguousSlice.startIndex.getter(a1, (a2 + *(v8 + 36)), v9);
  v10 = *(v12 + 8);

  return v10(v2, a1);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance DiscontiguousSlice<A>(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for DiscontiguousSlice<A>, a1, a3);

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

__objc2_class **protocol witness for Sequence._copyToContiguousArray() in conformance DiscontiguousSlice<A>(uint64_t a1)
{
  v3 = specialized DiscontiguousSlice._copyToContiguousArray()(v1, *(a1 + 16), *(a1 + 24));
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t DiscontiguousSlice.startIndex.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>, uint64_t a3@<X3>)
{
  v5 = *(v3 + *(a1 + 36));
  v6 = *(a1 + 24);
  if (*(v5 + 16))
  {
    v7 = *(a1 + 16);
    swift_getAssociatedTypeWitness(255, v6, v7, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
    v9 = v8;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, v7, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
    v12 = *(type metadata accessor for Range(0, v9, AssociatedConformanceWitness, v11) - 8);
    v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v15 = type metadata accessor for DiscontiguousSlice.Index(0, v7, v6, v14);
    result = (*(*(v9 - 8) + 16))(&a2[*(v15 + 36)], v5 + v13, v9);
  }

  else
  {
    v17 = *(v6 + 72);
    v18 = *(a1 + 16);
    type metadata accessor for DiscontiguousSlice.Index(0, v18, v6, a3);
    result = v17(v18, v6);
  }

  *a2 = 0;
  return result;
}

uint64_t DiscontiguousSlice.endIndex.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>, uint64_t a3@<X3>)
{
  v5 = *(*(v3 + *(a1 + 36)) + 16);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(v6 + 72);
  type metadata accessor for DiscontiguousSlice.Index(0, v7, v6, a3);
  result = v8(v7, v6);
  *a2 = v5;
  return result;
}

uint64_t RangeSet.Ranges.subscript.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X3>)
{
  if ((a1 & 0x8000000000000000) != 0 || (v7 = *v4, *(v7 + 16) <= a1))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v8 = type metadata accessor for Range(0, *(a2 + 16), *(a2 + 24), a4);
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v11 = v7 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * a1;

  return v10(a3, v11, v8);
}

char *DiscontiguousSlice.distance(from:to:)(char *a1, char *a2, uint64_t a3)
{
  v8 = *(a3 + 16);
  v7 = *(a3 + 24);
  swift_getAssociatedTypeWitness(0, v7, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v10 = v9;
  v103 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v101 = &v89 - v12;
  swift_getAssociatedTypeWitness(255, v7, v8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v14 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, v8, v13, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v17 = type metadata accessor for Range(255, v14, AssociatedConformanceWitness, v16);
  v20 = type metadata accessor for Optional(0, v17, v18, v19);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v99 = (&v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v107 = v17;
  v105 = *(v17 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v29 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v27, v30);
  v106 = &v89 - v32;
  MEMORY[0x1EEE9AC00](v31, v33);
  v100 = a1;
  v37 = *a1;
  v102 = a2;
  v38 = *a2;
  if (v38 < v37)
  {
    LODWORD(v88) = 0;
    v87 = 409;
    LOBYTE(v86) = 2;
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v98 = v36;
  v104 = &v89 - v35;
  v39 = *(a3 + 36);
  v108 = v3;
  v116 = *(v3 + v39);
  v111 = v38;
  v40 = *(v116 + 16);
  v113 = 0;
  v114 = v40;
  v41 = type metadata accessor for RangeSet.Ranges(0, v14, AssociatedConformanceWitness, v34);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for RangeSet<A>.Ranges, v41, v42);
  specialized Collection._failEarlyRangeCheck(_:bounds:)(&v111, &v113, v41, WitnessTable);
  if (__OFADD__(v38, 1))
  {
    __break(1u);
LABEL_17:
    LODWORD(v88) = 0;
    v87 = 691;
    LOBYTE(v86) = 2;
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v111 = v37;
  v112 = v38 + 1;
  Collection<>.subscript.getter(&v111, v41, WitnessTable, &v113);
  v44 = v113;
  v45 = v115;
  v116 = v114;
  v111 = v113;
  v109 = v114;
  v47 = swift_getWitnessTable(protocol conformance descriptor for RangeSet<A>.Ranges, v41, v46);
  if (RandomAccessCollection<>.distance(from:to:)(&v111, &v116, v41, v47, &protocol witness table for Int) >= 2)
  {
    v97 = v8;
    v95 = v10;
    v113 = v44;
    v114 = v109;
    v115 = v45;
    v93 = WitnessTable;
    v49 = type metadata accessor for Slice(0, v41, WitnessTable, v48);
    v51 = swift_getWitnessTable(protocol conformance descriptor for Slice<A>, v49, v50);
    v52 = v98;
    Collection.first.getter(v49, v51, v98);
    v53 = v105;
    v54 = v45;
    v55 = v107;
    v96 = *(v105 + 48);
    if ((v96)(v52, 1, v107) != 1)
    {
      v56 = *(v53 + 32);
      v56(v104, v52, v55);
      v90 = v44;
      v113 = v44;
      v114 = v109;
      v91 = v54;
      v115 = v54;
      v92 = v41;
      v110 = swift_getWitnessTable(protocol conformance descriptor for RangeSet<A>.Ranges, v41, v57);
      v58 = swift_getWitnessTable(protocol conformance descriptor for <> Slice<A>, v49, &v110);
      v59 = v99;
      v89 = v49;
      BidirectionalCollection.last.getter(v49, v58, v99);
      if ((v96)(v59, 1, v55) == 1)
      {
        v85 = 163;
LABEL_23:
        LODWORD(v88) = 0;
        v87 = v85;
        LOBYTE(v86) = 2;
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v56(v106, v59, v55);
      v99 = *(v7 + 88);
      v10 = v101;
      v60 = v104;
      v61 = v97;
      (v99)(v104, v97, v7);
      v98 = type metadata accessor for DiscontiguousSlice.Index(0, v61, v7, v62);
      v63 = *(v98 + 36);
      v94 = *(v55 + 36);
      v64 = v95;
      v65 = v61;
      v8 = swift_getAssociatedConformanceWitness(v7, v61, v95, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection);
      v96 = *(v8 + 152);
      v94 = v96(&v100[v63], &v60[v94], v64, v8);
      v44 = v103 + 8;
      v103 = *(v103 + 8);
      (v103)(v10, v64);
      v66 = v106;
      v100 = v7;
      (v99)(v106, v65, v7);
      v29 = v96(v66, &v102[*(v98 + 36)], v64, v8);
      (v103)(v10, v64);
      v67 = v109;
      v68 = v109 - 1;
      if (__OFSUB__(v109, 1))
      {
        __break(1u);
      }

      else if (v68 > 0)
      {
        v69 = *(v105 + 8);
        v70 = v107;
        v69(v106, v107);
        v69(v104, v70);
        v113 = 1;
        v114 = v68;
        v111 = v90;
        v112 = v67;
        v71 = specialized Collection._failEarlyRangeCheck(_:bounds:)(&v113, &v111, v92, v93);
        v113 = 1;
        v114 = v68;
        v115 = v91;
        MEMORY[0x1EEE9AC00](v71, v72);
        v41 = (&v89 - 6);
        v86 = v97;
        v87 = v100;
        v88 = v108;
        v73 = v89;
        v75 = swift_getWitnessTable(protocol conformance descriptor for Slice<A>, v89, v74);
        v45 = 0;
        WitnessTable = _sSTsE6reduceyqd__qd___qd__qd___7ElementQztKXEtKlFSixq_q0_s5Error_pRi_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lySiACSiIsgnnrzo_xSisAD_pSTRzSiRsd__r__lIetMygndzo_Tp5(0, partial apply for closure #1 in DiscontiguousSlice.distance(from:to:), (&v89 - 6), v73, v75);
        v115;
        v76 = WitnessTable + v94;
        if (!__OFADD__(v94, WitnessTable))
        {
          result = &v29[v76];
          if (!__OFADD__(v76, v29))
          {
            return result;
          }

          __break(1u);
          goto LABEL_12;
        }

        __break(1u);
        goto LABEL_21;
      }

      LODWORD(v88) = 0;
      v87 = 760;
      LOBYTE(v86) = 2;
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_21:
    v85 = 162;
    goto LABEL_23;
  }

LABEL_12:
  v111 = 0;
  v113 = v44;
  v114 = v109;
  specialized Collection._failEarlyRangeCheck(_:bounds:)(&v111, &v113, v41, WitnessTable);
  v78 = v107;
  if (!*(v45 + 16))
  {
    goto LABEL_17;
  }

  v79 = v105;
  (*(v105 + 16))(v29, v45 + ((*(v79 + 80) + 32) & ~*(v79 + 80)), v107);
  v45;
  v80 = v101;
  (*(v7 + 88))(v29, v8, v7);
  (*(v79 + 8))(v29, v78);
  v82 = *(type metadata accessor for DiscontiguousSlice.Index(0, v8, v7, v81) + 36);
  v83 = swift_getAssociatedConformanceWitness(v7, v8, v10, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection);
  v84 = (*(v83 + 152))(&v100[v82], &v102[v82], v10, v83);
  (*(v103 + 8))(v80, v10);
  return v84;
}

uint64_t specialized Slice.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 < a2 || a1 >= a3 || a1 < 0 || a1 >= a5)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return *(a4 + a1);
}

uint64_t Slice.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  v51 = a1;
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  v44 = a2;
  v49 = v3;
  v50 = v4;
  swift_getAssociatedTypeWitness(255, v3, v4, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  swift_getTupleTypeMetadata2(0, v7, v7, "lower upper ", 0);
  v9 = *(v8 - 8);
  v46 = v8;
  v47 = v9;
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v42 - v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v3, v4, v7, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v45 = type metadata accessor for Range(0, v7, AssociatedConformanceWitness, v18);
  v48 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v19);
  v21 = &v42 - v20;
  v22 = *(a2 + 36);
  v23 = *(v7 - 1);
  v24 = v23[2];
  v25 = v16;
  v43 = v16;
  v26 = v16;
  v27 = v53;
  v24(v26, v53, v7);
  v28 = v46;
  v24(&v25[*(v46 + 48)], v27 + v22, v7);
  v29 = v47;
  (*(v47 + 16))(v13, v25, v28);
  v30 = *(v28 + 48);
  v31 = v23[4];
  v31(v21, v13, v7);
  v32 = v23[1];
  v32(&v13[v30], v7);
  (*(v29 + 32))(v13, v43, v28);
  v33 = v45;
  v31(&v21[*(v45 + 36)], &v13[*(v28 + 48)], v7);
  v32(v13, v7);
  v34 = v50;
  v35 = v51;
  v36 = v49;
  (v49[20])(v51, v21, v50);
  (*(v48 + 8))(v21, v33);
  v37 = (v36[10])(v54, v35, v34);
  v39 = v38;
  swift_getAssociatedTypeWitness(0, v36[1], v34, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  (*(*(v40 - 8) + 16))(v52, v39, v40);
  return v37(v54, 0);
}

uint64_t Slice.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v51 = a1;
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v43 = a2;
  v46 = v4;
  v47 = v3;
  v48 = a3;
  swift_getAssociatedTypeWitness(255, v4, v3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  swift_getTupleTypeMetadata2(0, v7, v7, "lower upper ", 0);
  v9 = v8;
  v44 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v40 - v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v4, v3, v7, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v49 = type metadata accessor for Range(0, v7, AssociatedConformanceWitness, v18);
  v45 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v19);
  v21 = &v40 - v20;
  v22 = *(a2 + 36);
  v23 = *(v7 - 1);
  v24 = v23[2];
  v25 = v50;
  v24(v16, v50, v7);
  v26 = &v16[*(v9 + 48)];
  v41 = v16;
  v24(v26, v25 + v22, v7);
  v27 = v44;
  (*(v44 + 16))(v13, v16, v9);
  v28 = *(v9 + 48);
  v29 = v23[4];
  v29(v21, v13, v7);
  v42 = v29;
  v30 = v23[1];
  v30(&v13[v28], v7);
  (*(v27 + 32))(v13, v41, v9);
  v29(&v21[*(v49 + 36)], &v13[*(v9 + 48)], v7);
  v30(v13, v7);
  v31 = v43;
  v32 = *(v43 + 40);
  v33 = v47;
  v34 = v50;
  (v46[22])(v51, v21, v47);
  v35 = v45;
  v36 = v49;
  (*(v45 + 8))(v21, v49);
  v37 = v48;
  (*(*(v33 - 1) + 2))(&v48[*(v31 + 40)], v34 + v32, v33);
  (*(v35 + 16))(v21, v51, v36);
  v38 = v42;
  v42(v37, v21, v7);
  return v38(&v37[*(v31 + 36)], &v21[*(v36 + 36)], v7);
}

uint64_t closure #1 in DiscontiguousSlice.distance(from:to:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, Class *a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v20 - v14;
  v16 = *a1;
  (*(a4 + 88))(a2, a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v11, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection);
  v18 = (*(AssociatedConformanceWitness + 112))(v11, AssociatedConformanceWitness);
  result = (*(v12 + 8))(v15, v11);
  if (__OFADD__(v16, v18))
  {
    __break(1u);
  }

  else
  {
    *a5 = v16 + v18;
  }

  return result;
}

uint64_t _sSTsE6reduceyqd__qd___qd__qd___7ElementQztKXEtKlFSixq_q0_s5Error_pRi_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lySiACSiIsgnnrzo_xSisAD_pSTRzSiRsd__r__lIetMygndzo_Tp5(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, char *), uint64_t a3, Class *a4, int **a5)
{
  v57 = a3;
  v49 = a2;
  swift_getAssociatedTypeWitness(0, a5, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v10 = v9;
  v60 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v48 = &v46 - v12;
  v15 = type metadata accessor for Optional(0, v10, v13, v14);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v19 = &v46 - v18;
  v20 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](v17, v21);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v25 = v24;
  v50 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = (&v46 - v27);
  v62 = a1;
  (*(v20 + 16))(v23, v59, a4);
  v29 = v58;
  (*(v58 + 4))(a4, v58);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v29, a4, v25, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v31 = *(AssociatedConformanceWitness + 16);
  v58 = v28;
  v59 = v25;
  v32 = v25;
  v33 = v10;
  v55 = v31;
  v56 = AssociatedConformanceWitness;
  v53 = AssociatedConformanceWitness + 16;
  (v31)(v32);
  v34 = v60;
  v54 = *(v60 + 48);
  if (v54(v19, 1, v10) != 1)
  {
    v35 = a1;
    v36 = *(v34 + 32);
    v60 = v34 + 32;
    v37 = (v34 + 8);
    v38 = v48;
    v47 = v33;
    v36(v48, v19, v33);
    v39 = v49;
    v49(&v61, &v62, v38);
    if (v5)
    {
      (*v37)(v38, v47);
      (*(v50 + 8))(v58, v59);
      return v35;
    }

    v40 = *v37;
    v51 = v36;
    v52 = v40;
    v41 = v34 + 8;
    v42 = v47;
    while (1)
    {
      v43 = v41;
      v52(v38, v42);
      v44 = v61;
      v62 = v61;
      v55(v59, v56);
      if (v54(v19, 1, v42) == 1)
      {
        break;
      }

      v51(v38, v19, v42);
      v39(&v61, &v62, v38);
      v41 = v43;
    }

    a1 = v44;
  }

  (*(v50 + 8))(v58, v59);
  return a1;
}

uint64_t Sequence.reduce<A>(_:_:)@<X0>(char *a1@<X0>, void (*a2)(uint64_t, char *)@<X1>, uint64_t a3@<X2>, Class *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v65 = a1;
  v62 = a2;
  v63 = a3;
  v53 = a7;
  v54 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v50 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, v12, v11, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v51 = v13;
  v56 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v13);
  v15 = &v49 - v14;
  v19 = type metadata accessor for Optional(0, v16, v17, v18);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v23 = &v49 - v22;
  v24 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](v21, v25);
  v27 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a6, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v29 = v28;
  v52 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v49 - v31;
  v33 = *(v54 + 16);
  v64 = a5;
  v33(v53, v65, a5);
  (*(v24 + 16))(v27, v66, a4);
  v34 = v23;
  (*(a6 + 32))(a4, a6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a6, a4, v29, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v36 = *(AssociatedConformanceWitness + 16);
  v65 = v32;
  v66 = v29;
  v60 = AssociatedConformanceWitness + 16;
  v61 = AssociatedConformanceWitness;
  v59 = v36;
  (v36)(v29);
  v37 = v56;
  v38 = v51;
  v57 = *(v56 + 48);
  v58 = v56 + 48;
  if (v57(v23, 1, v51) == 1)
  {
    return (*(v52 + 8))(v65, v66);
  }

  v40 = *(v37 + 32);
  v39 = v37 + 32;
  v41 = (v39 - 24);
  v42 = v53;
  v55 = v40;
  v56 = v54 + 8;
  v43 = (v54 + 32);
  v44 = v50;
  while (1)
  {
    v45 = v39;
    v55(v15, v34, v38);
    v46 = v67;
    v62(v42, v15);
    if (v46)
    {
      break;
    }

    v67 = 0;
    (*v41)(v15, v38);
    v47 = v64;
    (*v56)(v42, v64);
    (*v43)(v42, v44, v47);
    v59(v66, v61);
    v39 = v45;
    if (v57(v34, 1, v38) == 1)
    {
      return (*(v52 + 8))(v65, v66);
    }
  }

  (*v41)(v15, v38);
  (*(v52 + 8))(v65, v66);
  return (*v56)(v42, v64);
}