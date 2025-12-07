void AccessibilityText.init(from:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  LOBYTE(v3) = v2;
  v47 = a2;
  v5 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v48 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v7 >= v8)
  {
    v49 = 0;
    v9 = 0;
    LOBYTE(v10) = 0;
    v11 = 0xE000000000000000;
LABEL_4:
    *(a1 + 24) = 0;
    v12 = v49;
    v13 = v47;
    *v47 = v9;
    v13[1] = v11;
    *(v13 + 16) = v10 & 1;
    *(v13 + 17) = v12;
    return;
  }

  v49 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0xE000000000000000;
  while (1)
  {
    v16 = *(a1 + 24);
    if (v16)
    {
      v17 = *(a1 + 32);
      if (v7 < v17)
      {
        goto LABEL_15;
      }

      if (v17 < v7)
      {
        goto LABEL_64;
      }

      *(a1 + 24) = 0;
    }

    v16 = ProtobufDecoder.decodeVarint()(v16);
    if (v2)
    {
      goto LABEL_65;
    }

    if (v16 < 8)
    {
      goto LABEL_64;
    }

LABEL_15:
    v18 = v16 >> 3;
    if (v16 >> 3 == 3)
    {
      if ((v16 & 7) != 0)
      {
        if ((v16 & 7) != 2)
        {
          goto LABEL_64;
        }

        v16 = ProtobufDecoder.decodeVarint()(v16);
        if (v2)
        {
LABEL_65:
          outlined consume of AccessibilityText.Storage(v9, v11, v10 & 1);
          return;
        }

        if ((v16 & 0x8000000000000000) != 0)
        {
          goto LABEL_74;
        }

        v33 = *(a1 + 8) + v16;
        if (v8 < v33)
        {
          goto LABEL_64;
        }

        *(a1 + 24) = 24;
        *(a1 + 32) = v33;
      }

      v34 = ProtobufDecoder.decodeVarint()(v16);
      if (v2)
      {
        goto LABEL_65;
      }

      v49 = v34 != 0;
      goto LABEL_8;
    }

    if (v18 == 2)
    {
      break;
    }

    if (v18 == 1)
    {
      if ((v16 & 7) != 2)
      {
        goto LABEL_64;
      }

      v19 = ProtobufDecoder.decodeVarint()(v16);
      if (v2)
      {
        goto LABEL_65;
      }

      v3 = v19;
      if (v19 < 0)
      {
        goto LABEL_69;
      }

      v20 = *(a1 + 8);
      if (v8 < v20 + v19)
      {
LABEL_64:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
        outlined consume of AccessibilityText.Storage(v9, v11, v10 & 1);
        return;
      }

      v46 = v11;
      *(a1 + 8) = v20 + v19;
      if (v19)
      {
        v21 = *a1;
        v22 = v20 - [v21 bytes];
        v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v24;
        if (__OFADD__(v22, v3))
        {
          goto LABEL_72;
        }

        if (v22 + v3 < v22)
        {
          goto LABEL_73;
        }

        v25 = v23;
        v3 = Data._Representation.subscript.getter();
        v27 = v26;
        outlined consume of Data._Representation(v25, v11);
      }

      else
      {
        v27 = 0xC000000000000000;
      }

      static String.Encoding.utf8.getter();
      v37 = String.init(data:encoding:)();
      if (!v38)
      {
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
        outlined consume of AccessibilityText.Storage(v9, v46, v10 & 1);
        outlined consume of Data._Representation(v3, v27);
        return;
      }

      v39 = v37;
      v40 = v38;
      outlined consume of Data._Representation(v3, v27);
      outlined consume of AccessibilityText.Storage(v9, v46, v10 & 1);
      v10 = 0;
      v9 = v39;
      v11 = v40;
      goto LABEL_7;
    }

    v35 = v16 & 7;
    if (v35 > 1)
    {
      if (v35 == 2)
      {
        v41 = ProtobufDecoder.decodeVarint()(v16);
        if (v2)
        {
          goto LABEL_65;
        }

        if (v41 < 0)
        {
          goto LABEL_75;
        }

        v36 = *(a1 + 8) + v41;
        if (v8 < v36)
        {
          goto LABEL_64;
        }
      }

      else
      {
        if (v35 != 5)
        {
          goto LABEL_64;
        }

        v36 = *(a1 + 8) + 4;
        if (v8 < v36)
        {
          goto LABEL_64;
        }
      }

      goto LABEL_63;
    }

    if ((v16 & 7) != 0)
    {
      if (v35 != 1)
      {
        goto LABEL_64;
      }

      v36 = *(a1 + 8) + 8;
      if (v8 < v36)
      {
        goto LABEL_64;
      }

LABEL_63:
      *(a1 + 8) = v36;
      goto LABEL_8;
    }

    ProtobufDecoder.decodeVarint()(v16);
    if (v2)
    {
      goto LABEL_65;
    }

LABEL_8:
    v7 = *(a1 + 8);
    if (v7 >= v8)
    {
      goto LABEL_4;
    }
  }

  if ((v16 & 7) != 2)
  {
    goto LABEL_64;
  }

  v3 = *(a1 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 16) + 1, 1, v3);
    v3 = isUniquelyReferenced_nonNull_native;
  }

  v30 = *(v3 + 16);
  v29 = *(v3 + 24);
  if (v30 >= v29 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v3);
    v3 = isUniquelyReferenced_nonNull_native;
  }

  *(v3 + 16) = v30 + 1;
  *(v3 + 8 * v30 + 32) = v8;
  *(a1 + 40) = v3;
  v31 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
  if (v2)
  {
    goto LABEL_65;
  }

  if ((v31 & 0x8000000000000000) == 0)
  {
    v32 = *(a1 + 8) + v31;
    if (v8 < v32)
    {
      goto LABEL_64;
    }

    *(a1 + 16) = v32;
    CodableAttributedString.init(from:)(a1, &v50);
    v3 = *(a1 + 40);
    if (!*(v3 + 16))
    {
      goto LABEL_70;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v14 = *(v3 + 16);
      if (!v14)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      v14 = *(v3 + 16);
      if (!v14)
      {
        goto LABEL_71;
      }
    }

    v15 = v14 - 1;
    v8 = *(v3 + 8 * v15 + 32);
    *(v3 + 16) = v15;
    outlined consume of AccessibilityText.Storage(v9, v11, v10 & 1);
    v11 = 0;
    *(a1 + 40) = v3;
    *(a1 + 16) = v8;
    v10 = 1;
    v9 = v50;
LABEL_7:
    v2 = 0;
    goto LABEL_8;
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
  __break(1u);
  v44 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
  v45 = *(v44 + 2);
  if (v45)
  {
    v42 = v45 - 1;
    v43 = *&v44[8 * v42 + 32];
    *(v44 + 2) = v42;
    outlined consume of AccessibilityText.Storage(v10, v11, v3 & 1);
    *(a1 + 40) = v44;
    *(a1 + 16) = v43;
  }

  else
  {
    __break(1u);
  }
}

void CodableAttributedString.Range.init(from:)(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ResolvableTextSegmentAttribute.Value?(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v346 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v363 = type metadata accessor for ResolvableTextSegmentAttribute.Value(0);
  v360 = *(v363 - 8);
  MEMORY[0x1EEE9AC00](v363);
  v359 = &v346 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v361 = &v346 - v10;
  v11 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v365 = &v346 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v376 = 0uLL;
  v377 = MEMORY[0x1E69E7CC8];
  v13 = *(a1 + 2);
  v14 = *(a1 + 3);
  v15 = *(a1 + 6);
  v371 = *a1;
  v372 = v13;
  v373 = v14;
  v374 = a1[2];
  v375 = v15;
  v364 = ProtobufDecoder.preferredBundleLanguage.getter();
  v17 = v16;
  v370 = 0;
  v18 = *(a1 + 1);
  v19 = *(a1 + 2);
  if (v18 >= v19)
  {
    v380 = 0;
    v366 = 0;
LABEL_4:
    *(a1 + 3) = 0;
    if (v17)
    {
      v20 = v17;
      v21 = *MEMORY[0x1E696A518];
      *&v373 = MEMORY[0x1E69E6158];
      *&v371 = v364;
      *(&v371 + 1) = v20;
      outlined init with take of Any(&v371, v369);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v368 = v377;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v369, v21, isUniquelyReferenced_nonNull_native);
      v377 = v368;
    }

    if (__OFADD__(v366, v380))
    {
      goto LABEL_284;
    }

    swift_beginAccess();
    if (v370)
    {
      v23 = one-time initialization token for resolvableTextSegment;
      v24 = v370;
      if (v23 != -1)
      {
        swift_once();
      }

      v25 = static NSAttributedStringKey.resolvableTextSegment;
      v26 = v377;
      if (*(v377 + 16) && (v27 = specialized __RawDictionaryStorage.find<A>(_:)(static NSAttributedStringKey.resolvableTextSegment), (v28 & 1) != 0))
      {
        outlined init with copy of Any(*(v26 + 56) + 32 * v27, &v371);
        v29 = v363;
        v30 = swift_dynamicCast();
        v31 = v360;
        (*(v360 + 56))(v7, v30 ^ 1u, 1, v29);
        if ((*(v31 + 48))(v7, 1, v29) != 1)
        {
          v32 = v359;
          outlined init with take of ResolvableTextSegmentAttribute.Value(v7, v359, type metadata accessor for ResolvableTextSegmentAttribute.Value);
          v33 = v29;
          v34 = *(v29 + 20);

          *(v32 + v34) = v24;
          v373 = v33;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v371);
          outlined init with copy of ResolvableTextSegmentAttribute.Value(v32, boxed_opaque_existential_1, type metadata accessor for ResolvableTextSegmentAttribute.Value);
          outlined init with take of Any(&v371, v369);
          v36 = swift_isUniquelyReferenced_nonNull_native();
          v367 = v377;
          v377 = 0x8000000000000000;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v369, v25, v36);

          v377 = v367;

          outlined destroy of ResolvableTextSegmentAttribute.Value?(v32, type metadata accessor for ResolvableTextSegmentAttribute.Value);
          goto LABEL_291;
        }
      }

      else
      {
        v29 = v363;
        (*(v360 + 56))(v7, 1, 1, v363);
      }

      outlined destroy of ResolvableTextSegmentAttribute.Value?(v7, type metadata accessor for ResolvableTextSegmentAttribute.Value?);
      v373 = v29;
      v342 = __swift_allocate_boxed_opaque_existential_1(&v371);
      static ResolvableTextSegmentAttribute.legacySegment(resolvableAttributeKey:length:)(v24, v380, v342);
      outlined init with take of Any(&v371, v369);
      v343 = swift_isUniquelyReferenced_nonNull_native();
      v367 = v377;
      v377 = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v369, v25, v343);

      v377 = v367;
    }

LABEL_291:
    v344 = v377;
    *a2 = v376;
    *(a2 + 16) = v344;
    return;
  }

  v366 = 0;
  v380 = 0;
  v352 = *MEMORY[0x1E69DB720];
  v351 = "peechAttributeIPANotation";
  v350 = "extAttributeContext";
  v357 = @"UIAccessibilityTokenDurationTimeMMSS";
  v356 = "UIAccessibilityTokenLink";
  v349 = "peechAttributeSpellOut";
  v348 = "nouncementPriority";
  v355 = "extAttributeHeadingLevel";
  v354 = "peechAttributePunctuation";
  v358 = *MEMORY[0x1E69DB5F0];
  v353 = "peechAttributePitch";
  v362 = v7;
  while (1)
  {
    v38 = *(a1 + 3);
    if (v38)
    {
      v39 = *(a1 + 4);
      if (v18 < v39)
      {
        goto LABEL_25;
      }

      if (v39 < v18)
      {
        goto LABEL_283;
      }

      *(a1 + 3) = 0;
    }

    v38 = ProtobufDecoder.decodeVarint()(v38);
    if (v2)
    {
LABEL_286:

LABEL_287:

      goto LABEL_288;
    }

    if (v38 < 8)
    {
LABEL_283:

LABEL_284:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
      goto LABEL_285;
    }

LABEL_25:
    switch(v38 >> 3)
    {
      case 1uLL:
        if ((v38 & 7) == 0)
        {
          goto LABEL_32;
        }

        if ((v38 & 7) != 2)
        {
          goto LABEL_283;
        }

        v38 = ProtobufDecoder.decodeVarint()(v38);
        if (v2)
        {
          goto LABEL_286;
        }

        if ((v38 & 0x8000000000000000) != 0)
        {
          goto LABEL_321;
        }

        v40 = *(a1 + 1) + v38;
        if (v19 < v40)
        {
          goto LABEL_283;
        }

        *(a1 + 3) = 8;
        *(a1 + 4) = v40;
LABEL_32:
        v41 = ProtobufDecoder.decodeVarint()(v38);
        if (v2)
        {
          goto LABEL_286;
        }

        if (v41 < 0)
        {
          goto LABEL_304;
        }

        v366 = v41;
        *&v376 = v41;
        goto LABEL_18;
      case 2uLL:
        if ((v38 & 7) == 0)
        {
          goto LABEL_184;
        }

        if ((v38 & 7) != 2)
        {
          goto LABEL_283;
        }

        v38 = ProtobufDecoder.decodeVarint()(v38);
        if (v2)
        {
          goto LABEL_286;
        }

        if ((v38 & 0x8000000000000000) != 0)
        {
          goto LABEL_322;
        }

        v227 = *(a1 + 1) + v38;
        if (v19 < v227)
        {
          goto LABEL_283;
        }

        *(a1 + 3) = 16;
        *(a1 + 4) = v227;
LABEL_184:
        v228 = ProtobufDecoder.decodeVarint()(v38);
        if (v2)
        {
          goto LABEL_286;
        }

        if (v228 < 0)
        {
          goto LABEL_303;
        }

        v380 = v228;
        *(&v376 + 1) = v228;
        goto LABEL_18;
      case 3uLL:
        if ((v38 & 7) != 2)
        {
          goto LABEL_283;
        }

        v202 = *(a1 + 5);
        v203 = swift_isUniquelyReferenced_nonNull_native();
        if ((v203 & 1) == 0)
        {
          v203 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v202 + 16) + 1, 1, v202);
          v202 = v203;
        }

        v205 = *(v202 + 16);
        v204 = *(v202 + 24);
        if (v205 >= v204 >> 1)
        {
          v203 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v204 > 1), v205 + 1, 1, v202);
          v202 = v203;
        }

        *(v202 + 16) = v205 + 1;
        *(v202 + 8 * v205 + 32) = v19;
        *(a1 + 5) = v202;
        v206 = ProtobufDecoder.decodeVarint()(v203);
        if (v2)
        {
          goto LABEL_286;
        }

        if (v206 < 0)
        {
          goto LABEL_300;
        }

        v207 = *(a1 + 1) + v206;
        if (v19 < v207)
        {
          goto LABEL_283;
        }

        *(a1 + 2) = v207;
        v208 = *(a1 + 6);
        swift_bridgeObjectRetain_n();
        _s7SwiftUI15ProtobufDecoderV19decodeAttachedValue2as9generatorxxm_x10Foundation4DataVKXEtKlFAA19CodablePlatformFontV_Tt0g503_s7a4UI15cd9V21decodef42MessagexyKAA0c9DecodableG0RzAA0c9Encodableu18RzlFx10Foundation4k11VKXEfU_AA19lmN5V_TG5SDys17CodingUserInfoKeyVypGTf1cn_n(a1, v208);
        v210 = v209;

        if (!*(*(a1 + 5) + 16))
        {
          goto LABEL_309;
        }

        v211 = specialized Array._customRemoveLast()();
        v347 = v17;
        if (!v211)
        {
          v211 = specialized Array.remove(at:)(*(*(a1 + 5) + 16) - 1);
        }

        v158 = a2;
        *(a1 + 2) = v211;
        if (one-time initialization token for kitFont != -1)
        {
          swift_once();
        }

        v212 = static NSAttributedStringKey.kitFont;
        type metadata accessor for CTFontRef(0);
        v373 = v213;
        *&v371 = v210;
        outlined init with take of Any(&v371, v369);
        v214 = v210;
        v215 = swift_isUniquelyReferenced_nonNull_native();
        v216 = v377;
        v368 = v377;
        v377 = 0x8000000000000000;
        v217 = specialized __RawDictionaryStorage.find<A>(_:)(v212);
        v219 = v218;
        v220 = *(v216 + 16);
        v221 = (v218 & 1) == 0;
        if (__OFADD__(v220, v221))
        {
          goto LABEL_315;
        }

        v222 = v217;
        if ((specialized _NativeDictionary.ensureUnique(isUnique:capacity:)(v215, v220 + v221, specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary.copy()) & 1) == 0)
        {
          goto LABEL_174;
        }

        v223 = specialized __RawDictionaryStorage.find<A>(_:)(v212);
        if ((v219 & 1) != (v224 & 1))
        {
          goto LABEL_329;
        }

        v222 = v223;
LABEL_174:
        v225 = v368;
        if (v219)
        {
          v226 = (v368[7] + 32 * v222);
          __swift_destroy_boxed_opaque_existential_1(v226);
          outlined init with take of Any(v369, v226);
        }

        else
        {
          v368[(v222 >> 6) + 8] |= 1 << v222;
          *(v225[6] + 8 * v222) = v212;
          outlined init with take of Any(v369, (v225[7] + 32 * v222));
          v316 = v212;

          v317 = v225[2];
          v101 = __OFADD__(v317, 1);
          v318 = v317 + 1;
          if (v101)
          {
            goto LABEL_325;
          }

          v225[2] = v318;
        }

        v7 = v362;
        v377 = v225;

        goto LABEL_271;
      case 4uLL:
        if ((v38 & 7) != 2)
        {
          goto LABEL_283;
        }

        v115 = *(a1 + 5);
        v116 = swift_isUniquelyReferenced_nonNull_native();
        if ((v116 & 1) == 0)
        {
          v116 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v115 + 16) + 1, 1, v115);
          v115 = v116;
        }

        v118 = *(v115 + 16);
        v117 = *(v115 + 24);
        if (v118 >= v117 >> 1)
        {
          v116 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v117 > 1), v118 + 1, 1, v115);
          v115 = v116;
        }

        *(v115 + 16) = v118 + 1;
        *(v115 + 8 * v118 + 32) = v19;
        *(a1 + 5) = v115;
        v119 = ProtobufDecoder.decodeVarint()(v116);
        if (v2)
        {
          goto LABEL_286;
        }

        if (v119 < 0)
        {
          goto LABEL_302;
        }

        v120 = *(a1 + 1) + v119;
        if (v19 < v120)
        {
          goto LABEL_283;
        }

        *(a1 + 2) = v120;
        specialized Color.Resolved.init(from:)(a1);
        if (!*(*(a1 + 5) + 16))
        {
          goto LABEL_308;
        }

        v125 = v121;
        v126 = v122;
        v127 = v123;
        v128 = v124;
        v129 = specialized Array._customRemoveLast()();
        if (!v129)
        {
          v129 = specialized Array.remove(at:)(*(*(a1 + 5) + 16) - 1);
        }

        *(a1 + 2) = v129;
        if (one-time initialization token for kitForegroundColor != -1)
        {
          swift_once();
        }

        v134 = static NSAttributedStringKey.kitForegroundColor;
        if (one-time initialization token for cache != -1)
        {
          swift_once();
        }

        v130.n128_u32[0] = v125;
        v131.n128_u32[0] = v126;
        v132.n128_u32[0] = v127;
        v133.n128_u32[0] = v128;
        specialized ObjectCache.subscript.getter(specialized _ArrayBuffer._consumeAndCreateNew(), specialized _ArrayBuffer._consumeAndCreateNew(), v130, v131, v132, v133);
        v136 = v135;
        *&v373 = COERCE_DOUBLE(type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0));
        *&v371 = v136;
        outlined init with take of Any(&v371, v369);
        v137 = swift_isUniquelyReferenced_nonNull_native();
        v138 = v377;
        v368 = v377;
        v377 = 0x8000000000000000;
        v139 = specialized __RawDictionaryStorage.find<A>(_:)(v134);
        v141 = v140;
        v142 = *(v138 + 16);
        v143 = (v140 & 1) == 0;
        if (__OFADD__(v142, v143))
        {
          goto LABEL_313;
        }

        v144 = v139;
        if ((specialized _NativeDictionary.ensureUnique(isUnique:capacity:)(v137, v142 + v143, specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary.copy()) & 1) == 0)
        {
          goto LABEL_108;
        }

        v145 = specialized __RawDictionaryStorage.find<A>(_:)(v134);
        if ((v141 & 1) != (v146 & 1))
        {
          goto LABEL_329;
        }

        v144 = v145;
LABEL_108:
        v147 = v368;
        if (v141)
        {
          v148 = (v368[7] + 32 * v144);
          __swift_destroy_boxed_opaque_existential_1(v148);
          outlined init with take of Any(v369, v148);
        }

        else
        {
          v368[(v144 >> 6) + 8] |= 1 << v144;
          *(v147[6] + 8 * v144) = v134;
          outlined init with take of Any(v369, (v147[7] + 32 * v144));
          v313 = v147[2];
          v101 = __OFADD__(v313, 1);
          v314 = v313 + 1;
          if (v101)
          {
            goto LABEL_326;
          }

          v147[2] = v314;
          v315 = v134;
        }

        goto LABEL_274;
      case 5uLL:
        if ((v38 & 7) != 2)
        {
          goto LABEL_283;
        }

        v149 = *(a1 + 5);
        v150 = swift_isUniquelyReferenced_nonNull_native();
        if ((v150 & 1) == 0)
        {
          v150 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v149 + 16) + 1, 1, v149);
          v149 = v150;
        }

        v152 = *(v149 + 16);
        v151 = *(v149 + 24);
        if (v152 >= v151 >> 1)
        {
          v150 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v151 > 1), v152 + 1, 1, v149);
          v149 = v150;
        }

        *(v149 + 16) = v152 + 1;
        *(v149 + 8 * v152 + 32) = v19;
        *(a1 + 5) = v149;
        v153 = ProtobufDecoder.decodeVarint()(v150);
        if (v2)
        {
          goto LABEL_286;
        }

        if (v153 < 0)
        {
          goto LABEL_301;
        }

        v154 = *(a1 + 1) + v153;
        if (v19 < v154)
        {
          goto LABEL_283;
        }

        *(a1 + 2) = v154;
        v155 = specialized CodableNSParagraphStyle.init(from:)(a1);
        v347 = v17;
        v156 = *(a1 + 5);
        if (!*(v156 + 2))
        {
          goto LABEL_310;
        }

        v157 = v155;
        v158 = a2;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v159 = *(v156 + 2);
          if (!v159)
          {
            goto LABEL_314;
          }
        }

        else
        {
          v156 = specialized _ArrayBuffer._consumeAndCreateNew()(v156);
          v159 = *(v156 + 2);
          if (!v159)
          {
            goto LABEL_314;
          }
        }

        v160 = v159 - 1;
        v161 = *&v156[8 * v160 + 32];
        *(v156 + 2) = v160;
        *(a1 + 5) = v156;
        *(a1 + 2) = v161;
        if (one-time initialization token for kitParagraphStyle != -1)
        {
          swift_once();
        }

        v162 = static NSAttributedStringKey.kitParagraphStyle;
        *&v373 = COERCE_DOUBLE(type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSParagraphStyle, 0x1E69DB7D0));
        *&v371 = v157;
        outlined init with take of Any(&v371, v369);
        v163 = v157;
        v164 = swift_isUniquelyReferenced_nonNull_native();
        v165 = v377;
        v368 = v377;
        v377 = 0x8000000000000000;
        v166 = specialized __RawDictionaryStorage.find<A>(_:)(v162);
        v168 = v167;
        v169 = *(v165 + 16);
        v170 = (v167 & 1) == 0;
        if (__OFADD__(v169, v170))
        {
          goto LABEL_316;
        }

        v171 = v166;
        if (specialized _NativeDictionary.ensureUnique(isUnique:capacity:)(v164, v169 + v170, specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary.copy()))
        {
          v172 = specialized __RawDictionaryStorage.find<A>(_:)(v162);
          if ((v168 & 1) != (v173 & 1))
          {
            goto LABEL_329;
          }

          v171 = v172;
        }

        v174 = v368;
        if (v168)
        {
          v175 = (v368[7] + 32 * v171);
          __swift_destroy_boxed_opaque_existential_1(v175);
          outlined init with take of Any(v369, v175);
        }

        else
        {
          v368[(v171 >> 6) + 8] |= 1 << v171;
          *(v174[6] + 8 * v171) = v162;
          outlined init with take of Any(v369, (v174[7] + 32 * v171));
          v319 = v162;

          v320 = v174[2];
          v101 = __OFADD__(v320, 1);
          v321 = v320 + 1;
          if (v101)
          {
            goto LABEL_328;
          }

          v174[2] = v321;
        }

        v7 = v362;
        v377 = v174;

LABEL_271:
        a2 = v158;
        v17 = v347;
        goto LABEL_18;
      case 6uLL:
        if ((v38 & 7) != 2)
        {
          goto LABEL_283;
        }

        ProtobufDecoder.beginMessage()();
        if (v2)
        {
          goto LABEL_286;
        }

        v231 = specialized CodableTextAttachment.init(from:)(a1);
        v347 = v17;
        v232 = *(a1 + 5);
        if (!*(v232 + 2))
        {
          goto LABEL_305;
        }

        v233 = v231;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v234 = *(v232 + 2);
          if (!v234)
          {
            goto LABEL_306;
          }
        }

        else
        {
          v232 = specialized _ArrayBuffer._consumeAndCreateNew()(v232);
          v234 = *(v232 + 2);
          if (!v234)
          {
            goto LABEL_306;
          }
        }

        v235 = v234 - 1;
        v236 = *&v232[8 * v235 + 32];
        *(v232 + 2) = v235;
        *(a1 + 5) = v232;
        *(a1 + 2) = v236;
        if (one-time initialization token for kitAttachment != -1)
        {
          swift_once();
        }

        v237 = static NSAttributedStringKey.kitAttachment;
        *&v373 = COERCE_DOUBLE(type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSTextAttachment, 0x1E69DB7F0));
        *&v371 = v233;
        outlined init with take of Any(&v371, v369);
        v238 = v233;
        v239 = swift_isUniquelyReferenced_nonNull_native();
        v240 = v377;
        v368 = v377;
        v377 = 0x8000000000000000;
        v241 = specialized __RawDictionaryStorage.find<A>(_:)(v237);
        v243 = v242;
        v244 = *(v240 + 16);
        v245 = (v242 & 1) == 0;
        if (__OFADD__(v244, v245))
        {
          goto LABEL_307;
        }

        v246 = v241;
        if (specialized _NativeDictionary.ensureUnique(isUnique:capacity:)(v239, v244 + v245, specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary.copy()))
        {
          v247 = specialized __RawDictionaryStorage.find<A>(_:)(v237);
          if ((v243 & 1) != (v248 & 1))
          {
            goto LABEL_329;
          }

          v246 = v247;
        }

        v249 = v368;
        if (v243)
        {
          v250 = (v368[7] + 32 * v246);
          __swift_destroy_boxed_opaque_existential_1(v250);
          outlined init with take of Any(v369, v250);
        }

        else
        {
          v368[(v246 >> 6) + 8] |= 1 << v246;
          *(v249[6] + 8 * v246) = v237;
          outlined init with take of Any(v369, (v249[7] + 32 * v246));
          v310 = v249[2];
          v101 = __OFADD__(v310, 1);
          v311 = v310 + 1;
          if (v101)
          {
            goto LABEL_324;
          }

          v249[2] = v311;
          v312 = v237;
        }

        v377 = v249;

        v17 = v347;
        goto LABEL_275;
      case 7uLL:
        if (one-time initialization token for kitBaselineOffset != -1)
        {
          v330 = v38;
          swift_once();
          v38 = v330;
        }

        *&v369[0] = v38;
        v86 = static NSAttributedStringKey.kitBaselineOffset;
        v87 = ProtobufDecoder.doubleField(_:)(v369);
        if (v88)
        {
          goto LABEL_294;
        }

        *&v373 = MEMORY[0x1E69E7DE0];
        *&v371 = v87;
        outlined init with take of Any(&v371, v369);
        v89 = swift_isUniquelyReferenced_nonNull_native();
        v90 = v377;
        v368 = v377;
        v377 = 0x8000000000000000;
        v91 = specialized __RawDictionaryStorage.find<A>(_:)(v86);
        v93 = v92;
        v94 = *(v90 + 16);
        v95 = (v92 & 1) == 0;
        if (__OFADD__(v94, v95))
        {
          __break(1u);
LABEL_297:
          __break(1u);
LABEL_298:
          __break(1u);
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
LABEL_308:
          __break(1u);
LABEL_309:
          __break(1u);
LABEL_310:
          __break(1u);
LABEL_311:
          __break(1u);
LABEL_312:
          __break(1u);
LABEL_313:
          __break(1u);
LABEL_314:
          __break(1u);
LABEL_315:
          __break(1u);
LABEL_316:
          __break(1u);
LABEL_317:
          __break(1u);
LABEL_318:
          __break(1u);
LABEL_319:
          __break(1u);
LABEL_320:
          __break(1u);
LABEL_321:
          __break(1u);
LABEL_322:
          __break(1u);
LABEL_323:
          __break(1u);
LABEL_324:
          __break(1u);
LABEL_325:
          __break(1u);
LABEL_326:
          __break(1u);
LABEL_327:
          __break(1u);
LABEL_328:
          __break(1u);
          __break(1u);
LABEL_329:
          type metadata accessor for NSAttributedStringKey(0);
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          JUMPOUT(0x18D352630);
        }

        v96 = v91;
        if (specialized _NativeDictionary.ensureUnique(isUnique:capacity:)(v89, v94 + v95, specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary.copy()))
        {
          v97 = specialized __RawDictionaryStorage.find<A>(_:)(v86);
          if ((v93 & 1) != (v98 & 1))
          {
            goto LABEL_329;
          }

          v96 = v97;
        }

        v99 = v368;
        if (v93)
        {
          goto LABEL_14;
        }

        v368[(v96 >> 6) + 8] |= 1 << v96;
        *(v99[6] + 8 * v96) = v86;
        outlined init with take of Any(v369, (v99[7] + 32 * v96));
        v100 = v99[2];
        v101 = __OFADD__(v100, 1);
        v102 = v100 + 1;
        if (v101)
        {
          goto LABEL_319;
        }

        goto LABEL_153;
      case 8uLL:
        if (one-time initialization token for kitKern != -1)
        {
          v331 = v38;
          swift_once();
          v38 = v331;
        }

        *&v369[0] = v38;
        v86 = static NSAttributedStringKey.kitKern;
        v103 = ProtobufDecoder.doubleField(_:)(v369);
        if (v104)
        {
          goto LABEL_294;
        }

        *&v373 = MEMORY[0x1E69E7DE0];
        *&v371 = v103;
        outlined init with take of Any(&v371, v369);
        v105 = swift_isUniquelyReferenced_nonNull_native();
        v106 = v377;
        v368 = v377;
        v377 = 0x8000000000000000;
        v107 = specialized __RawDictionaryStorage.find<A>(_:)(v86);
        v109 = v108;
        v110 = *(v106 + 16);
        v111 = (v108 & 1) == 0;
        if (__OFADD__(v110, v111))
        {
          goto LABEL_297;
        }

        v96 = v107;
        if ((specialized _NativeDictionary.ensureUnique(isUnique:capacity:)(v105, v110 + v111, specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary.copy()) & 1) == 0)
        {
          goto LABEL_85;
        }

        v112 = specialized __RawDictionaryStorage.find<A>(_:)(v86);
        if ((v109 & 1) != (v113 & 1))
        {
          goto LABEL_329;
        }

        v96 = v112;
LABEL_85:
        v99 = v368;
        if (v109)
        {
          goto LABEL_14;
        }

        v368[(v96 >> 6) + 8] |= 1 << v96;
        *(v99[6] + 8 * v96) = v86;
        outlined init with take of Any(v369, (v99[7] + 32 * v96));
        v114 = v99[2];
        v101 = __OFADD__(v114, 1);
        v102 = v114 + 1;
        if (!v101)
        {
          goto LABEL_153;
        }

        goto LABEL_318;
      case 9uLL:
        if (one-time initialization token for kitTracking != -1)
        {
          v332 = v38;
          swift_once();
          v38 = v332;
        }

        *&v369[0] = v38;
        v86 = static NSAttributedStringKey.kitTracking;
        v185 = ProtobufDecoder.doubleField(_:)(v369);
        if (v186)
        {
LABEL_294:
          v345 = v370;

          goto LABEL_287;
        }

        *&v373 = MEMORY[0x1E69E7DE0];
        *&v371 = v185;
        outlined init with take of Any(&v371, v369);
        v187 = swift_isUniquelyReferenced_nonNull_native();
        v188 = v377;
        v368 = v377;
        v377 = 0x8000000000000000;
        v189 = specialized __RawDictionaryStorage.find<A>(_:)(v86);
        v191 = v190;
        v192 = *(v188 + 16);
        v193 = (v190 & 1) == 0;
        if (__OFADD__(v192, v193))
        {
          goto LABEL_298;
        }

        v96 = v189;
        if (specialized _NativeDictionary.ensureUnique(isUnique:capacity:)(v187, v192 + v193, specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary.copy()))
        {
          v194 = specialized __RawDictionaryStorage.find<A>(_:)(v86);
          if ((v191 & 1) != (v195 & 1))
          {
            goto LABEL_329;
          }

          v96 = v194;
        }

        v99 = v368;
        if (v191)
        {
LABEL_14:
          v37 = (v99[7] + 32 * v96);
          __swift_destroy_boxed_opaque_existential_1(v37);
          outlined init with take of Any(v369, v37);
        }

        else
        {
          v368[(v96 >> 6) + 8] |= 1 << v96;
          *(v99[6] + 8 * v96) = v86;
          outlined init with take of Any(v369, (v99[7] + 32 * v96));
          v196 = v99[2];
          v101 = __OFADD__(v196, 1);
          v102 = v196 + 1;
          if (v101)
          {
            goto LABEL_320;
          }

LABEL_153:
          v99[2] = v102;
        }

        v7 = v362;
        v377 = v99;
LABEL_16:

LABEL_17:
        v2 = 0;
LABEL_18:
        v18 = *(a1 + 1);
        v19 = *(a1 + 2);
        if (v18 >= v19)
        {
          goto LABEL_4;
        }

        break;
      case 0xAuLL:
        if ((v38 & 7) == 0)
        {
          goto LABEL_139;
        }

        if ((v38 & 7) != 2)
        {
          goto LABEL_283;
        }

        v38 = ProtobufDecoder.decodeVarint()(v38);
        if (v2)
        {
          goto LABEL_286;
        }

        if ((v38 & 0x8000000000000000) != 0)
        {
          goto LABEL_323;
        }

        v181 = *(a1 + 1) + v38;
        if (v19 < v181)
        {
          goto LABEL_283;
        }

        *(a1 + 3) = 80;
        *(a1 + 4) = v181;
LABEL_139:
        v182 = ProtobufDecoder.decodeVarint()(v38);
        if (v2)
        {
          goto LABEL_286;
        }

        if (one-time initialization token for kitStrikethroughStyle != -1)
        {
          v341 = v182;
          swift_once();
          v182 = v341;
        }

        v75 = -(v182 & 1) ^ (v182 >> 1);
        v76 = static NSAttributedStringKey.kitStrikethroughStyle;
LABEL_143:
        v183 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        *&v373 = COERCE_DOUBLE(type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98));
        *&v371 = v183;
        outlined init with take of Any(&v371, v369);
        v184 = swift_isUniquelyReferenced_nonNull_native();
        v368 = v377;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v369, v76, v184);
        v377 = v368;
        v2 = 0;
        goto LABEL_18;
      case 0xBuLL:
        if ((v38 & 7) != 2)
        {
          goto LABEL_283;
        }

        specialized ProtobufDecoder.decodeMessage<A>()();
        if (v2)
        {
          goto LABEL_286;
        }

        if (one-time initialization token for kitStrikethroughStyle != -1)
        {
          v337 = v68.n128_u32[0];
          v338 = v69.n128_u32[0];
          v339 = v70.n128_u32[0];
          v340 = v71.n128_u32[0];
          swift_once();
          v71.n128_u32[0] = v340;
          v70.n128_u32[0] = v339;
          v69.n128_u32[0] = v338;
          v68.n128_u32[0] = v337;
        }

        v72 = static NSAttributedStringKey.kitStrikethroughStyle;
        goto LABEL_226;
      case 0xCuLL:
        *&v371 = v38;
        v73 = ProtobufDecoder.intField(_:)(&v371);
        if (v74)
        {
          goto LABEL_286;
        }

        v75 = v73;
        if (one-time initialization token for kitUnderlineStyle != -1)
        {
          swift_once();
        }

        v76 = static NSAttributedStringKey.kitUnderlineStyle;
        goto LABEL_143;
      case 0xDuLL:
        if ((v38 & 7) != 2)
        {
          goto LABEL_283;
        }

        specialized ProtobufDecoder.decodeMessage<A>()();
        if (v2)
        {
          goto LABEL_286;
        }

        if (one-time initialization token for kitUnderlineColor != -1)
        {
          v333 = v68.n128_u32[0];
          v334 = v69.n128_u32[0];
          v335 = v70.n128_u32[0];
          v336 = v71.n128_u32[0];
          swift_once();
          v71.n128_u32[0] = v336;
          v70.n128_u32[0] = v335;
          v69.n128_u32[0] = v334;
          v68.n128_u32[0] = v333;
        }

        v72 = static NSAttributedStringKey.kitUnderlineColor;
LABEL_226:
        if (one-time initialization token for cache != -1)
        {
          v326 = v68.n128_u32[0];
          v327 = v69.n128_u32[0];
          v328 = v70.n128_u32[0];
          v329 = v71.n128_u32[0];
          swift_once();
          v71.n128_u32[0] = v329;
          v70.n128_u32[0] = v328;
          v69.n128_u32[0] = v327;
          v68.n128_u32[0] = v326;
        }

        specialized ObjectCache.subscript.getter(specialized _ArrayBuffer._consumeAndCreateNew(), specialized _ArrayBuffer._consumeAndCreateNew(), v68, v69, v70, v71);
        v276 = v275;
        *&v373 = COERCE_DOUBLE(type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0));
        *&v371 = v276;
        outlined init with take of Any(&v371, v369);
        v277 = swift_isUniquelyReferenced_nonNull_native();
        v368 = v377;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v369, v72, v277);
        v377 = v368;
        v2 = 0;
        goto LABEL_18;
      case 0xEuLL:
        if ((v38 & 7) != 2)
        {
          goto LABEL_283;
        }

        specialized ProtobufDecoder.decodeMessage<A>()(&v371);
        if (v2)
        {
          goto LABEL_286;
        }

        v278 = *&v373;
        v279 = v374;
        v280 = specialized static CoreColor.platformColor(resolvedColor:)(*&v371, *(&v371 + 1), *(&v371 + 2), *(&v371 + 3));
        if (!v280)
        {
          goto LABEL_17;
        }

        v281 = v280;
        v282 = CoreMakeNSShadow(v280, *&v279, *(&v279 + 1), v278);
        if (!v282)
        {

          goto LABEL_17;
        }

        v283 = v282;
        if (one-time initialization token for kitShadow != -1)
        {
          swift_once();
        }

        v284 = static NSAttributedStringKey.kitShadow;
        *&v373 = COERCE_DOUBLE(type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0));
        *&v371 = v283;
        outlined init with take of Any(&v371, v369);
        v285 = v283;
        v286 = swift_isUniquelyReferenced_nonNull_native();
        v368 = v377;
        v377 = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v369, v284, v286);

        goto LABEL_253;
      case 0xFuLL:
        v197 = v38;

        *&v371 = v197;
        v198 = ProtobufDecoder.dataField(_:)(&v371);
        if (v2)
        {
          goto LABEL_285;
        }

        v51 = v198;
        v52 = v199;
        static String.Encoding.utf8.getter();
        v200 = String.init(data:encoding:)();
        if (!v201)
        {
          goto LABEL_293;
        }

        v17 = v201;
        v364 = v200;
        outlined consume of Data._Representation(v51, v52);
        goto LABEL_17;
      case 0x10uLL:
        _s7SwiftUI23CodableAttributedStringV5RangeV4fromAeA15ProtobufDecoderVz_tKcfc20initializeResolvableL_yyxmKAA0kE15AttributeFamilyRzlFAA0K12DateIntervalV_Ttg5Tf0nnns_n(a1, v38, &v376, &v370);
        if (v2)
        {
          goto LABEL_286;
        }

        goto LABEL_18;
      case 0x11uLL:
        _s7SwiftUI23CodableAttributedStringV5RangeV4fromAeA15ProtobufDecoderVz_tKcfc20initializeResolvableL_yyxmKAA0kE15AttributeFamilyRzlFAA0K12AbsoluteDateV_Ttg5Tf0nnns_n(a1, v38, &v376, &v370);
        if (v2)
        {
          goto LABEL_286;
        }

        goto LABEL_18;
      case 0x12uLL:
        _s7SwiftUI23CodableAttributedStringV5RangeV4fromAeA15ProtobufDecoderVz_tKcfc20initializeResolvableL_yyxmKAA0kE15AttributeFamilyRzlFAA0K11CurrentDateV_Ttg5Tf0nnns_n(a1, v38, &v376, &v370);
        if (v2)
        {
          goto LABEL_286;
        }

        goto LABEL_18;
      case 0x13uLL:
        _s7SwiftUI23CodableAttributedStringV5RangeV4fromAeA15ProtobufDecoderVz_tKcfc20initializeResolvableL_yyxmKAA0kE15AttributeFamilyRzlFAA0K5TimerV_Ttg5Tf0nnns_n(a1, v38, &v376, &v370);
        if (v2)
        {
          goto LABEL_286;
        }

        goto LABEL_18;
      case 0x15uLL:
        *&v371 = v38;
        v81 = ProtobufDecoder.BOOLField(_:)(&v371);
        if (v82)
        {
          goto LABEL_286;
        }

        v83 = v81;
        v84 = 0xD000000000000029;
        v85 = &v376 + 1;
        goto LABEL_240;
      case 0x16uLL:
        *&v371 = v38;
        v287 = ProtobufDecoder.BOOLField(_:)(&v371);
        if (v288)
        {
          goto LABEL_286;
        }

        v83 = v287;
        v84 = 0xD000000000000026;
        v85 = &v377;
LABEL_240:
        v45 = MEMORY[0x193ABEC20](v84, *(v85 - 32) | 0x8000000000000000);
        *&v373 = MEMORY[0x1E69E6370];
        LOBYTE(v371) = v83;
        goto LABEL_251;
      case 0x17uLL:
        *&v371 = v38;
        v42 = ProtobufDecoder.doubleField(_:)(&v371);
        if (v43)
        {
          goto LABEL_286;
        }

        v44 = v42;
        v45 = MEMORY[0x193ABEC20](0xD000000000000023, v355 | 0x8000000000000000);
        *&v373 = MEMORY[0x1E69E63B0];
        *&v371 = v44;
        goto LABEL_251;
      case 0x18uLL:
        *&v371 = v38;
        v77 = ProtobufDecoder.dataField(_:)(&v371);
        if (v2)
        {
          goto LABEL_286;
        }

        v51 = v77;
        v52 = v78;
        static String.Encoding.utf8.getter();
        v79 = String.init(data:encoding:)();
        if (!v80)
        {
          goto LABEL_292;
        }

        v55 = v79;
        v56 = v80;
        v57.n128_f64[0] = outlined consume of Data._Representation(v51, v52);
        v58 = 0xD000000000000032;
        v59 = &v375;
        goto LABEL_132;
      case 0x19uLL:
        *&v371 = v38;
        v49 = ProtobufDecoder.dataField(_:)(&v371);
        if (v2)
        {
          goto LABEL_286;
        }

        v51 = v49;
        v52 = v50;
        static String.Encoding.utf8.getter();
        v53 = String.init(data:encoding:)();
        if (!v54)
        {
          goto LABEL_292;
        }

        v55 = v53;
        v56 = v54;
        v57.n128_f64[0] = outlined consume of Data._Representation(v51, v52);
        v58 = 0xD000000000000026;
        v59 = &v374;
        goto LABEL_132;
      case 0x1AuLL:
        *&v371 = v38;
        v176 = ProtobufDecoder.dataField(_:)(&v371);
        if (v2)
        {
          goto LABEL_286;
        }

        v51 = v176;
        v52 = v177;
        static String.Encoding.utf8.getter();
        v178 = String.init(data:encoding:)();
        if (!v179)
        {
          goto LABEL_292;
        }

        v55 = v178;
        v56 = v179;
        v57.n128_f64[0] = outlined consume of Data._Representation(v51, v52);
        v58 = 0xD000000000000029;
        v59 = (&v374 + 8);
LABEL_132:
        v180 = *(v59 - 32) | 0x8000000000000000;
        goto LABEL_250;
      case 0x1BuLL:
        *&v371 = v38;
        v46 = ProtobufDecoder.uintField(_:)(&v371);
        if (v47)
        {
          goto LABEL_286;
        }

        v48 = v46;
        v45 = MEMORY[0x193ABEC20](0xD000000000000028, v356 | 0x8000000000000000);
        *&v373 = MEMORY[0x1E69E6810];
        *&v371 = v48;
        goto LABEL_251;
      case 0x1CuLL:
        *&v371 = v38;
        v296 = ProtobufDecoder.dataField(_:)(&v371);
        if (v2)
        {
          goto LABEL_286;
        }

        v51 = v296;
        v52 = v297;
        static String.Encoding.utf8.getter();
        v298 = String.init(data:encoding:)();
        if (!v299)
        {
          goto LABEL_292;
        }

        v55 = v298;
        v56 = v299;
        v57.n128_f64[0] = outlined consume of Data._Representation(v51, v52);
        v180 = v351 | 0x8000000000000000;
        v58 = 0xD000000000000023;
LABEL_250:
        v45 = MEMORY[0x193ABEC20](v58, v180, v57);
        *&v373 = MEMORY[0x1E69E6158];
        *&v371 = v55;
        *(&v371 + 1) = v56;
LABEL_251:
        outlined init with take of Any(&v371, v369);
        goto LABEL_252;
      case 0x1DuLL:
        *&v371 = v38;
        v289 = ProtobufDecoder.dataField(_:)(&v371);
        if (v2)
        {
          goto LABEL_286;
        }

        v51 = v289;
        v52 = v290;
        static String.Encoding.utf8.getter();
        v291 = String.init(data:encoding:)();
        if (!v292)
        {
          goto LABEL_292;
        }

        v293 = v291;
        v294 = v292;
        outlined consume of Data._Representation(v51, v52);
        if (one-time initialization token for coreAXLabel != -1)
        {
          swift_once();
        }

        v295 = static NSAttributedStringKey.coreAXLabel;
        *&v373 = MEMORY[0x1E69E6158];
        *&v371 = v293;
        *(&v371 + 1) = v294;
        outlined init with take of Any(&v371, v369);
        v66 = swift_isUniquelyReferenced_nonNull_native();
        v368 = v377;
        v67 = v295;
        goto LABEL_246;
      case 0x1EuLL:
        *&v371 = v38;
        v60 = ProtobufDecoder.dataField(_:)(&v371);
        if (v2)
        {
          goto LABEL_286;
        }

        v51 = v60;
        v52 = v61;
        static String.Encoding.utf8.getter();
        v62 = String.init(data:encoding:)();
        if (v63)
        {
          v64 = v62;
          v65 = v63;
          outlined consume of Data._Representation(v51, v52);
          *&v373 = MEMORY[0x1E69E6158];
          *&v371 = v64;
          *(&v371 + 1) = v65;
          outlined init with take of Any(&v371, v369);
          v66 = swift_isUniquelyReferenced_nonNull_native();
          v368 = v377;
          v67 = v352;
LABEL_246:
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v369, v67, v66);
          v377 = v368;
          goto LABEL_17;
        }

LABEL_292:

LABEL_293:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
        outlined consume of Data._Representation(v51, v52);
LABEL_285:

LABEL_288:

        return;
      case 0x1FuLL:
        _s7SwiftUI23CodableAttributedStringV5RangeV4fromAeA15ProtobufDecoderVz_tKcfc20initializeResolvableL_yyxmKAA0kE15AttributeFamilyRzlFAA0K15CLKTextProviderV_Ttg5Tf0nnns_n(a1, v38, &v376, &v370);
        if (v2)
        {
          goto LABEL_286;
        }

        goto LABEL_18;
      case 0x20uLL:
        *&v371 = v38;
        v229 = ProtobufDecoder.BOOLField(_:)(&v371);
        if (v230)
        {
          goto LABEL_286;
        }

        *&v373 = MEMORY[0x1E69E6370];
        LOBYTE(v371) = v229;
        outlined init with take of Any(&v371, v369);
        v45 = v357;
LABEL_252:
        v300 = swift_isUniquelyReferenced_nonNull_native();
        v368 = v377;
        v377 = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v369, v45, v300);

        goto LABEL_253;
      case 0x21uLL:
        _s7SwiftUI23CodableAttributedStringV5RangeV4fromAeA15ProtobufDecoderVz_tKcfc20initializeResolvableL_yyxmKAA0kE15AttributeFamilyRzlFAA0K8ProgressV_Ttg5Tf0nnns_n(a1, v38, &v376, &v370);
        if (v2)
        {
          goto LABEL_286;
        }

        goto LABEL_18;
      case 0x22uLL:
        v301 = a1[1];
        v378[0] = *a1;
        v378[1] = v301;
        v378[2] = a1[2];
        v379 = *(a1 + 6);
        *&v369[0] = v38;
        outlined init with copy of ProtobufDecoder(v378, &v371);
        v302 = ProtobufDecoder.dataField(_:)(v369);
        if (v2)
        {

          outlined destroy of ProtobufDecoder(v378);
          goto LABEL_288;
        }

        v304 = v302;
        v305 = v303;
        _s7SwiftUI15ProtobufDecoderV5value15fromBinaryPlist4typex10Foundation4DataV_xmtKSeRzlFAA30ResolvableTextSegmentAttributeO5ValueV_Tt1B5(v361);
        outlined consume of Data._Representation(v304, v305);
        outlined destroy of ProtobufDecoder(v378);
        if (one-time initialization token for resolvableTextSegment != -1)
        {
          swift_once();
        }

        v306 = static NSAttributedStringKey.resolvableTextSegment;
        v373 = v363;
        v307 = __swift_allocate_boxed_opaque_existential_1(&v371);
        v308 = v361;
        outlined init with copy of ResolvableTextSegmentAttribute.Value(v361, v307, type metadata accessor for ResolvableTextSegmentAttribute.Value);
        outlined init with take of Any(&v371, v369);
        v309 = swift_isUniquelyReferenced_nonNull_native();
        v368 = v377;
        v377 = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v369, v306, v309);
        outlined destroy of ResolvableTextSegmentAttribute.Value?(v308, type metadata accessor for ResolvableTextSegmentAttribute.Value);
LABEL_253:
        v377 = v368;
        goto LABEL_16;
      case 0x23uLL:
        _s7SwiftUI23CodableAttributedStringV5RangeV4fromAeA15ProtobufDecoderVz_tKcfc20initializeResolvableL_yyxmKAA0kE15AttributeFamilyRzlFAA18TimeDataFormattingO_Ttg5Tf0nnns_n(a1, v38, &v376, &v370);
        if (v2)
        {
          goto LABEL_286;
        }

        goto LABEL_18;
      case 0x24uLL:
        if ((v38 & 7) != 2)
        {
          goto LABEL_283;
        }

        v251 = *(a1 + 5);
        v252 = swift_isUniquelyReferenced_nonNull_native();
        if ((v252 & 1) == 0)
        {
          v252 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v251 + 16) + 1, 1, v251);
          v251 = v252;
        }

        v254 = *(v251 + 16);
        v253 = *(v251 + 24);
        if (v254 >= v253 >> 1)
        {
          v252 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v253 > 1), v254 + 1, 1, v251);
          v251 = v252;
        }

        *(v251 + 16) = v254 + 1;
        *(v251 + 8 * v254 + 32) = v19;
        *(a1 + 5) = v251;
        v255 = ProtobufDecoder.decodeVarint()(v252);
        if (v2)
        {
          goto LABEL_286;
        }

        if (v255 < 0)
        {
          goto LABEL_299;
        }

        v256 = *(a1 + 1) + v255;
        if (v19 < v256)
        {
          goto LABEL_283;
        }

        *(a1 + 2) = v256;
        v257 = specialized CodableAdaptiveImageGlyph.init(from:)(a1);
        v258 = *(a1 + 5);
        if (!*(v258 + 2))
        {
          goto LABEL_311;
        }

        v259 = v257;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v260 = *(v258 + 2);
          if (!v260)
          {
            goto LABEL_312;
          }
        }

        else
        {
          v258 = specialized _ArrayBuffer._consumeAndCreateNew()(v258);
          v260 = *(v258 + 2);
          if (!v260)
          {
            goto LABEL_312;
          }
        }

        v261 = v260 - 1;
        v262 = *&v258[8 * v261 + 32];
        *(v258 + 2) = v261;
        *(a1 + 5) = v258;
        *(a1 + 2) = v262;
        *&v373 = COERCE_DOUBLE(type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSAdaptiveImageGlyph, 0x1E69DB780));
        *&v371 = v259;
        outlined init with take of Any(&v371, v369);
        v263 = v259;
        v264 = swift_isUniquelyReferenced_nonNull_native();
        v265 = v377;
        v368 = v377;
        v377 = 0x8000000000000000;
        v266 = specialized __RawDictionaryStorage.find<A>(_:)(v358);
        v268 = v267;
        v269 = *(v265 + 16);
        v270 = (v267 & 1) == 0;
        if (__OFADD__(v269, v270))
        {
          goto LABEL_317;
        }

        v271 = v266;
        if (specialized _NativeDictionary.ensureUnique(isUnique:capacity:)(v264, v269 + v270, specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary.copy()))
        {
          v272 = specialized __RawDictionaryStorage.find<A>(_:)(v358);
          if ((v268 & 1) != (v273 & 1))
          {
            goto LABEL_329;
          }

          v271 = v272;
        }

        v147 = v368;
        if (v268)
        {
          v274 = (v368[7] + 32 * v271);
          __swift_destroy_boxed_opaque_existential_1(v274);
          outlined init with take of Any(v369, v274);
        }

        else
        {
          v368[(v271 >> 6) + 8] |= 1 << v271;
          v322 = v358;
          *(v147[6] + 8 * v271) = v358;
          outlined init with take of Any(v369, (v147[7] + 32 * v271));
          v323 = v322;

          v324 = v147[2];
          v101 = __OFADD__(v324, 1);
          v325 = v324 + 1;
          if (v101)
          {
            goto LABEL_327;
          }

          v147[2] = v325;
        }

LABEL_274:
        v377 = v147;

LABEL_275:
        v7 = v362;
        goto LABEL_18;
      default:
        *&v371 = v38;
        ProtobufDecoder.skipField(_:)(&v371);
        if (v2)
        {
          goto LABEL_286;
        }

        goto LABEL_18;
    }
  }
}

uint64_t outlined destroy of ResolvableStringAttribute?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t _s7SwiftUI30AccessibilityNullableOptionSetV4fromACyxGAA15ProtobufDecoderVz_tKcfCAA0c5TraitF0V_Tt1g5@<X0>(unint64_t result@<X0>, unint64_t *a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v7 = 0;
    v8 = 0;
LABEL_4:
    v3[3] = 0;
    *a2 = v8;
    a2[1] = v7;
    return result;
  }

  v7 = 0;
  v8 = 0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v9 = v3[4];
      if (v5 < v9)
      {
        goto LABEL_13;
      }

      if (v9 < v5)
      {
        goto LABEL_43;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_43:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_13:
    v10 = result & 7;
    if (result >> 3 == 2)
    {
      if ((result & 7) != 0)
      {
        if (v10 != 2)
        {
          goto LABEL_43;
        }

        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_46;
        }

        v12 = v3[1] + result;
        if (v6 < v12)
        {
          goto LABEL_43;
        }

        v3[3] = 16;
        v3[4] = v12;
      }

      result = ProtobufDecoder.decodeVarint()(result);
      if (v2)
      {
        return result;
      }

      v7 = result;
      goto LABEL_6;
    }

    if (result >> 3 == 1)
    {
      break;
    }

    if ((result & 7) > 1)
    {
      if (v10 == 2)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_47;
        }

        v13 = v3[1] + result;
      }

      else
      {
        if (v10 != 5)
        {
          goto LABEL_43;
        }

        v13 = v3[1] + 4;
      }
    }

    else
    {
      if ((result & 7) == 0)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        goto LABEL_6;
      }

      if (v10 != 1)
      {
        goto LABEL_43;
      }

      v13 = v3[1] + 8;
    }

    if (v6 < v13)
    {
      goto LABEL_43;
    }

    v3[1] = v13;
LABEL_6:
    v5 = v3[1];
    if (v5 >= v6)
    {
      goto LABEL_4;
    }
  }

  if ((result & 7) == 0)
  {
LABEL_21:
    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    v8 = result;
    goto LABEL_6;
  }

  if (v10 != 2)
  {
    goto LABEL_43;
  }

  result = ProtobufDecoder.decodeVarint()(result);
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v11 = v3[1] + result;
    if (v6 < v11)
    {
      goto LABEL_43;
    }

    v3[3] = 8;
    v3[4] = v11;
    goto LABEL_21;
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_18D35294C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    type metadata accessor for LinkDestination.Configuration?(0);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 52);

    return v11(v12, a2, v10);
  }
}

uint64_t outlined init with take of CodableAccessibilityAttachmentStorage(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t closure #1 in ContentTransition.NamedTransition.init(from:)@<X0>(unint64_t result@<X0>, BOOL *a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v7 = 0;
LABEL_36:
    v3[3] = 0;
    *a2 = v7;
    return result;
  }

  v7 = 0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v8 = v3[4];
      if (v5 < v8)
      {
        goto LABEL_11;
      }

      if (v8 < v5)
      {
        goto LABEL_34;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_34:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_11:
    v9 = result & 7;
    if ((result & 0xFFFFFFFFFFFFFFF8) == 8)
    {
      break;
    }

    if ((result & 7) > 1)
    {
      if (v9 == 2)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        v11 = v3[1] + result;
        if (v6 < v11)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v9 != 5)
        {
          goto LABEL_34;
        }

        v11 = v3[1] + 4;
        if (v6 < v11)
        {
          goto LABEL_34;
        }
      }

      goto LABEL_3;
    }

    if ((result & 7) != 0)
    {
      if (v9 != 1)
      {
        goto LABEL_34;
      }

      v11 = v3[1] + 8;
      if (v6 < v11)
      {
        goto LABEL_34;
      }

LABEL_3:
      v3[1] = v11;
      goto LABEL_4;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

LABEL_4:
    v5 = v3[1];
    if (v5 >= v6)
    {
      goto LABEL_36;
    }
  }

  if ((result & 7) == 0)
  {
LABEL_18:
    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    v7 = result != 0;
    goto LABEL_4;
  }

  if (v9 != 2)
  {
    goto LABEL_34;
  }

  result = ProtobufDecoder.decodeVarint()(result);
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v10 = v3[1] + result;
    if (v6 < v10)
    {
      goto LABEL_34;
    }

    v3[3] = 8;
    v3[4] = v10;
    goto LABEL_18;
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

unint64_t ContentTransition.Style.init(from:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v7 = 0;
LABEL_59:
    v3[3] = 0;
    *a2 = v7;
    return result;
  }

  v7 = 0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v8 = v3[4];
      if (v5 < v8)
      {
        goto LABEL_12;
      }

      if (v8 < v5)
      {
        goto LABEL_57;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_57:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_12:
    v9 = result & 7;
    if (result >> 3 == 2)
    {
      if ((result & 7) > 1)
      {
        if (v9 == 2)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_63;
          }

          v10 = v3[1] + result;
          if (v6 < v10)
          {
            goto LABEL_57;
          }
        }

        else
        {
          if (v9 != 5)
          {
            goto LABEL_57;
          }

          v10 = v3[1] + 4;
          if (v6 < v10)
          {
            goto LABEL_57;
          }
        }

LABEL_3:
        v7 = 2;
LABEL_4:
        v3[1] = v10;
        goto LABEL_5;
      }

      if ((result & 7) != 0)
      {
        if (v9 != 1)
        {
          goto LABEL_57;
        }

        v10 = v3[1] + 8;
        if (v6 < v10)
        {
          goto LABEL_57;
        }

        goto LABEL_3;
      }

      result = ProtobufDecoder.decodeVarint()(result);
      if (v2)
      {
        return result;
      }

      v7 = 2;
      goto LABEL_5;
    }

    if (result >> 3 != 1)
    {
      if ((result & 7) > 1)
      {
        if (v9 == 2)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_62;
          }

          v10 = v3[1] + result;
          if (v6 < v10)
          {
            goto LABEL_57;
          }
        }

        else
        {
          if (v9 != 5)
          {
            goto LABEL_57;
          }

          v10 = v3[1] + 4;
          if (v6 < v10)
          {
            goto LABEL_57;
          }
        }

        goto LABEL_4;
      }

      if ((result & 7) != 0)
      {
        if (v9 != 1)
        {
          goto LABEL_57;
        }

        v10 = v3[1] + 8;
        if (v6 < v10)
        {
          goto LABEL_57;
        }

        goto LABEL_4;
      }

      result = ProtobufDecoder.decodeVarint()(result);
      if (v2)
      {
        return result;
      }

      goto LABEL_5;
    }

    if ((result & 7) > 1)
    {
      break;
    }

    if ((result & 7) != 0)
    {
      if (v9 != 1)
      {
        goto LABEL_57;
      }

      v10 = v3[1] + 8;
      goto LABEL_44;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    v7 = 1;
LABEL_5:
    v5 = v3[1];
    if (v5 >= v6)
    {
      goto LABEL_59;
    }
  }

  if (v9 != 2)
  {
    if (v9 != 5)
    {
      goto LABEL_57;
    }

    v10 = v3[1] + 4;
    goto LABEL_44;
  }

  result = ProtobufDecoder.decodeVarint()(result);
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v10 = v3[1] + result;
LABEL_44:
    if (v6 < v10)
    {
      goto LABEL_57;
    }

    v7 = 1;
    goto LABEL_4;
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

void closure #5 in DisplayList.Content.Value.init(from:)(void *a1@<X0>, char *a2@<X8>)
{
  v5 = a1[1];
  v6 = a1[2];
  if (v5 < v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = a1[3];
      if (v10)
      {
        v11 = a1[4];
        if (v5 < v11)
        {
          goto LABEL_11;
        }

        if (v11 < v5)
        {
          goto LABEL_58;
        }

        a1[3] = 0;
      }

      v10 = ProtobufDecoder.decodeVarint()(v10);
      if (v2)
      {
        goto LABEL_59;
      }

      if (v10 < 8)
      {
        goto LABEL_58;
      }

LABEL_11:
      v12 = v10 & 7;
      if (v10 >> 3 == 2)
      {
        if (v12 != 2)
        {
          goto LABEL_58;
        }

        v24 = a1[5];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 16) + 1, 1, v24);
          v24 = isUniquelyReferenced_nonNull_native;
        }

        v27 = *(v24 + 16);
        v26 = *(v24 + 24);
        if (v27 >= v26 >> 1)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v24);
          v24 = isUniquelyReferenced_nonNull_native;
        }

        *(v24 + 16) = v27 + 1;
        *(v24 + 8 * v27 + 32) = v6;
        a1[5] = v24;
        v28 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
        if (v2)
        {
LABEL_59:

          return;
        }

        if (v28 < 0)
        {
          goto LABEL_67;
        }

        v29 = a1[1] + v28;
        if (v6 < v29)
        {
LABEL_58:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();

          return;
        }

        a1[2] = v29;
        specialized CGPoint.init(from:)(a1);
        v32 = a1[5];
        if (!*(v32 + 2))
        {
          goto LABEL_69;
        }

        v8 = v30;
        v9 = v31;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v33 = *(v32 + 2);
          if (!v33)
          {
            goto LABEL_55;
          }
        }

        else
        {
          v32 = specialized _ArrayBuffer._consumeAndCreateNew()(v32);
          v33 = *(v32 + 2);
          if (!v33)
          {
LABEL_55:
            __break(1u);
            break;
          }
        }

        v34 = v33 - 1;
        v6 = *&v32[8 * v34 + 32];
        *(v32 + 2) = v34;
        a1[5] = v32;
        a1[2] = v6;
        goto LABEL_4;
      }

      if (v10 >> 3 == 1)
      {
        if (v12 != 2)
        {
          goto LABEL_58;
        }

        v13 = a1[5];
        v14 = swift_isUniquelyReferenced_nonNull_native();
        if ((v14 & 1) == 0)
        {
          v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1, v13);
          v13 = v14;
        }

        v16 = *(v13 + 16);
        v15 = *(v13 + 24);
        if (v16 >= v15 >> 1)
        {
          v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v13);
          v13 = v14;
        }

        *(v13 + 16) = v16 + 1;
        *(v13 + 8 * v16 + 32) = v6;
        a1[5] = v13;
        v17 = ProtobufDecoder.decodeVarint()(v14);
        if (v2)
        {
          goto LABEL_59;
        }

        if (v17 < 0)
        {
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
          __break(1u);
          do
          {
            __break(1u);
            a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
            v37 = *(a2 + 2);
            if (v37)
            {
              goto LABEL_65;
            }

            __break(1u);
            a2 = a1[5];
          }

          while (!*(a2 + 2));
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v37 = *(a2 + 2);
            if (v37)
            {
LABEL_65:
              v38 = v37 - 1;
              v39 = *&a2[8 * v38 + 32];
              *(a2 + 2) = v38;

              a1[5] = a2;
              a1[2] = v39;
              return;
            }
          }

          else
          {
            a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
            v37 = *(a2 + 2);
            if (v37)
            {
              goto LABEL_65;
            }
          }

          __break(1u);
          return;
        }

        v18 = a1[1] + v17;
        if (v6 < v18)
        {
          goto LABEL_58;
        }

        a1[2] = v18;
        v19 = CodableResolvedStyledText.init(from:)(a1);
        v20 = a1[5];
        if (!*(v20 + 2))
        {
          goto LABEL_68;
        }

        v21 = v19;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v22 = *(v20 + 2);
          if (!v22)
          {
            goto LABEL_70;
          }
        }

        else
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
          v22 = *(v20 + 2);
          if (!v22)
          {
            goto LABEL_70;
          }
        }

        v23 = v22 - 1;
        v6 = *&v20[8 * v23 + 32];
        *(v20 + 2) = v23;

        a1[5] = v20;
        a1[2] = v6;
        v7 = v21;
        goto LABEL_4;
      }

      if ((v10 & 7) > 1)
      {
        if (v12 == 2)
        {
          v36 = ProtobufDecoder.decodeVarint()(v10);
          if (v2)
          {
            goto LABEL_59;
          }

          if (v36 < 0)
          {
            goto LABEL_71;
          }

          v35 = a1[1] + v36;
          if (v6 < v35)
          {
            goto LABEL_58;
          }
        }

        else
        {
          if (v12 != 5)
          {
            goto LABEL_58;
          }

          v35 = a1[1] + 4;
          if (v6 < v35)
          {
            goto LABEL_58;
          }
        }
      }

      else
      {
        if ((v10 & 7) == 0)
        {
          ProtobufDecoder.decodeVarint()(v10);
          if (v2)
          {
            goto LABEL_59;
          }

          goto LABEL_4;
        }

        if (v12 != 1)
        {
          goto LABEL_58;
        }

        v35 = a1[1] + 8;
        if (v6 < v35)
        {
          goto LABEL_58;
        }
      }

      a1[1] = v35;
LABEL_4:
      v5 = a1[1];
      if (v5 >= v6)
      {
        a1[3] = 0;
        if (!v7)
        {
          goto LABEL_57;
        }

        *a2 = v7;
        *(a2 + 1) = v8;
        *(a2 + 2) = v9;
        return;
      }
    }
  }

  a1[3] = 0;
LABEL_57:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
}

uint64_t CodableResolvedStyledText.init(from:)(void *a1)
{
  v187 = *MEMORY[0x1E69E9840];
  v149 = 1;
  v148 = 1;
  if (one-time initialization token for standard != -1)
  {
    swift_once();
  }

  LODWORD(v147) = static Text.Sizing.standard;
  v4 = qword_1ED5372E8;
  v6 = a1[1];
  v5 = a1[2];
  if (v6 >= v5)
  {
    a1[3] = 0;
    v18 = v4;

    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v7 = 0;
    LOBYTE(v5) = 1;
    v9 = 0;
    v10 = 1.0;
    LOBYTE(v6) = 1;
    v11 = 0;
    v29 = 1;
    v12 = 0;
    v30 = 2;
    v13 = 0;
    v14 = 0.0;
    v15 = 0;
    v16 = 1.0;
LABEL_6:
    *&v177 = v19;
    BYTE8(v177) = v5;
    *(&v177 + 9) = *v155;
    HIDWORD(v177) = *&v155[3];
    *&v178 = v20;
    BYTE8(v178) = v6;
    BYTE9(v178) = v29;
    BYTE10(v178) = v21;
    BYTE11(v178) = v22;
    BYTE12(v178) = v23;
    *(&v178 + 13) = v153;
    HIBYTE(v178) = v154;
    *&v179 = v10;
    *(&v179 + 1) = v9;
    *&v180 = v11;
    *(&v180 + 1) = v12;
    *&v181 = v13;
    *(&v181 + 1) = v14;
    LOBYTE(v182) = v24;
    BYTE1(v182) = v25;
    WORD3(v182) = v152;
    *(&v182 + 2) = v151;
    *(&v182 + 1) = v15;
    *&v183 = v16;
    BYTE8(v183) = v147;
    HIDWORD(v183) = *&v150[3];
    *(&v183 + 9) = *v150;
    *&v184 = v18;
    *(&v184 + 1) = v30;
    *&v185 = v26;
    *(&v185 + 1) = v27;
    v186 = v28;
    outlined destroy of TextLayoutProperties(&v177);

    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    swift_willThrow();

    return v7;
  }

  v140 = qword_1ED5372E8;

  v146 = 0;
  v142 = 0;
  v143 = 0;
  v137 = 0;
  v138 = 0;
  v139 = 0;
  v141 = 0uLL;
  v144 = 0;
  v7 = 0;
  v8 = 0;
  v135 = 0;
  v9 = 0;
  v10 = 1.0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0.0;
  v15 = 0;
  v16 = 1.0;
  v133 = 0;
  v134 = 0;
  v17 = MEMORY[0x1E69E7CC0];
  v136 = 1;
  v145 = 2;
  v131 = 0;
  v132 = 0;
  v129 = 0;
  v130 = 0;
  v127 = 0;
  v128 = 0;
  while (1)
  {
    v33 = a1[3];
    if (v33)
    {
      v34 = a1[4];
      if (v6 < v34)
      {
        goto LABEL_16;
      }

      if (v34 < v6)
      {
        goto LABEL_139;
      }

      a1[3] = 0;
    }

    v33 = ProtobufDecoder.decodeVarint()(v33);
    if (v1)
    {
      goto LABEL_140;
    }

    if (v33 < 8)
    {
      goto LABEL_139;
    }

LABEL_16:
    v35 = v33 >> 3;
    if (v33 >> 3 <= 5)
    {
      break;
    }

    if (v33 >> 3 <= 7)
    {
      if (v35 == 6)
      {
        if ((v33 & 7) != 2)
        {
          goto LABEL_150;
        }

        v6 = a1[5];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1, v6);
          v6 = isUniquelyReferenced_nonNull_native;
        }

        v2 = *(v6 + 16);
        v56 = *(v6 + 24);
        if (v2 >= v56 >> 1)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v2 + 1, 1, v6);
          v6 = isUniquelyReferenced_nonNull_native;
        }

        *(v6 + 16) = v2 + 1;
        *(v6 + 8 * v2 + 32) = v5;
        a1[5] = v6;
        v57 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
        if (v1)
        {
          goto LABEL_155;
        }

        if (v57 < 0)
        {
          goto LABEL_177;
        }

        v58 = a1[1] + v57;
        if (v5 < v58)
        {
          goto LABEL_154;
        }

        a1[2] = v58;
        ContentTransition.init(from:)(a1, &v156);
        v6 = a1[5];
        if (!*(v6 + 16))
        {
          goto LABEL_186;
        }

        v122 = 0;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v59 = *(v6 + 16);
          if (!v59)
          {
            goto LABEL_194;
          }
        }

        else
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
          v59 = *(v6 + 16);
          if (!v59)
          {
            goto LABEL_194;
          }
        }

        v123 = v8;
        v125 = v7;
        v60 = v59 - 1;
        v5 = *(v6 + 8 * v60 + 32);
        *(v6 + 16) = v60;
        a1[5] = v6;
        a1[2] = v5;
        v61 = v156;
        v62 = v17;
        v63 = BYTE12(v156);
        v2 = DWORD2(v156);
        v121 = BYTE13(v156);
        v64 = BYTE14(v156);
        v65 = v62;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v65 + 2) + 1, 1, v65);
        }

        v67 = *(v65 + 2);
        v66 = *(v65 + 3);
        if (v67 >= v66 >> 1)
        {
          v1 = 0;
          v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v67 + 1, 1, v65);
        }

        *(v65 + 2) = v67 + 1;
        v68 = &v65[16 * v67];
        *(v68 + 4) = v61;
        v69 = v2 | (v63 << 32);
        v17 = v65;
        *(v68 + 10) = v69;
        v68[44] = BYTE4(v69);
        v68[45] = v121;
        v68[46] = v64;
        v8 = v123;
        v7 = v125;
        goto LABEL_9;
      }

      if (v35 == 7)
      {
        if ((v33 & 7) != 0)
        {
          if ((v33 & 7) != 2)
          {
            goto LABEL_139;
          }

          v33 = ProtobufDecoder.decodeVarint()(v33);
          if (v1)
          {
LABEL_140:
            *&v177 = v146;
            BYTE8(v177) = v149;
            *(&v177 + 9) = *v155;
            HIDWORD(v177) = *&v155[3];
            *&v178 = v143;
            BYTE8(v178) = v148;
            BYTE9(v178) = v136;
            BYTE10(v178) = v137;
            BYTE11(v178) = v138;
            BYTE12(v178) = BYTE4(v138);
            *(&v178 + 13) = v153;
            HIBYTE(v178) = v154;
            *&v179 = v10;
            *(&v179 + 1) = v9;
            *&v180 = v11;
            *(&v180 + 1) = v12;
            *&v181 = v13;
            *(&v181 + 1) = v14;
            LOBYTE(v182) = v139;
            BYTE1(v182) = BYTE4(v139);
            *(&v182 + 2) = v151;
            WORD3(v182) = v152;
            *(&v182 + 1) = v15;
            *&v183 = v16;
            BYTE8(v183) = v147;
            *(&v183 + 9) = *v150;
            HIDWORD(v183) = *&v150[3];
            *&v184 = v140;
            *(&v184 + 1) = v145;
            v185 = v141;
            v186 = v144;
            outlined destroy of TextLayoutProperties(&v177);
          }

          else
          {
            if ((v33 & 0x8000000000000000) != 0)
            {
              goto LABEL_195;
            }

            v40 = a1[1] + v33;
            if (v5 >= v40)
            {
              a1[3] = 56;
              a1[4] = v40;
              goto LABEL_41;
            }

LABEL_139:
            *&v177 = v146;
            BYTE8(v177) = v149;
            *(&v177 + 9) = *v155;
            HIDWORD(v177) = *&v155[3];
            *&v178 = v143;
            BYTE8(v178) = v148;
            BYTE9(v178) = v136;
            BYTE10(v178) = v137;
            BYTE11(v178) = v138;
            BYTE12(v178) = BYTE4(v138);
            *(&v178 + 13) = v153;
            HIBYTE(v178) = v154;
            *&v179 = v10;
            *(&v179 + 1) = v9;
            *&v180 = v11;
            *(&v180 + 1) = v12;
            *&v181 = v13;
            *(&v181 + 1) = v14;
            LOBYTE(v182) = v139;
            BYTE1(v182) = BYTE4(v139);
            *(&v182 + 2) = v151;
            WORD3(v182) = v152;
            *(&v182 + 1) = v15;
            *&v183 = v16;
            BYTE8(v183) = v147;
            HIDWORD(v183) = *&v150[3];
            *(&v183 + 9) = *v150;
            *&v184 = v140;
            *(&v184 + 1) = v145;
            v185 = v141;
            v186 = v144;
            outlined destroy of TextLayoutProperties(&v177);
            lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
            swift_allocError();
            swift_willThrow();
          }

          goto LABEL_157;
        }

LABEL_41:
        v41 = ProtobufDecoder.decodeVarint()(v33);
        if (v1)
        {
          goto LABEL_140;
        }

        v135 = v41;
        goto LABEL_9;
      }

      goto LABEL_112;
    }

    if (v35 == 8)
    {
      if ((v33 & 7) != 2)
      {
        goto LABEL_150;
      }

      v6 = a1[5];
      v74 = swift_isUniquelyReferenced_nonNull_native();
      if ((v74 & 1) == 0)
      {
        v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1, v6);
        v6 = v74;
      }

      v2 = *(v6 + 16);
      v75 = *(v6 + 24);
      if (v2 >= v75 >> 1)
      {
        v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), v2 + 1, 1, v6);
        v6 = v74;
      }

      *(v6 + 16) = v2 + 1;
      *(v6 + 8 * v2 + 32) = v5;
      a1[5] = v6;
      v76 = ProtobufDecoder.decodeVarint()(v74);
      if (v1)
      {
LABEL_162:

        *&v177 = v146;
        BYTE8(v177) = v149;
        *(&v177 + 9) = *v155;
        HIDWORD(v177) = *&v155[3];
        *&v178 = v143;
        BYTE8(v178) = v148;
        BYTE9(v178) = v136;
        BYTE10(v178) = v137;
        BYTE11(v178) = v138;
        BYTE12(v178) = BYTE4(v138);
        *(&v178 + 13) = v153;
        HIBYTE(v178) = v154;
        *&v179 = v10;
        *(&v179 + 1) = v9;
        *&v180 = v11;
        *(&v180 + 1) = v12;
        *&v181 = v13;
        *(&v181 + 1) = v14;
        LOBYTE(v182) = v139;
        BYTE1(v182) = BYTE4(v139);
        *(&v182 + 2) = v151;
        WORD3(v182) = v152;
        *(&v182 + 1) = v15;
        *&v183 = v16;
        BYTE8(v183) = v147;
        *(&v183 + 9) = *v150;
        HIDWORD(v183) = *&v150[3];
        *&v184 = v140;
        *(&v184 + 1) = v145;
        v185 = v141;
        v186 = v144;
        outlined destroy of TextLayoutProperties(&v177);

        return v7;
      }

      if (v76 < 0)
      {
        goto LABEL_179;
      }

      v77 = a1[1] + v76;
      if (v5 < v77)
      {
        goto LABEL_150;
      }

      a1[2] = v77;
      v78 = CodableResolvedStyledText.init(from:)(a1);
      v6 = a1[5];
      if (!*(v6 + 16))
      {
        goto LABEL_188;
      }

      v79 = v78;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v80 = *(v6 + 16);
        if (!v80)
        {
          goto LABEL_191;
        }
      }

      else
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
        v80 = *(v6 + 16);
        if (!v80)
        {
          goto LABEL_191;
        }
      }

      v81 = v80 - 1;
      v5 = *(v6 + 8 * v81 + 32);
      *(v6 + 16) = v81;

      a1[5] = v6;
      a1[2] = v5;
      v8 = v79;
      goto LABEL_111;
    }

    if (v35 == 9)
    {
      if ((v33 & 7) != 2)
      {
        goto LABEL_150;
      }

      v6 = a1[5];
      v45 = swift_isUniquelyReferenced_nonNull_native();
      if ((v45 & 1) == 0)
      {
        v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1, v6);
        v6 = v45;
      }

      v2 = *(v6 + 16);
      v46 = *(v6 + 24);
      if (v2 >= v46 >> 1)
      {
        v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v2 + 1, 1, v6);
        v6 = v45;
      }

      *(v6 + 16) = v2 + 1;
      *(v6 + 8 * v2 + 32) = v5;
      a1[5] = v6;
      v47 = ProtobufDecoder.decodeVarint()(v45);
      if (v1)
      {
        goto LABEL_162;
      }

      if (v47 < 0)
      {
        goto LABEL_178;
      }

      v48 = a1[1] + v47;
      if (v5 < v48)
      {
LABEL_150:
        *&v177 = v146;
        BYTE8(v177) = v149;
        *(&v177 + 9) = *v155;
        HIDWORD(v177) = *&v155[3];
        *&v178 = v143;
        BYTE8(v178) = v148;
        BYTE9(v178) = v136;
        BYTE10(v178) = v137;
        BYTE11(v178) = v138;
        BYTE12(v178) = BYTE4(v138);
        *(&v178 + 13) = v153;
        HIBYTE(v178) = v154;
        *&v179 = v10;
        *(&v179 + 1) = v9;
        *&v180 = v11;
        *(&v180 + 1) = v12;
        *&v181 = v13;
        *(&v181 + 1) = v14;
        LOBYTE(v182) = v139;
        BYTE1(v182) = BYTE4(v139);
        *(&v182 + 2) = v151;
        WORD3(v182) = v152;
        *(&v182 + 1) = v15;
        *&v183 = v16;
        BYTE8(v183) = v147;
        HIDWORD(v183) = *&v150[3];
        *(&v183 + 9) = *v150;
        *&v184 = v140;
        *(&v184 + 1) = v145;
        v185 = v141;
        v186 = v144;
        outlined destroy of TextLayoutProperties(&v177);
LABEL_151:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
        goto LABEL_156;
      }

      a1[2] = v48;
      v49 = CodableResolvedStyledText.init(from:)(a1);
      v6 = a1[5];
      if (!*(v6 + 16))
      {
        goto LABEL_189;
      }

      v50 = v49;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v51 = *(v6 + 16);
        if (!v51)
        {
          goto LABEL_193;
        }
      }

      else
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
        v51 = *(v6 + 16);
        if (!v51)
        {
          goto LABEL_193;
        }
      }

      v52 = v51 - 1;
      v5 = *(v6 + 8 * v52 + 32);
      *(v6 + 16) = v52;

      a1[5] = v6;
      a1[2] = v5;
      v7 = v50;
LABEL_111:
      v1 = 0;
      goto LABEL_9;
    }

LABEL_112:
    v82 = v33 & 7;
    if (v82 > 1)
    {
      if (v82 == 2)
      {
        v84 = ProtobufDecoder.decodeVarint()(v33);
        if (v1)
        {
          goto LABEL_140;
        }

        if (v84 < 0)
        {
          goto LABEL_196;
        }

        v83 = a1[1] + v84;
        if (v5 < v83)
        {
          goto LABEL_139;
        }
      }

      else
      {
        if (v82 != 5)
        {
          goto LABEL_139;
        }

        v83 = a1[1] + 4;
        if (v5 < v83)
        {
          goto LABEL_139;
        }
      }
    }

    else
    {
      if ((v33 & 7) == 0)
      {
        ProtobufDecoder.decodeVarint()(v33);
        if (v1)
        {
          goto LABEL_140;
        }

        goto LABEL_9;
      }

      if (v82 != 1)
      {
        goto LABEL_139;
      }

      v83 = a1[1] + 8;
      if (v5 < v83)
      {
        goto LABEL_139;
      }
    }

    a1[1] = v83;
LABEL_9:
    v6 = a1[1];
    if (v6 >= v5)
    {
      a1[3] = 0;
      LOBYTE(v5) = v149;
      LOBYTE(v6) = v148;
      a1 = v142;
      if (!v142)
      {
        v28 = v144;
        v27 = *(&v141 + 1);
        v26 = v141;
        v18 = v140;
        v30 = v145;
        v19 = v146;
        v24 = v139;
        v25 = BYTE4(v139);
        v22 = v138;
        v23 = BYTE4(v138);
        v29 = v136;
        v21 = v137;
        v20 = v143;
        goto LABEL_6;
      }

      v122 = v17;
      *&v177 = v146;
      BYTE8(v177) = v149;
      *(&v177 + 9) = *v155;
      HIDWORD(v177) = *&v155[3];
      *&v178 = v143;
      BYTE8(v178) = v148;
      BYTE9(v178) = v136;
      BYTE10(v178) = v137;
      BYTE11(v178) = v138;
      BYTE12(v178) = BYTE4(v138);
      *(&v178 + 13) = v153;
      HIBYTE(v178) = v154;
      *&v179 = v10;
      *(&v179 + 1) = v9;
      *&v180 = v11;
      *(&v180 + 1) = v12;
      *&v181 = v13;
      *(&v181 + 1) = v14;
      LOBYTE(v2) = BYTE4(v139);
      LOBYTE(v182) = v139;
      BYTE1(v182) = BYTE4(v139);
      WORD3(v182) = v152;
      *(&v182 + 2) = v151;
      *(&v182 + 1) = v15;
      *&v183 = v16;
      BYTE8(v183) = v147;
      HIDWORD(v183) = *&v150[3];
      *(&v183 + 9) = *v150;
      *&v184 = v140;
      *(&v184 + 1) = v145;
      v185 = v141;
      v186 = v144;
      v85 = one-time initialization token for isArchived;
      v147 = v142;
      if (v85 != -1)
      {
        goto LABEL_197;
      }

      goto LABEL_144;
    }
  }

  if (v33 >> 3 > 2)
  {
    if (v35 == 3)
    {
      if ((v33 & 7) != 2)
      {
        goto LABEL_150;
      }

      v6 = a1[5];
      v70 = swift_isUniquelyReferenced_nonNull_native();
      if ((v70 & 1) == 0)
      {
        v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1, v6);
        v6 = v70;
      }

      v2 = *(v6 + 16);
      v71 = *(v6 + 24);
      if (v2 >= v71 >> 1)
      {
        v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v2 + 1, 1, v6);
        v6 = v70;
      }

      *(v6 + 16) = v2 + 1;
      *(v6 + 8 * v2 + 32) = v5;
      a1[5] = v6;
      v72 = ProtobufDecoder.decodeVarint()(v70);
      if (v1)
      {
        goto LABEL_155;
      }

      if (v72 < 0)
      {
        goto LABEL_180;
      }

      v73 = a1[1] + v72;
      if (v5 < v73)
      {
LABEL_154:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
LABEL_155:
        *&v177 = v146;
        BYTE8(v177) = v149;
        *(&v177 + 9) = *v155;
        HIDWORD(v177) = *&v155[3];
        *&v178 = v143;
        BYTE8(v178) = v148;
        BYTE9(v178) = v136;
        BYTE10(v178) = v137;
        BYTE11(v178) = v138;
        BYTE12(v178) = BYTE4(v138);
        *(&v178 + 13) = v153;
        HIBYTE(v178) = v154;
        *&v179 = v10;
        *(&v179 + 1) = v9;
        *&v180 = v11;
        *(&v180 + 1) = v12;
        *&v181 = v13;
        *(&v181 + 1) = v14;
        LOBYTE(v182) = v139;
        BYTE1(v182) = BYTE4(v139);
        *(&v182 + 2) = v151;
        WORD3(v182) = v152;
        *(&v182 + 1) = v15;
        *&v183 = v16;
        BYTE8(v183) = v147;
        *(&v183 + 9) = *v150;
        HIDWORD(v183) = *&v150[3];
        *&v184 = v140;
        *(&v184 + 1) = v145;
        v185 = v141;
        v186 = v144;
        outlined destroy of TextLayoutProperties(&v177);
LABEL_156:

LABEL_157:

        return v7;
      }

      a1[2] = v73;
      v156 = 0u;
      v157 = 0u;
      closure #1 in EdgeInsets.init(from:)(&v156, a1, v176);
      v6 = a1[5];
      if (!*(v6 + 16))
      {
        goto LABEL_185;
      }

      v129 = *(&v156 + 1);
      v130 = v156;
      v127 = *(&v157 + 1);
      v128 = v157;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v31 = *(v6 + 16);
        if (!v31)
        {
          goto LABEL_190;
        }
      }

      else
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
        v31 = *(v6 + 16);
        if (!v31)
        {
          goto LABEL_190;
        }
      }

      goto LABEL_8;
    }

    if (v35 == 5)
    {
      *&v177 = v146;
      BYTE8(v177) = v149;
      *(&v177 + 9) = *v155;
      HIDWORD(v177) = *&v155[3];
      *&v178 = v143;
      BYTE8(v178) = v148;
      BYTE9(v178) = v136;
      BYTE10(v178) = v137;
      BYTE11(v178) = v138;
      BYTE12(v178) = BYTE4(v138);
      *(&v178 + 13) = v153;
      HIBYTE(v178) = v154;
      *&v179 = v10;
      *(&v179 + 1) = v9;
      *&v180 = v11;
      *(&v180 + 1) = v12;
      *&v181 = v13;
      *(&v181 + 1) = v14;
      LOBYTE(v182) = v139;
      BYTE1(v182) = BYTE4(v139);
      *(&v182 + 2) = v151;
      WORD3(v182) = v152;
      *(&v182 + 1) = v15;
      *&v183 = v16;
      BYTE8(v183) = v147;
      HIDWORD(v183) = *&v150[3];
      *(&v183 + 9) = *v150;
      *&v184 = v140;
      *(&v184 + 1) = v145;
      v185 = v141;
      v186 = v144;
      v42 = v33;
      outlined destroy of TextLayoutProperties(&v177);
      if ((v42 & 7) != 2)
      {
        goto LABEL_151;
      }

      ProtobufDecoder.beginMessage()();
      if (v1)
      {
        goto LABEL_156;
      }

      TextLayoutProperties.init(from:)(a1, &v156);
      v6 = a1[5];
      if (!*(v6 + 16))
      {
        goto LABEL_182;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v43 = *(v6 + 16);
        if (!v43)
        {
          goto LABEL_183;
        }
      }

      else
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
        v43 = *(v6 + 16);
        if (!v43)
        {
          goto LABEL_183;
        }
      }

      v44 = v43 - 1;
      v5 = *(v6 + 8 * v44 + 32);
      *(v6 + 16) = v44;
      a1[5] = v6;
      a1[2] = v5;
      v146 = v156;
      *v155 = *(&v156 + 9);
      *&v155[3] = HIDWORD(v156);
      v143 = v157;
      v136 = BYTE9(v157);
      v137 = BYTE10(v157);
      LOBYTE(v138) = BYTE11(v157);
      BYTE4(v138) = BYTE12(v157);
      v154 = HIBYTE(v157);
      v153 = *(&v157 + 13);
      v10 = v158;
      v9 = v159;
      v11 = v160;
      v12 = v161;
      v13 = v162;
      v14 = v163;
      LOBYTE(v139) = v164;
      BYTE4(v139) = v165;
      v152 = v167;
      v151 = v166;
      v15 = v168;
      v16 = v169;
      LODWORD(v147) = v170;
      *&v150[3] = *&v171[3];
      *v150 = *v171;
      v145 = v173;
      v140 = v172;
      v141 = v174;
      v144 = v175;
      v149 = BYTE8(v156);
      v148 = BYTE8(v157);
      goto LABEL_9;
    }

    goto LABEL_112;
  }

  if (v35 == 1)
  {
    if ((v33 & 7) != 2)
    {
      goto LABEL_150;
    }

    ProtobufDecoder.beginMessage()();
    if (v1)
    {
      goto LABEL_155;
    }

    CodableAttributedString.init(from:)(a1, &v156);
    v6 = a1[5];
    if (!*(v6 + 16))
    {
      goto LABEL_181;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v53 = *(v6 + 16);
      if (!v53)
      {
        goto LABEL_184;
      }
    }

    else
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
      v53 = *(v6 + 16);
      if (!v53)
      {
        goto LABEL_184;
      }
    }

    v54 = v53 - 1;
    v5 = *(v6 + 8 * v54 + 32);
    *(v6 + 16) = v54;

    a1[5] = v6;
    a1[2] = v5;
    v142 = v156;
    goto LABEL_9;
  }

  if (v35 != 2)
  {
    goto LABEL_112;
  }

  if ((v33 & 7) != 2)
  {
    goto LABEL_150;
  }

  v6 = a1[5];
  v36 = swift_isUniquelyReferenced_nonNull_native();
  if ((v36 & 1) == 0)
  {
    v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1, v6);
    v6 = v36;
  }

  v2 = *(v6 + 16);
  v37 = *(v6 + 24);
  if (v2 >= v37 >> 1)
  {
    v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v2 + 1, 1, v6);
    v6 = v36;
  }

  *(v6 + 16) = v2 + 1;
  *(v6 + 8 * v2 + 32) = v5;
  a1[5] = v6;
  v38 = ProtobufDecoder.decodeVarint()(v36);
  if (v1)
  {
    goto LABEL_155;
  }

  if ((v38 & 0x8000000000000000) == 0)
  {
    v39 = a1[1] + v38;
    if (v5 < v39)
    {
      goto LABEL_154;
    }

    a1[2] = v39;
    v156 = 0u;
    v157 = 0u;
    closure #1 in EdgeInsets.init(from:)(&v156, a1, v176);
    v6 = a1[5];
    if (!*(v6 + 16))
    {
      goto LABEL_187;
    }

    v133 = *(&v156 + 1);
    v134 = v156;
    v131 = *(&v157 + 1);
    v132 = v157;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v31 = *(v6 + 16);
      if (!v31)
      {
        goto LABEL_192;
      }
    }

    else
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
      v31 = *(v6 + 16);
      if (!v31)
      {
        goto LABEL_192;
      }
    }

LABEL_8:
    v1 = 0;
    v32 = v31 - 1;
    v5 = *(v6 + 8 * v32 + 32);
    *(v6 + 16) = v32;
    a1[5] = v6;
    a1[2] = v5;
    goto LABEL_9;
  }

  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  swift_once();
LABEL_144:
  v126 = v7;
  v86 = static ArchivedViewInput.Value.isArchived;
  v87 = HIBYTE(static ArchivedViewInput.Value.isArchived);
  if ((v2 & 1) != 0 || (v135 & 0xD8) != 0 || v145 != 2)
  {
    type metadata accessor for ResolvedStyledText.TextLayoutManager();
    v7 = swift_allocObject();
    *(v7 + 416) = MEMORY[0x1E69E7CC0];
    *(v7 + 424) = 0u;
    *(v7 + 440) = 0u;
    *(v7 + 456) = 0u;
    *(v7 + 472) = 0u;
    *(v7 + 488) = 512;
    v124 = v8;
    if ((v5 & 1) != 0 || v146 != 1)
    {
      NSAttributedString.replacingLineBreakModes(_:)(0);
      v91 = v93;
      v92 = v93;
    }

    else
    {
      v91 = v147;
      v92 = a1;
    }

    v94 = [objc_allocWithZone(MEMORY[0x1E69DB828]) init];
    v95 = [objc_allocWithZone(type metadata accessor for ResolvedStyledText.TextLayoutManager.Delegate()) init];
    [v94 setDelegate_];
    [v94 setUsesFontLeading_];
    v96 = v94;
    v97 = v91;
    ResolvedStyledText.TextLayoutManager.LayoutManager.init(layoutManager:original:)(v96, v92, v176);
    v98 = v176[3];
    *(v7 + 528) = v176[2];
    *(v7 + 544) = v98;
    *(v7 + 560) = v176[4];
    v99 = v176[1];
    *(v7 + 496) = v176[0];
    *(v7 + 512) = v99;
    *(v7 + 576) = v95;
    *(v7 + 352) = 0u;
    *(v7 + 368) = 0u;
    *(v7 + 384) = 0;
    *(v7 + 392) = 0x8000000000000000;
    *(v7 + 400) = 0;
    v100 = MEMORY[0x1E69E7CC0];
    *(v7 + 408) = MEMORY[0x1E69E7CC0];
    *(v7 + 200) = 0;
    *(v7 + 208) = 1;
    *(v7 + 216) = v92;
    *(v7 + 224) = v134;
    *(v7 + 232) = v133;
    *(v7 + 240) = v132;
    *(v7 + 248) = v131;
    *(v7 + 256) = v86;
    *(v7 + 257) = v87;
    *(v7 + 260) = v135;
    *(v7 + 264) = v100;
    *(v7 + 272) = v122;
    v101 = v184;
    *(v7 + 112) = v183;
    *(v7 + 128) = v101;
    *(v7 + 144) = v185;
    *(v7 + 160) = v186;
    v102 = v180;
    *(v7 + 48) = v179;
    *(v7 + 64) = v102;
    v103 = v182;
    *(v7 + 80) = v181;
    *(v7 + 96) = v103;
    v104 = v178;
    *(v7 + 16) = v177;
    *(v7 + 32) = v104;
    *(v7 + 312) = 0u;
    *(v7 + 328) = 0u;
    *(v7 + 280) = 0u;
    *(v7 + 296) = 0u;
    *(v7 + 344) = 1;
    *(v7 + 168) = v130;
    *(v7 + 176) = v129;
    *(v7 + 184) = v128;
    *(v7 + 192) = v127;
    swift_beginAccess();
    v105 = *(v7 + 97);
    v106 = v95;
    outlined init with copy of TextLayoutProperties(&v177, &v156);

    v107 = _TextContainer(v105);
    [v107 setLineFragmentPadding_];
    [v96 setTextContainer_];
    if ((v135 & 0xC0) != 0)
    {
      _NSTextLayoutManagerRequiresCTLine(v96);
    }

    outlined destroy of TextLayoutProperties(&v177);
    v89 = v147;

    v8 = v124;
  }

  else
  {
    type metadata accessor for ResolvedStyledText.StringDrawing();
    v7 = swift_allocObject();
    v88 = 1;
    v89 = v147;
    if ((v144 & 1) == 0)
    {
      if (NSAttributedString.isDynamic.getter())
      {
        v88 = v86 & 1;
      }

      else
      {
        v88 = 0;
      }

      a1 = v142;
    }

    LOBYTE(v176[0]) = v6 & 1;
    *(v7 + 352) = 0;
    *(v7 + 360) = v147;
    *(v7 + 368) = v146;
    *(v7 + 376) = v5 & 1;
    *(v7 + 384) = v143;
    *(v7 + 392) = v6 & 1;
    *(v7 + 400) = v10;
    *(v7 + 408) = v15;
    *(v7 + 416) = v16;
    *(v7 + 424) = v88;
    *(v7 + 425) = v14 != 0.0;
    *(v7 + 426) = 0;
    v108 = MEMORY[0x1E69E7CC0];
    *(v7 + 432) = MEMORY[0x1E69E7CC0];
    *(v7 + 200) = 0;
    *(v7 + 208) = 1;
    LOBYTE(v156) = 1;
    *(v7 + 216) = a1;
    *(v7 + 224) = v134;
    *(v7 + 232) = v133;
    *(v7 + 240) = v132;
    *(v7 + 248) = v131;
    *(v7 + 256) = v86;
    *(v7 + 257) = v87;
    *(v7 + 258) = 0;
    *(v7 + 260) = v135;
    *(v7 + 264) = v108;
    *(v7 + 272) = v122;
    v109 = v178;
    *(v7 + 16) = v177;
    *(v7 + 32) = v109;
    v110 = v179;
    v111 = v180;
    v112 = v182;
    *(v7 + 80) = v181;
    *(v7 + 96) = v112;
    *(v7 + 48) = v110;
    *(v7 + 64) = v111;
    v113 = v183;
    v114 = v184;
    v115 = v185;
    *(v7 + 160) = v186;
    *(v7 + 128) = v114;
    *(v7 + 144) = v115;
    *(v7 + 112) = v113;
    *(v7 + 312) = 0u;
    *(v7 + 328) = 0u;
    *(v7 + 280) = 0u;
    *(v7 + 296) = 0u;
    *(v7 + 344) = 1;
    *(v7 + 168) = v130;
    *(v7 + 176) = v129;
    *(v7 + 184) = v128;
    *(v7 + 192) = v127;
    v116 = v147;
  }

  if (v8)
  {

    ResolvedStyledText.smallerSizeVariant.setter(v117, v118);
  }

  if (v126)
  {

    ResolvedStyledText.largerSizeVariant.setter(v119, v120);
  }

  return v7;
}

id specialized CodableNSParagraphStyle.init(from:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v3 setHorizontalAlignment_];
  [v3 setLineBreakMode_];
  [v3 setLineBreakStrategy_];
  [v3 setAllowsDefaultTighteningForTruncation_];
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v52 = *(a1 + 32);
  [v3 setCompositionLanguage_];
  if (v4 >= v6)
  {
    *(a1 + 24) = 0;
    return v3;
  }

  v53 = 0;
  HIDWORD(v7) = DWORD1(v52);
  v8 = v52;
  LODWORD(v52) = 1;
LABEL_3:
  v9 = v5;
  while (v9)
  {
    if (v4 >= v8)
    {
      if (v8 < v4)
      {
        goto LABEL_172;
      }

      *(a1 + 24) = 0;
      break;
    }

    v5 = v9;
LABEL_12:
    v10 = v9 & 7;
    switch(v9 >> 3)
    {
      case 1uLL:
        if ((v9 & 7) == 0)
        {
          goto LABEL_168;
        }

        if (v10 != 2)
        {
          goto LABEL_172;
        }

        v9 = ProtobufDecoder.decodeVarint()(v9);
        if (v1)
        {
          goto LABEL_173;
        }

        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_197;
        }

        v8 = (*(a1 + 8) + v9);
        if (v6 < v8)
        {
          goto LABEL_172;
        }

        *(a1 + 24) = 8;
        *(a1 + 32) = v8;
        v5 = 8;
LABEL_168:
        v48 = ProtobufDecoder.decodeVarint()(v9);
        if (v1)
        {
          goto LABEL_173;
        }

        LODWORD(v52) = 0;
        v53 = v48;
        v4 = *(a1 + 8);
        if (v4 < v6)
        {
          goto LABEL_3;
        }

        *(a1 + 24) = 0;
        goto LABEL_176;
      case 2uLL:
        if ((v9 & 7) == 0)
        {
          goto LABEL_19;
        }

        if (v10 != 2)
        {
          goto LABEL_172;
        }

        v9 = ProtobufDecoder.decodeVarint()(v9);
        if (v1)
        {
          goto LABEL_173;
        }

        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_186;
        }

        v8 = (*(a1 + 8) + v9);
        if (v6 < v8)
        {
          goto LABEL_172;
        }

        *(a1 + 24) = 16;
        *(a1 + 32) = v8;
        v5 = 16;
LABEL_19:
        v11 = ProtobufDecoder.decodeVarint()(v9);
        if (v1)
        {
          goto LABEL_173;
        }

        if (v11 < 0)
        {
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
          JUMPOUT(0x18D355C18);
        }

        v12 = 0;
        [v3 setLineBreakMode_];
LABEL_152:
        v1 = v12;
        goto LABEL_153;
      case 3uLL:
        if ((v9 & 7) == 0)
        {
          goto LABEL_56;
        }

        if (v10 != 2)
        {
          goto LABEL_172;
        }

        v9 = ProtobufDecoder.decodeVarint()(v9);
        if (v1)
        {
          goto LABEL_173;
        }

        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_188;
        }

        v8 = (*(a1 + 8) + v9);
        if (v6 < v8)
        {
          goto LABEL_172;
        }

        *(a1 + 24) = 24;
        *(a1 + 32) = v8;
        v5 = 24;
LABEL_56:
        v17 = ProtobufDecoder.decodeVarint()(v9);
        v12 = v1;
        if (v1)
        {
          goto LABEL_173;
        }

        [v3 setLineBreakStrategy_];
        goto LABEL_152;
      case 4uLL:
        if (v10 == 5)
        {
          v33 = *(a1 + 8);
          if (v6 < (v33 + 1))
          {
            goto LABEL_172;
          }

          v12 = v1;
          v34 = *v33;
          *(a1 + 8) = v33 + 1;
          v28 = v34;
        }

        else
        {
          if (v10 == 2)
          {
            v27 = ProtobufDecoder.decodeVarint()(v9);
            if (v1)
            {
              goto LABEL_173;
            }

            if (v27 < 0)
            {
              goto LABEL_195;
            }

            v16 = *(a1 + 8);
            v8 = v16 + v27;
            if (v6 < v16 + v27)
            {
              goto LABEL_172;
            }

            *(a1 + 24) = 33;
            *(a1 + 32) = v8;
            v5 = 33;
          }

          else
          {
            if (v10 != 1)
            {
              goto LABEL_172;
            }

            v16 = *(a1 + 8);
          }

          if (v6 < (v16 + 1))
          {
            goto LABEL_172;
          }

          v12 = v1;
          v28 = *v16;
          *(a1 + 8) = v16 + 1;
        }

        [v3 setLineSpacing_];
        goto LABEL_152;
      case 5uLL:
        if (v10 == 5)
        {
          v45 = *(a1 + 8);
          if (v6 < (v45 + 1))
          {
            goto LABEL_172;
          }

          v12 = v1;
          v46 = *v45;
          *(a1 + 8) = v45 + 1;
          v40 = v46;
        }

        else
        {
          if (v10 == 2)
          {
            v39 = ProtobufDecoder.decodeVarint()(v9);
            if (v1)
            {
              goto LABEL_173;
            }

            if (v39 < 0)
            {
              goto LABEL_194;
            }

            v23 = *(a1 + 8);
            v8 = v23 + v39;
            if (v6 < v23 + v39)
            {
              goto LABEL_172;
            }

            *(a1 + 24) = 41;
            *(a1 + 32) = v8;
            v5 = 41;
          }

          else
          {
            if (v10 != 1)
            {
              goto LABEL_172;
            }

            v23 = *(a1 + 8);
          }

          if (v6 < (v23 + 1))
          {
            goto LABEL_172;
          }

          v12 = v1;
          v40 = *v23;
          *(a1 + 8) = v23 + 1;
        }

        [v3 setLineHeightMultiple_];
        goto LABEL_152;
      case 6uLL:
        if (v10 == 5)
        {
          v43 = *(a1 + 8);
          if (v6 < (v43 + 1))
          {
            goto LABEL_172;
          }

          v12 = v1;
          v44 = *v43;
          *(a1 + 8) = v43 + 1;
          v36 = v44;
        }

        else
        {
          if (v10 == 2)
          {
            v35 = ProtobufDecoder.decodeVarint()(v9);
            if (v1)
            {
              goto LABEL_173;
            }

            if (v35 < 0)
            {
              goto LABEL_192;
            }

            v22 = *(a1 + 8);
            v8 = v22 + v35;
            if (v6 < v22 + v35)
            {
              goto LABEL_172;
            }

            *(a1 + 24) = 49;
            *(a1 + 32) = v8;
            v5 = 49;
          }

          else
          {
            if (v10 != 1)
            {
              goto LABEL_172;
            }

            v22 = *(a1 + 8);
          }

          if (v6 < (v22 + 1))
          {
            goto LABEL_172;
          }

          v12 = v1;
          v36 = *v22;
          *(a1 + 8) = v22 + 1;
        }

        [v3 setMaximumLineHeight_];
        goto LABEL_152;
      case 7uLL:
        if (v10 == 5)
        {
          v37 = *(a1 + 8);
          if (v6 < (v37 + 1))
          {
            goto LABEL_172;
          }

          v12 = v1;
          v38 = *v37;
          *(a1 + 8) = v37 + 1;
          v30 = v38;
        }

        else
        {
          if (v10 == 2)
          {
            v29 = ProtobufDecoder.decodeVarint()(v9);
            if (v1)
            {
              goto LABEL_173;
            }

            if (v29 < 0)
            {
              goto LABEL_191;
            }

            v18 = *(a1 + 8);
            v8 = v18 + v29;
            if (v6 < v18 + v29)
            {
              goto LABEL_172;
            }

            *(a1 + 24) = 57;
            *(a1 + 32) = v8;
            v5 = 57;
          }

          else
          {
            if (v10 != 1)
            {
              goto LABEL_172;
            }

            v18 = *(a1 + 8);
          }

          if (v6 < (v18 + 1))
          {
            goto LABEL_172;
          }

          v12 = v1;
          v30 = *v18;
          *(a1 + 8) = v18 + 1;
        }

        [v3 setMinimumLineHeight_];
        goto LABEL_152;
      case 8uLL:
        if (v10 == 2)
        {
          v26 = ProtobufDecoder.decodeVarint()(v9);
          if (v1)
          {
            goto LABEL_173;
          }

          if (v26 < 0)
          {
            goto LABEL_189;
          }

          v19 = *(a1 + 8);
          v8 = v19 + v26;
          if (v6 < v19 + v26)
          {
            goto LABEL_172;
          }

          *(a1 + 24) = 69;
          *(a1 + 32) = v8;
          v5 = 69;
        }

        else
        {
          if (v10 != 5)
          {
            goto LABEL_172;
          }

          v19 = *(a1 + 8);
        }

        if (v6 < (v19 + 1))
        {
          goto LABEL_172;
        }

        LODWORD(v7) = *v19;
        *(a1 + 8) = v19 + 1;
        v12 = v1;
        [v3 setHyphenationFactor_];
        goto LABEL_152;
      case 9uLL:
        if ((v9 & 7) == 0)
        {
          goto LABEL_44;
        }

        if (v10 != 2)
        {
          goto LABEL_172;
        }

        v9 = ProtobufDecoder.decodeVarint()(v9);
        if (v1)
        {
          goto LABEL_173;
        }

        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_184;
        }

        v8 = (*(a1 + 8) + v9);
        if (v6 < v8)
        {
          goto LABEL_172;
        }

        *(a1 + 24) = 72;
        *(a1 + 32) = v8;
        v5 = 72;
LABEL_44:
        v15 = ProtobufDecoder.decodeVarint()(v9);
        v12 = v1;
        if (v1)
        {
          goto LABEL_173;
        }

        [v3 setAllowsDefaultTighteningForTruncation_];
        goto LABEL_152;
      case 0xAuLL:
        if ((v9 & 7) == 0)
        {
          goto LABEL_75;
        }

        if (v10 != 2)
        {
          goto LABEL_172;
        }

        v9 = ProtobufDecoder.decodeVarint()(v9);
        if (v1)
        {
          goto LABEL_173;
        }

        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_187;
        }

        v8 = (*(a1 + 8) + v9);
        if (v6 < v8)
        {
          goto LABEL_172;
        }

        *(a1 + 24) = 80;
        *(a1 + 32) = v8;
        v5 = 80;
LABEL_75:
        v21 = ProtobufDecoder.decodeVarint()(v9);
        v12 = v1;
        if (v1)
        {
          goto LABEL_173;
        }

        [v3 setBaseWritingDirection_];
        goto LABEL_152;
      case 0xBuLL:
        if ((v9 & 7) == 0)
        {
          goto LABEL_36;
        }

        if (v10 != 2)
        {
          goto LABEL_172;
        }

        v9 = ProtobufDecoder.decodeVarint()(v9);
        if (v1)
        {
          goto LABEL_173;
        }

        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_183;
        }

        v8 = (*(a1 + 8) + v9);
        if (v6 < v8)
        {
          goto LABEL_172;
        }

        *(a1 + 24) = 88;
        *(a1 + 32) = v8;
        v5 = 88;
LABEL_36:
        v14 = ProtobufDecoder.decodeVarint()(v9);
        v12 = v1;
        if (v1)
        {
          goto LABEL_173;
        }

        [v3 setSpansAllLines_];
        goto LABEL_152;
      case 0xCuLL:
        if ((v9 & 7) == 0)
        {
          goto LABEL_28;
        }

        if (v10 != 2)
        {
          goto LABEL_172;
        }

        v9 = ProtobufDecoder.decodeVarint()(v9);
        if (v1)
        {
          goto LABEL_173;
        }

        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_190;
        }

        v8 = (*(a1 + 8) + v9);
        if (v6 < v8)
        {
          goto LABEL_172;
        }

        *(a1 + 24) = 96;
        *(a1 + 32) = v8;
        v5 = 96;
LABEL_28:
        v13 = ProtobufDecoder.decodeVarint()(v9);
        v12 = v1;
        if (v1)
        {
          goto LABEL_173;
        }

        [v3 &selRef_boundingRect + 7];
        goto LABEL_152;
      case 0xDuLL:
        if ((v9 & 7) == 0)
        {
          goto LABEL_91;
        }

        if (v10 != 2)
        {
          goto LABEL_172;
        }

        v9 = ProtobufDecoder.decodeVarint()(v9);
        if (v1)
        {
          goto LABEL_173;
        }

        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_185;
        }

        v8 = (*(a1 + 8) + v9);
        if (v6 < v8)
        {
          goto LABEL_172;
        }

        *(a1 + 24) = 104;
        *(a1 + 32) = v8;
        v5 = 104;
LABEL_91:
        v24 = ProtobufDecoder.decodeVarint()(v9);
        v12 = v1;
        if (v1)
        {
          goto LABEL_173;
        }

        [v3 setBaselineIntervalType_];
        goto LABEL_152;
      case 0xEuLL:
        if (v10 == 5)
        {
          v41 = *(a1 + 8);
          if (v6 < (v41 + 1))
          {
            goto LABEL_172;
          }

          v12 = v1;
          v42 = *v41;
          *(a1 + 8) = v41 + 1;
          v32 = v42;
        }

        else
        {
          if (v10 == 2)
          {
            v31 = ProtobufDecoder.decodeVarint()(v9);
            if (v1)
            {
              goto LABEL_173;
            }

            if (v31 < 0)
            {
              goto LABEL_193;
            }

            v20 = *(a1 + 8);
            v8 = v20 + v31;
            if (v6 < v20 + v31)
            {
              goto LABEL_172;
            }

            *(a1 + 24) = 113;
            *(a1 + 32) = v8;
            v5 = 113;
          }

          else
          {
            if (v10 != 1)
            {
              goto LABEL_172;
            }

            v20 = *(a1 + 8);
          }

          if (v6 < (v20 + 1))
          {
            goto LABEL_172;
          }

          v12 = v1;
          v32 = *v20;
          *(a1 + 8) = v20 + 1;
        }

        [v3 setBaselineInterval_];
        goto LABEL_152;
      default:
        if ((v9 & 7) > 1)
        {
          if (v10 == 2)
          {
            v47 = ProtobufDecoder.decodeVarint()(v9);
            if (v1)
            {
              goto LABEL_173;
            }

            if (v47 < 0)
            {
              goto LABEL_196;
            }

            v25 = *(a1 + 8) + v47;
          }

          else
          {
            if (v10 != 5)
            {
              goto LABEL_172;
            }

            v25 = *(a1 + 8) + 4;
          }

          if (v6 < v25)
          {
            goto LABEL_172;
          }

          goto LABEL_161;
        }

        if ((v9 & 7) != 0)
        {
          if (v10 != 1)
          {
            goto LABEL_172;
          }

          v25 = *(a1 + 8) + 8;
          if (v6 < v25)
          {
            goto LABEL_172;
          }

LABEL_161:
          *(a1 + 8) = v25;
          goto LABEL_153;
        }

        ProtobufDecoder.decodeVarint()(v9);
        if (v1)
        {
          goto LABEL_173;
        }

LABEL_153:
        v4 = *(a1 + 8);
        v9 = v5;
        if (v4 >= v6)
        {
          *(a1 + 24) = 0;
          if ((v52 & 1) == 0)
          {
LABEL_176:
            v50 = 2;
            if (v53 == 1)
            {
              v50 = 3;
            }

            if (v53 == 2)
            {
              v51 = 4;
            }

            else
            {
              v51 = v50;
            }

            [v3 setHorizontalAlignment_];
            [v3 setFullyJustified_];
          }

          return v3;
        }

        break;
    }
  }

  v9 = ProtobufDecoder.decodeVarint()(v9);
  if (v1)
  {
    goto LABEL_173;
  }

  if (v9 >= 8)
  {
    v5 = 0;
    goto LABEL_12;
  }

LABEL_172:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
LABEL_173:

  return v3;
}

uint64_t NamedImage.Cache.__deallocating_deinit()
{

  outlined destroy of NamedImage.Cache.Data((v0 + 32));

  return swift_deallocClassInstance();
}

void DisplayList.init(from:)(id *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[1];
  v6 = a1[2];
  v7 = MEMORY[0x1E69E7CC0];
  if (v5 >= v6)
  {
LABEL_45:
    a1[3] = 0;
    DisplayList.init(_:)(v7, v35);
    v25 = WORD4(v35[0]);
    v26 = HIDWORD(v35[0]);
    *a2 = *&v35[0];
    *(a2 + 8) = v25;
    *(a2 + 12) = v26;
    return;
  }

  while (1)
  {
    v8 = a1[3];
    if (v8)
    {
      v9 = a1[4];
      if (v5 < v9)
      {
        goto LABEL_11;
      }

      if (v9 < v5)
      {
        goto LABEL_46;
      }

      a1[3] = 0;
    }

    v8 = ProtobufDecoder.decodeVarint()(v8);
    if (v2)
    {
      goto LABEL_47;
    }

    if (v8 < 8)
    {
LABEL_46:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
LABEL_47:

      return;
    }

LABEL_11:
    if ((v8 & 0xFFFFFFFFFFFFFFF8) != 8)
    {
      v22 = v8 & 7;
      if (v22 > 1)
      {
        if (v22 == 2)
        {
          v24 = ProtobufDecoder.decodeVarint()(v8);
          if (v2)
          {
            goto LABEL_47;
          }

          if (v24 < 0)
          {
            goto LABEL_52;
          }

          v23 = a1[1] + v24;
          if (v6 < v23)
          {
            goto LABEL_46;
          }
        }

        else
        {
          if (v22 != 5)
          {
            goto LABEL_46;
          }

          v23 = a1[1] + 4;
          if (v6 < v23)
          {
            goto LABEL_46;
          }
        }
      }

      else
      {
        if ((v8 & 7) == 0)
        {
          ProtobufDecoder.decodeVarint()(v8);
          if (v2)
          {
            goto LABEL_47;
          }

          goto LABEL_4;
        }

        if (v22 != 1)
        {
          goto LABEL_46;
        }

        v23 = a1[1] + 8;
        if (v6 < v23)
        {
          goto LABEL_46;
        }
      }

      a1[1] = v23;
      goto LABEL_4;
    }

    if ((v8 & 7) != 2)
    {
      goto LABEL_46;
    }

    v10 = a1[5];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
      v10 = isUniquelyReferenced_nonNull_native;
    }

    v13 = *(v10 + 2);
    v12 = *(v10 + 3);
    if (v13 >= v12 >> 1)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
      v10 = isUniquelyReferenced_nonNull_native;
    }

    *(v10 + 2) = v13 + 1;
    *&v10[8 * v13 + 32] = v6;
    a1[5] = v10;
    v14 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
    if (v2)
    {
      goto LABEL_47;
    }

    if (v14 < 0)
    {
      break;
    }

    v15 = a1[1] + v14;
    if (v6 < v15)
    {
      goto LABEL_46;
    }

    a1[2] = v15;
    DisplayList.Item.init(from:)(a1, v35);
    v16 = a1[5];
    if (!*(v16 + 2))
    {
      goto LABEL_50;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v17 = *(v16 + 2);
      if (!v17)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
      v17 = *(v16 + 2);
      if (!v17)
      {
        goto LABEL_51;
      }
    }

    v18 = v17 - 1;
    v6 = *&v16[8 * v18 + 32];
    *(v16 + 2) = v18;
    a1[5] = v16;
    a1[2] = v6;
    v33 = v35[2];
    *v34 = v36[0];
    *&v34[12] = *(v36 + 12);
    v31 = v35[0];
    v32 = v35[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    }

    v20 = *(v7 + 2);
    v19 = *(v7 + 3);
    if (v20 >= v19 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v7);
    }

    *(v7 + 2) = v20 + 1;
    v21 = &v7[80 * v20];
    *(v21 + 2) = v31;
    *(v21 + 92) = *&v34[12];
    *(v21 + 4) = v33;
    *(v21 + 5) = *v34;
    *(v21 + 3) = v32;
LABEL_4:
    v5 = a1[1];
    if (v5 >= v6)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  __break(1u);
  v29 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v30 = *(v29 + 2);
  if (v30)
  {
    v27 = v30 - 1;
    v28 = *&v29[8 * v27 + 32];
    *(v29 + 2) = v27;

    a1[5] = v29;
    a1[2] = v28;
  }

  else
  {
    __break(1u);
  }
}

void specialized Path.init(from:)(id *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = *MEMORY[0x1E69E9840];
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v8 = 0;
    v9 = 0;
    v11 = 0uLL;
    v69 = 6;
LABEL_81:
    a1[3] = 0;
    *a2 = v8;
    *(a2 + 8) = v11;
    *(a2 + 24) = v9;
    *(a2 + 32) = v69;
    return;
  }

  v8 = 0;
  v9 = 0;
  v69 = 6;
  v10 = 0uLL;
  while (1)
  {
    v12 = a1[3];
    v68 = v10;
    if (v12)
    {
      v13 = a1[4];
      if (v6 < v13)
      {
        goto LABEL_11;
      }

      if (v13 < v6)
      {
        goto LABEL_82;
      }

      a1[3] = 0;
    }

    v12 = ProtobufDecoder.decodeVarint()(v12);
    if (v2)
    {
      goto LABEL_83;
    }

    if (v12 < 8)
    {
      goto LABEL_82;
    }

LABEL_11:
    v14 = v12 >> 3;
    if (v12 >> 3 > 2)
    {
      break;
    }

    if (v14 == 1)
    {
      if ((v12 & 7) != 2)
      {
        goto LABEL_82;
      }

      v33 = a1[5];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v33 + 16) + 1, 1, v33);
        v33 = isUniquelyReferenced_nonNull_native;
      }

      v3 = *(v33 + 16);
      v35 = *(v33 + 24);
      isa = (v3 + 1);
      if (v3 >= v35 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v3 + 1, 1, v33);
        v33 = isUniquelyReferenced_nonNull_native;
      }

      *(v33 + 16) = isa;
      *(v33 + 8 * v3 + 32) = v7;
      a1[5] = v33;
      v36 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
      if (v2)
      {
LABEL_83:
        outlined consume of Path.Storage(v8, v68, *(&v68 + 1), v9, v69);
        return;
      }

      if (v36 < 0)
      {
        goto LABEL_100;
      }

      v37 = a1[1] + v36;
      if (v7 < v37)
      {
        goto LABEL_82;
      }

      a1[2] = v37;
      memset(v71, 0, sizeof(v71));
      closure #1 in EdgeInsets.init(from:)(v71, a1, &v70);
      v38 = a1[5];
      if (!*(v38 + 2))
      {
        goto LABEL_101;
      }

      v3 = *&v71[0];
      v67 = *(v71 + 8);
      isa = *(&v71[1] + 1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = specialized _ArrayBuffer._consumeAndCreateNew()(v38);
      }

      v39 = *(v38 + 2);
      if (!v39)
      {
        goto LABEL_106;
      }

      v40 = v39 - 1;
      v7 = *&v38[8 * v40 + 32];
      *(v38 + 2) = v40;
      outlined consume of Path.Storage(v8, v68, *(&v68 + 1), v9, v69);
      v69 = 0;
      a1[5] = v38;
      a1[2] = v7;
      goto LABEL_3;
    }

    if (v14 == 2)
    {
      if ((v12 & 7) != 2)
      {
        goto LABEL_82;
      }

      v15 = a1[5];
      v16 = swift_isUniquelyReferenced_nonNull_native();
      if ((v16 & 1) == 0)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 16) + 1, 1, v15);
        v15 = v16;
      }

      v3 = *(v15 + 16);
      v17 = *(v15 + 24);
      isa = (v3 + 1);
      if (v3 >= v17 >> 1)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v3 + 1, 1, v15);
        v15 = v16;
      }

      *(v15 + 16) = isa;
      *(v15 + 8 * v3 + 32) = v7;
      a1[5] = v15;
      v18 = ProtobufDecoder.decodeVarint()(v16);
      if (v2)
      {
        goto LABEL_83;
      }

      if (v18 < 0)
      {
        goto LABEL_99;
      }

      v19 = a1[1] + v18;
      if (v7 < v19)
      {
        goto LABEL_82;
      }

      a1[2] = v19;
      memset(v71, 0, sizeof(v71));
      closure #1 in EdgeInsets.init(from:)(v71, a1, &v70);
      v20 = a1[5];
      if (!*(v20 + 2))
      {
        goto LABEL_102;
      }

      v3 = *&v71[0];
      v67 = *(v71 + 8);
      isa = *(&v71[1] + 1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
      }

      v21 = *(v20 + 2);
      if (!v21)
      {
        goto LABEL_104;
      }

      v22 = v21 - 1;
      v7 = *&v20[8 * v22 + 32];
      *(v20 + 2) = v22;
      outlined consume of Path.Storage(v8, v68, *(&v68 + 1), v9, v69);
      a1[5] = v20;
      a1[2] = v7;
      v69 = 1;
LABEL_3:
      v8 = v3;
      v9 = isa;
      v2 = 0;
      v11 = v67;
      goto LABEL_4;
    }

LABEL_37:
    v31 = v12 & 7;
    if (v31 > 1)
    {
      if (v31 != 2)
      {
        if (v31 != 5)
        {
          goto LABEL_82;
        }

        v32 = a1[1] + 4;
        goto LABEL_70;
      }

      v52 = ProtobufDecoder.decodeVarint()(v12);
      if (v2)
      {
        goto LABEL_83;
      }

      if (v52 < 0)
      {
        goto LABEL_109;
      }

      v53 = a1[1] + v52;
      if (v7 < v53)
      {
        goto LABEL_82;
      }

      a1[1] = v53;
      v11 = v68;
    }

    else
    {
      if ((v12 & 7) != 0)
      {
        if (v31 != 1)
        {
          goto LABEL_82;
        }

        v32 = a1[1] + 8;
LABEL_70:
        if (v7 < v32)
        {
          goto LABEL_82;
        }

        a1[1] = v32;
        v11 = v68;
        goto LABEL_4;
      }

      ProtobufDecoder.decodeVarint()(v12);
      if (v2)
      {
        goto LABEL_83;
      }

      v11 = v68;
    }

LABEL_4:
    v6 = a1[1];
    v10 = v11;
    if (v6 >= v7)
    {
      goto LABEL_81;
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {
      if ((v12 & 7) != 2)
      {
        goto LABEL_82;
      }

      v23 = ProtobufDecoder.decodeVarint()(v12);
      if (v2)
      {
        goto LABEL_83;
      }

      v24 = v23;
      if (v23 < 0)
      {
        goto LABEL_98;
      }

      v3 = a1[1];
      if (v7 < v3 + v23)
      {
LABEL_82:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
        outlined consume of Path.Storage(v8, v68, *(&v68 + 1), v9, v69);
        return;
      }

      v25 = v8;
      v8 = v9;
      a1[1] = (v3 + v23);
      if (v23)
      {
        v9 = (v3 - [*a1 bytes]);
        v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        isa = v27;
        if (__OFADD__(v9, v24))
        {
          goto LABEL_107;
        }

        if (&v9[v24] < v9)
        {
          goto LABEL_108;
        }

        v28 = v26;
        v24 = Data._Representation.subscript.getter();
        v30 = v29;
        outlined consume of Data._Representation(v28, isa);
      }

      else
      {
        v30 = 0xC000000000000000;
      }

      isa = Data._bridgeToObjectiveC()().super.isa;
      v50 = RBPathMakeWithData();
      v3 = v51;
      outlined consume of Data._Representation(v24, v30);
      outlined consume of Path.Storage(v25, v68, *(&v68 + 1), v8, v69);

      type metadata accessor for Path.PathBox();
      v8 = swift_allocObject();
      v9 = 0;
      *(v8 + 40) = 0u;
      *(v8 + 56) = 0u;
      *(v8 + 72) = 0u;
      *(v8 + 88) = 0u;
      *(v8 + 104) = 0u;
      *(v8 + 16) = 1;
      v11 = 0uLL;
      *(v8 + 24) = v50;
      *(v8 + 32) = v3;
      v69 = 5;
      goto LABEL_4;
    }

    goto LABEL_37;
  }

  v41 = v12;
  v42 = swift_allocObject();
  if ((v41 & 7) != 2)
  {
    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    swift_willThrow();
    v55 = *(&v68 + 1);
    v54 = v68;
    v56 = v8;
    v57 = v9;
LABEL_87:
    outlined consume of Path.Storage(v56, v54, v55, v57, v69);
    goto LABEL_96;
  }

  v43 = v9;
  v9 = a1[5];
  v44 = swift_isUniquelyReferenced_nonNull_native();
  if ((v44 & 1) == 0)
  {
    v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    v9 = v44;
  }

  v3 = *(v9 + 2);
  v45 = *(v9 + 3);
  isa = (v3 + 1);
  if (v3 >= v45 >> 1)
  {
    v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v3 + 1, 1, v9);
    v9 = v44;
  }

  *(v9 + 2) = isa;
  *&v9[8 * v3 + 32] = v7;
  a1[5] = v9;
  v46 = ProtobufDecoder.decodeVarint()(v44);
  if (v2)
  {
    v55 = *(&v68 + 1);
    v54 = v68;
    v56 = v8;
    v57 = v43;
    goto LABEL_87;
  }

  if ((v46 & 0x8000000000000000) == 0)
  {
    isa = v43;
    v47 = a1[1] + v46;
    if (v7 < v47)
    {
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
      v55 = *(&v68 + 1);
      v54 = v68;
      v56 = v8;
      v57 = v43;
      goto LABEL_87;
    }

    a1[2] = v47;
    FixedRoundedRect.init(from:)(a1, v42 + 16);
    v9 = a1[5];
    if (!*(v9 + 2))
    {
      goto LABEL_103;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    }

    v48 = *(v9 + 2);
    if (!v48)
    {
      goto LABEL_105;
    }

    v49 = v48 - 1;
    v7 = *&v9[8 * v49 + 32];
    *(v9 + 2) = v49;
    outlined consume of Path.Storage(v8, v68, *(&v68 + 1), v43, v69);
    a1[5] = v9;
    v9 = 0;
    a1[2] = v7;
    v11 = 0uLL;
    v69 = 2;
    v8 = v42;
    goto LABEL_4;
  }

  __break(1u);
LABEL_98:
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
  __break(1u);
  do
  {
    __break(1u);
    __break(1u);
    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v58 = v68;
    v59 = *(v3 + 16);
    if (v59)
    {
      goto LABEL_93;
    }

    __break(1u);
    v3 = a1[5];
  }

  while (!*(v3 + 16));
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
  }

  v58 = v68;
  v59 = *(v3 + 16);
  if (v59)
  {
LABEL_93:
    v60 = v59 - 1;
    v61 = *(v3 + 8 * v60 + 32);
    *(v3 + 16) = v60;
    outlined consume of Path.Storage(v8, v58, *(&v58 + 1), v9, v69);
    a1[5] = v3;
    a1[2] = v61;
    return;
  }

  __break(1u);
  v65 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
  v62 = *(v65 + 2);
  if (!v62)
  {
    __break(1u);
  }

  v63 = v62 - 1;
  v64 = *&v65[8 * v63 + 32];
  *(v65 + 2) = v63;
  outlined consume of Path.Storage(v8, v68, *(&v68 + 1), isa, v69);
  a1[5] = v65;
  a1[2] = v64;
LABEL_96:
  swift_deallocUninitializedObject();
}

unint64_t specialized Color.Resolved.init(from:)(unint64_t result)
{
  v2 = result;
  v3 = *(result + 8);
  v4 = *(result + 16);
  if (v3 >= v4)
  {
LABEL_64:
    v2[3] = 0;
    return result;
  }

  while (1)
  {
    result = v2[3];
    if (result)
    {
      v5 = v2[4];
      if (v3 < v5)
      {
        goto LABEL_8;
      }

      if (v5 < v3)
      {
        goto LABEL_65;
      }

      v2[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v1)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_65:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_8:
    v6 = result >> 3;
    v7 = result & 7;
    if (result >> 3 <= 2)
    {
      break;
    }

    if (v6 == 3)
    {
      if (v7 == 2)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v1)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_70;
        }

        v11 = v2[1];
        if (v4 < v11 + result)
        {
          goto LABEL_65;
        }

        v2[3] = 29;
        v2[4] = v11 + result;
      }

      else
      {
        if (v7 != 5)
        {
          goto LABEL_65;
        }

        v11 = v2[1];
      }

      v3 = v11 + 4;
      if (v4 < v11 + 4)
      {
        goto LABEL_65;
      }

      goto LABEL_63;
    }

    if (v6 == 4)
    {
      if (v7 == 2)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v1)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_68;
        }

        v9 = v2[1];
        if (v4 < v9 + result)
        {
          goto LABEL_65;
        }

        v2[3] = 37;
        v2[4] = v9 + result;
      }

      else
      {
        if (v7 != 5)
        {
          goto LABEL_65;
        }

        v9 = v2[1];
      }

      v3 = v9 + 4;
      if (v4 < v9 + 4)
      {
        goto LABEL_65;
      }

LABEL_63:
      v2[1] = v3;
      if (v3 >= v4)
      {
        goto LABEL_64;
      }
    }

    else
    {
LABEL_19:
      if ((result & 7) > 1)
      {
        if (v7 == 2)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v1)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_71;
          }

          v3 = v2[1] + result;
        }

        else
        {
          if (v7 != 5)
          {
            goto LABEL_65;
          }

          v3 = v2[1] + 4;
        }

        goto LABEL_62;
      }

      if ((result & 7) != 0)
      {
        if (v7 != 1)
        {
          goto LABEL_65;
        }

        v3 = v2[1] + 8;
LABEL_62:
        if (v4 < v3)
        {
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      result = ProtobufDecoder.decodeVarint()(result);
      if (v1)
      {
        return result;
      }

      v3 = v2[1];
      if (v3 >= v4)
      {
        goto LABEL_64;
      }
    }
  }

  if (v6 == 1)
  {
    if (v7 == 2)
    {
      result = ProtobufDecoder.decodeVarint()(result);
      if (v1)
      {
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_69;
      }

      v10 = v2[1];
      if (v4 < v10 + result)
      {
        goto LABEL_65;
      }

      v2[3] = 13;
      v2[4] = v10 + result;
    }

    else
    {
      if (v7 != 5)
      {
        goto LABEL_65;
      }

      v10 = v2[1];
    }

    v3 = v10 + 4;
    if (v4 < v10 + 4)
    {
      goto LABEL_65;
    }

    goto LABEL_63;
  }

  if (v6 != 2)
  {
    goto LABEL_19;
  }

  if (v7 != 2)
  {
    if (v7 != 5)
    {
      goto LABEL_65;
    }

    v8 = v2[1];
    goto LABEL_36;
  }

  result = ProtobufDecoder.decodeVarint()(result);
  if (v1)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v8 = v2[1];
    if (v4 < v8 + result)
    {
      goto LABEL_65;
    }

    v2[3] = 21;
    v2[4] = v8 + result;
LABEL_36:
    v3 = v8 + 4;
    if (v4 < v8 + 4)
    {
      goto LABEL_65;
    }

    goto LABEL_63;
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}

void type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>)
  {
    v4[0] = type metadata accessor for CodableAccessibilityAttachmentStorage.V2(255);
    v4[1] = type metadata accessor for CodableAccessibilityAttachmentStorage.V3(255);
    v4[2] = &protocol witness table for CodableAccessibilityAttachmentStorage.V2;
    v4[3] = &protocol witness table for CodableAccessibilityAttachmentStorage.V2;
    v4[4] = &protocol witness table for CodableAccessibilityAttachmentStorage.V3;
    v4[5] = &protocol witness table for CodableAccessibilityAttachmentStorage.V3;
    v2 = type metadata accessor for CodableAccessibilityVersionStorage(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>);
    }
  }
}

void CodableAccessibilityAttachmentStorage.V3.init(from:)(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v208 = &v190 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CodableAccessibilityAttachmentStorage.VBase(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v202 = &v190 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CodableAccessibilityAttachmentStorage.VBase?(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v204 = &v190 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v209 = &v190 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v190 - v15;
  v17 = type metadata accessor for CodableAccessibilityAttachmentStorage.V3(0);
  v18 = (a2 + v17[6]);
  *v18 = 0u;
  v18[1] = 0u;
  v18[2] = 0u;
  v18[3] = xmmword_18DD85500;
  v214 = v18;
  v220 = v17[7];
  *(a2 + v220) = 0;
  v19 = a2 + v17[8];
  *v19 = 0;
  *(v19 + 8) = 0;
  v195 = v19;
  *(v19 + 16) = -1;
  v194 = v17[9];
  *(a2 + v194) = 0;
  v200 = v17[10];
  *(a2 + v200) = 7;
  v199 = v17[11];
  *(a2 + v199) = 8;
  v213 = v17[12];
  *(a2 + v213) = 0;
  v20 = (a2 + v17[13]);
  *v20 = 0;
  v20[1] = 0;
  v196 = v20;
  v201 = v17;
  v203 = v17[14];
  *(a2 + v203) = 2;
  v210 = v8;
  v21 = *(v8 + 56);
  v219 = v16;
  v212 = v7;
  v198 = v8 + 56;
  v197 = v21;
  v21(v16, 1, 1, v7);
  v228 = 1;
  v22 = *(a1 + 8);
  v23 = *(a1 + 16);
  if (v22 >= v23)
  {
    v205 = 0uLL;
    v218 = 0;
    v207 = 0;
    v217 = 0;
    v206 = 0;
    v216 = 0;
    v215 = 0;
LABEL_4:
    v221 = v2;
    *(a1 + 24) = 0;
    v24 = v219;
    v25 = v209;
    outlined init with copy of AccessibilityNodeAttachment.Storage(v219, v209, type metadata accessor for CodableAccessibilityAttachmentStorage.VBase?);
    if ((*(v210 + 48))(v25, 1, v212) != 1)
    {
      outlined destroy of CodableAccessibilityAttachmentStorage(v24, type metadata accessor for CodableAccessibilityAttachmentStorage.VBase?);
      v27 = v202;
      outlined init with take of CodableAccessibilityAttachmentStorage(v25, v202, type metadata accessor for CodableAccessibilityAttachmentStorage.VBase);
      outlined init with take of CodableAccessibilityAttachmentStorage(v27, a2, type metadata accessor for CodableAccessibilityAttachmentStorage.VBase);
      v28 = v228;
      v29 = a2 + v201[5];
      v30 = v217;
      *v29 = v206;
      *(v29 + 8) = v30;
      v31 = v218;
      *(v29 + 16) = v207;
      *(v29 + 24) = v31;
      v32 = *(&v205 + 1);
      *(v29 + 32) = v205;
      *(v29 + 40) = v32;
      *(v29 + 48) = v28;
      return;
    }

    outlined destroy of CodableAccessibilityAttachmentStorage(v25, type metadata accessor for CodableAccessibilityAttachmentStorage.VBase?);
    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    v221 = swift_allocError();
    swift_willThrow();
    v26 = v24;
    goto LABEL_204;
  }

  v205 = 0uLL;
  v218 = 0;
  v207 = 0;
  v217 = 0;
  v206 = 0;
  v215 = 0;
  v216 = 0;
  v193 = 0;
  v192 = 0;
  v211 = a2;
  while (1)
  {
    v36 = *(a1 + 24);
    if (!v36)
    {
      goto LABEL_18;
    }

    v37 = *(a1 + 32);
    if (v22 >= v37)
    {
      break;
    }

LABEL_20:
    switch(v36 >> 3)
    {
      case 1uLL:
        if ((v36 & 7) != 2)
        {
          goto LABEL_201;
        }

        ProtobufDecoder.beginMessage()();
        if (v2)
        {
          goto LABEL_202;
        }

        CodableAccessibilityAttachmentStorage.VBase.init(from:)(a1, v204);
        if (!*(*(a1 + 40) + 16))
        {
          goto LABEL_231;
        }

        v38 = specialized Array._customRemoveLast()();
        if (!v38)
        {
          v38 = specialized Array.remove(at:)(*(*(a1 + 40) + 16) - 1);
        }

        v23 = v38;
        v39 = v219;
        outlined destroy of CodableAccessibilityAttachmentStorage(v219, type metadata accessor for CodableAccessibilityAttachmentStorage.VBase?);
        *(a1 + 16) = v23;
        v40 = v204;
        v197(v204, 0, 1, v212);
        outlined init with take of CodableAccessibilityAttachmentStorage(v40, v39, type metadata accessor for CodableAccessibilityAttachmentStorage.VBase?);
        goto LABEL_13;
      case 2uLL:
        if ((v36 & 7) != 2)
        {
          goto LABEL_201;
        }

        v117 = *a1;
        v23 = *(a1 + 16);
        v118 = *(a1 + 48);
        v119 = ProtobufDecoder.decodeVarint()(v36);
        v221 = v2;
        if (v2)
        {
          goto LABEL_220;
        }

        v120 = v119;
        if (v119 < 0)
        {
          goto LABEL_223;
        }

        v121 = *(a1 + 8);
        if (v23 < v121 + v119)
        {
          goto LABEL_206;
        }

        *(a1 + 8) = v121 + v119;
        v122 = v117;

        if (v120)
        {
          v190 = v118;
          v123 = v121 - [v122 bytes];
          v124 = v122;
          v125 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v127 = v126;
          if (__OFADD__(v123, v120))
          {
            goto LABEL_240;
          }

          if (v123 + v120 < v123)
          {
            goto LABEL_248;
          }

          v128 = v125;
          v129 = Data._Representation.subscript.getter();
          v191 = v130;
          v131 = v128;
          v132 = v129;
          outlined consume of Data._Representation(v131, v127);
          v122 = v124;
        }

        else
        {
          v132 = 0;
          v191 = 0xC000000000000000;
        }

        type metadata accessor for PropertyListDecoder();
        swift_allocObject();
        PropertyListDecoder.init()();

        dispatch thunk of PropertyListDecoder.userInfo.setter();
        type metadata accessor for CodableAccessibilityValueStorage?(0, &lazy cache variable for type metadata for [CodableAccessibilityValueStorage], &type metadata for CodableAccessibilityValueStorage, MEMORY[0x1E69E62F8]);
        lazy protocol witness table accessor for type [CodableAccessibilityValueStorage] and conformance <A> [A]();
        v2 = v221;
        dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
        if (v2)
        {
          v221 = v2;

          v188 = v132;
          goto LABEL_213;
        }

        if (!*(v222 + 16))
        {

          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          v221 = swift_allocError();
          swift_willThrow();

          v188 = v132;
LABEL_213:
          v189 = v191;
LABEL_219:
          outlined consume of Data._Representation(v188, v189);
LABEL_220:
          outlined destroy of CodableAccessibilityAttachmentStorage(v219, type metadata accessor for CodableAccessibilityAttachmentStorage.VBase?);
          goto LABEL_205;
        }

        outlined init with copy of CodableAccessibilityValueStorage(v222 + 32, &v223);

        outlined consume of Data._Representation(v132, v191);

        outlined assign with take of CodableAccessibilityValueStorage?(&v223, v214, &lazy cache variable for type metadata for CodableAccessibilityValueStorage?, &type metadata for CodableAccessibilityValueStorage);
        a2 = v211;
        goto LABEL_13;
      case 3uLL:
        if (!*(a2 + v220))
        {
          *(a2 + v220) = MEMORY[0x1E69E7CC0];
        }

        if ((v36 & 7) != 2)
        {
          goto LABEL_201;
        }

        v84 = *(a1 + 40);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v84 + 16) + 1, 1, v84);
          v84 = isUniquelyReferenced_nonNull_native;
        }

        v87 = *(v84 + 16);
        v86 = *(v84 + 24);
        if (v87 >= v86 >> 1)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v87 + 1, 1, v84);
          v84 = isUniquelyReferenced_nonNull_native;
        }

        *(v84 + 16) = v87 + 1;
        *(v84 + 8 * v87 + 32) = v23;
        *(a1 + 40) = v84;
        v88 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
        if (v2)
        {
          goto LABEL_202;
        }

        if (v88 < 0)
        {
          goto LABEL_224;
        }

        v89 = *(a1 + 8) + v88;
        if (v23 < v89)
        {
          goto LABEL_201;
        }

        *(a1 + 16) = v89;
        AccessibilityText.init(from:)(a1, &v223);
        v90 = *(a1 + 40);
        if (!*(v90 + 2))
        {
          goto LABEL_233;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v91 = *(v90 + 2);
          if (!v91)
          {
            goto LABEL_237;
          }
        }

        else
        {
          v90 = specialized _ArrayBuffer._consumeAndCreateNew()(v90);
          v91 = *(v90 + 2);
          if (!v91)
          {
            goto LABEL_237;
          }
        }

        v92 = v91 - 1;
        v23 = *&v90[8 * v92 + 32];
        *(v90 + 2) = v92;
        *(a1 + 40) = v90;
        *(a1 + 16) = v23;
        v93 = v223;
        v94 = v224;
        LODWORD(v221) = v225;
        v95 = *(v211 + v220);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v95 + 2) + 1, 1, v95);
        }

        v97 = *(v95 + 2);
        v96 = *(v95 + 3);
        if (v97 >= v96 >> 1)
        {
          v95 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v96 > 1), v97 + 1, 1, v95);
        }

        *(v95 + 2) = v97 + 1;
        v98 = &v95[24 * v97];
        *(v98 + 2) = v93;
        v98[48] = v94;
        v98[49] = v221;
        a2 = v211;
        *(v211 + v220) = v95;
        goto LABEL_13;
      case 4uLL:
        if ((v36 & 7) != 2)
        {
          goto LABEL_201;
        }

        v99 = *(a1 + 40);
        v100 = swift_isUniquelyReferenced_nonNull_native();
        if ((v100 & 1) == 0)
        {
          v100 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v99 + 16) + 1, 1, v99);
          v99 = v100;
        }

        v102 = *(v99 + 16);
        v101 = *(v99 + 24);
        if (v102 >= v101 >> 1)
        {
          v100 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v101 > 1), v102 + 1, 1, v99);
          v99 = v100;
        }

        *(v99 + 16) = v102 + 1;
        *(v99 + 8 * v102 + 32) = v23;
        *(a1 + 40) = v99;
        v103 = ProtobufDecoder.decodeVarint()(v100);
        if (v2)
        {
          goto LABEL_202;
        }

        if (v103 < 0)
        {
          goto LABEL_225;
        }

        v104 = *(a1 + 8) + v103;
        if (v23 < v104)
        {
          goto LABEL_201;
        }

        *(a1 + 16) = v104;
        AccessibilityActivationPoint.Location.init(from:)(a1, &v223);
        v105 = *(a1 + 40);
        if (!*(v105 + 2))
        {
          goto LABEL_232;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v106 = *(v105 + 2);
          if (!v106)
          {
            goto LABEL_235;
          }
        }

        else
        {
          v105 = specialized _ArrayBuffer._consumeAndCreateNew()(v105);
          v106 = *(v105 + 2);
          if (!v106)
          {
            goto LABEL_235;
          }
        }

        v107 = v106 - 1;
        v23 = *&v105[8 * v107 + 32];
        *(v105 + 2) = v107;
        *(a1 + 40) = v105;
        *(a1 + 16) = v23;
        LOBYTE(v107) = v224;
        v108 = v195;
        *v195 = v223;
        *(v108 + 16) = v107;
        goto LABEL_13;
      case 5uLL:
        if ((v36 & 7) != 2)
        {
          goto LABEL_201;
        }

        v42 = *a1;
        v23 = *(a1 + 16);
        v43 = *(a1 + 48);
        v44 = ProtobufDecoder.decodeVarint()(v36);
        v221 = v2;
        if (v2)
        {
          goto LABEL_220;
        }

        v45 = v44;
        if (v44 < 0)
        {
          goto LABEL_228;
        }

        v46 = *(a1 + 8);
        if (v23 < v46 + v44)
        {
          goto LABEL_206;
        }

        *(a1 + 8) = v46 + v44;
        v47 = v42;

        v191 = v47;
        if (v45)
        {
          v190 = v43;
          v48 = v46 - [v47 bytes];
          v49 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v51 = v50;
          if (__OFADD__(v48, v45))
          {
            goto LABEL_241;
          }

          if (v48 + v45 < v48)
          {
            goto LABEL_250;
          }

          v52 = v49;
          v53 = Data._Representation.subscript.getter();
          v54 = v52;
          v56 = v55;
          v57 = v51;
          v58 = v53;
          outlined consume of Data._Representation(v54, v57);
        }

        else
        {
          v58 = 0;
          v56 = 0xC000000000000000;
        }

        type metadata accessor for PropertyListDecoder();
        swift_allocObject();
        PropertyListDecoder.init()();

        dispatch thunk of PropertyListDecoder.userInfo.setter();
        type metadata accessor for CodableAccessibilityValueStorage?(0, &lazy cache variable for type metadata for [CodableAccessibilityCustomContentList], &type metadata for CodableAccessibilityCustomContentList, MEMORY[0x1E69E62F8]);
        lazy protocol witness table accessor for type [CodableAccessibilityCustomContentList] and conformance <A> [A]();
        v2 = v221;
        dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
        if (v2)
        {
          v221 = v2;

          v188 = v58;
          v189 = v56;
          goto LABEL_219;
        }

        if (!*(v223 + 16))
        {

          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          v221 = swift_allocError();
          swift_willThrow();

          v188 = v58;
          v189 = v56;
          goto LABEL_219;
        }

        v171 = *(v223 + 32);

        outlined consume of Data._Representation(v58, v56);

        a2 = v211;
        *(v211 + v194) = v171;
        v215 = v171;
        goto LABEL_13;
      case 6uLL:
        if ((v36 & 7) == 0)
        {
          goto LABEL_109;
        }

        if ((v36 & 7) != 2)
        {
          goto LABEL_201;
        }

        v36 = ProtobufDecoder.decodeVarint()(v36);
        if (v2)
        {
          goto LABEL_202;
        }

        if ((v36 & 0x8000000000000000) != 0)
        {
          goto LABEL_254;
        }

        v133 = *(a1 + 8) + v36;
        if (v23 < v133)
        {
          goto LABEL_201;
        }

        *(a1 + 24) = 48;
        *(a1 + 32) = v133;
LABEL_109:
        v134 = ProtobufDecoder.decodeVarint()(v36);
        if (v2)
        {
          goto LABEL_202;
        }

        v34 = 8;
        if (v134 < 8)
        {
          v34 = v134;
        }

        v35 = &v226;
        goto LABEL_12;
      case 7uLL:
        if ((v36 & 7) != 2)
        {
          goto LABEL_201;
        }

        v138 = ProtobufDecoder.decodeVarint()(v36);
        if (v2)
        {
          goto LABEL_202;
        }

        v75 = v138;
        if (v138 < 0)
        {
          goto LABEL_230;
        }

        v139 = *(a1 + 8);
        if (v23 < v139 + v138)
        {
          goto LABEL_201;
        }

        *(a1 + 8) = v139 + v138;
        if (v138)
        {
          v140 = v139 - [*a1 bytes];
          v141 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v143 = v142;
          if (__OFADD__(v140, v75))
          {
            goto LABEL_244;
          }

          if (v140 + v75 < v140)
          {
            goto LABEL_249;
          }

          v144 = v141;
          v75 = Data._Representation.subscript.getter();
          v83 = v145;
          outlined consume of Data._Representation(v144, v143);
          a2 = v211;
        }

        else
        {
          v83 = 0xC000000000000000;
        }

        static String.Encoding.utf8.getter();
        v182 = String.init(data:encoding:)();
        if (!v183)
        {
LABEL_207:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          v221 = swift_allocError();
          swift_willThrow();
          outlined consume of Data._Representation(v75, v83);
LABEL_203:
          v26 = v219;
LABEL_204:
          outlined destroy of CodableAccessibilityAttachmentStorage(v26, type metadata accessor for CodableAccessibilityAttachmentStorage.VBase?);
          goto LABEL_205;
        }

        v180 = v183;
        v206 = v182;
        outlined consume of Data._Representation(v75, v83);

        v217 = v180;
        v181 = &v223;
LABEL_184:
        *(v181 - 32) = v180;
        v2 = 0;
        goto LABEL_13;
      case 8uLL:
        if ((v36 & 7) != 2)
        {
          goto LABEL_201;
        }

        v109 = ProtobufDecoder.decodeVarint()(v36);
        if (v2)
        {
          goto LABEL_202;
        }

        v75 = v109;
        if (v109 < 0)
        {
          goto LABEL_227;
        }

        v110 = *(a1 + 8);
        if (v23 < v110 + v109)
        {
          goto LABEL_201;
        }

        *(a1 + 8) = v110 + v109;
        if (v109)
        {
          v111 = v110 - [*a1 bytes];
          v112 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v114 = v113;
          if (__OFADD__(v111, v75))
          {
            goto LABEL_242;
          }

          if (v111 + v75 < v111)
          {
            goto LABEL_246;
          }

          v115 = v112;
          v75 = Data._Representation.subscript.getter();
          v83 = v116;
          outlined consume of Data._Representation(v115, v114);
          a2 = v211;
        }

        else
        {
          v83 = 0xC000000000000000;
        }

        static String.Encoding.utf8.getter();
        v178 = String.init(data:encoding:)();
        if (!v179)
        {
          goto LABEL_207;
        }

        v180 = v179;
        v207 = v178;
        outlined consume of Data._Representation(v75, v83);

        v218 = v180;
        v181 = &v223 + 8;
        goto LABEL_184;
      case 9uLL:
        if ((v36 & 7) != 2)
        {
          goto LABEL_201;
        }

        v155 = *a1;
        v23 = *(a1 + 16);
        v156 = ProtobufDecoder.decodeVarint()(v36);
        v221 = v2;
        if (v2)
        {
          goto LABEL_203;
        }

        v157 = v156;
        if (v156 < 0)
        {
          __break(1u);
LABEL_222:
          __break(1u);
LABEL_223:
          __break(1u);
LABEL_224:
          __break(1u);
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
LABEL_235:
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
          __break(1u);
LABEL_247:
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
          __break(1u);
          JUMPOUT(0x18D3595F0);
        }

        v158 = *(a1 + 8);
        if (v23 < v158 + v156)
        {
          goto LABEL_201;
        }

        *(a1 + 8) = v158 + v156;
        v159 = v155;

        v190 = v159;
        if (v157)
        {
          v160 = v159;
          v161 = v158 - [v160 bytes];
          v162 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v164 = v163;
          if (__OFADD__(v161, v157))
          {
            goto LABEL_239;
          }

          if (v161 + v157 < v161)
          {
            goto LABEL_247;
          }

          v165 = v162;
          v191 = Data._Representation.subscript.getter();
          v166 = v165;
          v168 = v167;
          outlined consume of Data._Representation(v166, v164);
          a2 = v211;
        }

        else
        {
          v191 = 0;
          v168 = 0xC000000000000000;
        }

        type metadata accessor for PropertyListDecoder();
        swift_allocObject();
        PropertyListDecoder.init()();

        dispatch thunk of PropertyListDecoder.userInfo.setter();
        type metadata accessor for CodableAccessibilityValueStorage?(0, &lazy cache variable for type metadata for [CodableAXChartDescriptor], &type metadata for CodableAXChartDescriptor, MEMORY[0x1E69E62F8]);
        lazy protocol witness table accessor for type [CodableAXChartDescriptor] and conformance <A> [A]();
        v2 = v221;
        dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
        if (v2)
        {
          v221 = v2;
          goto LABEL_215;
        }

        if (*(v223 + 16))
        {
          v184 = v168;
          v185 = *(v223 + 32);

          outlined consume of Data._Representation(v191, v184);

          v186 = v213;

          *(a2 + v186) = v185;
          goto LABEL_13;
        }

        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        v221 = swift_allocError();
        swift_willThrow();
LABEL_215:

        outlined destroy of CodableAccessibilityAttachmentStorage(v219, type metadata accessor for CodableAccessibilityAttachmentStorage.VBase?);
        outlined consume of Data._Representation(v191, v168);

LABEL_205:

        outlined destroy of AccessibilityValueStorage?(v214, &lazy cache variable for type metadata for CodableAccessibilityValueStorage?, &type metadata for CodableAccessibilityValueStorage);

        return;
      case 0xAuLL:
        if ((v36 & 7) != 2)
        {
          goto LABEL_201;
        }

        v74 = ProtobufDecoder.decodeVarint()(v36);
        if (v2)
        {
          goto LABEL_202;
        }

        v75 = v74;
        if (v74 < 0)
        {
          goto LABEL_226;
        }

        v76 = *(a1 + 8);
        if (v23 < v76 + v74)
        {
          goto LABEL_201;
        }

        *(a1 + 8) = v76 + v74;
        if (v74)
        {
          v77 = v76 - [*a1 bytes];
          v78 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v80 = v79;
          if (__OFADD__(v77, v75))
          {
            goto LABEL_243;
          }

          if (v77 + v75 < v77)
          {
            goto LABEL_251;
          }

          v81 = v78;
          v75 = Data._Representation.subscript.getter();
          v83 = v82;
          outlined consume of Data._Representation(v81, v80);
          a2 = v211;
        }

        else
        {
          v83 = 0xC000000000000000;
        }

        static String.Encoding.utf8.getter();
        v173 = String.init(data:encoding:)();
        if (!v174)
        {
          goto LABEL_207;
        }

        v175 = v173;
        v176 = v174;
        outlined consume of Data._Representation(v75, v83);

        v177 = v196;
        *v196 = v175;
        v177[1] = v176;
        v216 = v176;
        goto LABEL_13;
      case 0xBuLL:
        if ((v36 & 7) != 2)
        {
          goto LABEL_201;
        }

        v146 = *(a1 + 40);
        v147 = swift_isUniquelyReferenced_nonNull_native();
        if ((v147 & 1) == 0)
        {
          v147 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v146 + 16) + 1, 1, v146);
          v146 = v147;
        }

        v149 = *(v146 + 16);
        v148 = *(v146 + 24);
        if (v149 >= v148 >> 1)
        {
          v147 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v148 > 1), v149 + 1, 1, v146);
          v146 = v147;
        }

        *(v146 + 16) = v149 + 1;
        *(v146 + 8 * v149 + 32) = v23;
        *(a1 + 40) = v146;
        v150 = ProtobufDecoder.decodeVarint()(v147);
        if (v2)
        {
          goto LABEL_202;
        }

        if (v150 < 0)
        {
          goto LABEL_222;
        }

        v151 = *(a1 + 8) + v150;
        if (v23 < v151)
        {
          goto LABEL_201;
        }

        *(a1 + 16) = v151;
        CodableAccessibilityUIKitTraits.init(from:)(a1, &v223);
        v152 = *(a1 + 40);
        if (!*(v152 + 2))
        {
          goto LABEL_234;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v153 = *(v152 + 2);
          if (!v153)
          {
            goto LABEL_236;
          }
        }

        else
        {
          v152 = specialized _ArrayBuffer._consumeAndCreateNew()(v152);
          v153 = *(v152 + 2);
          if (!v153)
          {
            goto LABEL_236;
          }
        }

        v154 = v153 - 1;
        v23 = *&v152[8 * v154 + 32];
        *(v152 + 2) = v154;
        *(a1 + 40) = v152;
        *(a1 + 16) = v23;
        v205 = v223;
        v228 = 0;
        goto LABEL_13;
      case 0xCuLL:
        if ((v36 & 7) == 0)
        {
          goto LABEL_8;
        }

        if ((v36 & 7) != 2)
        {
          goto LABEL_201;
        }

        v36 = ProtobufDecoder.decodeVarint()(v36);
        if (v2)
        {
          goto LABEL_202;
        }

        if ((v36 & 0x8000000000000000) != 0)
        {
          goto LABEL_253;
        }

        v41 = *(a1 + 8) + v36;
        if (v23 < v41)
        {
          goto LABEL_201;
        }

        *(a1 + 24) = 96;
        *(a1 + 32) = v41;
LABEL_8:
        v33 = ProtobufDecoder.decodeVarint()(v36);
        if (v2)
        {
          goto LABEL_202;
        }

        v34 = 7;
        if (v33 < 7)
        {
          v34 = v33;
        }

        v35 = &v227;
LABEL_12:
        *(a2 + *(v35 - 32)) = v34;
        goto LABEL_13;
      case 0xDuLL:
        if ((v36 & 7) != 2)
        {
          goto LABEL_201;
        }

        v59 = *a1;
        v23 = *(a1 + 16);
        v60 = ProtobufDecoder.decodeVarint()(v36);
        v221 = v2;
        if (v2)
        {
          goto LABEL_220;
        }

        v61 = v60;
        if (v60 < 0)
        {
          goto LABEL_229;
        }

        v62 = *(a1 + 8);
        if (v23 < v62 + v60)
        {
LABEL_206:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          v221 = swift_allocError();
          swift_willThrow();
          goto LABEL_220;
        }

        *(a1 + 8) = v62 + v60;
        v63 = v59;

        v191 = v63;
        if (v61)
        {
          v64 = v62 - [v63 bytes];
          v65 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v67 = v66;
          if (__OFADD__(v64, v61))
          {
            goto LABEL_238;
          }

          if (v64 + v61 < v64)
          {
            goto LABEL_245;
          }

          v68 = v65;
          v69 = Data._Representation.subscript.getter();
          v71 = v70;
          v72 = v67;
          v73 = v71;
          outlined consume of Data._Representation(v68, v72);
        }

        else
        {
          v69 = 0;
          v73 = 0xC000000000000000;
        }

        type metadata accessor for PropertyListDecoder();
        swift_allocObject();
        PropertyListDecoder.init()();

        dispatch thunk of PropertyListDecoder.userInfo.setter();
        type metadata accessor for [AccessibilityChildBehaviorKind?](0);
        lazy protocol witness table accessor for type [AccessibilityNodeAttachment.Kind?] and conformance <A> [A](&lazy protocol witness table cache variable for type [AccessibilityChildBehaviorKind?] and conformance <A> [A], type metadata accessor for [AccessibilityChildBehaviorKind?], lazy protocol witness table accessor for type AccessibilityChildBehaviorKind? and conformance <A> A?, MEMORY[0x1E69E6330]);
        v2 = v221;
        dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
        if (v2)
        {
          v221 = v2;
LABEL_217:

          v188 = v69;
          v189 = v73;
          goto LABEL_219;
        }

        if (!*(v223 + 16))
        {

          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          v221 = swift_allocError();
          swift_willThrow();
          goto LABEL_217;
        }

        v172 = *(v223 + 32);

        outlined consume of Data._Representation(v69, v73);

        a2 = v211;
        *(v211 + v203) = v172;
        goto LABEL_13;
      case 0xEuLL:
        if ((v36 & 7) == 0)
        {
          goto LABEL_119;
        }

        if ((v36 & 7) != 2)
        {
          goto LABEL_201;
        }

        v36 = ProtobufDecoder.decodeVarint()(v36);
        if (v2)
        {
          goto LABEL_202;
        }

        if ((v36 & 0x8000000000000000) != 0)
        {
          goto LABEL_252;
        }

        v135 = *(a1 + 8) + v36;
        if (v23 < v135)
        {
          goto LABEL_201;
        }

        *(a1 + 24) = 112;
        *(a1 + 32) = v135;
LABEL_119:
        v136 = ProtobufDecoder.decodeVarint()(v36);
        if (v2)
        {
          goto LABEL_202;
        }

        if (v136 == 1)
        {
          v137 = 1;
        }

        else
        {
          v137 = 2;
        }

        if (!v136)
        {
          v137 = 0;
        }

        *(a2 + v203) = v137;
        goto LABEL_13;
      default:
        v169 = v36 & 7;
        if (v169 > 1)
        {
          if (v169 == 2)
          {
            v187 = ProtobufDecoder.decodeVarint()(v36);
            if (v2)
            {
LABEL_202:
              v221 = v2;
              goto LABEL_203;
            }

            if (v187 < 0)
            {
              goto LABEL_255;
            }

            v170 = *(a1 + 8) + v187;
            if (v23 < v170)
            {
LABEL_201:
              lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
              v221 = swift_allocError();
              swift_willThrow();
              goto LABEL_203;
            }
          }

          else
          {
            if (v169 != 5)
            {
              goto LABEL_201;
            }

            v170 = *(a1 + 8) + 4;
            if (v23 < v170)
            {
              goto LABEL_201;
            }
          }

LABEL_194:
          *(a1 + 8) = v170;
          goto LABEL_13;
        }

        if ((v36 & 7) != 0)
        {
          if (v169 != 1)
          {
            goto LABEL_201;
          }

          v170 = *(a1 + 8) + 8;
          if (v23 < v170)
          {
            goto LABEL_201;
          }

          goto LABEL_194;
        }

        ProtobufDecoder.decodeVarint()(v36);
        if (v2)
        {
          goto LABEL_202;
        }

LABEL_13:
        v22 = *(a1 + 8);
        if (v22 >= v23)
        {
          goto LABEL_4;
        }

        break;
    }
  }

  if (v37 < v22)
  {
    goto LABEL_201;
  }

  *(a1 + 24) = 0;
LABEL_18:
  v36 = ProtobufDecoder.decodeVarint()(v36);
  if (v2)
  {
    goto LABEL_202;
  }

  if (v36 < 8)
  {
    goto LABEL_201;
  }

  goto LABEL_20;
}

uint64_t sub_18D35965C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    type metadata accessor for LinkDestination.Configuration?(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 52);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

void CodableAttributedString.init(from:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v69 = a2;
  v4 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v72 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 8);
  isEscapingClosureAtFileLocation = *(a1 + 16);
  if (v7 >= isEscapingClosureAtFileLocation)
  {
    v9 = 0;
    v71 = MEMORY[0x1E69E7CC0];
    v10 = 0xE000000000000000;
LABEL_53:
    v70 = v2;
    *(a1 + 24) = 0;
    v40 = objc_allocWithZone(MEMORY[0x1E696AD40]);
    v41 = MEMORY[0x193ABEC20](v9, v10);

    v42 = [v40 initWithString_];

    v43 = v42;
    v44 = [v43 length];
    v45 = v71;
    v46 = *(v71 + 2);
    if (v46)
    {
      v72 = v44;
      type metadata accessor for NSAttributedStringKey(0);
      lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
      v47 = v45 + 48;
      do
      {
        v48 = *(v47 - 2);
        v49 = *(v47 - 1);
        v47 += 24;

        isa = Dictionary._bridgeToObjectiveC()().super.isa;
        v82.location = v48;
        v82.length = v49;
        v83.location = 0;
        v83.length = v72;
        v51 = NSIntersectionRange(v82, v83);

        [v43 addAttributes:isa range:{v51.location, v51.length}];

        --v46;
      }

      while (v46);
    }

    isEscapingClosureAtFileLocation = v43;
    if (one-time initialization token for resolvableTextSegment != -1)
    {
      goto LABEL_73;
    }

    goto LABEL_57;
  }

  v9 = 0;
  v71 = MEMORY[0x1E69E7CC0];
  v10 = 0xE000000000000000;
  while (1)
  {
    v11 = *(a1 + 24);
    if (v11)
    {
      v12 = *(a1 + 32);
      if (v7 < v12)
      {
        goto LABEL_11;
      }

      if (v12 < v7)
      {
        goto LABEL_63;
      }

      *(a1 + 24) = 0;
    }

    isUniquelyReferenced_nonNull_native = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
    if (v2)
    {
      goto LABEL_66;
    }

    v11 = isUniquelyReferenced_nonNull_native;
    if (isUniquelyReferenced_nonNull_native < 8)
    {
      goto LABEL_63;
    }

LABEL_11:
    if (v11 >> 3 != 2)
    {
      break;
    }

    if ((v11 & 7) != 2)
    {
      goto LABEL_63;
    }

    ProtobufDecoder.beginMessage()();
    if (v2)
    {
LABEL_66:
      v70 = v2;

      return;
    }

    CodableAttributedString.Range.init(from:)(a1, &aBlock);
    v70 = 0;
    v25 = *(a1 + 40);
    if (!*(v25 + 2))
    {
      goto LABEL_71;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v26 = *(v25 + 2);
      if (!v26)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v25 = specialized _ArrayBuffer._consumeAndCreateNew()(v25);
      v26 = *(v25 + 2);
      if (!v26)
      {
        goto LABEL_72;
      }
    }

    v27 = v26 - 1;
    isEscapingClosureAtFileLocation = *&v25[8 * v27 + 32];
    *(v25 + 2) = v27;
    *(a1 + 40) = v25;
    *(a1 + 16) = isEscapingClosureAtFileLocation;
    v28 = aBlock;
    v29 = v77;
    v30 = v78;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      v32 = v71;
    }

    else
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v71 + 2) + 1, 1, v71);
      v32 = isUniquelyReferenced_nonNull_native;
    }

    v34 = *(v32 + 2);
    v33 = *(v32 + 3);
    v2 = v70;
    if (v34 >= v33 >> 1)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v32);
      v2 = v70;
      v32 = isUniquelyReferenced_nonNull_native;
    }

    *(v32 + 2) = v34 + 1;
    v71 = v32;
    v35 = &v32[24 * v34];
    *(v35 + 4) = v28;
    *(v35 + 5) = v29;
    *(v35 + 6) = v30;
    v9 = v31;
LABEL_4:
    v7 = *(a1 + 8);
    if (v7 >= isEscapingClosureAtFileLocation)
    {
      goto LABEL_53;
    }
  }

  if (v11 >> 3 != 1)
  {
    v36 = v11 & 7;
    if (v36 > 1)
    {
      if (v36 == 2)
      {
        isUniquelyReferenced_nonNull_native = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
        if (v2)
        {
          goto LABEL_66;
        }

        if ((isUniquelyReferenced_nonNull_native & 0x8000000000000000) != 0)
        {
          goto LABEL_78;
        }

        v37 = *(a1 + 8) + isUniquelyReferenced_nonNull_native;
        if (isEscapingClosureAtFileLocation < v37)
        {
LABEL_63:

LABEL_64:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          v70 = swift_allocError();
          swift_willThrow();
LABEL_65:

          return;
        }
      }

      else
      {
        if (v36 != 5)
        {
          goto LABEL_63;
        }

        v37 = *(a1 + 8) + 4;
        if (isEscapingClosureAtFileLocation < v37)
        {
          goto LABEL_63;
        }
      }
    }

    else
    {
      if ((v11 & 7) == 0)
      {
        isUniquelyReferenced_nonNull_native = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
        if (v2)
        {
          goto LABEL_66;
        }

        goto LABEL_4;
      }

      if (v36 != 1)
      {
        goto LABEL_63;
      }

      v37 = *(a1 + 8) + 8;
      if (isEscapingClosureAtFileLocation < v37)
      {
        goto LABEL_63;
      }
    }

    *(a1 + 8) = v37;
    goto LABEL_4;
  }

  if ((v11 & 7) != 2)
  {
    goto LABEL_64;
  }

  v14 = ProtobufDecoder.decodeVarint()(v13);
  if (v2)
  {
    v70 = v2;
    goto LABEL_65;
  }

  v15 = v14;
  if ((v14 & 0x8000000000000000) == 0)
  {
    v16 = *(a1 + 8);
    if (isEscapingClosureAtFileLocation < v16 + v14)
    {
      goto LABEL_64;
    }

    *(a1 + 8) = v16 + v14;
    if (v14)
    {
      v17 = v16 - [*a1 bytes];
      v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
      if (__OFADD__(v17, v15))
      {
        goto LABEL_75;
      }

      if (v17 + v15 < v17)
      {
        goto LABEL_76;
      }

      v21 = v18;
      v22 = Data._Representation.subscript.getter();
      v24 = v23;
      outlined consume of Data._Representation(v21, v20);
    }

    else
    {
      v22 = 0;
      v24 = 0xC000000000000000;
    }

    static String.Encoding.utf8.getter();
    v38 = String.init(data:encoding:)();
    if (!v39)
    {
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      v70 = swift_allocError();
      swift_willThrow();
      outlined consume of Data._Representation(v22, v24);
      goto LABEL_65;
    }

    v9 = v38;
    v10 = v39;
    outlined consume of Data._Representation(v22, v24);
    goto LABEL_4;
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  swift_once();
LABEL_57:
  a1 = static NSAttributedStringKey.resolvableTextSegment;
  v52 = [isEscapingClosureAtFileLocation length];
  v53 = swift_allocObject();
  *(v53 + 16) = isEscapingClosureAtFileLocation;
  v54 = swift_allocObject();
  *(v54 + 16) = closure #1 in static ResolvableTextSegmentAttribute.toggleAttributes(in:)partial apply;
  *(v54 + 24) = v53;
  v80 = thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  v81 = v54;
  aBlock = MEMORY[0x1E69E9820];
  v77 = 1107296256;
  v78 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v79 = &block_descriptor_23_0;
  v55 = _Block_copy(&aBlock);
  v56 = isEscapingClosureAtFileLocation;
  v57 = v55;
  v58 = v56;

  [v58 enumerateAttribute:a1 inRange:0 options:v52 usingBlock:{0, v57}];
  _Block_release(v57);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if ([v58 length] <= 0)
  {

    v64 = 0;
    v60 = 0;
    v75 = 0;
    v73 = 0u;
    v74 = 0u;
LABEL_62:
    outlined destroy of _DisplayList_AnyEffectAnimator?(&v73, &lazy cache variable for type metadata for TimelineSchedule?, &lazy cache variable for type metadata for TimelineSchedule, &protocol descriptor for TimelineSchedule);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v64, v60);
    *v69 = v58;
  }

  else
  {
    v75 = 0;
    v73 = 0u;
    v74 = 0u;
    v59 = [v58 length];
    v60 = swift_allocObject();
    *(v60 + 16) = v58;
    *(v60 + 24) = &v73;
    v61 = swift_allocObject();
    *(v61 + 16) = partial apply for closure #1 in NSMutableAttributedString.resolveUpdateSchedule(recalculate:);
    *(v61 + 24) = v60;
    v80 = thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
    v81 = v61;
    aBlock = MEMORY[0x1E69E9820];
    v77 = 1107296256;
    v78 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    v79 = &block_descriptor_33;
    v62 = _Block_copy(&aBlock);
    v63 = v58;

    [v63 enumerateAttribute:a1 inRange:0 options:v59 usingBlock:{0, v62}];
    _Block_release(v62);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      outlined init with copy of TimelineSchedule?(&v73, &aBlock, &lazy cache variable for type metadata for TimelineSchedule?, &lazy cache variable for type metadata for TimelineSchedule, &protocol descriptor for TimelineSchedule);
      NSMutableAttributedString.setUpdateSchedule(_:)(&aBlock);

      outlined destroy of _DisplayList_AnyEffectAnimator?(&aBlock, &lazy cache variable for type metadata for TimelineSchedule?, &lazy cache variable for type metadata for TimelineSchedule, &protocol descriptor for TimelineSchedule);
      v64 = partial apply for closure #1 in NSMutableAttributedString.resolveUpdateSchedule(recalculate:);
      goto LABEL_62;
    }

LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    __break(1u);
    v67 = specialized _ArrayBuffer._consumeAndCreateNew()(isEscapingClosureAtFileLocation);
    v68 = *(v67 + 2);
    if (v68)
    {
      v65 = v68 - 1;
      v66 = *&v67[8 * v65 + 32];
      *(v67 + 2) = v65;

      *(a1 + 40) = v67;
      *(a1 + 16) = v66;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_18D35A08C()
{

  return swift_deallocObject();
}

uint64_t sub_18D35A0D4()
{

  return swift_deallocObject();
}

uint64_t ProtobufDecoder.preferredBundleLanguage.getter()
{
  v1 = *(v0 + 48);
  if (one-time initialization token for preferredBundleLanguageKey != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CodingUserInfoKey();
  v3 = __swift_project_value_buffer(v2, static ArchivedViewCore.preferredBundleLanguageKey);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(v1 + 56) + 32 * v4, v8);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

void lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

void _sSo21NSAttributedStringKeyaABSHSCWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

void _sSo21NSAttributedStringKeyaABSHSCWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

void _sSo21NSAttributedStringKeyaABSHSCWlTm_2(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  if (!*a1)
  {
    v6 = a3(a2);
    swift_getWitnessTable(a4, v6);
    atomic_store(v7, a1);
  }
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t _sypSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

unint64_t _s7SwiftUI30AccessibilityNullableOptionSetV4fromACyxGAA15ProtobufDecoderVz_tKcfCAA0C10VisibilityV_Tt1g5@<X0>(unint64_t result@<X0>, _DWORD *a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v7 = 0;
    v8 = 0;
LABEL_47:
    v3[3] = 0;
    *a2 = v8;
    a2[1] = v7;
    return result;
  }

  v7 = 0;
  v8 = 0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v9 = v3[4];
      if (v5 < v9)
      {
        goto LABEL_11;
      }

      if (v9 < v5)
      {
        goto LABEL_45;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_45:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_11:
    v10 = result & 7;
    if (result >> 3 == 2)
    {
      if ((result & 7) != 0)
      {
        if (v10 != 2)
        {
          goto LABEL_45;
        }

        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_50;
        }

        v12 = v3[1] + result;
        if (v6 < v12)
        {
          goto LABEL_45;
        }

        v3[3] = 16;
        v3[4] = v12;
      }

      result = ProtobufDecoder.decodeVarint()(result);
      if (v2)
      {
        return result;
      }

      v7 = result;
      if (HIDWORD(result))
      {
        goto LABEL_49;
      }

      goto LABEL_4;
    }

    if (result >> 3 != 1)
    {
      if ((result & 7) > 1)
      {
        if (v10 == 2)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_52;
          }

          v13 = v3[1] + result;
          if (v6 < v13)
          {
            goto LABEL_45;
          }
        }

        else
        {
          if (v10 != 5)
          {
            goto LABEL_45;
          }

          v13 = v3[1] + 4;
          if (v6 < v13)
          {
            goto LABEL_45;
          }
        }
      }

      else
      {
        if ((result & 7) == 0)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          goto LABEL_4;
        }

        if (v10 != 1)
        {
          goto LABEL_45;
        }

        v13 = v3[1] + 8;
        if (v6 < v13)
        {
          goto LABEL_45;
        }
      }

      v3[1] = v13;
      goto LABEL_4;
    }

    if ((result & 7) != 0)
    {
      if (v10 != 2)
      {
        goto LABEL_45;
      }

      result = ProtobufDecoder.decodeVarint()(result);
      if (v2)
      {
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_51;
      }

      v11 = v3[1] + result;
      if (v6 < v11)
      {
        goto LABEL_45;
      }

      v3[3] = 8;
      v3[4] = v11;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    v8 = result;
    if (HIDWORD(result))
    {
      break;
    }

LABEL_4:
    v5 = v3[1];
    if (v5 >= v6)
    {
      goto LABEL_47;
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
  __break(1u);
  return result;
}

double outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(void *a1, uint64_t a2, char a3, char a4)
{
  if (a4)
  {
    return outlined copy of AccessibilityText.Storage(a1, a2, a3 & 1);
  }

  return result;
}

double outlined copy of AccessibilityText.Storage(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = a1;
  }

  else
  {
  }

  return result;
}

double outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(void *a1, uint64_t a2, char a3, char a4)
{
  if (a4)
  {
    return outlined consume of AccessibilityText.Storage(a1, a2, a3 & 1);
  }

  return result;
}

double destroy for CodableAccessibilityAttachmentStorage.V3(uint64_t a1, int *a2)
{

  if (*(a1 + 34) != 255)
  {
    v4 = *(a1 + 32) | (*(a1 + 34) << 16);
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 16), *(a1 + 24), v4, BYTE2(v4) & 1);
  }

  if (*(a1 + 58) != 255)
  {
    v5 = *(a1 + 56) | (*(a1 + 58) << 16);
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 40), *(a1 + 48), v5, BYTE2(v5) & 1);
  }

  if (*(a1 + 82) != 255)
  {
    v6 = *(a1 + 80) | (*(a1 + 82) << 16);
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 64), *(a1 + 72), v6, BYTE2(v6) & 1);
  }

  v7 = *(a1 + 232);
  if (v7 != 1)
  {
    if (*(a1 + 162) != 255)
    {
      v8 = *(a1 + 160) | (*(a1 + 162) << 16);
      outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 144), *(a1 + 152), v8, BYTE2(v8) & 1);
      v7 = *(a1 + 232);
    }

    if (v7)
    {
      if (*(a1 + 202) != 255)
      {
        v9 = *(a1 + 200) | (*(a1 + 202) << 16);
        outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 184), *(a1 + 192), v9, BYTE2(v9) & 1);
      }

      if (*(a1 + 226) != 255)
      {
        v10 = *(a1 + 224) | (*(a1 + 226) << 16);
        outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 208), *(a1 + 216), v10, BYTE2(v10) & 1);
      }
    }

    if (*(a1 + 344))
    {
      if (*(a1 + 314) != 255)
      {
        v11 = *(a1 + 312) | (*(a1 + 314) << 16);
        outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 296), *(a1 + 304), v11, BYTE2(v11) & 1);
      }

      if (*(a1 + 338) != 255)
      {
        v12 = *(a1 + 336) | (*(a1 + 338) << 16);
        outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 320), *(a1 + 328), v12, BYTE2(v12) & 1);
      }
    }
  }

  v13 = *(type metadata accessor for CodableAccessibilityAttachmentStorage.VBase(0) + 52);
  v14 = type metadata accessor for LinkDestination.Configuration(0);
  if (!(*(*(v14 - 8) + 48))(a1 + v13, 1, v14))
  {
    v15 = type metadata accessor for URL();
    (*(*(v15 - 8) + 8))(a1 + v13, v15);
  }

  v16 = a1 + a2[6];
  v17 = *(v16 + 48);
  if (v17 != 1)
  {
    v18 = *(v16 + 16);
    if (v18 != 255)
    {
      outlined consume of AccessibilityText.Storage(*v16, *(v16 + 8), v18 & 1);
      v17 = *(v16 + 48);
    }

    if (v17)
    {
      __swift_destroy_boxed_opaque_existential_1((v16 + 24));
    }
  }

  return result;
}

void ContentTransition.State.init(from:)(char *a1@<X0>, char *a2@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v5 = static ContentTransition.default;
  v6 = dword_1ED536998 | (byte_1ED53699C << 32);
  LODWORD(v7) = word_1ED53699D;
  v56 = HIBYTE(word_1ED53699D);
  outlined copy of ContentTransition.Storage(static ContentTransition.default, v6, word_1ED53699D);
  outlined copy of ContentTransition.Storage(v5, v6, v7);
  outlined copy of ContentTransition.Storage(v5, v6, v7);
  outlined consume of ContentTransition.Storage(v5, v6, v7);
  v64 = v5;
  outlined consume of ContentTransition.Storage(v5, v6, v7);
  v8 = *(a1 + 1);
  v9 = *(a1 + 2);
  if (v8 >= v9)
  {
    LOBYTE(v10) = 0;
    v57 = 0;
    v58 = 0;
LABEL_6:
    *(a1 + 3) = 0;
    *a2 = v64;
    *(a2 + 2) = v6;
    a2[12] = BYTE4(v6);
    a2[13] = v7;
    a2[14] = v56 & 1;
    a2[15] = v10;
    *(a2 + 2) = v58;
    *(a2 + 6) = v57;
    return;
  }

  v10 = 0;
  v57 = 0;
  v58 = 0;
  while (1)
  {
    v11 = *(a1 + 3);
    if (v11)
    {
      v12 = *(a1 + 4);
      if (v8 < v12)
      {
        goto LABEL_15;
      }

      if (v12 < v8)
      {
        goto LABEL_85;
      }

      *(a1 + 3) = 0;
    }

    v11 = ProtobufDecoder.decodeVarint()(v11);
    if (v2)
    {
      goto LABEL_97;
    }

    if (v11 <= 7)
    {
      goto LABEL_85;
    }

LABEL_15:
    v13 = v11 >> 3;
    if (v11 >> 3 <= 2)
    {
      break;
    }

    if (v13 == 3)
    {
      if ((v11 & 7) != 2)
      {
        goto LABEL_85;
      }

      v55 = v7;
      v7 = v10;
      v39 = *(a1 + 5);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v39 + 16) + 1, 1, v39);
        v39 = isUniquelyReferenced_nonNull_native;
      }

      v42 = *(v39 + 16);
      v41 = *(v39 + 24);
      if (v42 >= v41 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v39);
        v39 = isUniquelyReferenced_nonNull_native;
      }

      *(v39 + 16) = v42 + 1;
      *(v39 + 8 * v42 + 32) = v9;
      *(a1 + 5) = v39;
      v43 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
      if (v2)
      {
        goto LABEL_89;
      }

      if (v43 < 0)
      {
        goto LABEL_100;
      }

      v44 = *(a1 + 1) + v43;
      if (v9 < v44)
      {
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
LABEL_89:
        v51 = v64;
        LOBYTE(v7) = v55;
        goto LABEL_98;
      }

      *(a1 + 2) = v44;
      v45 = specialized CodableAnimation.init(from:)(a1);
      v46 = *(a1 + 5);
      if (!*(v46 + 2))
      {
        goto LABEL_104;
      }

      v47 = v45;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v48 = *(v46 + 2);
        if (!v48)
        {
          goto LABEL_84;
        }
      }

      else
      {
        v46 = specialized _ArrayBuffer._consumeAndCreateNew()(v46);
        v48 = *(v46 + 2);
        if (!v48)
        {
LABEL_84:
          __break(1u);
LABEL_85:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
LABEL_97:
          v51 = v64;
LABEL_98:
          outlined consume of ContentTransition.Storage(v51, v6, v7);

          return;
        }
      }

      v49 = v48 - 1;
      v9 = *&v46[8 * v49 + 32];
      *(v46 + 2) = v49;

      *(a1 + 5) = v46;
      *(a1 + 2) = v9;
      v58 = v47;
      v10 = v7;
      LODWORD(v7) = v55;
    }

    else
    {
      if (v13 != 4)
      {
LABEL_40:
        v25 = v11 & 7;
        if (v25 > 1)
        {
          if (v25 == 2)
          {
            v50 = ProtobufDecoder.decodeVarint()(v11);
            if (v2)
            {
              goto LABEL_97;
            }

            if (v50 < 0)
            {
              goto LABEL_108;
            }

            v26 = *(a1 + 1) + v50;
            if (v9 < v26)
            {
              goto LABEL_85;
            }
          }

          else
          {
            if (v25 != 5)
            {
              goto LABEL_85;
            }

            v26 = *(a1 + 1) + 4;
            if (v9 < v26)
            {
              goto LABEL_85;
            }
          }
        }

        else
        {
          if ((v11 & 7) == 0)
          {
            ProtobufDecoder.decodeVarint()(v11);
            if (v2)
            {
              goto LABEL_97;
            }

            goto LABEL_8;
          }

          if (v25 != 1)
          {
            goto LABEL_85;
          }

          v26 = *(a1 + 1) + 8;
          if (v9 < v26)
          {
            goto LABEL_85;
          }
        }

        *(a1 + 1) = v26;
        goto LABEL_8;
      }

      if ((v11 & 7) != 0)
      {
        if ((v11 & 7) != 2)
        {
          goto LABEL_85;
        }

        v11 = ProtobufDecoder.decodeVarint()(v11);
        if (v2)
        {
          goto LABEL_97;
        }

        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_107;
        }

        v23 = *(a1 + 1) + v11;
        if (v9 < v23)
        {
          goto LABEL_85;
        }

        *(a1 + 3) = 32;
        *(a1 + 4) = v23;
      }

      v24 = ProtobufDecoder.decodeVarint()(v11);
      if (v2)
      {
        goto LABEL_97;
      }

      v57 = v24;
    }

LABEL_8:
    v8 = *(a1 + 1);
    if (v8 >= v9)
    {
      goto LABEL_6;
    }
  }

  if (v13 != 1)
  {
    if (v13 != 2)
    {
      goto LABEL_40;
    }

    if ((v11 & 7) != 2)
    {
      goto LABEL_85;
    }

    v14 = *(a1 + 5);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    if ((v15 & 1) == 0)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1, v14);
      v14 = v15;
    }

    v17 = *(v14 + 16);
    v16 = *(v14 + 24);
    if (v17 >= v16 >> 1)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v14);
      v14 = v15;
    }

    *(v14 + 16) = v17 + 1;
    *(v14 + 8 * v17 + 32) = v9;
    *(a1 + 5) = v14;
    v18 = ProtobufDecoder.decodeVarint()(v15);
    if (v2)
    {
      goto LABEL_97;
    }

    if (v18 < 0)
    {
      goto LABEL_101;
    }

    v19 = *(a1 + 1) + v18;
    if (v9 < v19)
    {
      goto LABEL_85;
    }

    *(a1 + 2) = v19;
    ContentTransition.Style.init(from:)(a1, &v59);
    v20 = *(a1 + 5);
    if (!*(v20 + 2))
    {
      goto LABEL_102;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v21 = *(v20 + 2);
      if (!v21)
      {
        goto LABEL_106;
      }
    }

    else
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
      v21 = *(v20 + 2);
      if (!v21)
      {
        goto LABEL_106;
      }
    }

    v22 = v21 - 1;
    v9 = *&v20[8 * v22 + 32];
    *(v20 + 2) = v22;
    *(a1 + 5) = v20;
    *(a1 + 2) = v9;
    v10 = v59;
    goto LABEL_8;
  }

  if ((v11 & 7) != 2)
  {
    goto LABEL_85;
  }

  v55 = v10;
  v27 = *(a1 + 5);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  if ((v28 & 1) == 0)
  {
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 16) + 1, 1, v27);
    v27 = v28;
  }

  v30 = *(v27 + 16);
  v29 = *(v27 + 24);
  if (v30 >= v29 >> 1)
  {
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v27);
    v27 = v28;
  }

  *(v27 + 16) = v30 + 1;
  *(v27 + 8 * v30 + 32) = v9;
  *(a1 + 5) = v27;
  v31 = ProtobufDecoder.decodeVarint()(v28);
  if (v2)
  {
    goto LABEL_97;
  }

  if ((v31 & 0x8000000000000000) == 0)
  {
    v32 = *(a1 + 1) + v31;
    if (v9 < v32)
    {
      goto LABEL_85;
    }

    *(a1 + 2) = v32;
    ContentTransition.init(from:)(a1, &v59);
    v33 = *(a1 + 5);
    if (!*(v33 + 2))
    {
      goto LABEL_103;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v34 = *(v33 + 2);
      if (!v34)
      {
        goto LABEL_105;
      }
    }

    else
    {
      v33 = specialized _ArrayBuffer._consumeAndCreateNew()(v33);
      v34 = *(v33 + 2);
      if (!v34)
      {
        goto LABEL_105;
      }
    }

    v35 = v34 - 1;
    v9 = *&v33[8 * v35 + 32];
    *(v33 + 2) = v35;
    *(a1 + 5) = v33;
    *(a1 + 2) = v9;
    v36 = v59;
    v37 = v60 | (v61 << 32);
    v38 = v62;
    v56 = v63;
    outlined consume of ContentTransition.Storage(v64, v6, v7);
    v64 = v36;
    v6 = v37;
    LODWORD(v7) = v38;
    v10 = v55;
    goto LABEL_8;
  }

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
  __break(1u);
LABEL_109:
  __break(1u);
  do
  {
    __break(1u);
    a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
    v52 = *(a2 + 2);
    if (v52)
    {
      goto LABEL_96;
    }

    __break(1u);
    a2 = *(a1 + 5);
    if (!*(a2 + 2))
    {
      goto LABEL_109;
    }

    LOBYTE(v7) = v55;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v52 = *(a2 + 2);
      if (v52)
      {
        goto LABEL_96;
      }
    }

    else
    {
      a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
      v52 = *(a2 + 2);
      if (v52)
      {
        goto LABEL_96;
      }
    }

    __break(1u);
    a2 = *(a1 + 5);
  }

  while (!*(a2 + 2));
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v52 = *(a2 + 2);
    if (v52)
    {
LABEL_96:
      v53 = v52 - 1;
      v54 = *&a2[8 * v53 + 32];
      *(a2 + 2) = v53;
      *(a1 + 5) = a2;
      *(a1 + 2) = v54;
      goto LABEL_97;
    }
  }

  else
  {
    a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
    v52 = *(a2 + 2);
    if (v52)
    {
      goto LABEL_96;
    }
  }

  __break(1u);
}

void ContentTransition.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v5 = static ContentTransition.default;
  v6 = dword_1ED536998 | (byte_1ED53699C << 32);
  v7 = word_1ED53699D;
  v56 = HIBYTE(word_1ED53699D);
  v8 = a1[1];
  v9 = a1[2];
  v10 = static ContentTransition.default;
  v11 = v6;
  v12 = word_1ED53699D;
  if (v8 >= v9)
  {
    goto LABEL_86;
  }

  outlined copy of ContentTransition.Storage(static ContentTransition.default, v6, word_1ED53699D);
  while (1)
  {
    v13 = a1[3];
    if (v13)
    {
      v14 = a1[4];
      if (v8 < v14)
      {
        goto LABEL_14;
      }

      if (v14 < v8)
      {
        goto LABEL_88;
      }

      a1[3] = 0;
    }

    v13 = ProtobufDecoder.decodeVarint()(v13);
    if (v2)
    {
      goto LABEL_97;
    }

    if (v13 <= 7)
    {
      goto LABEL_88;
    }

LABEL_14:
    v15 = v13 >> 3;
    if (v13 >> 3 <= 2)
    {
      if (v15 != 1)
      {
        if (v15 == 2)
        {
          if ((v13 & 7) != 2)
          {
            goto LABEL_88;
          }

          v16 = a1[5];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1, v16);
            v16 = isUniquelyReferenced_nonNull_native;
          }

          v3 = *(v16 + 16);
          v18 = *(v16 + 24);
          if (v3 >= v18 >> 1)
          {
            isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v3 + 1, 1, v16);
            v16 = isUniquelyReferenced_nonNull_native;
          }

          *(v16 + 16) = v3 + 1;
          *(v16 + 8 * v3 + 32) = v9;
          a1[5] = v16;
          v19 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
          if (v2)
          {
            goto LABEL_97;
          }

          if ((v19 & 0x8000000000000000) == 0)
          {
            v20 = a1[1] + v19;
            if (v9 < v20)
            {
              goto LABEL_88;
            }

            a1[2] = v20;
            ContentTransition.CustomTransition.init(from:)(a1, &v53);
            v21 = a1[5];
            if (!*(v21 + 2))
            {
              goto LABEL_102;
            }

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v22 = *(v21 + 2);
              if (!v22)
              {
                goto LABEL_105;
              }
            }

            else
            {
              v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
              v22 = *(v21 + 2);
              if (!v22)
              {
                goto LABEL_105;
              }
            }

            v23 = v22 - 1;
            v9 = *&v21[8 * v23 + 32];
            *(v21 + 2) = v23;
            a1[5] = v21;
            a1[2] = v9;
            v3 = v53;
            v24 = v54 | (v55 << 32);
            outlined consume of ContentTransition.Storage(v5, v6, v7);
            v7 = 1;
            goto LABEL_5;
          }

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
          __break(1u);
LABEL_108:
          __break(1u);
          do
          {
            __break(1u);
            v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
            v49 = *(v3 + 16);
            if (v49)
            {
              goto LABEL_96;
            }

            __break(1u);
            v3 = a1[5];
            if (!*(v3 + 16))
            {
              goto LABEL_108;
            }

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v49 = *(v3 + 16);
              if (v49)
              {
                goto LABEL_96;
              }
            }

            else
            {
              v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
              v49 = *(v3 + 16);
              if (v49)
              {
                goto LABEL_96;
              }
            }

            __break(1u);
            v3 = a1[5];
          }

          while (!*(v3 + 16));
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v49 = *(v3 + 16);
            if (v49)
            {
LABEL_96:
              v50 = v49 - 1;
              v51 = *(v3 + 8 * v50 + 32);
              *(v3 + 16) = v50;
              a1[5] = v3;
              a1[2] = v51;
              goto LABEL_97;
            }
          }

          else
          {
            v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
            v49 = *(v3 + 16);
            if (v49)
            {
              goto LABEL_96;
            }
          }

          __break(1u);
          return;
        }

        goto LABEL_45;
      }

      if ((v13 & 7) != 2)
      {
        goto LABEL_88;
      }

      v37 = a1[5];
      v38 = swift_isUniquelyReferenced_nonNull_native();
      if ((v38 & 1) == 0)
      {
        v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v37 + 16) + 1, 1, v37);
        v37 = v38;
      }

      v3 = *(v37 + 16);
      v39 = *(v37 + 24);
      if (v3 >= v39 >> 1)
      {
        v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v3 + 1, 1, v37);
        v37 = v38;
      }

      *(v37 + 16) = v3 + 1;
      *(v37 + 8 * v3 + 32) = v9;
      a1[5] = v37;
      v40 = ProtobufDecoder.decodeVarint()(v38);
      if (v2)
      {
        goto LABEL_97;
      }

      if (v40 < 0)
      {
        goto LABEL_100;
      }

      v41 = a1[1] + v40;
      if (v9 < v41)
      {
        goto LABEL_88;
      }

      a1[2] = v41;
      ContentTransition.NamedTransition.init(from:)(a1, &v53);
      v42 = a1[5];
      if (!*(v42 + 16))
      {
        goto LABEL_101;
      }

      v10 = swift_isUniquelyReferenced_nonNull_native();
      if (v10)
      {
        v43 = *(v42 + 16);
        if (!v43)
        {
          goto LABEL_85;
        }

        goto LABEL_61;
      }

      v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v42);
      v42 = v10;
      v43 = *(v10 + 16);
      if (v43)
      {
LABEL_61:
        v44 = v43 - 1;
        v9 = *(v42 + 8 * v44 + 32);
        *(v42 + 16) = v44;
        a1[5] = v42;
        a1[2] = v9;
        v3 = v53;
        v24 = v54 | (v55 << 32);
        outlined consume of ContentTransition.Storage(v5, v6, v7);
        v7 = 0;
LABEL_5:
        v6 = v24;
        v5 = v3;
LABEL_6:
        v2 = 0;
        goto LABEL_7;
      }

LABEL_85:
      __break(1u);
LABEL_86:
      outlined copy of ContentTransition.Storage(v10, v11, v12);
LABEL_87:
      v48 = v56 & 1;
      a1[3] = 0;
      *a2 = v5;
      *(a2 + 8) = v6;
      *(a2 + 12) = BYTE4(v6);
      *(a2 + 13) = v7;
      *(a2 + 14) = v48;
      return;
    }

    if (v15 == 3)
    {
      break;
    }

    if (v15 == 4)
    {
      if ((v13 & 7) != 2)
      {
        goto LABEL_88;
      }

      v25 = a1[5];
      v26 = swift_isUniquelyReferenced_nonNull_native();
      if ((v26 & 1) == 0)
      {
        v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 16) + 1, 1, v25);
        v25 = v26;
      }

      v3 = *(v25 + 16);
      v27 = *(v25 + 24);
      if (v3 >= v27 >> 1)
      {
        v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v3 + 1, 1, v25);
        v25 = v26;
      }

      *(v25 + 16) = v3 + 1;
      *(v25 + 8 * v3 + 32) = v9;
      a1[5] = v25;
      v28 = ProtobufDecoder.decodeVarint()(v26);
      if (v2)
      {
        goto LABEL_97;
      }

      if (v28 < 0)
      {
        goto LABEL_99;
      }

      v29 = a1[1] + v28;
      if (v9 < v29)
      {
        goto LABEL_88;
      }

      a1[2] = v29;
      _SymbolEffect.ReplaceConfiguration.init(from:)(a1, &v53);
      v30 = a1[5];
      if (!*(v30 + 2))
      {
        goto LABEL_103;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v31 = *(v30 + 2);
        if (!v31)
        {
          goto LABEL_104;
        }
      }

      else
      {
        v30 = specialized _ArrayBuffer._consumeAndCreateNew()(v30);
        v31 = *(v30 + 2);
        if (!v31)
        {
          goto LABEL_104;
        }
      }

      v32 = v31 - 1;
      v9 = *&v30[8 * v32 + 32];
      *(v30 + 2) = v32;
      a1[5] = v30;
      a1[2] = v9;
      v3 = v54;
      v33 = 0x100000000;
      if (!BYTE4(v53))
      {
        v33 = 0;
      }

      v34 = v33 | v53;
      outlined consume of ContentTransition.Storage(v5, v6, v7);
      v7 = 2;
      v6 = v3;
      v5 = v34;
      goto LABEL_6;
    }

LABEL_45:
    v35 = v13 & 7;
    if (v35 > 1)
    {
      if (v35 == 2)
      {
        v47 = ProtobufDecoder.decodeVarint()(v13);
        if (v2)
        {
          goto LABEL_97;
        }

        if (v47 < 0)
        {
          goto LABEL_107;
        }

        v36 = a1[1] + v47;
        if (v9 < v36)
        {
          goto LABEL_88;
        }
      }

      else
      {
        if (v35 != 5)
        {
          goto LABEL_88;
        }

        v36 = a1[1] + 4;
        if (v9 < v36)
        {
          goto LABEL_88;
        }
      }

      goto LABEL_79;
    }

    if ((v13 & 7) != 0)
    {
      if (v35 != 1)
      {
        goto LABEL_88;
      }

      v36 = a1[1] + 8;
      if (v9 < v36)
      {
        goto LABEL_88;
      }

LABEL_79:
      a1[1] = v36;
      goto LABEL_7;
    }

    ProtobufDecoder.decodeVarint()(v13);
    if (v2)
    {
      goto LABEL_97;
    }

LABEL_7:
    v8 = a1[1];
    if (v8 >= v9)
    {
      goto LABEL_87;
    }
  }

  if ((v13 & 7) == 0)
  {
LABEL_68:
    v46 = ProtobufDecoder.decodeVarint()(v13);
    if (v2)
    {
      goto LABEL_97;
    }

    v56 = v46 != 0;
    goto LABEL_7;
  }

  if ((v13 & 7) != 2)
  {
    goto LABEL_88;
  }

  v13 = ProtobufDecoder.decodeVarint()(v13);
  if (v2)
  {
    goto LABEL_97;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    goto LABEL_106;
  }

  v45 = a1[1] + v13;
  if (v9 >= v45)
  {
    a1[3] = 24;
    a1[4] = v45;
    goto LABEL_68;
  }

LABEL_88:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
LABEL_97:
  outlined consume of ContentTransition.Storage(v5, v6, v7);
}