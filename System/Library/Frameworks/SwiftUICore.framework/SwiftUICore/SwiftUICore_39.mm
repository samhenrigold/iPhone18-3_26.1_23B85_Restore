void DisplayList.ViewUpdater.updateItemViewAsync(platform:oldItem:oldState:newItem:newState:)(uint64_t *a1@<X0>, __int128 *a2@<X1>, float *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v286 = *MEMORY[0x1E69E9840];
  v11 = *a1;
  v12 = a2[3];
  v280 = a2[2];
  *v281 = v12;
  *&v281[12] = *(a2 + 60);
  v13 = *a2;
  v279 = a2[1];
  v278 = v13;
  v14 = a4[3];
  v284 = a4[2];
  *v285 = v14;
  *&v285[12] = *(a4 + 60);
  v15 = a4[1];
  v282 = *a4;
  v283 = v15;
  swift_beginAccess();
  if (*&v281[24] != *&v285[24])
  {
    goto LABEL_8;
  }

  v157 = a5;
  v158 = v11;
  v156 = a3;
  v16 = *(v7 + 104);
  v17 = *(v7 + 40);
  if (!*(v17 + 16))
  {
    goto LABEL_8;
  }

  v18 = *(v7 + 116);
  v150 = *(v7 + 112);
  v153 = *(v7 + 108);
  v19 = v150 | (v18 << 32);
  v149 = (v7 + 104);
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v16 | (v153 << 32), v19, v158 & 3);
  if ((v21 & 1) == 0)
  {
    goto LABEL_8;
  }

  v144 = v18;
  v148 = a6;
  v22 = (v7 + 40);
  v23 = *(v17 + 56) + (v20 << 7);
  v25 = *(v23 + 64);
  v24 = *(v23 + 80);
  v26 = *(v23 + 96);
  v165 = *(v23 + 112);
  v162 = v25;
  v28 = *(v23 + 32);
  v27 = *(v23 + 48);
  v29 = *(v23 + 16);
  v161[0] = *v23;
  v161[1] = v29;
  v161[2] = v28;
  v161[3] = v27;
  v163 = v24;
  v164 = v26;
  v30 = BYTE1(v165);
  v31 = v29;
  v32 = *&v161[0];
  v33 = *(v23 + 8);
  v34 = *(v23 + 24);
  v35 = *(v23 + 40);
  v277 = *(v23 + 56);
  v276 = v35;
  v275 = v34;
  v274 = v33;
  v36 = v7;
  v37 = v162;
  v38 = *(v23 + 65);
  v39 = *(v23 + 81);
  v273 = *(v23 + 97);
  v272 = v39;
  v271 = v38;
  v140 = BYTE1(v165);
  v40 = *(v23 + 114);
  v167 = *(v23 + 118);
  v166 = v40;
  v41 = *(&v165 + 1);
  *&v250 = v29;
  v147 = v22;
  *(&v250 + 1) = v22;
  LOWORD(v251) = v162;
  *(&v251 + 1) = 0x7FF0000000000000;
  LOBYTE(v252) = BYTE1(v165);
  *&v238 = *&v161[0];
  LOBYTE(v23) = *(v36 + 120);
  v143 = v36;
  v242 = *(v36 + 104);
  LOBYTE(v243) = v23;
  *&v260[32] = v280;
  *&v260[48] = *v281;
  *&v260[60] = *&v281[12];
  *&v260[16] = v279;
  *v260 = v278;
  v269 = v284;
  *v270 = *v285;
  *&v270[12] = *&v285[12];
  v268 = v283;
  v267 = v282;
  outlined init with copy of DisplayList.ViewUpdater.ViewInfo(v161, &v178);
  v42 = v31;
  if ((DisplayList.ViewUpdater.Platform.updateItemViewAsync(layer:index:oldItem:oldState:newItem:newState:)(&v250, &v242, v260, v156, &v267, v157) & 1) == 0)
  {
    v179 = v274;
    v180 = v275;
    v181 = v276;
    v184 = v271;
    v178 = v32;
    v182 = v277;
    v183 = v37;
    v185 = v272;
    v186 = v273;
    v187 = v140;
    v189 = v167;
    v188 = v166;
    v190 = v41;
    outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v178);

    a6 = v148;
LABEL_8:
    swift_endAccess();
    *a6 = 0;
    *(a6 + 8) = 1;
    return;
  }

  v43 = v252;
  v44 = *(&v251 + 1);
  if (v30 == v252)
  {
    v45 = *(&v165 + 1);

    if (v45 == v44)
    {
      v46 = *(&v162 + 1);
      goto LABEL_11;
    }
  }

  else
  {
  }

  v179 = v274;
  v180 = v275;
  v181 = v276;
  v184 = v271;
  v178 = v32;
  v182 = v277;
  v183 = v37;
  v185 = v272;
  v186 = v273;
  v187 = v43;
  v189 = v167;
  v188 = v166;
  v190 = v44;
  v46 = v271 >> 56;
  outlined init with copy of DisplayList.ViewUpdater.ViewInfo(&v178, v260);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v260 = *v147;
  *v147 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v178, v16 | (v153 << 32), v19, v158 & 3, isUniquelyReferenced_nonNull_native);
  *v147 = *v260;
LABEL_11:
  *&v260[8] = v274;
  *&v260[24] = v275;
  *&v260[40] = v276;
  *&v260[65] = v271;
  v48 = v284;
  v49 = v280;
  v50 = v284 != v280;
  *v260 = v32;
  *&v260[56] = v277;
  v260[64] = v37;
  v261 = v272;
  v262 = v273;
  v263 = v43;
  v264 = v166;
  v265 = v167;
  v266 = v44;
  outlined destroy of DisplayList.ViewUpdater.ViewInfo(v260);
  swift_endAccess();
  v168 = v46;
  v169 = v16;
  v170 = v153;
  v171 = v150;
  v172 = v144;
  v173 = v158 & 3;
  v174 = 0;
  v175 = v50;
  v176 = v43 ^ 1;
  v177 = v44;
  *(v143 + 192) &= (v43 ^ 1) & 1;
  v51 = *(&v280 + 1);
  v52 = *(&v284 + 1);
  v54 = *&v285[8];
  v53 = *v285;
  v254 = *(&v280 + 1);
  v255 = *v281;
  v256 = *&v281[16];
  v257 = *(&v284 + 1);
  v258 = *v285;
  v55 = v44;
  v259 = *&v285[16];
  if ((*&v281[16] & 0xC0000000) != 0x40000000 || (*&v285[16] & 0xC0000000) != 0x40000000)
  {
    outlined init with copy of DisplayList.Item(&v278, &v267);
    outlined init with copy of DisplayList.Item(&v282, &v267);
    outlined destroy of (DisplayList.Item.Value, DisplayList.Item.Value)(&v254, type metadata accessor for (DisplayList.Item.Value, DisplayList.Item.Value));
    v62 = v148;
LABEL_22:
    *v62 = v55;
    *(v62 + 8) = 0;
    return;
  }

  v154 = *&v281[8];
  if (v48 == v49 && (*(v143 + 193) & 1) != 0)
  {
    if (v281[4] == 7)
    {
      v56 = *(*(&v280 + 1) + 16);
      swift_beginAccess();
      v57 = *(v56 + 16);
      if (v57)
      {
        outlined init with copy of DisplayList.Item(&v278, &v267);
        outlined init with copy of DisplayList.Item(&v282, &v267);

        v58 = *(v56 + 48);
        v59 = *(v56 + 80);
        v269 = *(v56 + 64);
        *v270 = v59;
        *&v270[12] = *(v56 + 92);
        v60 = *(v56 + 32);
        v268 = v58;
        v267 = v60;
        DisplayList.Index.skip(item:)(&v267);
        v61 = v57 - 1;
        v62 = v148;
        if (v61)
        {
          v63 = (v56 + 112);
          do
          {
            v268 = v63[1];
            v269 = v63[2];
            *v270 = v63[3];
            *&v270[12] = *(v63 + 60);
            v64 = *v63;
            v63 += 5;
            v267 = v64;
            DisplayList.Index.skip(item:)(&v267);
            --v61;
          }

          while (v61);
        }
      }

      else
      {
        outlined init with copy of DisplayList.Item(&v278, &v267);
        outlined init with copy of DisplayList.Item(&v282, &v267);

        v62 = v148;
      }

      swift_endAccess();

      v100 = v154;
    }

    else
    {
      outlined init with copy of DisplayList.Item(&v278, &v267);
      outlined init with copy of DisplayList.Item(&v282, &v267);
      v100 = v154;

      v62 = v148;
    }

    swift_beginAccess();
    v123 = *(v100 + 16);
    if (v123)
    {
      v124 = *(v154 + 48);
      v125 = *(v154 + 80);
      v269 = *(v154 + 64);
      *v270 = v125;
      *&v270[12] = *(v154 + 92);
      v126 = *(v154 + 32);
      v268 = v124;
      v267 = v126;
      DisplayList.Index.skip(item:)(&v267);
      v127 = v123 - 1;
      if (v127)
      {
        v128 = (v154 + 112);
        do
        {
          v268 = v128[1];
          v269 = v128[2];
          *v270 = v128[3];
          *&v270[12] = *(v128 + 60);
          v129 = *v128;
          v128 += 5;
          v267 = v129;
          DisplayList.Index.skip(item:)(&v267);
          --v127;
        }

        while (v127);
      }
    }

    swift_endAccess();
    outlined destroy of (DisplayList.Item.Value, DisplayList.Item.Value)(&v254, type metadata accessor for (DisplayList.Item.Value, DisplayList.Item.Value));

    goto LABEL_22;
  }

  v137 = *v281;
  outlined init with copy of DisplayList.Item(&v278, &v267);
  outlined init with copy of DisplayList.Item(&v282, &v267);

  DisplayList.ViewUpdater.Model.State.reset()();
  DisplayList.ViewUpdater.Model.State.reset()();
  v65 = v154;
  v66 = *(v154 + 16);
  v62 = v148;
  if (v66 != *(v54 + 16))
  {
LABEL_90:

    outlined destroy of (DisplayList.Item.Value, DisplayList.Item.Value)(&v254, type metadata accessor for (DisplayList.Item.Value, DisplayList.Item.Value));
    v88 = 0.0;
    goto LABEL_91;
  }

  v134 = v52;
  v135 = v51;
  v136 = v53;
  if (!v66)
  {
    v68 = INFINITY;
LABEL_54:
    v92 = v53;

    if (BYTE4(v137) == 7)
    {
      v93 = v135;
      if (BYTE4(v53) == 7)
      {
        v146 = *(v135 + 16);
        v94 = *(v146 + 16);
        v142 = *(v134 + 16);
        v95 = *(v142 + 16);
        outlined copy of DisplayList.Effect(v135, v137, 7);
        outlined copy of DisplayList.Effect(v134, v136, 7);
        if (v94 != v95)
        {
          outlined destroy of (DisplayList.Item.Value, DisplayList.Item.Value)(&v254, type metadata accessor for (DisplayList.Item.Value, DisplayList.Item.Value));
          outlined consume of DisplayList.Effect(v135, v137, 7);
          v130 = v134;
LABEL_112:
          outlined consume of DisplayList.Effect(v130, v92, 7);
          v132 = 0.0;
LABEL_113:
          *v62 = v132;
          goto LABEL_92;
        }

        if (v94)
        {
          v96 = 0;
          v97 = (v146 + 32);
          v98 = (v142 + 32);
          v99 = INFINITY;
          while (1)
          {
            if (v96 >= *(v146 + 16))
            {
              goto LABEL_117;
            }

            v101 = v97[1];
            v102 = v97[2];
            v103 = v97[3];
            *&v253[12] = *(v97 + 60);
            v104 = *v97;
            *v253 = v103;
            v252 = v102;
            v250 = v104;
            v251 = v101;
            v247 = v97[1];
            v248 = v97[2];
            v249[0] = v97[3];
            *(v249 + 12) = *(v97 + 60);
            v246 = *v97;
            if (v96 >= *(v142 + 16))
            {
              goto LABEL_118;
            }

            v155 = v96;
            v105 = v98[1];
            v106 = v98[2];
            v107 = v98[3];
            *&v270[12] = *(v98 + 60);
            v108 = *v98;
            *v270 = v107;
            v269 = v106;
            v267 = v108;
            v268 = v105;
            v109 = v98[3];
            v244 = v98[2];
            *v245 = v109;
            *&v245[12] = *(v98 + 60);
            v110 = *v98;
            v243 = v98[1];
            v242 = v110;
            if (*&v270[24] != *&v253[24])
            {
              break;
            }

            v228 = v244;
            v229[0] = *v245;
            *(v229 + 12) = *&v245[12];
            v227 = v243;
            v226 = v242;
            v224 = v244;
            v225[0] = *v245;
            *(v225 + 12) = *&v245[12];
            v223 = v243;
            v222 = v242;
            *(v233 + 12) = *(v249 + 12);
            v233[0] = v249[0];
            v232 = v248;
            v230 = v246;
            v231 = v247;
            v220 = v248;
            v221[0] = v249[0];
            *(v221 + 12) = *(v249 + 12);
            v219 = v247;
            v218 = v246;
            outlined init with copy of DisplayList.Item(&v250, &v214);
            outlined init with copy of DisplayList.Item(&v267, &v214);
            outlined init with copy of DisplayList.Item(&v226, &v214);
            outlined init with copy of DisplayList.Item(&v230, &v214);
            v111 = DisplayList.Item.matchesTopLevelStructure(of:)(&v218);
            v236 = v220;
            v237[0] = v221[0];
            *(v237 + 12) = *(v221 + 12);
            v235 = v219;
            v234 = v218;
            outlined destroy of DisplayList.Item(&v234);
            v240 = v224;
            v241[0] = v225[0];
            *(v241 + 12) = *(v225 + 12);
            v239 = v223;
            v238 = v222;
            outlined destroy of DisplayList.Item(&v238);
            if (!v111)
            {
              v220 = v244;
              v221[0] = *v245;
              *(v221 + 12) = *&v245[12];
              v219 = v243;
              v218 = v242;
              outlined destroy of DisplayList.Item(&v218);
              v224 = v248;
              v225[0] = v249[0];
              *(v225 + 12) = *(v249 + 12);
              v223 = v247;
              v222 = v246;
              v131 = &v222;
              goto LABEL_111;
            }

            v112 = *&v245[24];
            if (*&v245[24])
            {
              v113 = 0;
              v139 = *(v143 + 104);
              v133 = *(v143 + 108);
              v114 = *(v143 + 112);
              v152 = *(v143 + 120);
              v115 = 1;
              *(v143 + 104) = *&v245[24];
            }

            else
            {
              v115 = 0;
              v112 = *(v143 + 104);
              v113 = *(v143 + 108) + 1;
              v114 = *(v143 + 112);
              v152 = *(v143 + 120);
              v139 = v112;
              v133 = v113;
            }

            *(v143 + 108) = v113;
            *(v143 + 120) = v115;
            *&v214 = v158;
            swift_beginAccess();
            DisplayList.ViewUpdater.ViewCache.prepare(item:platform:parentState:)(&v246, &v214, v156, &v218);
            v116 = *&v218;
            *(v143 + 104) = v112;
            *(v143 + 108) = v113;
            *(v143 + 112) = v114;
            *(v143 + 120) = v115;
            *&v218 = v158;
            DisplayList.ViewUpdater.ViewCache.prepare(item:platform:parentState:)(&v242, &v218, v157, &v160);
            swift_endAccess();
            v204 = v248;
            v205[0] = v249[0];
            *(v205 + 12) = *(v249 + 12);
            v202 = v246;
            v203 = v247;
            v198 = v248;
            v199[0] = v249[0];
            *(v199 + 12) = *(v249 + 12);
            v196 = v246;
            v197 = v247;
            *(v209 + 12) = *&v245[12];
            v208 = v244;
            v209[0] = *v245;
            v206 = v242;
            v207 = v243;
            v117 = v160;
            v159 = v158;
            v194 = v244;
            v195[0] = *v245;
            *(v195 + 12) = *&v245[12];
            v192 = v242;
            v193 = v243;
            outlined init with copy of DisplayList.Item(&v202, v191);
            outlined init with copy of DisplayList.Item(&v206, v191);
            DisplayList.ViewUpdater.updateInheritedViewAsync(platform:oldItem:oldParentState:newItem:newParentState:)(&v159, &v196, v156, &v192, v157, &v200);
            v212 = v194;
            v213[0] = v195[0];
            *(v213 + 12) = *(v195 + 12);
            v210 = v192;
            v211 = v193;
            outlined destroy of DisplayList.Item(&v210);
            v216 = v198;
            v217[0] = v199[0];
            *(v217 + 12) = *(v199 + 12);
            v214 = v196;
            v215 = v197;
            outlined destroy of DisplayList.Item(&v214);
            v220 = v244;
            v221[0] = *v245;
            *(v221 + 12) = *&v245[12];
            v219 = v243;
            v218 = v242;
            outlined destroy of DisplayList.Item(&v218);
            v224 = v248;
            v225[0] = v249[0];
            *(v225 + 12) = *(v249 + 12);
            v223 = v247;
            v222 = v246;
            outlined destroy of DisplayList.Item(&v222);
            if (v201)
            {
              *&v196 = __PAIR64__(v133, v139);
              *(&v196 + 1) = v114;
              LOBYTE(v197) = v152;
              v132 = v200;
              DisplayList.Index.leave(index:)(&v196, v200);
              outlined destroy of (DisplayList.Item.Value, DisplayList.Item.Value)(&v254, type metadata accessor for (DisplayList.Item.Value, DisplayList.Item.Value));
              outlined consume of DisplayList.Effect(v135, v137, 7);
              outlined consume of DisplayList.Effect(v134, v136, 7);
              v62 = v148;
              goto LABEL_113;
            }

            if (v116 >= v99)
            {
              v118 = v99;
            }

            else
            {
              v118 = v116;
            }

            if (v117 < v118)
            {
              v118 = v117;
            }

            if (v118 <= v200)
            {
              v99 = v118;
            }

            else
            {
              v99 = v200;
            }

            v119 = *(v143 + 120);
            v62 = v148;
            v93 = v135;
            v92 = v136;
            if ((v119 & 0xC) != 0)
            {
              v120 = *v149;
              if ((*(v143 + 120) & 4) != 0)
              {
                *(v143 + 104) = *(v143 + 112);
              }

              if ((v119 & 8) != 0)
              {
                *(v143 + 112) = v120;
              }
            }

            if (v119)
            {
              *(v143 + 104) = v139;
              *(v143 + 108) = v133;
            }

            if ((v119 & 2) != 0)
            {
              *(v143 + 112) = v114;
            }

            v96 = v155 + 1;
            *(v143 + 120) = v152;
            v98 += 5;
            v97 += 5;
            if (v94 == v155 + 1)
            {
              goto LABEL_106;
            }
          }

          v236 = v244;
          v237[0] = *v245;
          *(v237 + 12) = *&v245[12];
          v235 = v243;
          v234 = v242;
          outlined init with copy of DisplayList.Item(&v250, &v238);
          outlined init with copy of DisplayList.Item(&v267, &v238);
          outlined destroy of DisplayList.Item(&v234);
          v240 = v248;
          v241[0] = v249[0];
          *(v241 + 12) = *(v249 + 12);
          v239 = v247;
          v238 = v246;
          v131 = &v238;
LABEL_111:
          outlined destroy of DisplayList.Item(v131);
          outlined destroy of (DisplayList.Item.Value, DisplayList.Item.Value)(&v254, type metadata accessor for (DisplayList.Item.Value, DisplayList.Item.Value));
          outlined consume of DisplayList.Effect(v93, v137, 7);
          v130 = v134;
          goto LABEL_112;
        }

        v99 = INFINITY;
LABEL_106:
        outlined consume of DisplayList.Effect(v93, v137, 7);
        outlined consume of DisplayList.Effect(v134, v92, 7);
        if (v99 < v68)
        {
          v68 = v99;
        }

        goto LABEL_96;
      }

      outlined copy of DisplayList.Effect(v135, v137, 7);
      outlined copy of DisplayList.Effect(v134, v53, SBYTE4(v53));
      outlined consume of DisplayList.Effect(v135, v137, 7);
      v121 = v134;
    }

    else
    {
      outlined copy of DisplayList.Effect(v135, v137, SBYTE4(v137));
      outlined copy of DisplayList.Effect(v134, v53, SBYTE4(v53));
      v62 = v148;
      outlined consume of DisplayList.Effect(v135, v137, SBYTE4(v137));
      v121 = v134;
    }

    outlined consume of DisplayList.Effect(v121, v53, SBYTE4(v53));
LABEL_96:
    *&v250 = v68;
    swift_beginAccess();
    DisplayList.ViewUpdater.ViewCache.setNextUpdate(_:in:)(&v250, &v168);
    swift_endAccess();
    outlined destroy of (DisplayList.Item.Value, DisplayList.Item.Value)(&v254, type metadata accessor for (DisplayList.Item.Value, DisplayList.Item.Value));
    v55 = v177;
    goto LABEL_22;
  }

  v67 = 0;
  v68 = INFINITY;
  v69 = 32;
  v138 = *(v154 + 16);
  while (1)
  {
    if (v67 >= *(v65 + 16))
    {
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
    }

    v70 = *(v65 + v69 + 16);
    v71 = *(v65 + v69 + 32);
    v72 = *(v65 + v69 + 48);
    *&v253[12] = *(v65 + v69 + 60);
    v73 = *(v65 + v69);
    *v253 = v72;
    v252 = v71;
    v250 = v73;
    v251 = v70;
    v247 = *(v65 + v69 + 16);
    v248 = *(v65 + v69 + 32);
    v249[0] = *(v65 + v69 + 48);
    *(v249 + 12) = *(v65 + v69 + 60);
    v246 = *(v65 + v69);
    if (v67 >= *(v54 + 16))
    {
      goto LABEL_116;
    }

    v74 = *(v54 + v69 + 16);
    v75 = *(v54 + v69 + 32);
    v76 = *(v54 + v69 + 48);
    *&v270[12] = *(v54 + v69 + 60);
    v77 = *(v54 + v69);
    *v270 = v76;
    v269 = v75;
    v267 = v77;
    v268 = v74;
    v78 = *(v54 + v69 + 48);
    v244 = *(v54 + v69 + 32);
    *v245 = v78;
    *&v245[12] = *(v54 + v69 + 60);
    v79 = *(v54 + v69);
    v243 = *(v54 + v69 + 16);
    v242 = v79;
    if (*&v270[24] != *&v253[24])
    {
      v236 = v244;
      v237[0] = *v245;
      *(v237 + 12) = *&v245[12];
      v235 = v243;
      v234 = v242;
      outlined init with copy of DisplayList.Item(&v250, &v238);
      outlined init with copy of DisplayList.Item(&v267, &v238);
      outlined destroy of DisplayList.Item(&v234);
      v240 = v248;
      v241[0] = v249[0];
      *(v241 + 12) = *(v249 + 12);
      v239 = v247;
      v238 = v246;
      v122 = &v238;
LABEL_89:
      outlined destroy of DisplayList.Item(v122);
      goto LABEL_90;
    }

    v228 = v244;
    v229[0] = *v245;
    *(v229 + 12) = *&v245[12];
    v227 = v243;
    v226 = v242;
    v224 = v244;
    v225[0] = *v245;
    *(v225 + 12) = *&v245[12];
    v223 = v243;
    v222 = v242;
    *(v233 + 12) = *(v249 + 12);
    v233[0] = v249[0];
    v232 = v248;
    v230 = v246;
    v231 = v247;
    v220 = v248;
    v221[0] = v249[0];
    *(v221 + 12) = *(v249 + 12);
    v219 = v247;
    v218 = v246;
    outlined init with copy of DisplayList.Item(&v250, &v214);
    outlined init with copy of DisplayList.Item(&v267, &v214);
    outlined init with copy of DisplayList.Item(&v226, &v214);
    outlined init with copy of DisplayList.Item(&v230, &v214);
    v80 = DisplayList.Item.matchesTopLevelStructure(of:)(&v218);
    v236 = v220;
    v237[0] = v221[0];
    *(v237 + 12) = *(v221 + 12);
    v235 = v219;
    v234 = v218;
    outlined destroy of DisplayList.Item(&v234);
    v240 = v224;
    v241[0] = v225[0];
    *(v241 + 12) = *(v225 + 12);
    v239 = v223;
    v238 = v222;
    outlined destroy of DisplayList.Item(&v238);
    if (!v80)
    {
      v220 = v244;
      v221[0] = *v245;
      *(v221 + 12) = *&v245[12];
      v219 = v243;
      v218 = v242;
      outlined destroy of DisplayList.Item(&v218);
      v224 = v248;
      v225[0] = v249[0];
      *(v225 + 12) = *(v249 + 12);
      v223 = v247;
      v222 = v246;
      v122 = &v222;
      goto LABEL_89;
    }

    v81 = *&v245[24];
    if (*&v245[24])
    {
      v82 = 0;
      v145 = *(v143 + 104);
      v141 = *(v143 + 108);
      v83 = *(v143 + 112);
      v151 = *(v143 + 120);
      v84 = 1;
      *(v143 + 104) = *&v245[24];
    }

    else
    {
      v84 = 0;
      v81 = *(v143 + 104);
      v82 = *(v143 + 108) + 1;
      v83 = *(v143 + 112);
      v151 = *(v143 + 120);
      v145 = v81;
      v141 = v82;
    }

    *(v143 + 108) = v82;
    *(v143 + 120) = v84;
    *&v214 = v158;
    swift_beginAccess();
    DisplayList.ViewUpdater.ViewCache.prepare(item:platform:parentState:)(&v246, &v214, v156, &v218);
    v85 = *&v218;
    *(v143 + 104) = v81;
    *(v143 + 108) = v82;
    *(v143 + 112) = v83;
    *(v143 + 120) = v84;
    *&v218 = v158;
    DisplayList.ViewUpdater.ViewCache.prepare(item:platform:parentState:)(&v242, &v218, v157, &v160);
    swift_endAccess();
    v204 = v248;
    v205[0] = v249[0];
    *(v205 + 12) = *(v249 + 12);
    v202 = v246;
    v203 = v247;
    v198 = v248;
    v199[0] = v249[0];
    *(v199 + 12) = *(v249 + 12);
    v196 = v246;
    v197 = v247;
    *(v209 + 12) = *&v245[12];
    v208 = v244;
    v209[0] = *v245;
    v206 = v242;
    v207 = v243;
    v86 = v160;
    v159 = v158;
    v194 = v244;
    v195[0] = *v245;
    *(v195 + 12) = *&v245[12];
    v192 = v242;
    v193 = v243;
    outlined init with copy of DisplayList.Item(&v202, v191);
    outlined init with copy of DisplayList.Item(&v206, v191);
    DisplayList.ViewUpdater.updateInheritedViewAsync(platform:oldItem:oldParentState:newItem:newParentState:)(&v159, &v196, v156, &v192, v157, &v200);
    v212 = v194;
    v213[0] = v195[0];
    *(v213 + 12) = *(v195 + 12);
    v210 = v192;
    v211 = v193;
    outlined destroy of DisplayList.Item(&v210);
    v216 = v198;
    v217[0] = v199[0];
    *(v217 + 12) = *(v199 + 12);
    v214 = v196;
    v215 = v197;
    outlined destroy of DisplayList.Item(&v214);
    v220 = v244;
    v221[0] = *v245;
    *(v221 + 12) = *&v245[12];
    v219 = v243;
    v218 = v242;
    outlined destroy of DisplayList.Item(&v218);
    v224 = v248;
    v225[0] = v249[0];
    *(v225 + 12) = *(v249 + 12);
    v223 = v247;
    v222 = v246;
    outlined destroy of DisplayList.Item(&v222);
    v88 = v200;
    if (v201)
    {
      break;
    }

    if (v85 >= v68)
    {
      v89 = v68;
    }

    else
    {
      v89 = v85;
    }

    if (v86 < v89)
    {
      v89 = v86;
    }

    if (v89 <= v200)
    {
      v68 = v89;
    }

    else
    {
      v68 = v200;
    }

    v90 = *(v143 + 120);
    v62 = v148;
    v65 = v154;
    if ((v90 & 0xC) != 0)
    {
      v91 = *v149;
      if ((*(v143 + 120) & 4) != 0)
      {
        *(v143 + 104) = *(v143 + 112);
      }

      if ((v90 & 8) != 0)
      {
        *(v143 + 112) = v91;
      }
    }

    if (v90)
    {
      *(v143 + 104) = v145;
      *(v143 + 108) = v141;
    }

    if ((v90 & 2) != 0)
    {
      *(v143 + 112) = v83;
    }

    ++v67;
    *(v143 + 120) = v151;
    v69 += 80;
    if (v138 == v67)
    {
      goto LABEL_54;
    }
  }

  *&v196 = __PAIR64__(v141, v145);
  *(&v196 + 1) = v83;
  LOBYTE(v197) = v151;
  DisplayList.Index.leave(index:)(&v196, v87);

  outlined destroy of (DisplayList.Item.Value, DisplayList.Item.Value)(&v254, type metadata accessor for (DisplayList.Item.Value, DisplayList.Item.Value));
  v62 = v148;
LABEL_91:
  *v62 = v88;
LABEL_92:
  *(v62 + 8) = 1;
}

uint64_t DisplayList.ViewUpdater.Platform.updateItemViewAsync(layer:index:oldItem:oldState:newItem:newState:)(uint64_t a1, uint64_t a2, __int128 *a3, float *a4, __int128 *a5, __int128 *a6)
{
  v741 = *MEMORY[0x1E69E9840];
  v7 = *a3;
  v8 = a3[1];
  *&v732[12] = *(a3 + 60);
  v9 = a3[2];
  *v732 = a3[3];
  *&v731.tx = v9;
  *&v731.a = v7;
  *&v731.c = v8;
  v10 = *a5;
  v11 = a5[1];
  *&v734[12] = *(a5 + 60);
  v12 = a5[2];
  *v734 = a5[3];
  *&v733.tx = v12;
  *&v733.a = v10;
  *&v733.c = v11;
  v13 = *v6;
  v14 = *&v731.ty;
  v15 = v732[0];
  v16 = *(&v12 + 1);
  v17 = *v734;
  v735 = v731.ty;
  v736 = *v732;
  v737 = *&v732[16];
  v738 = *(&v12 + 1);
  v739 = *v734;
  v18 = *&v734[16] >> 30;
  v740 = *&v734[16];
  if (*&v734[16] >> 30 == 3)
  {
    if (!(*v734 | *(&v12 + 1) | *&v734[8]) && *&v734[16] == 3221225472)
    {
      goto LABEL_18;
    }

    v19 = *&v732[16] >> 30;
    if (*&v732[16] >> 30 == 3)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v19 = *&v732[16] >> 30;
    if (*&v732[16] >> 30 == 3 || v18 == 2)
    {
      goto LABEL_18;
    }
  }

  if (v19)
  {
    if (v19 == 1 && v18 == 1)
    {
      v20 = HIDWORD(*v732);
      v21 = HIDWORD(*v734);
      v644 = a1;
      if (*&v733.tx != *&v731.tx)
      {
        if (v732[4] == 3)
        {
          tx = v731.tx;
          v611 = v733.tx;
          v22 = a4;
          v23 = a6;
          if (v734[4] == 3)
          {
            v625 = HIDWORD(*v734);
            v635 = HIDWORD(*v732);
            v605 = v13;
            outlined init with copy of AnyTrackedValue(*&v731.ty + 16, &v710);
            outlined init with copy of AnyTrackedValue(v16 + 16, v704);
            d = v710.d;
            v187 = v710.tx;
            __swift_project_boxed_opaque_existential_1(&v710, *&v710.d);
            v600 = *(*&v187 + 24);
            outlined copy of DisplayList.Effect(v14, v15, 3);
            outlined copy of DisplayList.Effect(v16, v17, 3);
            outlined init with copy of DisplayList.Item(&v731, &v719);
            outlined init with copy of DisplayList.Item(&v733, &v719);
            outlined copy of DisplayList.Effect(v14, v15, 3);
            outlined copy of DisplayList.Effect(v16, v17, 3);
            v188 = v600(v704, *&d, *&v187);
            __swift_destroy_boxed_opaque_existential_1(v704);
            if (v188)
            {
              outlined consume of DisplayList.Effect(v16, v17, 3);
              outlined consume of DisplayList.Effect(v14, v15, 3);
              outlined destroy of (PaintType, ShapeType)(&v735, &lazy cache variable for type metadata for (DisplayList.Item.Value, DisplayList.Item.Value), &type metadata for DisplayList.Item.Value, &type metadata for DisplayList.Item.Value, type metadata accessor for (Path, FillStyle));
              __swift_destroy_boxed_opaque_existential_1(&v710);
              outlined consume of DisplayList.Effect(v14, v15, 3);
              outlined consume of DisplayList.Effect(v16, v17, 3);
              return 0;
            }

            __swift_destroy_boxed_opaque_existential_1(&v710);
            outlined consume of DisplayList.Effect(v14, v15, 3);
            outlined consume of DisplayList.Effect(v16, v17, 3);
            v13 = v605;
            LOBYTE(v20) = v635;
            LOBYTE(v21) = v625;
            goto LABEL_105;
          }

          outlined copy of DisplayList.Effect(*&v731.ty, v732[0], 3);
          outlined copy of DisplayList.Effect(v16, v734[0], v734[4]);
          outlined init with copy of DisplayList.Item(&v731, &v719);
          outlined init with copy of DisplayList.Item(&v733, &v719);
          outlined copy of DisplayList.Effect(v14, v15, 3);
          outlined copy of DisplayList.Effect(v16, v17, SBYTE4(v17));
          v213 = v14;
          v214 = v15;
          v215 = 3;
          goto LABEL_104;
        }

        if (v732[4] == 8)
        {
          v161 = *(*&v731.ty + 32);
          *v672 = *(*&v731.ty + 16);
          *&v672[16] = v161;
          *&v672[32] = *(*&v731.ty + 48);
          *&v672[48] = *(*&v731.ty + 64);
          if (v734[4] == 8)
          {
            v162 = *(*(&v12 + 1) + 32);
            *v664 = *(*(&v12 + 1) + 16);
            *&v664[16] = v162;
            *&v664[32] = *(*(&v12 + 1) + 48);
            v163 = *(*(&v12 + 1) + 64);
            v164 = *(a4 + 9);
            v165 = *(a4 + 7);
            *&v701[32] = *(a4 + 8);
            v702 = v164;
            v166 = *(a4 + 9);
            *v703 = *(a4 + 10);
            v167 = *(a4 + 5);
            v168 = *(a4 + 3);
            v699 = *(a4 + 16);
            v700 = v167;
            v169 = *(a4 + 5);
            v170 = *(a4 + 7);
            *v701 = *(a4 + 6);
            *&v701[16] = v170;
            v171 = *(a4 + 1);
            *&v697.a = *a4;
            *&v697.c = v171;
            v172 = *(a4 + 3);
            v174 = *a4;
            v173 = *(a4 + 1);
            *&v697.tx = *(a4 + 2);
            v698 = v172;
            *&v693[48] = *&v701[32];
            v694 = v166;
            *v695 = *(a4 + 10);
            *&v692[16] = v699;
            *v693 = v169;
            *&v693[16] = *v701;
            *&v693[32] = v165;
            *&v691.a = v174;
            *&v691.c = v173;
            *&v691.tx = *&v697.tx;
            *v692 = v168;
            v175 = a6[9];
            v176 = a6[7];
            *&v706[32] = a6[8];
            v707 = v175;
            v177 = a6[9];
            *v708 = a6[10];
            v178 = a6[5];
            v179 = a6[3];
            *&v704[64] = a6[4];
            v705 = v178;
            v180 = a6[5];
            v181 = a6[7];
            *v706 = a6[6];
            *&v706[16] = v181;
            v182 = a6[1];
            *v704 = *a6;
            *&v704[16] = v182;
            v183 = a6[3];
            v185 = *a6;
            v184 = a6[1];
            *&v704[32] = a6[2];
            *&v704[48] = v183;
            v724 = *&v706[32];
            v725 = v177;
            v726 = a6[10];
            *&v720[16] = *&v704[64];
            v721 = v180;
            v722 = *v706;
            v723 = v176;
            *&v719.a = v185;
            *&v719.c = v184;
            *&v664[48] = v163;
            *&v703[16] = *(a4 + 22);
            *&v695[16] = *(a4 + 22);
            *&v708[16] = *(a6 + 22);
            v727 = *(a6 + 22);
            *&v719.tx = *&v704[32];
            *v720 = v179;
            v648.a = v13;
            v683 = *v672;
            *v684 = *&v672[48];
            *&v655.a = *v664;
            *&v655.c = v162;
            *&v655.tx = *&v664[32];
            *&v656 = v163;
            outlined copy of DisplayList.Effect(*&v731.ty, v732[0], 8);
            outlined copy of DisplayList.Effect(v16, v734[0], 8);
            outlined init with copy of DisplayList.Item(&v731, &v710);
            outlined init with copy of DisplayList.Item(&v733, &v710);
            outlined copy of DisplayList.Effect(v14, v15, 8);
            outlined copy of DisplayList.Effect(v16, v17, 8);
            outlined init with copy of SDFShape(v664, &v710);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(&v697, &v710);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v704, &v710);
            DisplayList.ViewUpdater.Platform.updateSDFShapeViewAsync(_:oldState:oldShape:newState:newShape:contentsChanged:)(v644, &v691, &v683.a, &v719, &v655, 1);
            v655.a = v13;
            v710 = v731;
            *v711 = *v732;
            *&v711[12] = *&v732[12];
            v683 = v733;
            *v684 = *v734;
            *&v684[12] = *&v734[12];
            v25 = DisplayList.ViewUpdater.Platform.updateStateAsync(layer:oldItem:oldSize:oldState:newItem:newSize:newState:)(v644, &v710, &v691, &v683, &v719, v731.c, v731.d, v733.c, v733.d);
            outlined consume of DisplayList.Effect(v16, v17, 8);
            outlined consume of DisplayList.Effect(v14, v15, 8);
            outlined destroy of SDFShape(v664);
            outlined destroy of (PaintType, ShapeType)(&v735, &lazy cache variable for type metadata for (DisplayList.Item.Value, DisplayList.Item.Value), &type metadata for DisplayList.Item.Value, &type metadata for DisplayList.Item.Value, type metadata accessor for (Path, FillStyle));
            v715 = v724;
            v716 = v725;
            v717 = v726;
            v718 = v727;
            *&v711[16] = *&v720[16];
            v712 = v721;
            v713 = v722;
            v714 = v723;
            v710 = v719;
            *v711 = *v720;
            outlined destroy of DisplayList.ViewUpdater.Model.State(&v710);
            v724 = *&v693[48];
            v725 = v694;
            v726 = *v695;
            v727 = *&v695[16];
            *&v720[16] = *&v692[16];
            v721 = *v693;
            v722 = *&v693[16];
            v723 = *&v693[32];
            v719 = v691;
            *v720 = *v692;
            outlined destroy of DisplayList.ViewUpdater.Model.State(&v719);
            outlined consume of DisplayList.Effect(v14, v15, 8);
            outlined consume of DisplayList.Effect(v16, v17, 8);
            return v25;
          }

          tx = v731.tx;
          v611 = v733.tx;
          v22 = a4;
          v23 = a6;
          outlined copy of DisplayList.Effect(*&v731.ty, v732[0], 8);
          outlined copy of DisplayList.Effect(v16, v734[0], v734[4]);
          outlined init with copy of DisplayList.Item(&v731, &v719);
          outlined init with copy of DisplayList.Item(&v733, &v719);
          outlined copy of DisplayList.Effect(v14, v15, 8);
          outlined copy of DisplayList.Effect(v16, v17, SBYTE4(v17));
          v213 = v14;
          v214 = v15;
          v215 = 8;
          goto LABEL_104;
        }

        tx = v731.tx;
        v611 = v733.tx;
        v22 = a4;
        v23 = a6;
        if (v732[4] != 9)
        {
          outlined copy of DisplayList.Effect(*&v731.ty, v732[0], v732[4]);
          outlined copy of DisplayList.Effect(v16, v734[0], v734[4]);
          outlined init with copy of DisplayList.Item(&v731, &v719);
          outlined init with copy of DisplayList.Item(&v733, &v719);
          v197 = v14;
          v198 = v15;
LABEL_101:
          outlined copy of DisplayList.Effect(v197, v198, v20);
          outlined copy of DisplayList.Effect(v16, v17, v21);
          v213 = v14;
          v214 = v15;
          v215 = v20;
LABEL_104:
          outlined consume of DisplayList.Effect(v213, v214, v215);
          outlined consume of DisplayList.Effect(v16, v17, v21);
          goto LABEL_105;
        }

        v630 = HIDWORD(*v732);
        outlined init with copy of DisplayList.Item(&v731, &v719);
        outlined init with copy of DisplayList.Item(&v733, &v719);
        outlined copy of DisplayList.Effect(v14, v15, 9);
        outlined copy of DisplayList.Effect(v16, v17, SBYTE4(v17));
        v20 = v23;
        v24 = v22;
LABEL_87:
        if (BYTE4(v17) == 9)
        {
          v191 = v21;
          v192 = *(v14 + 88);
          v193 = *(v16 + 64);
          *&v680.tx = *(v16 + 48);
          v681 = v193;
          v682 = *(v16 + 80);
          v194 = *(v16 + 16);
          *&v680.c = *(v16 + 32);
          *&v680.a = v194;
          v195 = *(v16 + 88);
          v196 = *(v14 + 48);
          *&v719.c = *(v14 + 32);
          *&v719.tx = v196;
          *v720 = *(v14 + 64);
          *&v720[16] = *(v14 + 80);
          *&v719.a = *(v14 + 16);
          v22 = v24;
          v23 = v20;
          if (v192 > 1)
          {
            if (v192 != 2)
            {
              *&v20 = v13;
              v373 = *(v14 + 48);
              *&v704[16] = *(v14 + 32);
              *&v704[32] = v373;
              *&v704[48] = *(v14 + 64);
              *&v704[64] = *(v14 + 80);
              *v704 = *(v14 + 16);
              outlined copy of DisplayList.Effect(v14, v15, v630);
              outlined copy of DisplayList.Effect(v16, v17, 9);
              _Rotation3DEffect.Data.transform.getter(&v710);
LABEL_184:
              *v672 = v710;
              *&v672[48] = *v711;
              v673.n128_u64[0] = *&v711[16];
              if (v195 > 1)
              {
                if (v195 != 2)
                {
                  v697 = v680;
                  v698 = v681;
                  v699.n128_u64[0] = v682;
                  _Rotation3DEffect.Data.transform.getter(v704);
                  goto LABEL_189;
                }
              }

              else if (v195)
              {
                *v704 = v680;
                *&v704[48] = v681;
                *&v704[64] = v682;
LABEL_189:
                v655 = *v704;
                v656 = *&v704[48];
                v374 = *(v22 + 3);
                *v664 = *(v22 + 2);
                v657.n128_u64[0] = *&v704[64];
                *&v664[24] = v374;
                *&v664[16] = 0;
                *&v664[40] = 0;
                *&v664[48] = *(v22 + 4);
                v665.n128_u64[0] = 0x3FF0000000000000;
                ProjectionTransform.concatenating(_:)(v664, &v729);
                v375 = v23[3];
                *&v648.a = v23[2];
                v648.c = 0.0;
                *&v648.d = v375;
                v648.ty = 0.0;
                v649 = v23[4];
                v650.n128_u64[0] = 0x3FF0000000000000;
                v376 = ProjectionTransform.concatenating(_:)(&v648, v730);
                _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV6update_4from2toyxm_5ValueQzALtAA01_cd1_ef1_gH8PropertyRzSQALRQlFAE0H19ProjectionTransformO_Ttg5(&v729.value.rect.origin.x, v730, v376);
              }

              outlined consume of DisplayList.Effect(v14, v15, v630);
              outlined consume of DisplayList.Effect(v16, v17, 9);
              v13 = *&v20;
              LOBYTE(v20) = v630;
              LOBYTE(v21) = v191;
LABEL_105:
              if (*(v23 + 26) == *(v22 + 26))
              {
                v216 = v23;
                v217 = v22;
                v218 = *&v731.c;
                height = v733.d;
                c = v733.c;
                v221 = *(v23 + 2);
                if (v221 != v22[2])
                {
                  _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE7OpacityO_Tt0g5(v221);
                  v217 = v22;
                  v216 = v23;
                }

                v222 = v644;
                if (*(v216 + 17) == *(v217 + 17))
                {
                  v626 = v21;
                  v636 = v20;
                  if (*(v216 + 20) != *(v217 + 20))
                  {
                    v719.a = *(v217 + 11);
                    v710.a = *(v216 + 11);
                    if (*(v644 + 16) == 9)
                    {
                      v223 = v216;
                      v224 = v217;

                      v601 = specialized Array<A>.popColorMultiply(drawable:)(&v719, v644);
                      v597 = v225;
                      v227 = v226;

                      v228 = specialized Array<A>.popColorMultiply(drawable:)(&v710, v644);
                      v594 = v229;
                      v231 = v230;

                      if ((v231 & 0x100000000) == 0 || (v217 = v224, v216 = v223, (v227 & 0x100000000) == 0))
                      {
                        _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV6update_4from2toyxm_5ValueQzALtAA01_cd1_ef1_gH8PropertyRzSQALRQlFAE21ContentsMultiplyColorO_Ttg5(v601, v597, v227 | ((HIDWORD(v227) & 1) << 32), v228, v594, v231 | ((HIDWORD(v231) & 1) << 32));
                        v217 = v224;
                        v216 = v223;
                      }
                    }

                    v232 = v217;
                    v233 = *(v217 + 11);
                    v234 = v216;
                    v235 = *(v216 + 11);

                    specialized static GraphicsFilter.updateAsync(layer:oldFilters:newFilters:)(v644, v233, v235);
                    v237 = v236;

                    if ((v237 & 1) == 0)
                    {
LABEL_216:
                      outlined destroy of (PaintType, ShapeType)(&v735, &lazy cache variable for type metadata for (DisplayList.Item.Value, DisplayList.Item.Value), &type metadata for DisplayList.Item.Value, &type metadata for DisplayList.Item.Value, type metadata accessor for (Path, FillStyle));
                      outlined consume of DisplayList.Effect(v16, v17, v626);
                      outlined consume of DisplayList.Effect(v14, v15, v636);
                      return 0;
                    }

                    v222 = v644;
                    v216 = v234;
                    v217 = v232;
                  }

                  if (*(v216 + 19) == *(v217 + 19) && *(v216 + 18) == *(v217 + 18) || (v719.a = v13, v238 = v222, v239 = v216, v240 = v217, v241 = DisplayList.ViewUpdater.Platform.updateClipShapesAsync(layer:oldState:newState:)(v222, v217, v216), v217 = v240, v216 = v239, v222 = v238, (v241 & 1) != 0))
                  {
                    v602 = v216;
                    v595 = *(v217 + 16);
                    v598 = v216[4];
                    origin = 0;
                    v243 = v222;
                    v244 = *(v222 + 17);
                    if ((v244 & 8) != 0)
                    {
                      v325 = *(v217 + 9);
                      v326 = *(v217 + 7);
                      v715 = *(v217 + 8);
                      v716 = v325;
                      v327 = *(v217 + 9);
                      v717 = *(v217 + 10);
                      v328 = *(v217 + 5);
                      v329 = *(v217 + 3);
                      *&v711[16] = *(v217 + 4);
                      v712 = v328;
                      v330 = *(v217 + 5);
                      v331 = *(v217 + 7);
                      v713 = *(v217 + 6);
                      v714 = v331;
                      v332 = *(v217 + 1);
                      *&v710.a = *v217;
                      *&v710.c = v332;
                      v333 = *(v217 + 3);
                      v335 = *v217;
                      v334 = *(v217 + 1);
                      *&v710.tx = *(v217 + 2);
                      *v711 = v333;
                      *&v706[32] = v715;
                      v707 = v327;
                      *v708 = *(v217 + 10);
                      *&v704[64] = *&v711[16];
                      v705 = v330;
                      *v706 = v713;
                      *&v706[16] = v326;
                      *v704 = v335;
                      *&v704[16] = v334;
                      v718 = *(v217 + 22);
                      v245 = v217;
                      *&v708[16] = *(v217 + 22);
                      *&v704[32] = *&v710.tx;
                      *&v704[48] = v329;
                      DisplayList.ViewUpdater.Model.State.clipRect()(&v709);
                      v724 = *&v706[32];
                      v725 = v707;
                      v726 = *v708;
                      v727 = *&v708[16];
                      *&v720[16] = *&v704[64];
                      v721 = v705;
                      v722 = *v706;
                      v723 = *&v706[16];
                      v719 = *v704;
                      *v720 = *&v704[48];
                      outlined init with copy of DisplayList.ViewUpdater.Model.State(&v710, &v697);
                      outlined destroy of DisplayList.ViewUpdater.Model.State(&v719);
                      if (v709.value.style == SwiftUI_RoundedCornerStyle_unknownDefault || (v336 = *(v602 + 144), v337 = *(v602 + 112), *&v701[32] = *(v602 + 128), v702 = v336, v338 = *(v602 + 144), *v703 = *(v602 + 160), v339 = *(v602 + 80), v340 = *(v602 + 48), v699 = *(v602 + 64), v700 = v339, v341 = *(v602 + 80), v342 = *(v602 + 112), *v701 = *(v602 + 96), *&v701[16] = v342, v343 = *(v602 + 16), *&v697.a = *v602, *&v697.c = v343, v344 = *(v602 + 48), v346 = *v602, v345 = *(v602 + 16), *&v697.tx = *(v602 + 32), v698 = v344, *&v693[48] = *&v701[32], v694 = v338, *v695 = *(v602 + 160), *&v692[16] = v699, *v693 = v341, *&v693[16] = *v701, *&v693[32] = v337, v347 = v709.value.rect.size.height, width = v709.value.rect.size.width, *&v691.a = v346, *&v691.c = v345, v590 = v709.value.rect.origin, *&v703[16] = *(v602 + 176), *&v695[16] = *(v602 + 176), *&v691.tx = *&v697.tx, *v692 = v340, DisplayList.ViewUpdater.Model.State.clipRect()(&v696), *&v706[32] = *&v693[48], v707 = v694, *v708 = *v695, *&v708[16] = *&v695[16], *&v704[64] = *&v692[16], v705 = *v693, *v706 = *&v693[16], *&v706[16] = *&v693[32], *v704 = v691, *&v704[48] = *v692, outlined init with copy of DisplayList.ViewUpdater.Model.State(&v697, &v683), outlined destroy of DisplayList.ViewUpdater.Model.State(v704), v696.value.style == SwiftUI_RoundedCornerStyle_unknownDefault))
                      {
                        v247 = *(&v218 + 1);
                        v246 = *&v218;
                        v248 = 0;
                        origin = 0;
                      }

                      else
                      {
                        height = v696.value.rect.size.height;
                        c = v696.value.rect.size.width;
                        origin = v696.value.rect.origin;
                        v248 = v590;
                        v595 = vaddq_f64(v595, v590);
                        v598 = vaddq_f64(v598, v696.value.rect.origin);
                        v246 = width;
                        v247 = v347;
                      }
                    }

                    else
                    {
                      v245 = v217;
                      v247 = *(&v218 + 1);
                      v246 = *&v218;
                      v248 = 0;
                    }

                    y = origin.y;
                    v401 = v248.y;
                    x = origin.x;
                    v747.origin.x = origin.x;
                    v747.origin.y = origin.y;
                    v747.size.width = c;
                    v747.size.height = height;
                    v402 = CGRectEqualToRect(v747, *&v248.x);
                    if (v402)
                    {
                      v403 = v243;
                      if ((v244 & 4) != 0)
                      {
                        goto LABEL_218;
                      }

                      goto LABEL_207;
                    }

                    v407 = *(v243 + 16);
                    if (v407 != 15 && v407 != 16 && v407 != 17)
                    {
                      _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE6BoundsO_Tt0g5(x, y, c, height);
                      v403 = v243;
                      if (*(v243 + 16) == 14)
                      {
                        _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV12setMaskValue_3fory0K0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE6BoundsO_Tt0g5(x, y, c, height);
                        v403 = v243;
                      }

                      if ((v244 & 4) != 0)
                      {
                        goto LABEL_224;
                      }

LABEL_207:
                      v404 = v595;
                      if (v598.n128_f64[0] != v595.f64[0] || (v404.n128_u64[0] = *&v595.f64[1], v598.n128_f64[1] != v595.f64[1]))
                      {
                        _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE8PositionO_Tt0g5(v598, v598.n128_f64[1], v404);
                      }

                      v405 = *(v245 + 3);
                      *v704 = *(v245 + 2);
                      *&v704[16] = v405;
                      *&v704[32] = 0uLL;
                      v406 = *(v602 + 48);
                      *&v697.a = *(v602 + 32);
                      *&v697.c = v406;
                      *&v697.tx = 0uLL;
                      if (static CGAffineTransform.== infix(_:_:)())
                      {
                        v403 = v243;
                        if (!v402)
                        {
                          goto LABEL_224;
                        }
                      }

                      else
                      {
                        _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE15AffineTransformO_Tt0g5(&v697);
                        v403 = v243;
                        if (!v402)
                        {
LABEL_224:
                          v408 = 1;
                          v409 = v602;
                          v410 = v245;
                          goto LABEL_225;
                        }
                      }

LABEL_218:
                      v408 = 0;
                      v409 = v602;
                      v410 = v245;
                      if (*&v611 == *&tx)
                      {
                        v411 = v636;
                        v412 = v626;
                        if (*(v602 + 168) == *(v245 + 21))
                        {
                          outlined destroy of (PaintType, ShapeType)(&v735, &lazy cache variable for type metadata for (DisplayList.Item.Value, DisplayList.Item.Value), &type metadata for DisplayList.Item.Value, &type metadata for DisplayList.Item.Value, type metadata accessor for (Path, FillStyle));
                          outlined consume of DisplayList.Effect(v16, v17, v626);
                          outlined consume of DisplayList.Effect(v14, v15, v636);
                          return 1;
                        }

                        goto LABEL_226;
                      }

LABEL_225:
                      v411 = v636;
                      v412 = v626;
LABEL_226:
                      v691.a = v13;
                      v719 = v731;
                      *v720 = *v732;
                      *&v720[12] = *&v732[12];
                      v710 = v733;
                      *v711 = *v734;
                      *&v711[12] = *&v734[12];
                      v413 = DisplayList.ViewUpdater.Platform.updateShadowAsync(layer:oldState:oldItem:newState:newItem:boundsChanged:)(v403, v410, &v719, v409, &v710, v408);
                      outlined destroy of (PaintType, ShapeType)(&v735, &lazy cache variable for type metadata for (DisplayList.Item.Value, DisplayList.Item.Value), &type metadata for DisplayList.Item.Value, &type metadata for DisplayList.Item.Value, type metadata accessor for (Path, FillStyle));
                      outlined consume of DisplayList.Effect(v16, v17, v412);
                      outlined consume of DisplayList.Effect(v14, v15, v411);
                      return (v413 & 1) != 0;
                    }
                  }

                  goto LABEL_216;
                }
              }

              outlined destroy of (PaintType, ShapeType)(&v735, &lazy cache variable for type metadata for (DisplayList.Item.Value, DisplayList.Item.Value), &type metadata for DisplayList.Item.Value, &type metadata for DisplayList.Item.Value, type metadata accessor for (Path, FillStyle));
              outlined consume of DisplayList.Effect(v16, v17, v21);
              outlined consume of DisplayList.Effect(v14, v15, v20);
              return 0;
            }
          }

          else if (v192)
          {
            *&v20 = v13;
            outlined copy of DisplayList.Effect(v14, v15, v630);
            outlined copy of DisplayList.Effect(v16, v17, 9);
            v710 = v719;
            *v711 = *v720;
            *&v711[16] = *&v720[16];
            goto LABEL_184;
          }

          LOBYTE(v20) = v630;
          outlined copy of DisplayList.Effect(v14, v15, v630);
          outlined copy of DisplayList.Effect(v16, v17, 9);
          outlined consume of DisplayList.Effect(v14, v15, v630);
          outlined consume of DisplayList.Effect(v16, v17, 9);
          LOBYTE(v21) = v191;
          goto LABEL_105;
        }

        v22 = v24;
        v23 = v20;
        v197 = v14;
        v198 = v15;
        LOBYTE(v20) = v630;
        goto LABEL_101;
      }

      if (v732[4] == 9)
      {
        v621 = HIDWORD(*v734);
        v630 = HIDWORD(*v732);
        v21 = a4;
        v20 = a6;
        if (*(*&v731.ty + 88) > 1u)
        {
          if (*(*&v731.ty + 88) != 2)
          {
            tx = v731.tx;
            v611 = v733.tx;
            v189 = *(*&v731.ty + 48);
            *&v710.c = *(*&v731.ty + 32);
            *&v710.tx = v189;
            *v711 = *(*&v731.ty + 64);
            *&v711[16] = *(*&v731.ty + 80);
            *&v710.a = *(*&v731.ty + 16);
            outlined init with copy of DisplayList.Item(&v731, &v719);
            outlined init with copy of DisplayList.Item(&v733, &v719);
            outlined copy of DisplayList.Effect(v14, v15, 9);
            outlined copy of DisplayList.Effect(v16, v17, v621);
            _Rotation3DEffect.Data.transform.getter(&v728);
            goto LABEL_85;
          }
        }

        else if (*(*&v731.ty + 88))
        {
          tx = v731.tx;
          v611 = v733.tx;
          outlined init with copy of DisplayList.Item(&v731, &v719);
          outlined init with copy of DisplayList.Item(&v733, &v719);
          outlined copy of DisplayList.Effect(v14, v15, 9);
          outlined copy of DisplayList.Effect(v16, v17, v621);
LABEL_85:
          v24 = v21;
          v190 = *(v21 + 18);
          LOBYTE(v21) = v621;
          if (v190 != *(v20 + 18))
          {
            goto LABEL_87;
          }

          v21 = v24;
          outlined consume of DisplayList.Effect(v16, v17, v621);
          outlined consume of DisplayList.Effect(v14, v15, 9);
LABEL_35:
          v70 = *(v644 + 17);
          if ((v70 & 0x20) == 0)
          {
            outlined destroy of (PaintType, ShapeType)(&v735, &lazy cache variable for type metadata for (DisplayList.Item.Value, DisplayList.Item.Value), &type metadata for DisplayList.Item.Value, &type metadata for DisplayList.Item.Value, type metadata accessor for (Path, FillStyle));
            if (*(v20 + 26) != *(v21 + 26))
            {
              return 0;
            }

            v71 = v20;
            v72 = v21;
            v73 = *&v731.c;
            v74 = v733.d;
            v75 = v733.c;
            v76 = *(v20 + 2);
            if (v76 != v21[2])
            {
              _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE7OpacityO_Tt0g5(v76);
              v72 = v21;
              v71 = v20;
            }

            if (*(v71 + 17) != *(v72 + 17))
            {
              return 0;
            }

            if (*(v71 + 20) != *(v72 + 20))
            {
              v77 = v13;
              v719.a = *(v72 + 11);
              v710.a = *(v71 + 11);
              if (*(v644 + 16) == 9)
              {
                v78 = v71;
                v79 = v72;

                v632 = specialized Array<A>.popColorMultiply(drawable:)(&v719, v644);
                v81 = v80;
                v83 = v82;

                v84 = specialized Array<A>.popColorMultiply(drawable:)(&v710, v644);
                v86 = v85;
                v88 = v87;

                if ((v88 & 0x100000000) == 0 || (v72 = v79, v71 = v78, (v83 & 0x100000000) == 0))
                {
                  _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV6update_4from2toyxm_5ValueQzALtAA01_cd1_ef1_gH8PropertyRzSQALRQlFAE21ContentsMultiplyColorO_Ttg5(v632, v81, v83 | ((HIDWORD(v83) & 1) << 32), v84, v86, v88 | ((HIDWORD(v88) & 1) << 32));
                  v72 = v79;
                  v71 = v78;
                }
              }

              v89 = *(v72 + 11);
              v90 = *(v71 + 11);
              v91 = v71;
              v92 = v72;

              specialized static GraphicsFilter.updateAsync(layer:oldFilters:newFilters:)(v644, v89, v90);
              v94 = v93;

              v72 = v92;
              v71 = v91;
              v13 = v77;
              if ((v94 & 1) == 0)
              {
                return 0;
              }
            }

            if (*(v71 + 19) != *(v72 + 19) || *(v71 + 18) != *(v72 + 18))
            {
              v719.a = v13;
              v95 = v71;
              v96 = v72;
              v97 = DisplayList.ViewUpdater.Platform.updateClipShapesAsync(layer:oldState:newState:)(v644, v72, v71);
              v72 = v96;
              v71 = v95;
              if ((v97 & 1) == 0)
              {
                return 0;
              }
            }

            v98 = v71;
            v623 = *(v72 + 16);
            v633 = v71[4];
            v99 = 0uLL;
            if ((v70 & 8) != 0)
            {
              v349 = *(v72 + 9);
              v350 = *(v72 + 7);
              v715 = *(v72 + 8);
              v716 = v349;
              v351 = *(v72 + 9);
              v717 = *(v72 + 10);
              v352 = *(v72 + 5);
              v353 = *(v72 + 3);
              *&v711[16] = *(v72 + 4);
              v712 = v352;
              v354 = *(v72 + 5);
              v355 = *(v72 + 7);
              v713 = *(v72 + 6);
              v714 = v355;
              v356 = *(v72 + 1);
              *&v710.a = *v72;
              *&v710.c = v356;
              v357 = *(v72 + 3);
              v359 = *v72;
              v358 = *(v72 + 1);
              *&v710.tx = *(v72 + 2);
              *v711 = v357;
              *&v706[32] = v715;
              v707 = v351;
              *v708 = *(v72 + 10);
              *&v704[64] = *&v711[16];
              v705 = v354;
              *v706 = v713;
              *&v706[16] = v350;
              *v704 = v359;
              *&v704[16] = v358;
              v718 = *(v72 + 22);
              v100 = v72;
              *&v708[16] = *(v72 + 22);
              *&v704[32] = *&v710.tx;
              *&v704[48] = v353;
              DisplayList.ViewUpdater.Model.State.clipRect()(v672);
              v724 = *&v706[32];
              v725 = v707;
              v726 = *v708;
              v727 = *&v708[16];
              *&v720[16] = *&v704[64];
              v721 = v705;
              v722 = *v706;
              v723 = *&v706[16];
              v719 = *v704;
              *v720 = *&v704[48];
              outlined init with copy of DisplayList.ViewUpdater.Model.State(&v710, &v697);
              outlined destroy of DisplayList.ViewUpdater.Model.State(&v719);
              if (v672[48] == 2 || (v360 = *(v98 + 144), v361 = *(v98 + 112), *&v701[32] = *(v98 + 128), v702 = v360, v362 = *(v98 + 144), *v703 = *(v98 + 160), v363 = *(v98 + 80), v364 = *(v98 + 48), v699 = *(v98 + 64), v700 = v363, v365 = *(v98 + 80), v366 = *(v98 + 112), *v701 = *(v98 + 96), *&v701[16] = v366, v367 = *(v98 + 16), *&v697.a = *v98, *&v697.c = v367, v368 = *(v98 + 48), v370 = *v98, v369 = *(v98 + 16), *&v697.tx = *(v98 + 32), v698 = v368, *&v693[48] = *&v701[32], v694 = v362, *v695 = *(v98 + 160), *&v692[16] = v699, *v693 = v365, *&v693[16] = *v701, *&v693[32] = v361, v371 = *&v672[24], v372 = *&v672[16], *&v691.a = v370, *&v691.c = v369, v614 = *v672, *&v703[16] = *(v98 + 176), *&v695[16] = *(v98 + 176), *&v691.tx = *&v697.tx, *v692 = v364, DisplayList.ViewUpdater.Model.State.clipRect()(v664), *&v706[32] = *&v693[48], v707 = v694, *v708 = *v695, *&v708[16] = *&v695[16], *&v704[64] = *&v692[16], v705 = *v693, *v706 = *&v693[16], *&v706[16] = *&v693[32], *v704 = v691, *&v704[48] = *v692, outlined init with copy of DisplayList.ViewUpdater.Model.State(&v697, &v683), outlined destroy of DisplayList.ViewUpdater.Model.State(v704), v664[48] == 2))
              {
                v102 = *(&v73 + 1);
                v101 = v73;
                v103 = 0uLL;
                v99 = 0uLL;
              }

              else
              {
                v74 = *&v664[24];
                v75 = *&v664[16];
                v99 = *v664;
                v103 = v614;
                v623 = vaddq_f64(v623, v614);
                v633 = vaddq_f64(v633, *v664);
                v101 = v372;
                v102 = v371;
              }
            }

            else
            {
              v100 = v72;
              v102 = *(&v73 + 1);
              v101 = v73;
              v103 = 0uLL;
            }

            v414 = *(&v99 + 1);
            v415 = v103.f64[1];
            v615 = *&v99;
            *&v748.origin.x = v99;
            v748.origin.y = *(&v99 + 1);
            v748.size.width = v75;
            v748.size.height = v74;
            v416 = CGRectEqualToRect(v748, *v103.f64);
            if (v416)
            {
              v417 = v644;
              if ((v70 & 4) != 0)
              {
LABEL_243:
                v422 = v98;
                v423 = v100;
                if (*(v98 + 168) == *(v100 + 21) && *&v733.tx == *&v731.tx)
                {
                  return 1;
                }

                v421 = 0;
LABEL_246:
                v691.a = v13;
                v719 = v731;
                *v720 = *v732;
                *&v720[12] = *&v732[12];
                v710 = v733;
                *v711 = *v734;
                *&v711[12] = *&v734[12];
                return (DisplayList.ViewUpdater.Platform.updateShadowAsync(layer:oldState:oldItem:newState:newItem:boundsChanged:)(v417, v423, &v719, v422, &v710, v421) & 1) != 0;
              }
            }

            else
            {
              if (*(v644 + 16) - 15 < 3)
              {
                return 0;
              }

              _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE6BoundsO_Tt0g5(v615, v414, v75, v74);
              v417 = v644;
              if (*(v644 + 16) == 14)
              {
                _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV12setMaskValue_3fory0K0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE6BoundsO_Tt0g5(v615, v414, v75, v74);
                v417 = v644;
              }

              if ((v70 & 4) != 0)
              {
                goto LABEL_241;
              }
            }

            v418 = v623;
            if (v633.n128_f64[0] != v623.f64[0] || (v418.n128_u64[0] = *&v623.f64[1], v633.n128_f64[1] != v623.f64[1]))
            {
              _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE8PositionO_Tt0g5(v633, v633.n128_f64[1], v418);
            }

            v419 = *(v100 + 3);
            *v704 = *(v100 + 2);
            *&v704[16] = v419;
            *&v704[32] = 0uLL;
            v420 = *(v98 + 48);
            *&v697.a = *(v98 + 32);
            *&v697.c = v420;
            *&v697.tx = 0uLL;
            if (static CGAffineTransform.== infix(_:_:)())
            {
              v417 = v644;
              if (v416)
              {
                goto LABEL_243;
              }
            }

            else
            {
              _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE15AffineTransformO_Tt0g5(&v697);
              v417 = v644;
              if (v416)
              {
                goto LABEL_243;
              }
            }

LABEL_241:
            v421 = 1;
            v422 = v98;
            v423 = v100;
            goto LABEL_246;
          }

          v104 = *(v21 + 9);
          v105 = *(v21 + 7);
          v715 = *(v21 + 8);
          v716 = v104;
          v106 = *(v21 + 9);
          v717 = *(v21 + 10);
          v107 = *(v21 + 5);
          v108 = *(v21 + 3);
          *&v711[16] = *(v21 + 4);
          v712 = v107;
          v109 = *(v21 + 5);
          v110 = *(v21 + 7);
          v713 = *(v21 + 6);
          v714 = v110;
          v111 = *(v21 + 1);
          *&v710.a = *v21;
          *&v710.c = v111;
          v112 = *(v21 + 3);
          v114 = *v21;
          v113 = *(v21 + 1);
          *&v710.tx = *(v21 + 2);
          *v711 = v112;
          *&v706[32] = v715;
          v707 = v106;
          *v708 = *(v21 + 10);
          *&v704[64] = *&v711[16];
          v705 = v109;
          *v706 = v713;
          *&v706[16] = v105;
          *v704 = v114;
          *&v704[16] = v113;
          *&v704[32] = *&v710.tx;
          *&v704[48] = v108;
          v115 = v20[9];
          v116 = v20[7];
          v724 = v20[8];
          v725 = v115;
          v117 = v20[9];
          v726 = v20[10];
          v118 = v20[5];
          v119 = v20[3];
          *&v720[16] = v20[4];
          v721 = v118;
          v120 = v20[5];
          v121 = v20[7];
          v722 = v20[6];
          v723 = v121;
          v122 = v20[1];
          *&v719.a = *v20;
          *&v719.c = v122;
          v123 = v20[3];
          v125 = *v20;
          v124 = v20[1];
          *&v719.tx = v20[2];
          *v720 = v123;
          *&v701[32] = v724;
          v702 = v117;
          *v703 = v20[10];
          v699 = *&v720[16];
          v700 = v120;
          *v701 = v722;
          *&v701[16] = v116;
          v718 = *(v21 + 22);
          *&v708[16] = *(v21 + 22);
          v727 = *(v20 + 22);
          *&v703[16] = *(v20 + 22);
          *&v697.a = v125;
          *&v697.c = v124;
          *&v697.tx = *&v719.tx;
          v698 = v119;
          v127 = v731.d;
          v126 = v731.c;
          v647 = *&v731.c;
          v129 = v733.d;
          v128 = v733.c;
          v646 = *&v733.c;
          if (v19 | v18)
          {
            outlined init with copy of DisplayList.ViewUpdater.Model.State(&v710, &v691);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(&v719, &v691);
            outlined destroy of (PaintType, ShapeType)(&v735, &lazy cache variable for type metadata for (DisplayList.Item.Value, DisplayList.Item.Value), &type metadata for DisplayList.Item.Value, &type metadata for DisplayList.Item.Value, type metadata accessor for (Path, FillStyle));
LABEL_164:
            v687 = *&v701[32];
            v688 = v702;
            v689 = *v703;
            v690 = *&v703[16];
            *&v684[16] = v699;
            *v685 = v700;
            *&v685[16] = *v701;
            v686 = *&v701[16];
            v683 = v697;
            *v684 = v698;
            outlined destroy of DisplayList.ViewUpdater.Model.State(&v683);
            *&v693[48] = *&v706[32];
            v694 = v707;
            *v695 = *v708;
            *&v695[16] = *&v708[16];
            *&v692[16] = *&v704[64];
            *v693 = v705;
            *&v693[16] = *v706;
            *&v693[32] = *&v706[16];
            v691 = *v704;
            *v692 = *&v704[48];
            outlined destroy of DisplayList.ViewUpdater.Model.State(&v691);
            return 0;
          }

          v153 = v14 >> 60;
          if (v14 >> 60 == 5)
          {
            v322 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            *&v683.a = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            *&v683.c = v322;
            *&v683.tx = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
            *v684 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
            if (v16 >> 60 == 5)
            {
              v323 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
              *v672 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              *&v672[16] = v323;
              *&v672[32] = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
              *&v672[48] = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
              v604 = v13;
              v648.a = v13;
              *v664 = v683;
              *&v664[48] = *v684;
              v324 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
              *&v655.a = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              *&v655.c = v324;
              *&v655.tx = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
              *&v656 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
              outlined init with copy of DisplayList.Item(&v731, &v691);
              outlined init with copy of DisplayList.Item(&v733, &v691);
              outlined init with copy of DisplayList.ViewUpdater.Model.State(&v710, &v691);
              outlined init with copy of DisplayList.ViewUpdater.Model.State(&v719, &v691);
              outlined init with copy of SDFShape(v672, &v691);
              DisplayList.ViewUpdater.Platform.updateSDFShapeViewAsync(_:oldState:oldShape:newState:newShape:contentsChanged:)(v644, v704, v664, &v697, &v655, 0);
              outlined destroy of (PaintType, ShapeType)(&v735, &lazy cache variable for type metadata for (DisplayList.Item.Value, DisplayList.Item.Value), &type metadata for DisplayList.Item.Value, &type metadata for DisplayList.Item.Value, type metadata accessor for (Path, FillStyle));
              outlined destroy of SDFShape(v672);
              outlined consume of DisplayList.Content.Value(v14);
              outlined consume of DisplayList.Content.Value(v16);
              goto LABEL_257;
            }
          }

          else if (v153 == 4)
          {
            v310 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            v696.value.rect.origin = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v696.value.rect.size = v310;
            LOBYTE(v696.value.cornerSize.width) = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
            if (v16 >> 60 == 4)
            {
              v311 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x41);
              v312 = v13;
              v313 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
              v314 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
              v315 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
              v709.value.rect.origin = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              v709.value.rect.size = v315;
              LOBYTE(v709.value.cornerSize.width) = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
              v316 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
              v317 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
              v318 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x41);
              v604 = v312;
              v683.a = v312;
              outlined init with copy of DisplayList.Item(&v731, &v691);
              outlined init with copy of DisplayList.Item(&v733, &v691);
              outlined init with copy of DisplayList.ViewUpdater.Model.State(&v710, &v691);
              outlined init with copy of DisplayList.ViewUpdater.Model.State(&v719, &v691);
              if (v311)
              {
                v319 = 256;
              }

              else
              {
                v319 = 0;
              }

              if (v318)
              {
                v320 = 256;
              }

              else
              {
                v320 = 0;
              }

              v321 = DisplayList.ViewUpdater.Platform.updateShapeViewAsync(layer:oldState:oldSize:oldPath:oldPaint:oldStyle:newState:newSize:newPath:newPaint:newStyle:contentsChanged:)(v644, v704, &v647, &v696, v314, v319 | v313, &v697, &v646, &v709, v316, v320 | v317, 0);
              outlined destroy of (PaintType, ShapeType)(&v735, &lazy cache variable for type metadata for (DisplayList.Item.Value, DisplayList.Item.Value), &type metadata for DisplayList.Item.Value, &type metadata for DisplayList.Item.Value, type metadata accessor for (Path, FillStyle));
              outlined consume of DisplayList.Content.Value(v14);
              outlined consume of DisplayList.Content.Value(v16);
              if ((v321 & 1) == 0)
              {
                goto LABEL_164;
              }

              v127 = *(&v647 + 1);
              v126 = *&v647;
              v129 = *(&v646 + 1);
              v128 = *&v646;
LABEL_257:
              if (DWORD2(v722) != DWORD2(v713))
              {
                goto LABEL_326;
              }

              if (*&v719.b != *&v710.b)
              {
                _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE7OpacityO_Tt0g5(*&v719.b);
              }

              if (*(&v724 + 1) != *(&v715 + 1))
              {
                goto LABEL_326;
              }

              v432 = v644;
              v434 = *(&v716 + 1);
              v433 = v716;
              v435 = v725;
              if (v726 != v717)
              {
                v640 = v716;
                v436 = *(&v712 + 1);
                v437 = *(&v721 + 1);
                v691.a = *(&v712 + 1);
                v683.a = *(&v721 + 1);
                if (*(v644 + 16) == 9)
                {

                  v627 = specialized Array<A>.popColorMultiply(drawable:)(&v691, v644);
                  v616 = v438;
                  v440 = v439;

                  v441 = specialized Array<A>.popColorMultiply(drawable:)(&v683, v644);
                  v443 = v442;
                  v445 = v444;

                  if ((v445 & 0x100000000) == 0 || (v440 & 0x100000000) == 0)
                  {
                    _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV6update_4from2toyxm_5ValueQzALtAA01_cd1_ef1_gH8PropertyRzSQALRQlFAE21ContentsMultiplyColorO_Ttg5(v627, v616, v440 | ((HIDWORD(v440) & 1) << 32), v441, v443, v445 | ((HIDWORD(v445) & 1) << 32));
                  }
                }

                specialized static GraphicsFilter.updateAsync(layer:oldFilters:newFilters:)(v644, v436, v437);
                v447 = v446;

                v432 = v644;
                v433 = v640;
                if ((v447 & 1) == 0)
                {
                  goto LABEL_326;
                }
              }

              if (v435 != __PAIR128__(v434, v433))
              {
                v691.a = v604;
                v448 = v432;
                v449 = DisplayList.ViewUpdater.Platform.updateClipShapesAsync(layer:oldState:newState:)(v432, v704, &v697);
                v432 = v448;
                if ((v449 & 1) == 0)
                {
                  goto LABEL_326;
                }
              }

              v450 = 0;
              v451 = v432;
              v452 = *(v432 + 17);
              v628 = *&v704[64];
              v641 = v699;
              if ((v452 & 8) != 0)
              {
                v687 = *&v706[32];
                v688 = v707;
                v689 = *v708;
                *&v684[16] = *&v704[64];
                *v685 = v705;
                *&v685[16] = *v706;
                v686 = *&v706[16];
                v683 = *v704;
                *v684 = *&v704[48];
                v676 = *&v706[32];
                v677 = v707;
                v678 = *v708;
                v673 = *&v704[64];
                *v674 = v705;
                *&v674[16] = *v706;
                v675 = *&v706[16];
                *v672 = *v704;
                *&v672[16] = *&v704[16];
                v690 = *&v708[16];
                v679 = *&v708[16];
                *&v672[32] = *&v704[32];
                *&v672[48] = *&v704[48];
                DisplayList.ViewUpdater.Model.State.clipRect()(v730);
                *&v693[48] = v676;
                v694 = v677;
                *v695 = v678;
                *&v695[16] = v679;
                *&v692[16] = v673;
                *v693 = *v674;
                *&v693[16] = *&v674[16];
                *&v693[32] = v675;
                v691 = *v672;
                *v692 = *&v672[48];
                outlined init with copy of DisplayList.ViewUpdater.Model.State(&v683, v664);
                outlined destroy of DisplayList.ViewUpdater.Model.State(&v691);
                if (v730[48] == 2 || (v668 = *&v701[32], v669 = v702, v670 = *v703, v665 = v699, *v666 = v700, *&v666[16] = *v701, v667 = *&v701[16], *v664 = v697, *&v664[48] = v698, v660 = *&v701[32], v661 = v702, v662 = *v703, v657 = v699, *v658 = v700, v671 = *&v703[16], *&v658[16] = *v701, v659 = *&v701[16], v456 = *&v730[24], v457 = *&v730[16], v655 = v697, v617 = *v730, v663 = *&v703[16], v656 = v698, DisplayList.ViewUpdater.Model.State.clipRect()(&v729), v676 = v660, v677 = v661, v678 = v662, v679 = v663, v673 = v657, *v674 = *v658, *&v674[16] = *&v658[16], v675 = v659, *v672 = v655, *&v672[48] = v656, outlined init with copy of DisplayList.ViewUpdater.Model.State(v664, &v648), outlined destroy of DisplayList.ViewUpdater.Model.State(v672), v729.value.style == SwiftUI_RoundedCornerStyle_unknownDefault))
                {
                  v453 = v126;
                  v454 = v127;
                  v455 = 0uLL;
                  v450 = 0;
                }

                else
                {
                  v129 = v729.value.rect.size.height;
                  v128 = v729.value.rect.size.width;
                  v450 = v729.value.rect.origin;
                  v455 = v617;
                  v628 = vaddq_f64(v628, v617);
                  v641 = vaddq_f64(v641, v729.value.rect.origin);
                  v453 = v457;
                  v454 = v456;
                }
              }

              else
              {
                v453 = v126;
                v454 = v127;
                v455 = 0uLL;
              }

              v521 = v450.y;
              v522 = v455.f64[1];
              v620 = v450.x;
              v754.origin = v450;
              v754.size.width = v128;
              v754.size.height = v129;
              v523 = CGRectEqualToRect(v754, *v455.f64);
              if (v523)
              {
                if ((v452 & 4) != 0)
                {
LABEL_354:
                  if (*&v703[8] == *&v708[8] && *&v733.tx == *&v731.tx)
                  {
                    goto LABEL_358;
                  }

                  v525 = 0;
LABEL_357:
                  v655.a = v604;
                  v691 = v731;
                  *v692 = *v732;
                  *&v692[12] = *&v732[12];
                  v683 = v733;
                  *v684 = *v734;
                  *&v684[12] = *&v734[12];
                  if (DisplayList.ViewUpdater.Platform.updateShadowAsync(layer:oldState:oldItem:newState:newItem:boundsChanged:)(v451, v704, &v691, &v697, &v683, v525))
                  {
                    goto LABEL_358;
                  }

LABEL_326:
                  v25 = 0;
LABEL_327:
                  v687 = *&v701[32];
                  v688 = v702;
                  v689 = *v703;
                  v690 = *&v703[16];
                  *&v684[16] = v699;
                  *v685 = v700;
                  *&v685[16] = *v701;
                  v686 = *&v701[16];
                  v683 = v697;
                  *v684 = v698;
                  outlined destroy of DisplayList.ViewUpdater.Model.State(&v683);
                  *&v693[48] = *&v706[32];
                  v694 = v707;
                  *v695 = *v708;
                  *&v695[16] = *&v708[16];
                  *&v692[16] = *&v704[64];
                  *v693 = v705;
                  *&v693[16] = *v706;
                  *&v693[32] = *&v706[16];
                  v691 = *v704;
                  *v692 = *&v704[48];
                  outlined destroy of DisplayList.ViewUpdater.Model.State(&v691);
                  return v25;
                }
              }

              else
              {
                if (*(v451 + 16) - 15 < 3)
                {
                  goto LABEL_326;
                }

                _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE6BoundsO_Tt0g5(v620, v521, v128, v129);
                if (*(v451 + 16) == 14)
                {
                  _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV12setMaskValue_3fory0K0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE6BoundsO_Tt0g5(v620, v521, v128, v129);
                }

                if ((v452 & 4) != 0)
                {
                  goto LABEL_352;
                }
              }

              v524 = v628;
              if (v641.n128_f64[0] != v628.f64[0] || (v524.n128_u64[0] = *&v628.f64[1], v641.n128_f64[1] != v628.f64[1]))
              {
                _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE8PositionO_Tt0g5(v641, v641.n128_f64[1], v524);
              }

              *v672 = *&v704[32];
              *&v672[16] = *&v704[48];
              *&v672[40] = 0;
              *&v672[32] = 0;
              *v664 = *&v697.tx;
              *&v664[16] = v698;
              *&v664[40] = 0;
              *&v664[32] = 0;
              if (static CGAffineTransform.== infix(_:_:)())
              {
                if (v523)
                {
                  goto LABEL_354;
                }
              }

              else
              {
                _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE15AffineTransformO_Tt0g5(v664);
                if (v523)
                {
                  goto LABEL_354;
                }
              }

LABEL_352:
              v525 = 1;
              goto LABEL_357;
            }
          }

          else if (v153 == 3)
          {
            v154 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
            *v684 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
            *&v684[16] = v154;
            *v685 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
            *&v685[12] = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x6C);
            v155 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            *&v683.a = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            *&v683.c = v155;
            *&v683.tx = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
            if (v16 >> 60 == 3)
            {
              v604 = v13;
              v156 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
              *&v672[48] = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
              v673 = v156;
              *v674 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
              *&v674[12] = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x6C);
              v157 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
              *v672 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              *&v672[16] = v157;
              *&v672[32] = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
              v665 = *&v684[16];
              *v666 = *v685;
              *&v666[12] = *&v685[12];
              *v664 = v683;
              *&v664[48] = *v684;
              outlined init with copy of DisplayList.Item(&v731, &v691);
              outlined init with copy of DisplayList.Item(&v733, &v691);
              outlined init with copy of DisplayList.ViewUpdater.Model.State(&v710, &v691);
              outlined init with copy of DisplayList.ViewUpdater.Model.State(&v719, &v691);
              outlined init with copy of GraphicsImage(v672, &v691);
              v158 = GraphicsImage.bitmapOrientation.getter();
              *&v692[16] = v673;
              *v693 = *v674;
              *&v693[12] = *&v674[12];
              v691 = *v672;
              *v692 = *&v672[48];
              v159 = GraphicsImage.bitmapOrientation.getter();
              CGAffineTransform.apply(_:in:)(v158, v126, v127);
              CGAffineTransform.apply(_:in:)(v159, v128, v129);
              outlined destroy of GraphicsImage(v672);
              outlined destroy of (PaintType, ShapeType)(&v735, &lazy cache variable for type metadata for (DisplayList.Item.Value, DisplayList.Item.Value), &type metadata for DisplayList.Item.Value, &type metadata for DisplayList.Item.Value, type metadata accessor for (Path, FillStyle));
              if (v158 > 3u)
              {
                v160 = v126;
              }

              else
              {
                v160 = v127;
                v127 = v126;
              }

              v126 = v127;
              *&v647 = v127;
              *(&v647 + 1) = v160;
              outlined consume of DisplayList.Content.Value(v14);
              outlined consume of DisplayList.Content.Value(v16);
              if ((0xFu >> v159))
              {
                v431 = v129;
              }

              else
              {
                v431 = v128;
              }

              if (((0xFu >> v159) & 1) == 0)
              {
                v128 = v129;
              }

              *&v646 = v128;
              *(&v646 + 1) = v431;
              v129 = v431;
              v127 = v160;
              goto LABEL_257;
            }
          }

          goto LABEL_161;
        }
      }

      else
      {
        v21 = a4;
        v20 = a6;
      }

LABEL_34:
      outlined init with copy of DisplayList.Item(&v731, &v719);
      outlined init with copy of DisplayList.Item(&v733, &v719);
      goto LABEL_35;
    }

LABEL_18:
    outlined init with copy of DisplayList.Item(&v731, &v719);
    outlined init with copy of DisplayList.Item(&v733, &v719);
    outlined destroy of (PaintType, ShapeType)(&v735, &lazy cache variable for type metadata for (DisplayList.Item.Value, DisplayList.Item.Value), &type metadata for DisplayList.Item.Value, &type metadata for DisplayList.Item.Value, type metadata accessor for (Path, FillStyle));
    return 0;
  }

  if (v18)
  {
    goto LABEL_18;
  }

  if (*v732 == *v734)
  {
    v21 = a4;
    v20 = a6;
    v644 = a1;
    goto LABEL_34;
  }

  v27 = *(a4 + 9);
  v28 = *(a4 + 7);
  v715 = *(a4 + 8);
  v716 = v27;
  v29 = *(a4 + 9);
  v717 = *(a4 + 10);
  v30 = *(a4 + 5);
  v31 = *(a4 + 3);
  *&v711[16] = *(a4 + 4);
  v712 = v30;
  v32 = *(a4 + 5);
  v33 = *(a4 + 7);
  v713 = *(a4 + 6);
  v714 = v33;
  v34 = *(a4 + 1);
  *&v710.a = *a4;
  *&v710.c = v34;
  v35 = *(a4 + 3);
  v37 = *a4;
  v36 = *(a4 + 1);
  *&v710.tx = *(a4 + 2);
  *v711 = v35;
  *&v706[32] = v715;
  v707 = v29;
  *v708 = *(a4 + 10);
  *&v704[64] = *&v711[16];
  v705 = v32;
  *v706 = v713;
  *&v706[16] = v28;
  *v704 = v37;
  *&v704[16] = v36;
  *&v704[32] = *&v710.tx;
  *&v704[48] = v31;
  v38 = a6[9];
  v39 = a6[7];
  v724 = a6[8];
  v725 = v38;
  v40 = a6[9];
  v726 = a6[10];
  v41 = a6[5];
  v42 = a6[3];
  *&v720[16] = a6[4];
  v721 = v41;
  v43 = a6[5];
  v44 = a6[7];
  v722 = a6[6];
  v723 = v44;
  v45 = a6[1];
  *&v719.a = *a6;
  *&v719.c = v45;
  v46 = a6[3];
  v48 = *a6;
  v47 = a6[1];
  *&v719.tx = a6[2];
  *v720 = v46;
  *&v701[32] = v724;
  v702 = v40;
  *v703 = a6[10];
  v718 = *(a4 + 22);
  v49 = *(&v715 + 1);
  v50 = *(&v716 + 1);
  v51 = v716;
  v52 = v717;
  v53 = *(&v712 + 1);
  v699 = *&v720[16];
  v700 = v43;
  v54 = *&v710.b;
  v55 = DWORD2(v713);
  *&v708[16] = *(a4 + 22);
  v727 = *(a6 + 22);
  a = v719.a;
  v57 = v723;
  v58 = *(&v724 + 1);
  v59 = v725;
  v60 = v726;
  *v701 = v722;
  *&v701[16] = v39;
  v61 = *&v719.b;
  v62 = DWORD2(v722);
  *&v703[16] = *(a6 + 22);
  *&v697.a = v48;
  *&v697.c = v47;
  *&v697.tx = *&v719.tx;
  v698 = v42;
  v63 = v731.d;
  v64 = v731.c;
  v65 = v733.d;
  v66 = v733.c;
  v67 = *&v731.ty >> 60;
  *(a1 + 32) = 0;
  if ((v14 >> 60) <= 4)
  {
    switch(v67)
    {
      case 1:
        v709.value.rect.origin = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        LODWORD(v709.value.rect.size.width) = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        if (v16 >> 60 == 1)
        {
          v249 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x25);
          v250 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x24);
          *v730 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          *&v730[16] = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          if (v250 == *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x24) && v249 == *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x25))
          {
            v622 = v62;
            v612 = v60;
            v586 = *(&v41 + 1);
            v592 = *(&v59 + 1);
            v588 = v59;
            v599 = v53;
            v603 = v13;
            v596 = v50;
            outlined init with copy of DisplayList.Item(&v731, &v691);
            outlined init with copy of DisplayList.Item(&v733, &v691);
            outlined init with copy of DisplayList.Item(&v731, &v691);
            outlined init with copy of DisplayList.Item(&v733, &v691);
            outlined init with copy of DisplayList.Item(&v731, &v691);
            outlined init with copy of DisplayList.Item(&v733, &v691);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(&v710, &v691);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(&v719, &v691);
            v645 = a1;
            _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV6update_4from2toyxm_5ValueQzALtAA01_cd1_ef1_gH8PropertyRzSQALRQlFAE15BackgroundColorO_Ttg5(&v709, v730, v252, v253);
            goto LABEL_126;
          }
        }

LABEL_160:
        outlined init with copy of DisplayList.Item(&v731, &v691);
        outlined init with copy of DisplayList.Item(&v733, &v691);
LABEL_161:
        outlined init with copy of DisplayList.Item(&v731, &v691);
        outlined init with copy of DisplayList.Item(&v733, &v691);
        outlined init with copy of DisplayList.ViewUpdater.Model.State(&v710, &v691);
        outlined init with copy of DisplayList.ViewUpdater.Model.State(&v719, &v691);
LABEL_162:
        outlined destroy of (PaintType, ShapeType)(&v735, &lazy cache variable for type metadata for (DisplayList.Item.Value, DisplayList.Item.Value), &type metadata for DisplayList.Item.Value, &type metadata for DisplayList.Item.Value, type metadata accessor for (Path, FillStyle));
LABEL_163:
        outlined consume of DisplayList.Content.Value(v14);
        outlined consume of DisplayList.Content.Value(v16);
        goto LABEL_164;
      case 3:
        v300 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
        *&v672[48] = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        v673 = v300;
        *v674 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
        *&v674[12] = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x6C);
        v301 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        *v672 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        *&v672[16] = v301;
        *&v672[32] = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        if (v16 >> 60 != 3)
        {
          goto LABEL_160;
        }

        v622 = v62;
        v586 = *(&v41 + 1);
        v592 = *(&v59 + 1);
        v588 = v59;
        v599 = v53;
        v603 = v13;
        v596 = v50;
        v302 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
        *&v664[48] = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        v665 = v302;
        *v666 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
        *&v666[12] = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x6C);
        v303 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        *v664 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        *&v664[16] = v303;
        *&v664[32] = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        *&v684[16] = v673;
        *v685 = *v674;
        *&v685[12] = *&v674[12];
        v683 = *v672;
        *v684 = *&v672[48];
        v304 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
        v656 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        v657 = v304;
        *v658 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
        *&v658[12] = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x6C);
        v305 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        *&v655.a = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        *&v655.c = v305;
        *&v655.tx = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        outlined init with copy of DisplayList.Item(&v731, &v691);
        outlined init with copy of DisplayList.Item(&v733, &v691);
        outlined init with copy of DisplayList.Item(&v731, &v691);
        outlined init with copy of DisplayList.Item(&v733, &v691);
        outlined init with copy of DisplayList.Item(&v731, &v691);
        outlined init with copy of DisplayList.Item(&v733, &v691);
        outlined init with copy of DisplayList.ViewUpdater.Model.State(&v710, &v691);
        outlined init with copy of DisplayList.ViewUpdater.Model.State(&v719, &v691);
        outlined init with copy of GraphicsImage(v664, &v691);
        v645 = a1;
        if ((specialized static ImageLayer.updateAsync(layer:oldImage:oldSize:newImage:newSize:)(v64, v63, v66, v65, a1, &v683, &v655) & 1) == 0)
        {
          outlined destroy of GraphicsImage(v664);
          goto LABEL_201;
        }

        v612 = v60;
        rectb = v58;
        *&v692[16] = v673;
        *v693 = *v674;
        *&v693[12] = *&v674[12];
        v691 = *v672;
        *v692 = *&v672[48];
        v307 = GraphicsImage.bitmapOrientation.getter();
        *&v692[16] = v665;
        *v693 = *v666;
        *&v693[12] = *&v666[12];
        v691 = *v664;
        *v692 = *&v664[48];
        v308 = GraphicsImage.bitmapOrientation.getter();
        CGAffineTransform.apply(_:in:)(v307, v64, v63);
        CGAffineTransform.apply(_:in:)(v308, v66, v65);
        outlined destroy of GraphicsImage(v664);
        if (v307 > 3u)
        {
          v58 = rectb;
          v309 = v64;
        }

        else
        {
          v309 = v63;
          v63 = v64;
          v58 = rectb;
        }

        v64 = v63;
        outlined consume of DisplayList.Content.Value(v14);
        outlined consume of DisplayList.Content.Value(v16);
        if ((0xFu >> v308))
        {
          v458 = v65;
        }

        else
        {
          v458 = v66;
        }

        if (((0xFu >> v308) & 1) == 0)
        {
          v66 = v65;
        }

        v65 = v458;
        v63 = v309;
        break;
      case 4:
        v130 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v131 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v132 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v730[32] = v132;
        *&v730[16] = v131;
        *v730 = v130;
        if (v16 >> 60 != 4)
        {
          goto LABEL_160;
        }

        v568 = a;
        v133 = v63;
        v587 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v589 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v134 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
        v624 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        v593 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x41);
        v135 = v710.a;
        v136 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v137 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v556 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        LOBYTE(v709.value.cornerSize.width) = v556;
        v709.value.rect.size = v137;
        v709.value.rect.origin = v136;
        v547 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v554 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v613 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
        v561 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        v558 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x41);
        v645 = a1;
        v138 = *a1;
        ObjectType = swift_getObjectType();
        v140 = *(*&v710.a + 24);
        v603 = v13;
        if (ObjectType == type metadata accessor for ColorShapeLayer())
        {
          outlined init with copy of DisplayList.Item(&v731, &v691);
          outlined init with copy of DisplayList.Item(&v733, &v691);
          outlined init with copy of DisplayList.Item(&v731, &v691);
          outlined init with copy of DisplayList.Item(&v733, &v691);
          outlined init with copy of DisplayList.Item(&v731, &v691);
          outlined init with copy of DisplayList.Item(&v733, &v691);
          outlined init with copy of DisplayList.ViewUpdater.Model.State(&v710, &v691);
          outlined init with copy of DisplayList.ViewUpdater.Model.State(&v719, &v691);
          v634.f64[0] = 0.0;
          tya = 0.0;
          v533 = v65;
          v535 = v66;
          rect.f64[0] = 0.0;
          v540 = v64;
          v148 = 0.0;
          v397 = v133;
          b = v133;
          v398 = v66;
          v399 = v65;
        }

        else
        {
          v541 = v64;
          v544 = v65;
          v141 = v66;
          outlined init with copy of DisplayList.Item(&v731, &v691);
          outlined init with copy of DisplayList.Item(&v733, &v691);
          outlined init with copy of DisplayList.Item(&v731, &v691);
          outlined init with copy of DisplayList.Item(&v733, &v691);
          outlined init with copy of DisplayList.Item(&v731, &v691);
          outlined init with copy of DisplayList.Item(&v733, &v691);
          outlined init with copy of DisplayList.ViewUpdater.Model.State(&v710, &v691);
          outlined init with copy of DisplayList.ViewUpdater.Model.State(&v719, &v691);
          Path.boundingRect.getter();
          v142 = v742.origin.x;
          v143 = v742.origin.y;
          v144 = v742.size.width;
          v145 = v742.size.height;
          IsNull = CGRectIsNull(v742);
          if (IsNull)
          {
            v147 = 0.0;
          }

          else
          {
            v147 = v142;
          }

          rect.f64[0] = v147;
          if (IsNull)
          {
            v148 = 0.0;
          }

          else
          {
            v148 = v143;
          }

          if (IsNull)
          {
            v149 = 0.0;
          }

          else
          {
            v149 = v144;
          }

          v634.f64[0] = 0.0;
          if (IsNull)
          {
            v150 = 0.0;
          }

          else
          {
            v150 = v145;
          }

          v151 = type metadata accessor for PaintShapeLayer();
          if (ObjectType == v151)
          {
            v152.n128_f64[0] = 1.0 / v140;
            v608 = v152;
            v749.origin.x = rect.f64[0];
            v749.origin.y = v148;
            v749.size.width = v149;
            v749.size.height = v150;
            v750 = CGRectStandardize(v749);
            v424.f64[0] = v750.origin.x;
            v424.f64[1] = v750.origin.y;
            v425 = v608.n128_f64[0] * 0.5;
            v428.f64[0] = v608.n128_f64[0] * 0.5 + v750.origin.x;
            v426 = v750.size.height;
            v427 = vaddq_f64(v424, v750.size);
            v428.f64[1] = v608.n128_f64[0] * 0.5 + v750.origin.y;
            if (v608.n128_f64[0] == 1.0)
            {
              v429 = vrndmq_f64(v428);
              v430 = vrndmq_f64(vaddq_f64(vdupq_lane_s64(*&v425, 0), v427));
            }

            else
            {
              v459 = vdupq_lane_s64(v608.n128_i64[0], 0);
              v429 = vmulq_n_f64(vrndmq_f64(vdivq_f64(v428, v459)), v608.n128_f64[0]);
              v430 = vmulq_n_f64(vrndmq_f64(vdivq_f64(vaddq_f64(vdupq_lane_s64(*&v425, 0), v427), v459)), v608.n128_f64[0]);
            }

            rect = v429;
            *&v691.a = vsubq_f64(v430, v429);
            CGSize.round(toMultipleOf:)(v608);
            b = v691.b;
            v540 = v691.a;
            v148 = rect.f64[1];
          }

          else
          {
            b = v150;
            v540 = v149;
          }

          v460 = *(*&v568 + 24);
          Path.boundingRect.getter();
          v461 = v751.origin.x;
          v462 = v751.origin.y;
          v463 = v751.size.width;
          v464 = v751.size.height;
          v465 = CGRectIsNull(v751);
          v467 = 0.0;
          v468 = 0.0;
          v469 = 0.0;
          if (!v465)
          {
            v634.f64[0] = v461;
            v467 = v462;
            v468 = v463;
            v469 = v464;
          }

          if (ObjectType == v151)
          {
            v466.n128_f64[0] = 1.0 / v460;
            v609 = v466;
            v470 = v634.f64[0];
            v752 = CGRectStandardize(*(&v467 - 1));
            v471.f64[0] = v752.origin.x;
            v471.f64[1] = v752.origin.y;
            v472 = v609.n128_f64[0] * 0.5;
            v475.f64[0] = v609.n128_f64[0] * 0.5 + v752.origin.x;
            v473 = v752.size.height;
            v474 = vaddq_f64(v471, v752.size);
            v475.f64[1] = v609.n128_f64[0] * 0.5 + v752.origin.y;
            if (v609.n128_f64[0] == 1.0)
            {
              v476 = vrndmq_f64(v475);
              v477 = vrndmq_f64(vaddq_f64(vdupq_lane_s64(*&v472, 0), v474));
            }

            else
            {
              v478 = vdupq_lane_s64(v609.n128_i64[0], 0);
              v476 = vmulq_n_f64(vrndmq_f64(vdivq_f64(v475, v478)), v609.n128_f64[0]);
              v477 = vmulq_n_f64(vrndmq_f64(vdivq_f64(vaddq_f64(vdupq_lane_s64(*&v472, 0), v474), v478)), v609.n128_f64[0]);
            }

            v397 = v133;
            v634 = v476;
            *&v691.a = vsubq_f64(v477, v476);
            CGSize.round(toMultipleOf:)(v609);
            v469 = v691.b;
            v468 = v691.a;
            v467 = v634.f64[1];
          }

          else
          {
            v397 = v133;
          }

          tya = v467;
          v533 = v469;
          v535 = v468;
          v398 = v141;
          v64 = v541;
          v399 = v544;
        }

        v479 = *(*&v135 + 24);
        v691 = *v704;
        *&v693[28] = *&v706[12];
        *&v693[40] = *&v706[24];
        *&v695[8] = *&v708[8];
        v552 = *&v704[8];
        v543 = *&v704[40];
        v546 = *&v704[32];
        v531 = *&v704[56];
        v532 = *&v704[48];
        *v692 = *&v704[48];
        v529 = *&v704[72];
        v530 = *&v704[64];
        *&v692[16] = *&v704[64];
        *v693 = v705;
        v599 = *(&v705 + 1);
        *&v693[16] = *v706;
        v610 = *&v706[8];
        *&v693[24] = *&v706[8];
        v574 = *&v706[40];
        v578 = v707;
        *&v693[56] = *&v706[40];
        v694 = v707;
        v596 = *(&v707 + 1);
        rect_24a = *v708;
        *v695 = *v708;
        *v672 = v138;
        *&v672[8] = ObjectType;
        *&v672[32] = v587;
        *&v672[16] = v589;
        v672[48] = v132;
        *&v672[56] = rect.f64[0];
        v673.n128_f64[0] = v148;
        v673.n128_u64[1] = v134;
        *v674 = -rect.f64[0];
        *&v674[8] = -v148;
        *&v674[16] = v64;
        *&v674[24] = v397;
        LOBYTE(v675) = v624;
        BYTE1(v675) = v593;
        *(&v675 + 1) = v479;
        LOBYTE(v676) = (DisplayList.ViewUpdater.Model.State.hasDODEffects.getter() & 1) == 0;
        v480 = *(*&v568 + 24);
        v691 = v697;
        v481 = v699.n128_f64[1];
        *&v693[28] = *&v701[12];
        *&v693[40] = *&v701[24];
        v58 = *&v701[40];
        v482 = *v703;
        *&v695[8] = *&v703[8];
        v550 = *&v697.b;
        v483 = *&v697.tx;
        v527 = *(&v698 + 1);
        v528 = *&v698;
        *v692 = v698;
        v526 = v699.n128_f64[0];
        *&v692[16] = v699;
        *v693 = v700;
        v586 = *(&v700 + 1);
        *&v693[16] = *v701;
        v622 = *&v701[8];
        *&v693[24] = *&v701[8];
        *&v693[56] = *&v701[40];
        v588 = v702;
        v694 = v702;
        v592 = *(&v702 + 1);
        *v695 = *v703;
        *v664 = v138;
        *&v664[8] = ObjectType;
        *&v664[16] = v554;
        *&v664[32] = v547;
        v664[48] = v556;
        *&v664[56] = v634.f64[0];
        v665.n128_f64[0] = tya;
        v665.n128_u64[1] = v613;
        *v666 = -v634.f64[0];
        *&v666[8] = -tya;
        *&v666[16] = v398;
        *&v666[24] = v399;
        LOBYTE(v667) = v561;
        BYTE1(v667) = v558;
        *(&v667 + 1) = v480;
        LOBYTE(v668) = (DisplayList.ViewUpdater.Model.State.hasDODEffects.getter() & 1) == 0;
        v484 = v138;
        outlined init with copy of Path(v730, &v691);

        outlined init with copy of Path(&v709, &v691);

        if ((specialized static ShapeLayerHelper.updateAsync(layer:old:new:)(v645, v672, v664) & 1) == 0)
        {
          outlined destroy of (PaintType, ShapeType)(&v735, &lazy cache variable for type metadata for (DisplayList.Item.Value, DisplayList.Item.Value), &type metadata for DisplayList.Item.Value, &type metadata for DisplayList.Item.Value, type metadata accessor for (Path, FillStyle));
          outlined destroy of DisplayList.Item(&v733);
          outlined destroy of DisplayList.Item(&v731);
          v652 = *&v666[16];
          v653 = v667;
          v654 = v668;
          v648 = *v664;
          v649 = *&v664[48];
          v650 = v665;
          v651 = *v666;
          outlined destroy of ShapeLayerHelper(&v648);
          *&v658[16] = *&v674[16];
          v659 = v675;
          LOBYTE(v660) = v676;
          v655 = *v672;
          v656 = *&v672[48];
          v657 = v673;
          *v658 = *v674;
          outlined destroy of ShapeLayerHelper(&v655);
          goto LABEL_163;
        }

        v612 = v482;
        *&v685[16] = *&v666[16];
        v686 = v667;
        LOBYTE(v687) = v668;
        v683 = *v664;
        *v684 = *&v664[48];
        *v685 = *v666;
        *&v684[16] = v665;
        outlined destroy of ShapeLayerHelper(&v683);
        *&v693[16] = *&v674[16];
        *&v693[32] = v675;
        v693[48] = v676;
        v691 = *v672;
        *v692 = *&v672[48];
        *v693 = *v674;
        *&v692[16] = v673;
        outlined destroy of ShapeLayerHelper(&v691);
        v655.a = v546;
        v655.b = v543;
        v655.c = v532;
        v655.d = v531;
        v655.tx = v530;
        v655.ty = v529;
        CGAffineTransformTranslate(&v648, &v655, rect.f64[0], v148);
        *&v704[32] = v648;
        *&v655.a = v483;
        v655.c = v528;
        v655.d = v527;
        v655.tx = v526;
        v655.ty = v481;
        CGAffineTransformTranslate(&v648, &v655, v634.f64[0], tya);
        v485 = v648.tx;
        v486 = v648.ty;
        v642 = *&v648.a;
        rectd = *&v648.c;
        outlined consume of DisplayList.Content.Value(v14);
        outlined consume of DisplayList.Content.Value(v16);
        v698 = rectd;
        *&v697.tx = v642;
        v65 = v533;
        v66 = v535;
        v63 = b;
        v64 = v540;
        v699.n128_f64[0] = v485;
        v699.n128_f64[1] = v486;
        v49 = v574;
        v51 = v578;
        v61 = v550;
        v54 = v552;
        v52 = rect_24a;
        v55 = v610;
        break;
      default:
        goto LABEL_160;
    }

LABEL_293:
    if (v622 != v55)
    {
      goto LABEL_325;
    }

    if (v61 != v54)
    {
      _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE7OpacityO_Tt0g5(v61);
    }

    v487 = v645;
    if (v58 != v49)
    {
      goto LABEL_325;
    }

    if (v612 != v52)
    {
      v488 = *&v599;
      v691.a = v599;
      v683.a = v586;
      if (*(v645 + 16) == 9)
      {

        v489 = specialized Array<A>.popColorMultiply(drawable:)(&v691, v645);
        v491 = v490;
        v493 = v492;

        v494 = specialized Array<A>.popColorMultiply(drawable:)(&v683, v645);
        v496 = v495;
        v498 = v497;

        v488 = *&v599;
        if ((v498 & 0x100000000) == 0 || (v493 & 0x100000000) == 0)
        {
          _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV6update_4from2toyxm_5ValueQzALtAA01_cd1_ef1_gH8PropertyRzSQALRQlFAE21ContentsMultiplyColorO_Ttg5(v489, v491, v493 | ((HIDWORD(v493) & 1) << 32), v494, v496, v498 | ((HIDWORD(v498) & 1) << 32));
          v488 = *&v599;
        }
      }

      v499 = v488;

      specialized static GraphicsFilter.updateAsync(layer:oldFilters:newFilters:)(v645, v499, *&v586);
      v501 = v500;

      if ((v501 & 1) == 0)
      {
        goto LABEL_325;
      }

      v487 = v645;
    }

    if (v592 == v596 && v588 == v51 || (v691.a = v603, v502 = v487, v503 = DisplayList.ViewUpdater.Platform.updateClipShapesAsync(layer:oldState:newState:)(v487, v704, &v697), v487 = v502, (v503 & 1) != 0))
    {
      v629 = *&v704[64];
      v643 = v699;
      v504 = 0;
      v505 = v487;
      v506 = *(v487 + 17);
      if ((v506 & 8) != 0)
      {
        v687 = *&v706[32];
        v688 = v707;
        v689 = *v708;
        *&v684[16] = *&v704[64];
        *v685 = v705;
        *&v685[16] = *v706;
        v686 = *&v706[16];
        v683 = *v704;
        *v684 = *&v704[48];
        v676 = *&v706[32];
        v677 = v707;
        v678 = *v708;
        v673 = *&v704[64];
        *v674 = v705;
        *&v674[16] = *v706;
        v675 = *&v706[16];
        *v672 = *v704;
        *&v672[16] = *&v704[16];
        v690 = *&v708[16];
        v679 = *&v708[16];
        *&v672[32] = *&v704[32];
        *&v672[48] = *&v704[48];
        DisplayList.ViewUpdater.Model.State.clipRect()(&v729);
        *&v693[48] = v676;
        v694 = v677;
        *v695 = v678;
        *&v695[16] = v679;
        *&v692[16] = v673;
        *v693 = *v674;
        *&v693[16] = *&v674[16];
        *&v693[32] = v675;
        v691 = *v672;
        *v692 = *&v672[48];
        outlined init with copy of DisplayList.ViewUpdater.Model.State(&v683, v664);
        outlined destroy of DisplayList.ViewUpdater.Model.State(&v691);
        if (v729.value.style == SwiftUI_RoundedCornerStyle_unknownDefault || (v668 = *&v701[32], v669 = v702, v670 = *v703, v665 = v699, *v666 = v700, *&v666[16] = *v701, v667 = *&v701[16], *v664 = v697, *&v664[48] = v698, v660 = *&v701[32], v661 = v702, v662 = *v703, v657 = v699, *v658 = v700, v671 = *&v703[16], *&v658[16] = *v701, v659 = *&v701[16], v510 = v729.value.rect.size.height, v511 = v729.value.rect.size.width, v655 = v697, v618 = v729.value.rect.origin, v663 = *&v703[16], v656 = v698, DisplayList.ViewUpdater.Model.State.clipRect()(&v728), v676 = v660, v677 = v661, v678 = v662, v679 = v663, v673 = v657, *v674 = *v658, *&v674[16] = *&v658[16], v675 = v659, *v672 = v655, *&v672[48] = v656, outlined init with copy of DisplayList.ViewUpdater.Model.State(v664, &v648), outlined destroy of DisplayList.ViewUpdater.Model.State(v672), v728.value.style == SwiftUI_RoundedCornerStyle_unknownDefault))
        {
          v507 = v64;
          v508 = v63;
          v509 = 0;
          v504 = 0;
        }

        else
        {
          v65 = v728.value.rect.size.height;
          v66 = v728.value.rect.size.width;
          v504 = v728.value.rect.origin;
          v509 = v618;
          v629 = vaddq_f64(v629, v618);
          v643 = vaddq_f64(v643, v728.value.rect.origin);
          v507 = v511;
          v508 = v510;
        }
      }

      else
      {
        v507 = v64;
        v508 = v63;
        v509 = 0;
      }

      v512 = v504.y;
      v513 = v509.y;
      v619 = v504.x;
      v753.origin.x = v504.x;
      v753.origin.y = v504.y;
      v753.size.width = v66;
      v753.size.height = v65;
      v514 = CGRectEqualToRect(v753, *&v509.x);
      if (v514)
      {
        v515 = v505;
        v516 = v603;
        if ((v506 & 4) != 0)
        {
          goto LABEL_329;
        }

        goto LABEL_316;
      }

      v518 = *(v505 + 16);
      if (v518 != 15 && v518 != 16 && v518 != 17)
      {
        _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE6BoundsO_Tt0g5(v619, v512, v66, v65);
        v515 = v505;
        if (*(v505 + 16) == 14)
        {
          _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV12setMaskValue_3fory0K0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE6BoundsO_Tt0g5(v619, v512, v66, v65);
          v515 = v505;
        }

        v516 = v603;
        if ((v506 & 4) != 0)
        {
          goto LABEL_336;
        }

LABEL_316:
        v517 = v629;
        if (v643.n128_f64[0] != v629.f64[0] || (v517.n128_u64[0] = *&v629.f64[1], v643.n128_f64[1] != v629.f64[1]))
        {
          _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE8PositionO_Tt0g5(v643, v643.n128_f64[1], v517);
        }

        *v672 = *&v704[32];
        *&v672[16] = *&v704[48];
        *&v672[40] = 0;
        *&v672[32] = 0;
        *v664 = *&v697.tx;
        *&v664[16] = v698;
        *&v664[40] = 0;
        *&v664[32] = 0;
        if (static CGAffineTransform.== infix(_:_:)())
        {
          v515 = v505;
          if (!v514)
          {
            goto LABEL_336;
          }
        }

        else
        {
          _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE15AffineTransformO_Tt0g5(v664);
          v515 = v505;
          if (!v514)
          {
LABEL_336:
            v519 = 1;
LABEL_337:
            v655.a = v516;
            v691 = v731;
            *v692 = *v732;
            *&v692[12] = *&v732[12];
            v683 = v733;
            *v684 = *v734;
            *&v684[12] = *&v734[12];
            v520 = DisplayList.ViewUpdater.Platform.updateShadowAsync(layer:oldState:oldItem:newState:newItem:boundsChanged:)(v515, v704, &v691, &v697, &v683, v519);
            outlined destroy of (PaintType, ShapeType)(&v735, &lazy cache variable for type metadata for (DisplayList.Item.Value, DisplayList.Item.Value), &type metadata for DisplayList.Item.Value, &type metadata for DisplayList.Item.Value, type metadata accessor for (Path, FillStyle));
            outlined destroy of DisplayList.Item(&v733);
            outlined destroy of DisplayList.Item(&v731);
            if (v520)
            {
              goto LABEL_358;
            }

            goto LABEL_326;
          }
        }

LABEL_329:
        if (*&v703[8] == *&v708[8] && *&v733.tx == *&v731.tx)
        {
          outlined destroy of (PaintType, ShapeType)(&v735, &lazy cache variable for type metadata for (DisplayList.Item.Value, DisplayList.Item.Value), &type metadata for DisplayList.Item.Value, &type metadata for DisplayList.Item.Value, type metadata accessor for (Path, FillStyle));
          outlined destroy of DisplayList.Item(&v733);
          outlined destroy of DisplayList.Item(&v731);
LABEL_358:
          v25 = 1;
          goto LABEL_327;
        }

        v519 = 0;
        goto LABEL_337;
      }
    }

LABEL_325:
    outlined destroy of (PaintType, ShapeType)(&v735, &lazy cache variable for type metadata for (DisplayList.Item.Value, DisplayList.Item.Value), &type metadata for DisplayList.Item.Value, &type metadata for DisplayList.Item.Value, type metadata accessor for (Path, FillStyle));
    outlined destroy of DisplayList.Item(&v733);
    outlined destroy of DisplayList.Item(&v731);
    goto LABEL_326;
  }

  if (v67 > 10)
  {
    if (v67 == 11)
    {
      if (v16 >> 60 != 11)
      {
        goto LABEL_160;
      }

      v622 = v62;
      v612 = v60;
      v577 = v51;
      recta = v58;
      v607 = v55;
      rect_24 = v52;
      v586 = *(&v41 + 1);
      v573 = v49;
      v592 = *(&v59 + 1);
      v588 = v59;
      v599 = v53;
      v603 = v13;
      v596 = v50;
      v281 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x3C);
      v282 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
      v283 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x34);
      v284 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v285 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v286 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v287 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
      v288 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v289 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x34);
      v290 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
      v291 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x3C);
      v292 = *(*&a + 8);
      v655.a = v13;
      *v672 = v284;
      *&v672[4] = v283;
      *&v672[8] = v282;
      v672[12] = v281;
      *v664 = v288;
      *&v664[4] = v289;
      *&v664[8] = v290;
      v664[12] = v291;
      v683.a = v285;
      *&v683.b = v286 | (v287 << 32);
      *&v683.c = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v683.tx = v292;
      v293 = v65 != v63 || v66 != v64;
      LOBYTE(v683.ty) = 2;
      outlined init with copy of DisplayList.Item(&v731, &v691);
      outlined init with copy of DisplayList.Item(&v733, &v691);
      outlined init with copy of DisplayList.Item(&v731, &v691);
      outlined init with copy of DisplayList.Item(&v733, &v691);
      outlined init with copy of DisplayList.Item(&v731, &v691);
      outlined init with copy of DisplayList.Item(&v733, &v691);
      outlined init with copy of DisplayList.ViewUpdater.Model.State(&v710, &v691);
      outlined init with copy of DisplayList.ViewUpdater.Model.State(&v719, &v691);

      v645 = a1;
      v296 = DisplayList.ViewUpdater.Platform.updateDrawingViewAsync(_:oldOptions:newOptions:content:sizeChanged:newSize:newState:)(a1, v672, v664, &v683, v293, a6, v66, v65);
      outlined consume of PlatformDrawableContent.Storage(*&v683.a, *&v683.b, *&v683.c, *&v683.d, *&v683.tx, LOBYTE(v683.ty));
      if (v296)
      {
        v298 = *(a1 + 24);
        v691.a = v285;
        LOWORD(v691.b) = v286;
        HIDWORD(v691.b) = v287;
        *v672 = v292;
        DisplayList.nextUpdate(after:)(v297);
        outlined consume of DisplayList.Content.Value(v14);
        outlined consume of DisplayList.Content.Value(v16);
        v299 = v683.a;
        if (v683.a >= v298)
        {
          v299 = v298;
        }

        *(a1 + 24) = v299;
        v49 = v573;
        v51 = v577;
        goto LABEL_198;
      }
    }

    else
    {
      if (v67 != 12 || v16 >> 60 != 12)
      {
        goto LABEL_160;
      }

      v622 = v62;
      v612 = v60;
      recta = v58;
      v607 = v55;
      v586 = *(&v41 + 1);
      v592 = *(&v59 + 1);
      v588 = v59;
      v599 = v53;
      v596 = v50;
      v199 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x34);
      v200 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v201 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x2C);
      v202 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v203 = v13;
      v204 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v205 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v206 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x2C);
      v207 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v208 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x34);
      v603 = v203;
      v655.a = v203;
      *v672 = v202;
      *&v672[4] = v201;
      *&v672[8] = v200;
      v672[12] = v199;
      *v664 = v205;
      *&v664[4] = v206;
      *&v664[8] = v207;
      v664[12] = v208;
      *&v683.b = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v683.tx = 0.0;
      v683.a = v204;
      v683.d = 0.0;
      v209 = v65 != v63 || v66 != v64;
      LOBYTE(v683.ty) = 3;
      outlined init with copy of DisplayList.Item(&v731, &v691);
      outlined init with copy of DisplayList.Item(&v733, &v691);
      outlined init with copy of DisplayList.Item(&v731, &v691);
      outlined init with copy of DisplayList.Item(&v733, &v691);
      outlined init with copy of DisplayList.Item(&v731, &v691);
      outlined init with copy of DisplayList.Item(&v733, &v691);
      outlined init with copy of DisplayList.ViewUpdater.Model.State(&v710, &v691);
      outlined init with copy of DisplayList.ViewUpdater.Model.State(&v719, &v691);
      swift_unknownObjectRetain();
      v645 = a1;
      v212 = DisplayList.ViewUpdater.Platform.updateDrawingViewAsync(_:oldOptions:newOptions:content:sizeChanged:newSize:newState:)(a1, v672, v664, &v683, v209, a6, v66, v65);
      outlined consume of PlatformDrawableContent.Storage(*&v683.a, *&v683.b, *&v683.c, *&v683.d, *&v683.tx, LOBYTE(v683.ty));
      if (v212)
      {
        outlined consume of DisplayList.Content.Value(v14);
        outlined consume of DisplayList.Content.Value(v16);
LABEL_199:
        v55 = v607;
        v58 = recta;
        goto LABEL_293;
      }
    }

LABEL_201:
    outlined destroy of DisplayList.Item(&v733);
    outlined destroy of DisplayList.Item(&v731);
    goto LABEL_162;
  }

  if (v67 != 5)
  {
    if (v67 == 6 && v16 >> 60 == 6)
    {
      v622 = v62;
      v612 = v60;
      v586 = *(&v41 + 1);
      v592 = *(&v59 + 1);
      v588 = v59;
      v599 = v53;
      v603 = v13;
      v596 = v50;
      v567 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v575 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      rectc = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
      v631 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v68 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v645 = a1;
      v69 = a;
      v553 = v57;
      type metadata accessor for SDFLayer();
      swift_dynamicCastClassUnconditional();
      v683.a = v567;
      LOWORD(v683.b) = v575;
      HIDWORD(v683.b) = rectc;
      *v664 = v68;
      *v672 = *(*&v69 + 24);
      outlined init with copy of DisplayList.Item(&v731, &v691);
      outlined init with copy of DisplayList.Item(&v733, &v691);
      outlined init with copy of DisplayList.Item(&v731, &v691);
      outlined init with copy of DisplayList.Item(&v733, &v691);
      outlined init with copy of DisplayList.Item(&v731, &v691);
      outlined init with copy of DisplayList.Item(&v733, &v691);
      outlined init with copy of DisplayList.ViewUpdater.Model.State(&v710, &v691);
      outlined init with copy of DisplayList.ViewUpdater.Model.State(&v719, &v691);
      outlined copy of BackdropGroupID?(v553);
      SDFLayer.update(list:size:style:options:in:backdropGroupID:)(&v683, v631, v66, v65, v664, v672, v553);
      outlined consume of BackdropGroupID?(v553);
LABEL_126:
      outlined consume of DisplayList.Content.Value(v14);
      outlined consume of DisplayList.Content.Value(v16);
      goto LABEL_293;
    }

    goto LABEL_160;
  }

  if (v16 >> 60 != 5)
  {
    goto LABEL_160;
  }

  v555 = v57;
  v569 = a;
  v622 = v62;
  v576 = v51;
  recta = v58;
  v549 = v61;
  v551 = v54;
  v586 = *(&v41 + 1);
  v592 = *(&v59 + 1);
  v588 = v59;
  v599 = v53;
  v596 = v50;
  v542 = v64;
  v545 = v65;
  v645 = a1;
  v534 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  v537 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v254 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v255 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  *&v683.tx = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
  *v684 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
  *&v683.c = v255;
  *&v683.a = v254;
  v256 = v255;
  v257 = *MEMORY[0x1E695F050];
  v258 = *(MEMORY[0x1E695F050] + 8);
  v260 = *(MEMORY[0x1E695F050] + 16);
  v259 = *(MEMORY[0x1E695F050] + 24);
  v261 = *(v255 + 16);
  outlined init with copy of DisplayList.Item(&v731, &v691);
  outlined init with copy of DisplayList.Item(&v733, &v691);
  outlined init with copy of DisplayList.Item(&v731, &v691);
  outlined init with copy of DisplayList.Item(&v733, &v691);
  outlined init with copy of DisplayList.Item(&v731, &v691);
  outlined init with copy of DisplayList.Item(&v733, &v691);
  outlined init with copy of DisplayList.ViewUpdater.Model.State(&v710, &v691);
  outlined init with copy of DisplayList.ViewUpdater.Model.State(&v719, &v691);
  outlined init with copy of SDFShape(&v683, &v691);
  v637 = v261;
  v603 = v13;
  v538 = v63;
  v539 = v66;
  v572 = v49;
  rect_24 = v52;
  v607 = v55;
  v612 = v60;
  if (!v261)
  {
LABEL_191:
    v746.origin.x = v257;
    v746.origin.y = v258;
    v746.size.width = v260;
    v746.size.height = v259;
    v377 = CGRectIsNull(v746);
    if (v377)
    {
      v257 = 0.0;
      v258 = 0.0;
      v378 = 0.0;
    }

    else
    {
      v378 = v260;
    }

    if (v377)
    {
      v379 = 0.0;
    }

    else
    {
      v379 = v259;
    }

    v381 = *&v711[24];
    v380 = *&v711[16];
    v638 = *&v720[24];
    v382 = *&v720[16];
    *v672 = *&v683.c;
    *&v672[16] = *&v683.tx;
    *&v672[32] = *v684;
    v383 = *v645;
    type metadata accessor for SDFLayer();
    v384 = swift_dynamicCastClassUnconditional();
    v385 = *(*&v569 + 24);
    *v730 = v257;
    *&v730[8] = v258;
    *&v730[48] = *v684;
    *&v730[32] = *&v683.tx;
    *&v730[16] = *&v683.c;
    v386 = swift_allocObject();
    v387 = *&v730[16];
    *(v386 + 24) = *v730;
    *(v386 + 16) = v384;
    *(v386 + 40) = v387;
    *(v386 + 56) = *&v730[32];
    *(v386 + 72) = *&v730[48];
    *(v386 + 80) = v257;
    *(v386 + 88) = v258;
    *(v386 + 96) = v378;
    *(v386 + 104) = v379;
    *(v386 + 112) = v385;
    *(v386 + 120) = v555;
    v388 = *(v645 + 8);
    v389 = swift_allocObject();
    *(v389 + 16) = partial apply for specialized closure #1 in DisplayList.ViewUpdater.Platform.updateSDFShapeViewAsync(_:oldState:oldShape:newState:newShape:contentsChanged:);
    *(v389 + 24) = v386;
    v390 = v383;
    v560 = *v711;
    v563 = *&v710.tx;
    *tyb = *v720;
    v570 = *&v719.tx;
    outlined init with copy of SDFShape(&v683, &v691);
    v391 = v390;
    outlined copy of BackdropGroupID?(v555);
    outlined init with copy of SDFShape(v730, &v691);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v392 = *(*(v388 + 56) + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v392);

    v691.a = v257;
    v691.b = v258;
    *&v691.c = *v672;
    *&v691.tx = *&v672[16];
    *v692 = *&v672[32];
    outlined destroy of SDFShape(&v691);
    v393 = *(v388 + 56);
    *(v393 + 16) = v392 + 1;
    v394 = v393 + 16 * v392;
    *(v394 + 32) = partial apply for thunk for @callee_guaranteed () -> ();
    *(v394 + 40) = v389;
    *&v672[16] = v560;
    *v672 = v563;
    *&v672[32] = v380;
    *&v672[40] = v381;
    CGAffineTransformTranslate(v664, v672, -v537, -v534);
    *&v704[32] = *v664;
    *&v704[48] = *&v664[16];
    *&v704[64] = *&v664[32];
    *&v672[16] = *tyb;
    *v672 = v570;
    *&v672[32] = v382;
    *&v672[40] = v638;
    CGAffineTransformTranslate(v664, v672, -v683.a, -v683.b);
    v395 = *&v664[32];
    v396 = *&v664[40];
    v639 = *v664;
    v571 = *&v664[16];
    outlined destroy of SDFShape(&v683);
    outlined consume of DisplayList.Content.Value(v14);
    outlined consume of DisplayList.Content.Value(v16);
    v698 = v571;
    *&v697.tx = v639;
    v699.n128_u64[0] = v395;
    v699.n128_u64[1] = v396;
    v64 = v542;
    v65 = v545;
    v63 = v538;
    v66 = v539;
    v49 = v572;
    v51 = v576;
    v61 = v549;
    v54 = v551;
LABEL_198:
    v52 = rect_24;
    goto LABEL_199;
  }

  v262 = 0;
  v263 = (v256 + 64);
  v557 = v259;
  v559 = v260;
  v562 = v258;
  ty = v257;
  v264 = v256;
  v548 = v256;
  while (1)
  {
    if (v262 >= *(v264 + 16))
    {
      __break(1u);
    }

    v269 = *(v263 - 4);
    v270 = *(v263 - 3);
    v271 = *(v263 - 2);
    v272 = *(v263 - 1);
    v273 = *v263;
    if (v273 <= 2)
    {
      if (v273 < 2)
      {
        v265 = *(v263 - 4);
        v266 = *(v263 - 3);
        v267 = *(v263 - 2);
        v268 = *(v263 - 1);
      }

      else
      {
        v265 = v269[2];
        v266 = v269[3];
        v267 = v269[4];
        v268 = v269[5];
        outlined copy of Path.Storage(*(v263 - 4), *(v263 - 3), *(v263 - 2), *(v263 - 1), 2u);
      }

      goto LABEL_131;
    }

    if (v273 == 5)
    {
      break;
    }

    v265 = ty;
    v266 = v562;
    v268 = v557;
    v267 = v559;
    if (v273 != 6)
    {
      goto LABEL_361;
    }

LABEL_131:
    ++v262;
    v743.origin.x = v257;
    v743.origin.y = v258;
    v743.size.width = v260;
    v743.size.height = v259;
    v755.origin.x = v265;
    v755.origin.y = v266;
    v755.size.width = v267;
    v755.size.height = v268;
    v744 = CGRectUnion(v743, v755);
    v257 = v744.origin.x;
    v258 = v744.origin.y;
    v260 = v744.size.width;
    v259 = v744.size.height;
    outlined consume of Path.Storage(v269, v270, v271, v272, v273);
    v263 += 56;
    if (v637 == v262)
    {
      goto LABEL_191;
    }
  }

  if (*(v269 + 16))
  {
    if (*(v269 + 16) == 1)
    {
      outlined copy of Path.Storage(v269, v270, v271, v272, 5u);
      v264 = v548;
      RBPathGetBoundingRect();
    }

    else
    {
      v280 = outlined copy of Path.Storage(*(v263 - 4), *(v263 - 3), *(v263 - 2), *(v263 - 1), 5u);
      v274 = MEMORY[0x193AC3640](v269 + 3, v280);
    }

    v265 = v274;
    v266 = v275;
    v267 = v276;
    v268 = v277;
    goto LABEL_131;
  }

  v278 = *(v269 + 3);
  if (v278)
  {
    v279 = v278;
    outlined copy of Path.Storage(v269, v270, v271, v272, 5u);
    outlined copy of Path.Storage(v269, v270, v271, v272, 5u);
    PathBoundingBox = CGPathGetPathBoundingBox(v279);
    v265 = PathBoundingBox.origin.x;
    v266 = PathBoundingBox.origin.y;
    v267 = PathBoundingBox.size.width;
    v268 = PathBoundingBox.size.height;

    outlined consume of Path.Storage(v269, v270, v271, v272, 5u);
    v264 = v548;
    goto LABEL_131;
  }

  __break(1u);
LABEL_361:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_18D25E44C()
{

  return swift_deallocObject();
}

uint64_t DisplayList.ViewUpdater.Platform.updateClipShapesAsync(layer:oldState:newState:)(uint64_t a1, __int128 *a2, __int128 *a3)
{
  if (!*(*(a2 + 10) + 16) && !*(*(a3 + 10) + 16))
  {
    goto LABEL_21;
  }

  if ((*(a1 + 17) & 8) != 0)
  {
    v28 = a2[9];
    v29 = a2[7];
    v111 = a2[8];
    v112 = v28;
    v30 = a2[9];
    v113 = a2[10];
    v31 = a2[5];
    v32 = a2[3];
    v107 = a2[4];
    v108 = v31;
    v33 = a2[5];
    v34 = a2[7];
    v109 = a2[6];
    v110 = v34;
    v35 = a2[1];
    v103 = *a2;
    v104 = v35;
    v36 = a2[3];
    v38 = *a2;
    v37 = a2[1];
    v105 = a2[2];
    v106 = v36;
    v99 = v111;
    v100 = v30;
    v101 = a2[10];
    v95 = v107;
    v96 = v33;
    v97 = v109;
    v98 = v29;
    *&v93.a = v38;
    *&v93.c = v37;
    v114 = *(a2 + 22);
    v102 = *(a2 + 22);
    *&v93.tx = v105;
    v94 = v32;
    DisplayList.ViewUpdater.Model.State.clipRect()(&v82);
    v121 = v99;
    v122 = v100;
    v123 = v101;
    v124 = v102;
    v117 = v95;
    v118 = v96;
    v119 = v97;
    v120 = v98;
    v115 = v93;
    v116 = v94;
    outlined init with copy of DisplayList.ViewUpdater.Model.State(&v103, &v83);
    outlined destroy of DisplayList.ViewUpdater.Model.State(&v115);
    style = v82.value.style;
    if (v82.value.style == SwiftUI_RoundedCornerStyle_unknownDefault)
    {
      goto LABEL_22;
    }

    v40 = a3[9];
    v41 = a3[7];
    v89 = a3[8];
    v90 = v40;
    v42 = a3[9];
    v91 = a3[10];
    v43 = a3[5];
    v44 = a3[3];
    v85 = a3[4];
    v86 = v43;
    v45 = a3[5];
    v46 = a3[7];
    v87 = a3[6];
    v88 = v46;
    v47 = a3[1];
    *&v83.a = *a3;
    *&v83.c = v47;
    v48 = a3[3];
    v50 = *a3;
    v49 = a3[1];
    *&v83.tx = a3[2];
    v84 = v48;
    v77 = v89;
    v78 = v42;
    v79 = a3[10];
    v73 = v85;
    v74 = v45;
    height = v82.value.rect.size.height;
    width = v82.value.cornerSize.width;
    v75 = v87;
    v76 = v41;
    y = v82.value.rect.origin.y;
    v53 = v82.value.rect.size.width;
    *v72 = v50;
    *&v72[16] = v49;
    x = v82.value.rect.origin.x;
    v92 = *(a3 + 22);
    v80 = *(a3 + 22);
    *&v72[32] = *&v83.tx;
    *&v72[48] = v44;
    DisplayList.ViewUpdater.Model.State.clipRect()(&v81);
    v99 = v77;
    v100 = v78;
    v101 = v79;
    v102 = v80;
    v95 = v73;
    v96 = v74;
    v97 = v75;
    v98 = v76;
    v93 = *v72;
    v94 = *&v72[48];
    outlined init with copy of DisplayList.ViewUpdater.Model.State(&v83, v68);
    outlined destroy of DisplayList.ViewUpdater.Model.State(&v93);
    if (v81.value.style == SwiftUI_RoundedCornerStyle_unknownDefault || ((v81.value.style ^ style) & 1) != 0)
    {
      goto LABEL_22;
    }

    size = v81.value.rect.size;
    v67 = v81.value.cornerSize.width;
    v56 = v81.value.rect.origin.y;
    v57 = v81.value.rect.origin.x;
    v125.origin.x = x;
    v125.origin.y = y;
    v125.size.width = v53;
    v125.size.height = height;
    v58 = CGRectGetWidth(v125);
    v126.origin.x = x;
    v126.origin.y = y;
    v126.size.width = v53;
    v126.size.height = height;
    v59 = CGRectGetHeight(v126);
    if (v59 >= v58)
    {
      v59 = v58;
    }

    v60 = v59 * 0.5;
    if (v60 >= width)
    {
      v61 = width;
    }

    else
    {
      v61 = v60;
    }

    v127.origin.x = v57;
    v127.origin.y = v56;
    v127.size.width = size.width;
    v127.size.height = size.height;
    v62 = CGRectGetWidth(v127);
    v128.origin.x = v57;
    v128.origin.y = v56;
    v128.size.width = size.width;
    v128.size.height = size.height;
    v63 = CGRectGetHeight(v128);
    if (v63 >= v62)
    {
      v63 = v62;
    }

    v64 = v63 * 0.5;
    if (v64 >= v67)
    {
      v64 = v67;
    }

    if (v64 != v61)
    {
      _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE12CornerRadiusO_Tt0g5(v64);
    }

LABEL_21:
    v27 = 1;
    return v27 & 1;
  }

  v6 = a3[9];
  v7 = a3[7];
  v111 = a3[8];
  v112 = v6;
  v8 = a3[9];
  v113 = a3[10];
  v9 = a3[5];
  v10 = a3[3];
  v107 = a3[4];
  v108 = v9;
  v11 = a3[5];
  v12 = a3[7];
  v109 = a3[6];
  v110 = v12;
  v13 = a3[1];
  v103 = *a3;
  v104 = v13;
  v14 = a3[3];
  v16 = *a3;
  v15 = a3[1];
  v105 = a3[2];
  v106 = v14;
  v99 = v111;
  v100 = v8;
  v101 = a3[10];
  v95 = v107;
  v96 = v11;
  v97 = v109;
  v98 = v7;
  *&v93.a = v16;
  *&v93.c = v15;
  v114 = *(a3 + 22);
  v102 = *(a3 + 22);
  *&v93.tx = v105;
  v94 = v10;
  DisplayList.ViewUpdater.Model.State.clipRect()(v72);
  v121 = v99;
  v122 = v100;
  v123 = v101;
  v124 = v102;
  v117 = v95;
  v118 = v96;
  v119 = v97;
  v120 = v98;
  v115 = v93;
  v116 = v94;
  outlined init with copy of DisplayList.ViewUpdater.Model.State(&v103, &v83);
  outlined destroy of DisplayList.ViewUpdater.Model.State(&v115);
  if (v72[48] != 2 || (v17 = [*a1 mask]) == 0)
  {
LABEL_22:
    v27 = 0;
    return v27 & 1;
  }

  v18 = *(a1 + 8);
  v19 = *(a1 + 24);
  v20 = *(a1 + 32);
  v69 = *(a1 + 16);
  v70 = v19;
  v71 = v20;
  v68[0] = v17;
  v68[1] = v18;
  v21 = a2;
  v22 = *(a2 + 10);
  v23 = *(a3 + 10);
  v24 = v21[3];
  *&v93.a = v21[2];
  *&v93.c = v24;
  *&v93.tx = v21[4];
  CGAffineTransformInvert(&v83, &v93);
  v25 = a3[3];
  *v72 = a3[2];
  *&v72[16] = v25;
  *&v72[32] = a3[4];
  CGAffineTransformInvert(&v93, v72);

  specialized static MaskLayer.updateClipsAsync(layer:oldClips:newClips:oldTransform:newTransform:)(v68, v22, v23, &v83, &v93);
  v27 = v26;

  return v27 & 1;
}

void type metadata accessor for (DisplayList.Item.Value, DisplayList.Item.Value)()
{
  if (!lazy cache variable for type metadata for (DisplayList.Item.Value, DisplayList.Item.Value))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (DisplayList.Item.Value, DisplayList.Item.Value));
    }
  }
}

void type metadata accessor for _DictionaryStorage<String, CAPresentationModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<String, CAPresentationModifier>)
  {
    type metadata accessor for CAMediaTimingFunction(255, &lazy cache variable for type metadata for CAPresentationModifier, 0x1E6979410);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<String, CAPresentationModifier>);
    }
  }
}

void lazy protocol witness table accessor for type EmptyTextAccessibilityProvider and conformance EmptyTextAccessibilityProvider()
{
  if (!lazy protocol witness table cache variable for type EmptyTextAccessibilityProvider and conformance EmptyTextAccessibilityProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for EmptyTextAccessibilityProvider, &type metadata for EmptyTextAccessibilityProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type EmptyTextAccessibilityProvider and conformance EmptyTextAccessibilityProvider);
  }
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA024TypesettingConfigurationI0VG_Tt1g5@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA024TypesettingConfigurationF0VG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TypesettingConfigurationKey>, &type metadata for TypesettingConfigurationKey, &protocol witness table for TypesettingConfigurationKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v12 = v21;
    v13 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v14 = v13[1];
    v15 = type metadata accessor for TypesettingConfiguration(0);
    v14(v15, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA024TypesettingConfigurationF0VG_Tt2g5(a1, a2);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<TypesettingConfigurationKey>>(0);
    v21 = v16;
    v22 = &protocol witness table for TrackedValue<A>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
    outlined init with copy of EnvironmentValues.CapitalizationContext(a2, boxed_opaque_existential_1, type metadata accessor for TypesettingConfiguration);
    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<TypesettingConfigurationKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<TypesettingConfigurationKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TypesettingConfigurationKey>, &type metadata for TypesettingConfigurationKey, &protocol witness table for TypesettingConfigurationKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TypesettingConfigurationKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<TypesettingConfigurationKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<TypesettingConfigurationKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<TypesettingConfigurationKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TypesettingConfigurationKey>, &type metadata for TypesettingConfigurationKey, &protocol witness table for TypesettingConfigurationKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<TypesettingConfigurationKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void Font.SystemProvider.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 18);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v1);
  if (v3 == 1)
  {
    Hasher._combine(_:)(0);
    if (v4 != 4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = v2;
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x193AC11E0](v8);
    if (v4 != 4)
    {
LABEL_5:
      Hasher._combine(_:)(1u);
      MEMORY[0x193AC11A0](v4);
      if (v5 != 14)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  Hasher._combine(_:)(0);
  if (v5 != 14)
  {
LABEL_6:
    Hasher._combine(_:)(1u);
    switch(v5)
    {
      case 1:
        v5 = 1;
        break;
      case 2:
        v5 = 2;
        break;
      case 3:
        v5 = 3;
        break;
      case 4:
        v5 = 4;
        break;
      case 5:
        v5 = 5;
        break;
      case 6:
        v5 = 6;
        break;
      case 7:
        v5 = 7;
        break;
      case 8:
        v5 = 8;
        break;
      case 9:
        v5 = 9;
        break;
      case 10:
        v5 = 10;
        break;
      case 11:
      case 12:
      case 13:
        _diagnoseUnavailableCodeReached()();
        __break(1u);
        JUMPOUT(0x18D25F5ECLL);
      default:
        break;
    }

    MEMORY[0x193AC11A0](v5);
    if (!v7)
    {
      goto LABEL_25;
    }

LABEL_14:
    Hasher._combine(_:)(0);
    return;
  }

LABEL_13:
  Hasher._combine(_:)(0);
  if (v7)
  {
    goto LABEL_14;
  }

LABEL_25:
  Hasher._combine(_:)(1u);
  if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x193AC11E0](v9);
}

uint64_t specialized static CTFontDescriptorRef.fontDescriptor(size:design:weight:legibilityWeight:)(void *a1, uint64_t a2, char a3, unsigned __int8 *a4, double a5)
{
  v34 = *a4;
  type metadata accessor for _ContiguousArrayStorage<(CFStringRef, CGFloat)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(CFStringRef, Any)>, &lazy cache variable for type metadata for (CFStringRef, Any), MEMORY[0x1E69E7CA0] + 8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18DDAB4C0;
  v10 = *MEMORY[0x1E6965898];
  *(inited + 32) = *MEMORY[0x1E6965898];
  result = swift_initStackObject();
  *(result + 16) = xmmword_18DDAB4C0;
  v12 = *MEMORY[0x1E6965970];
  *(result + 32) = *MEMORY[0x1E6965970];
  v13 = MEMORY[0x1E69E7DE0];
  *(result + 64) = MEMORY[0x1E69E7DE0];
  v14 = *MEMORY[0x1E6965958];
  if ((a3 & 1) == 0)
  {
    v14 = a2;
  }

  *(result + 40) = v14;
  v15 = *MEMORY[0x1E69658E0];
  if (*MEMORY[0x1E69658E0])
  {
    *(result + 72) = v15;
    v16 = result;
    type metadata accessor for CFStringRef(0);
    *(v16 + 104) = v17;
    *(v16 + 80) = a1;
    v18 = v10;
    v19 = v12;
    v20 = a1;
    v21 = v15;
    v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(v16);
    swift_setDeallocating();
    v23 = MEMORY[0x1E69E7CA0];
    type metadata accessor for (CFStringRef, CGFloat)(0, &lazy cache variable for type metadata for (CFStringRef, Any), MEMORY[0x1E69E7CA0] + 8);
    swift_arrayDestroy();
    type metadata accessor for [CFStringRef : Any](0, &lazy cache variable for type metadata for [CFStringRef : Any], v23 + 8);
    v24 = MEMORY[0x1E6965848];
    *(inited + 40) = v22;
    v25 = *v24;
    *(inited + 64) = v26;
    *(inited + 72) = v25;
    *(inited + 104) = v13;
    *(inited + 80) = a5;
    v27 = v25;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v28 = *MEMORY[0x1E6965878];
    v37 = MEMORY[0x1E69E7668];
    LODWORD(v36) = 3;
    outlined init with take of Any(&v36, v35);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, v28, isUniquelyReferenced_nonNull_native);
    if (v34 != 2)
    {
      v30 = *MEMORY[0x1E69657F0];
      v37 = MEMORY[0x1E69E6530];
      *&v36 = v34 & 1;
      outlined init with take of Any(&v36, v35);
      v31 = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, v30, v31);
    }

    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v33 = CTFontDescriptorCreateWithAttributesAndOptions();

    return v33;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unsigned __int8 *specialized static DefaultFontDefinition.resolveSystemFont(size:design:weight:in:)(unsigned __int8 *result, uint64_t a2, char a3, uint64_t a4, double a5)
{
  LODWORD(v8) = *result;
  v9 = *(a4 + 1);
  if (v8 <= 1)
  {
LABEL_6:
    if (v8)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  if (v8 == 2)
  {
    goto LABEL_9;
  }

  if (v8 == 3)
  {
    v8 = *MEMORY[0x1E69658C0];
    if (*MEMORY[0x1E69658C0])
    {
LABEL_12:
      v10 = v8;
      v12 = v9;
      v11 = specialized static CTFontDescriptorRef.fontDescriptor(size:design:weight:legibilityWeight:)(v10, a2, a3 & 1, &v12, a5);

      return v11;
    }

    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  v8 = *MEMORY[0x1E69658B8];
  if (*MEMORY[0x1E69658B8])
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_9:
  v8 = *MEMORY[0x1E69658C8];
  if (*MEMORY[0x1E69658C8])
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_11:
  v8 = *MEMORY[0x1E69658D0];
  if (*MEMORY[0x1E69658D0])
  {
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for FontProvider.resolveDescriptor(in:) in conformance Font.SystemProvider(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v14 = *(a1 + 3);
  v15 = a1[5];
  v16[0] = v3;
  v5 = v1[1];
  v6 = *(v1 + 16);
  v7 = *(v1 + 17);
  v8 = *(v1 + 18);
  v9 = v1[3];
  v10 = *(v1 + 32);
  v19 = *v1;
  v20 = v5;
  v21 = v6;
  v22 = v7;
  v23 = v8;
  v24 = v9;
  v25 = v10;
  v16[1] = v2;
  v16[2] = v4;
  v17 = *(a1 + 3);
  v18 = a1[5];
  v11 = Font.SystemProvider.effectiveSize(in:)(v16);
  LOBYTE(v16[0]) = v7;
  v13[0] = v3;
  v13[1] = v2;
  v13[2] = v4;
  return (*(v4 + 24))(v16, v5, v6, v13, v2, v4, v11);
}

void type metadata accessor for _ContiguousArrayStorage<(CFStringRef, CGFloat)>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for (CFStringRef, CGFloat)(255, a3, a4);
    v5 = type metadata accessor for _ContiguousArrayStorage();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void _ss23_ContiguousArrayStorageCySo11CFStringRefa_12CoreGraphics7CGFloatVtGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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
      outlined init with copy of (RBDisplayListRenderKey, Any)(v4, &v11, &lazy cache variable for type metadata for (CFStringRef, Any), type metadata accessor for CFStringRef);
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

void type metadata accessor for (CFStringRef, CGFloat)(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    type metadata accessor for CFStringRef(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void _sSo11CFStringRefa_12CoreGraphics7CGFloatVtMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t AccessibilityPropertiesEntry.isEqual(to:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23[-v7 - 8];
  v9 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  outlined init with copy of AnyTrackedValue(a1, v23);
  type metadata accessor for AnyAccessibilityPropertiesEntry();
  v13 = swift_dynamicCast();
  v14 = *(v9 + 56);
  if (v13)
  {
    v14(v8, 0, 1, a2);
    (*(v9 + 32))(v12, v8, a2);
    v20 = static ConstantLocation.== infix(_:_:)(v2, v12, *(a2 + 16), v15, v16, v17, v18, v19);
    (*(v9 + 8))(v12, a2);
  }

  else
  {
    v14(v8, 1, 1, a2);
    (*(v6 + 8))(v8, v5);
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t specialized FluidSpringAnimation.animate<A>(value:time:context:)(uint64_t *a1, double a2, double a3, double a4, double a5, double a6)
{
  _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigSd_AA06SpringD033_73E5E3E568519775ECB92F029EBA0DDALLVySdGTt0B5(*a1, &v57);
  v15 = a4;
  if (a6 > 0.0)
  {
    v15 = a4;
    if (v63 != 0.0)
    {
      v16 = (a3 - v62) / a6;
      if (v16 <= 1.0)
      {
        v17 = (a3 - v62) / a6;
      }

      else
      {
        v17 = 1.0;
      }

      v18 = v16 < 0.0;
      v19 = 0.0;
      if (!v18)
      {
        v19 = v17;
      }

      v15 = v63 * (1.0 - v19 * v19 * (3.0 - (v19 + v19))) + a4;
    }
  }

  if (v15 <= 0.0)
  {
    v20 = INFINITY;
  }

  else
  {
    v20 = 6.28318531 / v15 * (6.28318531 / v15);
  }

  v50 = a4;
  if (v20 > 45000.0)
  {
    v20 = 45000.0;
  }

  v52 = v61;
  if (v15 <= a3 - v61)
  {
    *(a1 + 17) = 1;
  }

  v21 = v60;
  if (a3 - v60 > 1.0)
  {
    v21 = a3 + -0.0166666667;
    v60 = a3 + -0.0166666667;
  }

  v22 = v57;
  v51 = a5;
  if (v21 >= a3)
  {
    v25 = v58;
    v24 = v59;
    v28 = a2 - v57;
  }

  else
  {
    v23 = sqrt(v20);
    v25 = v58;
    v24 = v59;
    v26 = (v23 + v23) * a5;
    do
    {
      v27 = v24 * 0.00166666667 + v25;
      v22 = v22 + v27 * 0.00333333333;
      v28 = a2 - v22;
      v29 = v20 * (a2 - v22);
      v24 = v29 - v26 * v27;
      v25 = v27 + v24 * 0.00166666667;
      v21 = v21 + 0.00333333333;
    }

    while (v21 < a3);
    v59 = v29 - v26 * v27;
    v60 = v21;
    v57 = v22;
    v58 = v27 + v24 * 0.00166666667;
  }

  v31 = v62;
  v30 = v63;
  type metadata accessor for SpringState<Double>(0, v12, v13, v14);
  v33 = v32;
  *(&v56 + 1) = v32;
  v34 = swift_allocObject();
  v55[0] = v34;
  *(v34 + 16) = v22;
  *(v34 + 24) = v25;
  *(v34 + 32) = v24;
  *(v34 + 40) = v21;
  *(v34 + 48) = v52;
  *(v34 + 56) = v31;
  *(v34 + 64) = v30;
  specialized Dictionary.subscript.setter(v55, v33);
  v35 = *(a1 + 16);
  v36 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigSd_AA0c19FinishingDefinitionF033_2DFC163B2FD0FA7B91FDE1127AAEDE04LLVySdGTt0B5(*a1);
  if (v36)
  {
    v38 = v36;
    v39 = v37;
    v40 = 6.28318531 / v50 * (6.28318531 / v50);
    v41 = sqrt(v40);
    v42 = (v41 + v41) * v51 / v40 * v25;
    if ((v35 & 1) != 0 || (WeakValue = AGGraphGetWeakValue()) == 0)
    {
      EnvironmentValues.init()(v54);
      v44 = *v54;
    }

    else
    {
      v53 = *WeakValue;

      v44 = v53;
    }

    *v55 = v28;
    *&v55[1] = v42;
    v56 = v44;
    v45 = (*(v39 + 24))(v55, v38, v39);

    if (v45)
    {
      return 0;
    }
  }

  v47 = v25 * v25;
  if (v25 * v25 <= v24 * v24)
  {
    v47 = v24 * v24;
  }

  if (v47 > 0.0036)
  {
    return *&v22;
  }

  v48 = a2 * 0.01 * (a2 * 0.01);
  if (v48 >= v28 * v28 || v48 <= 0.0)
  {
    return 0;
  }

  else
  {
    return *&v22;
  }
}

double _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigSd_AA06SpringD033_73E5E3E568519775ECB92F029EBA0DDALLVySdGTt0B5@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (type metadata accessor for AnimationFinishingDefinitionKey<Double>(0, &lazy cache variable for type metadata for SpringState<Double>, MEMORY[0x1E69E63B0], &protocol witness table for Double, type metadata accessor for SpringState), v5 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v6 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v5, v8);
    outlined init with take of Any(v8, v9);
    outlined init with take of Any(v9, v8);
    swift_dynamicCast();
  }

  else
  {
    *(a2 + 48) = 0;
    result = 0.0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

void type metadata accessor for SpringState<Double>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for SpringState<Double>)
  {
    v4 = type metadata accessor for SpringState(0, MEMORY[0x1E69E63B0], &protocol witness table for Double, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for SpringState<Double>);
    }
  }
}

Swift::Void __swiftcall DisplayList.ViewUpdater.ViewCache.commitAsyncValues(targetTimestamp:)(SwiftUI::Time_optional targetTimestamp)
{
  v2 = v1;
  v3 = **&targetTimestamp.is_nil;
  v4 = v1[5];
  if (!*(v4 + 16) && !*(v1[7] + 16))
  {
    return;
  }

  v87 = *(*&targetTimestamp.is_nil + 8);
  if (([objc_opt_self() isMainThread] & 1) == 0)
  {
    [objc_opt_self() activateBackground_];
  }

  v5 = objc_opt_self();
  v86 = [v5 disableActions];
  if ((v86 & 1) == 0)
  {
    [v5 setDisableActions_];
  }

  v85 = v5;
  v102 = MEMORY[0x1E69E7CD0];
  v91 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(v4 + 64);
  v90 = (v6 + 63) >> 6;
  v95 = *MEMORY[0x1E69797E8];

  v9 = 0;
  v10 = 0;
  v88 = v4;
  v89 = v1;
  while (1)
  {
    if (!v8)
    {
      do
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_71;
        }

        if (v11 >= v90)
        {

          if ((v86 & 1) == 0)
          {
            [v85 setDisableActions_];
          }

          swift_beginAccess();
          v71 = v102;
          v72 = v102 + 56;
          v73 = 1 << *(v102 + 32);
          v74 = -1;
          if (v73 < 64)
          {
            v74 = ~(-1 << v73);
          }

          v75 = v74 & *(v102 + 56);
          v76 = (v73 + 63) >> 6;
          if (v87)
          {
            v3 = 0.0;
          }

          v77 = 0;
          if (!v75)
          {
            goto LABEL_59;
          }

          while (1)
          {
            for (i = v77; ; v77 = i)
            {
              v79 = __clz(__rbit64(v75));
              v75 &= v75 - 1;
              [*(*(v71 + 48) + ((i << 9) | (8 * v79))) flushWithTransactionAndTargetTime_];
              if (v75)
              {
                break;
              }

              do
              {
LABEL_59:
                i = v77 + 1;
                if (__OFADD__(v77, 1))
                {
                  goto LABEL_72;
                }

                if (i >= v76)
                {

                  v80 = v2[7];
                  v81 = *(v80 + 16);
                  if (v81)
                  {
                    v82 = v80 + 40;
                    do
                    {
                      v83 = *(v82 - 8);

                      v83(v84);

                      v82 += 16;
                      --v81;
                    }

                    while (v81);
                  }

                  v2[5] = MEMORY[0x1E69E7CC8];

                  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v9, 0);
                  v2[7] = MEMORY[0x1E69E7CC0];
                  return;
                }

                v75 = *(v72 + 8 * i);
                ++v77;
              }

              while (!v75);
            }
          }
        }

        v8 = *(v91 + 8 * v11);
        ++v10;
      }

      while (!v8);
      v10 = v11;
    }

    v94 = v8;
    v92 = v10;
    v12 = (v10 << 9) | (8 * __clz(__rbit64(v8)));
    v13 = *(*(v4 + 48) + v12);
    v14 = *(*(v4 + 56) + v12);
    v101 = v2[6];
    v96 = v101;
    v93 = v101;

    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v9, 0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v99 = v2[4];
    v16 = v99;
    v97 = v13;
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
    v19 = v16[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      goto LABEL_73;
    }

    v23 = v18;
    if (v16[3] >= v22)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v70 = v17;
        specialized _NativeDictionary.copy()();
        v17 = v70;
        v16 = v99;
        v2[4] = v99;
        if (v23)
        {
          goto LABEL_26;
        }

        goto LABEL_24;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v22, isUniquelyReferenced_nonNull_native);
      v16 = v99;
      v17 = specialized __RawDictionaryStorage.find<A>(_:)(v97);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_78;
      }
    }

    v2[4] = v16;
    if (v23)
    {
      goto LABEL_26;
    }

LABEL_24:
    v16[(v17 >> 6) + 8] |= 1 << v17;
    *(v16[6] + 8 * v17) = v97;
    v25 = (v16[7] + 16 * v17);
    *v25 = MEMORY[0x1E69E7CD0];
    v25[1] = MEMORY[0x1E69E7CC8];
    v26 = v16[2];
    v21 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v21)
    {
      goto LABEL_74;
    }

    v16[2] = v27;
LABEL_26:
    v98 = *(v14 + 16);
    if (v98)
    {
      break;
    }

LABEL_12:
    v8 = (v94 - 1) & v94;

    v2[6] = v96;
    v9 = specialized thunk for @callee_guaranteed () -> (@owned DisplayList.ViewUpdater.ViewCache.AsyncValues);
    v10 = v92;
  }

  v28 = v16[7] + 16 * v17;
  swift_beginAccess();
  v29 = 0;
  while (v29 < *(v14 + 16))
  {
    v35 = v14 + 32 + 32 * v29;
    v37 = *v35;
    v36 = *(v35 + 8);
    v38 = *(v35 + 16);
    if (*(v35 + 24) == 1)
    {
      v39 = *(v28 + 8);
      v40 = *(v39 + 16);

      if (!v40)
      {
        v54 = v38;
LABEL_42:
        v55 = v96;
        if (!v96 || (v56 = v96, v57 = [v56 count], v58 = objc_msgSend(v56, sel_capacity), v56, v59 = v57 < v58, v55 = v96, !v59))
        {
          v56 = [objc_opt_self() groupWithCapacity_];

          v101 = v56;
          if (!v56)
          {
            goto LABEL_76;
          }

          [v56 setUpdatesAsynchronously_];
          v96 = v56;
        }

        v60 = objc_allocWithZone(MEMORY[0x1E6979410]);
        v61 = v38;
        v62 = v56;
        v63 = MEMORY[0x193ABEC20](v37, v36);
        v64 = v61;
        v65 = [v60 initWithKeyPath:v63 initialValue:v64 additive:0 group:v62];

        [v97 addPresentationModifier_];

        v66 = v65;
        v67 = swift_isUniquelyReferenced_nonNull_native();
        v99 = *(v28 + 8);
        *(v28 + 8) = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v66, v37, v36, v67);

        *(v28 + 8) = v99;
        v68 = [v66 group];
        if (!v68)
        {
          goto LABEL_75;
        }

        v69 = v68;

        swift_beginAccess();
        specialized Set._Variant.insert(_:)(&v100, v69);
        swift_endAccess();

        goto LABEL_29;
      }

      v41 = v38;
      v42 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v36);
      v44 = v43;

      if ((v44 & 1) == 0)
      {
        goto LABEL_42;
      }

      v45 = *(*(v39 + 56) + 8 * v42);
      [v45 setValue_];
      v46 = [v45 group];
      if (!v46)
      {
        goto LABEL_77;
      }

      v47 = v46;

      swift_beginAccess();
      v48 = v102;
      v49 = MEMORY[0x193AC1170](*(v102 + 40), v47);
      v50 = -1 << *(v48 + 32);
      v51 = v49 & ~v50;
      if ((*(v48 + 56 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51))
      {
        v52 = ~v50;
        while (*(*(v48 + 48) + 8 * v51) != v47)
        {
          v51 = (v51 + 1) & v52;
          if (((*(v48 + 56 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
          {
            goto LABEL_39;
          }
        }
      }

      else
      {
LABEL_39:
        v53 = swift_isUniquelyReferenced_nonNull_native();
        v100 = v102;
        specialized _NativeSet.insertNew(_:at:isUnique:)(v47, v51, v53);
        v102 = v100;
      }

      swift_endAccess();
    }

    else
    {

      v30 = v38;
      v31 = MEMORY[0x193ABEC20](v37, v36);
      v32 = [objc_opt_self() animationWithKeyPath_];

      v33 = v32;
      [v33 setBeginTime_];
      [v33 setDuration_];
      [v33 setFillMode_];
      [v33 setToValue_];
      [v33 setRemovedOnCompletion_];

      v34 = MEMORY[0x193ABEC20](v37, v36);
      [v97 addAnimation:v33 forKey:v34];

      specialized Set._Variant.insert(_:)(&v99, v37, v36);
    }

LABEL_29:
    if (++v29 == v98)
    {

      v4 = v88;
      v2 = v89;
      goto LABEL_12;
    }
  }

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
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void destroy for DisplayList.ViewUpdater.ViewCache.PendingAsyncValue(uint64_t a1)
{

  v2 = *(a1 + 16);
}

unint64_t type metadata accessor for ViewGraphDisplayLink.Type()
{
  result = lazy cache variable for type metadata for ViewGraphDisplayLink.Type;
  if (!lazy cache variable for type metadata for ViewGraphDisplayLink.Type)
  {
    type metadata accessor for ViewGraphDisplayLink();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ViewGraphDisplayLink.Type);
  }

  return result;
}

uint64_t _NSThreadStart(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 startAndReturnError:0];
  }

  else
  {
    [v1 start];
    v2 = 1;
  }

  return v2;
}

uint64_t _MovableLockWait(uint64_t a1)
{
  v2 = pthread_self();
  v4 = *(a1 + 128);
  v3 = *(a1 + 132);
  *(a1 + 128) = 0;
  *(a1 + 120) = 0;
  if (v3)
  {
    pthread_cond_broadcast((a1 + 64));
  }

  do
  {
    result = wait_for_lock(a1, v2);
  }

  while (*(a1 + 120));
  *(a1 + 120) = v2;
  *(a1 + 128) = v4;
  return result;
}

uint64_t specialized static ViewGraphDisplayLink.asyncThread(arg:)()
{
  type metadata accessor for NSRunLoop.SchedulerOptions?(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  v3 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v21 = type metadata accessor for NSRunLoop.SchedulerTimeType();
  v7 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v10 = static Update._lock;
  _MovableLockLock(static Update._lock);
  v11 = [objc_opt_self() currentRunLoop];
  v12 = static ViewGraphDisplayLink.asyncRunloop;
  static ViewGraphDisplayLink.asyncRunloop = v11;

  _MovableLockBroadcast(v10);
  if (static ViewGraphDisplayLink.asyncPending == 1)
  {
    v13 = (v3 + 8);
    v14 = (v7 + 8);
    while (1)
    {
      static ViewGraphDisplayLink.asyncPending = 0;
      result = _MovableLockUnlock(v10);
      if (!static ViewGraphDisplayLink.asyncRunloop)
      {
        break;
      }

      v16 = static ViewGraphDisplayLink.asyncRunloop;
      Date.init(timeIntervalSinceNow:)();
      v17 = NSRunLoop.SchedulerTimeType.init(_:)();
      MEMORY[0x193ABFCF0](v17, 0.1);
      v18 = type metadata accessor for NSRunLoop.SchedulerOptions();
      (*(*(v18 - 8) + 56))(v2, 1, 1, v18);
      NSRunLoop.schedule(after:tolerance:options:_:)();

      outlined destroy of NSRunLoop.SchedulerOptions?(v2);
      (*v13)(v5, v22);
      (*v14)(v9, v21);
      result = static ViewGraphDisplayLink.asyncRunloop;
      if (!static ViewGraphDisplayLink.asyncRunloop)
      {
        goto LABEL_10;
      }

      [static ViewGraphDisplayLink.asyncRunloop run];
      _MovableLockLock(v10);
      if ((static ViewGraphDisplayLink.asyncPending & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
LABEL_8:
    v19 = static ViewGraphDisplayLink.asyncRunloop;
    static ViewGraphDisplayLink.asyncRunloop = 0;

    v20 = static ViewGraphDisplayLink.asyncThread;
    static ViewGraphDisplayLink.asyncThread = 0;

    _MovableLockBroadcast(v10);
    return _MovableLockUnlock(v10);
  }

  return result;
}

void type metadata accessor for NSRunLoop.SchedulerOptions?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for NSRunLoop.SchedulerOptions?)
  {
    type metadata accessor for NSRunLoop.SchedulerOptions();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for NSRunLoop.SchedulerOptions?);
    }
  }
}

uint64_t outlined destroy of NSRunLoop.SchedulerOptions?(uint64_t a1)
{
  type metadata accessor for NSRunLoop.SchedulerOptions?(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RangeReplaceableCollection<>.remove(atOffsets:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[1] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18[2] = swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for PartialRangeFrom();
  v18[0] = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v18 - v7;
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v18 - v11;
  type metadata accessor for Slice<IndexSet>(0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  specialized Collection.subscript.getter(v16, v14);
  v20 = v16;
  MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(partial apply for closure #1 in RangeReplaceableCollection<>.remove(atOffsets:), v19, a3, v12);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    (*(v9 + 16))(v8, v12, AssociatedTypeWitness);
    swift_getWitnessTable(MEMORY[0x1E69E6D18], v6);
    RangeReplaceableCollection.removeSubrange<A>(_:)();
    (*(v18[0] + 8))(v8, v6);
    (*(v9 + 8))(v12, AssociatedTypeWitness);
    return _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v16, type metadata accessor for Slice<IndexSet>);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized Collection.subscript.getter@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v36 = a1;
  type metadata accessor for (lower: IndexSet.Index, upper: IndexSet.Index)(0, a2);
  v35 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - v7;
  v9 = type metadata accessor for IndexSet.Index();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - v15;
  type metadata accessor for Range<IndexSet.Index>(0, v14);
  v34 = v17;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PartialRangeFrom<IndexSet.Index>(0, v18);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for IndexSet();
  _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
  v37 = v24;
  v38 = v2;
  v26 = v25;
  dispatch thunk of Collection.startIndex.getter();
  _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index, MEMORY[0x1E6969B18], MEMORY[0x1E6969B28]);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    (*(v10 + 16))(v16, v23, v9);
    dispatch thunk of Collection.endIndex.getter();
    _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v23, type metadata accessor for PartialRangeFrom<IndexSet.Index>);
    _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index, MEMORY[0x1E6969B18], MEMORY[0x1E6969B20]);
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v28 = *(v10 + 32);
      v28(v8, v16, v9);
      v33 = v26;
      v29 = v35;
      v28(&v8[*(v35 + 48)], v12, v9);
      outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(v8, v5, type metadata accessor for (lower: IndexSet.Index, upper: IndexSet.Index));
      v30 = *(v29 + 48);
      v28(v20, v5, v9);
      v31 = *(v10 + 8);
      v32 = v31(&v5[v30], v9);
      outlined init with take of (lower: IndexSet.Index, upper: IndexSet.Index)(v8, v5, v32);
      v28(&v20[*(v34 + 36)], &v5[*(v29 + 48)], v9);
      v31(v5, v9);
      dispatch thunk of Collection.subscript.getter();
      return _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v20, type metadata accessor for Range<IndexSet.Index>);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void type metadata accessor for (lower: IndexSet.Index, upper: IndexSet.Index)(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for (lower: IndexSet.Index, upper: IndexSet.Index))
  {
    type metadata accessor for IndexSet.Index();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (lower: IndexSet.Index, upper: IndexSet.Index));
    }
  }
}

void type metadata accessor for Range<IndexSet.Index>(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for Range<IndexSet.Index>)
  {
    type metadata accessor for IndexSet.Index();
    _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index, MEMORY[0x1E6969B18], MEMORY[0x1E6969B20]);
    v2 = type metadata accessor for Range();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for Range<IndexSet.Index>);
    }
  }
}

void _s10Foundation8IndexSetVACSlAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

void _s10Foundation8IndexSetVACSlAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

void type metadata accessor for PartialRangeFrom<IndexSet.Index>(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for PartialRangeFrom<IndexSet.Index>)
  {
    type metadata accessor for IndexSet.Index();
    _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index, MEMORY[0x1E6969B18], MEMORY[0x1E6969B20]);
    v2 = type metadata accessor for PartialRangeFrom();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for PartialRangeFrom<IndexSet.Index>);
    }
  }
}

uint64_t outlined destroy of Slice<IndexSet>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of (lower: IndexSet.Index, upper: IndexSet.Index)(uint64_t a1, uint64_t a2, double a3)
{
  type metadata accessor for (lower: IndexSet.Index, upper: IndexSet.Index)(0, a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a5;
  v39 = a4;
  v8 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = type metadata accessor for Optional();
  v33 = *(v10 - 8);
  v34 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v35 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - v18;
  v37 = v20;
  v42 = a1;
  v43 = a2;
  v21 = v44;
  result = Collection.firstIndexByOffset(where:)(a1, a2, v8, v20);
  if (!v21)
  {
    v44 = v16;
    v40 = v19;
    v41 = v5;
    v24 = v37;
    v23 = TupleTypeMetadata2;
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v37, 1, TupleTypeMetadata2) == 1)
    {
      (*(v33 + 8))(v24, v34);
      return dispatch thunk of Collection.endIndex.getter();
    }

    else
    {
      v25 = *&v24[*(v23 + 48)];
      v26 = v35;
      v37 = *(v35 + 32);
      TupleTypeMetadata2 = v35 + 32;
      (v37)(v40, v24, AssociatedTypeWitness);
      result = dispatch thunk of Collection.index(after:)();
      v27 = __OFADD__(v25, 1);
      v28 = v25 + 1;
      if (!v27)
      {
        v29 = (v26 + 8);
        do
        {
          dispatch thunk of Collection.endIndex.getter();
          swift_getAssociatedConformanceWitness();
          v30 = dispatch thunk of static Equatable.== infix(_:_:)();
          v31 = *v29;
          (*v29)(v13, AssociatedTypeWitness);
          if (v30)
          {
            v31(v44, AssociatedTypeWitness);
            return (v37)(v36, v40, AssociatedTypeWitness);
          }

          if ((v42(v28) & 1) == 0)
          {
            dispatch thunk of MutableCollection.swapAt(_:_:)();
            dispatch thunk of Collection.formIndex(after:)();
          }

          result = dispatch thunk of Collection.formIndex(after:)();
          v27 = __OFADD__(v28++, 1);
        }

        while (!v27);
        __break(1u);
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t Collection.firstIndexByOffset(where:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, void (*a4)(char *, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v30 = a1;
  v31 = a2;
  v29 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v27 - v12);
  dispatch thunk of Collection.startIndex.getter();
  v14 = 0;
  v28 = v8;
  v32 = (v8 + 8);
  v15 = v13;
  while (1)
  {
    v16 = v5;
    dispatch thunk of Collection.endIndex.getter();
    v17 = a4;
    swift_getAssociatedConformanceWitness();
    a4 = v15;
    v18 = dispatch thunk of static Equatable.== infix(_:_:)();
    v15 = *v32;
    (*v32)(v10, AssociatedTypeWitness);
    if (v18)
    {
      goto LABEL_8;
    }

    v19 = v33;
    v20 = v30(v14);
    if (v19)
    {
      return (v15)(a4, AssociatedTypeWitness);
    }

    v33 = 0;
    if (v20)
    {
      break;
    }

    v15 = a4;
    v5 = v16;
    a4 = v17;
    dispatch thunk of Collection.formIndex(after:)();
    if (__OFADD__(v14++, 1))
    {
      __break(1u);
LABEL_8:
      v15(a4, AssociatedTypeWitness);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      return (*(*(TupleTypeMetadata2 - 8) + 56))(v29, 1, 1, TupleTypeMetadata2);
    }
  }

  v24 = swift_getTupleTypeMetadata2();
  v25 = *(v24 + 48);
  v26 = v29;
  (*(v28 + 32))(v29, a4, AssociatedTypeWitness);
  *(v26 + v25) = v14;
  return (*(*(v24 - 8) + 56))(v26, 0, 1, v24);
}

double destroy for DisplayList.GraphicsRenderer.Cache(void *a1)
{

  return result;
}

double protocol witness for static TextAccessibilityProvider.makeView(content:text:resolved:) in conformance EmptyTextAccessibilityProvider@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ForEach(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *a1 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v12 = v11[1];
    *v10 = *v11;
    v10[1] = v12;
    v13 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
    v14 = ((v11 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v13 = *v14;
    v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
    v16 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v16;
    *((v15 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t ImageRendererHost.proposedSize.setter(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = v4 + *(*v4 + 248);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4 & 1;
  return ImageRendererHost.proposedSize.didset(v6, v7, v8, v9);
}

void ImageRenderer._render(rasterizationScale:renderer:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8[2] = partial apply for thunk for @callee_guaranteed (@unowned CGSize, @guaranteed @callee_guaranteed (@guaranteed CGContextRef) -> ()) -> ();
  v8[3] = v7;
  v9 = v3;
  v10 = a3;
  ImageRendererHost.render(ifNewerThan:renderer:)(0, 1, partial apply for closure #1 in closure #1 in ImageRenderer._render(rasterizationScale:renderer:), v8);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }
}

uint64_t AttributedStringTextStorage.isEqual(to:)(uint64_t a1)
{
  result = swift_dynamicCastClass();
  if (result)
  {

    v2 = static AttributedString.== infix(_:_:)();

    return v2 & 1;
  }

  return result;
}

uint64_t *assignWithTake for _ForegroundColorModifier(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t ImageRenderer.content.setter(uint64_t a1, void (*a2)(void))
{
  v4 = *v2;
  a2();
  v5 = *(*(*(v4 + 80) - 8) + 8);

  return v5(a1);
}

Swift::Void __swiftcall ImageRendererHost.updateRootView()()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(v2 - 8);
  (MEMORY[0x1EEE9AC00])();
  v5 = &v12 - v4;
  v6 = *(v1 + 232);
  swift_beginAccess();
  (*(v3 + 16))(v5, v0 + v6, v2);
  ViewGraph.setRootView<A>(_:)(v5, v2, *(v1 + 88), v7, v8, v9, v10, v11);
  (*(v3 + 8))(v5, v2);
}

uint64_t partial apply for closure #1 in closure #1 in ImageRenderer._render(rasterizationScale:renderer:)(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5[2];
  v7 = v5[5];
  v9[2] = v5[4];
  *&v9[3] = a1;
  *&v9[4] = a2;
  v9[5] = a4;
  v9[6] = a5;
  v9[7] = v7;
  return v6(partial apply for closure #1 in closure #1 in closure #1 in ImageRenderer._render(rasterizationScale:renderer:), v9);
}

uint64_t StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  *a4 = a5;
  *(a4 + 8) = result;
  *(a4 + 12) = a2;
  *(a4 + 16) = a6;
  *(a4 + 24) = a3;
  *(a4 + 32) = a7;
  return result;
}

uint64_t static ModifiedContent<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ModifiedContent(0, a3, a4, v8);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t AnimatorState.update(_:at:environment:)(uint64_t a1, double *a2, unint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = v8[10];
  v10 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v10);
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  v19 = &v65 - v18;
  v20 = *a2;
  v21 = v8[17];
  v22 = *&v4[v21];
  v23 = v8[16];
  v24 = *&v4[v23];
  if (v22 + v24 * -0.5 >= *a2)
  {
    v27 = v8[18];
LABEL_6:
    swift_beginAccess();
    v28 = *(v11 + 16);
    v28(v19, &v4[v27], v9);
    dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
    v29 = *(v11 + 8);
    v29(v19, v9);
    v30 = *(*v4 + 112);
    swift_beginAccess();
    v28(v19, &v4[v30], v9);
    dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
    v29(v19, v9);
    return 0;
  }

  v75 = v17;
  v76 = v16;
  v77 = v14;
  v74 = v21;
  v73 = v15;
  v25 = v8[20];
  if (v4[v25] > 1u)
  {
    if (v4[v25] != 2)
    {
      goto LABEL_14;
    }

    v32 = v23;
    v33 = a1;
    v34 = fmax(v24, 0.0166666667);
    v35 = v34 + v34;
    v36 = v8[15];
    if (v34 + v34 < v20 - *&v4[v36])
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *&v4[v36] = v20 - v35;
      }
    }

    v26 = 3;
    a1 = v33;
    v23 = v32;
    goto LABEL_13;
  }

  if (!v4[v25])
  {
    *&v4[v8[15]] = v20;
    v26 = 1;
LABEL_13:
    v4[v25] = v26;
    goto LABEL_14;
  }

  v4[v25] = 2;
  swift_beginAccess();
  if ((static CoreTesting.isRunning & 1) == 0)
  {
    v64 = *(*v4 + 120);
    *&v4[v74] = v20 + v22 - *&v4[v64];
    *&v4[v64] = v20;
    v27 = *(*v4 + 144);
    goto LABEL_6;
  }

LABEL_14:
  v71 = v23;
  v72 = a1;
  v37 = v20 - *&v4[*(*v4 + 120)];
  swift_beginAccess();
  v80[0] = *(v4 + 3);
  v38 = v4[*(*v4 + 184)];
  v39 = v8[11];

  v70 = HIDWORD(a3) & 1;
  v69 = a3;
  AnimationContext.init(state:environment:isLogicallyComplete:)(v80, v38, v78);
  v41 = &v4[*(*v4 + 192)];
  v42 = *v41;
  if (*v41)
  {
    v43 = v41[1];
    v44 = type metadata accessor for AnimationContext(0, v9, v39, v40);
    AnimationContext.finishingDefinition.setter(v42, v43, v44);
  }

  swift_beginAccess();
  v45 = *(v4 + 2);
  v46 = *(*v4 + 112);
  swift_beginAccess();
  v47 = *(v11 + 16);
  v67 = v46;
  v66 = v47;
  v47(v19, &v4[v46], v9);

  v48 = v75;
  Animation.animate<A>(value:time:context:)(v19, v78, v45, v9, v39, v75, v37);

  v68 = *(v11 + 8);
  v68(v19, v9);
  v49 = (*(v11 + 48))(v48, 1, v9);
  v50 = v77;
  v51 = v76;
  if (v49 != 1)
  {
    v52 = v48;
    v53 = v73;
    (*(v11 + 32))(v73, v52, v9);
    AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v79, v69 | (v70 << 32), v37, v54, v55);
    *(v4 + 3) = v78[0];

    dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
    v66(v19, &v4[v67], v9);
    dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
    v56 = v68;
    v68(v19, v9);
    v57 = *(*v4 + 144);
    swift_beginAccess();
    (*(v11 + 24))(&v4[v57], v53, v9);
    swift_endAccess();
    v58 = v74;
    *&v4[v74] = v20;
    v59 = v71;
    v60 = *&v4[v71];
    if (v60 <= 0.0)
    {
      v56(v53, v9);
    }

    else
    {
      v61 = round(v20 / v60);
      v62 = v9;
      v63 = v58;
      v56(v53, v62);
      *&v4[v63] = (v61 + 1.0) * *&v4[v59];
    }

    return 0;
  }

  (*(v51 + 8))(v48, v50);
  return 1;
}

uint64_t AnimationContext.init(state:environment:isLogicallyComplete:)@<X0>(uint64_t *a1@<X0>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  result = AGCreateWeakAttribute();
  *a4 = v6;
  *(a4 + 8) = result;
  *(a4 + 16) = 0;
  *(a4 + 17) = a3;
  return result;
}

void BezierAnimation.animate<A>(value:time:context:)(float64x2_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>, __n128 a5@<Q0>)
{
  v6 = a5.n128_f64[0];
  if (a2 == MEMORY[0x1E69E63B0])
  {
    v15 = *v5 <= 0.0 || *v5 < a5.n128_f64[0];
    v16 = 0.0;
    if (!v15)
    {
      v18 = *(v5 + 40);
      v17 = *(v5 + 48);
      v19 = *(v5 + 24);
      v20 = *(v5 + 32);
      v21 = a1->f64[0];
      v22 = a5.n128_f64[0] / *v5;
      if (v22 > 1.0)
      {
        v22 = 1.0;
      }

      *v38 = *(v5 + 8);
      *&v38[16] = v19;
      *&v39 = v20;
      if (v22 <= 0.0)
      {
        v22 = 0.0;
      }

      *(&v39 + 1) = v18;
      v40[0] = v17;
      v23 = UnitCurve.CubicSolver.solveX(_:epsilon:)(v22, 0.000000953674316);
      v16 = v21 * (round(v23 * (v17 + v23 * (v18 + v20 * v23)) * 1048576.0) * 0.000000953674316);
    }

    *a4 = v16;
    *(a4 + 8) = v15;
  }

  else
  {
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    v11 = *v5;
    if (v12 == a2)
    {
      v24 = v11 <= 0.0 || v11 < v6;
      v25 = 0uLL;
      v26 = 0uLL;
      if (!v24)
      {
        v28 = *(v5 + 40);
        v27 = *(v5 + 48);
        v29 = *(v5 + 24);
        v30 = *(v5 + 32);
        v31 = v6 / v11;
        if (v31 > 1.0)
        {
          v31 = 1.0;
        }

        if (v31 <= 0.0)
        {
          v31 = 0.0;
        }

        *v38 = *(v5 + 8);
        *&v38[16] = v29;
        *&v39 = v30;
        *(&v39 + 1) = v28;
        v40[0] = v27;
        v32 = *a1;
        v36 = a1[1];
        v37 = v32;
        v33 = UnitCurve.CubicSolver.solveX(_:epsilon:)(v31, 0.000000953674316);
        v34 = round(v33 * (v27 + v33 * (v28 + v30 * v33)) * 1048576.0) * 0.000000953674316;
        v25 = vmulq_n_f64(v37, v34);
        v26 = vmulq_n_f64(v36, v34);
      }

      *a4 = v25;
      *(a4 + 16) = v26;
      *(a4 + 32) = v24;
    }

    else
    {
      *v38 = *v5;
      *&v38[8] = *(v5 + 8);
      v39 = *(v5 + 24);
      *v40 = *(v5 + 40);
      v41 = BezierAnimation.fraction(for:)(v6);
      *v38 = *&v41.is_nil;
      v38[8] = v13 & 1;
      MEMORY[0x1EEE9AC00](*&v41.is_nil);
      v35[2] = a2;
      v35[3] = a3;
      v35[4] = a1;
      type metadata accessor for Double?();
      _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in BezierAnimation.animate<A>(value:time:context:), v35, MEMORY[0x1E69E73E0], a2, v14, a4);
    }
  }
}

Swift::Double_optional __swiftcall BezierAnimation.fraction(for:)(Swift::Double a1)
{
  if (*v1 <= 0.0 || *v1 < a1)
  {
    v3 = 0;
  }

  else
  {
    v5 = v1[5];
    v4 = v1[6];
    v6 = v1[4];
    v7 = a1 / *v1;
    if (v7 > 1.0)
    {
      v7 = 1.0;
    }

    if (v7 <= 0.0)
    {
      v7 = 0.0;
    }

    v8 = UnitCurve.CubicSolver.solveX(_:epsilon:)(v7, 0.000000953674316);
    a1 = round(v8 * (v4 + v8 * (v5 + v6 * v8)) * 1048576.0) * 0.000000953674316;
    v3 = LOBYTE(a1);
  }

  result.value = a1;
  result.is_nil = v3;
  return result;
}

double UnitCurve.CubicSolver.solveX(_:epsilon:)(double result, double a2)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = (v5 + (v4 + *v2 * result) * result) * result;
  if (vabdd_f64(v6, result) >= a2)
  {
    v7 = v3 * 3.0;
    v8 = v4 + v4;
    v9 = v5 + (v4 + v4 + v3 * 3.0 * result) * result;
    if (fabs(v9) < a2 || (v10 = result - (v6 - result) / v9, v16 = v10 * (v5 + v10 * (v4 + v3 * v10)), vabdd_f64(v16, result) >= a2) && ((v17 = v5 + v10 * (v8 + v7 * v10), fabs(v17) < a2) || (v10 = v10 - (v16 - result) / v17, v18 = v10 * (v5 + v10 * (v4 + v3 * v10)), vabdd_f64(v18, result) >= a2) && ((v19 = v5 + v10 * (v8 + v7 * v10), fabs(v19) < a2) || (v10 = v10 - (v18 - result) / v19, v20 = v10 * (v5 + v10 * (v4 + v3 * v10)), vabdd_f64(v20, result) >= a2) && ((v21 = v5 + v10 * (v8 + v7 * v10), fabs(v21) < a2) || (v10 = v10 - (v20 - result) / v21, v22 = v10 * (v5 + v10 * (v4 + v3 * v10)), vabdd_f64(v22, result) >= a2) && ((v23 = v5 + v10 * (v8 + v7 * v10), fabs(v23) < a2) || (v10 = v10 - (v22 - result) / v23, v24 = v10 * (v5 + v10 * (v4 + v3 * v10)), vabdd_f64(v24, result) >= a2) && ((v25 = v5 + v10 * (v8 + v7 * v10), fabs(v25) < a2) || (v10 = v10 - (v24 - result) / v25, v26 = v10 * (v5 + v10 * (v4 + v3 * v10)), vabdd_f64(v26, result) >= a2) && ((v27 = v5 + v10 * (v8 + v7 * v10), fabs(v27) < a2) || (v10 = v10 - (v26 - result) / v27, vabdd_f64(v10 * (v5 + v10 * (v4 + v3 * v10)), result) >= a2))))))))
    {
      v10 = 0.0;
      if (result >= 0.0)
      {
        v10 = 1.0;
        if (result <= 1.0)
        {
          v11 = 1.0;
          v12 = 0.0;
          v13 = 1024;
          v10 = result;
          do
          {
            v14 = v10 * (v5 + v10 * (v4 + v3 * v10));
            if (vabdd_f64(v14, result) < a2)
            {
              break;
            }

            if (v14 - result >= 0.0)
            {
              v11 = v10;
            }

            else
            {
              v12 = v10;
            }

            v15 = v12 < v11 && v13-- > 1;
            v10 = v12 + (v11 - v12) * 0.5;
          }

          while (v15);
        }
      }
    }

    return v10;
  }

  return result;
}

void type metadata accessor for Double?()
{
  if (!lazy cache variable for type metadata for Double?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Double?);
    }
  }
}

uint64_t partial apply for closure #1 in BezierAnimation.animate<A>(value:time:context:)@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = *a1;
  (*(*(v3 - 8) + 16))(a2, v2[4], v3);
  return (*(v4 + 16))(v3, v4, v5);
}

uint64_t AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(char a1, unint64_t a2, double a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = *v6;
  v11 = type metadata accessor for AnimatorState.Fork(0, *(*v6 + 80), *(*v6 + 88), a5);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v43 = &v38 - v13;
  v14 = type metadata accessor for IndexSet();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v45 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v10 + 184);
  v18 = *(v6 + v17);
  v44 = v12;
  if (v18 & 1) == 0 && (a1)
  {
    *(v6 + v17) = a1 & 1;
    v19 = *(*v6 + 176);
    swift_beginAccess();
    v20 = *(v6 + v19);
    if (v20 >> 62)
    {
      goto LABEL_37;
    }

    result = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      v19 = *(*v6 + 200);
      swift_beginAccess();
      v46 = *(v6 + v19);
      v26 = type metadata accessor for Array();
      swift_getWitnessTable(MEMORY[0x1E69E6340], v26);
      result = Collection.isEmpty.getter();
      if (result)
      {
        return result;
      }

      v38 = v15;
      v39 = v14;
      IndexSet.init()();
      v48 = *(v6 + v19);
      swift_getWitnessTable(MEMORY[0x1E69E6338], v26);
      result = RandomAccessCollection<>.indices.getter();
      v15 = v46;
      v27 = v47;
      v14 = v26;
      if (v46 == v47)
      {
LABEL_17:
        swift_beginAccess();
        WitnessTable = swift_getWitnessTable(MEMORY[0x1E69E6318], v14);
        v30 = v29;
        swift_getWitnessTable(MEMORY[0x1E69E6348], v14, WitnessTable);
        v31 = v45;
        RangeReplaceableCollection<>.remove(atOffsets:)(v45, v14, v30, v32);
        swift_endAccess();
        return (*(v38 + 8))(v31, v39);
      }

      if (v47 < v46)
      {
        __break(1u);
        goto LABEL_42;
      }

      v41 = v26;
      v42 = (v12 + 8);
      a2 = a2 | ((HIDWORD(a2) & 1) << 32);
      v40 = a2;
      while (v15 < v27)
      {
        swift_beginAccess();
        Array._makeMutableAndUnique()();
        Array._checkSubscript_mutating(_:)(v15);
        v33 = AnimatorState.Fork.update(time:environment:)(a2, v11, a3);
        _ViewInputs.base.modify();
        swift_endAccess();
        if ((v33 & 1) == 0)
        {
          goto LABEL_22;
        }

        swift_beginAccess();
        v14 = v43;
        Array.subscript.getter();
        v34 = *(v14 + *(v11 + 48));
        swift_endAccess();
        a2 = v42;
        v35 = *v42;

        v12 = v11;
        v35(v14, v11);
        if (v34 >> 62)
        {
          v11 = __CocoaSet.count.getter();
          if (v11)
          {
LABEL_27:
            if (v11 < 1)
            {
              goto LABEL_36;
            }

            for (i = 0; i != v11; ++i)
            {
              if ((v34 & 0xC000000000000001) != 0)
              {
                v37 = MEMORY[0x193AC03C0](i, v34);
              }

              else
              {
                v37 = *(v34 + 8 * i + 32);
              }

              (*(*v37 + 96))();
            }
          }
        }

        else
        {
          v11 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v11)
          {
            goto LABEL_27;
          }
        }

        IndexSet.insert(_:)(v15);
        v11 = v12;
        v12 = v44;
        a2 = v40;
        v14 = v41;
LABEL_22:
        if (++v15 == v27)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      result = __CocoaSet.count.getter();
      if (!result)
      {
        continue;
      }

      break;
    }

LABEL_5:
    v22 = *(v6 + v19);
    if (!(v22 >> 62))
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v23)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v6 + v19) = MEMORY[0x1E69E7CC0];

      v12 = v44;
      continue;
    }

    break;
  }

  result = __CocoaSet.count.getter();
  v23 = result;
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_7:
  v42 = v11;
  if (v23 >= 1)
  {

    for (j = 0; j != v23; ++j)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x193AC03C0](j, v22);
      }

      else
      {
        v25 = *(v22 + 8 * j + 32);
      }

      (*(*v25 + 96))();
    }

    v11 = v42;
    goto LABEL_14;
  }

LABEL_42:
  __break(1u);
  return result;
}

void *specialized ImageRendererHost.content.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 232);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 24))(v1 + v4, a1);
  swift_endAccess();
  return ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)(1u, 1, *v1, &protocol witness table for ImageRendererHost<A>);
}

Swift::Void __swiftcall AnimatorState.nextUpdate()()
{
  AGGraphGetCurrentAttribute();
  v1 = *(*v0 + 136);
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 1090;
    type metadata accessor for (AGAttribute?, Double)(0);
    AGGraphAddTraceEvent();
  }

  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v2 = swift_dynamicCastClassUnconditional();
  v3 = *(v0 + v1);
  swift_beginAccess();
  v4 = *(v2 + 376);
  if (v3 < v4)
  {
    v4 = v3;
  }

  *(v2 + 376) = v4;

  specialized static GraphHost.currentHost.getter();
  swift_dynamicCastClassUnconditional();
  v5 = *(v0 + *(*v0 + 128));
  v6 = (v0 + *(*v0 + 152));
  v7 = *v6;
  v8 = *(v6 + 4);
  swift_beginAccess();
  v9 = v7 | (v8 << 32);
  ViewGraph.NextUpdate.interval(_:reason:)(v5, v9);
  swift_endAccess();
}

__n128 GraphicsContext.ResolvedShading.init(_:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[5];
  v48 = a1[4];
  v49 = v4;
  v50 = a1[6];
  v51 = *(a1 + 14);
  v5 = a1[1];
  v44 = *a1;
  v45 = v5;
  v6 = a1[3];
  v46 = a1[2];
  v47 = v6;
  if (BYTE5(v4))
  {
    goto LABEL_19;
  }

  v7 = DWORD1(v44);
  v22 = DWORD2(v44);
  v23 = v45;
  v8 = v44;
  v9 = *(&v44 + 3);
  if (BYTE8(v50) == 255)
  {
    if (one-time initialization token for normal != -1)
    {
      swift_once();
    }

    v10 = static GraphicsBlendMode.normal;
    v11 = byte_1ED52F818;
    outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
  }

  else
  {
    v10 = v50;
    v11 = BYTE8(v50);
  }

  outlined copy of GraphicsBlendMode?(v50, SBYTE8(v50));
  if (one-time initialization token for normal != -1)
  {
    swift_once();
  }

  v12 = static GraphicsBlendMode.normal;
  v13 = byte_1ED52F818;
  if (v11)
  {
    if (byte_1ED52F818)
    {
      swift_unknownObjectRetain();
      outlined consume of GraphicsBlendMode(v10, 1);
      outlined consume of GraphicsBlendMode(v12, 1);
      if (v10 != v12)
      {
        goto LABEL_19;
      }

      goto LABEL_15;
    }

    swift_unknownObjectRetain();
LABEL_18:
    outlined copy of GraphicsBlendMode(v12, v13);
    outlined consume of GraphicsBlendMode(v10, v11 & 1);
    outlined consume of GraphicsBlendMode(v12, v13);
    outlined consume of GraphicsBlendMode(v10, v11 & 1);
    goto LABEL_19;
  }

  if (byte_1ED52F818)
  {
    goto LABEL_18;
  }

  outlined consume of GraphicsBlendMode(v10, 0);
  outlined consume of GraphicsBlendMode(v12, 0);
  if (v10 != v12)
  {
LABEL_19:
    v14 = a1[5];
    v28 = a1[4];
    v29 = v14;
    v30 = a1[6];
    *&v31 = *(a1 + 14);
    v15 = a1[1];
    v24 = *a1;
    v25 = v15;
    v16 = a1[3];
    v26 = a1[2];
    v27 = v16;
    _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi3_(&v24);
    goto LABEL_20;
  }

LABEL_15:
  if (*(v51 + 16))
  {
    goto LABEL_19;
  }

  outlined destroy of _ShapeStyle_Pack.Style(&v44);
  *&v24 = __PAIR64__(v7, v8);
  DWORD2(v24) = v22;
  *(&v24 + 3) = *(&v49 + 2) * v9;
  LODWORD(v25) = v23;
  _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi0_(&v24);
LABEL_20:
  v43 = v34;
  v39 = v28;
  v40 = v29;
  v41 = v30;
  v42 = v31;
  v35 = v24;
  v36 = v25;
  v37 = v26;
  v38 = v27;
  v17 = v33;
  *(a2 + 128) = v32;
  *(a2 + 144) = v17;
  *(a2 + 160) = v43;
  v18 = v40;
  *(a2 + 64) = v39;
  *(a2 + 80) = v18;
  v19 = v42;
  *(a2 + 96) = v41;
  *(a2 + 112) = v19;
  v20 = v36;
  *a2 = v35;
  *(a2 + 16) = v20;
  result = v38;
  *(a2 + 32) = v37;
  *(a2 + 48) = result;
  return result;
}

void GraphicsContext.resolveSymbol<A>(id:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = *(*(a2 + 16) + 24);
  if (v5)
  {
    v9 = *(*v5 + 80);

    v9(a1, a3, a4);
  }

  else
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
  }
}

Swift::Void __swiftcall Path.addLine(to:)(CGPoint to)
{

  Path.move(to:)(1u, to.x, to.y);
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, char a5, double a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4, a6);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a5 & 1) == 0)
  {
    if (v22 >= v20 && (a5 & 1) == 0)
    {
      v23 = v15;
      specialized _NativeDictionary.copy()();
      v15 = v23;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a5 & 1);
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4, a6);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    return swift_unknownObjectRelease();
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v15, a2, a3, a4, a1, v25, a6);
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unint64_t a1, unint64_t a2, uint64_t a3, double a4)
{
  v5 = a3;
  v8 = HIDWORD(a1);
  v9 = HIDWORD(a2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v5);
  v10 = 0.0;
  if (a4 != 0.0)
  {
    v10 = a4;
  }

  MEMORY[0x193AC11E0](*&v10);
  v11 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v5, v11, a4);
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, void *a6, double a7)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v7 = a6[6] + 32 * result;
  *v7 = a2;
  *(v7 + 8) = a3;
  *(v7 + 16) = a4;
  *(v7 + 24) = a7;
  *(a6[7] + 8 * result) = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, double a5)
{
  v7 = -1 << *(v5 + 32);
  result = a4 & ~v7;
  if ((*(v5 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v9 = ~v7;
    do
    {
      v10 = *(v5 + 48) + 32 * result;
      v11 = *(v10 + 24);
      v16 = *v10 == a1 && *(v10 + 4) == HIDWORD(a1) && *(v10 + 8) == a2 && *(v10 + 12) == HIDWORD(a2) && a3 == *(v10 + 16);
      if (v11 != a5)
      {
        v16 = 0;
      }

      if (v16)
      {
        break;
      }

      result = (result + 1) & v9;
    }

    while (((*(v5 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

double GraphicsContext.userToDeviceScale.getter(uint64_t a1, __n128 a2)
{
  RBDrawingStateGetCTM();
  v2 = vaddvq_f64(vmulq_f64(v12, v12));
  v3 = vmulq_f64(v13, v13);
  v4 = vaddq_f64(v3, vdupq_laneq_s64(v3, 1)).f64[0];
  v5 = v4 == 1.0 && v2 == 1.0;
  v6 = (sqrt(v2) + sqrt(v4)) * 0.5;
  if (v5)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = v6;
  }

  v8 = RBDrawingStateGetDisplayList();
  [v8 deviceScale];
  v10 = v9;

  return v10 * v7;
}

uint64_t GraphicsContext.transform.setter(uint64_t a1)
{
  RBDrawingStateGetCTM();
  result = static CGAffineTransform.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    GraphicsContext.copyOnWrite()();
    return RBDrawingStateSetCTM();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlatformNamedImageRepresentableContext(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_18D2655EC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t assignWithTake for Text.Sizing(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t closure #1 in CanvasSymbols.updateValue()(void *a1, uint64_t a2, char **a3)
{
  v6 = a1[3];
  v39 = a1[2];
  v40 = v6;

  _ViewList_ID.Canonical.init(id:)(&v39, &v41);
  v7 = v41;
  v8 = DWORD1(v41);
  v9 = *(&v41 + 1);
  v10 = *(a2 + 104);
  v11 = v41 | (DWORD1(v41) << 32);
  if (!*(v10 + 16) || (v12 = specialized __RawDictionaryStorage.find<A>(_:)(v41 | (DWORD1(v41) << 32), *(&v41 + 1)), (v13 & 1) == 0))
  {
    v31 = AGSubgraphGetGraph();
    v32 = AGSubgraphCreate();

    AGSubgraphAddChild();
    AGGraphClearUpdate();
    v33 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    closure #1 in closure #1 in CanvasSymbols.updateValue()(a2, a1, v32, v11, v9, a3);
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();

    return 1;
  }

  v38 = a3;
  v14 = *(v10 + 56) + 48 * v12;
  v15 = *v14;
  v16 = *(v14 + 8);
  v17 = *(v14 + 40);
  v18 = *(a2 + 112);
  if (*(v14 + 16) != v18)
  {
    v20 = *(v14 + 32);
    v19 = *(v14 + 36);
    v21 = a1[10];

    *&v41 = v15;
    *(&v41 + 1) = v16;
    v42 = v18;
    v43 = v21;
    v44 = v20;
    v45 = v19;
    v37 = v19;
    v46 = v17;

    v22 = v15;
    outlined init with copy of CanvasSymbols.Child(&v41, &v39);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = *(a2 + 104);
    *(a2 + 104) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v41, v11, v9, isUniquelyReferenced_nonNull_native);

    *(a2 + 104) = v39;
    v24 = *v38;
    v25 = v22;

    v26 = swift_isUniquelyReferenced_nonNull_native();
    *v38 = v24;
    if ((v26 & 1) == 0)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
      *v38 = v24;
    }

    v28 = *(v24 + 2);
    v27 = *(v24 + 3);
    if (v28 >= v27 >> 1)
    {
      *v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v24);
    }

    v29 = *v38;
    *(v29 + 2) = v28 + 1;
    v30 = &v29[48 * v28];
    *(v30 + 4) = v25;
    *(v30 + 5) = v16;
    *(v30 + 12) = v18;
    *(v30 + 7) = v21;
    *(v30 + 16) = v20;
    *(v30 + 17) = v37;
    *(v30 + 9) = v17;

    return 1;
  }

  *&v41 = 0;
  *(&v41 + 1) = 0xE000000000000000;

  v35 = v15;
  _StringGuts.grow(_:)(33);

  *&v41 = 0xD00000000000001FLL;
  *(&v41 + 1) = 0x800000018DD83230;
  v39 = __PAIR64__(v8, v7);
  v40 = v9;
  v36 = _ViewList_ID.Canonical.description.getter();
  MEMORY[0x193ABEDD0](v36);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, unint64_t a2, uint64_t a3, char a4)
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
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 48 * v11;

    outlined assign with take of CanvasSymbols.Child(a1, v22);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

uint64_t initializeWithCopy for CanvasSymbols.Child(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v5 = v3;

  return a1;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV032AccessibilitySpeechAdjustedPitchF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5Tm(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, a2, a3, a4, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v7);
  result = a5(a1);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

void EnvironmentValues.dividerThickness.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016DividerThicknessI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v1);
    v4 = v3;

    if ((v4 & 1) == 0)
    {
      return;
    }

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015DynamicTypeSizeI033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt1g5(v1, v8);

    v5 = LOBYTE(v8[0]);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA016DividerThicknessF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v1);
    if ((v6 & 1) == 0)
    {
      return;
    }

    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015DynamicTypeSizeS033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt0g5(v1);
    if (v7)
    {
      v5 = *(v7 + 72);
    }

    else
    {
      v5 = 3;
    }
  }

  if ((v5 - 7) >= 5)
  {
    v8[0] = v1;
    v8[1] = v2;
    EnvironmentValues.pixelLength.getter();
  }
}

uint64_t closure #1 in AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v7 = type metadata accessor for AnimatableAttributeHelper(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = *AGGraphGetValue();
  v13 = *(v8 + 8);

  result = v13(v11, v7);
  *a5 = v12;
  return result;
}

uint64_t SymbolRenderer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t assignWithTake for CanvasSymbols.Child(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

double destroy for CanvasSymbols.Child(id *a1)
{

  return result;
}

void type metadata accessor for TypedElement<TransactionPropertyKey<AnimationReasonKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<AnimationReasonKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<AnimationReasonKey>, &type metadata for AnimationReasonKey, &protocol witness table for AnimationReasonKey, type metadata accessor for TransactionPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type TransactionPropertyKey<AnimationReasonKey> and conformance TransactionPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<AnimationReasonKey>>);
    }
  }
}

uint64_t partial apply for closure #3 in implicit closure #3 in ChildEnvironment.updateValue()@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  type metadata accessor for AnyKeyPath();
  result = MEMORY[0x193AC0030](v4, v2);
  *a2 = result & 1;
  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ScrollEdgeEffectTagReceiverModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && *(*(*(a3 + 16) - 8) + 64) <= 0x18uLL && (*(v4 + 80) & 0x100000) == 0)
  {
    (*(v4 + 16))(a1, a2);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 + 16) & ~v5));
  }

  return v3;
}

void lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect()
{
  if (!lazy protocol witness table cache variable for type _RotationEffect and conformance _RotationEffect)
  {
    swift_getWitnessTable("y", &type metadata for _RotationEffect, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _RotationEffect and conformance _RotationEffect);
  }
}

{
  if (!lazy protocol witness table cache variable for type _RotationEffect and conformance _RotationEffect)
  {
    swift_getWitnessTable(protocol conformance descriptor for _RotationEffect, &type metadata for _RotationEffect, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _RotationEffect and conformance _RotationEffect);
  }
}

{
  if (!lazy protocol witness table cache variable for type _RotationEffect and conformance _RotationEffect)
  {
    swift_getWitnessTable(protocol conformance descriptor for _RotationEffect, &type metadata for _RotationEffect, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _RotationEffect and conformance _RotationEffect);
  }
}

{
  if (!lazy protocol witness table cache variable for type _RotationEffect and conformance _RotationEffect)
  {
    swift_getWitnessTable(protocol conformance descriptor for _RotationEffect, &type metadata for _RotationEffect, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _RotationEffect and conformance _RotationEffect);
  }
}

uint64_t _ChangedGesture.init(_body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for ChangedCallbacks(255, AssociatedTypeWitness, a4, v11);
  swift_getWitnessTable(protocol conformance descriptor for ChangedCallbacks<A>, v12);
  v15 = type metadata accessor for CallbacksGesture(255, v12, v13, v14);
  swift_getWitnessTable(protocol conformance descriptor for CallbacksGesture<A>, v15);
  v19[0] = v15;
  v19[1] = a2;
  v19[2] = v16;
  v19[3] = a3;
  v17 = type metadata accessor for ModifierGesture(0, v19);
  return (*(*(v17 - 8) + 32))(a5, a1, v17);
}

void instantiation function for generic protocol witness table for _RotationEffect(uint64_t a1)
{
  lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect();
  *(a1 + 8) = v2;
}

{
  lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect();
  *(a1 + 8) = v2;
  lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect();
  *(a1 + 16) = v3;
}

void lazy protocol witness table accessor for type GeometryEffectTransform<_RotationEffect> and conformance GeometryEffectTransform<A>()
{
  if (!lazy protocol witness table cache variable for type GeometryEffectTransform<_RotationEffect> and conformance GeometryEffectTransform<A>)
  {
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(255, &lazy cache variable for type metadata for GeometryEffectTransform<_RotationEffect>, lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect, &type metadata for _RotationEffect, type metadata accessor for GeometryEffectTransform);
    swift_getWitnessTable(protocol conformance descriptor for GeometryEffectTransform<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type GeometryEffectTransform<_RotationEffect> and conformance GeometryEffectTransform<A>);
  }
}

double static EnvironmentReader._makeViewList(view:inputs:)@<D0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v10 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
LABEL_7:
      v26[1] = v9;
      v12 = type metadata accessor for EnvironmentReader(0, a3, a4, v11);
      static _ViewListOutputs.unaryViewList<A>(view:inputs:)(a2, v12, &protocol witness table for EnvironmentReader<A>, a5);
      return result;
    }
  }

  else if (static Semantics.forced < v10)
  {
    goto LABEL_7;
  }

  v14 = *(a2 + 16);
  swift_beginAccess();
  v15 = *(v14 + 16);
  v17 = type metadata accessor for EnvironmentReader(0, a3, a4, v16);
  swift_getWitnessTable(protocol conformance descriptor for EnvironmentReader<A>, v17);
  v19 = v18;
  v25[0] = EnvironmentalViewChild.init(view:env:)(v9, v15);
  v25[1] = v20;
  v22 = type metadata accessor for EnvironmentalViewChild(0, v17, v19, v21);

  swift_getWitnessTable(protocol conformance descriptor for EnvironmentalViewChild<A>, v22);
  _GraphValue.init<A>(_:)(v25, a3, v22, v23, v26);
  v24 = v26[0];
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
  }

  LODWORD(v25[0]) = v24;
  (*(a4 + 32))(v25, a2, a3, a4);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v24, a3, a4);

  return result;
}

unint64_t EnvironmentalViewChild.init(view:env:)(unsigned int a1, uint64_t a2)
{
  type metadata accessor for PropertyList.Tracker();
  v4 = swift_allocObject();
  type metadata accessor for AtomicBuffer<TrackerData>(0, v5, v6, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = MEMORY[0x1E69E7CC8];
  *(v8 + 24) = 0;
  *(v8 + 32) = v9;
  v10 = MEMORY[0x1E69E7CC0];
  *(v8 + 40) = v9;
  *(v8 + 48) = v10;
  *(v8 + 56) = 0;
  *(v4 + 16) = v8;
  return a1 | (a2 << 32);
}

void lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout()
{
  if (!lazy protocol witness table cache variable for type AnyLayout and conformance AnyLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for AnyLayout, &type metadata for AnyLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AnyLayout and conformance AnyLayout);
  }
}

{
  if (!lazy protocol witness table cache variable for type AnyLayout and conformance AnyLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for AnyLayout, &type metadata for AnyLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AnyLayout and conformance AnyLayout);
  }
}

void type metadata accessor for ModifiedContent<PlaceholderContentView<OffsetTransition>, _OffsetEffect>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<PlaceholderContentView<OffsetTransition>, _OffsetEffect>)
  {
    type metadata accessor for _ContiguousArrayStorage<ContentTransition.Effect>(255, &lazy cache variable for type metadata for PlaceholderContentView<OffsetTransition>, &type metadata for OffsetTransition, type metadata accessor for PlaceholderContentView);
    v4 = type metadata accessor for ModifiedContent(a1, v2, &type metadata for _OffsetEffect, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ModifiedContent<PlaceholderContentView<OffsetTransition>, _OffsetEffect>);
    }
  }
}

id *assignWithCopy for GroupElementsOfContent(id *a1, id *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (a1 != a2)
  {
    if (*(v6 + 64) <= 0x40uLL)
    {
      v7 = 64;
    }

    else
    {
      v7 = *(v6 + 64);
    }

    v8 = *(a1 + v7);
    v9 = v8 - 2;
    if (v8 >= 2)
    {
      if (v7 <= 3)
      {
        v10 = v7;
      }

      else
      {
        v10 = 4;
      }

      if (v10 <= 1)
      {
        if (!v10)
        {
          goto LABEL_19;
        }

        v11 = *a1;
      }

      else if (v10 == 2)
      {
        v11 = *a1;
      }

      else if (v10 == 3)
      {
        v11 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v11 = *a1;
      }

      v12 = (v11 | (v9 << (8 * v7))) + 2;
      v8 = v11 + 2;
      if (v7 < 4)
      {
        v8 = v12;
      }
    }

LABEL_19:
    if (v8 == 1)
    {
      (*(v6 + 8))(a1, v5);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v13 = *(a2 + v7);
    v14 = v13 - 2;
    if (v13 >= 2)
    {
      if (v7 <= 3)
      {
        v15 = v7;
      }

      else
      {
        v15 = 4;
      }

      if (v15 <= 1)
      {
        if (!v15)
        {
          goto LABEL_36;
        }

        v16 = *a2;
        if (v7 < 4)
        {
LABEL_39:
          if ((v16 | (v14 << (8 * v7))) != 0xFFFFFFFF)
          {
            goto LABEL_40;
          }

          goto LABEL_37;
        }
      }

      else if (v15 == 2)
      {
        v16 = *a2;
        if (v7 < 4)
        {
          goto LABEL_39;
        }
      }

      else if (v15 == 3)
      {
        v16 = *a2 | (*(a2 + 2) << 16);
        if (v7 < 4)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v16 = *a2;
        if (v7 < 4)
        {
          goto LABEL_39;
        }
      }

      v13 = v16 + 2;
    }

LABEL_36:
    if (v13 != 1)
    {
LABEL_40:
      v17 = a2[3];
      a1[3] = v17;
      a1[4] = a2[4];
      (**(v17 - 1))(a1, a2);
      v18 = a2[5];
      a1[5] = v18;
      a1[6] = a2[6];
      a1[7] = a2[7];
      *(a1 + v7) = 0;
      v19 = v18;

      goto LABEL_41;
    }

LABEL_37:
    (*(v6 + 16))(a1, a2, v5);
    *(a1 + v7) = 1;
  }

LABEL_41:
  v20 = *(v6 + 64);
  if (v20 <= 0x40)
  {
    v20 = 64;
  }

  v21 = v20 + 8;
  v22 = ((a1 + v21) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((a2 + v21) & 0xFFFFFFFFFFFFFFF8);
  v24 = v23[1];
  *v22 = *v23;
  v22[1] = v24;

  return a1;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonV033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonV033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for TransactionPropertyKey<AnimationReasonKey>, &type metadata for AnimationReasonKey, &protocol witness table for AnimationReasonKey, type metadata accessor for TransactionPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LayoutSubview(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

double AnimatorState.addListeners(transaction:)(void *a1)
{
  v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE017AnimationListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (v3)
  {
    v4 = v3[9];
    if (v4)
    {
      v5 = *(*v1 + 168);
      swift_beginAccess();
      v6 = swift_retain_n();
      MEMORY[0x193ABF170](v6);
      if (*((*(v1 + v5) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v5) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v7 = swift_endAccess();
      (*(*v4 + 88))(v7);
    }
  }

  v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE024AnimationLogicalListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (v8)
  {
    v10 = v8[9];
    if (v10)
    {
      v11 = *(*v10 + 88);

      v13 = v11(v12);
      if (*(v1 + *(*v1 + 184)) == 1)
      {
        (*(*v10 + 96))(v13);
      }

      else
      {
        v14 = *(*v1 + 176);
        swift_beginAccess();

        MEMORY[0x193ABF170](v15);
        if (*((*(v1 + v14) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v14) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }
    }
  }

  return result;
}

uint64_t assignWithCopy for Glass(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of _Glass.Variant.Role(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of _Glass.Variant.Role(v6, v7);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t Gesture<>.onChanged(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for ChangedCallbacks(255, AssociatedTypeWitness, a5, v13);
  swift_getWitnessTable(protocol conformance descriptor for ChangedCallbacks<A>, v14);
  v17 = type metadata accessor for CallbacksGesture(255, v14, v15, v16);
  swift_getWitnessTable(protocol conformance descriptor for CallbacksGesture<A>, v17);
  v23 = v17;
  v24 = a3;
  v25 = v18;
  v26 = a4;
  v19 = type metadata accessor for ModifierGesture(0, &v23);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v23 - v20;
  v23 = a1;
  v24 = a2;

  Gesture.callbacks<A>(_:)(&v23, a3, v14, a4, v21);

  return _ChangedGesture.init(_body:)(v21, a3, a4, a5, a6);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DisplayList.Version(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](*v1);
  return Hasher._finalize()();
}

Swift::Int_optional __swiftcall ForEachState.fetchViewsPerElement()()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 80);
  v26 = *(*(v3 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  v25 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v23 = &v21 - v6;
  v7 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  ForEachState.viewsPerElement.getter();
  if ((v11 & 0x100) == 0)
  {
    goto LABEL_6;
  }

  v12 = *(*v0 + 160);
  swift_beginAccess();
  v13 = *(v2 + 112);
  v27 = v4;
  v28 = *(v2 + 88);
  v29 = v3;
  v30 = v13;
  v14 = type metadata accessor for ForEach(0, &v27);
  v22 = *(*(v14 - 8) + 48);
  v15 = v22(&v0[v12], 1, v14);
  if (v15 == 1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v21 = *(v7 + 16);
  v21(v10, &v0[v12], v4);
  v17 = dispatch thunk of Collection.isEmpty.getter();
  v18 = *(v7 + 8);
  v18(v10, v4);
  if ((v17 & 1) == 0)
  {
    v15 = v22(&v1[v12], 1, v14);
    if (v15 != 1)
    {
      v21(v10, &v1[v12], v4);
      v19 = v23;
      dispatch thunk of Collection.startIndex.getter();
      v18(v10, v4);
      ForEachState.item(at:offset:)(v19, 0);

      (*(v24 + 8))(v19, v25);
      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_6:
  v15 = ForEachState.viewsPerElement.getter();
  if ((v20 & 0x100) != 0)
  {
    v15 = 0;
  }

  v16 = (v20 | ((v20 & 0x100) >> 8)) & 1;
LABEL_11:
  result.value = v15;
  result.is_nil = v16;
  return result;
}

uint64_t ViewModifier.requiring<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v11 == 1)
  {
    TupleTypeMetadata = swift_checkMetadataState();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v8);
    v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v15)
    {
      v19 = 0;
      v20 = v16 & 0xFFFFFFFFFFFFFFFELL;
      if (v15 < 4)
      {
        goto LABEL_9;
      }

      if (&v18[-v20] < 0x20)
      {
        goto LABEL_9;
      }

      v19 = v15 & 0xFFFFFFFFFFFFFFFCLL;
      v21 = (v20 + 16);
      v22 = v18 + 16;
      v23 = v15 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v24 = *v21;
        *(v22 - 1) = *(v21 - 1);
        *v22 = v24;
        v21 += 2;
        v22 += 2;
        v23 -= 4;
      }

      while (v23);
      if (v19 != v15)
      {
LABEL_9:
        v25 = v15 - v19;
        v26 = 8 * v19;
        v27 = &v18[8 * v19];
        v28 = (v20 + v26);
        do
        {
          v29 = *v28++;
          *v27 = v29;
          v27 += 8;
          --v25;
        }

        while (v25);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  type metadata accessor for StyleContextAcceptsPredicate(0, TupleTypeMetadata, v13, v14);
  (*(v7 + 16))(v10, v4, a2);
  return StaticIf<>.init<>(_:then:)(v10, a2, a3);
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = MEMORY[0x193AC1170](*(a2 + 40), a1);
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](a1);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

unint64_t _ViewList_Group.viewIDs.getter()
{
  v1 = 0;
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  v4 = *v0;
  v17 = MEMORY[0x1E69E7CC0];
  v5 = *(v4 + 16);
  while (1)
  {
    if (v2 == v5)
    {
      v2 = v5;
      memset(v14, 0, 44);
    }

    else
    {
      if ((v2 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (v2 >= *(v4 + 16))
      {
        goto LABEL_24;
      }

      outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v4 + 32 + 48 * v2++, v14, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
    }

    *&v16[12] = *(&v14[1] + 12);
    v15 = v14[0];
    *v16 = v14[1];
    if (!*(&v14[1] + 1))
    {
      break;
    }

    outlined init with take of AnyTrackedValue(&v15, v14);
    v6 = *(&v14[1] + 1);
    v7 = *&v14[2];
    __swift_project_boxed_opaque_existential_1(v14, *(&v14[1] + 1));
    v8 = (*(v7 + 40))(v6, v7);
    if (!v8)
    {
      __swift_destroy_boxed_opaque_existential_1(v14);

      return 0;
    }

    v9 = v8;
    if ((*(*v8 + 88))())
    {

      MEMORY[0x193ABF170](v10);
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v3 = v17;
      if (v1)
      {
        v1 = 1;
      }

      else
      {
        v1 = *(v9 + 16);
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  if (v3 >> 62)
  {
LABEL_25:
    result = __CocoaSet.count.getter();
    if (result == 1)
    {
      goto LABEL_26;
    }

LABEL_18:
    if (!result)
    {

      type metadata accessor for _ViewList_ID._Views<EmptyCollection<_ViewList_ID>>(0);
      result = swift_allocObject();
      *(result + 16) = 0;
      return result;
    }

    type metadata accessor for _ViewList_ID.JoinedViews();
    swift_allocObject();
    v12 = specialized _ViewList_ID.JoinedViews.init(_:isDataDependent:)(v3, v1 & 1);
    goto LABEL_22;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result != 1)
  {
    goto LABEL_18;
  }

LABEL_26:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x193AC03C0](0, v3);
LABEL_22:
    v13 = v12;
LABEL_29:

    return v13;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v3 + 32);

    goto LABEL_29;
  }

  __break(1u);
  return result;
}

uint64_t DynamicViewList.WrappedList.viewIDs.getter(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  result = (*(v4 + 40))(v3, v4);
  if (result)
  {
    v7 = result;
    closure #1 in DynamicViewList.WrappedList.viewIDs.getter(&v7, v1, *(a1 + 16), *(a1 + 24), &v6);

    return v6;
  }

  return result;
}

void BaseViewList.viewIDs.getter()
{
  v1 = v0[5];
  if (v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v1 <= 0x7FFFFFFF)
  {
    v2 = v0[3];
    v3 = v0[4];
    __swift_project_boxed_opaque_existential_1(v0, v2);
    v4 = (*(v3 + 8))(v2, v3);
    type metadata accessor for _ViewList_ID._Views<_ViewList_ID.ElementCollection>(0);
    v5 = swift_allocObject();
    *(v5 + 24) = 0;
    *(v5 + 28) = v1;
    *(v5 + 32) = MEMORY[0x1E69E7CC0];
    *(v5 + 40) = v4;
    *(v5 + 16) = 0;
    return;
  }

  __break(1u);
}

void type metadata accessor for _ViewList_ID._Views<_ViewList_ID.ElementCollection>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ViewList_ID._Views<_ViewList_ID.ElementCollection>)
  {
    lazy protocol witness table accessor for type _ViewList_ID.ElementCollection and conformance _ViewList_ID.ElementCollection();
    v3 = v2;
    lazy protocol witness table accessor for type _ViewList_ID.ElementCollection and conformance _ViewList_ID.ElementCollection();
    v5 = type metadata accessor for _ViewList_ID._Views(a1, &type metadata for _ViewList_ID.ElementCollection, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for _ViewList_ID._Views<_ViewList_ID.ElementCollection>);
    }
  }
}

void lazy protocol witness table accessor for type _ViewList_ID.ElementCollection and conformance _ViewList_ID.ElementCollection()
{
  if (!lazy protocol witness table cache variable for type _ViewList_ID.ElementCollection and conformance _ViewList_ID.ElementCollection)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ViewList_ID.ElementCollection, &type metadata for _ViewList_ID.ElementCollection, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ViewList_ID.ElementCollection and conformance _ViewList_ID.ElementCollection);
  }
}

{
  if (!lazy protocol witness table cache variable for type _ViewList_ID.ElementCollection and conformance _ViewList_ID.ElementCollection)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ViewList_ID.ElementCollection, &type metadata for _ViewList_ID.ElementCollection, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ViewList_ID.ElementCollection and conformance _ViewList_ID.ElementCollection);
  }
}

{
  if (!lazy protocol witness table cache variable for type _ViewList_ID.ElementCollection and conformance _ViewList_ID.ElementCollection)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ViewList_ID.ElementCollection, &type metadata for _ViewList_ID.ElementCollection, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ViewList_ID.ElementCollection and conformance _ViewList_ID.ElementCollection);
  }
}

{
  if (!lazy protocol witness table cache variable for type _ViewList_ID.ElementCollection and conformance _ViewList_ID.ElementCollection)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ViewList_ID.ElementCollection, &type metadata for _ViewList_ID.ElementCollection, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ViewList_ID.ElementCollection and conformance _ViewList_ID.ElementCollection);
  }
}

{
  if (!lazy protocol witness table cache variable for type _ViewList_ID.ElementCollection and conformance _ViewList_ID.ElementCollection)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ViewList_ID.ElementCollection, &type metadata for _ViewList_ID.ElementCollection, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ViewList_ID.ElementCollection and conformance _ViewList_ID.ElementCollection);
  }
}

uint64_t type metadata completion function for _ViewList_ID._Views(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t _ViewList_ID._Views.__deallocating_deinit()
{
  (*(*(*(*v0 + 128) - 8) + 8))(v0 + *(*v0 + 152));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ViewList.viewIDs.getter in conformance ModifiedViewList()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 40))(v1, v2);
}

_BYTE *ForEachState.viewIDs.getter(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v47 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v38 - v3;
  v6 = v5[11];
  v8 = *(v7 + 96);
  v9 = v5[14];
  v10 = v5[15];
  *&v51 = v2;
  *(&v51 + 1) = v6;
  v48 = v8;
  v52 = v8;
  v53 = v9;
  v54 = v10;
  v11 = type metadata accessor for ForEachState.ForEachViewIDCollection(0, &v51);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  if (!AGSubgraphIsValid())
  {
    return 0;
  }

  v55 = ForEachState.fetchViewsPerElement()();
  if (v55.is_nil)
  {
    return 0;
  }

  v44 = v12;
  v46 = &v38;
  v49 = 0;
  v50 = 0;
  MEMORY[0x1EEE9AC00](v55.value);
  v35 = &v50;
  v36 = v18;
  v45 = v18;
  v37 = v1;
  v42 = *(&v48 + 1);
  v43 = v48;
  protocol witness for Collection.endIndex.getter in conformance CollectionOfTwo<A>(&v51);
  ForEachState.forEachItem(from:style:do:)(&v49, &v51, partial apply for closure #1 in ForEachState.viewIDs.getter, (&v38 - 6));
  result = v50;
  if (!v50)
  {
    return result;
  }

  if ((*(v50 + 16) & 1) == 0)
  {
    v39 = v50;
    v20 = v1 + *(*v1 + 160);
    swift_beginAccess();
    *&v21 = v2;
    *(&v21 + 1) = v6;
    v52 = v48;
    v51 = v21;
    v53 = v9;
    v22 = type metadata accessor for ForEach(0, &v51);
    v23 = *(v22 - 8);
    v24 = *(v23 + 48);
    *&v48 = v20;
    v40 = v22;
    v41 = v23 + 48;
    v46 = v24;
    result = (v24)(v20, 1);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v25 = v48;
      (*(v47 + 16))(v4, v48, v2);
      v26 = v25;
      v27 = v40;
      result = v46(v26, 1, v40);
      if (result != 1)
      {
        v47 = *(v48 + *(v27 + 64));
        *&v51 = v47;
        result = (v46)();
        if (result != 1)
        {
          if ((*(v1 + 172) & 1) == 0)
          {
            LODWORD(v46) = *(v1 + 168);
            LODWORD(v48) = v45 == 1;

            v28 = v39;

            ForEachState.ForEachViewIDCollection.init(base:data:idGenerator:reuseID:isUnary:owner:)(v28, v4, &v51, v48, v46, v2, v6, v17, v43, v42, v9, v10);
            WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ForEachState<A, B, C>.ForEachViewIDCollection, v11);
            v31 = v30;
            swift_getWitnessTable(protocol conformance descriptor for ForEachState<A, B, C>.ForEachViewIDCollection, v11, WitnessTable);
            type metadata accessor for _ViewList_ID._Views(0, v11, v31, v32);
            v33 = v44;
            (*(v44 + 16))(v14, v17, v11);
            v34 = _ViewList_ID._Views.__allocating_init(_:isDataDependent:)(v14, 1);
            (*(v33 + 8))(v17, v11);

            return v34;
          }

          goto LABEL_16;
        }

LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  return 0;
}

uint64_t type metadata completion function for ForEachState.ForEachViewIDCollection(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void closure #1 in ForEachState.viewIDs.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v9 = *a3;
  outlined init with copy of _ViewListOutputs.Views(a3 + *(*a3 + 176), &v22);
  if (v23)
  {

    if (*(a6 + 172) == 1)
    {
      __break(1u);
    }

    else
    {
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
      InputValue = AGGraphGetInputValue();
      outlined init with copy of AnyTrackedValue(InputValue, &v19);
      v11 = *(&v20 + 1);
      v12 = v21;
      __swift_project_boxed_opaque_existential_1(&v19, *(&v20 + 1));
      *a4 = (*(v12 + 40))(v11, v12);

      __swift_destroy_boxed_opaque_existential_1(&v19);
    }
  }

  else
  {
    v13 = v9[8];
    v19 = v9[7];
    v20 = v13;
    v21 = v9[9];
    v14 = type metadata accessor for ForEachState.StaticViewIDCollection(255, &v19);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ForEachState<A, B, C>.StaticViewIDCollection, v14);
    v17 = v16;
    swift_getWitnessTable(protocol conformance descriptor for ForEachState<A, B, C>.StaticViewIDCollection, v14, WitnessTable);
    type metadata accessor for _ViewList_ID._Views(0, v14, v17, v18);
    *&v19 = a5;
    *a4 = _ViewList_ID._Views.__allocating_init(_:isDataDependent:)(&v19, 0);

    outlined destroy of _ViewListOutputs.Views(&v22);
  }
}

uint64_t ForEachState.ForEachViewIDCollection.init(base:data:idGenerator:reuseID:isUnary:owner:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char a5@<W4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = *a3;
  v27[0] = a7;
  v27[1] = a8;
  v27[2] = a10;
  v27[3] = a11;
  v27[4] = a12;
  v27[5] = a13;
  v20 = type metadata accessor for ForEachState.ForEachViewIDCollection(0, v27);
  *&a9[v20[19]] = 0;
  *a9 = a1;
  v21 = *(a7 - 8);
  (*(v21 + 16))(&a9[v20[17]], a2, a7);
  *&a9[v20[18]] = v19;
  a9[v20[20]] = a5;
  *&a9[v20[21]] = a6;
  v22 = *(*a1 + 88);

  v24 = v22(v23);
  result = v22(v24);
  if (result < 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  result = v22(result);
  if (v24 < 0 || result < v24)
  {
    goto LABEL_7;
  }

  *&a9[v20[22]] = v24;
  v26 = dispatch thunk of Collection.count.getter();

  result = (*(v21 + 8))(a2, a7);
  if ((v24 * v26) >> 64 == (v24 * v26) >> 63)
  {
    *&a9[v20[23]] = v24 * v26;
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t *initializeWithCopy for ForEachState.ForEachViewIDCollection(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 16);
  v6 = *(v4 - 8) + 16;
  v7 = *(*(v4 - 8) + 80);
  v8 = (a1 + v7 + 8) & ~v7;
  v9 = (a2 + v7 + 8) & ~v7;

  v5(v8, v9, v4);
  v10 = *(v6 + 48) + 7;
  v11 = ((v10 + v8) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + v9) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  v13 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v13 = *v14;
  *(v13 + 8) = *(v14 + 8);
  *(v13 + 12) = *(v14 + 12);
  v15 = ((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v14 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  *((v15 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v16 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

double destroy for ForEachState.ForEachViewIDCollection(void *a1, uint64_t a2)
{

  (*(*(*(a2 + 16) - 8) + 8))((a1 + *(*(*(a2 + 16) - 8) + 80) + 8) & ~*(*(*(a2 + 16) - 8) + 80));

  return result;
}

id closure #1 in static SectionAccumulator.Item.implicitSentinel(_:contentSubgraph:accumulationStrategy:)@<X0>(void *a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v34 = a2;
  v52 = *MEMORY[0x1E69E9840];
  outlined init with copy of AnyTrackedValue(a1, v51);
  outlined init with copy of AnyTrackedValue(a1, v50);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = ViewList.count.getter(v7, v8);
  if (a3)
  {
    outlined init with copy of AnyTrackedValue(v50, &v46);
    v40 = _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfC7SwiftUI29AbstractHomogeneousCollectionC_Tt0g5(MEMORY[0x1E69E7CC0]);
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    memset(v45, 0, sizeof(v45));
    v10 = v48;
    v11 = v49;
    __swift_project_boxed_opaque_existential_1(&v46, v48);
    (*(v11 + 48))(&v40, v10, v11);
    outlined init with copy of HeterogeneousViewIDsAccumulator(&v40, v38);
    HeterogeneousViewIDsAccumulator.finalize()(v39);
    outlined destroy of HeterogeneousViewIDsAccumulator(&v40);
    v12 = v39[0];
    v13 = v39[1];
    __swift_destroy_boxed_opaque_existential_1(&v46);
    type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SectionAccumulator.RowIDs.Chunk>, &type metadata for SectionAccumulator.RowIDs.Chunk);
    v14 = swift_allocObject();
    v15 = v14;
    *(v14 + 16) = xmmword_18DDA6EB0;
    v16 = *(*(&v12 + 1) + 16);
    if (v16)
    {
      v16 = *(*(&v12 + 1) + 4 * v16 + 28);
    }

    *(v14 + 32) = v12;
    *(v14 + 48) = v13;
    *(v14 + 64) = 3;
    *(v14 + 72) = v16;
    *(v14 + 80) = 0;
  }

  else
  {
    v17 = v9;
    type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SectionAccumulator.RowIDs.Chunk>, &type metadata for SectionAccumulator.RowIDs.Chunk);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_18DDA6EB0;
    outlined init with copy of AnyTrackedValue(v50, &v40);
    v18 = v42;
    __swift_project_boxed_opaque_existential_1(&v40, v42);
    v19 = (*(*(&v18 + 1) + 40))(v18, *(&v18 + 1));
    if (v19)
    {
      v20 = v19;
      v21 = MEMORY[0x1E69E7CC0];
      if (*(MEMORY[0x1E69E7CC0] + 16))
      {
        type metadata accessor for _ViewList_ID._Views<SectionAccumulator.TransformedIDs>(0);
        v22 = swift_allocObject();
        v23 = 0;
        *(v22 + 24) = v20;
        *(v22 + 32) = v21;
        *(v22 + 40) = 0;
        *(v22 + 16) = 1;
        v20 = v22;
      }

      else
      {

        v23 = 0;
      }
    }

    else
    {
      *&v39[0] = 0;
      v37 = v17;
      v24 = MEMORY[0x1E69E7CC0];
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17 & ~(v17 >> 63), 0, MEMORY[0x1E69E7CC0]);
      v38[0] = v24;
      v38[1] = 0;
      v26 = *(&v42 + 1);
      v25 = v42;
      v27 = __swift_project_boxed_opaque_existential_1(&v40, v42);
      v46 = v38;
      v23 = 1;
      v47 = 1;
      MEMORY[0x1EEE9AC00](v27);
      v33[2] = &v36;
      v33[3] = &v37;
      v35 = 1;
      ViewList.applyIDs(from:listAttribute:transform:to:)(v39, 0x100000000uLL, &v46, closure #1 in closure #1 in SectionAccumulator.RowIDs.Chunk.init(list:listAttribute:transform:start:count:lowerBound:)partial apply, v33, v25, v26);

      v20 = v36;
    }

    *(v15 + 32) = v20;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    *(v15 + 64) = v23;
    *(v15 + 72) = v17;
    *(v15 + 80) = 0;
    __swift_destroy_boxed_opaque_existential_1(&v40);
  }

  __swift_destroy_boxed_opaque_existential_1(v50);
  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ViewTraitCollection>, &type metadata for ViewTraitCollection);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_18DDA6EB0;
  v29 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  (*(v30 + 56))(v29, v30);
  *a4 = 1;
  outlined init with take of _ViewList_Elements(v51, a4 + 8);
  v31 = v34;
  *(a4 + 48) = v34;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 72) = 0;
  *(a4 + 80) = 0;
  *(a4 + 88) = MEMORY[0x1E69E7CC0];
  *(a4 + 96) = 0;
  *(a4 + 112) = 0;
  *(a4 + 120) = 0;
  *(a4 + 104) = v15;
  *(a4 + 128) = 0;
  *(a4 + 136) = 0;
  *(a4 + 144) = v28;
  return v31;
}

Swift::Int __swiftcall ForEachState.count(style:)(SwiftUI::_ViewList_IteratorStyle style)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](style.value);
  v7 = &v23 - v6;
  v9 = *v8;
  if (!AGSubgraphIsValid())
  {
    goto LABEL_9;
  }

  v10 = v3[20];
  swift_beginAccess();
  v11 = v3[11];
  v12 = v3[12];
  v13 = v3[13];
  v14 = v3[14];
  v27[0] = v4;
  v27[1] = v11;
  v23 = v11;
  v27[2] = v12;
  v27[3] = v13;
  v27[4] = v14;
  v15 = type metadata accessor for ForEach(0, v27);
  v16.value = (*(*(v15 - 8) + 48))(v2 + v10, 1, v15);
  if (LODWORD(v16.value) == 1)
  {
LABEL_18:
    __break(1u);
    return v16.value;
  }

  (*(v5 + 16))(v7, v2 + v10, v4);
  v17 = dispatch thunk of Collection.count.getter();
  (*(v5 + 8))(v7, v4);
  if (!v17)
  {
LABEL_9:
    v16.value = 0;
    return v16.value;
  }

  v16 = ForEachState.fetchViewsPerElement()();
  if (v16.is_nil)
  {
    v18 = *(v2 + *(*v2 + 184));
    v19 = *(v18 + 16);
    if (v19 >= v17 && *(v2 + *(*v2 + 192)) == v9)
    {
      if (v17 - 1 < v19)
      {
        v16.value = *(v18 + 8 * (v17 - 1) + 32);
        return v16.value;
      }

      goto LABEL_17;
    }

LABEL_15:
    v26 = 0;
    v27[0] = 0;
    v25 = 0;
    MEMORY[0x1EEE9AC00](v16.value);
    *(&v23 - 4) = &v26;
    *(&v23 - 3) = v9;
    *(&v23 - 2) = v2;
    *(&v23 - 1) = v27;
    protocol witness for Collection.endIndex.getter in conformance CollectionOfTwo<A>(&v24);
    ForEachState.forEachItem(from:style:do:)(&v25, &v24, partial apply for closure #1 in ForEachState.count(style:), (&v23 - 6));
    v16.value = v26;
    return v16.value;
  }

  value = v16.value;
  v16.value *= v17;
  if ((value * v17) >> 64 != v16.value >> 63)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v9)
  {
    v21 = (v16.value * (v9 >> 1)) >> 64;
    v16.value *= v9 >> 1;
    if (v21 != v16.value >> 63)
    {
      __break(1u);
      goto LABEL_15;
    }
  }

  return v16.value;
}

unint64_t _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfC7SwiftUI29AbstractHomogeneousCollectionC_Tt0g5(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = __CocoaSet.count.getter();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v5 = v3;
  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs10AnyKeyPathC_Tt1g5(v3, 0, v4);
  specialized Array._copyContents(initializing:)(v6 + 32, v5, a1);
  v8 = v7;

  result = v6;
  if (v8 != v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t _ViewList_Group.appendViewIDs(into:)(uint64_t result)
{
  v2 = *(*v1 + 16);
  if (v2)
  {
    v3 = result;
    v4 = *v1 + 32;
    do
    {
      outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v4, v12, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
      v5 = v13;
      outlined init with take of AnyTrackedValue(v12, v8);
      v11 = v5;
      v6 = v9;
      v7 = v10;
      __swift_project_boxed_opaque_existential_1(v8, v9);
      (*(v7 + 48))(v3, v6, v7);
      result = outlined destroy of (list: ViewList, attribute: Attribute<ViewList>)(v8, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
      v4 += 48;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t DynamicViewList.WrappedList.appendViewIDs(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v13[-v8];
  v10 = *(v2 + 40);
  (*(v6 + 16))(&v13[-v8], v10 + *(*v10 + 136), AssociatedTypeWitness, v7);
  LOBYTE(v10) = *(v10 + *(*v10 + 160));
  v14 = v4;
  v15 = v3;
  v16 = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  HeterogeneousViewIDsAccumulator.withExplicitID<A>(_:isUnary:body:)(v9, v10, partial apply for closure #1 in DynamicViewList.WrappedList.appendViewIDs(into:), v13, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v6 + 8))(v9, AssociatedTypeWitness);
}

uint64_t HeterogeneousViewIDsAccumulator.withExplicitID<A>(_:isUnary:body:)(uint64_t a1, char a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v13 = MEMORY[0x1E69E6720];
  outlined init with copy of AbstractContiguousArray?(v7 + 56, v18, &lazy cache variable for type metadata for (Hashable, isUnary: Bool)?, type metadata accessor for (Hashable, isUnary: Bool), MEMORY[0x1E69E6720], type metadata accessor for ContiguousArray<TypedCanonicalViewID<Nil>>);
  v16[3] = a5;
  v16[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  v17 = a2;
  outlined assign with take of AbstractContiguousArray?(v16, v7 + 56, &lazy cache variable for type metadata for (Hashable, isUnary: Bool)?, type metadata accessor for (Hashable, isUnary: Bool), v13, type metadata accessor for ContiguousArray<TypedCanonicalViewID<Nil>>);
  a3(v7);
  return outlined assign with take of AbstractContiguousArray?(v18, v7 + 56, &lazy cache variable for type metadata for (Hashable, isUnary: Bool)?, type metadata accessor for (Hashable, isUnary: Bool), v13, type metadata accessor for ContiguousArray<TypedCanonicalViewID<Nil>>);
}

uint64_t outlined init with copy of AbstractContiguousArray?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void type metadata accessor for ContiguousArray<TypedCanonicalViewID<Nil>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for (Hashable, isUnary: Bool)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (Hashable, isUnary: Bool))
  {
    type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for Hashable, MEMORY[0x1E69E5EA0]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Hashable, isUnary: Bool));
    }
  }
}

uint64_t outlined assign with take of AbstractContiguousArray?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 40))(a2, a1, v8);
  return a2;
}

uint64_t protocol witness for ViewList.appendViewIDs(into:) in conformance BaseViewList()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  result = (*(v2 + 8))(v1, v2);
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = v0[5];
  if (v4 < 0xFFFFFFFF80000000)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v4 <= 0x7FFFFFFF)
  {
    return HeterogeneousViewIDsAccumulator.appendWithoutExplicitID(indices:implicitID:)(result << 32, v4);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in DynamicViewList.WrappedList.appendViewIDs(into:)(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  return (*(v5 + 48))(a1, v4, v5);
}

unint64_t HeterogeneousViewIDsAccumulator.appendWithoutExplicitID(indices:implicitID:)(unint64_t result, unsigned int a2)
{
  v3 = result;
  v4 = HIDWORD(result);
  if (result == HIDWORD(result))
  {
    return result;
  }

  outlined init with copy of AbstractContiguousArray?(v2 + 56, &v39, &lazy cache variable for type metadata for (Hashable, isUnary: Bool)?, type metadata accessor for (Hashable, isUnary: Bool), MEMORY[0x1E69E6720], type metadata accessor for ContiguousArray<TypedCanonicalViewID<Nil>>);
  if (*&v40[8])
  {
    *&v42[9] = *&v40[9];
    v41 = v39;
    *v42 = *v40;
    v6 = *&v40[8];
    v7 = *&v40[9] >> 56;
    v8 = __swift_project_boxed_opaque_existential_1(&v41, *&v40[8]);
    outlined init with copy of (Hashable, isUnary: Bool)(&v41, &v39, type metadata accessor for (Hashable, isUnary: Bool));
    v9 = v40[24];
    __swift_destroy_boxed_opaque_existential_1(&v39);
    if (v9)
    {
      v10 = 0xFFFFFFFFLL;
    }

    else
    {
      v10 = a2;
    }

    HeterogeneousViewIDsAccumulator.append<A>(indices:implicitID:explicitID:)(v3, v10, v8, v6, v7);
    return outlined destroy of (Hashable, isUnary: Bool)(&v41, type metadata accessor for (Hashable, isUnary: Bool));
  }

  outlined destroy of CanonicalViewIDProtocol?(&v39, &lazy cache variable for type metadata for (Hashable, isUnary: Bool)?, type metadata accessor for (Hashable, isUnary: Bool), MEMORY[0x1E69E6720], type metadata accessor for ContiguousArray<TypedCanonicalViewID<Nil>>);
  v11 = *(v2 + 40);
  if (v11)
  {
    v12 = *(v2 + 48);
    __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
    type metadata accessor for TypedCanonicalViewID<Nil>(0);
    v13 = v2;
    v15 = (*(v12 + 24))(v14, v14, v11, v12);
    if (v15)
    {
      v16 = v15;
      outlined destroy of CanonicalViewIDProtocol?(v2 + 16, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
      *(v2 + 16) = 0u;
      *(v2 + 32) = 0u;
      *(v2 + 48) = 0;
      v17 = *(v16 + 16);
      result = specialized Collection.count.getter(v3);
      v18 = v17 + result;
      if (__OFADD__(v17, result))
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      *&v39 = v16;
      if (result)
      {
        if (v18 <= *(v16 + 24) >> 1)
        {
LABEL_29:
          if (v4 < v3)
          {
LABEL_41:
            __break(1u);
            return result;
          }

          while (v3 < v4)
          {
            *&v39 = v16;
            v35 = *(v16 + 16);
            v34 = *(v16 + 24);
            if (v35 >= v34 >> 1)
            {
              result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1);
              v2 = v13;
              v16 = v39;
            }

            *(v16 + 16) = v35 + 1;
            v36 = v16 + 8 * v35;
            *(v36 + 32) = v3;
            *(v36 + 36) = a2;
            LODWORD(v3) = v3 + 1;
            if (v4 == v3)
            {
              type metadata accessor for ContiguousArray<TypedCanonicalViewID<Nil>>(0, &lazy cache variable for type metadata for ContiguousArray<TypedCanonicalViewID<Nil>>, type metadata accessor for TypedCanonicalViewID<Nil>, MEMORY[0x1E69E6BE8]);
              *&v42[8] = v37;
              lazy protocol witness table accessor for type ContiguousArray<TypedCanonicalViewID<Nil>> and conformance <A> ContiguousArray<A>();
              *&v42[16] = v38;
              *&v41 = v16;
              return outlined assign with take of AbstractContiguousArray?(&v41, v2 + 16, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
            }
          }

LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        if (v17 <= v18)
        {
          v19 = v18;
        }

        else
        {
          v19 = v17;
        }
      }

      else if (v17 <= v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = v17;
      }

      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(result, v19, 0);
      v16 = v39;
      goto LABEL_29;
    }
  }

  outlined init with copy of AbstractContiguousArray?(v2 + 16, &v39, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
  if (*&v40[8])
  {
    outlined init with take of AnyTrackedValue(&v39, &v41);
    v20 = *&v42[8];
    v21 = *&v42[16];
    v22 = __swift_project_boxed_opaque_existential_1(&v41, *&v42[8]);
    type metadata accessor for TypedCanonicalViewID<Nil>(0);
    v24 = v23;
    lazy protocol witness table accessor for type TypedCanonicalViewID<Nil> and conformance TypedCanonicalViewID<A>(&lazy protocol witness table cache variable for type TypedCanonicalViewID<Nil> and conformance TypedCanonicalViewID<A>, type metadata accessor for TypedCanonicalViewID<Nil>, protocol conformance descriptor for TypedCanonicalViewID<A>);
    append #1 <A><A1>(buffer:) in HeterogeneousViewIDsAccumulator.append<A>(contentsOf:)(v22, v2, v24, v20, v25, v21);
    outlined destroy of CanonicalViewIDProtocol?(v2 + 16, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
    v26 = v2;
    *(v2 + 48) = 0;
    __swift_destroy_boxed_opaque_existential_1(&v41);
  }

  else
  {
    v26 = v2;
    outlined destroy of CanonicalViewIDProtocol?(&v39, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
  }

  v27 = specialized Collection.count.getter(v3);
  *&v39 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27 & ~(v27 >> 63), 0);
  if (v4 < v3)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v28 = v39;
  v2 = v26;
  do
  {
    if (v3 >= v4)
    {
      __break(1u);
      goto LABEL_38;
    }

    *&v39 = v28;
    v30 = *(v28 + 16);
    v29 = *(v28 + 24);
    if (v30 >= v29 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
      v28 = v39;
    }

    *(v28 + 16) = v30 + 1;
    v31 = v28 + 8 * v30;
    *(v31 + 32) = v3;
    *(v31 + 36) = a2;
    LODWORD(v3) = v3 + 1;
  }

  while (v4 != v3);
  type metadata accessor for ContiguousArray<TypedCanonicalViewID<Nil>>(0, &lazy cache variable for type metadata for ContiguousArray<TypedCanonicalViewID<Nil>>, type metadata accessor for TypedCanonicalViewID<Nil>, MEMORY[0x1E69E6BE8]);
  *&v42[8] = v32;
  lazy protocol witness table accessor for type ContiguousArray<TypedCanonicalViewID<Nil>> and conformance <A> ContiguousArray<A>();
  *&v42[16] = v33;
  *&v41 = v28;
  return outlined assign with take of AbstractContiguousArray?(&v41, v2 + 16, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
}

uint64_t protocol witness for ViewList.appendViewIDs(into:) in conformance ModifiedViewList(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 48))(a1, v3, v4);
}

void ForEachList.appendViewIDs(into:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12[5] = a9;
  v13 = a2;
  v14 = a3;
  v12[0] = a4;
  v12[1] = a5;
  v12[2] = a6;
  v12[3] = a7;
  v12[4] = a8;
  v10 = type metadata accessor for ForEachList(0, v12);
  swift_getWitnessTable(protocol conformance descriptor for ForEachList<A, B, C>, v10);
  ForEachState.appendViewIDs<A>(into:viewList:)(a1, &v13, v10, v11);
}

void ForEachState.appendViewIDs<A>(into:viewList:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = *(*v4 + 80);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v69 = &v58 - v12;
  if (AGSubgraphIsValid())
  {
    v80 = ForEachState.fetchViewsPerElement()();
    if (!v80.is_nil)
    {
      value = v80.value;
      v68 = a1;
      v76 = 0;
      v77 = 0;
      v78 = -1;
      MEMORY[0x1EEE9AC00](v80.value);
      *(&v58 - 6) = a3;
      *(&v58 - 5) = a4;
      *(&v58 - 4) = &v77;
      *(&v58 - 3) = v14;
      *(&v58 - 2) = v4;
      v15 = v9[12];
      v63 = v9[11];
      v64 = v15;
      v16 = v9[13];
      v17 = v9[14];
      v65 = v16;
      v70 = 2;
      ForEachState.forEachItem(from:style:do:)(&v76, &v70, partial apply for closure #1 in ForEachState.appendViewIDs<A>(into:viewList:), (&v58 - 8));
      v18 = v78;
      if (v78 == 255)
      {
        HeterogeneousViewIDsAccumulator.appendSlowPath<A>(_:)(a2, a3, a4);
        return;
      }

      v62 = v17;
      v19 = v77;
      if (v78)
      {
        if (v77[16])
        {
          HeterogeneousViewIDsAccumulator.appendSlowPath<A>(_:)(a2, a3, a4);
          v20 = v19;
LABEL_52:
          outlined consume of BaseIDs?(v20, v18);
          return;
        }

        if (value == 1)
        {
          v24 = v4 + *(*v4 + 160);
          swift_beginAccess();
          v70 = v10;
          v71 = v63;
          v72 = v64;
          v73 = v65;
          v74 = v62;
          v25 = type metadata accessor for ForEach(0, &v70);
          if ((*(*(v25 - 8) + 48))(v24, 1, v25) == 1)
          {
LABEL_68:
            __break(1u);
            goto LABEL_69;
          }

          v26 = *(v24 + *(v25 + 64));
          if (v26)
          {
            outlined copy of BaseIDs?(v19, v18);

            ForEachState.appendViewIDsForSingleChildView(into:explicitIDKeyPath:)(v68, v26);
            outlined consume of BaseIDs?(v19, v18);
LABEL_25:

            v20 = v19;
            goto LABEL_52;
          }

          v53 = v69;
          (*(v11 + 16))(v69, v24, v10);
          outlined copy of BaseIDs(v19, 1);
          v54 = dispatch thunk of Collection.count.getter();
          (*(v11 + 8))(v53, v10);
          if ((v54 & 0x8000000000000000) == 0)
          {
            ForEachState.appendViewIDsForSingleChildView(into:explicitIDOffsets:)(0, v54, v55);
            outlined consume of BaseIDs?(v19, v18);
            v20 = v19;
            goto LABEL_52;
          }

          goto LABEL_64;
        }

        v29 = v77;
        v30 = *(*v77 + 88);
        v31 = *v77 + 88;
        v32 = outlined copy of BaseIDs(v77, 1);
        v33 = v30(v32);
        v34 = (v30)();
        v35 = v65;
        if (v34 < 0)
        {
          goto LABEL_57;
        }

        v36 = (v30)();
        if (v33 < 0)
        {
          goto LABEL_58;
        }

        v37 = v33;
        if (v36 < v33)
        {
          goto LABEL_58;
        }

        v38 = MEMORY[0x1E69E7CC0];
        if (!v37)
        {
LABEL_44:
          v50 = v4 + *(*v4 + 160);
          swift_beginAccess();
          v70 = v10;
          v71 = v63;
          v72 = v64;
          v73 = v35;
          v74 = v62;
          v51 = type metadata accessor for ForEach(0, &v70);
          if ((*(*(v51 - 8) + 48))(v50, 1, v51) == 1)
          {
LABEL_69:
            __break(1u);
            return;
          }

          v52 = *(v50 + *(v51 + 64));
          if (v52)
          {

            ForEachState.appendViewIDsForMultipleChildren(into:childViews:explicitIDKeyPath:)(v68, v38, v52);

            outlined consume of BaseIDs?(v29, v18);
          }

          else
          {
            v56 = v69;
            (*(v11 + 16))(v69, v50, v10);
            v57 = dispatch thunk of Collection.count.getter();
            (*(v11 + 8))(v56, v10);
            if (v57 < 0)
            {
LABEL_65:
              __break(1u);
              goto LABEL_66;
            }

            ForEachState.appendViewIDsForMultipleChildren(into:childViews:explicitIDOffsets:)(v68, v38, 0, v57);

            outlined consume of BaseIDs?(v29, v18);
          }

          v20 = v29;
          goto LABEL_52;
        }

        v67 = v31;
        v59 = v10;
        v60 = v11;
        v61 = v18;
        v75 = MEMORY[0x1E69E7CC0];
        v66 = v37;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37, 0);
        v39 = 0;
        v38 = v75;
        v40 = *(*v29 + 96);
        while (1)
        {
          v40(&v70, v39);
          v41 = v70;

          v75 = v38;
          v42 = v29;
          v44 = *(v38 + 16);
          v43 = *(v38 + 24);
          if (v44 >= v43 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1);
            v38 = v75;
          }

          *(v38 + 16) = v44 + 1;
          *(v38 + 8 * v44 + 32) = v41;
          if (v39 >= (v30)())
          {
            break;
          }

          v29 = v42;
          if (v66 == ++v39)
          {
            LOBYTE(v18) = v61;
            v11 = v60;
            v35 = v65;
            v10 = v59;
            goto LABEL_44;
          }
        }

        __break(1u);
      }

      else
      {
        v21 = v4 + *(*v4 + 160);
        if (v77 == 1)
        {
          swift_beginAccess();
          v70 = v10;
          v71 = v63;
          v72 = v64;
          v73 = v65;
          v74 = v62;
          v22 = type metadata accessor for ForEach(0, &v70);
          if ((*(*(v22 - 8) + 48))(v21, 1, v22) == 1)
          {
LABEL_66:
            __break(1u);
            goto LABEL_67;
          }

          v23 = *(v21 + *(v22 + 64));
          if (v23)
          {

            ForEachState.appendViewIDsForSingleChildView(into:explicitIDKeyPath:)(v68, v23);
          }

          else
          {
            v45 = v69;
            (*(v11 + 16))(v69, v21, v10);
            v46 = dispatch thunk of Collection.count.getter();
            (*(v11 + 8))(v45, v10);
            if (v46 < 0)
            {
LABEL_59:
              __break(1u);
              goto LABEL_60;
            }

            ForEachState.appendViewIDsForSingleChildView(into:explicitIDOffsets:)(0, v46, v47);
          }

          v20 = 1;
          goto LABEL_52;
        }

        swift_beginAccess();
        v70 = v10;
        v71 = v63;
        v72 = v64;
        v73 = v65;
        v74 = v62;
        v27 = type metadata accessor for ForEach(0, &v70);
        if ((*(*(v27 - 8) + 48))(v21, 1, v27) == 1)
        {
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        v28 = *(v21 + *(v27 + 64));
        if (!v28)
        {
          if (v19 >= 0xFFFFFFFF80000000)
          {
            if (v19 <= 0x7FFFFFFF)
            {
              if ((v19 & 0x80000000) == 0)
              {
                v48 = v69;
                (*(v11 + 16))(v69, v21, v10);
                v49 = dispatch thunk of Collection.count.getter();
                (*(v11 + 8))(v48, v10);
                if ((v49 & 0x8000000000000000) == 0)
                {
                  ForEachState.appendViewIDsForMultipleChildren(into:childViewIndices:explicitIDOffsets:)(v68, v19 << 32, 0, v49);
                  v20 = v19;
                  goto LABEL_52;
                }

                goto LABEL_63;
              }

LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
              goto LABEL_65;
            }

LABEL_61:
            __break(1u);
            goto LABEL_62;
          }

LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        if (v19 >= 0xFFFFFFFF80000000)
        {
          if (v19 <= 0x7FFFFFFF)
          {
            if ((v19 & 0x80000000) == 0)
            {

              ForEachState.appendViewIDsForMultipleChildren(into:childViewIndices:explicitIDKeyPath:)(v68, 0, v28);
              goto LABEL_25;
            }

            goto LABEL_56;
          }

LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }
      }

      __break(1u);
      goto LABEL_55;
    }
  }

  ForEachState.appendViewIDsForDynamicChildCount<A>(into:_:)(a1, a2, a3, a4);
}

uint64_t closure #1 in ForEachState.appendViewIDs<A>(into:viewList:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  outlined init with copy of _ViewListOutputs.Views(a3 + *(*a3 + 176), &v20);
  if (v21)
  {

    ForEachState.context.getter();
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
    InputValue = AGGraphGetInputValue();
    outlined init with copy of AnyTrackedValue(InputValue, v17);
    v8 = v18;
    v9 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v10 = (*(v9 + 40))(v8, v9);
    if (v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = -1;
    }

    __swift_destroy_boxed_opaque_existential_1(v17);
    v12 = *a4;
    *a4 = v10;
    v13 = *(a4 + 8);
    *(a4 + 8) = v11;
    outlined consume of BaseIDs?(v12, v13);
  }

  else
  {
    v14 = *a4;
    *a4 = a5;
    v15 = *(a4 + 8);
    *(a4 + 8) = 0;
    outlined consume of BaseIDs?(v14, v15);
    outlined destroy of _ViewListOutputs.Views(&v20);
  }

  return 0;
}

uint64_t ForEachState.context.getter()
{
  if ((*(v0 + 172) & 1) == 0)
  {
    return *(v0 + 168);
  }

  __break(1u);
  return result;
}

double outlined consume of BaseIDs?(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return outlined consume of BaseIDs(result, a2 & 1);
  }

  return v2;
}

double outlined copy of BaseIDs?(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return outlined copy of BaseIDs(a1, a2 & 1);
  }

  return result;
}

double outlined copy of BaseIDs(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

void ForEachState.appendViewIDsForSingleChildView(into:explicitIDKeyPath:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v26[1] = a1;
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v26 - v8;
  type metadata accessor for AnyKeyPath();
  v29 = v6;
  v10 = *(v5 + 88);
  v30 = v10;
  v11 = *(v5 + 96);
  v27 = *(v5 + 112);
  v28 = v11;
  v31 = v11;
  v32 = v27;
  KeyPath = swift_getKeyPath();
  v13 = MEMORY[0x193AC0030](a2, KeyPath);

  if (v13)
  {
    v14 = *(*v3 + 160);
    swift_beginAccess();
    *&v15 = v6;
    *(&v15 + 1) = v10;
    v35 = v28;
    v34 = v15;
    v16 = v27;
    v36 = v27;
    v17 = type metadata accessor for ForEach(0, &v34);
    if ((*(*(v17 - 8) + 48))(v3 + v14, 1, v17) != 1)
    {
      (*(v7 + 16))(v9, v3 + v14, v6);
      *&v34 = Array.init<A>(_:)();
      type metadata accessor for ContiguousArray();
      type metadata accessor for ContiguousArray();
      swift_dynamicCast();
      v18 = v33;
      v19 = v10;
      v20 = v16;
LABEL_6:
      HeterogeneousViewIDsAccumulator.append<A>(contentsOf:)(v18, v19, v20);

      return;
    }

    __break(1u);
  }

  else
  {
    v21 = *(*v3 + 160);
    swift_beginAccess();
    *&v34 = v6;
    *(&v34 + 1) = v10;
    v35 = v28;
    v22 = v27;
    v36 = v27;
    v23 = type metadata accessor for ForEach(0, &v34);
    if ((*(*(v23 - 8) + 48))(v3 + v21, 1, v23) != 1)
    {
      (*(v7 + 16))(v9, v3 + v21, v6);
      v24 = dispatch thunk of Collection.count.getter();
      v25 = (*(v7 + 8))(v9, v6);
      MEMORY[0x1EEE9AC00](v25);
      v26[-2] = a2;
      v26[-1] = v3;
      v18 = ContiguousArray.init(unsafeUninitializedCapacity:initializingWith:)(v24, partial apply for closure #1 in ForEachState.appendViewIDsForSingleChildView(into:explicitIDKeyPath:), &v26[-4], v10);
      v19 = v10;
      v20 = v22;
      goto LABEL_6;
    }
  }

  __break(1u);
}