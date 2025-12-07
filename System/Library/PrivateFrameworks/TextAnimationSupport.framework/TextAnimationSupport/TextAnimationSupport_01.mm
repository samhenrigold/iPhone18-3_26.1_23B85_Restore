uint64_t sub_195BD7BD8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7, v1);
}

void specialized static Text.Effect.KeyframeLayout.gather(keyframes:entry:from:attributedString:segmentation:map:id:)(uint64_t *a1, uint64_t a2, uint64_t a3, const __CFAttributedString *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v305 = a8;
  v311 = a7;
  v289 = a6;
  v277 = a2;
  v278 = a5;
  v297 = a4;
  v275 = a1;
  v10 = MEMORY[0x1E6981010];
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_2(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BA8]);
  v273[2] = v11;
  MEMORY[0x1EEE9AC00](v11);
  v273[1] = v273 - v12;
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_2(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, v10, MEMORY[0x1E69E7BE0]);
  v286 = v13;
  v274 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v273[0] = v273 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v287 = v273 - v16;
  type metadata accessor for (offset: Int, element: Text.Layout.Run)(0);
  v295 = v17;
  v323 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v301 = (v273 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v325 = type metadata accessor for Text.Layout.Run();
  v322 = *(v325 - 8);
  MEMORY[0x1EEE9AC00](v325);
  v324 = (v273 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v300 = v273 - v21;
  type metadata accessor for (offset: Int, element: Text.Layout.Run)?(0, &lazy cache variable for type metadata for (offset: Int, element: Text.Layout.Run)?, type metadata accessor for (offset: Int, element: Text.Layout.Run), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = v273 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v314 = (v273 - v26);
  v27 = MEMORY[0x1E6981050];
  type metadata accessor for EnumeratedSequence<Text.Layout.Line>(0, &lazy cache variable for type metadata for EnumeratedSequence<Text.Layout.Line>, &lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line, MEMORY[0x1E6981050], MEMORY[0x1E69E6E48]);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v283 = v273 - v29;
  type metadata accessor for EnumeratedSequence<Text.Layout.Line>(0, &lazy cache variable for type metadata for EnumeratedSequence<Text.Layout.Line>.Iterator, &lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line, v27, MEMORY[0x1E69E6E40]);
  v282 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v32 = (v273 - v31);
  v33 = type metadata accessor for Text.Layout.Line();
  v321 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v291 = v273 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v296 = v273 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v39 = v273 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v281 = v273 - v41;
  type metadata accessor for IndexingIterator<Text.Layout>(0);
  v43 = v42 - 8;
  MEMORY[0x1EEE9AC00](v42);
  v45 = v273 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v337[0] = MEMORY[0x1E69E7CC8];
  v46 = type metadata accessor for Text.Layout();
  (*(*(v46 - 8) + 16))(v45, a3, v46);
  v285 = *(v43 + 44);
  v47 = lazy protocol witness table accessor for type Text.Layout.Line and conformance Text.Layout.Line(&lazy protocol witness table cache variable for type Text.Layout and conformance Text.Layout, MEMORY[0x1E6981090], MEMORY[0x1E69810A0]);
  v276 = a3;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v48 = *&v45[v285];
  v288 = v46;
  v284 = v47;
  if (v48 == v335[0])
  {
LABEL_2:
    outlined destroy of IndexingIterator<Text.Layout.Cluster>(v45, type metadata accessor for IndexingIterator<Text.Layout>);
    v49 = Text.Layout.CharacterIndex.init(_:)();
    CFAttributedStringGetLength(v297);
    v318 = Text.Layout.CharacterIndex.init(_:)();
    v319 = v49;
    if (v318 >= v49)
    {
      swift_beginAccess();
      v50 = v337[0];
      v51 = v337[0] + 64;
      v52 = 1 << *(v337[0] + 32);
      v53 = -1;
      if (v52 < 64)
      {
        v53 = ~(-1 << v52);
      }

      v54 = v53 & *(v337[0] + 64);
      v55 = (v52 + 63) >> 6;
      v316 = (v274 + 8);
      v317 = (v274 + 16);

      v56 = 0;
      v315 = xmmword_195CC8D00;
      v58 = v277;
      v57 = v278;
      v320 = v50;
      while (v54)
      {
        v59 = v54;
LABEL_12:
        v54 = (v59 - 1) & v59;
        if (*(v57 + 16))
        {
          v61 = (v56 << 9) | (8 * __clz(__rbit64(v59)));
          v62 = *(v50[6] + v61);
          v325 = *(v50[7] + v61);
          v63 = specialized __RawDictionaryStorage.find<A>(_:)(v62);
          if (v64)
          {
            v65 = *(*(v57 + 56) + 8 * v63);
            v323 = v54;
            v324 = v65;
            if (*(v58 + 16) && (v66 = specialized __RawDictionaryStorage.find<A>(_:)(v62), (v67 & 1) != 0))
            {
              v68 = *(*(v58 + 56) + 8 * v66);
              v69 = v325;

              v70 = v324;
              v321 = v68;
            }

            else
            {
              v71 = v324;
              v69 = v325;
              v72 = *((*MEMORY[0x1E69E7D40] & *v324) + 0xA0);

              v73 = v71;
              v321 = v72();
            }

            v322 = v62;
            v74 = *(v69 + 16);
            dispatch thunk of Collection.startIndex.getter();
            dispatch thunk of Collection.endIndex.getter();
            v75 = dispatch thunk of Collection.distance(from:to:)();
            if (v74 == v75)
            {
              v313 = v51;
              v314 = v55;
              lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex(v75, v76, v77);
              RangeSet.init()();
              v78 = *(v69 + 16);
              v79 = v286;
              v80 = v273[0];
              v81 = v316;
              if (v78)
              {
                v82 = (v325 + 32);
                v83 = *v317;
                do
                {
                  v84 = *v82++;
                  v83(v80, v84 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_characterRanges, v79);
                  specialized RangeSet.insert(contentsOf:)();
                  v79 = v286;
                  (*v81)(v80, v286);
                  --v78;
                }

                while (v78);
              }

              v85 = v79;
              v86 = v287;
              RangeSet.ranges.getter();
              lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges();
              v87 = dispatch thunk of Sequence._copyToContiguousArray()();
              type metadata accessor for _ContiguousArrayStorage<Range<Text.Layout.CharacterIndex>>(0);
              inited = swift_initStackObject();
              *(inited + 16) = v315;
              v89 = v318;
              *(inited + 32) = v319;
              *(inited + 40) = v89;
              v90 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSny7SwiftUI4TextV6LayoutV14CharacterIndexVG_Tt1g5(v87, inited);

              swift_setDeallocating();
              if (v90)
              {
                v91 = 0;
              }

              else
              {
                v91 = 3;
              }

              (*v81)(v86, v85);
              v51 = v313;
              v55 = v314;
            }

            else
            {
              v91 = 3;
            }

            v92 = v325;
            v93 = *(v325 + 16);
            v94 = v321;

            v95 = v275;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v332 = *v95;
            v97 = v92;
            v98 = v322;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v97, v91, v322, v94, isUniquelyReferenced_nonNull_native);

            *v95 = v332;
            v99 = swift_isUniquelyReferenced_nonNull_native();
            v332 = v95[1];
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v93, v98, v99);

            v95[1] = v332;
            v58 = v277;
            v57 = v278;
            v50 = v320;
            v54 = v323;
          }
        }
      }

      while (1)
      {
        v60 = v56 + 1;
        if (__OFADD__(v56, 1))
        {
          goto LABEL_185;
        }

        if (v60 >= v55)
        {

          return;
        }

        v59 = *(v51 + 8 * v60);
        ++v56;
        if (v59)
        {
          v56 = v60;
          goto LABEL_12;
        }
      }
    }

    goto LABEL_201;
  }

  v294 = v321 + 2;
  v280 = (v321 + 4);
  LODWORD(v317) = a9;
  v298 = v39;
  v299 = (v322 + 16);
  v319 = v33;
  v320 = (v322 + 32);
  v312 = (v323 + 48);
  v313 = (v323 + 56);
  v293 = (v321 + 1);
  v310 = (v322 + 8);
  v307 = v24;
  v316 = v32;
  v279 = v45;
LABEL_31:
  v102 = dispatch thunk of Collection.subscript.read();
  v103 = *v294;
  v104 = v281;
  (*v294)(v281);
  v102(v335, 0);
  dispatch thunk of Collection.formIndex(after:)();
  v105 = *v280;
  v106 = v298;
  (*v280)(v298, v104, v33);
  v332 = 0;
  v333 = 0;
  v334 = 1;
  v329 = 0;
  v330 = 0;
  v331 = 1;
  v327 = 0;
  v328 = 0;
  v107 = v283;
  v292 = v103;
  (v103)(v283, v106, v33);
  v105(v296, v107, v33);
  v108 = MEMORY[0x1E6981048];
  lazy protocol witness table accessor for type Text.Layout.Line and conformance Text.Layout.Line(&lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line, MEMORY[0x1E6981048], MEMORY[0x1E6981050]);
  v109 = v316;
  dispatch thunk of Sequence.makeIterator()();
  v302 = *(v282 + 36);
  *(v109 + v302) = 0;
  v110 = MEMORY[0x1E6981058];
  type metadata accessor for EnumeratedSequence<Text.Layout.Line>(0, &lazy cache variable for type metadata for IndexingIterator<Text.Layout.Line>, &lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line, MEMORY[0x1E6981058], MEMORY[0x1E69E6CF0]);
  v112 = *(v111 + 36);
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v113 = lazy protocol witness table accessor for type Text.Layout.Line and conformance Text.Layout.Line(&lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line, v108, v110);
  v308 = v112;
  v309 = 0;
  v114 = 0;
  v303 = 0;
  v304 = 0;
  *&v315 = 0;
  v115 = 0;
  v116 = 0;
  LODWORD(v322) = 1;
  LODWORD(v318) = 1;
  v117 = v295;
  v306 = v113;
LABEL_35:
  v323 = v115;
  v119 = v116;
  while (1)
  {
    v120 = v316;
    dispatch thunk of Collection.endIndex.getter();
    if (*(v120 + v112) == v335[0])
    {
      (*v313)(v24, 1, 1, v117);
      v121 = v324;
    }

    else
    {
      v122 = dispatch thunk of Collection.subscript.read();
      v123 = v300;
      v124 = v325;
      (*v299)(v300);
      v122(v335, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v125 = *(v117 + 48);
      v126 = v301;
      v127 = v315;
      *v301 = v315;
      (*v320)(v126 + v125, v123, v124);
      v128 = __OFADD__(v127, 1);
      v129 = v127 + 1;
      if (v128)
      {
        goto LABEL_182;
      }

      *&v315 = v129;
      *(v120 + v302) = v129;
      v24 = v307;
      outlined init with take of (offset: Int, element: Text.Layout.Run)(v126, v307);
      (*v313)(v24, 0, 1, v117);
      v121 = v324;
      v112 = v308;
    }

    v130 = v314;
    outlined init with take of (offset: Int, element: Text.Layout.Run)?(v24, v314);
    if ((*v312)(v130, 1, v117) == 1)
    {
      outlined destroy of EnumeratedSequence<Text.Layout.Line>.Iterator(v316);
      v100 = v297;
      v101 = v298;
      specialized flushTransformEffectRuns #1 () in static Text.Effect.KeyframeLayout.gather(keyframes:entry:from:attributedString:segmentation:map:id:)(&v328, &v332, v337, v298, v297);
      specialized flushTransformEffectRuns #1 () in static Text.Effect.KeyframeLayout.gather(keyframes:entry:from:attributedString:segmentation:map:id:)(&v327, &v329, v337, v101, v100);

      v33 = v319;
      (*v293)(v101, v319);
      v45 = v279;
      dispatch thunk of Collection.endIndex.getter();
      if (*&v45[v285] == v335[0])
      {
        goto LABEL_2;
      }

      goto LABEL_31;
    }

    v321 = *v130;
    (*v320)(v121, v130 + *(v117 + 48), v325);
    if (one-time initialization token for _textAnimation != -1)
    {
      swift_once();
    }

    Text.Layout.Run.subscript.getter();
    if (!v336)
    {
      outlined destroy of Any?(v335, v131);
LABEL_54:
      if (v119)
      {
        if ((v318 & 1) == 0)
        {
          v136 = *&v119[OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id];
          v137 = v296;
          v138 = v319;
          v139 = v292;
          (v292)(v296, v298, v319);
          v140 = v291;
          (v139)(v291, v137, v138);
          type metadata accessor for Text.Effect.KeyframeLayout.Fragment.Storage(0);
          swift_allocObject();
          v141 = v119;
          v142 = v297;
          specialized Text.Effect.KeyframeLayout.Fragment.Storage.init(line:runIndices:attributedString:)(v140, v304, v303, v142);

          (*v293)(v137, v138);
          swift_beginAccess();
          v143 = swift_isUniquelyReferenced_nonNull_native();
          v144 = v337[0];
          v326 = v337[0];
          v145 = specialized __RawDictionaryStorage.find<A>(_:)(v136);
          v147 = v144[2];
          v148 = (v146 & 1) == 0;
          v128 = __OFADD__(v147, v148);
          v149 = v147 + v148;
          if (v128)
          {
            goto LABEL_183;
          }

          v150 = v146;
          if (v144[3] >= v149)
          {
            if ((v143 & 1) == 0)
            {
              v202 = v145;
              specialized _NativeDictionary.copy()();
              v145 = v202;
              v144 = v326;
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v149, v143);
            v144 = v326;
            v145 = specialized __RawDictionaryStorage.find<A>(_:)(v136);
            if ((v150 & 1) != (v151 & 1))
            {
              goto LABEL_203;
            }
          }

          v112 = v308;
          v337[0] = v144;
          if ((v150 & 1) == 0)
          {
            v144[(v145 >> 6) + 8] |= 1 << v145;
            *(v144[6] + 8 * v145) = v136;
            *(v144[7] + 8 * v145) = MEMORY[0x1E69E7CC0];
            v152 = v144[2];
            v128 = __OFADD__(v152, 1);
            v153 = v152 + 1;
            if (v128)
            {
              goto LABEL_184;
            }

            v144[2] = v153;
          }

          v154 = v144[7] + 8 * v145;
          MEMORY[0x19A8BD720]();
          if (*(*v154 + 16) >= *(*v154 + 24) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();

          v303 = 0;
          v304 = 0;
          v332 = 0;
          v333 = 0;
          LODWORD(v318) = 1;
          v334 = 1;
          v135 = specialized thunk for @callee_guaranteed () -> (@owned [Text.Effect.KeyframeLayout.Fragment]);
          v117 = v295;
          goto LABEL_84;
        }

LABEL_57:
        v135 = 0;
        LODWORD(v318) = 1;
      }

      else
      {
        v135 = 0;
      }

LABEL_85:
      v328 = 0;
      _sxRi_zRi0_zlySay7SwiftUI4TextV0C16AnimationSupportE6EffectO14KeyframeLayoutV8FragmentVGIsegr_SgWOe(v135, 0);
      v116 = 0;
      v175 = v311;
      goto LABEL_86;
    }

    type metadata accessor for AnyTextEffect();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_54;
    }

    v116 = v326;
    v132 = *(v326 + OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id);
    if ((v317 & 1) == 0 && v132 != v305 || !*(v289 + 16) || (v133 = specialized __RawDictionaryStorage.find<A>(_:)(v132), (v134 & 1) == 0) || *(*(v289 + 56) + 8 * v133) != v116)
    {
      if (v119)
      {
        if (v318)
        {

          goto LABEL_57;
        }

        v290 = v116;
        v155 = *&v119[OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id];
        v156 = v296;
        v157 = v319;
        v158 = v292;
        (v292)(v296, v298, v319);
        v159 = v291;
        (v158)(v291, v156, v157);
        type metadata accessor for Text.Effect.KeyframeLayout.Fragment.Storage(0);
        swift_allocObject();
        v160 = v119;
        v161 = v297;
        specialized Text.Effect.KeyframeLayout.Fragment.Storage.init(line:runIndices:attributedString:)(v159, v304, v303, v161);

        (*v293)(v156, v157);
        swift_beginAccess();
        v162 = swift_isUniquelyReferenced_nonNull_native();
        v163 = v337[0];
        v326 = v337[0];
        v165 = specialized __RawDictionaryStorage.find<A>(_:)(v155);
        v166 = v163[2];
        v167 = (v164 & 1) == 0;
        v168 = v166 + v167;
        if (__OFADD__(v166, v167))
        {
          goto LABEL_186;
        }

        v169 = v164;
        if (v163[3] >= v168)
        {
          if ((v162 & 1) == 0)
          {
            specialized _NativeDictionary.copy()();
            v163 = v326;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v168, v162);
          v163 = v326;
          v170 = specialized __RawDictionaryStorage.find<A>(_:)(v155);
          if ((v169 & 1) != (v171 & 1))
          {
            goto LABEL_203;
          }

          v165 = v170;
        }

        v112 = v308;
        v337[0] = v163;
        if ((v169 & 1) == 0)
        {
          v163[(v165 >> 6) + 8] |= 1 << v165;
          *(v163[6] + 8 * v165) = v155;
          *(v163[7] + 8 * v165) = MEMORY[0x1E69E7CC0];
          v172 = v163[2];
          v128 = __OFADD__(v172, 1);
          v173 = v172 + 1;
          if (v128)
          {
            goto LABEL_187;
          }

          v163[2] = v173;
        }

        v174 = v163[7] + 8 * v165;
        MEMORY[0x19A8BD720]();
        if (*(*v174 + 16) >= *(*v174 + 24) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();

        v303 = 0;
        v304 = 0;
        v332 = 0;
        v333 = 0;
        LODWORD(v318) = 1;
        v334 = 1;
        v135 = specialized thunk for @callee_guaranteed () -> (@owned [Text.Effect.KeyframeLayout.Fragment]);
        v117 = v295;
        v121 = v324;
LABEL_84:
        v24 = v307;
      }

      else
      {

        v135 = 0;
      }

      goto LABEL_85;
    }

    if (v119)
    {
      if (v116 != v119)
      {
        if (v318)
        {

          v181 = 0;
          v175 = v311;
        }

        else
        {
          v290 = v116;
          v318 = *&v119[OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id];
          v182 = v296;
          v183 = v319;
          v184 = v292;
          (v292)(v296, v298, v319);
          v185 = v291;
          (v184)(v291, v182, v183);
          type metadata accessor for Text.Effect.KeyframeLayout.Fragment.Storage(0);
          swift_allocObject();
          v186 = v119;
          v187 = v297;
          v304 = specialized Text.Effect.KeyframeLayout.Fragment.Storage.init(line:runIndices:attributedString:)(v185, v304, v303, v187);

          v188 = v182;
          v189 = v318;
          (*v293)(v188, v183);
          swift_beginAccess();
          v190 = swift_isUniquelyReferenced_nonNull_native();
          v191 = v337[0];
          v326 = v337[0];
          v192 = specialized __RawDictionaryStorage.find<A>(_:)(v189);
          v194 = v191[2];
          v195 = (v193 & 1) == 0;
          v128 = __OFADD__(v194, v195);
          v196 = v194 + v195;
          if (v128)
          {
            goto LABEL_200;
          }

          v197 = v193;
          if (v191[3] >= v196)
          {
            v112 = v308;
            if ((v190 & 1) == 0)
            {
              v203 = v192;
              specialized _NativeDictionary.copy()();
              v192 = v203;
              v191 = v326;
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v196, v190);
            v191 = v326;
            v192 = specialized __RawDictionaryStorage.find<A>(_:)(v189);
            v112 = v308;
            if ((v197 & 1) != (v198 & 1))
            {
              goto LABEL_203;
            }
          }

          v175 = v311;
          v337[0] = v191;
          if ((v197 & 1) == 0)
          {
            v191[(v192 >> 6) + 8] |= 1 << v192;
            *(v191[6] + 8 * v192) = v189;
            *(v191[7] + 8 * v192) = MEMORY[0x1E69E7CC0];
            v199 = v191[2];
            v128 = __OFADD__(v199, 1);
            v200 = v199 + 1;
            if (v128)
            {
              goto LABEL_202;
            }

            v191[2] = v200;
          }

          v201 = v191[7] + 8 * v192;
          MEMORY[0x19A8BD720]();
          if (*(*v201 + 16) >= *(*v201 + 24) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();

          v332 = 0;
          v333 = 0;
          v334 = 1;
          v181 = specialized thunk for @callee_guaranteed () -> (@owned [Text.Effect.KeyframeLayout.Fragment]);
          v117 = v295;
          v24 = v307;
          v116 = v290;
        }

        v328 = 0;
        _sxRi_zRi0_zlySay7SwiftUI4TextV0C16AnimationSupportE6EffectO14KeyframeLayoutV8FragmentVGIsegr_SgWOe(v181, 0);
        v328 = v116;
        goto LABEL_126;
      }
    }

    else
    {
      v328 = 0;
      _sxRi_zRi0_zlySay7SwiftUI4TextV0C16AnimationSupportE6EffectO14KeyframeLayoutV8FragmentVGIsegr_SgWOe(0, 0);
    }

    v328 = v116;
    v175 = v311;
    if ((v318 & 1) == 0)
    {
      if (__OFADD__(v321, 1))
      {
        goto LABEL_197;
      }

      if ((v321 + 1) < v304)
      {
        goto LABEL_198;
      }

      LODWORD(v318) = 0;
      v332 = v304;
      v333 = v321 + 1;
      v303 = (v321 + 1);
      v334 = 0;
      goto LABEL_86;
    }

LABEL_126:
    if (__OFADD__(v321, 1))
    {
      goto LABEL_193;
    }

    if ((v321 + 1) < v321)
    {
      goto LABEL_194;
    }

    LODWORD(v318) = 0;
    v332 = v321;
    v333 = v321 + 1;
    v303 = (v321 + 1);
    v304 = v321;
    v334 = 0;
LABEL_86:
    if (one-time initialization token for _textFilterAnimation != -1)
    {
      swift_once();
    }

    Text.Layout.Run.subscript.getter();
    if (!v336)
    {
      outlined destroy of Any?(v335, v176);
LABEL_137:
      if (v323)
      {
        if (v322)
        {
          v204 = v323;
          (*v310)(v121, v325);
LABEL_140:

          v118 = 0;
          LODWORD(v322) = 1;
        }

        else
        {
          v290 = v116;
          v322 = *(v323 + OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id);
          v223 = v296;
          v224 = v319;
          v225 = v292;
          v226 = v323;
          (v292)(v296, v298, v319);
          v227 = v291;
          (v225)(v291, v223, v224);
          type metadata accessor for Text.Effect.KeyframeLayout.Fragment.Storage(0);
          swift_allocObject();
          v228 = v297;
          v229 = v226;
          v230 = v322;
          v231 = v229;
          specialized Text.Effect.KeyframeLayout.Fragment.Storage.init(line:runIndices:attributedString:)(v227, v309, v114, v228);

          (*v293)(v223, v224);
          swift_beginAccess();
          v232 = swift_isUniquelyReferenced_nonNull_native();
          v233 = v337[0];
          v326 = v337[0];
          v234 = specialized __RawDictionaryStorage.find<A>(_:)(v230);
          v236 = v233[2];
          v237 = (v235 & 1) == 0;
          v128 = __OFADD__(v236, v237);
          v238 = v236 + v237;
          if (v128)
          {
LABEL_191:
            __break(1u);
            goto LABEL_192;
          }

          v239 = v235;
          if (v233[3] >= v238)
          {
            v116 = v290;
            if ((v232 & 1) == 0)
            {
              v271 = v234;
              specialized _NativeDictionary.copy()();
              v234 = v271;
              v233 = v326;
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v238, v232);
            v233 = v326;
            v234 = specialized __RawDictionaryStorage.find<A>(_:)(v230);
            v116 = v290;
            if ((v239 & 1) != (v240 & 1))
            {
              goto LABEL_203;
            }
          }

          v112 = v308;
          v337[0] = v233;
          if ((v239 & 1) == 0)
          {
            v233[(v234 >> 6) + 8] |= 1 << v234;
            *(v233[6] + 8 * v234) = v230;
            *(v233[7] + 8 * v234) = MEMORY[0x1E69E7CC0];
            v246 = v233[2];
            v128 = __OFADD__(v246, 1);
            v247 = v246 + 1;
            if (v128)
            {
              goto LABEL_195;
            }

            v233[2] = v247;
          }

          v248 = v233[7] + 8 * v234;
          MEMORY[0x19A8BD720]();
          if (*(*v248 + 16) >= *(*v248 + 24) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();

          (*v310)(v121, v325);
          v309 = 0;
          v114 = 0;
          v329 = 0;
          v330 = 0;
          LODWORD(v322) = 1;
          v331 = 1;
          v118 = specialized thunk for @callee_guaranteed () -> (@owned [Text.Effect.KeyframeLayout.Fragment]);
          v117 = v295;
          v24 = v307;
        }

LABEL_34:
        v327 = 0;
        _sxRi_zRi0_zlySay7SwiftUI4TextV0C16AnimationSupportE6EffectO14KeyframeLayoutV8FragmentVGIsegr_SgWOe(v118, 0);
        v115 = 0;
        goto LABEL_35;
      }

      (*v310)(v121, v325);
LABEL_33:
      v118 = 0;
      goto LABEL_34;
    }

    type metadata accessor for AnyTextFilterEffect();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_137;
    }

    v115 = v326;
    v177 = *(v326 + OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id);
    if ((v317 & 1) == 0 && v177 != v305)
    {
      break;
    }

    if (!*(v175 + 16))
    {
      break;
    }

    v178 = specialized __RawDictionaryStorage.find<A>(_:)(v177);
    if ((v179 & 1) == 0 || *(*(v175 + 56) + 8 * v178) != v115)
    {
      break;
    }

    if (v323)
    {
      if (v115 == v323)
      {
        v180 = v323;
        (*v310)(v324, v325);

        goto LABEL_99;
      }

      if (v322)
      {
        v244 = v323;
        (*v310)(v324, v325);

        v245 = 0;
      }

      else
      {
        v290 = v116;
        v322 = *(v323 + OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id);
        v249 = v296;
        v250 = v319;
        v251 = v292;
        v252 = v323;
        (v292)(v296, v298, v319);
        v253 = v291;
        (v251)(v291, v249, v250);
        type metadata accessor for Text.Effect.KeyframeLayout.Fragment.Storage(0);
        swift_allocObject();
        v254 = v297;
        v255 = v252;
        v256 = v322;
        v257 = v255;
        specialized Text.Effect.KeyframeLayout.Fragment.Storage.init(line:runIndices:attributedString:)(v253, v309, v114, v254);

        (*v293)(v249, v250);
        swift_beginAccess();
        v258 = swift_isUniquelyReferenced_nonNull_native();
        v259 = v337[0];
        v326 = v337[0];
        v260 = specialized __RawDictionaryStorage.find<A>(_:)(v256);
        v262 = v259[2];
        v263 = (v261 & 1) == 0;
        v128 = __OFADD__(v262, v263);
        v264 = v262 + v263;
        if (v128)
        {
          goto LABEL_196;
        }

        v265 = v261;
        if (v259[3] >= v264)
        {
          if ((v258 & 1) == 0)
          {
            v272 = v260;
            specialized _NativeDictionary.copy()();
            v260 = v272;
            v259 = v326;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v264, v258);
          v259 = v326;
          v260 = specialized __RawDictionaryStorage.find<A>(_:)(v256);
          if ((v265 & 1) != (v266 & 1))
          {
            goto LABEL_203;
          }
        }

        v112 = v308;
        v337[0] = v259;
        if ((v265 & 1) == 0)
        {
          v259[(v260 >> 6) + 8] |= 1 << v260;
          *(v259[6] + 8 * v260) = v256;
          *(v259[7] + 8 * v260) = MEMORY[0x1E69E7CC0];
          v267 = v259[2];
          v128 = __OFADD__(v267, 1);
          v268 = v267 + 1;
          if (v128)
          {
            goto LABEL_199;
          }

          v259[2] = v268;
        }

        v269 = v259[7] + 8 * v260;
        MEMORY[0x19A8BD720]();
        if (*(*v269 + 16) >= *(*v269 + 24) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();

        (*v310)(v324, v325);
        v329 = 0;
        v330 = 0;
        v331 = 1;
        v245 = specialized thunk for @callee_guaranteed () -> (@owned [Text.Effect.KeyframeLayout.Fragment]);
        v117 = v295;
        v24 = v307;
        v116 = v290;
      }

      v327 = 0;
      _sxRi_zRi0_zlySay7SwiftUI4TextV0C16AnimationSupportE6EffectO14KeyframeLayoutV8FragmentVGIsegr_SgWOe(v245, 0);
      v327 = v115;
LABEL_177:
      v114 = (v321 + 1);
      if (__OFADD__(v321, 1))
      {
        goto LABEL_188;
      }

      if (v114 < v321)
      {
LABEL_189:
        __break(1u);
        goto LABEL_190;
      }

      LODWORD(v322) = 0;
      v329 = v321;
      v330 = v321 + 1;
      v309 = v321;
      v331 = 0;
      goto LABEL_35;
    }

    (*v310)(v324, v325);
    v327 = 0;
    _sxRi_zRi0_zlySay7SwiftUI4TextV0C16AnimationSupportE6EffectO14KeyframeLayoutV8FragmentVGIsegr_SgWOe(0, 0);
LABEL_99:
    v327 = v115;
    if (v322)
    {
      goto LABEL_177;
    }

    v114 = (v321 + 1);
    if (__OFADD__(v321, 1))
    {
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
      goto LABEL_189;
    }

    if (v114 < v309)
    {
      goto LABEL_181;
    }

    LODWORD(v322) = 0;
    v329 = v309;
    v330 = v321 + 1;
    v323 = v115;
    v119 = v116;
    v331 = 0;
  }

  if (!v323)
  {

    (*v310)(v324, v325);
    goto LABEL_33;
  }

  if (v322)
  {
    v204 = v323;

    (*v310)(v324, v325);
    goto LABEL_140;
  }

  v290 = v116;
  v322 = *(v323 + OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id);
  v205 = v296;
  v206 = v319;
  v207 = v292;
  v208 = v323;
  (v292)(v296, v298, v319);
  v209 = v291;
  (v207)(v291, v205, v206);
  type metadata accessor for Text.Effect.KeyframeLayout.Fragment.Storage(0);
  swift_allocObject();
  v210 = v297;
  v211 = v208;
  v212 = specialized Text.Effect.KeyframeLayout.Fragment.Storage.init(line:runIndices:attributedString:)(v209, v309, v114, v210);

  (*v293)(v205, v206);
  swift_beginAccess();
  v213 = swift_isUniquelyReferenced_nonNull_native();
  v214 = v337[0];
  v326 = v337[0];
  v215 = v322;
  v216 = specialized __RawDictionaryStorage.find<A>(_:)(v322);
  v218 = v214[2];
  v219 = (v217 & 1) == 0;
  v128 = __OFADD__(v218, v219);
  v220 = v218 + v219;
  if (v128)
  {
LABEL_190:
    __break(1u);
    goto LABEL_191;
  }

  v221 = v217;
  v323 = v212;
  if (v214[3] >= v220)
  {
    v116 = v290;
    if ((v213 & 1) == 0)
    {
      v270 = v216;
      specialized _NativeDictionary.copy()();
      v216 = v270;
      v214 = v326;
    }
  }

  else
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v220, v213);
    v214 = v326;
    v216 = specialized __RawDictionaryStorage.find<A>(_:)(v215);
    v116 = v290;
    if ((v221 & 1) != (v222 & 1))
    {
      goto LABEL_203;
    }
  }

  v112 = v308;
  v337[0] = v214;
  if (v221)
  {
LABEL_151:
    v243 = v214[7] + 8 * v216;
    MEMORY[0x19A8BD720]();
    if (*(*v243 + 16) >= *(*v243 + 24) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();

    (*v310)(v324, v325);
    v309 = 0;
    v114 = 0;
    v329 = 0;
    v330 = 0;
    LODWORD(v322) = 1;
    v331 = 1;
    v118 = specialized thunk for @callee_guaranteed () -> (@owned [Text.Effect.KeyframeLayout.Fragment]);
    v117 = v295;
    goto LABEL_34;
  }

  v214[(v216 >> 6) + 8] |= 1 << v216;
  *(v214[6] + 8 * v216) = v215;
  *(v214[7] + 8 * v216) = MEMORY[0x1E69E7CC0];
  v241 = v214[2];
  v128 = __OFADD__(v241, 1);
  v242 = v241 + 1;
  if (!v128)
  {
    v214[2] = v242;
    goto LABEL_151;
  }

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
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void Text.Layout.effectsOrderAndMap.getter(uint64_t *a1@<X8>)
{
  v63 = a1;
  v73 = type metadata accessor for Text.Layout.Run();
  v76 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v3 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v79 = &v62 - v5;
  type metadata accessor for IndexingIterator<Text.Layout.Line>(0);
  v70 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Text.Layout.Line();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<Text.Layout>(0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = MEMORY[0x1E69E7CD0];
  *&v83 = MEMORY[0x1E69E7CC8];
  *(&v83 + 1) = MEMORY[0x1E69E7CC8];
  v84 = MEMORY[0x1E69E7CC8];
  v16 = type metadata accessor for Text.Layout();
  (*(*(v16 - 8) + 16))(v15, v1, v16);
  v17 = *(v13 + 44);
  v18 = _s7SwiftUI4TextV6LayoutV4LineVAGSlAAWlTm_0(&lazy protocol witness table cache variable for type Text.Layout and conformance Text.Layout, MEMORY[0x1E6981090], MEMORY[0x1E69810A0]);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (*&v15[v17] == v80[0])
  {
    v75 = MEMORY[0x1E69E7CC0];
LABEL_3:
    outlined destroy of Text.Effect.Composition(v15, type metadata accessor for IndexingIterator<Text.Layout>);

    v19 = v83;
    v20 = v84;
    v21 = v63;
    *v63 = v75;
    *(v21 + 1) = v19;
    *(v21 + 3) = v20;
    return;
  }

  v68 = (v10 + 16);
  v67 = (v10 + 8);
  v77 = (v76 + 4);
  v78 = (v76 + 2);
  ++v76;
  v75 = MEMORY[0x1E69E7CC0];
  v22 = v73;
  v74 = v9;
  v66 = v15;
  v65 = v16;
  v64 = v17;
  v72 = v18;
  while (1)
  {
    v71 = dispatch thunk of Collection.subscript.read();
    v23 = *v68;
    v24 = v69;
    (*v68)(v69);
    v71(v80, 0);
    dispatch thunk of Collection.formIndex(after:)();
    (v23)(v8, v24, v9);
    v25 = *(v70 + 36);
    _s7SwiftUI4TextV6LayoutV4LineVAGSlAAWlTm_0(&lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line, MEMORY[0x1E6981048], MEMORY[0x1E6981058]);
    dispatch thunk of Collection.startIndex.getter();
    (*v67)(v24, v9);
    dispatch thunk of Collection.endIndex.getter();
    if (*&v8[v25] != v80[0])
    {
      break;
    }

LABEL_5:
    outlined destroy of Text.Effect.Composition(v8, type metadata accessor for IndexingIterator<Text.Layout.Line>);
    v15 = v66;
    dispatch thunk of Collection.endIndex.getter();
    if (*&v15[v64] == v80[0])
    {
      goto LABEL_3;
    }
  }

  while (1)
  {
    v26 = dispatch thunk of Collection.subscript.read();
    v27 = v79;
    (*v78)(v79);
    v26(v80, 0);
    dispatch thunk of Collection.formIndex(after:)();
    (*v77)(v3, v27, v22);
    if (one-time initialization token for _textAnimation != -1)
    {
      swift_once();
    }

    Text.Layout.Run.subscript.getter();
    if (v81)
    {
      type metadata accessor for AnyTextEffect();
      if (swift_dynamicCast())
      {
        v28 = v82;
        if (Text.Effect.PartialMap.insert(animation:)(v28))
        {
          v29 = OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id;
          v30 = *&v28[OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id];
          v31 = v28;
          v32 = *(&v83 + 1);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v80[0] = v32;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, v30, isUniquelyReferenced_nonNull_native);
          *(&v83 + 1) = v80[0];
          v34 = *&v28[v29];

          v35 = v85;
          if (*(v85 + 16) && (Hasher.init(_seed:)(), MEMORY[0x19A8BDE80](v34), v36 = Hasher._finalize()(), v37 = -1 << *(v35 + 32), v38 = v36 & ~v37, ((*(v35 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) != 0))
          {
            v39 = ~v37;
            while (*(*(v35 + 48) + 8 * v38) != v34)
            {
              v38 = (v38 + 1) & v39;
              if (((*(v35 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
              {
                goto LABEL_21;
              }
            }
          }

          else
          {
LABEL_21:
            specialized Set._Variant.insert(_:)(v80, v34);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v75 + 2) + 1, 1, v75);
            }

            v41 = *(v75 + 2);
            v40 = *(v75 + 3);
            if (v41 >= v40 >> 1)
            {
              v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v75);
            }

            v42 = v75;
            *(v75 + 2) = v41 + 1;
            *&v42[8 * v41 + 32] = v34;
          }

          v9 = v74;
        }

        else
        {
        }
      }
    }

    else
    {
      outlined destroy of TextEffectsAnimationController.Timing?(v80, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
    }

    if (one-time initialization token for _textFilterAnimation != -1)
    {
      swift_once();
    }

    Text.Layout.Run.subscript.getter();
    if (!v81)
    {
      (*v76)(v3, v22);
      outlined destroy of TextEffectsAnimationController.Timing?(v80, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
      goto LABEL_10;
    }

    type metadata accessor for AnyTextFilterEffect();
    if (swift_dynamicCast())
    {
      break;
    }

LABEL_9:
    (*v76)(v3, v22);
LABEL_10:
    dispatch thunk of Collection.endIndex.getter();
    if (*&v8[v25] == v80[0])
    {
      goto LABEL_5;
    }
  }

  v43 = v82;
  if ((Text.Effect.PartialMap.insert(animation:)(v82) & 1) == 0)
  {

    goto LABEL_9;
  }

  v44 = *&v43[OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id];
  v45 = v43;
  v46 = v84;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v80[0] = v46;
  v49 = specialized __RawDictionaryStorage.find<A>(_:)(v44);
  v50 = *(v46 + 16);
  v51 = (v48 & 1) == 0;
  v52 = v50 + v51;
  if (!__OFADD__(v50, v51))
  {
    v53 = v48;
    if (*(v46 + 24) >= v52)
    {
      if (v47)
      {
        v56 = v80[0];
        if ((v48 & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v56 = v80[0];
        if ((v53 & 1) == 0)
        {
          goto LABEL_45;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v52, v47);
      v54 = specialized __RawDictionaryStorage.find<A>(_:)(v44);
      if ((v53 & 1) != (v55 & 1))
      {
        goto LABEL_50;
      }

      v49 = v54;
      v56 = v80[0];
      if ((v53 & 1) == 0)
      {
LABEL_45:
        v56[(v49 >> 6) + 8] |= 1 << v49;
        *(v56[6] + 8 * v49) = v44;
        *(v56[7] + 8 * v49) = v45;

        v22 = v73;
        (*v76)(v3, v73);
        v59 = v56[2];
        v60 = __OFADD__(v59, 1);
        v61 = v59 + 1;
        if (v60)
        {
          goto LABEL_49;
        }

        v56[2] = v61;
        goto LABEL_47;
      }
    }

    v57 = v56[7];
    v58 = *(v57 + 8 * v49);
    *(v57 + 8 * v49) = v45;

    v22 = v73;
    (*v76)(v3, v73);
LABEL_47:
    *&v84 = v56;
    v9 = v74;
    goto LABEL_10;
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Text.Layout();
  _s7SwiftUI4TextV6LayoutV4LineVAGSlAAWlTm_0(&lazy protocol witness table cache variable for type Text.Layout and conformance Text.Layout, MEMORY[0x1E6981090], MEMORY[0x1E69810A0]);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v9[4] == v9[0])
  {
    v2 = type metadata accessor for Text.Layout.Line();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = dispatch thunk of Collection.subscript.read();
    v6 = v5;
    v7 = type metadata accessor for Text.Layout.Line();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1, v6, v7);
    v4(v9, 0);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

{
  type metadata accessor for Text.Layout.Cluster();
  _s7SwiftUI4TextV6LayoutV4LineVAGSlAAWlTm_0(&lazy protocol witness table cache variable for type Text.Layout.Cluster and conformance Text.Layout.Cluster, MEMORY[0x1E6981078], MEMORY[0x1E6981088]);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v9[4] == v9[0])
  {
    v2 = type metadata accessor for Text.Layout.RunSlice();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = dispatch thunk of Collection.subscript.read();
    v6 = v5;
    v7 = type metadata accessor for Text.Layout.RunSlice();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1, v6, v7);
    v4(v9, 0);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

uint64_t outlined destroy of Text.Effect.Composition(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of TextRenderLayer.Layout?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for TextRenderLayer.Layout?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of TextRenderLayer.Layout?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for TextRenderLayer.Layout?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void TextRenderLayer.updateActive(animations:)(uint64_t a1)
{
  v95 = a1;
  v2 = type metadata accessor for Text.Effect.Composition.Run(0);
  v84 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v78 - v6;
  v8 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  v92 = *(v8 - 8);
  v93 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v85 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
  MEMORY[0x1EEE9AC00](v83);
  v91 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v78 - v12;
  v14 = type metadata accessor for TextRenderLayer.Layout(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layout;
  swift_beginAccess();
  v19 = v95;
  outlined init with copy of TextRenderLayer.Layout?(&v1[v18], v13, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  v20 = (*(v15 + 48))(v13, 1, v14);
  v96 = v1;
  if (v20 == 1)
  {
    outlined destroy of TextRenderLayer.Layout?(v13, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
    v21 = MEMORY[0x1E69E7CD0];
LABEL_54:
    v99 = v21;
    v67 = v95 + 56;
    v68 = 1 << *(v95 + 32);
    v69 = -1;
    if (v68 < 64)
    {
      v69 = ~(-1 << v68);
    }

    v70 = v69 & *(v95 + 56);
    v94 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_animationController;
    v71 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_time;
    v72 = (v68 + 63) >> 6;

    v74 = 0;
    while (v70)
    {
      v75 = v74;
LABEL_64:
      v76 = __clz(__rbit64(v70));
      v70 &= v70 - 1;
      v77 = *(*(v73 + 48) + ((v75 << 9) | (8 * v76)));
      TextEffectsAnimationController.state(for:time:)(v77, v103, *&v96[v71]);
      if (v104 == 2)
      {
        swift_beginAccess();
        specialized Set._Variant.insert(_:)(&v97, v77);
        swift_endAccess();
      }

      else
      {
        swift_beginAccess();
        specialized Set._Variant.remove(_:)(v77);
        swift_endAccess();
        specialized Set._Variant.insert(_:)(v98, v77);
      }

      outlined destroy of Text.Effect.State(v103);
      v74 = v75;
      v73 = v95;
    }

    while (1)
    {
      v75 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        break;
      }

      if (v75 >= v72)
      {

        TextRenderLayer.updateLayers(for:at:chunk:)(v99, 0, *&v96[v71]);

        return;
      }

      v70 = *(v67 + 8 * v75);
      ++v74;
      if (v70)
      {
        goto LABEL_64;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
  }

  else
  {
    v22 = v13;
    v23 = v17;
    outlined init with take of TextRenderLayer.Layout(v22, v17, type metadata accessor for TextRenderLayer.Layout);
    TextRenderLayer.segmentIndices(for:)(v19);
    v25 = 0;
    v26 = *(v24 + 56);
    v90 = v24;
    v27 = 1 << *(v24 + 32);
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v29 = v28 & v26;
    v87 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_time;
    v88 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_animationController;
    v30 = v24 + 56;
    v81 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_segmentLayers;
    v82 = v23;
    v31 = (v27 + 63) >> 6;
    v32 = v85;
    v33 = v23;
    v21 = MEMORY[0x1E69E7CD0];
    v79 = v24 + 56;
    v80 = v14;
    v86 = v31;
    if (v29)
    {
      goto LABEL_9;
    }

LABEL_10:
    while (1)
    {
      v34 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v34 >= v31)
      {

        outlined destroy of Text.Effect.Composition(v33, type metadata accessor for TextRenderLayer.Layout);
        goto LABEL_54;
      }

      v29 = *(v30 + 8 * v34);
      ++v25;
      if (v29)
      {
        while (1)
        {
          v35 = *(*(v90 + 48) + ((v34 << 9) | (8 * __clz(__rbit64(v29)))));
          if ((v35 & 0x8000000000000000) != 0)
          {
            goto LABEL_70;
          }

          v36 = *(v33 + *(v14 + 24));
          if (v35 >= *(v36 + 16))
          {
            goto LABEL_71;
          }

          v29 &= v29 - 1;
          v37 = v36 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
          v38 = *(v92 + 72);
          v89 = v35;
          outlined init with copy of Text.Effect.Composition(v37 + v38 * v35, v32, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
          if (swift_getEnumCaseMultiPayload() == 2)
          {
            v39 = v32;
            v40 = v91;
            outlined init with take of TextRenderLayer.Layout(v39, v91, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
            v41 = v40 + *(v83 + 24);
            v103[0] = v21;
            v42 = *(v41 + *(type metadata accessor for Text.Effect.Composition(0) + 24));
            v43 = *(v42 + 16);
            if (v43)
            {
              v44 = v42 + ((*(v84 + 80) + 32) & ~*(v84 + 80));
              v45 = *(v84 + 72);
              do
              {
                outlined init with copy of Text.Effect.Composition(v44, v7, type metadata accessor for Text.Effect.Composition.Run);
                Text.Effect.Composition.Operation.appendIdentifiers(to:)(v103);
                outlined destroy of Text.Effect.Composition(v7, type metadata accessor for Text.Effect.Composition.Operation);
                v44 += v45;
                --v43;
              }

              while (v43);
              v46 = v103[0];
              v33 = v82;
              v21 = MEMORY[0x1E69E7CD0];
            }

            else
            {
              v46 = v21;
            }

            v47 = *(specialized _NativeSet.intersection(_:)(v95, v46) + 16);

            if (v47)
            {
              v103[0] = v21;
              v48 = *(v42 + 16);
              if (v48)
              {
                v49 = v42 + ((*(v84 + 80) + 32) & ~*(v84 + 80));
                v50 = *(v84 + 72);
                do
                {
                  outlined init with copy of Text.Effect.Composition(v49, v4, type metadata accessor for Text.Effect.Composition.Run);
                  Text.Effect.Composition.Operation.appendIdentifiers(to:)(v103);
                  outlined destroy of Text.Effect.Composition(v4, type metadata accessor for Text.Effect.Composition.Operation);
                  v49 += v50;
                  --v48;
                }

                while (v48);
                v51 = v103[0];
              }

              else
              {
                v51 = v21;
              }

              v52 = v51 + 56;
              v53 = 1 << *(v51 + 32);
              if (v53 < 64)
              {
                v54 = ~(-1 << v53);
              }

              else
              {
                v54 = -1;
              }

              v55 = v54 & *(v51 + 56);
              v56 = (v53 + 63) >> 6;
              v94 = v51;

              v57 = 0;
              while (1)
              {
                if (!v55)
                {
                  while (1)
                  {
                    v58 = v57 + 1;
                    if (__OFADD__(v57, 1))
                    {
                      goto LABEL_68;
                    }

                    if (v58 >= v56)
                    {

                      v61 = 0;
                      goto LABEL_47;
                    }

                    v55 = *(v52 + 8 * v58);
                    ++v57;
                    if (v55)
                    {
                      v57 = v58;
                      break;
                    }
                  }
                }

                v59 = TextEffectsAnimationController.state(for:time:)(*(*(v94 + 48) + ((v57 << 9) | (8 * __clz(__rbit64(v55))))), v100, *&v96[v87]);
                if ((v100[56] & 0xFE) == 2)
                {
                  break;
                }

                if (v101)
                {
                  v59 = (*(*v101 + 120))(v59);
                  if (v59)
                  {
                    break;
                  }
                }

                v55 &= v55 - 1;
                if (v102)
                {
                  v60 = (*(*v102 + 120))(v59);
                  outlined destroy of Text.Effect.State(v100);
                  if (v60)
                  {

                    goto LABEL_46;
                  }
                }

                else
                {
                  outlined destroy of Text.Effect.State(v100);
                }
              }

              outlined destroy of Text.Effect.State(v100);
LABEL_46:

              v61 = 1;
LABEL_47:
              v62 = v96;
              v63 = v81;
              swift_beginAccess();
              v64 = *&v62[v63];
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v62[v63] = v64;
              v14 = v80;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v64 = specialized _ArrayBuffer._consumeAndCreateNew()(v64);
                *&v96[v81] = v64;
              }

              if (v89 < *(v64 + 2))
              {
                v66 = v96;
                TextRenderLayer.SegmentLayer.updateEffect(dynamic:superlayer:segmentIndex:)(v61, v96, v89);
                *&v66[v81] = v64;
                swift_endAccess();
                outlined destroy of Text.Effect.Composition(v91, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
                v25 = v34;
                v32 = v85;
                v33 = v82;
                v21 = MEMORY[0x1E69E7CD0];
                goto LABEL_51;
              }

              goto LABEL_72;
            }

            outlined destroy of Text.Effect.Composition(v91, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
            v25 = v34;
            v32 = v85;
            v14 = v80;
LABEL_51:
            v30 = v79;
            v31 = v86;
            if (!v29)
            {
              goto LABEL_10;
            }
          }

          else
          {
            outlined destroy of Text.Effect.Composition(v32, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
            v25 = v34;
            v31 = v86;
            if (!v29)
            {
              goto LABEL_10;
            }
          }

LABEL_9:
          v34 = v25;
        }
      }
    }
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI4TextV0D16AnimationSupportE6EffectO10IdentifierV_SD4KeysVyAkG03AnydE0C_GTt0g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = lazy protocol witness table accessor for type Text.Effect.Identifier and conformance Text.Effect.Identifier(a1, a2, a3);
  result = MEMORY[0x19A8BD810](v4, &type metadata for Text.Effect.Identifier, v5);
  v7 = 0;
  v15 = result;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  for (i = (v8 + 63) >> 6; v10; result = specialized Set._Variant.insert(_:)(&v14, *(*(a1 + 48) + ((v12 << 9) | (8 * v13)))))
  {
    v12 = v7;
LABEL_9:
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
  }

  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= i)
    {

      return v15;
    }

    v10 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v10)
    {
      v7 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void TextEffectsRenderer.updateDisplacementAndBounds(changed:)(int a1)
{
  v2 = v1;
  v93 = type metadata accessor for LayoutDirection();
  v4 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v92 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v95 = &v84 - v7;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *MEMORY[0x1E695F050];
  v12 = *(MEMORY[0x1E695F050] + 8);
  v14 = *(MEMORY[0x1E695F050] + 16);
  v15 = *(MEMORY[0x1E695F050] + 24);
  v111 = *(v2 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentIDs);
  v16 = *(v111 + 16);
  if (v16)
  {
    v85 = a1;
    v17 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_surfaceMap;
    v110 = v111 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v109 = v9 + 16;
    v18 = (v9 + 8);
    v89 = *MEMORY[0x1E697E7D0];
    v88 = (v4 + 104);
    v87 = (v4 + 8);

    v19 = 0;
    v84 = v16 - 1;
    v20 = 0.0;
    v21 = &unk_1EAEDF000;
    v99 = v13;
    v22 = v12;
    v23 = v14;
    v24 = v15;
    v91 = v2;
    v98 = v12;
    v97 = v14;
    v96 = v15;
    v90 = v8;
    v100 = v16;
    v86 = v9;
LABEL_3:
    v108 = v20;
    while (v19 < *(v111 + 16))
    {
      (*(v9 + 16))(v11, v110 + *(v9 + 72) * v19, v8);
      swift_beginAccess();
      v25 = *(v2 + v17);
      if (*(v25 + 16) && (v26 = specialized __RawDictionaryStorage.find<A>(_:)(v11), (v27 & 1) != 0))
      {
        v103 = v24;
        v104 = v23;
        v105 = v22;
        v106 = v13;
        v28 = *(*(v25 + 56) + 8 * v26);
        swift_endAccess();
        v29 = *v18;
        v30 = v28;
        v29(v11, v8);
        v31 = *&v30[v21[88]];
        v32 = *(v31 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutBounds);
        v33 = *(v31 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutBounds + 8);
        v34 = *(v31 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutBounds + 16);
        v35 = *(v31 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutBounds + 24);
        v36 = (v31 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_currentDisplacement);
        v37 = v36[1];
        v107 = *v36;
        v39 = v36[2];
        v38 = v36[3];
        v40 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface_yDisplacement;
        swift_beginAccess();
        v101 = *&v30[v40];
        v41 = v108;
        *&v30[v40] = v108;
        v112.origin.x = v32;
        v112.origin.y = v33;
        v112.size.width = v34;
        v112.size.height = v35;
        v113 = CGRectOffset(v112, 0.0, v41);
        x = v113.origin.x;
        y = v113.origin.y;
        width = v113.size.width;
        height = v113.size.height;
        IsNull = CGRectIsNull(v113);
        v102 = v39;
        if (IsNull)
        {
          v16 = v100;
        }

        else
        {
          v47 = -v38;
          v114.origin.x = x;
          v114.origin.y = y;
          v114.size.width = width;
          v114.size.height = height;
          v115 = CGRectStandardize(v114);
          v48 = v115.origin.x;
          v49 = v115.origin.y;
          v50 = v115.size.width;
          v51 = v115.size.height;
          v52 = -v38;
          v16 = v100;
          if (v37 != v38)
          {
            v53 = *v88;
            v54 = v89;
            v55 = v93;
            (*v88)(v95, v89, v93, v52);
            v56 = v92;
            v53(v92, v54, v55);
            v9 = v86;
            v94 = static LayoutDirection.== infix(_:_:)();
            v57 = *v87;
            v58 = v56;
            v8 = v90;
            (*v87)(v58, v55);
            v59 = v55;
            v2 = v91;
            v57(v95, v59);
            v21 = &unk_1EAEDF000;
            v16 = v100;
            if (v94)
            {
              v60 = v37;
            }

            else
            {
              v60 = v38;
            }

            v52 = -v60;
          }

          v61 = -v39;
          v62 = v48 + v52;
          v63 = v49 - v107;
          v64 = v50 - (v47 - v37);
          v65 = v51 - (v61 - v107);
          v116.origin.x = v48 + v52;
          v116.origin.y = v49 - v107;
          v116.size.width = v64;
          v116.size.height = v65;
          v66 = CGRectGetWidth(v116);
          x = v99;
          y = v98;
          width = v97;
          height = v96;
          if (v66 >= 0.0)
          {
            v117.origin.x = v62;
            v117.origin.y = v63;
            v117.size.width = v64;
            v117.size.height = v65;
            v67 = CGRectGetHeight(v117);
            if (v67 >= 0.0)
            {
              x = v62;
            }

            else
            {
              x = v99;
            }

            if (v67 >= 0.0)
            {
              y = v63;
            }

            else
            {
              y = v98;
            }

            if (v67 >= 0.0)
            {
              width = v64;
            }

            else
            {
              width = v97;
            }

            if (v67 >= 0.0)
            {
              height = v65;
            }

            else
            {
              height = v96;
            }
          }
        }

        v118.origin.y = v105;
        v118.origin.x = v106;
        v118.size.height = v103;
        v118.size.width = v104;
        v122.origin.x = x;
        v122.origin.y = y;
        v122.size.width = width;
        v122.size.height = height;
        v119 = CGRectUnion(v118, v122);
        v13 = v119.origin.x;
        v22 = v119.origin.y;
        v23 = v119.size.width;
        v24 = v119.size.height;
        v68 = v108;
        v20 = v108 + v107 + v102;
        swift_endAccess();

        if (v101 != v68)
        {
          v85 = 1;
          if (v84 != v19++)
          {
            goto LABEL_3;
          }

LABEL_33:

          v12 = v22;
          v14 = v23;
          v15 = v24;
          LOBYTE(a1) = v85;
          goto LABEL_34;
        }

        v108 = v20;
      }

      else
      {
        swift_endAccess();
        (*v18)(v11, v8);
      }

      if (v16 == ++v19)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_34:
    v120.origin.x = v13;
    v120.origin.y = v12;
    v120.size.width = v14;
    v120.size.height = v15;
    v70 = CGRectIsNull(v120);
    if (v70)
    {
      v71 = 0.0;
    }

    else
    {
      v71 = v13;
    }

    if (v70)
    {
      v72 = 0.0;
    }

    else
    {
      v72 = v12;
    }

    if (v70)
    {
      v73 = 0.0;
    }

    else
    {
      v73 = v14;
    }

    if (v70)
    {
      v74 = 0.0;
    }

    else
    {
      v74 = v15;
    }

    v121.origin.x = CGRect.outset(by:)(0.0, *(v2 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_lineFragmentPadding), 0.0, *(v2 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_lineFragmentPadding), v71, v72, v73, v74);
    v75 = v121.origin.x;
    v76 = v121.origin.y;
    v77 = v121.size.width;
    v78 = v121.size.height;
    v79 = (v2 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentBounds);
    if (CGRectEqualToRect(v121, *(v2 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentBounds)))
    {
      if ((a1 & 1) == 0)
      {
        return;
      }
    }

    else
    {
      *v79 = v75;
      v79[1] = v76;
      v79[2] = v77;
      v79[3] = v78;
    }

    v80 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_notifyFlags;
    v81 = *(v2 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_notifyFlags);
    *(v2 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_notifyFlags) = v81 | 4;
    if ((v81 & 1) == 0)
    {
      if ((v81 & 2) == 0 || (v82 = swift_unknownObjectWeakLoadStrong(), _NSTextCustomRenderingDelegateInvalidateInteractionGeometry(v82), swift_unknownObjectRelease(), (*(v2 + v80) & 4) != 0))
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        _NSTextCustomRenderingDelegateSetNeedsFrameUpdate(Strong);
        swift_unknownObjectRelease();
      }

      *(v2 + v80) = 0;
    }
  }
}

uint64_t outlined init with take of TextRenderLayer.Layout(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void TextRenderLayer.updateLayers(for:at:chunk:)(uint64_t a1, int a2, double a3)
{
  v118 = a2;
  v130 = a1;
  v5 = MEMORY[0x1E69E6720];
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v117 = &v103 - v7;
  v132 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  v131 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v127 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
  MEMORY[0x1EEE9AC00](v123);
  v133 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RangeSet<Int>(0, &lazy cache variable for type metadata for RangeSet<Int>, MEMORY[0x1E69E6548], MEMORY[0x1E69E7BE0]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v126 = &v103 - v13;
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout, v5);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v103 - v15;
  v17 = type metadata accessor for TextRenderLayer.Layout(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layout;
  swift_beginAccess();
  v22 = v3 + v21;
  v23 = v3;
  outlined init with copy of TextRenderLayer.Layout?(v22, v16, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    outlined destroy of TextRenderLayer.Layout?(v16, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
    return;
  }

  v24 = v20;
  outlined init with take of TextRenderLayer.Layout(v16, v20, type metadata accessor for TextRenderLayer.Layout);
  TextRenderLayer.segmentIndices(for:)(v130);
  v26 = v25;
  v27 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_sharedDrawingSegments;
  swift_beginAccess();
  v28 = *(v12 + 16);
  v106 = v27;
  v29 = v126;
  v105 = v12 + 16;
  v104 = v28;
  v28(v126, v3 + v27, v11);
  v110 = RangeSet.isEmpty.getter();
  v30 = *(v12 + 8);
  v108 = v11;
  v107 = v12 + 8;
  v103 = v30;
  v30(v29, v11);
  v31 = *(v26 + 56);
  v122 = v26 + 56;
  v130 = v26;
  v32 = 1 << *(v26 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & v31;
  v124 = (v3 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_baseFragmentIdentifierMap);
  v121 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_animationController;
  v115 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_interactionMetrics;
  v109 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_geometryObserver;
  v113 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_displacements;
  v114 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_segmentLayers;
  swift_beginAccess();
  v111 = 0;
  v35 = 0;
  v36 = (v32 + 63) >> 6;
  v37 = v127;
  v38 = v133;
  v39 = v24;
  v129 = v23;
  v112 = a3;
  v120 = v24;
  v119 = v17;
  v128 = v36;
LABEL_6:
  v40 = v122;
  if (v34)
  {
    goto LABEL_14;
  }

  while (1)
  {
LABEL_10:
    v41 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      return;
    }

    if (v41 >= v36)
    {
      break;
    }

    v34 = *(v40 + 8 * v41);
    ++v35;
    if (v34)
    {
      v35 = v41;
      while (1)
      {
        while (1)
        {
LABEL_14:
          v42 = *(*(v130 + 48) + ((v35 << 9) | (8 * __clz(__rbit64(v34)))));
          if ((v42 & 0x8000000000000000) != 0)
          {
            goto LABEL_48;
          }

          v43 = *(v39 + *(v17 + 24));
          if (v42 >= *(v43 + 16))
          {
            goto LABEL_49;
          }

          v34 &= v34 - 1;
          outlined init with copy of Text.Effect.Composition(v43 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v42, v37, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
          if (swift_getEnumCaseMultiPayload() == 2)
          {
            break;
          }

          outlined destroy of Text.Effect.Composition(v37, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
LABEL_9:
          v36 = v128;
          if (!v34)
          {
            goto LABEL_10;
          }
        }

        outlined init with take of TextRenderLayer.Layout(v37, v38, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
        v44 = *(v123 + 24);
        v45 = v124;
        v46 = *v124;
        v47 = v124[1];
        v48 = *(v23 + v121);
        swift_beginAccess();
        v49 = *(v48 + 112);

        v125 = v44;
        Text.Effect.Composition.needsUpdate(at:context:)(v46, v47, v49, v48, a3);
        v51 = v50;

        if ((v51 & 1) == 0)
        {
          v23 = v129;
          TextRenderLayer.ensureUnsharedDrawing(for:)(v42);
          v38 = v133;
          outlined destroy of Text.Effect.Composition(v133, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
          v37 = v127;
          v39 = v120;
          v29 = v126;
          v17 = v119;
          v40 = v122;
          goto LABEL_9;
        }

        v52 = v129;
        v53 = *v45;
        v116 = v45[1];
        v54 = *(v48 + 112);

        v38 = v133;
        v55 = v125;
        Text.Effect.Composition.useSharedDrawing(context:)(v53, v116, v54, v48);
        v57 = v56;

        if (v57)
        {
          v23 = v52;
          TextRenderLayer.ensureSharedDrawing(for:)(v42);
          outlined destroy of Text.Effect.Composition(v38, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
          v111 = 1;
          v37 = v127;
          v39 = v120;
          v29 = v126;
          v17 = v119;
          v36 = v128;
          goto LABEL_6;
        }

        swift_beginAccess();
        v58 = v117;
        specialized Dictionary.removeValue(forKey:)(v42, v117);
        swift_endAccess();
        outlined destroy of TextRenderLayer.Layout?(v58, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
        TextRenderLayer.drawingBounds(for:segmentIndex:allowingNull:)(v38 + v55, v42, 0);
        v60 = v59;
        v62 = v61;
        v64 = v63;
        v66 = v65;
        v67 = 16.0;
        if ((v118 & 1) == 0)
        {
          TextRenderLayer.pixelLength.getter();
          v67 = v68;
        }

        v134.origin.x = v60;
        v134.origin.y = v62;
        v134.size.width = v64;
        v134.size.height = v66;
        MinX = CGRectGetMinX(v134);
        v135.origin.x = v60;
        v135.origin.y = v62;
        v135.size.width = v64;
        v135.size.height = v66;
        MaxX = CGRectGetMaxX(v135);
        v136.origin.x = v60;
        v136.origin.y = v62;
        v136.size.width = v64;
        v136.size.height = v66;
        MinY = CGRectGetMinY(v136);
        v137.origin.x = v60;
        v137.origin.y = v62;
        v137.size.width = v64;
        v137.size.height = v66;
        MaxY = CGRectGetMaxY(v137);
        v73 = *(v52 + v114);
        v40 = v122;
        if (v42 >= *(v73 + 16))
        {
          goto LABEL_50;
        }

        v74 = *(v73 + 8 * v42 + 32);
        v75 = v74 >> 62;
        v76 = (v74 & 0x3FFFFFFFFFFFFFFFLL);
        if ((v74 >> 62) <= 1)
        {
          v77 = v124;
          if (!v75)
          {
            goto LABEL_28;
          }

LABEL_27:
          v74 = v76;
          goto LABEL_28;
        }

        v74 &= 0x3FFFFFFFFFFFFFFFuLL;
        v77 = v124;
        if (v75 == 2)
        {
          goto LABEL_27;
        }

LABEL_28:
        v78 = v67 * floor(MinX / v67);
        v79 = ceil(MaxX / v67);
        v80 = v67 * floor(MinY / v67);
        v81 = v67 * ceil(MaxY / v67);
        v82 = v67 * v79 - v78;
        v83 = v81 - v80;
        v84 = *v77;
        v85 = v77[1];
        v86 = *(v48 + 112);
        v116 = v76;

        Text.Effect.Composition.useSharedDrawing(context:)(v84, v85, v86, v48);
        v88 = v87;

        if (v88)
        {
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v90 = Strong;
            LayerGeometryObserver.clip(bounds:for:)(v74, v78, v80, v82, v83);
            v78 = v91;
            v80 = v92;
            v82 = v93;
            v83 = v94;
          }
        }

        [v74 bounds];
        v140.origin.x = v78;
        v140.origin.y = v80;
        v140.size.width = v82;
        v140.size.height = v83;
        if (!CGRectEqualToRect(v138, v140))
        {
          [v74 setBounds_];
        }

        v95 = *(v129 + v113);
        if (v42 >= *(v95 + 16))
        {
          goto LABEL_51;
        }

        v96 = v95 + 16 * v42;
        v97 = v78 + *(v96 + 32);
        v98 = v80 + *(v96 + 40);
        [v74 frame];
        v141.origin.x = v97;
        v141.origin.y = v98;
        v141.size.width = v82;
        v141.size.height = v83;
        if (!CGRectEqualToRect(v139, v141))
        {
          [v74 setFrame_];
        }

        [v74 setNeedsDisplay];

        v38 = v133;
        outlined destroy of Text.Effect.Composition(v133, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
        a3 = v112;
        v37 = v127;
        v39 = v120;
        v29 = v126;
        v17 = v119;
        v36 = v128;
        v23 = v129;
        if (!v34)
        {
          goto LABEL_10;
        }
      }
    }
  }

  if ((v110 & 1) == 0)
  {
    v99 = v108;
    v104(v29, v23 + v106, v108);
    v100 = RangeSet.isEmpty.getter();
    v103(v29, v99);
    if ((v100 | v111))
    {
      goto LABEL_43;
    }

LABEL_45:
    outlined destroy of Text.Effect.Composition(v39, type metadata accessor for TextRenderLayer.Layout);
    return;
  }

  if ((v111 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_43:
  TextRenderLayer.updateSharedDrawingBounds()();
  v101 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_sharedDrawingLayer;
  swift_beginAccess();
  v102 = *(v23 + v101);
  if (v102)
  {
    swift_endAccess();
    [v102 setNeedsDisplay];
    goto LABEL_45;
  }

  outlined destroy of Text.Effect.Composition(v39, type metadata accessor for TextRenderLayer.Layout);
  swift_endAccess();
}

void _NSTextCustomRenderingDelegateSetNeedsFrameUpdate(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v1 _setNeedsFrameUpdateForCustomRendering];
  }

  else
  {
    [v1 setNeedsFrameUpdateForSurface:0];
  }
}

Swift::Void __swiftcall TextEffectsRenderer.postLayoutNotify()()
{
  v1 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_notifyFlags;
  v2 = *(v0 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_notifyFlags);
  if ((v2 & 2) != 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    _NSTextCustomRenderingDelegateInvalidateInteractionGeometry(Strong);
    swift_unknownObjectRelease();
    v2 = *(v0 + v1);
  }

  if ((v2 & 4) != 0)
  {
    v4 = swift_unknownObjectWeakLoadStrong();
    _NSTextCustomRenderingDelegateSetNeedsFrameUpdate(v4);
    swift_unknownObjectRelease();
  }

  *(v0 + v1) = 0;
}

CGFloat CGRect.outset(by:)(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v16 = type metadata accessor for LayoutDirection();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v36 - v21;
  v38.origin.x = a5;
  v38.origin.y = a6;
  v38.size.width = a7;
  v38.size.height = a8;
  if (!CGRectIsNull(v38))
  {
    v37 = -a3;
    v39.origin.x = a5;
    v39.origin.y = a6;
    v39.size.width = a7;
    v39.size.height = a8;
    v40 = CGRectStandardize(v39);
    x = v40.origin.x;
    y = v40.origin.y;
    width = v40.size.width;
    v26 = -a4;
    if (a2 != a4)
    {
      v27 = *MEMORY[0x1E697E7D0];
      v28 = *(v17 + 104);
      height = v40.size.height;
      v28(v22, v27, v16, v26);
      (v28)(v19, v27, v16);
      LOBYTE(v27) = static LayoutDirection.== infix(_:_:)();
      v30 = *(v17 + 8);
      v30(v19, v16);
      v30(v22, v16);
      v40.size.height = height;
      if (v27)
      {
        v31 = a2;
      }

      else
      {
        v31 = a4;
      }

      v26 = -v31;
    }

    a5 = x + v26;
    v32 = y - a1;
    v33 = width - (-a4 - a2);
    v34 = v40.size.height - (v37 - a1);
    v41.origin.x = a5;
    v41.origin.y = v32;
    v41.size.width = v33;
    v41.size.height = v34;
    if (CGRectGetWidth(v41) < 0.0)
    {
      return *MEMORY[0x1E695F050];
    }

    v42.origin.x = a5;
    v42.origin.y = v32;
    v42.size.width = v33;
    v42.size.height = v34;
    if (CGRectGetHeight(v42) < 0.0)
    {
      return *MEMORY[0x1E695F050];
    }
  }

  return a5;
}

void TextEffectsAnimationController.updateKeyframes(_:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  *(v2 + 112) = a1;

  v4 = swift_beginAccess();
  v5 = 0;
  v6 = *(v2 + 80);
  v7 = *(v6 + 64);
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v7;
  v11 = (v8 + 63) >> 6;
  if ((v9 & v7) != 0)
  {
    do
    {
      v12 = v5;
LABEL_9:
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v4 = (*(**(*(v6 + 56) + ((v12 << 9) | (8 * v13))) + 80))(v4);
    }

    while (v10);
  }

  while (1)
  {
    v12 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
      TextEffectsAnimationController.validateInfosIfNeeded()();
      return;
    }

    v10 = *(v6 + 64 + 8 * v12);
    ++v5;
    if (v10)
    {
      v5 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t Text.Effect.Keyframes.appendPartial(map:keyframes:baseFragmentIdentifierMap:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v9 = v8;
  v157 = a5;
  v170 = a4;
  _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_2(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  v168 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v167 = &v148 - v18;
  v166 = type metadata accessor for Text.Layout.Line();
  v19 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v165 = &v148 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v9;
  v169 = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Text.Effect.Keyframes.Storage();
    swift_allocObject();
    v23 = specialized Text.Effect.Keyframes.Storage.init(_:)(v22);

    *v9 = v23;
    v22 = v23;
  }

  swift_beginAccess();

  v24 = swift_isUniquelyReferenced_nonNull_native();
  v172[0] = v22[2];
  v22[2] = 0x8000000000000000;
  v25 = 0;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a1, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v24, v172, specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary.copy());

  v22[2] = v172[0];
  swift_endAccess();
  swift_beginAccess();

  v26 = swift_isUniquelyReferenced_nonNull_native();
  v172[0] = v22[3];
  v22[3] = 0x8000000000000000;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a2, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v26, v172, specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary.copy());

  v27 = v17;
  v149 = a6;
  v150 = a7;
  v22[3] = v172[0];
  swift_endAccess();
  swift_beginAccess();

  v28 = swift_isUniquelyReferenced_nonNull_native();
  v172[0] = v22[4];
  v22[4] = 0x8000000000000000;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a3, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v28, v172, specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary.copy());

  v29 = v157;
  v148 = 0;
  v22[4] = v172[0];
  swift_endAccess();
  swift_beginAccess();

  specialized Set.formUnion<A>(_:)(v30);
  swift_endAccess();
  v31 = v29 + 64;
  v32 = 1 << *(v29 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v29 + 64);
  v35 = (v32 + 63) >> 6;
  v163 = (v169 + 32);
  v164 = (v169 + 16);
  v161 = (v27 + 32);
  v162 = (v27 + 16);

  v36 = 0;
  v158 = v22;
  v153 = v29 + 64;
  v152 = v35;
  v151 = a8;
  while (v34)
  {
LABEL_14:
    v155 = v36;
    v39 = (v36 << 10) | (16 * __clz(__rbit64(v34)));
    v40 = *(v29 + 56);
    v41 = (*(v29 + 48) + v39);
    v42 = *v41;
    v25 = v41[1];
    v43 = (v40 + v39);
    v44 = *v43;
    v156 = *(v43 + 8);
    v45 = *(v44 + 16);
    v159 = v42;
    v160 = v25;
    v169 = v44;
    if (v45)
    {
      v154 = v34;
      v173 = MEMORY[0x1E69E7CC0];
      swift_bridgeObjectRetain_n();

      specialized ContiguousArray.reserveCapacity(_:)();
      v46 = a8[1];
      v47 = 32;
      v48 = &OBJC_PROTOCOL___NSCustomTextRenderingDelegate;
      do
      {
        v49 = *(v44 + v47);
        v50 = *(v48[43].inst_meths + v49);

        if (v46 != v50)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Text.Effect.KeyframeLayout.Fragment.Storage(0);
            v51 = swift_allocObject();
            *(v51 + 16) = *(v49 + 16);
            v52 = v165;
            v53 = v166;
            (*v164)(v165, v49 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line, v166);
            (*v163)(v51 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line, v52, v53);
            v170 = *(v49 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_attributedString);
            *(v51 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_attributedString) = v170;
            *(v48[43].inst_meths + v51) = *(v48[43].inst_meths + v49);
            *(v51 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) = *(v49 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters);
            v54 = *(v49 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_visualOrder + 8);
            v55 = (v51 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_visualOrder);
            *v55 = *(v49 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_visualOrder);
            v55[1] = v54;
            v56 = (v51 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds);
            v57 = *(v49 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds + 16);
            *v56 = *(v49 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds);
            v56[1] = v57;
            v58 = (v51 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_drawingBounds);
            v59 = *(v49 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_drawingBounds + 16);
            *v58 = *(v49 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_drawingBounds);
            v58[1] = v59;
            v60 = (v51 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_metrics);
            v61 = *(v49 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_metrics + 16);
            *v60 = *(v49 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_metrics);
            v60[1] = v61;
            v62 = v167;
            v63 = v168;
            (*v162)(v167, v49 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_characterRanges, v168);
            (*v161)(v51 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_characterRanges, v62, v63);
            v64 = v170;
            v44 = v169;

            v48 = &OBJC_PROTOCOL___NSCustomTextRenderingDelegate;

            v49 = v51;
          }

          *(v48[43].inst_meths + v49) = v46;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v47 += 8;
        --v45;
      }

      while (v45);

      v65 = v173;
      a8 = v151;
      v22 = v158;
      v42 = v159;
      v31 = v153;
      v35 = v152;
      v34 = v154;
      v25 = v160;
    }

    else
    {

      v65 = MEMORY[0x1E69E7CC0];
    }

    v34 &= v34 - 1;
    swift_beginAccess();
    v66 = v22[6];
    if (*(v66 + 16) && (v67 = specialized __RawDictionaryStorage.find<A>(_:)(v42, v25), (v68 & 1) != 0))
    {
      v69 = *(v66 + 56) + 16 * v67;
      v70 = *v69;
      v71 = *(v69 + 8);
      swift_endAccess();

      v173 = v70;
      specialized Array.append<A>(contentsOf:)(v65);
      v72 = v173;
      swift_beginAccess();
      v73 = swift_isUniquelyReferenced_nonNull_native();
      v74 = v25;
      v25 = v73;
      v172[0] = v22[6];
      v75 = v172[0];
      v22[6] = 0x8000000000000000;
      v76 = specialized __RawDictionaryStorage.find<A>(_:)(v42, v74);
      v78 = *(v75 + 16);
      v79 = (v77 & 1) == 0;
      v80 = __OFADD__(v78, v79);
      v81 = v78 + v79;
      if (v80)
      {
        goto LABEL_77;
      }

      v82 = v77;
      if (*(v75 + 24) >= v81)
      {
        v29 = v157;
        if ((v25 & 1) == 0)
        {
          v107 = v76;
          specialized _NativeDictionary.copy()();
          v76 = v107;
        }

        v25 = v160;
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v81, v25);
        v25 = v160;
        v76 = specialized __RawDictionaryStorage.find<A>(_:)(v42, v160);
        v29 = v157;
        if ((v82 & 1) != (v83 & 1))
        {
          goto LABEL_80;
        }
      }

      v99 = v71 | v156;
      v100 = v172[0];
      if (v82)
      {
        v101 = *(v172[0] + 56) + 16 * v76;
        *v101 = v72;
        *(v101 + 8) = v99;

        v31 = v153;
        v35 = v152;
      }

      else
      {
        *(v172[0] + 8 * (v76 >> 6) + 64) |= 1 << v76;
        v102 = (v100[6] + 16 * v76);
        *v102 = v159;
        v102[1] = v25;
        v103 = v100[7] + 16 * v76;
        *v103 = v72;
        *(v103 + 8) = v99;
        v104 = v100[2];
        v80 = __OFADD__(v104, 1);
        v105 = v104 + 1;
        v31 = v153;
        v35 = v152;
        if (v80)
        {
          goto LABEL_79;
        }

        v100[2] = v105;
      }

      v22[6] = v100;
    }

    else
    {
      swift_endAccess();

      swift_beginAccess();
      v84 = v42;
      v85 = swift_isUniquelyReferenced_nonNull_native();
      v172[0] = v22[6];
      v86 = v172[0];
      v22[6] = 0x8000000000000000;
      v87 = specialized __RawDictionaryStorage.find<A>(_:)(v84, v25);
      v89 = *(v86 + 16);
      v90 = (v88 & 1) == 0;
      v80 = __OFADD__(v89, v90);
      v91 = v89 + v90;
      if (v80)
      {
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      v25 = v88;
      if (*(v86 + 24) >= v91)
      {
        if ((v85 & 1) == 0)
        {
          v106 = v87;
          specialized _NativeDictionary.copy()();
          v87 = v106;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v91, v85);
        v87 = specialized __RawDictionaryStorage.find<A>(_:)(v159, v160);
        if ((v25 & 1) != (v92 & 1))
        {
          goto LABEL_80;
        }
      }

      v29 = v157;
      v93 = v172[0];
      if (v25)
      {
        v37 = *(v172[0] + 56) + 16 * v87;
        *v37 = v65;
        *(v37 + 8) = v156;
      }

      else
      {
        *(v172[0] + 8 * (v87 >> 6) + 64) |= 1 << v87;
        v94 = (v93[6] + 16 * v87);
        v95 = v160;
        *v94 = v159;
        v94[1] = v95;
        v96 = v93[7] + 16 * v87;
        *v96 = v65;
        *(v96 + 8) = v156;
        v97 = v93[2];
        v80 = __OFADD__(v97, 1);
        v98 = v97 + 1;
        if (v80)
        {
          goto LABEL_75;
        }

        v93[2] = v98;
      }

      v22[6] = v93;
    }

    swift_endAccess();
    v36 = v155;
  }

  while (1)
  {
    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    if (v38 >= v35)
    {
      break;
    }

    v34 = *(v31 + 8 * v38);
    ++v36;
    if (v34)
    {
      v36 = v38;
      goto LABEL_14;
    }
  }

  swift_beginAccess();
  v108 = v22[6];
  v109 = v108 + 64;
  v110 = 1 << *(v108 + 32);
  v111 = -1;
  if (v110 < 64)
  {
    v111 = ~(-1 << v110);
  }

  v112 = v111 & *(v108 + 64);
  v113 = (v110 + 63) >> 6;

  v114 = 0;
  v169 = v108;
  if (!v112)
  {
LABEL_49:
    while (1)
    {
      v115 = v114 + 1;
      if (__OFADD__(v114, 1))
      {
        goto LABEL_72;
      }

      if (v115 >= v113)
      {

        v142 = v149;

        v143 = v151;
        v144 = swift_isUniquelyReferenced_nonNull_native();
        v172[0] = *v143;
        v25 = v148;
        result = specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v142, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v144, v172);
        *v143 = v172[0];
        v146 = v143[1];
        v80 = __OFADD__(v146, v150);
        v147 = v146 + v150;
        if (v80)
        {
          goto LABEL_78;
        }

        v143[1] = v147;
        return result;
      }

      v112 = *(v109 + 8 * v115);
      ++v114;
      if (v112)
      {
        v114 = v115;
        goto LABEL_53;
      }
    }
  }

  while (1)
  {
LABEL_53:
    while (1)
    {
      v116 = __clz(__rbit64(v112));
      v112 &= v112 - 1;
      v117 = (v114 << 10) | (16 * v116);
      v118 = (*(v108 + 48) + v117);
      v120 = *v118;
      v119 = v118[1];
      v121 = *(v108 + 56) + v117;
      v25 = *v121;
      LODWORD(v170) = *(v121 + 8);
      v122 = *(v29 + 16);

      if (!v122)
      {
        break;
      }

      specialized __RawDictionaryStorage.find<A>(_:)(v120, v119);
      if ((v123 & 1) == 0)
      {
        break;
      }

      if (!v112)
      {
        goto LABEL_49;
      }
    }

    v124 = v158;
    swift_beginAccess();
    v125 = swift_isUniquelyReferenced_nonNull_native();
    v171 = v124[6];
    v126 = v171;
    v124[6] = 0x8000000000000000;
    v127 = specialized __RawDictionaryStorage.find<A>(_:)(v120, v119);
    v129 = v126[2];
    v130 = (v128 & 1) == 0;
    v80 = __OFADD__(v129, v130);
    v131 = v129 + v130;
    if (v80)
    {
      break;
    }

    v132 = v128;
    if (v126[3] >= v131)
    {
      if ((v125 & 1) == 0)
      {
        v141 = v127;
        specialized _NativeDictionary.copy()();
        v127 = v141;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v131, v125);
      v127 = specialized __RawDictionaryStorage.find<A>(_:)(v120, v119);
      if ((v132 & 1) != (v133 & 1))
      {
        goto LABEL_80;
      }
    }

    v134 = v170 | 2;
    v135 = v171;
    if (v132)
    {
      v136 = v171[7] + 16 * v127;
      *v136 = v25;
      *(v136 + 8) = v134;
    }

    else
    {
      v171[(v127 >> 6) + 8] |= 1 << v127;
      v137 = (v135[6] + 16 * v127);
      *v137 = v120;
      v137[1] = v119;
      v138 = v135[7] + 16 * v127;
      *v138 = v25;
      *(v138 + 8) = v134;
      v139 = v135[2];
      v80 = __OFADD__(v139, 1);
      v140 = v139 + 1;
      if (v80)
      {
        goto LABEL_76;
      }

      v135[2] = v140;
    }

    v158[6] = v135;
    swift_endAccess();
    v29 = v157;
    v108 = v169;
    if (!v112)
    {
      goto LABEL_49;
    }
  }

LABEL_74:
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
LABEL_80:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);

  result = swift_endAccess();
  __break(1u);
  return result;
}

void type metadata accessor for _ContiguousArrayStorage<Text.Layout.Run>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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
    type metadata accessor for _ContiguousArrayStorage<Text.Effect.Markers.Marker>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.KeyframeSequence.Entry>, &type metadata for Text.Effect.KeyframeSequence.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
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
    type metadata accessor for _ContiguousArrayStorage<Edit<Int>>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Edit<Int>>, &lazy cache variable for type metadata for Edit<Int>, type metadata accessor for Edit);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    memcpy(v12, v13, 40 * v8);
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
    type metadata accessor for _ContiguousArrayStorage<Text.Effect.Markers.Marker>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<EditAnimationInfo>, &type metadata for EditAnimationInfo, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
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
    type metadata accessor for _ContiguousArrayStorage<Text.Effect.Markers.Marker>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Markers.Marker>, &type metadata for Text.Effect.Markers.Marker, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<ClosedRange<CGFloat>>(0);
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
    type metadata accessor for _ContiguousArrayStorage<Text.Effect.Markers.Marker>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.MarkerLayoutInfo.Element>, &type metadata for Text.Effect.MarkerLayoutInfo.Element, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
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
    type metadata accessor for _ContiguousArrayStorage<Range<Text.Layout.CharacterIndex>>(0);
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
    type metadata accessor for _ContiguousArrayStorage<Text.Effect.Markers.Marker>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.ClusterTransformMap.Element>, &type metadata for Text.Effect.ClusterTransformMap.Element, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v8 << 6);
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
    type metadata accessor for _ContiguousArrayStorage<Text.Effect.Markers.Marker>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Chunk>, &type metadata for Text.Effect.Chunk, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<Text.Effect.Markers.Marker>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Timing.GlyphInfo>, &type metadata for Text.Effect.Timing.GlyphInfo, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<Text.Effect.Markers.Marker>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Timing.Fragment>, &type metadata for Text.Effect.Timing.Fragment, MEMORY[0x1E69E6F90]);
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
    type metadata accessor for _ContiguousArrayStorage<Text.Effect.Markers.Marker>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CGFloat>, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<Edit<Int>>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Range<Int>>, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E66A8]);
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
    type metadata accessor for _ContiguousArrayStorage<Text.Effect.Markers.Marker>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.StopMarkerCollection.Segment>, &type metadata for Text.Effect.StopMarkerCollection.Segment, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<Text.Effect.Markers.Marker>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.StopMarkerCollector.Segment.Element>, &type metadata for Text.Effect.StopMarkerCollector.Segment.Element, MEMORY[0x1E69E6F90]);
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
    type metadata accessor for _ContiguousArrayStorage<Text.Effect.Markers.Marker>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.PathInterpolator.SmoothPathGlyph>, &type metadata for Text.Effect.PathInterpolator.SmoothPathGlyph, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
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
    type metadata accessor for _ContiguousArrayStorage<Text.Effect.RenderSegmentation.Segment>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CGPoint>, type metadata accessor for CGPoint);
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
    type metadata accessor for _ContiguousArrayStorage<Text.Effect.Markers.Marker>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>, &type metadata for Text.Effect.Drawable.Fragment, MEMORY[0x1E69E6F90]);
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
    type metadata accessor for _ContiguousArrayStorage<Text.Effect.Markers.Marker>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.DisplayInfo.DrawOperation>, &type metadata for Text.Effect.DisplayInfo.DrawOperation, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 216);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[216 * v8])
    {
      memmove(v12, v13, 216 * v8);
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
    type metadata accessor for _ContiguousArrayStorage<Text.Effect.Markers.Marker>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.InteractionMetrics.Element>, &type metadata for Text.Effect.InteractionMetrics.Element, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 96 * v8);
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
    type metadata accessor for _ContiguousArrayStorage<Text.Effect.Markers.Marker>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.FlatPath.Element>, &type metadata for Text.Effect.FlatPath.Element, MEMORY[0x1E69E6F90]);
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
    type metadata accessor for _ContiguousArrayStorage<Text.Effect.Markers.Marker>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.VisualOrderCollection.Run>, &type metadata for Text.Effect.VisualOrderCollection.Run, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
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
    type metadata accessor for _ContiguousArrayStorage<Text.Effect.Markers.Marker>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.DelayFunction.Element>, &type metadata for Text.Effect.DelayFunction.Element, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
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
    type metadata accessor for _ContiguousArrayStorage<Text.Effect.Markers.Marker>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.DisplayInfo>, &type metadata for Text.Effect.DisplayInfo, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
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
    type metadata accessor for _ContiguousArrayStorage<Text.Effect.Markers.Marker>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.StopSegment>, &type metadata for Text.Effect.StopSegment, MEMORY[0x1E69E6F90]);
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
    type metadata accessor for _ContiguousArrayStorage<Text.Effect.Markers.Marker>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.StopCollector.Segment.Element>, &type metadata for Text.Effect.StopCollector.Segment.Element, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 96 * v8);
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
    type metadata accessor for _ContiguousArrayStorage<Text.Effect.Markers.Marker>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Stop>, &type metadata for Text.Effect.Stop, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 88 * v8);
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
    type metadata accessor for _ContiguousArrayStorage<Text.Effect.Markers.Marker>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<RawTextLayout.Fragment>, &type metadata for RawTextLayout.Fragment, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
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
    type metadata accessor for _ContiguousArrayStorage<Text.Effect.Markers.Marker>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<TextRenderLayer.SegmentLayer>, &type metadata for TextRenderLayer.SegmentLayer, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for _ContiguousArrayStorage<Text.Effect.Markers.Marker>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.SubcomponentKeyPath>, &type metadata for Text.Effect.SubcomponentKeyPath, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
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
    type metadata accessor for _ContiguousArrayStorage<Text.Effect.Markers.Marker>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Timing.Chunk.Fragment>, &type metadata for Text.Effect.Timing.Chunk.Fragment, MEMORY[0x1E69E6F90]);
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
    type metadata accessor for _ContiguousArrayStorage<Text.Effect.Markers.Marker>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Double>, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for (offset: Int, element: Text.Layout.Run)?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Range<Int>>, type metadata accessor for Range<Int>, MEMORY[0x1E69E6F90]);
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

unint64_t specialized Text.Effect.KeyframeSequence.init(order:map:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1;
  v8 = *(a1 + 16);
  v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8 + 1, 0, MEMORY[0x1E69E7CC0]);
  v58 = MEMORY[0x1E69E7CC8];
  type metadata accessor for [Text.Effect.Identifier : Text.Effect.AnyLayoutState](0);
  v9 = &v58;
  Dictionary.reserveCapacity(_:)(v8);
  isUniquelyReferenced_nonNull_native = *(v7 + 16);
  v47 = a3;
  v48 = v7;
  v49 = isUniquelyReferenced_nonNull_native;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v13 = v58;
LABEL_19:
    v12 = v55;
    v9 = *(v55 + 2);
    v5 = *(v55 + 3);
    v8 = (v9 + 1);

    if (v9 >= v5 >> 1)
    {
      goto LABEL_66;
    }

LABEL_20:
    *(v12 + 16) = v8;
    v28 = v12 + 24 * v9;
    *(v28 + 32) = v13;
    *(v28 + 40) = 0;
    *(v28 + 48) = 1;
    if (!isUniquelyReferenced_nonNull_native)
    {
LABEL_57:

      return v12;
    }

    v51 = v13;
    v13 = 0;
    v50 = v7 + 32;
    while (1)
    {
      if (v13 >= *(v7 + 16))
      {
        goto LABEL_63;
      }

      if (!*(a3 + 16))
      {
        goto LABEL_23;
      }

      v56 = *(v50 + 8 * v13);
      v9 = a3;
      v29 = specialized __RawDictionaryStorage.find<A>(_:)(v56);
      if ((v30 & 1) == 0)
      {
        goto LABEL_23;
      }

      v31 = *(*(a3 + 56) + 8 * v29);
      v8 = *((*MEMORY[0x1E69E7D40] & *v31) + 0x98);
      v5 = (*MEMORY[0x1E69E7D40] & *v31) + 152;
      v32 = v31;
      v9 = v8();

      if (v9)
      {
        break;
      }

LABEL_23:
      if (++v13 == isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_57;
      }
    }

    v5 = v9 & 0xFFFFFFFFFFFFFF8;
    if (!(v9 >> 62))
    {
      isUniquelyReferenced_nonNull_native = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_30;
      }

      goto LABEL_56;
    }

    if (v9 >= 0)
    {
      v44 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v44 = v9;
    }

    isUniquelyReferenced_nonNull_native = MEMORY[0x19A8BDCD0](v44);
    if (!isUniquelyReferenced_nonNull_native)
    {
LABEL_56:

      isUniquelyReferenced_nonNull_native = v49;
      goto LABEL_23;
    }

LABEL_30:
    v46 = v13;
    v13 = 0;
    v53 = v9 & 0xFFFFFFFFFFFFFF8;
    v54 = v9 & 0xC000000000000001;
    v52 = isUniquelyReferenced_nonNull_native;
    while (1)
    {
      if (v54)
      {
        v8 = MEMORY[0x19A8BDB80](v13, v9);
        v33 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (v13 >= *(v5 + 16))
        {
          goto LABEL_61;
        }

        v8 = *(v9 + 8 * v13 + 32);

        v33 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
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
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v8, 1, v12);
          goto LABEL_20;
        }
      }

      v5 = v9;
      a3 = v12;
      v9 = v51;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = v51;
      v12 = specialized __RawDictionaryStorage.find<A>(_:)(v56);
      v35 = *(v51 + 16);
      v36 = (v34 & 1) == 0;
      v37 = v35 + v36;
      if (__OFADD__(v35, v36))
      {
        goto LABEL_59;
      }

      v7 = v34;
      if (*(v51 + 24) >= v37)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          isUniquelyReferenced_nonNull_native = v57;
          if (v34)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v9 = &v57;
          specialized _NativeDictionary.copy()();
          isUniquelyReferenced_nonNull_native = v57;
          if (v7)
          {
            goto LABEL_44;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v37, isUniquelyReferenced_nonNull_native);
        v9 = v57;
        v38 = specialized __RawDictionaryStorage.find<A>(_:)(v56);
        if ((v7 & 1) != (v39 & 1))
        {
          goto LABEL_67;
        }

        v12 = v38;
        isUniquelyReferenced_nonNull_native = v57;
        if (v7)
        {
LABEL_44:
          *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v12) = v8;

          goto LABEL_48;
        }
      }

      *(isUniquelyReferenced_nonNull_native + 8 * (v12 >> 6) + 64) |= 1 << v12;
      *(*(isUniquelyReferenced_nonNull_native + 48) + 8 * v12) = v56;
      *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v12) = v8;
      v40 = *(isUniquelyReferenced_nonNull_native + 16);
      v23 = __OFADD__(v40, 1);
      v41 = v40 + 1;
      if (v23)
      {
        goto LABEL_60;
      }

      *(isUniquelyReferenced_nonNull_native + 16) = v41;
LABEL_48:
      v12 = a3;
      v7 = *(a3 + 16);
      v42 = *(a3 + 24);
      if (v7 >= v42 >> 1)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v7 + 1, 1, a3);
      }

      *(v12 + 16) = v7 + 1;
      v43 = v12 + 24 * v7;
      *(v43 + 32) = isUniquelyReferenced_nonNull_native;
      *(v43 + 40) = v56;
      *(v43 + 48) = 0;
      ++v13;
      isUniquelyReferenced_nonNull_native = v52;
      v9 = v5;
      v5 = v53;
      if (v33 == v52)
      {

        a3 = v47;
        v7 = v48;
        isUniquelyReferenced_nonNull_native = v49;
        v13 = v46;
        goto LABEL_23;
      }
    }
  }

  v11 = 0;
  v12 = v7 + 32;
  v13 = v58;
  while (1)
  {
    if (v11 >= *(v7 + 16))
    {
      goto LABEL_62;
    }

    if (!*(a3 + 16))
    {
      goto LABEL_4;
    }

    v8 = *(v12 + 8 * v11);
    v9 = a3;
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
    if ((v16 & 1) == 0)
    {
      goto LABEL_4;
    }

    v17 = *(*(a3 + 56) + 8 * v15);
    v5 = *((*MEMORY[0x1E69E7D40] & *v17) + 0xA0);
    isUniquelyReferenced_nonNull_native = v17;
    a3 = (v5)();

    v7 = swift_isUniquelyReferenced_nonNull_native();
    v57 = v13;
    v9 = v13;
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
    v20 = v13;
    v21 = *(v13 + 16);
    v22 = (v19 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      goto LABEL_64;
    }

    v13 = v19;
    if (*(v20 + 24) < v24)
    {
      break;
    }

    if ((v7 & 1) == 0)
    {
      v5 = v18;
      specialized _NativeDictionary.copy()();
      v18 = v5;
      v9 = v57;
      if ((v13 & 1) == 0)
      {
LABEL_14:
        *(v9 + 8 * (v18 >> 6) + 64) |= 1 << v18;
        *(*(v9 + 48) + 8 * v18) = v8;
        *(*(v9 + 56) + 8 * v18) = a3;

        v26 = *(v9 + 16);
        v23 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v23)
        {
          goto LABEL_65;
        }

        v13 = v9;
        *(v9 + 16) = v27;
        a3 = v47;
        v7 = v48;
        isUniquelyReferenced_nonNull_native = v49;
        goto LABEL_4;
      }

      goto LABEL_3;
    }

LABEL_13:
    v9 = v57;
    if ((v13 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_3:
    v14 = *(v9 + 56);
    v8 = *(v14 + 8 * v18);
    *(v14 + 8 * v18) = a3;

    a3 = v47;
    v7 = v48;
    isUniquelyReferenced_nonNull_native = v49;
    v13 = v9;
LABEL_4:
    if (isUniquelyReferenced_nonNull_native == ++v11)
    {
      goto LABEL_19;
    }
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, v7);
  v18 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
  if ((v13 & 1) == (v25 & 1))
  {
    goto LABEL_13;
  }

LABEL_67:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

double flushPendingStaticLines #1 (lineIndex:) in Text.Effect.RenderSegmentation.init(layout:fragment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  v9 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v13 = *(a2 + 16);
  v14 = *(v13 + 16);
  if (!v14)
  {
    return result;
  }

  swift_beginAccess();
  v15 = __OFSUB__(a1, v14);
  v16 = a1 - v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = *(a4 + 16);

  specialized Text.Effect.RenderSegmentation.StaticLines.init(lines:glyphOrigins:lineIndex:)(v13, v17, v16, v27);

  v18 = v27[1];
  *v11 = v27[0];
  *(v11 + 1) = v18;
  *(v11 + 2) = v27[2];
  *(v11 + 6) = v28;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  v8 = *(a3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + 16) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_14:
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
    *(a3 + 16) = v8;
  }

  v21 = v8[2];
  v20 = v8[3];
  if (v21 >= v20 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v8);
  }

  v8[2] = v21 + 1;
  outlined init with take of Text.Effect.RenderSegmentation.Effect(v11, v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
  *(a3 + 16) = v8;
  swift_endAccess();
  swift_beginAccess();
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(a2 + 16);
  if (v22)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v23 + 16), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
  }

  else
  {
    *(a2 + 16) = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV6LayoutV4LineV_Tt1g5(0, *(v23 + 24) >> 1);
  }

  swift_beginAccess();
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(a4 + 16);
  if (v24)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v25 + 16), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
  }

  else
  {
    *(a4 + 16) = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo7CGPointV_Tt1g5(0, *(v25 + 24) >> 1);
  }

  return result;
}

uint64_t outlined destroy of Text.Effect.RenderSegmentation.StaticRuns(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI4TextV0C16AnimationSupportE6EffectO18RenderSegmentationV10StaticRunsVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of (offset: Int, element: Text.Layout.Run)?(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  _sSi6offset_7SwiftUI4TextV6LayoutV3RunV7elementtSgMaTm_0(0, a3, a4, a5);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t specialized EnumeratedSequence.Iterator.next()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for (offset: Int, element: Text.Layout.Run)(0, &lazy cache variable for type metadata for (offset: Int, element: Text.Layout.Line), MEMORY[0x1E6981048]);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v25 - v4);
  v6 = type metadata accessor for Text.Layout.Line();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  type metadata accessor for IndexingIterator<Text.Layout>(0);
  v14 = *(v13 + 36);
  type metadata accessor for Text.Layout();
  _s7SwiftUI4TextV6LayoutV4LineVAGSlAAWlTm_1(&lazy protocol witness table cache variable for type Text.Layout and conformance Text.Layout, MEMORY[0x1E6981090], MEMORY[0x1E69810A0]);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v1 + v14) == v29[0])
  {
    v15 = v28;
    v16 = 1;
    return (*(v27 + 56))(a1, v16, 1, v15);
  }

  v26 = a1;
  v17 = dispatch thunk of Collection.subscript.read();
  (*(v7 + 16))(v9);
  v17(v29, 0);
  dispatch thunk of Collection.formIndex(after:)();
  v18 = *(v7 + 32);
  v18(v12, v9, v6);
  v19 = v28;
  v20 = *(v28 + 48);
  type metadata accessor for EnumeratedSequence<Text.Layout>.Iterator(0);
  v22 = *(v21 + 36);
  v23 = *(v1 + v22);
  *v5 = v23;
  result = (v18)(v5 + v20, v12, v6);
  if (!__OFADD__(v23, 1))
  {
    v15 = v19;
    *(v1 + v22) = v23 + 1;
    a1 = v26;
    outlined init with take of (offset: Int, element: Text.Layout.Run)(v5, v26, &lazy cache variable for type metadata for (offset: Int, element: Text.Layout.Line), MEMORY[0x1E6981048]);
    v16 = 0;
    return (*(v27 + 56))(a1, v16, 1, v15);
  }

  __break(1u);
  return result;
}

void type metadata accessor for RangeSet<Int><>.IndexSequence.Iterator(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, void, uint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type Int and conformance Int(0, a2, a3);
    v7 = a3(a1, MEMORY[0x1E69E6530], MEMORY[0x1E69E6570], v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Text.Effect.Identifier and conformance Text.Effect.Identifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Text.Effect.Identifier and conformance Text.Effect.Identifier;
  if (!lazy protocol witness table cache variable for type Text.Effect.Identifier and conformance Text.Effect.Identifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.Identifier and conformance Text.Effect.Identifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.Identifier and conformance Text.Effect.Identifier;
  if (!lazy protocol witness table cache variable for type Text.Effect.Identifier and conformance Text.Effect.Identifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.Identifier and conformance Text.Effect.Identifier);
  }

  return result;
}

void type metadata accessor for EnumeratedSequence<Text.Layout.Line>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v10 = type metadata accessor for Text.Layout.Line();
    v11 = lazy protocol witness table accessor for type Text.Layout.Line and conformance Text.Layout.Line(a3, MEMORY[0x1E6981048], a4);
    v12 = a5(a1, v10, v11);
    if (!v13)
    {
      atomic_store(v12, a2);
    }
  }
}

void _ss18EnumeratedSequenceVy7SwiftUI4TextV6LayoutV4LineVGMaTm_0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v10 = type metadata accessor for Text.Layout.Line();
    v11 = _s7SwiftUI4TextV6LayoutV4LineVAGSlAAWlTm_1(a3, MEMORY[0x1E6981048], a4);
    v12 = a5(a1, v10, v11);
    if (!v13)
    {
      atomic_store(v12, a2);
    }
  }
}

double NSTextLayoutFragment.drawingInsets.getter()
{
  [v0 layoutFragmentFrame];
  v2 = v1;
  v4 = v3;
  [v0 renderingSurfaceBounds];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  MinY = CGRectGetMinY(v12);
  v13.origin.x = 0.0;
  v13.origin.y = 0.0;
  v13.size.width = v2;
  v13.size.height = v4;
  v11 = fmin(MinY - CGRectGetMinY(v13), 0.0);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  CGRectGetMinX(v14);
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.width = v2;
  v15.size.height = v4;
  CGRectGetMinX(v15);
  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = v2;
  v16.size.height = v4;
  CGRectGetMaxY(v16);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  CGRectGetMaxY(v17);
  v18.origin.y = 0.0;
  v18.origin.x = 0.0;
  v18.size.width = v2;
  v18.size.height = v4;
  CGRectGetMaxX(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  CGRectGetMaxX(v19);
  return v11;
}

void type metadata accessor for (offset: Int, element: Text.Layout.Run)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (offset: Int, element: Text.Layout.Run))
  {
    type metadata accessor for Text.Layout.Run();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (offset: Int, element: Text.Layout.Run));
    }
  }
}

void type metadata accessor for (offset: Int, element: Text.Layout.Run)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex(0, a2, a3);
    v7 = a3(a1, MEMORY[0x1E6981010], v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_3(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void _ss8RangeSetVy7SwiftUI4TextV6LayoutV14CharacterIndexVGMaTm_4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void type metadata accessor for EnumeratedSequence<Text.Layout>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for EnumeratedSequence<Text.Layout>)
  {
    type metadata accessor for Text.Layout();
    lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(&lazy protocol witness table cache variable for type Text.Layout and conformance Text.Layout, MEMORY[0x1E6981090], MEMORY[0x1E6981098]);
    v1 = type metadata accessor for EnumeratedSequence();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for EnumeratedSequence<Text.Layout>);
    }
  }
}

void type metadata accessor for IndexingIterator<Text.Layout.Line>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for IndexingIterator<Text.Layout.Line>)
  {
    type metadata accessor for Text.Layout.Line();
    lazy protocol witness table accessor for type Text.Layout.Line and conformance Text.Layout.Line(&lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line, MEMORY[0x1E6981058]);
    v1 = type metadata accessor for IndexingIterator();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for IndexingIterator<Text.Layout.Line>);
    }
  }
}

void specialized Text.Effect.PartialMap.validate(keyframes:size:)(unint64_t a1, double a2, double a3)
{
  v65 = MEMORY[0x1E69E7CD0];
  v7 = *(v3 + 8);
  v8 = *(v7 + 64);
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  v64[0] = 0;
  v64[1] = 0xE000000000000000;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v8;
  v12 = (v9 + 63) >> 6;

  v61 = 0;
  v13 = 0;
  while (v11)
  {
LABEL_4:
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v15 = *(*(v7 + 48) + ((v13 << 9) | (8 * v14)));
    v16 = specialized Text.Effect.PartialMap.validate(id:keyframes:)(v15, a1, v7);
    if (v16)
    {
      v18 = v16;
      v49 = v3;
      specialized Set._Variant.insert(_:)(&v62, v15);
      v61 |= v18 != 7;
      v62 = 0;
      v63 = 0xE000000000000000;
      MEMORY[0x19A8BD680](4023401, 0xE300000000000000);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x19A8BD680](32, 0xE100000000000000);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x19A8BD680](v62, v63);

      if (*(v7 + 16))
      {
        v19 = specialized __RawDictionaryStorage.find<A>(_:)(v15);
        if (v20)
        {
          v59 = *(*(v7 + 56) + 8 * v19);
          v62 = 0x3D74636566666520;
          v63 = 0xE800000000000000;
          v56 = *((*MEMORY[0x1E69E7D40] & *v59) + 0x70);
          v46 = v59;
          v21 = v56();
          MEMORY[0x19A8BD680](v21);

          MEMORY[0x19A8BD680](v62, v63);

          v23 = *((*MEMORY[0x1E69E7D40] & *v46) + 0xA0);
          v24 = v23(v22);
          v51 = (*(*v24 + 96))(v24);
          v53 = v25;

          v27 = v23(v26);
          if (*(a1 + 16) && (v28 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v27), (v29 & 1) != 0))
          {
            v30 = *(*(a1 + 56) + 16 * v28);

            v57 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF7SwiftUI4TextV0F16AnimationSupportE6EffectO14KeyframeLayoutV_Sis5NeverOTg503_s7d3UI4f5V0C16gh2E6i44O10PartialMapV8validate9keyframes4sizeyAF0g8j23H0V_So6CGSizeVtFSiAF0L6K16V8FragmentVXEfU_Tf1cn_nTf4x_nTm(v30);

            v62 = 0;
            v63 = 0xE000000000000000;
            _StringGuts.grow(_:)(23);

            v62 = 2108682;
            v63 = 0xE300000000000000;
            MEMORY[0x19A8BD680](v51, v53);

            MEMORY[0x19A8BD680](0xD000000000000010, 0x8000000195CDF490);
            v54 = MEMORY[0x19A8BD750](v57, MEMORY[0x1E69E6530]);
            v32 = v31;

            MEMORY[0x19A8BD680](v54, v32);
          }

          else
          {

            v62 = 0;
            v63 = 0xE000000000000000;
            _StringGuts.grow(_:)(28);

            v62 = 2108682;
            v63 = 0xE300000000000000;
            MEMORY[0x19A8BD680](v51, v53);

            MEMORY[0x19A8BD680](0xD000000000000017, 0x8000000195CDF470);
          }

          MEMORY[0x19A8BD680](v62, v63);

          v34 = (*((*MEMORY[0x1E69E7D40] & *v46) + 0x98))(v33);

          if (v34)
          {
            if (v34 >> 62)
            {
              if (v34 >= 0)
              {
                v44 = v34 & 0xFFFFFFFFFFFFFF8;
              }

              else
              {
                v44 = v34;
              }

              v35 = MEMORY[0x19A8BDCD0](v44);
              if (v35)
              {
LABEL_19:
                if (v35 < 1)
                {
LABEL_39:
                  __break(1u);
                  return;
                }

                v36 = 0;
                v50 = v34 & 0xC000000000000001;
                v52 = v35;
                v55 = v34;
                do
                {
                  if (v50)
                  {
                    v60 = MEMORY[0x19A8BDB80](v36, v34);
                  }

                  else
                  {
                    v60 = *(v34 + 8 * v36 + 32);
                  }

                  v58 = v36;
                  if (*(a1 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v15, v60), (v38 & 1) != 0))
                  {

                    v48 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF7SwiftUI4TextV0F16AnimationSupportE6EffectO14KeyframeLayoutV_Sis5NeverOTg503_s7d3UI4f5V0C16gh2E6i44O10PartialMapV8validate9keyframes4sizeyAF0g8j23H0V_So6CGSizeVtFSiAF0L6K16V8FragmentVXEfU_Tf1cn_nTf4x_nTm(v39);

                    v62 = 2108682;
                    v63 = 0xE300000000000000;
                    v41 = (*(*v60 + 96))(v40);
                    MEMORY[0x19A8BD680](v41);

                    MEMORY[0x19A8BD680](32, 0xE100000000000000);
                    v47 = MEMORY[0x19A8BD750](v48, MEMORY[0x1E69E6530]);
                    v43 = v42;

                    MEMORY[0x19A8BD680](v47, v43);
                  }

                  else
                  {
                    v62 = 2108682;
                    v63 = 0xE300000000000000;
                    v37 = (*(*v60 + 96))();
                    MEMORY[0x19A8BD680](v37);

                    MEMORY[0x19A8BD680](0x474E495353494D20, 0xE800000000000000);
                  }

                  MEMORY[0x19A8BD680](v62, v63);
                  ++v36;

                  v34 = v55;
                }

                while (v52 != v58 + 1);
              }
            }

            else
            {
              v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v35)
              {
                goto LABEL_19;
              }
            }
          }

          MEMORY[0x19A8BD680](10, 0xE100000000000000);

          v3 = v49;
        }
      }
    }
  }

  while (1)
  {
    v17 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_39;
    }

    if (v17 >= v12)
    {
      break;
    }

    v11 = *(v7 + 64 + 8 * v17);
    ++v13;
    if (v11)
    {
      v13 = v17;
      goto LABEL_4;
    }
  }

  v45 = v65;
  if (((*(v65 + 16) != 0) & v61) == 1)
  {
    specialized static Log.internalError(_:)(v64, a2, a3);
  }

  *(v3 + 24) = v45;
}

uint64_t sub_195BDFD30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Text.Layout();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t _NSTextLineFragmentGetCTLine(void *a1)
{
  v1 = a1;

  return [v1 lineRef];
}

uint64_t outlined destroy of IndexingIterator<Text.Layout.Cluster>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for IndexingIterator<Text.Layout>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for IndexingIterator<Text.Layout>)
  {
    type metadata accessor for Text.Layout();
    lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(&lazy protocol witness table cache variable for type Text.Layout and conformance Text.Layout, MEMORY[0x1E6981090], MEMORY[0x1E69810A0]);
    v1 = type metadata accessor for IndexingIterator();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for IndexingIterator<Text.Layout>);
    }
  }
}

void type metadata accessor for EnumeratedSequence<Text.Layout>.Iterator(uint64_t a1)
{
  if (!lazy cache variable for type metadata for EnumeratedSequence<Text.Layout>.Iterator)
  {
    type metadata accessor for Text.Layout();
    lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(&lazy protocol witness table cache variable for type Text.Layout and conformance Text.Layout, MEMORY[0x1E6981090], MEMORY[0x1E6981098]);
    v1 = type metadata accessor for EnumeratedSequence.Iterator();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for EnumeratedSequence<Text.Layout>.Iterator);
    }
  }
}

Swift::Void __swiftcall TextEffectsAnimationController.restorePendingSnapshots()()
{
  swift_beginAccess();
  v1 = *(v0 + 104);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = 1 << *(*(v0 + 104) + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v2;
  v45 = *(v0 + 104);

  v46 = v0;
  swift_beginAccess();
  v8 = 0;
  v9 = (v5 + 63) >> 6;
  while (v7)
  {
LABEL_13:
    v13 = (v8 << 9) | (8 * __clz(__rbit64(v7)));
    v14 = *(*(v45 + 48) + v13);
    v15 = *(*(v45 + 56) + v13);
    v16 = *(v46 + 112);
    swift_beginAccess();
    v17 = *(v16 + 40);
    if (*(v17 + 16))
    {
      Hasher.init(_seed:)();
      MEMORY[0x19A8BDE80](v14);
      v18 = Hasher._finalize()();
      v19 = -1 << *(v17 + 32);
      v20 = v18 & ~v19;
      if ((*(v17 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
      {
        v21 = ~v19;
        while (*(*(v17 + 48) + 8 * v20) != v14)
        {
          v20 = (v20 + 1) & v21;
          if (((*(v17 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            goto LABEL_18;
          }
        }

LABEL_22:
        swift_beginAccess();
        v27 = v15;
        v30 = v15;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = *(v46 + 104);
        *(v46 + 104) = 0x8000000000000000;
        v33 = specialized __RawDictionaryStorage.find<A>(_:)(v14);
        v35 = v32[2];
        v36 = (v34 & 1) == 0;
        v37 = __OFADD__(v35, v36);
        v38 = v35 + v36;
        if (v37)
        {
          goto LABEL_34;
        }

        v39 = v34;
        if (v32[3] >= v38)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_27;
          }

          v43 = v33;
          specialized _NativeDictionary.copy()();
          v33 = v43;
          if (v39)
          {
            goto LABEL_5;
          }

LABEL_28:
          v32[(v33 >> 6) + 8] |= 1 << v33;
          *(v32[6] + 8 * v33) = v14;
          *(v32[7] + 8 * v33) = v30;
          v41 = v32[2];
          v37 = __OFADD__(v41, 1);
          v42 = v41 + 1;
          if (v37)
          {
            goto LABEL_35;
          }

          v32[2] = v42;
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v38, isUniquelyReferenced_nonNull_native);
          v33 = specialized __RawDictionaryStorage.find<A>(_:)(v14);
          if ((v39 & 1) != (v40 & 1))
          {
            goto LABEL_36;
          }

LABEL_27:
          if ((v39 & 1) == 0)
          {
            goto LABEL_28;
          }

LABEL_5:
          v10 = v32[7];
          v11 = *(v10 + 8 * v33);
          *(v10 + 8 * v33) = v30;
        }

        *(v46 + 104) = v32;
        swift_endAccess();
        goto LABEL_7;
      }
    }

LABEL_18:
    swift_beginAccess();
    v22 = *(v16 + 16);
    if (!*(v22 + 16) || (v23 = specialized __RawDictionaryStorage.find<A>(_:)(v14), (v24 & 1) == 0))
    {
      swift_endAccess();
      goto LABEL_22;
    }

    v25 = *(*(v22 + 56) + 8 * v23);
    swift_endAccess();
    v26 = *(v46 + 112);
    v44 = *((*MEMORY[0x1E69E7D40] & *v25) + 0xC8);
    v27 = v15;
    v28 = v15;
    v29 = v25;

    v44(v28, MEMORY[0x1E69E7CC8], 0, v26, v46);

LABEL_7:
    v7 &= v7 - 1;
  }

  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      *(v46 + 104) = MEMORY[0x1E69E7CC8];

      return;
    }

    v7 = *(v3 + 8 * v12);
    ++v8;
    if (v7)
    {
      v8 = v12;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void type metadata completion function for Text.Effect.Composition.Operation(uint64_t a1)
{
  type metadata accessor for (Text.Effect.RelativeIdentifierKey, Text.Effect.Composition)(319);
  if (v1 <= 0x3F)
  {
    _sSnySiGMaTm_1(319, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E66A8]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for (Text.Effect.RelativeIdentifierKey, Range<Int>)(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Text.Effect.Composition(uint64_t a1)
{
  type metadata accessor for Text.Layout.Line();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGPoint(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [Text.Effect.Composition.Run](319, &lazy cache variable for type metadata for [Text.Effect.Composition.Run], type metadata accessor for Text.Effect.Composition.Run, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for _NSTextAnimatorState(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type Int and conformance Int(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

uint64_t type metadata completion function for RangeSet<>.IndexSequence.Iterator(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for RangeSet.Ranges();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for Text.Effect.RenderSegmentation.Segment(uint64_t a1)
{
  result = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Text.Effect.RenderSegmentation.Effect(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for Text.Effect.Composition.Run(uint64_t a1)
{
  result = type metadata accessor for Text.Effect.Composition.Operation(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for Text.Effect.RenderSegmentation.StaticRuns(uint64_t a1)
{
  type metadata accessor for Text.Layout.Line();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGPoint(319);
    if (v2 <= 0x3F)
    {
      _sSnySiGMaTm_0(319, &lazy cache variable for type metadata for RangeSet<Int>, MEMORY[0x1E69E7BE0]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CGRect(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for Text.Effect.RenderSegmentation.Effect(uint64_t a1)
{
  _sSnySiGMaTm_0(319, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E66A8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Text.Effect.Composition(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t lazy protocol witness table accessor for type Text.Layout.Line and conformance Text.Layout.Line(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Text.Layout.Line();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex;
  if (!lazy protocol witness table cache variable for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex;
  if (!lazy protocol witness table cache variable for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TextWipeTransitionModifier.Model(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  memcpy(v7, a1 + 1, 0x131uLL);
  v4 = *a2;
  memcpy(__dst, a2 + 1, sizeof(__dst));
  if (v3 == v4)
  {
    v5 = static TextWipeTransitionModifier.Model.State.== infix(_:_:)(v7);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t specialized TextModel.hasDateAttributes()(uint64_t a1)
{
  v2 = type metadata accessor for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v40 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?)(0);
  v48 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>(0, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, MEMORY[0x1E69685B0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v47 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  v13 = type metadata accessor for TextModel.ClusterData(0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 16);
  if (!v18)
  {
    return 0;
  }

  v19 = *(v14 + 24);
  v20 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v21 = *(v15 + 72);
  v45 = (v3 + 56);
  v46 = v19;
  v43 = v21;
  v44 = (v3 + 48);
  v36 = (v3 + 32);
  v37 = v7;
  v38 = (v3 + 8);
  v39 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  while (1)
  {
    outlined init with copy of TextWipeTransitionModifier.FadeInCluster(v20, v17, type metadata accessor for TextModel.ClusterData);
    (*v45)(v12, 1, 1, v2);
    v22 = *(v48 + 48);
    v23 = MEMORY[0x1E69685B0];
    v24 = MEMORY[0x1E69E6720];
    outlined init with copy of Environment<LayoutDirection>.Content(&v17[v46], v7, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, MEMORY[0x1E69685B0], MEMORY[0x1E69E6720]);
    outlined init with copy of Environment<LayoutDirection>.Content(v12, &v7[v22], &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, v23, v24);
    v25 = *v44;
    if ((*v44)(v7, 1, v2) != 1)
    {
      break;
    }

    outlined destroy of GlassMaterialProvider.Subvariant?(v12, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, MEMORY[0x1E69685B0], MEMORY[0x1E69E6720]);
    outlined destroy of (TextModel.ClusterData, TextModel.Cluster)(v17, type metadata accessor for TextModel.ClusterData);
    if (v25(&v7[v22], 1, v2) != 1)
    {
      goto LABEL_12;
    }

    outlined destroy of GlassMaterialProvider.Subvariant?(v7, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, MEMORY[0x1E69685B0], MEMORY[0x1E69E6720]);
LABEL_3:
    v20 += v43;
    if (!--v18)
    {
      return 0;
    }
  }

  outlined init with copy of Environment<LayoutDirection>.Content(v7, v47, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, MEMORY[0x1E69685B0], MEMORY[0x1E69E6720]);
  if (v25(&v7[v22], 1, v2) != 1)
  {
    v26 = &v7[v22];
    v27 = v40;
    (*v36)(v40, v26, v2);
    lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(&lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DateFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute.Field, MEMORY[0x1E69685B0], MEMORY[0x1E69685C8]);
    v42 = v18;
    v28 = v47;
    v41 = dispatch thunk of static Equatable.== infix(_:_:)();
    v29 = *v38;
    (*v38)(v27, v2);
    v30 = MEMORY[0x1E69685B0];
    v31 = MEMORY[0x1E69E6720];
    outlined destroy of GlassMaterialProvider.Subvariant?(v12, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, MEMORY[0x1E69685B0], MEMORY[0x1E69E6720]);
    v32 = v39;
    outlined destroy of (TextModel.ClusterData, TextModel.Cluster)(v39, type metadata accessor for TextModel.ClusterData);
    v33 = v28;
    v18 = v42;
    v29(v33, v2);
    v7 = v37;
    v17 = v32;
    outlined destroy of GlassMaterialProvider.Subvariant?(v37, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, v30, v31);
    if ((v41 & 1) == 0)
    {
      return 1;
    }

    goto LABEL_3;
  }

  outlined destroy of GlassMaterialProvider.Subvariant?(v12, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, MEMORY[0x1E69685B0], MEMORY[0x1E69E6720]);
  outlined destroy of (TextModel.ClusterData, TextModel.Cluster)(v39, type metadata accessor for TextModel.ClusterData);
  (*v38)(v47, v2);
LABEL_12:
  outlined destroy of (TextModel.ClusterData, TextModel.Cluster)(v7, type metadata accessor for (AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?));
  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ20TextAnimationSupport08EditWithC4InfoVySiG_Tt1g5(uint64_t result, uint64_t a2)
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

  v3 = 0;
  while (v2)
  {
    v4 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(result + v3 + 40), *(a2 + v3 + 40)), vceqq_s64(*(result + v3 + 56), *(a2 + v3 + 56))))) & (*(result + v3 + 72) == *(a2 + v3 + 72)) & ~(*(result + v3 + 32) ^ *(a2 + v3 + 32));
    if (*(result + v3 + 88) != *(a2 + v3 + 88))
    {
      v4 = 0;
    }

    v5 = v4 & (*(result + v3 + 80) ^ *(a2 + v3 + 80) ^ 1u);
    v6 = v5 != 1 || v2-- == 1;
    v3 += 64;
    if (v6)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI4PathV7StorageO(uint64_t a1)
{
  if ((*(a1 + 32) & 7u) <= 5)
  {
    return *(a1 + 32) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

BOOL specialized static TextWipeTransitionTiming.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3] || a1[4] != a2[4] || a1[5] != a2[5] || a1[6] != a2[6] || a1[7] != a2[7])
  {
    return 0;
  }

  if ((static UnitPoint.== infix(_:_:)() & 1) != 0 && (static UnitPoint.== infix(_:_:)() & 1) != 0 && (static UnitPoint.== infix(_:_:)() & 1) != 0 && (static UnitPoint.== infix(_:_:)() & 1) != 0 && a1[16] == a2[16])
  {
    return a1[17] == a2[17];
  }

  return 0;
}

void type metadata accessor for Color?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t specialized Sequence.allSatisfy(_:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
LABEL_28:
    v18 = 1;
    return v18 & 1;
  }

  v9 = 0;
  v10 = a4 & 0xFFFFFFFFFFFFFFLL;
  v11 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  while (1)
  {
    if ((a4 & 0x1000000000000000) != 0)
    {
      v14 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      v16 = v15;
      goto LABEL_15;
    }

    if ((a4 & 0x2000000000000000) != 0)
    {
      v21[0] = a3;
      v21[1] = v10;
      v13 = v21 + v9;
    }

    else
    {
      v12 = v11;
      if ((a3 & 0x1000000000000000) == 0)
      {
        v12 = _StringObject.sharedUTF8.getter();
      }

      v13 = (v12 + v9);
    }

    v14 = *v13;
    if ((*v13 & 0x80000000) == 0)
    {
LABEL_14:
      v16 = 1;
      goto LABEL_15;
    }

    v19 = (__clz(v14 ^ 0xFF) - 24);
    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v14 = ((v14 & 0xF) << 12) | ((v13[1] & 0x3F) << 6) | v13[2] & 0x3F;
        v16 = 3;
      }

      else
      {
        v14 = ((v14 & 0xF) << 18) | ((v13[1] & 0x3F) << 12) | ((v13[2] & 0x3F) << 6) | v13[3] & 0x3F;
        v16 = 4;
      }
    }

    else
    {
      if (v19 == 1)
      {
        goto LABEL_14;
      }

      v14 = v13[1] & 0x3F | ((v14 & 0x1F) << 6);
      v16 = 2;
    }

LABEL_15:
    LODWORD(v21[0]) = v14;
    v17 = a1(v21);
    if (v4)
    {
      return v18 & 1;
    }

    if ((v17 & 1) == 0)
    {
      break;
    }

    v9 += v16;
    if (v9 >= v5)
    {
      goto LABEL_28;
    }
  }

  v18 = 0;
  return v18 & 1;
}

void type metadata accessor for _ContiguousArrayStorage<Edit<Int>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void, void, void))
{
  if (!*a2)
  {
    type metadata accessor for Range<Int>(255, a3, a4);
    v5 = type metadata accessor for _ContiguousArrayStorage();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for [EditWithAnimationInfo<Int>](uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void, uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for ModifiedContent<Text, TextGlassWipeTransitionModifier>(255, a3, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<[Edit<Int>]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<[Edit<Int>]>)
  {
    type metadata accessor for [EditWithAnimationInfo<Int>](255, &lazy cache variable for type metadata for [Edit<Int>], &lazy cache variable for type metadata for Edit<Int>, type metadata accessor for Edit, MEMORY[0x1E69E62F8]);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<[Edit<Int>]>);
    }
  }
}

void specialized Collection<>.animationInfo(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = a2 + 32;
    v6 = 136;
    if (v2 == 1)
    {
      v6 = 128;
    }

    v22 = v6;
    v7 = MEMORY[0x1E69E7CC0];
LABEL_5:
    v8 = v3;
    while (1)
    {
      if (v8 >= v2)
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v3 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_26;
      }

      v9 = *(v5 + 8 * v8);
      v10 = *(v9 + 16);
      if (v10)
      {
        break;
      }

      ++v8;
      if (v3 == v2)
      {
        goto LABEL_24;
      }
    }

    v20 = v5;
    v11 = *(a1 + 24);
    v12 = *(a1 + 32) * v8;
    v21 = (v8 & 1) == 0;

    v13 = 32;
    while (1)
    {
      v14 = *(v9 + v13);
      v15 = *(a1 + v22);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
      }

      v17 = *(v7 + 2);
      v16 = *(v7 + 3);
      if (v17 >= v16 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v7);
      }

      *(v7 + 2) = v17 + 1;
      v18 = &v7[24 * v17];
      *(v18 + 4) = v12 + v11 * v4;
      v18[40] = v21;
      *(v18 + 6) = v15;
      if (v14)
      {
        if (__OFADD__(v4++, 1))
        {
          break;
        }
      }

      v13 += 40;
      if (!--v10)
      {

        v5 = v20;
        if (v3 != v2)
        {
          goto LABEL_5;
        }

        goto LABEL_24;
      }
    }

LABEL_27:
    __break(1u);
  }

  else
  {
    v4 = 0;
LABEL_24:
    TextWipeTransitionTiming.duration(editCount:groupCount:)(v4, v2);
  }
}

void TextWipeTransitionModifier.body(content:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for TextWipeTransitionModifier(0);
  v29 = *(v6 - 8);
  v7 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = static Alignment.topLeading.getter();
  v10 = v9;
  v11 = static Alignment.topLeading.getter();
  v13 = v12;
  closure #1 in closure #1 in TextWipeTransitionModifier.body(content:)(v3);
  memcpy(v33, v36, 0x172uLL);
  memcpy(v34, v36, 0x172uLL);
  outlined init with copy of TextWipeTransitionModifier.FadeInCluster(v33, v35, type metadata accessor for TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>);
  outlined destroy of (TextModel.ClusterData, TextModel.Cluster)(v34, type metadata accessor for TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>);
  memcpy(v32, v33, sizeof(v32));
  v35[0] = v11;
  v35[1] = v13;
  memcpy(&v35[2], v33, 0x172uLL);
  v35[49] = v8;
  v35[50] = v10;
  type metadata accessor for _ViewModifier_Content<TextWipeTransitionModifier>(0);
  (*(*(v14 - 8) + 16))(a2, a1, v14);
  type metadata accessor for ModifiedContent<_ViewModifier_Content<TextWipeTransitionModifier>, _OverlayModifier<ZStack<TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>>>>(0);
  memcpy((a2 + *(v15 + 36)), v35, 0x198uLL);
  *v36 = v11;
  *&v36[8] = v13;
  memcpy(&v36[16], v32, 0x172uLL);
  v37 = *&v30[410];
  v38 = v31;
  v39 = v8;
  v40 = v10;
  outlined init with copy of TextWipeTransitionModifier.FadeInCluster(v35, v30, type metadata accessor for _OverlayModifier<ZStack<TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>>>);
  outlined destroy of (TextModel.ClusterData, TextModel.Cluster)(v36, type metadata accessor for _OverlayModifier<ZStack<TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>>>);
  KeyPath = swift_getKeyPath();
  v17 = MEMORY[0x1E697E830];
  type metadata accessor for _ConditionalContent<TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>, ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>>.Storage(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<TextWipeTransitionModifier>, _OverlayModifier<ZStack<TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>>>>, _EnvironmentKeyWritingModifier<LayoutDirection>>, type metadata accessor for ModifiedContent<_ViewModifier_Content<TextWipeTransitionModifier>, _OverlayModifier<ZStack<TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>>>>, type metadata accessor for _EnvironmentKeyWritingModifier<LayoutDirection>, MEMORY[0x1E697E830]);
  v19 = (a2 + *(v18 + 36));
  type metadata accessor for _EnvironmentKeyWritingModifier<LayoutDirection>(0);
  v21 = *(v20 + 28);
  v22 = *MEMORY[0x1E697E7D0];
  v23 = type metadata accessor for LayoutDirection();
  (*(*(v23 - 8) + 104))(v19 + v21, v22, v23);
  *v19 = KeyPath;
  outlined init with copy of TextWipeTransitionModifier.FadeInCluster(v28, &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TextWipeTransitionModifier);
  v24 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v25 = swift_allocObject();
  outlined init with take of TextWipeTransitionModifier(&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for TextWipeTransitionModifier);
  type metadata accessor for _ConditionalContent<TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>, ForEach<ArraySlice<TextModel.MorphCluster>, Int, TextWipeTransitionModifier.MoveCluster>>.Storage(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<TextWipeTransitionModifier>, _OverlayModifier<ZStack<TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>>>>, _EnvironmentKeyWritingModifier<LayoutDirection>>, _TextRendererViewModifier<TextWipeTransitionModifier.NullRenderer>>, _PreferenceActionModifier<Text.LayoutKey>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<TextWipeTransitionModifier>, _OverlayModifier<ZStack<TupleView<(Spacer, _ConditionalContent<_ConditionalContent<IDView<TextWipeTransitionModifier.StationaryView, Int>, IDView<TextWipeTransitionModifier.TransitionView, Int>>, EmptyView>)>>>>, _EnvironmentKeyWritingModifier<LayoutDirection>>, _TextRendererViewModifier<TextWipeTransitionModifier.NullRenderer>>, type metadata accessor for _PreferenceActionModifier<Text.LayoutKey>, v17);
  v27 = (a2 + *(v26 + 36));
  *v27 = partial apply for closure #2 in TextWipeTransitionModifier.body(content:);
  v27[1] = v25;
}

uint64_t specialized Collection<>.editsForClock(to:split:otherSplit:)@<X0>(int64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X8>)
{
  if (a2 < 0)
  {
LABEL_183:
    __break(1u);
    goto LABEL_184;
  }

  v9 = a2;
  v10 = *(a6 + 16);
  if (v10 < a2)
  {
LABEL_184:
    __break(1u);
    goto LABEL_185;
  }

  v13 = a1;
  v14 = type metadata accessor for TextModel.ClusterData(0);
  v16 = *(v14 - 8);
  a1 = v14 - 8;
  v15 = v16;
  a7 = a3;
  if (v10 < a3)
  {
LABEL_185:
    __break(1u);
    goto LABEL_186;
  }

  a7 = a3;
  if (a3 < 0)
  {
LABEL_186:
    __break(1u);
    goto LABEL_187;
  }

  if (a4 < 0)
  {
LABEL_187:
    __break(1u);
    goto LABEL_188;
  }

  a7 = *(v13 + 16);
  if (a7 < a4)
  {
LABEL_188:
    __break(1u);
    goto LABEL_189;
  }

  if (a7 < a5)
  {
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
    goto LABEL_195;
  }

  if (a5 < 0)
  {
    goto LABEL_190;
  }

  v7 = a6;
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v18 = (2 * a4) | 1;
  v19 = (2 * a7) | 1;

  specialized Collection<>.edits(to:)(v13 + v17, 0, v18, &v7[v17], 0, (2 * v9) | 1);
  v21 = v20;
  v108 = v20;

  specialized Collection<>.edits(to:)(v13 + v17, a5, v19, &v7[v17], a3, (2 * v10) | 1);
  v23 = v22;
  v24 = *(v21 + 2) + 1;
  v25 = 32;
  while (--v24)
  {
    v26 = v21[v25];
    v25 += 40;
    if (v26)
    {

      v27 = *(v23 + 2) + 1;
      v28 = 32;
      do
      {
        if (!--v27)
        {
          goto LABEL_66;
        }

        v29 = v23[v28];
        v28 += 40;
      }

      while (v29 != 1);
      if (v9 == a3)
      {
        goto LABEL_30;
      }

      v18 = *(v21 + 2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_206;
      }

      if (!v18)
      {
        goto LABEL_207;
      }

      while (2)
      {
        if (v18 <= *(v21 + 2))
        {
          v30 = &v21[40 * v18];
          *(v30 - 8) = 1;
          v31 = v30 - 1;
          v32 = v30[1];
          if (*v30 >= v9)
          {
            v33 = v9;
          }

          else
          {
            v33 = *v30;
          }

          v34 = a3;
          if (v32 > a3)
          {
            v34 = v32;
          }

          if (v34 >= v33)
          {
            v36 = v31[3];
            v35 = v31[4];
            if (v35 <= a4)
            {
              v35 = a4;
            }

            if (v36 >= a4)
            {
              v36 = a4;
            }

            v31[1] = v33;
            v31[2] = v34;
            v31[3] = v36;
            v31[4] = v35;
            v108 = v21;
LABEL_30:
            if (a4 == a5)
            {
              goto LABEL_43;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              goto LABEL_209;
            }

            if (*(v23 + 2))
            {
              goto LABEL_33;
            }

LABEL_210:
            __break(1u);
          }

          __break(1u);
LABEL_212:
          __break(1u);
LABEL_213:
          a1 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
          v21 = a1;
LABEL_46:
          v41 = 0;
          a7 = 0;
          v42 = v21 + 32;
          v43 = *(v21 + 2);
          v44 = v21 + 104;
          while (a7 < v43)
          {
            if (v41 + 1 >= v43)
            {
              goto LABEL_174;
            }

            v50 = &v42[40 * a7];
            if (*v50 & 1) != 0 || (*(v44 - 4))
            {
              if (++a7 >= v43)
              {
                goto LABEL_178;
              }

              v45 = *(v44 - 3);
              v46 = *(v44 - 1);
              v47 = &v42[40 * a7];
              *v47 = *(v44 - 32);
              *(v47 + 8) = v45;
              *(v47 + 24) = v46;
            }

            else
            {
              v51 = *(v50 + 1);
              v52 = *(v50 + 2);
              if (v51 >= *(v44 - 3))
              {
                v51 = *(v44 - 3);
              }

              if (v52 <= *(v44 - 2))
              {
                v52 = *(v44 - 2);
              }

              if (v52 < v51)
              {
                goto LABEL_177;
              }

              v53 = *(v44 - 1);
              v54 = *v44;
              a2 = *(v50 + 3);
              a1 = *(v50 + 4);
              if (a2 < v53)
              {
                v53 = *(v50 + 3);
              }

              if (a1 > v54)
              {
                v54 = *(v50 + 4);
              }

              if (v54 < v53)
              {
                goto LABEL_179;
              }

              *v50 = 0;
              *(v50 + 1) = v51;
              *(v50 + 2) = v52;
              *(v50 + 3) = v53;
              *(v50 + 4) = v54;
            }

            v43 = *(v21 + 2);
            v48 = v41 + 1;
            v49 = v41 + 2;
            v44 += 5;
            ++v41;
            if (v49 == v43)
            {
              if (v48 >= a7)
              {
                v7 = (a7 + 1);
                a4 = v48 + 1;
                goto LABEL_123;
              }

              __break(1u);
              goto LABEL_203;
            }
          }

          goto LABEL_173;
        }

LABEL_208:
        __break(1u);
LABEL_209:
        v23 = specialized _ArrayBuffer._consumeAndCreateNew()(v23);
        if (!*(v23 + 2))
        {
          goto LABEL_210;
        }

LABEL_33:
        v37 = *(v23 + 7);
        v38 = *(v23 + 8);
        if (v37 >= a4)
        {
          v37 = a4;
        }

        if (v38 <= a5)
        {
          v38 = a5;
        }

        if (v38 < v37)
        {
          goto LABEL_212;
        }

        v40 = *(v23 + 5);
        v39 = *(v23 + 6);
        if (v39 <= a3)
        {
          v39 = a3;
        }

        if (v40 >= a3)
        {
          v40 = a3;
        }

        v23[32] = 1;
        *(v23 + 5) = v40;
        *(v23 + 6) = v39;
        *(v23 + 7) = v37;
        *(v23 + 8) = v38;
LABEL_43:
        v7 = *(v21 + 2);
        if (v7 == 1)
        {
          a4 = 1;
LABEL_123:
          a5 = v7;
          if (!__OFADD__(a4, &v7[-a4]))
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v108 = v21;
            if (!isUniquelyReferenced_nonNull_native || v7 > *(v21 + 3) >> 1)
            {
              if (a4 <= v7)
              {
                v85 = v7;
              }

              else
              {
                v85 = a4;
              }

              v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v85, 1, v21);
              v108 = v21;
            }

            a5 = &v108;
            specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, a4, 0);
            goto LABEL_131;
          }

LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
        }

        else
        {
          if (v7)
          {
            a1 = swift_isUniquelyReferenced_nonNull_native();
            if ((a1 & 1) == 0)
            {
              goto LABEL_213;
            }

            goto LABEL_46;
          }

LABEL_131:
          v7 = *(v23 + 2);
          if (!v7)
          {
            goto LABEL_165;
          }

          if (v7 != 1)
          {
            a1 = swift_isUniquelyReferenced_nonNull_native();
            if ((a1 & 1) == 0)
            {
              a1 = specialized _ArrayBuffer._consumeAndCreateNew()(v23);
              v23 = a1;
            }

            v86 = 0;
            a7 = 0;
            v87 = v23 + 32;
            v88 = *(v23 + 2);
            v89 = v23 + 104;
            while (a7 < v88)
            {
              if (v86 + 1 >= v88)
              {
                goto LABEL_176;
              }

              v95 = &v87[40 * a7];
              if (*v95 & 1) != 0 || (*(v89 - 4))
              {
                if (++a7 >= v88)
                {
                  goto LABEL_181;
                }

                v90 = *(v89 - 3);
                v91 = *(v89 - 1);
                v92 = &v87[40 * a7];
                *v92 = *(v89 - 32);
                *(v92 + 8) = v90;
                *(v92 + 24) = v91;
              }

              else
              {
                v96 = *(v95 + 1);
                v97 = *(v95 + 2);
                if (v96 >= *(v89 - 3))
                {
                  v96 = *(v89 - 3);
                }

                if (v97 <= *(v89 - 2))
                {
                  v97 = *(v89 - 2);
                }

                if (v97 < v96)
                {
                  goto LABEL_180;
                }

                v98 = *(v89 - 1);
                v99 = *v89;
                a2 = *(v95 + 3);
                a1 = *(v95 + 4);
                if (a2 < v98)
                {
                  v98 = *(v95 + 3);
                }

                if (a1 > v99)
                {
                  v99 = *(v95 + 4);
                }

                if (v99 < v98)
                {
                  goto LABEL_182;
                }

                *v95 = 0;
                *(v95 + 1) = v96;
                *(v95 + 2) = v97;
                *(v95 + 3) = v98;
                *(v95 + 4) = v99;
              }

              v88 = *(v23 + 2);
              v93 = v86 + 1;
              v94 = v86 + 2;
              v89 += 5;
              ++v86;
              if (v94 == v88)
              {
                if (v93 < a7)
                {
                  goto LABEL_204;
                }

                v7 = (a7 + 1);
                a4 = v93 + 1;
                goto LABEL_157;
              }
            }

            goto LABEL_175;
          }

          a4 = 1;
LABEL_157:
          a5 = v7;
          if (!__OFADD__(a4, &v7[-a4]))
          {
            v100 = swift_isUniquelyReferenced_nonNull_native();
            if (!v100 || v7 > *(v23 + 3) >> 1)
            {
              if (a4 <= v7)
              {
                v101 = v7;
              }

              else
              {
                v101 = a4;
              }

              v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v100, v101, 1, v23);
            }

            specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, a4, 0);
LABEL_165:
            type metadata accessor for _ContiguousArrayStorage<[Edit<Int>]>(0);
            v76 = swift_allocObject();
            *(v76 + 16) = xmmword_195CC8D70;
            *(v76 + 32) = v21;
            *(v76 + 40) = v23;
            goto LABEL_166;
          }
        }

        __break(1u);
LABEL_206:
        v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
        if (v18)
        {
          continue;
        }

        break;
      }

LABEL_207:
      __break(1u);
      goto LABEL_208;
    }
  }

LABEL_66:
  type metadata accessor for [EditWithAnimationInfo<Int>](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Edit<Int>>, &lazy cache variable for type metadata for Edit<Int>, type metadata accessor for Edit, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v106 = xmmword_195CC8D00;
  *(inited + 16) = xmmword_195CC8D00;
  *(inited + 32) = 0;
  *(inited + 40) = v9;
  *(inited + 48) = a3;
  *(inited + 56) = a4;
  *(inited + 64) = a5;

  specialized Array.append<A>(contentsOf:)(inited);

  specialized Array.append<A>(contentsOf:)(v56);
  v7 = v21;
  v57 = *(v21 + 2);
  if (v57)
  {
    v58 = 0;
    v59 = 0;
    while (*&v21[v58 + 56] != *&v21[v58 + 64])
    {
      ++v59;
      v58 += 40;
      if (v57 == v59)
      {
        goto LABEL_70;
      }
    }

    v60 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      goto LABEL_200;
    }

    a1 = swift_isUniquelyReferenced_nonNull_native();
    if ((a1 & 1) == 0)
    {
      goto LABEL_201;
    }

    while (1)
    {
      v57 = *(v7 + 2);
      if (v60 != v57)
      {
        break;
      }

      v57 = v60;
LABEL_75:
      if (v57 < v59)
      {
        __break(1u);
      }

      else if ((v59 & 0x8000000000000000) == 0)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_200:
      __break(1u);
LABEL_201:
      a1 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
      v7 = a1;
    }

    a7 = (v7 + 32);
    v77 = &v7[v58 + 72];
    while (v60 < v57)
    {
      v78 = *(v77 + 24);
      v79 = *(v77 + 32);
      if (v78 != v79)
      {
        if (v60 != v59)
        {
          if (v59 >= v57)
          {
            goto LABEL_191;
          }

          v80 = (a7 + 40 * v59);
          v81 = *v80;
          *v80 = *v77;
          *v77 = v81;
          v82 = *(v80 + 8);
          *(v80 + 8) = *(v77 + 8);
          *(v77 + 8) = v82;
          v83 = *(v80 + 24);
          *(v80 + 3) = v78;
          *(v80 + 4) = v79;
          *(v77 + 24) = v83;
          v57 = *(v7 + 2);
        }

        ++v59;
      }

      ++v60;
      v77 += 40;
      if (v60 == v57)
      {
        goto LABEL_75;
      }
    }

LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
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
    goto LABEL_183;
  }

LABEL_70:
  v59 = *(v21 + 2);
LABEL_77:
  a7 = v59 - v57;
  if (__OFADD__(v57, v59 - v57))
  {
    goto LABEL_192;
  }

  v61 = swift_isUniquelyReferenced_nonNull_native();
  if (!v61 || v59 > *(v7 + 3) >> 1)
  {
    if (v57 <= v59)
    {
      v62 = v59;
    }

    else
    {
      v62 = v57;
    }

    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v61, v62, 1, v7);
  }

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v59, v57, 0);
  a1 = *(v7 + 2);
  if (!a1)
  {
    goto LABEL_111;
  }

  if (a1 == 1)
  {
    a2 = 1;
  }

  else
  {
    v63 = 0;
    a7 = 0;
    v64 = v7 + 32;
    v65 = v7 + 104;
    do
    {
      if (a7 >= a1)
      {
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
        goto LABEL_172;
      }

      if (v63 + 1 >= a1)
      {
        goto LABEL_168;
      }

      v71 = &v64[40 * a7];
      if (*v71 & 1) != 0 || (*(v65 - 4))
      {
        if (++a7 >= a1)
        {
          goto LABEL_170;
        }

        v66 = *(v65 - 3);
        v67 = *(v65 - 1);
        v68 = &v64[40 * a7];
        *v68 = *(v65 - 32);
        *(v68 + 8) = v66;
        *(v68 + 24) = v67;
      }

      else
      {
        v72 = *(v71 + 1);
        v73 = *(v71 + 2);
        if (v72 >= *(v65 - 3))
        {
          v72 = *(v65 - 3);
        }

        if (v73 <= *(v65 - 2))
        {
          v73 = *(v65 - 2);
        }

        if (v73 < v72)
        {
          goto LABEL_169;
        }

        v74 = *(v65 - 1);
        v75 = *v65;
        a2 = *(v71 + 3);
        a1 = *(v71 + 4);
        if (a2 < v74)
        {
          v74 = *(v71 + 3);
        }

        if (a1 > v75)
        {
          v75 = *(v71 + 4);
        }

        if (v75 < v74)
        {
          goto LABEL_171;
        }

        *v71 = 0;
        *(v71 + 1) = v72;
        *(v71 + 2) = v73;
        *(v71 + 3) = v74;
        *(v71 + 4) = v75;
      }

      a1 = *(v7 + 2);
      v69 = v63 + 1;
      v70 = v63 + 2;
      v65 += 5;
      ++v63;
    }

    while (v70 != a1);
    if (v69 < a7)
    {
      goto LABEL_193;
    }

    a1 = a7 + 1;
    a2 = v69 + 1;
  }

  a7 = a1;
  if (__OFADD__(a2, a1 - a2))
  {
    goto LABEL_194;
  }

  if (a1 > *(v7 + 3) >> 1)
  {
LABEL_195:
    if (a2 > a7)
    {
      a7 = a2;
    }

    v103 = a1;
    v104 = a2;
    v105 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, a7, 1, v7);
    a2 = v104;
    v7 = v105;
    a1 = v103;
  }

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, 0);
LABEL_111:
  type metadata accessor for _ContiguousArrayStorage<[Edit<Int>]>(0);
  v76 = swift_allocObject();
  *(v76 + 16) = v106;
  *(v76 + 32) = v7;

LABEL_166:

  return v76;
}

void specialized Collection<>.edits(to:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v58 = a1;
  v54 = type metadata accessor for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field();
  v11 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v48 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>(0, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, MEMORY[0x1E69685B0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v51 = &v45 - v14;
  type metadata accessor for (AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?)(0);
  v53 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v59 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for TextModel.ClusterData(0);
  v57 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v18 = (&v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v45 - v20);
  v60 = a3 >> 1;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
    goto LABEL_35;
  }

  v22 = a6 >> 1;
  if (__OFSUB__(a6 >> 1, a5))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if ((a3 >> 1) - a2 != (a6 >> 1) - a5)
  {
    type metadata accessor for [EditWithAnimationInfo<Int>](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Edit<Int>>, &lazy cache variable for type metadata for Edit<Int>, type metadata accessor for Edit, MEMORY[0x1E69E6F90]);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_195CC8D00;
    if (v60 >= a2 && v22 >= a5)
    {
      *(v23 + 32) = 1;
      *(v23 + 40) = a5;
      *(v23 + 48) = v22;
      v24 = v60;
      *(v23 + 56) = a2;
      *(v23 + 64) = v24;
      return;
    }

LABEL_37:
    __break(1u);
    return;
  }

  if (v60 < a2 || v22 < a5)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v22 != a5)
  {
    v49 = (v11 + 48);
    v45 = (v11 + 32);
    v25 = MEMORY[0x1E69E7CC0];
    v47 = (v11 + 8);
    v50 = a4;
    v56 = v22;
    do
    {
      if (v60 == a2)
      {
        return;
      }

      v26 = *(v57 + 72);
      outlined init with copy of TextWipeTransitionModifier.FadeInCluster(a4 + v26 * a5, v21, type metadata accessor for TextModel.ClusterData);
      outlined init with copy of TextWipeTransitionModifier.FadeInCluster(v58 + v26 * a2, v18, type metadata accessor for TextModel.ClusterData);
      v27 = *v21 == *v18 && v21[1] == v18[1];
      if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v21[2] == v18[2])
      {
        v55 = a5;
        v28 = *(v52 + 24);
        v29 = *(v53 + 48);
        v30 = MEMORY[0x1E69685B0];
        v31 = MEMORY[0x1E69E6720];
        v32 = v59;
        outlined init with copy of Environment<LayoutDirection>.Content(v21 + v28, v59, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, MEMORY[0x1E69685B0], MEMORY[0x1E69E6720]);
        outlined init with copy of Environment<LayoutDirection>.Content(v18 + v28, v32 + v29, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, v30, v31);
        v33 = *v49;
        v34 = v54;
        if ((*v49)(v32, 1, v54) != 1)
        {
          v37 = v59;
          v38 = v51;
          outlined init with copy of Environment<LayoutDirection>.Content(v59, v51, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, MEMORY[0x1E69685B0], MEMORY[0x1E69E6720]);
          if (v33(v37 + v29, 1, v34) != 1)
          {
            v39 = v38;
            v40 = v48;
            (*v45)(v48, v37 + v29, v34);
            lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(&lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DateFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute.Field, MEMORY[0x1E69685B0], MEMORY[0x1E69685C8]);
            v46 = dispatch thunk of static Equatable.== infix(_:_:)();
            v41 = *v47;
            (*v47)(v40, v34);
            v41(v39, v34);
            outlined destroy of GlassMaterialProvider.Subvariant?(v37, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, MEMORY[0x1E69685B0], MEMORY[0x1E69E6720]);
            v36 = v46 ^ 1;
            a4 = v50;
            a5 = v55;
            goto LABEL_28;
          }

          (*v47)(v38, v34);
          a4 = v50;
          a5 = v55;
LABEL_26:
          outlined destroy of (TextModel.ClusterData, TextModel.Cluster)(v59, type metadata accessor for (AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?));
          v36 = 1;
          goto LABEL_28;
        }

        v35 = v33(v59 + v29, 1, v34);
        a4 = v50;
        a5 = v55;
        if (v35 != 1)
        {
          goto LABEL_26;
        }

        outlined destroy of GlassMaterialProvider.Subvariant?(v59, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, MEMORY[0x1E69685B0], MEMORY[0x1E69E6720]);
        v36 = 0;
      }

      else
      {
        v36 = 1;
      }

LABEL_28:
      outlined destroy of (TextModel.ClusterData, TextModel.Cluster)(v18, type metadata accessor for TextModel.ClusterData);
      outlined destroy of (TextModel.ClusterData, TextModel.Cluster)(v21, type metadata accessor for TextModel.ClusterData);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
      }

      v43 = *(v25 + 2);
      v42 = *(v25 + 3);
      if (v43 >= v42 >> 1)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v25);
      }

      *(v25 + 2) = v43 + 1;
      v44 = &v25[40 * v43];
      v44[32] = v36 & 1;
      *(v44 + 5) = a5;
      *(v44 + 6) = a5 + 1;
      *(v44 + 7) = a2;
      *(v44 + 8) = ++a2;
      ++a5;
    }

    while (v56 != a5);
  }
}

uint64_t type metadata completion function for Edit(uint64_t a1)
{
  result = type metadata accessor for Range();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[40 * v8 + 32], (a1 + 32), 40 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native() && v4 + v2 <= *(v3 + 24) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  if (!*(a1 + 16))
  {
LABEL_10:

    if (!v2)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_11:
    *v1 = v3;
    return;
  }

  v6 = *(v3 + 16);
  v7 = __OFADD__(v6, v2);
  v8 = v6 + v2;
  if (!v7)
  {
    *(v3 + 16) = v8;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  type metadata accessor for Text.Effect.ResolvedDrawing.Operation(0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 40 * result + 40 * a3;
  v10 = (v6 + 32 + 40 * a2);
  if (result != v10 || result >= v10 + 40 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 40 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 16 * result + 16 * a3;
  v10 = (v6 + 32 + 16 * a2);
  if (result != v10 || result >= v10 + 16 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 16 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

void type metadata accessor for ModifiedContent<Text, TextGlassWipeTransitionModifier>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t specialized TextModel.isSplitHours()(uint64_t a1, unsigned int *a2)
{
  v4 = type metadata accessor for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?)(0);
  v50 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TupleView<(ModifiedContent<ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeOutCluster>, _OffsetEffect>, ForEach<ArraySlice<TextModel.Cluster>, Int, TextWipeTransitionModifier.FadeInCluster>)>(0, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, MEMORY[0x1E69685B0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v42 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v49 = type metadata accessor for TextModel.ClusterData(0);
  MEMORY[0x1EEE9AC00](v49);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 16);
  if (!v18)
  {
    return 1;
  }

  v19 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v20 = *(v15 + 72);
  v48 = (v5 + 104);
  v47 = *a2;
  v46 = (v5 + 56);
  v38 = (v5 + 32);
  v39 = v9;
  v40 = (v5 + 8);
  v44 = v20;
  v45 = (v5 + 48);
  while (1)
  {
    outlined init with copy of TextWipeTransitionModifier.FadeInCluster(v19, v17, type metadata accessor for TextModel.ClusterData);
    if (*(v17 + 2))
    {
      v36 = type metadata accessor for TextModel.ClusterData;
      v37 = v17;
      goto LABEL_15;
    }

    v51 = v18;
    v21 = *(v49 + 24);
    (*v48)(v14, v47, v4);
    (*v46)(v14, 0, 1, v4);
    v22 = *(v50 + 48);
    v23 = MEMORY[0x1E69685B0];
    v24 = MEMORY[0x1E69E6720];
    v25 = &v17[v21];
    v26 = v45;
    outlined init with copy of Environment<LayoutDirection>.Content(v25, v9, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, MEMORY[0x1E69685B0], MEMORY[0x1E69E6720]);
    outlined init with copy of Environment<LayoutDirection>.Content(v14, &v9[v22], &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, v23, v24);
    v27 = *v26;
    if ((*v26)(v9, 1, v4) != 1)
    {
      break;
    }

    outlined destroy of GlassMaterialProvider.Subvariant?(v14, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, MEMORY[0x1E69685B0], MEMORY[0x1E69E6720]);
    outlined destroy of (TextModel.ClusterData, TextModel.Cluster)(v17, type metadata accessor for TextModel.ClusterData);
    if (v27(&v9[v22], 1, v4) != 1)
    {
      goto LABEL_14;
    }

    outlined destroy of GlassMaterialProvider.Subvariant?(v9, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, MEMORY[0x1E69685B0], MEMORY[0x1E69E6720]);
LABEL_3:
    v19 += v44;
    v18 = v51 - 1;
    if (v51 == 1)
    {
      return 1;
    }
  }

  v28 = v42;
  outlined init with copy of Environment<LayoutDirection>.Content(v9, v42, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, MEMORY[0x1E69685B0], MEMORY[0x1E69E6720]);
  if (v27(&v9[v22], 1, v4) != 1)
  {
    v29 = &v9[v22];
    v30 = v41;
    (*v38)(v41, v29, v4);
    lazy protocol witness table accessor for type AODProgressProxy and conformance AODProgressProxy(&lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DateFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute.Field, MEMORY[0x1E69685B0], MEMORY[0x1E69685C8]);
    v43 = dispatch thunk of static Equatable.== infix(_:_:)();
    v31 = *v40;
    (*v40)(v30, v4);
    v32 = v28;
    v33 = MEMORY[0x1E69685B0];
    v34 = MEMORY[0x1E69E6720];
    outlined destroy of GlassMaterialProvider.Subvariant?(v14, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, MEMORY[0x1E69685B0], MEMORY[0x1E69E6720]);
    outlined destroy of (TextModel.ClusterData, TextModel.Cluster)(v17, type metadata accessor for TextModel.ClusterData);
    v31(v32, v4);
    v9 = v39;
    outlined destroy of GlassMaterialProvider.Subvariant?(v39, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, v33, v34);
    if ((v43 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_3;
  }

  outlined destroy of GlassMaterialProvider.Subvariant?(v14, &lazy cache variable for type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, MEMORY[0x1E69685B0], MEMORY[0x1E69E6720]);
  outlined destroy of (TextModel.ClusterData, TextModel.Cluster)(v17, type metadata accessor for TextModel.ClusterData);
  (*v40)(v28, v4);
LABEL_14:
  v36 = type metadata accessor for (AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?, AttributeScopes.FoundationAttributes.DateFieldAttribute.Field?);
  v37 = v9;
LABEL_15:
  outlined destroy of (TextModel.ClusterData, TextModel.Cluster)(v37, v36);
  return 0;
}

Swift::Double __swiftcall TextWipeTransitionTiming.duration(editCount:groupCount:)(Swift::Int editCount, Swift::Int groupCount)
{
  if (editCount < 1)
  {
    return 0.0;
  }

  if (!groupCount)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (__OFSUB__(groupCount, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = *v2;
  if (*v2 <= v2[1] + v2[2])
  {
    v3 = v2[1] + v2[2];
  }

  return v2[4] * (groupCount - 1) + v2[3] * (editCount - 1) + v3;
}

void type metadata accessor for _ContiguousArrayStorage<EditWithAnimationInfo<Int>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void, void))
{
  if (!*a2)
  {
    type metadata accessor for Set<Int>(255, a3, MEMORY[0x1E69E6548], a4);
    v5 = type metadata accessor for _ContiguousArrayStorage();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for Set<Int>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (!*a2)
  {
    v5 = (a4)(0, MEMORY[0x1E69E6530], a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t type metadata completion function for EditWithAnimationInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Edit(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata accessor for _ViewModifier_Content<TextGlassWipeTransitionModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t outlined assign with take of TextRenderLayer.Layout?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void TextEffectsAnimationController.validateInfosIfNeeded()()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[15];
  v3 = 1 << *(v2 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(v2 + 56);

  swift_beginAccess();
  v6 = 0;
  v7 = (v3 + 63) >> 6;
  while (v5)
  {
LABEL_11:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(*(v2 + 48) + ((v6 << 9) | (8 * v9)));
    swift_beginAccess();
    v11 = v1[10];
    if (*(v11 + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v13 & 1) != 0))
    {
      v31 = *(*(v11 + 56) + 8 * v12);
      swift_endAccess();
      v14 = v1[14];
      swift_beginAccess();
      v15 = *(v14 + 40);
      if (*(v15 + 16) && (Hasher.init(_seed:)(), MEMORY[0x19A8BDE80](v10), v16 = Hasher._finalize()(), v17 = -1 << *(v15 + 32), v18 = v16 & ~v17, ((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0))
      {
        v19 = ~v17;
        while (*(*(v15 + 48) + 8 * v18) != v10)
        {
          v18 = (v18 + 1) & v19;
          if (((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
LABEL_18:
        swift_beginAccess();
        v20 = *(v14 + 16);
        if (!*(v20 + 16))
        {
          goto LABEL_5;
        }

        v21 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
        if ((v22 & 1) == 0)
        {
          goto LABEL_5;
        }

        v23 = *(*(v20 + 56) + 8 * v21);
        swift_endAccess();
        v24 = v1[14];
        v29 = *((*MEMORY[0x1E69E7D40] & *v23) + 0xB0);

        v25 = v23;

        v30 = v25;
        LOBYTE(v25) = v29(v31, MEMORY[0x1E69E7CC8], 0, v24, v1);

        if (v25)
        {
        }

        else
        {
          swift_beginAccess();
          specialized __RawDictionaryStorage.find<A>(_:)(v10);
          if (v26)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v28 = v1[10];
            v1[10] = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              specialized _NativeDictionary.copy()();
            }

            specialized _NativeDictionary._delete(at:)();
            v1[10] = v28;
          }

          swift_endAccess();
        }
      }
    }

    else
    {
LABEL_5:
      swift_endAccess();
    }
  }

  while (1)
  {
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      v1[15] = MEMORY[0x1E69E7CD0];

      return;
    }

    v5 = *(v2 + 56 + 8 * v8);
    ++v6;
    if (v5)
    {
      v6 = v8;
      goto LABEL_11;
    }
  }

  __break(1u);
}