void TextEffectsRenderer._convertToRenderSpace(_:textRange:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v224 = a1;
  v7 = MEMORY[0x1E69E6720];
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v184 - v9;
  v11 = type metadata accessor for Text.Effect.Composition.Run(0);
  v207 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v214 = &v184 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = type metadata accessor for Text.Effect.InteractionMetrics(0);
  v13 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210);
  v213 = (&v184 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v208 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
  MEMORY[0x1EEE9AC00](v208);
  v212 = &v184 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns(0);
  MEMORY[0x1EEE9AC00](v219);
  v218 = &v184 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _SetStorage<Text.Effect.Identifier>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  v217 = v17;
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v216 = &v184 - v19;
  v222 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  v227 = *(v222 - 8);
  MEMORY[0x1EEE9AC00](v222);
  v209 = &v184 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v225 = &v184 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v238 = &v184 - v24;
  type metadata accessor for (offset: Int, element: Text.Effect.RenderSegmentation.Segment)(0);
  v232 = v25;
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v226 = (&v184 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for (offset: Int, element: Text.Effect.RenderSegmentation.Segment)?, type metadata accessor for (offset: Int, element: Text.Effect.RenderSegmentation.Segment), v7);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v236 = &v184 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v231 = (&v184 - v31);
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout, v7);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v234 = &v184 - v33;
  v235 = type metadata accessor for TextRenderLayer.Layout(0);
  v34 = *(v235 - 8);
  MEMORY[0x1EEE9AC00](v235);
  v220 = &v184 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for UUID();
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v246 = &v184 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v237 = &v184 - v40;
  type metadata accessor for (UUID, NSTextLayoutFragment)(0);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v245 = &v184 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *&v4[OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentIDs];
  v44 = *&v4[OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentFragments];
  v45 = *(v43 + 16);
  v244 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_surfaceMap;
  v46 = v44 & 0xFFFFFFFFFFFFFF8;
  v250 = v44 & 0xFFFFFFFFFFFFFF8;
  if (v44 < 0)
  {
    v46 = v44;
  }

  v211 = v46;
  v248 = v43;

  if (!v45)
  {
    goto LABEL_84;
  }

  v47 = v45;
  v193 = v10;
  v48 = 0;
  v240 = v44 + 32;
  v243 = v37 + 16;
  v241 = v44 & 0xC000000000000001;
  v49 = (v37 + 32);
  v242 = (v37 + 8);
  v233 = (v34 + 48);
  v230 = (v26 + 56);
  v229 = (v26 + 48);
  v198 = (v18 + 8);
  v205 = 0x8000000195CE0530;
  v204 = 0x8000000195CE0560;
  v203 = "Invalid keyframe layout: size=(";
  v50 = *MEMORY[0x1E695F050];
  v202 = *(MEMORY[0x1E695F050] + 16);
  v201 = v50;
  v192 = (v13 + 56);
  v197 = v47 - 1;
  v200 = xmmword_195CC8CF0;
  v199 = xmmword_195CC8D00;
  v51 = a2;
  v215 = a3;
  v52 = v237;
  v53 = v248;
  v247 = v44;
  v191 = v13;
  v239 = v47;
LABEL_5:
  v54 = v48;
  while (v54 < *(v53 + 16))
  {
    (*(v37 + 16))(v52, v53 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v54, v36);
    if (v44 >> 62)
    {
      if (v54 == MEMORY[0x19A8BDCD0](v211))
      {
LABEL_85:

        (*v242)(v52, v36);
        return;
      }
    }

    else if (v54 == *(v250 + 16))
    {
      goto LABEL_85;
    }

    if (v241)
    {
      v55 = MEMORY[0x19A8BDB80](v54, v44);
    }

    else
    {
      if (v54 >= *(v250 + 16))
      {
        goto LABEL_87;
      }

      v55 = *(v240 + 8 * v54);
    }

    v249 = v55;
    v56 = *v49;
    v57 = v245;
    (*v49)(v245, v52, v36);
    v58 = v246;
    v56(v246, v57, v36);
    v59 = v244;
    swift_beginAccess();
    v60 = *&v4[v59];
    if (*(v60 + 16))
    {
      v61 = specialized __RawDictionaryStorage.find<A>(_:)(v58);
      if (v62)
      {
        v63 = *(*(v60 + 56) + 8 * v61);
        swift_endAccess();
        v64 = *v242;
        v65 = v63;
        v66 = v58;
        v67 = v65;
        v64(v66, v36);
        v68 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer;
        v69 = *&v67[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer];
        v70 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layout;
        swift_beginAccess();
        v71 = v69 + v70;
        v72 = v234;
        outlined init with copy of TextRenderLayer.Layout?(v71, v234, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
        if ((*v233)(v72, 1, v235) == 1)
        {

          outlined destroy of TextRenderLayer.Layout?(v72, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
          v52 = v237;
          goto LABEL_7;
        }

        v196 = v67;
        v186 = v4;
        v73 = v72;
        v74 = v220;
        outlined init with take of TextRenderLayer.Layout(v73, v220, type metadata accessor for TextRenderLayer.Layout);
        v75 = *(v69 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_baseFragmentIdentifierMap + 8);
        v187 = *(v69 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_baseFragmentIdentifierMap);
        v184 = v75;
        v76 = *(v69 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_animationController);
        swift_beginAccess();
        v77 = *(v74 + *(v235 + 24));
        v78 = *(v69 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_displacements);
        v189 = *(v76 + 112);
        v228 = *(v77 + 16);
        v206 = v78 + 32;

        v188 = v76;

        v223 = v78;

        v221 = v77;

        v79 = 0;
        v185 = v54 + 1;
        v44 = v247;
        while (2)
        {
          if (v79 == v228)
          {
            v87 = 1;
            v79 = v228;
            v88 = v232;
            v89 = v231;
          }

          else
          {
            v88 = v232;
            if ((v79 & 0x8000000000000000) != 0)
            {
              goto LABEL_88;
            }

            if (v79 >= *(v221 + 16))
            {
              goto LABEL_89;
            }

            v90 = v221 + ((*(v227 + 80) + 32) & ~*(v227 + 80)) + *(v227 + 72) * v79;
            v91 = *(v232 + 48);
            v92 = v226;
            *v226 = v79;
            outlined init with copy of Text.Effect.Composition(v90, v92 + v91, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
            v93 = v92;
            v44 = v247;
            v89 = v231;
            outlined init with take of TextRenderLayer.Layout(v93, v236, type metadata accessor for (offset: Int, element: Text.Effect.RenderSegmentation.Segment));
            v87 = 0;
            ++v79;
          }

          v94 = v236;
          (*v230)(v236, v87, 1, v88);
          outlined init with take of Text.Effect.RangeCoordinateSpace?(v94, v89, &lazy cache variable for type metadata for (offset: Int, element: Text.Effect.RenderSegmentation.Segment)?, type metadata accessor for (offset: Int, element: Text.Effect.RenderSegmentation.Segment));
          if ((*v229)(v89, 1, v88) == 1)
          {

            v4 = v186;
LABEL_50:
            v52 = v237;
            v53 = v248;
            goto LABEL_51;
          }

          v95 = v89 + *(v88 + 48);
          v96 = *v89;
          outlined init with take of TextRenderLayer.Layout(v95, v238, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
          if ((v96 & 0x8000000000000000) == 0 && v96 < *(v223 + 2))
          {
            v97 = (v206 + 16 * v96);
            v99 = *v97;
            v98 = v97[1];
            if (v224 && (NSTextRange.textRange.getter(), (v102 & 1) == 0))
            {
              v190 = v101;
              *&v195 = v100;
              v110 = [v249 rangeInElement];
              NSTextRange.textRange.getter();
              *&v194 = v111;
              v113 = v112;

              if ((v113 & 1) == 0)
              {
                if (__OFSUB__(v195, v194))
                {
                  goto LABEL_90;
                }

                if (__OFSUB__(v190, v195))
                {
                  goto LABEL_91;
                }

                if (__OFADD__(v190 - v195, v195 - v194))
                {
                  goto LABEL_92;
                }

                v114 = Text.Layout.CharacterIndex.init(_:)();
                v115 = Text.Layout.CharacterIndex.init(_:)();
                *&v195 = v114;
                *&v194 = v115;
                if (v115 < v114)
                {
                  goto LABEL_93;
                }

                v116 = v216;
                Text.Effect.RenderSegmentation.Segment.characterRanges.getter(v216);
                v117 = specialized RangeSet.contains(_:)(v195, v194);
                (*v198)(v116, v217);
                if (v117)
                {
                  v206 = v96;
                  v151 = 0;
LABEL_54:

                  v134 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface_yDisplacement;
                  v135 = v196;
                  swift_beginAccess();
                  v51 = v51 + v99 + 0.0;
                  a3 = a3 + v98 + *&v135[v134];
                  v4 = v186;
                  if ((v151 & 1) != 0 || (v136 = v216, Text.Effect.RenderSegmentation.Segment.characterRanges.getter(v216), v137 = specialized RangeSet.contains(_:)(v195, v194), (*v198)(v136, v217), !v137))
                  {
                    outlined destroy of Text.Effect.Composition(v238, type metadata accessor for Text.Effect.RenderSegmentation.Segment);

                    goto LABEL_50;
                  }

                  v138 = *&v196[v68];
                  v139 = *&v138[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_time];
                  v140 = v238;
                  v141 = v209;
                  outlined init with copy of Text.Effect.Composition(v238, v209, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
                  if (swift_getEnumCaseMultiPayload() == 2)
                  {
                    v142 = v206;
                    outlined init with take of TextRenderLayer.Layout(v141, v212, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
                    v143 = v138;
                    v144 = *(v208 + 24);
                    v145 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_interactionMetrics;
                    swift_beginAccess();
                    v223 = v143;
                    v146 = *&v143[v145];
                    if (*(v146 + 16) && (v147 = specialized __RawDictionaryStorage.find<A>(_:)(v142), (v148 & 1) != 0))
                    {
                      v149 = v213;
                      outlined init with copy of Text.Effect.Composition(*(v146 + 56) + *(v191 + 72) * v147, v213, type metadata accessor for Text.Effect.InteractionMetrics);
                      swift_endAccess();
                      v150 = v223;
                    }

                    else
                    {
                      v221 = v145;
                      v156 = v212 + v144;
                      v157 = swift_endAccess();
                      v158 = v213;
                      *v213 = MEMORY[0x1E69E7CC0];
                      v159 = v210;
                      lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex(v157, v160, v161);
                      v162 = v223;
                      RangeSet.init()();
                      *(v158 + *(v159 + 24)) = MEMORY[0x1E69E7CD0];
                      v163 = (v158 + *(v159 + 28));
                      v164 = type metadata accessor for Text.Effect.Composition(0);
                      *v163 = 0;
                      v163[1] = 0;
                      v165 = *(v164 + 24);
                      v228 = v156;
                      v166 = *(v156 + v165);
                      v167 = *(v166 + 16);
                      v168 = v214;
                      v169 = v187;
                      if (v167)
                      {
                        v170 = v166 + ((*(v207 + 80) + 32) & ~*(v207 + 80));
                        v171 = *(v207 + 72);
                        do
                        {
                          outlined init with copy of Text.Effect.Composition(v170, v168, type metadata accessor for Text.Effect.Composition.Run);
                          Text.Effect.Composition.Operation.appendInteractionMetrics(to:at:line:context:)(v213, v228, v169, v184, v189, v188, v139);
                          v168 = v214;
                          outlined destroy of Text.Effect.Composition(v214, type metadata accessor for Text.Effect.Composition.Operation);
                          v170 += v171;
                          --v167;
                        }

                        while (v167);
                      }

                      v172 = v193;
                      outlined init with copy of Text.Effect.Composition(v213, v193, type metadata accessor for Text.Effect.InteractionMetrics);
                      (*v192)(v172, 0, 1, v210);
                      swift_beginAccess();
                      specialized Dictionary.subscript.setter(v172, v206);
                      swift_endAccess();
                      v4 = v186;
                      v149 = v213;
                    }

                    v173 = *v149;
                    v174 = *(*v149 + 2);
                    v52 = v237;
                    v53 = v248;
                    if (v174)
                    {
                      v175 = (v173 + 88);
                      v176 = *(*v149 + 2);
                      while (v195 < *(v175 - 7) || *(v175 - 6) < v195)
                      {
                        v175 += 12;
                        if (!--v176)
                        {
                          goto LABEL_74;
                        }
                      }

                      v181 = *(v175 - 5);
                      v155 = *(v175 - 4);
                      v182 = *v175;
                      v183 = v175[4];

                      outlined destroy of Text.Effect.Composition(v238, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
                      v154 = v181 - v182 + v183;
                    }

                    else
                    {
LABEL_74:
                      v178 = (v149 + *(v210 + 28));
                      v154 = *v178;
                      v155 = v178[1];
                      if (*v178 != 0.0 || (v155 == 0.0 ? (v179 = v174 == 0) : (v179 = 1), v179))
                      {
                      }

                      else
                      {
                        v180 = &v173[96 * v174];
                        v154 = *(v180 - 6);
                        v155 = *(v180 - 5);
                      }

                      outlined destroy of Text.Effect.Composition(v238, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
                    }

                    outlined destroy of Text.Effect.Composition(v213, type metadata accessor for Text.Effect.InteractionMetrics);
                    outlined destroy of Text.Effect.Composition(v212, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
                    v153 = v223;
                  }

                  else
                  {
                    v152 = v138;

                    outlined destroy of Text.Effect.Composition(v140, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
                    v153 = v152;
                    outlined destroy of Text.Effect.Composition(v141, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
                    v154 = 0.0;
                    v155 = 0.0;
                    v52 = v237;
                    v53 = v248;
                  }

                  v51 = v51 + v154;
                  a3 = a3 + v155;
LABEL_51:
                  outlined destroy of Text.Effect.Composition(v220, type metadata accessor for TextRenderLayer.Layout);
                  v48 = v185;
                  if (v197 == v54)
                  {
LABEL_84:

                    return;
                  }

                  goto LABEL_5;
                }
              }
            }

            else
            {
              v103 = (*&v196[v68] + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutBounds);
              v105 = *v103;
              v104 = v103[1];
              outlined init with copy of Text.Effect.Composition(v238, v225, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
              EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
              if (!EnumCaseMultiPayload)
              {
                v195 = *(v225 + 40);
                v194 = *(v225 + 24);

                goto LABEL_23;
              }

              if (EnumCaseMultiPayload == 1)
              {
                v107 = v218;
                outlined init with take of TextRenderLayer.Layout(v225, v218, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
                v108 = (v107 + *(v219 + 32));
                v109 = *v108;
                v195 = v108[1];
                v194 = v109;
                outlined destroy of Text.Effect.Composition(v107, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
LABEL_23:
                v80 = v194;
                v81 = &v221;
              }

              else
              {
                LODWORD(v195) = static os_log_type_t.fault.getter();
                if (one-time initialization token for internalErrorsLog != -1)
                {
                  swift_once();
                }

                *&v194 = static Log.internalErrorsLog;
                type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
                v118 = swift_allocObject();
                *(v118 + 16) = v200;
                *(v118 + 56) = MEMORY[0x1E69E6158];
                v121 = lazy protocol witness table accessor for type String and conformance String(v118, v119, v120);
                *(v118 + 64) = v121;
                v190 = v121;
                v122 = v205;
                *(v118 + 32) = 0xD00000000000002ELL;
                *(v118 + 40) = v122;
                *&v194 = v194;
                v123 = StaticString.description.getter();
                *(v118 + 96) = MEMORY[0x1E69E6158];
                *(v118 + 104) = v121;
                *(v118 + 72) = v123;
                *(v118 + 80) = v124;
                v252 = 103;
                v125 = dispatch thunk of CustomStringConvertible.description.getter();
                v126 = v190;
                *(v118 + 136) = MEMORY[0x1E69E6158];
                *(v118 + 144) = v126;
                *(v118 + 112) = v125;
                *(v118 + 120) = v127;
                v128 = v194;
                os_log(_:dso:log:_:_:)(v195, &dword_195BC6000, v194, "%s %s:%s", v184, v185, v186);

                type metadata accessor for [Text.Effect.Identifier](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
                *&v195 = swift_allocObject();
                *(v195 + 16) = v199;
                v252 = 0;
                v253 = 0xE000000000000000;
                _StringGuts.grow(_:)(38);

                v252 = 0xD000000000000031;
                v253 = v204;
                v129 = StaticString.description.getter();
                MEMORY[0x19A8BD680](v129);

                MEMORY[0x19A8BD680](58, 0xE100000000000000);
                v251 = 103;
                v130 = dispatch thunk of CustomStringConvertible.description.getter();
                MEMORY[0x19A8BD680](v130);

                MEMORY[0x19A8BD680](0xD00000000000001CLL, v203 | 0x8000000000000000);
                v131 = v252;
                v132 = v253;
                v133 = v195;
                *(v195 + 56) = MEMORY[0x1E69E6158];
                *(v133 + 32) = v131;
                *(v133 + 40) = v132;
                print(_:separator:terminator:)();

                outlined destroy of Text.Effect.Composition(v225, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
                v80 = v201;
                v81 = &v233;
              }

              v82 = *(v81 - 16);
              v83 = v98 + v215;
              v84 = *(&v80 + 1);
              v85 = *(v81 - 31);
              v86 = v80;
              v255 = CGRectOffset(*(&v82 - 1), v99 + v105, v98 + v104);
              v254.x = v99 + v105 + a2;
              v254.y = v83;
              if (CGRectContainsPoint(v255, v254))
              {
                v206 = v96;
                *&v195 = 0;
                *&v194 = 0;
                v151 = 1;
                goto LABEL_54;
              }
            }
          }

          outlined destroy of Text.Effect.Composition(v238, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
          continue;
        }
      }
    }

    swift_endAccess();

    (*v242)(v58, v36);
LABEL_7:
    v44 = v247;
    ++v54;
    v53 = v248;
    if (v239 == v54)
    {
      goto LABEL_84;
    }
  }

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
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
}

void TextEffectsRenderer.convertToRenderSpace(_:location:affinity:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v252 = a2;
  v272 = a1;
  v8 = MEMORY[0x1E69E6720];
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v237 = &v209 - v10;
  v11 = type metadata accessor for Text.Effect.Composition.Run(0);
  v236 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v250 = &v209 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = type metadata accessor for Text.Effect.InteractionMetrics(0);
  v13 = *(v239 - 8);
  MEMORY[0x1EEE9AC00](v239);
  v249 = (&v209 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v248 = type metadata accessor for LayoutDirection();
  v293 = *(v248 - 8);
  MEMORY[0x1EEE9AC00](v248);
  v242 = &v209 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v243 = &v209 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v245 = &v209 - v19;
  v253 = type metadata accessor for Text.Layout.Line();
  v286 = *(v253 - 8);
  MEMORY[0x1EEE9AC00](v253);
  v244 = &v209 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v257 = &v209 - v22;
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for Text.Layout.Run?, MEMORY[0x1E6981028], v8);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v251 = &v209 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v259 = &v209 - v26;
  v260 = type metadata accessor for Text.Layout.Run();
  v27 = *(v260 - 8);
  MEMORY[0x1EEE9AC00](v260);
  v256 = &v209 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v247 = &v209 - v30;
  type metadata accessor for _SetStorage<Text.Effect.Identifier>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BE0]);
  v255 = v31;
  v270 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v254 = &v209 - v32;
  v238 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
  MEMORY[0x1EEE9AC00](v238);
  v241 = &v209 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v263 = (&v209 - v35);
  v262 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns(0);
  MEMORY[0x1EEE9AC00](v262);
  v261 = (&v209 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v271 = type metadata accessor for Text.Effect.RenderSegmentation.Segment(0);
  v268 = *(v271 - 8);
  MEMORY[0x1EEE9AC00](v271);
  v240 = &v209 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v276 = &v209 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v278 = &v209 - v41;
  type metadata accessor for (offset: Int, element: Text.Effect.RenderSegmentation.Segment)(0);
  v258 = v42;
  v43 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v267 = (&v209 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for (offset: Int, element: Text.Effect.RenderSegmentation.Segment)?, type metadata accessor for (offset: Int, element: Text.Effect.RenderSegmentation.Segment), v8);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v277 = &v209 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v275 = (&v209 - v48);
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout, v8);
  MEMORY[0x1EEE9AC00](v49 - 8);
  v51 = &v209 - v50;
  v283 = type metadata accessor for TextRenderLayer.Layout(0);
  v52 = *(v283 - 8);
  MEMORY[0x1EEE9AC00](v283);
  v279 = &v209 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for UUID();
  v55 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v291 = &v209 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v295 = &v209 - v58;
  type metadata accessor for (UUID, NSTextLayoutFragment)(0);
  MEMORY[0x1EEE9AC00](v59 - 8);
  v290 = &v209 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = *(v5 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentIDs);
  v62 = *(v5 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_currentFragments);
  v63 = *(v61 + 16);
  v289 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_surfaceMap;
  v64 = v62 & 0xFFFFFFFFFFFFFF8;
  v294 = v62 & 0xFFFFFFFFFFFFFF8;
  if (v62 < 0)
  {
    v64 = v62;
  }

  v246 = v64;
  v292 = v61;

  if (!v63)
  {
LABEL_106:

    return;
  }

  v65 = v63;
  v66 = v13;
  v67 = 0;
  v285 = v62 + 32;
  v68 = v55 + 16;
  v287 = v62 & 0xC000000000000001;
  v288 = (v55 + 8);
  v280 = (v52 + 48);
  v69 = (v55 + 32);
  v265 = (v43 + 56);
  v264 = (v43 + 48);
  v235 = (v270 + 8);
  v234 = (v27 + 48);
  v232 = (v286 + 8);
  v228 = (v27 + 32);
  v230 = (v27 + 56);
  v231 = (v27 + 8);
  v224 = *MEMORY[0x1E697E7D8];
  v225 = v293 + 104;
  v226 = (v293 + 8);
  v223 = *MEMORY[0x1E697E7D0];
  v222 = (v66 + 56);
  v227 = v65 - 1;
  v221 = v66;
  v70 = v292;
  v71 = v62;
  v286 = v62;
  v274 = v5;
  v273 = v51;
  v284 = v65;
  v282 = v55;
  v281 = (v55 + 32);
  while (2)
  {
    v72 = v67;
    while (1)
    {
      if (v72 >= *(v70 + 16))
      {
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
        goto LABEL_116;
      }

      (*(v55 + 16))(v295, v70 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v72, v54);
      if (v71 >> 62)
      {
        if (v72 == MEMORY[0x19A8BDCD0](v246))
        {
LABEL_107:

          (*v288)(v295, v54);
          return;
        }
      }

      else if (v72 == *(v294 + 16))
      {
        goto LABEL_107;
      }

      if (v287)
      {
        v73 = MEMORY[0x19A8BDB80](v72, v71);
      }

      else
      {
        if (v72 >= *(v294 + 16))
        {
          goto LABEL_109;
        }

        v73 = *(v285 + 8 * v72);
      }

      v293 = v73;
      v74 = *v69;
      v75 = v290;
      (*v69)(v290, v295, v54);
      v76 = v291;
      v74(v291, v75, v54);
      v77 = v289;
      swift_beginAccess();
      v78 = *(v5 + v77);
      if (*(v78 + 16))
      {
        v79 = specialized __RawDictionaryStorage.find<A>(_:)(v76);
        if (v80)
        {
          break;
        }
      }

      swift_endAccess();

      (*v288)(v76, v54);
LABEL_7:
      ++v72;
      v70 = v292;
      v71 = v286;
      if (v284 == v72)
      {
        goto LABEL_106;
      }
    }

    v81 = v68;
    v82 = *(*(v78 + 56) + 8 * v79);
    swift_endAccess();
    v83 = *v288;
    v84 = v82;
    v85 = v54;
    v83(v76, v54);
    v86 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer;
    v87 = *&v84[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer];
    v88 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layout;
    swift_beginAccess();
    outlined init with copy of TextRenderLayer.Layout?(v87 + v88, v51, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
    if ((*v280)(v51, 1, v283) == 1)
    {

      outlined destroy of TextRenderLayer.Layout?(v51, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
LABEL_23:
      v68 = v81;
      v55 = v282;
      v54 = v85;
      v69 = v281;
      goto LABEL_7;
    }

    v270 = v86;
    v89 = v279;
    outlined init with take of TextRenderLayer.Layout(v51, v279, type metadata accessor for TextRenderLayer.Layout);
    v90 = v293;
    v91 = [v293 rangeInElement];
    NSTextRange.textRange.getter();
    v93 = v92;
    v95 = v94;

    if (v95)
    {

      v96 = v89;
LABEL_22:
      outlined destroy of Text.Effect.Composition(v96, type metadata accessor for TextRenderLayer.Layout);
      v5 = v274;
      v51 = v273;
      goto LABEL_23;
    }

    swift_getObjectType();
    v97 = NSTextLocation.characterIndex(relativeTo:)(v93);
    if (v98)
    {

      v96 = v279;
      goto LABEL_22;
    }

    v218 = v97;
    v210 = v84;
    v99 = *&v84[v270];
    v100 = *(v99 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_baseFragmentIdentifierMap);
    v209 = *(v99 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_baseFragmentIdentifierMap + 8);
    v101 = *(v99 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_animationController);
    swift_beginAccess();
    v102 = *(v279 + *(v283 + 24));
    v103 = *(v101 + 112);
    v104 = *(v99 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_displacements);
    v212 = v101;
    v213 = v100;
    v233 = v102[2];
    v217 = v104 + 4;

    v211 = v103;

    v219 = v104;

    v220 = v102;

    v105 = 0;
    v67 = v72 + 1;
    v106 = v278;
    v107 = v258;
    v108 = v275;
    v68 = v81;
    v55 = v282;
    v54 = v85;
    v69 = v281;
    for (i = v72 + 1; ; v67 = i)
    {
      while (1)
      {
        v109 = v277;
        if (v105 == v233)
        {
          v110 = 1;
          v269 = v233;
        }

        else
        {
          if ((v105 & 0x8000000000000000) != 0)
          {
            goto LABEL_110;
          }

          if (v105 >= v220[2])
          {
            goto LABEL_111;
          }

          v111 = (v105 + 1);
          v112 = v220 + ((*(v268 + 80) + 32) & ~*(v268 + 80)) + *(v268 + 72) * v105;
          v113 = *(v107 + 48);
          v114 = v267;
          *v267 = v105;
          outlined init with copy of Text.Effect.Composition(v112, v114 + v113, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
          v115 = v114;
          v108 = v275;
          outlined init with take of TextRenderLayer.Layout(v115, v277, type metadata accessor for (offset: Int, element: Text.Effect.RenderSegmentation.Segment));
          v109 = v277;
          v110 = 0;
          v269 = v111;
        }

        v116 = v109;
        (*v265)(v109, v110, 1, v107);
        outlined init with take of Text.Effect.RangeCoordinateSpace?(v116, v108, &lazy cache variable for type metadata for (offset: Int, element: Text.Effect.RenderSegmentation.Segment)?, type metadata accessor for (offset: Int, element: Text.Effect.RenderSegmentation.Segment));
        if ((*v264)(v108, 1, v107) == 1)
        {

          v5 = v274;
          v51 = v273;
          goto LABEL_73;
        }

        v266 = *v108;
        outlined init with take of TextRenderLayer.Layout(v108 + *(v107 + 48), v106, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        v117 = [v293 textLineFragments];
        v229 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSTextLineFragment, 0x1E69DB830);
        v118 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v118 >> 62)
        {
          if (v118 < 0)
          {
            v147 = v118;
          }

          else
          {
            v147 = v118 & 0xFFFFFFFFFFFFFF8;
          }

          v119 = MEMORY[0x19A8BDCD0](v147);
        }

        else
        {
          v119 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        outlined init with copy of Text.Effect.Composition(v278, v276, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v121 = v261;
            outlined init with take of TextRenderLayer.Layout(v276, v261, type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns);
            v122 = *(v121 + *(v262 + 28));
            v123 = type metadata accessor for Text.Effect.RenderSegmentation.StaticRuns;
          }

          else
          {
            v121 = v263;
            outlined init with take of TextRenderLayer.Layout(v276, v263, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
            v122 = *v121;
            v123 = type metadata accessor for Text.Effect.RenderSegmentation.Effect;
          }

          outlined destroy of Text.Effect.Composition(v121, v123);
        }

        else
        {
          v122 = *(v276 + 16);
        }

        if (v122 >= v119)
        {
          v106 = v278;
          outlined destroy of Text.Effect.Composition(v278, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
          v108 = v275;
          goto LABEL_29;
        }

        v106 = v278;
        v108 = v275;
        if ((v266 & 0x8000000000000000) != 0 || v266 >= *(v219 + 2))
        {
          outlined destroy of Text.Effect.Composition(v278, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
          goto LABEL_29;
        }

        v124 = &v217[2 * v266];
        v125 = *v124;
        v126 = v124[1];
        v127 = v254;
        v128 = v278;
        Text.Effect.RenderSegmentation.Segment.characterRanges.getter(v254);
        v129 = v218;
        v130 = specialized RangeSet.contains(_:)(v218, v218);
        (*v235)(v127, v255);
        if (v130)
        {
          break;
        }

        outlined destroy of Text.Effect.Composition(v128, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        v106 = v128;
        v107 = v258;
        v108 = v275;
        v67 = i;
LABEL_29:
        v105 = v269;
      }

      v131 = Text.Effect.RenderSegmentation.Segment.lineIndex.getter();
      v132 = v257;
      v214 = v131;
      Text.Layout.subscript.getter();
      v133 = v251;
      Text.Layout.Line.run(for:affinity:)(v129, v252, v251);
      v134 = v133;
      v135 = v133;
      v136 = v260;
      v215 = *v234;
      v137 = v215(v135, 1, v260);
      v108 = v275;
      if (v137 == 1)
      {
        v138 = v132;
        outlined destroy of TextRenderLayer.Layout?(v134, &lazy cache variable for type metadata for Text.Layout.Run?, MEMORY[0x1E6981028]);
        v139 = Text.Layout.endIndex.getter();
        if (__OFSUB__(v139, 1))
        {
          goto LABEL_113;
        }

        v107 = v258;
        if (v214 == (v139 - 1) && v218 >= Text.Layout.Line.characterRange.getter() && v140 >= v218)
        {
          _s7SwiftUI4TextV6LayoutV4LineVAGSlAAWlTm_0(&lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line, MEMORY[0x1E6981048], MEMORY[0x1E6981058]);
          dispatch thunk of Collection.startIndex.getter();
          dispatch thunk of Collection.endIndex.getter();
          v141 = v297;
          v142 = v296;
          if (v296 < v297)
          {
            goto LABEL_114;
          }

          v106 = v278;
          v214 = v296;
          if (v297 != v296)
          {
            while (v141 < v142)
            {
              v144 = v141;
              Text.Layout.Line.subscript.getter();
              if (v218 >= Text.Layout.Run.characterRange.getter() && v145 >= v218)
              {
                v214 = *v232;
                v214(v257, v253);
                v136 = v260;
                (*v228)(v259, v256, v260);
                v143 = 0;
                goto LABEL_65;
              }

              (*v231)(v256, v260);
              v141 = v144 + 1;
              v142 = v214;
              v106 = v278;
              if (v214 == (v144 + 1))
              {
                goto LABEL_55;
              }
            }

            goto LABEL_112;
          }

LABEL_55:
          v214 = *v232;
          v214(v257, v253);
          v143 = 1;
          v136 = v260;
        }

        else
        {
          v214 = *v232;
          v214(v138, v253);
          v143 = 1;
          v136 = v260;
LABEL_65:
          v106 = v278;
        }
      }

      else
      {
        v214 = *v232;
        v214(v132, v253);
        (*v228)(v259, v134, v136);
        v143 = 0;
        v106 = v278;
        v107 = v258;
      }

      v146 = v259;
      (*v230)(v259, v143, 1, v136);
      if (v215(v146, 1, v136) != 1)
      {
        break;
      }

      outlined destroy of Text.Effect.Composition(v106, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
      outlined destroy of TextRenderLayer.Layout?(v259, &lazy cache variable for type metadata for Text.Layout.Run?, MEMORY[0x1E6981028]);
      v105 = v269;
    }

    (*v228)(v247, v259, v260);
    v148 = [v293 textLineFragments];
    v149 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v150 = Text.Effect.RenderSegmentation.Segment.lineIndex.getter();
    if ((v149 & 0xC000000000000001) != 0)
    {
      v151 = MEMORY[0x19A8BDB80](v150, v149);
      v67 = i;
LABEL_79:

      v152 = [v151 characterRange];
      v154 = v153;
      v155 = Text.Layout.CharacterIndex.init(_:)();
      if (__OFADD__(v152, v154))
      {
        goto LABEL_117;
      }

      v220 = v151;
      v156 = Text.Layout.CharacterIndex.init(_:)();
      v219 = v155;
      v269 = v156;
      v5 = v274;
      if (v156 < v155)
      {
        goto LABEL_118;
      }

      Text.Layout.Run.layoutDirection.getter();
      v157 = v243;
      v158 = v248;
      v229 = *v225;
      v229(v243, v224, v248);
      v159 = static LayoutDirection.== infix(_:_:)();
      v233 = *v226;
      (v233)(v157, v158);
      if ((v159 & 1) == 0)
      {
        goto LABEL_85;
      }

      Text.Layout.Run.characterRange.getter();
      if (__OFSUB__(v269, 1))
      {
        goto LABEL_119;
      }

      if (v160 == v269 - 1)
      {
        LODWORD(v219) = 1;
      }

      else
      {
LABEL_85:
        if (v219 == v218)
        {
          v161 = v243;
          v162 = v248;
          v229(v243, v223, v248);
          LODWORD(v269) = static LayoutDirection.== infix(_:_:)();
          (v233)(v161, v162);
          v163 = (v269 & 1) == 0;
        }

        else if (v269 == v218)
        {
          v164 = v243;
          v165 = v248;
          v229(v243, v223, v248);
          LODWORD(v269) = static LayoutDirection.== infix(_:_:)();
          (v233)(v164, v165);
          v163 = v269 & 1;
        }

        else
        {
          v163 = 2;
        }

        LODWORD(v219) = v163;
      }

      Text.Effect.RenderSegmentation.Segment.lineIndex.getter();
      Text.Layout.subscript.getter();
      v166 = *&v210[v270];
      v167 = *&v166[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_time];
      v269 = v166;
      v168 = Text.Layout.Line.line.getter();
      if (!v168 || (v169 = v168, IsRightToLeft = CTLineIsRightToLeft(), v169, v5 = v274, v171 = v224, (IsRightToLeft & 1) == 0))
      {
        v171 = v223;
      }

      v172 = v242;
      v229(v242, v171, v248);
      v173 = v240;
      outlined init with copy of Text.Effect.Composition(v278, v240, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        outlined init with take of TextRenderLayer.Layout(v173, v241, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
        v174 = *(v238 + 24);
        v175 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_interactionMetrics;
        v176 = v269;
        swift_beginAccess();
        v229 = v175;
        v177 = *&v176[v175];
        if (*(v177 + 16) && (v178 = specialized __RawDictionaryStorage.find<A>(_:)(v266), (v179 & 1) != 0))
        {
          v180 = *(v177 + 56) + *(v221 + 72) * v178;
          v181 = v249;
          outlined init with copy of Text.Effect.Composition(v180, v249, type metadata accessor for Text.Effect.InteractionMetrics);
          swift_endAccess();
        }

        else
        {
          v186 = v241 + v174;
          v187 = swift_endAccess();
          v188 = v249;
          *v249 = MEMORY[0x1E69E7CC0];
          v189 = v239;
          lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex(v187, v190, v191);
          RangeSet.init()();
          *(v188 + *(v189 + 24)) = MEMORY[0x1E69E7CD0];
          v192 = (v188 + *(v189 + 28));
          v193 = type metadata accessor for Text.Effect.Composition(0);
          *v192 = 0;
          v192[1] = 0;
          v194 = *(v193 + 24);
          v270 = v186;
          v195 = *(v186 + v194);
          v196 = *(v195 + 16);
          v197 = v250;
          if (v196)
          {
            v198 = v195 + ((*(v236 + 80) + 32) & ~*(v236 + 80));
            v199 = *(v236 + 72);
            do
            {
              outlined init with copy of Text.Effect.Composition(v198, v197, type metadata accessor for Text.Effect.Composition.Run);
              Text.Effect.Composition.Operation.appendInteractionMetrics(to:at:line:context:)(v249, v270, v213, v209, v211, v212, v167);
              v197 = v250;
              outlined destroy of Text.Effect.Composition(v250, type metadata accessor for Text.Effect.Composition.Operation);
              v198 += v199;
              --v196;
            }

            while (v196);
          }

          v200 = v237;
          outlined init with copy of Text.Effect.Composition(v249, v237, type metadata accessor for Text.Effect.InteractionMetrics);
          (*v222)(v200, 0, 1, v239);
          swift_beginAccess();
          specialized Dictionary.subscript.setter(v200, v266);
          swift_endAccess();
          v5 = v274;
          v181 = v249;
        }

        v201 = v242;
        v184 = Text.Effect.InteractionMetrics.displacement(for:type:layoutDirection:)(v218, v219, v242);
        v185 = v202;

        outlined destroy of Text.Effect.Composition(v181, type metadata accessor for Text.Effect.InteractionMetrics);
        v203 = v201;
        v204 = v248;
        v205 = v233;
        (v233)(v203, v248);
        v214(v244, v253);
        (v205)(v245, v204);
        (*v231)(v247, v260);
        outlined destroy of Text.Effect.Composition(v278, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        outlined destroy of Text.Effect.Composition(v241, type metadata accessor for Text.Effect.RenderSegmentation.Effect);
      }

      else
      {

        v182 = v172;
        v183 = v233;
        (v233)(v182, v248);
        v214(v244, v253);
        (v183)(v245, v248);
        (*v231)(v247, v260);
        outlined destroy of Text.Effect.Composition(v278, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        outlined destroy of Text.Effect.Composition(v173, type metadata accessor for Text.Effect.RenderSegmentation.Segment);
        v184 = 0.0;
        v185 = 0.0;
      }

      v51 = v273;

      v206 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface_yDisplacement;
      v207 = v210;
      swift_beginAccess();
      v208 = *&v207[v206];

      a3 = a3 + v125 + 0.0 + v184;
      a4 = a4 + v185 + v126 + v208;
LABEL_73:
      v71 = v286;
      outlined destroy of Text.Effect.Composition(v279, type metadata accessor for TextRenderLayer.Layout);
      v70 = v292;
      if (v227 != v72)
      {
        continue;
      }

      goto LABEL_106;
    }

    break;
  }

  v67 = i;
  if ((v150 & 0x8000000000000000) != 0)
  {
    goto LABEL_115;
  }

  if (v150 < *((v149 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v151 = *(v149 + 8 * v150 + 32);
    goto LABEL_79;
  }

LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
}

double @objc TextEffectsRenderer.convertToTextAnimationsCoordinateSpace(_:textRange:)(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = a1;
  TextEffectsRenderer._convertToRenderSpace(_:textRange:)(a5, a2, a3);
  v12 = v11;

  return v12;
}

void *TextEffectsAnimationController.animator(for:)(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id);
  swift_beginAccess();
  v3 = *(v1 + 96);
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v2), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    v7 = v6;
  }

  else
  {
    v6 = 0;
  }

  swift_endAccess();
  return v6;
}

char *TextEffectsAnimationController.animator(for:with:)(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *&a1[OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id];
  swift_beginAccess();
  v9 = *(v3 + 96);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v8), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    swift_endAccess();
    if (*&v12[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_state])
    {
      *&v12[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_state] = 0;
      v13 = *&v12[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_notify];
      v14 = v12;

      v13(v14);
    }
  }

  else
  {
    swift_endAccess();
  }

  v15 = type metadata accessor for TextAnimator();
  v16 = objc_allocWithZone(v15);
  swift_weakInit();
  v17 = &v16[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator__phase];
  *v17 = 0;
  v17[1] = 0;
  *&v16[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator__configuration] = 0;
  *&v16[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_textAnimation] = a1;
  v16[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_variant] = 0;
  swift_weakAssign();
  v18 = &v16[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_notify];
  *v18 = a2;
  v18[1] = a3;
  *&v16[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_state] = 1;
  v25.receiver = v16;
  v25.super_class = v15;
  v19 = a1;

  v20 = objc_msgSendSuper2(&v25, sel_init);
  swift_beginAccess();
  v21 = v20;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(v4 + 96);
  *(v4 + 96) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v21, v8, isUniquelyReferenced_nonNull_native);
  *(v4 + 96) = v24;
  swift_endAccess();
  return v21;
}

char *TextEffectsAnimationController.staticAnimator(for:)(char *a1)
{
  v2 = v1;
  v4 = *&a1[OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id];
  swift_beginAccess();
  v5 = *(v1 + 96);
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    swift_endAccess();
    if (*&v8[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_state])
    {
      *&v8[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_state] = 0;
      v9 = *&v8[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_notify];
      v10 = v8;

      v9(v10);
    }
  }

  else
  {
    swift_endAccess();
  }

  v11 = type metadata accessor for TextAnimator();
  v12 = objc_allocWithZone(v11);
  swift_weakInit();
  v13 = &v12[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator__phase];
  *v13 = 0;
  v13[1] = 0;
  *&v12[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator__configuration] = 0;
  *&v12[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_textAnimation] = a1;
  v12[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_variant] = 1;
  swift_weakAssign();
  v14 = &v12[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_notify];
  *v14 = protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer;
  v14[1] = 0;
  *&v12[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_state] = 1;
  v21.receiver = v12;
  v21.super_class = v11;
  v15 = a1;
  v16 = objc_msgSendSuper2(&v21, sel_init);
  swift_beginAccess();
  v17 = v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v2 + 96);
  *(v2 + 96) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, v4, isUniquelyReferenced_nonNull_native);
  *(v2 + 96) = v20;
  swift_endAccess();
  return v17;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance TextEffectsAnimationController.Duration(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

void TextEffectsAnimationController.clearDisplayLink()()
{
  *(v0 + 40) = 0;
  v1 = *(v0 + 32);
  if (v1)
  {
    [v1 invalidate];
  }

  *(v0 + 32) = 0;
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);
  if (v2)
  {
    [v2 invalidate];
    v2 = *(v0 + 48);
  }

  *(v0 + 48) = 0;
}

uint64_t TextEffectsAnimationController.deinit()
{
  TextEffectsAnimationController.clearDisplayLink()();
  MEMORY[0x19A8BEBD0](v0 + 16);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t TextEffectsAnimationController.__deallocating_deinit()
{
  TextEffectsAnimationController.deinit();

  return swift_deallocClassInstance();
}

BOOL TextEffectsAnimationController.startExternalDisplayLink()()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 32);
    swift_unknownObjectRetain();
    if (v2)
    {
      [v2 invalidate];
    }

    v3 = *MEMORY[0x1E69792B8];
    v4 = *(MEMORY[0x1E69792B8] + 4);
    v5 = *(MEMORY[0x1E69792B8] + 8);
    v6 = swift_allocObject();
    swift_weakInit();
    v13[4] = partial apply for closure #1 in TextEffectsAnimationController.startExternalDisplayLink();
    v13[5] = v6;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = thunk for @escaping @callee_guaranteed (@guaranteed _NSCustomTextRenderingDisplayLinkInfo) -> ();
    v13[3] = &block_descriptor_134;
    v7 = _Block_copy(v13);

    LODWORD(v8) = v3;
    LODWORD(v9) = v4;
    LODWORD(v10) = v5;
    v11 = [v1 frameRateRequest:v7 block:{v8, v9, v10}];
    swift_unknownObjectRelease();
    _Block_release(v7);
    *(v0 + 32) = v11;
    swift_unknownObjectRelease();
  }

  return v1 != 0;
}

void closure #1 in TextEffectsAnimationController.startExternalDisplayLink()(void *a1, uint64_t a2)
{
  [a1 targetTimestamp];
  v3 = v2;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    TextEffectsAnimationController.displayLinkUpdate(at:removeFinished:)(1, v3);
  }
}

void TextEffectsAnimationController.displayLinkUpdate(at:removeFinished:)(char a1, double a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 72);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 56);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (v9)
  {
LABEL_10:
    while (1)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v14 = *(*(v6 + 48) + ((v11 << 9) | (8 * v13)));
      swift_beginAccess();
      v15 = *(v3 + 80);
      if (*(v15 + 16))
      {
        v16 = specialized __RawDictionaryStorage.find<A>(_:)(v14);
        if (v17)
        {
          break;
        }
      }

      swift_endAccess();
      if (!v9)
      {
        goto LABEL_6;
      }
    }

    v18 = *(*(v15 + 56) + 8 * v16);
    swift_endAccess();
    v19 = *(*v18 + 88);

    v19(v20);
  }

  while (1)
  {
LABEL_6:
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v6 + 56 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_10;
    }
  }

  *(v3 + 56) = a2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    TextEffectsRenderer.notifyDisplayLinkObservers(with:)(*&a2);
  }

  v23 = *(v3 + 64);
  v24 = *(*(v3 + 72) + 16);

  specialized TextEffectsAnimationController.TimingMap.update(at:)(v23, a2);
  v26 = v25;

  v27 = *(*(v3 + 72) + 16);
  if (v24)
  {
    if (!v27)
    {
      TextEffectsAnimationController.clearDisplayLink()();
    }
  }

  else if (v27)
  {
    if ((*(v3 + 40) & 1) == 0)
    {
      *(v3 + 40) = 1;
      *(v3 + 56) = CACurrentMediaTime();
      if (!TextEffectsAnimationController.startExternalDisplayLink()())
      {
        TextEffectsAnimationController.startInternalDisplayLink()();
      }
    }
  }

  v28 = specialized _NativeSet.filter(_:)(v26, v3);

  if ((a1 & 1) != 0 && *(v28 + 16))
  {
    v29 = *(*(v3 + 72) + 16);
    closure #1 in TextEffectsAnimationController.removeAnimations(_:)(v28, v3);
    v30 = *(*(v3 + 72) + 16);
    if (v29)
    {
      if (!v30)
      {
        TextEffectsAnimationController.clearDisplayLink()();
      }
    }

    else if (v30)
    {
      if ((*(v3 + 40) & 1) == 0)
      {
        *(v3 + 40) = 1;
        *(v3 + 56) = CACurrentMediaTime();
        if (!TextEffectsAnimationController.startExternalDisplayLink()())
        {
          TextEffectsAnimationController.startInternalDisplayLink()();
        }
      }
    }
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed _NSCustomTextRenderingDisplayLinkInfo) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void TextEffectsAnimationController.startInternalDisplayLink()()
{
  if (!*(v0 + 48))
  {
    v1 = [objc_opt_self() displayLinkWithTarget:v0 selector:sel_displayLink_];
    v2 = *(v0 + 48);
    *(v0 + 48) = v1;
    v3 = v1;

    if (v3)
    {
      v4 = [objc_opt_self() mainRunLoop];
      [v3 addToRunLoop:v4 forMode:*MEMORY[0x1E695DA28]];
    }

    else
    {
      __break(1u);
    }
  }
}

void closure #1 in TextEffectsAnimationController.invalidateAnimations(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  TextEffectsAnimationController.TimingMap.remove(_:)(a2);
  swift_endAccess();
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
LABEL_11:
    v11 = *(*(a2 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v7)))));
    swift_beginAccess();
    specialized __RawDictionaryStorage.find<A>(_:)(v11);
    if (v12)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *(a1 + 80);
      *(a1 + 80) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
      }

      specialized _NativeDictionary._delete(at:)();
      *(a1 + 80) = v14;
    }

    v7 &= v7 - 1;
    swift_endAccess();
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_11;
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    specialized TextEffectsRenderer.notifyStateObservers(with:time:)(a2);
  }

  v17 = 1 << *(a2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a2 + 56);
  v20 = (v17 + 63) >> 6;

  v21 = 0;
  v22 = &unk_1EAEDF000;
  v23 = &unk_1EAEDF000;
  while (v19)
  {
LABEL_25:
    v25 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v26 = *(*(a2 + 48) + ((v21 << 9) | (8 * v25)));
    swift_beginAccess();
    v27 = *(a1 + 96);
    if (*(v27 + 16) && (v28 = specialized __RawDictionaryStorage.find<A>(_:)(v26), (v29 & 1) != 0))
    {
      v30 = *(*(v27 + 56) + 8 * v28);
      swift_endAccess();
      v31 = v22[148];
      if (*&v30[v31])
      {
        *&v30[v31] = 0;
        v32 = v23;
        v33 = *&v30[v23[145]];
        v34 = v30;

        v33(v34);
        v23 = v32;
        v22 = &unk_1EAEDF000;
      }
    }

    else
    {
      swift_endAccess();
    }
  }

  while (1)
  {
    v24 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v24 >= v20)
    {

      return;
    }

    v19 = *(v4 + 8 * v24);
    ++v21;
    if (v19)
    {
      v21 = v24;
      goto LABEL_25;
    }
  }

LABEL_31:
  __break(1u);
}

void TextEffectsAnimationController.TimingMap.remove(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
LABEL_9:
    v11 = *(*(a1 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v7)))));
    v12 = specialized Dictionary.subscript.modify(v27, v11);
    if (*(v13 + 48) != 1)
    {
      TextEffectsAnimationController.Timing.endAnimationInterval()();
    }

    (v12)(v27, 0);
    v7 &= v7 - 1;
    specialized Set._Variant.remove(_:)(v11);
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v11);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v2;
      v29 = *v2;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v18 = v29;
      }

      v19 = *(v18 + 56) + 120 * v16;
      v21 = *(v19 + 32);
      v20 = *(v19 + 48);
      v22 = *(v19 + 16);
      v27[0] = *v19;
      v27[1] = v22;
      v27[2] = v21;
      v27[3] = v20;
      v23 = *(v19 + 64);
      v24 = *(v19 + 80);
      v25 = *(v19 + 96);
      v28 = *(v19 + 112);
      v27[5] = v24;
      v27[6] = v25;
      v27[4] = v23;
      outlined destroy of TextEffectsAnimationController.Timing(v27);
      specialized _NativeDictionary._delete(at:)(v16, v18, v26);
      *v2 = v18;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void closure #1 in TextEffectsAnimationController.removeAnimations(_:)(uint64_t a1, void *a2)
{
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);

  swift_beginAccess();
  v8 = 0;
  v9 = (v5 + 63) >> 6;
  while (v7)
  {
    v10 = v7;
LABEL_10:
    v7 = (v10 - 1) & v10;
    v12 = a2[8];
    if (*(v12 + 16))
    {
      v13 = *(*(a1 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v10)))));
      v14 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v15)
      {
        v16 = *(v12 + 56) + 120 * v14;
        v17 = *(v16 + 16);
        v19 = *(v16 + 32);
        v18 = *(v16 + 48);
        v79[0] = *v16;
        v79[1] = v17;
        v79[2] = v19;
        *v80 = v18;
        v20 = *(v16 + 64);
        v21 = *(v16 + 80);
        v22 = *(v16 + 96);
        v82 = *(v16 + 112);
        *v81 = v21;
        *&v81[16] = v22;
        *&v80[16] = v20;
        if (BYTE8(v19) == 1)
        {
          if ((v81[0] & 1) == 0)
          {
            goto LABEL_21;
          }

          v23 = *&v80[8];
        }

        else
        {
          if ((v82 & 1) == 0)
          {
LABEL_21:
            outlined init with copy of TextEffectsAnimationController.Timing(v79, v78);
            goto LABEL_22;
          }

          v23 = *&v81[8];
        }

        v77 = v23;
        v24 = *(&v23 + 1);
        if (v23)
        {
          v76 = *(*v23 + 104);
          outlined init with copy of TextEffectsAnimationController.Timing(v79, v78);

          if ((v76(v25) & 1) != 0 && !v24)
          {
            goto LABEL_22;
          }

LABEL_28:
          swift_beginAccess();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v33 = a2[11];
          a2[11] = 0x8000000000000000;
          v34 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
          v36 = v33[2];
          v37 = (v35 & 1) == 0;
          v38 = __OFADD__(v36, v37);
          v39 = v36 + v37;
          if (v38)
          {
            goto LABEL_72;
          }

          v40 = v35;
          if (v33[3] >= v39)
          {
            v42 = v77;
            if (isUniquelyReferenced_nonNull_native)
            {
              v43 = v33;
              if (v35)
              {
                goto LABEL_35;
              }
            }

            else
            {
              v44 = v34;
              specialized _NativeDictionary.copy()();
              v42 = v77;
              v34 = v44;
              v43 = v33;
              if (v40)
              {
                goto LABEL_35;
              }
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v39, isUniquelyReferenced_nonNull_native);
            v34 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
            if ((v40 & 1) != (v41 & 1))
            {
              goto LABEL_74;
            }

            v42 = v77;
            v43 = v33;
            if (v40)
            {
LABEL_35:
              *(v43[7] + 16 * v34) = v42;

              goto LABEL_39;
            }
          }

          v43[(v34 >> 6) + 8] |= 1 << v34;
          *(v43[6] + 8 * v34) = v13;
          *(v43[7] + 16 * v34) = v42;
          v45 = v43[2];
          v38 = __OFADD__(v45, 1);
          v46 = v45 + 1;
          if (v38)
          {
            goto LABEL_73;
          }

          v43[2] = v46;
LABEL_39:
          a2[11] = v43;
          swift_endAccess();

          outlined destroy of TextEffectsAnimationController.Timing(v79);
        }

        else
        {
          outlined init with copy of TextEffectsAnimationController.Timing(v79, v78);

          if (v24)
          {
            goto LABEL_28;
          }

LABEL_22:
          swift_beginAccess();
          v26 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
          if (v27)
          {
            v28 = v26;
            v29 = swift_isUniquelyReferenced_nonNull_native();
            v30 = a2[11];
            a2[11] = 0x8000000000000000;
            if (!v29)
            {
              specialized _NativeDictionary.copy()();
            }

            specialized _NativeDictionary._delete(at:)(v28, v30, v31);
            a2[11] = v30;
          }

          swift_endAccess();
          outlined destroy of TextEffectsAnimationController.Timing(v79);
        }
      }
    }
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_70;
    }

    if (v11 >= v9)
    {
      break;
    }

    v10 = *(v4 + 8 * v11);
    ++v8;
    if (v10)
    {
      v8 = v11;
      goto LABEL_10;
    }
  }

  swift_beginAccess();
  TextEffectsAnimationController.TimingMap.remove(_:)(a1);
  swift_endAccess();
  v47 = 1 << *(a1 + 32);
  v48 = -1;
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  v49 = v48 & *(a1 + 56);
  v50 = (v47 + 63) >> 6;

  v51 = 0;
  while (v49)
  {
LABEL_50:
    v53 = *(*(a1 + 48) + ((v51 << 9) | (8 * __clz(__rbit64(v49)))));
    swift_beginAccess();
    specialized __RawDictionaryStorage.find<A>(_:)(v53);
    if (v54)
    {
      v55 = swift_isUniquelyReferenced_nonNull_native();
      v56 = a2[10];
      v78[0] = v56;
      a2[10] = 0x8000000000000000;
      if (!v55)
      {
        specialized _NativeDictionary.copy()();
        v56 = v78[0];
      }

      specialized _NativeDictionary._delete(at:)();
      a2[10] = v56;
    }

    v49 &= v49 - 1;
    swift_endAccess();
  }

  while (1)
  {
    v52 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      break;
    }

    if (v52 >= v50)
    {

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v58 = Strong;
        specialized TextEffectsRenderer.notifyStateObservers(with:time:)(a1);
      }

      v59 = 1 << *(a1 + 32);
      v60 = -1;
      if (v59 < 64)
      {
        v60 = ~(-1 << v59);
      }

      v61 = v60 & *(a1 + 56);
      v62 = (v59 + 63) >> 6;

      v63 = 0;
      v64 = &unk_1EAEDF000;
      while (v61)
      {
LABEL_64:
        v66 = __clz(__rbit64(v61));
        v61 &= v61 - 1;
        v67 = *(*(a1 + 48) + ((v63 << 9) | (8 * v66)));
        swift_beginAccess();
        v68 = a2[12];
        if (*(v68 + 16) && (v69 = specialized __RawDictionaryStorage.find<A>(_:)(v67), (v70 & 1) != 0))
        {
          v71 = *(*(v68 + 56) + 8 * v69);
          swift_endAccess();
          v72 = v64[148];
          if (*&v71[v72] != 1)
          {
            *&v71[v72] = 1;
            v73 = v64;
            v74 = *&v71[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_notify];
            v75 = v71;

            v74(v75);
            v64 = v73;
          }
        }

        else
        {
          swift_endAccess();
        }
      }

      while (1)
      {
        v65 = v63 + 1;
        if (__OFADD__(v63, 1))
        {
          goto LABEL_71;
        }

        if (v65 >= v62)
        {

          return;
        }

        v61 = *(v4 + 8 * v65);
        ++v63;
        if (v61)
        {
          v63 = v65;
          goto LABEL_64;
        }
      }
    }

    v49 = *(v4 + 8 * v52);
    ++v51;
    if (v49)
    {
      v51 = v52;
      goto LABEL_50;
    }
  }

LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t TextEffectsAnimationController.currentPhaseConfiguration(with:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 64);
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    v7 = *(v4 + 56) + 120 * v5;
    v8 = *(v7 + 56);
    outlined copy of TextEffectsAnimationController.Timing.PhaseConfiguration(v8, *(v7 + 64), *(v7 + 72), *(v7 + 80));
  }

  else
  {
    swift_beginAccess();
    v9 = *(v2 + 88);
    if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v11 & 1) != 0))
    {
      v8 = *(*(v9 + 56) + 16 * v10);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      return 0;
    }
  }

  return v8;
}

uint64_t TextEffectsAnimationController.phaseConfiguration(with:phase:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v9 = Text.Effect.Keyframes.validAnimation(_:)(a1, *(v4 + 112));
  if (v9)
  {
    swift_beginAccess();
    v10 = *(v4 + 88);
    if (*(v10 + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v12 & 1) != 0))
    {
      v13 = (*(v10 + 56) + 16 * v11);
      v15 = *v13;
      v14 = v13[1];
    }

    else
    {
      v14 = 0;
      v15 = 1;
    }

    v16 = swift_endAccess();
    v17 = MEMORY[0x1E69E7D40];
    if (a3)
    {
      a2 = (*((*MEMORY[0x1E69E7D40] & *v9) + 0x80))(a2, a3);
    }

    else
    {
      if (v15 == 1 || (v16 = , (v18 = v15) == 0))
      {
        v16 = (*((*v17 & *v9) + 0x88))(v16);
        v18 = v16;
      }

      a2 = (*(*v18 + 112))(v16);
    }

    if (a4)
    {
      (*((*v17 & *v9) + 0x90))(a4);

      outlined consume of Text.Effect.BasePhaseConfiguration?(v15, v14);
    }

    else
    {

      if (v15 != 1)
      {
      }
    }
  }

  else
  {
  }

  return a2;
}

void TextEffectsAnimationController.pauseAnimation(with:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1 + 72;
  v5 = *(*(v1 + 72) + 16);
  v6 = CACurrentMediaTime();
  swift_beginAccess();
  v7 = *(v1 + 64);
  if (*(v7 + 16))
  {
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v9)
    {
      v10 = *(v7 + 56) + 120 * v8;
      v11 = *v10;
      v12 = *(v10 + 16);
      v13 = *(v10 + 48);
      v32 = *(v10 + 32);
      v33 = v13;
      v31[0] = v11;
      v31[1] = v12;
      v14 = *(v10 + 64);
      v15 = *(v10 + 80);
      v16 = *(v10 + 96);
      v37 = *(v10 + 112);
      v35 = v15;
      v36 = v16;
      v34 = v14;
      v17 = BYTE8(v32);
      v18 = *v10;
      v19 = *(v10 + 16);
      v20 = *(v10 + 48);
      v40 = *(v10 + 32);
      v41 = v20;
      v38 = v18;
      v39 = v19;
      v21 = *(v10 + 64);
      v22 = *(v10 + 80);
      v23 = *(v10 + 96);
      v45 = *(v10 + 112);
      v43 = v22;
      v44 = v23;
      v42 = v21;
      outlined init with copy of TextEffectsAnimationController.Timing(v31, v46);
      TextEffectsAnimationController.Timing.endAnimationInterval()();
      if (v17 != 1)
      {
        v24 = *(v31 + 1);
        if (*(v31 + 1) < v6)
        {
          v24 = v6;
        }

        *&v40 = v24;
        BYTE8(v40) = 0;
      }

      v46[4] = v42;
      v46[5] = v43;
      v46[6] = v44;
      v47 = v45;
      v46[0] = v38;
      v46[1] = v39;
      v46[2] = v40;
      v46[3] = v41;
      v25 = BYTE8(v40);
      outlined init with copy of TextEffectsAnimationController.Timing(v46, v29);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v29[0] = *(v2 + 64);
      *(v2 + 64) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v46, a1, isUniquelyReferenced_nonNull_native);
      *(v2 + 64) = *&v29[0];
      if (v17)
      {
        if (!v25)
        {
          specialized Set._Variant.remove(_:)(a1);
        }
      }

      else if (v25)
      {
        specialized Set._Variant.insert(_:)(&v28, a1);
      }

      v29[4] = v42;
      v29[5] = v43;
      v29[6] = v44;
      v30 = v45;
      v29[0] = v38;
      v29[1] = v39;
      v29[2] = v40;
      v29[3] = v41;
      outlined destroy of TextEffectsAnimationController.Timing(v29);
    }
  }

  swift_endAccess();
  v27 = *(*v4 + 16);
  if (v5)
  {
    if (!v27)
    {
      TextEffectsAnimationController.clearDisplayLink()();
    }
  }

  else if (v27)
  {
    if ((*(v2 + 40) & 1) == 0)
    {
      *(v2 + 40) = 1;
      *(v2 + 56) = CACurrentMediaTime();
      if (!TextEffectsAnimationController.startExternalDisplayLink()())
      {
        TextEffectsAnimationController.startInternalDisplayLink()();
      }
    }
  }
}

void TextEffectsAnimationController.resumeAnimation(with:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1 + 72;
  v5 = *(*(v1 + 72) + 16);
  v6 = CACurrentMediaTime();
  swift_beginAccess();
  v7 = *(v1 + 64);
  if (*(v7 + 16))
  {
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v9)
    {
      v10 = *(v7 + 56) + 120 * v8;
      v11 = *v10;
      v12 = *(v10 + 16);
      v13 = *(v10 + 48);
      v33 = *(v10 + 32);
      v34 = v13;
      v32[0] = v11;
      v32[1] = v12;
      v14 = *(v10 + 64);
      v15 = *(v10 + 80);
      v16 = *(v10 + 96);
      v38 = *(v10 + 112);
      v36 = v15;
      v37 = v16;
      v35 = v14;
      v17 = *&v33;
      v18 = BYTE8(v33);
      v19 = *v10;
      v20 = *(v10 + 16);
      v21 = *(v10 + 48);
      v41 = *(v10 + 32);
      v42 = v21;
      v39 = v19;
      v40 = v20;
      v22 = *(v10 + 64);
      v23 = *(v10 + 80);
      v24 = *(v10 + 96);
      v46 = *(v10 + 112);
      v44 = v23;
      v45 = v24;
      v43 = v22;
      outlined init with copy of TextEffectsAnimationController.Timing(v32, v47);
      TextEffectsAnimationController.Timing.beginAnimationInterval()();
      if (!v18)
      {
        if (v6 >= v17)
        {
          v25 = v6;
        }

        else
        {
          v25 = v17;
        }

        v39 = vaddq_f64(vdupq_lane_s64(COERCE__INT64(v25 - v17), 0), v32[0]);
        *&v41 = 0;
        BYTE8(v41) = 2;
      }

      v47[4] = v43;
      v47[5] = v44;
      v47[6] = v45;
      v48 = v46;
      v47[0] = v39;
      v47[1] = v40;
      v47[2] = v41;
      v47[3] = v42;
      v26 = BYTE8(v41);
      outlined init with copy of TextEffectsAnimationController.Timing(v47, v30);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v30[0] = *(v2 + 64);
      *(v2 + 64) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v47, a1, isUniquelyReferenced_nonNull_native);
      *(v2 + 64) = *&v30[0];
      if (v18)
      {
        if (!v26)
        {
          specialized Set._Variant.remove(_:)(a1);
        }
      }

      else if (v26)
      {
        specialized Set._Variant.insert(_:)(&v29, a1);
      }

      v30[4] = v43;
      v30[5] = v44;
      v30[6] = v45;
      v31 = v46;
      v30[0] = v39;
      v30[1] = v40;
      v30[2] = v41;
      v30[3] = v42;
      outlined destroy of TextEffectsAnimationController.Timing(v30);
    }
  }

  swift_endAccess();
  v28 = *(*v4 + 16);
  if (v5)
  {
    if (!v28)
    {
      TextEffectsAnimationController.clearDisplayLink()();
    }
  }

  else if (v28)
  {
    if ((*(v2 + 40) & 1) == 0)
    {
      *(v2 + 40) = 1;
      *(v2 + 56) = CACurrentMediaTime();
      if (!TextEffectsAnimationController.startExternalDisplayLink()())
      {
        TextEffectsAnimationController.startInternalDisplayLink()();
      }
    }
  }
}

double TextEffectsAnimationController.delay(with:variant:trigger:)(uint64_t a1, char a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 64);
  if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v8 & 1) != 0) && (v9 = *(v6 + 56) + 120 * v7, (*(v9 + 24) & 1) == 0))
  {
    v11 = *(v9 + 16);
  }

  else
  {
    swift_beginAccess();
    v10 = Text.Effect.Keyframes.validAnimation(_:)(a1, *(v3 + 112));
    v11 = 1.0;
    if (v10)
    {
      v12 = v10;
      v13 = TextEffectsAnimationController.currentPhaseConfiguration(with:)(a1);
      v15 = v14;
      v47 = v16;
      v18 = v17;
      v45 = a1;
      v19 = TextEffectsAnimationController.phaseConfiguration(with:phase:configuration:)(a1, 0, 0, 0);
      v44 = v21;
      v50 = v22;
      v23 = 0;
      v24 = 0;
      v46 = v18;
      if (v18)
      {
        v25 = v19;
        v26 = v20;

        v20 = v26;
        v19 = v25;
        v23 = v13;
        v24 = v15;
      }

      v42 = v19;
      v43 = v24;
      v48 = v15;
      v49 = v13;
      v41 = v20;
      if (v50)
      {
        v27 = v19;
        v28 = v20;
      }

      else
      {
        v27 = 0;
        v28 = 0;
      }

      v40 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4TextV0E16AnimationSupportE6EffectO10IdentifierV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0], v20, v21);
      v29 = *(v3 + 112);
      v30 = *((*MEMORY[0x1E69E7D40] & *v12) + 0x78);

      v31 = v30(v23, v43, v27, v28, a2 & 1, v40, 0, v29, v3);
      v33 = v32;
      outlined consume of TextEffectsAnimationController.Timing.PhaseConfiguration(v42, v41, v44, v50 & 1);
      outlined consume of TextEffectsAnimationController.Timing.PhaseConfiguration(v49, v48, v47, v46 & 1);

      a1 = v45;
      if ((v33 & 1) == 0)
      {
        v11 = *&v31;
      }
    }
  }

  swift_beginAccess();
  v34 = Text.Effect.Keyframes.validAnimation(_:)(a1, *(v3 + 112));
  if (v34)
  {
    v35 = v34;
    v36 = (*((*MEMORY[0x1E69E7D40] & *v34) + 0xB8))(v11);
    v38 = v37;

    if ((v38 & 1) == 0)
    {
      return *&v36;
    }
  }

  return v11;
}

uint64_t TextEffectsAnimationController.TimingMap.cancel(_:at:)(uint64_t result, double a2)
{
  v3 = v2;
  v4 = *v2;
  if (*(v4 + 16))
  {
    v6 = result;
    result = specialized __RawDictionaryStorage.find<A>(_:)(result);
    if (v7)
    {
      v8 = *(v4 + 56) + 120 * result;
      v9 = *(v8 + 16);
      v11 = *(v8 + 32);
      v10 = *(v8 + 48);
      v36[0] = *v8;
      v36[1] = v9;
      v36[2] = v11;
      v36[3] = v10;
      v12 = *(v8 + 64);
      v13 = *(v8 + 80);
      v14 = *(v8 + 96);
      v37 = *(v8 + 112);
      v36[5] = v13;
      v36[6] = v14;
      v36[4] = v12;
      v15 = BYTE8(v11);
      v16 = *(v8 + 16);
      v43 = *v8;
      v44 = v16;
      v17 = *&v11;
      v18 = *(v8 + 41);
      v19 = *(v8 + 57);
      v20 = *(v8 + 73);
      v21 = *(v8 + 89);
      v42 = *(v8 + 105);
      v40 = v20;
      v41 = v21;
      v38 = v18;
      v39 = v19;
      if (v15 == 1)
      {
        v22 = v17;
      }

      else
      {
        v22 = a2;
      }

      v23 = *(v8 + 16);
      v45[0] = *v8;
      v45[1] = v23;
      v46 = v22;
      v47 = 1;
      v49 = v39;
      v50 = v40;
      v51 = v41;
      v52 = v42;
      v48 = v38;
      outlined init with copy of TextEffectsAnimationController.Timing(v36, &v27);
      outlined init with copy of TextEffectsAnimationController.Timing(v45, &v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v27 = *v3;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v45, v6, isUniquelyReferenced_nonNull_native);
      *v3 = v27;
      if (v15)
      {
        v27 = v43;
        v28 = v44;
        v25 = v38;
        v32 = v39;
        v33 = v40;
        v34 = v41;
        v29 = v22;
        v30 = 1;
      }

      else
      {
        specialized Set._Variant.insert(_:)(&v26, v6);
        v27 = v43;
        v28 = v44;
        v29 = a2;
        v25 = v38;
        v32 = v39;
        v33 = v40;
        v30 = 1;
        v34 = v41;
      }

      v35 = v42;
      v31 = v25;
      return outlined destroy of TextEffectsAnimationController.Timing(&v27);
    }
  }

  return result;
}

uint64_t TextEffectsAnimationController.TimingMap.resolve(_:from:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v7 = *v5;
  if (*(v7 + 16))
  {
    v12 = result;
    result = specialized __RawDictionaryStorage.find<A>(_:)(result);
    if (v13)
    {
      v14 = *(v7 + 56) + 120 * result;
      v16 = *v14;
      v15 = *(v14 + 16);
      v17 = *(v14 + 32);
      v43 = *(v14 + 48);
      v19 = *(v14 + 80);
      v18 = *(v14 + 96);
      v20 = *(v14 + 112);
      v44 = *(v14 + 64);
      v45 = v19;
      v42[1] = v15;
      v42[2] = v17;
      v42[0] = v16;
      v47 = v20;
      v46 = v18;
      v21 = *(&v43 + 1);
      v22 = v44;
      v23 = v19;
      v32 = BYTE8(v17);
      v24 = *v14;
      v25 = *(v14 + 16);
      v26 = *(v14 + 32);
      v54 = *(v14 + 48);
      v52 = v25;
      v53 = v26;
      v51 = v24;
      v27 = *(v14 + 97);
      v48 = *(v14 + 81);
      v49 = v27;
      v28 = a5 & 1;
      v50 = v28;
      outlined init with copy of TextEffectsAnimationController.Timing(v42, v55);
      outlined copy of TextEffectsAnimationController.Timing.PhaseConfiguration(a2, a3, a4, v28);
      outlined consume of TextEffectsAnimationController.Timing.PhaseConfiguration(v21, v22, *(&v22 + 1), v23);
      v55[1] = v52;
      v55[2] = v53;
      v55[0] = v51;
      v61 = v48;
      v56 = v54;
      v57 = a2;
      v58 = a3;
      v59 = a4;
      v29 = v50;
      v60 = v50;
      v62 = v49;
      v30 = BYTE8(v53);
      outlined init with copy of TextEffectsAnimationController.Timing(v55, v34);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v34[0] = *v6;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v55, v12, isUniquelyReferenced_nonNull_native);
      *v6 = *&v34[0];
      if (v32)
      {
        if (!v30)
        {
          specialized Set._Variant.remove(_:)(v12);
        }
      }

      else if (v30)
      {
        specialized Set._Variant.insert(_:)(&v33, v12);
      }

      v34[0] = v51;
      v34[1] = v52;
      v34[2] = v53;
      v40 = v48;
      v35 = v54;
      v36 = a2;
      v37 = a3;
      v38 = a4;
      v39 = v29;
      v41 = v49;
      return outlined destroy of TextEffectsAnimationController.Timing(v34);
    }
  }

  return result;
}

uint64_t TextEffectsAnimationController.TimingMap.resolve(_:to:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v7 = *v5;
  if (*(v7 + 16))
  {
    v12 = result;
    result = specialized __RawDictionaryStorage.find<A>(_:)(result);
    if (v13)
    {
      v14 = *(v7 + 56) + 120 * result;
      v15 = *(v14 + 112);
      v16 = *(v14 + 96);
      v17 = *(v14 + 64);
      v44 = *(v14 + 80);
      v45 = v16;
      v46 = v15;
      v18 = *v14;
      v19 = *(v14 + 16);
      v20 = *(v14 + 48);
      v41 = *(v14 + 32);
      v42 = v20;
      v40[0] = v18;
      v40[1] = v19;
      v43 = v17;
      v21 = *(&v44 + 1);
      v22 = v45;
      v23 = v15;
      v32 = BYTE8(v41);
      v24 = *(v14 + 16);
      v48 = *v14;
      v49 = v24;
      v25 = *(v14 + 32);
      v26 = *(v14 + 48);
      v27 = *(v14 + 64);
      v53 = *(v14 + 80);
      v51 = v26;
      v52 = v27;
      v50 = v25;
      v28 = a5 & 1;
      v47 = v28;
      outlined init with copy of TextEffectsAnimationController.Timing(v40, v54);
      outlined copy of TextEffectsAnimationController.Timing.PhaseConfiguration(a2, a3, a4, v28);
      outlined consume of TextEffectsAnimationController.Timing.PhaseConfiguration(v21, v22, *(&v22 + 1), v23);
      v54[2] = v50;
      v54[3] = v51;
      v54[4] = v52;
      v54[0] = v48;
      v54[1] = v49;
      v55 = v53;
      v56 = a2;
      v57 = a3;
      v58 = a4;
      v29 = v47;
      v59 = v47;
      v30 = BYTE8(v50);
      outlined init with copy of TextEffectsAnimationController.Timing(v54, v34);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v34[0] = *v6;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v54, v12, isUniquelyReferenced_nonNull_native);
      *v6 = *&v34[0];
      if (v32)
      {
        if (!v30)
        {
          specialized Set._Variant.remove(_:)(v12);
        }
      }

      else if (v30)
      {
        specialized Set._Variant.insert(_:)(&v33, v12);
      }

      v34[2] = v50;
      v34[3] = v51;
      v34[4] = v52;
      v34[0] = v48;
      v34[1] = v49;
      v35 = v53;
      v36 = a2;
      v37 = a3;
      v38 = a4;
      v39 = v29;
      return outlined destroy of TextEffectsAnimationController.Timing(v34);
    }
  }

  return result;
}

uint64_t TextEffectsAnimationController.TimingMap.resolve(_:duration:)(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(v5 + 16))
  {
    v8 = result;
    result = specialized __RawDictionaryStorage.find<A>(_:)(result);
    if (v9)
    {
      v10 = *(v5 + 56) + 120 * result;
      v11 = *(v10 + 16);
      v13 = *(v10 + 32);
      v12 = *(v10 + 48);
      v37[0] = *v10;
      v37[1] = v11;
      v37[2] = v13;
      v37[3] = v12;
      v14 = *(v10 + 64);
      v15 = *(v10 + 80);
      v16 = *(v10 + 96);
      v38 = *(v10 + 112);
      v37[5] = v15;
      v37[6] = v16;
      v37[4] = v14;
      v17 = BYTE8(v13);
      v18 = *v10;
      v19 = *(v10 + 41);
      v39 = *(v10 + 25);
      v40 = v19;
      v20 = *(v10 + 57);
      v21 = *(v10 + 73);
      v22 = *(v10 + 89);
      v44 = *(v10 + 105);
      v42 = v21;
      v43 = v22;
      v41 = v20;
      v23 = a3 & 1;
      v45 = v23;
      v24 = *v10;
      v46 = v18;
      v47 = v24;
      v48 = a2;
      v49 = v23;
      v52 = v41;
      v53 = v21;
      v54 = v22;
      v55 = v44;
      v50 = v39;
      v51 = v40;
      v25 = HIBYTE(v39);
      outlined init with copy of TextEffectsAnimationController.Timing(v37, &v28);
      outlined init with copy of TextEffectsAnimationController.Timing(&v47, &v28);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v28 = *v4;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v47, v8, isUniquelyReferenced_nonNull_native);
      *v4 = v28;
      if (v17)
      {
        if (!v25)
        {
          specialized Set._Variant.remove(_:)(v8);
        }
      }

      else if (v25)
      {
        specialized Set._Variant.insert(_:)(&v27, v8);
      }

      v28 = v46;
      v33 = v41;
      v34 = v42;
      v35 = v43;
      v31 = v39;
      v29 = a2;
      v30 = v23;
      v36 = v44;
      v32 = v40;
      return outlined destroy of TextEffectsAnimationController.Timing(&v28);
    }
  }

  return result;
}

Swift::Void __swiftcall TextEffectsAnimationController.Timing.beginAnimationInterval()()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  if (!*(v0 + 48))
  {
    if (one-time initialization token for textEffects != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for OSSignposter();
    __swift_project_value_buffer(v9, static OSSignposter.textEffects);
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    v10 = OSSignposter.logHandle.getter();
    v11 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      v13 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_195BC6000, v10, v11, v13, "Animation", "isAnimation=YES", v12, 2u);
      MEMORY[0x19A8BEB40](v12, -1, -1);
    }

    (*(v3 + 16))(v5, v8, v2);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v14 = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v3 + 8))(v8, v2);
    *(v1 + 48) = v14;
  }
}

Swift::Void __swiftcall TextEffectsAnimationController.Timing.endAnimationInterval()()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostError();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v0 + 48))
  {
    v10 = one-time initialization token for textEffects;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for OSSignposter();
    __swift_project_value_buffer(v11, static OSSignposter.textEffects);
    v12 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v17 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {

      checkForErrorAndConsumeState(state:)();

      if ((*(v3 + 88))(v5, v2) == *MEMORY[0x1E69E93E8])
      {
        v13 = "[Error] Interval already ended";
      }

      else
      {
        (*(v3 + 8))(v5, v2);
        v13 = "";
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_195BC6000, v12, v17, v15, "Animation", v13, v14, 2u);
      MEMORY[0x19A8BEB40](v14, -1, -1);
    }

    (*(v7 + 8))(v9, v6);

    *(v1 + 48) = 0;
  }
}

uint64_t (*specialized Dictionary.subscript.modify(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = specialized Dictionary._Variant.subscript.modify(v4, a2);
  return Dictionary.subscript.modifyspecialized ;
}

void Dictionary.subscript.modifyspecialized (void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t TextEffectsAnimationController.animatorToPhase(with:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 64);
  if (!*(v4 + 16) || (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) == 0))
  {
    swift_beginAccess();
    v16 = *(v2 + 88);
    if (*(v16 + 16) && (v17 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v18 & 1) != 0))
    {
      v19 = (*(v16 + 56) + 16 * v17);
      v21 = *v19;
      v20 = v19[1];

      swift_retain_n();
      swift_endAccess();
      outlined consume of Text.Effect.BasePhaseConfiguration?(v21, v20);
      if (v21)
      {
        v22 = *(*v21 + 112);

        v24 = v22(v23);

        goto LABEL_13;
      }
    }

    else
    {
      swift_endAccess();
    }

    swift_beginAccess();
    v25 = Text.Effect.Keyframes.validAnimation(_:)(a1, *(v2 + 112));
    if (!v25)
    {
      v29 = Text.Effect.Keyframes.validAnimation(_:)(a1, *(v2 + 112));
      if (!v29)
      {
        return 0;
      }

      v30 = v29;
      v31 = (*((*MEMORY[0x1E69E7D40] & *v29) + 0x88))();
      v14 = (*(*v31 + 80))();

LABEL_16:

      return v14;
    }

    v26 = v25;
    v27 = (*((*MEMORY[0x1E69E7D40] & *v25) + 0x88))();
    v24 = (*(*v27 + 112))(v27);

LABEL_13:

    v14 = (*(*v24 + 80))(v28);
    goto LABEL_16;
  }

  v7 = *(v4 + 56) + 120 * v5;
  v8 = *(v7 + 112);
  v9 = *(v7 + 96);
  v10 = *(v7 + 64);
  v40 = *(v7 + 80);
  v41 = v9;
  v42 = v8;
  v12 = *(v7 + 32);
  v11 = *(v7 + 48);
  v13 = *(v7 + 16);
  v39[0] = *v7;
  v39[1] = v13;
  v39[2] = v12;
  v39[3] = v11;
  v39[4] = v10;
  v14 = *(&v40 + 1);
  if ((v8 & 1) == 0)
  {
    outlined copy of TextEffectsAnimationController.Timing.PhaseConfiguration(*(&v40 + 1), v41, *(&v41 + 1), 0);

    return v14;
  }

  if (!*(&v40 + 1))
  {
    swift_beginAccess();
    v32 = Text.Effect.Keyframes.validAnimation(_:)(a1, *(v2 + 112));
    if (v32)
    {
      v33 = *((*MEMORY[0x1E69E7D40] & *v32) + 0x88);
      v34 = v32;
      outlined copy of TextEffectsAnimationController.Timing.PhaseConfiguration(0, v41, *(&v41 + 1), 1);
      v35 = outlined init with copy of TextEffectsAnimationController.Timing(v39, &v38);
      v36 = v33(v35);
      v14 = (*(*v36 + 80))();

      outlined destroy of TextEffectsAnimationController.Timing(v39);

      return v14;
    }

    outlined copy of TextEffectsAnimationController.Timing.PhaseConfiguration(0, v41, *(&v41 + 1), 1);

    return 0;
  }

  v15 = (*(**(&v40 + 1) + 80))();
  outlined copy of TextEffectsAnimationController.Timing.PhaseConfiguration(*(&v40 + 1), v41, *(&v41 + 1), 1);

  return v15;
}

uint64_t TextEffectsAnimationController.animatorFromPhase(with:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 64);
  if (!*(v4 + 16) || (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) == 0))
  {
    swift_beginAccess();
    v16 = *(v2 + 88);
    if (*(v16 + 16) && (v17 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v18 & 1) != 0))
    {
      v19 = (*(v16 + 56) + 16 * v17);
      v21 = *v19;
      v20 = v19[1];

      swift_retain_n();
      swift_endAccess();
      v22 = outlined consume of Text.Effect.BasePhaseConfiguration?(v21, v20);
      if (v21)
      {
        v14 = (*(*v21 + 80))(v22);
        goto LABEL_13;
      }
    }

    else
    {
      swift_endAccess();
    }

    swift_beginAccess();
    v23 = Text.Effect.Keyframes.validAnimation(_:)(a1, *(v2 + 112));
    if (!v23)
    {
      return 0;
    }

    v24 = v23;
    v25 = (*((*MEMORY[0x1E69E7D40] & *v23) + 0x88))();
    v14 = (*(*v25 + 80))();

LABEL_13:

    return v14;
  }

  v7 = *(v4 + 56) + 120 * v5;
  v9 = *v7;
  v8 = *(v7 + 16);
  v10 = *(v7 + 32);
  v34 = *(v7 + 48);
  v12 = *(v7 + 80);
  v11 = *(v7 + 96);
  v13 = *(v7 + 112);
  v35 = *(v7 + 64);
  v36 = v12;
  v33[1] = v8;
  v33[2] = v10;
  v33[0] = v9;
  v38 = v13;
  v37 = v11;
  v14 = *(&v34 + 1);
  if ((v12 & 1) == 0)
  {
    outlined copy of TextEffectsAnimationController.Timing.PhaseConfiguration(*(&v34 + 1), v35, *(&v35 + 1), 0);

    return v14;
  }

  if (!*(&v34 + 1))
  {
    swift_beginAccess();
    v26 = Text.Effect.Keyframes.validAnimation(_:)(a1, *(v2 + 112));
    if (v26)
    {
      v27 = *((*MEMORY[0x1E69E7D40] & *v26) + 0x88);
      v28 = v26;
      outlined copy of TextEffectsAnimationController.Timing.PhaseConfiguration(0, v35, *(&v35 + 1), 1);
      v29 = outlined init with copy of TextEffectsAnimationController.Timing(v33, &v32);
      v30 = v27(v29);
      v14 = (*(*v30 + 80))();

      outlined destroy of TextEffectsAnimationController.Timing(v33);

      return v14;
    }

    outlined copy of TextEffectsAnimationController.Timing.PhaseConfiguration(0, v35, *(&v35 + 1), 1);

    return 0;
  }

  v15 = (*(**(&v34 + 1) + 80))();
  outlined copy of TextEffectsAnimationController.Timing.PhaseConfiguration(*(&v34 + 1), v35, *(&v35 + 1), 1);

  return v15;
}

double TextEffectsAnimationController.invalidateAnimator(with:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(0, a1);
  swift_endAccess();
  type metadata accessor for [Text.Effect.Identifier](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Identifier>, &type metadata for Text.Effect.Identifier, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_195CC8D00;
  *(inited + 32) = a1;
  v7 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI4TextV0D16AnimationSupportE6EffectO10IdentifierV_SayAKGTt0g5Tf4g_n(inited, v5, v6);
  swift_setDeallocating();
  if (*(v7 + 16))
  {
    swift_beginAccess();
    v8 = *(*(v1 + 72) + 16);
    closure #1 in TextEffectsAnimationController.removeAnimations(_:)(v7, v2);
    v9 = *(*(v2 + 72) + 16);
    if (v8)
    {
      if (!v9)
      {
        TextEffectsAnimationController.clearDisplayLink()();
      }
    }

    else if (v9)
    {
      if ((*(v2 + 40) & 1) == 0)
      {
        *(v2 + 40) = 1;
        *(v2 + 56) = CACurrentMediaTime();
        if (!TextEffectsAnimationController.startExternalDisplayLink()())
        {
          TextEffectsAnimationController.startInternalDisplayLink()();
        }
      }
    }
  }

  return result;
}

void TextAnimator.start()(__n128 a1)
{
  v89 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_state;
  if (*(v1 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_state))
  {
    v2 = v1;
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
LABEL_43:
      v69 = (v2 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator__phase);
      *v69 = 0;
      v69[1] = 0;

      *(v2 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator__configuration) = 0;

      if (*(v2 + v89) != 2)
      {
        *(v2 + v89) = 2;
        v70 = *(v2 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_notify);

        v70(v2);
      }

      return;
    }

    v4 = Strong;
    v5 = *(*(v1 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_textAnimation) + OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id);
    v82 = *(v1 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_variant);
    v6 = *(v1 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator__phase);
    v7 = *(v1 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator__phase + 8);
    v8 = *(v1 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator__configuration);
    if (v8)
    {
    }

    else
    {
      swift_weakLoadStrong();
    }

    v9 = CACurrentMediaTime();
    swift_beginAccess();
    v80 = *(*(v4 + 72) + 16);
    v88 = TextEffectsAnimationController.currentPhaseConfiguration(with:)(v5);
    v11 = v10;
    *(&v79 + 1) = v12;
    v14 = v13;
    v86 = TextEffectsAnimationController.phaseConfiguration(with:phase:configuration:)(v5, v6, v7, v8);
    v87 = v15;
    v84 = v16;
    v18 = v17;

    swift_beginAccess();
    *&v79 = v11;
    v81 = Text.Effect.Keyframes.validAnimation(_:)(v5, *(v4 + 112));
    v85 = v14;
    v83 = v18;
    if (!v81)
    {
      v24 = 0;
LABEL_17:
      swift_beginAccess();
      v30 = *(v4 + 80);
      if (*(v30 + 16) && (v31 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v32 & 1) != 0))
      {
        v33 = *(*(v30 + 56) + 8 * v31);
        swift_endAccess();
        v34 = *(*v33 + 104);

        v34(v35);
      }

      else
      {
        swift_endAccess();
      }

      swift_beginAccess();
      v36 = *(v4 + 64);
      v37 = 0uLL;
      v38 = 0.0;
      if (*(v36 + 16))
      {
        v39 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
        if (v40)
        {
          v41 = *(v36 + 56) + 120 * v39;
          v42 = *v41;
          v44 = *(v41 + 32);
          v43 = *(v41 + 48);
          *&v106[16] = *(v41 + 16);
          *&v106[32] = v44;
          *v106 = v42;
          v45 = *(v41 + 64);
          v46 = *(v41 + 80);
          v47 = *(v41 + 96);
          v48 = *(v41 + 112);
          v108 = v48;
          *&v107[32] = v46;
          *&v107[48] = v47;
          *v107 = v43;
          *&v107[16] = v45;
          v38 = *v106;
          v76 = *&v106[24];
          v78 = *&v106[8];
          v49 = *&v106[40];
          v50 = v43;
          v72 = *&v107[24];
          v74 = *&v107[8];
          v71 = *&v107[40];
          v51 = *(&v47 + 1);
          outlined init with copy of TextEffectsAnimationController.Timing(v106, &v96);
          v53 = v71;
          v52 = v72;
          v55 = v74;
          v54 = v76;
          v37 = v78;
          v56 = v38;
          if (v50 != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v48 = 0;
          v51 = 0;
          v49 = 0;
          v54 = 0uLL;
          v55 = 0uLL;
          v52 = 0uLL;
          v53 = 0uLL;
          v37 = 0uLL;
        }
      }

      else
      {
        v48 = 0;
        v51 = 0;
        v49 = 0;
        v54 = 0uLL;
        v55 = 0uLL;
        v52 = 0uLL;
        v53 = 0uLL;
      }

      v50 = 1;
      v56 = v9;
LABEL_28:
      v96 = v38;
      v97 = v37;
      v98 = v54;
      v99 = v49;
      v100 = v50;
      v101 = v55;
      v102 = v52;
      v103 = v53;
      v104 = v51;
      v105 = v48;
      outlined destroy of TextEffectsAnimationController.Timing?(&v96, &lazy cache variable for type metadata for TextEffectsAnimationController.Timing?, &type metadata for TextEffectsAnimationController.Timing);
      v57 = specialized Dictionary.subscript.modify(v106, v5);
      if (*(v58 + 48) != 1)
      {
        TextEffectsAnimationController.Timing.endAnimationInterval()();
      }

      (v57)(v106, 0);
      specialized Set._Variant.remove(_:)(v5);
      specialized Dictionary.removeValue(forKey:)(v5, v106);
      v91[4] = *&v107[16];
      v91[5] = *&v107[32];
      v91[6] = *&v107[48];
      v92 = v108;
      v91[0] = *v106;
      v91[1] = *&v106[16];
      v91[2] = *&v106[32];
      v91[3] = *v107;
      outlined destroy of TextEffectsAnimationController.Timing?(v91, &lazy cache variable for type metadata for TextEffectsAnimationController.Timing?, &type metadata for TextEffectsAnimationController.Timing);
      v95 = v81 == 0;
      v94 = v85 & 1;
      v93 = v18 & 1;
      *v106 = v56;
      *&v106[8] = v9;
      *&v106[16] = v24;
      v106[24] = v81 == 0;
      v106[25] = v82;
      *&v106[32] = 0;
      v106[40] = 2;
      *v107 = 0;
      *&v107[8] = v88;
      *&v107[16] = v79;
      v107[32] = v85 & 1;
      *&v107[40] = v86;
      *&v107[48] = v87;
      *&v107[56] = v84;
      v108 = v18 & 1;
      outlined copy of TextEffectsAnimationController.Timing.PhaseConfiguration(v88, v79, *(&v79 + 1), v85 & 1);
      outlined copy of TextEffectsAnimationController.Timing.PhaseConfiguration(v86, v87, v84, v18 & 1);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v90[0] = *(v4 + 64);
      *(v4 + 64) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v106, v5, isUniquelyReferenced_nonNull_native);
      *(v4 + 64) = v90[0];
      v60 = specialized Dictionary.subscript.modify(v90, v5);
      if (*(v61 + 48) != 1)
      {
        TextEffectsAnimationController.Timing.beginAnimationInterval()();
      }

      (v60)(v90, 0);
      specialized Set._Variant.insert(_:)(v90, v5);
      swift_endAccess();
      type metadata accessor for [Text.Effect.Identifier](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Identifier>, &type metadata for Text.Effect.Identifier, MEMORY[0x1E69E6F90]);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_195CC8D00;
      *(v62 + 32) = v5;
      v65 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI4TextV0D16AnimationSupportE6EffectO10IdentifierV_SayAKGTt0g5Tf4g_n(v62, v63, v64);
      swift_setDeallocating();
      swift_deallocClassInstance();
      v66 = swift_unknownObjectWeakLoadStrong();
      if (v66)
      {
        v67 = v66;
        specialized TextEffectsRenderer.notifyStateObservers(with:time:)(v65);

        outlined consume of TextEffectsAnimationController.Timing.PhaseConfiguration(v86, v87, v84, v83 & 1);
        outlined consume of TextEffectsAnimationController.Timing.PhaseConfiguration(v88, v79, *(&v79 + 1), v85 & 1);
      }

      else
      {

        outlined consume of TextEffectsAnimationController.Timing.PhaseConfiguration(v86, v87, v84, v83 & 1);
        outlined consume of TextEffectsAnimationController.Timing.PhaseConfiguration(v88, v79, *(&v79 + 1), v85 & 1);
      }

      v68 = *(*(v4 + 72) + 16);
      if (v80)
      {
        if (!v68)
        {
          TextEffectsAnimationController.clearDisplayLink()();
        }
      }

      else if (v68)
      {
        if ((*(v4 + 40) & 1) == 0)
        {
          *(v4 + 40) = 1;
          *(v4 + 56) = CACurrentMediaTime();
          if (!TextEffectsAnimationController.startExternalDisplayLink()())
          {
            TextEffectsAnimationController.startInternalDisplayLink()();
          }
        }
      }

      goto LABEL_43;
    }

    v77 = v5;
    if (v14)
    {

      v21 = v11;
      v73 = v1;
      if ((v18 & 1) == 0)
      {
LABEL_9:
        v22 = 0;
        v23 = 0;
LABEL_13:
        v25 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4TextV0E16AnimationSupportE6EffectO10IdentifierV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0], v19, v20);
        v26 = *(v4 + 112);
        v27 = *((*MEMORY[0x1E69E7D40] & *v81) + 0x78);

        v28 = v27(v75, v21, v22, v23, v82, v25, 0, v26, v4);
        LOBYTE(v27) = v29;

        if (v27)
        {
          v24 = 0x3FF0000000000000;
        }

        else
        {
          v24 = v28;
        }

        v18 = v83;
        v5 = v77;
        v2 = v73;
        goto LABEL_17;
      }
    }

    else
    {
      v75 = 0;
      v21 = 0;
      v73 = v1;
      if ((v18 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v23 = v87;

    v22 = v86;

    goto LABEL_13;
  }
}

void TextAnimator.start(duration:)(__n128 a1)
{
  v2 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_state;
  if (*(v1 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_state))
  {
    v3 = v1;
    v4 = a1.n128_u64[0];
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
LABEL_29:
      v59 = (v3 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator__phase);
      *v59 = 0;
      v59[1] = 0;

      *(v3 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator__configuration) = 0;

      if (*(v3 + v2) != 2)
      {
        *(v3 + v2) = 2;
        v60 = *(v3 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_notify);

        v60(v3);
      }

      return;
    }

    v6 = Strong;
    v67 = v2;
    v7 = *(*(v1 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_textAnimation) + OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id);
    v66 = *(v1 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_variant);
    v8 = *(v1 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator__phase);
    v9 = *(v1 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator__phase + 8);
    v10 = *(v1 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator__configuration);

    v11 = CACurrentMediaTime();
    swift_beginAccess();
    v69 = *(*(v6 + 72) + 16);
    v73 = TextEffectsAnimationController.currentPhaseConfiguration(with:)(v7);
    *&v68 = v12;
    v14 = v13;
    v72 = v15;
    v70 = TextEffectsAnimationController.phaseConfiguration(with:phase:configuration:)(v7, v8, v9, v10);
    *&v71 = v16;
    *(&v71 + 1) = v17;
    v19 = v18;

    swift_beginAccess();
    v20 = *(v6 + 80);
    if (*(v20 + 16) && (v21 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v22 & 1) != 0))
    {
      v23 = *(*(v20 + 56) + 8 * v21);
      swift_endAccess();
      v24 = *(*v23 + 104);

      v24(v25);
    }

    else
    {
      swift_endAccess();
    }

    swift_beginAccess();
    v26 = *(v6 + 64);
    v27 = 0uLL;
    v28 = 0.0;
    *(&v68 + 1) = v14;
    if (*(v26 + 16))
    {
      v29 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
      if (v30)
      {
        v31 = *(v26 + 56) + 120 * v29;
        v32 = *v31;
        v34 = *(v31 + 32);
        v33 = *(v31 + 48);
        *&v90[16] = *(v31 + 16);
        *&v90[32] = v34;
        *v90 = v32;
        v35 = *(v31 + 64);
        v36 = *(v31 + 80);
        v37 = *(v31 + 96);
        v38 = *(v31 + 112);
        v92 = v38;
        *&v91[32] = v36;
        *&v91[48] = v37;
        *v91 = v33;
        *&v91[16] = v35;
        v28 = *v90;
        v64 = *&v90[24];
        v65 = *&v90[8];
        v40 = *&v90[40];
        v39 = v33;
        v62 = *&v91[24];
        v63 = *&v91[8];
        v61 = *&v91[40];
        v41 = *(&v37 + 1);
        outlined init with copy of TextEffectsAnimationController.Timing(v90, &v80);
        v43 = v61;
        v42 = v62;
        v45 = v63;
        v44 = v64;
        v27 = v65;
        v46 = v28;
        if (v39 != 1)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v38 = 0;
        v41 = 0;
        v40 = 0;
        v44 = 0uLL;
        v45 = 0uLL;
        v42 = 0uLL;
        v43 = 0uLL;
        v27 = 0uLL;
      }
    }

    else
    {
      v38 = 0;
      v41 = 0;
      v40 = 0;
      v44 = 0uLL;
      v45 = 0uLL;
      v42 = 0uLL;
      v43 = 0uLL;
    }

    v39 = 1;
    v46 = v11;
LABEL_14:
    v80 = v28;
    v81 = v27;
    v82 = v44;
    v83 = v40;
    v84 = v39;
    v85 = v45;
    v86 = v42;
    v87 = v43;
    v88 = v41;
    v89 = v38;
    outlined destroy of TextEffectsAnimationController.Timing?(&v80, &lazy cache variable for type metadata for TextEffectsAnimationController.Timing?, &type metadata for TextEffectsAnimationController.Timing);
    v47 = specialized Dictionary.subscript.modify(v90, v7);
    if (*(v48 + 48) != 1)
    {
      TextEffectsAnimationController.Timing.endAnimationInterval()();
    }

    (v47)(v90, 0);
    specialized Set._Variant.remove(_:)(v7);
    specialized Dictionary.removeValue(forKey:)(v7, v90);
    v75[4] = *&v91[16];
    v75[5] = *&v91[32];
    v75[6] = *&v91[48];
    v76 = v92;
    v75[0] = *v90;
    v75[1] = *&v90[16];
    v75[2] = *&v90[32];
    v75[3] = *v91;
    outlined destroy of TextEffectsAnimationController.Timing?(v75, &lazy cache variable for type metadata for TextEffectsAnimationController.Timing?, &type metadata for TextEffectsAnimationController.Timing);
    v79 = 0;
    v78 = v72 & 1;
    v77 = v19 & 1;
    *v90 = v46;
    *&v90[8] = v11;
    *&v90[16] = v4;
    v90[24] = 0;
    v90[25] = v66;
    *&v90[32] = 0;
    v90[40] = 2;
    *v91 = 0;
    *&v91[8] = v73;
    *&v91[16] = v68;
    v91[32] = v72 & 1;
    *&v91[40] = v70;
    *&v91[48] = v71;
    v92 = v19 & 1;
    outlined copy of TextEffectsAnimationController.Timing.PhaseConfiguration(v73, v68, *(&v68 + 1), v72 & 1);
    outlined copy of TextEffectsAnimationController.Timing.PhaseConfiguration(v70, v71, *(&v71 + 1), v19 & 1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74[0] = *(v6 + 64);
    *(v6 + 64) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v90, v7, isUniquelyReferenced_nonNull_native);
    *(v6 + 64) = v74[0];
    v50 = specialized Dictionary.subscript.modify(v74, v7);
    if (*(v51 + 48) != 1)
    {
      TextEffectsAnimationController.Timing.beginAnimationInterval()();
    }

    (v50)(v74, 0);
    specialized Set._Variant.insert(_:)(v74, v7);
    swift_endAccess();
    type metadata accessor for [Text.Effect.Identifier](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Identifier>, &type metadata for Text.Effect.Identifier, MEMORY[0x1E69E6F90]);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_195CC8D00;
    *(v52 + 32) = v7;
    v55 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI4TextV0D16AnimationSupportE6EffectO10IdentifierV_SayAKGTt0g5Tf4g_n(v52, v53, v54);
    swift_setDeallocating();
    swift_deallocClassInstance();
    v56 = swift_unknownObjectWeakLoadStrong();
    if (v56)
    {
      v57 = v56;
      specialized TextEffectsRenderer.notifyStateObservers(with:time:)(v55);

      outlined consume of TextEffectsAnimationController.Timing.PhaseConfiguration(v70, v71, *(&v71 + 1), v19 & 1);
      outlined consume of TextEffectsAnimationController.Timing.PhaseConfiguration(v73, v68, *(&v68 + 1), v72 & 1);
    }

    else
    {

      outlined consume of TextEffectsAnimationController.Timing.PhaseConfiguration(v70, v71, *(&v71 + 1), v19 & 1);
      outlined consume of TextEffectsAnimationController.Timing.PhaseConfiguration(v73, v68, *(&v68 + 1), v72 & 1);
    }

    v58 = *(*(v6 + 72) + 16);
    v2 = v67;
    if (v69)
    {
      if (!v58)
      {
        TextEffectsAnimationController.clearDisplayLink()();
      }
    }

    else if (v58)
    {
      if ((*(v6 + 40) & 1) == 0)
      {
        *(v6 + 40) = 1;
        *(v6 + 56) = CACurrentMediaTime();
        if (!TextEffectsAnimationController.startExternalDisplayLink()())
        {
          TextEffectsAnimationController.startInternalDisplayLink()();
        }
      }
    }

    goto LABEL_29;
  }
}

double TextAnimator.pause()(__n128 a1)
{
  v2 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_state;
  if (*(v1 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_state))
  {
    if (swift_weakLoadStrong())
    {
      TextEffectsAnimationController.pauseAnimation(with:)(*(*(v1 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_textAnimation) + OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id));
    }

    if (*(v1 + v2) != 3)
    {
      *(v1 + v2) = 3;
      v4 = *(v1 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_notify);

      v4(v1);
    }
  }

  return result;
}

double TextAnimator.resume()(__n128 a1)
{
  v2 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_state;
  if (*(v1 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_state))
  {
    if (swift_weakLoadStrong())
    {
      TextEffectsAnimationController.resumeAnimation(with:)(*(*(v1 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_textAnimation) + OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id));
    }

    if (*(v1 + v2) != 2)
    {
      *(v1 + v2) = 2;
      v4 = *(v1 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_notify);

      v4(v1);
    }
  }

  return result;
}

double TextAnimator.invalidate()(__n128 a1)
{
  if (*(v1 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_state))
  {
    *(v1 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_state) = 0;
    if (swift_weakLoadStrong())
    {
      TextEffectsAnimationController.invalidateAnimator(with:)(*(*(v1 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_textAnimation) + OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id));
    }
  }

  return result;
}

double TextAnimator.duration.getter(__n128 a1)
{
  Strong = swift_weakLoadStrong();
  v3 = 0.0;
  if (!Strong)
  {
    return v3;
  }

  v4 = Strong;
  v5 = *(*(v1 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_textAnimation) + OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id);
  v6 = *(v1 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator__phase);
  v7 = *(v1 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator__phase + 8);
  v8 = *(v1 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator__configuration);
  v9 = *(v1 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_variant);
  swift_beginAccess();
  v10 = *(v4 + 64);
  if (*(v10 + 16))
  {
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
    if (v12)
    {
      v13 = *(v10 + 56) + 120 * v11;
      if ((*(v13 + 24) & 1) == 0)
      {
        v3 = *(v13 + 16);
        goto LABEL_15;
      }
    }
  }

  swift_beginAccess();
  v14 = Text.Effect.Keyframes.validAnimation(_:)(v5, *(v4 + 112));
  if (!v14)
  {
LABEL_15:

    return v3;
  }

  v15 = v14;
  v41 = v9;
  v16 = TextEffectsAnimationController.currentPhaseConfiguration(with:)(v5);
  v18 = v17;
  v43 = v19;
  v21 = v20;

  v22 = TextEffectsAnimationController.phaseConfiguration(with:phase:configuration:)(v5, v6, v7, v8);
  v24 = v23;
  v38 = v25;
  v45 = v26;

  v42 = v21;
  if (v21)
  {

    v39 = v18;
    v40 = v16;
  }

  else
  {
    v39 = 0;
    v40 = 0;
  }

  v44 = v16;
  if (v45)
  {

    v29 = v22;
    v30 = v24;
  }

  else
  {
    v29 = 0;
    v30 = 0;
  }

  v37 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4TextV0E16AnimationSupportE6EffectO10IdentifierV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0], v27, v28);
  v31 = *(v4 + 112);
  v32 = *((*MEMORY[0x1E69E7D40] & *v15) + 0x78);

  v33 = v32(v40, v39, v29, v30, v41, v37, 0, v31, v4);
  v35 = v34;

  outlined consume of TextEffectsAnimationController.Timing.PhaseConfiguration(v22, v24, v38, v45 & 1);
  outlined consume of TextEffectsAnimationController.Timing.PhaseConfiguration(v44, v18, v43, v42 & 1);

  v3 = 1.0;
  if ((v35 & 1) == 0)
  {
    return *&v33;
  }

  return v3;
}

uint64_t TextAnimator.toPhase.getter(__n128 a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator__phase + 8);
  if (v2)
  {
    v3 = *(v1 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator__phase);
    v4 = v2;
  }

  else
  {
    if (!swift_weakLoadStrong())
    {
      return 0;
    }

    v3 = TextEffectsAnimationController.animatorToPhase(with:)(*(*(v1 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_textAnimation) + OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id));
    v4 = v6;

    if (!v4)
    {
      return 0;
    }
  }

  v5 = MEMORY[0x19A8BD5F0](v3, v4);

  return v5;
}

uint64_t TextAnimator.fromPhase.getter(__n128 a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = TextEffectsAnimationController.animatorFromPhase(with:)(*(*(v1 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_textAnimation) + OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id));
    v5 = v4;

    if (v5)
    {
      v6 = MEMORY[0x19A8BD5F0](v3, v5);

      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t TextAnimator.stateSnapshot.getter()
{
  if (*(v0 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_state))
  {
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v2 = result;
    v3 = *(*(v0 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_textAnimation) + OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id);
    swift_beginAccess();
    v4 = Text.Effect.Keyframes.validAnimation(_:)(v3, *(v2 + 112));
    if (v4)
    {
      v5 = v4;
      v6 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0xC0))(v2);

      return v6;
    }
  }

  return 0;
}

double TextAnimator.stateSnapshot.setter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_state;
  if (!*(v1 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_state))
  {
    goto LABEL_7;
  }

  if (!a1)
  {
    return result;
  }

  type metadata accessor for Text.Effect.AnyStateSnapshot();
  v3 = swift_dynamicCastClass();
  if (v3 && (v4 = v3, (Strong = swift_weakLoadStrong()) != 0))
  {
    v6 = Strong;
    v23 = v1;
    v7 = *(v1 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_textAnimation);
    v8 = OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id;
    v9 = *(v7 + OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id);
    swift_beginAccess();
    v10 = Text.Effect.Keyframes.validAnimation(_:)(v9, *(v6 + 112));
    if (v10)
    {
      v13 = v10;
      v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4TextV0E16AnimationSupportE6EffectO10IdentifierV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0], v11, v12);
      v22 = v7;
      v15 = *(v6 + 112);
      v16 = *((*MEMORY[0x1E69E7D40] & *v13) + 0xC8);

      v16(v4, v14, 0, v15, v6);

      v7 = v22;
    }

    else
    {
      swift_beginAccess();
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = *(v6 + 104);
      *(v6 + 104) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v4, v9, isUniquelyReferenced_nonNull_native);
      *(v6 + 104) = v24;
      swift_endAccess();
    }

    TextEffectsAnimationController.state(for:time:)(*(v7 + v8), v25, *(v6 + 56));
    outlined destroy of Text.Effect.State(v25);
    v19 = 3;
    if (v26 != 3)
    {
      v19 = 1;
    }

    v20 = 2;
    if (v26 != 2)
    {
      v20 = v19;
    }

    if (*(v23 + v2) != v20)
    {
      *(v23 + v2) = v20;
      v21 = *(v23 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_notify);

      v21(v23);
    }

    swift_unknownObjectRelease();
  }

  else
  {
LABEL_7:

    swift_unknownObjectRelease();
  }

  return result;
}

void TextAnimator.nextAnimationTriggerDelay.getter()
{
  if (*(v0 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_state))
  {
    if (swift_weakLoadStrong())
    {
      TextEffectsAnimationController.delay(with:variant:trigger:)(*(*(v0 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_textAnimation) + OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id), *(v0 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_variant));
    }
  }
}

void TextAnimator.cancel()()
{
  if (*(v0 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_state))
  {
    if (swift_weakLoadStrong())
    {
      v1 = *(*(v0 + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator_textAnimation) + OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id);
      v2 = CACurrentMediaTime();
      swift_beginAccess();
      TextEffectsAnimationController.TimingMap.cancel(_:at:)(v1, v2);
      swift_endAccess();
    }
  }
}

id Text.Effect.AnyStateSnapshot.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for Text.Effect.AnyStateSnapshot();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for TextRenderLayer.SegmentLayer(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 8))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for TextRenderLayer.SegmentLayer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RawTextLayout(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for RawTextLayout(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextRenderLayer.UpdateFlags and conformance TextRenderLayer.UpdateFlags(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type TextRenderLayer.UpdateFlags and conformance TextRenderLayer.UpdateFlags;
  if (!lazy protocol witness table cache variable for type TextRenderLayer.UpdateFlags and conformance TextRenderLayer.UpdateFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextRenderLayer.UpdateFlags and conformance TextRenderLayer.UpdateFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextRenderLayer.UpdateFlags and conformance TextRenderLayer.UpdateFlags;
  if (!lazy protocol witness table cache variable for type TextRenderLayer.UpdateFlags and conformance TextRenderLayer.UpdateFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextRenderLayer.UpdateFlags and conformance TextRenderLayer.UpdateFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextRenderLayer.UpdateFlags and conformance TextRenderLayer.UpdateFlags;
  if (!lazy protocol witness table cache variable for type TextRenderLayer.UpdateFlags and conformance TextRenderLayer.UpdateFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextRenderLayer.UpdateFlags and conformance TextRenderLayer.UpdateFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextRenderLayer.UpdateFlags and conformance TextRenderLayer.UpdateFlags;
  if (!lazy protocol witness table cache variable for type TextRenderLayer.UpdateFlags and conformance TextRenderLayer.UpdateFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextRenderLayer.UpdateFlags and conformance TextRenderLayer.UpdateFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextRenderLayer.SegmentIdentifierKey and conformance TextRenderLayer.SegmentIdentifierKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type TextRenderLayer.SegmentIdentifierKey and conformance TextRenderLayer.SegmentIdentifierKey;
  if (!lazy protocol witness table cache variable for type TextRenderLayer.SegmentIdentifierKey and conformance TextRenderLayer.SegmentIdentifierKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextRenderLayer.SegmentIdentifierKey and conformance TextRenderLayer.SegmentIdentifierKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextRenderLayer.SegmentIdentifierKey and conformance TextRenderLayer.SegmentIdentifierKey;
  if (!lazy protocol witness table cache variable for type TextRenderLayer.SegmentIdentifierKey and conformance TextRenderLayer.SegmentIdentifierKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextRenderLayer.SegmentIdentifierKey and conformance TextRenderLayer.SegmentIdentifierKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextEffectsRenderer.NotifyFlags and conformance TextEffectsRenderer.NotifyFlags(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type TextEffectsRenderer.NotifyFlags and conformance TextEffectsRenderer.NotifyFlags;
  if (!lazy protocol witness table cache variable for type TextEffectsRenderer.NotifyFlags and conformance TextEffectsRenderer.NotifyFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextEffectsRenderer.NotifyFlags and conformance TextEffectsRenderer.NotifyFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextEffectsRenderer.NotifyFlags and conformance TextEffectsRenderer.NotifyFlags;
  if (!lazy protocol witness table cache variable for type TextEffectsRenderer.NotifyFlags and conformance TextEffectsRenderer.NotifyFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextEffectsRenderer.NotifyFlags and conformance TextEffectsRenderer.NotifyFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextEffectsRenderer.NotifyFlags and conformance TextEffectsRenderer.NotifyFlags;
  if (!lazy protocol witness table cache variable for type TextEffectsRenderer.NotifyFlags and conformance TextEffectsRenderer.NotifyFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextEffectsRenderer.NotifyFlags and conformance TextEffectsRenderer.NotifyFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextEffectsRenderer.NotifyFlags and conformance TextEffectsRenderer.NotifyFlags;
  if (!lazy protocol witness table cache variable for type TextEffectsRenderer.NotifyFlags and conformance TextEffectsRenderer.NotifyFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextEffectsRenderer.NotifyFlags and conformance TextEffectsRenderer.NotifyFlags);
  }

  return result;
}

uint64_t one-time initialization function for textEffects()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSSignposter();
  __swift_allocate_value_buffer(v4, static OSSignposter.textEffects);
  __swift_project_value_buffer(v4, static OSSignposter.textEffects);
  if (one-time initialization token for textEffects != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, static Log.textEffects);
  (*(v1 + 16))(v3, v5, v0);
  return OSSignposter.init(logger:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.textEffects);
  __swift_project_value_buffer(v0, static Log.textEffects);
  return Logger.init(subsystem:category:)();
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v12 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v12;
    }

    outlined init with take of Any((*(v9 + 56) + 32 * v7), a2);
    specialized _NativeDictionary._delete(at:)(v7, v9, v10);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void *specialized _ArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  MEMORY[0x19A8BDE80](a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native, v11);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

Swift::Int specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  MEMORY[0x19A8BDE80](a2);
  MEMORY[0x19A8BDE60](a3);
  result = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = result & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    do
    {
      v12 = (*(v7 + 48) + 16 * v10);
      if (*v12 == a2)
      {
        v13 = v12[1];
        if (__OFSUB__(a3, v13))
        {
          __break(1u);
          return result;
        }

        if (v13 == a3)
        {
          result = 0;
          goto LABEL_9;
        }
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v3;
  specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native, v15);
  *v3 = v16;
  result = 1;
LABEL_9:
  *a1 = a2;
  a1[1] = a3;
  return result;
}

Swift::Int specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2)
{
  return specialized Set._Variant.insert(_:)(a1, a2, &lazy cache variable for type metadata for _SetStorage<Text.Effect.FragmentIdentifier>, lazy protocol witness table accessor for type Text.Effect.FragmentIdentifier and conformance Text.Effect.FragmentIdentifier, &type metadata for Text.Effect.FragmentIdentifier);
}

{
  return specialized Set._Variant.insert(_:)(a1, a2, &lazy cache variable for type metadata for _SetStorage<Text.Effect.ClusterIndex>, lazy protocol witness table accessor for type Text.Effect.ClusterIndex and conformance Text.Effect.ClusterIndex, &type metadata for Text.Effect.ClusterIndex);
}

Swift::Int specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v11 = *v5;
  Hasher.init(_seed:)();
  MEMORY[0x19A8BDE60](a2);
  result = Hasher._finalize()();
  v13 = -1 << *(v11 + 32);
  v14 = result & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (1)
    {
      v16 = *(*(v11 + 48) + 8 * v14);
      if (__OFSUB__(a2, v16))
      {
        break;
      }

      if (v16 == a2)
      {
        result = 0;
        goto LABEL_8;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v5;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v14, isUniquelyReferenced_nonNull_native, a3, a4, a5, v18);
    *v5 = v19;
    result = 1;
LABEL_8:
    *a1 = a2;
  }

  return result;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x19A8BDE40](*(*v2 + 40));
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

void specialized _NativeSet.resize(capacity:)(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v4 = *v2;
  type metadata accessor for _SetStorage<Text.Effect.Identifier>(0, &lazy cache variable for type metadata for _SetStorage<Text.Effect.RelativeIdentifierKey>, lazy protocol witness table accessor for type Text.Effect.RelativeIdentifierKey and conformance Text.Effect.RelativeIdentifierKey, &type metadata for Text.Effect.RelativeIdentifierKey, MEMORY[0x1E69E6A10]);
  v5 = static _SetStorage.resize(original:capacity:move:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = v5 + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v19 = (*(v4 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      Hasher.init(_seed:)();
      MEMORY[0x19A8BDE80](v20);
      MEMORY[0x19A8BDE60](v21);
      v22 = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v4 + 32);
    if (v30 >= 64)
    {
      bzero((v4 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v3 = v2;
    *(v4 + 16) = 0;
  }

  *v3 = v6;
}

void specialized _NativeSet.resize(capacity:)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t), __n128 a6)
{
  v7 = v6;
  v8 = *v6;
  type metadata accessor for _SetStorage<Text.Effect.Identifier>(0, a2, a3, a4, MEMORY[0x1E69E6A10]);
  v9 = static _SetStorage.resize(original:capacity:move:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = (v8 + 56);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    v17 = v9 + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = *(*(v8 + 48) + 8 * (v19 | (v11 << 6)));
      Hasher.init(_seed:)();
      a5(v22);
      v23 = Hasher._finalize()();
      v24 = -1 << *(v10 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v17 + 8 * v26);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v22;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v31 = 1 << *(v8 + 32);
    if (v31 >= 64)
    {
      bzero((v8 + 56), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v31;
    }

    v7 = v6;
    *(v8 + 16) = 0;
  }

  *v7 = v10;
}

void specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for RangeSet<Int>(0, &lazy cache variable for type metadata for _SetStorage<Int>, MEMORY[0x1E69E6540], MEMORY[0x1E69E6A10]);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v26 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = MEMORY[0x19A8BDE40](*(v5 + 40), v17);
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

{
  v2 = v1;
  v37 = type metadata accessor for UUID();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  type metadata accessor for _SetStorage<UUID>(0);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
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
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      _s7SwiftUI4TextV6LayoutV4LineVAGSlAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3, __n128 a4)
{
  v6 = *(*v4 + 16);
  v7 = *(*v4 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1, &lazy cache variable for type metadata for _SetStorage<Text.Effect.Identifier>, lazy protocol witness table accessor for type Text.Effect.Identifier and conformance Text.Effect.Identifier, &type metadata for Text.Effect.Identifier, MEMORY[0x1E69E7568], a4);
  }

  else
  {
    if (v7 > v6)
    {
      v8 = a2;
      specialized _NativeSet.copy()(&lazy cache variable for type metadata for _SetStorage<Text.Effect.Identifier>, lazy protocol witness table accessor for type Text.Effect.Identifier and conformance Text.Effect.Identifier, &type metadata for Text.Effect.Identifier, a4);
      a2 = v8;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1, &lazy cache variable for type metadata for _SetStorage<Text.Effect.Identifier>, lazy protocol witness table accessor for type Text.Effect.Identifier and conformance Text.Effect.Identifier, &type metadata for Text.Effect.Identifier, MEMORY[0x1E69E7568], a4);
  }

  v9 = *v4;
  Hasher.init(_seed:)();
  MEMORY[0x19A8BDE80](result);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    while (*(*(v9 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = result;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4, __n128 a5)
{
  v8 = *(*v5 + 16);
  v9 = *(*v5 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1, a5);
  }

  else
  {
    if (v9 > v8)
    {
      v10 = a3;
      specialized _NativeSet.copy()(a5);
      a3 = v10;
      goto LABEL_15;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1, a5);
  }

  v11 = *v5;
  Hasher.init(_seed:)();
  MEMORY[0x19A8BDE80](result);
  MEMORY[0x19A8BDE60](a2);
  v12 = Hasher._finalize()();
  v13 = -1 << *(v11 + 32);
  a3 = v12 & ~v13;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v14 = ~v13;
    do
    {
      v15 = (*(v11 + 48) + 16 * a3);
      if (*v15 == result)
      {
        v16 = v15[1];
        if (__OFSUB__(a2, v16))
        {
          __break(1u);
LABEL_18:
          __break(1u);
          return;
        }

        if (v16 == a2)
        {
          ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          break;
        }
      }

      a3 = (a3 + 1) & v14;
    }

    while (((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_15:
  v17 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v18 = (*(v17 + 48) + 16 * a3);
  *v18 = result;
  v18[1] = a2;
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    goto LABEL_18;
  }

  *(v17 + 16) = v21;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3, unint64_t *a4, uint64_t (*a5)(void), uint64_t a6, __n128 a7)
{
  v9 = *(*v7 + 16);
  v10 = *(*v7 + 24);
  if (v10 <= v9 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v9 + 1, a4, a5, a6, MEMORY[0x1E69E7560], a7);
    }

    else
    {
      if (v10 > v9)
      {
        v11 = a2;
        specialized _NativeSet.copy()(a4, a5, a6, a7);
        a2 = v11;
        goto LABEL_13;
      }

      specialized _NativeSet.copyAndResize(capacity:)(v9 + 1, a4, a5, a6, MEMORY[0x1E69E7560], a7);
    }

    v12 = *v7;
    Hasher.init(_seed:)();
    MEMORY[0x19A8BDE60](result);
    v13 = Hasher._finalize()();
    v14 = -1 << *(v12 + 32);
    a2 = v13 & ~v14;
    if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v15 = ~v14;
      while (1)
      {
        v16 = *(*(v12 + 48) + 8 * a2);
        if (__OFSUB__(result, v16))
        {
          break;
        }

        if (v16 == result)
        {
          goto LABEL_17;
        }

        a2 = (a2 + 1) & v15;
        if (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_16;
    }
  }

LABEL_13:
  v17 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + 8 * a2) = result;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v17 + 16) = v20;
    return;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  v9 = MEMORY[0x19A8BDE40](*(*v3 + 40), result);
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = result;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void specialized _NativeSet.copy()(__n128 a1)
{
  v2 = v1;
  type metadata accessor for _SetStorage<Text.Effect.Identifier>(0, &lazy cache variable for type metadata for _SetStorage<Text.Effect.RelativeIdentifierKey>, lazy protocol witness table accessor for type Text.Effect.RelativeIdentifierKey and conformance Text.Effect.RelativeIdentifierKey, &type metadata for Text.Effect.RelativeIdentifierKey, MEMORY[0x1E69E6A10]);
  v3 = *v1;
  v4 = static _SetStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 56 + 8 * v7)
    {
      memmove(v6, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 56);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 48) + 16 * v15) = *(*(v3 + 48) + 16 * v15))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      ;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }
}

void specialized _NativeSet.copy()(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3, __n128 a4)
{
  v5 = v4;
  type metadata accessor for _SetStorage<Text.Effect.Identifier>(0, a1, a2, a3, MEMORY[0x1E69E6A10]);
  v6 = *v4;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v6 + 56 + 8 * v10)
    {
      memmove(v9, (v6 + 56), 8 * v10);
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
    for (i = (v13 + 63) >> 6; v15; *(*(v8 + 48) + 8 * v18) = *(*(v6 + 48) + 8 * v18))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v18 = v17 | (v12 << 6);
LABEL_17:
      ;
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= i)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v15 = (v20 - 1) & v20;
        v18 = __clz(__rbit64(v20)) | (v12 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v8;
  }
}

void specialized _NativeSet.copy()()
{
  v1 = v0;
  type metadata accessor for RangeSet<Int>(0, &lazy cache variable for type metadata for _SetStorage<Int>, MEMORY[0x1E69E6540], MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

    *v1 = v4;
  }
}

{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _SetStorage<UUID>(0);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    v9 = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v6 + 56 + 8 * v10)
    {
      memmove(v9, (v6 + 56), 8 * v10);
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
    v24 = v3 + 16;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
      (*(v3 + 32))(*(v8 + 48) + v20, v5, v2);
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
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
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
    *v1 = v8;
  }
}

void specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v4 = *v2;
  type metadata accessor for _SetStorage<Text.Effect.Identifier>(0, &lazy cache variable for type metadata for _SetStorage<Text.Effect.RelativeIdentifierKey>, lazy protocol witness table accessor for type Text.Effect.RelativeIdentifierKey and conformance Text.Effect.RelativeIdentifierKey, &type metadata for Text.Effect.RelativeIdentifierKey, MEMORY[0x1E69E6A10]);
  v5 = static _SetStorage.resize(original:capacity:move:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v5 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v4 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      MEMORY[0x19A8BDE80](v19);
      MEMORY[0x19A8BDE60](v20);
      v21 = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v3 = v2;
        goto LABEL_26;
      }

      v17 = *(v4 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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
    *v3 = v6;
  }
}

void specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t), __n128 a6)
{
  v7 = v6;
  v8 = *v6;
  type metadata accessor for _SetStorage<Text.Effect.Identifier>(0, a2, a3, a4, MEMORY[0x1E69E6A10]);
  v9 = static _SetStorage.resize(original:capacity:move:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = 1 << *(v8 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v8 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = v9 + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(*(v8 + 48) + 8 * (v18 | (v11 << 6)));
      Hasher.init(_seed:)();
      a5(v21);
      v22 = Hasher._finalize()();
      v23 = -1 << *(v10 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v10 + 48) + 8 * v17) = v21;
      ++*(v10 + 16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v15)
      {

        v7 = v6;
        goto LABEL_26;
      }

      v20 = *(v8 + 56 + 8 * v11);
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
    *v7 = v10;
  }
}

void specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  type metadata accessor for RangeSet<Int>(0, &lazy cache variable for type metadata for _SetStorage<Int>, MEMORY[0x1E69E6540], MEMORY[0x1E69E6A10]);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v17 = MEMORY[0x19A8BDE40](*(v5 + 40), v16);
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }
}

{
  v2 = v1;
  v34 = type metadata accessor for UUID();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  type metadata accessor for _SetStorage<UUID>(0);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
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
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      _s7SwiftUI4TextV6LayoutV4LineVAGSlAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
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

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
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

        v2 = v29;
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
}

Swift::Int specialized _NativeSet.intersection(_:)(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = specialized closure #1 in _NativeSet.intersection(_:)(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(v11, v6, a2, a1);

    MEMORY[0x19A8BEB40](v11, -1, -1);
  }

  return v9;
}

void *specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = specialized closure #1 in _NativeSet.intersection(_:)(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy7SwiftUI4TextV0K16AnimationSupportE6EffectO10IdentifierVG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab8VKXEfU_7i3UI4k5V0H16lm2E6n3O10O5V_TG5APxSbs5Error_pRi_zRi0_zlyAOIsgndzo_Tf1nc_n04_s20kl123Support0a7EffectsB10ControllerC17displayLinkUpdate33_EB92A35C21DD52D72B91A53CA7419194LL2at14removeFinishedyAA4TimeV_SbtFSb7i10UI0A0VAAE6nzO7VXEfU0_AK0k7EffectsL10ControllerCTf1nnc_n(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = specialized closure #1 in _NativeSet.filter(_:)(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

Swift::Int specialized closure #1 in _NativeSet.intersection(_:)(Swift::Int result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = result;
  v40 = a4;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v22 = 0;
    v23 = 1 << *(a3 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(a3 + 56);
    v26 = (v23 + 63) >> 6;
    v27 = a4 + 56;
    v39 = 0;
LABEL_24:
    while (v25)
    {
      v28 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_31:
      v31 = v28 | (v22 << 6);
      v32 = *(*(a3 + 48) + 8 * v31);
      Hasher.init(_seed:)();
      MEMORY[0x19A8BDE80](v32);
      result = Hasher._finalize()();
      v33 = -1 << *(v40 + 32);
      v34 = result & ~v33;
      if ((*(v27 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
      {
        v35 = ~v33;
        while (*(*(v40 + 48) + 8 * v34) != v32)
        {
          v34 = (v34 + 1) & v35;
          if (((*(v27 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        *(v38 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        if (__OFADD__(v39, 1))
        {
          goto LABEL_41;
        }

        ++v39;
      }
    }

    v29 = v22;
    while (1)
    {
      v22 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v22 >= v26)
      {
LABEL_38:

        return specialized _NativeSet.extractSubset(using:count:)(v38, a2, v39, a3, v36);
      }

      v30 = *(a3 + 56 + 8 * v22);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v25 = (v30 - 1) & v30;
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
    v5 = 0;
    v6 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v39 = 0;
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v15 = *(*(a4 + 48) + 8 * (v12 | (v5 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x19A8BDE80](v15);
      result = Hasher._finalize()();
      a4 = v40;
      v16 = -1 << *(a3 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      v19 = 1 << v17;
      if (((1 << v17) & *(v11 + 8 * (v17 >> 6))) != 0)
      {
        v20 = *(a3 + 48);
        if (*(v20 + 8 * v17) == v15)
        {
LABEL_18:
          v38[v18] |= v19;
          if (__OFADD__(v39, 1))
          {
            goto LABEL_42;
          }

          ++v39;
        }

        else
        {
          v21 = ~v16;
          while (1)
          {
            v17 = (v17 + 1) & v21;
            v18 = v17 >> 6;
            v19 = 1 << v17;
            if (((1 << v17) & *(v11 + 8 * (v17 >> 6))) == 0)
            {
              break;
            }

            if (*(v20 + 8 * v17) == v15)
            {
              goto LABEL_18;
            }
          }
        }
      }
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        goto LABEL_38;
      }

      v14 = *(v6 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v5 = a4;
  if (!a3)
  {
    v10 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v10;
  }

  v6 = a3;
  if (*(a4 + 16) == a3)
  {
    return v5;
  }

  type metadata accessor for _SetStorage<Text.Effect.Identifier>(0, &lazy cache variable for type metadata for _SetStorage<Text.Effect.Identifier>, lazy protocol witness table accessor for type Text.Effect.Identifier and conformance Text.Effect.Identifier, &type metadata for Text.Effect.Identifier, MEMORY[0x1E69E6A10]);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *a1;
  }

  v12 = 0;
  v13 = result + 56;
  while (v11)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_17:
    v17 = *(*(v5 + 48) + 8 * (v14 | (v12 << 6)));
    Hasher.init(_seed:)();
    MEMORY[0x19A8BDE80](v17);
    result = Hasher._finalize()();
    v18 = -1 << *(v10 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v13 + 8 * (v19 >> 6))) == 0)
    {
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
        v25 = *(v13 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v13 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v13 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v10 + 48) + 8 * v21) = v17;
    ++*(v10 + 16);
    if (__OFSUB__(v6--, 1))
    {
      goto LABEL_32;
    }

    if (!v6)
    {
      goto LABEL_6;
    }
  }

  v15 = v12;
  while (1)
  {
    v12 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v12 >= a2)
    {
      goto LABEL_6;
    }

    v16 = a1[v12];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v11 = (v16 - 1) & v16;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1)
{
  v3 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x19A8BDE80](a1);
  v4 = Hasher._finalize()();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v1;
  v13 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()(&lazy cache variable for type metadata for _SetStorage<Text.Effect.Identifier>, lazy protocol witness table accessor for type Text.Effect.Identifier and conformance Text.Effect.Identifier, &type metadata for Text.Effect.Identifier, v10);
    v11 = v13;
  }

  v12 = *(*(v11 + 48) + 8 * v6);
  specialized _NativeSet._delete(at:)(v6);
  result = v12;
  *v1 = v13;
  return result;
}

void specialized _NativeSet._delete(at:)(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        Hasher.init(_seed:)();
        MEMORY[0x19A8BDE80](v10);
        v11 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }
}

Swift::Int specialized _NativeSet.subtracting<A>(_:)(uint64_t a1, Swift::Int a2)
{
  v6 = a2;
  v55 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v48 = a1;
    v49 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v47 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v48;
          v16 = v49;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {

              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v49 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v48;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v5 = *(*(v15 + 48) + ((v49 << 9) | (8 * v18)));
        Hasher.init(_seed:)();
        MEMORY[0x19A8BDE80](v5);
        v19 = Hasher._finalize()();
        v20 = -1 << *(v6 + 32);
        v2 = v19 & ~v20;
        v3 = v2 >> 6;
        v4 = 1 << v2;
      }

      while (((1 << v2) & *(v13 + 8 * (v2 >> 6))) == 0);
      v21 = *(v6 + 48);
      if (*(v21 + 8 * v2) == v5)
      {
        break;
      }

      while (1)
      {
        v2 = (v2 + 1) & ~v20;
        v3 = v2 >> 6;
        v4 = 1 << v2;
        if (((1 << v2) & *(v13 + 8 * (v2 >> 6))) == 0)
        {
          break;
        }

        if (*(v21 + 8 * v2) == v5)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v52 = v47;
    v53 = v49;
    v54 = v11;
    v51[0] = v48;
    v51[1] = v8;
    v14 = (63 - v20) >> 6;
    v5 = 8 * v14;

    if (v14 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v41 = swift_slowAlloc();
      memcpy(v41, (v6 + 56), v5);
      v42 = specialized closure #1 in _NativeSet.subtracting<A>(_:)(v41, v14, v6, v2, v51);

      MEMORY[0x19A8BEB40](v41, -1, -1);
      v4 = v51[0];
      v47 = v52;
      v49 = v53;
      v6 = v42;
      goto LABEL_41;
    }

LABEL_18:
    v44 = v14;
    v45 = &v43;
    MEMORY[0x1EEE9AC00](v22);
    v14 = &v43 - v23;
    memcpy(&v43 - v23, (v6 + 56), v5);
    v25 = *(v6 + 16);
    *(v14 + 8 * v3) &= ~v4;
    v26 = v25 - 1;
    v3 = 1;
    v4 = v48;
LABEL_19:
    v46 = v26;
    while (v11)
    {
LABEL_27:
      v30 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v5 = *(*(v4 + 48) + ((v49 << 9) | (8 * v30)));
      Hasher.init(_seed:)();
      v2 = v50;
      MEMORY[0x19A8BDE80](v5);
      v31 = Hasher._finalize()();
      v32 = -1 << *(v6 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      v35 = 1 << v33;
      if (((1 << v33) & *(v13 + 8 * (v33 >> 6))) != 0)
      {
        v36 = *(v6 + 48);
        if (*(v36 + 8 * v33) == v5)
        {
LABEL_20:
          v27 = *(v14 + 8 * v34);
          *(v14 + 8 * v34) = v27 & ~v35;
          if ((v27 & v35) != 0)
          {
            v26 = v46 - 1;
            if (__OFSUB__(v46, 1))
            {
              __break(1u);
            }

            if (v46 == 1)
            {

              v6 = MEMORY[0x1E69E7CD0];
              goto LABEL_41;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v37 = ~v32;
          while (1)
          {
            v33 = (v33 + 1) & v37;
            v34 = v33 >> 6;
            v35 = 1 << v33;
            if (((1 << v33) & *(v13 + 8 * (v33 >> 6))) == 0)
            {
              break;
            }

            if (*(v36 + 8 * v33) == v5)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v28 = v49;
    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v29 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v29);
      ++v28;
      if (v11)
      {
        v49 = v29;
        goto LABEL_27;
      }
    }

    if (v12 <= v49 + 1)
    {
      v38 = v49 + 1;
    }

    else
    {
      v38 = v12;
    }

    v49 = v38 - 1;
    v6 = specialized _NativeSet.extractSubset(using:count:)(v14, v44, v46, v6, v24);
LABEL_41:
    v39 = v4;
LABEL_43:
    outlined consume of [Double : Text.Effect.BaseFragment].Iterator._Variant(v39);
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v6;
}

Swift::Int specialized closure #1 in _NativeSet.subtracting<A>(_:)(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (1)
  {
    v12 = a5[3];
    v13 = a5[4];
    if (!v13)
    {
      break;
    }

    v14 = a5[3];
LABEL_9:
    v17 = *(*(*a5 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    a5[3] = v14;
    a5[4] = (v13 - 1) & v13;
    Hasher.init(_seed:)();
    MEMORY[0x19A8BDE80](v17);
    result = Hasher._finalize()();
    v18 = -1 << *(a3 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    v21 = 1 << v19;
    if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) != 0)
    {
      v22 = *(a3 + 48);
      if (*(v22 + 8 * v19) == v17)
      {
LABEL_2:
        v11 = v7[v20];
        v7[v20] = v11 & ~v21;
        if ((v11 & v21) != 0)
        {
          if (__OFSUB__(v9--, 1))
          {
LABEL_24:
            __break(1u);
            return result;
          }

          if (!v9)
          {
            return MEMORY[0x1E69E7CD0];
          }
        }
      }

      else
      {
        v23 = ~v18;
        while (1)
        {
          v19 = (v19 + 1) & v23;
          v20 = v19 >> 6;
          v21 = 1 << v19;
          if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) == 0)
          {
            break;
          }

          if (*(v22 + 8 * v19) == v17)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v15 = (a5[2] + 64) >> 6;
  v16 = a5[3];
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v14 >= v15)
    {
      break;
    }

    v13 = *(a5[1] + 8 * v14);
    ++v16;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  if (v15 <= v12 + 1)
  {
    v25 = v12 + 1;
  }

  else
  {
    v25 = (a5[2] + 64) >> 6;
  }

  a5[3] = v25 - 1;
  a5[4] = 0;

  return specialized _NativeSet.extractSubset(using:count:)(v7, a2, v9, a3, v26);
}

void specialized closure #1 in _NativeSet.subtracting<A>(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v35 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v42 = &v35 - v14;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v48 = &v35 - v17;
  v18 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v36 = a1;
  v37 = v18 - 1;
  v19 = *a5;
  v20 = a5[1];
  v21 = *(*a5 + 16);
  if (v20 == v21)
  {
LABEL_2:

    specialized _NativeSet.extractSubset(using:count:)(v36, v35, v37, a3);
    return;
  }

  v40 = v10 + 32;
  v41 = v10;
  v43 = a3 + 56;
  v38 = a5;
  v46 = v10 + 16;
  v47 = (v10 + 8);
  while (v20 < v21)
  {
    v23 = *(v10 + 80);
    v45 = *(v10 + 72);
    v24 = v42;
    v44 = *(v10 + 16);
    v44(v42, v19 + ((v23 + 32) & ~v23) + v45 * v20, v9, v16);
    a5[1] = v20 + 1;
    (*(v10 + 32))(v48, v24, v9);
    _s7SwiftUI4TextV6LayoutV4LineVAGSlAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v25 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v26 = -1 << *(a3 + 32);
    v27 = v25 & ~v26;
    v28 = v27 >> 6;
    v29 = 1 << v27;
    if (((1 << v27) & *(v43 + 8 * (v27 >> 6))) == 0)
    {
      v22 = *v47;
LABEL_5:
      v22(v48, v9);
      goto LABEL_6;
    }

    v39 = v47 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v30 = a3;
    v31 = ~v26;
    while (1)
    {
      (v44)(v12, *(v30 + 48) + v27 * v45, v9);
      _s7SwiftUI4TextV6LayoutV4LineVAGSlAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v47;
      (*v47)(v12, v9);
      if (v32)
      {
        break;
      }

      v27 = (v27 + 1) & v31;
      v28 = v27 >> 6;
      v29 = 1 << v27;
      if (((1 << v27) & *(v43 + 8 * (v27 >> 6))) == 0)
      {
        a3 = v30;
        a5 = v38;
        goto LABEL_5;
      }
    }

    v22(v48, v9);
    v33 = v36[v28];
    v36[v28] = v33 & ~v29;
    if ((v33 & v29) == 0)
    {
      a3 = v30;
      a5 = v38;
LABEL_6:
      v10 = v41;
      goto LABEL_7;
    }

    v34 = v37 - 1;
    v10 = v41;
    if (__OFSUB__(v37, 1))
    {
      goto LABEL_20;
    }

    a3 = v30;
    a5 = v38;
    --v37;
    if (!v34)
    {
      return;
    }

LABEL_7:
    v19 = *a5;
    v20 = a5[1];
    v21 = *(*a5 + 16);
    if (v20 == v21)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

void (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = specialized Dictionary._Variant.asNative.modify(v5);
  v5[9] = specialized _NativeDictionary.subscript.modify(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

void Dictionary._Variant.subscript.modifyspecialized (uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*specialized _NativeDictionary.subscript.modify(uint64_t *a1, uint64_t a2, char a3))(uint64_t *a1, char a2)
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x2E8uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 728) = v3;
  *(v8 + 720) = a2;
  v10 = *v3;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  *(v9 + 113) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a3 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 736) = v11;
  if (v17)
  {
    memmove((v9 + 240), (*(*v4 + 56) + 120 * v11), 0x71uLL);
  }

  else
  {
    *(v9 + 256) = 0u;
    *(v9 + 272) = 0u;
    *(v9 + 240) = 0u;
    *(v9 + 288) = 1;
    *(v9 + 296) = 0u;
    *(v9 + 312) = 0u;
    *(v9 + 328) = 0u;
    *(v9 + 337) = 0u;
  }

  return _NativeDictionary.subscript.modifyspecialized ;
}

void _NativeDictionary.subscript.modifyspecialized (uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 360);
  v4 = *(*a1 + 320);
  v3[4] = *(*a1 + 304);
  v3[5] = v4;
  v3[6] = *(v2 + 336);
  *(v2 + 472) = *(v2 + 352);
  v5 = *(v2 + 256);
  *v3 = *(v2 + 240);
  v3[1] = v5;
  v6 = *(v2 + 288);
  v3[2] = *(v2 + 272);
  v3[3] = v6;
  v7 = *(v2 + 408);
  if (a2)
  {
    if (v7 != 1)
    {
      v8 = *(v2 + 736);
      v9 = *(v2 + 728);
      if ((*(v2 + 113) & 1) == 0)
      {
        v10 = *(v2 + 720);
        v11 = *v9;
        v12 = *(v2 + 320);
        *(v2 + 64) = *(v2 + 304);
        *(v2 + 80) = v12;
        *(v2 + 96) = *(v2 + 336);
        *(v2 + 112) = *(v2 + 352);
        v13 = *(v2 + 256);
        *v2 = *(v2 + 240);
        *(v2 + 16) = v13;
        v14 = *(v2 + 288);
        *(v2 + 32) = *(v2 + 272);
        *(v2 + 48) = v14;
        v15 = v2;
LABEL_11:
        specialized _NativeDictionary._insert(at:key:value:)(v8, v10, v15, v11);
        goto LABEL_12;
      }

      goto LABEL_9;
    }
  }

  else if (v7 != 1)
  {
    v8 = *(v2 + 736);
    v9 = *(v2 + 728);
    if ((*(v2 + 113) & 1) == 0)
    {
      v11 = *v9;
      v16 = *(v2 + 320);
      *(v2 + 184) = *(v2 + 304);
      *(v2 + 200) = v16;
      *(v2 + 216) = *(v2 + 336);
      v17 = *(v2 + 256);
      *(v2 + 120) = *(v2 + 240);
      *(v2 + 136) = v17;
      v18 = *(v2 + 288);
      *(v2 + 152) = *(v2 + 272);
      v10 = *(v2 + 720);
      *(v2 + 232) = *(v2 + 352);
      *(v2 + 168) = v18;
      v15 = v2 + 120;
      goto LABEL_11;
    }

LABEL_9:
    memmove((*(*v9 + 56) + 120 * v8), (v2 + 240), 0x71uLL);
    goto LABEL_12;
  }

  if (*(v2 + 113))
  {
    specialized _NativeDictionary._delete(at:)(*(v2 + 736), **(v2 + 728), v6);
  }

LABEL_12:
  v19 = *(v2 + 320);
  *(v2 + 544) = *(v2 + 304);
  *(v2 + 560) = v19;
  *(v2 + 576) = *(v2 + 336);
  *(v2 + 592) = *(v2 + 352);
  v20 = *(v2 + 256);
  *(v2 + 480) = *(v2 + 240);
  *(v2 + 496) = v20;
  v21 = *(v2 + 288);
  *(v2 + 512) = *(v2 + 272);
  *(v2 + 528) = v21;
  outlined init with copy of TextEffectsAnimationController.Timing?(v3, v2 + 600, &lazy cache variable for type metadata for TextEffectsAnimationController.Timing?, &type metadata for TextEffectsAnimationController.Timing);
  outlined destroy of TextEffectsAnimationController.Timing?(v2 + 480, &lazy cache variable for type metadata for TextEffectsAnimationController.Timing?, &type metadata for TextEffectsAnimationController.Timing);

  free(v2);
}

uint64_t (*specialized Dictionary._Variant.asNative.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

unint64_t _StringGuts.validateScalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
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

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = _StringGuts.validateSubscalarIndex(_:)(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | _StringGuts.scalarAlignSlow(_:)(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t _StringGuts.validateSubscalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
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

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

double outlined copy of TextEffectsAnimationController.Timing.PhaseConfiguration(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }

  return result;
}

double outlined consume of TextEffectsAnimationController.Timing.PhaseConfiguration(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }

  return result;
}

double outlined consume of Text.Effect.BasePhaseConfiguration?(uint64_t a1, uint64_t a2)
{
  if (a1 != 1)
  {
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<Text.Effect.Identifier, Int>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, Int>)
  {
    lazy protocol witness table accessor for type Text.Effect.Identifier and conformance Text.Effect.Identifier(0, a2, a3);
    v3 = type metadata accessor for _DictionaryStorage();
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for _DictionaryStorage<Text.Effect.Identifier, Int>);
    }
  }
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI4TextV0D16AnimationSupportE6EffectO10IdentifierV_SayAKGTt0g5Tf4g_n(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = lazy protocol witness table accessor for type Text.Effect.Identifier and conformance Text.Effect.Identifier(a1, a2, a3);
  result = MEMORY[0x19A8BD810](v4, &type metadata for Text.Effect.Identifier, v5);
  v10 = result;
  if (v4)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      specialized Set._Variant.insert(_:)(&v9, v8);
      --v4;
    }

    while (v4);
    return v10;
  }

  return result;
}

void specialized TextEffectsRenderer.notifyStateObservers(with:time:)(uint64_t a1)
{
  v47 = a1;
  v48 = type metadata accessor for UUID();
  v2 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v43 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for (key: UUID, value: TextRenderSurface)?, type metadata accessor for (key: UUID, value: TextRenderSurface), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v40 - v8;
  v10 = OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_surfaceMap;
  swift_beginAccess();
  v11 = *(v1 + v10);
  v12 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v11 + 64);
  v16 = (v13 + 63) >> 6;
  v40[1] = v2 + 32;
  v40[2] = v2 + 16;
  v44 = v2;
  v45 = v11;
  v46 = (v2 + 8);

  v17 = 0;
  v41 = v9;
  v42 = v6;
  if (v15)
  {
    while (1)
    {
      v18 = v17;
LABEL_12:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v21 | (v18 << 6);
      v24 = v44;
      v23 = v45;
      v25 = v43;
      v26 = v48;
      (*(v44 + 16))(v43, *(v45 + 48) + *(v44 + 72) * v22, v48);
      v27 = *(*(v23 + 56) + 8 * v22);
      type metadata accessor for (key: UUID, value: TextRenderSurface)(0);
      v29 = v28;
      v30 = *(v28 + 48);
      v31 = *(v24 + 32);
      v6 = v42;
      v31(v42, v25, v26);
      *&v6[v30] = v27;
      (*(*(v29 - 8) + 56))(v6, 0, 1, v29);
      v32 = v27;
      v20 = v18;
      v9 = v41;
LABEL_13:
      outlined init with take of Text.Effect.RangeCoordinateSpace?(v6, v9, &lazy cache variable for type metadata for (key: UUID, value: TextRenderSurface)?, type metadata accessor for (key: UUID, value: TextRenderSurface));
      type metadata accessor for (key: UUID, value: TextRenderSurface)(0);
      if ((*(*(v29 - 8) + 48))(v9, 1, v29) == 1)
      {
        break;
      }

      v33 = *&v9[*(v29 + 48)];
      v34 = *&v33[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417TextRenderSurface__layer];
      v35 = *&v34[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_effectIdentifiers];
      v36 = v34;

      v37 = v47;

      v38 = specialized _NativeSet.intersection(_:)(v35, v37);

      TextRenderLayer.updateActive(animations:)(v38);

      (*v46)(v9, v48);
      v17 = v20;
      if (!v15)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v16 <= v17 + 1)
    {
      v19 = v17 + 1;
    }

    else
    {
      v19 = v16;
    }

    v20 = v19 - 1;
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
        type metadata accessor for (key: UUID, value: TextRenderSurface)(0);
        v29 = v39;
        (*(*(v39 - 8) + 56))(v6, 1, 1, v39);
        v15 = 0;
        goto LABEL_13;
      }

      v15 = *(v12 + 8 * v18);
      ++v17;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t specialized TextRenderLayer.draw(line:glyphOrigin:ranges:in:_:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5, double a6, double a7)
{
  v92 = a5;
  v98 = a3;
  v93 = a1;
  v11 = type metadata accessor for TextRenderLayer.Layout(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v85 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v89 = &v82 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v86 = &v82 - v17;
  v18 = MEMORY[0x1E69E6720];
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v90 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v94 = &v82 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v88 = &v82 - v24;
  type metadata accessor for TextRenderLayer.Layout?(0, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout, v18);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v87 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v91 = &v82 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v82 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v82 - v33;
  v35 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layout;
  swift_beginAccess();
  outlined init with copy of TextRenderLayer.Layout?(a4 + v35, v34, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  v36 = *(v12 + 48);
  v95 = v11;
  v97 = v12 + 48;
  v96 = v36;
  LODWORD(v11) = v36(v34, 1, v11);
  result = outlined destroy of TextRenderLayer.Layout?(v34, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  if (v11 == 1)
  {
    return result;
  }

  v39 = a4;
  TextRenderLayer.textMarkers(for:)(a2, v38);
  if (!v40)
  {
    closure #1 in closure #1 in closure #1 in TextRunsLayer.draw(in:)(v98, v92);
    v48 = v94;
    v49 = v93;
    v50 = v95;
    goto LABEL_24;
  }

  v41 = v40;
  v83 = a2;
  v84 = a4;
  v42 = type metadata accessor for Text.Effect.InteractionMetrics(0);
  v43 = *(*(v42 - 8) + 56);
  v44 = v88;
  v43(v88, 1, 1, v42);
  if (!*(v41 + 16))
  {
    v45 = &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?;
    v46 = type metadata accessor for Text.Effect.InteractionMetrics;
    v47 = v44;
    goto LABEL_8;
  }

  outlined init with copy of TextRenderLayer.Layout?(v84 + v35, v31, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  if (v96(v31, 1, v95) == 1)
  {
    outlined destroy of TextRenderLayer.Layout?(v44, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
    v45 = &lazy cache variable for type metadata for TextRenderLayer.Layout?;
    v46 = type metadata accessor for TextRenderLayer.Layout;
    v47 = v31;
LABEL_8:
    outlined destroy of TextRenderLayer.Layout?(v47, v45, v46);
    v49 = v93;
LABEL_9:
    v51 = v90;
    closure #1 in closure #1 in closure #1 in TextRunsLayer.draw(in:)(v98, v92);
    v48 = v94;
    v50 = v95;
    goto LABEL_10;
  }

  v53 = v86;
  outlined init with take of TextRenderLayer.Layout(v31, v86, type metadata accessor for TextRenderLayer.Layout);

  v49 = v93;
  v54 = Text.Layout.Line.textLineFragment.getter();
  if (!v54)
  {

    outlined destroy of TextRenderLayer.Layout?(v44, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
    outlined destroy of Text.Effect.Composition(v53, type metadata accessor for TextRenderLayer.Layout);
    goto LABEL_9;
  }

  v55 = v54;
  v56 = Text.Effect.Markers.layoutInfo(for:glyphOrigin:metrics:layoutAttributedString:)(v49, v44, *(v53 + *(v95 + 44)), v41);

  v82 = &v82;
  LOBYTE(v102) = 0;
  MEMORY[0x1EEE9AC00](v57);
  *(&v82 - 6) = &v102;
  *(&v82 - 5) = v55;
  *(&v82 - 4) = a6;
  *(&v82 - 3) = a7;
  v80 = v56;
  GraphicsContext.withCGContext(content:)();

  outlined destroy of TextRenderLayer.Layout?(v44, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
  outlined destroy of Text.Effect.Composition(v53, type metadata accessor for TextRenderLayer.Layout);
  LOBYTE(v55) = v102;
  closure #1 in closure #1 in closure #1 in TextRunsLayer.draw(in:)(v98, v92);
  if (v55)
  {

    v48 = v94;
    v49 = v93;
    v50 = v95;
    goto LABEL_22;
  }

  v48 = v94;
  v49 = v93;
  v50 = v95;
  v51 = v90;
LABEL_10:
  v43(v51, 1, 1, v42);
  if (!*(v41 + 16))
  {

    outlined destroy of TextRenderLayer.Layout?(v51, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
LABEL_22:
    v39 = v84;
    goto LABEL_23;
  }

  v39 = v84;
  v52 = v87;
  outlined init with copy of TextRenderLayer.Layout?(v84 + v35, v87, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  if (v96(v52, 1, v50) != 1)
  {
    v58 = v85;
    outlined init with take of TextRenderLayer.Layout(v52, v85, type metadata accessor for TextRenderLayer.Layout);
    v59 = Text.Layout.Line.textLineFragment.getter();
    if (v59)
    {
      v60 = v59;
      v61 = v90;
      v62 = Text.Effect.Markers.layoutInfo(for:glyphOrigin:metrics:layoutAttributedString:)(v49, v90, *(v58 + *(v50 + 44)), v41);

      MEMORY[0x1EEE9AC00](v63);
      *(&v82 - 4) = v60;
      *(&v82 - 3) = a6;
      v80 = *&a7;
      v81 = v62;
      GraphicsContext.withCGContext(content:)();

      v64 = v61;
    }

    else
    {

      v64 = v90;
    }

    outlined destroy of TextRenderLayer.Layout?(v64, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
    outlined destroy of Text.Effect.Composition(v58, type metadata accessor for TextRenderLayer.Layout);
    goto LABEL_22;
  }

  outlined destroy of TextRenderLayer.Layout?(v90, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
  outlined destroy of TextRenderLayer.Layout?(v52, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
LABEL_23:
  a2 = v83;
LABEL_24:
  v65 = v91;
  v66 = type metadata accessor for Text.Effect.InteractionMetrics(0);
  (*(*(v66 - 8) + 56))(v48, 1, 1, v66);
  outlined init with copy of TextRenderLayer.Layout?(v39 + v35, v65, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  if (v96(v65, 1, v50) == 1)
  {
    outlined destroy of TextRenderLayer.Layout?(v48, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
    return outlined destroy of TextRenderLayer.Layout?(v65, &lazy cache variable for type metadata for TextRenderLayer.Layout?, type metadata accessor for TextRenderLayer.Layout);
  }

  v67 = v65;
  v68 = v89;
  outlined init with take of TextRenderLayer.Layout(v67, v89, type metadata accessor for TextRenderLayer.Layout);
  TextRenderLayer.correctionMarkers(for:)(a2, v69);
  if (!v70)
  {
    goto LABEL_38;
  }

  if (!*(v70 + 16))
  {

LABEL_38:
    outlined destroy of TextRenderLayer.Layout?(v48, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);
    v79 = v68;
    return outlined destroy of Text.Effect.Composition(v79, type metadata accessor for TextRenderLayer.Layout);
  }

  v71 = Text.Effect.Markers.layoutInfo(for:glyphOrigin:metrics:layoutAttributedString:)(v49, v48, *(v68 + *(v50 + 44)), v70);
  v72 = v71;
  v73 = *(v71 + 2);
  if (!v73)
  {
LABEL_36:

    outlined destroy of TextRenderLayer.Layout?(v94, &lazy cache variable for type metadata for Text.Effect.InteractionMetrics?, type metadata accessor for Text.Effect.InteractionMetrics);

    v79 = v89;
    return outlined destroy of Text.Effect.Composition(v79, type metadata accessor for TextRenderLayer.Layout);
  }

  v74 = 0;
  v75 = (v71 + 32);
  v76 = *(v71 + 2);
  while (v74 < v76)
  {
    if (v73 == v74)
    {
      goto LABEL_43;
    }

    outlined init with copy of Text.Effect.MarkerLayoutInfo.Element(v75, &v102);
    if (v103 == 1)
    {
      v77 = v102;
      outlined init with copy of TextEffectsAnimationController.Timing?(&v104, &v99, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
      if (!v100)
      {
        goto LABEL_44;
      }

      v78 = outlined init with take of Any(&v99, v101);
      MEMORY[0x1EEE9AC00](v78);
      *(&v82 - 4) = v77;
      *(&v82 - 3) = v101;
      v80 = &v102;
      GraphicsContext.withCGContext(content:)();
      __swift_destroy_boxed_opaque_existential_0(v101);
    }

    ++v74;
    outlined destroy of Text.Effect.MarkerLayoutInfo.Element(&v102);
    v76 = *(v72 + 2);
    v75 += 96;
    if (v74 == v76)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  outlined destroy of TextEffectsAnimationController.Timing?(&v99, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);

  LODWORD(v81) = 0;
  v80 = 1243;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void specialized TextRenderLayer.drawContent(_:)(char *a1, uint64_t isEscapingClosureAtFileLocation, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = isEscapingClosureAtFileLocation;
  v22 = a3;
  v23 = a4;
  v12 = *&a1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_animationController];
  swift_beginAccess();
  if (*(*(v12 + 112) + 56) == *&a1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_version])
  {
    if ([a1 delegate])
    {
      type metadata accessor for TextRenderSurface();
      v13 = swift_dynamicCastClass();
      if (v13)
      {
        v14 = v13;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v16 = Strong;
          v17 = swift_unknownObjectWeakLoadStrong();

          if (v17)
          {
            v8 = swift_allocObject();
            *(v8 + 16) = partial apply for closure #1 in TextLinesLayer.draw(in:);
            *(v8 + 24) = v20;
            aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
            v25 = v8;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
            aBlock[3] = &block_descriptor_84;
            v18 = _Block_copy(aBlock);
            a4 = v25;
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();

            _NSTextCustomRenderingDelegateWillDraw(v17, v14, v18);
            swift_unknownObjectRelease_n();
            swift_unknownObjectRelease_n();
            _Block_release(v18);
            LODWORD(v18) = swift_isEscapingClosureAtFileLocation();

            if (!v18)
            {
              return;
            }

            __break(1u);
          }
        }
      }

      swift_unknownObjectRelease();
    }

    v19 = [a3 contentsScale];
    MEMORY[0x1EEE9AC00](v19);
    *&v20[-16] = a3;
    *&v20[-8] = a4;
    EnvironmentValues.init()();
    static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)();
    (*(v9 + 8))(v11, v8);
  }
}

{
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = isEscapingClosureAtFileLocation;
  v22 = a3;
  v23 = a4;
  v12 = *&a1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_animationController];
  swift_beginAccess();
  if (*(*(v12 + 112) + 56) == *&a1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_version])
  {
    if ([a1 delegate])
    {
      type metadata accessor for TextRenderSurface();
      v13 = swift_dynamicCastClass();
      if (v13)
      {
        v14 = v13;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v16 = Strong;
          v17 = swift_unknownObjectWeakLoadStrong();

          if (v17)
          {
            v8 = swift_allocObject();
            *(v8 + 16) = partial apply for closure #1 in TextRunsLayer.draw(in:);
            *(v8 + 24) = v20;
            aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
            v25 = v8;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
            aBlock[3] = &block_descriptor_105;
            v18 = _Block_copy(aBlock);
            a3 = v25;
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();

            _NSTextCustomRenderingDelegateWillDraw(v17, v14, v18);
            swift_unknownObjectRelease_n();
            swift_unknownObjectRelease_n();
            _Block_release(v18);
            LODWORD(v18) = swift_isEscapingClosureAtFileLocation();

            if (!v18)
            {
              return;
            }

            __break(1u);
          }
        }
      }

      swift_unknownObjectRelease();
    }

    v19 = [a3 contentsScale];
    MEMORY[0x1EEE9AC00](v19);
    *&v20[-16] = a4;
    *&v20[-8] = a3;
    EnvironmentValues.init()();
    static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)();
    (*(v9 + 8))(v11, v8);
  }
}

void type metadata accessor for (Text.Layout.Line, CGPoint)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (Text.Layout.Line, CGPoint))
  {
    type metadata accessor for Text.Layout.Line();
    type metadata accessor for CGPoint(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Text.Layout.Line, CGPoint));
    }
  }
}

uint64_t outlined init with copy of TextEffectsAnimationController.Timing?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for [Text.Effect.Identifier](0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of TextEffectsAnimationController.Timing?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for [Text.Effect.Identifier](0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    (*(v1 + 8))();
  }

  return result;
}

void partial apply for closure #1 in TextRenderLayer.drawTextMarkersBackground(markers:line:glyphOrigin:ranges:metrics:in:)(const char *a1)
{
  partial apply for closure #1 in TextRenderLayer.drawTextMarkersBackground(markers:line:glyphOrigin:ranges:metrics:in:)(a1);
}

{
  closure #1 in TextRenderLayer.drawTextMarkersBackground(markers:line:glyphOrigin:ranges:metrics:in:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 48));
}

uint64_t objectdestroy_86Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7, v1);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges(unint64_t *a1, uint64_t a2, __n128 a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _SetStorage<Text.Effect.Identifier>(255, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, MEMORY[0x1E6981010], MEMORY[0x1E69E7BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void specialized TextRenderLayer.drawContent(_:)(char *a1, char *isEscapingClosureAtFileLocation, uint64_t *a3)
{
  v6 = type metadata accessor for Text.Effect.Composition(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = isEscapingClosureAtFileLocation;
  v22 = a3;
  v9 = *&a1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_animationController];
  swift_beginAccess();
  if (*(*(v9 + 112) + 56) == *&a1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_version])
  {
    if ([a1 delegate])
    {
      type metadata accessor for TextRenderSurface();
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        v11 = v10;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v13 = Strong;
          v14 = swift_unknownObjectWeakLoadStrong();

          if (v14)
          {
            a3 = swift_allocObject();
            a3[2] = closure #1 in DynamicEffectLayer.draw(in:)partial apply;
            a3[3] = v20;
            aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
            v24 = a3;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
            aBlock[3] = &block_descriptor_169;
            v15 = _Block_copy(aBlock);
            v8 = v24;
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();

            _NSTextCustomRenderingDelegateWillDraw(v14, v11, v15);
            swift_unknownObjectRelease_n();
            swift_unknownObjectRelease_n();
            _Block_release(v15);
            isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

            if (!isEscapingClosureAtFileLocation)
            {
              return;
            }

            __break(1u);
          }
        }
      }

      swift_unknownObjectRelease();
    }

    v16 = [isEscapingClosureAtFileLocation superlayer];
    if (v16)
    {
      v17 = v16;
      type metadata accessor for TextRenderLayer(0);
      if (swift_dynamicCastClass())
      {
        v18 = &isEscapingClosureAtFileLocation[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919418DynamicEffectLayer_content];
        swift_beginAccess();
        v19 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
        outlined init with copy of Text.Effect.Composition(&v18[*(v19 + 24)], v8, type metadata accessor for Text.Effect.Composition);
        TextRenderLayer.draw(composition:segmentIndex:in:)(v8, *&isEscapingClosureAtFileLocation[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919418DynamicEffectLayer_segmentIndex], a3);

        outlined destroy of Text.Effect.Composition(v8, type metadata accessor for Text.Effect.Composition);
      }

      else
      {
      }
    }
  }
}

{
  v6 = type metadata accessor for Text.Effect.Composition(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = isEscapingClosureAtFileLocation;
  v22 = a3;
  v9 = *&a1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_animationController];
  swift_beginAccess();
  if (*(*(v9 + 112) + 56) == *&a1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_version])
  {
    if ([a1 delegate])
    {
      type metadata accessor for TextRenderSurface();
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        v11 = v10;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v13 = Strong;
          v14 = swift_unknownObjectWeakLoadStrong();

          if (v14)
          {
            a3 = swift_allocObject();
            a3[2] = partial apply for closure #1 in StaticEffectLayer.draw(in:);
            a3[3] = v20;
            aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
            v24 = a3;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
            aBlock[3] = &block_descriptor_116;
            v15 = _Block_copy(aBlock);
            v8 = v24;
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();

            _NSTextCustomRenderingDelegateWillDraw(v14, v11, v15);
            swift_unknownObjectRelease_n();
            swift_unknownObjectRelease_n();
            _Block_release(v15);
            isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

            if (!isEscapingClosureAtFileLocation)
            {
              return;
            }

            __break(1u);
          }
        }
      }

      swift_unknownObjectRelease();
    }

    v16 = [isEscapingClosureAtFileLocation superlayer];
    if (v16)
    {
      v17 = v16;
      type metadata accessor for TextRenderLayer(0);
      if (swift_dynamicCastClass())
      {
        v18 = &isEscapingClosureAtFileLocation[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417StaticEffectLayer_content];
        swift_beginAccess();
        v19 = type metadata accessor for Text.Effect.RenderSegmentation.Effect(0);
        outlined init with copy of Text.Effect.Composition(&v18[*(v19 + 24)], v8, type metadata accessor for Text.Effect.Composition);
        TextRenderLayer.draw(composition:segmentIndex:in:)(v8, *&isEscapingClosureAtFileLocation[OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417StaticEffectLayer_segmentIndex], a3);

        outlined destroy of Text.Effect.Composition(v8, type metadata accessor for Text.Effect.Composition);
      }

      else
      {
      }
    }
  }
}

void specialized TextRenderLayer.drawContent(_:)(char *a1, void *a2, uint64_t *a3)
{
  v3 = a3;
  v4 = a2;
  v15[2] = a2;
  v15[3] = a3;
  v6 = *&a1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_animationController];
  swift_beginAccess();
  if (*(*(v6 + 112) + 56) == *&a1[OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_version])
  {
    if ([a1 delegate])
    {
      type metadata accessor for TextRenderSurface();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = v7;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v10 = Strong;
          v11 = swift_unknownObjectWeakLoadStrong();

          if (v11)
          {
            v3 = swift_allocObject();
            v3[2] = partial apply for closure #1 in SharedDynamicLayer.draw(in:);
            v3[3] = v15;
            aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
            aBlock[5] = v3;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
            aBlock[3] = &block_descriptor_161;
            v4 = _Block_copy(aBlock);
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();

            _NSTextCustomRenderingDelegateWillDraw(v11, v8, v4);
            swift_unknownObjectRelease_n();
            swift_unknownObjectRelease_n();
            _Block_release(v4);
            isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

            if (!isEscapingClosureAtFileLocation)
            {
              return;
            }

            __break(1u);
          }
        }
      }

      swift_unknownObjectRelease();
    }

    v13 = [v4 superlayer];
    if (v13)
    {
      v14 = v13;
      type metadata accessor for TextRenderLayer(0);
      if (swift_dynamicCastClass())
      {
        TextRenderLayer.drawShared(in:)(v3);
      }
    }
  }
}

double partial apply for closure #1 in TextRenderLayer.markedTextBounds(line:glyphOrigin:ranges:metrics:)()
{
  v1 = *(v0 + 96);
  swift_beginAccess();
  return v1;
}

void type metadata accessor for (UUID, NSTextLayoutFragment)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (UUID, NSTextLayoutFragment))
  {
    type metadata accessor for UUID();
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for NSTextLayoutFragment, 0x1E69DB820);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (UUID, NSTextLayoutFragment));
    }
  }
}

void specialized TextRenderLayer.init(coder:)()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_fragment) = 0;
  v1 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layout;
  v2 = type metadata accessor for TextRenderLayer.Layout(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_rawLayout;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_markers) = 0;
  *(v0 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_updateFlags) = 0;
  v4 = MEMORY[0x1E69E7CC8];
  *(v0 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_interactionMetrics) = MEMORY[0x1E69E7CC8];
  v5 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_segmentLayers) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_effectToSegmentsIndices) = v4;
  v6 = MEMORY[0x1E69E7CD0];
  *(v0 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_effectIdentifiers) = MEMORY[0x1E69E7CD0];
  *(v0 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_version) = -1;
  RangeSet.init()();
  *(v0 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_sharedDrawingLayer) = 0;
  *(v0 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_displacements) = v5;
  v7 = (v0 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutBounds);
  *v7 = 0u;
  v7[1] = 0u;
  v8 = (v0 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutBoundsNaturalOutsets);
  *v8 = 0u;
  v8[1] = 0u;
  *(v0 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_layoutLineFragmentPadding) = 0;
  v9 = (v0 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_currentDisplacement);
  *v9 = 0u;
  v9[1] = 0u;
  *(v0 + OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_activeIdentifiers) = v6;
  v10 = OBJC_IVAR____TtC20TextAnimationSupport15TextRenderLayer_time;
  *(v0 + v10) = CACurrentMediaTime();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized TextEffectsAnimationController.TimingMap.update(at:)(uint64_t a1, double a2)
{
  v15[1] = MEMORY[0x1E69E7CD0];
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
LABEL_10:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v9 << 6);
    v13 = *(a1 + 56) + 120 * v12;
    if ((*(v13 + 24) & 1) == 0)
    {
      if (*(v13 + 40))
      {
        v14 = a2;
        if (*(v13 + 40) == 1)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v14 = *(v13 + 32);
      }

      if (*(v13 + 16) <= v14 - *(v13 + 8))
      {
LABEL_4:
        specialized Set._Variant.insert(_:)(v15, *(*(a1 + 48) + 8 * v12));
      }
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
}

Swift::Int specialized closure #1 in _NativeSet.filter(_:)(Swift::Int result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = result;
  v6 = 0;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (2)
  {
    v26 = v6;
    while (1)
    {
      if (!v11)
      {
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
            goto LABEL_20;
          }

          v15 = *(v8 + 8 * v7);
          ++v14;
          if (v15)
          {
            v13 = __clz(__rbit64(v15));
            v11 = (v15 - 1) & v15;
            goto LABEL_12;
          }
        }

        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v16 = v13 | (v7 << 6);
      v17 = *(*(a3 + 48) + 8 * v16);
      swift_beginAccess();
      v18 = *(a4 + 80);
      if (!*(v18 + 16))
      {
        break;
      }

      v19 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
      if ((v20 & 1) == 0)
      {
        break;
      }

      v21 = *(*(v18 + 56) + 8 * v19);
      v22 = swift_endAccess();
      result = (*(*v21 + 96))(v22);
      if (result)
      {
        goto LABEL_17;
      }
    }

    result = swift_endAccess();
LABEL_17:
    *(v25 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    v6 = v26 + 1;
    if (!__OFADD__(v26, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_20:

  return specialized _NativeSet.extractSubset(using:count:)(v25, a2, v26, a3, v23);
}

Swift::Int specialized _NativeSet.filter(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v35 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = (8 * v8);

  if (v7 > 0xD)
  {
LABEL_24:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v29 = swift_slowAlloc();

      v27 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy7SwiftUI4TextV0K16AnimationSupportE6EffectO10IdentifierVG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab8VKXEfU_7i3UI4k5V0H16lm2E6n3O10O5V_TG5APxSbs5Error_pRi_zRi0_zlyAOIsgndzo_Tf1nc_n04_s20kl123Support0a7EffectsB10ControllerC17displayLinkUpdate33_EB92A35C21DD52D72B91A53CA74191942at14removeFinishedyAA4TimeV_SbtFSb7i10UI0A0VAAE6nzO7VXEfU0_AK0k7EffectsL10ControllerCTf1nnc_n(v29, v8, a1, a2);

      MEMORY[0x19A8BEB40](v29, -1, -1);

      return v27;
    }
  }

  v31 = v8;
  v32 = v3;
  v30[1] = v30;
  MEMORY[0x1EEE9AC00](v10);
  v33 = v30 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v33, v9);
  v12 = 0;
  v13 = 0;
  v3 = a1 + 56;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 56);
  v8 = (v14 + 63) >> 6;
  while (2)
  {
    v34 = v12;
    while (1)
    {
      if (!v16)
      {
        v18 = v13;
        while (1)
        {
          v13 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v13 >= v8)
          {
            goto LABEL_21;
          }

          v19 = *(v3 + 8 * v13);
          ++v18;
          if (v19)
          {
            v17 = __clz(__rbit64(v19));
            v16 = (v19 - 1) & v19;
            goto LABEL_13;
          }
        }

        __break(1u);
        goto LABEL_24;
      }

      v17 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_13:
      v20 = v17 | (v13 << 6);
      v21 = *(*(a1 + 48) + 8 * v20);
      swift_beginAccess();
      v9 = *(a2 + 80);
      if (!v9[2])
      {
        break;
      }

      v22 = specialized __RawDictionaryStorage.find<A>(_:)(v21);
      if ((v23 & 1) == 0)
      {
        break;
      }

      v9 = *(v9[7] + 8 * v22);
      v24 = swift_endAccess();
      if ((*(*v9 + 96))(v24))
      {
        goto LABEL_18;
      }
    }

    swift_endAccess();
LABEL_18:
    v25 = v34;
    *&v33[(v20 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v20;
    v26 = __OFADD__(v25, 1);
    v12 = v25 + 1;
    if (!v26)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_21:
  v27 = specialized _NativeSet.extractSubset(using:count:)(v33, v31, v34, a1, v11);

  return v27;
}

void type metadata accessor for _SetStorage<UUID>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _SetStorage<UUID>)
  {
    type metadata accessor for UUID();
    _s7SwiftUI4TextV6LayoutV4LineVAGSlAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v1 = type metadata accessor for _SetStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _SetStorage<UUID>);
    }
  }
}

void specialized TextEffectsRenderer.externalDisplayLink.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_animationController);
  *(v2 + 24) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (*(v2 + 40) == 1)
  {
    TextEffectsAnimationController.clearDisplayLink()();
    if ((*(v2 + 40) & 1) == 0)
    {
      *(v2 + 40) = 1;
      *(v2 + 56) = CACurrentMediaTime();
      if (!TextEffectsAnimationController.startExternalDisplayLink()())
      {
        TextEffectsAnimationController.startInternalDisplayLink()();
      }
    }
  }
}

uint64_t outlined assign with copy of Text.Effect.RenderSegmentation.Effect(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

void type metadata accessor for _NativeDictionary<Text.Effect.Identifier, Set<Int>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _NativeDictionary<Text.Effect.Identifier, Set<Int>>)
  {
    type metadata accessor for RangeSet<Int>(255, &lazy cache variable for type metadata for Set<Int>, MEMORY[0x1E69E6540], MEMORY[0x1E69E64E8]);
    lazy protocol witness table accessor for type Text.Effect.Identifier and conformance Text.Effect.Identifier(v1, v2, v3);
    v4 = type metadata accessor for _NativeDictionary();
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for _NativeDictionary<Text.Effect.Identifier, Set<Int>>);
    }
  }
}

void type metadata accessor for _SetStorage<Text.Effect.Identifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_12CoreGraphics7CGFloatVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for [Int : CGFloat](0, &lazy cache variable for type metadata for _DictionaryStorage<String, CGFloat>, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E6EC8]);
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySS12CoreGraphics7CGFloatVGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<String, [String : CGFloat]>(0);
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<CFStringRef, Any>(0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of Text.Effect.Composition(v4, &v11, type metadata accessor for (CFStringRef, Any));
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

void type metadata accessor for _DictionaryStorage<CFStringRef, Any>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<CFStringRef, Any>)
  {
    type metadata accessor for CFStringRef(255);
    _s7SwiftUI4TextV6LayoutV4LineVAGSlAAWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, &protocol conformance descriptor for CFStringRef);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<CFStringRef, Any>);
    }
  }
}

uint64_t outlined init with copy of Text.Effect.Composition(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for (CFStringRef, Any)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (CFStringRef, Any))
  {
    type metadata accessor for CFStringRef(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (CFStringRef, Any));
    }
  }
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TextEffectsAnimationController.Timing(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 113))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TextEffectsAnimationController.Timing(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TextEffectsAnimationController.Timing.PhaseConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for TextEffectsAnimationController.Timing.PhaseConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextEffectsAnimationController.Timing.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TextEffectsAnimationController.Timing.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for TextEffectsAnimationController.Timing.State(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for TextEffectsAnimationController.Timing.State(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for TextEffectsAnimationController.Duration(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for TextEffectsAnimationController.Duration(uint64_t result, int a2, int a3)
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

uint64_t getEnumTag for TextEffectsAnimationController.Duration(uint64_t a1)
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

uint64_t destructiveInjectEnumTag for TextEffectsAnimationController.Duration(uint64_t result, int a2)
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

char *specialized Text.Effect.Tokenizer.init(_:range:)(CFStringRef string, CFRange range)
{
  v2 = CFStringTokenizerCreate(0, string, range, 0, 0);
  Token = CFStringTokenizerAdvanceToNextToken(v2);
  v4 = MEMORY[0x1E69E7CC0];
  if (Token)
  {
    while (1)
    {
      CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v2);
      v6 = Text.Layout.CharacterIndex.init(_:)();
      result = (CurrentTokenRange.location + CurrentTokenRange.length);
      if (__OFADD__(CurrentTokenRange.location, CurrentTokenRange.length))
      {
        break;
      }

      result = Text.Layout.CharacterIndex.init(_:)();
      if (result < v6)
      {
        goto LABEL_11;
      }

      v8 = result;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
      }

      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v4);
      }

      *(v4 + 2) = v10 + 1;
      v11 = &v4[16 * v10];
      *(v11 + 4) = v6;
      *(v11 + 5) = v8;
      if (!CFStringTokenizerAdvanceToNextToken(v2))
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
LABEL_9:

    return v4;
  }

  return result;
}