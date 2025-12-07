uint64_t DisplayList.ViewUpdater.ViewCache.update(item:platform:state:tag:in:)@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = a1;
  v8 = &v241;
  v249 = *MEMORY[0x1E69E9840];
  v202 = *a1;
  v10 = *(a1 + 2);
  v9 = *(a1 + 3);
  v191 = *(a1 + 4);
  v11 = *(a1 + 56);
  v247 = *(a1 + 40);
  v248 = v11;
  v179 = *(a1 + 18);
  v12 = *(v6 + 16);
  v178 = *(v6 + 17);
  v14 = *(v6 + 18);
  v13 = *(v6 + 19);
  v15 = *a2;
  v16 = *v6;
  LOBYTE(v195) = a4;
  v175 = v13;
  v176 = v14;
  v174 = v12;
  v177 = *a2 & 3;
  if (!*(v16 + 16) || ((a4 & 1) == 0 ? (v17 = 0) : (v17 = 256), v171 = a4 & 1, v172 = v17, v183 = v12 | (v178 << 32), v18 = specialized __RawDictionaryStorage.find<A>(_:)(v183, v14 | (v13 << 32), v17 | (*a2 & 3)), (v19 & 1) == 0))
  {
    v37 = objc_opt_self();
    LODWORD(v183) = [v37 disableActions];
    v185 = v37;
    [v37 setDisableActions_];
    if ((v195 & 1) == 0)
    {
      v43 = *(v184 + 80);
      *v235 = v15;
      v241 = *v7;
      *&v242 = v10;
      *(&v242 + 1) = v9;
      v38 = v191;
      *v243 = v191;
      *&v243[8] = *(v7 + 40);
      *&v243[24] = *(v7 + 56);
      *&v243[40] = v179;
      v188 = *(v184 + 64);
      DisplayList.ViewUpdater.Platform._makeItemView(item:state:)(&v241, a3, v238);
      *&v227 = v15;
      *v235 = v188;
      v235[16] = v43;
      v241 = *v7;
      *&v242 = v10;
      *(&v242 + 1) = v9;
      *v243 = v191;
      *&v243[8] = *(v7 + 40);
      *&v243[24] = *(v7 + 56);
      *&v243[40] = v179;
      v8 = &v241;
      DisplayList.ViewUpdater.Platform.updateItemView(_:index:item:state:)(v238, v235, &v241, a3);
      v187 = DWORD2(v188);
      goto LABEL_17;
    }

    if ((v15 & 4) == 0 || (*(a3 + 104) & 0x200) != 0 || (v241 = *v7, *&v242 = v10, *(&v242 + 1) = v9, *v243 = v191, *&v243[8] = *(v7 + 40), *&v243[24] = *(v7 + 56), *&v243[40] = v179, DisplayList.Item.features.getter(v238), (*v238 & 0x400) != 0))
    {
LABEL_15:
      *v8 = v15;
      v235[0] = 0;
      DisplayList.ViewUpdater.ViewInfo.init(platform:kind:)(&v241, v235, v238);
      *v235 = *v238;
      *v8 = *v7;
      *(v8 + 16) = v10;
      *(v8 + 24) = v9;
      v38 = v191;
      *(v8 + 32) = v191;
      *(v8 + 40) = *(v7 + 40);
      *(v8 + 56) = *(v7 + 56);
      *&v243[40] = v179;
      DisplayList.ViewUpdater.Platform.updateState(_:item:size:state:)(v238, &v241, a3, v10, v9, v39, v40, v41, v42);
      v187 = v14;
LABEL_17:
      v44 = *v238;
      v227 = *&v239[10];
      LOWORD(v228) = *&v239[26];
      v45 = v240;
      [v185 setDisableActions_];
      if (v38)
      {
        v46 = (2 * ((33 * (v38 >> 16)) ^ v38)) | 1;
      }

      else
      {
        LOWORD(v46) = 0;
      }

      v47 = *(v184 + 84);
      *v8 = v44;
      *(v8 + 24) = *&v238[24];
      *(v8 + 40) = *&v238[40];
      *(v8 + 56) = *&v238[56];
      v48 = *&v238[72];
      *(v8 + 8) = *&v238[8];
      *(v8 + 72) = v48;
      *(v8 + 80) = a5;
      v192 = v46;
      WORD4(v244) = v46;
      *(v8 + 90) = *&v239[10];
      WORD5(v245) = *&v239[26];
      v186 = v47;
      HIDWORD(v245) = v47;
      *(v8 + 112) = v45;
      v49 = *(v8 + 8);
      v50 = *(v8 + 24);
      swift_unknownObjectRetain_n();
      outlined init with copy of DisplayList.ViewUpdater.ViewInfo(&v241, v235);
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v235 = *v184;
      v52 = v174 | (v178 << 32);
      v196 = v195 & 1;
      if (v196)
      {
        v53 = 256;
      }

      else
      {
        v53 = 0;
      }

      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v241, v52, v176 | (v175 << 32), v53 | v177, isUniquelyReferenced_nonNull_native);
      *v184 = *v235;
      swift_unknownObjectRelease();
      v54 = *(v184 + 8);
      if (*(v54 + 16))
      {
        v55 = specialized __RawDictionaryStorage.find<A>(_:)(v49);
        if (v56)
        {
          v57 = *(v54 + 56) + 20 * v55;
          if (*(v57 + 17))
          {
            v58 = 256;
          }

          else
          {
            v58 = 0;
          }

          specialized Dictionary.removeValue(forKey:)(*v57, *(v57 + 8), v58 | *(v57 + 16), v235);
          outlined destroy of DisplayList.ViewUpdater.ViewInfo?(v235);
        }
      }

      v59 = swift_isUniquelyReferenced_nonNull_native();
      *v235 = *(v184 + 8);
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v52, v176 | (v175 << 32), v53 | v177, v49, v59);
      *(v184 + 8) = *v235;
      if (!v187 && v179)
      {
        [*(v8 + 16) setSwiftUI:v179 displayListID:?];
      }

      v60 = *(v8 + 72);
      v61 = BYTE1(v246);
      *v235 = v44;
      *&v235[24] = *&v238[24];
      *&v235[40] = *&v238[40];
      *&v235[56] = *&v238[56];
      *&v235[8] = *&v238[8];
      *&v235[72] = *&v238[72];
      *v236 = a5;
      *&v236[8] = v192;
      *&v236[26] = v228;
      *&v236[10] = v227;
      *&v236[28] = v186;
      v237 = v45;
      result = outlined destroy of DisplayList.ViewUpdater.ViewInfo(v235);
      *a6 = v44;
      *(a6 + 8) = v45;
      *(a6 + 16) = v50;
      *(a6 + 24) = v60;
      *(a6 + 32) = v174;
      *(a6 + 36) = v178;
      *(a6 + 40) = v176;
      *(a6 + 44) = v175;
      *(a6 + 48) = v177;
      *(a6 + 49) = v196;
      *(a6 + 50) = 1;
      *(a6 + 51) = (v61 & 1) == 0;
      *(a6 + 56) = *(&v45 + 1);
      return result;
    }

    if (one-time initialization token for caLayer == -1)
    {
LABEL_14:
      v15 = static DisplayList.ViewUpdater.Platform.caLayer;
      goto LABEL_15;
    }

LABEL_103:
    swift_once();
    goto LABEL_14;
  }

  v20 = (*(v16 + 56) + (v18 << 7));
  v21 = v20[4];
  v22 = v20[5];
  v23 = v20[7];
  v233 = v20[6];
  v24 = *v20;
  v25 = v20[1];
  v26 = v20[3];
  v229 = v20[2];
  v230 = v26;
  v227 = v24;
  v228 = v25;
  v234 = v23;
  v231 = v21;
  v232 = v22;
  v27 = *v20;
  v28 = v20[1];
  v29 = v20[3];
  *&v235[32] = v20[2];
  *&v235[48] = v29;
  *v235 = v27;
  *&v235[16] = v28;
  v30 = v20[4];
  v31 = v20[5];
  v32 = v20[7];
  *&v236[16] = v20[6];
  v237 = v32;
  *&v235[64] = v30;
  *v236 = v31;
  if (HIDWORD(v233) == *(v184 + 84))
  {
    goto LABEL_105;
  }

  v170 = (v14 | (v13 << 32));
  *&v236[28] = *(v184 + 84);
  if (v234 == 1)
  {
    LOBYTE(v237) = 0;
    outlined init with copy of DisplayList.ViewUpdater.ViewInfo(&v227, &v241);
    v33 = v177;
    v34 = v12 | (v178 << 32);
    v35 = v184;
    v36 = v170;
    specialized Set._Variant.remove(_:)(v183, v170, v172 | v177, &v241);
  }

  else
  {
    outlined init with copy of DisplayList.ViewUpdater.ViewInfo(&v227, &v241);
    v33 = v177;
    v34 = v12 | (v178 << 32);
    v35 = v184;
    v36 = v170;
  }

  *&v243[32] = *&v235[64];
  v244 = *v236;
  v245 = *&v236[16];
  v246 = v237;
  v241 = *v235;
  v242 = *&v235[16];
  *v243 = *&v235[32];
  *&v243[16] = *&v235[48];
  LODWORD(v185) = *&v236[8];
  v189 = *v236;
  v63 = *&v235[8];
  outlined init with copy of DisplayList.ViewUpdater.ViewInfo(&v241, v238);
  v182 = v63;
  swift_unknownObjectRetain();
  v64 = swift_isUniquelyReferenced_nonNull_native();
  *v238 = *v35;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v241, v34, v36, v172 | v33, v64);
  v14 = *v238;
  *v35 = *v238;
  if (v191)
  {
    v65 = a5;
    v66 = a3;
    if (v185 == ((2 * ((33 * WORD1(v191)) ^ v191)) | 1))
    {
LABEL_36:
      LODWORD(a5) = *(*v66 + 8) >= *(&v246 + 1);
      *(&v237 + 1) = 0x7FF0000000000000;
      goto LABEL_39;
    }
  }

  else
  {
    v65 = a5;
    v66 = a3;
    if (!v185)
    {
      goto LABEL_36;
    }
  }

  *(&v237 + 1) = 0x7FF0000000000000;
  LODWORD(a5) = 1;
LABEL_39:
  v67 = v63;
  if (v189 != v65)
  {
    *v236 = v65;
    DisplayList.ViewUpdater.ViewInfo.Seeds.invalidate()();
  }

  v68 = v241;
  swift_unknownObjectRelease();
  if ((v195 & 1) == 0)
  {
    *&v203 = v15;
    v73 = *(v184 + 80);
    v219 = *(v184 + 64);
    v195 = v219;
    LOBYTE(v220) = v73;
    *v238 = *v7;
    *&v238[16] = v10;
    *&v238[24] = v9;
    *&v238[32] = v191;
    *&v238[40] = *(v7 + 40);
    v74 = *(v7 + 56);
    v7 = &v203;
    *&v238[56] = v74;
    *&v238[72] = v179;
    DisplayList.ViewUpdater.Platform.updateItemView(_:index:item:state:)(v235, &v219, v238, v66);
    v75 = DWORD2(v195);
    v8 = v235;
    if (BYTE1(v237))
    {
      goto LABEL_58;
    }

    goto LABEL_54;
  }

  if ((v15 & 4) == 0 || (*(v66 + 104) & 0x200) != 0)
  {
    v7 = &v203;
  }

  else
  {
    *v238 = *v7;
    *&v238[16] = v10;
    *&v238[24] = v9;
    *&v238[32] = v191;
    *&v238[40] = *(v7 + 40);
    *&v238[56] = *(v7 + 56);
    *&v238[72] = v179;
    DisplayList.Item.features.getter(&v219);
    v7 = &v203;
    if ((v219 & 0x400) == 0)
    {
      if (one-time initialization token for caLayer != -1)
      {
        swift_once();
      }

      v15 = static DisplayList.ViewUpdater.Platform.caLayer;
    }
  }

  if (v68 != v15)
  {
    *&v238[64] = *&v235[64];
    *v239 = *v236;
    *&v239[16] = *&v236[16];
    v240 = v237;
    *v238 = *v235;
    *&v238[16] = *&v235[16];
    *&v238[32] = *&v235[32];
    *&v238[48] = *&v235[48];
    outlined destroy of DisplayList.ViewUpdater.ViewInfo(v238);
    *&v219 = v15;
    LOBYTE(v203) = 0;
    DisplayList.ViewUpdater.ViewInfo.init(platform:kind:)(&v219, &v203, v235);
  }

  *&v219 = *v235;
  *v238 = v202;
  *&v238[16] = v10;
  *&v238[24] = v9;
  *&v238[32] = v191;
  v8 = v235;
  *&v238[40] = v247;
  *&v238[56] = v248;
  *&v238[72] = v179;
  DisplayList.ViewUpdater.Platform.updateState(_:item:size:state:)(v235, v238, v66, v10, v9, v69, v70, v71, v72);
  v75 = v176;
  if ((BYTE1(v237) & 1) == 0)
  {
LABEL_54:
    if (v191)
    {
      v76 = (2 * ((33 * (v191 >> 16)) ^ v191)) | 1;
    }

    else
    {
      LOWORD(v76) = 0;
    }

    *&v236[8] = v76;
  }

LABEL_58:
  if (*&v235[8] == v63)
  {
LABEL_96:
    *v238 = *v235;
    *&v238[16] = *&v235[16];
    *&v238[64] = *&v235[64];
    *v239 = *v236;
    *&v239[16] = *&v236[16];
    v240 = v237;
    *&v238[32] = *&v235[32];
    *&v238[48] = *&v235[48];
    v140 = *&v235[8];
    v141 = *&v235[24];
    v142 = *&v235[72];
    v143 = BYTE1(v237);
    outlined init with copy of DisplayList.ViewUpdater.ViewInfo(v238, &v219);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v144 = swift_isUniquelyReferenced_nonNull_native();
    *&v219 = *v184;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v238, v183, v36, v172 | v177, v144);
    *v184 = v219;
    v145 = *(&v237 + 1);
    *a6 = *v235;
    *(a6 + 8) = v140;
    *(a6 + 16) = v141;
    *(a6 + 24) = v142;
    *(a6 + 32) = v174;
    *(a6 + 36) = v178;
    *(a6 + 40) = v176;
    *(a6 + 44) = v175;
    *(a6 + 48) = v177;
    *(a6 + 49) = v171;
    *(a6 + 50) = a5;
    *(a6 + 51) = (v143 & 1) == 0;
    *(a6 + 56) = v145;
    v221 = *&v235[32];
    v222 = *&v235[48];
    v219 = *v235;
    v220 = *&v235[16];
    v225 = *&v236[16];
    v226 = v237;
    v223 = *&v235[64];
    v224 = *v236;
    return outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v219);
  }

  v168 = *&v235[8];
  HIDWORD(v169) = v75;
  specialized Dictionary.removeValue(forKey:)(v63, v238);
  v77 = v68 & 3;
  swift_unknownObjectRetain();
  CoreViewRemoveFromSuperview(v77, v63);
  v78 = CoreViewSubviewsCount(v77, v63);
  if (v78 < 0)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v79 = v78;
  v80 = v183;
  if (!v78)
  {
LABEL_92:
    v139 = swift_isUniquelyReferenced_nonNull_native();
    *v238 = *(v184 + 8);
    v36 = v170;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v80, v170, v172 | v177, v168, v139);
    *(v184 + 8) = *v238;
    if (!HIDWORD(v169))
    {
      if (v179)
      {
        [*&v235[16] setSwiftUI:v179 displayListID:?];
      }
    }

    swift_unknownObjectRelease();
    LOBYTE(a5) = 1;
    goto LABEL_96;
  }

  v81 = *(v184 + 8);
  v82 = v78;
  v181 = v77;
  v180 = v78;
  a5 = v81;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (v79 < v82)
        {
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }

        --v82;
        v238[0] = v77;
        v83 = CoreViewSubviewAtIndex(v77, v67, v82, v238);
        if (v238[0] != v77 && one-time initialization token for caLayer != -1)
        {
          swift_once();
        }

        if (*(v81 + 16))
        {
          break;
        }

        swift_unknownObjectRelease();
        if (!v82)
        {
          goto LABEL_92;
        }
      }

      v84 = specialized __RawDictionaryStorage.find<A>(_:)(v83);
      if (v85)
      {
        break;
      }

      swift_unknownObjectRelease();
      v81 = a5;
      if (!v82)
      {
        goto LABEL_92;
      }
    }

    if (!*(v14 + 16))
    {
      goto LABEL_98;
    }

    v86 = (*(a5 + 56) + 20 * v84);
    v87 = *v86;
    v13 = v86[1];
    v88 = v86[2];
    v12 = v86[3];
    v89 = *(v86 + 16);
    v90 = *(v86 + 17);
    v185 = v87;
    if (v90)
    {
      v91 = 256;
    }

    else
    {
      v91 = 0;
    }

    LOWORD(v195) = v89;
    v190 = v91;
    v191 = v88 | (v12 << 32);
    a3 = v87 | (v13 << 32);
    v92 = specialized __RawDictionaryStorage.find<A>(_:)(a3, v191, v91 | v89);
    if ((v93 & 1) == 0)
    {
      goto LABEL_99;
    }

    v94 = *(v14 + 56) + (v92 << 7);
    v96 = *(v94 + 32);
    v95 = *(v94 + 48);
    v97 = *(v94 + 16);
    *v238 = *v94;
    *&v238[16] = v97;
    *&v238[32] = v96;
    *&v238[48] = v95;
    v98 = *(v94 + 64);
    v99 = *(v94 + 80);
    v100 = *(v94 + 112);
    *&v239[16] = *(v94 + 96);
    v240 = v100;
    *&v238[64] = v98;
    *v239 = v99;
    v101 = v100;
    v102 = *v94;
    v103 = *(v94 + 32);
    v213 = *(v94 + 16);
    v214 = v103;
    v212 = v102;
    v104 = *(v94 + 48);
    v105 = *(v94 + 64);
    v106 = *(v94 + 96);
    v217 = *(v94 + 80);
    v218 = v106;
    v215 = v104;
    v216 = v105;
    v107 = *(v94 + 113);
    *(v211 + 7) = *(v94 + 120);
    v211[0] = v107;
    if (v101 != 1)
    {
      break;
    }

    v223 = v216;
    v224 = v217;
    v225 = v218;
    v219 = v212;
    v220 = v213;
    v221 = v214;
    v222 = v215;
    LOBYTE(v226) = v240;
    *(&v226 + 1) = *(v211 + 7);
    *(&v226 + 1) = v211[0];
    outlined init with copy of DisplayList.ViewUpdater.ViewInfo(v238, &v203);
    outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v219);
    swift_unknownObjectRelease();
LABEL_86:
    v67 = v182;
    v80 = v183;
    v77 = v181;
    v79 = v180;
    v81 = a5;
    if (!v82)
    {
      goto LABEL_92;
    }
  }

  v223 = v216;
  v224 = v217;
  v225 = v218;
  v219 = v212;
  v220 = v213;
  v221 = v214;
  v222 = v215;
  LOBYTE(v226) = 1;
  *(&v226 + 1) = *(v211 + 7);
  *(&v226 + 1) = v211[0];
  outlined init with copy of DisplayList.ViewUpdater.ViewInfo(v238, &v203);
  outlined init with copy of DisplayList.ViewUpdater.ViewInfo(&v219, &v203);
  v7 = swift_isUniquelyReferenced_nonNull_native();
  v201 = *v184;
  v108 = v201;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a3, v191, v190 | v195);
  v110 = v108[2];
  v111 = (v109 & 1) == 0;
  v112 = v110 + v111;
  if (__OFADD__(v110, v111))
  {
    goto LABEL_100;
  }

  LODWORD(v14) = v109;
  if (v108[3] >= v112)
  {
    if (v7)
    {
      v7 = &v203;
      if ((v109 & 1) == 0)
      {
        goto LABEL_80;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      v7 = &v203;
      if ((v14 & 1) == 0)
      {
        goto LABEL_80;
      }
    }

    goto LABEL_84;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v112, v7);
  v113 = specialized __RawDictionaryStorage.find<A>(_:)(a3, v191, v190 | v195);
  if ((v14 & 1) == (v114 & 1))
  {
    v8 = v113;
    v7 = &v203;
    if ((v14 & 1) == 0)
    {
LABEL_80:
      v14 = v201;
      v201[(v8 >> 6) + 8] |= 1 << v8;
      v115 = *(v14 + 48) + 20 * v8;
      *v115 = v185;
      *(v115 + 4) = v13;
      *(v115 + 8) = v88;
      *(v115 + 12) = v12;
      *(v115 + 16) = v195;
      *(v115 + 17) = v90;
      v116 = (*(v14 + 56) + (v8 << 7));
      v118 = v225;
      v117 = v226;
      v119 = v224;
      v116[4] = v223;
      v116[5] = v119;
      v116[6] = v118;
      v116[7] = v117;
      v121 = v221;
      v120 = v222;
      v122 = v220;
      *v116 = v219;
      v116[1] = v122;
      v116[2] = v121;
      v116[3] = v120;
      v123 = *(v14 + 16);
      v124 = __OFADD__(v123, 1);
      v125 = v123 + 1;
      if (v124)
      {
        goto LABEL_101;
      }

      *(v14 + 16) = v125;
      goto LABEL_85;
    }

LABEL_84:
    v14 = v201;
    v126 = (v201[7] + (v8 << 7));
    v127 = v126[3];
    v129 = *v126;
    v128 = v126[1];
    v205 = v126[2];
    v206 = v127;
    v203 = v129;
    v204 = v128;
    v130 = v126[7];
    v132 = v126[4];
    v131 = v126[5];
    v209 = v126[6];
    v210 = v130;
    v207 = v132;
    v208 = v131;
    v133 = v219;
    v134 = v220;
    v135 = v222;
    v126[2] = v221;
    v126[3] = v135;
    *v126 = v133;
    v126[1] = v134;
    v136 = v223;
    v137 = v224;
    v138 = v226;
    v126[6] = v225;
    v126[7] = v138;
    v126[4] = v136;
    v126[5] = v137;
    outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v203);
LABEL_85:
    *v184 = v14;
    specialized Set._Variant.insert(_:)(v200, a3, v191, v190 | v195);
    v207 = v216;
    v208 = v217;
    v209 = v218;
    v203 = v212;
    v204 = v213;
    v205 = v214;
    v206 = v215;
    LOBYTE(v210) = 1;
    *(&v210 + 1) = *(v211 + 7);
    *(&v210 + 1) = v211[0];
    outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v203);
    swift_unknownObjectRelease();
    v8 = v235;
    goto LABEL_86;
  }

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_105:
  v146 = v12;
  v147 = *(v184 + 96);
  v148 = *(v184 + 100);
  *v238 = *(v184 + 88);
  *&v238[8] = v147;
  *&v238[12] = v148;
  outlined init with copy of DisplayList.ViewUpdater.ViewInfo(&v227, &v241);
  DisplayList.minimalDescription.getter();
  v199 = v149;
  v197 = v150;
  v194 = static os_log_type_t.error.getter();
  if (one-time initialization token for internalErrorsLog != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v151 = static Log.internalErrorsLog;
  _s7SwiftUI11DisplayListV10ArchiveIDsVSgMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
  v152 = swift_allocObject();
  v153 = MEMORY[0x1E69E7668];
  v154 = MEMORY[0x1E69E76D0];
  *(v152 + 16) = xmmword_18DDAC2E0;
  *(v152 + 56) = v153;
  *(v152 + 64) = v154;
  v155 = v146;
  *(v152 + 32) = v146;
  *(v152 + 96) = v153;
  *(v152 + 104) = v154;
  *(v152 + 72) = v178;
  *(v152 + 136) = v153;
  *(v152 + 144) = v154;
  *(v152 + 112) = v14;
  *(v152 + 176) = v153;
  *(v152 + 184) = v154;
  *(v152 + 152) = v13;
  *v238 = 0;
  *&v238[8] = 0xE000000000000000;
  LOBYTE(v219) = v235[64];
  v156 = v151;
  _print_unlocked<A, B>(_:_:)();
  v157 = *v238;
  v158 = *&v238[8];
  v159 = MEMORY[0x1E69E6158];
  *(v152 + 216) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(v152 + 192) = v157;
  *(v152 + 200) = v158;
  *(v152 + 256) = v159;
  *(v152 + 264) = v160;
  *(v152 + 224) = v160;
  *(v152 + 232) = v199;
  *(v152 + 240) = v197;

  os_log(_:dso:log:_:_:)(v194, &dword_18D018000, v156, "repeated view: %u, %u, %u, %u, %s, %s", v165, v166, v167, v168, v169, v170);

  *&v219 = 0;
  *(&v219 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(37);
  MEMORY[0x193ABEDD0](0x6465746165706572, 0xEF203A7765697620);
  *&v203 = 35;
  *(&v203 + 1) = 0xE100000000000000;
  LODWORD(v212) = v155;
  v161 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v161);

  MEMORY[0x193ABEDD0](v203, *(&v203 + 1));

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  LODWORD(v203) = v178;
  v162 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v162);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  *&v203 = 35;
  *(&v203 + 1) = 0xE100000000000000;
  LODWORD(v212) = v176;
  v163 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v163);

  MEMORY[0x193ABEDD0](v203, *(&v203 + 1));

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  LODWORD(v203) = v175;
  v164 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v164);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  LOBYTE(v203) = v235[64];
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  MEMORY[0x193ABEDD0](v199, v197);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *CoreViewAddSubview(void *result, void *a2, int a3, void *a4, char *a5)
{
  if (!result)
  {
    if (a3)
    {
      CoreViewAddSubview_cold_1();
    }

    v7 = a2;
    goto LABEL_7;
  }

  if (result != 1)
  {
    return result;
  }

  if (!a3)
  {
    v7 = [a2 layer];
LABEL_7:

    return [v7 insertSublayer:a4 atIndex:a5];
  }

  if (a3 != 1)
  {
    CoreViewAddSubview_cold_2();
  }

  return _UIKitAddSubview(a4, a2, a5);
}

void DisplayList.ViewUpdater.Platform.updateItemView(_:index:item:state:)(uint64_t a1, uint64_t a2, _OWORD *a3, __int128 *a4)
{
  v572 = *MEMORY[0x1E69E9840];
  type metadata accessor for SDFShape.BackdropObserver?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v517 - v9;
  v11 = type metadata accessor for Date();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v517 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v517 - v17;
  v19 = a3[3];
  *&v570.tx = a3[2];
  *v571 = v19;
  *&v571[12] = *(a3 + 60);
  v20 = a3[1];
  *&v570.a = *a3;
  *&v570.c = v20;
  v21 = *v4;
  ty = v570.ty;
  v23 = v19;
  v24 = *&v571[16];
  v25 = *&v571[16] >> 30;
  if (!(*&v571[16] >> 30))
  {
    if (*(a1 + 90) != *v571)
    {
      v39 = a4[9];
      v40 = a4[7];
      v563 = a4[8];
      v564 = v39;
      v41 = a4[9];
      v565 = a4[10];
      v42 = a4[5];
      v43 = a4[3];
      *&v559[64] = a4[4];
      v560 = v42;
      v44 = a4[5];
      v45 = a4[7];
      v561 = a4[6];
      v562 = v45;
      v46 = a4[1];
      *v559 = *a4;
      *&v559[16] = v46;
      v47 = a4[3];
      v49 = *a4;
      v48 = a4[1];
      *&v559[32] = a4[2];
      *&v559[48] = v47;
      v555 = v563;
      v556 = v41;
      v557 = a4[10];
      *&v554[64] = *&v559[64];
      *&v554[80] = v44;
      *&v554[96] = v561;
      *&v554[112] = v40;
      *v554 = v49;
      *&v554[16] = v48;
      v566 = *(a4 + 22);
      v558 = *(a4 + 22);
      *&v554[32] = *&v559[32];
      *&v554[48] = v43;
      v50 = *&v570.c;
      v530 = *&v570.c;
      *(a1 + 113) = 0;
      v528 = a1;
      v51 = *(a1 + 65);
      if ((v51 & 0x20) != 0)
      {
        v51 &= ~0x20u;
        *(v528 + 65) = v51;
      }

      switch(*&ty >> 60)
      {
        case 1:
          v533 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          LODWORD(v534) = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v158 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x24);
          v159 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x25);
          v53 = v528;
          v160 = v19;
          if (*(v528 + 64) == 1)
          {
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v559, &v547);
          }

          else
          {
            *&v567 = v21;
            v388 = a3[3];
            *&v539.tx = a3[2];
            v540[0] = v388;
            *(v540 + 12) = *(a3 + 60);
            v389 = a3[1];
            *&v539.a = *a3;
            *&v539.c = v389;
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v559, &v547);
            DisplayList.ViewUpdater.Platform._makeItemView(item:state:)(&v539, a4, &v536);
            v390 = *(v53 + 80);
            v548[1] = *(v53 + 64);
            v549[0] = v390;
            v391 = *(v53 + 112);
            v549[1] = *(v53 + 96);
            v549[2] = v391;
            v392 = *(v53 + 16);
            *&v547.a = *v53;
            *&v547.c = v392;
            v393 = *(v53 + 48);
            *&v547.tx = *(v53 + 32);
            v548[0] = v393;
            v394 = *&v536.a;
            v395 = *&v536.c;
            v396 = v537;
            *(v53 + 32) = *&v536.tx;
            *(v53 + 48) = v396;
            *v53 = v394;
            *(v53 + 16) = v395;
            v397 = v538[0];
            v398 = v538[1];
            v399 = v538[3];
            *(v53 + 96) = v538[2];
            *(v53 + 112) = v399;
            *(v53 + 64) = v397;
            *(v53 + 80) = v398;
            outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v547);
          }

          v400 = *(v53 + 16);
          if (one-time initialization token for cache != -1)
          {
            swift_once();
          }

          v401 = specialized ObjectCache.subscript.getter(&v533);
          [v400 setBackgroundColor_];

          [v400 setAllowsEdgeAntialiasing_];
          v402 = 0;
          if (v159)
          {
            v403 = MEMORY[0x1E69792A8];
            if (*&v534 > 1.0)
            {
              v403 = MEMORY[0x1E6979298];
              if (v159 == 2)
              {
                v403 = MEMORY[0x1E69792A0];
              }

              v402 = 1;
            }
          }

          else
          {
            v403 = MEMORY[0x1E69792A8];
          }

          v476 = *v403;
          [v400 contentsEDRStrength];
          v478 = v477;
          [v400 contentsCDRStrength];
          v480 = v479;
          [v400 setPreferredDynamicRange_];
          [v400 contentsEDRStrength];
          v482 = v481;
          [v400 contentsCDRStrength];
          if (v482 != v478)
          {
            v484 = v482 - v478;
            v485 = v483;
            CALayer.animateEDRProperty(_:interval:)(0xD000000000000013, 0x800000018DD7DBC0, v484);
            v483 = v485;
          }

          if (v483 != v480)
          {
            CALayer.animateEDRProperty(_:interval:)(0xD000000000000013, 0x800000018DD7DBE0, v483 - v480);
          }

          [v400 setWantsExtendedDynamicRangeContent_];

          outlined destroy of DisplayList.Item(&v570);
          LOWORD(v23) = v160;
          goto LABEL_273;
        case 2:
          v53 = v528;
          if (*(v528 + 64) == 8)
          {
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v559, &v547);
          }

          else
          {
            *&v533 = v21;
            v325 = a3[3];
            *&v539.tx = a3[2];
            v540[0] = v325;
            *(v540 + 12) = *(a3 + 60);
            v326 = a3[1];
            *&v539.a = *a3;
            *&v539.c = v326;
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v559, &v547);
            DisplayList.ViewUpdater.Platform._makeItemView(item:state:)(&v539, a4, &v536);
            v327 = *(v53 + 80);
            v548[1] = *(v53 + 64);
            v549[0] = v327;
            v328 = *(v53 + 112);
            v549[1] = *(v53 + 96);
            v549[2] = v328;
            v329 = *(v53 + 16);
            *&v547.a = *v53;
            *&v547.c = v329;
            v330 = *(v53 + 48);
            *&v547.tx = *(v53 + 32);
            v548[0] = v330;
            v331 = *&v536.a;
            v332 = *&v536.c;
            v333 = v537;
            *(v53 + 32) = *&v536.tx;
            *(v53 + 48) = v333;
            *v53 = v331;
            *(v53 + 16) = v332;
            v334 = v538[0];
            v335 = v538[1];
            v336 = v538[3];
            *(v53 + 96) = v538[2];
            *(v53 + 112) = v336;
            *(v53 + 64) = v334;
            *(v53 + 80) = v335;
            outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v547);
          }

          goto LABEL_273;
        case 3:
          v153 = v19;
          v154 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x50);
          v540[0] = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x40);
          v540[1] = v154;
          v541[0] = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x60);
          *(v541 + 12) = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x6C);
          v155 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          *&v539.a = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          *&v539.c = v155;
          *&v539.tx = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          v53 = v528;
          if (*(v528 + 64) == 2)
          {
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v559, &v547);
            outlined init with copy of GraphicsImage(&v539, &v547);
          }

          else
          {
            *&v567 = v21;
            v337 = a3[3];
            v535[0] = a3[2];
            v535[1] = v337;
            *(&v535[1] + 12) = *(a3 + 60);
            v338 = a3[1];
            v533 = *a3;
            v534 = v338;
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v559, &v547);
            outlined init with copy of GraphicsImage(&v539, &v547);
            DisplayList.ViewUpdater.Platform._makeItemView(item:state:)(&v533, a4, &v536);
            v51 = BYTE1(v538[0]);
            v339 = *(v53 + 80);
            v548[1] = *(v53 + 64);
            v549[0] = v339;
            v340 = *(v53 + 112);
            v549[1] = *(v53 + 96);
            v549[2] = v340;
            v341 = *(v53 + 16);
            *&v547.a = *v53;
            *&v547.c = v341;
            v342 = *(v53 + 48);
            *&v547.tx = *(v53 + 32);
            v548[0] = v342;
            *(v53 + 64) = v538[0];
            v343 = v537;
            *(v53 + 32) = *&v536.tx;
            *(v53 + 48) = v343;
            v344 = *&v536.c;
            *v53 = *&v536.a;
            *(v53 + 16) = v344;
            *(v53 + 65) = v51;
            *(v53 + 66) = *(v538 + 2);
            *(v53 + 82) = *(&v538[1] + 2);
            *(v53 + 98) = *(&v538[2] + 2);
            *(v53 + 112) = v538[3];
            outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v547);
          }

          v345 = *(v53 + 16);
          type metadata accessor for ImageLayer();
          swift_dynamicCastClassUnconditional();
          v548[0] = v540[0];
          v548[1] = v540[1];
          v549[0] = v541[0];
          *(v549 + 12) = *(v541 + 12);
          v547 = v539;
          v346 = v345;
          ImageLayer.update(image:size:)(&v547, *&v50, *(&v50 + 1));
          v548[1] = v540[1];
          v549[0] = v541[0];
          *(v549 + 12) = *(v541 + 12);
          v547 = v539;
          v548[0] = v540[0];
          v347 = GraphicsImage.bitmapOrientation.getter();
          v348 = v347;
          CGAffineTransform.apply(_:in:)(v347, *&v50, *(&v50 + 1));

          outlined destroy of GraphicsImage(&v539);
          outlined destroy of DisplayList.Item(&v570);
          if (v348 >= 4)
          {
            v349 = *&v50;
          }

          else
          {
            v349 = *(&v50 + 1);
          }

          if (v348 >= 4)
          {
            v350 = *(&v50 + 1);
          }

          else
          {
            v350 = *&v50;
          }

          *&v530 = v350;
          *(&v530 + 1) = v349;
          if ((v51 & 0x20) == 0)
          {
            *(v53 + 65) = v51 | 0x20;
          }

          LOWORD(v23) = v153;
          goto LABEL_273;
        case 4:
          v54 = v19;
          v136 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v533 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v534 = v136;
          LOBYTE(v535[0]) = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          v137 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x38);
          v138 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x40);
          v139 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x41);
          v53 = v528;
          if (*(v528 + 64) == 3)
          {
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v559, &v547);
          }

          else
          {
            *&v567 = v21;
            v276 = a3[3];
            *&v539.tx = a3[2];
            v540[0] = v276;
            *(v540 + 12) = *(a3 + 60);
            v277 = a3[1];
            *&v539.a = *a3;
            *&v539.c = v277;
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v559, &v547);
            DisplayList.ViewUpdater.Platform._makeItemView(item:state:)(&v539, a4, &v536);
            v278 = *(v53 + 80);
            v548[1] = *(v53 + 64);
            v549[0] = v278;
            v279 = *(v53 + 112);
            v549[1] = *(v53 + 96);
            v549[2] = v279;
            v280 = *(v53 + 16);
            *&v547.a = *v53;
            *&v547.c = v280;
            v281 = *(v53 + 48);
            *&v547.tx = *(v53 + 32);
            v548[0] = v281;
            v282 = *&v536.a;
            v283 = *&v536.c;
            v284 = v537;
            *(v53 + 32) = *&v536.tx;
            *(v53 + 48) = v284;
            *v53 = v282;
            *(v53 + 16) = v283;
            v285 = v538[0];
            v286 = v538[1];
            v287 = v538[3];
            *(v53 + 96) = v538[2];
            *(v53 + 112) = v287;
            *(v53 + 64) = v285;
            *(v53 + 80) = v286;
            outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v547);
          }

          v547.a = *v53;
          if (v139)
          {
            v288 = 256;
          }

          else
          {
            v288 = 0;
          }

          DisplayList.ViewUpdater.Platform.updateShapeView(_:state:size:path:paint:style:contentsChanged:)(v53, v554, &v530, &v533, v137, v288 | v138, 1);
          goto LABEL_221;
        case 5:
          v148 = v19;
          v161 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v533 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v534 = v161;
          v535[0] = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          *&v535[1] = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x40);
          v53 = v528;
          if (*(v528 + 64) == 4)
          {
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v559, &v547);
            outlined init with copy of SDFShape(&v533, &v547);
          }

          else
          {
            *&v567 = v21;
            v408 = a3[3];
            *&v539.tx = a3[2];
            v540[0] = v408;
            *(v540 + 12) = *(a3 + 60);
            v409 = a3[1];
            *&v539.a = *a3;
            *&v539.c = v409;
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v559, &v547);
            outlined init with copy of SDFShape(&v533, &v547);
            DisplayList.ViewUpdater.Platform._makeItemView(item:state:)(&v539, a4, &v536);
            v410 = *(v53 + 80);
            v548[1] = *(v53 + 64);
            v549[0] = v410;
            v411 = *(v53 + 112);
            v549[1] = *(v53 + 96);
            v549[2] = v411;
            v412 = *(v53 + 16);
            *&v547.a = *v53;
            *&v547.c = v412;
            v413 = *(v53 + 48);
            *&v547.tx = *(v53 + 32);
            v548[0] = v413;
            v414 = *&v536.a;
            v415 = *&v536.c;
            v416 = v537;
            *(v53 + 32) = *&v536.tx;
            *(v53 + 48) = v416;
            *v53 = v414;
            *(v53 + 16) = v415;
            v417 = v538[0];
            v418 = v538[1];
            v419 = v538[3];
            *(v53 + 96) = v538[2];
            *(v53 + 112) = v419;
            *(v53 + 64) = v417;
            *(v53 + 80) = v418;
            outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v547);
          }

          v536.a = *v53;
          *&v547.a = v533;
          *&v547.c = v534;
          *&v547.tx = v535[0];
          *&v548[0] = *&v535[1];
          DisplayList.ViewUpdater.Platform.updateSDFShapeView(_:state:shape:contentsChanged:)(v53, v554, &v547, 1);
          outlined destroy of SDFShape(&v533);
          goto LABEL_224;
        case 6:
          *&v527 = v19;
          v162 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v163 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v164 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
          v165 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v166 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x28);
          v53 = v528;
          if (*(v528 + 64) == 4)
          {
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v559, &v547);
          }

          else
          {
            *&v533 = v21;
            v420 = a3[3];
            *&v539.tx = a3[2];
            v540[0] = v420;
            *(v540 + 12) = *(a3 + 60);
            v421 = a3[1];
            *&v539.a = *a3;
            *&v539.c = v421;
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v559, &v547);
            DisplayList.ViewUpdater.Platform._makeItemView(item:state:)(&v539, a4, &v536);
            v422 = *(v53 + 80);
            v548[1] = *(v53 + 64);
            v549[0] = v422;
            v423 = *(v53 + 112);
            v549[1] = *(v53 + 96);
            v549[2] = v423;
            v424 = *(v53 + 16);
            *&v547.a = *v53;
            *&v547.c = v424;
            v425 = *(v53 + 48);
            *&v547.tx = *(v53 + 32);
            v548[0] = v425;
            v426 = *&v536.a;
            v427 = *&v536.c;
            v428 = v537;
            *(v53 + 32) = *&v536.tx;
            *(v53 + 48) = v428;
            *v53 = v426;
            *(v53 + 16) = v427;
            v429 = v538[0];
            v430 = v538[1];
            v431 = v538[3];
            *(v53 + 96) = v538[2];
            *(v53 + 112) = v431;
            *(v53 + 64) = v429;
            *(v53 + 80) = v430;
            outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v547);
          }

          type metadata accessor for SDFLayer();
          swift_dynamicCastClassUnconditional();
          v547.a = v162;
          LOWORD(v547.b) = v163;
          HIDWORD(v547.b) = v164;
          LODWORD(v539.a) = v166;
          v432 = *&v554[112];
          v536.a = *(*v554 + 24);
          outlined copy of BackdropGroupID?(*&v554[112]);
          SDFLayer.update(list:size:style:options:in:backdropGroupID:)(&v547, v165, *&v50, *(&v50 + 1), &v539, &v536.a, v432);
          outlined consume of BackdropGroupID?(v432);
          goto LABEL_242;
        case 7:
          v156 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v567 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v568 = v156;
          v569 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          v157 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x48);
          v533 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x38);
          v534 = v157;
          v535[0] = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x58);
          *(v535 + 13) = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x65);
          v53 = v528;
          if (*(v528 + 64) == 6)
          {
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v559, &v547);
          }

          else
          {
            v529 = v21;
            v351 = a3[3];
            *&v539.tx = a3[2];
            v540[0] = v351;
            *(v540 + 12) = *(a3 + 60);
            v352 = a3[1];
            *&v539.a = *a3;
            *&v539.c = v352;
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v559, &v547);
            DisplayList.ViewUpdater.Platform._makeItemView(item:state:)(&v539, a4, &v536);
            v51 = BYTE1(v538[0]);
            v353 = *(v53 + 80);
            v548[1] = *(v53 + 64);
            v549[0] = v353;
            v354 = *(v53 + 112);
            v549[1] = *(v53 + 96);
            v549[2] = v354;
            v355 = *(v53 + 16);
            *&v547.a = *v53;
            *&v547.c = v355;
            v356 = *(v53 + 48);
            *&v547.tx = *(v53 + 32);
            v548[0] = v356;
            *(v53 + 64) = v538[0];
            v357 = v537;
            *(v53 + 32) = *&v536.tx;
            *(v53 + 48) = v357;
            v358 = *&v536.c;
            *v53 = *&v536.a;
            *(v53 + 16) = v358;
            *(v53 + 65) = v51;
            *(v53 + 66) = *(v538 + 2);
            *(v53 + 82) = *(&v538[1] + 2);
            *(v53 + 98) = *(&v538[2] + 2);
            *(v53 + 112) = v538[3];
            outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v547);
          }

          v359 = *v53;
          Path.boundingRect.getter();
          x = v577.origin.x;
          y = v577.origin.y;
          width = v577.size.width;
          height = v577.size.height;
          if (CGRectIsNull(v577))
          {
            x = 0.0;
            y = 0.0;
            width = 0.0;
            height = 0.0;
          }

          *&v536.c = v567;
          *&v536.tx = v568;
          *(v538 + 8) = v533;
          v364 = *(v53 + 16);
          v536.a = v359;
          *&v536.b = v364;
          LOBYTE(v537) = v569;
          *(&v537 + 1) = x;
          *v538 = y;
          *(&v538[1] + 8) = v534;
          *(&v538[2] + 8) = v535[0];
          *(&v538[3] + 5) = *(v535 + 13);
          BYTE13(v538[3]) = 1;
          v365 = v364;
          outlined init with copy of Path(&v567, &v547);
          specialized ShapeLayerShadowHelper.visitPaint<A>(_:)(1.0, 1.0, 1.0, 1.0);
          v548[1] = v538[0];
          v549[0] = v538[1];
          v549[1] = v538[2];
          *(&v549[1] + 14) = *(&v538[2] + 14);
          v547 = v536;
          v548[0] = v537;
          outlined destroy of ShapeLayerShadowHelper(&v547);
          if ((v51 & 0x20) == 0)
          {
            *(v53 + 65) = v51 | 0x20;
          }

          v536 = *&v554[32];
          CGAffineTransformTranslate(&v539, &v536, x, y);
          *&v554[32] = v539;
          outlined destroy of DisplayList.Item(&v570);
          *&v530 = width;
          *(&v530 + 1) = height;
          goto LABEL_273;
        case 8:
          v173 = v21;
          *&v527 = v19;
          outlined init with copy of AnyTrackedValue((*&ty & 0xFFFFFFFFFFFFFFFLL) + 16, &v533);
          v53 = v528;
          if (*(v528 + 64) == 15)
          {
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v559, &v547);
          }

          else
          {
            *&v567 = v173;
            v539 = v570;
            v540[0] = *v571;
            *(v540 + 12) = *&v571[12];
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v559, &v547);
            DisplayList.ViewUpdater.Platform._makeItemView(item:state:)(&v539, a4, &v536);
            v458 = *(v53 + 80);
            v548[1] = *(v53 + 64);
            v549[0] = v458;
            v459 = *(v53 + 112);
            v549[1] = *(v53 + 96);
            v549[2] = v459;
            v460 = *(v53 + 16);
            *&v547.a = *v53;
            *&v547.c = v460;
            v461 = *(v53 + 48);
            *&v547.tx = *(v53 + 32);
            v548[0] = v461;
            v462 = *&v536.a;
            v463 = *&v536.c;
            v464 = v537;
            *(v53 + 32) = *&v536.tx;
            *(v53 + 48) = v464;
            *v53 = v462;
            *(v53 + 16) = v463;
            v465 = v538[0];
            v466 = v538[1];
            v467 = v538[3];
            *(v53 + 96) = v538[2];
            *(v53 + 112) = v467;
            *(v53 + 64) = v465;
            *(v53 + 80) = v466;
            outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v547);
          }

          v468 = *(v53 + 8);
          v469 = *(&v534 + 1);
          v470 = *&v535[0];
          __swift_project_boxed_opaque_existential_1(&v533, *(&v534 + 1));
          v471 = *(v470 + 24);
          swift_unknownObjectRetain();
          v471(v53 + 8, v469, v470);
          if (v468 != *(v53 + 8))
          {
            LOBYTE(v547.a) = 15;
            (*((*&v173 & 0xFFFFFFFFFFFFFFF8) + 112))();
            DisplayList.ViewUpdater.ViewInfo.reset()();
          }

          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(&v533);
          goto LABEL_242;
        case 9:
          v147 = v21;
          v148 = v19;
          outlined init with copy of AnyTrackedValue((*&ty & 0xFFFFFFFFFFFFFFFLL) + 16, &v533);
          v53 = v528;
          if (*(v528 + 64) == 17)
          {
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v559, &v547);
          }

          else
          {
            *&v567 = v147;
            v539 = v570;
            v540[0] = *v571;
            *(v540 + 12) = *&v571[12];
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v559, &v547);
            DisplayList.ViewUpdater.Platform._makeItemView(item:state:)(&v539, a4, &v536);
            v312 = *(v53 + 80);
            v548[1] = *(v53 + 64);
            v549[0] = v312;
            v313 = *(v53 + 112);
            v549[1] = *(v53 + 96);
            v549[2] = v313;
            v314 = *(v53 + 16);
            *&v547.a = *v53;
            *&v547.c = v314;
            v315 = *(v53 + 48);
            *&v547.tx = *(v53 + 32);
            v548[0] = v315;
            v316 = *&v536.a;
            v317 = *&v536.c;
            v318 = v537;
            *(v53 + 32) = *&v536.tx;
            *(v53 + 48) = v318;
            *v53 = v316;
            *(v53 + 16) = v317;
            v319 = v538[0];
            v320 = v538[1];
            v321 = v538[3];
            *(v53 + 96) = v538[2];
            *(v53 + 112) = v321;
            *(v53 + 64) = v319;
            *(v53 + 80) = v320;
            outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v547);
          }

          v322 = *(v53 + 16);
          [v322 setContentsScale_];
          v323 = *(&v534 + 1);
          v324 = *&v535[0];
          __swift_project_boxed_opaque_existential_1(&v533, *(&v534 + 1));
          (*(v324 + 24))(v322, v323, v324);
          __swift_destroy_boxed_opaque_existential_1(&v533);
LABEL_224:
          outlined destroy of DisplayList.Item(&v570);
          LOWORD(v23) = v148;
          goto LABEL_273;
        case 0xALL:
          v524 = v15;
          v525 = *&v18;
          v521 = v16;
          v167 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          *&v526 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v168 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v169 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x28);
          v170 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          v171 = v528;
          v172 = *(v528 + 64);
          *&v527 = v19;
          if (v172 == 9)
          {
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v559, &v547);
          }

          else
          {
            *&v533 = v21;
            v433 = a3[3];
            *&v539.tx = a3[2];
            v540[0] = v433;
            *(v540 + 12) = *(a3 + 60);
            v434 = a3[1];
            *&v539.a = *a3;
            *&v539.c = v434;
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v559, &v547);
            DisplayList.ViewUpdater.Platform._makeItemView(item:state:)(&v539, a4, &v536);
            v435 = *(v171 + 80);
            v548[1] = *(v171 + 64);
            v549[0] = v435;
            v436 = *(v171 + 112);
            v549[1] = *(v171 + 96);
            v549[2] = v436;
            v437 = *(v171 + 16);
            *&v547.a = *v171;
            *&v547.c = v437;
            v438 = *(v171 + 48);
            *&v547.tx = *(v171 + 32);
            v548[0] = v438;
            v439 = *&v536.a;
            v440 = *&v536.c;
            v441 = v537;
            *(v171 + 32) = *&v536.tx;
            *(v171 + 48) = v441;
            *v171 = v439;
            *(v171 + 16) = v440;
            v442 = v538[0];
            v443 = v538[1];
            v444 = v538[3];
            *(v171 + 96) = v538[2];
            *(v171 + 112) = v444;
            *(v171 + 64) = v442;
            *(v171 + 80) = v443;
            outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v547);
          }

          v445 = *v171;
          if (one-time initialization token for defaultFlags != -1)
          {
            swift_once();
          }

          v446 = static RasterizationOptions.Flags.defaultFlags & 0xFFFFFFFE | v168;
          v447 = *(*v554 + 24);
          v448 = swift_allocObject();
          *(v448 + 16) = v526;
          *(v448 + 24) = v167;
          *(v448 + 32) = v168;
          *(v448 + 40) = v169;
          *(v448 + 48) = v170;
          v449 = v171 + 8;
          v450 = *(v171 + 8);
          v451 = *&v50 != *(v449 + 40);
          if (*(&v50 + 1) != *(v449 + 48))
          {
            v451 = 1;
          }

          LODWORD(v523) = v451;
          v536.a = v445;
          LODWORD(v547.a) = -1;
          WORD2(v547.a) = 768;
          LODWORD(v547.b) = v446;
          BYTE4(v547.b) = 3;

          swift_unknownObjectRetain();

          *&v452 = COERCE_DOUBLE(DisplayList.ViewUpdater.Platform.updateDrawingView(_:options:contentsScale:)(v449, &v547, v447));
          v454 = v453;
          ObjectType = swift_getObjectType();
          *&v547.a = partial apply for closure #1 in DisplayList.ViewUpdater.Platform.updateItemView(_:index:item:state:);
          *&v547.b = v448;
          memset(&v547.c, 0, 24);
          LOBYTE(v547.ty) = 1;
          v455 = *(v454 + 40);

          v456 = LODWORD(v523);
          v523 = *&v452;
          LOBYTE(v452) = v455(&v547, v456, ObjectType, v454);
          outlined consume of PlatformDrawableContent?(*&v547.a, *&v547.b, *&v547.c, *&v547.d, *&v547.tx, LOBYTE(v547.ty));
          *(v449 + 105) = (v452 & 1) == 0;
          if (*v449 == v450)
          {
            v457 = v528;
          }

          else
          {
            v457 = v528;
            DisplayList.ViewUpdater.ViewInfo.reset()();
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v486 = *(*v554 + 8);
          v487 = *(v457 + 120);
          static Date.now.getter();
          v488 = *(v526 + 216);
          if (!v488 || [*(v526 + 216) length] < 1)
          {
            goto LABEL_265;
          }

          if (one-time initialization token for updateSchedule != -1)
          {
            swift_once();
          }

          v489 = static NSAttributedStringKey.updateSchedule;
          [v488 length];
          if ([v488 attribute:v489 atIndex:0 effectiveRange:0])
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
            outlined destroy of HitTestableEvent?(&v536, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
            NSAttributedString.updateSchedule.getter(&v547);
            v490 = *&v547.d;
            v491 = *&v547.tx;
            __swift_project_boxed_opaque_existential_1(&v547, *&v547.d);
            LOBYTE(v536.a) = 0;
            TimelineSchedule.nextEntry(after:mode:limit:)(*&v525, &v536, 60, 0, v490, v491, v10);
            v492 = v521;
            v493 = v524;
            (*(v521 + 56))(v10, 0, 1, v524);
            __swift_destroy_boxed_opaque_existential_1(&v547);
            if ((*(v492 + 48))(v10, 1, v493) != 1)
            {
              v494 = v524;
              (*(v492 + 32))(v13, v10, v524);
              Date.timeIntervalSince(_:)();
              v496 = v495;
              v497 = *(v492 + 8);
              v497(v13, v494);
              v498 = v486 + v496;
              goto LABEL_267;
            }
          }

          else
          {
            memset(&v536, 0, 32);
            outlined destroy of HitTestableEvent?(&v536, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
LABEL_265:
            v492 = v521;
            (*(v521 + 56))(v10, 1, 1, v524);
          }

          outlined destroy of (PaintType, ShapeType)(v10, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], type metadata accessor for SDFShape.BackdropObserver?);
          v497 = *(v492 + 8);
          v498 = INFINITY;
LABEL_267:
          v497(*&v525, v524);
          outlined destroy of DisplayList.Item(&v570);
          if (v498 >= v487)
          {
            a = v487;
          }

          else
          {
            a = v498;
          }

          v53 = v528;
LABEL_271:
          *(v53 + 120) = a;
LABEL_272:
          LOWORD(v23) = v527;
LABEL_273:
          if ((*(v53 + 65) & 0x20) != 0)
          {
            tx = v570.tx;
            if (*&v570.tx <= v556)
            {
              tx = *&v556;
            }

            *&v556 = tx;
          }

          if ((*(v53 + 113) & 1) == 0 && *(v53 + 120) == INFINITY)
          {
            *(v53 + 90) = v23;
          }

          v536.a = *v53;
          v547 = v570;
          v548[0] = *v571;
          *(v548 + 12) = *&v571[12];
          DisplayList.ViewUpdater.Platform.updateState(_:item:size:state:)(v53, &v547, v554, *&v530, *(&v530 + 1), v149, v150, v151, v152);
          outlined destroy of DisplayList.Item(&v570);
          v550 = v555;
          v551 = v556;
          v552 = v557;
          v553 = v558;
          v548[1] = *&v554[64];
          v549[0] = *&v554[80];
          v549[1] = *&v554[96];
          v549[2] = *&v554[112];
          v547 = *v554;
          v548[0] = *&v554[48];
          break;
        case 0xBLL:
          *&v526 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          *&v128 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v129 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
          v130 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          ObjectType = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x28);
          v523 = v130;
          v131 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          v132 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x34);
          v133 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x35);
          v134 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x38);
          v520 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x3C);
          LODWORD(v521) = v134;
          v53 = v528;
          v135 = *(v528 + 64);
          *&v527 = v19;
          if (v135 == 9)
          {
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v559, &v547);
          }

          else
          {
            *&v533 = v21;
            v251 = a3[3];
            *&v539.tx = a3[2];
            v540[0] = v251;
            *(v540 + 12) = *(a3 + 60);
            v252 = a3[1];
            *&v539.a = *a3;
            *&v539.c = v252;
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v559, &v547);
            DisplayList.ViewUpdater.Platform._makeItemView(item:state:)(&v539, a4, &v536);
            v253 = *(v53 + 80);
            v548[1] = *(v53 + 64);
            v549[0] = v253;
            v254 = *(v53 + 112);
            v549[1] = *(v53 + 96);
            v549[2] = v254;
            v255 = *(v53 + 16);
            *&v547.a = *v53;
            *&v547.c = v255;
            v256 = *(v53 + 48);
            *&v547.tx = *(v53 + 32);
            v548[0] = v256;
            v257 = *&v536.a;
            v258 = *&v536.c;
            v259 = v537;
            *(v53 + 32) = *&v536.tx;
            *(v53 + 48) = v259;
            *v53 = v257;
            *(v53 + 16) = v258;
            v260 = v538[0];
            v261 = v538[1];
            v262 = v538[3];
            *(v53 + 96) = v538[2];
            *(v53 + 112) = v262;
            *(v53 + 64) = v260;
            *(v53 + 80) = v261;
            outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v547);
          }

          v263 = *(*a4 + 8);
          v264 = *v53;
          v265 = *(*a4 + 24);
          v266 = *&v50 != *(v53 + 48);
          if (*(&v50 + 1) != *(v53 + 56))
          {
            v266 = 1;
          }

          v519 = v266;
          v524 = v129;
          v525 = v128;
          *&v267 = *&v128 | (v129 << 32);
          v518 = *(v53 + 8);
          v536.a = v264;
          LODWORD(v547.a) = v131;
          BYTE4(v547.a) = v132;
          BYTE5(v547.a) = v133;
          LODWORD(v547.b) = v521;
          BYTE4(v547.b) = v520;
          v268 = *&v526;

          swift_unknownObjectRetain();
          DisplayList.ViewUpdater.Platform.updateDrawingView(_:options:contentsScale:)((v53 + 8), &v547, v265);
          v270 = v269;
          v271 = swift_getObjectType();
          v547.a = v268;
          v547.b = v267;
          v547.c = v523;
          *&v547.d = ObjectType;
          v547.tx = v263;
          LOBYTE(v547.ty) = 2;
          v272 = *(v270 + 40);

          v273 = v272(&v547, v519, v271, v270);
          v274 = v518;
          v275 = v273;
          outlined consume of PlatformDrawableContent?(*&v547.a, *&v547.b, *&v547.c, *&v547.d, *&v547.tx, LOBYTE(v547.ty));
          *(v53 + 113) = (v275 & 1) == 0;
          if (*(v53 + 8) != v274)
          {
            DisplayList.ViewUpdater.ViewInfo.reset()();
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v472 = *&v526;

          v473 = *(v53 + 120);
          v547.a = v472;
          LOWORD(v547.b) = LOWORD(v525);
          HIDWORD(v547.b) = v524;
          v539.a = v263;
          DisplayList.nextUpdate(after:)(v474);
          outlined destroy of DisplayList.Item(&v570);
          a = v536.a;
          if (v536.a >= v473)
          {
            a = v473;
          }

          goto LABEL_271;
        case 0xCLL:
          v140 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v141 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v525 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          *&v526 = v141;
          v142 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x28);
          v143 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x2C);
          v144 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x2D);
          v145 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          LODWORD(v524) = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x34);
          v53 = v528;
          v146 = *(v528 + 64);
          *&v527 = v19;
          if (v146 == 9)
          {
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v559, &v547);
          }

          else
          {
            *&v533 = v21;
            v289 = a3[3];
            *&v539.tx = a3[2];
            v540[0] = v289;
            *(v540 + 12) = *(a3 + 60);
            v290 = a3[1];
            *&v539.a = *a3;
            *&v539.c = v290;
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v559, &v547);
            DisplayList.ViewUpdater.Platform._makeItemView(item:state:)(&v539, a4, &v536);
            v291 = *(v53 + 80);
            v548[1] = *(v53 + 64);
            v549[0] = v291;
            v292 = *(v53 + 112);
            v549[1] = *(v53 + 96);
            v549[2] = v292;
            v293 = *(v53 + 16);
            *&v547.a = *v53;
            *&v547.c = v293;
            v294 = *(v53 + 48);
            *&v547.tx = *(v53 + 32);
            v548[0] = v294;
            v295 = *&v536.a;
            v296 = *&v536.c;
            v297 = v537;
            *(v53 + 32) = *&v536.tx;
            *(v53 + 48) = v297;
            *v53 = v295;
            *(v53 + 16) = v296;
            v298 = v538[0];
            v299 = v538[1];
            v300 = v538[3];
            *(v53 + 96) = v538[2];
            *(v53 + 112) = v300;
            *(v53 + 64) = v298;
            *(v53 + 80) = v299;
            outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v547);
          }

          v301 = *v53;
          v302 = *(*a4 + 24);
          v303 = *&v50 != *(v53 + 48);
          if (*(&v50 + 1) != *(v53 + 56))
          {
            v303 = 1;
          }

          LODWORD(v523) = v303;
          ObjectType = *(v53 + 8);
          v536.a = v301;
          LODWORD(v547.a) = v142;
          BYTE4(v547.a) = v143;
          BYTE5(v547.a) = v144;
          LODWORD(v547.b) = v145;
          BYTE4(v547.b) = v524;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          DisplayList.ViewUpdater.Platform.updateDrawingView(_:options:contentsScale:)((v53 + 8), &v547, v302);
          v305 = v304;
          v306 = v140;
          v307 = swift_getObjectType();
          v547.a = v306;
          v547.b = v525;
          v547.tx = 0.0;
          *&v547.c = v526;
          v547.d = 0.0;
          LOBYTE(v547.ty) = 3;
          v308 = *(v305 + 40);
          swift_unknownObjectRetain();
          v309 = v308(&v547, LODWORD(v523), v307, v305);
          v310 = ObjectType;
          v311 = v309;
          outlined consume of PlatformDrawableContent?(*&v547.a, *&v547.b, *&v547.c, *&v547.d, *&v547.tx, LOBYTE(v547.ty));
          *(v53 + 113) = (v311 & 1) == 0;
          if (*(v53 + 8) != v310)
          {
            DisplayList.ViewUpdater.ViewInfo.reset()();
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
LABEL_242:
          outlined destroy of DisplayList.Item(&v570);
          goto LABEL_272;
        case 0xDLL:
        case 0xELL:
          goto LABEL_290;
        default:
          v52 = *(*&ty + 16);
          v533 = *(*&ty + 20);
          LODWORD(v534) = *(*&ty + 36);
          v53 = v528;
          v54 = v19;
          if (*(v528 + 64) == 7)
          {
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v559, &v547);
          }

          else
          {
            *&v567 = v21;
            v366 = a3[3];
            *&v539.tx = a3[2];
            v540[0] = v366;
            *(v540 + 12) = *(a3 + 60);
            v367 = a3[1];
            *&v539.a = *a3;
            *&v539.c = v367;
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.Item(&v570, &v547);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v559, &v547);
            DisplayList.ViewUpdater.Platform._makeItemView(item:state:)(&v539, a4, &v536);
            v368 = *(v53 + 80);
            v548[1] = *(v53 + 64);
            v549[0] = v368;
            v369 = *(v53 + 112);
            v549[1] = *(v53 + 96);
            v549[2] = v369;
            v370 = *(v53 + 16);
            *&v547.a = *v53;
            *&v547.c = v370;
            v371 = *(v53 + 48);
            *&v547.tx = *(v53 + 32);
            v548[0] = v371;
            v372 = *&v536.a;
            v373 = *&v536.c;
            v374 = v537;
            *(v53 + 32) = *&v536.tx;
            *(v53 + 48) = v374;
            *v53 = v372;
            *(v53 + 16) = v373;
            v375 = v538[0];
            v376 = v538[1];
            v377 = v538[3];
            *(v53 + 96) = v538[2];
            *(v53 + 112) = v377;
            *(v53 + 64) = v375;
            *(v53 + 80) = v376;
            outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v547);
          }

          v378 = *(v53 + 16);
          objc_opt_self();
          v379 = swift_dynamicCastObjCClassUnconditional();
          v380 = v52 == 0.0;
          if (v52 == 0.0)
          {
            v381 = 1.0;
          }

          else
          {
            v381 = v52;
          }

          v382 = v378;
          [v379 setScale_];
          [v379 setAllowsInPlaceFiltering_];
          v383 = one-time initialization token for cache;
          v384 = v382;
          if (v383 != -1)
          {
            swift_once();
          }

          v385 = specialized ObjectCache.subscript.getter(&v533);
          [v379 setBackgroundColor_];

          v386 = *(a4 + 14);
          if ((~v386 & 0xF000000000000007) != 0)
          {

            v404 = BackdropGroupID.string.getter(v386);
            v406 = v405;
            v407 = outlined consume of BackdropGroupID?(v386);
            v387 = MEMORY[0x193ABEC20](v404, v406, v407);
          }

          else
          {
            v387 = 0;
          }

          [v379 setGroupName_];

LABEL_221:
          outlined destroy of DisplayList.Item(&v570);
          LOWORD(v23) = v54;
          goto LABEL_273;
      }

      goto LABEL_281;
    }

    *&v526 = v570.ty;
    outlined init with copy of DisplayList.Item(&v570, v559);
    if ((*(a1 + 65) & 0x20) == 0)
    {
      goto LABEL_4;
    }

LABEL_34:
    v62 = a4[9];
    v63 = a4[7];
    v563 = a4[8];
    v564 = v62;
    v64 = a4[9];
    v565 = a4[10];
    v65 = a4[5];
    v66 = a4[3];
    *&v559[64] = a4[4];
    v560 = v65;
    v67 = a4[5];
    v68 = a4[7];
    v561 = a4[6];
    v562 = v68;
    v69 = a4[1];
    *v559 = *a4;
    *&v559[16] = v69;
    v70 = a4[3];
    v72 = *a4;
    v71 = a4[1];
    *&v559[32] = a4[2];
    *&v559[48] = v70;
    v555 = v563;
    v556 = v64;
    v557 = a4[10];
    *&v554[64] = *&v559[64];
    *&v554[80] = v67;
    *&v554[96] = v561;
    *&v554[112] = v63;
    *v554 = v72;
    *&v554[16] = v71;
    v566 = *(a4 + 22);
    v558 = *(a4 + 22);
    *&v554[32] = *&v559[32];
    *&v554[48] = v66;
    d = v570.d;
    c = v570.c;
    if (v25)
    {
      v75 = v23;
      outlined init with copy of DisplayList.ViewUpdater.Model.State(v559, &v547);

      if (BYTE4(v23) == 8)
      {
        v76 = v526;
        v77 = -*(v526 + 16);
        v78 = -*(v526 + 24);
        v547 = *&v554[32];
        CGAffineTransformTranslate(&v536, &v547, v77, v78);
        *&v554[32] = v536;
        outlined consume of DisplayList.Effect(v76, v75, 8);
      }

      else
      {
        v93 = HIDWORD(v23);
        *(a1 + 90) = 0;
        LODWORD(v525) = static os_log_type_t.fault.getter();
        if (one-time initialization token for internalErrorsLog != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v94 = static Log.internalErrorsLog;
        type metadata accessor for SDFShape.BackdropObserver?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
        v95 = swift_allocObject();
        *(v95 + 16) = xmmword_18DDAB4C0;
        v96 = v526;
        *&v547.a = v526;
        LODWORD(v547.b) = v75;
        BYTE4(v547.b) = v93;
        v97 = v94;
        v524 = HIDWORD(v75);
        v98 = v97;
        outlined copy of DisplayList.Effect(v96, v75, SBYTE4(v75));
        EnumTag = AGTypeGetEnumTag();
        outlined consume of DisplayList.Effect(*&v547.a, SLOBYTE(v547.b), SBYTE4(v547.b));
        v100 = MEMORY[0x1E69E6530];
        v101 = MEMORY[0x1E69E65A8];
        *(v95 + 56) = MEMORY[0x1E69E6530];
        *(v95 + 64) = v101;
        *(v95 + 32) = EnumTag;
        LOBYTE(v547.a) = *(a1 + 64);
        v102 = AGTypeGetEnumTag();
        *(v95 + 96) = v100;
        *(v95 + 104) = v101;
        *(v95 + 72) = v102;
        os_log(_:dso:log:_:_:)(LODWORD(v525), &dword_18D018000, v98, "Invalid size-dependent display list effect: %ld, %ld", v517, v518);

        outlined consume of DisplayList.Effect(v96, v75, v524);
      }

      goto LABEL_50;
    }

    v83 = *&v526;
    v84 = v526 >> 60;
    if ((v526 >> 60) <= 5)
    {
      if (v84 > 2)
      {
        if (v84 == 3)
        {
          v499 = *((v526 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
          v537 = *((v526 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
          v538[0] = v499;
          v538[1] = *((v526 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
          *(&v538[1] + 12) = *((v526 & 0xFFFFFFFFFFFFFFFLL) + 0x6C);
          v500 = *((v526 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          *&v536.a = *((v526 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          *&v536.c = v500;
          v501 = *((v526 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
          *&v536.tx = *((v526 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          v502 = *((v526 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
          v503 = *((v526 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
          v540[0] = v501;
          v540[1] = v502;
          v541[0] = v503;
          *(v541 + 12) = *((v526 & 0xFFFFFFFFFFFFFFFLL) + 0x6C);
          v504 = *((v526 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          *&v539.a = *((v526 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          *&v539.c = v504;
          *&v539.tx = *((v526 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          outlined init with copy of DisplayList.Item(&v570, &v547);
          outlined init with copy of DisplayList.ViewUpdater.Model.State(v559, &v547);
          outlined init with copy of GraphicsImage(&v536, &v547);
          v505 = GraphicsImage.bitmapOrientation.getter();
          v506 = v505;
          CGAffineTransform.apply(_:in:)(v505, c, d);
          outlined destroy of GraphicsImage(&v536);
          outlined destroy of DisplayList.Item(&v570);
          outlined destroy of DisplayList.Item(&v570);
          if (v506 >= 4)
          {
            v507 = c;
          }

          else
          {
            v507 = d;
          }

          if (v506 >= 4)
          {
            c = d;
          }

          d = v507;
          goto LABEL_50;
        }

        if (v84 != 4)
        {
          v508 = -*((v526 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v509 = -*((v526 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v547 = *&v559[32];
          CGAffineTransformTranslate(&v536, &v547, v508, v509);
          *&v554[32] = v536;
          outlined init with copy of DisplayList.ViewUpdater.Model.State(v559, &v547);
LABEL_285:
          outlined destroy of DisplayList.Item(&v570);
LABEL_50:
          v111 = v570.tx;
          if (*&v570.tx <= v556)
          {
            v111 = *&v556;
          }

          *&v556 = v111;
          *&v567 = *a1;
          v547 = v570;
          v548[0] = *v571;
          *(v548 + 12) = *&v571[12];
          DisplayList.ViewUpdater.Platform.updateState(_:item:size:state:)(a1, &v547, v554, c, d, v79, v80, v81, v82);
          v550 = v555;
          v551 = v556;
          v552 = v557;
          v553 = v558;
          v548[1] = *&v554[64];
          v549[0] = *&v554[80];
          v549[1] = *&v554[96];
          v549[2] = *&v554[112];
          v547 = *v554;
          v548[0] = *&v554[48];
LABEL_281:
          outlined destroy of DisplayList.ViewUpdater.Model.State(&v547);
          return;
        }

        v112 = *v559;
        v113 = *((v526 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        *&v539.a = *((v526 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        *&v539.c = v113;
        LOBYTE(v539.tx) = *((v526 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v114 = swift_getObjectType();
        v115 = *(v112 + 24);
        if (v114 == type metadata accessor for ColorShapeLayer())
        {
          outlined init with copy of DisplayList.Item(&v570, &v547);
          outlined init with copy of DisplayList.ViewUpdater.Model.State(v559, &v547);
          v121 = 0.0;
          v122 = 0.0;
        }

        else
        {
          outlined init with copy of DisplayList.Item(&v570, &v547);
          outlined init with copy of DisplayList.ViewUpdater.Model.State(v559, &v547);
          Path.boundingRect.getter();
          v116 = v574.origin.x;
          v117 = v574.origin.y;
          v118 = v574.size.width;
          v119 = v574.size.height;
          IsNull = CGRectIsNull(v574);
          if (IsNull)
          {
            v121 = 0.0;
          }

          else
          {
            v121 = v116;
          }

          if (IsNull)
          {
            v122 = 0.0;
          }

          else
          {
            v122 = v117;
          }

          if (IsNull)
          {
            c = 0.0;
          }

          else
          {
            c = v118;
          }

          if (IsNull)
          {
            d = 0.0;
          }

          else
          {
            d = v119;
          }

          if (v114 == type metadata accessor for PaintShapeLayer())
          {
            v123 = 1.0 / v115;
            v575.origin.x = v121;
            v575.origin.y = v122;
            v575.size.width = c;
            v575.size.height = d;
            v576 = CGRectStandardize(v575);
            v124 = v576.origin.x + v576.size.width;
            v125 = v576.origin.y + v576.size.height;
            v126 = 1.0 / v115 * 0.5;
            v127 = v126 + v576.origin.x;
            if (1.0 / v115 == 1.0)
            {
              v121 = floor(v127);
              v122 = floor(v126 + v576.origin.y);
              c = round(floor(v126 + v124) - v121);
              d = round(floor(v126 + v125) - v122);
            }

            else
            {
              v121 = v123 * floor(v127 / v123);
              v122 = v123 * floor((v126 + v576.origin.y) / v123);
              c = v123 * round((v123 * floor((v126 + v124) / v123) - v121) / v123);
              d = v123 * round((v123 * floor((v126 + v125) / v123) - v122) / v123);
            }
          }
        }

        v547 = *&v554[32];
        v91 = v121;
        v92 = v122;
LABEL_284:
        CGAffineTransformTranslate(&v536, &v547, v91, v92);
        v511 = v536.tx;
        v512 = v536.ty;
        v526 = *&v536.c;
        v527 = *&v536.a;
        outlined destroy of DisplayList.Item(&v570);
        *&v554[32] = v527;
        *&v554[48] = v526;
        *&v554[64] = v511;
        *&v554[72] = v512;
        goto LABEL_285;
      }
    }

    else if ((v84 - 8) >= 7 && v84 != 6)
    {
      v85 = *((v526 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      *&v539.a = *((v526 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      *&v539.c = v85;
      LOBYTE(v539.tx) = *((v526 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      outlined init with copy of DisplayList.Item(&v570, &v547);
      outlined init with copy of DisplayList.ViewUpdater.Model.State(v559, &v547);
      Path.boundingRect.getter();
      v86 = v573.origin.x;
      v87 = v573.origin.y;
      v88 = v573.size.width;
      v89 = v573.size.height;
      v90 = CGRectIsNull(v573);
      v91 = 0.0;
      v92 = 0.0;
      c = 0.0;
      d = 0.0;
      if (!v90)
      {
        v91 = v86;
        v92 = v87;
        c = v88;
        d = v89;
      }

      v547 = *&v554[32];
      goto LABEL_284;
    }

    *(a1 + 90) = 0;
    outlined init with copy of DisplayList.ViewUpdater.Model.State(v559, &v547);
    v103 = static os_log_type_t.fault.getter();
    if (one-time initialization token for internalErrorsLog != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v104 = static Log.internalErrorsLog;
    type metadata accessor for SDFShape.BackdropObserver?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v105 = swift_allocObject();
    *(v105 + 16) = xmmword_18DDAB4C0;
    v539.a = v83;
    outlined init with copy of DisplayList.Item(&v570, &v547);
    v106 = v104;
    v107 = AGTypeGetEnumTag();
    outlined consume of DisplayList.Content.Value(*&v539.a);
    v108 = MEMORY[0x1E69E6530];
    v109 = MEMORY[0x1E69E65A8];
    *(v105 + 56) = MEMORY[0x1E69E6530];
    *(v105 + 64) = v109;
    *(v105 + 32) = v107;
    LOBYTE(v547.a) = *(a1 + 64);
    v110 = AGTypeGetEnumTag();
    *(v105 + 96) = v108;
    *(v105 + 104) = v109;
    *(v105 + 72) = v110;
    os_log(_:dso:log:_:_:)(v103, &dword_18D018000, v106, "Invalid size-dependent display list content: %ld, %ld", v517, v518);
    outlined destroy of DisplayList.Item(&v570);

    goto LABEL_50;
  }

  v528 = a1;
  if (v25 != 1)
  {
    goto LABEL_290;
  }

  *&v527 = *v571;
  v33 = HIDWORD(*v571);
  a1 = v528;
  v34 = *(v528 + 90);
  *&v526 = v570.ty;
  v35 = v570.tx;
  if (*&v570.tx)
  {
    LODWORD(v36) = (2 * ((33 * (*&v570.tx >> 16)) ^ LODWORD(v570.tx))) | 1;
    if (v34 != ((2 * ((33 * WORD1(v570.tx)) ^ LOWORD(v570.tx))) | 1))
    {
      v37 = v21;
      outlined init with copy of DisplayList.Item(&v570, v559);
      v38 = v37;
      goto LABEL_100;
    }
  }

  else if (v34)
  {
    v36 = v21;
    outlined init with copy of DisplayList.Item(&v570, v559);
    v38 = v36;
    LOWORD(v36) = 0;
    goto LABEL_100;
  }

  v23 = v527;
  if (BYTE4(v527) != 9)
  {
    v55 = v570.ty;
    outlined init with copy of DisplayList.Item(&v570, v559);
    outlined init with copy of DisplayList.Item(&v570, v559);

    v56 = *&v55;
    v57 = v23;
    v58 = v33;
    goto LABEL_33;
  }

  if (*(*&v570.ty + 88) > 1u)
  {
    if (*(*&v570.ty + 88) != 2)
    {
      v525 = v21;
      v60 = *(*&v570.ty + 48);
      *&v554[16] = *(*&v570.ty + 32);
      *&v554[32] = v60;
      *&v554[48] = *(*&v570.ty + 64);
      *&v554[64] = *(*&v570.ty + 80);
      *v554 = *(*&v570.ty + 16);
      outlined init with copy of DisplayList.Item(&v570, v559);
      outlined init with copy of DisplayList.Item(&v570, v559);
      _Rotation3DEffect.Data.transform.getter(&v533);
      v23 = v527;
      goto LABEL_29;
    }

LABEL_27:
    v59 = v570.ty;
    outlined init with copy of DisplayList.Item(&v570, v559);
    outlined init with copy of DisplayList.Item(&v570, v559);

    v56 = *&v59;
LABEL_32:
    v57 = v23;
    v58 = 9;
LABEL_33:
    outlined consume of DisplayList.Effect(v56, v57, v58);
    if ((*(a1 + 65) & 0x20) == 0)
    {
LABEL_4:
      outlined destroy of DisplayList.Item(&v570);
      if (*(a1 + 64) != 9 || v570.c == *(a1 + 48) && v570.d == *(a1 + 56))
      {
        goto LABEL_9;
      }

      swift_unknownObjectRetain();
      v30 = swift_getObjectType();
      v31 = swift_conformsToProtocol2();
      if (v31)
      {
        memset(v559, 0, 40);
        v559[40] = -1;
        v32 = (*(v31 + 40))(v559, 1, v30, v31);
        swift_unknownObjectRelease();
        *(a1 + 113) = (v32 & 1) == 0;
LABEL_9:
        *v554 = *a1;
        *v559 = v570;
        *&v559[48] = *v571;
        *&v559[60] = *&v571[12];
        DisplayList.ViewUpdater.Platform.updateState(_:item:size:state:)(a1, v559, a4, v570.c, v570.d, v26, v27, v28, v29);
        return;
      }

      __break(1u);
LABEL_290:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      JUMPOUT(0x18D1515C8);
    }

    goto LABEL_34;
  }

  if (!*(*&v570.ty + 88))
  {
    goto LABEL_27;
  }

  v525 = v21;
  outlined init with copy of DisplayList.Item(&v570, v559);
  outlined init with copy of DisplayList.Item(&v570, v559);
LABEL_29:
  v61 = *(a4 + 18);
  if (v61)
  {
    if (*(a1 + 96) == ((2 * ((33 * WORD1(v61)) ^ v61)) | 1))
    {
LABEL_31:

      v56 = v526;
      goto LABEL_32;
    }
  }

  else if (!*(a1 + 96))
  {
    goto LABEL_31;
  }

  outlined destroy of DisplayList.Item(&v570);
  if (v35 == 0.0)
  {
    LOWORD(v36) = 0;
  }

  else
  {
    LODWORD(v36) = (2 * ((33 * (*&v35 >> 16)) ^ LODWORD(v35))) | 1;
  }

  v38 = v525;
LABEL_100:
  *(a1 + 90) = LOWORD(v36);
  *(a1 + 113) = 0;
  if ((*(a1 + 65) & 0x20) != 0)
  {
    *(a1 + 65) &= ~0x20u;
  }

  if (v33 <= 7u)
  {
    if (v33 <= 6u)
    {
      v525 = v38;
      if (v33 != 3)
      {
        goto LABEL_290;
      }

      v524 = v33;

      outlined init with copy of AnyTrackedValue(v526 + 16, &v547);
      if (*(a1 + 64) != 16)
      {
        v536.a = v525;
        *v559 = v570;
        *&v559[48] = *v571;
        *&v559[60] = *&v571[12];
        DisplayList.ViewUpdater.Platform._makeItemView(item:state:)(v559, a4, v554);
        v174 = *(a1 + 80);
        *&v559[64] = *(a1 + 64);
        v560 = v174;
        v175 = *(a1 + 112);
        v561 = *(a1 + 96);
        v562 = v175;
        v176 = *(a1 + 16);
        *v559 = *a1;
        *&v559[16] = v176;
        v177 = *(a1 + 48);
        *&v559[32] = *(a1 + 32);
        *&v559[48] = v177;
        v178 = *v554;
        v179 = *&v554[16];
        v180 = *&v554[48];
        *(a1 + 32) = *&v554[32];
        *(a1 + 48) = v180;
        *a1 = v178;
        *(a1 + 16) = v179;
        v181 = *&v554[64];
        v182 = *&v554[80];
        v183 = *&v554[112];
        *(a1 + 96) = *&v554[96];
        *(a1 + 112) = v183;
        *(a1 + 64) = v181;
        *(a1 + 80) = v182;
        outlined destroy of DisplayList.ViewUpdater.ViewInfo(v559);
      }

      v185 = (a1 + 8);
      v184 = *(a1 + 8);
      v186 = v547.d;
      v187 = v547.tx;
      __swift_project_boxed_opaque_existential_1(&v547, *&v547.d);
      v188 = *(*&v187 + 32);
      swift_unknownObjectRetain();
      v189 = v187;
      a1 = v528;
      v188(v185, *&v186, *&v189);
      if (v184 != *v185)
      {
        v559[0] = 15;
        (*((*&v525 & 0xFFFFFFFFFFFFFFF8) + 112))();
        DisplayList.ViewUpdater.ViewInfo.reset()();
      }

      v190 = v547.d;
      v191 = v547.tx;
      __swift_project_boxed_opaque_existential_1(&v547, *&v547.d);
      v192 = (*(*&v191 + 40))(*(a1 + 8), COERCE_CGFLOAT(*&v190), COERCE_CGFLOAT(*&v191));
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      *(a1 + 24) = v192;
      __swift_destroy_boxed_opaque_existential_1(&v547);
      LOBYTE(v33) = v524;
      goto LABEL_163;
    }

    v201 = *&v38;
    if ((LOBYTE(v38) & 4) != 0)
    {
      v201 = *&v38;
      if ((*(a4 + 105) & 2) == 0)
      {
        v201 = *&v38;
        if (!(*(v526 + 24) & 0x400 | v24 & 0x400))
        {
          if (one-time initialization token for caLayer != -1)
          {
            v514 = v38;
            swift_once();
            v38 = v514;
          }

          v201 = static DisplayList.ViewUpdater.Platform.caLayer;
        }
      }
    }

    v202 = v38;

    if (*(a1 + 64) == 14)
    {
LABEL_121:
      if (*a1 == v201)
      {
        goto LABEL_163;
      }
    }

LABEL_161:
    v547.a = v202;
    goto LABEL_162;
  }

  if (v33 <= 0x14u)
  {
    if (v33 == 15)
    {
      v203 = v38;

      if (*(a1 + 64) != 18)
      {
        v547.a = v203;
LABEL_162:
        *v559 = v570;
        *&v559[48] = *v571;
        *&v559[60] = *&v571[12];
        DisplayList.ViewUpdater.Platform._makeItemView(item:state:)(v559, a4, v554);
        v216 = *(a1 + 80);
        *&v559[64] = *(a1 + 64);
        v560 = v216;
        v217 = *(a1 + 112);
        v561 = *(a1 + 96);
        v562 = v217;
        v218 = *(a1 + 16);
        *v559 = *a1;
        *&v559[16] = v218;
        v219 = *(a1 + 48);
        *&v559[32] = *(a1 + 32);
        *&v559[48] = v219;
        v220 = *v554;
        v221 = *&v554[16];
        v222 = *&v554[48];
        *(a1 + 32) = *&v554[32];
        *(a1 + 48) = v222;
        *a1 = v220;
        *(a1 + 16) = v221;
        v223 = *&v554[64];
        v224 = *&v554[80];
        v225 = *&v554[112];
        *(a1 + 96) = *&v554[96];
        *(a1 + 112) = v225;
        *(a1 + 64) = v223;
        *(a1 + 80) = v224;
        outlined destroy of DisplayList.ViewUpdater.ViewInfo(v559);
        goto LABEL_163;
      }

      goto LABEL_163;
    }

    if (v33 == 20)
    {
      if (v526 ^ 1 | v527)
      {
        if (v526 ^ 2 | v527)
        {
          goto LABEL_290;
        }

        v201 = *&v38;
        if ((LOBYTE(v38) & 4) != 0)
        {
          v201 = *&v38;
          if (!(*(a4 + 26) & 0x200 | v24 & 0x400))
          {
            if (one-time initialization token for caLayer != -1)
            {
              v516 = v38;
              swift_once();
              v38 = v516;
            }

            v201 = static DisplayList.ViewUpdater.Platform.caLayer;
          }
        }

        v202 = v38;

        if (*(a1 + 64) == 10)
        {
          goto LABEL_121;
        }
      }

      else
      {
        v201 = *&v38;
        if ((LOBYTE(v38) & 4) != 0)
        {
          v201 = *&v38;
          if (!(*(a4 + 26) & 0x200 | v24 & 0x400))
          {
            if (one-time initialization token for caLayer != -1)
            {
              v515 = v38;
              swift_once();
              v38 = v515;
            }

            v201 = static DisplayList.ViewUpdater.Platform.caLayer;
          }
        }

        v202 = v38;

        if (*(a1 + 64) == 11)
        {
          goto LABEL_121;
        }
      }

      goto LABEL_161;
    }

    if (((1 << v33) & 0xF7C00) != 0)
    {
      goto LABEL_290;
    }
  }

  if (v33 != 8)
  {
    v204 = *(v526 + 64);
    v544 = *(v526 + 48);
    v545 = v204;
    v546 = *(v526 + 80);
    v205 = *(v526 + 32);
    v542 = *(v526 + 16);
    v543 = v205;
    v206 = *&v38;
    v207 = *(v526 + 88);
    if ((LOBYTE(v38) & 4) != 0)
    {
      v206 = *&v38;
      if (!(*(a4 + 26) & 0x200 | v24 & 0x400))
      {
        if (one-time initialization token for caLayer != -1)
        {
          v513 = v38;
          swift_once();
          v38 = v513;
        }

        v206 = static DisplayList.ViewUpdater.Platform.caLayer;
      }
    }

    v208 = v38;

    if (v207 > 1)
    {
      if (v207 != 2)
      {
        *&v559[32] = v544;
        *&v559[48] = v545;
        *&v559[64] = v546;
        *v559 = v542;
        *&v559[16] = v543;
        _Rotation3DEffect.Data.transform.getter(v531);
LABEL_150:
        if (*(a1 + 64) != 12 || *a1 != v206)
        {
          v547.a = v208;
          *v559 = v570;
          *&v559[48] = *v571;
          *&v559[60] = *&v571[12];
          DisplayList.ViewUpdater.Platform._makeItemView(item:state:)(v559, a4, v554);
          v209 = *(a1 + 80);
          *&v559[64] = *(a1 + 64);
          v560 = v209;
          v210 = *(a1 + 112);
          v561 = *(a1 + 96);
          v562 = v210;
          v211 = *(a1 + 16);
          *v559 = *a1;
          *&v559[16] = v211;
          v212 = *(a1 + 48);
          *&v559[32] = *(a1 + 32);
          *&v559[48] = v212;
          v206 = *v554;
          v213 = *&v554[120];
          *a1 = *v554;
          *(a1 + 56) = *&v554[56];
          *(a1 + 40) = *&v554[40];
          *(a1 + 24) = *&v554[24];
          *(a1 + 8) = *&v554[8];
          *(a1 + 120) = v213;
          *(a1 + 104) = *&v554[104];
          *(a1 + 88) = *&v554[88];
          *(a1 + 72) = *&v554[72];
          outlined destroy of DisplayList.ViewUpdater.ViewInfo(v559);
        }

        v214 = a4[3];
        *v554 = a4[2];
        *&v554[24] = v214;
        *&v554[16] = 0;
        *&v554[40] = 0;
        *&v554[48] = a4[4];
        *&v554[64] = 0x3FF0000000000000;
        v215 = ProjectionTransform.concatenating(_:)(v554, &v547);
        (*((v206 & 0xFFFFFFFFFFFFFFF8) + 136))(&v547, *(a1 + 8), v215);
      }
    }

    else if (v207)
    {
      v531[2] = v544;
      v531[3] = v545;
      v532 = v546;
      v531[0] = v542;
      v531[1] = v543;
      goto LABEL_150;
    }

LABEL_163:
    v536.a = *a1;
    *v559 = v570;
    *&v559[48] = *v571;
    *&v559[60] = *&v571[12];
    DisplayList.ViewUpdater.Platform.updateState(_:item:size:state:)(a1, v559, a4, v570.c, v570.d, v193, v194, v195, v196);
    outlined consume of DisplayList.Effect(v526, v527, v33);
    return;
  }

  v197 = v526;
  v198 = *(v526 + 32);
  *&v536.a = *(v526 + 16);
  *&v536.c = v198;
  *&v536.tx = *(v526 + 48);
  *&v537 = *(v526 + 64);
  if ((LOBYTE(v38) & 4) != 0)
  {
    v200 = v38;
    if ((*(a4 + 105) & 2) != 0 || (v24 & 0x400) != 0)
    {
      outlined init with copy of SDFShape(&v536, v559);
      v199 = v200;
    }

    else
    {
      outlined init with copy of SDFShape(&v536, v559);
      if (one-time initialization token for caLayer != -1)
      {
        swift_once();
      }

      v199 = *&static DisplayList.ViewUpdater.Platform.caLayer;
    }
  }

  else
  {
    v199 = v38;
    outlined init with copy of SDFShape(&v536, v559);
    v200 = v199;
  }

  if (*(a1 + 64) != 5 || *a1 != *&v199)
  {
    v547.a = v200;
    *v559 = v570;
    *&v559[48] = *v571;
    *&v559[60] = *&v571[12];
    DisplayList.ViewUpdater.Platform._makeItemView(item:state:)(v559, a4, v554);
    v226 = *(a1 + 80);
    *&v559[64] = *(a1 + 64);
    v560 = v226;
    v227 = *(a1 + 112);
    v561 = *(a1 + 96);
    v562 = v227;
    v228 = *(a1 + 16);
    *v559 = *a1;
    *&v559[16] = v228;
    v229 = *(a1 + 48);
    *&v559[32] = *(a1 + 32);
    *&v559[48] = v229;
    v230 = *v554;
    v231 = *&v554[16];
    v232 = *&v554[48];
    *(a1 + 32) = *&v554[32];
    *(a1 + 48) = v232;
    *a1 = v230;
    *(a1 + 16) = v231;
    v233 = *&v554[64];
    v234 = *&v554[80];
    v235 = *&v554[112];
    *(a1 + 96) = *&v554[96];
    *(a1 + 112) = v235;
    *(a1 + 64) = v233;
    *(a1 + 80) = v234;
    outlined destroy of DisplayList.ViewUpdater.ViewInfo(v559);
    v199 = *a1;
  }

  v236 = a4[9];
  v237 = a4[7];
  v555 = a4[8];
  v556 = v236;
  v238 = a4[9];
  v557 = a4[10];
  v239 = a4[5];
  v240 = a4[3];
  *&v554[64] = a4[4];
  *&v554[80] = v239;
  v241 = a4[5];
  v242 = a4[7];
  *&v554[96] = a4[6];
  *&v554[112] = v242;
  v243 = a4[1];
  *v554 = *a4;
  *&v554[16] = v243;
  v244 = a4[3];
  v246 = *a4;
  v245 = a4[1];
  *&v554[32] = a4[2];
  *&v554[48] = v244;
  v550 = v555;
  v551 = v238;
  v552 = a4[10];
  v548[1] = *&v554[64];
  v549[0] = v241;
  v549[1] = *&v554[96];
  v549[2] = v237;
  *&v547.a = v246;
  *&v547.c = v245;
  v558 = *(a4 + 22);
  v553 = *(a4 + 22);
  *&v547.tx = *&v554[32];
  v548[0] = v240;
  *&v567 = v199;
  v539 = v536;
  *&v540[0] = v537;
  outlined init with copy of DisplayList.ViewUpdater.Model.State(v554, v559);
  DisplayList.ViewUpdater.Platform.updateSDFShapeView(_:state:shape:contentsChanged:)(a1, &v547, &v539, 1);
  v539.a = *a1;
  *v559 = v570;
  *&v559[48] = *v571;
  *&v559[60] = *&v571[12];
  DisplayList.ViewUpdater.Platform.updateState(_:item:size:state:)(a1, v559, &v547, v570.c, v570.d, v247, v248, v249, v250);
  outlined destroy of SDFShape(&v536);
  v563 = v550;
  v564 = v551;
  v565 = v552;
  v566 = v553;
  *&v559[64] = v548[1];
  v560 = v549[0];
  v561 = v549[1];
  v562 = v549[2];
  *v559 = v547;
  *&v559[48] = v548[0];
  outlined destroy of DisplayList.ViewUpdater.Model.State(v559);
  outlined consume of DisplayList.Effect(v197, v527, 8);
}

uint64_t sub_18D151604()
{

  return swift_deallocObject();
}

void *_UIKitAddSubview(void *a1, void *a2, char *a3)
{
  v6 = [a2 layer];
  v7 = [v6 sublayers];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 count];
  }

  else
  {
    v9 = 0;
  }

  v10 = [a1 layer];
  if (v9 <= a3 || (result = [v8 objectAtIndexedSubscript:a3], result != v10))
  {
    if (CALayerGetSuperlayer() == v6)
    {
      if ((a3 + 1) < v9 && [v8 objectAtIndexedSubscript:?] == v10)
      {
        v10 = [v8 objectAtIndexedSubscript:a3];
        if (!v10)
        {
          _UIKitAddSubview_cold_1();
        }
      }

      else
      {
        v9 = a3;
      }

      [v6 insertSublayer:v10 atIndex:v9];

      return [a2 _invalidateSubviewCache];
    }

    else
    {

      return [a2 swiftui_insertManagedSubview:a1 atIndex:a3];
    }
  }

  return result;
}

void *CoreViewSetFilters(void *result, void *a2, uint64_t a3)
{
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    a2 = [a2 layer];
  }

  return [a2 setFilters:a3];
}

double *DisplayList.ViewUpdater.update(container:from:parentState:)(double *result, uint64_t a2, uint64_t a3)
{
  v4 = *(*a2 + 16);
  if (v4)
  {
    v5 = v3;
    v6 = result;
    v7 = (*a2 + 32);
    do
    {
      v37[0] = *v7;
      v8 = v7[1];
      v9 = v7[2];
      v10 = v7[3];
      *(v38 + 12) = *(v7 + 60);
      v37[2] = v9;
      v38[0] = v10;
      v37[1] = v8;
      *&v36[12] = *(v7 + 60);
      v11 = v7[3];
      v35 = v7[2];
      *v36 = v11;
      v12 = v7[1];
      v33 = *v7;
      v34 = v12;
      v13 = *&v36[24];
      swift_beginAccess();
      if (v13)
      {
        v14 = *(v5 + 108);
        v22 = *(v5 + 104);
        v15 = *(v5 + 112);
        v16 = *(v5 + 120);
        v17 = 1;
        *(v5 + 104) = v13;
        *(v5 + 108) = 0;
      }

      else
      {
        v17 = 0;
        v22 = *(v5 + 104);
        v14 = *(v5 + 108) + 1;
        *(v5 + 108) = v14;
        v15 = *(v5 + 112);
        v16 = *(v5 + 120);
      }

      *(v5 + 120) = v17;
      *v27 = *v6;
      outlined init with copy of DisplayList.Item(v37, v31);
      outlined init with copy of DisplayList.Item(v37, v31);
      DisplayList.ViewUpdater.ViewCache.prepare(item:platform:parentState:)(&v33, v27, a3, v31);
      swift_endAccess();
      v18 = *&v31[0];
      if (*v31 >= v6[3])
      {
        v18 = *(v6 + 3);
      }

      *(v6 + 3) = v18;
      v27[2] = v35;
      v28[0] = *v36;
      *(v28 + 12) = *&v36[12];
      v27[0] = v33;
      v27[1] = v34;
      v25 = v35;
      v26[0] = *v36;
      *(v26 + 12) = *&v36[12];
      v23 = v33;
      v24 = v34;
      outlined init with copy of DisplayList.Item(v27, v31);
      DisplayList.ViewUpdater.updateInheritedView(container:from:parentState:)(v6, &v23, a3);
      outlined destroy of DisplayList.Item(v37);
      v29[2] = v25;
      v30[0] = v26[0];
      *(v30 + 12) = *(v26 + 12);
      v29[0] = v23;
      v29[1] = v24;
      outlined destroy of DisplayList.Item(v29);
      v31[2] = v35;
      v32[0] = *v36;
      *(v32 + 12) = *&v36[12];
      v31[0] = v33;
      v31[1] = v34;
      result = outlined destroy of DisplayList.Item(v31);
      v19 = *(v5 + 120);
      if ((v19 & 0xC) != 0)
      {
        v20 = *(v5 + 104);
        if ((*(v5 + 120) & 4) != 0)
        {
          *(v5 + 104) = *(v5 + 112);
        }

        if ((v19 & 8) != 0)
        {
          *(v5 + 112) = v20;
        }
      }

      if (v19)
      {
        *(v5 + 104) = v22;
        *(v5 + 108) = v14;
      }

      if ((v19 & 2) != 0)
      {
        *(v5 + 112) = v15;
      }

      *(v5 + 120) = v16;
      v7 += 5;
      --v4;
    }

    while (v4);
  }

  return result;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, unint64_t a2, unint64_t a3, __int16 a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4 & 0x1FF);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4 & 0x1FF);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + (v13 << 7);

    return outlined assign with take of DisplayList.ViewUpdater.ViewInfo(a1, v24);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v13, a2, a3, a4 & 0x1FF, a1, v23);
  }
}

uint64_t destroy for DisplayList.ViewUpdater.ViewCache.Result(uint64_t a1)
{
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

void DisplayList.ViewUpdater.Platform.updateState(_:item:size:state:)(uint64_t a1, __int128 *a2, uint64_t a3, double a4, double a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9)
{
  v15 = *(a2 + 4);
  v16 = *v9;
  v17 = *(a3 + 128);
  if (v17)
  {
    if (*(a1 + 92) == ((2 * ((33 * WORD1(v17)) ^ v17)) | 1))
    {
      goto LABEL_8;
    }
  }

  else if (!*(a1 + 92))
  {
    goto LABEL_8;
  }

  CoreViewSetOpacity((*v9 & 3), *(a1 + 8), *(a3 + 8));
  v18 = *(a3 + 128);
  if (v18)
  {
    LODWORD(v18) = (2 * ((33 * (v18 >> 16)) ^ v18)) | 1;
  }

  *(a1 + 92) = v18;
LABEL_8:
  v19 = *(a3 + 136);
  if (v19)
  {
    if (*(a1 + 94) == ((2 * ((33 * WORD1(v19)) ^ v19)) | 1))
    {
      goto LABEL_24;
    }
  }

  else if (!*(a1 + 94))
  {
    goto LABEL_24;
  }

  v20 = *(a3 + 16);
  if (*(a3 + 24))
  {
    v57.n128_u64[1] = swift_getObjectType();
    *&v56 = v20;
    swift_unknownObjectRetain();
  }

  else
  {
    if (_RBBlendModeGetCompositingFilter(*(a3 + 16)))
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v63 = 0u;
      v64 = 0u;
    }

    v56 = v63;
    v57 = v64;
  }

  v21 = *(a1 + 8);
  outlined init with copy of Any?(&v56, &v63);
  v22 = v64.n128_i64[1];
  if (v64.n128_u64[1])
  {
    v23 = __swift_project_boxed_opaque_existential_1(&v63, v64.n128_i64[1]);
    v55[1] = v55;
    v24 = *(v22 - 8);
    v25 = MEMORY[0x1EEE9AC00](v23);
    v27 = v15;
    v28 = v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v28, v25);
    v29 = _bridgeAnythingToObjectiveC<A>(_:)();
    v30 = v28;
    v15 = v27;
    (*(v24 + 8))(v30, v22);
    __swift_destroy_boxed_opaque_existential_1(&v63);
  }

  else
  {
    v29 = 0;
  }

  CoreViewSetCompositingFilter((v16 & 3), v21, v29);
  swift_unknownObjectRelease();
  outlined destroy of HitTestableEvent?(&v56, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
  v31 = *(a3 + 136);
  if (v31)
  {
    LODWORD(v31) = (2 * ((33 * (v31 >> 16)) ^ v31)) | 1;
  }

  *(a1 + 94) = v31;
LABEL_24:
  v32 = *(a3 + 160);
  if (v32)
  {
    if (*(a1 + 100) == ((2 * ((33 * WORD1(v32)) ^ v32)) | 1))
    {
      goto LABEL_38;
    }
  }

  else if (!*(a1 + 100))
  {
    goto LABEL_38;
  }

  v33 = *(a3 + 88);
  *&v56 = v33;
  v34 = *(a1 + 64);

  if (v34 == 9)
  {
    v35 = specialized Array<A>.popColorMultiply(drawable:)(&v56, a1);
    v38 = *(a1 + 16);
    if ((v37 & 0x100000000) != 0)
    {
      v39 = 0;
    }

    else
    {
      *&v63 = v35;
      *(&v63 + 1) = v36;
      v64.n128_u32[0] = v37;
      if (one-time initialization token for cache != -1)
      {
        swift_once();
      }

      v39 = specialized ObjectCache.subscript.getter(&v63);
    }

    [v38 setContentsMultiplyColor_];

    v33 = v56;
  }

  v62 = v16;
  DisplayList.ViewUpdater.Platform.setFilters(_:of:)(v33, *(a1 + 8));

  v40 = *(a3 + 160);
  if (v40)
  {
    LODWORD(v40) = (2 * ((33 * (v40 >> 16)) ^ v40)) | 1;
  }

  *(a1 + 100) = v40;
LABEL_38:
  v41 = *(a3 + 152);
  if (v41)
  {
    if (*(a1 + 98) != ((2 * ((33 * WORD1(v41)) ^ v41)) | 1))
    {
      goto LABEL_46;
    }
  }

  else if (*(a1 + 98))
  {
    goto LABEL_46;
  }

  v42 = *(a3 + 144);
  if (v42)
  {
    if (*(a1 + 96) == ((2 * ((33 * WORD1(v42)) ^ v42)) | 1))
    {
LABEL_44:
      LOBYTE(v43) = 0;
      goto LABEL_51;
    }
  }

  else if (!*(a1 + 96))
  {
    goto LABEL_44;
  }

LABEL_46:
  v44 = *(a1 + 65);
  *&v56 = v16;
  DisplayList.ViewUpdater.Platform.updateClipShapes(_:state:)(a1, a3);
  v45 = *(a3 + 152);
  if (v45)
  {
    LODWORD(v45) = (2 * ((33 * (v45 >> 16)) ^ v45)) | 1;
  }

  *(a1 + 98) = v45;
  if ((v44 & 8) != 0)
  {
    LOBYTE(v43) = 1;
  }

  else
  {
    v43 = (*(a1 + 65) >> 3) & 1;
  }

LABEL_51:
  v62 = v16;
  v46 = a2[1];
  v56 = *a2;
  v57 = v46;
  v58 = v15;
  v59 = *(a2 + 40);
  v60 = *(a2 + 56);
  v47.n128_u64[1] = v60.n128_u64[1];
  v61 = *(a2 + 18);
  v47.n128_f64[0] = a4;
  v46.n128_f64[0] = a5;
  if ((DisplayList.ViewUpdater.Platform.updateGeometry(_:item:size:state:clipRectChanged:)(a1, v47, v46, a6, a7, a8, a9, &v56, a3, v43) & 1) == 0)
  {
    v49 = *(a3 + 168);
    if (v49)
    {
      if (*(a1 + 102) != ((2 * ((33 * WORD1(v49)) ^ v49)) | 1))
      {
        goto LABEL_60;
      }
    }

    else if (*(a1 + 102))
    {
      goto LABEL_60;
    }

    if (v15)
    {
      if (*(a1 + 88) == ((2 * ((33 * WORD1(v15)) ^ v15)) | 1))
      {
        goto LABEL_63;
      }
    }

    else if (!*(a1 + 88))
    {
      goto LABEL_63;
    }
  }

LABEL_60:
  v62 = v16;
  v50 = a2[1];
  v56 = *a2;
  v57 = v50;
  v58 = v15;
  v59 = *(a2 + 40);
  v60 = *(a2 + 56);
  v61 = *(a2 + 18);
  DisplayList.ViewUpdater.Platform.updateShadow(_:state:item:)(a1, a3, &v56, v60, v50, v48);
  v51 = *(a3 + 168);
  if (v51)
  {
    LODWORD(v51) = (2 * ((33 * (v51 >> 16)) ^ v51)) | 1;
  }

  *(a1 + 102) = v51;
LABEL_63:
  v52 = *(a3 + 176);
  if (v52)
  {
    if (*(a1 + 104) == ((2 * ((33 * WORD1(v52)) ^ v52)) | 1))
    {
      goto LABEL_70;
    }
  }

  else if (!*(a1 + 104))
  {
    goto LABEL_70;
  }

  *&v56 = v16;
  DisplayList.ViewUpdater.Platform.updateProperties(_:state:)(a1, a3);
  v53 = *(a3 + 176);
  if (v53)
  {
    LODWORD(v53) = (2 * ((33 * (v53 >> 16)) ^ v53)) | 1;
  }

  *(a1 + 104) = v53;
LABEL_70:
  v54 = *(a1 + 64);
  if (v54 > 0x11 || ((1 << v54) & 0x38204) == 0)
  {
    [*(a1 + 16) setContentsScale_];
  }
}

void __swiftcall DisplayList.ViewUpdater.Model.State.clipRect()(SwiftUI::FixedRoundedRect_optional *__return_ptr retstr)
{
  if (*(*(v1 + 80) + 16) != 1)
  {
    goto LABEL_10;
  }

  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v29 = *(v1 + 56);
  v6 = *(v1 + 72);
  DisplayList.ViewUpdater.Model.Clip.clipRect()(&v32);
  style = v32.value.style;
  if (v32.value.style == SwiftUI_RoundedCornerStyle_unknownDefault)
  {
    goto LABEL_10;
  }

  width = v32.value.cornerSize.width;
  height = v32.value.cornerSize.height;
  v11 = v32.value.rect.size.width;
  v10 = v32.value.rect.size.height;
  x = v32.value.rect.origin.x;
  y = v32.value.rect.origin.y;
  v14 = v3 == 0.0;
  if (*&v29 != 0.0)
  {
    v14 = 0;
  }

  v15 = v5 == 0.0 && v4 == 0.0;
  if (v15 || v14)
  {
    v32.value.rect.origin.x = v3;
    v32.value.rect.origin.y = v4;
    v32.value.rect.size.width = v5;
    *&v32.value.rect.size.height = v29;
    v32.value.cornerSize.height = v6;
    CGAffineTransformInvert(&v31, &v32);
    a = v31.a;
    b = v31.b;
    c = v31.c;
    d = v31.d;
    v32.value.rect.origin.x = v31.a;
    v32.value.rect.origin.y = v31.b;
    v32.value.rect.size = *&v31.c;
    ty = v31.ty;
    tx = v31.tx;
    v32.value.cornerSize = *&v31.tx;
    v34.origin.x = x;
    v34.origin.y = y;
    v34.size.width = v11;
    v34.size.height = v10;
    v35 = CGRectApplyAffineTransform(v34, &v32);
    v21 = v35.size.width;
    v22 = v35.size.height;
    if ((~*&width & 0x7FF0000000000000) != 0 && (*&height & 0x7FF0000000000000) != 0x7FF0000000000000)
    {
      v32.value.rect.origin.x = a;
      v32.value.rect.origin.y = b;
      v32.value.rect.size.width = c;
      v32.value.rect.size.height = d;
      v32.value.cornerSize.width = tx;
      v32.value.cornerSize.height = ty;
      v23 = v35.origin.x;
      v33.width = width;
      v24 = v35.origin.y;
      v33.height = height;
      v25 = CGSizeApplyAffineTransform(v33, &v32);
      v26 = copysign(v25.width, width);
      v27 = copysign(v25.height, height);
      v35.origin.y = v24;
      width = v26;
      height = v27;
      v35.origin.x = v23;
    }

    v16 = style & 1;
    retstr->value.rect.origin.x = v35.origin.x;
    retstr->value.rect.origin.y = v35.origin.y;
    retstr->value.rect.size.width = v21;
    retstr->value.rect.size.height = v22;
    retstr->value.cornerSize.width = width;
    retstr->value.cornerSize.height = height;
  }

  else
  {
LABEL_10:
    retstr->value.rect.size = 0u;
    retstr->value.cornerSize = 0u;
    retstr->value.rect.origin = 0u;
    v16 = SwiftUI_RoundedCornerStyle_unknownDefault;
  }

  retstr->value.style = v16;
}

void DisplayList.ViewUpdater.Platform.updateClipShapes(_:state:)(uint64_t a1, __int128 *a2)
{
  v5 = a2[9];
  v6 = a2[7];
  v63 = a2[8];
  v64 = v5;
  v7 = a2[9];
  v65 = a2[10];
  v8 = a2[5];
  v9 = a2[3];
  v59 = a2[4];
  v60 = v8;
  v10 = a2[5];
  v11 = a2[7];
  v61 = a2[6];
  v62 = v11;
  v12 = a2[1];
  v56[0] = *a2;
  v56[1] = v12;
  v13 = a2[3];
  v15 = *a2;
  v14 = a2[1];
  v57 = a2[2];
  v58 = v13;
  v51 = v63;
  v52 = v7;
  v53 = a2[10];
  v47 = v59;
  v48 = v10;
  v49 = v61;
  v50 = v6;
  *&v45.a = v15;
  *&v45.c = v14;
  v16 = *v2;
  v66 = *(a2 + 22);
  v54 = *(a2 + 22);
  *&v45.tx = v57;
  v46 = v9;
  DisplayList.ViewUpdater.Model.State.clipRect()(&v55);
  v73 = v51;
  v74 = v52;
  v75 = v53;
  v76 = v54;
  v69 = v47;
  v70 = v48;
  v71 = v49;
  v72 = v50;
  v67 = v45;
  v68 = v46;
  outlined init with copy of DisplayList.ViewUpdater.Model.State(v56, &transform);
  outlined destroy of DisplayList.ViewUpdater.Model.State(&v67);
  style = v55.value.style;
  if (v55.value.style == SwiftUI_RoundedCornerStyle_unknownDefault)
  {
    v18 = *(a1 + 65);
    if ((v18 & 8) != 0)
    {
      v18 &= ~8u;
      *(a1 + 65) = v18;
      CoreViewSetClipsToBounds(v16 & 3, *(a1 + 8), 0, 0);
      v19 = *(a1 + 16);
      [v19 bounds];
      [v19 setBounds_];
      [v19 setCornerRadius_];
      [v19 setCornerCurve_];
    }

    v20 = *(a2 + 10);
    if (*(v20 + 16))
    {
      v21 = *(a1 + 16);

      v22 = [v21 mask];
      if (v22)
      {
        v23 = v22;
        type metadata accessor for MaskLayer();
        v24 = swift_dynamicCastClass();
        if (v24)
        {
          v25 = v24;
          v26 = v23;
          goto LABEL_24;
        }
      }

      v25 = [objc_allocWithZone(type metadata accessor for MaskLayer()) init];
      [v25 setAnchorPoint_];
      [v25 setNoAnimationDelegate];
      [v21 setMask_];

      if ((v18 & 0x10) == 0)
      {
        *(a1 + 65) = v18 | 0x10;
      }

LABEL_24:
      v40 = a2[3];
      *&v45.a = a2[2];
      *&v45.c = v40;
      *&v45.tx = a2[4];
      CGAffineTransformInvert(&transform, &v45);

      v42 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI11DisplayListV11ViewUpdaterC5ModelO4ClipV_Tt1g5(v41, v20);

      if (v42)
      {
        v45 = *&v25[OBJC_IVAR____TtC7SwiftUI9MaskLayer_clipTransform];
        v43 = static CGAffineTransform.== infix(_:_:)();

        if (v43)
        {
          goto LABEL_29;
        }
      }

      else
      {
      }

      MaskLayer.setClips(_:transform:)(v20, &transform);
LABEL_29:

      return;
    }

    if ((v18 & 0x10) == 0)
    {
      return;
    }

    [*(a1 + 16) setMask_];
    v39 = v18 & 0xEF;
LABEL_20:
    *(a1 + 65) = v39;
    return;
  }

  height = v55.value.rect.size.height;
  width = v55.value.cornerSize.width;
  y = v55.value.rect.origin.y;
  v29 = v55.value.rect.size.width;
  x = v55.value.rect.origin.x;
  CoreViewSetClipsToBounds(v16 & 3, *(a1 + 8), 1, 0);
  v32 = *(a1 + 16);
  v77.origin.x = x;
  v77.origin.y = y;
  v77.size.width = v29;
  v77.size.height = height;
  v33 = CGRectGetWidth(v77);
  v78.origin.x = x;
  v78.origin.y = y;
  v78.size.width = v29;
  v78.size.height = height;
  v34 = CGRectGetHeight(v78);
  if (v34 >= v33)
  {
    v34 = v33;
  }

  v35 = v34 * 0.5;
  if (v35 >= width)
  {
    v35 = width;
  }

  [v32 setCornerRadius_];
  v36 = MEMORY[0x1E69796E8];
  if ((style & 1) == 0)
  {
    v36 = MEMORY[0x1E69796E0];
  }

  v37 = *v36;
  [v32 setCornerCurve_];

  v38 = *(a1 + 65);
  if ((v38 & 8) == 0)
  {
    v38 |= 8u;
    *(a1 + 65) = v38;
  }

  if ((v38 & 0x10) != 0)
  {
    [v32 setMask_];
    v39 = v38 & 0xEF;
    goto LABEL_20;
  }
}

uint64_t DisplayList.ViewUpdater.Platform.updateGeometry(_:item:size:state:clipRectChanged:)(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, uint64_t a8, __int128 *a9, char a10)
{
  height = a3.n128_f64[0];
  width = a2.n128_f64[0];
  v15 = *v10;
  v17 = *(a1 + 48);
  v16 = *(a1 + 56);
  v18 = v16 != a3.n128_f64[0] || v17 != a2.n128_f64[0];
  v19 = *(a1 + 96);
  v20 = *(a9 + 18);
  if (v20)
  {
    v21 = (2 * ((33 * WORD1(v20)) ^ v20)) | 1;
  }

  else
  {
    v21 = 0;
  }

  *(a1 + 96) = v21;
  if (!((v19 != v21) | v18 & 1) && (a10 & 1) == 0)
  {
    return 0;
  }

  v23 = *(a9 + 8);
  v22 = *(a9 + 9);
  v24 = *(a1 + 65);
  if ((v24 & 8) != 0)
  {
    v26 = a9[9];
    v27 = a9[7];
    v81 = a9[8];
    v82 = v26;
    v28 = a9[9];
    v83 = a9[10];
    v29 = a9[5];
    v30 = a9[3];
    v77 = a9[4];
    v78 = v29;
    v31 = a9[5];
    v32 = a9[7];
    v79 = a9[6];
    v80 = v32;
    v33 = a9[1];
    v74[0] = *a9;
    v74[1] = v33;
    v34 = a9[3];
    v36 = *a9;
    v35 = a9[1];
    v75 = a9[2];
    v76 = v34;
    v69 = v81;
    v70 = v28;
    v71 = a9[10];
    v65 = v77;
    v66 = v31;
    v67 = v79;
    v68 = v27;
    v61 = v36;
    v62 = v35;
    v84 = *(a9 + 22);
    v72 = *(a9 + 22);
    v63 = v75;
    v64 = v30;
    DisplayList.ViewUpdater.Model.State.clipRect()(&v73);
    v93 = v69;
    v94 = v70;
    v95 = v71;
    v96 = v72;
    v89 = v65;
    v90 = v66;
    v91 = v67;
    v92 = v68;
    v85 = v61;
    v86 = v62;
    v87 = v63;
    v88 = v64;
    outlined init with copy of DisplayList.ViewUpdater.Model.State(v74, v60);
    outlined destroy of DisplayList.ViewUpdater.Model.State(&v85);
    if (v73.value.style != SwiftUI_RoundedCornerStyle_unknownDefault)
    {
      width = v73.value.rect.size.width;
      height = v73.value.rect.size.height;
      x = v73.value.rect.origin.x;
      y = v73.value.rect.origin.y;
      v18 |= a10;
      v23 = v23 + v73.value.rect.origin.x;
      v22 = v22 + v73.value.rect.origin.y;
      if (v19 == v21 && (a10 & 1) == 0)
      {
        if ((v18 & 1) == 0)
        {
          v41 = 0;
          v42 = 0;
          v43 = 0;
          if ((v24 & 4) == 0)
          {
            goto LABEL_51;
          }

          goto LABEL_111;
        }

        goto LABEL_42;
      }

LABEL_26:
      if (v23 != *(a1 + 32) || v22 != *(a1 + 40))
      {
        v38 = 1;
        *(a1 + 32) = v23;
        *(a1 + 40) = v22;
        if ((v18 & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_31:
        if (width == v17 && height == v16)
        {
LABEL_33:
          v42 = 0;
          v43 = 1;
          if ((v38 & 1) == 0)
          {
            v41 = 0;
            if ((v24 & 4) != 0)
            {
              goto LABEL_111;
            }

LABEL_51:
            if (v19 == v21)
            {
              goto LABEL_63;
            }

            goto LABEL_52;
          }

LABEL_98:
          if ((v24 & 1) == 0)
          {
            goto LABEL_99;
          }

          goto LABEL_47;
        }

        *(a1 + 48) = width;
        *(a1 + 56) = height;
        v42 = 1;
        if ((v38 & 1) == 0)
        {
          v41 = 0;
          v43 = 1;
          if ((v24 & 4) == 0)
          {
            goto LABEL_51;
          }

          goto LABEL_111;
        }

        v43 = 1;
        if ((v24 & 1) == 0)
        {
          goto LABEL_99;
        }

LABEL_47:
        v41 = 1;
        if (x == 0.0 && y == 0.0)
        {
          v24 &= ~1u;
          *(a1 + 65) = v24;
        }

        if ((v24 & 4) == 0)
        {
          goto LABEL_51;
        }

LABEL_111:
        if (v42 & 1) != 0 || (v41)
        {
          v57 = v15 & 3;
          CoreViewSetSize((v15 & 3), *(a1 + 8));
        }

        else
        {
          v57 = v15 & 3;
        }

        v56 = *(a1 + 8);
        v58 = CoreViewLayer(v57, v56);
        [v58 setRasterizationScale_];

        if (v42)
        {
          goto LABEL_118;
        }

        goto LABEL_116;
      }

      if ((v18 & 1) == 0)
      {
        goto LABEL_44;
      }

LABEL_42:
      if (width == v17 && height == v16)
      {
LABEL_44:
        v42 = 0;
        v43 = 0;
        if (v24)
        {
          goto LABEL_47;
        }

        goto LABEL_99;
      }

LABEL_46:
      v43 = 0;
      *(a1 + 48) = width;
      *(a1 + 56) = height;
      v42 = 1;
      if (v24)
      {
        goto LABEL_47;
      }

LABEL_99:
      if (x == 0.0 && y == 0.0)
      {
        v41 = 0;
        if ((v24 & 4) != 0)
        {
          goto LABEL_111;
        }
      }

      else
      {
        v24 |= 1u;
        *(a1 + 65) = v24;
        v41 = 1;
        if ((v24 & 4) != 0)
        {
          goto LABEL_111;
        }
      }

      goto LABEL_51;
    }
  }

  if (v24)
  {
    x = 0.0;
    if (v19 == v21)
    {
      if ((v18 & 1) == 0)
      {
        v42 = 0;
        v43 = 0;
        y = 0.0;
        goto LABEL_98;
      }

      y = 0.0;
      goto LABEL_46;
    }

    y = 0.0;
    goto LABEL_26;
  }

  if (v19 == v21)
  {
    if ((v18 & 1) == 0)
    {
      v42 = 0;
      v41 = 0;
      v43 = 0;
      y = 0.0;
      x = 0.0;
      if ((v24 & 4) != 0)
      {
        goto LABEL_111;
      }

      goto LABEL_63;
    }

    goto LABEL_95;
  }

  if (v23 != *(a1 + 32) || v22 != *(a1 + 40))
  {
    v38 = 0;
    x = 0.0;
    y = 0.0;
    *(a1 + 32) = v23;
    *(a1 + 40) = v22;
    if ((v18 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (v18)
  {
LABEL_95:
    v41 = 0;
    v43 = 0;
    *(a1 + 48) = width;
    *(a1 + 56) = height;
    v42 = 1;
    x = 0.0;
    y = 0.0;
    if ((v24 & 4) != 0)
    {
      goto LABEL_111;
    }

    goto LABEL_51;
  }

  v42 = 0;
  v41 = 0;
  v43 = 0;
  y = 0.0;
  x = 0.0;
  if ((v24 & 4) != 0)
  {
    goto LABEL_111;
  }

LABEL_52:
  v45 = *(a9 + 5);
  v46 = 1;
  if (*(a9 + 4) == 1.0 && v45 == 0.0 && *(a9 + 6) == 0.0)
  {
    v47 = *(a9 + 7);
    v46 = v47 != 1.0;
    if ((v24 & 2) == 0 && v47 == 1.0)
    {
      goto LABEL_63;
    }
  }

  v48 = *(a1 + 8);
  *&v85 = *(a9 + 4);
  *(&v85 + 1) = v45;
  v86 = a9[3];
  v87 = 0uLL;
  CoreViewSetTransform((v15 & 3), v48, &v85);
  if (v46)
  {
    if ((v24 & 2) != 0)
    {
      goto LABEL_63;
    }

    v49 = v24 | 2;
  }

  else
  {
    if ((v24 & 2) == 0)
    {
      goto LABEL_63;
    }

    v49 = v24 & 0xF9;
  }

  *(a1 + 65) = v49;
LABEL_63:
  v50 = 0.0;
  if ((*&v23 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v51 = 0.0;
  }

  else
  {
    v51 = v23;
  }

  if ((~*&v23 & 0x7FF0000000000000) != 0)
  {
    v51 = v23;
  }

  if ((*&v22 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v52 = 0.0;
  }

  else
  {
    v52 = v22;
  }

  if ((~*&v22 & 0x7FF0000000000000) != 0)
  {
    v52 = v22;
  }

  if ((*&x & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v53 = 0.0;
  }

  else
  {
    v53 = x;
  }

  if ((~*&x & 0x7FF0000000000000) != 0)
  {
    v53 = x;
  }

  if ((*&y & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v54 = 0.0;
  }

  else
  {
    v54 = y;
  }

  if ((~*&y & 0x7FF0000000000000) != 0)
  {
    v54 = y;
  }

  if ((*&width & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v55 = 0.0;
  }

  else
  {
    v55 = width;
  }

  if ((~*&width & 0x7FF0000000000000) != 0)
  {
    v55 = width;
  }

  if ((*&height & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v50 = height;
  }

  if ((~*&height & 0x7FF0000000000000) != 0)
  {
    v50 = height;
  }

  v56 = *(a1 + 8);
  CoreViewSetGeometry(v15 & 3, v56, *(a1 + 64) - 15 < 3, v43, v41, v42, v51, v52, v53, v54, v55, v50);
  if (v42)
  {
    goto LABEL_118;
  }

LABEL_116:
  if (!v41)
  {
    return 0;
  }

LABEL_118:
  if (*(a1 + 64) == 14)
  {
    CoreViewSetMaskGeometry((v15 & 3), v56, x, y, width, height);
  }

  return 1;
}

void CoreViewSetGeometry(int a1, void *a2, uint64_t a3, int a4, int a5, int a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v21 = a2;
  if (!a1)
  {
    if (a4)
    {
      [a2 setPosition:{a3, a7, a8}];
    }

    if ((a5 & 1) != 0 || a6)
    {

      [v21 setBounds:{a3, a9, a10, a11, a12}];
    }

    return;
  }

  if (a1 != 1)
  {
    return;
  }

  v22 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __CoreViewSetGeometry_block_invoke;
  block[3] = &unk_1E7242240;
  block[4] = a2;
  if (CoreViewSetGeometry_onceToken == -1)
  {
    if (a3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    dispatch_once(&CoreViewSetGeometry_onceToken, block);
    if (v22)
    {
LABEL_5:
      if (a5)
      {
        CoreViewSetGeometry_cold_1();
      }

      goto LABEL_17;
    }
  }

  if (CoreViewSetGeometry_supportsGeometryObservation != 1 || ([v21 _shouldNotifyGeometryObservers] & 1) == 0)
  {
    v25 = [v21 layer];
    v21 = v25;
    if (a4)
    {
      [v25 setPosition:{a7, a8}];
    }

    if ((a5 & 1) != 0 || a6)
    {
      goto LABEL_27;
    }

    return;
  }

LABEL_17:
  if (a4)
  {
    [v21 setCenter:{a7, a8}];
  }

  if ((a5 & ~v22 & 1) != 0 || a6)
  {
    if ((a5 & ~v22 & 1) == 0)
    {
      [v21 bounds];
      a9 = v23;
      a10 = v24;
    }

LABEL_27:
    [v21 setBounds:{a9, a10, a11, a12}];
  }
}

void DisplayList.ViewUpdater.Platform.updateShadow(_:state:item:)(uint64_t a1, void *a2, void *a3, __n128 a4, __n128 a5, __n128 a6)
{
  v95 = *MEMORY[0x1E69E9840];
  v9 = *v6;
  v10 = a2[12];
  if (v10)
  {
    v11 = a3[8];
    if (*(a1 + 64))
    {
      v12 = (a3[8] & 0xC0000000) == 0;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      goto LABEL_12;
    }

    v13 = a3[5];
    v14 = a3[6];
    v15 = a3[7];
    if (v13 >> 60 != 4)
    {
      if (v13 >> 60 != 1)
      {
LABEL_12:
        swift_beginAccess();
        v83 = *(v10 + 16);
        LODWORD(v84) = *(v10 + 32);
        v30 = *(v10 + 40);
        v31 = *(v10 + 48);
        v32 = *(v10 + 56);
        v33 = *(a1 + 8);
        v34 = one-time initialization token for cache;

        if (v34 != -1)
        {
          swift_once();
        }

        v35 = specialized ObjectCache.subscript.getter(&v83);
        CoreViewSetShadow((v9 & 3), v33, v35, v30, v31, v32);

        return;
      }

      v16 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
      v17 = *(a1 + 16);
      swift_beginAccess();
      v18 = *(v10 + 24);
      v19 = *(v10 + 32);
      v20 = *(v10 + 40);
      v21 = *(v10 + 48);
      v22 = *(v10 + 56);
      *&v23 = v16 * *(v10 + 28);
      v24 = (*(v10 + 68) >> 4) & 1;
      v25 = *(v10 + 16);
      outlined copy of DisplayList.Item.Value(v13, v14, v15, v11);
      outlined copy of DisplayList.Item.Value(v13, v14, v15, v11);

      [v17 setShadowPathIsBounds_];
      [v17 setShadowPath_];
      [v17 setPunchoutShadow_];
      *&v79 = v25;
      *(&v79 + 1) = __PAIR64__(v23, v18);
      LODWORD(v80) = v19;
      v82[0] = v9 & 3;
      v26 = CoreViewLayerView(v9 & 3, v17, v82);
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      v27 = v82[0];
      __swift_project_boxed_opaque_existential_1(&v88, *(&v89 + 1));
      v28 = _bridgeAnythingToObjectiveC<A>(_:)();
      if (one-time initialization token for cache != -1)
      {
        swift_once();
      }

      v29 = specialized ObjectCache.subscript.getter(&v79);
      CoreViewSetShadow(v27, v28, v29, v20, v21, v22);

      outlined consume of DisplayList.Item.Value(v13, v14, v15, v11);
      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_1(&v88);
LABEL_49:
      outlined consume of DisplayList.Item.Value(v13, v14, v15, v11);
      return;
    }

    v38 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v78 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v76 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v77 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    v39 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    v75 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
    v73 = *(a1 + 16);
    ObjectType = swift_getObjectType();
    v41 = *(*a2 + 24);
    v74 = v39;
    if (ObjectType == type metadata accessor for ColorShapeLayer())
    {
      outlined copy of DisplayList.Item.Value(v13, v14, v15, v11);
      outlined copy of DisplayList.Item.Value(v13, v14, v15, v11);

      x = 0.0;
      y = 0.0;
LABEL_48:
      swift_beginAccess();
      v64 = *(v10 + 48);
      v80 = *(v10 + 32);
      *v81 = v64;
      *&v81[13] = *(v10 + 61);
      v79 = *(v10 + 16);
      *&v83 = v9;
      *(&v83 + 1) = v73;
      *&v84 = v38;
      *(&v84 + 1) = v76;
      *&v85 = v78;
      *(&v85 + 1) = v77;
      LOBYTE(v86) = v74;
      *(&v86 + 1) = x;
      *v87 = y;
      *&v87[24] = v80;
      *&v87[8] = v79;
      *&v87[53] = *&v81[13];
      *&v87[40] = *v81;
      v87[61] = 0;
      v65 = *(*v75 + 152);
      outlined copy of Path.Storage(v38, v76, v78, v77, v74);
      v66 = v73;
      v65(&v83, &type metadata for ShapeLayerShadowHelper, &protocol witness table for ShapeLayerShadowHelper);

      outlined consume of DisplayList.Item.Value(v13, v14, v15, v11);
      v92 = *v87;
      v93 = *&v87[16];
      v94[0] = *&v87[32];
      *(v94 + 14) = *&v87[46];
      v88 = v83;
      v89 = v84;
      v90 = v85;
      v91 = v86;
      outlined destroy of ShapeLayerShadowHelper(&v88);
      goto LABEL_49;
    }

    v42 = ObjectType;
    if (v39 <= 2)
    {
      if (v39 >= 2)
      {
        x = v38[2];
        y = v38[3];
        width = v38[4];
        height = v38[5];
      }

      else
      {
        height = *&v77;
        width = *&v78;
        y = *&v76;
        x = *&v38;
      }

      goto LABEL_35;
    }

    if (v39 == 5)
    {
      if (*(v38 + 16))
      {
        if (*(v38 + 16) == 1)
        {
          outlined copy of DisplayList.Item.Value(v13, v14, v15, v11);
          outlined copy of DisplayList.Item.Value(v13, v14, v15, v11);

          outlined copy of Path.Storage(v38, v76, v78, v77, 5u);
          RBPathGetBoundingRect();
          x = v47;
          y = v48;
          width = v49;
          height = v50;
          v51 = v38;
          v52 = v76;
          v53 = v78;
          v54 = v77;
LABEL_55:
          outlined consume of Path.Storage(v51, v52, v53, v54, 5u);
          goto LABEL_36;
        }

        outlined copy of DisplayList.Item.Value(v13, v14, v15, v11);
        outlined copy of DisplayList.Item.Value(v13, v14, v15, v11);

        v69 = outlined copy of Path.Storage(v38, v76, v78, v77, 5u);
        x = MEMORY[0x193AC3640](v38 + 3, v69);
        y = v70;
        width = v71;
        height = v72;
        v51 = v38;
        v52 = v76;
        v53 = v78;
LABEL_54:
        v54 = v77;
        goto LABEL_55;
      }

      v67 = *(v38 + 3);
      if (v67)
      {
        v68 = v67;
        outlined copy of DisplayList.Item.Value(v13, v14, v15, v11);
        outlined copy of DisplayList.Item.Value(v13, v14, v15, v11);

        outlined copy of Path.Storage(v38, v76, v78, v77, 5u);
        PathBoundingBox = CGPathGetPathBoundingBox(v68);
        x = PathBoundingBox.origin.x;
        y = PathBoundingBox.origin.y;
        width = PathBoundingBox.size.width;
        height = PathBoundingBox.size.height;

        v51 = v38;
        v52 = v76;
        v53 = v78;
        goto LABEL_54;
      }

      __break(1u);
    }

    else if (v39 == 6)
    {
      x = *MEMORY[0x1E695F050];
      y = *(MEMORY[0x1E695F050] + 8);
      width = *(MEMORY[0x1E695F050] + 16);
      height = *(MEMORY[0x1E695F050] + 24);
LABEL_35:
      outlined copy of DisplayList.Item.Value(v13, v14, v15, v11);
      outlined copy of DisplayList.Item.Value(v13, v14, v15, v11);

LABEL_36:
      v55 = v42;
      v97.origin.x = x;
      v97.origin.y = y;
      v97.size.width = width;
      v97.size.height = height;
      IsNull = CGRectIsNull(v97);
      if (IsNull)
      {
        x = 0.0;
        y = 0.0;
      }

      if (v55 == type metadata accessor for PaintShapeLayer())
      {
        if (IsNull)
        {
          v57 = 0.0;
        }

        else
        {
          v57 = height;
        }

        if (IsNull)
        {
          v58 = 0.0;
        }

        else
        {
          v58 = width;
        }

        v59 = 1.0 / v41;
        v60 = x;
        v61 = y;
        v98 = CGRectStandardize(*(&v57 - 3));
        v62 = 1.0 / v41 * 0.5;
        v63 = v62 + v98.origin.x;
        if (1.0 / v41 == 1.0)
        {
          x = floor(v63);
          y = floor(v62 + v98.origin.y);
        }

        else
        {
          x = v59 * floor(v63 / v59);
          y = v59 * floor((v62 + v98.origin.y) / v59);
        }
      }

      goto LABEL_48;
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v36 = a2[21];
  if (v36)
  {
    if (*(a1 + 102) == ((2 * ((33 * WORD1(v36)) ^ v36)) | 1))
    {
      return;
    }
  }

  else if (!*(a1 + 102))
  {
    return;
  }

  if (*(a1 + 64) - 15 >= 3)
  {
    v37 = *(a1 + 8);

    CoreViewSetShadow((v9 & 3), v37, 0, 0.0, 0.0, 0.0);
  }
}

uint64_t initializeWithCopy for DisplayList.ViewUpdater.ViewInfo(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
  v6 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v6;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v7 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v7;
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  swift_unknownObjectRetain();
  v8 = v5;
  swift_unknownObjectRetain();
  return a1;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unint64_t a1, unint64_t a2, __int16 a3)
{
  v6 = HIDWORD(a1);
  v7 = HIDWORD(a2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(a3);
  Hasher._combine(_:)(HIBYTE(a3) & 1);
  v8 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, a3 & 0x1FF, v8);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v6 = -1 << *(v4 + 32);
  result = a4 & ~v6;
  if ((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v8 = ~v6;
    do
    {
      v9 = *(v4 + 48) + 20 * result;
      v12 = *v9 == a1 && *(v9 + 4) == HIDWORD(a1) && *(v9 + 8) == a2 && *(v9 + 12) == HIDWORD(a2);
      if (v12 && *(v9 + 16) == a3 && ((*(v9 + 17) ^ ((a3 & 0x100) >> 8)) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v8;
    }

    while (((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t destroy for DisplayList.ViewUpdater.ViewInfo(uint64_t a1)
{
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

void *CoreViewSetCompositingFilter(void *result, void *a2, uint64_t a3)
{
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    a2 = [a2 layer];
  }

  return [a2 setCompositingFilter:a3];
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, __int16 a4, _OWORD *a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 20 * result;
  *v6 = a2;
  *(v6 + 8) = a3;
  *(v6 + 16) = a4;
  *(v6 + 17) = HIBYTE(a4) & 1;
  v7 = (a6[7] + (result << 7));
  v8 = a5[1];
  *v7 = *a5;
  v7[1] = v8;
  v9 = a5[3];
  v7[2] = a5[2];
  v7[3] = v9;
  v10 = a5[7];
  v7[6] = a5[6];
  v7[7] = v10;
  v11 = a5[5];
  v7[4] = a5[4];
  v7[5] = v11;
  v12 = a6[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v14;
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = result;
      specialized _NativeDictionary.copy()();
      result = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 20 * result;
    *v24 = a1;
    *(v24 + 8) = a2;
    *(v24 + 16) = a3;
    *(v24 + 17) = HIBYTE(a3) & 1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a4, a1, a2, a3 & 0x1FF, v23);
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + 8 * result) = a2;
  v6 = a6[7] + 20 * result;
  *v6 = a3;
  *(v6 + 8) = a4;
  *(v6 + 16) = a5;
  *(v6 + 17) = HIBYTE(a5) & 1;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

Swift::Void __swiftcall DisplayList.ViewUpdater.Model.State.reset()()
{
  *(v0 + 8) = 1065353216;
  if (one-time initialization token for normal != -1)
  {
    swift_once();
  }

  v1 = static GraphicsBlendMode.normal;
  v2 = byte_1ED52F818;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
  outlined consume of GraphicsBlendMode(v3, v4);
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = 0x3FF0000000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0x3FF0000000000000;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;

  v5 = MEMORY[0x1E69E7CC0];
  *(v0 + 80) = MEMORY[0x1E69E7CC0];

  *(v0 + 88) = v5;

  *(v0 + 96) = 0;
  *(v0 + 104) &= 0x200u;

  *(v0 + 120) = v5;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0;
}

double *DisplayList.ViewUpdater.ViewCache.setNextUpdate(_:in:)(double *result, uint64_t a2)
{
  v4 = *result;
  if (*result >= *(a2 + 56))
  {
    return result;
  }

  v5 = v2;
  *(a2 + 56) = v4;
  v6 = *(a2 + 48);
  v7 = *(a2 + 49);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v2;
  v44 = v11;
  if (v7)
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  v14 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v9, v12 | v6);
  v15 = v11[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
LABEL_14:
    specialized _NativeDictionary.copy()();
    if (v3)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  v3 = v13;
  if (v11[3] < v17)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, isUniquelyReferenced_nonNull_native);
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v9, v12 | v6);
    if ((v3 & 1) != (v19 & 1))
    {
LABEL_26:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v14 = v18;
    if ((v3 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_12:
    memmove(&__dst, (v44[7] + (v14 << 7)), 0x80uLL);
    _ViewInputs.base.modify();
    goto LABEL_16;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_14;
  }

  if (v13)
  {
    goto LABEL_12;
  }

LABEL_15:
  _s7SwiftUI36AccessibilityDataSeriesConfigurationV04AxisF0VSgWOi0_(&__dst);
LABEL_16:
  v40 = v49;
  v41 = v50;
  v42 = v51;
  v43 = v52;
  v36 = __dst;
  v37 = v46;
  v38 = v47;
  v39 = v48;
  v35[4] = v49;
  v35[5] = v50;
  v35[6] = v51;
  v35[7] = v52;
  v35[0] = __dst;
  v35[1] = v46;
  v35[2] = v47;
  v35[3] = v48;
  if (_s7SwiftUI15ModifiedContentVyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0eF0O6EffectVGAK15DisplayMaterialV2IDVACyAA0eK4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA21_TraitWritingModifierVyAA010TransitionY3KeyVGGGGAA0eF18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGSgWOg(v35) == 1)
  {
    __break(1u);
    goto LABEL_26;
  }

  *&v33 = v43;
  v30 = v40;
  v31 = v41;
  v32 = v42;
  __src = v36;
  v27 = v37;
  v28 = v38;
  v29 = v39;
  *(&v33 + 1) = v4;
  v34[2] = v38;
  v34[3] = v39;
  v34[0] = v36;
  v34[1] = v37;
  v34[6] = v42;
  v34[7] = v33;
  v34[4] = v40;
  v34[5] = v41;
  v20 = _s7SwiftUI15ModifiedContentVyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0eF0O6EffectVGAK15DisplayMaterialV2IDVACyAA0eK4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA21_TraitWritingModifierVyAA010TransitionY3KeyVGGGGAA0eF18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGSgWOg(v34);
  v21 = v44;
  if (v20 == 1)
  {
    if (v3)
    {
      specialized _NativeDictionary._delete(at:)(v14, v44);
    }
  }

  else if (v3)
  {
    memmove((v44[7] + (v14 << 7)), &__src, 0x80uLL);
  }

  else
  {
    v49 = v30;
    v50 = v31;
    v51 = v32;
    v52 = v33;
    __dst = __src;
    v46 = v27;
    v47 = v28;
    v48 = v29;
    specialized _NativeDictionary._insert(at:key:value:)(v14, v8, v9, v12 | v6, &__dst, v44);
  }

  v23[4] = v40;
  v23[5] = v41;
  v23[6] = v42;
  v24 = v43;
  v23[0] = v36;
  v23[1] = v37;
  v23[2] = v38;
  v23[3] = v39;
  v25 = v4;
  outlined init with copy of DisplayList.ViewUpdater.ViewInfo?(&__src, &v22);
  result = outlined destroy of DisplayList.ViewUpdater.ViewInfo?(v23);
  *v5 = v21;
  return result;
}

{
  v4 = *result;
  if (*result >= *(a2 + 32))
  {
    return result;
  }

  v5 = v2;
  *(a2 + 32) = v4;
  v6 = *(a2 + 24);
  v7 = *(a2 + 25);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v2;
  v44 = v11;
  if (v7)
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  v14 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v9, v12 | v6);
  v15 = v11[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
LABEL_14:
    specialized _NativeDictionary.copy()();
    if (v3)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  v3 = v13;
  if (v11[3] < v17)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, isUniquelyReferenced_nonNull_native);
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v9, v12 | v6);
    if ((v3 & 1) != (v19 & 1))
    {
LABEL_26:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v14 = v18;
    if ((v3 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_12:
    memmove(&__dst, (v44[7] + (v14 << 7)), 0x80uLL);
    _ViewInputs.base.modify();
    goto LABEL_16;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_14;
  }

  if (v13)
  {
    goto LABEL_12;
  }

LABEL_15:
  _s7SwiftUI36AccessibilityDataSeriesConfigurationV04AxisF0VSgWOi0_(&__dst);
LABEL_16:
  v40 = v49;
  v41 = v50;
  v42 = v51;
  v43 = v52;
  v36 = __dst;
  v37 = v46;
  v38 = v47;
  v39 = v48;
  v35[4] = v49;
  v35[5] = v50;
  v35[6] = v51;
  v35[7] = v52;
  v35[0] = __dst;
  v35[1] = v46;
  v35[2] = v47;
  v35[3] = v48;
  if (_s7SwiftUI15ModifiedContentVyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0eF0O6EffectVGAK15DisplayMaterialV2IDVACyAA0eK4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA21_TraitWritingModifierVyAA010TransitionY3KeyVGGGGAA0eF18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGSgWOg(v35) == 1)
  {
    __break(1u);
    goto LABEL_26;
  }

  *&v33 = v43;
  v30 = v40;
  v31 = v41;
  v32 = v42;
  __src = v36;
  v27 = v37;
  v28 = v38;
  v29 = v39;
  *(&v33 + 1) = v4;
  v34[2] = v38;
  v34[3] = v39;
  v34[0] = v36;
  v34[1] = v37;
  v34[6] = v42;
  v34[7] = v33;
  v34[4] = v40;
  v34[5] = v41;
  v20 = _s7SwiftUI15ModifiedContentVyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0eF0O6EffectVGAK15DisplayMaterialV2IDVACyAA0eK4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA21_TraitWritingModifierVyAA010TransitionY3KeyVGGGGAA0eF18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGSgWOg(v34);
  v21 = v44;
  if (v20 == 1)
  {
    if (v3)
    {
      specialized _NativeDictionary._delete(at:)(v14, v44);
    }
  }

  else if (v3)
  {
    memmove((v44[7] + (v14 << 7)), &__src, 0x80uLL);
  }

  else
  {
    v49 = v30;
    v50 = v31;
    v51 = v32;
    v52 = v33;
    __dst = __src;
    v46 = v27;
    v47 = v28;
    v48 = v29;
    specialized _NativeDictionary._insert(at:key:value:)(v14, v8, v9, v12 | v6, &__dst, v44);
  }

  v23[4] = v40;
  v23[5] = v41;
  v23[6] = v42;
  v24 = v43;
  v23[0] = v36;
  v23[1] = v37;
  v23[2] = v38;
  v23[3] = v39;
  v25 = v4;
  outlined init with copy of DisplayList.ViewUpdater.ViewInfo?(&__src, &v22);
  result = outlined destroy of DisplayList.ViewUpdater.ViewInfo?(v23);
  *v5 = v21;
  return result;
}

void specialized PreferenceValues.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{

  v7 = PreferenceValues._index(of:)(a2);

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  PreferenceValues.setValue<A>(_:of:at:)(a1, a2, a4, v7, AssociatedTypeWitness);
}

uint64_t merge32(_:_:)(uint64_t a1, unsigned int a2)
{
  v2 = (a2 | (a1 << 32)) + ~(a2 << 32);
  v3 = (v2 ^ (v2 >> 22)) + ~((v2 ^ (v2 >> 22)) << 13);
  v4 = (9 * (v3 ^ (v3 >> 8))) ^ ((9 * (v3 ^ (v3 >> 8))) >> 15);
  return ((v4 + ~(v4 << 27)) >> 31) ^ (v4 + ~(v4 << 27));
}

uint64_t PreferenceValues.Value.init(value:seed:)@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for PreferenceValues.Value(0, a3, v7, v8);
  *(a4 + *(result + 28)) = v6;
  return result;
}

uint64_t initializeWithCopy for PreferenceValues.Entry(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 48);
  *(a1 + 48) = v3;
  (**(v3 - 8))(a1 + 24, a2 + 24);
  return a1;
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = *(a3 + 16);
  v11 = __OFSUB__(v10, v8);
  v12 = v10 - v8;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v6 + v12;
  if (__OFADD__(v6, v12))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v13 > *(v5 + 3) >> 1)
  {
    if (v6 <= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v6;
    }

    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, a2, v10, a3);
  *v3 = v5;
  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *v4;
  v10 = v9 + 32 + 56 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = v10 + 56 * a3;
      v15 = (v9 + 32 + 56 * a2);
      if (result != v15 || result >= v15 + 56 * v14)
      {
        result = memmove(result, v15, 56 * v14);
      }

      v17 = *(v9 + 16);
      v11 = __OFADD__(v17, v12);
      v18 = v17 + v12;
      if (!v11)
      {
        *(v9 + 16) = v18;
        goto LABEL_13;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_13:
  if (a3 >= 1)
  {
    result = outlined init with copy of PreferenceValues.Entry(a4, v10);
    if (a3 != 1)
    {
      goto LABEL_22;
    }
  }

  return outlined destroy of CollectionOfOne<PreferenceValues.Entry>(a4);
}

{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  v9 = *v4;
  v10 = v9 + 32 + 32 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, a2);
  v14 = v13 - a2;
  if (v11)
  {
    goto LABEL_21;
  }

  result = v10 + 32 * a3;
  v15 = (v9 + 32 + 32 * a2);
  if (result != v15 || result >= v15 + 32 * v14)
  {
    result = memmove(result, v15, 32 * v14);
  }

  v17 = *(v9 + 16);
  v11 = __OFADD__(v17, v12);
  v18 = v17 + v12;
  if (v11)
  {
    goto LABEL_22;
  }

  *(v9 + 16) = v18;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (*(a4 + 16) != a3)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  return swift_arrayInitWithCopy();
}

void *closure #1 in PreferenceValues.subscript.getter@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*result < *(a2 + 16))
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    return PreferenceValues.Entry.subscript.getter(AssociatedTypeWitness, x8_0);
  }

  __break(1u);
  return result;
}

uint64_t PreferenceValues.Entry.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of Any(v2 + 24, v12);
  swift_dynamicCast();
  v8 = *(v2 + 16);
  (*(v5 + 32))(a2, v7, a1);
  result = type metadata accessor for PreferenceValues.Value(0, a1, v9, v10);
  *(a2 + *(result + 28)) = v8;
  return result;
}

uint64_t InvalidatingGraphMutation.combine<A>(with:)(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  result = swift_dynamicCast();
  if (result)
  {
    return v7[2] == *v2 && v7[3] == v2[1];
  }

  return result;
}

Swift::Void __swiftcall ObservationGraphMutation.apply()()
{
  v4 = v3;
  v5 = v2;
  v6 = v1;
  v7 = v0;
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_4(0, &lazy cache variable for type metadata for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)?, 255, type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v33 - v9;
  v36 = type metadata accessor for ObservationTracking();
  v11 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v4 + 16);
  if (v14)
  {
    v15 = v4 + 40;
    do
    {
      AGSubgraphRemoveObserver();
      v15 += 16;
      --v14;
    }

    while (v14);
  }

  swift_beginAccess();
  v17 = *(v7 + 16);
  v34 = v10;
  v35 = v6;
  if ((v17 & 0x8000000000000000) == 0 && (v17 & 0x4000000000000000) == 0)
  {
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v17 = *(v7 + 16);
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!(v17 >> 62))
      {
        v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:
        specialized Array.replaceSubrange<A>(_:with:)(0, v19, v16);
        goto LABEL_13;
      }

      goto LABEL_28;
    }
  }

  if (v17 >> 62)
  {
    v30 = __CocoaSet.count.getter();
    v31 = __CocoaSet.count.getter();
    if (v31 < 0)
    {
      goto LABEL_30;
    }

    v32 = __CocoaSet.count.getter();
    if (v30 < 0 || (v20 = v30, v32 < v30))
    {
      __break(1u);
LABEL_28:
      v31 = __CocoaSet.count.getter();
      if ((v31 & 0x8000000000000000) == 0)
      {
LABEL_31:
        v19 = v31;
        goto LABEL_9;
      }

      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }
  }

  else
  {
    v20 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  }

  *(v7 + 16) = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs10AnyKeyPathC_Tt1g5(0, v20, v16);

LABEL_13:
  swift_endAccess();
  v21 = *(v5 + 16);
  if (v21)
  {
    v24 = *(v11 + 16);
    v23 = v11 + 16;
    v22 = v24;
    v25 = v5 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
    v26 = *(v23 + 56);
    v24(v13, v25, v36);
    while (1)
    {
      if (ObservationTracking.changed.getter())
      {
        swift_beginAccess();

        MEMORY[0x193ABF170](v28);
        if (*((*(v7 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v7 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v33[1] = *((*(v7 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }

      ObservationTracking.cancel()();
      v27 = v36;
      (*(v23 - 8))(v13, v36);
      v25 += v26;
      if (!--v21)
      {
        break;
      }

      v22(v13, v25, v27);
    }
  }

  swift_beginAccess();
  v29 = v34;
  specialized Dictionary.removeValue(forKey:)(v34, v35);
  swift_endAccess();
  _s11Observation0A8TrackingV11_AccessListVSgWOhTm_2(v29, &lazy cache variable for type metadata for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)?, type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList), MEMORY[0x1E69E6720]);
  if (AGWeakAttributeGetAttribute() != *MEMORY[0x1E698D3F8])
  {
    AGGraphInvalidateValue();
  }
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = __CocoaSet.count.getter();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, MEMORY[0x1E69E6928]);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, type metadata accessor for AnyFontModifier);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, &lazy cache variable for type metadata for CASDFElementLayer, 0x1E6979438);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, type metadata accessor for ViewResponder);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, lazy cache variable for type metadata for CALayer, 0x1E6979398);
}

uint64_t type metadata accessor for ImageStyleProtocol.Type(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a2;
  if (!*a2)
  {
    type metadata accessor for AnyTrackedValue(255, a3, a4);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t assignWithCopy for ViewLeafView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  (*(v10 + 24))((v7 + *(v10 + 80) + 8) & ~*(v10 + 80), (v8 + *(v10 + 80) + 8) & ~*(v10 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t specialized AsyncTransaction.append<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v22[0] = a1;
  v22[1] = a2;
  v22[2] = a3;
  v22[3] = a4;
  v10 = *(v4 + 16);
  v11 = v10[2];
  if (!v11)
  {
    goto LABEL_6;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
    v10 = result;
  }

  if (v11 > v10[2])
  {
    __break(1u);
    return result;
  }

  v13 = &v10[5 * v11];
  v14 = v13[2];
  v15 = v13[3];
  __swift_mutable_project_boxed_opaque_existential_1((v13 - 1), v14);
  result = (*(v15 + 16))(v22, &type metadata for ObservationGraphMutation, &protocol witness table for ObservationGraphMutation, v14, v15);
  *(v5 + 16) = v10;
  if ((result & 1) == 0)
  {
LABEL_6:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10[2] + 1, 1, v10);
    }

    v17 = v10[2];
    v16 = v10[3];
    if (v17 >= v16 >> 1)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v10);
    }

    v20 = &type metadata for ObservationGraphMutation;
    v21 = &protocol witness table for ObservationGraphMutation;
    v18 = swift_allocObject();
    *&v19 = v18;
    v18[2] = a1;
    v18[3] = a2;
    v18[4] = a3;
    v18[5] = a4;
    v10[2] = v17 + 1;
    result = outlined init with take of AnyTrackedValue(&v19, &v10[5 * v17 + 4]);
    *(v5 + 16) = v10;
  }

  return result;
}

uint64_t ObservationGraphMutation.combine<A>(with:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = InvalidatingGraphMutation.combine<A>(with:)(v7, v8);
  if (v9)
  {
    (*(v4 + 16))(v6, a1, a2);
    if (swift_dynamicCast())
    {

      specialized Array.append<A>(contentsOf:)(v10);

      specialized Array.append<A>(contentsOf:)(v11);
    }
  }

  return v9 & 1;
}

uint64_t closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = AGSubgraphIsValid();
  if (result)
  {
    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    v15 = static Update._lock;
    _MovableLockLock(static Update._lock);
    specialized static Update.begin()();
    closure #1 in closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)(a7, a8, a3, a4, a5, a6);
    static Update.end()();

    return _MovableLockUnlock(v15);
  }

  return result;
}

void closure #1 in closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8] || !swift_weakLoadStrong())
  {
    specialized ObservationGraphMutation.cancel()(a5, a6, v10);
  }

  else
  {
    if (_threadTransactionData())
    {
      type metadata accessor for PropertyList.Element();
      swift_unknownObjectRetain();
      v11 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      v11 = 0;
    }

    v12 = pthread_main_np() != 1;
    v13 = _threadTransactionID();
    specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(v11, v13, a3, a4, a5, a6, v12, 1);
    ObservationTracking.changed.getter();
    v14 = one-time initialization token for enabledCategories;

    if (v14 != -1)
    {
      swift_once();
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x50uLL)
    {
      __break(1u);
    }

    if (*(static CustomEventTrace.enabledCategories + 111) == 1)
    {
      v15 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 17999;
        v16 = *(v15 + 16);
        type metadata accessor for (UInt32, AnyKeyPath?, AGAttribute)(0);

        v17 = v16;
        AGGraphAddTraceEvent();
      }
    }
  }
}

char *specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char *a8)
{
  v9 = v8;
  v55 = a2;
  v65 = *MEMORY[0x1E69E9840];
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v17 = static Update._lock;
  _MovableLockLock(static Update._lock);
  swift_beginAccess();
  if (!*(v9 + 16))
  {
    goto LABEL_48;
  }

  v54 = v17;
  v18 = (a7 & 1) != 0 || AGGraphGetCounter() != 0;
  swift_beginAccess();
  *(v9 + 168) &= a8 & 1;
  v19 = swift_beginAccess();
  v20 = *(v9 + 144);
  v21 = *(v20 + 2);
  if (v21)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v9 + 144) = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
      *(v9 + 144) = v20;
    }

    if (v21 > *(v20 + 2))
    {
      __break(1u);
LABEL_53:
      swift_once();
LABEL_16:
      if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
      {
        __break(1u);
      }

      else
      {
        a8 = v53;
        if (*(static CustomEventTrace.enabledCategories + 116) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16724;
          LODWORD(v59[0]) = v21;
          AGGraphAddTraceEvent();
        }

        *(v9 + 144) = v20;
        swift_endAccess();
        if (a8)
        {
LABEL_46:
          v48 = *(v9 + 144);
          v49 = *(v48 + 16);
          v17 = v54;
          if (v49)
          {
            v32 = *(v48 + 24 * v49 + 20);
            goto LABEL_49;
          }

LABEL_48:
          v32 = 0;
          goto LABEL_49;
        }

        swift_beginAccess();
        if (*(v20 + 2))
        {
          specialized Array._customRemoveLast()(&v60);
          LODWORD(a6) = v61;
          v18 = v62;
          a1 = v60;
          if (v62)
          {
            v21 = HIDWORD(v61);
          }

          else
          {
            outlined consume of AsyncTransaction?(v60, v61, 0);
            specialized Array.remove(at:)(*(*(v9 + 144) + 16) - 1, &v60);
            a1 = v60;
            LODWORD(a6) = v61;
            LODWORD(v21) = HIDWORD(v61);
            v18 = v62;
          }

          swift_endAccess();
          GraphHost.flushTransactions()();
          swift_beginAccess();
          a8 = *(v9 + 144);

          v44 = swift_isUniquelyReferenced_nonNull_native();
          *(v9 + 144) = a8;
          if (v44)
          {
LABEL_43:
            v46 = *(a8 + 2);
            v45 = *(a8 + 3);
            if (v46 >= v45 >> 1)
            {
              a8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, a8);
            }

            *(a8 + 2) = v46 + 1;
            v47 = &a8[24 * v46];
            *(v47 + 4) = a1;
            *(v47 + 10) = a6;
            *(v47 + 11) = v21;
            *(v47 + 6) = v18;
            *(v9 + 144) = a8;
            swift_endAccess();

            goto LABEL_46;
          }

LABEL_56:
          a8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a8 + 2) + 1, 1, a8);
          *(v9 + 144) = a8;
          goto LABEL_43;
        }
      }

      __break(1u);
      goto LABEL_56;
    }

    v53 = v18;
    v18 = &v20[24 * v21];
    if (*(v18 + 16) == v55)
    {
      v23 = *(v18 + 8);
      if (v23)
      {
        if (a1)
        {
          v59[0] = MEMORY[0x1E69E7CC0];

          v52 = compareLists(_:_:ignoredTypes:)(v23, a1, v59);

          if (v52)
          {
LABEL_15:
            a8 = (v18 + 8);
            specialized AsyncTransaction.append<A>(_:)(a3, a4, a5, a6);
            LODWORD(v21) = *(v18 + 20);
            if (one-time initialization token for enabledCategories == -1)
            {
              goto LABEL_16;
            }

            goto LABEL_53;
          }
        }
      }

      else if (!a1)
      {
        goto LABEL_15;
      }
    }

    *(v9 + 144) = v20;
    swift_endAccess();
    if ((v53 & 1) == 0)
    {
      GraphHost.flushTransactions()();
    }
  }

  else if ((*(*v9 + 192))(v19))
  {
    v25 = v24;
    ObjectType = swift_getObjectType();
    (*(v25 + 32))(ObjectType, v25);
    swift_unknownObjectRelease();
  }

  v63 = &type metadata for ObservationGraphMutation;
  v64 = &protocol witness table for ObservationGraphMutation;
  v27 = swift_allocObject();
  v60 = v27;
  v27[2] = a3;
  v27[3] = a4;
  v27[4] = a5;
  v27[5] = a6;
  swift_beginAccess();
  v28 = static AsyncTransaction.nextTraceID;

  atomic_fetch_add_explicit(&static AsyncTransaction.nextTraceID, 2u, memory_order_relaxed);
  swift_endAccess();
  outlined init with copy of AnyTrackedValue(&v60, v59);
  v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v31 = v29[2];
  v30 = v29[3];
  v32 = v31 + 1;
  if (v31 >= v30 >> 1)
  {
    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), (v31 + 1), 1, v29);
  }

  __swift_destroy_boxed_opaque_existential_1(&v60);
  v33 = __swift_mutable_project_boxed_opaque_existential_1(v59, v59[3]);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = &v51 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v37 + 16))(v36, v34);
  v38 = *v36;
  v57 = &type metadata for ObservationGraphMutation;
  v58 = &protocol witness table for ObservationGraphMutation;
  v39 = swift_allocObject();
  *&v56 = v39;
  *(v39 + 16) = v38;
  *(v39 + 24) = *(v36 + 1);
  *(v39 + 32) = *(v36 + 1);
  v29[2] = v32;
  outlined init with take of AnyTrackedValue(&v56, &v29[5 * v31 + 4]);
  __swift_destroy_boxed_opaque_existential_1(v59);
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
  {
    __break(1u);
  }

  else
  {
    v32 = ((v28 >> 1) + 1);
    if (*(static CustomEventTrace.enabledCategories + 116) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 20820;
      LODWORD(v60) = (v28 >> 1) + 1;
      AGGraphAddTraceEvent();
    }

    swift_beginAccess();
    v31 = *(v9 + 144);

    v40 = swift_isUniquelyReferenced_nonNull_native();
    *(v9 + 144) = v31;
    if (v40)
    {
      goto LABEL_38;
    }
  }

  v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
  *(v9 + 144) = v31;
LABEL_38:
  v42 = *(v31 + 2);
  v41 = *(v31 + 3);
  if (v42 >= v41 >> 1)
  {
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v31);
  }

  *(v31 + 2) = v42 + 1;
  v43 = &v31[24 * v42];
  *(v43 + 4) = a1;
  *(v43 + 10) = v55;
  *(v43 + 11) = v32;
  *(v43 + 6) = v29;
  *(v9 + 144) = v31;
  swift_endAccess();

  v17 = v54;
LABEL_49:
  _MovableLockUnlock(v17);
  return v32;
}

uint64_t sub_18D156670()
{

  return swift_deallocObject();
}

uint64_t *initializeWithCopy for ObservationGraphMutation(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs10AnyKeyPathC_Tt1g5Tm(uint64_t a1, uint64_t a2)
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

  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void), __n128 q0_0)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a2;
    v7 = a1;
    v8 = *v6;
    v9 = *v6 >> 62;
    v14 = a3;
    if (!v9)
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = __CocoaSet.count.getter();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v5, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v7 - v5;
  if (__OFSUB__(0, v5 - v7))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v12 = __CocoaSet.count.getter();
  }

  else
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (v13)
  {
    goto LABEL_18;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1, q0_0);

  return v14(v7, v5, 0);
}

uint64_t specialized Array._customRemoveLast()@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v5 = *(v3 + 16);
    if (v5)
    {
LABEL_3:
      v6 = v5 - 1;
      v7 = (v3 + 24 * v5);
      v8 = v7[3];
      *a1 = v7[1];
      a1[1] = v7[2];
      a1[2] = v8;
      *(v3 + 16) = v6;
      *v1 = v3;
      return result;
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

uint64_t *specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{

  return specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(a1, a2, a3, a4, a5, specialized AsyncTransaction.append<A>(_:), &type metadata for InvalidatingGraphMutation, &protocol witness table for InvalidatingGraphMutation);
}

Swift::Void __swiftcall ViewGraphHost.LayoutInvalidator.invalidate()()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 8);
    v4 = _threadTransactionID();
    specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(0, v4, v3, 1, 0);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v2 + 208);
      ObjectType = swift_getObjectType();
      (*(v5 + 24))(ObjectType, v5, 0.0);
      swift_unknownObjectRelease();
    }
  }
}

void *assignWithCopy for SafeAreaInsets(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];

  return a1;
}

uint64_t AnchorBox.__deallocating_deinit()
{
  (*(*(*(*v0 + 104) - 8) + 8))(v0 + *(*v0 + 120));

  return swift_deallocClassInstance();
}

uint64_t *assignWithCopy for _EnvironmentKeyTransformModifier(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  v4 = a2[2];
  a1[1] = a2[1];
  a1[2] = v4;

  return a1;
}

uint64_t destroy for DynamicViewList.WrappedList(void *a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v3 = (a1 + 47) & 0xFFFFFFFFFFFFFFF8;

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  v7 = v3 + v6 + 8;
  v10 = v5;
  result = (*(v5 + 48))(v7 & ~v6, 1, AssociatedTypeWitness);
  if (!result)
  {
    v9 = *(v10 + 8);

    return v9(v7 & ~v6, AssociatedTypeWitness);
  }

  return result;
}

uint64_t DynamicViewList.Item.matches(type:id:)(uint64_t a1)
{
  if (*(v1 + 32) == a1)
  {
    swift_getAssociatedTypeWitness();
    type metadata accessor for Optional();
    _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in implicit closure #1 in DynamicViewList.Item.matches(type:id:), v1, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v3, &v5);
    v2 = (v5 == 2) | v5;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t closure #1 in implicit closure #1 in DynamicViewList.Item.matches(type:id:)@<X0>(_BYTE *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  *a3 = result & 1;
  return result;
}

uint64_t destroy for ObservationEntry(void *a1)
{
  swift_unknownObjectRelease();
}

uint64_t partial apply for closure #1 in StatefulRule<>.update<A>(to:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 48);
  v7 = *(v3 - 8);
  (*(v7 + 8))(a1, v3);
  v5 = *(v7 + 16);

  return v5(a1, v4, v3);
}

uint64_t *specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(unint64_t a1, int a2, uint64_t a3, char a4, char *a5, void (*a6)(uint64_t), char *a7, uint64_t a8)
{
  v52 = a8;
  v11 = v8;
  v62 = *MEMORY[0x1E69E9840];
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v17 = static Update._lock;
  _MovableLockLock(static Update._lock);
  swift_beginAccess();
  if (!*(v11 + 16))
  {
    goto LABEL_48;
  }

  v51 = v17;
  v18 = (a4 & 1) != 0 || AGGraphGetCounter() != 0;
  swift_beginAccess();
  *(v11 + 168) &= a5 & 1;
  v19 = swift_beginAccess();
  v20 = *(v11 + 144);
  v21 = *(v20 + 2);
  if (v21)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v11 + 144) = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
      *(v11 + 144) = v20;
    }

    if (v21 > *(v20 + 2))
    {
      __break(1u);
LABEL_53:
      swift_once();
LABEL_16:
      if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
      {
        __break(1u);
      }

      else
      {
        if (*(static CustomEventTrace.enabledCategories + 116) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16724;
          LODWORD(v56[0]) = v21;
          AGGraphAddTraceEvent();
        }

        *(v11 + 144) = v20;
        swift_endAccess();
        if (v18)
        {
LABEL_46:
          v45 = *(v11 + 144);
          v46 = *(v45 + 16);
          v17 = v51;
          if (v46)
          {
            v32 = *(v45 + 24 * v46 + 20);
            goto LABEL_49;
          }

LABEL_48:
          v32 = 0;
          goto LABEL_49;
        }

        swift_beginAccess();
        if (*(v20 + 2))
        {
          specialized Array._customRemoveLast()(&v57);
          a2 = v58;
          v18 = v59;
          a1 = v57;
          if (v59)
          {
            v21 = HIDWORD(v58);
          }

          else
          {
            outlined consume of AsyncTransaction?(v57, v58, 0);
            specialized Array.remove(at:)(*(*(v11 + 144) + 16) - 1, &v57);
            a1 = v57;
            a2 = v58;
            LODWORD(v21) = HIDWORD(v58);
            v18 = v59;
          }

          swift_endAccess();
          GraphHost.flushTransactions()();
          swift_beginAccess();
          a5 = *(v11 + 144);

          v41 = swift_isUniquelyReferenced_nonNull_native();
          *(v11 + 144) = a5;
          if (v41)
          {
LABEL_43:
            v43 = *(a5 + 2);
            v42 = *(a5 + 3);
            if (v43 >= v42 >> 1)
            {
              a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, a5);
            }

            *(a5 + 2) = v43 + 1;
            v44 = &a5[24 * v43];
            *(v44 + 4) = a1;
            *(v44 + 10) = a2;
            *(v44 + 11) = v21;
            *(v44 + 6) = v18;
            *(v11 + 144) = a5;
            swift_endAccess();

            goto LABEL_46;
          }

LABEL_56:
          a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a5 + 2) + 1, 1, a5);
          *(v11 + 144) = a5;
          goto LABEL_43;
        }
      }

      __break(1u);
      goto LABEL_56;
    }

    v21 = &v20[24 * v21];
    if (*(v21 + 16) == a2)
    {
      v23 = *(v21 + 8);
      if (v23)
      {
        if (a1)
        {
          v56[0] = MEMORY[0x1E69E7CC0];

          v49 = compareLists(_:_:ignoredTypes:)(v23, a1, v56);
          v48 = v56[0];

          if (v49)
          {
LABEL_15:
            a5 = (v21 + 8);
            a6(a3);
            LODWORD(v21) = *(v21 + 20);
            if (one-time initialization token for enabledCategories == -1)
            {
              goto LABEL_16;
            }

            goto LABEL_53;
          }
        }
      }

      else if (!a1)
      {
        goto LABEL_15;
      }
    }

    *(v11 + 144) = v20;
    swift_endAccess();
    if (!v18)
    {
      GraphHost.flushTransactions()();
    }
  }

  else if ((*(*v11 + 192))(v19))
  {
    v25 = v24;
    ObjectType = swift_getObjectType();
    (*(v25 + 32))(ObjectType, v25);
    swift_unknownObjectRelease();
  }

  v60 = a7;
  v61 = v52;
  v57 = a3;
  swift_beginAccess();
  v27 = static AsyncTransaction.nextTraceID;

  atomic_fetch_add_explicit(&static AsyncTransaction.nextTraceID, 2u, memory_order_relaxed);
  swift_endAccess();
  outlined init with copy of AnyTrackedValue(&v57, v56);
  v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v30 = v28[2];
  v29 = v28[3];
  v50 = a2;
  if (v30 >= v29 >> 1)
  {
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v28);
  }

  __swift_destroy_boxed_opaque_existential_1(&v57);
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v56, v56[3]);
  v32 = &v48;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = (&v48 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v36 + 16))(v35, v33);
  v54 = a7;
  v55 = v52;
  *&v53 = *v35;
  v28[2] = v30 + 1;
  outlined init with take of AnyTrackedValue(&v53, &v28[5 * v30 + 4]);
  __swift_destroy_boxed_opaque_existential_1(v56);
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
  {
    __break(1u);
  }

  else
  {
    v32 = ((v27 >> 1) + 1);
    if (*(static CustomEventTrace.enabledCategories + 116) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 20820;
      LODWORD(v57) = (v27 >> 1) + 1;
      AGGraphAddTraceEvent();
    }

    swift_beginAccess();
    a7 = *(v11 + 144);

    v37 = swift_isUniquelyReferenced_nonNull_native();
    *(v11 + 144) = a7;
    if (v37)
    {
      goto LABEL_38;
    }
  }

  a7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a7 + 2) + 1, 1, a7);
  *(v11 + 144) = a7;
LABEL_38:
  v39 = *(a7 + 2);
  v38 = *(a7 + 3);
  if (v39 >= v38 >> 1)
  {
    a7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, a7);
  }

  *(a7 + 2) = v39 + 1;
  v40 = &a7[24 * v39];
  *(v40 + 4) = a1;
  *(v40 + 10) = v50;
  *(v40 + 11) = v32;
  *(v40 + 6) = v28;
  *(v11 + 144) = a7;
  swift_endAccess();

  v17 = v51;
LABEL_49:
  _MovableLockUnlock(v17);
  return v32;
}

void partial apply for closure #1 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 32);
  v7 = *(v4 + 48);
  v8 = *(v4 + 64);
  v9 = *(v4 + 72);
  v10 = *(v4 + 80);
  v14 = *(v4 + 56);
  v15 = v8;
  v12 = v9;
  v13 = v10;
  v11 = type metadata accessor for ViewLayoutEngine(0, v5, v6, a4);
  ViewLayoutEngine.update(layout:context:children:)(v7, &v14, &v12, v11);
}

uint64_t LayoutComputer.withMutableEngine<A, B>(type:do:)(uint64_t IsOwner)
{
  v2 = *v1;
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    IsOwner = swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  IsOwner = _MovableLockIsOwner(static Update._lock);
  if ((IsOwner & 1) == 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_7:
    v3 = MEMORY[0x1EEE9AC00](IsOwner);
    return (*(*v2 + 80))(v4, partial apply for closure #1 in LayoutComputer.withMutableEngine<A, B>(type:do:), v3);
  }

  return result;
}

uint64_t protocol witness for GraphMutation.apply() in conformance InvalidatingGraphMutation()
{
  result = AGWeakAttributeGetAttribute();
  if (result != *MEMORY[0x1E698D3F8])
  {

    return AGGraphInvalidateValue();
  }

  return result;
}

void *partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:)(void *a1)
{
  return memcpy(a1, *(v1 + 16), 0x221uLL);
}

{
  return memcpy(a1, *(v1 + 16), 0x261uLL);
}

{
  return memcpy(a1, *(v1 + 16), 0x201uLL);
}

{
  return memcpy(a1, *(v1 + 16), 0x1F9uLL);
}

{
  return memcpy(a1, *(v1 + 16), 0x199uLL);
}

{
  return memcpy(a1, *(v1 + 16), 0x229uLL);
}

double closure #3 in closure #1 in PlatformViewChild.updateValue()(int a1, int a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  if ((a1 | a2) & 1) != 0 && (a3)
  {
    v14[0] = a5;
    v14[1] = 0;
    v13 = a7;
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = *(AssociatedConformanceWitness + 72);

    v11 = swift_checkMetadataState();
    v10(v14, &v13, v11, AssociatedConformanceWitness);
  }

  return result;
}

uint64_t MaterialBackdropProxy.Storage.__deallocating_deinit()
{
  outlined destroy of GlassContainer.TranslationKick(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t LocalizedTextStorage.__deallocating_deinit()
{

  v1 = *(v0 + 64);

  return swift_deallocClassInstance();
}

void ViewGraph.removePreferenceOutlets(isInvalidating:)(int a1)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = *(v1 + 448);
    v6 = *(v5 + 16);
    if (v6)
    {
      v22 = a1;
      v21 = v1;

      swift_beginAccess();
      swift_beginAccess();
      v7 = 0;
      v8 = *MEMORY[0x1E698D3F8];
      v23 = *MEMORY[0x1E698D3F8];
      while (v7 < *(v5 + 16))
      {
        v9 = v5 + 32 + 24 * v7;
        v10 = *v9;
        v11 = *(v9 + 8);
        v12 = *(v9 + 16);
        if (swift_weakLoadStrong())
        {
          v13 = *(v4 + 72);
          v14 = *(v13 + 16);
          if (v14)
          {
            v15 = v13 + 48;
            while (*(v15 - 16) != v10)
            {
              v15 += 24;
              if (!--v14)
              {
                goto LABEL_4;
              }
            }

            Attribute = AGWeakAttributeGetAttribute();
            if (Attribute != v8)
            {
              v25 = &v21;
              v26 = 0;
              MEMORY[0x1EEE9AC00](Attribute);
              v24 = v17;
              v19 = type metadata accessor for PreferenceCombiner(0, v10, v11, v18);
              MEMORY[0x1EEE9AC00](v19);
              v8 = v23;
              AGGraphMutateAttribute();
              if (v26 == 1)
              {
                v26 = v22 & 1;
                if (v22)
                {
                  v20 = 0;
                }

                else
                {
                  v20 = v12;
                }

                GraphHost.graphInvalidation(from:)(v20 | ((v22 & 1) << 32));
              }
            }
          }

LABEL_4:
        }

        if (++v7 == v6)
        {

          v1 = v21;
          LOBYTE(a1) = v22;
          goto LABEL_20;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_20:
      *(v1 + 448) = MEMORY[0x1E69E7CC0];

      swift_beginAccess();
      PreferenceBridge.removeHostValues(for:isInvalidating:)(*(v1 + 56), a1 & 1);
      PreferenceBridge.removeChild(_:)(v1);
    }
  }
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
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
    type metadata accessor for DisplayList.ArchiveIDs?(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
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
    type metadata accessor for DisplayList.ArchiveIDs?(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

uint64_t storeEnumTagSinglePayload for CGRect(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CGRect(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t ViewGraph.deinit()
{
  ViewGraph.removePreferenceOutlets(isInvalidating:)(1);
  swift_beginAccess();
  v10 = *(v0 + 216);
  v11 = *(v0 + 224);
  UnsafeHeterogeneousBuffer.destroy()();
  swift_endAccess();
  GraphHost.invalidate()();
  if (one-time initialization token for blockedGraphHosts != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  v1 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(&blockedGraphHosts, v0);

  v2 = *(blockedGraphHosts._rawValue + 2);
  if (v2 < v1)
  {
    __break(1u);
    result = swift_endAccess();
    __break(1u);
  }

  else
  {
    specialized Array.replaceSubrange<A>(_:with:)(v1, v2);
    swift_endAccess();
    v3 = *(v0 + 96);
    v8[4] = *(v0 + 80);
    v8[5] = v3;
    v9 = *(v0 + 112);
    v4 = *(v0 + 32);
    v8[0] = *(v0 + 16);
    v8[1] = v4;
    v5 = *(v0 + 64);
    v8[2] = *(v0 + 48);
    v8[3] = v5;
    outlined destroy of GraphHost.Data(v8);

    outlined destroy of weak ViewGraphDelegate?(v0 + 200, v6);

    swift_weakDestroy();

    return v0;
  }

  return result;
}

uint64_t ViewGraph.__deallocating_deinit()
{
  ViewGraph.deinit();

  return swift_deallocClassInstance();
}

uint64_t static ViewGraphFeatureBuffer._VTable.deinitialize(elt:)()
{
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();

  return UnsafeMutablePointer.deinitialize(count:)();
}

Swift::Void __swiftcall GraphHost.invalidate()()
{
  v1 = v0;
  swift_beginAccess();
  if (*(v0 + 128) == 1)
  {
    swift_beginAccess();
    v2 = *(v0 + 24);
    AGSubgraphRef.willInvalidate(isInserted:)(0);

    *(v1 + 128) = 0;
  }

  swift_beginAccess();
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v3;
    specialized static Update.begin()();
    AGSubgraphInvalidate();
    AGGraphSetContext();
    AGGraphInvalidate();
    *(v1 + 16) = 0;

    static Update.end()();
  }

  swift_endAccess();
}

double destroy for _SafeAreaInsetsModifier(void *a1)
{

  if (a1[1] != 1)
  {
  }

  return result;
}

unint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(char **a1, uint64_t a2)
{
  v5 = *a1;
  result = *(*a1 + 2);
  if (result)
  {
    v7 = 0;
    v8 = -40;
    while (*&v5[8 * v7 + 32] != a2)
    {
      ++v7;
      v8 -= 8;
      if (result == v7)
      {
        return result;
      }
    }

    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_21;
    }

    v3 = a2;
    v2 = a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v10 = *(v5 + 2);
      if (v9 == v10)
      {
        break;
      }

      v11 = v5 + 32;
      v12 = &v5[-v8];
      while (v9 < v10)
      {
        if (*v12 != v3)
        {
          if (v9 != v7)
          {
            if (v7 >= v10)
            {
              goto LABEL_20;
            }

            v13 = *&v11[8 * v7];
            *&v11[8 * v7] = *v12;
            *v12 = v13;
            v10 = *(v5 + 2);
          }

          ++v7;
        }

        ++v9;
        v12 += 8;
        if (v9 == v10)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    }

LABEL_9:
    *v2 = v5;
    return v7;
  }

  return result;
}

uint64_t specialized ViewGraphHost.tearDown(delegate:)()
{
  ViewGraphRootValueUpdater.invalidate()();
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v0 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  ViewGraph.setPreferenceBridge(to:isInvalidating:)(0, 0);
  GraphHost.invalidate()();
  static Update.end()();

  return _MovableLockUnlock(v0);
}

Swift::Void __swiftcall ViewGraphRootValueUpdater.invalidate()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v71 = *MEMORY[0x1E69E9840];
  v55 = type metadata accessor for OSSignpostID();
  v6 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v56 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v47 - v9;
  v11 = type metadata accessor for CustomAttributeWriter(0, &lazy cache variable for type metadata for ViewGraphOwner, &protocol descriptor for ViewGraphOwner, 0);
  (*(*(v4 + 8) + 16))(&v65, v11, v11, v5);
  if (v65)
  {
    v12 = *(&v65 + 1);
    ObjectType = swift_getObjectType();
    v14 = (*(v12 + 8))(ObjectType, v12);
    swift_unknownObjectRelease();
    swift_beginAccess();
    *(v14 + 208) = 0;
    v48 = v14;
    swift_unknownObjectWeakAssign();
    if (one-time initialization token for viewHost != -1)
    {
      goto LABEL_40;
    }

    while (1)
    {
      v15 = static Signpost.viewHost;
      v16 = word_1ED53C1D0;
      v17 = HIBYTE(word_1ED53C1D0);
      v18 = byte_1ED53C1D2;
      v19 = static os_signpost_type_t.event.getter();
      v65 = v15;
      v66 = v16;
      v67 = v17;
      v68 = v18;
      if ((Signpost.isEnabled.getter() & 1) == 0)
      {

        return;
      }

      v20 = one-time initialization token for _signpostLog;
      swift_unknownObjectRetain();
      if (v20 != -1)
      {
        swift_once();
      }

      v21 = _signpostLog;
      v47 = v10;
      OSSignpostID.init(log:object:)();
      _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_5(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v10 = swift_allocObject();
      *(v10 + 1) = xmmword_18DDAB4C0;
      v22 = v48;
      swift_beginAccess();
      if (!*(v22 + 16))
      {
        __break(1u);
        return;
      }

      Counter = AGGraphGetCounter();
      v24 = MEMORY[0x1E69E6810];
      v25 = MEMORY[0x1E69E6870];
      *(v10 + 7) = MEMORY[0x1E69E6810];
      *(v10 + 8) = v25;
      *(v10 + 4) = Counter;
      *(v10 + 12) = v24;
      *(v10 + 13) = v25;
      *(v10 + 9) = v3;
      if (v17)
      {
        break;
      }

      if (v15 == 20)
      {
        v27 = 3;
      }

      else
      {
        v27 = 4;
      }

      v28 = bswap32(v15) | (4 * WORD1(v15));
      v29 = v19;
      v49 = *(v6 + 16);
      v30 = v49(v56, v47, v55);
      v31 = 0;
      LOBYTE(v60[0]) = 1;
      v58 = v27;
      v53 = 16 * v27;
      v51 = v6 + 16;
      v54 = (v6 + 8);
      v52 = v10 + 32;
      v50 = v15;
LABEL_14:
      v57 = &v47;
      MEMORY[0x1EEE9AC00](v30);
      v3 = &v47 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
      v33 = v3 + 8;
      v34 = v58;
      v35 = v3 + 8;
      do
      {
        *(v35 - 1) = 0;
        *v35 = 0;
        v35 += 16;
        --v34;
      }

      while (v34);
      v36 = &v52[40 * v31];
      v6 = v58;
      while (1)
      {
        v37 = *(v10 + 2);
        if (v31 == v37)
        {
          LOBYTE(v60[0]) = 0;
LABEL_22:
          v41 = v50;
          if (v50 == 20)
          {
            OSSignpostID.rawValue.getter();
          }

          kdebug_trace();
          if (v3[8] == 1)
          {
            kdebug_trace_string();
          }

          if (v3[24] == 1)
          {
            kdebug_trace_string();
          }

          if (v3[40] == 1)
          {
            kdebug_trace_string();
          }

          if (v41 != 20 && v3[56] == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v42 = *v54;
          v43 = v56;
          v44 = v55;
          (*v54)(v56, v55);
          v45 = __swift_project_value_buffer(v44, static OSSignpostID.continuation);
          v30 = v49(v43, v45, v44);
          if ((v60[0] & 1) == 0)
          {

            v46 = v55;
            v42(v56, v55);
            v42(v47, v46);
            goto LABEL_37;
          }

          goto LABEL_14;
        }

        if (v31 >= v37)
        {
          break;
        }

        ++v31;
        outlined init with copy of AnyTrackedValue(v36, &v65);
        v38 = v69;
        v39 = v70;
        __swift_project_boxed_opaque_existential_1(&v65, v69);
        *(v33 - 1) = CVarArg.kdebugValue(_:)(v28 | v29, v38, v39);
        *v33 = v40 & 1;
        v33 += 16;
        __swift_destroy_boxed_opaque_existential_1(&v65);
        v36 += 40;
        if (!--v6)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_40:
      swift_once();
    }

    v64 = v19;
    v62 = v21;
    v63 = &dword_18D018000;
    v65 = v15;
    v66 = v16;
    v60[0] = "ViewHost: (%p) invalidated PlatformHost [ %p ]";
    v60[1] = 46;
    v61 = 2;
    v59 = v10;
    v26 = v47;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v64, &v63, &v62, &v65, v47, v60, &v59);

    (*(v6 + 8))(v26, v55);
LABEL_37:
  }
}

uint64_t ViewGraphHost.tearDown(delegate:)()
{
  swift_getObjectType();

  return specialized ViewGraphHost.tearDown(delegate:)();
}

void ViewGraph.setPreferenceBridge(to:isInvalidating:)(uint64_t a1, char a2)
{
  v3 = v2;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;

    if (v7 == a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  ViewGraph.removePreferenceOutlets(isInvalidating:)(a2 & 1);
  swift_weakAssign();
  swift_beginAccess();
  if (*(v3 + 128) == 1)
  {
    GraphHost.uninstantiate(immediately:)(a2 & 1);
  }

  swift_weakAssign();
  if (swift_weakLoadStrong())
  {
    PreferenceBridge.addChild(_:)(v3);
  }

  GraphHost.updateRemovedState()();
}

uint64_t ViewGraphHost.deinit()
{
  outlined destroy of weak GestureGraphDelegate?(v0 + 16);
  outlined destroy of weak GestureGraphDelegate?(v0 + 32);
  outlined destroy of weak GestureGraphDelegate?(v0 + 48);
  outlined consume of EnvironmentValues?(*(v0 + 72), *(v0 + 80));

  return v0;
}

uint64_t ViewGraphHost.__deallocating_deinit()
{
  ViewGraphHost.deinit();

  return swift_deallocClassInstance();
}

uint64_t DisplayList.ViewRenderer.__deallocating_deinit()
{

  outlined destroy of weak GestureGraphDelegate?(v0 + 56);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

BOOL ViewGraphHostEnvironmentWrapper.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v14);
  if (!v15)
  {
    outlined destroy of Any?(v14);
    return 0;
  }

  type metadata accessor for ViewGraphHostEnvironmentWrapper();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v2 = v13;
  v3 = OBJC_IVAR____TtC7SwiftUI31ViewGraphHostEnvironmentWrapper_phase;
  swift_beginAccess();
  LODWORD(v3) = *(v1 + v3);
  v4 = OBJC_IVAR____TtC7SwiftUI31ViewGraphHostEnvironmentWrapper_phase;
  swift_beginAccess();
  if (v3 != *&v13[v4])
  {
    goto LABEL_8;
  }

  v5 = OBJC_IVAR____TtC7SwiftUI31ViewGraphHostEnvironmentWrapper_environment;
  swift_beginAccess();
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtC7SwiftUI31ViewGraphHostEnvironmentWrapper_environment;
  swift_beginAccess();
  v8 = *&v13[v7];
  if (!v6)
  {

    return v8 == 0;
  }

  if (!v8)
  {
LABEL_8:

    return 0;
  }

  v12 = MEMORY[0x1E69E7CC0];
  swift_retain_n();
  v9 = swift_retain_n();
  v10 = compareLists(_:_:ignoredTypes:)(v9, v8, &v12);

  return v10;
}

BOOL compareLists(_:_:ignoredTypes:)(unint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v3 = a2;
  v4 = a1;
  if (a1 == a2)
  {
    return 1;
  }

  while (1)
  {
    if (((*(*v4 + 208))(v3, a3) & 1) == 0)
    {
      return 0;
    }

    v6 = *(v4 + 24);
    v7 = *(v3 + 24);
    if (v6)
    {
      if (!v7 || !compareLists(_:_:ignoredTypes:)(v6, v7, a3))
      {
        return 0;
      }
    }

    else if (v7)
    {
      return 0;
    }

    v4 = *(v4 + 32);
    v3 = *(v3 + 32);
    if (!v4 || !v3)
    {
      break;
    }

    if (v4 == v3)
    {
      return 1;
    }
  }

  return (v4 | v3) == 0;
}

uint64_t assignWithTake for DisplayList.ViewUpdater.ViewInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  swift_unknownObjectRelease();
  v4 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);
  swift_unknownObjectRelease();
  v5 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v5;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 113) = *(a2 + 113);
  *(a1 + 120) = *(a2 + 120);
  return a1;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA024TypesettingConfigurationF0VG_Tt2g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TypesettingConfigurationKey>, &type metadata for TypesettingConfigurationKey, &protocol witness table for TypesettingConfigurationKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v4);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA024TypesettingConfigurationV0VG_Tt0B5(a1, v9);
  if (v5)
  {
    v6 = v5 + *(*v5 + 248);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for TypesettingConfiguration(0);
    v6 = __swift_project_value_buffer(v7, static TypesettingConfigurationKey.defaultValue);
  }

  return _s7SwiftUI24TypesettingConfigurationVWOcTm_0(v6, a2, type metadata accessor for TypesettingConfiguration);
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA024TypesettingConfigurationV0VG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA024TypesettingConfigurationV0VG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TypesettingConfigurationKey>, &type metadata for TypesettingConfigurationKey, &protocol witness table for TypesettingConfigurationKey, type metadata accessor for EnvironmentPropertyKey);
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

uint64_t *DisplayList.Index.skip(item:)(uint64_t *result)
{
  if (*(result + 18))
  {
    return result;
  }

  v3 = result[5];
  v2 = result[6];
  v4 = result[7];
  v5 = result[8];
  v6 = *v1;
  v7 = v1[1] + 1;
  v1[1] = v7;
  v8 = *(v1 + 1);
  v9 = *(v1 + 16);
  *(v1 + 16) = 0;
  if ((v5 >> 30) - 2 >= 2)
  {
    if (v5 >> 30)
    {
      v28 = v9;
      v12 = v8;
      v20 = *(v4 + 16);
      if (v20)
      {
        outlined copy of DisplayList.Effect(v3, v2, SBYTE4(v2));

        v21 = *(v4 + 80);
        v31 = *(v4 + 64);
        v32[0] = v21;
        *(v32 + 12) = *(v4 + 92);
        v22 = *(v4 + 48);
        v29 = *(v4 + 32);
        v30 = v22;
        DisplayList.Index.skip(item:)(&v29);
        v23 = v20 - 1;
        if (v20 != 1)
        {
          v24 = (v4 + 112);
          do
          {
            v25 = v24[3];
            v31 = v24[2];
            v32[0] = v25;
            *(v32 + 12) = *(v24 + 60);
            v27 = *v24;
            v26 = v24[1];
            v24 += 5;
            v29 = v27;
            v30 = v26;
            DisplayList.Index.skip(item:)(&v29);
            --v23;
          }

          while (v23);
        }
      }

      else
      {
        outlined copy of DisplayList.Effect(v3, v2, SBYTE4(v2));
      }

      *&v29 = v3;
      DWORD2(v29) = v2;
      BYTE12(v29) = BYTE4(v2);
      DisplayList.Index.skip(effect:)(&v29);
      outlined consume of DisplayList.Effect(v3, v2, SBYTE4(v2));
      goto LABEL_17;
    }

    if (v3 >> 60 == 11)
    {
      v10 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v11 = *(v10 + 16);
      if (v11)
      {
        v28 = v9;
        v12 = v8;
        outlined copy of DisplayList.Content.Value(v3);
        v13 = *(v10 + 80);
        v31 = *(v10 + 64);
        v32[0] = v13;
        *(v32 + 12) = *(v10 + 92);
        v14 = *(v10 + 48);
        v29 = *(v10 + 32);
        v30 = v14;
        DisplayList.Index.skip(item:)(&v29);
        v15 = v11 - 1;
        if (v15)
        {
          v16 = (v10 + 112);
          do
          {
            v17 = v16[3];
            v31 = v16[2];
            v32[0] = v17;
            *(v32 + 12) = *(v16 + 60);
            v19 = *v16;
            v18 = v16[1];
            v16 += 5;
            v29 = v19;
            v30 = v18;
            DisplayList.Index.skip(item:)(&v29);
            --v15;
          }

          while (v15);
        }

        outlined consume of DisplayList.Item.Value(v3, v2, v4, v5);
LABEL_17:
        v8 = v12;
        v9 = v28;
      }
    }
  }

  return $defer #1 () in DisplayList.Index.skip(item:)(v1, v6 | (v7 << 32), v8, v9);
}

uint64_t TypedElement.matches(_:ignoredTypes:)(uint64_t a1, char **a2)
{
  v3 = v2;
  v5 = *v2;
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = *(v5 + 232);
    v8 = *a2;
    v9 = *(*a2 + 2);
    v10 = 32;
    while (v9)
    {
      v11 = *&v8[v10];
      v10 += 8;
      --v9;
      if (v11 == v7)
      {
        return 1;
      }
    }

    v20 = a2;
    v14 = v5 + 240;
    v12 = *(v5 + 240);
    v13 = *(v14 + 8);
    v15 = *(*result + 248);
    v16 = *(v12 + 24);
    v17 = result;

    if (v16(&v3[v13], v17 + v15, v7, v12))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      }

      v19 = *(v8 + 2);
      v18 = *(v8 + 3);
      if (v19 >= v18 >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v8);
      }

      *(v8 + 2) = v19 + 1;
      *&v8[8 * v19 + 32] = v7;
      *v20 = v8;
      return 1;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t *StatefulMaterialProviderBox.deinit()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  (*(*(v2 - 8) + 8))(v0 + *(*v0 + 216), v2);
  type metadata accessor for StatefulMaterialProviderBox.Cache(255, v2, *(v1 + 208), v3);
  type metadata accessor for Optional();
  type metadata accessor for Mutex();
  type metadata accessor for _Cell();
  UnsafeMutablePointer.deinitialize(count:)();
  return v0;
}

uint64_t StatefulMaterialProviderBox.__deallocating_deinit()
{
  StatefulMaterialProviderBox.deinit();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for StatefulMaterialProviderBox.Cache(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_25:
    v16 = *(v6 + 48);

    return v16(a1);
  }

  v8 = ((*(*(AssociatedTypeWitness - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v10 = 2;
  }

  else
  {
    v10 = a2 - v7 + 1;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *(a1 + v8);
      if (!v13)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *(a1 + v8);
      if (!v13)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v12 || (v13 = *(a1 + v8)) == 0)
  {
LABEL_24:
    if (v7)
    {
      goto LABEL_25;
    }

    return 0;
  }

  v14 = v13 - 1;
  if (v9)
  {
    v14 = 0;
    LODWORD(v9) = *a1;
  }

  return v7 + (v9 | v14) + 1;
}

BOOL protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance AccentColorKey(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = (v2 | *a2) == 0;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return v4;
  }

  if (v2 == v3)
  {
    return 1;
  }

  return (*(*v2 + 88))() & 1;
}

uint64_t protocol witness for static TransactionKey._valuesEqual(_:_:) in conformance AnimationFrameIntervalKey(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = *(a2 + 8);
  if ((v3 & 1) == 0)
  {
    return (*a1 == *a2) & ~result;
  }

  return result;
}

void closure #1 in closure #1 in closure #6 in closure #1 in PlatformViewChild.updateValue()(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  outlined copy of RepresentableContextValues.EnvironmentStorage(v3, v4, v5);
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA04TintS033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TintKey>, &type metadata for TintKey, &protocol witness table for TintKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA04TintV033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA04TintV033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA04TintV033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TintKey>, &type metadata for TintKey, &protocol witness table for TintKey, type metadata accessor for EnvironmentPropertyKey);
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

Swift::Void __swiftcall PlatformViewChild.updateValue()()
{
  v2 = v1;
  v3 = v0;
  v79 = *MEMORY[0x1E69E9840];
  v65 = type metadata accessor for OSSignpostID();
  v4 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v66 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v48 - v7;
  if (one-time initialization token for platformUpdate != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v10 = *(&static Signpost.platformUpdate + 1);
    v9 = static Signpost.platformUpdate;
    v11 = word_1ED529260;
    v12 = HIBYTE(word_1ED529260);
    v74 = static Signpost.platformUpdate;
    v75 = word_1ED529260;
    v76 = byte_1ED529262;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      v28 = *(v3 + 16);
      v29 = *(v3 + 24);

      closure #1 in PlatformViewChild.updateValue()(v2, v28, v29, v13);
      return;
    }

    v57 = v12;
    v56 = v11;
    static OSSignpostID.exclusive.getter();
    v14 = static os_signpost_type_t.begin.getter();
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
    {
      __break(1u);
    }

    else
    {
      v52 = v10;
      v54 = v9;
      v16 = AGGraphGetAttributeGraph();
      v55 = v2;
      v17 = v16;
      Counter = AGGraphGetCounter();

      v19 = MEMORY[0x1E69E6810];
      v20 = v3;
      v21 = MEMORY[0x1E69E6870];
      *(v15 + 56) = MEMORY[0x1E69E6810];
      *(v15 + 64) = v21;
      *(v15 + 32) = Counter;
      v51 = *(v20 + 16);
      v22 = _typeName(_:qualified:)();
      v24 = v23;
      *(v15 + 96) = MEMORY[0x1E69E6158];
      lazy protocol witness table accessor for type String and conformance String();
      *(v15 + 72) = v22;
      *(v15 + 80) = v24;
      v9 = v55;
      v53 = v20;
      v25 = *(v55 + *(v20 + 80));
      *(v15 + 136) = v19;
      *(v15 + 144) = v21;
      *(v15 + 104) = v26;
      *(v15 + 112) = v25;
      if (one-time initialization token for _signpostLog == -1)
      {
        goto LABEL_5;
      }
    }

    swift_once();
LABEL_5:
    if (v57)
    {
      break;
    }

    v48[1] = _signpostLog;
    v30 = v54;
    if (v54 == 20)
    {
      v3 = 3;
    }

    else
    {
      v3 = 4;
    }

    v31 = bswap32(v54) | (4 * WORD1(v54));
    v2 = v14;
    v50 = v4;
    v32 = *(v4 + 16);
    v4 += 16;
    v49 = v8;
    v58 = v32;
    v33 = v32(v66, v8, v65);
    v8 = 0;
    LOBYTE(v69[0]) = 1;
    v63 = 16 * v3;
    v59 = v4;
    v64 = (v4 - 8);
    v61 = v30;
    v62 = v15 + 32;
    v60 = v3;
LABEL_14:
    v67 = v48;
    MEMORY[0x1EEE9AC00](v33);
    v35 = v48 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
    v36 = v35 + 8;
    v37 = v3;
    v38 = v35 + 8;
    do
    {
      *(v38 - 1) = 0;
      *v38 = 0;
      v38 += 16;
      --v37;
    }

    while (v37);
    v39 = v62 + 40 * v8;
    while (1)
    {
      v40 = *(v15 + 16);
      if (v8 == v40)
      {
        LOBYTE(v69[0]) = 0;
LABEL_22:
        v43 = v61;
        if (v61 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v35[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v35[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v35[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v43 != 20 && v35[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v44 = v65;
        v45 = *v64;
        v46 = v66;
        (*v64)(v66, v65);
        v47 = __swift_project_value_buffer(v44, static OSSignpostID.continuation);
        v33 = v58(v46, v47, v44);
        v3 = v60;
        if ((v69[0] & 1) == 0)
        {
          v45(v66, v65);

          v4 = v50;
          v8 = v49;
          v9 = v55;
          goto LABEL_37;
        }

        goto LABEL_14;
      }

      if (v8 >= v40)
      {
        break;
      }

      ++v8;
      outlined init with copy of AnyTrackedValue(v39, &v74);
      v41 = v77;
      v4 = v78;
      __swift_project_boxed_opaque_existential_1(&v74, v77);
      *(v36 - 1) = CVarArg.kdebugValue(_:)(v31 | v2, v41, v4);
      *v36 = v42 & 1;
      v36 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v74);
      v39 += 40;
      if (!--v3)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_42:
    swift_once();
  }

  v73 = v14;
  v71 = _signpostLog;
  v72 = &dword_18D018000;
  *&v74 = v54;
  *(&v74 + 1) = v52;
  LOBYTE(v75) = v56;
  v69[0] = "PlatformUpdate: (%p) %{public}@ [ %p ]";
  v69[1] = 38;
  v70 = 2;
  v68 = v15;
  specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v73, &v72, &v71, &v74, v8, v69, &v68);

LABEL_37:
  closure #1 in PlatformViewChild.updateValue()(v9, v51, *(v53 + 24), v27);
  static os_signpost_type_t.end.getter();
  if (v57)
  {
    os_signpost(_:dso:log:name:signpostID:)();
  }

  else
  {
    OSSignpostID.rawValue.getter();
    kdebug_trace();
  }

  (*(v4 + 8))(v8, v65);
}

uint64_t closure #1 in PlatformViewChild.updateValue()(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v229[2] = *MEMORY[0x1E69E9840];
  v7 = type metadata accessor for ViewLeafView(0, a2, a3, a4);
  v182 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v181 = &v169[-v8];
  v207 = type metadata accessor for ObservationTracking._AccessList();
  v210 = *(v207 - 8);
  MEMORY[0x1EEE9AC00](v207);
  v179 = &v169[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v189 = &v169[-v11];
  MEMORY[0x1EEE9AC00](v12);
  v190 = &v169[-v13];
  MEMORY[0x1EEE9AC00](v14);
  v174 = &v169[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v177 = &v169[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v169[-v19];
  type metadata accessor for ObservationTracking._AccessList?(0);
  v175 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v191 = &v169[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v195 = &v169[-v24];
  MEMORY[0x1EEE9AC00](v25);
  v192 = &v169[-v26];
  MEMORY[0x1EEE9AC00](v27);
  v176 = &v169[-v28];
  MEMORY[0x1EEE9AC00](v29);
  v194 = &v169[-v30];
  MEMORY[0x1EEE9AC00](v31);
  v178 = &v169[-v32];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = type metadata accessor for Optional();
  v214 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v187 = &v169[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v169[-v36];
  v209 = v38;
  v200 = type metadata accessor for UncheckedSendable(0, v38, v39, v40);
  v199 = *(v200 - 8);
  MEMORY[0x1EEE9AC00](v200);
  v216 = &v169[-v41];
  v198 = type metadata accessor for PlatformViewRepresentableContext(0, v5, a3, v42);
  v197 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198);
  v217 = &v169[-v43];
  v44 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v45);
  v193 = &v169[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v169[-v48];
  v219 = a3;
  v51 = type metadata accessor for PlatformViewChild(0, v5, a3, v50);
  Value = AGGraphGetValue();
  v54 = v53;
  v196 = v44;
  v55 = *(v44 + 16);
  v218 = v49;
  v186 = v44 + 16;
  v185 = v55;
  v55(v49, Value, v5);
  v56 = AGGraphGetValue();
  v206 = v57;
  LODWORD(v44) = *v56;
  v58 = AGGraphGetValue();
  v203 = v59;
  v61 = *v58;
  v60 = v58[1];
  LODWORD(v221) = v44;
  v62 = v44 >> 1;
  v63 = *(v51 + 84);
  v64 = v62 == *(a1 + v63);
  v213 = v61;
  v211 = v60;
  v212 = v51;
  if (v64)
  {
  }

  else
  {
    v226 = *(a1 + 40);

    _DynamicPropertyBuffer.reset()();
    PlatformViewChild.resetPlatformView()();
    *(a1 + v63) = v62;
  }

  v65 = v7;
  OutputValue = AGGraphGetOutputValue();
  LODWORD(v180) = OutputValue != 0;
  MEMORY[0x1EEE9AC00](OutputValue);
  v67 = v219;
  *&v169[-32] = v5;
  *&v169[-24] = v67;
  v167 = a1;
  LODWORD(v168) = v221;
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v218, partial apply for closure #1 in closure #1 in PlatformViewChild.updateValue(), &v169[-48], v5, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v68);
  v69 = 1;
  if (v223 & 1) != 0 || !OutputValue || (v54)
  {
    v70 = v213;
  }

  else
  {
    v70 = v213;
    if ((v206 & 1) == 0)
    {
      v69 = AGGraphCurrentAttributeWasModified();
    }
  }

  LODWORD(v202) = v69;
  AGGraphClearUpdate();
  closure #2 in closure #1 in PlatformViewChild.updateValue()(a1, v218, v5, v67, &v226);
  AGGraphSetUpdate();
  v208 = v226;
  v71 = v211;
  v229[0] = v70;
  v229[1] = v211;
  v72 = swift_weakInit();
  outlined init with copy of EnvironmentValues.PreferenceBridgeKey.Value(v72, v228);

  swift_retain_n();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE016PreferenceBridgeF033_76C8A4B3FC8EE0F99045B3425CD62255LLVG_Tt2g5(v229, v228);

  outlined destroy of EnvironmentValues.PreferenceBridgeKey.Value(v228);
  if (v71)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE016PreferenceBridgeK033_76C8A4B3FC8EE0F99045B3425CD62255LLVG_Ttg5(v70, v229[0]);
  }

  outlined destroy of EnvironmentValues.PreferenceBridgeKey.Value(&v226);
  v73 = v212;
  v74 = *(v214 + 16);
  v183 = *(v212 + 76);
  v75 = v209;
  v214 += 16;
  v184 = v74;
  v74(v37, a1 + v183, v209);
  UncheckedSendable.init(_:)(v37, v75, v216);
  v76 = *(a1 + 32);
  v201 = *(v73 + 80);
  v77 = *(a1 + v201);
  v78 = v219;
  v215 = a1;
  v220 = v65;
  v205 = v5;
  v204 = v76;
  if (!v77)
  {
    v180 = v20;
    v83 = *(v73 + 88);

    PropertyList.Tracker.reset()();

    v84 = v229[0];
    v85 = *(a1 + v83);
    if (v229[0])
    {
      v86 = *(v229[0] + 64);
    }

    else
    {
      v86 = 0;
    }

    v103 = *(v85 + 16);
    swift_retain_n();

    os_unfair_lock_lock((v103 + 16));
    *(v103 + 24) = v86;
    os_unfair_lock_unlock((v103 + 16));

    closure #4 in closure #1 in PlatformViewChild.updateValue()(v216, v76, v208, v84, v85, v5, v78, v217);
    v206 = 0;
    v203 = v84;

    v202 = v85;

    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      swift_getObjectType();
      v105 = swift_conformsToProtocol2();
      if (v105)
      {
        goto LABEL_38;
      }

      swift_unknownObjectRelease();
      Strong = 0;
    }

    v105 = 0;
LABEL_38:
    v65 = v169;
    MEMORY[0x1EEE9AC00](v105);
    v106 = &v169[-112];
    *&v169[-96] = v5;
    *&v169[-88] = v78;
    v107 = v217;
    *&v169[-80] = v218;
    *&v169[-72] = v107;
    *&v169[-64] = Strong;
    *&v169[-56] = v108;
    v109 = v202;
    *&v169[-48] = v203;
    *&v169[-40] = v109;
    *&v169[-32] = v221;
    *&v169[-24] = a1;
    v167 = v229;
    if (one-time initialization token for _current == -1)
    {
      goto LABEL_39;
    }

    goto LABEL_81;
  }

  v194 = 0;
  v79 = v5;
  if (v203)
  {
    a1 = *(v73 + 88);
    v80 = v215;
    v81 = v229[0];

    swift_unknownObjectRetain();

    LOBYTE(v81) = PropertyList.Tracker.hasDifferentUsedValues(_:)(v81);

    if (v81)
    {

      PropertyList.Tracker.reset()();

      LODWORD(v202) = 1;
    }

    v82 = *(v80 + 68);
    if (!v82)
    {
      goto LABEL_27;
    }
  }

  else
  {

    swift_unknownObjectRetain();
    v82 = *(v215 + 68);
    if (!v82)
    {
      goto LABEL_27;
    }
  }

  v87 = *(v215 + 56);
  if (!v87)
  {
    goto LABEL_86;
  }

  v88 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v90 = 0;
  v91 = v82 - 1;
  do
  {
    v93 = v87 + v90;
    if (v91)
    {
      v90 += *(v93 + 8);
    }

    else
    {
      v90 = 0;
    }

    v92 = v91 | v90;
    *&v226 = v93;
    CoreViewRepresentableFeatureBuffer.Element.update<A>(forHost:environment:isInitialUpdate:)(v77, v229, 0, v88, AssociatedConformanceWitness);
    --v91;
  }

  while (v92);
LABEL_27:
  v65 = v229[0];
  v94 = v215;
  v95 = *(v215 + *(v212 + 88));
  if (v229[0])
  {
    v96 = *(v229[0] + 64);
  }

  else
  {
    v96 = 0;
  }

  v5 = v79;
  v97 = v219;
  v20 = v210;
  v98 = v208;
  v99 = *(v95 + 16);
  swift_retain_n();

  os_unfair_lock_lock((v99 + 16));
  *(v99 + 24) = v96;
  os_unfair_lock_unlock((v99 + 16));

  AGGraphClearUpdate();
  closure #3 in closure #1 in PlatformViewChild.updateValue()(v206 & 1, v203 & 1, v180, v77, v65, v95, v221, v5, v97);
  AGGraphSetUpdate();
  v100 = v97;
  v101 = v194;
  closure #4 in closure #1 in PlatformViewChild.updateValue()(v216, v204, v98, v65, v95, v5, v100, v217);
  v206 = v101;
  swift_unknownObjectRelease();
  if ((v202 & 1) == 0)
  {

LABEL_79:
    (*(v199 + 8))(v216, v200);

    (*(v197 + 8))(v217, v198);
    return (*(v196 + 8))(v218, v5);
  }

  v202 = v95;
  v203 = v65;
  v102 = v20;
  while (1)
  {
    Strong = v207;
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    v106 = swift_unknownObjectWeakLoadStrong();

    if (v106)
    {
      swift_getObjectType();
      a1 = swift_conformsToProtocol2();
      v137 = v195;
      if (!a1)
      {
        swift_unknownObjectRelease();
        v106 = 0;
      }
    }

    else
    {
      a1 = 0;
      v137 = v195;
    }

    if (one-time initialization token for _current != -1)
    {
      swift_once();
    }

    v138 = static ObservationCenter._current;
    swift_beginAccess();
    v139 = pthread_getspecific(v138[2]);
    if (!v139)
    {
      v140 = swift_slowAlloc();
      pthread_setspecific(v138[2], v140);
      v227 = type metadata accessor for ObservationCenter();
      *&v226 = v138[3];
      outlined init with take of Any(&v226, v140);

      v139 = v140;
      v137 = v195;
    }

    outlined init with copy of Any(v139, &v226);
    type metadata accessor for ObservationCenter();
    swift_dynamicCast();
    v115 = v222;
    CurrentAttribute = AGGraphGetCurrentAttribute();
    if (CurrentAttribute != *MEMORY[0x1E698D3F8])
    {
      break;
    }

    __break(1u);
LABEL_81:
    swift_once();
LABEL_39:
    v110 = static ObservationCenter._current;
    swift_beginAccess();
    v111 = pthread_getspecific(v110[2]);
    v102 = v210;
    v112 = v178;
    v113 = v194;
    if (!v111)
    {
      v114 = swift_slowAlloc();
      pthread_setspecific(v110[2], v114);
      v227 = type metadata accessor for ObservationCenter();
      *&v226 = v110[3];
      outlined init with take of Any(&v226, v114);

      v111 = v114;
    }

    outlined init with copy of Any(v111, &v226);
    type metadata accessor for ObservationCenter();
    swift_dynamicCast();
    v115 = v225;
    v116 = AGGraphGetCurrentAttribute();
    if (v116 == *MEMORY[0x1E698D3F8])
    {
      __break(1u);
LABEL_83:
      Strong = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(Strong + 2) + 1, 1, Strong);
      *(v115 + 24) = Strong;
      goto LABEL_69;
    }

    v170 = v116;
    v173 = v65;
    v221 = Strong;
    swift_beginAccess();
    v172 = *(v115 + 24);
    *(v115 + 24) = MEMORY[0x1E69E7CC0];
    v65 = v207;
    v117 = (v102[7])(v113, 1, 1, v207);
    v171 = v169;
    MEMORY[0x1EEE9AC00](v117);
    swift_getAssociatedTypeWitness();
    v118 = type metadata accessor for Optional();
    *&v169[-32] = v118;
    *&v169[-24] = partial apply for closure #6 in closure #1 in PlatformViewChild.updateValue();
    v167 = v106;
    a1 = v194;
    v119 = type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Error, MEMORY[0x1E69E7280]);
    v120 = v206;
    _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in ObservationCenter._withObservation<A>(do:), &v169[-48], v175, v119, v118, MEMORY[0x1E69E7288], v224);
    v206 = v120;
    if (v120)
    {
      goto LABEL_88;
    }

    v175 = v226;
    outlined init with take of ObservationTracking._AccessList?(a1, v112);
    v121 = v176;
    outlined init with copy of ObservationTracking._AccessList?(v112, v176);
    if ((v102[6])(v121, 1, v65) == 1)
    {
      outlined destroy of ObservationTracking._AccessList?(v112);
      v112 = v121;
    }

    else
    {
      v122 = v180;
      v194 = v102[4];
      (v194)(v180, v121, v65);
      (v102[2])(v177, v122, v65);
      v123 = *(v115 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v115 + 24) = v123;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v123 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v123[2] + 1, 1, v123);
        *(v115 + 24) = v123;
      }

      v126 = v123[2];
      v125 = v123[3];
      if (v126 >= v125 >> 1)
      {
        v123 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v125 > 1), v126 + 1, 1, v123);
      }

      v127 = v180;
      v123[2] = v126 + 1;
      v102 = v210;
      v128 = v207;
      (v194)(v123 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + v210[9] * v126, v177, v207);
      *(v115 + 24) = v123;
      (v102[1])(v127, v128);
    }

    outlined destroy of ObservationTracking._AccessList?(v112);
    v20 = *(v115 + 24);
    v129 = v20[2];
    if (v129)
    {
      v132 = v102[2];
      v131 = v102 + 2;
      v130 = v132;
      v133 = v20 + ((v131[64] + 32) & ~v131[64]);
      v134 = *(v131 + 7);
      v5 = v131 - 8;
      v194 = *(v115 + 24);

      v135 = v174;
      v136 = v207;
      v65 = v170;
      do
      {
        v130(v135, v133, v136);
        ObservationCenter.invalidate<A>(_:onChangeIn:)(v65, v135);
        (*v5)(v135, v136);
        v133 += v134;
        --v129;
      }

      while (v129);

      v102 = v210;
      v20 = v194;
    }

    else
    {
    }

    swift_unknownObjectRelease();

    *(v115 + 24) = v172;

    v94 = v215;
    *(v215 + v201) = v175;
    swift_unknownObjectRelease();
  }

  LODWORD(v180) = CurrentAttribute;
  swift_beginAccess();
  v195 = *(v115 + 24);
  *(v115 + 24) = MEMORY[0x1E69E7CC0];
  (v102[7])(v137, 1, 1, Strong);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v143 = *(StatusReg + 848);
  *(StatusReg + 848) = v137;
  AGGraphClearUpdate();
  v65 = v137;
  v194 = v106;
  closure #1 in closure #7 in closure #1 in PlatformViewChild.updateValue()(v106, a1, v94, v217, v218, v205, v219);
  AGGraphSetUpdate();
  *(StatusReg + 848) = v143;
  if (v206)
  {
    goto LABEL_87;
  }

  v5 = v192;
  outlined init with take of ObservationTracking._AccessList?(v137, v192);
  a1 = v191;
  outlined init with copy of ObservationTracking._AccessList?(v5, v191);
  v20 = Strong;
  if ((v102[6])(a1, 1, Strong) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v5);
    v5 = a1;
    v65 = v220;
    goto LABEL_72;
  }

  v106 = v102[4];
  v144 = v190;
  (v106)(v190, a1, Strong);
  (v102[2])(v189, v144, Strong);
  Strong = *(v115 + 24);
  v145 = swift_isUniquelyReferenced_nonNull_native();
  *(v115 + 24) = Strong;
  v65 = v220;
  if ((v145 & 1) == 0)
  {
    goto LABEL_83;
  }

LABEL_69:
  a1 = *(Strong + 2);
  v146 = *(Strong + 3);
  if (a1 >= v146 >> 1)
  {
    Strong = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v146 > 1), a1 + 1, 1, Strong);
  }

  *(Strong + 2) = a1 + 1;
  v102 = v210;
  (v106)(Strong + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + v210[9] * a1, v189, v20);
  *(v115 + 24) = Strong;
  (v102[1])(v190, v20);
LABEL_72:
  outlined destroy of ObservationTracking._AccessList?(v5);
  v147 = *(v115 + 24);
  v148 = v147[2];
  if (v148)
  {
    v150 = v102[2];
    v149 = v102 + 2;
    v221 = v150;
    v151 = v147 + ((v149[64] + 32) & ~v149[64]);
    a1 = *(v149 + 7);
    v152 = (v149 - 8);
    v210 = v147;

    v153 = v179;
    v154 = v180;
    do
    {
      v221(v153, v151, v20);
      ObservationCenter.invalidate<A>(_:onChangeIn:)(v154, v153);
      (*v152)(v153, v20);
      v151 += a1;
      --v148;
    }

    while (v148);
  }

  v155 = v219;
  *(v115 + 24) = v195;

  v156 = v215;
  v157 = *(v215 + v201);
  v5 = v205;
  v158 = v193;
  if (v157)
  {
    v185(v193, v218, v205);
    v159 = v156 + v183;
    v160 = v187;
    v184(v187, v159, v209);
    if ((*(*(AssociatedTypeWitness - 8) + 48))(v160, 1) != 1)
    {
      v161 = v181;
      v162 = ViewLeafView.init(content:platformView:coordinator:)(v158, v157, v160, v5, v155, v181);
      v163 = MEMORY[0x1EEE9AC00](v162);
      v167 = v212;
      swift_getWitnessTable(protocol conformance descriptor for PlatformViewChild<A>, v163);
      v168 = v164;
      swift_unknownObjectRetain_n();
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v161, partial apply for closure #1 in StatefulRule.value.setter, &v169[-32], v65, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v165);

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();

      (*(v182 + 8))(v161, v65);
      goto LABEL_79;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  outlined destroy of ObservationTracking._AccessList?(v65);
  __break(1u);
LABEL_88:
  result = outlined destroy of ObservationTracking._AccessList?(a1);
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in closure #1 in PlatformViewChild.updateValue()@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(v2 + 40);
  result = _DynamicPropertyBuffer.update(container:phase:)(a1, &v5);
  *a2 = result & 1;
  return result;
}

uint64_t closure #2 in closure #1 in PlatformViewChild.updateValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v50 = a2;
  v55 = a5;
  v8 = type metadata accessor for PlatformViewChild(0, a3, a4, a4);
  v53 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v51 = a4;
  v52 = &v43 - v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for UncheckedSendable(0, AssociatedTypeWitness, v11, v12);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v49 = &v43 - v14;
  v46 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v45 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for UncheckedSendable(0, a3, v17, v18);
  v47 = *(v19 - 8);
  v48 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v43 - v20;
  v22 = type metadata accessor for Optional();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v43 - v28;
  v54 = v8;
  v30 = *(v23 + 16);
  v44 = *(v8 + 76);
  v30(&v43 - v28, a1 + v44, v22, v27);
  v31 = *(AssociatedTypeWitness - 8);
  v32 = (*(v31 + 48))(v29, 1, AssociatedTypeWitness);
  (*(v23 + 8))(v29, v22);
  v33 = v32 == 1;
  v34 = a1;
  if (v33)
  {
    v35 = v45;
    (*(v46 + 16))(v45, v50, a3);
    UncheckedSendable.init(_:)(v35, a3, v21);
    v36 = v49;
    closure #1 in closure #2 in closure #1 in PlatformViewChild.updateValue()(a3, v51, v49);
    (*(v31 + 32))(v25, v36, AssociatedTypeWitness);
    (*(v31 + 56))(v25, 0, 1, AssociatedTypeWitness);
    (*(v23 + 40))(v34 + v44, v25, v22);
    (*(v47 + 8))(v21, v48);
  }

  v38 = v52;
  v37 = v53;
  v39 = v54;
  (*(v53 + 16))(v52, v34, v54);
  v40 = *AGGraphGetValue();
  v41 = *(v37 + 8);

  result = v41(v38, v39);
  *v55 = v40;
  return result;
}

void closure #4 in closure #1 in PlatformViewChild.updateValue()(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v21 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = type metadata accessor for Optional();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v22[-1] - v18;
  (*(v20 + 16))(&v22[-1] - v18, a1, v17);
  if ((*(*(AssociatedTypeWitness - 8) + 48))(v19, 1, AssociatedTypeWitness) == 1)
  {
    __break(1u);
  }

  else
  {
    v22[0] = a4;
    v22[1] = a5;
    v23 = 0;
    PlatformViewRepresentableContext.init(coordinator:preferenceBridge:transaction:environmentStorage:)(v19, a2, a3, v22, a6, a7, v21);
  }
}

uint64_t outlined consume of RepresentableContextValues?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (result != 1)
  {

    return outlined consume of RepresentableContextValues.EnvironmentStorage(a3, a4, a5 & 1);
  }

  return result;
}

uint64_t closure #1 in closure #2 in closure #1 in PlatformViewChild.updateValue()@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v11 - v8;
  (*(a2 + 104))(a1, a2, v7);
  return UncheckedSendable.init(_:)(v9, AssociatedTypeWitness, a3);
}

void HostPreferencesCombiner.value.getter(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (*MEMORY[0x1E698D3F8] == HIDWORD(a1))
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    AGGraphGetValue();
  }

  v14[0] = v5;
  v6 = *(a2 + 16);
  if (v6)
  {
    Value = AGGraphGetValue();
    if (v6 >> 58)
    {
      __break(1u);
    }

    v8 = *Value;
    swift_bridgeObjectRetain_n();

    if (32 * v6) < 1025 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
    {
      MEMORY[0x1EEE9AC00](isStackAllocationSafe);
      v11 = v14 - v10;

      specialized closure #1 in static PreferenceValues.combineHostKeyValues(into:keys:childIndices:childAt:)(v11, v6, 0, v6, v14, v8, a2);
    }

    else
    {
      v12 = swift_slowAlloc();

      specialized closure #1 in static PreferenceValues.combineHostKeyValues(into:keys:childIndices:childAt:)(v12, v6, 0, v6, v14, v8, a2);
      MEMORY[0x193AC4820](v12, -1, -1);
    }

    v5 = v14[0];
  }

  *a3 = v5;
}