uint64_t VocabularyManager.prefixLookUp.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore17VocabularyManagerC12PrefixLookupVSgMd, &_s19TokenGenerationCore17VocabularyManagerC12PrefixLookupVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC19TokenGenerationCore17VocabularyManager____lazy_storage___prefixLookUp;
  swift_beginAccess();
  outlined init with copy of VocabularyManager.PrefixLookup?(v1 + v9, v8);
  v10 = type metadata accessor for VocabularyManager.PrefixLookup(0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return outlined init with take of VocabularyManager.PrefixLookup(v8, a1);
  }

  outlined destroy of VocabularyManager.PrefixLookup?(v8);
  VocabularyManager.processTokenizerVocab()(a1);
  _s19TokenGenerationCore14TerminalSymbolOWOcTm_2(a1, v5, type metadata accessor for VocabularyManager.PrefixLookup);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  outlined assign with take of VocabularyManager.PrefixLookup?(v5, v1 + v9);
  return swift_endAccess();
}

uint64_t specialized Collection<>.unionedCharacterSet()(uint64_t a1)
{
  v2 = type metadata accessor for TerminalSymbol(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CharacterSet();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = CharacterSet.init()();
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (v7 + 32);
    v13 = (v7 + 8);
    v14 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v15 = *(v3 + 72);
    do
    {
      _s19TokenGenerationCore14TerminalSymbolOWOcTm_2(v14, v5, type metadata accessor for TerminalSymbol);
      result = swift_getEnumCaseMultiPayload();
      if ((result - 1) < 2)
      {
        (*v12)(v9, v5, v6);
        CharacterSet.formUnion(_:)();
        result = (*v13)(v9, v6);
      }

      else
      {
        if (result)
        {
          __break(1u);
          return result;
        }

        result = CharacterSet.insert(_:)();
      }

      v14 += v15;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t *specialized Sequence.sorted(by:)(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = (a2 - result);
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v4)
  {
    v7 = result;
    v8 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(a2 - result, 0);
    result = specialized Sequence._copyContents(initializing:)(v10, (v8 + 32), v4, v7, a2);
    if (result == v4)
    {
      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return result;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_6:
  v11 = v8;
  specialized MutableCollection<>.sort(by:)(&v11, a3);
  v9 = v11;
  if (v3)
  {
  }

  return v9;
}

Swift::OpaquePointer_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VocabularyManager.retokenize(tokenIDs:isFirstDecodedToken:)(Swift::OpaquePointer tokenIDs, Swift::Bool isFirstDecodedToken)
{
  if (*(tokenIDs._rawValue + 2))
  {
    v3 = v2;
    v5 = *(tokenIDs._rawValue + 4);
    v6 = __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
    v7 = *v6;
    v8 = v6[1];
    v10 = v3[11];
    v9 = v3[12];
    __swift_project_boxed_opaque_existential_1(v3 + 8, v10);
    v11 = *(v9 + 16);

    v12 = v11(v5, v10, v9);
    v14 = specialized Sequence<>.starts<A>(with:)(v7, v8, v12, v13);

    v15 = v3[11];
    v16 = v3[12];
    __swift_project_boxed_opaque_existential_1(v3 + 8, v15);
    if (isFirstDecodedToken || (v14 & 1) == 0)
    {
      v17 = (*(v16 + 24))(10, 0xE100000000000000, v15, v16);
      if (v51)
      {
        goto LABEL_27;
      }

      v22 = v17;
      v23 = v3[11];
      v24 = v3[12];
      __swift_project_boxed_opaque_existential_1(v3 + 8, v23);
      v53 = v22;

      specialized Array.append<A>(contentsOf:)(v25);
      v26 = (*(v24 + 32))(v22, v23, v24);
      v28 = v27;
      v29 = v26;

      v30 = v3[11];
      v31 = v3[12];
      __swift_project_boxed_opaque_existential_1(v3 + 8, v30);
      v33 = (*(v31 + 24))(v29, v28, v30, v31);

      v53 = v33;
      v34 = v33;
      if (specialized Sequence<>.starts<A>(with:)(v22, v33))
      {
        v35 = v22[2];

        if (v35)
        {
          v36 = *(v33 + 16);
          v37 = v36 - v35;
          if (v36 < v35)
          {
            __break(1u);
            goto LABEL_27;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v53 = v34;
          if (!isUniquelyReferenced_nonNull_native || v37 > *(v34 + 3) >> 1)
          {
            if (v36 <= v37)
            {
              v39 = v36 - v35;
            }

            else
            {
              v39 = v36;
            }

            v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v39, 1, v34);
            v53 = v34;
          }

          specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, v35, 0);
        }

        v17 = v34;
      }

      else
      {

        if (one-time initialization token for guided != -1)
        {
          swift_once();
        }

        v40 = type metadata accessor for Logger();
        __swift_project_value_buffer(v40, static Log.guided);
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v52 = v44;
          *v43 = 136380931;
          *(v43 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(10, 0xE100000000000000, &v52);
          *(v43 + 12) = 2085;

          v46 = MEMORY[0x1AC57C2C0](v45, MEMORY[0x1E69E6530]);
          v48 = v47;

          v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v52);

          *(v43 + 14) = v49;
          _os_log_impl(&dword_1A8E85000, v41, v42, "Retokenizing failed because the dummy prefix was not found at the beginning of the retokenized tokens. Dummy prefix: %{private}s, retokenized tokens: %{sensitive}s.", v43, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1AC57DBF0](v44, -1, -1);
          MEMORY[0x1AC57DBF0](v43, -1, -1);
        }

        v17 = 0;
      }
    }

    else
    {
      v17 = (*(v16 + 32))(tokenIDs._rawValue, v15, v16);
      if (!v51)
      {
        v18 = isFirstDecodedToken;
        v19 = v3[11];
        v20 = v3[12];
        v21 = v17;
        __swift_project_boxed_opaque_existential_1(v3 + 8, v19);
        v32 = (*(v20 + 24))(v21, v18, v19, v20);

        v17 = v32;
      }
    }
  }

  else
  {
    v17 = 0;
  }

LABEL_27:
  result.value._rawValue = v17;
  result.is_nil = isFirstDecodedToken;
  return result;
}

uint64_t VocabularyManager.extractCandidates(nextValidTerminals:afterStartWord:)(char **a1, uint64_t a2, int a3)
{
  v274 = a3;
  v264 = a1;
  v277 = type metadata accessor for VocabularyManager.PrefixLookup(0);
  MEMORY[0x1EEE9AC00](v277);
  v266 = (&v263 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v268 = (&v263 - v7);
  MEMORY[0x1EEE9AC00](v8);
  v265 = (&v263 - v9);
  MEMORY[0x1EEE9AC00](v10);
  v267 = (&v263 - v11);
  MEMORY[0x1EEE9AC00](v12);
  v270 = (&v263 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v272 = (&v263 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v269 = (&v263 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v271 = (&v263 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v276 = (&v263 - v21);
  v291 = type metadata accessor for CharacterSet();
  v22 = *(v291 - 8);
  MEMORY[0x1EEE9AC00](v291);
  v286 = &v263 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v273 = &v263 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v287 = &v263 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v275 = &v263 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v285 = &v263 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v284 = &v263 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v283 = (&v263 - v35);
  MEMORY[0x1EEE9AC00](v36);
  v282 = &v263 - v37;
  v38 = type metadata accessor for TerminalSymbol(0);
  v39 = *(v38 - 1);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v263 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v3[11];
  v43 = v3[12];
  v278 = v3;
  __swift_project_boxed_opaque_existential_1(v3 + 8, v42);
  v44 = (*(v43 + 56))(v42, v43);
  v301 = 1;
  v302 = 0;
  v303 = 1;
  v45 = MEMORY[0x1E69E7CC0];
  v299 = MEMORY[0x1E69E7CC0];
  v300 = 0uLL;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44 & ~(v44 >> 63), 0);
  v298 = MEMORY[0x1E69E7CD0];
  v46 = *(a2 + 16);
  v290 = v22;
  if (v46)
  {
    v47 = a2 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
    v48 = v39;
    v49 = (v22 + 32);
    v280 = v22 + 16;
    v279 = v22 + 8;
    v50 = *(v48 + 72);
    v288 = MEMORY[0x1E69E7CC0];
    v289 = MEMORY[0x1E69E7CC0];
    v281 = v38;
    while (1)
    {
      _s19TokenGenerationCore14TerminalSymbolOWOcTm_2(v47, v41, type metadata accessor for TerminalSymbol);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload != 2)
        {
          v72 = *v41;
          v73 = v276;
          VocabularyManager.prefixLookUp.getter(v276);
          v74 = *(v73 + *(v277 + 44));

          outlined destroy of TerminalSymbol(v73, type metadata accessor for VocabularyManager.PrefixLookup);
          if (!*(v74 + 16))
          {
            goto LABEL_255;
          }

          v75 = specialized __RawDictionaryStorage.find<A>(_:)(v72);
          if ((v76 & 1) == 0)
          {
            goto LABEL_255;
          }

          v77 = *(*(v74 + 56) + 8 * v75);

          ContiguousBitSet.insert(_:)(v77);
          goto LABEL_5;
        }

        v61 = *v49;
        v62 = v284;
        v63 = v291;
        (*v49)(v284, v41, v291);
        (*v280)(v285, v62, v63);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v289 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v289[2] + 1, 1, v289);
        }

        v65 = v289[2];
        v64 = v289[3];
        if (v65 >= v64 >> 1)
        {
          v289 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1, v289);
        }

        v66 = v290;
        v51 = v291;
        (*(v290 + 1))(v284, v291);
        v67 = v289;
        v289[2] = v65 + 1;
        v54 = v67 + ((v66[80] + 32) & ~v66[80]) + *(v66 + 9) * v65;
        v55 = &v305;
      }

      else
      {
        if (!EnumCaseMultiPayload)
        {
          v57 = *v41;
          if (*v41 > 0x7Fu)
          {
            v78 = (*v41 & 0x3F) << 8;
            if (v57 >= 0x800)
            {
              v79 = v57 >> 12;
              v80 = (v78 | (v57 >> 6) & 0x3F) << 8;
              v81 = HIWORD(v57);
              v58 = (((v80 | (v57 >> 12) & 0x3F) << 8) | (v57 >> 18)) - 2122219023;
              v82 = v79 + v80 + 8487393;
              if (!v81)
              {
                v58 = v82;
              }
            }

            else
            {
              v58 = (v57 >> 6) + v78 + 33217;
            }
          }

          else
          {
            v58 = v57 + 1;
          }

          v292 = (v58 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v58) >> 3))));
          v59 = static String._uncheckedFromUTF8(_:)();
          specialized Set._Variant.insert(_:)(&v292, v59, v60);

          goto LABEL_5;
        }

        v61 = *v49;
        v68 = v282;
        v69 = v291;
        (*v49)(v282, v41, v291);
        (*v280)(v283, v68, v69);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v288 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v288[2] + 1, 1, v288);
        }

        v71 = v288[2];
        v70 = v288[3];
        if (v71 >= v70 >> 1)
        {
          v288 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), v71 + 1, 1, v288);
        }

        v52 = v290;
        v51 = v291;
        (*(v290 + 1))(v282, v291);
        v53 = v288;
        v288[2] = v71 + 1;
        v54 = v53 + ((v52[80] + 32) & ~v52[80]) + *(v52 + 9) * v71;
        v55 = &v304;
      }

      v61(v54, *(v55 - 32), v51);
LABEL_5:
      v47 += v50;
      if (!--v46)
      {
        goto LABEL_29;
      }
    }
  }

  v288 = v45;
  v289 = v45;
LABEL_29:

  v84 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation12CharacterSetV_SayAFGTt0g5Tf4g_n(v83);

  v85 = 0;
  v87 = v84 + 56;
  v86 = *(v84 + 56);
  v282 = v84;
  v88 = 1 << *(v84 + 32);
  v89 = -1;
  if (v88 < 64)
  {
    v89 = ~(-1 << v88);
  }

  v90 = v89 & v86;
  v91 = (v88 + 63) >> 6;
  v92 = v290;
  v285 = v290 + 16;
  v284 = v290 + 32;
  v283 = (v290 + 8);
  v281 = MEMORY[0x1E69E7CC0];
  v93 = v274;
  if ((v89 & v86) == 0)
  {
    while (1)
    {
LABEL_34:
      v94 = v85 + 1;
      if (__OFADD__(v85, 1))
      {
        __break(1u);
        goto LABEL_224;
      }

      if (v94 >= v91)
      {
        break;
      }

      v90 = *(v87 + 8 * v94);
      ++v85;
      if (v90)
      {
        v85 = v94;
        goto LABEL_38;
      }
    }

    v171 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation12CharacterSetV_SayAFGTt0g5Tf4g_n(v170);

    v172 = 0;
    v174 = v171 + 56;
    v173 = *(v171 + 56);
    v287 = v171;
    v175 = 1 << *(v171 + 32);
    v176 = -1;
    if (v175 < 64)
    {
      v176 = ~(-1 << v175);
    }

    v90 = v176 & v173;
    v177 = (v175 + 63) >> 6;
    if ((v176 & v173) == 0)
    {
LABEL_128:
      while (1)
      {
        v178 = v172 + 1;
        if (__OFADD__(v172, 1))
        {
          break;
        }

        if (v178 >= v177)
        {

          v90 = v281;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_246;
          }

          goto LABEL_218;
        }

        v90 = *(v174 + 8 * v178);
        ++v172;
        if (v90)
        {
          v172 = v178;
          goto LABEL_132;
        }
      }

LABEL_224:
      __break(1u);
      goto LABEL_225;
    }

    while (1)
    {
LABEL_132:
      v179 = __clz(__rbit64(v90));
      v90 &= v90 - 1;
      v180 = v273;
      v181 = v291;
      (*(v92 + 2))(v273, *(v287 + 48) + *(v92 + 9) * (v179 | (v172 << 6)), v291);
      (*(v92 + 4))(v286, v180, v181);
      if (v93)
      {
        v182 = v267;
        VocabularyManager.prefixLookUp.getter(v267);
        v183 = v182[4];

        outlined destroy of TerminalSymbol(v182, type metadata accessor for VocabularyManager.PrefixLookup);
        if (*(v183 + 16) && (v184 = specialized __RawDictionaryStorage.find<A>(_:)(v286), (v185 & 1) != 0))
        {
          v282 = v177;
          v186 = *(v183 + 56) + 48 * v184;
          v187 = *v186;
          v188 = *(v186 + 8);
          v189 = *(v186 + 16);
          v190 = *(v186 + 24);
          v191 = *(v186 + 32);
          v192 = *(v186 + 40);

          v193 = v189;
          v194 = v188;

          v292 = v187;
          v293 = v188;
          v294 = v193;
          v295 = v190;
          v296 = v191;
          v297 = v192;
          if (v190 & 1) != 0 || (v192)
          {
            v93 = v274;
            v177 = v282;
            goto LABEL_145;
          }

          v93 = v274;
          v177 = v282;
          if ((v301 & 1) == 0)
          {
LABEL_164:
            if (v303)
            {
              goto LABEL_165;
            }

            v216 = *(&v300 + 1);
            if (v193 < *(&v300 + 1))
            {
              v216 = v193;
            }

            v282 = v216;
            if (v191 <= v302)
            {
              v217 = v302;
            }

            else
            {
              v217 = v191;
            }

            v218 = *(v299 + 16);
            if (v218 <= v191 / 64)
            {
              v219 = (v191 / 64 - v218 + 1);
              if (v219 < 0)
              {
                goto LABEL_254;
              }

              specialized ContiguousArray.append<A>(contentsOf:)(v219, 0);
            }

            v220 = v282 / 64;
            v221 = v217 + 63;
            v279 = v217;
            if (v217 >= 0)
            {
              v221 = v217;
            }

            v222 = v221 >> 6;
            if (v221 >> 6 < v220)
            {
              goto LABEL_250;
            }

            v223 = *(v187 + 16);
            if (v220 < v223)
            {
              v280 = v187 + 32;
              v224 = v299;
              v225 = v223 - 1;
              do
              {
                if (v282 < -63)
                {
                  goto LABEL_236;
                }

                if (v220 >= *(v224 + 2))
                {
                  goto LABEL_238;
                }

                if (v220 >= *(v187 + 16))
                {
                  goto LABEL_241;
                }

                v226 = *&v224[8 * v220 + 32];
                v227 = *(v280 + 8 * v220);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v224 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v224);
                }

                if (v220 >= *(v224 + 2))
                {
                  goto LABEL_242;
                }

                v228 = vcnt_s8(v226);
                v228.i16[0] = vaddlv_u8(v228);
                v229 = v228.u32[0];
                v230 = &v224[8 * v220];
                *&v230[4] |= v227;
                v299 = v224;
                v231 = vcnt_s8(v230[4]);
                v231.i16[0] = vaddlv_u8(v231);
                v232 = v231.u32[0] - v229;
                v149 = __OFADD__(v300, v232);
                v233 = v300 + v232;
                if (v149)
                {
                  goto LABEL_245;
                }

                *&v300 = v233;
                if (v222 == v220)
                {
                  break;
                }

                v151 = v225 == v220++;
              }

              while (!v151);
            }

            *(&v300 + 1) = v282;
            v301 = 0;
            v302 = v279;
            v303 = 0;
            v93 = v274;
LABEL_146:
            v208 = v265;
            VocabularyManager.prefixLookUp.getter(v265);
            v209 = v208[5];
            goto LABEL_151;
          }
        }

        else
        {

          v293 = 0;
          v294 = 0;
          v295 = 1;
          v296 = 0;
          v297 = 1;
          v292 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
          v187 = v292;
          if (v295 & 1) != 0 || (v297)
          {
LABEL_145:

            goto LABEL_146;
          }

          v191 = v296;
          v194 = v293;
          v193 = v294;
          if ((v301 & 1) == 0)
          {
            goto LABEL_164;
          }
        }

LABEL_165:

        v299 = v187;
        *&v300 = v194;
        *(&v300 + 1) = v193;
        v301 = 0;
        v302 = v191;
        v303 = 0;
        goto LABEL_146;
      }

      v195 = v268;
      VocabularyManager.prefixLookUp.getter(v268);
      v196 = v195[2];

      outlined destroy of TerminalSymbol(v195, type metadata accessor for VocabularyManager.PrefixLookup);
      if (*(v196 + 16) && (v197 = specialized __RawDictionaryStorage.find<A>(_:)(v286), (v198 & 1) != 0))
      {
        v282 = v174;
        v199 = *(v196 + 56) + 48 * v197;
        v200 = *v199;
        v201 = *(v199 + 8);
        v202 = *(v199 + 16);
        v203 = *(v199 + 24);
        v204 = *(v199 + 32);
        v205 = *(v199 + 40);

        v206 = v202;
        v207 = v201;

        v292 = v200;
        v293 = v201;
        v294 = v206;
        v295 = v203;
        v296 = v204;
        v297 = v205;
        if ((v203 & 1) == 0 && (v205 & 1) == 0)
        {
          v93 = v274;
          v174 = v282;
          if (v301)
          {
LABEL_168:

            v299 = v200;
            *&v300 = v207;
            *(&v300 + 1) = v206;
            v301 = 0;
            v302 = v204;
            v303 = 0;
            goto LABEL_150;
          }

LABEL_167:
          if ((v303 & 1) == 0)
          {
            v234 = *(&v300 + 1);
            if (v206 < *(&v300 + 1))
            {
              v234 = v206;
            }

            v282 = v234;
            if (v204 <= v302)
            {
              v235 = v302;
            }

            else
            {
              v235 = v204;
            }

            v236 = *(v299 + 16);
            if (v236 <= v204 / 64)
            {
              v237 = (v204 / 64 - v236 + 1);
              if (v237 < 0)
              {
                goto LABEL_253;
              }

              specialized ContiguousArray.append<A>(contentsOf:)(v237, 0);
            }

            v238 = v282 / 64;
            v239 = v235 + 63;
            v279 = v235;
            if (v235 >= 0)
            {
              v239 = v235;
            }

            v240 = v239 >> 6;
            if (v239 >> 6 < v238)
            {
              goto LABEL_249;
            }

            v241 = *(v200 + 16);
            if (v238 < v241)
            {
              v280 = v200 + 32;
              v242 = v299;
              v243 = v241 - 1;
              do
              {
                if (v282 < -63)
                {
                  goto LABEL_237;
                }

                if (v238 >= *(v242 + 2))
                {
                  goto LABEL_239;
                }

                if (v238 >= *(v200 + 16))
                {
                  goto LABEL_240;
                }

                v244 = *&v242[8 * v238 + 32];
                v245 = *(v280 + 8 * v238);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v242 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v242);
                }

                if (v238 >= *(v242 + 2))
                {
                  goto LABEL_243;
                }

                v246 = vcnt_s8(v244);
                v246.i16[0] = vaddlv_u8(v246);
                v247 = v246.u32[0];
                v248 = &v242[8 * v238];
                *&v248[4] |= v245;
                v299 = v242;
                v249 = vcnt_s8(v248[4]);
                v249.i16[0] = vaddlv_u8(v249);
                v250 = v249.u32[0] - v247;
                v149 = __OFADD__(v300, v250);
                v251 = v300 + v250;
                if (v149)
                {
                  goto LABEL_244;
                }

                *&v300 = v251;
                if (v240 == v238)
                {
                  break;
                }

                v151 = v243 == v238++;
              }

              while (!v151);
            }

            *(&v300 + 1) = v282;
            v301 = 0;
            v302 = v279;
            v303 = 0;
            v93 = v274;
            goto LABEL_150;
          }

          goto LABEL_168;
        }

        v93 = v274;
        v174 = v282;
      }

      else
      {

        v293 = 0;
        v294 = 0;
        v295 = 1;
        v296 = 0;
        v297 = 1;
        v292 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
        v200 = v292;
        if ((v295 & 1) == 0 && (v297 & 1) == 0)
        {
          v204 = v296;
          v207 = v293;
          v206 = v294;
          if (v301)
          {
            goto LABEL_168;
          }

          goto LABEL_167;
        }
      }

LABEL_150:
      v208 = v266;
      VocabularyManager.prefixLookUp.getter(v266);
      v209 = v208[3];
LABEL_151:

      outlined destroy of TerminalSymbol(v208, type metadata accessor for VocabularyManager.PrefixLookup);
      if (*(v209 + 16) && (v210 = specialized __RawDictionaryStorage.find<A>(_:)(v286), (v211 & 1) != 0))
      {
        v212 = *(*(v209 + 56) + 8 * v210);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v281 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v281[2] + 1, 1, v281);
        }

        v214 = v281[2];
        v213 = v281[3];
        if (v214 >= v213 >> 1)
        {
          v281 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v213 > 1), v214 + 1, 1, v281);
        }

        (*v283)(v286, v291);
        v215 = v281;
        v281[2] = v214 + 1;
        v215[v214 + 4] = v212;
        v92 = v290;
        if (!v90)
        {
          goto LABEL_128;
        }
      }

      else
      {

        (*v283)(v286, v291);
        v92 = v290;
        if (!v90)
        {
          goto LABEL_128;
        }
      }
    }
  }

  while (1)
  {
LABEL_38:
    v95 = __clz(__rbit64(v90));
    v90 &= v90 - 1;
    v96 = v275;
    v97 = v291;
    (*(v92 + 2))(v275, *(v282 + 48) + *(v92 + 9) * (v95 | (v85 << 6)), v291);
    (*(v92 + 4))(v287, v96, v97);
    if (v93)
    {
      v98 = v271;
      VocabularyManager.prefixLookUp.getter(v271);
      v99 = v98[8];

      outlined destroy of TerminalSymbol(v98, type metadata accessor for VocabularyManager.PrefixLookup);
      if (*(v99 + 16) && (v100 = specialized __RawDictionaryStorage.find<A>(_:)(v287), (v101 & 1) != 0))
      {
        v280 = v91;
        v102 = *(v99 + 56) + 48 * v100;
        v103 = *v102;
        v104 = *(v102 + 8);
        v105 = *(v102 + 16);
        v106 = *(v102 + 24);
        v107 = *(v102 + 32);
        v108 = *(v102 + 40);

        v109 = v105;
        v110 = v104;

        v292 = v103;
        v293 = v104;
        v294 = v109;
        v295 = v106;
        v296 = v107;
        v297 = v108;
        if (v106 & 1) != 0 || (v108)
        {
          v93 = v274;
          v91 = v280;
LABEL_51:

LABEL_52:
          v124 = v269;
          VocabularyManager.prefixLookUp.getter(v269);
          v125 = v124[9];
          goto LABEL_57;
        }

        v93 = v274;
        v91 = v280;
        if ((v301 & 1) == 0)
        {
          goto LABEL_70;
        }
      }

      else
      {

        v293 = 0;
        v294 = 0;
        v295 = 1;
        v296 = 0;
        v297 = 1;
        v292 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
        v103 = v292;
        if (v295 & 1) != 0 || (v297)
        {
          goto LABEL_51;
        }

        v107 = v296;
        v110 = v293;
        v109 = v294;
        if ((v301 & 1) == 0)
        {
LABEL_70:
          if ((v303 & 1) == 0)
          {
            v132 = *(&v300 + 1);
            if (v109 < *(&v300 + 1))
            {
              v132 = v109;
            }

            v280 = v132;
            if (v107 <= v302)
            {
              v133 = v302;
            }

            else
            {
              v133 = v107;
            }

            v134 = *(v299 + 16);
            if (v134 <= v107 / 64)
            {
              v135 = (v107 / 64 - v134 + 1);
              if (v135 < 0)
              {
                goto LABEL_252;
              }

              specialized ContiguousArray.append<A>(contentsOf:)(v135, 0);
            }

            v136 = v280 / 64;
            v137 = v133 + 63;
            v277 = v133;
            if (v133 >= 0)
            {
              v137 = v133;
            }

            v138 = v137 >> 6;
            if (v137 >> 6 < v136)
            {
              goto LABEL_248;
            }

            v139 = *(v103 + 16);
            if (v136 < v139)
            {
              v279 = v103 + 32;
              v140 = v299;
              v141 = v139 - 1;
              while (1)
              {
                if (v280 < -63)
                {
                  goto LABEL_226;
                }

                if (v136 >= *(v140 + 2))
                {
                  goto LABEL_228;
                }

                if (v136 >= *(v103 + 16))
                {
                  goto LABEL_231;
                }

                v142 = *&v140[8 * v136 + 32];
                v143 = *(v279 + 8 * v136);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v140 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v140);
                }

                if (v136 >= *(v140 + 2))
                {
                  goto LABEL_232;
                }

                v144 = vcnt_s8(v142);
                v144.i16[0] = vaddlv_u8(v144);
                v145 = v144.u32[0];
                v146 = &v140[8 * v136];
                *&v146[4] |= v143;
                v299 = v140;
                v147 = vcnt_s8(v146[4]);
                v147.i16[0] = vaddlv_u8(v147);
                v148 = v147.u32[0] - v145;
                v149 = __OFADD__(v300, v148);
                v150 = v300 + v148;
                if (v149)
                {
                  break;
                }

                *&v300 = v150;
                if (v138 != v136)
                {
                  v151 = v141 == v136++;
                  if (!v151)
                  {
                    continue;
                  }
                }

                goto LABEL_98;
              }

              while (1)
              {
                __break(1u);
LABEL_236:
                __break(1u);
LABEL_237:
                __break(1u);
LABEL_238:
                __break(1u);
LABEL_239:
                __break(1u);
LABEL_240:
                __break(1u);
LABEL_241:
                __break(1u);
LABEL_242:
                __break(1u);
LABEL_243:
                __break(1u);
LABEL_244:
                __break(1u);
LABEL_245:
                __break(1u);
LABEL_246:
                v90 = specialized _ArrayBuffer._consumeAndCreateNew()(v90);
LABEL_218:
                v252 = MEMORY[0x1E69E7CC0];
                v253 = *(v90 + 16);
                v292 = v90 + 32;
                v293 = v253;
                specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(&v292);
                v292 = v252;
                v254 = *(v90 + 16);
                if (!v254)
                {
                  break;
                }

                v255 = 0;
                while (v255 < *(v90 + 16))
                {
                  v256 = v255 + 1;
                  v257 = *(v90 + 32 + 8 * v255);

                  specialized static VocabularyManager.mergeSortedRanks(_:_:)(&v292, v257);

                  v255 = v256;
                  if (v254 == v256)
                  {
                    goto LABEL_222;
                  }
                }

LABEL_225:
                __break(1u);
LABEL_226:
                __break(1u);
LABEL_227:
                __break(1u);
LABEL_228:
                __break(1u);
LABEL_229:
                __break(1u);
LABEL_230:
                __break(1u);
LABEL_231:
                __break(1u);
LABEL_232:
                __break(1u);
LABEL_233:
                __break(1u);
LABEL_234:
                __break(1u);
              }

LABEL_222:

              result = v292;
              v259 = v301;
              v260 = v302;
              v261 = v303;
              v262 = v264;
              *v264 = v299;
              *(v262 + 1) = v300;
              *(v262 + 24) = v259;
              v262[4] = v260;
              *(v262 + 40) = v261;
              return result;
            }

LABEL_98:

            *(&v300 + 1) = v280;
            v301 = 0;
            v302 = v277;
            v303 = 0;
            v93 = v274;
            goto LABEL_52;
          }
        }
      }

      v299 = v103;
      *&v300 = v110;
      *(&v300 + 1) = v109;
      v301 = 0;
      v302 = v107;
      v303 = 0;
      goto LABEL_52;
    }

    v111 = v272;
    VocabularyManager.prefixLookUp.getter(v272);
    v112 = v111[6];

    outlined destroy of TerminalSymbol(v111, type metadata accessor for VocabularyManager.PrefixLookup);
    if (!*(v112 + 16))
    {
      break;
    }

    v113 = specialized __RawDictionaryStorage.find<A>(_:)(v287);
    if ((v114 & 1) == 0)
    {
      break;
    }

    v280 = v87;
    v115 = *(v112 + 56) + 48 * v113;
    v116 = *v115;
    v117 = *(v115 + 8);
    v118 = *(v115 + 16);
    v119 = *(v115 + 24);
    v120 = *(v115 + 32);
    v121 = *(v115 + 40);

    v122 = v118;
    v123 = v117;

    v292 = v116;
    v293 = v117;
    v294 = v122;
    v295 = v119;
    v296 = v120;
    v297 = v121;
    if ((v119 & 1) == 0 && (v121 & 1) == 0)
    {
      v93 = v274;
      v87 = v280;
      if ((v301 & 1) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_74;
    }

    v93 = v274;
    v87 = v280;
LABEL_55:

LABEL_56:
    v124 = v270;
    VocabularyManager.prefixLookUp.getter(v270);
    v125 = v124[7];
LABEL_57:

    outlined destroy of TerminalSymbol(v124, type metadata accessor for VocabularyManager.PrefixLookup);
    if (*(v125 + 16) && (v126 = specialized __RawDictionaryStorage.find<A>(_:)(v287), (v127 & 1) != 0))
    {
      v128 = *(*(v125 + 56) + 8 * v126);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v281 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v281[2] + 1, 1, v281);
      }

      v130 = v281[2];
      v129 = v281[3];
      if (v130 >= v129 >> 1)
      {
        v281 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v129 > 1), v130 + 1, 1, v281);
      }

      (*v283)(v287, v291);
      v131 = v281;
      v281[2] = v130 + 1;
      v131[v130 + 4] = v128;
      v92 = v290;
      if (!v90)
      {
        goto LABEL_34;
      }
    }

    else
    {

      (*v283)(v287, v291);
      v92 = v290;
      if (!v90)
      {
        goto LABEL_34;
      }
    }
  }

  v293 = 0;
  v294 = 0;
  v295 = 1;
  v296 = 0;
  v297 = 1;
  v292 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
  v116 = v292;
  if (v295 & 1) != 0 || (v297)
  {
    goto LABEL_55;
  }

  v120 = v296;
  v123 = v293;
  v122 = v294;
  if (v301)
  {
    goto LABEL_74;
  }

LABEL_73:
  if (v303)
  {
LABEL_74:

    v299 = v116;
    *&v300 = v123;
    *(&v300 + 1) = v122;
    v301 = 0;
    v302 = v120;
    v303 = 0;
    goto LABEL_56;
  }

  v152 = *(&v300 + 1);
  if (v122 < *(&v300 + 1))
  {
    v152 = v122;
  }

  v280 = v152;
  if (v120 <= v302)
  {
    v153 = v302;
  }

  else
  {
    v153 = v120;
  }

  v154 = *(v299 + 16);
  if (v154 <= v120 / 64)
  {
    v155 = (v120 / 64 - v154 + 1);
    if (v155 < 0)
    {
      goto LABEL_251;
    }

    specialized ContiguousArray.append<A>(contentsOf:)(v155, 0);
  }

  v156 = v280 / 64;
  v157 = v153 + 63;
  v277 = v153;
  if (v153 >= 0)
  {
    v157 = v153;
  }

  v158 = v157 >> 6;
  if (v157 >> 6 >= v156)
  {
    v159 = *(v116 + 16);
    if (v156 < v159)
    {
      v279 = v116 + 32;
      v160 = v299;
      v161 = v159 - 1;
      do
      {
        if (v280 < -63)
        {
          goto LABEL_227;
        }

        if (v156 >= *(v160 + 2))
        {
          goto LABEL_229;
        }

        if (v156 >= *(v116 + 16))
        {
          goto LABEL_230;
        }

        v162 = *&v160[8 * v156 + 32];
        v163 = *(v279 + 8 * v156);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v160 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v160);
        }

        if (v156 >= *(v160 + 2))
        {
          goto LABEL_233;
        }

        v164 = vcnt_s8(v162);
        v164.i16[0] = vaddlv_u8(v164);
        v165 = v164.u32[0];
        v166 = &v160[8 * v156];
        *&v166[4] |= v163;
        v299 = v160;
        v167 = vcnt_s8(v166[4]);
        v167.i16[0] = vaddlv_u8(v167);
        v168 = v167.u32[0] - v165;
        v149 = __OFADD__(v300, v168);
        v169 = v300 + v168;
        if (v149)
        {
          goto LABEL_234;
        }

        *&v300 = v169;
        if (v158 == v156)
        {
          break;
        }

        v151 = v161 == v156++;
      }

      while (!v151);
    }

    *(&v300 + 1) = v280;
    v301 = 0;
    v302 = v277;
    v303 = 0;
    v93 = v274;
    goto LABEL_56;
  }

  __break(1u);
LABEL_248:
  __break(1u);
LABEL_249:
  __break(1u);
LABEL_250:
  __break(1u);
LABEL_251:
  __break(1u);
LABEL_252:
  __break(1u);
LABEL_253:
  __break(1u);
LABEL_254:
  __break(1u);
LABEL_255:

  __break(1u);
  return result;
}

Swift::Bool __swiftcall VocabularyManager.allPrefixesHaveStartOfWordTokenPair(terminals:)(Swift::OpaquePointer terminals)
{
  v31 = type metadata accessor for VocabularyManager.PrefixLookup(0);
  MEMORY[0x1EEE9AC00](v31);
  v3 = (&v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v28 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v28 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  v14 = type metadata accessor for TerminalSymbol(0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  rawValue = terminals._rawValue;
  v19 = *(terminals._rawValue + 2);
  if (v19)
  {
    v20 = rawValue + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v21 = *(v15 + 72);
    while (1)
    {
      _s19TokenGenerationCore14TerminalSymbolOWOcTm_2(v20, v17, type metadata accessor for TerminalSymbol);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        break;
      }

      outlined destroy of TerminalSymbol(v17, type metadata accessor for TerminalSymbol);
      v20 += v21;
      if (!--v19)
      {
        goto LABEL_5;
      }
    }

    v25 = 0;
  }

  else
  {
LABEL_5:
    specialized Collection<>.unionedCharacterSet()(rawValue);
    VocabularyManager.prefixLookUp.getter(v3);
    v22 = v30;
    v23 = *(v5 + 16);
    v23(v30, v3 + *(v31 + 32), v4);
    outlined destroy of TerminalSymbol(v3, type metadata accessor for VocabularyManager.PrefixLookup);
    v23(v29, v13, v4);
    lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet();
    v24 = v32;
    dispatch thunk of SetAlgebra.intersection(_:)();
    v25 = dispatch thunk of SetAlgebra.isEmpty.getter();
    v26 = *(v5 + 8);
    v26(v24, v4);
    v26(v22, v4);
    v26(v13, v4);
  }

  return v25 & 1;
}

uint64_t VocabularyManager.processTokenizerVocab()@<X0>(uint64_t *a1@<X8>)
{
  v344 = a1;
  v399 = type metadata accessor for CharacterSet();
  v398 = *(v399 - 8);
  MEMORY[0x1EEE9AC00](v399);
  i = &v341 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v391 = &v341 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v341 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v341 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v341 - v13;
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v341 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v343 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v343);
  v20 = &v341 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for guided != -1)
  {
    goto LABEL_310;
  }

  while (1)
  {
    v21 = __swift_project_value_buffer(v15, static Log.guided);
    (*(v16 + 16))(v18, v21, v15);
    v342 = v20;
    Signpost.init(_:_:)(v18, "GuidedGenerationConstraints.processTokenizerVocab", 49, 2, v20);
    v22 = MEMORY[0x1E69E7CC0];
    v363 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSJ_SaySiGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v353 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSJ_SaySiGTt0g5Tf4g_n(v22);
    v354 = v14;
    CharacterSet.init()();
    v345 = v11;
    CharacterSet.init()();
    v396 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation12CharacterSetV_ShySiGTt0g5Tf4g_n(v22);
    v390 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation12CharacterSetV_SaySiGTt0g5Tf4g_n(v22);
    v379 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation12CharacterSetV_ShySiGTt0g5Tf4g_n(v22);
    v357 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation12CharacterSetV_SaySiGTt0g5Tf4g_n(v22);
    v387 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation12CharacterSetV_ShySiGTt0g5Tf4g_n(v22);
    v389 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation12CharacterSetV_SaySiGTt0g5Tf4g_n(v22);
    v374 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation12CharacterSetV_ShySiGTt0g5Tf4g_n(v22);
    v369 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation12CharacterSetV_SaySiGTt0g5Tf4g_n(v22);
    v362 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs5UInt8V_SiTt0g5Tf4g_n(v22);
    v416 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_s5UInt8VTt0g5Tf4g_n(v22);
    v20 = *(v1 + 88);
    v23 = *(v1 + 96);
    v383 = v1;
    v1 = __swift_project_boxed_opaque_existential_1((v1 + 64), v20);
    v24 = (*(v23 + 40))(v20, v23);
    v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 16), 0, v22);
    v16 = v25;
    v26 = v24;
    v417 = v25;
    v15 = *(v24 + 16);
    v394 = i;
    v380 = v26;
    if (v15)
    {
      v11 = 0;
      v14 = 4091452;
      v18 = v26 + 40;
      while (v11 < *(v26 + 16))
      {
        v1 = *(v18 - 8);
        v27 = *v18;
        v28 = __swift_project_boxed_opaque_existential_1((v383 + 16), *(v383 + 40));
        if (v1 == 4091452 && v27 == 0xE300000000000000)
        {
          v32 = 0xE100000000000000;
          v33 = 10;
        }

        else
        {
          v31 = *v28;
          v30 = v28[1];
          if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            v32 = 0xE100000000000000;
            v33 = 10;
          }

          else
          {
            v409 = v1;
            *&v410 = v27;
            v405 = v31;
            v406 = v30;
            v414 = 32;
            v415 = 0xE100000000000000;
            v339 = lazy protocol witness table accessor for type String and conformance String();
            v340 = v339;
            v1 = &v409;
            v338 = v339;
            v337 = MEMORY[0x1E69E6158];
            v33 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
            v32 = v34;
          }

          i = v394;
          v14 = 4091452;
        }

        v417 = v16;
        v20 = *(v16 + 16);
        v35 = *(v16 + 24);
        v36 = v20 + 1;
        if (v20 >= v35 >> 1)
        {
          v38 = v33;
          v1 = v20 + 1;
          v39 = v32;
          v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36, 1, v16);
          v32 = v39;
          i = v394;
          v36 = v20 + 1;
          v16 = v40;
          v33 = v38;
          v14 = 4091452;
        }

        ++v11;
        *(v16 + 16) = v36;
        v37 = v16 + 16 * v20;
        *(v37 + 32) = v33;
        *(v37 + 40) = v32;
        v417 = v16;
        v18 += 16;
        v26 = v380;
        if (v15 == v11)
        {
          goto LABEL_19;
        }
      }

LABEL_285:
      __break(1u);
LABEL_286:
      __break(1u);
LABEL_287:
      __break(1u);
LABEL_288:
      __break(1u);
LABEL_289:
      __break(1u);
LABEL_290:
      __break(1u);
LABEL_291:
      __break(1u);
LABEL_292:
      __break(1u);
LABEL_293:
      __break(1u);
LABEL_294:
      __break(1u);
LABEL_295:
      __break(1u);
LABEL_296:
      __break(1u);
LABEL_297:
      __break(1u);
LABEL_298:

LABEL_299:
      __break(1u);
LABEL_300:
      __break(1u);
LABEL_301:
      __break(1u);
LABEL_302:
      __break(1u);
LABEL_303:
      __break(1u);
LABEL_304:
      __break(1u);
LABEL_305:
      __break(1u);
LABEL_306:
      __break(1u);
LABEL_307:
      __break(1u);
      goto LABEL_308;
    }

    v36 = *(v25 + 2);
LABEL_19:
    v373 = specialized Sequence.sorted(by:)(0, v36, &v417);
    v404 = 0;
    v372 = v417;
    v41 = *(v417 + 16);
    v1 = MEMORY[0x1E69E7CC0];
    v364 = v41;
    if (v41)
    {
      v1 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(v41, 0);
      v42 = specialized Sequence._copyContents(initializing:)(&v409, v1 + 32, v364, 0, v364);
      v11 = v399;
      v16 = v383;
      if (v42 == v364)
      {
        goto LABEL_23;
      }

      __break(1u);
    }

    v11 = v399;
    v16 = v383;
LABEL_23:
    v15 = v373[2];

    if (v15)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
      }

      v43 = 0;
      v44 = v373 + 4;
      do
      {
        v45 = v44[v43];
        if ((v45 & 0x8000000000000000) != 0)
        {
          goto LABEL_286;
        }

        if (v45 >= *(v1 + 16))
        {
          goto LABEL_287;
        }

        *(v1 + 32 + 8 * v45) = v43++;
      }

      while (v15 != v43);
    }

    v341 = v1;
    v46 = v364;
    if (!v364)
    {
      v386 = 0;
      v385 = 0;
      v392 = 0;
      v384 = 0;
      v378 = 0;
      v368 = 0;
      v367 = 0;
      v377 = 0;
      v356 = 0;
      v346 = 0;
LABEL_229:

      v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation12CharacterSetV19TokenGenerationCore013ContiguousBitE0VGMd, &_ss18_DictionaryStorageCy10Foundation12CharacterSetV19TokenGenerationCore013ContiguousBitE0VGMR);
      v239 = v387;
      v394 = v238;
      v240 = static _DictionaryStorage.copy(original:)();
      v401 = v240;
      v242 = *(v239 + 64);
      v18 = v239 + 64;
      v241 = v242;
      v243 = 1 << *(v18 - 32);
      v244 = -1;
      if (v243 < 64)
      {
        v244 = ~(-1 << v243);
      }

      v245 = v244 & v241;
      v1 = (v243 + 63) >> 6;
      v403 = v398 + 16;
      v400 = v240 + 64;
      v402 = (v398 + 32);

      v14 = 0;
      for (i = v391; v245; *(v15 + 16) = v257)
      {
        v246 = __clz(__rbit64(v245));
        v245 &= v245 - 1;
LABEL_238:
        v20 = v246 | (v14 << 6);
        v249 = v387;
        v8 = v398;
        v250 = *(v398 + 9) * v20;
        v11 = v399;
        (*(v398 + 2))(i, *(v387 + 48) + v250, v399);
        v16 = *(*(v249 + 56) + 8 * v20);
        v407 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySiGMd, &_sShySiGMR);
        v408 = lazy protocol witness table accessor for type Set<Int> and conformance Set<A>();
        v405 = v16;

        ContiguousBitSet.init(_:)(&v405, &v409);
        *(v400 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v251 = *(v401 + 48) + v250;
        v15 = v401;
        (*(v8 + 4))(v251, i, v11);
        v252 = *(v15 + 56) + 48 * v20;
        v253 = v411;
        v254 = v412;
        v255 = v413;
        *v252 = v409;
        *(v252 + 8) = v410;
        *(v252 + 24) = v253;
        *(v252 + 32) = v254;
        *(v252 + 40) = v255;
        v256 = *(v15 + 16);
        v181 = __OFADD__(v256, 1);
        v257 = v256 + 1;
        if (v181)
        {
          goto LABEL_300;
        }
      }

      v247 = v14;
      while (1)
      {
        v14 = v247 + 1;
        if (__OFADD__(v247, 1))
        {
          break;
        }

        if (v14 >= v1)
        {
          v258 = v374;
          v259 = static _DictionaryStorage.copy(original:)();
          v400 = v259;
          v262 = *(v258 + 64);
          v261 = v258 + 64;
          v260 = v262;
          v263 = 1 << *(v261 - 32);
          v264 = -1;
          if (v263 < 64)
          {
            v264 = ~(-1 << v263);
          }

          v15 = v264 & v260;
          v1 = (v263 + 63) >> 6;
          v397 = v259 + 64;

          v18 = 0;
          i = v398;
          if (!v15)
          {
LABEL_245:
            v266 = v18;
            while (1)
            {
              v18 = v266 + 1;
              if (__OFADD__(v266, 1))
              {
                goto LABEL_281;
              }

              if (v18 >= v1)
              {
                v278 = v396;
                v279 = static _DictionaryStorage.copy(original:)();
                v397 = v279;
                v281 = *(v278 + 64);
                i = v278 + 64;
                v280 = v281;
                v282 = 1 << *(i - 32);
                v283 = -1;
                if (v282 < 64)
                {
                  v283 = ~(-1 << v282);
                }

                v15 = v283 & v280;
                v1 = (v282 + 63) >> 6;
                v395 = v279 + 64;

                v18 = 0;
                v284 = v391;
                if (!v15)
                {
LABEL_257:
                  v286 = v18;
                  while (1)
                  {
                    v18 = v286 + 1;
                    if (__OFADD__(v286, 1))
                    {
                      goto LABEL_282;
                    }

                    if (v18 >= v1)
                    {
                      v298 = v379;
                      v299 = static _DictionaryStorage.copy(original:)();
                      v16 = v299;
                      v301 = *(v298 + 64);
                      i = v298 + 64;
                      v300 = v301;
                      v302 = 1 << *(i - 32);
                      v303 = -1;
                      if (v302 < 64)
                      {
                        v303 = ~(-1 << v302);
                      }

                      v20 = v303 & v300;
                      v304 = (v302 + 63) >> 6;
                      v394 = v299 + 64;

                      v15 = 0;
                      v395 = v16;
                      v18 = v391;
                      while (1)
                      {
                        v1 = v354;
                        if (!v20)
                        {
                          break;
                        }

                        v305 = __clz(__rbit64(v20));
                        v20 &= v20 - 1;
LABEL_275:
                        v11 = v305 | (v15 << 6);
                        v308 = v379;
                        v1 = v398;
                        v14 = *(v398 + 9) * v11;
                        v8 = v399;
                        (*(v398 + 2))(v18, *(v379 + 48) + v14, v399);
                        v309 = *(*(v308 + 56) + 8 * v11);
                        v407 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySiGMd, &_sShySiGMR);
                        v408 = lazy protocol witness table accessor for type Set<Int> and conformance Set<A>();
                        v405 = v309;

                        ContiguousBitSet.init(_:)(&v405, &v409);
                        *(v394 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
                        v16 = v395;
                        (*(v1 + 32))(*(v395 + 48) + v14, v18, v8);
                        v310 = *(v16 + 56) + 48 * v11;
                        v311 = v411;
                        v312 = v412;
                        v313 = v413;
                        *v310 = v409;
                        *(v310 + 8) = v410;
                        *(v310 + 24) = v311;
                        *(v310 + 32) = v312;
                        *(v310 + 40) = v313;
                        v314 = *(v16 + 16);
                        v181 = __OFADD__(v314, 1);
                        v315 = v314 + 1;
                        if (v181)
                        {
                          goto LABEL_303;
                        }

                        *(v16 + 16) = v315;
                        v11 = v399;
                      }

                      v306 = v15;
                      while (1)
                      {
                        v15 = v306 + 1;
                        if (__OFADD__(v306, 1))
                        {
                          goto LABEL_283;
                        }

                        if (v15 >= v304)
                        {

                          v316 = v389;

                          v317 = v369;

                          v318 = type metadata accessor for VocabularyManager.PrefixLookup(0);
                          v319 = v11;
                          v320 = v344;
                          v321 = v345;
                          v322 = v1;
                          CharacterSet.subtracting(_:)();
                          v323 = v416;

                          v404 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SD4KeysVySis5UInt8V_GTt0g5(v324);
                          v325 = *(v398 + 1);
                          v325(v321, v319);
                          v325(v322, v319);
                          v326 = v372;

                          v327 = v353;
                          *v320 = v363;
                          v320[1] = v327;
                          v320[2] = v401;
                          v320[3] = v316;
                          v320[4] = v400;
                          v320[5] = v317;
                          v328 = v390;
                          v320[6] = v397;
                          v320[7] = v328;
                          v329 = v357;
                          v320[8] = v395;
                          v320[9] = v329;
                          v320[10] = v326;
                          *(v320 + v318[9]) = v373;
                          *(v320 + v318[10]) = v341;
                          *(v320 + v318[11]) = v362;
                          *(v320 + v318[12]) = v323;
                          *(v320 + v318[13]) = v404;
                          v330 = v342;
                          Signpost.end()();
                          v331 = v343;
                          v332 = *(v343 + 20);
                          v333 = type metadata accessor for OSSignposter();
                          (*(*(v333 - 8) + 8))(v330 + v332, v333);
                          v334 = *(v331 + 24);
                          v335 = type metadata accessor for OSSignpostID();
                          (*(*(v335 - 8) + 8))(v330 + v334, v335);

                          sub_1A8E8E88C(v386, 0);
                          sub_1A8E8E88C(v385, 0);
                          sub_1A8E8E88C(v392, 0);
                          sub_1A8E8E88C(v384, 0);
                          sub_1A8E8E88C(v378, 0);
                          sub_1A8E8E88C(v368, 0);
                          sub_1A8E8E88C(v367, 0);
                          sub_1A8E8E88C(v377, 0);
                          sub_1A8E8E88C(v356, 0);
                          return sub_1A8E8E88C(v346, 0);
                        }

                        v307 = *(i + 8 * v15);
                        ++v306;
                        if (v307)
                        {
                          v305 = __clz(__rbit64(v307));
                          v20 = (v307 - 1) & v307;
                          goto LABEL_275;
                        }
                      }
                    }

                    v287 = *(i + 8 * v18);
                    ++v286;
                    if (v287)
                    {
                      v285 = __clz(__rbit64(v287));
                      v15 = (v287 - 1) & v287;
                      goto LABEL_262;
                    }
                  }
                }

                while (1)
                {
                  v285 = __clz(__rbit64(v15));
                  v15 &= v15 - 1;
LABEL_262:
                  v20 = v285 | (v18 << 6);
                  v288 = v396;
                  v8 = v398;
                  v289 = *(v398 + 9) * v20;
                  v14 = v399;
                  (*(v398 + 2))(v284, *(v396 + 48) + v289, v399);
                  v290 = *(*(v288 + 56) + 8 * v20);
                  v407 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySiGMd, &_sShySiGMR);
                  v408 = lazy protocol witness table accessor for type Set<Int> and conformance Set<A>();
                  v405 = v290;

                  ContiguousBitSet.init(_:)(&v405, &v409);
                  *(v395 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
                  v16 = v397;
                  v291 = *(v397 + 48) + v289;
                  v11 = v14;
                  (*(v8 + 4))(v291, v284, v14);
                  v292 = *(v16 + 56) + 48 * v20;
                  v293 = v411;
                  v294 = v412;
                  v295 = v413;
                  *v292 = v409;
                  *(v292 + 8) = v410;
                  *(v292 + 24) = v293;
                  *(v292 + 32) = v294;
                  *(v292 + 40) = v295;
                  v296 = *(v16 + 16);
                  v181 = __OFADD__(v296, 1);
                  v297 = v296 + 1;
                  if (v181)
                  {
                    goto LABEL_302;
                  }

                  *(v16 + 16) = v297;
                  if (!v15)
                  {
                    goto LABEL_257;
                  }
                }
              }

              v267 = *(v261 + 8 * v18);
              ++v266;
              if (v267)
              {
                v265 = __clz(__rbit64(v267));
                v15 = (v267 - 1) & v267;
                goto LABEL_250;
              }
            }
          }

          while (1)
          {
            v265 = __clz(__rbit64(v15));
            v15 &= v15 - 1;
LABEL_250:
            v20 = v265 | (v18 << 6);
            v268 = v374;
            v269 = *(i + 72) * v20;
            v8 = v391;
            v14 = v399;
            (*(i + 16))(v391, *(v374 + 48) + v269, v399);
            v270 = *(*(v268 + 56) + 8 * v20);
            v407 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySiGMd, &_sShySiGMR);
            v408 = lazy protocol witness table accessor for type Set<Int> and conformance Set<A>();
            v405 = v270;

            ContiguousBitSet.init(_:)(&v405, &v409);
            *(v397 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
            v16 = v400;
            v271 = *(v400 + 48) + v269;
            v11 = v14;
            (*(i + 32))(v271, v8, v14);
            v272 = *(v16 + 56) + 48 * v20;
            v273 = v411;
            v274 = v412;
            v275 = v413;
            *v272 = v409;
            *(v272 + 8) = v410;
            *(v272 + 24) = v273;
            *(v272 + 32) = v274;
            *(v272 + 40) = v275;
            v276 = *(v16 + 16);
            v181 = __OFADD__(v276, 1);
            v277 = v276 + 1;
            if (v181)
            {
              goto LABEL_301;
            }

            *(v16 + 16) = v277;
            if (!v15)
            {
              goto LABEL_245;
            }
          }
        }

        v248 = *(v18 + 8 * v14);
        ++v247;
        if (v248)
        {
          v246 = __clz(__rbit64(v248));
          v245 = (v248 - 1) & v248;
          goto LABEL_238;
        }
      }

LABEL_280:
      __break(1u);
LABEL_281:
      __break(1u);
LABEL_282:
      __break(1u);
LABEL_283:
      __break(1u);
LABEL_284:
      __break(1u);
      goto LABEL_285;
    }

    v386 = 0;
    v385 = 0;
    v392 = 0;
    v384 = 0;
    v378 = 0;
    v368 = 0;
    v367 = 0;
    v377 = 0;
    v356 = 0;
    v346 = 0;
    v47 = 0;
    v48 = v373 + 4;
    v49 = v380;
    v50 = v380 + 32;
    v51 = v372 + 32;
    v403 = v398 + 16;
    v395 = (v398 + 8);
    v360 = v373 + 4;
    v359 = v380 + 32;
    v358 = v372 + 32;
    v361 = v8;
LABEL_35:
    if (v47 >= v373[2])
    {
      goto LABEL_291;
    }

    v18 = v48[v47];
    if ((v18 & 0x8000000000000000) != 0)
    {
      goto LABEL_292;
    }

    if (v18 >= *(v372 + 16))
    {
      goto LABEL_293;
    }

    if (v18 >= *(v49 + 16))
    {
      goto LABEL_294;
    }

    v52 = v47 + 1;
    v53 = (v51 + 16 * v18);
    v54 = *v53;
    v14 = v53[1];
    v55 = (v50 + 16 * v18);
    v56 = *v55;
    v57 = v55[1];
    v58 = *(v16 + 112);
    v59 = *(v58 + 16);
    v60 = (v58 + 32);
    while (v59)
    {
      v61 = *v60++;
      --v59;
      if (v61 == v18)
      {
        goto LABEL_34;
      }
    }

    v8 = i;
    v381 = v56;
    v401 = v54;
    v388 = v47;
    v370 = v47 + 1;
    v62 = v16;
    v63 = *(v16 + 88);
    v64 = *(v62 + 96);
    v65 = v62;
    v1 = __swift_project_boxed_opaque_existential_1((v62 + 64), v63);
    v15 = v64 + 64;
    v66 = *(v64 + 64);
    swift_bridgeObjectRetain_n();

    v67 = v66(v18, v63, v64);
    v400 = v14;
    v382 = v57;
    if (v67)
    {
      v409 = v381;
      *&v410 = v57;
      v405 = 60;
      v406 = 0xE100000000000000;
      v14 = 0xE000000000000000;
      v414 = 0;
      v415 = 0xE000000000000000;
      v68 = lazy protocol witness table accessor for type String and conformance String();
      v339 = v68;
      v340 = v68;
      v338 = v68;
      v15 = MEMORY[0x1E69E6158];
      v337 = MEMORY[0x1E69E6158];
      v409 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      *&v410 = v69;
      v405 = 62;
      v406 = 0xE100000000000000;
      v414 = 0;
      v415 = 0xE000000000000000;
      v339 = v68;
      v340 = v68;
      v337 = v15;
      v338 = v68;
      v70 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v16 = v71;

      v20 = specialized Collection.dropFirst(_:)(2uLL, v70, v16);
      i = v72;
      v74 = v73;
      v1 = v75;

      v11 = v399;
      if (!((v20 ^ i) >> 14))
      {
        goto LABEL_298;
      }

      v76 = v404;
      v77 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5AKSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_AF_SsTG5SiTf1cn_n(v20, i, v74, v1, 16);
      v404 = v76;
      if ((v77 & 0x10000) != 0)
      {
        v77 = specialized _parseInteger<A, B>(ascii:radix:)(v20, i, v74, v1, 16);
      }

      v14 = v77;

      v16 = v383;
      i = v394;
      v20 = v401;
      v8 = v361;
      if ((v14 & 0x100) != 0)
      {
        goto LABEL_299;
      }

      v15 = v362;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v409 = v15;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, v14, isUniquelyReferenced_nonNull_native);
      v362 = v409;
      v1 = &v416;
      specialized Dictionary.subscript.setter(v14, v18);
      v14 = v400;
    }

    else
    {
      v11 = v399;
      v20 = v401;
      v16 = v65;
      i = v8;
      v8 = v361;
    }

    v402 = specialized Collection.first.getter(v20, v14);
    if ((v402 & 0x100000000) != 0)
    {

      goto LABEL_33;
    }

    v79 = *(v16 + 56);
    v80 = *(v79 + 16);
    v397 = v79;
    if (v80)
    {
      v15 = 0;
      v393 = v79 + ((v398[80] + 32) & ~v398[80]);
      while (v15 < *(v79 + 16))
      {
        i = *(v398 + 2);
        (i)(v8, v393 + *(v398 + 9) * v15, v11);
        v81 = CharacterSet.contains(_:)();
        if (v81)
        {
          if (specialized Collection.count.getter(v20, v14) == 1)
          {
            sub_1A8E8E88C(v386, 0);
            v1 = v387;
            v20 = swift_isUniquelyReferenced_nonNull_native();
            v409 = v1;
            v16 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
            v83 = *(v1 + 16);
            v84 = (v82 & 1) == 0;
            v85 = v83 + v84;
            if (__OFADD__(v83, v84))
            {
              goto LABEL_289;
            }

            v86 = v82;
            if (*(v1 + 24) >= v85)
            {
              if ((v20 & 1) == 0)
              {
                specialized _NativeDictionary.copy()();
              }
            }

            else
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v85, v20);
              v87 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
              if ((v86 & 1) != (v88 & 1))
              {
                goto LABEL_312;
              }

              v16 = v87;
            }

            v20 = v401;
            v387 = v409;
            if ((v86 & 1) == 0)
            {
              v96 = v391;
              (i)(v391, v8, v11);
              specialized _NativeDictionary._insert(at:key:value:)(v16, v96, MEMORY[0x1E69E7CD0], v387);
            }

            v81 = specialized Set._Variant.insert(_:)(&v409, v18);
            v386 = specialized thunk for @callee_guaranteed () -> (@owned Set<Int>);
            v14 = v400;
          }

          else
          {
            sub_1A8E8E88C(v385, 0);
            v1 = v389;
            v20 = swift_isUniquelyReferenced_nonNull_native();
            v409 = v1;
            v16 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
            v90 = *(v1 + 16);
            v91 = (v89 & 1) == 0;
            v92 = v90 + v91;
            if (__OFADD__(v90, v91))
            {
              goto LABEL_288;
            }

            v93 = v89;
            if (*(v1 + 24) >= v92)
            {
              if ((v20 & 1) == 0)
              {
                specialized _NativeDictionary.copy()();
              }
            }

            else
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v92, v20);
              v94 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
              if ((v93 & 1) != (v95 & 1))
              {
                goto LABEL_312;
              }

              v16 = v94;
            }

            v97 = v409;
            v389 = v409;
            if ((v93 & 1) == 0)
            {
              v98 = v391;
              (i)(v391, v8, v11);
              specialized _NativeDictionary._insert(at:key:value:)(v16, v98, MEMORY[0x1E69E7CC0], v389);
              v97 = v389;
            }

            v99 = *(v97 + 56);
            v100 = *(v99 + 8 * v16);
            v81 = swift_isUniquelyReferenced_nonNull_native();
            *(v99 + 8 * v16) = v100;
            if ((v81 & 1) == 0)
            {
              v81 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v100 + 16) + 1, 1, v100);
              v100 = v81;
              *(v99 + 8 * v16) = v81;
            }

            v102 = *(v100 + 16);
            v101 = *(v100 + 24);
            v103 = v388;
            if (v102 >= v101 >> 1)
            {
              v81 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v101 > 1), v102 + 1, 1, v100);
              v103 = v388;
              v100 = v81;
              *(v99 + 8 * v16) = v81;
            }

            v14 = v400;
            *(v100 + 16) = v102 + 1;
            *(v100 + 8 * v102 + 32) = v103;
            v385 = specialized thunk for @callee_guaranteed () -> (@owned [Int]);
            v11 = v399;
            v20 = v401;
          }
        }

        MEMORY[0x1EEE9AC00](v81);
        v339 = v8;
        v16 = v404;
        v104 = specialized Sequence.allSatisfy(_:)(partial apply for closure #3 in VocabularyManager.processTokenizerVocab(), &v337, v20, v14);
        v404 = v16;
        if (v104)
        {
          sub_1A8E8E88C(v392, 0);
          v1 = v396;
          v20 = swift_isUniquelyReferenced_nonNull_native();
          v409 = v1;
          v16 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
          v106 = *(v1 + 16);
          v107 = (v105 & 1) == 0;
          v108 = v106 + v107;
          if (__OFADD__(v106, v107))
          {
            goto LABEL_279;
          }

          v109 = v105;
          if (*(v1 + 24) >= v108)
          {
            if ((v20 & 1) == 0)
            {
              specialized _NativeDictionary.copy()();
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v108, v20);
            v110 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
            if ((v109 & 1) != (v111 & 1))
            {
              goto LABEL_312;
            }

            v16 = v110;
          }

          v20 = v401;
          v119 = v409;
          v396 = v409;
          if ((v109 & 1) == 0)
          {
            v120 = v391;
            (i)(v391, v8, v11);
            v121 = v120;
            v119 = v396;
            specialized _NativeDictionary._insert(at:key:value:)(v16, v121, MEMORY[0x1E69E7CD0], v396);
          }

          v1 = *(v119 + 56) + 8 * v16;
          specialized Set._Variant.insert(_:)(&v409, v18);
          v392 = specialized thunk for @callee_guaranteed () -> (@owned Set<Int>);
          i = v394;
          v14 = v400;
        }

        else
        {
          v1 = v8;
          if (CharacterSet.contains(_:)())
          {
            sub_1A8E8E88C(v384, 0);
            v1 = v390;
            v20 = swift_isUniquelyReferenced_nonNull_native();
            v409 = v1;
            v16 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
            v113 = *(v1 + 16);
            v114 = (v112 & 1) == 0;
            v115 = v113 + v114;
            if (__OFADD__(v113, v114))
            {
              goto LABEL_290;
            }

            v116 = v112;
            if (*(v1 + 24) >= v115)
            {
              if ((v20 & 1) == 0)
              {
                specialized _NativeDictionary.copy()();
              }
            }

            else
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v115, v20);
              v117 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
              if ((v116 & 1) != (v118 & 1))
              {
                goto LABEL_312;
              }

              v16 = v117;
            }

            v122 = v409;
            v390 = v409;
            if ((v116 & 1) == 0)
            {
              v123 = v391;
              (i)(v391, v8, v11);
              specialized _NativeDictionary._insert(at:key:value:)(v16, v123, MEMORY[0x1E69E7CC0], v390);
              v122 = v390;
            }

            v124 = *(v122 + 56);
            v1 = *(v124 + 8 * v16);
            v125 = swift_isUniquelyReferenced_nonNull_native();
            *(v124 + 8 * v16) = v1;
            if ((v125 & 1) == 0)
            {
              v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 16) + 1, 1, v1);
              *(v124 + 8 * v16) = v1;
            }

            i = v394;
            v127 = *(v1 + 16);
            v126 = *(v1 + 24);
            v128 = v388;
            if (v127 >= v126 >> 1)
            {
              v129 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v126 > 1), v127 + 1, 1, v1);
              v128 = v388;
              v1 = v129;
              *(v124 + 8 * v16) = v129;
            }

            v14 = v400;
            *(v1 + 16) = v127 + 1;
            *(v1 + 8 * v127 + 32) = v128;
            v384 = specialized thunk for @callee_guaranteed () -> (@owned [Int]);
            v11 = v399;
            v20 = v401;
          }

          else
          {
            i = v394;
          }
        }

        ++v15;
        (*v395)(v8, v11);
        v79 = v397;
        if (v80 == v15)
        {
          goto LABEL_104;
        }
      }

      __break(1u);
LABEL_279:
      __break(1u);
      goto LABEL_280;
    }

LABEL_104:
    if ((v14 & 0x2000000000000000) != 0)
    {
      v15 = HIBYTE(v14) & 0xF;
    }

    else
    {
      v15 = v20 & 0xFFFFFFFFFFFFLL;
    }

    if (((v14 >> 60) & ((v20 & 0x800000000000000) == 0)) != 0)
    {
      v130 = 11;
    }

    else
    {
      v130 = 7;
    }

    if (!v15)
    {

      goto LABEL_214;
    }

    v131 = String.subscript.getter();
    v16 = v132;
    sub_1A8E8E88C(v378, 0);
    v1 = v363;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v409 = v1;
    v393 = v131;
    v133 = v131;
    v11 = v16;
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v133, v16);
    v135 = *(v1 + 16);
    v136 = (v134 & 1) == 0;
    v137 = v135 + v136;
    if (!__OFADD__(v135, v136))
    {
      break;
    }

LABEL_308:
    __break(1u);
LABEL_309:
    __break(1u);
LABEL_310:
    swift_once();
  }

  v138 = v134;
  if (*(v1 + 24) >= v137)
  {
    if ((v20 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
    }

LABEL_118:
    v141 = v409;
    v363 = v409;
    if ((v138 & 1) == 0)
    {
      specialized _NativeDictionary._insert(at:key:value:)();

      v141 = v363;
    }

    v142 = *(v141 + 56);
    v143 = *(v142 + 8 * v14);
    v144 = swift_isUniquelyReferenced_nonNull_native();
    *(v142 + 8 * v14) = v143;
    v371 = v130;
    if ((v144 & 1) == 0)
    {
      v143 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v143 + 2) + 1, 1, v143);
      *(v142 + 8 * v14) = v143;
    }

    v146 = *(v143 + 2);
    v145 = *(v143 + 3);
    v147 = v388;
    v375 = v15;
    if (v146 >= v145 >> 1)
    {
      v236 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v145 > 1), v146 + 1, 1, v143);
      v147 = v388;
      v143 = v236;
      *(v142 + 8 * v14) = v236;
    }

    v14 = v400;
    v20 = v401;
    *(v143 + 2) = v146 + 1;
    *&v143[8 * v146 + 32] = v147;
    v15 = v383;
    v148 = __swift_project_boxed_opaque_existential_1((v383 + 16), *(v383 + 40));
    v149 = *v148;
    v150 = v148[1];

    v151._countAndFlagsBits = v149;
    v151._object = v150;
    LOBYTE(v149) = String.hasPrefix(_:)(v151);

    if ((v149 & 1) == 0)
    {

      v215._countAndFlagsBits = v393;
      v215._object = v11;
      v1 = v354;
      CharacterSet.insert(charactersIn:)(v215);
      v378 = specialized thunk for @callee_guaranteed () -> (@owned [Int]);
      v11 = v399;
      v16 = v15;
      goto LABEL_33;
    }

    __swift_project_boxed_opaque_existential_1((v15 + 16), *(v15 + 40));

    v152 = String.count.getter();

    v16 = specialized Collection.dropFirst(_:)(v152, v20, v14);
    v11 = v153;
    v155 = v154;
    v1 = v156;

    v157 = *(v397 + 16);
    v393 = v1;
    v376 = v157;
    v382 = v16;
    v378 = v11;
    v381 = v155;
    if (!v157)
    {

LABEL_212:
      if ((v382 ^ v378) >> 14)
      {
        v216 = Substring.subscript.getter();
        v218 = v217;

        sub_1A8E8E88C(v346, 0);
        v219 = v353;
        v220 = swift_isUniquelyReferenced_nonNull_native();
        v409 = v219;
        v222 = specialized __RawDictionaryStorage.find<A>(_:)(v216, v218);
        v223 = *(v219 + 16);
        v224 = (v221 & 1) == 0;
        v225 = v223 + v224;
        v226 = v383;
        if (__OFADD__(v223, v224))
        {
          __break(1u);
LABEL_312:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
LABEL_313:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          goto LABEL_314;
        }

        v227 = v221;
        if (*(v219 + 24) >= v225)
        {
          if ((v220 & 1) == 0)
          {
            specialized _NativeDictionary.copy()();
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v225, v220);
          v228 = specialized __RawDictionaryStorage.find<A>(_:)(v216, v218);
          if ((v227 & 1) != (v229 & 1))
          {
            goto LABEL_314;
          }

          v222 = v228;
        }

        v230 = v409;
        v353 = v409;
        if ((v227 & 1) == 0)
        {
          specialized _NativeDictionary._insert(at:key:value:)();

          v230 = v353;
        }

        v15 = *(v230 + 56);
        v231 = *(v15 + 8 * v222);
        v232 = swift_isUniquelyReferenced_nonNull_native();
        *(v15 + 8 * v222) = v231;
        if ((v232 & 1) == 0)
        {
          v231 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v231 + 2) + 1, 1, v231);
          *(v15 + 8 * v222) = v231;
        }

        v18 = *(v231 + 2);
        v233 = *(v231 + 3);
        v20 = v18 + 1;
        v234 = v388;
        if (v18 >= v233 >> 1)
        {
          v237 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v233 > 1), v18 + 1, 1, v231);
          v234 = v388;
          v231 = v237;
          *(v15 + 8 * v222) = v237;
        }

        v16 = v226;
        *(v231 + 2) = v20;
        *&v231[8 * v18 + 32] = v234;
        v235._countAndFlagsBits = v216;
        v235._object = v218;
        v1 = v345;
        CharacterSet.insert(charactersIn:)(v235);

        v346 = specialized thunk for @callee_guaranteed () -> (@owned [Int]);
        v378 = specialized thunk for @callee_guaranteed () -> (@owned [Int]);
        v11 = v399;
        v14 = v400;
      }

      else
      {
        v15 = v393;

        v378 = specialized thunk for @callee_guaranteed () -> (@owned [Int]);
LABEL_214:
        v11 = v399;
        v16 = v383;
      }

LABEL_33:

      v49 = v380;
      v46 = v364;
      v48 = v360;
      v50 = v359;
      v51 = v358;
      v52 = v370;
LABEL_34:
      v47 = v52;
      if (v52 == v46)
      {
        goto LABEL_229;
      }

      goto LABEL_35;
    }

    v366 = v371 | (v375 << 16);
    v375 = v397 + ((v398[80] + 32) & ~v398[80]);
    v365 = v16 >> 14;
    v371 = v11 >> 14;
    v158 = (v155 >> 59) & 1;
    if ((v1 & 0x1000000000000000) == 0)
    {
      LOBYTE(v158) = 1;
    }

    v159 = 4 << v158;
    v352 = v16 & 0xC;
    v351 = v159;
    v161 = (v16 & 1) == 0 || (v16 & 0xC) == v159;
    v355 = v161;
    v350 = HIBYTE(v1) & 0xF;
    v349 = v1 & 0xFFFFFFFFFFFFFFLL;
    v348 = (v1 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v347 = v155 & 0xFFFFFFFFFFFFLL;

    v162 = 0;
    while (1)
    {
      if (v162 >= *(v397 + 16))
      {
        goto LABEL_284;
      }

      v11 = *(v398 + 9);
      v15 = *(v398 + 2);
      (v15)(i, v375 + v11 * v162, v399);
      v163 = CharacterSet.contains(_:)();
      if (v163)
      {
        break;
      }

LABEL_162:
      v1 = &v341;
      MEMORY[0x1EEE9AC00](v163);
      v339 = i;
      v16 = v404;
      v188 = specialized Sequence.allSatisfy(_:)(partial apply for closure #4 in VocabularyManager.processTokenizerVocab(), &v337, v382, v378, v381, v393);
      v404 = v16;
      if (v188)
      {
        sub_1A8E8E88C(v377, 0);
        v1 = v379;
        v20 = swift_isUniquelyReferenced_nonNull_native();
        v409 = v1;
        v16 = specialized __RawDictionaryStorage.find<A>(_:)(i);
        v190 = *(v1 + 16);
        v191 = (v189 & 1) == 0;
        v192 = v190 + v191;
        if (__OFADD__(v190, v191))
        {
          goto LABEL_295;
        }

        v193 = v189;
        if (*(v1 + 24) >= v192)
        {
          v11 = v399;
          if (v20)
          {
            v196 = v409;
            if ((v189 & 1) == 0)
            {
              goto LABEL_176;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            v196 = v409;
            if ((v193 & 1) == 0)
            {
              goto LABEL_176;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v192, v20);
          v194 = specialized __RawDictionaryStorage.find<A>(_:)(i);
          v11 = v399;
          if ((v193 & 1) != (v195 & 1))
          {
            goto LABEL_312;
          }

          v16 = v194;
          v196 = v409;
          if (v193)
          {
            goto LABEL_177;
          }

LABEL_176:
          v200 = v391;
          (v15)(v391, i, v11);
          specialized _NativeDictionary._insert(at:key:value:)(v16, v200, MEMORY[0x1E69E7CD0], v196);
        }

LABEL_177:
        v379 = v196;
        v1 = *(v196 + 56) + 8 * v16;
        specialized Set._Variant.insert(_:)(&v409, v18);
        v377 = specialized thunk for @callee_guaranteed () -> (@owned Set<Int>);
        v14 = v400;
        goto LABEL_178;
      }

      if (v365 != v371)
      {
        v197 = v393;
        if (v355)
        {
          v198 = v365;
          v199 = v382;
          if (v352 == v351)
          {
            v199 = _StringGuts._slowEnsureMatchingEncoding(_:)(v382, v381, v393);
            v197 = v393;
            v198 = v199 >> 14;
            if (v199 >> 14 < v365)
            {
              goto LABEL_305;
            }
          }

          if (v198 >= v371)
          {
            goto LABEL_305;
          }

          if ((v199 & 1) == 0)
          {
            _StringGuts.scalarAlignSlow(_:)(v199, v381, v393);
            v197 = v393;
          }
        }

        else if (v365 >= v371)
        {
          goto LABEL_304;
        }

        if ((v197 & 0x1000000000000000) != 0)
        {
          _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        }

        else
        {
          if ((v197 & 0x2000000000000000) != 0)
          {
            v409 = v381;
            *&v410 = v349;
          }

          else if ((v381 & 0x1000000000000000) == 0)
          {
            _StringObject.sharedUTF8.getter();
          }

          _decodeScalar(_:startingAt:)();
        }

        v1 = i;
        if (CharacterSet.contains(_:)())
        {
          sub_1A8E8E88C(v356, 0);
          v1 = v357;
          v20 = swift_isUniquelyReferenced_nonNull_native();
          v409 = v1;
          v14 = specialized __RawDictionaryStorage.find<A>(_:)(i);
          v202 = *(v1 + 16);
          v203 = (v201 & 1) == 0;
          v204 = v202 + v203;
          if (__OFADD__(v202, v203))
          {
            goto LABEL_307;
          }

          v16 = v201;
          if (*(v1 + 24) >= v204)
          {
            if (v20)
            {
              v207 = v409;
              if (v201)
              {
                goto LABEL_196;
              }
            }

            else
            {
              specialized _NativeDictionary.copy()();
              v207 = v409;
              if (v16)
              {
                goto LABEL_196;
              }
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v204, v20);
            v205 = specialized __RawDictionaryStorage.find<A>(_:)(i);
            if ((v16 & 1) != (v206 & 1))
            {
              goto LABEL_313;
            }

            v14 = v205;
            v207 = v409;
            if (v16)
            {
              goto LABEL_196;
            }
          }

          v1 = v207;
          *(v207 + 8 * (v14 >> 6) + 64) |= 1 << v14;
          (v15)(*(v207 + 48) + v14 * v11, i, v399);
          *(*(v1 + 56) + 8 * v14) = MEMORY[0x1E69E7CC0];
          v208 = *(v1 + 16);
          v181 = __OFADD__(v208, 1);
          v209 = v208 + 1;
          if (v181)
          {
            goto LABEL_309;
          }

          v207 = v1;
          *(v1 + 16) = v209;
LABEL_196:
          v357 = v207;
          v15 = *(v207 + 56);
          v1 = *(v15 + 8 * v14);
          v210 = swift_isUniquelyReferenced_nonNull_native();
          *(v15 + 8 * v14) = v1;
          if ((v210 & 1) == 0)
          {
            v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 16) + 1, 1, v1);
            *(v15 + 8 * v14) = v1;
          }

          v11 = v399;
          v212 = *(v1 + 16);
          v211 = *(v1 + 24);
          v16 = v212 + 1;
          v213 = v388;
          if (v212 >= v211 >> 1)
          {
            v214 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v211 > 1), v212 + 1, 1, v1);
            v213 = v388;
            v1 = v214;
            *(v15 + 8 * v14) = v214;
          }

          v14 = v400;
          *(v1 + 16) = v16;
          *(v1 + 8 * v212 + 32) = v213;
          v356 = specialized thunk for @callee_guaranteed () -> (@owned [Int]);
LABEL_178:
          v20 = v401;
          goto LABEL_136;
        }
      }

      v11 = v399;
LABEL_136:
      ++v162;
      (*v395)(i, v11);
      if (v376 == v162)
      {
        goto LABEL_212;
      }
    }

    if (String.UnicodeScalarView.distance(from:to:)(0xFuLL, v366, v20, v14) == 1)
    {
      sub_1A8E8E88C(v368, 0);
      v1 = v374;
      v20 = swift_isUniquelyReferenced_nonNull_native();
      v409 = v1;
      v164 = specialized __RawDictionaryStorage.find<A>(_:)(i);
      v14 = v165;
      v166 = *(v1 + 16);
      v167 = (v165 & 1) == 0;
      if (__OFADD__(v166, v167))
      {
        goto LABEL_296;
      }

      v168 = v164;
      v169 = specialized _NativeDictionary.ensureUnique(isUnique:capacity:)(v20, v166 + v167, specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary.copy());
      v374 = v409;
      if (v169)
      {
        v170 = specialized __RawDictionaryStorage.find<A>(_:)(i);
        v20 = v401;
        if ((v14 & 1) != (v171 & 1))
        {
          goto LABEL_313;
        }

        v168 = v170;
        if (v14)
        {
          goto LABEL_152;
        }

LABEL_151:
        v179 = v391;
        (v15)(v391, i, v399);
        specialized _NativeDictionary._insert(at:key:value:)(v168, v179, MEMORY[0x1E69E7CD0], v374);
      }

      else
      {
        v20 = v401;
        if ((v14 & 1) == 0)
        {
          goto LABEL_151;
        }
      }

LABEL_152:
      v163 = specialized Set._Variant.insert(_:)(&v409, v18);
      v368 = specialized thunk for @callee_guaranteed () -> (@owned Set<Int>);
      v14 = v400;
      goto LABEL_162;
    }

    sub_1A8E8E88C(v367, 0);
    v1 = v369;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v409 = v1;
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(i);
    v173 = *(v1 + 16);
    v174 = (v172 & 1) == 0;
    v175 = v173 + v174;
    if (__OFADD__(v173, v174))
    {
      goto LABEL_297;
    }

    v16 = v172;
    if (*(v1 + 24) < v175)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v175, v20);
      v176 = specialized __RawDictionaryStorage.find<A>(_:)(i);
      if ((v16 & 1) != (v177 & 1))
      {
        goto LABEL_313;
      }

      v14 = v176;
      v178 = v409;
      if (v16)
      {
        goto LABEL_157;
      }

LABEL_155:
      v1 = v178;
      *(v178 + 8 * (v14 >> 6) + 64) |= 1 << v14;
      (v15)(*(v178 + 48) + v14 * v11, i, v399);
      *(*(v1 + 56) + 8 * v14) = MEMORY[0x1E69E7CC0];
      v180 = *(v1 + 16);
      v181 = __OFADD__(v180, 1);
      v182 = v180 + 1;
      if (v181)
      {
        goto LABEL_306;
      }

      v178 = v1;
      *(v1 + 16) = v182;
      goto LABEL_157;
    }

    if (v20)
    {
      v178 = v409;
      if ((v172 & 1) == 0)
      {
        goto LABEL_155;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      v178 = v409;
      if ((v16 & 1) == 0)
      {
        goto LABEL_155;
      }
    }

LABEL_157:
    v369 = v178;
    v183 = *(v178 + 56);
    v184 = *(v183 + 8 * v14);
    v163 = swift_isUniquelyReferenced_nonNull_native();
    *(v183 + 8 * v14) = v184;
    if ((v163 & 1) == 0)
    {
      v163 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v184 + 16) + 1, 1, v184);
      v184 = v163;
      *(v183 + 8 * v14) = v163;
    }

    v186 = *(v184 + 16);
    v185 = *(v184 + 24);
    v187 = v388;
    if (v186 >= v185 >> 1)
    {
      v163 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v185 > 1), v186 + 1, 1, v184);
      v187 = v388;
      v184 = v163;
      *(v183 + 8 * v14) = v163;
    }

    v14 = v400;
    v20 = v401;
    *(v184 + 16) = v186 + 1;
    *(v184 + 8 * v186 + 32) = v187;
    v367 = specialized thunk for @callee_guaranteed () -> (@owned [Int]);
    i = v394;
    goto LABEL_162;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v137, v20);
  v139 = specialized __RawDictionaryStorage.find<A>(_:)(v393, v11);
  if ((v138 & 1) == (v140 & 1))
  {
    v14 = v139;
    goto LABEL_118;
  }

LABEL_314:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t *closure #1 in VocabularyManager.processTokenizerVocab()(unint64_t *result, unint64_t *a2, uint64_t a3)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = *(*a3 + 16);
  if (v3 >= v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = *a2;
  if (*a2 >= v4)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v6 = *a3 + 32;
  v7 = (v6 + 16 * v3);
  v8 = *v7;
  v9 = v7[1];
  v10 = (v6 + 16 * v5);
  if (v8 == *v10 && v9 == v10[1])
  {
    return 0;
  }

  else
  {
    return (_stringCompareWithSmolCheck(_:_:expecting:)() & 1);
  }
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1, uint64_t a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, a2);
  *a1 = v4;
  return result;
}

void *VocabularyManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  outlined destroy of VocabularyManager.PrefixLookup?(v0 + OBJC_IVAR____TtC19TokenGenerationCore17VocabularyManager____lazy_storage___prefixLookUp);
  return v0;
}

uint64_t outlined destroy of VocabularyManager.PrefixLookup?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore17VocabularyManagerC12PrefixLookupVSgMd, &_s19TokenGenerationCore17VocabularyManagerC12PrefixLookupVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t VocabularyManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  outlined destroy of VocabularyManager.PrefixLookup?(v0 + OBJC_IVAR____TtC19TokenGenerationCore17VocabularyManager____lazy_storage___prefixLookUp);

  return swift_deallocClassInstance();
}

void type metadata completion function for VocabularyManager(uint64_t a1)
{
  type metadata accessor for VocabularyManager.PrefixLookup?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for VocabularyManager.PrefixLookup?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for VocabularyManager.PrefixLookup?)
  {
    type metadata accessor for VocabularyManager.PrefixLookup(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for VocabularyManager.PrefixLookup?);
    }
  }
}

void type metadata completion function for VocabularyManager.PrefixLookup(uint64_t a1)
{
  type metadata accessor for [Character : [Int]](319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [String](319, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CharacterSet();
      if (v3 <= 0x3F)
      {
        type metadata accessor for [String](319, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for [UInt8 : Int](319, &lazy cache variable for type metadata for [UInt8 : Int], MEMORY[0x1E69E7508], MEMORY[0x1E69E6530], MEMORY[0x1E69E7518]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for [UInt8 : Int](319, &lazy cache variable for type metadata for [Int : UInt8], MEMORY[0x1E69E6530], MEMORY[0x1E69E7508], MEMORY[0x1E69E6540]);
            if (v6 <= 0x3F)
            {
              type metadata accessor for Set<Int>();
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for [String](uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Array();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for Set<Int>()
{
  if (!lazy cache variable for type metadata for Set<Int>)
  {
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Set<Int>);
    }
  }
}

uint64_t getEnumTagSinglePayload for VocabularyManager.CharacterSetLookup(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for VocabularyManager.CharacterSetLookup(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized _NativeDictionary.ensureUnique(isUnique:capacity:)(char a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), void (*a4)(void))
{
  v5 = *(*v4 + 24);
  if (v5 >= a2 && (a1 & 1) != 0)
  {
    return 0;
  }

  if ((a1 & 1) == 0)
  {
    if (v5 < a2)
    {
      v6 = a2;
      v7 = 0;
      goto LABEL_9;
    }

    a4();
    return 0;
  }

  v6 = a2;
  v7 = 1;
LABEL_9:
  a3(v6, v7);
  return 1;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  result = _minimumMergeRunLength(_:)(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      if (v4 <= 1)
      {
        v7 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v7 + 16) = v4 / 2;
      }

      v9[0] = v7 + 32;
      v9[1] = v4 / 2;
      v8 = v7;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v4, 1, a1, a2);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v6 = a3;
    v8 = *a4;
    v9 = *a4 + 8 * a3 - 8;
    v10 = result - a3;
LABEL_5:
    v11 = *(v8 + 8 * v6);
    v12 = v10;
    v13 = v9;
    while ((v11 & 0x8000000000000000) == 0)
    {
      v14 = *(*a5 + 16);
      if (v11 >= v14)
      {
        goto LABEL_19;
      }

      if (*v13 >= v14)
      {
        goto LABEL_20;
      }

      v15 = *a5 + 32;
      v16 = (v15 + 16 * v11);
      result = *v16;
      v17 = v16[1];
      v18 = (v15 + 16 * *v13);
      if (result != *v18 || v17 != v18[1])
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if (result)
        {
          if (!v8)
          {
            goto LABEL_21;
          }

          v20 = *v13;
          v11 = v13[1];
          *v13 = v11;
          v13[1] = v20;
          --v13;
          if (!__CFADD__(v12++, 1))
          {
            continue;
          }
        }
      }

      ++v6;
      v9 += 8;
      --v10;
      if (v6 == a2)
      {
        return result;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v98 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_110:
    v6 = *v98;
    if (!*v98)
    {
      goto LABEL_154;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_112;
    }

    goto LABEL_148;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 >= v8)
    {
      ++v9;
      goto LABEL_28;
    }

    v6 = *a3;
    v13 = *(*a3 + 8 * v12);
    v101 = *(*a3 + 8 * v9);
    v102 = v13;
    result = closure #1 in VocabularyManager.processTokenizerVocab()(&v102, &v101, a5);
    if (v5)
    {
    }

    v14 = result;
    v15 = v9 + 2;
    if (v9 + 2 >= v8)
    {
      v9 += 2;
      if ((result & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v16 = (v6 + 8 * v9 + 16);
      do
      {
        v9 = v15;
        v17 = *v16;
        if ((*v16 & 0x8000000000000000) != 0)
        {
          goto LABEL_127;
        }

        v18 = *(*a5 + 16);
        if (v17 >= v18)
        {
          goto LABEL_128;
        }

        v19 = *(v16 - 1);
        if (v19 >= v18)
        {
          goto LABEL_129;
        }

        v20 = *a5 + 32;
        v21 = (v20 + 16 * v17);
        result = *v21;
        v22 = v21[1];
        v23 = (v20 + 16 * v19);
        if (result == *v23 && v22 == v23[1])
        {
          if (v14)
          {
            v12 = v9 - 1;
            goto LABEL_26;
          }
        }

        else
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((v14 ^ result))
          {
            v12 = v9 - 1;
            if ((v14 & 1) == 0)
            {
              goto LABEL_28;
            }

            goto LABEL_26;
          }
        }

        ++v16;
        v15 = v9 + 1;
      }

      while (v8 != v9 + 1);
      v12 = v9;
      v9 = v8;
      if ((v14 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

LABEL_26:
    if (v9 < v11)
    {
      goto LABEL_145;
    }

    if (v11 <= v12)
    {
      v41 = v9 - 1;
      v42 = v11;
      do
      {
        if (v42 != v41)
        {
          v45 = *a3;
          if (!*a3)
          {
            goto LABEL_151;
          }

          v43 = *(v45 + 8 * v42);
          *(v45 + 8 * v42) = *(v45 + 8 * v41);
          *(v45 + 8 * v41) = v43;
        }
      }

      while (++v42 < v41--);
    }

LABEL_28:
    v25 = a3[1];
    if (v9 < v25)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_144;
      }

      if (v9 - v11 < a4)
      {
        v26 = v11 + a4;
        if (__OFADD__(v11, a4))
        {
          goto LABEL_146;
        }

        if (v26 >= v25)
        {
          v26 = a3[1];
        }

        if (v26 < v11)
        {
          goto LABEL_147;
        }

        if (v9 != v26)
        {
          break;
        }
      }
    }

LABEL_59:
    if (v9 < v11)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v47 = *(v10 + 2);
    v46 = *(v10 + 3);
    v48 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v48;
    v49 = &v10[16 * v47];
    *(v49 + 4) = v11;
    *(v49 + 5) = v9;
    v50 = *v98;
    if (!*v98)
    {
      goto LABEL_153;
    }

    if (v47)
    {
      while (1)
      {
        v51 = v48 - 1;
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v52 = *(v10 + 4);
          v53 = *(v10 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_79:
          if (v55)
          {
            goto LABEL_132;
          }

          v68 = &v10[16 * v48];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_135;
          }

          v74 = &v10[16 * v51 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_138;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_139;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v48 - 2;
            }

            goto LABEL_100;
          }

          goto LABEL_93;
        }

        v78 = &v10[16 * v48];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_93:
        if (v73)
        {
          goto LABEL_134;
        }

        v81 = &v10[16 * v51];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_137;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_100:
        v89 = v51 - 1;
        if (v51 - 1 >= v48)
        {
          goto LABEL_124;
        }

        if (!*a3)
        {
          goto LABEL_150;
        }

        v6 = *&v10[16 * v89 + 32];
        v90 = *&v10[16 * v51 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + 8 * v6, (*a3 + 8 * *&v10[16 * v51 + 32]), (*a3 + 8 * v90), v50, a5);
        if (v5)
        {
        }

        if (v90 < v6)
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
        }

        if (v89 >= *(v10 + 2))
        {
          goto LABEL_126;
        }

        v91 = &v10[16 * v89];
        *(v91 + 4) = v6;
        *(v91 + 5) = v90;
        v103 = v10;
        result = specialized Array.remove(at:)(v51);
        v10 = v103;
        v48 = *(v103 + 2);
        if (v48 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v10[16 * v48 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_130;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_131;
      }

      v63 = &v10[16 * v48];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_133;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_136;
      }

      if (v67 >= v59)
      {
        v85 = &v10[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_140;
        }

        if (v54 < v88)
        {
          v51 = v48 - 2;
        }

        goto LABEL_100;
      }

      goto LABEL_79;
    }

LABEL_3:
    v8 = a3[1];
    if (v9 >= v8)
    {
      goto LABEL_110;
    }
  }

  v27 = *a3;
  v28 = *a3 + 8 * v9 - 8;
  v96 = v11;
  v29 = v11 - v9;
  v99 = v26;
LABEL_38:
  v30 = *(v27 + 8 * v9);
  v31 = v29;
  v6 = v28;
  while (1)
  {
    if ((v30 & 0x8000000000000000) != 0)
    {
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
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
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
LABEL_148:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
      v10 = result;
LABEL_112:
      v103 = v10;
      v92 = *(v10 + 2);
      if (v92 >= 2)
      {
        while (*a3)
        {
          v93 = *&v10[16 * v92];
          v94 = *&v10[16 * v92 + 24];
          specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + 8 * v93, (*a3 + 8 * *&v10[16 * v92 + 16]), (*a3 + 8 * v94), v6, a5);
          if (v5)
          {
          }

          if (v94 < v93)
          {
            goto LABEL_141;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
          }

          if (v92 - 2 >= *(v10 + 2))
          {
            goto LABEL_142;
          }

          v95 = &v10[16 * v92];
          *v95 = v93;
          *(v95 + 1) = v94;
          v103 = v10;
          result = specialized Array.remove(at:)(v92 - 1);
          v10 = v103;
          v92 = *(v103 + 2);
          if (v92 <= 1)
          {
          }
        }

        goto LABEL_152;
      }
    }

    v32 = *(*a5 + 16);
    if (v30 >= v32)
    {
      goto LABEL_122;
    }

    if (*v6 >= v32)
    {
      goto LABEL_123;
    }

    v33 = *a5 + 32;
    v34 = (v33 + 16 * v30);
    v35 = *v34;
    v36 = v34[1];
    v37 = (v33 + 16 * *v6);
    v38 = v35 == *v37 && v36 == v37[1];
    if (v38 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_37:
      ++v9;
      v28 += 8;
      --v29;
      if (v9 == v99)
      {
        v9 = v99;
        v11 = v96;
        goto LABEL_59;
      }

      goto LABEL_38;
    }

    if (!v27)
    {
      break;
    }

    v39 = *v6;
    v30 = *(v6 + 8);
    *v6 = v30;
    *(v6 + 8) = v39;
    v6 -= 8;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(uint64_t __dst, char *__src, char *a3, char *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = &__src[-__dst];
  v11 = &__src[-__dst + 7];
  if (&__src[-__dst] >= 0)
  {
    v11 = &__src[-__dst];
  }

  v12 = v11 >> 3;
  v13 = a3 - __src;
  v14 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 3;
  if (v12 < v14 >> 3)
  {
    if (a4 != __dst || __dst + 8 * v12 <= a4)
    {
      __dst = memmove(a4, __dst, 8 * v12);
    }

    v16 = &v6[8 * v12];
    if (v10 < 8)
    {
LABEL_10:
      v8 = v9;
LABEL_49:
      if (v8 != v6 || v8 >= &v6[(v16 - v6 + (v16 - v6 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
      {
        memmove(v8, v6, 8 * ((v16 - v6) / 8));
      }

      return 1;
    }

    while (1)
    {
      if (v8 >= v7)
      {
        goto LABEL_10;
      }

      v18 = *v8;
      if ((*v8 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_54;
      }

      v19 = *(*a5 + 16);
      if (v18 >= v19)
      {
        goto LABEL_55;
      }

      if (*v6 >= v19)
      {
        goto LABEL_58;
      }

      v20 = *a5 + 32;
      v21 = (v20 + 16 * v18);
      __dst = *v21;
      v22 = v21[1];
      v23 = (v20 + 16 * *v6);
      v24 = __dst == *v23 && v22 == v23[1];
      if (!v24)
      {
        __dst = _stringCompareWithSmolCheck(_:_:expecting:)();
        if (__dst)
        {
          break;
        }
      }

      v17 = v6;
      v24 = v9 == v6;
      v6 += 8;
      if (!v24)
      {
        goto LABEL_12;
      }

LABEL_13:
      v9 += 8;
      if (v6 >= v16)
      {
        goto LABEL_10;
      }
    }

    v17 = v8;
    v24 = v9 == v8;
    v8 += 8;
    if (v24)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v9 = *v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v15] <= a4)
  {
    __dst = memmove(a4, __src, 8 * v15);
  }

  v16 = &v6[8 * v15];
  if (v13 < 8 || v8 <= v9)
  {
    goto LABEL_49;
  }

LABEL_31:
  v25 = v8 - 8;
  v7 -= 8;
  v26 = v16;
  while (1)
  {
    v28 = *(v26 - 1);
    v26 -= 8;
    v27 = v28;
    if ((v28 & 0x8000000000000000) != 0)
    {
      break;
    }

    v29 = *(*a5 + 16);
    if (v27 >= v29)
    {
      goto LABEL_56;
    }

    if (*v25 >= v29)
    {
      goto LABEL_57;
    }

    v30 = *a5 + 32;
    v31 = (v30 + 16 * v27);
    __dst = *v31;
    v32 = v31[1];
    v33 = (v30 + 16 * *v25);
    if (__dst != *v33 || v32 != v33[1])
    {
      __dst = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (__dst)
      {
        if (v7 + 8 != v8)
        {
          *v7 = *v25;
        }

        if (v16 <= v6 || (v8 -= 8, v25 <= v9))
        {
          v8 = v25;
          goto LABEL_49;
        }

        goto LABEL_31;
      }
    }

    if (v7 + 8 != v16)
    {
      *v7 = *v26;
    }

    v7 -= 8;
    v16 = v26;
    if (v26 <= v6)
    {
      v16 = v26;
      goto LABEL_49;
    }
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return __dst;
}

unint64_t String.UnicodeScalarView.distance(from:to:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = _StringGuts.validateInclusiveScalarIndex(_:)(a1, a3, a4);
  v8 = _StringGuts.validateInclusiveScalarIndex(_:)(a2, a3, a4);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 < v8 >> 14)
  {
    for (i = 0; ; ++i)
    {
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = String.UnicodeScalarView._foreignIndex(after:)();
      }

      else
      {
        v14 = result >> 16;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          v16 = *(&v28 + v14);
        }

        else
        {
          v15 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v15 = _StringObject.sharedUTF8.getter();
          }

          v16 = *(v15 + v14);
        }

        v17 = v16;
        v18 = __clz(v16 ^ 0xFF) - 24;
        if (v17 >= 0)
        {
          LOBYTE(v18) = 1;
        }

        result = ((v14 + v18) << 16) | 5;
      }

      if (v11 <= result >> 14)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  if (v11 < v10)
  {
    v13 = 0;
    while (!__OFSUB__(v13--, 1))
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        result = String.UnicodeScalarView._foreignIndex(before:)();
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v28 + (result >> 16) - 1) & 0xC0) == 0x80)
          {
            v25 = &v28 + (result >> 16) - 2;
            v24 = 1;
            do
            {
              ++v24;
              v26 = *v25--;
            }

            while ((v26 & 0xC0) == 0x80);
          }

          else
          {
            v24 = 1;
          }
        }

        else
        {
          v20 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v27 = result;
            v20 = _StringObject.sharedUTF8.getter();
            result = v27;
          }

          v21 = 0;
          v22 = v20 + (result >> 16) - 1;
          do
          {
            v23 = *(v22 + v21--) & 0xC0;
          }

          while (v23 == 128);
          v24 = -v21;
        }

        result = (result - (v24 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v11 >= result >> 14)
      {
        return v13;
      }
    }

    goto LABEL_36;
  }

  return 0;
}

char *_s19TokenGenerationCore17VocabularyManagerC9tokenizer26characterSetsUsedInGrammar14vocabConverter04stopA3IDsAcA06GuidedB9Tokenizer_p_Say10Foundation12CharacterSetVGAA0D14TextConverting_pSaySiGtcfCTf4nnenn_nAA013SentencePieceduM0V_Tt3g5Tf4ennn_n(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v34 = a2;
  v35 = a7;
  v40[3] = a8;
  v40[4] = a9;
  __swift_allocate_boxed_opaque_existential_1(v40);
  (*(*(a8 - 8) + 32))();
  v39[3] = &type metadata for SentencePieceVocabularyTextConverter;
  v39[4] = &protocol witness table for SentencePieceVocabularyTextConverter;
  v14 = swift_allocObject();
  v39[0] = v14;
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  type metadata accessor for VocabularyManager(0);
  v15 = swift_allocObject();
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v39, &type metadata for SentencePieceVocabularyTextConverter);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v17);
  v33 = *v19;
  v22 = *(v19 + 2);
  v21 = *(v19 + 3);
  v37 = &type metadata for SentencePieceVocabularyTextConverter;
  v38 = &protocol witness table for SentencePieceVocabularyTextConverter;
  v23 = swift_allocObject();
  v36[0] = v23;
  *(v23 + 16) = v33;
  *(v23 + 32) = v22;
  *(v23 + 40) = v21;
  v24 = OBJC_IVAR____TtC19TokenGenerationCore17VocabularyManager____lazy_storage___prefixLookUp;
  v25 = type metadata accessor for VocabularyManager.PrefixLookup(0);
  (*(*(v25 - 8) + 56))(&v15[v24], 1, 1, v25);
  outlined init with copy of GuidedGenerationTokenizer(v40, (v15 + 64));
  outlined init with copy of GuidedGenerationTokenizer(v36, (v15 + 16));
  v26 = __swift_project_boxed_opaque_existential_1(v36, v37);
  v27 = *v26;
  v28 = v26[1];
  v29 = *(a9 + 8);

  v30 = v29(v27, v28, a8, a9);

  v31 = v35;
  *(v15 + 7) = v34;
  *(v15 + 13) = v30;
  *(v15 + 14) = v31;
  __swift_destroy_boxed_opaque_existential_0(v36);
  __swift_destroy_boxed_opaque_existential_0(v40);
  __swift_destroy_boxed_opaque_existential_0(v39);
  return v15;
}

uint64_t outlined destroy of TerminalSymbol(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet()
{
  result = lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet;
  if (!lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet)
  {
    type metadata accessor for CharacterSet();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet);
  }

  return result;
}

void specialized static VocabularyManager.mergeSortedRanks(_:_:)(char *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(*result + 16);
  v4 = *(a2 + 16);
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  if (v5)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    v7 = a2;
    v8 = result;
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6 & ~(v6 >> 63), 0, MEMORY[0x1E69E7CC0]);
    v10 = v9;
    v11 = *(v2 + 16);
    if (v11)
    {
      v12 = v4 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      v14 = 0;
      v15 = 0;
      v32 = v9;
      v13 = *(v2 + 16);
    }

    else
    {
      v30 = v7;
      v31 = v8;
      v14 = 0;
      v15 = 0;
      v16 = v7 + 32;
      do
      {
        while (1)
        {
          if (v14 >= *(v2 + 16))
          {
            __break(1u);
            goto LABEL_27;
          }

          v17 = *(v2 + 32 + 8 * v14);
          v18 = *(v16 + 8 * v15);
          if (v17 >= v18)
          {
            break;
          }

          v20 = *(v10 + 2);
          v19 = *(v10 + 3);
          if (v20 >= v19 >> 1)
          {
            v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v10);
          }

          *(v10 + 2) = v20 + 1;
          *&v10[8 * v20 + 32] = v17;
          if (++v14 >= v11)
          {
            goto LABEL_23;
          }
        }

        v22 = *(v10 + 2);
        v21 = *(v10 + 3);
        v23 = v21 >> 1;
        v24 = v22 + 1;
        if (v17 == v18)
        {
          if (v23 <= v22)
          {
            v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v10);
            v24 = v22 + 1;
            v10 = v25;
          }

          *(v10 + 2) = v24;
          *&v10[8 * v22 + 32] = v17;
          ++v14;
        }

        else
        {
          if (v23 <= v22)
          {
            v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v10);
            v24 = v22 + 1;
            v10 = v26;
          }

          *(v10 + 2) = v24;
          *&v10[8 * v22 + 32] = v18;
        }

        ++v15;
      }

      while (v14 < v11 && v15 < v4);
LABEL_23:
      v32 = v10;
      v13 = *(v2 + 16);
      v7 = v30;
      v8 = v31;
      if (v13 < v14)
      {
        goto LABEL_28;
      }
    }

    v27 = (2 * v13) | 1;

    specialized Array.append<A>(contentsOf:)(v28, v2 + 32, v14, v27);
    if (v4 >= v15)
    {

      specialized Array.append<A>(contentsOf:)(v29, v7 + 32, v15, (2 * v4) | 1);

      *v8 = v32;
      return;
    }
  }

  __break(1u);
}

uint64_t outlined init with copy of VocabularyManager.PrefixLookup?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore17VocabularyManagerC12PrefixLookupVSgMd, &_s19TokenGenerationCore17VocabularyManagerC12PrefixLookupVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s19TokenGenerationCore14TerminalSymbolOWOcTm_2(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of VocabularyManager.PrefixLookup?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore17VocabularyManagerC12PrefixLookupVSgMd, &_s19TokenGenerationCore17VocabularyManagerC12PrefixLookupVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of VocabularyManager.PrefixLookup(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VocabularyManager.PrefixLookup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::OpaquePointer_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TokenizerRunnerObjC.tokenize(text:)(Swift::String text)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1AC57BF60](text._countAndFlagsBits, text._object);
  v18[0] = 0;
  v3 = [v1 tokenize:v2 error:v18];

  v4 = v18[0];
  if (!v3)
  {
    v9 = v18[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_19;
  }

  type metadata accessor for NSNumber();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v4;

  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v16 = v5;
    }

    else
    {
      v16 = v5 & 0xFFFFFFFFFFFFFF8;
    }

    v7 = MEMORY[0x1AC57C730](v16);
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_18:

    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_4:
  v18[0] = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 & ~(v7 >> 63), 0);
  if (v7 < 0)
  {
    __break(1u);
  }

  v8 = 0;
  v9 = v18[0];
  do
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1AC57C620](v8, v5);
    }

    else
    {
      v10 = *(v5 + 8 * v8 + 32);
    }

    v11 = v10;
    v12 = [v10 integerValue];

    v18[0] = v9;
    v14 = v9[2];
    v13 = v9[3];
    if (v14 >= v13 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      v9 = v18[0];
    }

    ++v8;
    v9[2] = v14 + 1;
    v9[v14 + 4] = v12;
  }

  while (v7 != v8);

LABEL_19:
  v17 = v9;
  result.value._rawValue = v17;
  result.is_nil = v15;
  return result;
}

uint64_t closure #1 in TokenizerRunnerObjC.collectPrefixes(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;

  result = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v8;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
    v8 = result;
    *a4 = result;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
    v8 = result;
    *a4 = result;
  }

  v8[2] = v11 + 1;
  v12 = &v8[3 * v11];
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = a3;
  return result;
}

uint64_t TokenizerRunnerObjC.prefixTokenIDs(forPrefix:)()
{
  v8 = MEMORY[0x1E69E7CC0];
  v6[2] = &v8;
  v1 = MEMORY[0x1AC57BF60]();
  v2 = swift_allocObject();
  *(v2 + 16) = closure #1 in TokenizerRunnerObjC.collectPrefixes(_:_:)partial apply;
  *(v2 + 24) = v6;
  aBlock[4] = thunk for @callee_guaranteed (@unowned Int, @guaranteed String) -> ()partial apply;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed String) -> ();
  aBlock[3] = &block_descriptor_17;
  v3 = _Block_copy(aBlock);

  [v0 enumeratePrefixTokenIDsForPrefix:v1 block:v3];

  _Block_release(v3);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed String) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4(a2, v5, v6);
}

uint64_t TokenizerRunnerObjC.tokenIDs(forRawPrefix:)()
{
  v8 = MEMORY[0x1E69E7CC0];
  v6[2] = &v8;
  v1 = MEMORY[0x1AC57BF60]();
  v2 = swift_allocObject();
  *(v2 + 16) = closure #1 in TokenizerRunnerObjC.collectPrefixes(_:_:)partial apply;
  *(v2 + 24) = v6;
  aBlock[4] = thunk for @callee_guaranteed (@unowned Int, @guaranteed String) -> ()partial apply;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed String) -> ();
  aBlock[3] = &block_descriptor_9;
  v3 = _Block_copy(aBlock);

  [v0 enumerateTokenIDsForRawPrefix:v1 block:v3];

  _Block_release(v3);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t TokenizerRunnerObjC.tokenIDs(forDecodedPrefix:)()
{
  v8 = MEMORY[0x1E69E7CC0];
  v6[2] = &v8;
  v1 = MEMORY[0x1AC57BF60]();
  v2 = swift_allocObject();
  *(v2 + 16) = partial apply for closure #1 in TokenizerRunnerObjC.collectPrefixes(_:_:);
  *(v2 + 24) = v6;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@unowned Int, @guaranteed String) -> ();
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed String) -> ();
  aBlock[3] = &block_descriptor;
  v3 = _Block_copy(aBlock);

  [v0 enumerateTokenIDsForDecodedPrefix:v1 block:v3];

  _Block_release(v3);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v8;
  }

  __break(1u);
  return result;
}

id protocol witness for TokenizerRunnerTokenizer.tokenID(forText:) in conformance TokenizerRunnerObjC()
{
  v1 = *v0;
  v2 = MEMORY[0x1AC57BF60]();
  v3 = [v1 tokenIDForText_];

  return v3;
}

uint64_t protocol witness for TokenizerRunnerTokenizer.text(forTokenID:) in conformance TokenizerRunnerObjC(uint64_t a1)
{
  v2 = [*v1 textForTokenID_];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t protocol witness for TokenizerRunnerTokenizer.vocabulary() in conformance TokenizerRunnerObjC()
{
  v1 = [*v0 vocabulary];
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t GuidedGenerationConstraints.init(grammarString:tokenizerPath:stopTokenIDs:numParallelTasks:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](GuidedGenerationConstraints.init(grammarString:tokenizerPath:stopTokenIDs:numParallelTasks:), 0, 0);
}

uint64_t GuidedGenerationConstraints.init(grammarString:tokenizerPath:stopTokenIDs:numParallelTasks:)()
{
  v23 = v0;
  v1 = static BackusNaurParser.parsedRules(_:)(*(v0 + 24), *(v0 + 32));

  Grammar.init(rules:prependSpaceToRootRule:cacheableResursiveNonTerminals:)(v1, 1, MEMORY[0x1E69E7CC0], &v16);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = v16;
  v6 = v17;
  v7 = v18;
  type metadata accessor for TokenizerRunner();
  swift_allocObject();
  v8 = TokenizerRunner.init(tokenizerPath:)(v4, v3);
  v9 = *(v0 + 56);
  v10 = *(v0 + 16);
  v11 = v8;

  v12 = _s19TokenGenerationCore17VocabularyManagerC9tokenizer26characterSetsUsedInGrammar14vocabConverter04stopA3IDsAcA06GuidedB9Tokenizer_p_Say10Foundation12CharacterSetVGAA0D14TextConverting_pSaySiGtcfCTf4nnenn_nAA013SentencePieceduM0V_Tt3g5Tf4ennn_nAA0Q6RunnerC_Tg5(v11, *(&v7 + 1), 8492770, 0xA300000000000000, 8492770, 0xA300000000000000, v9);
  v21[0] = v5;
  v21[1] = v6;
  v21[2] = v7;
  v22 = v12;

  GuidedGenerationConstraints.init(grammar:vocabularyManager:)(v21, &v22, &v16);

  v13 = v19;
  *(v10 + 32) = v18;
  *(v10 + 48) = v13;
  *(v10 + 64) = v20;
  v14 = v17;
  *v10 = v16;
  *(v10 + 16) = v14;
  v15 = *(v0 + 8);

  return v15();
}

char *_s19TokenGenerationCore17VocabularyManagerC9tokenizer26characterSetsUsedInGrammar14vocabConverter04stopA3IDsAcA06GuidedB9Tokenizer_p_Say10Foundation12CharacterSetVGAA0D14TextConverting_pSaySiGtcfCTf4nnenn_nAA013SentencePieceduM0V_Tt3g5Tf4ennn_nAA0Q6RunnerC_Tg5(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v39[3] = type metadata accessor for TokenizerRunner();
  v39[4] = &protocol witness table for TokenizerRunner;
  v39[0] = a1;
  v38[3] = &type metadata for SentencePieceVocabularyTextConverter;
  v38[4] = &protocol witness table for SentencePieceVocabularyTextConverter;
  v14 = swift_allocObject();
  v38[0] = v14;
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  type metadata accessor for VocabularyManager(0);
  v15 = swift_allocObject();
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v38, &type metadata for SentencePieceVocabularyTextConverter);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v35[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v17);
  v34 = *v19;
  v22 = *(v19 + 2);
  v21 = *(v19 + 3);
  v36 = &type metadata for SentencePieceVocabularyTextConverter;
  v37 = &protocol witness table for SentencePieceVocabularyTextConverter;
  v23 = swift_allocObject();
  v35[0] = v23;
  *(v23 + 16) = v34;
  *(v23 + 32) = v22;
  *(v23 + 40) = v21;
  v24 = OBJC_IVAR____TtC19TokenGenerationCore17VocabularyManager____lazy_storage___prefixLookUp;
  v25 = type metadata accessor for VocabularyManager.PrefixLookup(0);
  (*(*(v25 - 8) + 56))(&v15[v24], 1, 1, v25);
  outlined init with copy of GuidedGenerationTokenizer(v39, (v15 + 64));
  outlined init with copy of GuidedGenerationTokenizer(v35, (v15 + 16));
  v26 = __swift_project_boxed_opaque_existential_1(v35, v36);
  v27 = *v26;
  v28 = v26[1];
  v29 = a1[5];
  v30 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v29);
  v31 = *(v30 + 8);

  v32 = v31(v27, v28, v29, v30);

  *(v15 + 7) = a2;
  *(v15 + 13) = v32;
  *(v15 + 14) = a7;
  __swift_destroy_boxed_opaque_existential_0(v35);
  __swift_destroy_boxed_opaque_existential_0(v39);
  __swift_destroy_boxed_opaque_existential_0(v38);
  return v15;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GuidedGenerationOverrides(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GuidedGenerationOverrides(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 200) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void GuidedGenerationOverrides.init()(void *a1@<X8>)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0xD00000000000001CLL;
  *(v2 + 24) = 0x80000001A8FD9400;
  v3 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v4 = MEMORY[0x1AC57BF60](0xD000000000000019, 0x80000001A8FD9420);
  v5 = [v3 initWithSuiteName_];

  if (!v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  *a1 = v5;
  a1[1] = 0xD00000000000001CLL;
  a1[2] = 0x80000001A8FD9400;
  a1[3] = partial apply for closure #1 in Overridable<A>.init(key:);
  a1[4] = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = 0xD000000000000014;
  *(v6 + 24) = 0x80000001A8FD9440;
  v7 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v8 = MEMORY[0x1AC57BF60](0xD000000000000019, 0x80000001A8FD9420);
  v9 = [v7 initWithSuiteName_];

  if (!v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  a1[5] = v9;
  a1[6] = 0xD000000000000014;
  a1[7] = 0x80000001A8FD9440;
  a1[8] = closure #1 in Overridable<A>.init(key:)partial apply;
  a1[9] = v6;
  v10 = swift_allocObject();
  *(v10 + 16) = 0xD000000000000010;
  *(v10 + 24) = 0x80000001A8FD9460;
  v11 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v12 = MEMORY[0x1AC57BF60](0xD000000000000019, 0x80000001A8FD9420);
  v13 = [v11 initWithSuiteName_];

  if (!v13)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  a1[10] = v13;
  a1[11] = 0xD000000000000010;
  a1[12] = 0x80000001A8FD9460;
  a1[13] = partial apply for closure #1 in Overridable<A>.init(key:);
  a1[14] = v10;
  v14 = swift_allocObject();
  *(v14 + 16) = 0xD000000000000014;
  *(v14 + 24) = 0x80000001A8FD9480;
  v15 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v16 = MEMORY[0x1AC57BF60](0xD000000000000019, 0x80000001A8FD9420);
  v17 = [v15 initWithSuiteName_];

  if (!v17)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  a1[15] = v17;
  a1[16] = 0xD000000000000014;
  a1[17] = 0x80000001A8FD9480;
  a1[18] = closure #1 in Overridable<A>.init(key:)partial apply;
  a1[19] = v14;
  v18 = swift_allocObject();
  *(v18 + 16) = 0xD000000000000031;
  *(v18 + 24) = 0x80000001A8FD94A0;
  v19 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v20 = MEMORY[0x1AC57BF60](0xD000000000000019, 0x80000001A8FD9420);
  v21 = [v19 initWithSuiteName_];

  if (v21)
  {
    a1[20] = v21;
    a1[21] = 0xD000000000000031;
    a1[22] = 0x80000001A8FD94A0;
    a1[23] = closure #1 in Overridable<A>.init(key:)partial apply;
    a1[24] = v18;
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t partial apply for closure #1 in Overridable<A>.init(key:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  return closure #1 in Overridable<A>.init(key:)(a1, *(v2 + 16), *(v2 + 24), a2);
}

{
  return closure #1 in Overridable<A>.init(key:)(a1, *(v2 + 16), *(v2 + 24), a2);
}

{
  return closure #1 in Overridable<A>.init(key:)(a1, *(v2 + 16), *(v2 + 24), a2);
}

uint64_t GuidedGenerationConstraints.init(schemaString:tokenizerPath:stopTokenIDs:numParallelTasks:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  type metadata accessor for Schema();
  v6[8] = swift_task_alloc();
  v7 = type metadata accessor for GenerationSchema();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v8 = type metadata accessor for String.Encoding();
  v6[13] = v8;
  v6[14] = *(v8 - 8);
  v6[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](GuidedGenerationConstraints.init(schemaString:tokenizerPath:stopTokenIDs:numParallelTasks:), 0, 0);
}

uint64_t GuidedGenerationConstraints.init(schemaString:tokenizerPath:stopTokenIDs:numParallelTasks:)(uint64_t a1)
{
  v35 = v1;
  v3 = v1[14];
  v2 = v1[15];
  v4 = v1[13];
  static String.Encoding.utf8.getter();
  v5 = String.data(using:allowLossyConversion:)();
  v7 = v6;
  result = (*(v3 + 8))(v2, v4);
  if (v7 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type GenerationSchema and conformance GenerationSchema();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v9 = v1[8];
    (*(v1[10] + 16))(v1[11], v1[12], v1[9]);
    Schema.init(type:)();
    Grammar.init(_:)(v9, &v28);
    v11 = v1[5];
    v10 = v1[6];
    v12 = v28;
    v13 = v29;
    v25 = *(&v28 + 1);
    v26 = *(&v29 + 1);
    v14 = *(&v30 + 1);
    v27 = v30;
    type metadata accessor for TokenizerRunner();
    swift_allocObject();
    v15 = TokenizerRunner.init(tokenizerPath:)(v11, v10);
    v24 = v1[12];
    v22 = v1[10];
    v23 = v1[9];
    v16 = v1[7];
    v17 = v1[2];

    v18 = _s19TokenGenerationCore17VocabularyManagerC9tokenizer26characterSetsUsedInGrammar14vocabConverter04stopA3IDsAcA06GuidedB9Tokenizer_p_Say10Foundation12CharacterSetVGAA0D14TextConverting_pSaySiGtcfCTf4nnenn_nAA013SentencePieceduM0V_Tt3g5Tf4ennn_nAA0Q6RunnerC_Tg5(v15, v14, 8492770, 0xA300000000000000, 8492770, 0xA300000000000000, v16);
    v33[0] = v12;
    v33[1] = v25;
    v33[2] = v13;
    v33[3] = v26;
    v33[4] = v27;
    v33[5] = v14;
    v34 = v18;

    GuidedGenerationConstraints.init(grammar:vocabularyManager:)(v33, &v34, &v28);

    outlined consume of Data?(v5, v7);

    (*(v22 + 8))(v24, v23);
    v19 = v31;
    *(v17 + 32) = v30;
    *(v17 + 48) = v19;
    *(v17 + 64) = v32;
    v20 = v29;
    *v17 = v28;
    *(v17 + 16) = v20;

    v21 = v1[1];

    return v21();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GenerationSchema and conformance GenerationSchema()
{
  result = lazy protocol witness table cache variable for type GenerationSchema and conformance GenerationSchema;
  if (!lazy protocol witness table cache variable for type GenerationSchema and conformance GenerationSchema)
  {
    type metadata accessor for GenerationSchema();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenerationSchema and conformance GenerationSchema);
  }

  return result;
}

uint64_t dispatch thunk of AttachmentTokenizer.tokenize(imageAttachment:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = dispatch thunk of AttachmentTokenizer.tokenize(imageAttachment:configuration:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AttachmentTokenizer.tokenize(imageSurfaceAttachment:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = dispatch thunk of AttachmentTokenizer.tokenize(imageSurfaceAttachment:configuration:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AttachmentTokenizer.tokenize(imageSurfaceAttachment:configuration:)(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of AttachmentTokenizer.tokenize(preprocessedImageAttachment:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = dispatch thunk of AttachmentTokenizer.tokenize(imageAttachment:configuration:);

  return v11(a1, a2, a3, a4);
}

TokenGenerationCore::ImageTokenizationConfiguration __swiftcall ImageTokenizationConfiguration.init(imageStartTokens:imageEndTokens:)(Swift::OpaquePointer imageStartTokens, Swift::OpaquePointer imageEndTokens)
{
  v2->_rawValue = imageStartTokens._rawValue;
  v2[1]._rawValue = imageEndTokens._rawValue;
  result.imageEndTokens = imageEndTokens;
  result.imageStartTokens = imageStartTokens;
  return result;
}

uint64_t static ImageTokenizationConfiguration.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  result = a1[1];
  v6 = a2[1];
  if (v4)
  {
    v7 = v2 == v3;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(result, v6);
  }

  v8 = (v2 + 32);
  v9 = (v3 + 32);
  while (v4)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
    if (!--v4)
    {
      return _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(result, v6);
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ImageTokenizationConfiguration(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v2, v3);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UnresolvedImageTokenizationConfiguration.ImageStartAndEnd(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (*(a1 + 32))
  {
    if (*(a2 + 32) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v3, *a2))
    {

      return _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v4, v5);
    }

    return 0;
  }

  if (*(a2 + 32))
  {
    return 0;
  }

  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = v3 == *a2 && v4 == v5;
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v7 == v9 && v8 == v10)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance UnresolvedImageTokenizationConfiguration(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if ((*(a1 + 32) & 1) == 0)
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      v7 = *(a1 + 16);
      v8 = *(a1 + 24);
      v9 = *(a2 + 16);
      v10 = *(a2 + 24);
      v11 = v3 == *a2 && v4 == v5;
      if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v12 = v7 == v9 && v8 == v10;
        if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  return (*(a2 + 32) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v3, *a2) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v4, v5) & 1) != 0;
}

void specialized UnresolvedImageTokenizationConfiguration.init(tokenTable:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (one-time initialization token for startImageStr != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Prompt.SpecialToken(0);
  v5 = __swift_project_value_buffer(v4, static Prompt.SpecialToken.startImageStr);
  if (*(a1 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v7 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v6, v44);
    v8 = swift_dynamicCast();
    if (v8)
    {
      v9 = v42;
    }

    else
    {
      v9 = 0;
    }

    if (v8)
    {
      v10 = v43;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  if (one-time initialization token for endImageStr != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, static Prompt.SpecialToken.endImageStr);
  if (*(a1 + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(v11), (v13 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v12, v44);
    v14 = swift_dynamicCast();
    if (v14)
    {
      v15 = v42;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v16 = v43;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  if (one-time initialization token for startImageInt != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v4, static Prompt.SpecialToken.startImageInt);
  if (*(a1 + 16) && (v18 = specialized __RawDictionaryStorage.find<A>(_:)(v17), (v19 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v18, v44);
    v20 = swift_dynamicCast();
    if (v20)
    {
      v21 = v42;
    }

    else
    {
      v21 = 0;
    }

    v22 = v20 ^ 1;
  }

  else
  {
    v21 = 0;
    v22 = 1;
  }

  if (one-time initialization token for endImageInt != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v4, static Prompt.SpecialToken.endImageInt);
  if (*(a1 + 16) && (v24 = specialized __RawDictionaryStorage.find<A>(_:)(v23), (v25 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v24, v44);

    v26 = swift_dynamicCast();
    if (v26)
    {
      v27 = v42;
    }

    else
    {
      v27 = 0;
    }

    v28 = v26 ^ 1;
    if (!v10)
    {
LABEL_48:

      if ((v22 | v28))
      {
        if (one-time initialization token for tokenization != -1)
        {
          swift_once();
        }

        v34 = type metadata accessor for Logger();
        __swift_project_value_buffer(v34, static Log.tokenization);
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_1A8E85000, v35, v36, "UnresolvedImageTokenizationConfiguration: Unable to find image start and end tokens in special token table", v37, 2u);
          MEMORY[0x1AC57DBF0](v37, -1, -1);
        }

        v9 = 0;
        v10 = 0;
        v15 = 0;
        v16 = 0;
        v33 = -1;
      }

      else
      {
        if (one-time initialization token for tokenization != -1)
        {
          swift_once();
        }

        v38 = type metadata accessor for Logger();
        __swift_project_value_buffer(v38, static Log.tokenization);
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&dword_1A8E85000, v39, v40, "UnresolvedImageTokenizationConfiguration: Found image start and end integers in special token table", v41, 2u);
          MEMORY[0x1AC57DBF0](v41, -1, -1);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_1A8FC9400;
        *(v9 + 32) = v21;
        v10 = swift_allocObject();
        v15 = 0;
        v16 = 0;
        *(v10 + 16) = xmmword_1A8FC9400;
        *(v10 + 32) = v27;
        v33 = 1;
      }

      goto LABEL_59;
    }
  }

  else
  {

    v27 = 0;
    v28 = 1;
    if (!v10)
    {
      goto LABEL_48;
    }
  }

  if (!v16)
  {
    goto LABEL_48;
  }

  if (one-time initialization token for tokenization != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Log.tokenization);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1A8E85000, v30, v31, "UnresolvedImageTokenizationConfiguration: Found image start and end strings in special token table", v32, 2u);
    MEMORY[0x1AC57DBF0](v32, -1, -1);
  }

  v33 = 0;
LABEL_59:
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v15;
  *(a2 + 24) = v16;
  *(a2 + 32) = v33;
}

uint64_t getEnumTagSinglePayload for UnresolvedImageTokenizationConfiguration(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UnresolvedImageTokenizationConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
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

void IOSurface.init(imageData:)(uint64_t a1, unint64_t a2)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v5 = CGImageSourceCreateWithData(isa, 0);

  if (!v5)
  {
    outlined consume of Data._Representation(a1, a2);
    return;
  }

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v6 = Dictionary._bridgeToObjectiveC()().super.isa;

  ImageAtIndex = CGImageSourceCreateImageAtIndex(v5, 0, v6);

  if (!ImageAtIndex)
  {
    outlined consume of Data._Representation(a1, a2);

    return;
  }

  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo20IOSurfacePropertyKeya_s8Sendable_ptGMd, &_ss23_ContiguousArrayStorageCySo20IOSurfacePropertyKeya_s8Sendable_ptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A8FCB610;
  v10 = *MEMORY[0x1E696CD90];
  *(inited + 32) = *MEMORY[0x1E696CD90];
  v11 = v10;
  Height = CGImageGetHeight(ImageAtIndex);
  v13 = MEMORY[0x1E69E6530];
  *(inited + 40) = Height;
  v14 = *MEMORY[0x1E696CDE0];
  *(inited + 64) = v13;
  *(inited + 72) = v14;
  v15 = v14;
  *(inited + 80) = CGImageGetWidth(ImageAtIndex);
  v16 = *MEMORY[0x1E696CDA0];
  *(inited + 104) = v13;
  *(inited + 112) = v16;
  v17 = MEMORY[0x1E69E7668];
  *(inited + 120) = 1111970369;
  v18 = *MEMORY[0x1E696CD80];
  *(inited + 144) = v17;
  *(inited + 152) = v18;
  v19 = v16;
  v20 = v18;
  Width = CGImageGetWidth(ImageAtIndex);
  if ((Width - 0x2000000000000000) >> 62 != 3)
  {
    __break(1u);
    goto LABEL_11;
  }

  *(inited + 184) = v13;
  *(inited + 160) = 4 * Width;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo20IOSurfacePropertyKeya_s8Sendable_pTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20IOSurfacePropertyKeya_s8Sendable_ptMd, &_sSo20IOSurfacePropertyKeya_s8Sendable_ptMR);
  swift_arrayDestroy();
  type metadata accessor for IOSurfacePropertyKey(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd, &_ss8Sendable_pMR);
  lazy protocol witness table accessor for type IOSurfacePropertyKey and conformance IOSurfacePropertyKey();
  v22 = Dictionary._bridgeToObjectiveC()().super.isa;

  v23 = [v8 initWithProperties_];

  if (!v23)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v24 = v23;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  [v24 lockWithOptions:0 seed:0];
  v26 = [v24 baseAddress];
  v27 = [v24 width];
  v28 = [v24 height];
  v29 = [v24 bytesPerRow];

  v30 = CGBitmapContextCreate(v26, v27, v28, 8uLL, v29, DeviceRGB, 0x2006u);
  if (v30)
  {
    v31 = v30;
    CGContextSetBlendMode(v30, kCGBlendModeCopy);
    v32 = CGImageGetWidth(ImageAtIndex);
    v34.size.height = CGImageGetHeight(ImageAtIndex);
    v34.origin.x = 0.0;
    v34.origin.y = 0.0;
    v34.size.width = v32;
    CGContextRef.draw(_:in:byTiling:)(ImageAtIndex, v34, 0);

    v33 = v24;
    [v33 unlockWithOptions:0 seed:0];

    outlined consume of Data._Representation(a1, a2);
  }

  else
  {
    [v24 unlockWithOptions:0 seed:0];
    outlined consume of Data._Representation(a1, a2);
  }
}

unint64_t lazy protocol witness table accessor for type IOSurfacePropertyKey and conformance IOSurfacePropertyKey()
{
  result = lazy protocol witness table cache variable for type IOSurfacePropertyKey and conformance IOSurfacePropertyKey;
  if (!lazy protocol witness table cache variable for type IOSurfacePropertyKey and conformance IOSurfacePropertyKey)
  {
    type metadata accessor for IOSurfacePropertyKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IOSurfacePropertyKey and conformance IOSurfacePropertyKey);
  }

  return result;
}

TokenGenerationCore::PromptPreprocessingTemplateVersion_optional __swiftcall PromptPreprocessingTemplateVersion.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PromptPreprocessingTemplateVersion.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t PromptPreprocessingTemplateVersion.rawValue.getter()
{
  if (*v0)
  {
    return 13942;
  }

  else
  {
    return 13686;
  }
}

unint64_t lazy protocol witness table accessor for type PromptPreprocessingTemplateVersion and conformance PromptPreprocessingTemplateVersion()
{
  result = lazy protocol witness table cache variable for type PromptPreprocessingTemplateVersion and conformance PromptPreprocessingTemplateVersion;
  if (!lazy protocol witness table cache variable for type PromptPreprocessingTemplateVersion and conformance PromptPreprocessingTemplateVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptPreprocessingTemplateVersion and conformance PromptPreprocessingTemplateVersion);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptPreprocessingTemplateVersion and conformance PromptPreprocessingTemplateVersion;
  if (!lazy protocol witness table cache variable for type PromptPreprocessingTemplateVersion and conformance PromptPreprocessingTemplateVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptPreprocessingTemplateVersion and conformance PromptPreprocessingTemplateVersion);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PromptPreprocessingTemplateVersion()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PromptPreprocessingTemplateVersion(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptPreprocessingTemplateVersion(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PromptPreprocessingTemplateVersion@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PromptPreprocessingTemplateVersion.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance PromptPreprocessingTemplateVersion(uint64_t *a1@<X8>)
{
  v2 = 13686;
  if (*v1)
  {
    v2 = 13942;
  }

  *a1 = v2;
  a1[1] = 0xE200000000000000;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PromptPreprocessingTemplateVersion(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 13942;
  }

  else
  {
    v2 = 13686;
  }

  if (*a2)
  {
    v3 = 13942;
  }

  else
  {
    v3 = 13686;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t protocol witness for PromptPreprocessingTemplateConvention.shouldPreferSingleTokenId(fragment:) in conformance PromptPreprocessingTemplateV5Convention(uint64_t a1)
{
  v2 = type metadata accessor for Prompt.RenderedSpecialToken(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Prompt.RenderedPromptFragment(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Prompt.RenderedPromptFragment(a1, v7, type metadata accessor for Prompt.RenderedPromptFragment);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of Prompt.AttachmentContent(v7, v4, type metadata accessor for Prompt.RenderedSpecialToken);
    v8 = &v4[*(v2 + 20)];
    v9 = *v8;
    v10 = *(v8 + 1);
    if (one-time initialization token for turnEnd != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Prompt.SpecialToken(0);
    v12 = __swift_project_value_buffer(v11, static Prompt.SpecialToken.Chat.turnEnd);
    if (v9 == *v12 && v10 == v12[1])
    {
      v14 = 1;
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    outlined destroy of Prompt.AttachmentContent(v4, type metadata accessor for Prompt.RenderedSpecialToken);
  }

  else
  {
    outlined destroy of Prompt.AttachmentContent(v7, type metadata accessor for Prompt.RenderedPromptFragment);
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t PromptPreprocessingTemplateV6Convention.RenderedPromptFragmentState.append(text:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Prompt.RenderedPromptFragment(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v24 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v24 - v13);
  if (v2[8] != 1)
  {
    goto LABEL_5;
  }

  v15 = *v2;
  v16 = *(*v2 + 16);
  if (!v16)
  {
    goto LABEL_5;
  }

  v26 = *(*v2 + 16);
  v27 = a1;
  v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v18 = *(v6 + 72) * (v16 - 1);
  outlined init with copy of Prompt.RenderedPromptFragment(v15 + v17 + v18, &v24 - v13, type metadata accessor for Prompt.RenderedPromptFragment);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of Prompt.AttachmentContent(v14, type metadata accessor for Prompt.RenderedPromptFragment);
    a1 = v27;
LABEL_5:
    *v8 = a1;
    v8[1] = a2;
    swift_storeEnumTagMultiPayload();
    v15 = *v2;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15[2] + 1, 1, v15);
    }

    v20 = v15[2];
    v19 = v15[3];
    if (v20 >= v19 >> 1)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v15);
    }

    v15[2] = v20 + 1;
    result = outlined init with take of Prompt.AttachmentContent(v8, v15 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v20, type metadata accessor for Prompt.RenderedPromptFragment);
    goto LABEL_10;
  }

  v24 = v18;
  v25 = v2;
  v22 = v14[1];
  v28 = *v14;
  v29 = v22;

  MEMORY[0x1AC57C120](v27, a2);

  v23 = v29;
  *v11 = v28;
  v11[1] = v23;
  swift_storeEnumTagMultiPayload();
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
    v15 = result;
  }

  v2 = v25;
  if (v26 <= v15[2])
  {
    result = outlined assign with take of Prompt.RenderedPromptFragment(v11, v15 + v17 + v24);
LABEL_10:
    *v2 = v15;
    v2[8] = 1;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t specialized PromptPreprocessingTemplateV5Convention.tokenize(_:substitutionTextForInputTokenText:tokenizer:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a3;
  v5 = a2;
  v49 = a1;
  v47 = a1;
  v48 = a2;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);

  swift_beginAccess();
  v10 = 0;
  v11 = (v7 + 63) >> 6;
  v43 = v6;
  v41 = v4;
  if (v9)
  {
    goto LABEL_6;
  }

  while (1)
  {
LABEL_7:
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_25:
      swift_once();
      goto LABEL_18;
    }

    if (v12 >= v11)
    {
      break;
    }

    v9 = *(v6 + 8 * v12);
    ++v10;
    if (v9)
    {
      while (1)
      {
        v13 = (v12 << 10) | (16 * __clz(__rbit64(v9)));
        v14 = (*(v4 + 48) + v13);
        v16 = *v14;
        v15 = v14[1];
        v17 = (*(v4 + 56) + v13);
        v18 = *v17;
        v19 = v17[1];
        v46[0] = v49;
        v46[1] = v5;
        v44 = v18;
        lazy protocol witness table accessor for type String and conformance String();

        v49 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v47 = v49;
        v48 = v20;
        v45 = v20;

        if (one-time initialization token for tokenization != -1)
        {
          swift_once();
        }

        v9 &= v9 - 1;
        v21 = type metadata accessor for Logger();
        __swift_project_value_buffer(v21, static Log.tokenization);

        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v46[0] = v42;
          *v24 = 136643331;
          v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, v46);

          *(v24 + 4) = v25;
          *(v24 + 12) = 2085;
          v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v19, v46);

          *(v24 + 14) = v26;
          *(v24 + 22) = 2085;

          v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v45, v46);

          *(v24 + 24) = v27;
          _os_log_impl(&dword_1A8E85000, v22, v23, "Text after substituting %{sensitive}s with %{sensitive}s: %{sensitive}s", v24, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1AC57DBF0](v42, -1, -1);
          v28 = v24;
          v4 = v41;
          MEMORY[0x1AC57DBF0](v28, -1, -1);

          v10 = v12;
          v5 = v45;
          v6 = v43;
          if (!v9)
          {
            goto LABEL_7;
          }
        }

        else
        {

          v10 = v12;
          v5 = v45;
          v6 = v43;
          if (!v9)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v12 = v10;
      }
    }
  }

  v29 = a4[3];
  v30 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v29);
  v31 = *(v30 + 24);

  v32 = v31(v49, v5, v29, v30);
  if (v40)
  {
  }

  else
  {
    v37 = v32;

    if (v37)
    {

      return v37;
    }
  }

  if (one-time initialization token for tokenization != -1)
  {
    goto LABEL_25;
  }

LABEL_18:
  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Log.tokenization);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_1A8E85000, v34, v35, "Failed to tokenize text", v36, 2u);
    MEMORY[0x1AC57DBF0](v36, -1, -1);
  }

  v37 = type metadata accessor for GenerationError(0);
  lazy protocol witness table accessor for type GenerationError and conformance GenerationError();
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  return v37;
}

uint64_t specialized PromptPreprocessingTemplateV6Convention.tokenize(_:substitutionTextForInputTokenText:tokenizer:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a2;
  v60 = a1;
  v58 = a1;
  v59 = a2;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);

  swift_beginAccess();
  v10 = 0;
  v11 = (v7 + 63) >> 6;
  v12 = 0x1EDA2F000uLL;
  v54 = v6;
  if (v9)
  {
    goto LABEL_6;
  }

  while (1)
  {
LABEL_7:
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_32:
      swift_once();
      goto LABEL_18;
    }

    if (v13 >= v11)
    {
      break;
    }

    v9 = *(v6 + 8 * v13);
    ++v10;
    if (v9)
    {
      while (1)
      {
        v14 = (v13 << 10) | (16 * __clz(__rbit64(v9)));
        v15 = (*(a3 + 48) + v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = (*(a3 + 56) + v14);
        v19 = *v18;
        v20 = v18[1];
        v57[0] = v60;
        v57[1] = v5;
        v55 = v19;
        lazy protocol witness table accessor for type String and conformance String();

        v60 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v58 = v60;
        v59 = v21;
        v56 = v21;

        if (*(v12 + 3600) != -1)
        {
          swift_once();
        }

        v9 &= v9 - 1;
        v22 = type metadata accessor for Logger();
        __swift_project_value_buffer(v22, static Log.tokenization);

        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v57[0] = v53;
          *v25 = 136643331;
          v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, v57);

          *(v25 + 4) = v26;
          *(v25 + 12) = 2085;
          v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v20, v57);

          *(v25 + 14) = v27;
          *(v25 + 22) = 2085;

          v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v56, v57);

          *(v25 + 24) = v28;
          _os_log_impl(&dword_1A8E85000, v23, v24, "Text after substituting %{sensitive}s with %{sensitive}s: %{sensitive}s", v25, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1AC57DBF0](v53, -1, -1);
          v29 = v25;
          v12 = 0x1EDA2F000;
          MEMORY[0x1AC57DBF0](v29, -1, -1);

          v10 = v13;
          v5 = v56;
          v6 = v54;
          if (!v9)
          {
            goto LABEL_7;
          }
        }

        else
        {

          v10 = v13;
          v5 = v56;
          v6 = v54;
          if (!v9)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v13 = v10;
      }
    }
  }

  v30 = a4[3];
  v9 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v30);
  v31 = *(v9 + 24);

  v32 = v31(v60, v5, v30, v9);
  if (v51)
  {
  }

  else
  {
    v9 = v32;

    if (v9)
    {

      v37._countAndFlagsBits = 0x74735F6E7275743CLL;
      v37._object = 0xEC0000003E747261;
      v38 = String.hasPrefix(_:)(v37);

      if ((v38 || (, v39._countAndFlagsBits = 0x735F6567616D693CLL, v39._object = 0xED00003E74726174, v40 = String.hasPrefix(_:)(v39), , v40) || (, v41._countAndFlagsBits = 0x655F6567616D693CLL, v41._object = 0xEB000000003E646ELL, v42 = String.hasPrefix(_:)(v41), , v42) || (, v43._countAndFlagsBits = 0x6E655F6E7275743CLL, v43._object = 0xEA00000000003E64, v44 = String.hasPrefix(_:)(v43), , v44)) && (v45 = a4[3], v46 = a4[4], __swift_project_boxed_opaque_existential_1(a4, v45), v47 = (*(v46 + 8))(8492770, 0xA300000000000000, v45, v46), (v48 = *(v9 + 16)) != 0) && *(v9 + 32) == v47)
      {
        specialized _copyCollectionToContiguousArray<A>(_:)(v9, v9 + 32, 1, (2 * v48) | 1);
        v50 = v49;

        return v50;
      }

      else
      {
      }

      return v9;
    }
  }

  if (*(v12 + 3600) != -1)
  {
    goto LABEL_32;
  }

LABEL_18:
  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Log.tokenization);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1A8E85000, v34, v35, "Failed to tokenize text", v9, 2u);
    MEMORY[0x1AC57DBF0](v9, -1, -1);
  }

  type metadata accessor for GenerationError(0);
  lazy protocol witness table accessor for type GenerationError and conformance GenerationError();
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  return v9;
}

uint64_t specialized PromptPreprocessingTemplateV6Convention.processRenderedFragments(renderedPromptFragments:imageStartAndEndPlaceholders:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v91 = a5;
  v90 = a4;
  v89 = a2;
  v9 = type metadata accessor for Prompt.ResponseFormat(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for Prompt.AttachmentContent(0);
  MEMORY[0x1EEE9AC00](v102);
  v107 = (&v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v108 = &v88 - v14;
  v15 = type metadata accessor for Prompt.RenderedSpecialToken(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v101 = (&v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for Prompt.RenderedPromptFragment(0);
  MEMORY[0x1EEE9AC00](v17);
  v92 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  v95 = &v88 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v93 = (&v88 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v106 = (&v88 - v25);
  MEMORY[0x1EEE9AC00](v26);
  MEMORY[0x1EEE9AC00](v27);
  v32 = (&v88 - v29);
  result = MEMORY[0x1E69E7CC0];
  v113 = MEMORY[0x1E69E7CC0];
  v114 = 1;
  v110 = *(a1 + 16);
  if (v110)
  {
    v88 = v31;
    v34 = 0;
    v35 = *(v28 + 80);
    v104 = v17;
    v105 = (v35 + 32) & ~v35;
    v109 = a1 + v105;
    v115 = *(v28 + 72);
    v99 = v11;
    v100 = a3;
    v94 = v30;
    v103 = &v88 - v29;
    while (1)
    {
      outlined init with copy of Prompt.RenderedPromptFragment(v109 + v115 * v34, v32, type metadata accessor for Prompt.RenderedPromptFragment);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        v44 = v34;
        v46 = *v32;
        v45 = v32[1];
        if (v114 == 1 && (v47 = v113, (v48 = v113[2]) != 0))
        {
          v49 = (v48 - 1) * v115;
          v50 = v94;
          outlined init with copy of Prompt.RenderedPromptFragment(v113 + v105 + v49, v94, type metadata accessor for Prompt.RenderedPromptFragment);
          if (swift_getEnumCaseMultiPayload())
          {
            outlined destroy of Prompt.AttachmentContent(v50, type metadata accessor for Prompt.RenderedPromptFragment);
            v11 = v99;
            a3 = v100;
            goto LABEL_17;
          }

          v98 = v6;
          v81 = v50[1];
          v111 = *v50;
          v112 = v81;

          MEMORY[0x1AC57C120](v46, v45);

          v82 = v112;
          v83 = v93;
          *v93 = v111;
          v83[1] = v82;
          swift_storeEnumTagMultiPayload();
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v47);
            v47 = result;
          }

          v34 = v44;
          v6 = v98;
          a3 = v100;
          if (v48 > v47[2])
          {
            __break(1u);
            return result;
          }

          outlined assign with take of Prompt.RenderedPromptFragment(v93, v47 + v105 + v49);
          v11 = v99;
        }

        else
        {
LABEL_17:
          v51 = v106;
          *v106 = v46;
          v51[1] = v45;
          swift_storeEnumTagMultiPayload();
          v47 = v113;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47[2] + 1, 1, v47);
          }

          v34 = v44;
          v53 = v47[2];
          v52 = v47[3];
          if (v53 >= v52 >> 1)
          {
            v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v47);
          }

          v47[2] = v53 + 1;
          outlined init with take of Prompt.AttachmentContent(v106, v47 + v105 + v53 * v115, type metadata accessor for Prompt.RenderedPromptFragment);
        }

        v113 = v47;
        v114 = 1;
        v32 = v103;
        goto LABEL_5;
      }

      if (EnumCaseMultiPayload == 1)
      {
        break;
      }

      v40 = v108;
      outlined init with take of Prompt.AttachmentContent(v32, v108, type metadata accessor for Prompt.AttachmentContent);
      outlined init with copy of Prompt.RenderedPromptFragment(v40, v107, type metadata accessor for Prompt.AttachmentContent);
      v41 = swift_getEnumCaseMultiPayload();
      if (v41 == 6)
      {
        v97 = v34;
        v98 = v6;
        v59 = *v107;
        v60 = *(*v107 + 16);
        v96 = *v107;
        if (v60)
        {
          v61 = (v59 + 72);
          v62 = MEMORY[0x1E69E7CC0];
          do
          {
            v64 = *(v61 - 3);
            v63 = *(v61 - 2);
            v66 = *(v61 - 1);
            v65 = *v61;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v62 + 2) + 1, 1, v62);
            }

            v68 = *(v62 + 2);
            v67 = *(v62 + 3);
            if (v68 >= v67 >> 1)
            {
              v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1, v62);
            }

            *(v62 + 2) = v68 + 1;
            v69 = &v62[32 * v68];
            *(v69 + 4) = v64;
            *(v69 + 5) = v63;
            *(v69 + 6) = v66;
            *(v69 + 7) = v65;
            v61 += 8;
            --v60;
          }

          while (v60);
        }

        else
        {
          v62 = MEMORY[0x1E69E7CC0];
        }

        v84 = specialized ToolCallingFormatV4.render(functionCalls:)(v62);
        v86 = v85;

        PromptPreprocessingTemplateV6Convention.RenderedPromptFragmentState.append(text:)(v84, v86);

        outlined destroy of Prompt.AttachmentContent(v108, type metadata accessor for Prompt.AttachmentContent);
        v6 = v98;
        v11 = v99;
        a3 = v100;
        v32 = v103;
        v34 = v97;
        goto LABEL_5;
      }

      if (v41 != 5)
      {
        if (v41 != 4)
        {
          if (a3)
          {
            PromptPreprocessingTemplateV6Convention.RenderedPromptFragmentState.append(text:)(v89, a3);
            outlined init with copy of Prompt.RenderedPromptFragment(v108, v95, type metadata accessor for Prompt.AttachmentContent);
            swift_storeEnumTagMultiPayload();
            v70 = v113;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v70[2] + 1, 1, v70);
            }

            v72 = v70[2];
            v71 = v70[3];
            v73 = v72 + 1;
            if (v72 >= v71 >> 1)
            {
              v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1, v70);
            }

            v74 = v6;
            v75 = v34;
            v70[2] = v73;
            outlined init with take of Prompt.AttachmentContent(v95, v70 + v105 + v72 * v115, type metadata accessor for Prompt.RenderedPromptFragment);
            v113 = v70;
            v114 = 1;
            v76 = v88;
            v77 = v91;
            *v88 = v90;
            *(v76 + 8) = v77;
            swift_storeEnumTagMultiPayload();
            v78 = v70[3];
            v79 = v72 + 2;

            if (v79 > (v78 >> 1))
            {
              v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79, 1, v70);
            }

            v80 = 0;
          }

          else
          {
            outlined init with copy of Prompt.RenderedPromptFragment(v108, v92, type metadata accessor for Prompt.AttachmentContent);
            swift_storeEnumTagMultiPayload();
            v70 = v113;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v70[2] + 1, 1, v70);
            }

            v74 = v6;
            v75 = v34;
            v73 = v70[2];
            v87 = v70[3];
            v79 = v73 + 1;
            v80 = 1;
            if (v73 >= v87 >> 1)
            {
              v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v87 > 1), v73 + 1, 1, v70);
            }

            v76 = v92;
          }

          outlined destroy of Prompt.AttachmentContent(v108, type metadata accessor for Prompt.AttachmentContent);
          v70[2] = v79;
          outlined init with take of Prompt.AttachmentContent(v76, v70 + v105 + v73 * v115, type metadata accessor for Prompt.RenderedPromptFragment);
          v113 = v70;
          v114 = v80;
          outlined destroy of Prompt.AttachmentContent(v107, type metadata accessor for Prompt.AttachmentContent);
          v32 = v103;
          v34 = v75;
          v6 = v74;
          v11 = v99;
          a3 = v100;
          goto LABEL_5;
        }

        outlined init with take of Prompt.AttachmentContent(v107, v11, type metadata accessor for Prompt.ResponseFormat);
        v42 = specialized ResponseFormatV6.render(format:)(v11);
        if (v6)
        {
          outlined destroy of Prompt.AttachmentContent(v11, type metadata accessor for Prompt.ResponseFormat);
LABEL_56:
          outlined destroy of Prompt.AttachmentContent(v108, type metadata accessor for Prompt.AttachmentContent);
        }

        PromptPreprocessingTemplateV6Convention.RenderedPromptFragmentState.append(text:)(v42, v43);

        outlined destroy of Prompt.AttachmentContent(v11, type metadata accessor for Prompt.ResponseFormat);
        v37 = type metadata accessor for Prompt.AttachmentContent;
        v38 = v108;
        goto LABEL_4;
      }

      v54 = v34;
      specialized ToolCallingFormatV5.render(tools:)(*v107);
      v56 = v55;
      v58 = v57;

      if (v6)
      {
        goto LABEL_56;
      }

      PromptPreprocessingTemplateV6Convention.RenderedPromptFragmentState.append(text:)(v56, v58);

      outlined destroy of Prompt.AttachmentContent(v108, type metadata accessor for Prompt.AttachmentContent);
      v34 = v54;
LABEL_5:
      if (++v34 == v110)
      {
        return v113;
      }
    }

    v36 = v101;
    outlined init with take of Prompt.AttachmentContent(v32, v101, type metadata accessor for Prompt.RenderedSpecialToken);
    PromptPreprocessingTemplateV6Convention.RenderedPromptFragmentState.append(text:)(*v36, v36[1]);
    v37 = type metadata accessor for Prompt.RenderedSpecialToken;
    v38 = v36;
LABEL_4:
    outlined destroy of Prompt.AttachmentContent(v38, v37);
    goto LABEL_5;
  }

  return result;
}

uint64_t outlined init with copy of Prompt.RenderedPromptFragment(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of Prompt.RenderedPromptFragment(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Prompt.RenderedPromptFragment(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Prompt.AttachmentContent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Prompt.AttachmentContent(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t specialized BidirectionalCollection.last.getter(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    v11 = 0;
    goto LABEL_35;
  }

  v5 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  v6 = _StringGuts.validateInclusiveScalarIndex(_:)(v5 | (v2 << 16), a1, a2);
  if (v6 < 0x4000)
  {
    __break(1u);
    goto LABEL_37;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
LABEL_37:
    v25 = String.UnicodeScalarView._foreignIndex(before:)();
    _StringGuts.validateScalarIndex(_:)(v25, a1, a2);
    v11 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    goto LABEL_35;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v27 = a1;
    v28 = a2 & 0xFFFFFFFFFFFFFFLL;
    v12 = &v27 + (v6 >> 16);
    if ((*(v12 - 1) & 0xC0) == 0x80)
    {
      v9 = -2;
      do
      {
        v13 = v12[v9--] & 0xC0;
      }

      while (v13 == 128);
      goto LABEL_20;
    }

LABEL_21:
    v14 = -1;
    goto LABEL_22;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v26 = v6;
    v7 = _StringObject.sharedUTF8.getter();
    v6 = v26;
  }

  v8 = v7 + (v6 >> 16);
  if ((*(v8 - 1) & 0xC0) != 0x80)
  {
    goto LABEL_21;
  }

  v9 = -2;
  do
  {
    v10 = *(v8 + v9--) & 0xC0;
  }

  while (v10 == 128);
LABEL_20:
  v14 = v9 + 1;
LABEL_22:
  v15 = _StringGuts.validateScalarIndex(_:)((v6 + (v14 << 16)) & 0xFFFFFFFFFFFF0000 | 5, a1, a2) >> 16;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v27 = a1;
    v28 = a2 & 0xFFFFFFFFFFFFFFLL;
    v17 = &v27 + v15;
  }

  else
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v16 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v16 = _StringObject.sharedUTF8.getter();
    }

    v17 = (v16 + v15);
  }

  v11 = *v17;
  if (*v17 < 0)
  {
    v18 = (__clz(v11 ^ 0xFF) - 24);
    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = v17[1];
        v20 = v17[2];
        v21 = ((v11 & 0xF) << 12) | ((v19 & 0x3F) << 6);
      }

      else
      {
        v22 = v17[1];
        v23 = v17[2];
        v20 = v17[3];
        v21 = ((v11 & 0xF) << 18) | ((v22 & 0x3F) << 12) | ((v23 & 0x3F) << 6);
      }

      v11 = v21 & 0xFFFFFFC0 | v20 & 0x3F;
    }

    else if (v18 != 1)
    {
      v11 = v17[1] & 0x3F | ((v11 & 0x1F) << 6);
    }
  }

LABEL_35:
  LOBYTE(v27) = v2 == 0;
  return v11 | ((v2 == 0) << 32);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TokenIDToTextConverterProtocol.textForTokenIDs(_:stopTokenID:)(Swift::OpaquePointer _, Swift::Int stopTokenID)
{
  v6 = v3;
  v7 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A8FC9400;
  *(inited + 32) = stopTokenID;
  TokenIDToTextConverterProtocol.textsForTokenIDs(_:stopTokenIDs:)(_._rawValue, inited, v7, v6);
  swift_setDeallocating();
  if (!v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x1E69E6310]);
    v4 = BidirectionalCollection<>.joined(separator:)();
    v7 = v11;
  }

  v12 = v4;
  v13 = v7;
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

uint64_t TokenIDToTextConverter.text.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t TokenIDToTextConverter.__allocating_init(tokenizer:replacementTextByTokenText:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TokenIDToTextConverter.init(tokenizer:replacementTextByTokenText:isOneShot:)(a1, a2, 0);
  return v4;
}

uint64_t TokenIDToTextConverter.__allocating_init(tokenizer:replacementTextByTokenText:isOneShot:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = swift_allocObject();
  TokenIDToTextConverter.init(tokenizer:replacementTextByTokenText:isOneShot:)(a1, a2, v3);
  return v6;
}

void *TokenIDToTextConverter.init(tokenizer:replacementTextByTokenText:isOneShot:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;

  GenerationOverrides.init()(v27);
  if (one-time initialization token for isInternalInstall != -1)
  {
    swift_once();
  }

  if (isInternalInstall)
  {
    (v27[8])(&v24, v27[5]);
    outlined destroy of GenerationOverrides(v27);
    if (v24 != 2 && (v24 & 1) == 0)
    {
      if (one-time initialization token for tokenization != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Log.tokenization);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_1A8E85000, v9, v10, "Using new TokenIDToTextConverterImpl", v11, 2u);
        MEMORY[0x1AC57DBF0](v11, -1, -1);
      }

      v12 = type metadata accessor for TokenIDToTextConverterImpl();
      swift_allocObject();

      v14 = specialized TokenIDToTextConverterImpl.init(tokenizer:replacementTextByTokenText:isOneShot:)(v13, a2, a3 & 1);

      v25 = v12;
      v26 = &protocol witness table for TokenIDToTextConverterImpl;

      *&v24 = v14;
      outlined init with take of PromptComponentValueConvertible(&v24, (v4 + 2));
      return v4;
    }
  }

  else
  {
    outlined destroy of GenerationOverrides(v27);
  }

  v15 = a3 & 1;
  if (one-time initialization token for tokenization != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Log.tokenization);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1A8E85000, v17, v18, "Using LegacyTokenIDToTextConverterImpl", v19, 2u);
    MEMORY[0x1AC57DBF0](v19, -1, -1);
  }

  v20 = type metadata accessor for LegacyTokenIDToTextConverterImpl();
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E7CC0];
  *(v21 + 48) = 0xE000000000000000;
  *(v21 + 56) = v22;
  *(v21 + 16) = v22;
  *(v21 + 24) = a1;
  *(v21 + 32) = a2;
  *(v21 + 40) = 0;
  *(v21 + 64) = v15;
  v4[5] = v20;
  v4[6] = &protocol witness table for LegacyTokenIDToTextConverterImpl;
  v4[2] = v21;
  return v4;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TokenIDToTextConverter.textForTokenID(_:isStopTokenID:)(Swift::Int _, Swift::Bool isStopTokenID)
{
  v4 = v3;
  v5 = isStopTokenID;
  v7 = v2[5];
  v8 = v2[6];
  v9 = __swift_project_boxed_opaque_existential_1(v2 + 2, v7);
  (*(v8 + 24))(_, v5, v7, v8);
  if (!v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x1E69E6310]);
    v4 = BidirectionalCollection<>.joined(separator:)();
    v9 = v10;
  }

  v11 = v4;
  v12 = v9;
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

uint64_t TokenIDToTextConverter.textsForTokenID(_:isStopTokenID:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  return (*(v6 + 24))(a1, a2, v5, v6);
}

uint64_t TokenIDToTextConverter.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return v0;
}

uint64_t TokenIDToTextConverter.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for TokenIDToTextConverterProtocol.text.getter in conformance TokenIDToTextConverter()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t protocol witness for TokenIDToTextConverterProtocol.textForTokenID(_:isStopTokenID:) in conformance TokenIDToTextConverter(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 48);
  __swift_project_boxed_opaque_existential_1((*v2 + 16), v7);
  (*(v8 + 24))(a1, a2, v7, v8);
  if (!v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x1E69E6310]);
    v4 = BidirectionalCollection<>.joined(separator:)();
  }

  return v4;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TokenIDToTextConverterImpl.unbufferUpto(scalarIndex:)(Swift::Int scalarIndex)
{
  if (scalarIndex < 0)
  {
    if (one-time initialization token for tokenization != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Log.tokenization);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1A8E85000, v14, v15, "Attempting to unbuffering from empty buffer, returning empty string", v16, 2u);
      MEMORY[0x1AC57DBF0](v16, -1, -1);
    }

    v3 = 0;
    v2 = 0xE000000000000000;
    goto LABEL_25;
  }

  v4 = v1;
  v6 = swift_beginAccess();
  if (*(v4[5] + 16) > scalarIndex)
  {
    v8 = v4[4];
    if (v8 <= scalarIndex)
    {
      if (v8 < 0)
      {
        __break(1u);
        goto LABEL_29;
      }

      v30 = scalarIndex + 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVys7UnicodeO6ScalarVGMd, &_ss10ArraySliceVys7UnicodeO6ScalarVGMR);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type ArraySlice<Unicode.Scalar> and conformance ArraySlice<A>, &_ss10ArraySliceVys7UnicodeO6ScalarVGMd, &_ss10ArraySliceVys7UnicodeO6ScalarVGMR, MEMORY[0x1E69E6968]);
      String.UnicodeScalarView.append<A>(contentsOf:)();
      v3 = 0;
      v2 = 0xE000000000000000;
      v31 = v4;
      v17 = v4[11];
      v20 = *(v17 + 64);
      v19 = v17 + 64;
      v18 = v20;
      v21 = 1 << *(v4[11] + 32);
      v22 = -1;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      v23 = v22 & v18;
      v24 = (v21 + 63) >> 6;

      v25 = 0;
      if (v23)
      {
        goto LABEL_22;
      }

      while (1)
      {
        v26 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v26 >= v24)
        {

          v31[4] = v30;
          swift_beginAccess();
          MEMORY[0x1AC57C120](v3, v2);
          swift_endAccess();
          goto LABEL_25;
        }

        v23 = *(v19 + 8 * v26);
        ++v25;
        if (v23)
        {
          v25 = v26;
          do
          {
LABEL_22:
            v23 &= v23 - 1;
            lazy protocol witness table accessor for type String and conformance String();

            v3 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
            v28 = v27;

            v2 = v28;
          }

          while (v23);
          continue;
        }
      }

      __break(1u);
      goto LABEL_27;
    }
  }

  if (one-time initialization token for tokenization != -1)
  {
LABEL_27:
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.tokenization);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1A8E85000, v10, v11, "Attempted to unbuffer tokens beyond the end of the buffer.", v12, 2u);
    MEMORY[0x1AC57DBF0](v12, -1, -1);
  }

  type metadata accessor for GenerationError(0);
  lazy protocol witness table accessor for type GenerationError and conformance GenerationError();
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
LABEL_25:
  v6 = v3;
  v7 = v2;
LABEL_29:
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

void TokenIDToTextConverterImpl.textsForTokenID(_:isStopTokenID:)(void *a1, char a2)
{
  v4 = v2;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1A8FC9400;
    swift_beginAccess();
    v6 = TokenIDToTextConverterImpl.unbufferUpto(scalarIndex:)(*(*(v2 + 40) + 16) - 1);
    if (v7)
    {
      *(v5 + 16) = 0;
    }

    else
    {
      *(v5 + 32) = v6;
    }
  }

  else
  {
    v8 = TokenIDToTextConverterImpl.detokenize(tokenID:)(a1);
    if (!v3)
    {
      v9 = v8[2];

      if (v9)
      {
        v10 = *(v2 + 32);
        swift_beginAccess();
        v11 = *(*(v2 + 40) + 16);
        if (v11 > v10)
        {
          if (v10 < 0)
          {
LABEL_81:
            __break(1u);
          }

          else
          {
            v82 = v11 - 1;
            v80 = MEMORY[0x1E69E7CC0];
            v12 = v10;
            v83 = v2;
            v81 = v10;
            while (1)
            {
              v13 = *(v4 + 40);
              if (v12 >= *(v13 + 16))
              {
                break;
              }

              v14 = *(v13 + 4 * v12 + 32);
              v15 = String.count.getter();
              if (v14 > 0x7F)
              {
                v56 = (v14 & 0x3F) << 8;
                if (v14 >= 0x800)
                {
                  v62 = (v56 | (v14 >> 6) & 0x3F) << 8;
                  v63 = (((v62 | (v14 >> 12) & 0x3F) << 8) | (v14 >> 18)) - 2122219023;
                  v16 = (v14 >> 12) + v62 + 8487393;
                  if (HIWORD(v14))
                  {
                    v16 = v63;
                  }
                }

                else
                {
                  v16 = (v14 >> 6) + v56 + 33217;
                }
              }

              else
              {
                v16 = v14 + 1;
              }

              v84[0] = (v16 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v16) >> 3))));
              v17 = static String._uncheckedFromUTF8(_:)();
              v19 = v18;
              if (v15 >= String.count.getter())
              {
                if (one-time initialization token for tokenization != -1)
                {
                  swift_once();
                }

                v27 = type metadata accessor for Logger();
                __swift_project_value_buffer(v27, static Log.tokenization);

                v28 = Logger.logObject.getter();
                v29 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v28, v29))
                {
                  v30 = swift_slowAlloc();
                  v31 = swift_slowAlloc();
                  v84[0] = v31;
                  *v30 = 136315394;
                  if (v14 > 0x7F)
                  {
                    v51 = (v14 & 0x3F) << 8;
                    if (v14 >= 0x800)
                    {
                      v60 = (v51 | (v14 >> 6) & 0x3F) << 8;
                      v61 = (((v60 | (v14 >> 12) & 0x3F) << 8) | (v14 >> 18)) - 2122219023;
                      v32 = (v14 >> 12) + v60 + 8487393;
                      if (HIWORD(v14))
                      {
                        v32 = v61;
                      }
                    }

                    else
                    {
                      v32 = (v14 >> 6) + v51 + 33217;
                    }
                  }

                  else
                  {
                    v32 = v14 + 1;
                  }

                  v85 = (v32 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v32) >> 3))));
                  v52 = static String._uncheckedFromUTF8(_:)();
                  v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, v84);

                  *(v30 + 4) = v54;
                  *(v30 + 12) = 2080;
                  v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, v84);

                  *(v30 + 14) = v55;
                  _os_log_impl(&dword_1A8E85000, v28, v29, "Next scalar %s merged into character %s", v30, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x1AC57DBF0](v31, -1, -1);
                  MEMORY[0x1AC57DBF0](v30, -1, -1);

                  v10 = v81;
                }

                else
                {
                }

                v4 = v83;
              }

              else
              {
                v20 = v4;
                if (one-time initialization token for tokenization != -1)
                {
                  swift_once();
                }

                v21 = type metadata accessor for Logger();
                __swift_project_value_buffer(v21, static Log.tokenization);
                v22 = Logger.logObject.getter();
                v23 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v22, v23))
                {
                  v24 = swift_slowAlloc();
                  v25 = swift_slowAlloc();
                  v84[0] = v25;
                  *v24 = 136315138;
                  if (v14 > 0x7F)
                  {
                    v33 = (v14 & 0x3F) << 8;
                    if (v14 >= 0x800)
                    {
                      v58 = (v33 | (v14 >> 6) & 0x3F) << 8;
                      v59 = (((v58 | (v14 >> 12) & 0x3F) << 8) | (v14 >> 18)) - 2122219023;
                      v26 = (v14 >> 12) + v58 + 8487393;
                      if (HIWORD(v14))
                      {
                        v26 = v59;
                      }
                    }

                    else
                    {
                      v26 = (v14 >> 6) + v33 + 33217;
                    }
                  }

                  else
                  {
                    v26 = v14 + 1;
                  }

                  v85 = (v26 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v26) >> 3))));
                  v34 = static String._uncheckedFromUTF8(_:)();
                  v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, v84);

                  *(v24 + 4) = v36;
                  _os_log_impl(&dword_1A8E85000, v22, v23, "Appending next scalar %s increases grapheme clusters/character count", v24, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0(v25);
                  MEMORY[0x1AC57DBF0](v25, -1, -1);
                  MEMORY[0x1AC57DBF0](v24, -1, -1);

                  v4 = v83;
                  v10 = v81;
                }

                else
                {

                  v4 = v20;
                }

                v37 = *(v4 + 40);
                if (v12 + 1 >= *(v37 + 16))
                {

                  if (one-time initialization token for configuration != -1)
                  {
                    swift_once();
                  }

                  __swift_project_value_buffer(v21, static Log.configuration);
                  v48 = Logger.logObject.getter();
                  v49 = static os_log_type_t.debug.getter();
                  if (os_log_type_enabled(v48, v49))
                  {
                    v50 = swift_slowAlloc();
                    *v50 = 0;
                    _os_log_impl(&dword_1A8E85000, v48, v49, "Too close to buffer's end to safely unbuffer current scalar", v50, 2u);
                    MEMORY[0x1AC57DBF0](v50, -1, -1);
                  }
                }

                else
                {
                  v38 = *(v37 + 4 * v12 + 36);
                  if (v38 > 0x7F)
                  {
                    v57 = (v38 & 0x3F) << 8;
                    v40 = v17;
                    if (v38 >= 0x800)
                    {
                      v64 = v38 >> 12;
                      v65 = (v57 | (v38 >> 6) & 0x3F) << 8;
                      v66 = HIWORD(v38);
                      v39 = (((v65 | (v38 >> 12) & 0x3F) << 8) | (v38 >> 18)) - 2122219023;
                      v67 = v64 + v65 + 8487393;
                      if (!v66)
                      {
                        v39 = v67;
                      }
                    }

                    else
                    {
                      v39 = (v38 >> 6) + v57 + 33217;
                    }
                  }

                  else
                  {
                    v39 = v38 + 1;
                    v40 = v17;
                  }

                  v84[0] = (v39 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v39) >> 3))));
                  v41 = static String._uncheckedFromUTF8(_:)();
                  v43 = v42;
                  v84[0] = v40;
                  v84[1] = v19;

                  MEMORY[0x1AC57C120](v41, v43);

                  v44 = String.count.getter();

                  v45 = String.count.getter();

                  if (v45 < v44)
                  {
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v80 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v80 + 2) + 1, 1, v80);
                    }

                    v47 = *(v80 + 2);
                    v46 = *(v80 + 3);
                    if (v47 >= v46 >> 1)
                    {
                      v80 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v80);
                    }

                    *(v80 + 2) = v47 + 1;
                    *&v80[8 * v47 + 32] = v12;
                  }
                }
              }

              if (v82 == v12)
              {
                v68 = *(v80 + 2);
                if (!v68)
                {
                  v70 = MEMORY[0x1E69E7CC0];
LABEL_79:

                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
                  v76 = swift_allocObject();
                  *(v76 + 16) = xmmword_1A8FC9400;
                  v84[0] = v70;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
                  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x1E69E6310]);
                  v77 = BidirectionalCollection<>.joined(separator:)();
                  v79 = v78;

                  *(v76 + 32) = v77;
                  *(v76 + 40) = v79;
                  return;
                }

                v69 = 0;
                v70 = MEMORY[0x1E69E7CC0];
                while (v69 < *(v80 + 2))
                {
                  v71 = *&v80[8 * v69 + 32];
                  if (v71 >= *(v83 + 32))
                  {
                    v72 = TokenIDToTextConverterImpl.unbufferUpto(scalarIndex:)(v71);
                    if (v73)
                    {

                      return;
                    }

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v70 + 2) + 1, 1, v70);
                    }

                    v75 = *(v70 + 2);
                    v74 = *(v70 + 3);
                    if (v75 >= v74 >> 1)
                    {
                      v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), v75 + 1, 1, v70);
                    }

                    *(v70 + 2) = v75 + 1;
                    *&v70[16 * v75 + 32] = v72;
                  }

                  if (v68 == ++v69)
                  {
                    goto LABEL_79;
                  }
                }

                goto LABEL_83;
              }

              ++v12;
              if (v10 < 0)
              {
                goto LABEL_81;
              }
            }
          }

          __break(1u);
LABEL_83:
          __break(1u);
        }

        __break(1u);
      }
    }
  }
}

void *TokenIDToTextConverterImpl.detokenize(tokenID:)(void *a1)
{
  v3 = v1;
  v5 = *(v1 + 80);
  v6 = v5[5];
  v7 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v6);
  if ((*(v7 + 64))(a1, v6, v7))
  {
    if (*(v1 + 64))
    {
      v8 = v5[5];
      v9 = v5[6];
      __swift_project_boxed_opaque_existential_1(v5 + 2, v8);
      (*(v9 + 16))(a1, v8, v9);
      v10 = String.init<A>(_:)();
      v12 = specialized TokenizerRunner.convertByteTokenToUTF8CodeUnit(fromTokenText:)(v10, v11);
      if (v2)
      {
LABEL_13:

        return a1;
      }

      v26 = v12;

      v27 = specialized TokenIDToTextConverterImpl.remainingUTF8CodeUnits(firstByte:)(v26);
      if (v27)
      {
        *(v1 + 56) = v27;
        *(v1 + 64) = 0;
        v28 = *(v1 + 72);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v3 + 72) = v28;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
          *(v3 + 72) = v28;
        }

        v31 = *(v28 + 2);
        v30 = *(v28 + 3);
        if (v31 >= v30 >> 1)
        {
          v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v28);
        }

        *(v28 + 2) = v31 + 1;
        *&v28[8 * v31 + 32] = a1;
        *(v3 + 72) = v28;
        return MEMORY[0x1E69E7CC0];
      }

LABEL_6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      v13._rawValue = swift_initStackObject();
      *(v13._rawValue + 1) = xmmword_1A8FC9400;
      *(v13._rawValue + 4) = a1;
      a1 = TokenIDToTextConverterImpl.detokenize(tokenIDs:)(v13);
      swift_setDeallocating();
      return a1;
    }

    v14 = *(v1 + 56);
    v15 = *(v1 + 72);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 72) = v15;
    if ((v16 & 1) == 0)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
      *(v1 + 72) = v15;
    }

    v18 = *(v15 + 2);
    v17 = *(v15 + 3);
    if (v18 >= v17 >> 1)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v15);
    }

    *(v15 + 2) = v18 + 1;
    *&v15[8 * v18 + 32] = a1;
    *(v1 + 72) = v15;
    a1 = MEMORY[0x1E69E7CC0];
    if (v14 == v18)
    {

      v20 = TokenIDToTextConverterImpl.detokenize(tokenIDs:)(v19);
      if (!v2)
      {
        v32 = v20;

        *(v3 + 56) = 0;
        *(v3 + 64) = 1;
        *(v3 + 72) = a1;

        return v32;
      }

      goto LABEL_13;
    }
  }

  else
  {
    if (*(v1 + 64))
    {
      goto LABEL_6;
    }

    if (one-time initialization token for tokenization != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Log.tokenization);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = a1;
      _os_log_impl(&dword_1A8E85000, v22, v23, "Recieved incomplete byte token %ld", v24, 0xCu);
      MEMORY[0x1AC57DBF0](v24, -1, -1);
    }

    type metadata accessor for GenerationError(0);
    lazy protocol witness table accessor for type GenerationError and conformance GenerationError();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return a1;
}

void *TokenIDToTextConverterImpl.detokenize(tokenIDs:)(Swift::OpaquePointer a1)
{
  if (*(a1._rawValue + 2))
  {
    v2 = v1;
    if (*(v1[3]._countAndFlagsBits + 16) && (v4 = *(a1._rawValue + 4), v5 = v2[5]._countAndFlagsBits, v6 = v5[5], v7 = v5[6], __swift_project_boxed_opaque_existential_1(v5 + 2, v6), v52._rawValue = (*(v7 + 16))(v4, v6, v7), v53 = v8, String.init<A>(_:)(), LOBYTE(v6) = String.hasPrefix(_:)(v2[8]), , (v6 & 1) != 0))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1A8FC9400;
      *(inited + 32) = v2[7]._object;
      v52._rawValue = inited;

      specialized Array.append<A>(contentsOf:)(v10);
      v11 = TokenizerRunner.detokenize(_:)(v52);

      if (v13)
      {
        return result;
      }

      v14 = String.count.getter();
      v15 = specialized Collection.dropFirst(_:)(v14, v11._countAndFlagsBits, v11._object);
      v17 = v16;
      v19 = v18;
      v21 = v20;

      countAndFlagsBits = MEMORY[0x1AC57C040](v15, v17, v19, v21);
      object = v22;
    }

    else
    {
      v24 = TokenizerRunner.detokenize(_:)(a1);
      result = v24._countAndFlagsBits;
      if (v25)
      {
        return result;
      }

      object = v24._object;
      countAndFlagsBits = v24._countAndFlagsBits;
    }

    v30 = v2[5]._object;
    v31 = 1 << v30[32];
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(v30 + 8);
    v34 = (v31 + 63) >> 6;

    v35 = 0;
    if (v33)
    {
      while (1)
      {
        v36 = v35;
LABEL_21:
        v37 = __clz(__rbit64(v33));
        v33 &= v33 - 1;
        v38 = (v36 << 10) | (16 * v37);
        v39 = (*(v30 + 6) + v38);
        v40 = *v39;
        v41 = v39[1];
        v42 = (*(v30 + 7) + v38);
        v43 = *v42;
        v44 = v42[1];
        v52._rawValue = countAndFlagsBits;
        v53 = object;
        v56 = v40;
        v57 = v41;
        v54 = v43;
        v55 = v44;
        lazy protocol witness table accessor for type String and conformance String();

        countAndFlagsBits = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v46 = v45;

        object = v46;
        if (!v33)
        {
          goto LABEL_17;
        }
      }
    }

    while (1)
    {
LABEL_17:
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v36 >= v34)
      {
        break;
      }

      v33 = *&v30[8 * v36 + 64];
      ++v35;
      if (v33)
      {
        v35 = v36;
        goto LABEL_21;
      }
    }

    swift_beginAccess();

    specialized Array.append<A>(contentsOf:)(countAndFlagsBits, object);
    swift_endAccess();

    specialized Array.append<A>(contentsOf:)(v47);
    v48 = specialized Collection.count.getter(countAndFlagsBits, object);
    if (v48)
    {
      v49 = v48;
      v50 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs7UnicodeO6ScalarV_Tt1gq5(v48, 0);
      v51 = specialized Sequence._copySequenceContents(initializing:)(&v52, (v50 + 4), v49, countAndFlagsBits, object);

      if (v51 == v49)
      {

        return v50;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    if (one-time initialization token for tokenization != -1)
    {
LABEL_29:
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Log.tokenization);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1A8E85000, v27, v28, "Empty token array provided", v29, 2u);
      MEMORY[0x1AC57DBF0](v29, -1, -1);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void *TokenIDToTextConverterImpl.deinit()
{

  return v0;
}

uint64_t TokenIDToTextConverterImpl.__deallocating_deinit()
{
  TokenIDToTextConverterImpl.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for TokenIDToTextConverterProtocol.text.getter in conformance TokenIDToTextConverterImpl()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

uint64_t LegacyTokenIDToTextConverterImpl.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for TokenIDToTextConverterProtocol.text.getter in conformance LegacyTokenIDToTextConverterImpl()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 40);

  return v2;
}

uint64_t protocol witness for TokenIDToTextConverterProtocol.textForTokenID(_:isStopTokenID:) in conformance TokenIDToTextConverterImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  a5(a1, a2, a3, a4);
  if (!v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x1E69E6310]);
    v5 = BidirectionalCollection<>.joined(separator:)();
  }

  return v5;
}

unint64_t _StringGuts.validateInclusiveScalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = _StringGuts.validateInclusiveSubscalarIndex(_:)(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | _StringGuts.scalarAlignSlow(_:)(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t _StringGuts.validateInclusiveSubscalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if ((a5 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v5 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (!a2)
  {
    v7 = 0;
    a3 = 0;
    goto LABEL_30;
  }

  if (!a3)
  {
    v7 = 0;
    goto LABEL_30;
  }

  if (a3 < 0)
  {
LABEL_32:
    __break(1u);
    return result;
  }

  v6 = 0;
  v7 = 0;
  v8 = a5 & 0xFFFFFFFFFFFFFFLL;
  v9 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v10 = a3 - 1;
  while (v7 < v5)
  {
    if ((a5 & 0x1000000000000000) != 0)
    {
      v25 = result;
      v27 = a2;
      v16 = a3;
      v17 = a5;
      v18 = a4;
      v19 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      a3 = v16;
      a4 = v18;
      a5 = v17;
      v13 = v19;
      v14 = v20;
      result = v25;
      a2 = v27;
    }

    else
    {
      if ((a5 & 0x2000000000000000) != 0)
      {
        v29[0] = a4;
        v29[1] = v8;
        v12 = v29 + v7;
      }

      else
      {
        v11 = v9;
        if ((a4 & 0x1000000000000000) == 0)
        {
          v26 = result;
          v28 = a2;
          v21 = a5;
          v22 = a4;
          v23 = a3;
          v24 = _StringObject.sharedUTF8.getter();
          a3 = v23;
          a4 = v22;
          a5 = v21;
          v11 = v24;
          result = v26;
          a2 = v28;
        }

        v12 = (v11 + v7);
      }

      v13 = *v12;
      if ((*v12 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      v15 = (__clz(v13 ^ 0xFF) - 24);
      if (v15 > 2)
      {
        if (v15 == 3)
        {
          v13 = ((v13 & 0xF) << 12) | ((v12[1] & 0x3F) << 6) | v12[2] & 0x3F;
          v14 = 3;
        }

        else
        {
          v13 = ((v13 & 0xF) << 18) | ((v12[1] & 0x3F) << 12) | ((v12[2] & 0x3F) << 6) | v12[3] & 0x3F;
          v14 = 4;
        }

        goto LABEL_17;
      }

      if (v15 == 1)
      {
LABEL_16:
        v14 = 1;
      }

      else
      {
        v13 = v12[1] & 0x3F | ((v13 & 0x1F) << 6);
        v14 = 2;
      }
    }

LABEL_17:
    v7 += v14;
    *(a2 + 4 * v6) = v13;
    if (v10 == v6)
    {
      goto LABEL_30;
    }

    if (__OFADD__(++v6, 1))
    {
      __break(1u);
      goto LABEL_32;
    }
  }

  a3 = v6;
LABEL_30:
  *result = a4;
  result[1] = a5;
  result[2] = v7;
  result[3] = v5;
  return a3;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs7UnicodeO6ScalarV_Tt1gq5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7UnicodeO6ScalarVGMd, &_ss23_ContiguousArrayStorageCys7UnicodeO6ScalarVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

uint64_t specialized TokenIDToTextConverterImpl.remainingUTF8CodeUnits(firstByte:)(char a1)
{
  if ((a1 & 0x80) == 0)
  {
    return 0;
  }

  v16[7] = v1;
  v16[8] = v2;
  if ((a1 & 0xE0) == 0xC0)
  {
    return 1;
  }

  if ((a1 & 0xF0) == 0xE0)
  {
    return 2;
  }

  if ((a1 & 0xF8) == 0xF0)
  {
    return 3;
  }

  if (one-time initialization token for tokenization != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.tokenization);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16[0] = v9;
    *v8 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v10 = swift_allocObject();
    v11 = MEMORY[0x1E69E7508];
    *(v10 + 16) = xmmword_1A8FC9400;
    v12 = MEMORY[0x1E69E7558];
    *(v10 + 56) = v11;
    *(v10 + 64) = v12;
    *(v10 + 32) = a1;
    v13 = String.init(format:_:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v16);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_1A8E85000, v6, v7, "Invalid first utf8 byte %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1AC57DBF0](v9, -1, -1);
    MEMORY[0x1AC57DBF0](v8, -1, -1);
  }

  type metadata accessor for GenerationError(0);
  lazy protocol witness table accessor for type GenerationError and conformance GenerationError();
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t specialized TokenIDToTextConverterImpl.init(tokenizer:replacementTextByTokenText:isOneShot:)(void *a1, uint64_t a2, char a3)
{
  *(v3 + 16) = 0;
  *(v3 + 24) = 0xE000000000000000;
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 32) = 0;
  *(v3 + 40) = v4;
  *(v3 + 48) = v4;
  *(v3 + 56) = 0;
  *(v3 + 64) = 1;
  *(v3 + 104) = 4091452;
  *(v3 + 112) = 0xE300000000000000;
  *(v3 + 128) = 8492770;
  *(v3 + 136) = 0xA300000000000000;
  *(v3 + 72) = v4;
  *(v3 + 80) = a1;
  *(v3 + 88) = a2;
  *(v3 + 96) = a3;
  v5 = a1[5];
  v6 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v5);
  v7 = *(v6 + 8);

  *(v3 + 120) = v7(4091452, 0xE300000000000000, v5, v6);
  return v3;
}

uint64_t lazy protocol witness table accessor for type [String] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

void specialized _ArrayProtocol.filter(_:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Prompt.Attachment(0);
  v24 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v23 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v20 - v10;
  v22 = *(a3 + 16);
  if (v22)
  {
    v12 = 0;
    v13 = MEMORY[0x1E69E7CC0];
    v20[1] = a2;
    v21 = a3;
    v20[0] = a1;
    while (v12 < *(a3 + 16))
    {
      v14 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v15 = *(v24 + 72);
      outlined init with copy of TokenizationResult(a3 + v14 + v15 * v12, v11, type metadata accessor for Prompt.Attachment);
      v16 = a1(v11);
      if (v3)
      {
        outlined destroy of TokenizationResult(v11, type metadata accessor for Prompt.Attachment);

        goto LABEL_15;
      }

      if (v16)
      {
        outlined init with take of TokenizationResult(v11, v23, type metadata accessor for Prompt.Attachment);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1);
          v13 = v25;
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
          v13 = v25;
        }

        *(v13 + 16) = v19 + 1;
        outlined init with take of TokenizationResult(v23, v13 + v14 + v19 * v15, type metadata accessor for Prompt.Attachment);
        a3 = v21;
        a1 = v20[0];
      }

      else
      {
        outlined destroy of TokenizationResult(v11, type metadata accessor for Prompt.Attachment);
      }

      if (v22 == ++v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

uint64_t protocol witness for GuidedGenerationTokenizer.tokenID(forText:) in conformance TokenizerRunner(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 48);
  __swift_project_boxed_opaque_existential_1((*v2 + 16), v5);
  return (*(v6 + 8))(a1, a2, v5, v6);
}

uint64_t protocol witness for GuidedGenerationTokenizer.text(forTokenID:) in conformance TokenizerRunner(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  (*(v4 + 16))(a1, v3, v4);
  return String.init<A>(_:)();
}

uint64_t protocol witness for GuidedGenerationTokenizer.longestTokenLength.getter in conformance TokenizerRunner()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  return (*(v2 + 48))(v1, v2);
}

uint64_t protocol witness for GuidedGenerationTokenizer.vocabularyCount.getter in conformance TokenizerRunner()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  return (*(v2 + 56))(v1, v2);
}

uint64_t protocol witness for GuidedGenerationTokenizer.isByte(tokenID:) in conformance TokenizerRunner(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  return (*(v4 + 64))(a1, v3, v4) & 1;
}

uint64_t TokenizerRunner.__allocating_init(tokenizerPath:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TokenizerRunner.init(tokenizerPath:)(a1, a2);
  return v4;
}

uint64_t TokenizedStaticPromptTemplatePrefix.renderedText.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TokenizedStaticPromptTemplatePrefix.renderedText.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TokenizedStaticPromptTemplatePrefix.tokenIDs.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

TokenGenerationCore::TokenizedStaticPromptTemplatePrefix __swiftcall TokenizedStaticPromptTemplatePrefix.init(renderedText:tokenIDs:)(Swift::String renderedText, Swift::OpaquePointer tokenIDs)
{
  *v2 = renderedText;
  *(v2 + 16) = tokenIDs;
  result.renderedText = renderedText;
  result.tokenIDs = tokenIDs;
  return result;
}

uint64_t static TokenizedStaticPromptTemplatePrefix.== infix(_:_:)(uint64_t *a1, void *a2)
{
  result = *a1;
  v4 = a1[2];
  v5 = a2[2];
  if (result != *a2 || a1[1] != a2[1])
  {
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  v7 = *(v4 + 16);
  if (v7 != *(v5 + 16))
  {
    return 0;
  }

  if (!v7 || v4 == v5)
  {
    return 1;
  }

  v8 = (v4 + 32);
  v9 = (v5 + 32);
  while (v7)
  {
    v11 = *v8++;
    v10 = v11;
    v12 = *v9++;
    result = v10 == v12;
    if (v10 != v12 || v7-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TokenizedStaticPromptTemplatePrefix(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v2, v3);
}

uint64_t TokenizedPromptModule.promptFragments.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

char *TokenizedPromptModule.tokenizationResults.getter()
{
  v1 = type metadata accessor for TokenizationResult(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v46 = (&v44 - v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v44 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v49 = (&v44 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v44 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v44 - v16;
  v18 = *(v0 + 8);
  v19 = *(v18 + 16);
  if (!v19)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v53 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = v18 + v53;
  v21 = *(v15 + 72);
  v22 = MEMORY[0x1E69E7CC0];
  v51 = v21;
  v52 = v13;
  v50 = &v44 - v16;
  v48 = v8;
  while (1)
  {
    outlined init with copy of TokenizationResult(v20, v17, type metadata accessor for TokenizationResult);
    outlined init with copy of TokenizationResult(v17, v13, type metadata accessor for TokenizationResult);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with copy of TokenizationResult(v17, v8, type metadata accessor for TokenizationResult);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22[2] + 1, 1, v22);
      }

      v25 = v22[2];
      v24 = v22[3];
      if (v25 >= v24 >> 1)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v22);
      }

      v17 = v50;
      outlined destroy of TokenizationResult(v50, type metadata accessor for TokenizationResult);
      v22[2] = v25 + 1;
      v23 = v51;
      outlined init with take of TokenizationResult(v8, v22 + v53 + v25 * v51, type metadata accessor for TokenizationResult);
      v13 = v52;
      v21 = v23;
      outlined destroy of TokenizationResult(v52, type metadata accessor for TokenizationResult);
      goto LABEL_4;
    }

    v26 = *v13;
    v27 = v22[2];
    v28 = v49;
    if (!v27)
    {
      goto LABEL_13;
    }

    v47 = v22[2];
    v29 = (v27 - 1) * v21;
    outlined init with copy of TokenizationResult(v22 + v53 + v29, v49, type metadata accessor for TokenizationResult);
    result = swift_getEnumCaseMultiPayload();
    if (result == 1)
    {
      outlined destroy of TokenizationResult(v28, type metadata accessor for TokenizationResult);
LABEL_13:
      *v3 = v26;
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22[2] + 1, 1, v22);
      }

      v8 = v48;
      v32 = v22[2];
      v31 = v22[3];
      if (v32 >= v31 >> 1)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v22);
      }

      outlined destroy of TokenizationResult(v17, type metadata accessor for TokenizationResult);
      v22[2] = v32 + 1;
      outlined init with take of TokenizationResult(v3, v22 + v53 + v32 * v21, type metadata accessor for TokenizationResult);
      v13 = v52;
      goto LABEL_4;
    }

    v45 = v29;
    v33 = v3;
    v34 = v1;
    v35 = *v28;
    v36 = *(v26 + 16);
    v37 = *(v35 + 2);
    v38 = v37 + v36;
    if (__OFADD__(v37, v36))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v38 > *(v35 + 3) >> 1)
    {
      if (v37 <= v38)
      {
        v39 = v37 + v36;
      }

      else
      {
        v39 = v37;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v39, 1, v35);
      v35 = result;
    }

    v1 = v34;
    v3 = v33;
    v21 = v51;
    v13 = v52;
    if (*(v26 + 16))
    {
      v40 = *(v35 + 2);
      if ((*(v35 + 3) >> 1) - v40 < v36)
      {
        goto LABEL_40;
      }

      memcpy(&v35[8 * v40 + 32], (v26 + 32), 8 * v36);

      v8 = v48;
      if (v36)
      {
        v41 = *(v35 + 2);
        v42 = __OFADD__(v41, v36);
        v43 = v41 + v36;
        if (v42)
        {
          goto LABEL_41;
        }

        *(v35 + 2) = v43;
      }
    }

    else
    {

      v8 = v48;
      if (v36)
      {
        goto LABEL_38;
      }
    }

    *v46 = v35;
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
    }

    v17 = v50;
    result = outlined destroy of TokenizationResult(v50, type metadata accessor for TokenizationResult);
    if (v47 > v22[2])
    {
      goto LABEL_39;
    }

    outlined assign with take of TokenizationResult(v46, v22 + v53 + v45);
LABEL_4:
    v20 += v21;
    if (!--v19)
    {
      return v22;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t TokenizedPromptModule.renderedString.getter()
{
  v1 = type metadata accessor for Prompt.RenderedSpecialToken(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v22 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Prompt.RenderedPromptFragment(0);
  v3 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v9 = *v0;
  v10 = *(*v0 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v25 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v11 = v25;
    v12 = v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v23 = *(v3 + 72);
    v13 = v22;
    do
    {
      outlined init with copy of TokenizationResult(v12, v8, type metadata accessor for Prompt.RenderedPromptFragment);
      outlined init with take of TokenizationResult(v8, v5, type metadata accessor for Prompt.RenderedPromptFragment);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          outlined init with take of TokenizationResult(v5, v13, type metadata accessor for Prompt.RenderedSpecialToken);
          v15 = *v13;
          v16 = v13[1];

          outlined destroy of TokenizationResult(v13, type metadata accessor for Prompt.RenderedSpecialToken);
        }

        else
        {
          outlined destroy of TokenizationResult(v5, type metadata accessor for Prompt.RenderedPromptFragment);
          v15 = 0;
          v16 = 0xE000000000000000;
        }
      }

      else
      {
        v15 = *v5;
        v16 = v5[1];
      }

      v25 = v11;
      v18 = *(v11 + 16);
      v17 = *(v11 + 24);
      if (v18 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
        v13 = v22;
        v11 = v25;
      }

      *(v11 + 16) = v18 + 1;
      v19 = v11 + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
      v12 += v23;
      --v10;
    }

    while (v10);
  }

  v25 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v20 = BidirectionalCollection<>.joined(separator:)();

  return v20;
}

char *TokenizedPromptModule.tokenIDs.getter()
{
  v25 = type metadata accessor for TokenizationResult(0);
  v1 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v3 = (&v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - v5;
  v26 = *v0;
  v7 = TokenizedPromptModule.tokenizationResults.getter();
  v8 = *(v7 + 2);
  if (!v8)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v9 = *(v1 + 80);
  v24 = v7;
  v10 = &v7[(v9 + 32) & ~v9];
  v11 = *(v1 + 72);
  v12 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    outlined init with copy of TokenizationResult(v10, v6, type metadata accessor for TokenizationResult);
    outlined init with copy of TokenizationResult(v6, v3, type metadata accessor for TokenizationResult);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = outlined destroy of TokenizationResult(v6, type metadata accessor for TokenizationResult);
    if (EnumCaseMultiPayload == 1)
    {
      result = outlined destroy of TokenizationResult(v3, type metadata accessor for TokenizationResult);
      v15 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v15 = *v3;
    }

    v16 = *(v15 + 16);
    v17 = *(v12 + 2);
    v18 = v17 + v16;
    if (__OFADD__(v17, v16))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v18 <= *(v12 + 3) >> 1)
    {
      if (*(v15 + 16))
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v17 <= v18)
      {
        v19 = v17 + v16;
      }

      else
      {
        v19 = v17;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v19, 1, v12);
      v12 = result;
      if (*(v15 + 16))
      {
LABEL_17:
        v20 = *(v12 + 2);
        if ((*(v12 + 3) >> 1) - v20 < v16)
        {
          goto LABEL_26;
        }

        memcpy(&v12[8 * v20 + 32], (v15 + 32), 8 * v16);

        if (v16)
        {
          v21 = *(v12 + 2);
          v22 = __OFADD__(v21, v16);
          v23 = v21 + v16;
          if (v22)
          {
            goto LABEL_27;
          }

          *(v12 + 2) = v23;
        }

        goto LABEL_4;
      }
    }

    if (v16)
    {
      goto LABEL_25;
    }

LABEL_4:
    v10 += v11;
    if (!--v8)
    {

      return v12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t TokenizedPromptModule.init(promptFragments:promptFragmentTokenIDs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v18 = type metadata accessor for TokenizationResult(0);
  v6 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a2 + 16);
  if (v9)
  {
    v16 = a1;
    v17 = a3;
    v19 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v10 = 32;
    v11 = v19;
    do
    {
      v12 = a2;
      *v8 = *(a2 + v10);
      swift_storeEnumTagMultiPayload();
      v19 = v11;
      v13 = *(v11 + 16);
      v14 = *(v11 + 24);

      if (v13 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v13 + 1, 1);
        v11 = v19;
      }

      *(v11 + 16) = v13 + 1;
      outlined init with take of TokenizationResult(v8, v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13, type metadata accessor for TokenizationResult);
      v10 += 8;
      --v9;
      a2 = v12;
    }

    while (v9);

    a1 = v16;
    a3 = v17;
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  *a3 = a1;
  a3[1] = v11;
  return result;
}

uint64_t TokenizedPromptModule.init(promptFragments:fragmentTokenizationResults:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for TokenizationResult(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (v10)
  {
    v18 = a1;
    v19 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v11 = v19;
    v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v13 = a2 + v12;
    v14 = *(v7 + 72);
    do
    {
      outlined init with copy of TokenizationResult(v13, v9, type metadata accessor for TokenizationResult);
      v19 = v11;
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        v11 = v19;
      }

      *(v11 + 16) = v16 + 1;
      outlined init with take of TokenizationResult(v9, v11 + v12 + v16 * v14, type metadata accessor for TokenizationResult);
      v13 += v14;
      --v10;
    }

    while (v10);

    a1 = v18;
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  *a3 = a1;
  a3[1] = v11;
  return result;
}

uint64_t static TokenizedPromptModule.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration6PromptV0bC4CoreE08RenderedD8FragmentO_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore18TokenizationResultO_Tt1g5(v2, v3);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TokenizedPromptModule(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration6PromptV0bC4CoreE08RenderedD8FragmentO_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore18TokenizationResultO_Tt1g5(v2, v3);
}

unint64_t TokenizationResult.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Prompt.AttachmentContent(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TokenizationResult(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of TokenizationResult(v1, v7, type metadata accessor for TokenizationResult);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of TokenizationResult(v7, v4, type metadata accessor for Prompt.AttachmentContent);
    v15 = 0;
    v16 = 0xE000000000000000;
    _StringGuts.grow(_:)(26);

    v15 = 0xD000000000000016;
    v16 = 0x80000001A8FD96D0;
    v8 = Prompt.AttachmentContent.description.getter();
    MEMORY[0x1AC57C120](v8);

    MEMORY[0x1AC57C120](15934, 0xE200000000000000);
    v9 = v15;
    outlined destroy of TokenizationResult(v4, type metadata accessor for Prompt.AttachmentContent);
  }

  else
  {
    v10 = *v7;
    v15 = 0x496E656B6F743C3CLL;
    v16 = 0xEB000000003A7364;
    v11 = MEMORY[0x1AC57C2C0](v10, MEMORY[0x1E69E6530]);
    v13 = v12;

    MEMORY[0x1AC57C120](v11, v13);

    MEMORY[0x1AC57C120](15934, 0xE200000000000000);
    return v15;
  }

  return v9;
}

void *TokenizerRunner.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[12] = 1;
  v1 = [objc_allocWithZone(MEMORY[0x1E69CA938]) init];
  v0[5] = &type metadata for TokenizerRunnerSentencePieceModel;
  v0[6] = &protocol witness table for TokenizerRunnerSentencePieceModel;
  v0[2] = v1;
  v0[13] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v0[10] = &type metadata for GenerationOverrides;
  v0[11] = &protocol witness table for GenerationOverrides;
  v2 = swift_allocObject();
  v0[7] = v2;
  GenerationOverrides.init()((v2 + 16));
  return v0;
}

void *TokenizerRunner.init()()
{
  v0[12] = 1;
  v1 = [objc_allocWithZone(MEMORY[0x1E69CA938]) init];
  v0[5] = &type metadata for TokenizerRunnerSentencePieceModel;
  v0[6] = &protocol witness table for TokenizerRunnerSentencePieceModel;
  v0[2] = v1;
  v0[13] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v4 = &type metadata for GenerationOverrides;
  v5 = &protocol witness table for GenerationOverrides;
  *&v3 = swift_allocObject();
  GenerationOverrides.init()((v3 + 16));
  outlined init with take of PromptComponentValueConvertible(&v3, (v0 + 7));
  return v0;
}

uint64_t TokenizerRunner.init(tokenizerPath:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  *(v4 + 96) = 1;
  v7 = objc_allocWithZone(TokenizerRunnerObjC);
  v8 = @nonobjc TokenizerRunnerObjC.init(tokenizerPath:)(a1, a2);
  if (v3)
  {
    type metadata accessor for TokenizerRunner();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v8;
    v13 = type metadata accessor for TokenizerRunnerObjC();
    v14 = &protocol witness table for TokenizerRunnerObjC;
    *&v12 = v9;
    outlined init with take of PromptComponentValueConvertible(&v12, v4 + 16);
    v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of TokenizerRunner.init(tokenizerPath:));
    outlined destroy of [Regex2BNF.CharacterPredicate](&unk_1F1CA5570, &_sSS_SStMd, &_sSS_SStMR);
    *(v4 + 104) = v10;
    v13 = &type metadata for GenerationOverrides;
    v14 = &protocol witness table for GenerationOverrides;
    *&v12 = swift_allocObject();
    GenerationOverrides.init()((v12 + 16));
    outlined init with take of PromptComponentValueConvertible(&v12, v4 + 56);
  }

  return v4;
}

uint64_t TokenizerRunner.__allocating_init(tokenizerPath:substitutionTextForInputTokenText:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  TokenizerRunner.init(tokenizerPath:substitutionTextForInputTokenText:)(a1, a2, a3);
  return v6;
}

uint64_t TokenizerRunner.tokenize(promptModules:tokenTable:attachmentTokenizer:promptPreprocessingTemplateVersion:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(v5 + 328) = a3;
  *(v5 + 336) = v4;
  *(v5 + 312) = a1;
  *(v5 + 320) = a2;
  type metadata accessor for Prompt.AttachmentContent(0);
  *(v5 + 344) = swift_task_alloc();
  v7 = type metadata accessor for TokenizationResult(0);
  *(v5 + 352) = v7;
  *(v5 + 360) = *(v7 - 8);
  *(v5 + 368) = swift_task_alloc();
  *(v5 + 376) = swift_task_alloc();
  *(v5 + 384) = swift_task_alloc();
  *(v5 + 392) = swift_task_alloc();
  *(v5 + 289) = *a4;

  return MEMORY[0x1EEE6DFA0](TokenizerRunner.tokenize(promptModules:tokenTable:attachmentTokenizer:promptPreprocessingTemplateVersion:), 0, 0);
}