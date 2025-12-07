void *sub_213D10738(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v299 = a4;
  v294 = a1;
  v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBAA0, &unk_213D972B0);
  v317 = *(v310 - 8);
  MEMORY[0x28223BE20](v310);
  v9 = &v284 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v316 = (&v284 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB260, qword_213D985C0);
  MEMORY[0x28223BE20](v12 - 8);
  v284 = &v284 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v292 = &v284 - v15;
  MEMORY[0x28223BE20](v16);
  v293 = &v284 - v17;
  MEMORY[0x28223BE20](v18);
  v304 = &v284 - v19;
  MEMORY[0x28223BE20](v20);
  v306 = &v284 - v21;
  MEMORY[0x28223BE20](v22);
  v308 = &v284 - v23;
  MEMORY[0x28223BE20](v24);
  v313 = &v284 - v25;
  v324 = type metadata accessor for MarkerAnnotationViewModel(0);
  v26 = *(v324 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v324);
  v289 = &v284 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v291 = &v284 - v29;
  MEMORY[0x28223BE20](v30);
  v290 = &v284 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v284 - v33;
  MEMORY[0x28223BE20](v35);
  v307 = &v284 - v36;
  MEMORY[0x28223BE20](v37);
  v322 = (&v284 - v38);
  MEMORY[0x28223BE20](v39);
  v312 = &v284 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB268, &qword_213D972C0);
  MEMORY[0x28223BE20](v41 - 8);
  v43 = (&v284 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v44);
  v314 = (&v284 - v45);
  *&v330 = v5;
  v46 = v5;
  v326 = a5;
  v47 = swift_readAtKeyPath();
  v315 = *(v48 + 16);

  v47(&aBlock, 0);
  v325 = v46;

  v49 = *(a2 + 16);
  v323 = v26;
  v319 = v43;
  if (!v49)
  {
    v53 = MEMORY[0x277D84F90];
    v301 = MEMORY[0x277D84F90];
    v302 = MEMORY[0x277D84F90];
LABEL_61:
    v321 = v53;
    if (v299)
    {
      v157 = objc_opt_self();
      v158 = swift_allocObject();
      *(v158 + 16) = v301;
      v335 = sub_213D1F590;
      v336 = v158;
      aBlock = MEMORY[0x277D85DD0];
      v332 = 1107296256;
      v333 = sub_213CFF278;
      v334 = &block_descriptor_435;
      v159 = _Block_copy(&aBlock);

      v160 = swift_allocObject();
      *(v160 + 16) = v302;
      v335 = sub_213D1F60C;
      v336 = v160;
      aBlock = MEMORY[0x277D85DD0];
      v332 = 1107296256;
      v333 = sub_213D183BC;
      v334 = &block_descriptor_442;
      v161 = _Block_copy(&aBlock);

      [v157 animateWithDuration:v159 animations:v161 completion:0.25];
      _Block_release(v161);
      _Block_release(v159);
    }

    v162 = v315 + 64;
    v163 = 1 << *(v315 + 32);
    v164 = -1;
    if (v163 < 64)
    {
      v164 = ~(-1 << v163);
    }

    v165 = v164 & *(v315 + 64);
    v166 = (v163 + 63) >> 6;
    v320 = (v323 + 56);

    v167 = 0;
    while (1)
    {
      if (v165)
      {
        v170 = v167;
        v171 = v323;
        goto LABEL_78;
      }

      v172 = v166 <= v167 + 1 ? v167 + 1 : v166;
      v173 = v172 - 1;
      v171 = v323;
      do
      {
        v170 = v167 + 1;
        if (__OFADD__(v167, 1))
        {
          __break(1u);
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (v170 >= v166)
        {
          v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB270, &qword_213D972C8);
          (*(*(v206 - 8) + 56))(v43, 1, 1, v206);
          v165 = 0;
          v167 = v173;
          goto LABEL_79;
        }

        v165 = *(v162 + 8 * v170);
        ++v167;
      }

      while (!v165);
      v167 = v170;
LABEL_78:
      v174 = __clz(__rbit64(v165));
      v165 &= v165 - 1;
      v175 = v174 | (v170 << 6);
      v176 = *(*(v315 + 48) + 8 * v175);
      v177 = v312;
      sub_213D1E9F8(*(v315 + 56) + *(v171 + 72) * v175, v312, type metadata accessor for MarkerAnnotationViewModel);
      v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB270, &qword_213D972C8);
      v179 = *(v178 + 48);
      *v43 = v176;
      sub_213D1E884(v177, v43 + v179, type metadata accessor for MarkerAnnotationViewModel);
      (*(*(v178 - 8) + 56))(v43, 0, 1, v178);
      v180 = v176;
LABEL_79:
      v181 = v314;
      sub_213CED608(v43, v314, &qword_27C8EB268, &qword_213D972C0);
      v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB270, &qword_213D972C8);
      if ((*(*(v182 - 8) + 48))(v181, 1, v182) == 1)
      {
        break;
      }

      v183 = *v181;
      v184 = v181 + *(v182 + 48);
      v185 = v322;
      sub_213D1E884(v184, v322, type metadata accessor for MarkerAnnotationViewModel);
      v186 = *v185;
      *&v330 = v325;
      v187 = v325;
      v188 = swift_modifyAtReferenceWritableKeyPath();
      v190 = v189;
      v191 = sub_213CE22A8(v186);
      if (v192)
      {
        v193 = v191;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v195 = *(v190 + 24);
        v327 = v195;
        *(v190 + 24) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_213D1CE38(&qword_27C8EB278, &qword_213D972D0);
          v195 = v327;
        }

        sub_213D1B868(v193, v195);
        *(v190 + 24) = v195;
      }

      v188(&aBlock, 0);

      *&v330 = v187;
      v196 = v187;
      v197 = swift_modifyAtReferenceWritableKeyPath();
      v199 = v198;
      v200 = sub_213CE2448(v183);
      if (v201)
      {
        v202 = v200;
        v203 = swift_isUniquelyReferenced_nonNull_native();
        v205 = *(v199 + 16);
        v327 = v205;
        *(v199 + 16) = 0x8000000000000000;
        v169 = v313;
        if (!v203)
        {
          sub_213D1C9C8(v204);
          v205 = v327;
        }

        sub_213D1E884(*(v205 + 56) + *(v323 + 72) * v202, v169, type metadata accessor for MarkerAnnotationViewModel);
        sub_213D1B698(v202, v205, type metadata accessor for MarkerAnnotationViewModel);
        *(v199 + 16) = v205;

        v168 = 0;
      }

      else
      {
        v168 = 1;
        v169 = v313;
      }

      (*v320)(v169, v168, 1, v324);
      sub_213CD8330(v169, &qword_27C8EB260, qword_213D985C0);
      v197(&aBlock, 0);

      sub_213D1F330(v322, type metadata accessor for MarkerAnnotationViewModel);
      v43 = v319;
    }

    v207 = v315;

    aBlock = MEMORY[0x277D84F90];
    v208 = 1 << *(v207 + 32);
    v209 = -1;
    if (v208 < 64)
    {
      v209 = ~(-1 << v208);
    }

    v210 = v209 & *(v207 + 64);
    v211 = (v208 + 63) >> 6;

    v212 = 0;
    if (v210)
    {
      while (1)
      {
        v213 = v212;
LABEL_97:
        v214 = __clz(__rbit64(v210));
        v210 &= v210 - 1;
        v215 = *(*(v315 + 48) + ((v213 << 9) | (8 * v214)));
        sub_213D91DEC();
        sub_213D91E2C();
        sub_213D91E3C();
        sub_213D91DFC();
        if (!v210)
        {
          goto LABEL_93;
        }
      }
    }

    while (1)
    {
LABEL_93:
      v213 = v212 + 1;
      if (__OFADD__(v212, 1))
      {
        goto LABEL_142;
      }

      if (v213 >= v211)
      {
        break;
      }

      v210 = *(v162 + 8 * v213);
      ++v212;
      if (v210)
      {
        v212 = v213;
        goto LABEL_97;
      }
    }

    v216 = aBlock;
    if (aBlock < 0 || (aBlock & 0x4000000000000000) != 0)
    {
      goto LABEL_149;
    }

    sub_213D91F6C();
    sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);
    v217 = v216;
    while (1)
    {
      v218 = v321;

      aBlock = v294;
      v219 = sub_213D17C74(v217, &protocolRef_MKOverlay);
      if (v219)
      {
        v220 = v219;

        v221 = off_28263B068;
        v222 = sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
        v221(v220, v222, &off_28263B040);
      }

      else
      {
        v223 = sub_213D17C74(v217, &protocolRef_MKAnnotation);

        if (!v223)
        {
          goto LABEL_107;
        }

        v224 = off_28263B050;
        v225 = sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
        v224(v223, v225, &off_28263B040);
      }

LABEL_107:
      v319 = v218[2];
      if (!v319)
      {
        return v218;
      }

      v226 = *(v310 + 48);
      v318 = v218 + ((*(v317 + 80) + 32) & ~*(v317 + 80));
      v315 = v323 + 48;

      v227 = 0;
      while (v227 < v218[2])
      {
        v230 = *(v317 + 72);
        v322 = v227;
        v231 = v316;
        sub_213CE2C28(v318 + v230 * v227, v316, &unk_27C8EBAA0, &unk_213D972B0);
        v232 = *v231;
        v233 = v226;
        v234 = *(v231 + v226);
        *&v330 = v325;
        v235 = v325;

        v236 = v232;
        v237 = swift_modifyAtReferenceWritableKeyPath();
        v239 = v238;
        v240 = swift_isUniquelyReferenced_nonNull_native();
        v327 = *(v239 + 24);
        v241 = v327;
        *(v239 + 24) = 0x8000000000000000;
        v243 = sub_213CE22A8(v234);
        v244 = v241[2];
        v245 = (v242 & 1) == 0;
        v246 = v244 + v245;
        if (__OFADD__(v244, v245))
        {
          goto LABEL_144;
        }

        v247 = v242;
        if (v241[3] >= v246)
        {
          if ((v240 & 1) == 0)
          {
            sub_213D1CE38(&qword_27C8EB278, &qword_213D972D0);
          }
        }

        else
        {
          sub_213D1AEB0(v246, v240, &qword_27C8EB278, &qword_213D972D0);
          v248 = sub_213CE22A8(v234);
          if ((v247 & 1) != (v249 & 1))
          {
            goto LABEL_151;
          }

          v243 = v248;
        }

        v250 = v327;
        if (v247)
        {
          v251 = v327[7];
          v252 = *(v251 + 8 * v243);
          *(v251 + 8 * v243) = v236;
        }

        else
        {
          v327[(v243 >> 6) + 8] |= 1 << v243;
          *(v250[6] + 8 * v243) = v234;
          *(v250[7] + 8 * v243) = v236;
          v253 = v250[2];
          v149 = __OFADD__(v253, 1);
          v254 = v253 + 1;
          if (v149)
          {
            goto LABEL_145;
          }

          v250[2] = v254;
        }

        *(v239 + 24) = v250;
        v237(&aBlock, 0);

        v226 = v233;
        v255 = v308;
        sub_213D1E884(v316 + v233, v308, type metadata accessor for MarkerAnnotationViewModel);
        v256 = *v320;
        v257 = v324;
        (*v320)(v255, 0, 1, v324);
        *&v330 = v235;
        v258 = v235;
        v259 = v236;
        v260 = swift_modifyAtReferenceWritableKeyPath();
        v262 = v261;
        if ((*v315)(v255, 1, v257) == 1)
        {
          sub_213CD8330(v255, &qword_27C8EB260, qword_213D985C0);
          v263 = sub_213CE2448(v259);
          if (v264)
          {
            v265 = v263;
            v266 = swift_isUniquelyReferenced_nonNull_native();
            v268 = *(v262 + 16);
            v327 = v268;
            *(v262 + 16) = 0x8000000000000000;
            if (!v266)
            {
              sub_213D1C9C8(v267);
              v268 = v327;
            }

            v229 = v306;
            sub_213D1E884(*(v268 + 56) + *(v323 + 72) * v265, v306, type metadata accessor for MarkerAnnotationViewModel);
            sub_213D1B698(v265, v268, type metadata accessor for MarkerAnnotationViewModel);

            *(v262 + 16) = v268;

            v228 = 0;
          }

          else
          {

            v228 = 1;
            v229 = v306;
          }

          v256(v229, v228, 1, v324);
          sub_213CD8330(v229, &qword_27C8EB260, qword_213D985C0);
        }

        else
        {
          sub_213D1E884(v255, v307, type metadata accessor for MarkerAnnotationViewModel);
          v269 = swift_isUniquelyReferenced_nonNull_native();
          v327 = *(v262 + 16);
          v270 = v327;
          *(v262 + 16) = 0x8000000000000000;
          v271 = sub_213CE2448(v259);
          v274 = v270[2];
          v275 = (v272 & 1) == 0;
          v149 = __OFADD__(v274, v275);
          v276 = v274 + v275;
          if (v149)
          {
            goto LABEL_146;
          }

          v277 = v272;
          if (v270[3] >= v276)
          {
            if ((v269 & 1) == 0)
            {
              v282 = v271;
              sub_213D1C9C8(v273);
              v271 = v282;
            }
          }

          else
          {
            sub_213D1A820(v276, v269, v273);
            v271 = sub_213CE2448(v259);
            if ((v277 & 1) != (v278 & 1))
            {
              goto LABEL_152;
            }
          }

          v279 = v327;
          if (v277)
          {
            sub_213D1EA60(v307, v327[7] + *(v323 + 72) * v271, type metadata accessor for MarkerAnnotationViewModel);
          }

          else
          {
            v327[(v271 >> 6) + 8] |= 1 << v271;
            *(v279[6] + 8 * v271) = v259;
            sub_213D1E884(v307, v279[7] + *(v323 + 72) * v271, type metadata accessor for MarkerAnnotationViewModel);
            v280 = v279[2];
            v149 = __OFADD__(v280, 1);
            v281 = v280 + 1;
            if (v149)
            {
              goto LABEL_147;
            }

            v279[2] = v281;
          }

          *(v262 + 16) = v279;
        }

        v227 = v322 + 1;
        v260(&aBlock, 0);

        v218 = v321;
        if (v319 == v227)
        {

          return v218;
        }
      }

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
      __break(1u);
LABEL_149:
      sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);

      v217 = sub_213D91EAC();
    }
  }

  v50 = v49;
  v51 = *(v26 + 80);
  v52 = a2 + ((v51 + 32) & ~v51);
  v305 = (v26 + 56);
  v288 = v51;
  v287 = (v51 + 24) & ~v51;
  v286 = (v27 + v287 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = MEMORY[0x277D84F90];
  v285 = (v26 + 48);
  v311 = *(v26 + 72);
  v301 = MEMORY[0x277D84F90];
  v302 = MEMORY[0x277D84F90];
  v309 = v9;
  v54 = v50;
  while (1)
  {
    v320 = v52;
    sub_213D1E9F8(v52, v34, type metadata accessor for MarkerAnnotationViewModel);
    v58 = *v34;
    *&v330 = v325;
    v59 = v325;
    swift_getAtKeyPath();

    v60 = v334;
    v61 = v334[2];
    v321 = v53;
    v318 = v54;
    if (!v61 || (v62 = sub_213CE22A8(v58), (v63 & 1) == 0))
    {

LABEL_18:
      v83 = *(v34 + 1);
      v82 = *(v34 + 2);
      v85 = *(v34 + 3);
      v84 = *(v34 + 4);
      v86 = *(v34 + 11);
      v87 = *(v34 + 12);
      v88 = *(v34 + 5);
      v89 = v34[48];
      v90 = type metadata accessor for MapBridgingMarker();
      v91 = objc_allocWithZone(v90);
      v92 = &v91[OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_title];
      *v92 = 0;
      v92[1] = 0;
      v93 = &v91[OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_subtitle];
      *v93 = 0;
      v93[1] = 0;
      v94 = OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_mapItem;
      *&v91[OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_mapItem] = 0;
      v95 = OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_isCustomFeature;
      v91[OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_isCustomFeature] = 0;
      *v92 = v83;
      v92[1] = v82;
      *v93 = v85;
      v93[1] = v84;
      v96 = &v91[OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_coordinate];
      *v96 = v86;
      v96[1] = v87;
      v97 = *&v91[v94];
      *&v91[v94] = v88;

      v98 = v88;

      v91[v95] = v89;
      v337.receiver = v91;
      v337.super_class = v90;
      v99 = objc_msgSendSuper2(&v337, sel_init);
      v100 = *(v310 + 48);
      v101 = v309;
      *v309 = v99;
      sub_213D1E9F8(v34, v101 + v100, type metadata accessor for MarkerAnnotationViewModel);
      v53 = v321;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v53 = sub_213D7082C(0, v53[2] + 1, 1, v53);
      }

      v57 = v320;
      v103 = v53[2];
      v102 = v53[3];
      v43 = v319;
      v54 = v318;
      if (v103 >= v102 >> 1)
      {
        v53 = sub_213D7082C((v102 > 1), v103 + 1, 1, v53);
      }

      sub_213D1F330(v34, type metadata accessor for MarkerAnnotationViewModel);
      v53[2] = v103 + 1;
      sub_213CED608(v101, v53 + ((*(v317 + 80) + 32) & ~*(v317 + 80)) + *(v317 + 72) * v103, &unk_27C8EBAA0, &unk_213D972B0);
      goto LABEL_5;
    }

    v64 = *(v60[7] + 8 * v62);

    *&v330 = v59;
    v65 = v59;
    swift_getAtKeyPath();

    v66 = v333;
    if (!v333[2] || (v67 = sub_213CE2448(v64), (v68 & 1) == 0))
    {

      v81 = v304;
      (*v305)(v304, 1, 1, v324);
      sub_213CD8330(v81, &qword_27C8EB260, qword_213D985C0);
      goto LABEL_18;
    }

    v298 = v65;
    v69 = v304;
    sub_213D1E9F8(v66[7] + v67 * v311, v304, type metadata accessor for MarkerAnnotationViewModel);

    v297 = *v305;
    v297(v69, 0, 1, v324);
    sub_213CD8330(v69, &qword_27C8EB260, qword_213D985C0);
    v334 = sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
    v335 = &off_28263B040;
    v70 = v294;
    aBlock = v294;
    v71 = v290;
    sub_213D1E9F8(v34, v290, type metadata accessor for MarkerAnnotationViewModel);
    sub_213D1E22C(&aBlock, &v330);
    v72 = v291;
    sub_213D1E9F8(v71, v291, type metadata accessor for MarkerAnnotationViewModel);
    sub_213D1E22C(&v330, &v327);
    v73 = v286;
    v74 = swift_allocObject();
    *(v74 + 16) = v64;
    sub_213D1E884(v71, v74 + v287, type metadata accessor for MarkerAnnotationViewModel);
    sub_213D1E2DC(&v330, v74 + v73);
    v75 = v64;
    v76 = v70;
    v77 = v299;
    if (!v299)
    {
      goto LABEL_14;
    }

    [v75 coordinate];
    if (vabdd_f64(v79, *(v34 + 11)) < 0.00000000999999994 && vabdd_f64(v78, *(v34 + 12)) < 0.00000000999999994)
    {

LABEL_14:
      [v75 setCoordinate_];
      if (*(v72 + 16))
      {
        v80 = sub_213D9190C();
      }

      else
      {
        v80 = 0;
      }

      [v75 setTitle_];

      if (*(v72 + 32))
      {
        v118 = sub_213D9190C();
      }

      else
      {
        v118 = 0;
      }

      [v75 setSubtitle_];

      v119 = v328;
      v120 = v329;
      __swift_project_boxed_opaque_existential_1(&v327, v328);
      v121 = (*(v120 + 24))(v75, v119, v120);
      if (v121)
      {
        v122 = v121;
        objc_opt_self();
        v123 = swift_dynamicCastObjCClass();
        if (!v123)
        {

          goto LABEL_41;
        }

        sub_213D2797C(v123, 0);
      }

LABEL_41:
      __swift_destroy_boxed_opaque_existential_1(&v327);
      sub_213D1F330(v72, type metadata accessor for MarkerAnnotationViewModel);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v296 = 0;
      v303 = 0;
      v295 = 0;
      v300 = 0;
      v108 = v293;
      goto LABEL_42;
    }

    __swift_destroy_boxed_opaque_existential_1(&v327);
    sub_213D1F330(v72, type metadata accessor for MarkerAnnotationViewModel);
    v104 = swift_allocObject();
    v104[2] = sub_213D1F600;
    v104[3] = v74;
    v104[4] = v77;
    v105 = swift_allocObject();
    *(v105 + 16) = sub_213D1F600;
    *(v105 + 24) = v74;
    v303 = v105;

    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    v106 = swift_allocObject();
    *(v106 + 16) = sub_213D1F610;
    *(v106 + 24) = v104;
    v300 = v104;
    swift_retain_n();
    v107 = v75;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v301 = sub_213D6FE48(0, v301[2] + 1, 1, v301);
    }

    v108 = v293;
    v110 = v301[2];
    v109 = v301[3];
    if (v110 >= v109 >> 1)
    {
      v301 = sub_213D6FE48((v109 > 1), v110 + 1, 1, v301);
    }

    v111 = v301;
    v301[2] = v110 + 1;
    v112 = &v111[2 * v110];
    v112[4] = sub_213D1F608;
    v112[5] = v106;
    v113 = swift_allocObject();
    *(v113 + 16) = sub_213D1F584;
    *(v113 + 24) = v303;
    swift_retain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v302 = sub_213D6FE48(0, v302[2] + 1, 1, v302);
    }

    v115 = v302[2];
    v114 = v302[3];
    if (v115 >= v114 >> 1)
    {
      v302 = sub_213D6FE48((v114 > 1), v115 + 1, 1, v302);
    }

    v116 = v302;
    v302[2] = v115 + 1;
    v117 = &v116[2 * v115];
    v117[4] = sub_213D1F608;
    v117[5] = v113;
    v295 = sub_213D1F610;
    v296 = sub_213D1F584;
    v75 = v107;
LABEL_42:
    v124 = v315;
    v125 = sub_213CE2448(v75);
    if (v126)
    {
      v127 = v125;
      v128 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v124;
      if (!v128)
      {
        sub_213D1C9C8(v129);
        v124 = aBlock;
      }

      v130 = v75;

      sub_213D1E884(*(v124 + 56) + v127 * v311, v108, type metadata accessor for MarkerAnnotationViewModel);
      v315 = v124;
      sub_213D1B698(v127, v124, type metadata accessor for MarkerAnnotationViewModel);
      v131 = 0;
    }

    else
    {
      v130 = v75;
      v131 = 1;
    }

    v132 = v324;
    v133 = v297;
    v297(v108, v131, 1, v324);
    sub_213CD8330(v108, &qword_27C8EB260, qword_213D985C0);
    v134 = v292;
    sub_213D1E9F8(v34, v292, type metadata accessor for MarkerAnnotationViewModel);
    v133(v134, 0, 1, v132);
    *&v330 = v298;
    v135 = v298;
    v136 = v130;
    v298 = swift_modifyAtReferenceWritableKeyPath();
    v138 = v137;
    if ((*v285)(v134, 1, v132) != 1)
    {
      break;
    }

    sub_213CD8330(v134, &qword_27C8EB260, qword_213D985C0);
    v55 = v284;
    sub_213D18C8C(v136, v284);

    sub_213CD8330(v55, &qword_27C8EB260, qword_213D985C0);
LABEL_4:
    v56 = v295;
    (v298)(&aBlock, 0);
    sub_213CCE520(v296, v303);
    sub_213CCE520(v56, v300);

    sub_213D1F330(v34, type metadata accessor for MarkerAnnotationViewModel);
    v57 = v320;
LABEL_5:
    v52 = v57 + v311;
    if (!--v54)
    {
      goto LABEL_61;
    }
  }

  sub_213D1E884(v134, v289, type metadata accessor for MarkerAnnotationViewModel);
  v139 = swift_isUniquelyReferenced_nonNull_native();
  v140 = v136;
  v141 = v139;
  v327 = *(v138 + 16);
  v142 = v327;
  *(v138 + 16) = 0x8000000000000000;
  v143 = v140;
  v144 = sub_213CE2448(v140);
  v147 = v142[2];
  v148 = (v145 & 1) == 0;
  v149 = __OFADD__(v147, v148);
  v150 = v147 + v148;
  if (v149)
  {
    goto LABEL_148;
  }

  v151 = v145;
  if (v142[3] >= v150)
  {
    if ((v141 & 1) == 0)
    {
      v156 = v144;
      sub_213D1C9C8(v146);
      v144 = v156;
    }

    v136 = v143;
  }

  else
  {
    sub_213D1A820(v150, v141, v146);
    v136 = v143;
    v144 = sub_213CE2448(v143);
    if ((v151 & 1) != (v152 & 1))
    {
      goto LABEL_152;
    }
  }

  v153 = v327;
  if (v151)
  {
    sub_213D1EA60(v289, v327[7] + v144 * v311, type metadata accessor for MarkerAnnotationViewModel);

LABEL_59:
    *(v138 + 16) = v153;

    goto LABEL_4;
  }

  v327[(v144 >> 6) + 8] |= 1 << v144;
  *(v153[6] + 8 * v144) = v136;
  sub_213D1E884(v289, v153[7] + v144 * v311, type metadata accessor for MarkerAnnotationViewModel);
  v154 = v153[2];
  v149 = __OFADD__(v154, 1);
  v155 = v154 + 1;
  if (!v149)
  {
    v153[2] = v155;
    goto LABEL_59;
  }

  __break(1u);
LABEL_151:
  sub_213D91F8C();
  __break(1u);
LABEL_152:
  type metadata accessor for MapBridgingMarker();
  result = sub_213D91F8C();
  __break(1u);
  return result;
}

void *sub_213D12848(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v305 = a4;
  v299 = a1;
  v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB288, &unk_213D972E0);
  v323 = *(v316 - 8);
  MEMORY[0x28223BE20](v316);
  i = (&v289 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v322 = (&v289 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB290, &qword_213D98000);
  MEMORY[0x28223BE20](v11 - 8);
  v290 = &v289 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v297 = &v289 - v14;
  MEMORY[0x28223BE20](v15);
  v298 = &v289 - v16;
  MEMORY[0x28223BE20](v17);
  v311 = &v289 - v18;
  MEMORY[0x28223BE20](v19);
  v313 = &v289 - v20;
  MEMORY[0x28223BE20](v21);
  v315 = &v289 - v22;
  MEMORY[0x28223BE20](v23);
  v319 = &v289 - v24;
  v328 = type metadata accessor for CustomAnnotationViewModel(0);
  v25 = *(v328 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v328);
  v295 = &v289 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v310 = &v289 - v28;
  MEMORY[0x28223BE20](v29);
  v296 = &v289 - v30;
  MEMORY[0x28223BE20](v31);
  v331 = (&v289 - v32);
  MEMORY[0x28223BE20](v33);
  v314 = &v289 - v34;
  MEMORY[0x28223BE20](v35);
  v327 = (&v289 - v36);
  MEMORY[0x28223BE20](v37);
  v318 = &v289 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB298, &qword_213D972F0);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = &v289 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v320 = (&v289 - v43);
  *&v335 = v5;
  v44 = v5;
  v330 = a5;
  v45 = swift_readAtKeyPath();
  v321 = *(v46 + 16);

  v45(&aBlock, 0);
  v329 = v44;

  v47 = *(a2 + 16);
  v325 = v25;
  v326 = v41;
  if (!v47)
  {
    v50 = MEMORY[0x277D84F90];
    v306 = MEMORY[0x277D84F90];
    v307 = MEMORY[0x277D84F90];
LABEL_60:
    v153 = v41;
    v317 = v50;
    if (v305)
    {
      v154 = objc_opt_self();
      v155 = swift_allocObject();
      *(v155 + 16) = v306;
      v340 = sub_213D1F590;
      v341 = v155;
      aBlock = MEMORY[0x277D85DD0];
      v337 = 1107296256;
      v338 = sub_213CFF278;
      v339 = &block_descriptor_469;
      v156 = _Block_copy(&aBlock);

      v157 = swift_allocObject();
      *(v157 + 16) = v307;
      v340 = sub_213D1F60C;
      v341 = v157;
      aBlock = MEMORY[0x277D85DD0];
      v337 = 1107296256;
      v338 = sub_213D183BC;
      v339 = &block_descriptor_476;
      v158 = _Block_copy(&aBlock);

      [v154 animateWithDuration:v156 animations:v158 completion:0.25];
      _Block_release(v158);
      _Block_release(v156);
    }

    v159 = (v321 + 64);
    v160 = 1 << *(v321 + 32);
    v161 = -1;
    if (v160 < 64)
    {
      v161 = ~(-1 << v160);
    }

    v162 = v161 & *(v321 + 64);
    v163 = (v160 + 63) >> 6;
    v164 = v325;
    v331 = (v325 + 56);

    v165 = 0;
    for (i = v159; ; v159 = i)
    {
      if (v162)
      {
        v170 = v165;
        goto LABEL_77;
      }

      v171 = v163 <= v165 + 1 ? v165 + 1 : v163;
      v172 = v171 - 1;
      v173 = v153;
      do
      {
        v170 = v165 + 1;
        if (__OFADD__(v165, 1))
        {
          __break(1u);
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (v170 >= v163)
        {
          v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB2A0, &qword_213D972F8);
          (*(*(v209 - 8) + 56))(v153, 1, 1, v209);
          v162 = 0;
          v165 = v172;
          goto LABEL_78;
        }

        v162 = v159[v170];
        ++v165;
      }

      while (!v162);
      v165 = v170;
LABEL_77:
      v174 = __clz(__rbit64(v162));
      v162 &= v162 - 1;
      v175 = v174 | (v170 << 6);
      v176 = *(*(v321 + 48) + 8 * v175);
      v177 = v318;
      sub_213D1E9F8(*(v321 + 56) + *(v164 + 72) * v175, v318, type metadata accessor for CustomAnnotationViewModel);
      v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB2A0, &qword_213D972F8);
      v179 = *(v178 + 48);
      *v153 = v176;
      v180 = v177;
      v173 = v153;
      sub_213D1E884(v180, &v153[v179], type metadata accessor for CustomAnnotationViewModel);
      (*(*(v178 - 8) + 56))(v153, 0, 1, v178);
      v181 = v176;
LABEL_78:
      v182 = v320;
      sub_213CED608(v173, v320, &qword_27C8EB298, &qword_213D972F0);
      v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB2A0, &qword_213D972F8);
      if ((*(*(v183 - 8) + 48))(v182, 1, v183) == 1)
      {
        break;
      }

      v184 = *v182;
      v185 = v182 + *(v183 + 48);
      v186 = v327;
      sub_213D1E884(v185, v327, type metadata accessor for CustomAnnotationViewModel);
      v187 = *v186;
      *&v335 = v329;
      v188 = v329;
      v189 = swift_modifyAtReferenceWritableKeyPath();
      v191 = v190;
      v192 = sub_213CE22A8(v187);
      if (v193)
      {
        v194 = v192;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v196 = *(v191 + 24);
        v332 = v196;
        *(v191 + 24) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_213D1CE38(&qword_27C8EB2A8, &qword_213D97300);
          v196 = v332;
        }

        sub_213D1B868(v194, v196);
        *(v191 + 24) = v196;
      }

      v189(&aBlock, 0);

      *&v335 = v188;
      v197 = v188;
      v198 = swift_modifyAtReferenceWritableKeyPath();
      v200 = v199;
      v201 = sub_213CE249C(v184);
      v202 = v325;
      if (v203)
      {
        v204 = v201;
        v166 = v184;
        v205 = swift_isUniquelyReferenced_nonNull_native();
        v207 = *(v200 + 16);
        v332 = v207;
        *(v200 + 16) = 0x8000000000000000;
        if (!v205)
        {
          sub_213D1CC00(v206);
          v207 = v332;
        }

        v167 = v202;
        v208 = *(v207 + 56) + *(v202 + 72) * v204;
        v169 = v319;
        sub_213D1E884(v208, v319, type metadata accessor for CustomAnnotationViewModel);
        sub_213D1B698(v204, v207, type metadata accessor for CustomAnnotationViewModel);
        *(v200 + 16) = v207;

        v168 = 0;
      }

      else
      {
        v166 = v184;
        v167 = v325;
        v168 = 1;
        v169 = v319;
      }

      (*v331)(v169, v168, 1, v328);
      sub_213CD8330(v169, &qword_27C8EB290, &qword_213D98000);
      v198(&aBlock, 0);

      sub_213D1F330(v327, type metadata accessor for CustomAnnotationViewModel);
      v153 = v326;
      v164 = v167;
    }

    v210 = v321;

    aBlock = MEMORY[0x277D84F90];
    v211 = 1 << *(v210 + 32);
    v212 = -1;
    if (v211 < 64)
    {
      v212 = ~(-1 << v211);
    }

    v213 = v212 & *(v210 + 64);
    v214 = (v211 + 63) >> 6;

    v215 = 0;
    if (v213)
    {
LABEL_91:
      v216 = v215;
      v217 = v321;
      goto LABEL_97;
    }

LABEL_92:
    v217 = v321;
    while (1)
    {
      v216 = v215 + 1;
      if (__OFADD__(v215, 1))
      {
        goto LABEL_142;
      }

      if (v216 >= v214)
      {
        break;
      }

      v213 = v159[v216];
      ++v215;
      if (v213)
      {
        v215 = v216;
LABEL_97:
        v218 = __clz(__rbit64(v213));
        v213 &= v213 - 1;
        v219 = *(*(v217 + 48) + ((v216 << 9) | (8 * v218)));
        sub_213D91DEC();
        sub_213D91E2C();
        sub_213D91E3C();
        sub_213D91DFC();
        if (v213)
        {
          goto LABEL_91;
        }

        goto LABEL_92;
      }
    }

    v220 = aBlock;
    if (aBlock < 0 || (aBlock & 0x4000000000000000) != 0)
    {
      goto LABEL_149;
    }

    sub_213D91F6C();
    sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);
    v221 = v220;
    while (1)
    {
      v222 = v317;

      aBlock = v299;
      v223 = sub_213D17C74(v221, &protocolRef_MKOverlay);
      if (v223)
      {
        v224 = v223;

        v225 = off_28263B068;
        v226 = sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
        v225(v224, v226, &off_28263B040);
      }

      else
      {
        v227 = sub_213D17C74(v221, &protocolRef_MKAnnotation);

        if (!v227)
        {
          goto LABEL_107;
        }

        v228 = off_28263B050;
        v229 = sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
        v228(v227, v229, &off_28263B040);
      }

LABEL_107:
      v326 = v222[2];
      if (!v326)
      {
        return v222;
      }

      v230 = *(v316 + 48);
      i = (v222 + ((*(v323 + 80) + 32) & ~*(v323 + 80)));
      v321 = v325 + 48;

      v231 = 0;
      while (v231 < v222[2])
      {
        v234 = *(v323 + 72);
        v327 = v231;
        v235 = v322;
        sub_213CE2C28(i + v234 * v231, v322, &qword_27C8EB288, &unk_213D972E0);
        v236 = *v235;
        v237 = v230;
        v238 = *(v235 + v230);
        *&v335 = v329;
        v239 = v329;

        v240 = v236;
        v241 = swift_modifyAtReferenceWritableKeyPath();
        v243 = v242;
        v244 = swift_isUniquelyReferenced_nonNull_native();
        v332 = *(v243 + 24);
        v245 = v332;
        *(v243 + 24) = 0x8000000000000000;
        v247 = sub_213CE22A8(v238);
        v248 = v245[2];
        v249 = (v246 & 1) == 0;
        v250 = v248 + v249;
        if (__OFADD__(v248, v249))
        {
          goto LABEL_144;
        }

        v251 = v246;
        if (v245[3] >= v250)
        {
          if ((v244 & 1) == 0)
          {
            sub_213D1CE38(&qword_27C8EB2A8, &qword_213D97300);
          }
        }

        else
        {
          sub_213D1AEB0(v250, v244, &qword_27C8EB2A8, &qword_213D97300);
          v252 = sub_213CE22A8(v238);
          if ((v251 & 1) != (v253 & 1))
          {
            goto LABEL_151;
          }

          v247 = v252;
        }

        v254 = v325;
        v255 = v332;
        if (v251)
        {
          v256 = v332[7];
          v257 = *(v256 + 8 * v247);
          *(v256 + 8 * v247) = v240;
        }

        else
        {
          v332[(v247 >> 6) + 8] |= 1 << v247;
          *(v255[6] + 8 * v247) = v238;
          *(v255[7] + 8 * v247) = v240;
          v258 = v255[2];
          v145 = __OFADD__(v258, 1);
          v259 = v258 + 1;
          if (v145)
          {
            goto LABEL_145;
          }

          v255[2] = v259;
        }

        *(v243 + 24) = v255;
        v241(&aBlock, 0);

        v230 = v237;
        v260 = v315;
        sub_213D1E884(v322 + v237, v315, type metadata accessor for CustomAnnotationViewModel);
        v261 = *v331;
        v262 = v328;
        (*v331)(v260, 0, 1, v328);
        *&v335 = v239;
        v263 = v239;
        v264 = v240;
        v265 = swift_modifyAtReferenceWritableKeyPath();
        v267 = v266;
        if ((*v321)(v260, 1, v262) == 1)
        {
          sub_213CD8330(v260, &qword_27C8EB290, &qword_213D98000);
          v268 = sub_213CE249C(v264);
          if (v269)
          {
            v270 = v268;
            v271 = swift_isUniquelyReferenced_nonNull_native();
            v273 = *(v267 + 16);
            v332 = v273;
            *(v267 + 16) = 0x8000000000000000;
            if (!v271)
            {
              sub_213D1CC00(v272);
              v273 = v332;
            }

            v233 = v313;
            sub_213D1E884(*(v273 + 56) + *(v254 + 72) * v270, v313, type metadata accessor for CustomAnnotationViewModel);
            sub_213D1B698(v270, v273, type metadata accessor for CustomAnnotationViewModel);

            *(v267 + 16) = v273;

            v232 = 0;
          }

          else
          {

            v232 = 1;
            v233 = v313;
          }

          v261(v233, v232, 1, v328);
          sub_213CD8330(v233, &qword_27C8EB290, &qword_213D98000);
        }

        else
        {
          sub_213D1E884(v260, v314, type metadata accessor for CustomAnnotationViewModel);
          v274 = swift_isUniquelyReferenced_nonNull_native();
          v332 = *(v267 + 16);
          v275 = v332;
          *(v267 + 16) = 0x8000000000000000;
          v276 = sub_213CE249C(v264);
          v279 = v275[2];
          v280 = (v277 & 1) == 0;
          v145 = __OFADD__(v279, v280);
          v281 = v279 + v280;
          if (v145)
          {
            goto LABEL_146;
          }

          v282 = v277;
          if (v275[3] >= v281)
          {
            if ((v274 & 1) == 0)
            {
              v287 = v276;
              sub_213D1CC00(v278);
              v276 = v287;
            }
          }

          else
          {
            sub_213D1AB68(v281, v274, v278);
            v276 = sub_213CE249C(v264);
            if ((v282 & 1) != (v283 & 1))
            {
              goto LABEL_152;
            }
          }

          v284 = v332;
          if (v282)
          {
            sub_213D1EA60(v314, v332[7] + *(v254 + 72) * v276, type metadata accessor for CustomAnnotationViewModel);
          }

          else
          {
            v332[(v276 >> 6) + 8] |= 1 << v276;
            *(v284[6] + 8 * v276) = v264;
            sub_213D1E884(v314, v284[7] + *(v254 + 72) * v276, type metadata accessor for CustomAnnotationViewModel);
            v285 = v284[2];
            v145 = __OFADD__(v285, 1);
            v286 = v285 + 1;
            if (v145)
            {
              goto LABEL_147;
            }

            v284[2] = v286;
          }

          *(v267 + 16) = v284;
        }

        v231 = v327 + 1;
        v265(&aBlock, 0);

        v222 = v317;
        if (v326 == v231)
        {

          return v222;
        }
      }

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
      __break(1u);
LABEL_149:
      sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);

      v221 = sub_213D91EAC();
    }
  }

  v48 = *(v25 + 80);
  v49 = a2 + ((v48 + 32) & ~v48);
  v312 = (v25 + 56);
  v317 = *(v25 + 72);
  v294 = v48;
  v293 = (v48 + 24) & ~v48;
  v292 = (v26 + v293 + 7) & 0xFFFFFFFFFFFFFFF8;
  v291 = (v25 + 48);
  v50 = MEMORY[0x277D84F90];
  v306 = MEMORY[0x277D84F90];
  v307 = MEMORY[0x277D84F90];
  v51 = v331;
  while (1)
  {
    sub_213D1E9F8(v49, v51, type metadata accessor for CustomAnnotationViewModel);
    v54 = *v51;
    *&v335 = v329;
    v55 = v329;
    swift_getAtKeyPath();

    v56 = v339;
    if (!v339[2] || (v57 = sub_213CE22A8(v54), (v58 & 1) == 0))
    {
      v77 = v49;
      v78 = v47;
      v79 = v50;

LABEL_18:
      v81 = v331[1];
      v82 = v331[2];
      v83 = v331[3];
      v84 = v331[4];
      v85 = v331[7];
      v86 = v331[8];
      v87 = v331[5];
      v88 = type metadata accessor for MapBridgingCustomAnnotation();
      v89 = objc_allocWithZone(v88);
      v90 = &v89[OBJC_IVAR____TtC15_MapKit_SwiftUI27MapBridgingCustomAnnotation_title];
      *v90 = 0;
      *(v90 + 1) = 0;
      v91 = &v89[OBJC_IVAR____TtC15_MapKit_SwiftUI27MapBridgingCustomAnnotation_subtitle];
      *v91 = 0;
      *(v91 + 1) = 0;
      v92 = OBJC_IVAR____TtC15_MapKit_SwiftUI27MapBridgingCustomAnnotation_mapItem;
      *&v89[OBJC_IVAR____TtC15_MapKit_SwiftUI27MapBridgingCustomAnnotation_mapItem] = 0;
      *v90 = v81;
      *(v90 + 1) = v82;
      *v91 = v83;
      *(v91 + 1) = v84;
      v93 = &v89[OBJC_IVAR____TtC15_MapKit_SwiftUI27MapBridgingCustomAnnotation_coordinate];
      *v93 = v85;
      *(v93 + 1) = v86;
      v94 = *&v89[v92];
      *&v89[v92] = v87;

      v95 = v87;

      v51 = v331;
      v342.receiver = v89;
      v342.super_class = v88;
      v96 = objc_msgSendSuper2(&v342, sel_init);
      v97 = *(v316 + 48);
      v98 = i;
      *i = v96;
      sub_213D1E9F8(v51, v98 + v97, type metadata accessor for CustomAnnotationViewModel);
      v50 = v79;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_213D70850(0, v79[2] + 1, 1, v79);
      }

      v41 = v326;
      v47 = v78;
      v100 = v50[2];
      v99 = v50[3];
      v49 = v77;
      if (v100 >= v99 >> 1)
      {
        v50 = sub_213D70850((v99 > 1), v100 + 1, 1, v50);
      }

      sub_213D1F330(v51, type metadata accessor for CustomAnnotationViewModel);
      v50[2] = v100 + 1;
      sub_213CED608(i, v50 + ((*(v323 + 80) + 32) & ~*(v323 + 80)) + *(v323 + 72) * v100, &qword_27C8EB288, &unk_213D972E0);
      goto LABEL_5;
    }

    v59 = *(v56[7] + 8 * v57);

    *&v335 = v55;
    v60 = v55;
    swift_getAtKeyPath();

    v61 = v338;
    if (!v338[2] || (v62 = sub_213CE249C(v59), (v63 & 1) == 0))
    {
      v77 = v49;
      v78 = v47;
      v79 = v50;

      v80 = v311;
      (*v312)(v311, 1, 1, v328);
      sub_213CD8330(v80, &qword_27C8EB290, &qword_213D98000);
      goto LABEL_18;
    }

    v304 = v60;
    v64 = v51;
    v65 = v311;
    sub_213D1E9F8(v61[7] + v62 * v317, v311, type metadata accessor for CustomAnnotationViewModel);

    v303 = *v312;
    v303(v65, 0, 1, v328);
    sub_213CD8330(v65, &qword_27C8EB290, &qword_213D98000);
    v339 = sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
    v340 = &off_28263B040;
    v66 = v299;
    aBlock = v299;
    v67 = v296;
    sub_213D1E9F8(v64, v296, type metadata accessor for CustomAnnotationViewModel);
    sub_213D1E22C(&aBlock, &v335);
    sub_213D1E9F8(v67, v310, type metadata accessor for CustomAnnotationViewModel);
    sub_213D1E22C(&v335, &v332);
    v68 = v292;
    v69 = swift_allocObject();
    *(v69 + 16) = v59;
    sub_213D1E884(v67, v69 + v293, type metadata accessor for CustomAnnotationViewModel);
    sub_213D1E2DC(&v335, v69 + v68);
    v70 = v59;
    v71 = v66;
    v72 = v305;
    v309 = v70;
    if (!v305)
    {
      goto LABEL_14;
    }

    [v70 coordinate];
    if (vabdd_f64(v74, *(v64 + 56)) < 0.00000000999999994 && vabdd_f64(v73, *(v64 + 64)) < 0.00000000999999994)
    {

LABEL_14:
      v75 = v310;
      [v70 setCoordinate_];
      if (*(v75 + 16))
      {
        v76 = sub_213D9190C();
      }

      else
      {
        v76 = 0;
      }

      v51 = v331;
      [v70 setTitle_];

      if (*(v75 + 32))
      {
        v116 = sub_213D9190C();
      }

      else
      {
        v116 = 0;
      }

      [v70 setSubtitle_];

      v117 = v70;
      v118 = v333;
      v119 = v334;
      __swift_project_boxed_opaque_existential_1(&v332, v333);
      v120 = (*(v119 + 24))(v117, v118, v119);
      if (v120)
      {
        v121 = v120;
        type metadata accessor for SwiftUIAnnotationView();
        v122 = swift_dynamicCastClass();
        v123 = v310;
        if (v122)
        {
          sub_213D2763C(v122, 0);
          v123 = v310;
        }

        else
        {
        }
      }

      else
      {

        v123 = v310;
      }

      v108 = v309;
      __swift_destroy_boxed_opaque_existential_1(&v332);
      sub_213D1F330(v123, type metadata accessor for CustomAnnotationViewModel);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v302 = 0;
      v308 = 0;
      v300 = 0;
      v103 = 0;
      v105 = v298;
      goto LABEL_42;
    }

    __swift_destroy_boxed_opaque_existential_1(&v332);
    sub_213D1F330(v310, type metadata accessor for CustomAnnotationViewModel);
    v101 = swift_allocObject();
    v101[2] = sub_213D1F604;
    v101[3] = v69;
    v101[4] = v72;
    v102 = swift_allocObject();
    *(v102 + 16) = sub_213D1F604;
    *(v102 + 24) = v69;
    v308 = v102;
    v103 = v101;

    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    v104 = swift_allocObject();
    *(v104 + 16) = sub_213D1F610;
    *(v104 + 24) = v101;
    swift_retain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v306 = sub_213D6FE48(0, v306[2] + 1, 1, v306);
    }

    v105 = v298;
    v107 = v306[2];
    v106 = v306[3];
    if (v107 >= v106 >> 1)
    {
      v306 = sub_213D6FE48((v106 > 1), v107 + 1, 1, v306);
    }

    v108 = v309;

    v109 = v306;
    v306[2] = v107 + 1;
    v110 = &v109[2 * v107];
    v110[4] = sub_213D1F608;
    v110[5] = v104;
    v111 = swift_allocObject();
    *(v111 + 16) = sub_213D1F584;
    *(v111 + 24) = v308;
    swift_retain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v307 = sub_213D6FE48(0, v307[2] + 1, 1, v307);
    }

    v113 = v307[2];
    v112 = v307[3];
    if (v113 >= v112 >> 1)
    {
      v307 = sub_213D6FE48((v112 > 1), v113 + 1, 1, v307);
    }

    v114 = v307;
    v307[2] = v113 + 1;
    v115 = &v114[2 * v113];
    v115[4] = sub_213D1F608;
    v115[5] = v111;
    v300 = sub_213D1F610;
    v302 = sub_213D1F584;
    v51 = v331;
LABEL_42:
    v124 = v321;
    v125 = sub_213CE249C(v108);
    v301 = v103;
    if (v126)
    {
      v127 = v125;
      v128 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v124;
      if (!v128)
      {
        sub_213D1CC00(v129);
        v124 = aBlock;
      }

      sub_213D1E884(*(v124 + 56) + v127 * v317, v105, type metadata accessor for CustomAnnotationViewModel);
      v321 = v124;
      sub_213D1B698(v127, v124, type metadata accessor for CustomAnnotationViewModel);
      v130 = 0;
    }

    else
    {
      v130 = 1;
    }

    v131 = v328;
    v132 = v303;
    v303(v105, v130, 1, v328);
    sub_213CD8330(v105, &qword_27C8EB290, &qword_213D98000);
    v133 = v297;
    sub_213D1E9F8(v51, v297, type metadata accessor for CustomAnnotationViewModel);
    v132(v133, 0, 1, v131);
    *&v335 = v304;
    v134 = v304;
    v135 = v309;
    v309 = swift_modifyAtReferenceWritableKeyPath();
    v137 = v136;
    if ((*v291)(v133, 1, v131) != 1)
    {
      break;
    }

    sub_213CD8330(v133, &qword_27C8EB290, &qword_213D98000);
    v52 = v290;
    sub_213D18E08(v135, v290);

    sub_213CD8330(v52, &qword_27C8EB290, &qword_213D98000);
LABEL_4:
    v53 = v300;
    (v309)(&aBlock, 0);
    sub_213CCE520(v302, v308);
    sub_213CCE520(v53, v301);

    sub_213D1F330(v51, type metadata accessor for CustomAnnotationViewModel);
    v41 = v326;
LABEL_5:
    v49 += v317;
    if (!--v47)
    {
      goto LABEL_60;
    }
  }

  sub_213D1E884(v133, v295, type metadata accessor for CustomAnnotationViewModel);
  v138 = swift_isUniquelyReferenced_nonNull_native();
  v332 = *(v137 + 16);
  v139 = v332;
  *(v137 + 16) = 0x8000000000000000;
  v140 = sub_213CE249C(v135);
  v143 = v139[2];
  v144 = (v141 & 1) == 0;
  v145 = __OFADD__(v143, v144);
  v146 = v143 + v144;
  if (v145)
  {
    goto LABEL_148;
  }

  v147 = v141;
  if (v139[3] >= v146)
  {
    if ((v138 & 1) == 0)
    {
      v152 = v140;
      sub_213D1CC00(v142);
      v140 = v152;
      v51 = v331;
    }
  }

  else
  {
    sub_213D1AB68(v146, v138, v142);
    v140 = sub_213CE249C(v135);
    if ((v147 & 1) != (v148 & 1))
    {
      goto LABEL_152;
    }
  }

  v149 = v332;
  if (v147)
  {
    sub_213D1EA60(v295, v332[7] + v140 * v317, type metadata accessor for CustomAnnotationViewModel);

LABEL_58:
    *(v137 + 16) = v149;

    goto LABEL_4;
  }

  v332[(v140 >> 6) + 8] |= 1 << v140;
  *(v149[6] + 8 * v140) = v135;
  sub_213D1E884(v295, v149[7] + v140 * v317, type metadata accessor for CustomAnnotationViewModel);
  v150 = v149[2];
  v145 = __OFADD__(v150, 1);
  v151 = v150 + 1;
  if (!v145)
  {
    v149[2] = v151;
    goto LABEL_58;
  }

  __break(1u);
LABEL_151:
  sub_213D91F8C();
  __break(1u);
LABEL_152:
  type metadata accessor for MapBridgingCustomAnnotation();
  result = sub_213D91F8C();
  __break(1u);
  return result;
}

uint64_t sub_213D14A04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB288, &unk_213D972E0);
  v10 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v12 = (&v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = (&v56 - v14);
  MEMORY[0x28223BE20](v16);
  v18 = &v56 - v17;
  v63 = a1;
  v19 = sub_213D07EAC(a1, a2, a3, a4, a5);
  v20 = v19[2];
  v21 = MEMORY[0x277D84F90];
  v60 = v19;
  v61 = v10;
  v59 = v20;
  if (v20)
  {
    v62 = MEMORY[0x277D84F90];
    sub_213D91E1C();
    v22 = 0;
    v23 = v19 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v24 = &qword_27C8EB288;
    do
    {
      if (v22 >= v19[2])
      {
        goto LABEL_57;
      }

      v25 = v22 + 1;
      sub_213CE2C28(v23 + v61[9] * v22, v18, &qword_27C8EB288, &unk_213D972E0);
      sub_213CE2C28(v18, v15, &qword_27C8EB288, &unk_213D972E0);
      v26 = *v15;
      v27 = *(v58 + 48);
      *v12 = *v15;
      sub_213D1E884(v15 + v27, v12 + v27, type metadata accessor for CustomAnnotationViewModel);
      v28 = v26;
      sub_213CD8330(v12, &qword_27C8EB288, &unk_213D972E0);
      sub_213CD8330(v18, &qword_27C8EB288, &unk_213D972E0);
      sub_213D91DEC();
      sub_213D91E2C();
      v19 = v60;
      sub_213D91E3C();
      sub_213D91DFC();
      v22 = v25;
    }

    while (v59 != v25);
    v23 = v62;
    v21 = MEMORY[0x277D84F90];
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
  }

  v62 = v21;
  v24 = v61;
  if (v23 >> 62)
  {
    goto LABEL_63;
  }

  for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_213D91EBC())
  {
    v30 = MEMORY[0x277D84F90];
    if (i)
    {
      v31 = 0;
      v56 = v23 & 0xFFFFFFFFFFFFFF8;
      v57 = v23 & 0xC000000000000001;
      while (1)
      {
        if (v57)
        {
          MEMORY[0x21604EF80](v31, v23);
        }

        else
        {
          if (v31 >= *(v56 + 16))
          {
            goto LABEL_59;
          }

          v32 = *(v23 + 8 * v31 + 32);
        }

        v33 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_58;
        }

        sub_213D91DEC();
        v24 = i;
        sub_213D91E2C();
        sub_213D91E3C();
        sub_213D91DFC();
        ++v31;
        if (v33 == i)
        {
          v24 = v61;
          v30 = v62;
          break;
        }
      }
    }

    if (v30 < 0 || (v30 & 0x4000000000000000) != 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB210, &unk_213D97270);
      v34 = sub_213D91EAC();
    }

    else
    {
      sub_213D91F6C();
      v34 = v30;
    }

    v23 = off_28263B0B8;
    v35 = off_28263B0B8[0];
    v57 = sub_213CE2B34(0, &qword_27C8EB168, 0x277CD4FA0);
    v35(v34, v57, &off_28263B0B0);

    if (!v59)
    {
      break;
    }

    v62 = MEMORY[0x277D84F90];
    sub_213D91E1C();
    v36 = 0;
    v37 = v60;
    v23 = v60 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v24 = &unk_213D972E0;
    while (v36 < v37[2])
    {
      v38 = v36 + 1;
      sub_213CE2C28(v23 + v61[9] * v36, v18, &qword_27C8EB288, &unk_213D972E0);
      sub_213CE2C28(v18, v15, &qword_27C8EB288, &unk_213D972E0);
      v39 = *v15;
      v40 = *(v58 + 48);
      *v12 = *v15;
      sub_213D1E884(v15 + v40, v12 + v40, type metadata accessor for CustomAnnotationViewModel);
      v41 = v39;
      sub_213CD8330(v12, &qword_27C8EB288, &unk_213D972E0);
      sub_213CD8330(v18, &qword_27C8EB288, &unk_213D972E0);
      sub_213D91DEC();
      sub_213D91E2C();
      v37 = v60;
      sub_213D91E3C();
      sub_213D91DFC();
      v36 = v38;
      if (v59 == v38)
      {

        v42 = v62;
        if (v62 >> 62)
        {
          goto LABEL_37;
        }

        goto LABEL_26;
      }
    }

LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    ;
  }

  v42 = MEMORY[0x277D84F90];
  if (!(MEMORY[0x277D84F90] >> 62))
  {
LABEL_26:
    v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v43)
    {
      goto LABEL_27;
    }

LABEL_38:

    v49 = MEMORY[0x277D84F90];
    v62 = MEMORY[0x277D84F90];
    if (MEMORY[0x277D84F90] >> 62)
    {
      sub_213D91EBC();
      sub_213D91E1C();
      if (sub_213D91EBC())
      {

        MEMORY[0x21604EF80](0, MEMORY[0x277D84F90]);
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_213D91E1C();
    }

    v50 = v62;
    v62 = v49;
    if ((v50 & 0x8000000000000000) != 0 || (v50 & 0x4000000000000000) != 0)
    {
      v51 = sub_213D91EBC();
    }

    else
    {
      v51 = *(v50 + 16);
    }

    v52 = 0;
    v23 = v50 & 0xC000000000000001;
    v12 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v51 == v52)
      {

        off_28263B098(v12, v57, v55);
      }

      if (v23)
      {
        v53 = MEMORY[0x21604EF80](v52, v50);
      }

      else
      {
        if (v52 >= *(v50 + 16))
        {
          goto LABEL_56;
        }

        v53 = *(v50 + 8 * v52 + 32);
      }

      v18 = v53;
      v24 = (v52 + 1);
      if (__OFADD__(v52, 1))
      {
        break;
      }

      v54 = *&v53[OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_mapItem];
      v15 = v54;

      v52 = (v52 + 1);
      if (v54)
      {
        MEMORY[0x21604EBA0]();
        if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_213D91A1C();
        }

        sub_213D91A6C();
        v12 = v62;
        v52 = v24;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

LABEL_37:
  v48 = v42;
  v43 = sub_213D91EBC();
  v42 = v48;
  if (!v43)
  {
    goto LABEL_38;
  }

LABEL_27:
  v44 = 0;
  v45 = v42 & 0xC000000000000001;
  v12 = (v42 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    while (!v45)
    {
      if ((v44 & 0x8000000000000000) != 0)
      {
        goto LABEL_61;
      }

      if (v44 >= v12[2])
      {
        goto LABEL_62;
      }

      if (++v44 == v43)
      {
        goto LABEL_38;
      }
    }

    v15 = v42;
    MEMORY[0x21604EF80](v44);
    result = swift_unknownObjectRelease();
    if (__OFADD__(v44++, 1))
    {
      break;
    }

    v42 = v15;
    if (v44 == v43)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_213D15170(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBAA0, &unk_213D972B0);
  v10 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v53 - v14);
  MEMORY[0x28223BE20](v16);
  v18 = &v53 - v17;
  v62 = a1;
  v19 = sub_213D05E64(a1, a2, a3, a4, a5);
  v20 = v19[2];
  v21 = MEMORY[0x277D84F90];
  v59 = v19;
  v60 = v10;
  v58 = v20;
  if (v20)
  {
    v61 = MEMORY[0x277D84F90];
    sub_213D91E1C();
    v22 = 0;
    v23 = v19 + ((v10[80] + 32) & ~v10[80]);
    v24 = &unk_27C8EBAA0;
    do
    {
      if (v22 >= v19[2])
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v25 = v22 + 1;
      sub_213CE2C28(v23 + *(v60 + 9) * v22, v18, &unk_27C8EBAA0, &unk_213D972B0);
      sub_213CE2C28(v18, v15, &unk_27C8EBAA0, &unk_213D972B0);
      v26 = *v15;
      v27 = *(v57 + 48);
      *v12 = *v15;
      sub_213D1E884(v15 + v27, v12 + v27, type metadata accessor for MarkerAnnotationViewModel);
      v28 = v26;
      sub_213CD8330(v12, &unk_27C8EBAA0, &unk_213D972B0);
      sub_213CD8330(v18, &unk_27C8EBAA0, &unk_213D972B0);
      sub_213D91DEC();
      sub_213D91E2C();
      sub_213D91E3C();
      sub_213D91DFC();
      v22 = v25;
      v19 = v59;
    }

    while (v58 != v25);
    v23 = v61;
    v21 = MEMORY[0x277D84F90];
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
  }

  v61 = v21;
  v24 = v60;
  if (v23 >> 62)
  {
    goto LABEL_68;
  }

  for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_213D91EBC())
  {
    v30 = MEMORY[0x277D84F90];
    if (i)
    {
      v31 = 0;
      v24 = (v23 & 0xFFFFFFFFFFFFFF8);
      v55 = v15;
      v56 = v18;
      while (1)
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          v32 = MEMORY[0x21604EF80](v31, v23);
        }

        else
        {
          if (v31 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_64;
          }

          v32 = *(v23 + 8 * v31 + 32);
        }

        v33 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (*(v32 + OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_isCustomFeature))
        {
        }

        else
        {
          sub_213D91DEC();
          sub_213D91E2C();
          sub_213D91E3C();
          sub_213D91DFC();
          v15 = v55;
          v18 = v56;
        }

        ++v31;
        if (v33 == i)
        {
          v24 = v60;
          v30 = v61;
          goto LABEL_21;
        }
      }

LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

LABEL_21:

    if (v30 < 0 || (v30 & 0x4000000000000000) != 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB210, &unk_213D97270);
      v34 = sub_213D91EAC();
    }

    else
    {
      sub_213D91F6C();
      v34 = v30;
    }

    v23 = off_28263B0B8;
    v35 = off_28263B0B8[0];
    v54 = sub_213CE2B34(0, &qword_27C8EB168, 0x277CD4FA0);
    v35(v34, v54, &off_28263B0B0);

    if (!v58)
    {
      break;
    }

    v61 = MEMORY[0x277D84F90];
    sub_213D91E1C();
    v36 = 0;
    v37 = v59;
    v24 = v59 + ((v24[80] + 32) & ~v24[80]);
    while (v36 < v37[2])
    {
      v38 = v36 + 1;
      sub_213CE2C28(&v24[*(v60 + 9) * v36], v18, &unk_27C8EBAA0, &unk_213D972B0);
      sub_213CE2C28(v18, v15, &unk_27C8EBAA0, &unk_213D972B0);
      v39 = *v15;
      v40 = *(v57 + 48);
      *v12 = *v15;
      sub_213D1E884(v15 + v40, v12 + v40, type metadata accessor for MarkerAnnotationViewModel);
      v41 = v39;
      sub_213CD8330(v12, &unk_27C8EBAA0, &unk_213D972B0);
      sub_213CD8330(v18, &unk_27C8EBAA0, &unk_213D972B0);
      sub_213D91DEC();
      v23 = *(v61 + 16);
      sub_213D91E2C();
      sub_213D91E3C();
      sub_213D91DFC();
      v36 = v38;
      v37 = v59;
      if (v58 == v38)
      {

        v42 = v61;
        goto LABEL_30;
      }
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    ;
  }

  v42 = MEMORY[0x277D84F90];
LABEL_30:
  v61 = MEMORY[0x277D84F90];
  if (v42 >> 62)
  {
    v43 = sub_213D91EBC();
  }

  else
  {
    v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = MEMORY[0x277D84F90];
  if (v43)
  {
    v12 = 0;
    v24 = (v42 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        v44 = MEMORY[0x21604EF80](v12, v42);
      }

      else
      {
        if (v12 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_67;
        }

        v44 = *(v42 + 8 * v12 + 32);
      }

      v15 = v44;
      v45 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_66;
      }

      if (*(v44 + OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_isCustomFeature))
      {
        sub_213D91DEC();
        v18 = *(v61 + 16);
        sub_213D91E2C();
        sub_213D91E3C();
        sub_213D91DFC();
      }

      else
      {
      }

      ++v12;
      if (v45 == v43)
      {
        v46 = v61;
        goto LABEL_45;
      }
    }
  }

  v46 = MEMORY[0x277D84F90];
LABEL_45:

  v61 = v23;
  if ((v46 & 0x8000000000000000) != 0 || (v46 & 0x4000000000000000) != 0)
  {
    v47 = sub_213D91EBC();
  }

  else
  {
    v47 = *(v46 + 16);
  }

  v48 = 0;
  v23 = v46 & 0xC000000000000001;
  v12 = MEMORY[0x277D84F90];
  while (v47 != v48)
  {
    if (v23)
    {
      v49 = MEMORY[0x21604EF80](v48, v46);
    }

    else
    {
      if (v48 >= *(v46 + 16))
      {
        goto LABEL_61;
      }

      v49 = *(v46 + 8 * v48 + 32);
    }

    v18 = v49;
    v24 = (v48 + 1);
    if (__OFADD__(v48, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v50 = *&v49[OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_mapItem];
    v15 = v50;

    ++v48;
    if (v50)
    {
      MEMORY[0x21604EBA0]();
      if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_213D91A1C();
      }

      sub_213D91A6C();
      v12 = v61;
      v48 = v24;
    }
  }

  off_28263B098(v12, v54, v51);
}

uint64_t sub_213D158E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB208, &unk_213D97260);
  v10 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v12 = (&v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = (&v57 - v14);
  MEMORY[0x28223BE20](v16);
  v18 = &v57 - v17;
  v64 = a1;
  v19 = sub_213D03F90(a1, a2, a3, a4, a5);
  v20 = *(v19 + 2);
  v21 = MEMORY[0x277D84F90];
  v61 = v20;
  v62 = v19;
  v60 = v10;
  if (v20)
  {
    v22 = v19;
    v63 = MEMORY[0x277D84F90];
    sub_213D91E1C();
    v23 = 0;
    v24 = &v22[(*(v10 + 80) + 32) & ~*(v10 + 80)];
    v20 = &unk_213D97260;
    do
    {
      if (v23 >= *(v22 + 2))
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v21 = (v23 + 1);
      sub_213CE2C28(&v24[*(v60 + 72) * v23], v18, &qword_27C8EB208, &unk_213D97260);
      sub_213CE2C28(v18, v15, &qword_27C8EB208, &unk_213D97260);
      v25 = *v15;
      v26 = *(v59 + 48);
      *v12 = *v15;
      sub_213D1E884(v15 + v26, v12 + v26, type metadata accessor for UserAnnotationViewModel);
      v27 = v25;
      sub_213CD8330(v12, &qword_27C8EB208, &unk_213D97260);
      sub_213CD8330(v18, &qword_27C8EB208, &unk_213D97260);
      sub_213D91DEC();
      sub_213D91E2C();
      v22 = v62;
      sub_213D91E3C();
      sub_213D91DFC();
      v23 = v21;
    }

    while (v61 != v21);
    v28 = v63;
    v21 = MEMORY[0x277D84F90];
    v20 = v61;
    if (!(v63 >> 62))
    {
LABEL_6:
      v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v29)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_6;
    }
  }

  v36 = v28;
  v29 = sub_213D91EBC();
  v28 = v36;
  if (v29)
  {
LABEL_7:
    v30 = 0;
    v31 = v28 & 0xC000000000000001;
    v32 = v28 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      while (!v31)
      {
        if ((v30 & 0x8000000000000000) != 0)
        {
          goto LABEL_59;
        }

        if (v30 >= *(v32 + 16))
        {
          goto LABEL_60;
        }

        if (++v30 == v29)
        {
          goto LABEL_18;
        }
      }

      v33 = v28;
      MEMORY[0x21604EF80](v30);
      result = swift_unknownObjectRelease();
      v35 = __OFADD__(v30++, 1);
      if (v35)
      {
        break;
      }

      v28 = v33;
      if (v30 == v29)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
    return result;
  }

LABEL_18:

  v58 = v21 >> 62;
  if (v21 >> 62)
  {
    goto LABEL_64;
  }

  v37 = MEMORY[0x277D84F90];
  sub_213D91F0C();
  while (1)
  {
    v38 = off_28263B0B8[0];
    v57 = sub_213CE2B34(0, &qword_27C8EB168, 0x277CD4FA0);
    v38(v37, v57, &off_28263B0B0);

    if (!v20)
    {
      break;
    }

    v63 = v21;
    sub_213D91E1C();
    v39 = 0;
    v40 = v62;
    v41 = &v62[(*(v60 + 80) + 32) & ~*(v60 + 80)];
    v20 = &qword_27C8EB208;
    while (v39 < *(v40 + 2))
    {
      v21 = (v39 + 1);
      sub_213CE2C28(&v41[*(v60 + 72) * v39], v18, &qword_27C8EB208, &unk_213D97260);
      sub_213CE2C28(v18, v15, &qword_27C8EB208, &unk_213D97260);
      v42 = *v15;
      v43 = *(v59 + 48);
      *v12 = *v15;
      sub_213D1E884(v15 + v43, v12 + v43, type metadata accessor for UserAnnotationViewModel);
      v44 = v42;
      sub_213CD8330(v12, &qword_27C8EB208, &unk_213D97260);
      sub_213CD8330(v18, &qword_27C8EB208, &unk_213D97260);
      sub_213D91DEC();
      sub_213D91E2C();
      v40 = v62;
      sub_213D91E3C();
      sub_213D91DFC();
      v39 = v21;
      if (v61 == v21)
      {

        v45 = v63;
        if (v63 >> 62)
        {
          goto LABEL_55;
        }

        goto LABEL_25;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB210, &unk_213D97270);
    v37 = sub_213D91EAC();
  }

  v45 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
LABEL_55:
    v56 = v45;
    v46 = sub_213D91EBC();
    v45 = v56;
  }

  else
  {
LABEL_25:
    v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = MEMORY[0x277D84F90];
  if (v46)
  {
    v47 = 0;
    v48 = v45 & 0xC000000000000001;
    v49 = v45 & 0xFFFFFFFFFFFFFF8;
    do
    {
      while (!v48)
      {
        if ((v47 & 0x8000000000000000) != 0)
        {
          goto LABEL_62;
        }

        if (v47 >= *(v49 + 16))
        {
          goto LABEL_63;
        }

        if (++v47 == v46)
        {
          goto LABEL_35;
        }
      }

      v12 = v45;
      MEMORY[0x21604EF80](v47);
      result = swift_unknownObjectRelease();
      v35 = __OFADD__(v47++, 1);
      if (v35)
      {
        goto LABEL_67;
      }

      v45 = v12;
    }

    while (v47 != v46);
  }

LABEL_35:

  v63 = v15;
  if (v58)
  {
    sub_213D91EBC();
    sub_213D91E1C();
    if (sub_213D91EBC())
    {

      MEMORY[0x21604EF80](0, MEMORY[0x277D84F90]);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_213D91E1C();
  }

  v50 = v63;
  v63 = v15;
  if ((v50 & 0x8000000000000000) != 0 || (v50 & 0x4000000000000000) != 0)
  {
    v51 = sub_213D91EBC();
  }

  else
  {
    v51 = v50[2];
  }

  v52 = 0;
  v18 = (v50 & 0xC000000000000001);
  v12 = MEMORY[0x277D84F90];
  while (v51 != v52)
  {
    if (v18)
    {
      v53 = MEMORY[0x21604EF80](v52, v50);
    }

    else
    {
      if (v52 >= v50[2])
      {
        goto LABEL_58;
      }

      v53 = v50[v52 + 4];
    }

    v15 = v53;
    v21 = (v52 + 1);
    if (__OFADD__(v52, 1))
    {
      goto LABEL_57;
    }

    v20 = *(v53 + OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_mapItem);
    v54 = v20;

    v52 = (v52 + 1);
    if (v20)
    {
      MEMORY[0x21604EBA0]();
      if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_213D91A1C();
      }

      sub_213D91A6C();
      v12 = v63;
      v52 = v21;
    }
  }

  off_28263B098(v12, v57, v55);
}

uint64_t sub_213D16014(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v66 = a1;
  v5 = sub_213D02A04(a1, a2, a3, a4, a5);
  v6 = sub_213D1DEB8(MEMORY[0x277D84F90], &unk_27C8EB1E0, &qword_213D97248);
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v49 = v7 - 1;
    v50 = v5;
    v12 = 32;
    while (1)
    {
      v55 = v10;
      v57 = v9;
      v51 = v12;
      v53 = v8;
      v14 = *(v5 + v12 + 16);
      v13 = *(v5 + v12 + 32);
      v59 = *(v5 + v12);
      v60 = v14;
      v61 = v13;
      v15 = *(v5 + v12 + 96);
      v16 = *(v5 + v12 + 80);
      v17 = *(v5 + v12 + 48);
      v63 = *(v5 + v12 + 64);
      v64 = v16;
      v65 = v15;
      v62 = v17;
      v18 = v60;
      v19 = v61;
      v20 = v16;
      v21 = BYTE8(v16);
      v22 = WORD4(v60);
      sub_213CE2C28(&v59, v58, &qword_27C8ECC90, &qword_213D97240);

      sub_213D1E6A0(v18, v22);

      sub_213CE2B28(v20, v21);
      sub_213CCE520(v11, 0);
      v23 = v59;
      v9 = swift_allocObject();
      *(v9 + 16) = sub_213D184B8;
      *(v9 + 24) = 0;
      sub_213CCE520(v55, v57);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58[0] = v6;
      v25 = sub_213CE21EC(v15);
      v27 = v6[2];
      v28 = (v26 & 1) == 0;
      v29 = __OFADD__(v27, v28);
      v30 = v27 + v28;
      if (v29)
      {
        goto LABEL_34;
      }

      v31 = v26;
      if (v6[3] >= v30)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v39 = v25;
          sub_213D1C498(&unk_27C8EB1E0, &qword_213D97248);
          v25 = v39;
          v6 = v58[0];
          if (v31)
          {
            goto LABEL_11;
          }

          goto LABEL_9;
        }
      }

      else
      {
        sub_213D19EE4(v30, isUniquelyReferenced_nonNull_native, &unk_27C8EB1E0, &qword_213D97248);
        v6 = v58[0];
        v25 = sub_213CE21EC(v15);
        if ((v31 & 1) != (v32 & 1))
        {
          goto LABEL_37;
        }
      }

      if (v31)
      {
        goto LABEL_11;
      }

LABEL_9:
      v33 = v25;
      v34 = (*(v9 + 16))();
      v6[(v33 >> 6) + 8] |= 1 << v33;
      *(v6[6] + 8 * v33) = v15;
      *(v6[7] + 8 * v33) = v34;
      v35 = v6[2];
      v29 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v29)
      {
        goto LABEL_36;
      }

      v25 = v33;
      v6[2] = v36;
LABEL_11:
      v37 = (v6[7] + 8 * v25);
      v38 = v23;
      MEMORY[0x21604EBA0]();
      if (*((*v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_213D91A1C();
      }

      sub_213D91A6C();

      v5 = v50;
      if (v49 == v53)
      {

        v54 = sub_213D1F580;
        v52 = sub_213D184B8;
        goto LABEL_20;
      }

      v8 = v53 + 1;
      v12 = v51 + 104;
      v11 = sub_213D184B8;
      v10 = sub_213D1F580;
      if ((v53 + 1) >= *(v50 + 16))
      {
        goto LABEL_35;
      }
    }
  }

  v52 = 0;
  v54 = 0;
  v9 = 0;
LABEL_20:
  v40 = 0;
  v41 = v6 + 8;
  v42 = 1 << *(v6 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & v6[8];
  v45 = (v42 + 63) >> 6;
  v56 = v6;
  if (v44)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v46 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v46 >= v45)
    {

      sub_213CCE520(v52, 0);
      return sub_213CCE520(v54, v9);
    }

    v44 = v41[v46];
    ++v40;
    if (v44)
    {
      v40 = v46;
      do
      {
LABEL_27:
        if (*(v6[7] + ((v40 << 9) | (8 * __clz(__rbit64(v44))))) >> 62)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB160, &qword_213D97200);
          sub_213D91EAC();
        }

        else
        {
          swift_bridgeObjectRetain_n();
          sub_213D91F6C();
        }

        v44 &= v44 - 1;

        v47 = off_28263B0D0;
        sub_213CE2B34(0, &qword_27C8EB168, 0x277CD4FA0);
        v47();

        v6 = v56;
      }

      while (v44);
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  type metadata accessor for MKOverlayLevel(0);
  result = sub_213D91F8C();
  __break(1u);
  return result;
}

uint64_t sub_213D16504(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v52 = a1;
  v5 = sub_213D01228(a1, a2, a3, a4, a5);
  v6 = sub_213D1DEB8(MEMORY[0x277D84F90], &qword_27C8EB1B8, &qword_213D97228);
  v7 = v5[2];
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v48 = v7 - 1;
    v12 = 4;
    while (1)
    {
      v13 = *&v5[v12];
      v14 = *&v5[v12 + 2];
      v15 = *&v5[v12 + 6];
      v50[2] = *&v5[v12 + 4];
      v50[3] = v15;
      v50[0] = v13;
      v50[1] = v14;
      v16 = *&v5[v12 + 8];
      v17 = *&v5[v12 + 10];
      v18 = *&v5[v12 + 14];
      v50[6] = *&v5[v12 + 12];
      v51 = v18;
      v50[4] = v16;
      v50[5] = v17;
      sub_213CE2C28(v50, v49, &qword_27C8EB1B0, &qword_213D97220);
      sub_213D1E4C4(v50 + 8);
      sub_213CCE520(v11, 0);
      v19 = *&v50[0];
      v20 = *(&v51 + 1);
      v21 = swift_allocObject();
      *(v21 + 16) = sub_213D184B8;
      *(v21 + 24) = 0;
      sub_213CCE520(v10, v9);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49[0] = v6;
      v23 = sub_213CE21EC(v20);
      v25 = v6[2];
      v26 = (v24 & 1) == 0;
      v27 = __OFADD__(v25, v26);
      v28 = v25 + v26;
      if (v27)
      {
        goto LABEL_34;
      }

      v29 = v24;
      if (v6[3] >= v28)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v37 = v23;
          sub_213D1C498(&qword_27C8EB1B8, &qword_213D97228);
          v23 = v37;
          v6 = v49[0];
          if (v29)
          {
            goto LABEL_11;
          }

          goto LABEL_9;
        }
      }

      else
      {
        sub_213D19EE4(v28, isUniquelyReferenced_nonNull_native, &qword_27C8EB1B8, &qword_213D97228);
        v6 = v49[0];
        v23 = sub_213CE21EC(v20);
        if ((v29 & 1) != (v30 & 1))
        {
          goto LABEL_37;
        }
      }

      if (v29)
      {
        goto LABEL_11;
      }

LABEL_9:
      v31 = v23;
      v32 = (*(v21 + 16))();
      v6[(v31 >> 6) + 8] |= 1 << v31;
      *(v6[6] + 8 * v31) = v20;
      *(v6[7] + 8 * v31) = v32;
      v33 = v6[2];
      v27 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v27)
      {
        goto LABEL_36;
      }

      v23 = v31;
      v6[2] = v34;
LABEL_11:
      v35 = (v6[7] + 8 * v23);
      v36 = v19;
      MEMORY[0x21604EBA0]();
      if (*((*v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_213D91A1C();
      }

      sub_213D91A6C();

      if (v48 == v8)
      {

        v47 = sub_213D1F580;
        v46 = sub_213D184B8;
        goto LABEL_20;
      }

      ++v8;
      v12 += 16;
      v11 = sub_213D184B8;
      v10 = sub_213D1F580;
      v9 = v21;
      if (v8 >= v5[2])
      {
        goto LABEL_35;
      }
    }
  }

  v46 = 0;
  v47 = 0;
  v21 = 0;
LABEL_20:
  v38 = 0;
  v39 = 1 << *(v6 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & v6[8];
  v42 = (v39 + 63) >> 6;
  if (v41)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v43 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v43 >= v42)
    {

      sub_213CCE520(v46, 0);
      return sub_213CCE520(v47, v21);
    }

    v41 = v6[v43 + 8];
    ++v38;
    if (v41)
    {
      v38 = v43;
      do
      {
LABEL_27:
        if (*(v6[7] + ((v38 << 9) | (8 * __clz(__rbit64(v41))))) >> 62)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB160, &qword_213D97200);
          sub_213D91EAC();
        }

        else
        {
          swift_bridgeObjectRetain_n();
          sub_213D91F6C();
        }

        v41 &= v41 - 1;

        v44 = off_28263B0D0;
        sub_213CE2B34(0, &qword_27C8EB168, 0x277CD4FA0);
        v44();
      }

      while (v41);
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  type metadata accessor for MKOverlayLevel(0);
  result = sub_213D91F8C();
  __break(1u);
  return result;
}

uint64_t sub_213D169A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v52 = a1;
  v5 = sub_213CFF9F8(a1, a2, a3, a4, a5);
  v6 = sub_213D1DEB8(MEMORY[0x277D84F90], &unk_27C8EB170, &qword_213D97208);
  v7 = v5[2];
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v48 = v7 - 1;
    v12 = 4;
    while (1)
    {
      v50[0] = *&v5[v12];
      v13 = *&v5[v12 + 2];
      v14 = *&v5[v12 + 4];
      v15 = *&v5[v12 + 8];
      v50[3] = *&v5[v12 + 6];
      v50[4] = v15;
      v50[1] = v13;
      v50[2] = v14;
      v16 = *&v5[v12 + 10];
      v17 = *&v5[v12 + 12];
      v18 = *&v5[v12 + 16];
      v50[7] = *&v5[v12 + 14];
      v51 = v18;
      v50[5] = v16;
      v50[6] = v17;
      sub_213CE2C28(v50, v49, &qword_27C8ECC50, &unk_213D971F0);
      sub_213D1E108(v50 + 8);
      sub_213CCE520(v11, 0);
      v19 = *&v50[0];
      v20 = *(&v51 + 1);
      v21 = swift_allocObject();
      *(v21 + 16) = sub_213D184B8;
      *(v21 + 24) = 0;
      sub_213CCE520(v10, v9);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49[0] = v6;
      v23 = sub_213CE21EC(v20);
      v25 = v6[2];
      v26 = (v24 & 1) == 0;
      v27 = __OFADD__(v25, v26);
      v28 = v25 + v26;
      if (v27)
      {
        goto LABEL_34;
      }

      v29 = v24;
      if (v6[3] >= v28)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v37 = v23;
          sub_213D1C498(&unk_27C8EB170, &qword_213D97208);
          v23 = v37;
          v6 = v49[0];
          if (v29)
          {
            goto LABEL_11;
          }

          goto LABEL_9;
        }
      }

      else
      {
        sub_213D19EE4(v28, isUniquelyReferenced_nonNull_native, &unk_27C8EB170, &qword_213D97208);
        v6 = v49[0];
        v23 = sub_213CE21EC(v20);
        if ((v29 & 1) != (v30 & 1))
        {
          goto LABEL_37;
        }
      }

      if (v29)
      {
        goto LABEL_11;
      }

LABEL_9:
      v31 = v23;
      v32 = (*(v21 + 16))();
      v6[(v31 >> 6) + 8] |= 1 << v31;
      *(v6[6] + 8 * v31) = v20;
      *(v6[7] + 8 * v31) = v32;
      v33 = v6[2];
      v27 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v27)
      {
        goto LABEL_36;
      }

      v23 = v31;
      v6[2] = v34;
LABEL_11:
      v35 = (v6[7] + 8 * v23);
      v36 = v19;
      MEMORY[0x21604EBA0]();
      if (*((*v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_213D91A1C();
      }

      sub_213D91A6C();

      if (v48 == v8)
      {

        v47 = sub_213D1E15C;
        v46 = sub_213D184B8;
        goto LABEL_20;
      }

      ++v8;
      v12 += 18;
      v11 = sub_213D184B8;
      v10 = sub_213D1E15C;
      v9 = v21;
      if (v8 >= v5[2])
      {
        goto LABEL_35;
      }
    }
  }

  v46 = 0;
  v47 = 0;
  v21 = 0;
LABEL_20:
  v38 = 0;
  v39 = 1 << *(v6 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & v6[8];
  v42 = (v39 + 63) >> 6;
  if (v41)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v43 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v43 >= v42)
    {

      sub_213CCE520(v46, 0);
      return sub_213CCE520(v47, v21);
    }

    v41 = v6[v43 + 8];
    ++v38;
    if (v41)
    {
      v38 = v43;
      do
      {
LABEL_27:
        if (*(v6[7] + ((v38 << 9) | (8 * __clz(__rbit64(v41))))) >> 62)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB160, &qword_213D97200);
          sub_213D91EAC();
        }

        else
        {
          swift_bridgeObjectRetain_n();
          sub_213D91F6C();
        }

        v41 &= v41 - 1;

        v44 = off_28263B0D0;
        sub_213CE2B34(0, &qword_27C8EB168, 0x277CD4FA0);
        v44();
      }

      while (v41);
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  type metadata accessor for MKOverlayLevel(0);
  result = sub_213D91F8C();
  __break(1u);
  return result;
}

uint64_t sub_213D16E44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v66 = a1;
  v5 = sub_213D0D144(a1, a2, a3, a4, a5);
  v6 = sub_213D1DEB8(MEMORY[0x277D84F90], &unk_27C8EB1E0, &qword_213D97248);
  v7 = v5[2];
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v49 = v7 - 1;
    v50 = v5;
    v12 = 32;
    while (1)
    {
      v55 = v10;
      v57 = v9;
      v51 = v12;
      v53 = v8;
      v14 = *(v5 + v12 + 16);
      v13 = *(v5 + v12 + 32);
      v59 = *(v5 + v12);
      v60 = v14;
      v61 = v13;
      v15 = *(v5 + v12 + 96);
      v16 = *(v5 + v12 + 80);
      v17 = *(v5 + v12 + 48);
      v63 = *(v5 + v12 + 64);
      v64 = v16;
      v65 = v15;
      v62 = v17;
      v18 = v60;
      v19 = v61;
      v20 = v16;
      v21 = BYTE8(v16);
      v22 = WORD4(v60);
      sub_213CE2C28(&v59, v58, &qword_27C8ECC90, &qword_213D97240);

      sub_213D1E6A0(v18, v22);

      sub_213CE2B28(v20, v21);
      sub_213CCE520(v11, 0);
      v23 = v59;
      v9 = swift_allocObject();
      *(v9 + 16) = sub_213D184B8;
      *(v9 + 24) = 0;
      sub_213CCE520(v55, v57);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58[0] = v6;
      v25 = sub_213CE21EC(v15);
      v27 = v6[2];
      v28 = (v26 & 1) == 0;
      v29 = __OFADD__(v27, v28);
      v30 = v27 + v28;
      if (v29)
      {
        goto LABEL_34;
      }

      v31 = v26;
      if (v6[3] >= v30)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v39 = v25;
          sub_213D1C498(&unk_27C8EB1E0, &qword_213D97248);
          v25 = v39;
          v6 = v58[0];
          if (v31)
          {
            goto LABEL_11;
          }

          goto LABEL_9;
        }
      }

      else
      {
        sub_213D19EE4(v30, isUniquelyReferenced_nonNull_native, &unk_27C8EB1E0, &qword_213D97248);
        v6 = v58[0];
        v25 = sub_213CE21EC(v15);
        if ((v31 & 1) != (v32 & 1))
        {
          goto LABEL_37;
        }
      }

      if (v31)
      {
        goto LABEL_11;
      }

LABEL_9:
      v33 = v25;
      v34 = (*(v9 + 16))();
      v6[(v33 >> 6) + 8] |= 1 << v33;
      *(v6[6] + 8 * v33) = v15;
      *(v6[7] + 8 * v33) = v34;
      v35 = v6[2];
      v29 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v29)
      {
        goto LABEL_36;
      }

      v25 = v33;
      v6[2] = v36;
LABEL_11:
      v37 = (v6[7] + 8 * v25);
      v38 = v23;
      MEMORY[0x21604EBA0]();
      if (*((*v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_213D91A1C();
      }

      sub_213D91A6C();

      v5 = v50;
      if (v49 == v53)
      {

        v54 = sub_213D1F580;
        v52 = sub_213D184B8;
        goto LABEL_20;
      }

      v8 = v53 + 1;
      v12 = v51 + 104;
      v11 = sub_213D184B8;
      v10 = sub_213D1F580;
      if ((v53 + 1) >= v50[2])
      {
        goto LABEL_35;
      }
    }
  }

  v52 = 0;
  v54 = 0;
  v9 = 0;
LABEL_20:
  v40 = 0;
  v41 = v6 + 8;
  v42 = 1 << *(v6 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & v6[8];
  v45 = (v42 + 63) >> 6;
  v56 = v6;
  if (v44)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v46 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v46 >= v45)
    {

      sub_213CCE520(v52, 0);
      return sub_213CCE520(v54, v9);
    }

    v44 = v41[v46];
    ++v40;
    if (v44)
    {
      v40 = v46;
      do
      {
LABEL_27:
        if (*(v6[7] + ((v40 << 9) | (8 * __clz(__rbit64(v44))))) >> 62)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB160, &qword_213D97200);
          sub_213D91EAC();
        }

        else
        {
          swift_bridgeObjectRetain_n();
          sub_213D91F6C();
        }

        v44 &= v44 - 1;

        v47 = off_28263B060;
        sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
        v47();

        v6 = v56;
      }

      while (v44);
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  type metadata accessor for MKOverlayLevel(0);
  result = sub_213D91F8C();
  __break(1u);
  return result;
}

uint64_t sub_213D17334(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v52 = a1;
  v5 = sub_213D0B88C(a1, a2, a3, a4, a5);
  v6 = sub_213D1DEB8(MEMORY[0x277D84F90], &qword_27C8EB1B8, &qword_213D97228);
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v48 = v7 - 1;
    v12 = 32;
    while (1)
    {
      v13 = *(v5 + v12);
      v14 = *(v5 + v12 + 16);
      v15 = *(v5 + v12 + 48);
      v50[2] = *(v5 + v12 + 32);
      v50[3] = v15;
      v50[0] = v13;
      v50[1] = v14;
      v16 = *(v5 + v12 + 64);
      v17 = *(v5 + v12 + 80);
      v18 = *(v5 + v12 + 112);
      v50[6] = *(v5 + v12 + 96);
      v51 = v18;
      v50[4] = v16;
      v50[5] = v17;
      sub_213CE2C28(v50, v49, &qword_27C8EB1B0, &qword_213D97220);
      sub_213D1E4C4(v50 + 8);
      sub_213CCE520(v11, 0);
      v19 = *&v50[0];
      v20 = *(&v51 + 1);
      v21 = swift_allocObject();
      *(v21 + 16) = sub_213D184B8;
      *(v21 + 24) = 0;
      sub_213CCE520(v10, v9);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49[0] = v6;
      v23 = sub_213CE21EC(v20);
      v25 = v6[2];
      v26 = (v24 & 1) == 0;
      v27 = __OFADD__(v25, v26);
      v28 = v25 + v26;
      if (v27)
      {
        goto LABEL_34;
      }

      v29 = v24;
      if (v6[3] >= v28)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v37 = v23;
          sub_213D1C498(&qword_27C8EB1B8, &qword_213D97228);
          v23 = v37;
          v6 = v49[0];
          if (v29)
          {
            goto LABEL_11;
          }

          goto LABEL_9;
        }
      }

      else
      {
        sub_213D19EE4(v28, isUniquelyReferenced_nonNull_native, &qword_27C8EB1B8, &qword_213D97228);
        v6 = v49[0];
        v23 = sub_213CE21EC(v20);
        if ((v29 & 1) != (v30 & 1))
        {
          goto LABEL_37;
        }
      }

      if (v29)
      {
        goto LABEL_11;
      }

LABEL_9:
      v31 = v23;
      v32 = (*(v21 + 16))();
      v6[(v31 >> 6) + 8] |= 1 << v31;
      *(v6[6] + 8 * v31) = v20;
      *(v6[7] + 8 * v31) = v32;
      v33 = v6[2];
      v27 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v27)
      {
        goto LABEL_36;
      }

      v23 = v31;
      v6[2] = v34;
LABEL_11:
      v35 = (v6[7] + 8 * v23);
      v36 = v19;
      MEMORY[0x21604EBA0]();
      if (*((*v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_213D91A1C();
      }

      sub_213D91A6C();

      if (v48 == v8)
      {

        v47 = sub_213D1F580;
        v46 = sub_213D184B8;
        goto LABEL_20;
      }

      ++v8;
      v12 += 128;
      v11 = sub_213D184B8;
      v10 = sub_213D1F580;
      v9 = v21;
      if (v8 >= *(v5 + 16))
      {
        goto LABEL_35;
      }
    }
  }

  v46 = 0;
  v47 = 0;
  v21 = 0;
LABEL_20:
  v38 = 0;
  v39 = 1 << *(v6 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & v6[8];
  v42 = (v39 + 63) >> 6;
  if (v41)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v43 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v43 >= v42)
    {

      sub_213CCE520(v46, 0);
      return sub_213CCE520(v47, v21);
    }

    v41 = v6[v43 + 8];
    ++v38;
    if (v41)
    {
      v38 = v43;
      do
      {
LABEL_27:
        if (*(v6[7] + ((v38 << 9) | (8 * __clz(__rbit64(v41))))) >> 62)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB160, &qword_213D97200);
          sub_213D91EAC();
        }

        else
        {
          swift_bridgeObjectRetain_n();
          sub_213D91F6C();
        }

        v41 &= v41 - 1;

        v44 = off_28263B060;
        sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
        v44();
      }

      while (v41);
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  type metadata accessor for MKOverlayLevel(0);
  result = sub_213D91F8C();
  __break(1u);
  return result;
}

uint64_t sub_213D177D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v52 = a1;
  v5 = sub_213D09FA0(a1, a2, a3, a4, a5);
  v6 = sub_213D1DEB8(MEMORY[0x277D84F90], &unk_27C8EB170, &qword_213D97208);
  v7 = v5[2];
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v48 = v7 - 1;
    v12 = 4;
    while (1)
    {
      v50[0] = *&v5[v12];
      v13 = *&v5[v12 + 2];
      v14 = *&v5[v12 + 4];
      v15 = *&v5[v12 + 8];
      v50[3] = *&v5[v12 + 6];
      v50[4] = v15;
      v50[1] = v13;
      v50[2] = v14;
      v16 = *&v5[v12 + 10];
      v17 = *&v5[v12 + 12];
      v18 = *&v5[v12 + 16];
      v50[7] = *&v5[v12 + 14];
      v51 = v18;
      v50[5] = v16;
      v50[6] = v17;
      sub_213CE2C28(v50, v49, &qword_27C8ECC50, &unk_213D971F0);
      sub_213D1E108(v50 + 8);
      sub_213CCE520(v11, 0);
      v19 = *&v50[0];
      v20 = *(&v51 + 1);
      v21 = swift_allocObject();
      *(v21 + 16) = sub_213D184B8;
      *(v21 + 24) = 0;
      sub_213CCE520(v10, v9);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49[0] = v6;
      v23 = sub_213CE21EC(v20);
      v25 = v6[2];
      v26 = (v24 & 1) == 0;
      v27 = __OFADD__(v25, v26);
      v28 = v25 + v26;
      if (v27)
      {
        goto LABEL_34;
      }

      v29 = v24;
      if (v6[3] >= v28)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v37 = v23;
          sub_213D1C498(&unk_27C8EB170, &qword_213D97208);
          v23 = v37;
          v6 = v49[0];
          if (v29)
          {
            goto LABEL_11;
          }

          goto LABEL_9;
        }
      }

      else
      {
        sub_213D19EE4(v28, isUniquelyReferenced_nonNull_native, &unk_27C8EB170, &qword_213D97208);
        v6 = v49[0];
        v23 = sub_213CE21EC(v20);
        if ((v29 & 1) != (v30 & 1))
        {
          goto LABEL_37;
        }
      }

      if (v29)
      {
        goto LABEL_11;
      }

LABEL_9:
      v31 = v23;
      v32 = (*(v21 + 16))();
      v6[(v31 >> 6) + 8] |= 1 << v31;
      *(v6[6] + 8 * v31) = v20;
      *(v6[7] + 8 * v31) = v32;
      v33 = v6[2];
      v27 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v27)
      {
        goto LABEL_36;
      }

      v23 = v31;
      v6[2] = v34;
LABEL_11:
      v35 = (v6[7] + 8 * v23);
      v36 = v19;
      MEMORY[0x21604EBA0]();
      if (*((*v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_213D91A1C();
      }

      sub_213D91A6C();

      if (v48 == v8)
      {

        v47 = sub_213D1F580;
        v46 = sub_213D184B8;
        goto LABEL_20;
      }

      ++v8;
      v12 += 18;
      v11 = sub_213D184B8;
      v10 = sub_213D1F580;
      v9 = v21;
      if (v8 >= v5[2])
      {
        goto LABEL_35;
      }
    }
  }

  v46 = 0;
  v47 = 0;
  v21 = 0;
LABEL_20:
  v38 = 0;
  v39 = 1 << *(v6 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & v6[8];
  v42 = (v39 + 63) >> 6;
  if (v41)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v43 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v43 >= v42)
    {

      sub_213CCE520(v46, 0);
      return sub_213CCE520(v47, v21);
    }

    v41 = v6[v43 + 8];
    ++v38;
    if (v41)
    {
      v38 = v43;
      do
      {
LABEL_27:
        if (*(v6[7] + ((v38 << 9) | (8 * __clz(__rbit64(v41))))) >> 62)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB160, &qword_213D97200);
          sub_213D91EAC();
        }

        else
        {
          swift_bridgeObjectRetain_n();
          sub_213D91F6C();
        }

        v41 &= v41 - 1;

        v44 = off_28263B060;
        sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
        v44();
      }

      while (v41);
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  type metadata accessor for MKOverlayLevel(0);
  result = sub_213D91F8C();
  __break(1u);
  return result;
}

uint64_t sub_213D17C74(unint64_t a1, uint64_t *a2)
{
  v9 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_213D91E1C();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_213D91EBC())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x21604EF80](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if (!swift_dynamicCastObjCProtocolConditional())
      {

        return 0;
      }

      sub_213D91DEC();
      sub_213D91E2C();
      sub_213D91E3C();
      sub_213D91DFC();
      if (v7 == i)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_213D91EBC();
    sub_213D91E1C();
  }

  return v9;
}

uint64_t sub_213D17DE0(unint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_15:
    sub_213D91EBC();
    sub_213D91E1C();
    v2 = sub_213D91EBC();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_213D91E1C();
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x21604EF80](v3, a1);
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_12;
          }
        }

        type metadata accessor for MapBridgingMarker();
        if (!swift_dynamicCastClass())
        {
          goto LABEL_13;
        }

        sub_213D91DEC();
        sub_213D91E2C();
        sub_213D91E3C();
        sub_213D91DFC();
        ++v3;
      }

      while (v4 != v2);
    }
  }

  return v6;
}

unint64_t sub_213D17F50(unint64_t a1)
{
  v2 = sub_213D17C74(a1, &protocolRef_MKOverlay);
  if (v2)
  {
    v3 = v2;
    v4 = off_28263B0D8;
    v5 = sub_213CE2B34(0, &qword_27C8EB168, 0x277CD4FA0);
    v4(v3, v5, &off_28263B0B0);
  }

  result = sub_213D17C74(a1, &protocolRef_MKAnnotation);
  if (result)
  {
    v7 = result;
    v8 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
      goto LABEL_56;
    }

    v9 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
    v10 = MEMORY[0x277D84F90];
    if (!v9)
    {
      goto LABEL_22;
    }

    v11 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21604EF80](v11, v7);
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          v10 = MEMORY[0x277D84F90];
LABEL_22:

          v14 = off_28263B0C0;
          v27 = sub_213CE2B34(0, &qword_27C8EB168, 0x277CD4FA0);
          v14(v7, v27, &off_28263B0B0);
          if (!v9)
          {
            v18 = v10;
            goto LABEL_37;
          }

          v15 = 0;
          while (1)
          {
            if ((v7 & 0xC000000000000001) != 0)
            {
              MEMORY[0x21604EF80](v15, v7);
              v16 = v15 + 1;
              if (__OFADD__(v15, 1))
              {
                goto LABEL_34;
              }
            }

            else
            {
              if (v15 >= *(v8 + 16))
              {
                goto LABEL_53;
              }

              swift_unknownObjectRetain();
              v16 = v15 + 1;
              if (__OFADD__(v15, 1))
              {
LABEL_34:
                __break(1u);
LABEL_35:
                v18 = v10;
                v10 = MEMORY[0x277D84F90];
LABEL_37:

                v7 = sub_213D17DE0(v18);

                if (v7)
                {
                  v29 = v10;
                  if (v7 >> 62)
                  {
                    v19 = sub_213D91EBC();
                  }

                  else
                  {
                    v19 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  v20 = 0;
                  v8 = v7 & 0xC000000000000001;
                  v28 = MEMORY[0x277D84F90];
                  while (v19 != v20)
                  {
                    if (v8)
                    {
                      v21 = MEMORY[0x21604EF80](v20, v7);
                    }

                    else
                    {
                      if (v20 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_55;
                      }

                      v21 = *(v7 + 8 * v20 + 32);
                    }

                    v22 = v21;
                    v23 = v20 + 1;
                    if (__OFADD__(v20, 1))
                    {
                      goto LABEL_54;
                    }

                    v24 = *&v21[OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_mapItem];
                    v25 = v24;

                    ++v20;
                    if (v24)
                    {
                      MEMORY[0x21604EBA0](v26);
                      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                      {
                        sub_213D91A1C();
                      }

                      sub_213D91A6C();
                      v28 = v29;
                      v20 = v23;
                    }
                  }

                  off_28263B0A0(v28, v27);
                }

                return result;
              }
            }

            type metadata accessor for MapBridgingMarker();
            v17 = swift_dynamicCastClass();
            if (v17 && (*(v17 + OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_isCustomFeature) & 1) != 0)
            {
              sub_213D91DEC();
              sub_213D91E2C();
              sub_213D91E3C();
              sub_213D91DFC();
            }

            else
            {
              swift_unknownObjectRelease();
            }

            ++v15;
            if (v16 == v9)
            {
              goto LABEL_35;
            }
          }
        }
      }

      else
      {
        if (v11 >= *(v8 + 16))
        {
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          v9 = sub_213D91EBC();
          goto LABEL_8;
        }

        swift_unknownObjectRetain();
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_20;
        }
      }

      type metadata accessor for MapBridgingMarker();
      v13 = swift_dynamicCastClass();
      if (v13 && *(v13 + OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_isCustomFeature) == 1)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        sub_213D91DEC();
        sub_213D91E2C();
        sub_213D91E3C();
        sub_213D91DFC();
      }

      ++v11;
      if (v12 == v9)
      {
        goto LABEL_21;
      }
    }
  }

  return result;
}

double sub_213D183BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

uint64_t sub_213D18410(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = MEMORY[0x277D84F90];
    sub_213D91E1C();
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      sub_213D903BC();
      sub_213D91DEC();
      sub_213D91E2C();
      sub_213D91E3C();
      sub_213D91DFC();
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

uint64_t sub_213D184C4@<X0>(char *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v64) = a3;
  v69 = a2;
  v67 = a4;
  v7 = type metadata accessor for MarkerAnnotationViewModel(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MapContentList.Item.Content(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ResolvedMarker(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for MapContentList.Item(0);
  v17 = *(v65 + 24);
  v68 = a1;
  sub_213D1E9F8(&a1[v17], v13, type metadata accessor for MapContentList.Item.Content);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v66 = v7;
    v62 = v8;
    v63 = v5;
    sub_213D1E884(v13, v16, type metadata accessor for ResolvedMarker);
    v18 = sub_213D90CCC();
    v19 = v14;
    if (v18)
    {
      v20 = v18;
      v21 = [v18 string];

      v22 = sub_213D9193C();
      v60 = v23;
      v61 = v22;
    }

    else
    {
      v60 = 0;
      v61 = 0;
    }

    v25 = sub_213D90CEC();
    if (v25)
    {
      v26 = v25;
      v27 = [v25 string];

      v28 = sub_213D9193C();
      v58 = v29;
      v59 = v28;
    }

    else
    {
      v58 = 0;
      v59 = 0;
    }

    v30 = *(v65 + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB240, &qword_213D972A0);
    sub_213CEDCEC(&qword_27C8EB248, &qword_27C8EB240, &qword_213D972A0, &unk_213D9A610);
    v65 = v30;
    sub_213D9101C();
    if (v69)
    {
      v31 = 1;
    }

    else
    {
      v31 = v64 & (v70 ^ 1);
    }

    v69 = v31;
    v64 = *v68;

    v32 = sub_213D90CDC();
    if (v32)
    {
      v33 = v32;
      v34 = [v32 &off_278172178];

      v35 = sub_213D9193C();
      v56 = v36;
      v57 = v35;
    }

    else
    {
      v56 = 0;
      v57 = 0;
    }

    v37 = *&v16[*(v14 + 36)];
    v38 = v16[*(v14 + 40)];
    v39 = v37;
    v40 = sub_213D90CBC();
    v41 = *(v16 + 8);
    v42 = *v16;
    v43 = *(v16 + 1);
    v44 = v16[18];
    v45 = *(v66 + 68);
    v46 = sub_213D9100C();
    (*(*(v46 - 8) + 16))(&v10[v45], &v68[v65], v46);
    v48 = v56;
    v47 = v57;
    *v10 = v64;
    *(v10 + 1) = v47;
    v49 = v60;
    v50 = v61;
    *(v10 + 2) = v48;
    *(v10 + 3) = v50;
    *(v10 + 4) = v49;
    *(v10 + 5) = v37;
    v10[48] = v38;
    v51 = v58;
    *(v10 + 7) = v59;
    *(v10 + 8) = v51;
    *(v10 + 9) = v40;
    *(v10 + 40) = v41;
    *(v10 + 11) = v42;
    *(v10 + 12) = v43;
    v10[104] = v69 & 1;
    v10[105] = v44;
    *(v10 + 14) = 0;
    if (*&v16[*(v19 + 44)])
    {
      sub_213CE2B34(0, &qword_27C8E9370, 0x277D75348);

      v52 = sub_213D91C3C();
      sub_213D1F330(v16, type metadata accessor for ResolvedMarker);
      *(v10 + 14) = v52;
    }

    else
    {
      sub_213D1F330(v16, type metadata accessor for ResolvedMarker);
    }

    v53 = v62;
    v54 = v67;
    sub_213D1E9F8(v10, v67, type metadata accessor for MarkerAnnotationViewModel);
    (*(v53 + 56))(v54, 0, 1, v66);
    return sub_213D1F330(v10, type metadata accessor for MarkerAnnotationViewModel);
  }

  else
  {
    sub_213D1F330(v13, type metadata accessor for MapContentList.Item.Content);
    return (*(v8 + 56))(v67, 1, 1, v7);
  }
}

uint64_t sub_213D18A48(uint64_t a1)
{
  v2 = sub_213D9089C();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_213D90B2C();
}

uint64_t sub_213D18B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_213CE23F4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    v20 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_213D1C790(v9);
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for UserAnnotationViewModel(0);
    v19 = *(v12 - 8);
    sub_213D1E884(v11 + *(v19 + 72) * v7, a2, type metadata accessor for UserAnnotationViewModel);
    sub_213D1B698(v7, v10, type metadata accessor for UserAnnotationViewModel);
    *v3 = v10;
    v13 = *(v19 + 56);
    v14 = a2;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for UserAnnotationViewModel(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a2;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_213D18C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_213CE2448(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    v20 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_213D1C9C8(v9);
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for MarkerAnnotationViewModel(0);
    v19 = *(v12 - 8);
    sub_213D1E884(v11 + *(v19 + 72) * v7, a2, type metadata accessor for MarkerAnnotationViewModel);
    sub_213D1B698(v7, v10, type metadata accessor for MarkerAnnotationViewModel);
    *v3 = v10;
    v13 = *(v19 + 56);
    v14 = a2;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for MarkerAnnotationViewModel(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a2;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_213D18E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_213CE249C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    v20 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_213D1CC00(v9);
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for CustomAnnotationViewModel(0);
    v19 = *(v12 - 8);
    sub_213D1E884(v11 + *(v19 + 72) * v7, a2, type metadata accessor for CustomAnnotationViewModel);
    sub_213D1B698(v7, v10, type metadata accessor for CustomAnnotationViewModel);
    *v3 = v10;
    v13 = *(v19 + 56);
    v14 = a2;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for CustomAnnotationViewModel(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a2;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

void sub_213D18F84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB2E0, &qword_213D97330);
  v6 = sub_213D91EDC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      }

      v22 = sub_213D91FAC();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
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

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_213D191F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB2C0, &qword_213D97310);
  v6 = sub_213D91EDC();
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
      v20 = 8 * (v17 | (v8 << 6));
      v21 = *(*(v5 + 48) + v20);
      v22 = *(v5 + 56) + v20;
      if (v4)
      {
        sub_213CE2A78(v22, v32);
      }

      else
      {
        sub_213CE2A1C(v22, v32);
      }

      sub_213D91FBC();
      sub_213D9179C();
      v23 = sub_213D91FFC();
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
      v16 = 8 * v15;
      *(*(v7 + 48) + v16) = v21;
      sub_213CE2A78(v32, *(v7 + 56) + v16);
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

void sub_213D19490(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB2C8, &qword_213D97318);
  v35 = v4;
  v6 = sub_213D91EDC();
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
        sub_213CEB34C(v22, v36);
      }

      else
      {
        sub_213D1F124(v22, v36);
        v23 = v21;
      }

      sub_213D9193C();
      sub_213D91FBC();
      sub_213D9195C();
      v24 = sub_213D91FFC();

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
      sub_213CEB34C(v36, (*(v7 + 56) + 32 * v15));
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

void sub_213D19760(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB1A0, &qword_213D97218);
  v49 = v4;
  v6 = sub_213D91EDC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v47 = v2;
    v48 = v5;
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
      if (v49)
      {
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v5 + 56) + 136 * v20;
        v50 = *v22;
        v51 = *(v22 + 24);
        v52 = *(v22 + 8);
        v23 = *(v22 + 40);
        v24 = *(v22 + 56);
        v25 = *(v22 + 64);
        v26 = *(v22 + 72);
        v53 = *(v22 + 48);
        v54 = *(v22 + 80);
        v27 = *(v22 + 88);
        v28 = *(v22 + 104);
        v55 = *(v22 + 96);
        v56 = *(v22 + 112);
        v29 = *(v22 + 120);
        v57 = *(v22 + 128);
      }

      else
      {
        v30 = *(*(v5 + 48) + 8 * v20);
        v31 = *(v5 + 56) + 136 * v20;
        *v59 = *v31;
        v32 = *(v31 + 64);
        v34 = *(v31 + 16);
        v33 = *(v31 + 32);
        v60 = *(v31 + 48);
        v61 = v32;
        *&v59[16] = v34;
        *&v59[32] = v33;
        v36 = *(v31 + 96);
        v35 = *(v31 + 112);
        v37 = *(v31 + 80);
        v65 = *(v31 + 128);
        v63 = v36;
        v64 = v35;
        v62 = v37;
        v57 = v65;
        v29 = BYTE8(v35);
        v55 = v36;
        v56 = v35;
        v28 = BYTE8(v36);
        v24 = *(&v60 + 1);
        v26 = *(&v61 + 1);
        v25 = v61;
        v27 = *(&v37 + 1);
        v53 = v60;
        v54 = v37;
        v51 = *&v59[24];
        v52 = *&v59[8];
        v23 = v59[40];
        v50 = *v59;
        v21 = v30;
        sub_213D1E18C(v59, v58);
      }

      v38 = sub_213D91C4C();
      v39 = -1 << *(v7 + 32);
      v40 = v38 & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v14 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v14 + 8 * v41);
          if (v45 != -1)
          {
            v15 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v40) & ~*(v14 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v59[0] = v23;
      v58[0] = v28;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 136 * v15;
      *v16 = v50;
      *(v16 + 8) = v52;
      *(v16 + 24) = v51;
      *(v16 + 40) = v23;
      *(v16 + 48) = v53;
      *(v16 + 56) = v24;
      *(v16 + 64) = v25;
      *(v16 + 72) = v26;
      *(v16 + 80) = v54;
      *(v16 + 88) = v27;
      *(v16 + 96) = v55;
      *(v16 + 104) = v28;
      *(v16 + 112) = v56;
      *(v16 + 120) = v29;
      *(v16 + 128) = v57;
      ++*(v7 + 16);
      v5 = v48;
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

    if (v49)
    {
      v46 = 1 << *(v5 + 32);
      if (v46 >= 64)
      {
        bzero(v9, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v46;
      }

      *(v5 + 16) = 0;
    }

    v3 = v47;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_213D19B34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB1D0, &qword_213D97238);
  v47 = v4;
  v6 = sub_213D91EDC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v46 = v2;
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
      if (v47)
      {
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v5 + 56) + 120 * v20;
        v49 = *v22;
        v50 = *(v22 + 8);
        v48 = *(v22 + 24);
        v23 = *(v22 + 40);
        v24 = *(v22 + 48);
        v25 = *(v22 + 56);
        v26 = *(v22 + 72);
        v51 = *(v22 + 64);
        v52 = *(v22 + 80);
        v27 = *(v22 + 88);
        v28 = *(v22 + 104);
        v53 = *(v22 + 112);
        v54 = *(v22 + 96);
      }

      else
      {
        v29 = *(*(v5 + 48) + 8 * v20);
        v30 = *(v5 + 56) + 120 * v20;
        v32 = *(v30 + 32);
        v31 = *(v30 + 48);
        v33 = *(v30 + 16);
        *v56 = *v30;
        *&v56[16] = v33;
        *&v56[32] = v32;
        v35 = *(v30 + 80);
        v34 = *(v30 + 96);
        v36 = *(v30 + 64);
        v61 = *(v30 + 112);
        v59 = v35;
        v60 = v34;
        v57 = v31;
        v58 = v36;
        v53 = v61;
        v54 = v34;
        v28 = BYTE8(v34);
        v27 = BYTE8(v35);
        v23 = *&v56[40];
        v25 = *(&v31 + 1);
        v24 = v31;
        v51 = v36;
        v52 = v35;
        v26 = *(&v36 + 1);
        v50 = *&v56[8];
        v48 = *&v56[24];
        v49 = *v56;
        v21 = v29;
        sub_213D1E518(v56, v55);
      }

      v37 = sub_213D91C4C();
      v38 = -1 << *(v7 + 32);
      v39 = v37 & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v14 + 8 * (v39 >> 6))) == 0)
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
          v44 = *(v14 + 8 * v40);
          if (v44 != -1)
          {
            v15 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v39) & ~*(v14 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v56[0] = v27;
      v55[0] = v28;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 120 * v15;
      *v16 = v49;
      *(v16 + 8) = v50;
      *(v16 + 24) = v48;
      *(v16 + 40) = v23;
      *(v16 + 48) = v24;
      *(v16 + 56) = v25;
      *(v16 + 64) = v51;
      *(v16 + 72) = v26;
      *(v16 + 80) = v52;
      *(v16 + 88) = v27;
      *(v16 + 96) = v54;
      *(v16 + 104) = v28;
      *(v16 + 112) = v53;
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

    if ((v47 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_34;
    }

    v45 = 1 << *(v5 + 32);
    v3 = v46;
    if (v45 >= 64)
    {
      bzero((v5 + 64), ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v45;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_213D19EE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v33 = v6;
  v8 = sub_213D91EDC();
  v9 = v8;
  if (*(v7 + 16))
  {
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
      if ((v33 & 1) == 0)
      {
      }

      sub_213D91FBC();
      MEMORY[0x21604F190](v22);
      v24 = sub_213D91FFC();
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

    if ((v33 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v32 = 1 << *(v7 + 32);
    v5 = v4;
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

LABEL_33:
  *v5 = v9;
}

void sub_213D1A16C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB200, &qword_213D97258);
  v45 = v4;
  v6 = sub_213D91EDC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v44 = v2;
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
      if (v45)
      {
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v5 + 56) + 96 * v20;
        v23 = *v22;
        v46 = *(v22 + 16);
        v47 = *(v22 + 8);
        v48 = *(v22 + 24);
        v24 = *(v22 + 32);
        v25 = *(v22 + 40);
        v26 = *(v22 + 48);
        v27 = *(v22 + 64);
        v51 = *(v22 + 72);
        v28 = *(v22 + 80);
        v49 = *(v22 + 56);
        v50 = *(v22 + 88);
      }

      else
      {
        v29 = *(*(v5 + 48) + 8 * v20);
        v30 = (*(v5 + 56) + 96 * v20);
        v32 = v30[2];
        v31 = v30[3];
        v33 = v30[5];
        v56 = v30[4];
        v57 = v33;
        v54 = v32;
        v55 = v31;
        v34 = v30[1];
        v53[0] = *v30;
        v53[1] = v34;
        v50 = *(&v33 + 1);
        v51 = *(&v56 + 1);
        v28 = v33;
        v25 = *(&v54 + 1);
        v24 = v54;
        v26 = v31;
        v27 = v56;
        v48 = *(&v34 + 1);
        v49 = *(&v31 + 1);
        v46 = v34;
        v47 = *(&v53[0] + 1);
        v23 = *&v53[0];
        v21 = v29;
        sub_213D1E6AC(v53, v52);
      }

      v35 = sub_213D91C4C();
      v36 = -1 << *(v7 + 32);
      v37 = v35 & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v14 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v14 + 8 * v38);
          if (v42 != -1)
          {
            v15 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v37) & ~*(v14 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      LOBYTE(v53[0]) = v28;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 96 * v15;
      *v16 = v23;
      *(v16 + 8) = v47;
      *(v16 + 16) = v46;
      *(v16 + 24) = v48;
      *(v16 + 32) = v24;
      *(v16 + 40) = v25;
      *(v16 + 48) = v26;
      *(v16 + 56) = v49;
      *(v16 + 64) = v27;
      *(v16 + 72) = v51;
      *(v16 + 80) = v28;
      *(v16 + 88) = v50;
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

    if (v45)
    {
      v43 = 1 << *(v5 + 32);
      if (v43 >= 64)
      {
        bzero((v5 + 64), ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v43;
      }

      *(v5 + 16) = 0;
    }

    v3 = v44;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_213D1A4D8(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v5 = a2;
  v6 = type metadata accessor for UserAnnotationViewModel(0);
  v39 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB238, &qword_213D97298);
  v40 = v5;
  v10 = sub_213D91EDC();
  v11 = v10;
  if (*(v9 + 16))
  {
    v38 = v3;
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
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(*(v9 + 48) + 8 * v23);
      v25 = *(v39 + 72);
      v26 = *(v9 + 56) + v25 * v23;
      if (v40)
      {
        sub_213D1E884(v26, v8, type metadata accessor for UserAnnotationViewModel);
      }

      else
      {
        sub_213D1E9F8(v26, v8, type metadata accessor for UserAnnotationViewModel);
        v27 = v24;
      }

      v28 = sub_213D91C4C();
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
      *(*(v11 + 48) + 8 * v19) = v24;
      sub_213D1E884(v8, *(v11 + 56) + v25 * v19, type metadata accessor for UserAnnotationViewModel);
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

    if ((v40 & 1) == 0)
    {

      v4 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v9 + 32);
    v4 = v38;
    if (v36 >= 64)
    {
      bzero((v9 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v4 = v11;
}

void sub_213D1A820(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v5 = a2;
  v6 = type metadata accessor for MarkerAnnotationViewModel(0);
  v39 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB280, &qword_213D972D8);
  v40 = v5;
  v10 = sub_213D91EDC();
  v11 = v10;
  if (*(v9 + 16))
  {
    v38 = v3;
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
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(*(v9 + 48) + 8 * v23);
      v25 = *(v39 + 72);
      v26 = *(v9 + 56) + v25 * v23;
      if (v40)
      {
        sub_213D1E884(v26, v8, type metadata accessor for MarkerAnnotationViewModel);
      }

      else
      {
        sub_213D1E9F8(v26, v8, type metadata accessor for MarkerAnnotationViewModel);
        v27 = v24;
      }

      v28 = sub_213D91C4C();
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
      *(*(v11 + 48) + 8 * v19) = v24;
      sub_213D1E884(v8, *(v11 + 56) + v25 * v19, type metadata accessor for MarkerAnnotationViewModel);
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

    if ((v40 & 1) == 0)
    {

      v4 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v9 + 32);
    v4 = v38;
    if (v36 >= 64)
    {
      bzero((v9 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v4 = v11;
}

void sub_213D1AB68(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v5 = a2;
  v6 = type metadata accessor for CustomAnnotationViewModel(0);
  v39 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB2B0, &qword_213D97308);
  v40 = v5;
  v10 = sub_213D91EDC();
  v11 = v10;
  if (*(v9 + 16))
  {
    v38 = v3;
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
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(*(v9 + 48) + 8 * v23);
      v25 = *(v39 + 72);
      v26 = *(v9 + 56) + v25 * v23;
      if (v40)
      {
        sub_213D1E884(v26, v8, type metadata accessor for CustomAnnotationViewModel);
      }

      else
      {
        sub_213D1E9F8(v26, v8, type metadata accessor for CustomAnnotationViewModel);
        v27 = v24;
      }

      v28 = sub_213D91C4C();
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
      *(*(v11 + 48) + 8 * v19) = v24;
      sub_213D1E884(v8, *(v11 + 56) + v25 * v19, type metadata accessor for CustomAnnotationViewModel);
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

    if ((v40 & 1) == 0)
    {

      v4 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v9 + 32);
    v4 = v38;
    if (v36 >= 64)
    {
      bzero((v9 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v4 = v11;
}

void sub_213D1AEB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = v6;
  v8 = sub_213D91EDC();
  v9 = v8;
  if (*(v7 + 16))
  {
    v38 = v4;
    v39 = v7;
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
      v23 = __clz(__rbit64(v14));
      v41 = (v14 - 1) & v14;
LABEL_16:
      v26 = v23 | (v10 << 6);
      v27 = *(*(v7 + 48) + 8 * v26);
      v28 = *(*(v7 + 56) + 8 * v26);
      if ((v40 & 1) == 0)
      {

        v29 = v28;
      }

      sub_213D91FBC();
      MEMORY[0x21604F190](*(v27 + 16));
      v30 = *(v27 + 16);
      if (v30)
      {
        v31 = v27 + 32;
        do
        {
          sub_213D1E468(v31, v47);
          sub_213D1E468(v47, v44);
          if (v46)
          {
            v42[0] = v44[0];
            v42[1] = v44[1];
            v43 = v45;
            MEMORY[0x21604F190](1);
            sub_213D91D3C();
            sub_213CE2B7C(v42);
          }

          else
          {
            v32 = *&v44[0];
            MEMORY[0x21604F190](0);
            MEMORY[0x21604F190](v32);
          }

          sub_213CDF5B8(v47);
          v31 += 48;
          --v30;
        }

        while (v30);
      }

      v17 = sub_213D91FFC();
      v18 = -1 << *(v9 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v16 + 8 * (v19 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v18) >> 6;
        v22 = v28;
        while (++v20 != v34 || (v33 & 1) == 0)
        {
          v35 = v20 == v34;
          if (v20 == v34)
          {
            v20 = 0;
          }

          v33 |= v35;
          v36 = *(v16 + 8 * v20);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v20 << 6);
            goto LABEL_8;
          }
        }

LABEL_41:
        __break(1u);
        return;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~*(v16 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
      v22 = v28;
LABEL_8:
      *(v16 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v9 + 48) + 8 * v21) = v27;
      *(*(v9 + 56) + 8 * v21) = v22;
      ++*(v9 + 16);
      v7 = v39;
      v14 = v41;
    }

    v24 = v10;
    while (1)
    {
      v10 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v10 >= v15)
      {
        break;
      }

      v25 = v11[v10];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v41 = (v25 - 1) & v25;
        goto LABEL_16;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_39;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_39:
  *v5 = v9;
}

void sub_213D1B1E8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_213D91CDC() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_213D91C4C();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 136 * v3);
          v19 = (v17 + 136 * v6);
          if (v3 != v6 || v18 >= v19 + 136)
          {
            memmove(v18, v19, 0x88uLL);
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

void sub_213D1B378(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_213D91CDC() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_213D91C4C();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 120 * v3);
          v19 = (v17 + 120 * v6);
          if (v3 != v6 || v18 >= v19 + 120)
          {
            memmove(v18, v19, 0x78uLL);
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

void sub_213D1B508(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_213D91CDC() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_213D91C4C();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 96 * v3);
          v19 = (v17 + 96 * v6);
          if (v3 != v6 || v18 >= v19 + 96)
          {
            memmove(v18, v19, 0x60uLL);
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

void sub_213D1B698(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_213D91CDC() + 1) & ~v6;
    do
    {
      v11 = *(*(a2 + 48) + 8 * v7);
      v12 = sub_213D91C4C();

      v13 = v12 & v9;
      if (v4 >= v10)
      {
        if (v13 < v10 || v4 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v10 && v4 < v13)
      {
        goto LABEL_5;
      }

      v16 = *(a2 + 48);
      v17 = (v16 + 8 * v4);
      v18 = (v16 + 8 * v7);
      if (v4 != v7 || v17 >= v18 + 1)
      {
        *v17 = *v18;
      }

      v19 = *(a2 + 56);
      v20 = *(*(a3(0) - 8) + 72);
      v21 = v20 * v4;
      v22 = v19 + v20 * v4;
      v23 = v20 * v7;
      v24 = v19 + v20 * v7 + v20;
      if (v21 < v23 || v22 >= v24)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v21 == v23)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }
}

uint64_t sub_213D1B868(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_213D91CDC() + 1) & ~v5;
    v25 = v4;
    do
    {
      v9 = v2;
      v10 = *(*(v2 + 48) + 8 * v6);
      sub_213D91FBC();
      MEMORY[0x21604F190](*(v10 + 16));
      v11 = *(v10 + 16);
      if (v11)
      {
        v12 = v10 + 32;

        do
        {
          sub_213D1E468(v12, v31);
          sub_213D1E468(v31, v28);
          if (v30)
          {
            v26[0] = v28[0];
            v26[1] = v28[1];
            v27 = v29;
            MEMORY[0x21604F190](1);
            sub_213D91D3C();
            sub_213CE2B7C(v26);
          }

          else
          {
            v13 = *&v28[0];
            MEMORY[0x21604F190](0);
            MEMORY[0x21604F190](v13);
          }

          sub_213CDF5B8(v31);
          v12 += 48;
          --v11;
        }

        while (v11);
      }

      else
      {
      }

      v14 = sub_213D91FFC();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        v4 = v25;
        v2 = v9;
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v25;
        v2 = v9;
        if (v15 >= v8)
        {
          goto LABEL_17;
        }
      }

      if (v3 >= v15)
      {
LABEL_17:
        v16 = *(v2 + 48);
        v17 = (v16 + 8 * v3);
        v18 = (v16 + 8 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(v2 + 56);
        v20 = (v19 + 8 * v3);
        v21 = (v19 + 8 * v6);
        if (v3 != v6 || v20 >= v21 + 1)
        {
          *v20 = *v21;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(v2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v24;
    ++*(v2 + 36);
  }

  return result;
}

unint64_t sub_213D1BAC8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_213D91CDC() + 1) & ~v5;
    while (1)
    {
      sub_213D91FBC();
      sub_213D9179C();
      result = sub_213D91FFC();
      v9 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v9 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v3);
      v12 = (v10 + 8 * v6);
      if (v3 != v6 || v11 >= v12 + 1)
      {
        *v11 = *v12;
      }

      v13 = *(a2 + 56);
      result = v13 + 8 * v3;
      if (v3 < v6 || result >= v13 + 8 * v6 + 8)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if (v9 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v9)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_18:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v14 = *(a2 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v16;
    ++*(a2 + 36);
  }

  return result;
}

void sub_213D1BC7C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB2E0, &qword_213D97330);
  v2 = *v0;
  v3 = sub_213D91ECC();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void sub_213D1BDD8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB2C0, &qword_213D97310);
  v2 = *v0;
  v3 = sub_213D91ECC();
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
        v17 = 8 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        sub_213CE2A1C(*(v2 + 56) + v17, v19);
        *(*(v4 + 48) + v17) = v18;
        sub_213CE2A78(v19, *(v4 + 56) + v17);
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

void sub_213D1BF54()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB2C8, &qword_213D97318);
  v2 = *v0;
  v3 = sub_213D91ECC();
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
        sub_213D1F124(*(v2 + 56) + 32 * v17, v20);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_213CEB34C(v20, (*(v4 + 56) + 32 * v17));
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

void sub_213D1C0D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB1A0, &qword_213D97218);
  v2 = *v0;
  v3 = sub_213D91ECC();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = *(*(v2 + 48) + 8 * v16);
      v18 = *(v2 + 56) + 136 * v16;
      v20 = *(v18 + 16);
      v19 = *(v18 + 32);
      v21 = *(v18 + 64);
      v37 = *(v18 + 48);
      v38 = v21;
      v23 = *(v18 + 96);
      v22 = *(v18 + 112);
      v24 = *(v18 + 80);
      v42 = *(v18 + 128);
      v40 = v23;
      v41 = v22;
      v39 = v24;
      v34 = *v18;
      v35 = v20;
      v36 = v19;
      *(*(v4 + 48) + 8 * v16) = v17;
      v25 = *(v4 + 56) + 136 * v16;
      *v25 = v34;
      v26 = v35;
      v27 = v36;
      v28 = v38;
      *(v25 + 48) = v37;
      *(v25 + 64) = v28;
      *(v25 + 16) = v26;
      *(v25 + 32) = v27;
      v29 = v39;
      v30 = v40;
      v31 = v41;
      *(v25 + 128) = v42;
      *(v25 + 96) = v30;
      *(v25 + 112) = v31;
      *(v25 + 80) = v29;
      v32 = v17;
      sub_213D1E18C(&v34, v33);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
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

    *v1 = v4;
  }
}

void sub_213D1C2B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB1D0, &qword_213D97238);
  v2 = *v0;
  v3 = sub_213D91ECC();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 8 * v16;
      v18 = *(*(v2 + 48) + 8 * v16);
      v16 *= 120;
      v19 = *(v2 + 56) + v16;
      v21 = *(v19 + 80);
      v20 = *(v19 + 96);
      v22 = *(v19 + 64);
      v42 = *(v19 + 112);
      v40 = v21;
      v41 = v20;
      v39 = v22;
      v24 = *v19;
      v23 = *(v19 + 16);
      v25 = *(v19 + 48);
      v37 = *(v19 + 32);
      v38 = v25;
      v35 = v24;
      v36 = v23;
      *(*(v4 + 48) + v17) = v18;
      v26 = *(v4 + 56) + v16;
      v27 = v35;
      v28 = v36;
      v29 = v38;
      *(v26 + 32) = v37;
      *(v26 + 48) = v29;
      *v26 = v27;
      *(v26 + 16) = v28;
      v30 = v39;
      v31 = v40;
      v32 = v41;
      *(v26 + 112) = v42;
      *(v26 + 80) = v31;
      *(v26 + 96) = v32;
      *(v26 + 64) = v30;
      v33 = v18;
      sub_213D1E518(&v35, v34);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
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

    *v1 = v4;
  }
}

void sub_213D1C498(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_213D91ECC();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
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

      v18 = *(v4 + 64 + 8 * v10);
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

    *v3 = v6;
  }
}

void sub_213D1C5E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB200, &qword_213D97258);
  v2 = *v0;
  v3 = sub_213D91ECC();
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
        v19 = (*(v2 + 56) + 96 * v17);
        v20 = v19[2];
        v21 = v19[3];
        v22 = v19[5];
        v35 = v19[4];
        v36 = v22;
        v34 = v21;
        v23 = v19[1];
        v31 = *v19;
        v32 = v23;
        v33 = v20;
        *(*(v4 + 48) + 8 * v17) = v18;
        v24 = (*(v4 + 56) + 96 * v17);
        v25 = v32;
        *v24 = v31;
        v24[1] = v25;
        v26 = v33;
        v27 = v34;
        v28 = v36;
        v24[4] = v35;
        v24[5] = v28;
        v24[2] = v26;
        v24[3] = v27;
        v29 = v18;
        sub_213D1E6AC(&v31, &v30);
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

void sub_213D1C790(double a1)
{
  v2 = v1;
  v3 = type metadata accessor for UserAnnotationViewModel(0);
  v26 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB238, &qword_213D97298);
  v6 = *v1;
  v7 = sub_213D91ECC();
  v8 = v7;
  if (*(v6 + 16))
  {
    v25 = v2;
    v9 = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        v23 = *(v26 + 72) * v21;
        sub_213D1E9F8(*(v6 + 56) + v23, v5, type metadata accessor for UserAnnotationViewModel);
        *(*(v8 + 48) + 8 * v21) = v22;
        sub_213D1E884(v5, *(v8 + 56) + v23, type metadata accessor for UserAnnotationViewModel);
        v24 = v22;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v25;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v2 = v8;
  }
}

void sub_213D1C9C8(double a1)
{
  v2 = v1;
  v3 = type metadata accessor for MarkerAnnotationViewModel(0);
  v26 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB280, &qword_213D972D8);
  v6 = *v1;
  v7 = sub_213D91ECC();
  v8 = v7;
  if (*(v6 + 16))
  {
    v25 = v2;
    v9 = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        v23 = *(v26 + 72) * v21;
        sub_213D1E9F8(*(v6 + 56) + v23, v5, type metadata accessor for MarkerAnnotationViewModel);
        *(*(v8 + 48) + 8 * v21) = v22;
        sub_213D1E884(v5, *(v8 + 56) + v23, type metadata accessor for MarkerAnnotationViewModel);
        v24 = v22;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v25;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v2 = v8;
  }
}

void sub_213D1CC00(double a1)
{
  v2 = v1;
  v3 = type metadata accessor for CustomAnnotationViewModel(0);
  v26 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB2B0, &qword_213D97308);
  v6 = *v1;
  v7 = sub_213D91ECC();
  v8 = v7;
  if (*(v6 + 16))
  {
    v25 = v2;
    v9 = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        v23 = *(v26 + 72) * v21;
        sub_213D1E9F8(*(v6 + 56) + v23, v5, type metadata accessor for CustomAnnotationViewModel);
        *(*(v8 + 48) + 8 * v21) = v22;
        sub_213D1E884(v5, *(v8 + 56) + v23, type metadata accessor for CustomAnnotationViewModel);
        v24 = v22;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v25;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v2 = v8;
  }
}

void sub_213D1CE38(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_213D91ECC();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;

        v21 = v20;
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

      v18 = *(v4 + 64 + 8 * v10);
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

    *v3 = v6;
  }
}

uint64_t sub_213D1CF88@<X0>(_DWORD *a5@<X8>)
{
  sub_213CDB9F8();
  result = sub_213D903EC();
  *a5 = result;
  return result;
}

uint64_t sub_213D1D01C@<X0>(_DWORD *a2@<X8>)
{
  type metadata accessor for StaticMapBridgingView(0);
  sub_213CDB9F8();
  result = sub_213D903EC();
  *a2 = result;
  return result;
}

uint64_t sub_213D1D0FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_213D1D144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_27C8EAE30[0])
  {
    v4 = type metadata accessor for StaticMap.NetworkUsageMode(0, a2, a3, a4);
    if (!v5)
    {
      atomic_store(v4, qword_27C8EAE30);
    }
  }
}

void sub_213D1D1A4(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_213D1D568(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_213D1D234(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_213D1D388(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFE)
      {
        v19 = ((((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v19 = 0;
          *v19 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v19 = a2;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void sub_213D1D568(uint64_t a1)
{
  if (!qword_27C8EAEB8)
  {
    sub_213CE2B34(255, qword_27C8EAEC0, 0x277CBFC10);
    v1 = sub_213D91C7C();
    if (!v2)
    {
      atomic_store(v1, &qword_27C8EAEB8);
    }
  }
}

uint64_t sub_213D1D644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy40_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_213D1D694(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_213D1D6B4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
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

  *(result + 40) = v3;
  return result;
}

void sub_213D1D710(uint64_t a1)
{
  sub_213D1D568(319);
  if (v1 <= 0x3F)
  {
    sub_213D1D860(319, &qword_27C8EB080, MEMORY[0x277CDDE20]);
    if (v2 <= 0x3F)
    {
      sub_213D1D860(319, &qword_27C8EB088, MEMORY[0x277CDFAA0]);
      if (v3 <= 0x3F)
      {
        sub_213D1D8B4();
        if (v4 <= 0x3F)
        {
          sub_213D1D860(319, &unk_27C8EB098, sub_213D1D144);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_213D1D860(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_213D9052C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_213D1D8B4()
{
  if (!qword_27C8EB090)
  {
    v0 = sub_213D9052C();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8EB090);
    }
  }
}

uint64_t sub_213D1D968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v20[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v9 + 16))(v11, v15);
  sub_213D9042C();
  (*(v9 + 8))(v11, a5);
  v22 = a5;
  v23 = a6;
  sub_213D48E14(v17, sub_213D1F2C8, v21, a4, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v18);
  return (*(v13 + 8))(v17, a4);
}

uint64_t (*sub_213D1DB5C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x21604EF80](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_213D1DBDC;
  }

  __break(1u);
  return result;
}

uint64_t *sub_213D1DBE4(uint64_t *result, unint64_t a2, uint64_t a3)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x21604EF80](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_213D1F588;
  }

  __break(1u);
  return result;
}

unint64_t sub_213D1DC64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB2C0, &qword_213D97310);
    v3 = sub_213D91EEC();
    v4 = a1 + 32;

    while (1)
    {
      sub_213CE2C28(v4, &v11, &unk_27C8EB340, &qword_213D97480);
      v5 = v11;
      result = sub_213CE212C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_213CE2A78(&v12, v3[7] + 8 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 16;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_213D1DD90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB2C8, &qword_213D97318);
    v3 = sub_213D91EEC();
    v4 = a1 + 32;

    while (1)
    {
      sub_213CE2C28(v4, &v11, &qword_27C8EB2D0, &qword_213D97320);
      v5 = v11;
      result = sub_213CE2158(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_213CEB34C(&v12, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_213D1DEB8(void *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = sub_213D91EEC();
  v6 = a1[4];
  v7 = a1[5];
  v8 = sub_213CE21EC(v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v10 = v8;
  result = v7;
  v12 = a1 + 7;
  while (1)
  {
    *(v5 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v5[6] + 8 * v10) = v6;
    *(v5[7] + 8 * v10) = result;
    v13 = v5[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v5[2] = v15;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v16 = v12 + 2;
    v6 = *(v12 - 1);
    v17 = *v12;

    v10 = sub_213CE21EC(v6);
    v12 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_213D1DFC0(unint64_t result)
{
  v1 = result >> 61;
  if ((result >> 61) <= 1)
  {
    if (v1 < 2)
    {
    }
  }

  else if (v1 == 2 || v1 == 3 || v1 == 4)
  {
  }

  return result;
}

uint64_t keypath_get_67Tm@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v3 = *a1 + *a2;
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  v6 = *(v3 + 24);
  *a3 = *v3;
  *(a3 + 8) = v5;
  *(a3 + 16) = v4;
  *(a3 + 24) = v6;
}

double sub_213D1E054(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_213D1E068(result);
  }

  return v1;
}

double sub_213D1E068(unint64_t a1)
{
  v1 = a1 >> 61;
  if ((a1 >> 61) <= 1)
  {
    if (v1 < 2)
    {
LABEL_5:
    }
  }

  else if (v1 == 2 || v1 == 3 || v1 == 4)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_213D1E15C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

double sub_213D1E1E8(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_213D1E22C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

double __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t sub_213D1E2DC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

double sub_213D1E5D0(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void sub_213D1E5E8(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
  }

  else
  {
  }
}

void sub_213D1E6A0(void *a1, __int16 a2)
{
  if (a2 < 0)
  {
  }

  else
  {
  }
}

id sub_213D1E7B8(void *a1, __int16 a2)
{
  if (a2 < 0)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_213D1E884(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_213D1E8F0(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    v4 = a4;

    sub_213D1E94C(a3, v4);
  }
}

id sub_213D1E94C(id result, char a2)
{
  if (!a2)
  {
    return result;
  }

  return result;
}

void sub_213D1E95C(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    v4 = a4;

    sub_213D1E9BC(a3, v4);
  }
}

void sub_213D1E9BC(id a1, char a2)
{
  if (!a2)
  {
  }
}

uint64_t sub_213D1E9F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_213D1EA60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_108Tm()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  sub_213CE2B28(*(v0 + 160), *(v0 + 168));
  sub_213CE2B28(*(v0 + 176), *(v0 + 184));

  return swift_deallocObject();
}

uint64_t objectdestroy_141Tm()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  sub_213D1E5E8(*(v0 + 72), *(v0 + 80), *(v0 + 88));

  sub_213CE2B28(*(v0 + 144), *(v0 + 152));
  sub_213CE2B28(*(v0 + 160), *(v0 + 168));

  return swift_deallocObject();
}

uint64_t objectdestroy_175Tm()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  sub_213D1E6A0(*(v0 + 72), *(v0 + 80));

  sub_213CE2B28(*(v0 + 136), *(v0 + 144));

  return swift_deallocObject();
}

uint64_t objectdestroy_206Tm(double a1)
{
  v2 = type metadata accessor for UserAnnotationViewModel(0);
  v3 = (*(*(v2 - 8) + 80) + 64) & ~*(*(v2 - 8) + 80);
  __swift_destroy_boxed_opaque_existential_1((v1 + 16));

  if (*(v1 + v3 + 8))
  {
  }

  v4 = *(v2 + 36);
  v5 = sub_213D9100C();
  (*(*(v5 - 8) + 8))(v1 + v3 + v4, v5);

  return swift_deallocObject();
}

void sub_213D1ED5C(uint64_t a1, double a2)
{
  v4 = *(type metadata accessor for UserAnnotationViewModel(0) - 8);
  v5 = *(v2 + 56);
  v6 = v2 + ((*(v4 + 80) + 64) & ~*(v4 + 80));

  sub_213D27B04(a1, (v2 + 16), v5, v6);
}

uint64_t objectdestroy_237Tm(double a1)
{
  v2 = (type metadata accessor for MarkerAnnotationViewModel(0) - 8);
  v3 = (*(*v2 + 80) + 24) & ~*(*v2 + 80);
  v4 = (*(*v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = (v1 + v3);

  v6 = v2[19];
  v7 = sub_213D9100C();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  __swift_destroy_boxed_opaque_existential_1((v1 + v4));

  return swift_deallocObject();
}

uint64_t objectdestroy_268Tm(double a1)
{
  v2 = (type metadata accessor for CustomAnnotationViewModel(0) - 8);
  v3 = (*(*v2 + 80) + 24) & ~*(*v2 + 80);
  v4 = (*(*v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v1 + v3;

  v6 = v2[18];
  v7 = sub_213D9100C();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  __swift_destroy_boxed_opaque_existential_1((v1 + v4));

  return swift_deallocObject();
}

uint64_t sub_213D1F02C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v3 + 16);
  v8 = v3 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a3(a1, v7, v3 + v6, v8);
}

uint64_t objectdestroy_111Tm()
{

  return swift_deallocObject();
}

uint64_t sub_213D1F124(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_213D1F1C4()
{
  v1 = *(v0 + 16);
  v2 = sub_213D65240(*(v0 + 24));

  return [v1 setRegion_];
}

unint64_t sub_213D1F20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EB2E8;
  if (!qword_27C8EB2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EB2E8);
  }

  return result;
}

uint64_t (*sub_213D1F260())(uint64_t a1, uint64_t a2)
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = *(v0 + 24);
  *(v2 + 24) = v3;
  *(v2 + 40) = v3;
  return sub_213D1F2BC;
}

uint64_t sub_213D1F330(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_15_MapKit_SwiftUI0A14CameraPositionV7StorageO(void *a1)
{
  v1 = *a1 >> 61;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 5;
  }
}

uint64_t sub_213D1F454(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_213D1F4A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_213D1F624()
{
  if (*v0 == -1)
  {
    return 0x64696C61766E69;
  }

  if (*v0)
  {
    return sub_213D91F3C();
  }

  return 0x7974706D65;
}

uint64_t Map.init<A, B>(mapRect:interactionModes:showsUserLocation:userTrackingMode:annotationItems:annotationContent:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unsigned int a3@<W2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v35 = a6;
  v36 = a7;
  v38 = a3;
  v37 = a9;
  v33 = a10;
  v34 = a12;
  v18 = *a1;
  v19 = a1[1];
  v20 = sub_213D91C7C();
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v33 - v21;
  v23 = *a2;
  v24 = *(a4 + 16);
  v42[0] = v18;
  v42[1] = v19 | 0x4000000000000000;
  v25 = *(a1 + 2);
  v43 = *(a1 + 1);
  v44 = v25;
  v45 = 0;
  v41 = v23;
  v39 = *a4;
  v40 = v24;
  v26 = *(a8 - 8);
  (*(v26 + 32))(v22, a5, a8);
  (*(v26 + 56))(v22, 0, 1, a8);
  v27 = swift_allocObject();
  v29 = v33;
  v28 = v34;
  v27[2] = a8;
  v27[3] = v29;
  v27[4] = a11;
  v27[5] = v28;
  v31 = v35;
  v30 = v36;
  v27[6] = a13;
  v27[7] = v31;
  v27[8] = v30;
  return sub_213D72458(v42, &v41, v38, &v39, v22, sub_213D25278, v27, a8, v37, a11, a13);
}

uint64_t Map.init<A, B>(coordinateRegion:interactionModes:showsUserLocation:userTrackingMode:annotationItems:annotationContent:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unsigned int a3@<W2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v35 = a6;
  v36 = a7;
  v38 = a3;
  v37 = a9;
  v33 = a10;
  v34 = a12;
  v18 = *a1;
  v19 = a1[1];
  v20 = sub_213D91C7C();
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v33 - v21;
  v23 = *a2;
  v24 = *(a4 + 16);
  v42[0] = v18;
  v42[1] = v19 | 0x8000000000000000;
  v25 = *(a1 + 2);
  v43 = *(a1 + 1);
  v44 = v25;
  v45 = 0;
  v41 = v23;
  v39 = *a4;
  v40 = v24;
  v26 = *(a8 - 8);
  (*(v26 + 32))(v22, a5, a8);
  (*(v26 + 56))(v22, 0, 1, a8);
  v27 = swift_allocObject();
  v29 = v33;
  v28 = v34;
  v27[2] = a8;
  v27[3] = v29;
  v27[4] = a11;
  v27[5] = v28;
  v31 = v35;
  v30 = v36;
  v27[6] = a13;
  v27[7] = v31;
  v27[8] = v30;
  return sub_213D72458(v42, &v41, v38, &v39, v22, sub_213D1FB04, v27, a8, v37, a11, a13);
}

uint64_t sub_213D1FA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a5 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13(v10);
  (*(a7 + 8))(a5, a7);
  return (*(v9 + 8))(v12, a5);
}

__n128 Map.init<>(mapRect:interactionModes:showsUserLocation:userTrackingMode:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  v6 = a4[1].n128_u8[0];
  v7 = *(a1 + 8) | 0x4000000000000000;
  *a5 = *a1;
  *(a5 + 8) = v7;
  v8 = *(a1 + 32);
  *(a5 + 16) = *(a1 + 16);
  *(a5 + 32) = v8;
  *(a5 + 48) = 0;
  *(a5 + 56) = v5;
  *(a5 + 64) = a3;
  result = *a4;
  *(a5 + 72) = *a4;
  *(a5 + 88) = v6;
  return result;
}

__n128 Map.init<>(coordinateRegion:interactionModes:showsUserLocation:userTrackingMode:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  v6 = a4[1].n128_u8[0];
  v7 = *(a1 + 8) | 0x8000000000000000;
  *a5 = *a1;
  *(a5 + 8) = v7;
  v8 = *(a1 + 32);
  *(a5 + 16) = *(a1 + 16);
  *(a5 + 32) = v8;
  *(a5 + 48) = 0;
  *(a5 + 56) = v5;
  *(a5 + 64) = a3;
  result = *a4;
  *(a5 + 72) = *a4;
  *(a5 + 88) = v6;
  return result;
}

void Map.init<>(bounds:interactionModes:scope:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  sub_213D1FCD8(a1, v12);
  sub_213D9156C();
  sub_213D1FD48(a1);
  *(a5 + 40) = 0;
  *(a5 + 48) = 0;
  *(a5 + 32) = 0;
  *(a5 + 56) = 1;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 96) = 0;
  *(a5 + 120) = 0;
  *(a5 + 128) = 0;
  *(a5 + 112) = 0;
  *(a5 + 136) = 0;
  sub_213D1FDB0(v10, v11, 0, 0);
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *a5 = 0xA000000000000000;
  *(a5 + 24) = 0;
  sub_213D1FE30(v12, a5 + 32);
  *(a5 + 104) = v9;
  sub_213D22948(*(a5 + 112), *(a5 + 120), *(a5 + 128), *(a5 + 136), sub_213D1E9BC);
  *(a5 + 112) = 0;
  *(a5 + 120) = 0;
  *(a5 + 136) = 0;
  *(a5 + 128) = 0;
  *(a5 + 144) = a3;
  *(a5 + 152) = a4 & 1;
}

uint64_t sub_213D1FCD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EB6F0, &qword_213D98050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_213D1FD48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EB6F0, &qword_213D98050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_213D1FDB0(unint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  if (a4)
  {

    return sub_213D1E068(a3);
  }

  else
  {
    sub_213D1E068(a1);
  }

  return result;
}

uint64_t sub_213D1FE30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EB6F0, &qword_213D98050);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Map.init<A>(bounds:interactionModes:scope:content:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, char a4@<W3>, void (*a5)(uint64_t)@<X4>, uint64_t a7@<X6>, _UNKNOWN **a8@<X7>, uint64_t x8_0@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v17 = &v25[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v18;
  v29 = 0xA000000000000000;
  v21 = sub_213D1FCD8(v20, v28);
  v27 = v19;
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  a5(v21);
  *&v23 = a7;
  *(&v23 + 1) = MEMORY[0x277D84AA8];
  sub_213D2E864(&v29, v28, &v27, v25, a3, a4 & 1, v17, MEMORY[0x277D84A98], x8_0, v23, a8);
  return sub_213D1FD48(a1);
}

void Map.init<>(initialPosition:bounds:interactionModes:scope:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v10 = *a1;
  v11 = *a3;
  sub_213D1FCD8(a2, v14);
  sub_213D9156C();
  sub_213D1FD48(a2);
  *(a6 + 40) = 0;
  *(a6 + 48) = 0;
  *(a6 + 32) = 0;
  *(a6 + 56) = 1;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0;
  *(a6 + 120) = 0;
  *(a6 + 128) = 0;
  *(a6 + 112) = 0;
  *(a6 + 136) = 0;
  sub_213D1FDB0(v12, v13, 0, 0);
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *a6 = v10;
  *(a6 + 24) = 0;
  sub_213D1FE30(v14, a6 + 32);
  *(a6 + 104) = v11;
  sub_213D22948(*(a6 + 112), *(a6 + 120), *(a6 + 128), *(a6 + 136), sub_213D1E9BC);
  *(a6 + 112) = 0;
  *(a6 + 120) = 0;
  *(a6 + 136) = 0;
  *(a6 + 128) = 0;
  *(a6 + 144) = a4;
  *(a6 + 152) = a5 & 1;
}

uint64_t Map.init<A>(initialPosition:bounds:interactionModes:scope:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, char a5@<W4>, void (*a6)(uint64_t)@<X5>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, _UNKNOWN **a9)
{
  MEMORY[0x28223BE20](a1);
  v17 = &v25[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v18;
  v29 = *v20;
  v21 = sub_213D1FCD8(a2, v28);
  v27 = v19;
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  a6(v21);
  *&v23 = a8;
  *(&v23 + 1) = MEMORY[0x277D84AA8];
  sub_213D2E864(&v29, v28, &v27, v25, a4, a5 & 1, v17, MEMORY[0x277D84A98], x8_0, v23, a9);
  return sub_213D1FD48(a2);
}

void Map.init<>(position:bounds:interactionModes:scope:)(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = *a1;
  v10 = *(a1 + 2);
  v11 = *a3;
  sub_213D1FCD8(a2, v15);
  sub_213D9156C();
  sub_213D1FD48(a2);
  *(a6 + 40) = 0;
  *(a6 + 48) = 0;
  *(a6 + 32) = 0;
  *(a6 + 56) = 1;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0;
  *(a6 + 120) = 0;
  *(a6 + 128) = 0;
  *(a6 + 112) = 0;
  *(a6 + 136) = 0;
  sub_213D1FDB0(v13, v14, 0, 0);
  *a6 = v12;
  *(a6 + 16) = v10;
  *(a6 + 24) = 1;
  sub_213D1FE30(v15, a6 + 32);
  *(a6 + 104) = v11;
  sub_213D22948(*(a6 + 112), *(a6 + 120), *(a6 + 128), *(a6 + 136), sub_213D1E9BC);
  *(a6 + 112) = 0;
  *(a6 + 120) = 0;
  *(a6 + 136) = 0;
  *(a6 + 128) = 0;
  *(a6 + 144) = a4;
  *(a6 + 152) = a5 & 1;
}

uint64_t Map.init<A>(position:bounds:interactionModes:scope:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, char a5@<W4>, void (*a6)(uint64_t)@<X5>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, _UNKNOWN **a9)
{
  MEMORY[0x28223BE20](a1);
  v17 = &v25[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 + 2);
  v21 = *v20;
  v29 = *v18;
  v30 = v19;
  v22 = sub_213D1FCD8(a2, v28);
  v27 = v21;
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  a6(v22);
  sub_213D2EA78(&v29, v28, &v27, v25, a4, a5 & 1, v17, MEMORY[0x277D84A98], x8_0, a8, MEMORY[0x277D84AA8], a9);
  return sub_213D1FD48(a2);
}

uint64_t Map.init<A>(bounds:interactionModes:selection:scope:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v54 = a7;
  v55 = a3;
  v51 = a5;
  v52 = a4;
  v49 = a1;
  v50 = a8;
  v57[0] = a6;
  v57[1] = MEMORY[0x277D84A98];
  v53 = a6;
  v57[2] = a7;
  v57[3] = &protocol witness table for Never;
  v48 = type metadata accessor for MapSelectionManagerBox(255, v57);
  v10 = sub_213D9162C();
  v46 = v10;
  v11 = sub_213D91C7C();
  MEMORY[0x28223BE20](v11 - 8);
  v47 = &v40 - v12;
  sub_213D91C7C();
  v13 = sub_213D9162C();
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  v45 = *(v10 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v42 = &v40 - v18;
  v43 = *a2;
  v20 = v19;
  v41 = *(v19 + 16);
  v41(v15, a3, v13, v17);
  sub_213D91AFC();
  v21 = sub_213D91AEC();
  v22 = *(v20 + 80);
  v44 = v20;
  v23 = (v22 + 48) & ~v22;
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D85700];
  *(v24 + 2) = v21;
  *(v24 + 3) = v25;
  v26 = v54;
  *(v24 + 4) = v53;
  *(v24 + 5) = v26;
  v27 = *(v20 + 32);
  v27(&v24[v23], v15, v13);
  (v41)(v15, v55, v13);
  v28 = sub_213D91AEC();
  v29 = swift_allocObject();
  *(v29 + 2) = v28;
  v31 = v53;
  v30 = v54;
  *(v29 + 3) = MEMORY[0x277D85700];
  *(v29 + 4) = v31;
  *(v29 + 5) = v30;
  v27(&v29[v23], v15, v13);
  v32 = v42;
  sub_213D9161C();
  v58 = 0xA000000000000000;
  v33 = v49;
  sub_213D1FCD8(v49, v57);
  v56 = v43;
  v34 = v45;
  v35 = v46;
  v36 = v47;
  (*(v45 + 16))(v47, v32, v46);
  (*(v34 + 56))(v36, 0, 1, v35);
  *&v39 = &type metadata for EmptyMapContent;
  *(&v39 + 1) = v30;
  sub_213D2E864(&v58, v57, &v56, v36, v52, v51 & 1, v37, v31, v50, v39, &protocol witness table for EmptyMapContent);
  (*(v44 + 8))(v55, v13);
  sub_213D1FD48(v33);
  return (*(v34 + 8))(v32, v35);
}

uint64_t sub_213D20884@<X0>(uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t x8_0@<X8>)
{
  v9 = sub_213D91C7C();
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  v12 = sub_213D9162C();
  MEMORY[0x21604E7B0](v12);
  return sub_213D7B398(v11, a4, MEMORY[0x277D84A98], a5, &protocol witness table for Never, x8_0);
}

uint64_t sub_213D20944@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  sub_213D91C7C();
  sub_213D9162C();

  return sub_213D20884(v3, v4, a1);
}

uint64_t sub_213D209DC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a1;
  v47 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v37[0] = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_213D91C7C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v38 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v13 = v37 - v12;
  v14 = *(v10 - 8);
  MEMORY[0x28223BE20](v15);
  v42 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v46 = v37 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = v37 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = v37 - v23;
  v48[0] = a5;
  v48[1] = MEMORY[0x277D84A98];
  v37[1] = a6;
  v48[2] = a6;
  v48[3] = &protocol witness table for Never;
  v25 = type metadata accessor for MapSelectionManagerBox(0, v48);
  sub_213D7B444(v25, v24);
  v41 = sub_213D9162C();
  v44 = a4;
  MEMORY[0x21604E7B0]();
  v39 = TupleTypeMetadata2;
  v26 = *(TupleTypeMetadata2 + 48);
  v43 = v14;
  v27 = *(v14 + 16);
  v45 = v24;
  v27(v13, v24, v10);
  v27(&v13[v26], v21, v10);
  v28 = *(v47 + 48);
  v29 = v28(v13, 1, a5);
  v40 = v27;
  if (v29 != 1)
  {
    v27(v46, v13, v10);
    if (v28(&v13[v26], 1, a5) != 1)
    {
      v33 = v47;
      v34 = v37[0];
      (*(v47 + 32))(v37[0], &v13[v26], a5);
      v35 = sub_213D918DC();
      v36 = *(v33 + 8);
      v36(v34, a5);
      v30 = *(v14 + 8);
      v30(v21, v10);
      v36(v46, a5);
      v30(v13, v10);
      if (v35)
      {
        return (v30)(v45, v10);
      }

LABEL_7:
      v31 = v45;
      v40(v42, v45, v10);
      sub_213D915FC();
      return (v30)(v31, v10);
    }

    v30 = *(v14 + 8);
    v30(v21, v10);
    (*(v47 + 8))(v46, a5);
LABEL_6:
    (*(v38 + 8))(v13, v39);
    goto LABEL_7;
  }

  v30 = *(v14 + 8);
  v30(v21, v10);
  if (v28(&v13[v26], 1, a5) != 1)
  {
    goto LABEL_6;
  }

  v30(v13, v10);
  return (v30)(v45, v10);
}