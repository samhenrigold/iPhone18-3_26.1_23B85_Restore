double sub_213CFF278(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

void sub_213CFF2BC(uint64_t a1, char a2, id a3)
{
  [a3 frame];
  v7 = v6;
  v9 = v8;
  v10 = objc_opt_self();
  v11 = [v10 cameraLookingAtMapItem:a1 forViewSize:a2 & 1 allowPitch:{v7, v9}];
  [v11 centerCoordinate];
  v13 = v12;
  v15 = v14;
  [v11 centerCoordinateDistance];
  v17 = v16;
  [v11 heading];
  v19 = v18;
  [v11 pitch];
  v21 = v20;

  v22 = [v10 cameraLookingAtCenterCoordinate:v13 fromDistance:v15 pitch:v17 heading:{v21, v19}];
  [a3 setCamera_];
}

void sub_213CFF408(void *a1, double *a2)
{
  v3 = [objc_opt_self() cameraLookingAtCenterCoordinate:*a2 fromDistance:a2[1] pitch:a2[2] heading:{a2[4], a2[3]}];
  [a1 setCamera_];
}

void sub_213CFF4B4(void *a1)
{
  v3 = *(*(v1 + qword_27C8EB400 + 16) + 16);
  if (v3)
  {
    v4 = sub_213D4CEE8();
    a1 = sub_213D4CEB4();
    swift_bridgeObjectRetain_n();

    sub_213CDE778(v16);
    if (a1 != v3)
    {
      __break(1u);
      goto LABEL_37;
    }

    v1 = v12;
    a1 = v13;
    if (v4 < 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_21;
    }
  }

  if ((v4 & 0x4000000000000000) != 0)
  {
LABEL_21:
    if (!sub_213D91EBC())
    {
      goto LABEL_22;
    }

    goto LABEL_8;
  }

  if (!*(v4 + 16))
  {
LABEL_22:

    v9 = *(*(v1 + qword_27C8EB410 + 16) + 16);
    if (v9)
    {
      v15 = a1;
      v1 = sub_213D4CEE8();
      v10 = sub_213D4CEB4();
      a1 = v17;
      swift_bridgeObjectRetain_n();

      sub_213CDE778(v16);
      if (v10 != v9)
      {
        __break(1u);
        goto LABEL_44;
      }

      a1 = v15;
      if (v1 < 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v1 = MEMORY[0x277D84F90];
      if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
      {
        goto LABEL_39;
      }
    }

    if ((v1 & 0x4000000000000000) == 0)
    {
      if (!*(v1 + 16))
      {
LABEL_40:

        return;
      }

LABEL_29:
      if ((v1 & 0xC000000000000001) == 0)
      {
        v11 = *(v1 + 16);

        if (v11)
        {
          goto LABEL_31;
        }

        __break(1u);
_objc_release_x2:
        MEMORY[0x2821F9730](v6);
        return;
      }

LABEL_44:
      MEMORY[0x21604EF80](0, v1);

      swift_unknownObjectRelease();
LABEL_31:
      if ([a1 showsUserLocation])
      {

        [a1 selectUserLocationAnimated_];
      }

      return;
    }

LABEL_39:
    if (!sub_213D91EBC())
    {
      goto LABEL_40;
    }

    goto LABEL_29;
  }

LABEL_8:
  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_37:
    v5 = MEMORY[0x21604EF80](0, v4);
    goto LABEL_11;
  }

  if (!*(v4 + 16))
  {
    __break(1u);
    goto LABEL_39;
  }

  v5 = *(v4 + 32);
LABEL_11:
  v14 = v5;

  if (v14[OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_isCustomFeature] == 1)
  {
    v7 = *&v14[OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_mapItem];
    if (!v7)
    {

      goto _objc_release_x2;
    }

    v8 = v7;
    [a1 selectMapItem_];
  }

  else
  {
    [a1 selectAnnotation_animated_];
  }
}

id sub_213CFF878(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectRetain();
  v6 = a1;
  v7 = sub_213D2DFC8(a4, 0);
  swift_unknownObjectRelease();

  return v7;
}

id sub_213CFF8E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectRetain();
  v6 = a1;
  v7 = sub_213D491B4(a4);
  swift_unknownObjectRelease();

  return v7;
}

id sub_213CFF94C(char *a1)
{
  *&a1[qword_27C8EAF48] = 0xF000000000000007;
  v2.receiver = a1;
  v2.super_class = type metadata accessor for StaticMapBridgingViewCoordinator(0);
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_213CFF9B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StaticMapBridgingViewCoordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_213CFF9F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v8 = swift_readAtKeyPath();
  v269 = *(v9 + 16);

  v8(aBlock, 0);
  v279 = v7;

  v10 = *(a2 + 16);
  if (!v10)
  {
    v12 = MEMORY[0x277D84F90];
    v267 = MEMORY[0x277D84F90];
    v268 = MEMORY[0x277D84F90];
LABEL_82:
    v278 = v12;
    if (a4)
    {
      v130 = objc_opt_self();
      v131 = swift_allocObject();
      *(v131 + 16) = v267;
      *&aBlock[32] = sub_213D1E204;
      *&aBlock[40] = v131;
      *aBlock = MEMORY[0x277D85DD0];
      *&aBlock[8] = 1107296256;
      *&aBlock[16] = sub_213CFF278;
      *&aBlock[24] = &block_descriptor;
      v132 = _Block_copy(aBlock);

      v133 = swift_allocObject();
      *(v133 + 16) = v268;
      *&aBlock[32] = sub_213D1E224;
      *&aBlock[40] = v133;
      *aBlock = MEMORY[0x277D85DD0];
      *&aBlock[8] = 1107296256;
      *&aBlock[16] = sub_213D183BC;
      *&aBlock[24] = &block_descriptor_106;
      v134 = _Block_copy(aBlock);

      [v130 animateWithDuration:v132 animations:v134 completion:0.25];
      _Block_release(v134);
      _Block_release(v132);
    }

    v135 = v269 + 64;
    v136 = 1 << *(v269 + 32);
    v137 = -1;
    if (v136 < 64)
    {
      v137 = ~(-1 << v136);
    }

    v138 = v137 & *(v269 + 64);
    v273 = (v136 + 63) >> 6;

    v139 = 0;
    while (v138)
    {
      v147 = v139;
LABEL_99:
      v150 = __clz(__rbit64(v138)) | (v147 << 6);
      v151 = *(*(v269 + 48) + 8 * v150);
      v138 &= v138 - 1;
      v152 = *(v269 + 56) + 136 * v150;
      v286 = *v152;
      v153 = *(v152 + 64);
      v155 = *(v152 + 16);
      v154 = *(v152 + 32);
      v289 = *(v152 + 48);
      v290 = v153;
      v287 = v155;
      v288 = v154;
      v157 = *(v152 + 96);
      v156 = *(v152 + 112);
      v158 = *(v152 + 80);
      v294 = *(v152 + 128);
      v292 = v157;
      v293 = v156;
      v291 = v158;
      *&v295[80] = *(v152 + 80);
      *&v295[96] = *(v152 + 96);
      *&v295[112] = *(v152 + 112);
      *&v295[128] = *(v152 + 128);
      *&v295[16] = *(v152 + 16);
      *&v295[32] = *(v152 + 32);
      *&v295[48] = *(v152 + 48);
      *&v295[64] = *(v152 + 64);
      *v295 = *v152;
      *aBlock = v151;
      *&aBlock[8] = *v295;
      *&aBlock[72] = *&v295[64];
      *&aBlock[56] = *&v295[48];
      *&aBlock[40] = *&v295[32];
      *&aBlock[24] = *&v295[16];
      v298 = *&v295[128];
      *&aBlock[120] = *&v295[112];
      *&aBlock[104] = *&v295[96];
      *&aBlock[88] = *&v295[80];
      nullsub_2();
      v159 = v151;
      sub_213D1E18C(&v286, v296);
      v160 = *aBlock;
      v305 = *&aBlock[104];
      v306 = *&aBlock[120];
      v307 = v298;
      v161 = *&aBlock[24];
      v301 = *&aBlock[40];
      v302 = *&aBlock[56];
      v303 = *&aBlock[72];
      v304 = *&aBlock[88];
      v162 = *&aBlock[8];
LABEL_100:
      v299 = v162;
      v300 = v161;
      *&aBlock[88] = v304;
      *&aBlock[104] = v305;
      *&aBlock[120] = v306;
      *&aBlock[24] = v161;
      *&aBlock[40] = v301;
      *&aBlock[56] = v302;
      *&aBlock[72] = v303;
      v298 = v307;
      *&aBlock[8] = v162;
      *aBlock = v160;
      if (sub_213CCF338(aBlock) == 1)
      {

        *v295 = MEMORY[0x277D84F90];
        v182 = 1 << *(v269 + 32);
        v183 = -1;
        if (v182 < 64)
        {
          v183 = ~(-1 << v182);
        }

        v184 = v183 & *(v269 + 64);
        v185 = (v182 + 63) >> 6;

        v186 = 0;
        while (v184)
        {
LABEL_117:
          v188 = __clz(__rbit64(v184));
          v184 &= v184 - 1;
          v189 = *(*(v269 + 48) + ((v186 << 9) | (8 * v188)));
          type metadata accessor for MapBridgingUserAnnotation();
          if (!swift_dynamicCastClass())
          {
            v190 = v189;
            sub_213D91DEC();
            sub_213D91E2C();
            sub_213D91E3C();
            sub_213D91DFC();
          }
        }

        while (1)
        {
          v187 = v186 + 1;
          if (__OFADD__(v186, 1))
          {
            goto LABEL_151;
          }

          if (v187 >= v185)
          {

            v191 = *v295;
            if ((*v295 & 0x8000000000000000) == 0 && (*v295 & 0x4000000000000000) == 0)
            {

              sub_213D91F6C();
              sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);
              v192 = v191;
              goto LABEL_122;
            }

            goto LABEL_156;
          }

          v184 = *(v135 + 8 * v187);
          ++v186;
          if (v184)
          {
            v186 = v187;
            goto LABEL_117;
          }
        }
      }

      *&v295[96] = v305;
      *&v295[112] = v306;
      *&v295[128] = v307;
      *v295 = v299;
      *&v295[16] = v300;
      *&v295[32] = v301;
      *&v295[48] = v302;
      *&v295[64] = v303;
      *&v295[80] = v304;
      v163 = v299;
      *&v296[0] = v279;
      v164 = v279;

      v165 = swift_modifyAtReferenceWritableKeyPath();
      v167 = v166;
      v168 = sub_213CE22A8(v163);
      v170 = v169;

      if (v170)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v172 = *(v167 + 24);
        v280[0] = v172;
        *(v167 + 24) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_213D1CE38(&qword_27C8EB198, &qword_213D97210);
          v172 = v280[0];
        }

        sub_213D1B868(v168, v172);
        *(v167 + 24) = v172;
      }

      v165(&v286, 0);

      v280[0] = v164;
      v173 = v164;
      v174 = swift_modifyAtReferenceWritableKeyPath();
      v176 = v175;
      v177 = sub_213CE2258(v160);
      if (v178)
      {
        v179 = v177;
        v180 = swift_isUniquelyReferenced_nonNull_native();
        v181 = *(v176 + 16);
        v283 = v181;
        *(v176 + 16) = 0x8000000000000000;
        if (!v180)
        {
          sub_213D1C0D4();
          v181 = v283;
        }

        v140 = *(v181 + 56) + 136 * v179;
        v286 = *v140;
        v141 = *(v140 + 48);
        v142 = *(v140 + 64);
        v143 = *(v140 + 32);
        v287 = *(v140 + 16);
        v288 = v143;
        v289 = v141;
        v290 = v142;
        v144 = *(v140 + 80);
        v145 = *(v140 + 96);
        v146 = *(v140 + 112);
        v294 = *(v140 + 128);
        v292 = v145;
        v293 = v146;
        v291 = v144;
        sub_213D1E108(&v286);
        sub_213D1B1E8(v179, v181);
        *(v176 + 16) = v181;
      }

      v174(v296, 0);

      sub_213D1E108(v295);
      v135 = v269 + 64;
    }

    if (v273 <= v139 + 1)
    {
      v148 = v139 + 1;
    }

    else
    {
      v148 = v273;
    }

    v149 = v148 - 1;
    while (1)
    {
      v147 = v139 + 1;
      if (__OFADD__(v139, 1))
      {
        break;
      }

      if (v147 >= v273)
      {
        sub_213D1E1E8(aBlock);
        v138 = 0;
        v307 = v298;
        v160 = *aBlock;
        v305 = *&aBlock[104];
        v306 = *&aBlock[120];
        v161 = *&aBlock[24];
        v301 = *&aBlock[40];
        v302 = *&aBlock[56];
        v303 = *&aBlock[72];
        v304 = *&aBlock[88];
        v162 = *&aBlock[8];
        v139 = v149;
        goto LABEL_100;
      }

      v138 = *(v135 + 8 * v147);
      ++v139;
      if (v138)
      {
        v139 = v147;
        goto LABEL_99;
      }
    }

    __break(1u);
LABEL_151:
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
    sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);

    v192 = sub_213D91EAC();

LABEL_122:
    v193 = v278;

    sub_213D17F50(v192);

    v194 = v278[2];
    if (!v194)
    {
      return v193;
    }

    v195 = 0;
    v274 = v194 - 1;
    v196 = 32;
    while (1)
    {
      v276 = v196;
      *v295 = *(v193 + v196);
      v197 = *(v193 + v196 + 16);
      v198 = *(v193 + v196 + 32);
      v199 = *(v193 + v196 + 64);
      *&v295[48] = *(v193 + v196 + 48);
      *&v295[64] = v199;
      *&v295[16] = v197;
      *&v295[32] = v198;
      v200 = *(v193 + v196 + 80);
      v201 = *(v193 + v196 + 96);
      v202 = *(v193 + v196 + 128);
      *&v295[112] = *(v193 + v196 + 112);
      *&v295[128] = v202;
      *&v295[80] = v200;
      *&v295[96] = v201;
      v204 = *&v295[8];
      v203 = *v295;
      *&v296[0] = v279;
      v205 = v279;
      sub_213CE2C28(v295, &v286, &qword_27C8ECC50, &unk_213D971F0);

      v206 = v203;
      v207 = swift_modifyAtReferenceWritableKeyPath();
      v209 = v208;
      v210 = swift_isUniquelyReferenced_nonNull_native();
      v280[0] = *(v209 + 24);
      v211 = v280[0];
      *(v209 + 24) = 0x8000000000000000;
      v213 = sub_213CE22A8(v204);
      v214 = v211[2];
      v215 = (v212 & 1) == 0;
      v216 = v214 + v215;
      if (__OFADD__(v214, v215))
      {
        goto LABEL_152;
      }

      v217 = v212;
      if (v211[3] >= v216)
      {
        if (v210)
        {
          v220 = v280[0];
          if (v212)
          {
            goto LABEL_131;
          }
        }

        else
        {
          sub_213D1CE38(&qword_27C8EB198, &qword_213D97210);
          v220 = v280[0];
          if (v217)
          {
            goto LABEL_131;
          }
        }
      }

      else
      {
        sub_213D1AEB0(v216, v210, &qword_27C8EB198, &qword_213D97210);
        v218 = sub_213CE22A8(v204);
        if ((v217 & 1) != (v219 & 1))
        {
          goto LABEL_160;
        }

        v213 = v218;
        v220 = v280[0];
        if (v217)
        {
LABEL_131:
          v221 = v220[7];
          v222 = *(v221 + 8 * v213);
          *(v221 + 8 * v213) = v206;

          goto LABEL_135;
        }
      }

      v220[(v213 >> 6) + 8] |= 1 << v213;
      *(v220[6] + 8 * v213) = v204;
      *(v220[7] + 8 * v213) = v206;
      v223 = v220[2];
      v115 = __OFADD__(v223, 1);
      v224 = v223 + 1;
      if (v115)
      {
        goto LABEL_154;
      }

      v220[2] = v224;
LABEL_135:
      *(v209 + 24) = v220;
      v207(&v286, 0);

      v280[0] = v205;
      v225 = v205;
      v226 = v206;
      v227 = swift_modifyAtReferenceWritableKeyPath();
      v229 = v228;
      v230 = swift_isUniquelyReferenced_nonNull_native();
      v283 = *(v229 + 16);
      v231 = v283;
      *(v229 + 16) = 0x8000000000000000;
      v232 = sub_213CE2258(v226);
      v234 = v231[2];
      v235 = (v233 & 1) == 0;
      v115 = __OFADD__(v234, v235);
      v236 = v234 + v235;
      v193 = v278;
      if (v115)
      {
        goto LABEL_153;
      }

      v237 = v233;
      if (v231[3] < v236)
      {
        sub_213D19760(v236, v230);
        v232 = sub_213CE2258(v226);
        if ((v237 & 1) != (v238 & 1))
        {
          goto LABEL_159;
        }

LABEL_140:
        if ((v237 & 1) == 0)
        {
          goto LABEL_143;
        }

        goto LABEL_141;
      }

      if (v230)
      {
        goto LABEL_140;
      }

      v253 = v232;
      sub_213D1C0D4();
      v232 = v253;
      if ((v237 & 1) == 0)
      {
LABEL_143:
        v239 = v283;
        v283[(v232 >> 6) + 8] |= 1 << v232;
        *(v239[6] + 8 * v232) = v226;
        v254 = v239[7] + 136 * v232;
        *v254 = *&v295[8];
        v255 = *&v295[40];
        v256 = *&v295[72];
        v257 = *&v295[24];
        *(v254 + 48) = *&v295[56];
        *(v254 + 64) = v256;
        *(v254 + 16) = v257;
        *(v254 + 32) = v255;
        v258 = *&v295[88];
        v259 = *&v295[104];
        v260 = *&v295[120];
        *(v254 + 128) = *&v295[136];
        *(v254 + 96) = v259;
        *(v254 + 112) = v260;
        *(v254 + 80) = v258;
        v261 = v239[2];
        v115 = __OFADD__(v261, 1);
        v262 = v261 + 1;
        if (v115)
        {
          goto LABEL_155;
        }

        v239[2] = v262;
        goto LABEL_145;
      }

LABEL_141:
      v239 = v283;
      v240 = v283[7] + 136 * v232;
      v286 = *v240;
      v241 = *(v240 + 64);
      v243 = *(v240 + 16);
      v242 = *(v240 + 32);
      v289 = *(v240 + 48);
      v290 = v241;
      v287 = v243;
      v288 = v242;
      v245 = *(v240 + 96);
      v244 = *(v240 + 112);
      v246 = *(v240 + 80);
      v294 = *(v240 + 128);
      v292 = v245;
      v293 = v244;
      v291 = v246;
      *v240 = *&v295[8];
      v247 = *&v295[24];
      v248 = *&v295[40];
      v249 = *&v295[72];
      *(v240 + 48) = *&v295[56];
      *(v240 + 64) = v249;
      *(v240 + 16) = v247;
      *(v240 + 32) = v248;
      v250 = *&v295[88];
      v251 = *&v295[104];
      v252 = *&v295[120];
      *(v240 + 128) = *&v295[136];
      *(v240 + 96) = v251;
      *(v240 + 112) = v252;
      *(v240 + 80) = v250;
      sub_213D1E108(&v286);

LABEL_145:
      *(v229 + 16) = v239;

      v227(v296, 0);

      if (v274 == v195)
      {
        goto LABEL_148;
      }

      ++v195;
      v196 = v276 + 144;
      if (v195 >= v278[2])
      {
        __break(1u);
LABEL_148:

        return v193;
      }
    }
  }

  v11 = (a2 + 32);
  v12 = MEMORY[0x277D84F90];
  v267 = MEMORY[0x277D84F90];
  v268 = MEMORY[0x277D84F90];
  while (1)
  {
    v275 = v10;
    v277 = v12;
    v13 = v11[7];
    v312 = v11[6];
    v313 = v13;
    v314 = *(v11 + 16);
    v14 = v11[3];
    v310 = v11[2];
    *v311 = v14;
    v15 = v11[5];
    *&v311[16] = v11[4];
    *&v311[32] = v15;
    v16 = v11[1];
    v308 = *v11;
    v309 = v16;
    v17 = v16;
    v270 = *&v310;
    v272 = v11;
    v18 = BYTE8(v310);
    v19 = *(&v308 + 1);
    v20 = v308;
    *&v286 = v279;
    v21 = v279;
    sub_213D1E18C(&v308, aBlock);

    swift_getAtKeyPath();

    v22 = *&v295[24];
    if (!*(*&v295[24] + 16))
    {

LABEL_15:

      goto LABEL_18;
    }

    v23 = sub_213CE22A8(v20);
    v25 = v24;

    if ((v25 & 1) == 0)
    {
      goto LABEL_15;
    }

    v26 = *(*(v22 + 56) + 8 * v23);

    v285 = v21;
    v27 = v21;
    swift_getAtKeyPath();

    v28 = v284;
    if (!*(v284 + 16) || (v29 = sub_213CE2258(v26), (v30 & 1) == 0))
    {

      goto LABEL_17;
    }

    v31 = *(v28 + 56) + 136 * v29;
    *aBlock = *v31;
    v32 = *(v31 + 48);
    v33 = *(v31 + 64);
    v34 = *(v31 + 32);
    *&aBlock[16] = *(v31 + 16);
    *&aBlock[32] = v34;
    *&aBlock[48] = v32;
    *&aBlock[64] = v33;
    v35 = *(v31 + 80);
    v36 = *(v31 + 96);
    v37 = *(v31 + 112);
    *&aBlock[128] = *(v31 + 128);
    *&aBlock[96] = v36;
    *&aBlock[112] = v37;
    *&aBlock[80] = v35;
    sub_213D1E18C(aBlock, v295);

    v38 = v19;
    v39 = *(&v17 + 1);
    v40 = *&v17;
    if (v18)
    {
      v41 = v270;
      if ((aBlock[40] & 1) == 0)
      {
        sub_213D1E108(aBlock);

        v12 = v277;
        v42 = v272;
        goto LABEL_20;
      }

      if (v19 != *&aBlock[8] || *&v17 != *&aBlock[16] || *(&v17 + 1) != *&aBlock[24] || *&aBlock[32] != v270)
      {
LABEL_46:
        sub_213D1E108(aBlock);
LABEL_17:

LABEL_18:
        v38 = v19;
        v39 = *(&v17 + 1);
        v40 = *&v17;
        v42 = v272;
        if (v18)
        {
          v41 = v270;
          v12 = v277;
LABEL_20:
          v43 = [objc_opt_self() circleWithMapRect_];
LABEL_23:
          v44 = v43;
          *&aBlock[96] = v312;
          *&aBlock[112] = v313;
          *&aBlock[128] = v314;
          *&aBlock[32] = v310;
          *&aBlock[48] = *v311;
          *&aBlock[64] = *&v311[16];
          *&aBlock[80] = *&v311[32];
          *aBlock = v308;
          *&aBlock[16] = v309;
          sub_213D1E18C(&v308, v295);
          v45 = v44;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = sub_213D70434(0, v12[2] + 1, 1, v12);
          }

          v47 = v12[2];
          v46 = v12[3];
          if (v47 >= v46 >> 1)
          {
            v12 = sub_213D70434((v46 > 1), v47 + 1, 1, v12);
          }

          sub_213D1E108(&v308);

          v12[2] = v47 + 1;
          v48 = &v12[18 * v47];
          v48[4] = v45;
          *(v48 + 5) = *aBlock;
          v49 = *&aBlock[16];
          v50 = *&aBlock[32];
          v51 = *&aBlock[48];
          *(v48 + 13) = *&aBlock[64];
          *(v48 + 11) = v51;
          *(v48 + 9) = v50;
          *(v48 + 7) = v49;
          v52 = *&aBlock[80];
          v53 = *&aBlock[96];
          v54 = *&aBlock[112];
          v48[21] = *&aBlock[128];
          *(v48 + 19) = v54;
          *(v48 + 17) = v53;
          *(v48 + 15) = v52;
          goto LABEL_28;
        }

        v12 = v277;
LABEL_22:
        v43 = [objc_opt_self() circleWithCenterCoordinate:v38 radius:{v40, v39}];
        goto LABEL_23;
      }
    }

    else
    {
      if ((aBlock[40] & 1) != 0 || v19 != *&aBlock[8] || *&v17 != *&aBlock[16])
      {
        sub_213D1E108(aBlock);

        v12 = v277;
        v42 = v272;
        goto LABEL_22;
      }

      if (*(&v17 + 1) != *&aBlock[24])
      {
        goto LABEL_46;
      }
    }

    if (v314 != *&aBlock[128])
    {
      goto LABEL_46;
    }

    *(&v287 + 1) = sub_213CE2B34(0, &qword_27C8EB168, 0x277CD4FA0);
    *&v288 = &off_28263B0B0;
    *&v286 = a1;
    sub_213D1E22C(&v286, v296);
    sub_213D1E22C(v296, v280);
    v55 = swift_allocObject();
    sub_213D1E2DC(v296, v55 + 16);
    *(v55 + 56) = v26;
    v56 = v313;
    *(v55 + 160) = v312;
    *(v55 + 176) = v56;
    *(v55 + 192) = v314;
    v57 = *v311;
    *(v55 + 96) = v310;
    *(v55 + 112) = v57;
    v58 = *&v311[32];
    *(v55 + 128) = *&v311[16];
    *(v55 + 144) = v58;
    v59 = v309;
    *(v55 + 64) = v308;
    *(v55 + 80) = v59;
    if (a4)
    {
      sub_213D1E18C(&v308, v295);
      v60 = v26;
      v61 = a1;

      __swift_destroy_boxed_opaque_existential_1(v280);
      v62 = swift_allocObject();
      v62[2] = sub_213D1E2F4;
      v62[3] = v55;
      v62[4] = a4;
      v63 = swift_allocObject();
      *(v63 + 16) = sub_213D1E2F4;
      *(v63 + 24) = v55;

      __swift_destroy_boxed_opaque_existential_1(&v286);
      v64 = swift_allocObject();
      *(v64 + 16) = sub_213D1E454;
      *(v64 + 24) = v62;
      swift_retain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v267 = sub_213D6FE48(0, v267[2] + 1, 1, v267);
      }

      v12 = v277;
      v66 = v267[2];
      v65 = v267[3];
      if (v66 >= v65 >> 1)
      {
        v267 = sub_213D6FE48((v65 > 1), v66 + 1, 1, v267);
      }

      v267[2] = v66 + 1;
      v67 = &v267[2 * v66];
      v67[4] = sub_213CFA4DC;
      v67[5] = v64;
      v68 = swift_allocObject();
      *(v68 + 16) = sub_213D1E460;
      *(v68 + 24) = v63;
      swift_retain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v268 = sub_213D6FE48(0, v268[2] + 1, 1, v268);
      }

      v70 = v268[2];
      v69 = v268[3];
      if (v70 >= v69 >> 1)
      {
        v268 = sub_213D6FE48((v69 > 1), v70 + 1, 1, v268);
      }

      v268[2] = v70 + 1;
      v71 = &v268[2 * v70];
      v71[4] = sub_213D1F608;
      v71[5] = v68;
      v264 = sub_213D1E460;
      v271 = sub_213D1E454;
    }

    else
    {
      v72 = v281;
      v73 = v282;
      __swift_project_boxed_opaque_existential_1(v280, v281);
      v74 = *(v73 + 48);
      sub_213D1E18C(&v308, v295);
      v75 = v26;
      v76 = a1;
      v77 = v74(v75, v72, v73);
      if (v77)
      {
        v78 = v77;
        objc_opt_self();
        v79 = swift_dynamicCastObjCClass();
        v12 = v277;
        if (v79)
        {
          v80 = v79;
          v315 = *&v311[8];
          v316 = *&v311[24];
          v317 = *&v311[40];
          v81 = *&v311[32];
          v82 = *&v311[8];
          sub_213D1E3A4(&v315, v295);
          [v80 setLineWidth_];
          [v80 setLineCap_];
          [v80 setLineJoin_];
          [v80 setMiterLimit_];
          if (*(v81 + 16))
          {

            sub_213D18410(v83);
            sub_213D1E400(&v315);
            sub_213CE2B34(0, &unk_27C8EB188, 0x277CCABB0);
            v84 = sub_213D919EC();
          }

          else
          {
            v84 = 0;
          }

          v85 = v312;
          v86 = BYTE8(v312);
          [v80 setLineDashPattern_];

          [v80 setLineDashPhase_];
          sub_213D1E400(&v315);
          if ((v86 & 1) != 0 && !*(v85 + 16))
          {
            sub_213D9149C();
          }

          else
          {
          }

          v87 = v313;
          v88 = BYTE8(v313);
          sub_213CE2B34(0, &qword_27C8E9370, 0x277D75348);
          v89 = sub_213D91C3C();
          [v80 setStrokeColor_];

          if ((v88 & 1) != 0 && !*(v87 + 16))
          {
            sub_213D9149C();
          }

          else
          {
          }

          v90 = sub_213D91C3C();
          [v80 setFillColor_];

          [v80 setNeedsDisplay];
        }

        else
        {
        }
      }

      else
      {

        v12 = v277;
      }

      __swift_destroy_boxed_opaque_existential_1(v280);
      __swift_destroy_boxed_opaque_existential_1(&v286);
      v271 = 0;
      v62 = 0;
      v264 = 0;
      v63 = 0;
    }

    v91 = v269;
    v92 = sub_213CE2258(v26);
    if (v93)
    {
      v94 = v92;
      v95 = swift_isUniquelyReferenced_nonNull_native();
      *&v286 = v269;
      if (!v95)
      {
        sub_213D1C0D4();
        v91 = v286;
      }

      v96 = v63;

      v97 = *(v91 + 56) + 136 * v94;
      *v295 = *v97;
      v98 = *(v97 + 48);
      v99 = *(v97 + 64);
      v100 = *(v97 + 32);
      *&v295[16] = *(v97 + 16);
      *&v295[32] = v100;
      *&v295[48] = v98;
      *&v295[64] = v99;
      v101 = *(v97 + 80);
      v102 = *(v97 + 96);
      v103 = *(v97 + 112);
      *&v295[128] = *(v97 + 128);
      *&v295[96] = v102;
      *&v295[112] = v103;
      *&v295[80] = v101;
      sub_213D1E108(v295);
      v269 = v91;
      sub_213D1B1E8(v94, v91);
    }

    else
    {
      v96 = v63;
    }

    *&v286 = v27;
    v104 = v27;
    sub_213D1E18C(&v308, v295);
    v105 = v26;
    v106 = swift_modifyAtReferenceWritableKeyPath();
    v108 = v107;
    v109 = swift_isUniquelyReferenced_nonNull_native();
    *&v296[0] = *(v108 + 16);
    v110 = *&v296[0];
    *(v108 + 16) = 0x8000000000000000;
    v111 = sub_213CE2258(v105);
    v113 = *(v110 + 16);
    v114 = (v112 & 1) == 0;
    v115 = __OFADD__(v113, v114);
    v116 = v113 + v114;
    if (v115)
    {
      break;
    }

    v117 = v112;
    if (*(v110 + 24) < v116)
    {
      sub_213D19760(v116, v109);
      v111 = sub_213CE2258(v105);
      if ((v117 & 1) != (v118 & 1))
      {
        goto LABEL_159;
      }

LABEL_73:
      v119 = *&v296[0];
      if ((v117 & 1) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_74;
    }

    if (v109)
    {
      goto LABEL_73;
    }

    v120 = v111;
    sub_213D1C0D4();
    v111 = v120;
    v119 = *&v296[0];
    if ((v117 & 1) == 0)
    {
LABEL_78:
      v119[(v111 >> 6) + 8] |= 1 << v111;
      *(v119[6] + 8 * v111) = v105;
      v121 = v119[7] + 136 * v111;
      *v121 = v308;
      v122 = v309;
      v123 = v310;
      v124 = *&v311[16];
      *(v121 + 48) = *v311;
      *(v121 + 64) = v124;
      *(v121 + 16) = v122;
      *(v121 + 32) = v123;
      v125 = *&v311[32];
      v126 = v312;
      v127 = v313;
      *(v121 + 128) = v314;
      *(v121 + 96) = v126;
      *(v121 + 112) = v127;
      *(v121 + 80) = v125;
      v128 = v119[2];
      v115 = __OFADD__(v128, 1);
      v129 = v128 + 1;
      if (v115)
      {
        goto LABEL_158;
      }

      v119[2] = v129;
      goto LABEL_80;
    }

LABEL_74:
    sub_213D1E348(&v308, v119[7] + 136 * v111);

LABEL_80:
    *(v108 + 16) = v119;

    v106(v295, 0);
    sub_213D1E108(aBlock);
    sub_213CCE520(v264, v96);
    sub_213CCE520(v271, v62);

    sub_213D1E108(&v308);
    v42 = v272;
    v10 = v275;
LABEL_28:
    v11 = (v42 + 136);
    if (!--v10)
    {
      goto LABEL_82;
    }
  }

  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  sub_213CE2B34(0, &qword_27C8EB180, 0x277CD4DA0);
  sub_213D91F8C();
  __break(1u);
LABEL_160:
  result = sub_213D91F8C();
  __break(1u);
  return result;
}

void *sub_213D01228(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v8 = swift_readAtKeyPath();
  v278 = *(v9 + 16);

  v8(aBlock, 0);
  v282 = v7;

  v10 = *(a2 + 16);
  if (!v10)
  {
    v11 = MEMORY[0x277D84F90];
    v270 = MEMORY[0x277D84F90];
    v271 = MEMORY[0x277D84F90];
LABEL_78:
    v277 = v11;
    if (a4)
    {
      v123 = objc_opt_self();
      v124 = swift_allocObject();
      *(v124 + 16) = v270;
      *&aBlock[32] = sub_213D1F590;
      *&aBlock[40] = v124;
      *aBlock = MEMORY[0x277D85DD0];
      *&aBlock[8] = 1107296256;
      *&aBlock[16] = sub_213CFF278;
      *&aBlock[24] = &block_descriptor_132;
      v125 = _Block_copy(aBlock);

      v126 = swift_allocObject();
      *(v126 + 16) = v271;
      *&aBlock[32] = sub_213D1F60C;
      *&aBlock[40] = v126;
      *aBlock = MEMORY[0x277D85DD0];
      *&aBlock[8] = 1107296256;
      *&aBlock[16] = sub_213D183BC;
      *&aBlock[24] = &block_descriptor_139;
      v127 = _Block_copy(aBlock);

      [v123 animateWithDuration:v125 animations:v127 completion:0.25];
      _Block_release(v127);
      _Block_release(v125);
    }

    v128 = v278 + 64;
    v129 = 1 << *(v278 + 32);
    v130 = -1;
    if (v129 < 64)
    {
      v130 = ~(-1 << v129);
    }

    v131 = v130 & *(v278 + 64);
    v274 = ((v129 + 63) >> 6);

    v132 = 0;
    while (v131)
    {
      v140 = v132;
LABEL_95:
      v143 = __clz(__rbit64(v131));
      v131 &= v131 - 1;
      v144 = v143 | (v140 << 6);
      v145 = *(*(v278 + 48) + 8 * v144);
      v146 = *(v278 + 56) + 120 * v144;
      v148 = *(v146 + 32);
      v147 = *(v146 + 48);
      v149 = *v146;
      v290 = *(v146 + 16);
      v291 = v148;
      v289 = v149;
      v151 = *(v146 + 80);
      v150 = *(v146 + 96);
      v152 = *(v146 + 64);
      v296 = *(v146 + 112);
      v294 = v151;
      v295 = v150;
      v292 = v147;
      v293 = v152;
      v153 = *v146;
      v154 = *(v146 + 16);
      v155 = *(v146 + 48);
      *&v297[32] = *(v146 + 32);
      *&v297[48] = v155;
      *v297 = v153;
      *&v297[16] = v154;
      v156 = *(v146 + 64);
      v157 = *(v146 + 80);
      v158 = *(v146 + 96);
      *&v297[112] = *(v146 + 112);
      *&v297[80] = v157;
      *&v297[96] = v158;
      *&v297[64] = v156;
      *aBlock = v145;
      *&aBlock[72] = v156;
      *&aBlock[88] = v157;
      *&aBlock[104] = v158;
      v300 = *&v297[112];
      *&aBlock[8] = *v297;
      *&aBlock[24] = *&v297[16];
      *&aBlock[40] = *&v297[32];
      *&aBlock[56] = v155;
      nullsub_2();
      v159 = v145;
      sub_213D1E518(&v289, v298);
      v160 = *aBlock;
      v305 = *&aBlock[72];
      v306 = *&aBlock[88];
      v307 = *&aBlock[104];
      v308 = v300;
      v301 = *&aBlock[8];
      v302 = *&aBlock[24];
      v161 = *&aBlock[40];
      v162 = *&aBlock[56];
LABEL_96:
      v303 = v161;
      v304 = v162;
      *&aBlock[72] = v305;
      *&aBlock[88] = v306;
      *&aBlock[104] = v307;
      *&aBlock[8] = v301;
      *&aBlock[24] = v302;
      *&aBlock[40] = v161;
      v300 = v308;
      *&aBlock[56] = v162;
      *aBlock = v160;
      if (sub_213CCF338(aBlock) == 1)
      {

        *v297 = MEMORY[0x277D84F90];
        v182 = 1 << *(v278 + 32);
        v183 = -1;
        if (v182 < 64)
        {
          v183 = ~(-1 << v182);
        }

        v184 = v183 & *(v278 + 64);
        v185 = (v182 + 63) >> 6;

        v186 = 0;
        while (v184)
        {
LABEL_113:
          v188 = __clz(__rbit64(v184));
          v184 &= v184 - 1;
          v189 = *(*(v278 + 48) + ((v186 << 9) | (8 * v188)));
          type metadata accessor for MapBridgingUserAnnotation();
          if (!swift_dynamicCastClass())
          {
            v190 = v189;
            sub_213D91DEC();
            sub_213D91E2C();
            sub_213D91E3C();
            sub_213D91DFC();
          }
        }

        while (1)
        {
          v187 = v186 + 1;
          if (__OFADD__(v186, 1))
          {
            goto LABEL_147;
          }

          if (v187 >= v185)
          {

            v191 = *v297;
            if ((*v297 & 0x8000000000000000) == 0 && (*v297 & 0x4000000000000000) == 0)
            {

              sub_213D91F6C();
              sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);
              v192 = v191;
              goto LABEL_118;
            }

            goto LABEL_152;
          }

          v184 = *(v128 + 8 * v187);
          ++v186;
          if (v184)
          {
            v186 = v187;
            goto LABEL_113;
          }
        }
      }

      *&v297[64] = v305;
      *&v297[80] = v306;
      *&v297[96] = v307;
      *&v297[112] = v308;
      *v297 = v301;
      *&v297[16] = v302;
      *&v297[32] = v303;
      *&v297[48] = v304;
      v163 = v301;
      *&v298[0] = v282;
      v164 = v282;

      v165 = swift_modifyAtReferenceWritableKeyPath();
      v167 = v166;
      v168 = sub_213CE22A8(v163);
      v170 = v169;

      if (v170)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v172 = *(v167 + 24);
        v283[0] = v172;
        *(v167 + 24) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_213D1CE38(&qword_27C8EB1C8, &qword_213D97230);
          v172 = v283[0];
        }

        sub_213D1B868(v168, v172);
        *(v167 + 24) = v172;
      }

      v165(&v289, 0);

      v283[0] = v164;
      v173 = v164;
      v174 = swift_modifyAtReferenceWritableKeyPath();
      v176 = v175;
      v177 = sub_213CE2354(v160);
      if (v178)
      {
        v179 = v177;
        v180 = swift_isUniquelyReferenced_nonNull_native();
        v181 = *(v176 + 16);
        v286 = v181;
        *(v176 + 16) = 0x8000000000000000;
        if (!v180)
        {
          sub_213D1C2B8();
          v181 = v286;
        }

        v133 = *(v181 + 56) + 120 * v179;
        v135 = *(v133 + 32);
        v134 = *(v133 + 48);
        v136 = *(v133 + 16);
        v289 = *v133;
        v290 = v136;
        v291 = v135;
        v292 = v134;
        v137 = *(v133 + 64);
        v138 = *(v133 + 80);
        v139 = *(v133 + 96);
        v296 = *(v133 + 112);
        v294 = v138;
        v295 = v139;
        v293 = v137;
        sub_213D1E4C4(&v289);
        sub_213D1B378(v179, v181);
        *(v176 + 16) = v181;
      }

      v174(v298, 0);

      sub_213D1E4C4(v297);
      v128 = v278 + 64;
    }

    if (v274 <= v132 + 1)
    {
      v141 = (v132 + 1);
    }

    else
    {
      v141 = v274;
    }

    v142 = v141 - 1;
    while (1)
    {
      v140 = v132 + 1;
      if (__OFADD__(v132, 1))
      {
        break;
      }

      if (v140 >= v274)
      {
        sub_213D1E5D0(aBlock);
        v131 = 0;
        v308 = v300;
        v160 = *aBlock;
        v305 = *&aBlock[72];
        v306 = *&aBlock[88];
        v307 = *&aBlock[104];
        v301 = *&aBlock[8];
        v302 = *&aBlock[24];
        v161 = *&aBlock[40];
        v162 = *&aBlock[56];
        v132 = v142;
        goto LABEL_96;
      }

      v131 = *(v128 + 8 * v140);
      ++v132;
      if (v131)
      {
        v132 = v140;
        goto LABEL_95;
      }
    }

    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);

    v192 = sub_213D91EAC();

LABEL_118:
    v193 = v277;

    sub_213D17F50(v192);

    v194 = v277[2];
    if (!v194)
    {
      return v193;
    }

    v195 = 0;
    v279 = v194 - 1;
    v196 = 32;
    while (1)
    {
      v281 = v196;
      v197 = *(v193 + v196 + 48);
      v199 = *(v193 + v196);
      v198 = *(v193 + v196 + 16);
      *&v297[32] = *(v193 + v196 + 32);
      *&v297[48] = v197;
      *v297 = v199;
      *&v297[16] = v198;
      v200 = *(v193 + v196 + 64);
      v201 = *(v193 + v196 + 80);
      v202 = *(v193 + v196 + 112);
      *&v297[96] = *(v193 + v196 + 96);
      *&v297[112] = v202;
      *&v297[64] = v200;
      *&v297[80] = v201;
      v204 = *&v297[8];
      v203 = *v297;
      *&v298[0] = v282;
      v205 = v282;
      sub_213CE2C28(v297, &v289, &qword_27C8EB1B0, &qword_213D97220);

      v206 = v203;
      v207 = swift_modifyAtReferenceWritableKeyPath();
      v209 = v208;
      v210 = swift_isUniquelyReferenced_nonNull_native();
      v283[0] = *(v209 + 24);
      v211 = v283[0];
      *(v209 + 24) = 0x8000000000000000;
      v213 = sub_213CE22A8(v204);
      v214 = v211[2];
      v215 = (v212 & 1) == 0;
      v216 = v214 + v215;
      if (__OFADD__(v214, v215))
      {
        goto LABEL_148;
      }

      v217 = v212;
      if (v211[3] >= v216)
      {
        if (v210)
        {
          v220 = v283[0];
          if (v212)
          {
            goto LABEL_128;
          }
        }

        else
        {
          sub_213D1CE38(&qword_27C8EB1C8, &qword_213D97230);
          v220 = v283[0];
          if (v217)
          {
            goto LABEL_128;
          }
        }
      }

      else
      {
        sub_213D1AEB0(v216, v210, &qword_27C8EB1C8, &qword_213D97230);
        v218 = sub_213CE22A8(v204);
        if ((v217 & 1) != (v219 & 1))
        {
          goto LABEL_156;
        }

        v213 = v218;
        v220 = v283[0];
        if (v217)
        {
LABEL_128:
          v223 = v220[7];
          v224 = *(v223 + 8 * v213);
          *(v223 + 8 * v213) = v206;

          goto LABEL_129;
        }
      }

      v220[(v213 >> 6) + 8] |= 1 << v213;
      *(v220[6] + 8 * v213) = v204;
      *(v220[7] + 8 * v213) = v206;
      v221 = v220[2];
      v108 = __OFADD__(v221, 1);
      v222 = v221 + 1;
      if (v108)
      {
        goto LABEL_150;
      }

      v220[2] = v222;
LABEL_129:
      *(v209 + 24) = v220;
      v207(&v289, 0);

      v283[0] = v205;
      v225 = v205;
      v226 = v206;
      v227 = swift_modifyAtReferenceWritableKeyPath();
      v229 = v228;
      v230 = swift_isUniquelyReferenced_nonNull_native();
      v286 = *(v229 + 16);
      v231 = v286;
      *(v229 + 16) = 0x8000000000000000;
      v232 = sub_213CE2354(v226);
      v234 = v231[2];
      v235 = (v233 & 1) == 0;
      v108 = __OFADD__(v234, v235);
      v236 = v234 + v235;
      v193 = v277;
      if (v108)
      {
        goto LABEL_149;
      }

      v237 = v233;
      if (v231[3] < v236)
      {
        sub_213D19B34(v236, v230);
        v232 = sub_213CE2354(v226);
        if ((v237 & 1) != (v238 & 1))
        {
          goto LABEL_155;
        }

LABEL_134:
        if ((v237 & 1) == 0)
        {
          goto LABEL_139;
        }

        goto LABEL_135;
      }

      if (v230)
      {
        goto LABEL_134;
      }

      v253 = v232;
      sub_213D1C2B8();
      v232 = v253;
      if ((v237 & 1) == 0)
      {
LABEL_139:
        v239 = v286;
        v286[(v232 >> 6) + 8] |= 1 << v232;
        *(v239[6] + 8 * v232) = v226;
        v254 = v239[7] + 120 * v232;
        v255 = *&v297[24];
        v256 = *&v297[56];
        v257 = *&v297[8];
        *(v254 + 32) = *&v297[40];
        *(v254 + 48) = v256;
        *v254 = v257;
        *(v254 + 16) = v255;
        v258 = *&v297[72];
        v259 = *&v297[88];
        v260 = *&v297[104];
        *(v254 + 112) = *&v297[120];
        *(v254 + 80) = v259;
        *(v254 + 96) = v260;
        *(v254 + 64) = v258;
        v261 = v239[2];
        v108 = __OFADD__(v261, 1);
        v262 = v261 + 1;
        if (v108)
        {
          goto LABEL_151;
        }

        v239[2] = v262;
        goto LABEL_141;
      }

LABEL_135:
      v239 = v286;
      v240 = v286[7] + 120 * v232;
      v241 = *(v240 + 48);
      v243 = *v240;
      v242 = *(v240 + 16);
      v291 = *(v240 + 32);
      v292 = v241;
      v289 = v243;
      v290 = v242;
      v245 = *(v240 + 80);
      v244 = *(v240 + 96);
      v246 = *(v240 + 64);
      v296 = *(v240 + 112);
      v294 = v245;
      v295 = v244;
      v293 = v246;
      v247 = *&v297[8];
      v248 = *&v297[24];
      v249 = *&v297[56];
      *(v240 + 32) = *&v297[40];
      *(v240 + 48) = v249;
      *v240 = v247;
      *(v240 + 16) = v248;
      v250 = *&v297[72];
      v251 = *&v297[88];
      v252 = *&v297[104];
      *(v240 + 112) = *&v297[120];
      *(v240 + 80) = v251;
      *(v240 + 96) = v252;
      *(v240 + 64) = v250;
      sub_213D1E4C4(&v289);

LABEL_141:
      *(v229 + 16) = v239;

      v227(v298, 0);

      if (v279 == v195)
      {
        goto LABEL_144;
      }

      ++v195;
      v196 = v281 + 128;
      if (v195 >= v277[2])
      {
        __break(1u);
LABEL_144:

        return v193;
      }
    }
  }

  v11 = MEMORY[0x277D84F90];
  v12 = (a2 + 40);
  v270 = MEMORY[0x277D84F90];
  v271 = MEMORY[0x277D84F90];
  while (1)
  {
    v13 = *(v12 + 72);
    *&v311[32] = *(v12 + 56);
    v312 = v13;
    v313 = *(v12 + 88);
    v314 = *(v12 + 13);
    v14 = *(v12 + 8);
    v309 = *(v12 - 8);
    v310 = v14;
    v15 = *(v12 + 40);
    *v311 = *(v12 + 24);
    *&v311[16] = v15;
    v16 = *v12;
    v319 = *(v12 + 2);
    v318 = v16;
    *&v289 = v282;
    v17 = v282;
    sub_213D1E518(&v309, aBlock);
    swift_getAtKeyPath();

    v18 = *&v297[24];
    if (!*(*&v297[24] + 16) || (v19 = sub_213CE22A8(v309), (v20 & 1) == 0))
    {

      goto LABEL_34;
    }

    v21 = *(*(v18 + 56) + 8 * v19);

    v288 = v17;
    v22 = v17;
    swift_getAtKeyPath();

    v23 = v287;
    if (!*(v287 + 16) || (v24 = sub_213CE2354(v21), (v25 & 1) == 0))
    {

      goto LABEL_33;
    }

    v26 = *(v23 + 56) + 120 * v24;
    v28 = *(v26 + 32);
    v27 = *(v26 + 48);
    v29 = *(v26 + 16);
    *aBlock = *v26;
    *&aBlock[16] = v29;
    *&aBlock[32] = v28;
    *&aBlock[48] = v27;
    v30 = *(v26 + 64);
    v31 = *(v26 + 80);
    v32 = *(v26 + 96);
    *&aBlock[112] = *(v26 + 112);
    *&aBlock[80] = v31;
    *&aBlock[96] = v32;
    *&aBlock[64] = v30;
    sub_213D1E518(aBlock, v297);

    if (((*(&v318 + 9) | ((*(&v318 + 13) | (SHIBYTE(v318) << 16)) << 32)) & 0x8000000000000000) != 0)
    {
      if ((*&aBlock[16] & 0x8000000000000000) == 0)
      {
        goto LABEL_32;
      }

      sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);
      if ((sub_213D91C5C() & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if ((*&aBlock[16] & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v33 = v319;
      v34 = *&aBlock[24];
      if (!sub_213D6798C(v318, BYTE8(v318) & 1, *&aBlock[8], aBlock[16] & 1))
      {
        goto LABEL_32;
      }

      if (v33)
      {
        if (!v34)
        {
          goto LABEL_20;
        }

        v35 = sub_213D6F248(v33, v34);

        if ((v35 & 1) == 0)
        {
LABEL_32:
          sub_213D1E4C4(aBlock);
LABEL_33:

LABEL_34:
          v55 = *(&v318 + 1);
          v56 = v318;
          if ((*(&v318 + 1) & 0x8000000000000000) != 0)
          {
            sub_213D1E574(&v318, aBlock);
          }

          else
          {
            v57 = v319;
            sub_213D1E574(&v318, aBlock);

            sub_213CE2B34(0, &qword_27C8EB1C0, 0x277CD4F18);
            sub_213D1E574(&v318, aBlock);
            v56 = sub_213D67678(v56, v55, v57);
          }

          *&aBlock[64] = *&v311[32];
          *&aBlock[80] = v312;
          *&aBlock[96] = v313;
          *&aBlock[112] = v314;
          *aBlock = v309;
          *&aBlock[16] = v310;
          *&aBlock[32] = *v311;
          *&aBlock[48] = *&v311[16];
          sub_213D1E518(&v309, v297);
          v58 = v56;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_213D70584(0, v11[2] + 1, 1, v11);
          }

          v60 = v11[2];
          v59 = v11[3];
          if (v60 >= v59 >> 1)
          {
            v11 = sub_213D70584((v59 > 1), v60 + 1, 1, v11);
          }

          v11[2] = v60 + 1;
          v61 = &v11[16 * v60];
          v61[4] = v58;
          v62 = *aBlock;
          v63 = *&aBlock[16];
          v64 = *&aBlock[32];
          *(v61 + 11) = *&aBlock[48];
          *(v61 + 9) = v64;
          *(v61 + 7) = v63;
          *(v61 + 5) = v62;
          v65 = *&aBlock[64];
          v66 = *&aBlock[80];
          v67 = *&aBlock[96];
          v61[19] = *&aBlock[112];
          *(v61 + 17) = v67;
          *(v61 + 15) = v66;
          *(v61 + 13) = v65;
          sub_213D1E4C4(&v309);
          goto LABEL_42;
        }
      }

      else if (v34)
      {
LABEL_20:

        sub_213D1E4C4(aBlock);
        goto LABEL_34;
      }
    }

    if (v314 != *&aBlock[112])
    {
      goto LABEL_32;
    }

    *(&v290 + 1) = sub_213CE2B34(0, &qword_27C8EB168, 0x277CD4FA0);
    *&v291 = &off_28263B0B0;
    *&v289 = a1;
    sub_213D1E22C(&v289, v298);
    sub_213D1E22C(v298, v283);
    v36 = swift_allocObject();
    sub_213D1E2DC(v298, v36 + 16);
    *(v36 + 56) = v21;
    v37 = v312;
    *(v36 + 128) = *&v311[32];
    *(v36 + 144) = v37;
    *(v36 + 160) = v313;
    *(v36 + 176) = v314;
    v38 = v310;
    *(v36 + 64) = v309;
    *(v36 + 80) = v38;
    v39 = *&v311[16];
    *(v36 + 96) = *v311;
    *(v36 + 112) = v39;
    if (!a4)
    {
      v276 = v11;
      v68 = v284;
      v69 = v285;
      v266 = v285;
      __swift_project_boxed_opaque_existential_1(v283, v284);
      v70 = *(v69 + 48);
      sub_213D1E518(&v309, v297);
      v71 = v21;
      v72 = a1;
      v73 = v70(v71, v68, v266);
      if (v73)
      {
        v74 = v73;
        objc_opt_self();
        v75 = swift_dynamicCastObjCClass();
        if (v75)
        {
          v76 = v75;
          v315 = *&v311[8];
          v316 = *&v311[24];
          v317 = *&v311[40];
          v77 = *&v311[32];
          v78 = *&v311[8];
          sub_213D1E3A4(&v315, v297);
          [v76 setLineWidth_];
          [v76 setLineCap_];
          [v76 setLineJoin_];
          v273 = v76;
          [v76 setMiterLimit_];
          v11 = v276;
          v267 = v74;
          if (*(v77 + 16))
          {

            sub_213D18410(v79);
            sub_213D1E400(&v315);
            sub_213CE2B34(0, &unk_27C8EB188, 0x277CCABB0);
            v80 = sub_213D919EC();
          }

          else
          {
            v80 = 0;
          }

          v81 = v312;
          v264 = BYTE8(v312);
          [v273 setLineDashPattern_];

          [v273 setLineDashPhase_];
          sub_213D1E400(&v315);
          if ((v264 & 1) != 0 && !*(v81 + 16))
          {
            sub_213D9149C();
          }

          else
          {
          }

          v82 = v313;
          v83 = BYTE8(v313);
          sub_213CE2B34(0, &qword_27C8E9370, 0x277D75348);
          v84 = sub_213D91C3C();
          [v273 setStrokeColor_];

          if ((v83 & 1) != 0 && !*(v82 + 16))
          {
            sub_213D9149C();
          }

          else
          {
          }

          v85 = sub_213D91C3C();
          [v273 setFillColor_];

          [v273 setNeedsDisplay];

          goto LABEL_59;
        }
      }

      else
      {
      }

      v11 = v276;
LABEL_59:
      __swift_destroy_boxed_opaque_existential_1(v283);
      __swift_destroy_boxed_opaque_existential_1(&v289);
      v54 = 0;
      v272 = 0;
      v275 = 0;
      v53 = 0;
      v45 = v278;
      goto LABEL_60;
    }

    sub_213D1E518(&v309, v297);
    v40 = v21;
    v41 = a1;

    __swift_destroy_boxed_opaque_existential_1(v283);
    v42 = swift_allocObject();
    v42[2] = sub_213D1E634;
    v42[3] = v36;
    v42[4] = a4;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_213D1E634;
    *(v43 + 24) = v36;
    v275 = v43;

    __swift_destroy_boxed_opaque_existential_1(&v289);
    v44 = swift_allocObject();
    *(v44 + 16) = sub_213D1E454;
    *(v44 + 24) = v42;
    v272 = v42;
    swift_retain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v270 = sub_213D6FE48(0, v270[2] + 1, 1, v270);
    }

    v45 = v278;
    v47 = v270[2];
    v46 = v270[3];
    if (v47 >= v46 >> 1)
    {
      v270 = sub_213D6FE48((v46 > 1), v47 + 1, 1, v270);
    }

    v270[2] = v47 + 1;
    v48 = &v270[2 * v47];
    v48[4] = sub_213D1F608;
    v48[5] = v44;
    v49 = swift_allocObject();
    *(v49 + 16) = sub_213D1E460;
    *(v49 + 24) = v275;
    swift_retain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v271 = sub_213D6FE48(0, v271[2] + 1, 1, v271);
    }

    v51 = v271[2];
    v50 = v271[3];
    if (v51 >= v50 >> 1)
    {
      v271 = sub_213D6FE48((v50 > 1), v51 + 1, 1, v271);
    }

    v271[2] = v51 + 1;
    v52 = &v271[2 * v51];
    v52[4] = sub_213D1F608;
    v52[5] = v49;
    v53 = sub_213D1E460;
    v54 = sub_213D1E454;
LABEL_60:
    v86 = sub_213CE2354(v21);
    v265 = v53;
    v268 = v54;
    if (v87)
    {
      v88 = v86;
      v89 = swift_isUniquelyReferenced_nonNull_native();
      *&v289 = v45;
      if (!v89)
      {
        sub_213D1C2B8();
        v45 = v289;
      }

      v90 = *(v45 + 56) + 120 * v88;
      v92 = *(v90 + 32);
      v91 = *(v90 + 48);
      v93 = *(v90 + 16);
      *v297 = *v90;
      *&v297[16] = v93;
      *&v297[32] = v92;
      *&v297[48] = v91;
      v94 = *(v90 + 64);
      v95 = *(v90 + 80);
      v96 = *(v90 + 96);
      *&v297[112] = *(v90 + 112);
      *&v297[80] = v95;
      *&v297[96] = v96;
      *&v297[64] = v94;
      sub_213D1E4C4(v297);
      v278 = v45;
      sub_213D1B378(v88, v45);
    }

    *&v289 = v22;
    v97 = v22;
    sub_213D1E518(&v309, v297);
    v98 = v21;
    v99 = swift_modifyAtReferenceWritableKeyPath();
    v101 = v100;
    v102 = swift_isUniquelyReferenced_nonNull_native();
    *&v298[0] = *(v101 + 16);
    v103 = *&v298[0];
    *(v101 + 16) = 0x8000000000000000;
    v104 = sub_213CE2354(v98);
    v106 = *(v103 + 16);
    v107 = (v105 & 1) == 0;
    v108 = __OFADD__(v106, v107);
    v109 = v106 + v107;
    if (v108)
    {
      break;
    }

    v110 = v105;
    if (*(v103 + 24) < v109)
    {
      sub_213D19B34(v109, v102);
      v104 = sub_213CE2354(v98);
      if ((v110 & 1) != (v111 & 1))
      {
        goto LABEL_155;
      }

LABEL_69:
      v112 = *&v298[0];
      if ((v110 & 1) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_70;
    }

    if (v102)
    {
      goto LABEL_69;
    }

    v113 = v104;
    sub_213D1C2B8();
    v104 = v113;
    v112 = *&v298[0];
    if ((v110 & 1) == 0)
    {
LABEL_74:
      v112[(v104 >> 6) + 8] |= 1 << v104;
      *(v112[6] + 8 * v104) = v98;
      v114 = v112[7] + 120 * v104;
      v115 = v309;
      v116 = v310;
      v117 = *&v311[16];
      *(v114 + 32) = *v311;
      *(v114 + 48) = v117;
      *v114 = v115;
      *(v114 + 16) = v116;
      v118 = *&v311[32];
      v119 = v312;
      v120 = v313;
      *(v114 + 112) = v314;
      *(v114 + 80) = v119;
      *(v114 + 96) = v120;
      *(v114 + 64) = v118;
      v121 = v112[2];
      v108 = __OFADD__(v121, 1);
      v122 = v121 + 1;
      if (v108)
      {
        goto LABEL_154;
      }

      v112[2] = v122;
      goto LABEL_76;
    }

LABEL_70:
    sub_213D1E644(&v309, v112[7] + 120 * v104);

LABEL_76:
    *(v101 + 16) = v112;

    v99(v297, 0);
    sub_213D1E4C4(aBlock);
    sub_213CCE520(v265, v275);
    sub_213CCE520(v268, v272);

    sub_213D1E4C4(&v309);
LABEL_42:
    v12 = (v12 + 120);
    if (!--v10)
    {
      goto LABEL_78;
    }
  }

  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  sub_213CE2B34(0, &qword_27C8EB1C0, 0x277CD4F18);
  sub_213D91F8C();
  __break(1u);
LABEL_156:
  result = sub_213D91F8C();
  __break(1u);
  return result;
}

uint64_t sub_213D02A04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v8 = swift_readAtKeyPath();
  v242 = *(v9 + 16);

  v8(aBlock, 0);
  v244 = v7;

  v10 = *(a2 + 16);
  if (!v10)
  {
    v11 = MEMORY[0x277D84F90];
    v224 = MEMORY[0x277D84F90];
    v225 = MEMORY[0x277D84F90];
LABEL_70:
    if (a4)
    {
      v107 = objc_opt_self();
      v108 = swift_allocObject();
      *(v108 + 16) = v224;
      *&aBlock[32] = sub_213D1F590;
      *&aBlock[40] = v108;
      *aBlock = MEMORY[0x277D85DD0];
      *&aBlock[8] = 1107296256;
      *&aBlock[16] = sub_213CFF278;
      *&aBlock[24] = &block_descriptor_166;
      v109 = _Block_copy(aBlock);

      v110 = swift_allocObject();
      *(v110 + 16) = v225;
      *&aBlock[32] = sub_213D1F60C;
      *&aBlock[40] = v110;
      *aBlock = MEMORY[0x277D85DD0];
      *&aBlock[8] = 1107296256;
      *&aBlock[16] = sub_213D183BC;
      *&aBlock[24] = &block_descriptor_173;
      v111 = _Block_copy(aBlock);

      [v107 animateWithDuration:v109 animations:v111 completion:0.25];
      _Block_release(v111);
      _Block_release(v109);
    }

    v112 = v242;
    v113 = v242 + 8;
    v114 = 1 << *(v242 + 32);
    v115 = -1;
    if (v114 < 64)
    {
      v115 = ~(-1 << v114);
    }

    v116 = v115 & v242[8];
    v117 = (v114 + 63) >> 6;

    v118 = 0;
    v241 = v11;
    v226 = v117;
    while (v116)
    {
LABEL_82:
      v125 = __clz(__rbit64(v116)) | (v118 << 6);
      v126 = *(v112[6] + 8 * v125);
      v127 = (v112[7] + 96 * v125);
      v128 = v127[1];
      *aBlock = *v127;
      *&aBlock[16] = v128;
      v129 = v127[4];
      v130 = v127[5];
      v131 = v127[3];
      *&aBlock[32] = v127[2];
      *&aBlock[48] = v131;
      *&aBlock[64] = v129;
      *&aBlock[80] = v130;
      v236 = *&aBlock[16];
      v238 = *aBlock;
      v230 = v130;
      v233 = v131;
      v227 = v129;
      v228 = *&aBlock[32];
      v132 = v126;
      sub_213D1E6AC(aBlock, &v252);
      if (!v132)
      {
LABEL_90:

        *aBlock = MEMORY[0x277D84F90];
        v151 = 1 << *(v112 + 32);
        v152 = -1;
        if (v151 < 64)
        {
          v152 = ~(-1 << v151);
        }

        v153 = v152 & v112[8];
        v154 = (v151 + 63) >> 6;

        v155 = 0;
        while (v153)
        {
LABEL_98:
          v157 = __clz(__rbit64(v153));
          v153 &= v153 - 1;
          v158 = *(v112[6] + ((v155 << 9) | (8 * v157)));
          type metadata accessor for MapBridgingUserAnnotation();
          if (!swift_dynamicCastClass())
          {
            v159 = v158;
            sub_213D91DEC();
            sub_213D91E2C();
            sub_213D91E3C();
            sub_213D91DFC();
            v112 = v242;
          }
        }

        while (1)
        {
          v156 = v155 + 1;
          if (__OFADD__(v155, 1))
          {
            __break(1u);
            goto LABEL_132;
          }

          if (v156 >= v154)
          {
            break;
          }

          v153 = v113[v156];
          ++v155;
          if (v153)
          {
            v155 = v156;
            goto LABEL_98;
          }
        }

        v160 = *aBlock;
        if ((*aBlock & 0x8000000000000000) == 0 && (*aBlock & 0x4000000000000000) == 0)
        {

          sub_213D91F6C();
          sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);
          v161 = v160;
          goto LABEL_103;
        }

        goto LABEL_137;
      }

      *aBlock = v238;
      *&aBlock[16] = v236;
      *&aBlock[32] = v228;
      *&aBlock[48] = v233;
      *&aBlock[64] = v227;
      *&aBlock[80] = v230;
      v249[0] = v244;
      v133 = v244;

      v134 = swift_modifyAtReferenceWritableKeyPath();
      v136 = v135;
      v137 = sub_213CE22A8(v238);
      v139 = v138;

      if (v139)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v141 = *(v136 + 24);
        *&v248[0] = v141;
        *(v136 + 24) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_213D1CE38(&qword_27C8EB1F8, &qword_213D97250);
          v141 = *&v248[0];
        }

        sub_213D1B868(v137, v141);
        *(v136 + 24) = v141;
      }

      v134(&v252, 0);

      *&v248[0] = v133;
      v142 = v133;
      v143 = swift_modifyAtReferenceWritableKeyPath();
      v145 = v144;
      v146 = sub_213CE23A4(v132);
      v11 = v241;
      if (v147)
      {
        v148 = v146;
        v149 = swift_isUniquelyReferenced_nonNull_native();
        v150 = *(v145 + 16);
        v245[0] = v150;
        *(v145 + 16) = 0x8000000000000000;
        if (!v149)
        {
          sub_213D1C5E4();
          v150 = v245[0];
        }

        v119 = (*(v150 + 56) + 96 * v148);
        v120 = v119[1];
        v252 = *v119;
        v253 = v120;
        v121 = v119[5];
        v123 = v119[2];
        v122 = v119[3];
        v256 = v119[4];
        v257 = v121;
        v254 = v123;
        v255 = v122;
        sub_213D1E764(&v252);
        sub_213D1B508(v148, v150);
        *(v145 + 16) = v150;
      }

      v116 &= v116 - 1;
      v143(v249, 0);

      sub_213D1E764(aBlock);
      v112 = v242;
      v117 = v226;
    }

    while (1)
    {
      v124 = v118 + 1;
      if (__OFADD__(v118, 1))
      {
        break;
      }

      if (v124 >= v117)
      {
        goto LABEL_90;
      }

      v116 = v113[v124];
      ++v118;
      if (v116)
      {
        v118 = v124;
        goto LABEL_82;
      }
    }

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
    sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);

    v161 = sub_213D91EAC();

LABEL_103:

    sub_213D17F50(v161);

    v162 = *(v11 + 16);
    if (!v162)
    {
      return v11;
    }

    v163 = 0;
    v239 = v162 - 1;
    v164 = 32;
    while (1)
    {
      v243 = v164;
      v165 = *(v11 + v164 + 32);
      v166 = *(v11 + v164);
      *&aBlock[16] = *(v11 + v164 + 16);
      *&aBlock[32] = v165;
      *aBlock = v166;
      v167 = *(v11 + v164 + 48);
      v168 = *(v11 + v164 + 64);
      v169 = *(v11 + v164 + 80);
      *&aBlock[96] = *(v11 + v164 + 96);
      *&aBlock[64] = v168;
      *&aBlock[80] = v169;
      *&aBlock[48] = v167;
      v11 = *&aBlock[8];
      v170 = *aBlock;
      v249[0] = v244;
      v171 = v244;
      sub_213CE2C28(aBlock, &v252, &qword_27C8ECC90, &qword_213D97240);

      v172 = v170;
      v173 = swift_modifyAtReferenceWritableKeyPath();
      v175 = v174;
      v176 = swift_isUniquelyReferenced_nonNull_native();
      *&v248[0] = *(v175 + 24);
      v177 = *&v248[0];
      *(v175 + 24) = 0x8000000000000000;
      v179 = sub_213CE22A8(v11);
      v180 = *(v177 + 16);
      v181 = (v178 & 1) == 0;
      v182 = v180 + v181;
      if (__OFADD__(v180, v181))
      {
        goto LABEL_133;
      }

      v183 = v178;
      if (*(v177 + 24) >= v182)
      {
        if (v176)
        {
          v186 = *&v248[0];
          if (v178)
          {
            goto LABEL_113;
          }
        }

        else
        {
          sub_213D1CE38(&qword_27C8EB1F8, &qword_213D97250);
          v186 = *&v248[0];
          if (v183)
          {
            goto LABEL_113;
          }
        }
      }

      else
      {
        sub_213D1AEB0(v182, v176, &qword_27C8EB1F8, &qword_213D97250);
        v184 = sub_213CE22A8(v11);
        if ((v183 & 1) != (v185 & 1))
        {
          goto LABEL_141;
        }

        v179 = v184;
        v186 = *&v248[0];
        if (v183)
        {
LABEL_113:
          v189 = v186[7];
          v190 = *(v189 + 8 * v179);
          *(v189 + 8 * v179) = v172;

          goto LABEL_114;
        }
      }

      v186[(v179 >> 6) + 8] |= 1 << v179;
      *(v186[6] + 8 * v179) = v11;
      *(v186[7] + 8 * v179) = v172;
      v187 = v186[2];
      v94 = __OFADD__(v187, 1);
      v188 = v187 + 1;
      if (v94)
      {
        goto LABEL_135;
      }

      v186[2] = v188;
LABEL_114:
      *(v175 + 24) = v186;
      v173(&v252, 0);

      *&v248[0] = v171;
      v191 = v171;
      v192 = v172;
      v11 = swift_modifyAtReferenceWritableKeyPath();
      v194 = v193;
      v195 = swift_isUniquelyReferenced_nonNull_native();
      v245[0] = *(v194 + 16);
      v196 = v245[0];
      *(v194 + 16) = 0x8000000000000000;
      v197 = sub_213CE23A4(v192);
      v199 = *(v196 + 16);
      v200 = (v198 & 1) == 0;
      v94 = __OFADD__(v199, v200);
      v201 = v199 + v200;
      if (v94)
      {
        goto LABEL_134;
      }

      v202 = v198;
      if (*(v196 + 24) < v201)
      {
        sub_213D1A16C(v201, v195);
        v197 = sub_213CE23A4(v192);
        if ((v202 & 1) != (v203 & 1))
        {
          goto LABEL_140;
        }

LABEL_119:
        if ((v202 & 1) == 0)
        {
          goto LABEL_124;
        }

        goto LABEL_120;
      }

      if (v195)
      {
        goto LABEL_119;
      }

      v214 = v197;
      sub_213D1C5E4();
      v197 = v214;
      if ((v202 & 1) == 0)
      {
LABEL_124:
        v204 = v245[0];
        *(v245[0] + 8 * (v197 >> 6) + 64) |= 1 << v197;
        *(v204[6] + 8 * v197) = v192;
        v215 = (v204[7] + 96 * v197);
        v216 = *&aBlock[24];
        *v215 = *&aBlock[8];
        v215[1] = v216;
        v217 = *&aBlock[40];
        v218 = *&aBlock[56];
        v219 = *&aBlock[88];
        v215[4] = *&aBlock[72];
        v215[5] = v219;
        v215[2] = v217;
        v215[3] = v218;
        v220 = v204[2];
        v94 = __OFADD__(v220, 1);
        v221 = v220 + 1;
        if (v94)
        {
          goto LABEL_136;
        }

        v204[2] = v221;
        goto LABEL_126;
      }

LABEL_120:
      v204 = v245[0];
      v205 = (*(v245[0] + 56) + 96 * v197);
      v206 = v205[1];
      v252 = *v205;
      v253 = v206;
      v207 = v205[2];
      v208 = v205[3];
      v209 = v205[5];
      v256 = v205[4];
      v257 = v209;
      v254 = v207;
      v255 = v208;
      v210 = *&aBlock[56];
      v211 = *&aBlock[88];
      v212 = *&aBlock[40];
      v205[4] = *&aBlock[72];
      v205[5] = v211;
      v205[2] = v212;
      v205[3] = v210;
      v213 = *&aBlock[24];
      *v205 = *&aBlock[8];
      v205[1] = v213;
      sub_213D1E764(&v252);

LABEL_126:
      *(v194 + 16) = v204;

      (v11)(v249, 0);

      if (v239 == v163)
      {
        goto LABEL_129;
      }

      ++v163;
      v11 = v241;
      v164 = v243 + 104;
      if (v163 >= *(v241 + 16))
      {
        __break(1u);
LABEL_129:
        v11 = v241;

        return v11;
      }
    }
  }

  v11 = MEMORY[0x277D84F90];
  v12 = a2 + 40;
  v224 = MEMORY[0x277D84F90];
  v225 = MEMORY[0x277D84F90];
  while (1)
  {
    v13 = *(v12 + 40);
    v261 = *(v12 + 24);
    v262 = v13;
    v14 = *(v12 + 72);
    v263 = *(v12 + 56);
    v264 = v14;
    v15 = *(v12 + 8);
    v259 = *(v12 - 8);
    v260 = v15;
    v265 = *v12;
    v266 = *(v12 + 8);
    v249[0] = v244;
    v16 = v244;
    sub_213D1E6AC(&v259, aBlock);
    swift_getAtKeyPath();

    v17 = *(&v253 + 1);
    if (!*(*(&v253 + 1) + 16) || (v18 = sub_213CE22A8(v259), (v19 & 1) == 0))
    {

      goto LABEL_32;
    }

    v20 = *(*(v17 + 56) + 8 * v18);

    v251 = v16;
    v21 = v16;
    swift_getAtKeyPath();

    v22 = v250;
    if (!*(v250 + 16) || (v23 = sub_213CE23A4(v20), (v24 & 1) == 0))
    {

LABEL_24:

      goto LABEL_32;
    }

    v240 = v11;
    v25 = (*(v22 + 56) + 96 * v23);
    v26 = v25[1];
    *aBlock = *v25;
    *&aBlock[16] = v26;
    v27 = v25[5];
    v29 = v25[2];
    v28 = v25[3];
    *&aBlock[64] = v25[4];
    *&aBlock[80] = v27;
    *&aBlock[32] = v29;
    *&aBlock[48] = v28;
    sub_213D1E6AC(aBlock, &v252);

    v30 = v265;
    v31 = v266;
    v32 = *&aBlock[8];
    v33 = *&aBlock[16];
    if (v266 < 0)
    {
      if (*&aBlock[16] < 0)
      {
        sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);
        sub_213D1E7B8(v32, v33);
        sub_213D1E708(&v265, &v252);
        sub_213D1E7B8(v32, v33);
        sub_213D1E708(&v265, &v252);
        v52 = sub_213D91C5C();
        sub_213D1E6A0(v32, v33);
        sub_213D1E7C4(&v265);
        sub_213D1E6A0(v30, v31);
        sub_213D1E6A0(v32, v33);
        v11 = v240;
        if (v52)
        {
          goto LABEL_11;
        }

LABEL_31:

        sub_213D1E764(aBlock);
      }

      else
      {
        sub_213D1E7B8(*&aBlock[8], *&aBlock[16]);
LABEL_27:
        sub_213D1E708(&v265, &v252);
        sub_213D1E7B8(v32, v33);
        sub_213D1E708(&v265, &v252);

        sub_213D1E764(aBlock);
        sub_213D1E6A0(v32, v33);
        sub_213D1E7C4(&v265);
        sub_213D1E6A0(v30, v31);
        sub_213D1E6A0(v32, v33);
LABEL_29:
        v11 = v240;
      }

LABEL_32:
      v53 = v265;
      if (SHIBYTE(v266) < 0)
      {
        sub_213D1E708(&v265, aBlock);
LABEL_40:
        *&aBlock[32] = v261;
        *&aBlock[48] = v262;
        *&aBlock[64] = v263;
        *&aBlock[80] = v264;
        *aBlock = v259;
        *&aBlock[16] = v260;
        sub_213D1E6AC(&v259, &v252);
        v58 = v53;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_213D706B8(0, *(v11 + 16) + 1, 1, v11);
        }

        v60 = *(v11 + 16);
        v59 = *(v11 + 24);
        if (v60 >= v59 >> 1)
        {
          v11 = sub_213D706B8((v59 > 1), v60 + 1, 1, v11);
        }

        sub_213D1E764(&v259);
        *(v11 + 16) = v60 + 1;
        v61 = v11 + 104 * v60;
        *(v61 + 32) = v58;
        v62 = *&aBlock[32];
        v63 = *&aBlock[48];
        v64 = *&aBlock[64];
        *(v61 + 120) = *&aBlock[80];
        *(v61 + 104) = v64;
        *(v61 + 88) = v63;
        *(v61 + 72) = v62;
        v65 = *aBlock;
        *(v61 + 56) = *&aBlock[16];
        *(v61 + 40) = v65;
        goto LABEL_45;
      }

      v54 = v266;
      if ((v266 & 0x100) != 0)
      {
        sub_213CE2B34(0, &qword_27C8EB1F0, 0x277CD4DF0);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v56 = v53[2];
        if (v54)
        {
LABEL_35:
          v57 = [ObjCClassFromMetadata polylineWithCoordinates:v53 + 4 count:v56];
LABEL_39:
          v53 = v57;
          goto LABEL_40;
        }
      }

      else
      {
        ObjCClassFromMetadata = objc_opt_self();
        v56 = v53[2];
        if (v54)
        {
          goto LABEL_35;
        }
      }

      v57 = [ObjCClassFromMetadata polylineWithPoints:v53 + 4 count:v56];
      goto LABEL_39;
    }

    sub_213D1E7B8(*&aBlock[8], *&aBlock[16]);
    if (v33 < 0)
    {
      goto LABEL_27;
    }

    sub_213D1E708(&v265, &v252);
    sub_213D1E7B8(v32, v33);
    sub_213D1E708(&v265, &v252);
    v34 = sub_213D6798C(v30, v31 & 1, v32, v33 & 1);
    sub_213D1E6A0(v32, v33);
    sub_213D1E7C4(&v265);
    sub_213D1E6A0(v30, v31);
    sub_213D1E6A0(v32, v33);
    if (!v34)
    {

      sub_213D1E764(aBlock);
      goto LABEL_29;
    }

    v11 = v240;
    if (((v33 ^ v31) & 0x100) != 0)
    {
      goto LABEL_31;
    }

LABEL_11:
    if (*(&v264 + 1) != *&aBlock[88])
    {
      sub_213D1E764(aBlock);
      goto LABEL_24;
    }

    v234 = v21;
    v249[3] = sub_213CE2B34(0, &qword_27C8EB168, 0x277CD4FA0);
    v249[4] = &off_28263B0B0;
    v249[0] = a1;
    sub_213D1E22C(v249, v248);
    sub_213D1E22C(v248, v245);
    v35 = swift_allocObject();
    sub_213D1E2DC(v248, v35 + 16);
    *(v35 + 56) = v20;
    v36 = v262;
    *(v35 + 96) = v261;
    *(v35 + 112) = v36;
    v37 = v264;
    *(v35 + 128) = v263;
    *(v35 + 144) = v37;
    v38 = v260;
    *(v35 + 64) = v259;
    *(v35 + 80) = v38;
    if (a4)
    {
      sub_213D1E6AC(&v259, &v252);
      v39 = v20;
      v40 = a1;

      __swift_destroy_boxed_opaque_existential_1(v245);
      v41 = swift_allocObject();
      v41[2] = sub_213D1E818;
      v41[3] = v35;
      v41[4] = a4;
      v42 = swift_allocObject();
      *(v42 + 16) = sub_213D1E818;
      *(v42 + 24) = v35;

      __swift_destroy_boxed_opaque_existential_1(v249);
      v43 = swift_allocObject();
      *(v43 + 16) = sub_213D1E454;
      *(v43 + 24) = v41;
      swift_retain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v224 = sub_213D6FE48(0, v224[2] + 1, 1, v224);
      }

      v45 = v224[2];
      v44 = v224[3];
      if (v45 >= v44 >> 1)
      {
        v224 = sub_213D6FE48((v44 > 1), v45 + 1, 1, v224);
      }

      v224[2] = v45 + 1;
      v46 = &v224[2 * v45];
      v46[4] = sub_213D1F608;
      v46[5] = v43;
      v47 = swift_allocObject();
      *(v47 + 16) = sub_213D1E460;
      *(v47 + 24) = v42;
      swift_retain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v225 = sub_213D6FE48(0, v225[2] + 1, 1, v225);
      }

      v49 = v225[2];
      v48 = v225[3];
      if (v49 >= v48 >> 1)
      {
        v225 = sub_213D6FE48((v48 > 1), v49 + 1, 1, v225);
      }

      v225[2] = v49 + 1;
      v50 = &v225[2 * v49];
      v50[4] = sub_213D1F608;
      v50[5] = v47;
      v229 = sub_213D1E460;
      v231 = sub_213D1E454;
      v51 = v242;
      v21 = v234;
    }

    else
    {
      v66 = v246;
      v67 = v247;
      __swift_project_boxed_opaque_existential_1(v245, v246);
      v232 = *(v67 + 48);
      sub_213D1E6AC(&v259, &v252);
      v68 = v20;
      v69 = a1;
      v70 = v232(v68, v66, v67);
      if (v70)
      {
        v71 = v70;
        objc_opt_self();
        v72 = swift_dynamicCastObjCClass();
        if (v72)
        {
          v254 = v261;
          v255 = v262;
          v256 = v263;
          v257 = v264;
          v252 = v259;
          v253 = v260;
          v73 = v72;
          sub_213D28034(v72);
          [v73 setNeedsDisplay];
        }

        else
        {
        }
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_1(v245);
      __swift_destroy_boxed_opaque_existential_1(v249);
      v231 = 0;
      v41 = 0;
      v229 = 0;
      v42 = 0;
      v51 = v242;
    }

    v74 = sub_213CE23A4(v20);
    v235 = v42;
    if (v75)
    {
      v76 = v74;
      v77 = swift_isUniquelyReferenced_nonNull_native();
      v249[0] = v51;
      if (!v77)
      {
        sub_213D1C5E4();
        v51 = v249[0];
      }

      v78 = (v51[7] + 96 * v76);
      v79 = v78[1];
      v252 = *v78;
      v253 = v79;
      v80 = v78[5];
      v82 = v78[2];
      v81 = v78[3];
      v256 = v78[4];
      v257 = v80;
      v254 = v82;
      v255 = v81;
      sub_213D1E764(&v252);
      v242 = v51;
      sub_213D1B508(v76, v51);
    }

    v249[0] = v21;
    v83 = v21;
    sub_213D1E6AC(&v259, &v252);
    v84 = v20;
    v85 = swift_modifyAtReferenceWritableKeyPath();
    v87 = v86;
    v88 = swift_isUniquelyReferenced_nonNull_native();
    *&v248[0] = *(v87 + 16);
    v89 = *&v248[0];
    *(v87 + 16) = 0x8000000000000000;
    v90 = sub_213CE23A4(v84);
    v92 = *(v89 + 16);
    v93 = (v91 & 1) == 0;
    v94 = __OFADD__(v92, v93);
    v95 = v92 + v93;
    if (v94)
    {
      break;
    }

    v96 = v91;
    if (*(v89 + 24) >= v95)
    {
      if ((v88 & 1) == 0)
      {
        v106 = v90;
        sub_213D1C5E4();
        v90 = v106;
      }
    }

    else
    {
      sub_213D1A16C(v95, v88);
      v90 = sub_213CE23A4(v84);
      if ((v96 & 1) != (v97 & 1))
      {
        goto LABEL_140;
      }
    }

    v98 = *&v248[0];
    if (v96)
    {
      sub_213D1E828(&v259, *(*&v248[0] + 56) + 96 * v90);
    }

    else
    {
      *(*&v248[0] + 8 * (v90 >> 6) + 64) |= 1 << v90;
      *(v98[6] + 8 * v90) = v84;
      v99 = (v98[7] + 96 * v90);
      v100 = v260;
      *v99 = v259;
      v99[1] = v100;
      v101 = v261;
      v102 = v262;
      v103 = v264;
      v99[4] = v263;
      v99[5] = v103;
      v99[2] = v101;
      v99[3] = v102;
      v104 = v98[2];
      v94 = __OFADD__(v104, 1);
      v105 = v104 + 1;
      if (v94)
      {
        goto LABEL_139;
      }

      v98[2] = v105;
    }

    *(v87 + 16) = v98;

    v85(&v252, 0);
    sub_213D1E764(aBlock);

    sub_213CCE520(v229, v235);
    sub_213CCE520(v231, v41);

    sub_213D1E764(&v259);
    v11 = v240;
LABEL_45:
    v12 += 96;
    if (!--v10)
    {
      goto LABEL_70;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  sub_213CE2B34(0, &qword_27C8EB6C0, 0x277CD4F28);
  sub_213D91F8C();
  __break(1u);
LABEL_141:
  result = sub_213D91F8C();
  __break(1u);
  return result;
}

char *sub_213D03F90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v278 = a4;
  v272 = a1;
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB208, &unk_213D97260);
  v298 = *(v289 - 8);
  MEMORY[0x28223BE20](v289);
  v300 = (&v262 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v297 = (&v262 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB680, &unk_213D97FF0);
  MEMORY[0x28223BE20](v11 - 8);
  v263 = &v262 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v271 = &v262 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v262 - v16;
  MEMORY[0x28223BE20](v18);
  v283 = &v262 - v19;
  MEMORY[0x28223BE20](v20);
  v286 = &v262 - v21;
  MEMORY[0x28223BE20](v22);
  v288 = &v262 - v23;
  MEMORY[0x28223BE20](v24);
  v292 = &v262 - v25;
  v302 = type metadata accessor for UserAnnotationViewModel(0);
  v26 = *(v302 - 8);
  MEMORY[0x28223BE20](v302);
  v268 = &v262 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v279 = &v262 - v29;
  MEMORY[0x28223BE20](v30);
  v269 = &v262 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = (&v262 - v33);
  MEMORY[0x28223BE20](v35);
  v287 = &v262 - v36;
  MEMORY[0x28223BE20](v37);
  v301 = (&v262 - v38);
  v270 = v39;
  MEMORY[0x28223BE20](v40);
  v291 = &v262 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB220, &qword_213D97280);
  MEMORY[0x28223BE20](v42 - 8);
  v295 = &v262 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v294 = (&v262 - v45);
  *&v308 = v5;
  v46 = v5;
  v304 = a5;
  v47 = swift_readAtKeyPath();
  v49 = *(v48 + 16);

  v47(&aBlock, 0);
  v303 = v46;

  v50 = *(a2 + 16);
  v299 = v26;
  if (!v50)
  {
    v53 = MEMORY[0x277D84F90];
    v281 = MEMORY[0x277D84F90];
    v282 = MEMORY[0x277D84F90];
LABEL_51:
    v290 = v53;
    if (v278)
    {
      v148 = objc_opt_self();
      v149 = swift_allocObject();
      *(v149 + 16) = v281;
      v313 = sub_213D1F590;
      v314 = v149;
      aBlock = MEMORY[0x277D85DD0];
      v310 = 1107296256;
      v311 = sub_213CFF278;
      v312 = &block_descriptor_197;
      v150 = _Block_copy(&aBlock);

      v151 = swift_allocObject();
      *(v151 + 16) = v282;
      v313 = sub_213D1F60C;
      v314 = v151;
      aBlock = MEMORY[0x277D85DD0];
      v310 = 1107296256;
      v311 = sub_213D183BC;
      v312 = &block_descriptor_204;
      v152 = _Block_copy(&aBlock);

      [v148 animateWithDuration:v150 animations:v152 completion:0.25];
      _Block_release(v152);
      _Block_release(v150);
    }

    v153 = v49 + 64;
    v154 = 1 << v49[32];
    v155 = -1;
    if (v154 < 64)
    {
      v155 = ~(-1 << v154);
    }

    v156 = v155 & *(v49 + 8);
    v157 = (v154 + 63) >> 6;
    v300 = (v299 + 56);

    v127 = 0;
    v158 = v295;
    v159 = v294;
    v293 = v49 + 64;
    v296 = v49;
    while (v156)
    {
      v162 = v127;
LABEL_68:
      v165 = __clz(__rbit64(v156));
      v156 &= v156 - 1;
      v166 = v165 | (v162 << 6);
      v167 = *(*(v49 + 6) + 8 * v166);
      v168 = v291;
      sub_213D1E9F8(*(v49 + 7) + *(v299 + 72) * v166, v291, type metadata accessor for UserAnnotationViewModel);
      v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB228, &qword_213D97288);
      v170 = *(v169 + 48);
      *v158 = v167;
      sub_213D1E884(v168, v158 + v170, type metadata accessor for UserAnnotationViewModel);
      (*(*(v169 - 8) + 56))(v158, 0, 1, v169);
      v171 = v167;
LABEL_69:
      sub_213CED608(v158, v159, &qword_27C8EB220, &qword_213D97280);
      v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB228, &qword_213D97288);
      if ((*(*(v172 - 8) + 48))(v159, 1, v172) == 1)
      {
        v197 = v296;

        v198 = 0;
        v199 = 1 << v197[32];
        v200 = -1;
        if (v199 < 64)
        {
          v200 = ~(-1 << v199);
        }

        v201 = v200 & *(v197 + 8);
        v202 = (v199 + 63) >> 6;
        v127 = v290;
        while (v201)
        {
LABEL_82:
          v201 &= v201 - 1;
        }

        while (1)
        {
          v203 = v198 + 1;
          if (__OFADD__(v198, 1))
          {
            goto LABEL_125;
          }

          if (v203 >= v202)
          {

            if (MEMORY[0x277D84F90] >> 62)
            {
              goto LABEL_132;
            }

            v204 = MEMORY[0x277D84F90];
            sub_213D91F0C();
            goto LABEL_90;
          }

          v201 = *&v293[8 * v203];
          ++v198;
          if (v201)
          {
            v198 = v203;
            goto LABEL_82;
          }
        }
      }

      v173 = *v159;
      v174 = v159 + *(v172 + 48);
      v175 = v301;
      sub_213D1E884(v174, v301, type metadata accessor for UserAnnotationViewModel);
      v176 = *v175;
      *&v308 = v303;
      v177 = v303;
      v178 = swift_modifyAtReferenceWritableKeyPath();
      v180 = v179;
      v181 = sub_213CE22A8(v176);
      v153 = v293;
      if (v182)
      {
        v183 = v181;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v185 = *(v180 + 24);
        v305 = v185;
        *(v180 + 24) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_213D1CE38(&qword_27C8EB230, &qword_213D97290);
          v185 = v305;
        }

        sub_213D1B868(v183, v185);
        *(v180 + 24) = v185;
      }

      v178(&aBlock, 0);

      *&v308 = v177;
      v186 = v177;
      v187 = swift_modifyAtReferenceWritableKeyPath();
      v189 = v188;
      v190 = sub_213CE23F4(v173);
      if (v191)
      {
        v192 = v190;
        v193 = swift_isUniquelyReferenced_nonNull_native();
        v195 = *(v189 + 16);
        v305 = v195;
        *(v189 + 16) = 0x8000000000000000;
        if (!v193)
        {
          sub_213D1C790(v194);
          v195 = v305;
        }

        v161 = v292;
        sub_213D1E884(*(v195 + 56) + *(v299 + 72) * v192, v292, type metadata accessor for UserAnnotationViewModel);
        sub_213D1B698(v192, v195, type metadata accessor for UserAnnotationViewModel);
        *(v189 + 16) = v195;

        v160 = 0;
      }

      else
      {
        v160 = 1;
        v161 = v292;
      }

      (*v300)(v161, v160, 1, v302);
      sub_213CD8330(v161, &qword_27C8EB680, &unk_213D97FF0);
      v187(&aBlock, 0);

      sub_213D1F330(v301, type metadata accessor for UserAnnotationViewModel);
      v49 = v296;
      v158 = v295;
      v159 = v294;
    }

    if (v157 <= (v127 + 1))
    {
      v163 = v127 + 1;
    }

    else
    {
      v163 = v157;
    }

    v164 = v163 - 1;
    while (1)
    {
      v162 = (v127 + 1);
      if (__OFADD__(v127, 1))
      {
        break;
      }

      if (v162 >= v157)
      {
        v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB228, &qword_213D97288);
        (*(*(v196 - 8) + 56))(v158, 1, 1, v196);
        v156 = 0;
        v127 = v164;
        goto LABEL_69;
      }

      v156 = *&v153[8 * v162];
      ++v127;
      if (v156)
      {
        v127 = v162;
        goto LABEL_68;
      }
    }

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
    sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);
    v204 = sub_213D91EAC();
LABEL_90:
    v205 = v289;
    sub_213D17F50(v204);

    v296 = *(v127 + 2);
    if (!v296)
    {
      return v127;
    }

    v206 = *(v205 + 48);
    v295 = &v127[(*(v298 + 80) + 32) & ~*(v298 + 80)];
    v294 = (v299 + 48);

    v207 = 0;
    while (1)
    {
      if (v207 >= *(v127 + 2))
      {
        goto LABEL_126;
      }

      v210 = *(v298 + 72);
      v301 = v207;
      v211 = v297;
      sub_213CE2C28(&v295[v210 * v207], v297, &qword_27C8EB208, &unk_213D97260);
      v212 = *v211;
      v213 = v206;
      v214 = *(v211 + v206);
      *&v308 = v303;
      v127 = v303;

      v215 = v212;
      v216 = swift_modifyAtReferenceWritableKeyPath();
      v218 = v217;
      v219 = swift_isUniquelyReferenced_nonNull_native();
      v305 = *(v218 + 24);
      v220 = v305;
      *(v218 + 24) = 0x8000000000000000;
      v222 = sub_213CE22A8(v214);
      v223 = v220[2];
      v224 = (v221 & 1) == 0;
      v225 = v223 + v224;
      if (__OFADD__(v223, v224))
      {
        goto LABEL_127;
      }

      v226 = v221;
      if (v220[3] >= v225)
      {
        if ((v219 & 1) == 0)
        {
          sub_213D1CE38(&qword_27C8EB230, &qword_213D97290);
        }
      }

      else
      {
        sub_213D1AEB0(v225, v219, &qword_27C8EB230, &qword_213D97290);
        v227 = sub_213CE22A8(v214);
        if ((v226 & 1) != (v228 & 1))
        {
          goto LABEL_134;
        }

        v222 = v227;
      }

      v229 = v305;
      if (v226)
      {
        v230 = v305[7];
        v231 = *(v230 + 8 * v222);
        *(v230 + 8 * v222) = v215;
      }

      else
      {
        v305[(v222 >> 6) + 8] |= 1 << v222;
        *(v229[6] + 8 * v222) = v214;
        *(v229[7] + 8 * v222) = v215;
        v232 = v229[2];
        v139 = __OFADD__(v232, 1);
        v233 = v232 + 1;
        if (v139)
        {
          goto LABEL_128;
        }

        v229[2] = v233;
      }

      *(v218 + 24) = v229;
      v216(&aBlock, 0);

      v206 = v213;
      v234 = v288;
      sub_213D1E884(v297 + v213, v288, type metadata accessor for UserAnnotationViewModel);
      v235 = *v300;
      v236 = v302;
      (*v300)(v234, 0, 1, v302);
      *&v308 = v127;
      v237 = v127;
      v238 = v215;
      v239 = swift_modifyAtReferenceWritableKeyPath();
      v127 = v240;
      if ((*v294)(v234, 1, v236) == 1)
      {
        sub_213CD8330(v234, &qword_27C8EB680, &unk_213D97FF0);
        v241 = sub_213CE23F4(v238);
        if (v242)
        {
          v243 = v241;
          v244 = swift_isUniquelyReferenced_nonNull_native();
          v246 = *(v127 + 2);
          v305 = v246;
          *(v127 + 2) = 0x8000000000000000;
          if (!v244)
          {
            sub_213D1C790(v245);
            v246 = v305;
          }

          v209 = v286;
          sub_213D1E884(*(v246 + 56) + *(v299 + 72) * v243, v286, type metadata accessor for UserAnnotationViewModel);
          sub_213D1B698(v243, v246, type metadata accessor for UserAnnotationViewModel);

          *(v127 + 2) = v246;

          v208 = 0;
        }

        else
        {

          v208 = 1;
          v209 = v286;
        }

        v235(v209, v208, 1, v302);
        sub_213CD8330(v209, &qword_27C8EB680, &unk_213D97FF0);
        goto LABEL_94;
      }

      sub_213D1E884(v234, v287, type metadata accessor for UserAnnotationViewModel);
      v247 = swift_isUniquelyReferenced_nonNull_native();
      v305 = *(v127 + 2);
      v248 = v305;
      *(v127 + 2) = 0x8000000000000000;
      v249 = sub_213CE23F4(v238);
      v252 = v248[2];
      v253 = (v250 & 1) == 0;
      v139 = __OFADD__(v252, v253);
      v254 = v252 + v253;
      if (v139)
      {
        goto LABEL_129;
      }

      v255 = v250;
      if (v248[3] < v254)
      {
        break;
      }

      if (v247)
      {
        goto LABEL_116;
      }

      v258 = v249;
      sub_213D1C790(v251);
      v249 = v258;
      v257 = v305;
      if ((v255 & 1) == 0)
      {
LABEL_119:
        v257[(v249 >> 6) + 8] |= 1 << v249;
        *(v257[6] + 8 * v249) = v238;
        sub_213D1E884(v287, v257[7] + *(v299 + 72) * v249, type metadata accessor for UserAnnotationViewModel);
        v259 = v257[2];
        v139 = __OFADD__(v259, 1);
        v260 = v259 + 1;
        if (v139)
        {
          goto LABEL_130;
        }

        v257[2] = v260;
        goto LABEL_121;
      }

LABEL_117:
      sub_213D1EA60(v287, v257[7] + *(v299 + 72) * v249, type metadata accessor for UserAnnotationViewModel);

LABEL_121:
      *(v127 + 2) = v257;

LABEL_94:
      v207 = v301 + 1;
      v239(&aBlock, 0);

      v127 = v290;
      if (v296 == v207)
      {

        return v127;
      }
    }

    sub_213D1A4D8(v254, v247, v251);
    v249 = sub_213CE23F4(v238);
    if ((v255 & 1) != (v256 & 1))
    {
      goto LABEL_135;
    }

LABEL_116:
    v257 = v305;
    if ((v255 & 1) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_117;
  }

  v267 = v17;
  v51 = *(v26 + 80);
  v52 = a2 + ((v51 + 32) & ~v51);
  v285 = (v26 + 56);
  v293 = *(v26 + 72);
  v266 = v51;
  v265 = (v51 + 64) & ~v51;
  v264 = (v26 + 48);
  v53 = MEMORY[0x277D84F90];
  v281 = MEMORY[0x277D84F90];
  v282 = MEMORY[0x277D84F90];
  v280 = v34;
  while (1)
  {
    sub_213D1E9F8(v52, v34, type metadata accessor for UserAnnotationViewModel);
    v58 = *v34;
    *&v308 = v303;
    v59 = v303;
    swift_getAtKeyPath();

    v60 = v312;
    if (!v312[2] || (v61 = sub_213CE22A8(v58), (v62 & 1) == 0))
    {

LABEL_22:
      v94 = [objc_allocWithZone(type metadata accessor for MapBridgingUserAnnotation()) init];
      v95 = *(v289 + 48);
      v96 = v300;
      *v300 = v94;
      sub_213D1E9F8(v34, v96 + v95, type metadata accessor for UserAnnotationViewModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v53 = sub_213D70808(0, *(v53 + 2) + 1, 1, v53);
      }

      v98 = *(v53 + 2);
      v97 = *(v53 + 3);
      if (v98 >= v97 >> 1)
      {
        v53 = sub_213D70808((v97 > 1), v98 + 1, 1, v53);
      }

      sub_213D1F330(v34, type metadata accessor for UserAnnotationViewModel);
      *(v53 + 2) = v98 + 1;
      sub_213CED608(v300, &v53[((*(v298 + 80) + 32) & ~*(v298 + 80)) + *(v298 + 72) * v98], &qword_27C8EB208, &unk_213D97260);
      goto LABEL_5;
    }

    v63 = *(v60[7] + 8 * v61);

    *&v308 = v59;
    v64 = v59;
    swift_getAtKeyPath();

    v65 = v311;
    if (!v311[2] || (v66 = sub_213CE23F4(v63), (v67 & 1) == 0))
    {

      v93 = v283;
      (*v285)(v283, 1, 1, v302);
      sub_213CD8330(v93, &qword_27C8EB680, &unk_213D97FF0);
      goto LABEL_22;
    }

    v277 = v64;
    v68 = v65[7] + v66 * v293;
    v284 = v63;
    v69 = v283;
    sub_213D1E9F8(v68, v283, type metadata accessor for UserAnnotationViewModel);

    v276 = *v285;
    v276(v69, 0, 1, v302);
    sub_213CD8330(v69, &qword_27C8EB680, &unk_213D97FF0);
    v312 = sub_213CE2B34(0, &qword_27C8EB168, 0x277CD4FA0);
    v313 = &off_28263B0B0;
    v70 = v272;
    aBlock = v272;
    sub_213D1E22C(&aBlock, &v308);
    v71 = v34;
    v72 = v284;
    v73 = v269;
    sub_213D1E9F8(v71, v269, type metadata accessor for UserAnnotationViewModel);
    sub_213D1E22C(&v308, &v305);
    v74 = v279;
    sub_213D1E9F8(v73, v279, type metadata accessor for UserAnnotationViewModel);
    v75 = v265;
    v76 = swift_allocObject();
    sub_213D1E2DC(&v308, v76 + 16);
    *(v76 + 56) = v72;
    sub_213D1E884(v73, v76 + v75, type metadata accessor for UserAnnotationViewModel);
    v77 = v278;
    if (v278)
    {
      v78 = v72;
      v79 = v70;

      sub_213D1F330(v74, type metadata accessor for UserAnnotationViewModel);
      __swift_destroy_boxed_opaque_existential_1(&v305);
      v80 = swift_allocObject();
      v80[2] = sub_213D1E8EC;
      v80[3] = v76;
      v80[4] = v77;
      v81 = swift_allocObject();
      *(v81 + 16) = sub_213D1E8EC;
      *(v81 + 24) = v76;

      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v82 = swift_allocObject();
      *(v82 + 16) = sub_213D1E454;
      *(v82 + 24) = v80;
      swift_retain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v281 = sub_213D6FE48(0, v281[2] + 1, 1, v281);
      }

      v84 = v281[2];
      v83 = v281[3];
      v85 = v284;
      if (v84 >= v83 >> 1)
      {
        v281 = sub_213D6FE48((v83 > 1), v84 + 1, 1, v281);
      }

      v86 = v281;
      v281[2] = v84 + 1;
      v87 = &v86[2 * v84];
      v87[4] = sub_213D1F608;
      v87[5] = v82;
      v88 = swift_allocObject();
      *(v88 + 16) = sub_213D1E460;
      *(v88 + 24) = v81;
      swift_retain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v282 = sub_213D6FE48(0, v282[2] + 1, 1, v282);
      }

      v90 = v282[2];
      v89 = v282[3];
      if (v90 >= v89 >> 1)
      {
        v282 = sub_213D6FE48((v89 > 1), v90 + 1, 1, v282);
      }

      v91 = v282;
      v282[2] = v90 + 1;
      v92 = &v91[2 * v90];
      v92[4] = sub_213D1F608;
      v92[5] = v88;
      v273 = sub_213D1E454;
      v275 = sub_213D1E460;
    }

    else
    {
      v296 = v49;
      v290 = v53;
      v99 = v306;
      v100 = v307;
      __swift_project_boxed_opaque_existential_1(&v305, v306);
      v275 = *(v100 + 24);
      v101 = v72;
      v102 = v70;
      v103 = (v275)(v101, v99, v100);
      if (v103)
      {
        v104 = v103;
        type metadata accessor for SwiftUIAnnotationView();
        v105 = swift_dynamicCastClass();
        v49 = v296;
        v106 = v279;
        if (v105)
        {
          v107 = *(v279 + 24);
          v108 = *(v279 + 32);
          v109 = &v105[OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_contentAnchorPoint];
          *v109 = v107;
          v109[1] = v108;
          v110 = v105;
          [v105 frame];
          v113 = v110;
          v106 = v279;
          [v113 setCenterOffset_];
        }

        v53 = v290;
      }

      else
      {

        v53 = v290;
        v49 = v296;
        v106 = v279;
      }

      v85 = v284;
      sub_213D1F330(v106, type metadata accessor for UserAnnotationViewModel);
      __swift_destroy_boxed_opaque_existential_1(&v305);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v275 = 0;
      v81 = 0;
      v273 = 0;
      v80 = 0;
    }

    v114 = sub_213CE23F4(v85);
    v274 = v80;
    v290 = v81;
    if (v115)
    {
      v116 = v114;
      v117 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v49;
      v119 = v271;
      if (!v117)
      {
        sub_213D1C790(v118);
        v119 = v271;
        v49 = aBlock;
      }

      v120 = v267;
      sub_213D1E884(*(v49 + 7) + v116 * v293, v267, type metadata accessor for UserAnnotationViewModel);
      sub_213D1B698(v116, v49, type metadata accessor for UserAnnotationViewModel);
      v121 = 0;
    }

    else
    {
      v121 = 1;
      v119 = v271;
      v120 = v267;
    }

    v122 = v302;
    v123 = v276;
    v276(v120, v121, 1, v302);
    sub_213CD8330(v120, &qword_27C8EB680, &unk_213D97FF0);
    sub_213D1E9F8(v280, v119, type metadata accessor for UserAnnotationViewModel);
    v123(v119, 0, 1, v122);
    *&v308 = v277;
    v124 = v277;
    v296 = v284;
    v125 = swift_modifyAtReferenceWritableKeyPath();
    v127 = v126;
    v128 = (*v264)(v119, 1, v122);
    v284 = v125;
    if (v128 != 1)
    {
      break;
    }

    sub_213CD8330(v119, &qword_27C8EB680, &unk_213D97FF0);
    v54 = v263;
    v55 = v296;
    sub_213D18B10(v296, v263);

    sub_213CD8330(v54, &qword_27C8EB680, &unk_213D97FF0);
    v34 = v280;
    v56 = v290;
LABEL_4:
    v57 = v273;
    (v284)(&aBlock, 0);

    sub_213CCE520(v275, v56);
    sub_213CCE520(v57, v274);

    sub_213D1F330(v34, type metadata accessor for UserAnnotationViewModel);
LABEL_5:
    v52 += v293;
    if (!--v50)
    {
      goto LABEL_51;
    }
  }

  sub_213D1E884(v119, v268, type metadata accessor for UserAnnotationViewModel);
  v129 = swift_isUniquelyReferenced_nonNull_native();
  v130 = v296;
  v131 = v129;
  v305 = *(v127 + 2);
  v132 = v305;
  *(v127 + 2) = 0x8000000000000000;
  v133 = v130;
  v134 = sub_213CE23F4(v130);
  v137 = v132[2];
  v138 = (v135 & 1) == 0;
  v139 = __OFADD__(v137, v138);
  v140 = v137 + v138;
  if (v139)
  {
    goto LABEL_131;
  }

  v141 = v135;
  v142 = v132[3];
  v277 = v127;
  if (v142 >= v140)
  {
    v34 = v280;
    if ((v131 & 1) == 0)
    {
      v147 = v134;
      sub_213D1C790(v136);
      v134 = v147;
    }

    v56 = v290;
    v55 = v133;
    v144 = v305;
    if ((v141 & 1) == 0)
    {
      goto LABEL_43;
    }

LABEL_48:
    sub_213D1EA60(v268, v144[7] + v134 * v293, type metadata accessor for UserAnnotationViewModel);

    goto LABEL_49;
  }

  sub_213D1A4D8(v140, v131, v136);
  v55 = v133;
  v134 = sub_213CE23F4(v133);
  v34 = v280;
  if ((v141 & 1) != (v143 & 1))
  {
    goto LABEL_135;
  }

  v56 = v290;
  v144 = v305;
  if (v141)
  {
    goto LABEL_48;
  }

LABEL_43:
  v144[(v134 >> 6) + 8] |= 1 << v134;
  *(v144[6] + 8 * v134) = v55;
  sub_213D1E884(v268, v144[7] + v134 * v293, type metadata accessor for UserAnnotationViewModel);
  v145 = v144[2];
  v139 = __OFADD__(v145, 1);
  v146 = v145 + 1;
  if (!v139)
  {
    v144[2] = v146;
LABEL_49:
    *(v277 + 2) = v144;

    goto LABEL_4;
  }

  __break(1u);
LABEL_134:
  sub_213D91F8C();
  __break(1u);
LABEL_135:
  type metadata accessor for MapBridgingUserAnnotation();
  result = sub_213D91F8C();
  __break(1u);
  return result;
}

void *sub_213D05E64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v292 = a4;
  v287 = a1;
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBAA0, &unk_213D972B0);
  v310 = *(v303 - 8);
  MEMORY[0x28223BE20](v303);
  v9 = &v277 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v309 = (&v277 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB260, qword_213D985C0);
  MEMORY[0x28223BE20](v12 - 8);
  v277 = &v277 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v285 = &v277 - v15;
  MEMORY[0x28223BE20](v16);
  v286 = &v277 - v17;
  MEMORY[0x28223BE20](v18);
  v297 = &v277 - v19;
  MEMORY[0x28223BE20](v20);
  v299 = &v277 - v21;
  MEMORY[0x28223BE20](v22);
  v301 = &v277 - v23;
  MEMORY[0x28223BE20](v24);
  v306 = &v277 - v25;
  v317 = type metadata accessor for MarkerAnnotationViewModel(0);
  v26 = *(v317 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v317);
  v282 = &v277 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v284 = &v277 - v29;
  MEMORY[0x28223BE20](v30);
  v283 = &v277 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v277 - v33;
  MEMORY[0x28223BE20](v35);
  v300 = &v277 - v36;
  MEMORY[0x28223BE20](v37);
  v315 = (&v277 - v38);
  MEMORY[0x28223BE20](v39);
  v305 = &v277 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB268, &qword_213D972C0);
  MEMORY[0x28223BE20](v41 - 8);
  v43 = (&v277 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v44);
  v307 = (&v277 - v45);
  *&v323 = v5;
  v46 = v5;
  v319 = a5;
  v47 = swift_readAtKeyPath();
  v308 = *(v48 + 16);

  v47(&aBlock, 0);
  v318 = v46;

  v49 = *(a2 + 16);
  v316 = v26;
  v312 = v43;
  if (!v49)
  {
    v53 = MEMORY[0x277D84F90];
    v294 = MEMORY[0x277D84F90];
    v295 = MEMORY[0x277D84F90];
LABEL_61:
    v314 = v53;
    if (v292)
    {
      v157 = objc_opt_self();
      v158 = swift_allocObject();
      *(v158 + 16) = v294;
      v328 = sub_213D1F590;
      v329 = v158;
      aBlock = MEMORY[0x277D85DD0];
      v325 = 1107296256;
      v326 = sub_213CFF278;
      v327 = &block_descriptor_228;
      v159 = _Block_copy(&aBlock);

      v160 = swift_allocObject();
      *(v160 + 16) = v295;
      v328 = sub_213D1F60C;
      v329 = v160;
      aBlock = MEMORY[0x277D85DD0];
      v325 = 1107296256;
      v326 = sub_213D183BC;
      v327 = &block_descriptor_235;
      v161 = _Block_copy(&aBlock);

      [v157 animateWithDuration:v159 animations:v161 completion:0.25];
      _Block_release(v161);
      _Block_release(v159);
    }

    v162 = v308 + 64;
    v163 = 1 << *(v308 + 32);
    v164 = -1;
    if (v163 < 64)
    {
      v164 = ~(-1 << v163);
    }

    v165 = v164 & *(v308 + 64);
    v166 = (v163 + 63) >> 6;
    v313 = (v316 + 56);

    v167 = 0;
    while (1)
    {
      if (v165)
      {
        v170 = v167;
        v171 = v316;
LABEL_78:
        v174 = __clz(__rbit64(v165));
        v165 &= v165 - 1;
        v175 = v174 | (v170 << 6);
        v176 = *(*(v308 + 48) + 8 * v175);
        v177 = v305;
        sub_213D1E9F8(*(v308 + 56) + *(v171 + 72) * v175, v305, type metadata accessor for MarkerAnnotationViewModel);
        v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB270, &qword_213D972C8);
        v179 = *(v178 + 48);
        *v43 = v176;
        sub_213D1E884(v177, v43 + v179, type metadata accessor for MarkerAnnotationViewModel);
        (*(*(v178 - 8) + 56))(v43, 0, 1, v178);
        v180 = v176;
      }

      else
      {
        v172 = v166 <= v167 + 1 ? v167 + 1 : v166;
        v173 = v172 - 1;
        v171 = v316;
        while (1)
        {
          v170 = v167 + 1;
          if (__OFADD__(v167, 1))
          {
            __break(1u);
LABEL_137:
            __break(1u);
            goto LABEL_138;
          }

          if (v170 >= v166)
          {
            break;
          }

          v165 = *(v162 + 8 * v170);
          ++v167;
          if (v165)
          {
            v167 = v170;
            goto LABEL_78;
          }
        }

        v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB270, &qword_213D972C8);
        (*(*(v206 - 8) + 56))(v43, 1, 1, v206);
        v165 = 0;
        v167 = v173;
      }

      v181 = v307;
      sub_213CED608(v43, v307, &qword_27C8EB268, &qword_213D972C0);
      v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB270, &qword_213D972C8);
      if ((*(*(v182 - 8) + 48))(v181, 1, v182) == 1)
      {
        break;
      }

      v183 = *v181;
      v184 = v181 + *(v182 + 48);
      v185 = v315;
      sub_213D1E884(v184, v315, type metadata accessor for MarkerAnnotationViewModel);
      v186 = *v185;
      *&v323 = v318;
      v187 = v318;
      v188 = swift_modifyAtReferenceWritableKeyPath();
      v190 = v189;
      v191 = sub_213CE22A8(v186);
      if (v192)
      {
        v193 = v191;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v195 = *(v190 + 24);
        v320 = v195;
        *(v190 + 24) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_213D1CE38(&qword_27C8EB278, &qword_213D972D0);
          v195 = v320;
        }

        sub_213D1B868(v193, v195);
        *(v190 + 24) = v195;
      }

      v188(&aBlock, 0);

      *&v323 = v187;
      v196 = v187;
      v197 = swift_modifyAtReferenceWritableKeyPath();
      v199 = v198;
      v200 = sub_213CE2448(v183);
      if (v201)
      {
        v202 = v200;
        v203 = swift_isUniquelyReferenced_nonNull_native();
        v205 = *(v199 + 16);
        v320 = v205;
        *(v199 + 16) = 0x8000000000000000;
        v169 = v306;
        if (!v203)
        {
          sub_213D1C9C8(v204);
          v205 = v320;
        }

        sub_213D1E884(*(v205 + 56) + *(v316 + 72) * v202, v169, type metadata accessor for MarkerAnnotationViewModel);
        sub_213D1B698(v202, v205, type metadata accessor for MarkerAnnotationViewModel);
        *(v199 + 16) = v205;

        v168 = 0;
      }

      else
      {
        v168 = 1;
        v169 = v306;
      }

      (*v313)(v169, v168, 1, v317);
      sub_213CD8330(v169, &qword_27C8EB260, qword_213D985C0);
      v197(&aBlock, 0);

      sub_213D1F330(v315, type metadata accessor for MarkerAnnotationViewModel);
      v43 = v312;
    }

    v207 = v308;

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
        v215 = *(*(v308 + 48) + ((v213 << 9) | (8 * v214)));
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
        goto LABEL_137;
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
      goto LABEL_144;
    }

    sub_213D91F6C();
    sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);
    v217 = v216;
    while (1)
    {
      v218 = v314;

      sub_213D17F50(v217);

      v312 = v218[2];
      if (!v312)
      {
        return v218;
      }

      v219 = *(v303 + 48);
      v311 = v218 + ((*(v310 + 80) + 32) & ~*(v310 + 80));
      v308 = v316 + 48;

      v220 = 0;
      while (v220 < v218[2])
      {
        v223 = *(v310 + 72);
        v315 = v220;
        v224 = v309;
        sub_213CE2C28(v311 + v223 * v220, v309, &unk_27C8EBAA0, &unk_213D972B0);
        v225 = *v224;
        v226 = v219;
        v227 = *(v224 + v219);
        *&v323 = v318;
        v228 = v318;

        v229 = v225;
        v230 = swift_modifyAtReferenceWritableKeyPath();
        v232 = v231;
        v233 = swift_isUniquelyReferenced_nonNull_native();
        v320 = *(v232 + 24);
        v234 = v320;
        *(v232 + 24) = 0x8000000000000000;
        v236 = sub_213CE22A8(v227);
        v237 = v234[2];
        v238 = (v235 & 1) == 0;
        v239 = v237 + v238;
        if (__OFADD__(v237, v238))
        {
          goto LABEL_139;
        }

        v240 = v235;
        if (v234[3] >= v239)
        {
          if ((v233 & 1) == 0)
          {
            sub_213D1CE38(&qword_27C8EB278, &qword_213D972D0);
          }
        }

        else
        {
          sub_213D1AEB0(v239, v233, &qword_27C8EB278, &qword_213D972D0);
          v241 = sub_213CE22A8(v227);
          if ((v240 & 1) != (v242 & 1))
          {
            goto LABEL_146;
          }

          v236 = v241;
        }

        v243 = v320;
        if (v240)
        {
          v244 = v320[7];
          v245 = *(v244 + 8 * v236);
          *(v244 + 8 * v236) = v229;
        }

        else
        {
          v320[(v236 >> 6) + 8] |= 1 << v236;
          *(v243[6] + 8 * v236) = v227;
          *(v243[7] + 8 * v236) = v229;
          v246 = v243[2];
          v149 = __OFADD__(v246, 1);
          v247 = v246 + 1;
          if (v149)
          {
            goto LABEL_140;
          }

          v243[2] = v247;
        }

        *(v232 + 24) = v243;
        v230(&aBlock, 0);

        v219 = v226;
        v248 = v301;
        sub_213D1E884(v309 + v226, v301, type metadata accessor for MarkerAnnotationViewModel);
        v249 = *v313;
        v250 = v317;
        (*v313)(v248, 0, 1, v317);
        *&v323 = v228;
        v251 = v228;
        v252 = v229;
        v253 = swift_modifyAtReferenceWritableKeyPath();
        v255 = v254;
        if ((*v308)(v248, 1, v250) == 1)
        {
          sub_213CD8330(v248, &qword_27C8EB260, qword_213D985C0);
          v256 = sub_213CE2448(v252);
          if (v257)
          {
            v258 = v256;
            v259 = swift_isUniquelyReferenced_nonNull_native();
            v261 = *(v255 + 16);
            v320 = v261;
            *(v255 + 16) = 0x8000000000000000;
            if (!v259)
            {
              sub_213D1C9C8(v260);
              v261 = v320;
            }

            v222 = v299;
            sub_213D1E884(*(v261 + 56) + *(v316 + 72) * v258, v299, type metadata accessor for MarkerAnnotationViewModel);
            sub_213D1B698(v258, v261, type metadata accessor for MarkerAnnotationViewModel);

            *(v255 + 16) = v261;

            v221 = 0;
          }

          else
          {

            v221 = 1;
            v222 = v299;
          }

          v249(v222, v221, 1, v317);
          sub_213CD8330(v222, &qword_27C8EB260, qword_213D985C0);
        }

        else
        {
          sub_213D1E884(v248, v300, type metadata accessor for MarkerAnnotationViewModel);
          v262 = swift_isUniquelyReferenced_nonNull_native();
          v320 = *(v255 + 16);
          v263 = v320;
          *(v255 + 16) = 0x8000000000000000;
          v264 = sub_213CE2448(v252);
          v267 = v263[2];
          v268 = (v265 & 1) == 0;
          v149 = __OFADD__(v267, v268);
          v269 = v267 + v268;
          if (v149)
          {
            goto LABEL_141;
          }

          v270 = v265;
          if (v263[3] >= v269)
          {
            if ((v262 & 1) == 0)
            {
              v275 = v264;
              sub_213D1C9C8(v266);
              v264 = v275;
            }
          }

          else
          {
            sub_213D1A820(v269, v262, v266);
            v264 = sub_213CE2448(v252);
            if ((v270 & 1) != (v271 & 1))
            {
              goto LABEL_147;
            }
          }

          v272 = v320;
          if (v270)
          {
            sub_213D1EA60(v300, v320[7] + *(v316 + 72) * v264, type metadata accessor for MarkerAnnotationViewModel);
          }

          else
          {
            v320[(v264 >> 6) + 8] |= 1 << v264;
            *(v272[6] + 8 * v264) = v252;
            sub_213D1E884(v300, v272[7] + *(v316 + 72) * v264, type metadata accessor for MarkerAnnotationViewModel);
            v273 = v272[2];
            v149 = __OFADD__(v273, 1);
            v274 = v273 + 1;
            if (v149)
            {
              goto LABEL_142;
            }

            v272[2] = v274;
          }

          *(v255 + 16) = v272;
        }

        v220 = v315 + 1;
        v253(&aBlock, 0);

        v218 = v314;
        if (v312 == v220)
        {

          return v218;
        }
      }

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
      sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);

      v217 = sub_213D91EAC();
    }
  }

  v50 = v49;
  v51 = *(v26 + 80);
  v52 = a2 + ((v51 + 32) & ~v51);
  v298 = (v26 + 56);
  v281 = v51;
  v280 = (v51 + 24) & ~v51;
  v279 = (v27 + v280 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = MEMORY[0x277D84F90];
  v278 = (v26 + 48);
  v304 = *(v26 + 72);
  v294 = MEMORY[0x277D84F90];
  v295 = MEMORY[0x277D84F90];
  v302 = v9;
  v54 = v50;
  while (1)
  {
    v313 = v52;
    sub_213D1E9F8(v52, v34, type metadata accessor for MarkerAnnotationViewModel);
    v58 = *v34;
    *&v323 = v318;
    v59 = v318;
    swift_getAtKeyPath();

    v60 = v327;
    v61 = v327[2];
    v314 = v53;
    v311 = v54;
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
      v330.receiver = v91;
      v330.super_class = v90;
      v99 = objc_msgSendSuper2(&v330, sel_init);
      v100 = *(v303 + 48);
      v101 = v302;
      *v302 = v99;
      sub_213D1E9F8(v34, v101 + v100, type metadata accessor for MarkerAnnotationViewModel);
      v53 = v314;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v53 = sub_213D7082C(0, v53[2] + 1, 1, v53);
      }

      v57 = v313;
      v103 = v53[2];
      v102 = v53[3];
      v43 = v312;
      v54 = v311;
      if (v103 >= v102 >> 1)
      {
        v53 = sub_213D7082C((v102 > 1), v103 + 1, 1, v53);
      }

      sub_213D1F330(v34, type metadata accessor for MarkerAnnotationViewModel);
      v53[2] = v103 + 1;
      sub_213CED608(v101, v53 + ((*(v310 + 80) + 32) & ~*(v310 + 80)) + *(v310 + 72) * v103, &unk_27C8EBAA0, &unk_213D972B0);
      goto LABEL_5;
    }

    v64 = *(v60[7] + 8 * v62);

    *&v323 = v59;
    v65 = v59;
    swift_getAtKeyPath();

    v66 = v326;
    if (!v326[2] || (v67 = sub_213CE2448(v64), (v68 & 1) == 0))
    {

      v81 = v297;
      (*v298)(v297, 1, 1, v317);
      sub_213CD8330(v81, &qword_27C8EB260, qword_213D985C0);
      goto LABEL_18;
    }

    v291 = v65;
    v69 = v297;
    sub_213D1E9F8(v66[7] + v67 * v304, v297, type metadata accessor for MarkerAnnotationViewModel);

    v290 = *v298;
    v290(v69, 0, 1, v317);
    sub_213CD8330(v69, &qword_27C8EB260, qword_213D985C0);
    v327 = sub_213CE2B34(0, &qword_27C8EB168, 0x277CD4FA0);
    v328 = &off_28263B0B0;
    v70 = v287;
    aBlock = v287;
    v71 = v283;
    sub_213D1E9F8(v34, v283, type metadata accessor for MarkerAnnotationViewModel);
    sub_213D1E22C(&aBlock, &v323);
    v72 = v284;
    sub_213D1E9F8(v71, v284, type metadata accessor for MarkerAnnotationViewModel);
    sub_213D1E22C(&v323, &v320);
    v73 = v279;
    v74 = swift_allocObject();
    *(v74 + 16) = v64;
    sub_213D1E884(v71, v74 + v280, type metadata accessor for MarkerAnnotationViewModel);
    sub_213D1E2DC(&v323, v74 + v73);
    v75 = v64;
    v76 = v70;
    v77 = v292;
    if (!v292)
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

      v119 = v321;
      v120 = v322;
      __swift_project_boxed_opaque_existential_1(&v320, v321);
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
      __swift_destroy_boxed_opaque_existential_1(&v320);
      sub_213D1F330(v72, type metadata accessor for MarkerAnnotationViewModel);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v289 = 0;
      v296 = 0;
      v288 = 0;
      v293 = 0;
      v108 = v286;
      goto LABEL_42;
    }

    __swift_destroy_boxed_opaque_existential_1(&v320);
    sub_213D1F330(v72, type metadata accessor for MarkerAnnotationViewModel);
    v104 = swift_allocObject();
    v104[2] = sub_213D1E9CC;
    v104[3] = v74;
    v104[4] = v77;
    v105 = swift_allocObject();
    *(v105 + 16) = sub_213D1E9CC;
    *(v105 + 24) = v74;
    v296 = v105;

    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    v106 = swift_allocObject();
    *(v106 + 16) = sub_213D1E454;
    *(v106 + 24) = v104;
    v293 = v104;
    swift_retain_n();
    v107 = v75;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v294 = sub_213D6FE48(0, v294[2] + 1, 1, v294);
    }

    v108 = v286;
    v110 = v294[2];
    v109 = v294[3];
    if (v110 >= v109 >> 1)
    {
      v294 = sub_213D6FE48((v109 > 1), v110 + 1, 1, v294);
    }

    v111 = v294;
    v294[2] = v110 + 1;
    v112 = &v111[2 * v110];
    v112[4] = sub_213D1F608;
    v112[5] = v106;
    v113 = swift_allocObject();
    *(v113 + 16) = sub_213D1E460;
    *(v113 + 24) = v296;
    swift_retain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v295 = sub_213D6FE48(0, v295[2] + 1, 1, v295);
    }

    v115 = v295[2];
    v114 = v295[3];
    if (v115 >= v114 >> 1)
    {
      v295 = sub_213D6FE48((v114 > 1), v115 + 1, 1, v295);
    }

    v116 = v295;
    v295[2] = v115 + 1;
    v117 = &v116[2 * v115];
    v117[4] = sub_213D1F608;
    v117[5] = v113;
    v288 = sub_213D1E454;
    v289 = sub_213D1E460;
    v75 = v107;
LABEL_42:
    v124 = v308;
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

      sub_213D1E884(*(v124 + 56) + v127 * v304, v108, type metadata accessor for MarkerAnnotationViewModel);
      v308 = v124;
      sub_213D1B698(v127, v124, type metadata accessor for MarkerAnnotationViewModel);
      v131 = 0;
    }

    else
    {
      v130 = v75;
      v131 = 1;
    }

    v132 = v317;
    v133 = v290;
    v290(v108, v131, 1, v317);
    sub_213CD8330(v108, &qword_27C8EB260, qword_213D985C0);
    v134 = v285;
    sub_213D1E9F8(v34, v285, type metadata accessor for MarkerAnnotationViewModel);
    v133(v134, 0, 1, v132);
    *&v323 = v291;
    v135 = v291;
    v136 = v130;
    v291 = swift_modifyAtReferenceWritableKeyPath();
    v138 = v137;
    if ((*v278)(v134, 1, v132) != 1)
    {
      break;
    }

    sub_213CD8330(v134, &qword_27C8EB260, qword_213D985C0);
    v55 = v277;
    sub_213D18C8C(v136, v277);

    sub_213CD8330(v55, &qword_27C8EB260, qword_213D985C0);
LABEL_4:
    v56 = v288;
    (v291)(&aBlock, 0);
    sub_213CCE520(v289, v296);
    sub_213CCE520(v56, v293);

    sub_213D1F330(v34, type metadata accessor for MarkerAnnotationViewModel);
    v57 = v313;
LABEL_5:
    v52 = v57 + v304;
    if (!--v54)
    {
      goto LABEL_61;
    }
  }

  sub_213D1E884(v134, v282, type metadata accessor for MarkerAnnotationViewModel);
  v139 = swift_isUniquelyReferenced_nonNull_native();
  v140 = v136;
  v141 = v139;
  v320 = *(v138 + 16);
  v142 = v320;
  *(v138 + 16) = 0x8000000000000000;
  v143 = v140;
  v144 = sub_213CE2448(v140);
  v147 = v142[2];
  v148 = (v145 & 1) == 0;
  v149 = __OFADD__(v147, v148);
  v150 = v147 + v148;
  if (v149)
  {
    goto LABEL_143;
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
      goto LABEL_147;
    }
  }

  v153 = v320;
  if (v151)
  {
    sub_213D1EA60(v282, v320[7] + v144 * v304, type metadata accessor for MarkerAnnotationViewModel);

LABEL_59:
    *(v138 + 16) = v153;

    goto LABEL_4;
  }

  v320[(v144 >> 6) + 8] |= 1 << v144;
  *(v153[6] + 8 * v144) = v136;
  sub_213D1E884(v282, v153[7] + v144 * v304, type metadata accessor for MarkerAnnotationViewModel);
  v154 = v153[2];
  v149 = __OFADD__(v154, 1);
  v155 = v154 + 1;
  if (!v149)
  {
    v153[2] = v155;
    goto LABEL_59;
  }

  __break(1u);
LABEL_146:
  sub_213D91F8C();
  __break(1u);
LABEL_147:
  type metadata accessor for MapBridgingMarker();
  result = sub_213D91F8C();
  __break(1u);
  return result;
}

void *sub_213D07EAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v298 = a4;
  v292 = a1;
  v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB288, &unk_213D972E0);
  v316 = *(v309 - 8);
  MEMORY[0x28223BE20](v309);
  i = (&v282 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v315 = (&v282 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB290, &qword_213D98000);
  MEMORY[0x28223BE20](v11 - 8);
  v283 = &v282 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v290 = &v282 - v14;
  MEMORY[0x28223BE20](v15);
  v291 = &v282 - v16;
  MEMORY[0x28223BE20](v17);
  v304 = &v282 - v18;
  MEMORY[0x28223BE20](v19);
  v306 = &v282 - v20;
  MEMORY[0x28223BE20](v21);
  v308 = &v282 - v22;
  MEMORY[0x28223BE20](v23);
  v312 = &v282 - v24;
  v321 = type metadata accessor for CustomAnnotationViewModel(0);
  v25 = *(v321 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v321);
  v288 = &v282 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v303 = &v282 - v28;
  MEMORY[0x28223BE20](v29);
  v289 = &v282 - v30;
  MEMORY[0x28223BE20](v31);
  v324 = (&v282 - v32);
  MEMORY[0x28223BE20](v33);
  v307 = &v282 - v34;
  MEMORY[0x28223BE20](v35);
  v320 = (&v282 - v36);
  MEMORY[0x28223BE20](v37);
  v311 = &v282 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB298, &qword_213D972F0);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = &v282 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v313 = (&v282 - v43);
  *&v328 = v5;
  v44 = v5;
  v323 = a5;
  v45 = swift_readAtKeyPath();
  v314 = *(v46 + 16);

  v45(&aBlock, 0);
  v322 = v44;

  v47 = *(a2 + 16);
  v318 = v25;
  v319 = v41;
  if (!v47)
  {
    v50 = MEMORY[0x277D84F90];
    v299 = MEMORY[0x277D84F90];
    v300 = MEMORY[0x277D84F90];
LABEL_60:
    v153 = v41;
    v310 = v50;
    if (v298)
    {
      v154 = objc_opt_self();
      v155 = swift_allocObject();
      *(v155 + 16) = v299;
      v333 = sub_213D1F590;
      v334 = v155;
      aBlock = MEMORY[0x277D85DD0];
      v330 = 1107296256;
      v331 = sub_213CFF278;
      v332 = &block_descriptor_259;
      v156 = _Block_copy(&aBlock);

      v157 = swift_allocObject();
      *(v157 + 16) = v300;
      v333 = sub_213D1F60C;
      v334 = v157;
      aBlock = MEMORY[0x277D85DD0];
      v330 = 1107296256;
      v331 = sub_213D183BC;
      v332 = &block_descriptor_266;
      v158 = _Block_copy(&aBlock);

      [v154 animateWithDuration:v156 animations:v158 completion:0.25];
      _Block_release(v158);
      _Block_release(v156);
    }

    v159 = (v314 + 64);
    v160 = 1 << *(v314 + 32);
    v161 = -1;
    if (v160 < 64)
    {
      v161 = ~(-1 << v160);
    }

    v162 = v161 & *(v314 + 64);
    v163 = (v160 + 63) >> 6;
    v164 = v318;
    v324 = (v318 + 56);

    v165 = 0;
    for (i = v159; ; v159 = i)
    {
      if (v162)
      {
        v170 = v165;
LABEL_77:
        v174 = __clz(__rbit64(v162));
        v162 &= v162 - 1;
        v175 = v174 | (v170 << 6);
        v176 = *(*(v314 + 48) + 8 * v175);
        v177 = v311;
        sub_213D1E9F8(*(v314 + 56) + *(v164 + 72) * v175, v311, type metadata accessor for CustomAnnotationViewModel);
        v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB2A0, &qword_213D972F8);
        v179 = *(v178 + 48);
        *v153 = v176;
        v180 = v177;
        v173 = v153;
        sub_213D1E884(v180, &v153[v179], type metadata accessor for CustomAnnotationViewModel);
        (*(*(v178 - 8) + 56))(v153, 0, 1, v178);
        v181 = v176;
      }

      else
      {
        v171 = v163 <= v165 + 1 ? v165 + 1 : v163;
        v172 = v171 - 1;
        v173 = v153;
        while (1)
        {
          v170 = v165 + 1;
          if (__OFADD__(v165, 1))
          {
            __break(1u);
LABEL_137:
            __break(1u);
            goto LABEL_138;
          }

          if (v170 >= v163)
          {
            break;
          }

          v162 = v159[v170];
          ++v165;
          if (v162)
          {
            v165 = v170;
            goto LABEL_77;
          }
        }

        v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB2A0, &qword_213D972F8);
        (*(*(v209 - 8) + 56))(v153, 1, 1, v209);
        v162 = 0;
        v165 = v172;
      }

      v182 = v313;
      sub_213CED608(v173, v313, &qword_27C8EB298, &qword_213D972F0);
      v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB2A0, &qword_213D972F8);
      if ((*(*(v183 - 8) + 48))(v182, 1, v183) == 1)
      {
        break;
      }

      v184 = *v182;
      v185 = v182 + *(v183 + 48);
      v186 = v320;
      sub_213D1E884(v185, v320, type metadata accessor for CustomAnnotationViewModel);
      v187 = *v186;
      *&v328 = v322;
      v188 = v322;
      v189 = swift_modifyAtReferenceWritableKeyPath();
      v191 = v190;
      v192 = sub_213CE22A8(v187);
      if (v193)
      {
        v194 = v192;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v196 = *(v191 + 24);
        v325 = v196;
        *(v191 + 24) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_213D1CE38(&qword_27C8EB2A8, &qword_213D97300);
          v196 = v325;
        }

        sub_213D1B868(v194, v196);
        *(v191 + 24) = v196;
      }

      v189(&aBlock, 0);

      *&v328 = v188;
      v197 = v188;
      v198 = swift_modifyAtReferenceWritableKeyPath();
      v200 = v199;
      v201 = sub_213CE249C(v184);
      v202 = v318;
      if (v203)
      {
        v204 = v201;
        v166 = v184;
        v205 = swift_isUniquelyReferenced_nonNull_native();
        v207 = *(v200 + 16);
        v325 = v207;
        *(v200 + 16) = 0x8000000000000000;
        if (!v205)
        {
          sub_213D1CC00(v206);
          v207 = v325;
        }

        v167 = v202;
        v208 = *(v207 + 56) + *(v202 + 72) * v204;
        v169 = v312;
        sub_213D1E884(v208, v312, type metadata accessor for CustomAnnotationViewModel);
        sub_213D1B698(v204, v207, type metadata accessor for CustomAnnotationViewModel);
        *(v200 + 16) = v207;

        v168 = 0;
      }

      else
      {
        v166 = v184;
        v167 = v318;
        v168 = 1;
        v169 = v312;
      }

      (*v324)(v169, v168, 1, v321);
      sub_213CD8330(v169, &qword_27C8EB290, &qword_213D98000);
      v198(&aBlock, 0);

      sub_213D1F330(v320, type metadata accessor for CustomAnnotationViewModel);
      v153 = v319;
      v164 = v167;
    }

    v210 = v314;

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
    while (v213)
    {
      v216 = v215;
      v217 = v314;
LABEL_97:
      v218 = __clz(__rbit64(v213));
      v213 &= v213 - 1;
      v219 = *(*(v217 + 48) + ((v216 << 9) | (8 * v218)));
      sub_213D91DEC();
      sub_213D91E2C();
      sub_213D91E3C();
      sub_213D91DFC();
    }

    v217 = v314;
    while (1)
    {
      v216 = v215 + 1;
      if (__OFADD__(v215, 1))
      {
        goto LABEL_137;
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
        goto LABEL_97;
      }
    }

    v220 = aBlock;
    if (aBlock < 0 || (aBlock & 0x4000000000000000) != 0)
    {
      goto LABEL_144;
    }

    sub_213D91F6C();
    sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);
    v221 = v220;
    while (1)
    {
      v222 = v310;

      sub_213D17F50(v221);

      v319 = v222[2];
      if (!v319)
      {
        return v222;
      }

      v223 = *(v309 + 48);
      i = (v222 + ((*(v316 + 80) + 32) & ~*(v316 + 80)));
      v314 = v318 + 48;

      v224 = 0;
      while (v224 < v222[2])
      {
        v227 = *(v316 + 72);
        v320 = v224;
        v228 = v315;
        sub_213CE2C28(i + v227 * v224, v315, &qword_27C8EB288, &unk_213D972E0);
        v229 = *v228;
        v230 = v223;
        v231 = *(v228 + v223);
        *&v328 = v322;
        v232 = v322;

        v233 = v229;
        v234 = swift_modifyAtReferenceWritableKeyPath();
        v236 = v235;
        v237 = swift_isUniquelyReferenced_nonNull_native();
        v325 = *(v236 + 24);
        v238 = v325;
        *(v236 + 24) = 0x8000000000000000;
        v240 = sub_213CE22A8(v231);
        v241 = v238[2];
        v242 = (v239 & 1) == 0;
        v243 = v241 + v242;
        if (__OFADD__(v241, v242))
        {
          goto LABEL_139;
        }

        v244 = v239;
        if (v238[3] >= v243)
        {
          if ((v237 & 1) == 0)
          {
            sub_213D1CE38(&qword_27C8EB2A8, &qword_213D97300);
          }
        }

        else
        {
          sub_213D1AEB0(v243, v237, &qword_27C8EB2A8, &qword_213D97300);
          v245 = sub_213CE22A8(v231);
          if ((v244 & 1) != (v246 & 1))
          {
            goto LABEL_146;
          }

          v240 = v245;
        }

        v247 = v318;
        v248 = v325;
        if (v244)
        {
          v249 = v325[7];
          v250 = *(v249 + 8 * v240);
          *(v249 + 8 * v240) = v233;
        }

        else
        {
          v325[(v240 >> 6) + 8] |= 1 << v240;
          *(v248[6] + 8 * v240) = v231;
          *(v248[7] + 8 * v240) = v233;
          v251 = v248[2];
          v145 = __OFADD__(v251, 1);
          v252 = v251 + 1;
          if (v145)
          {
            goto LABEL_140;
          }

          v248[2] = v252;
        }

        *(v236 + 24) = v248;
        v234(&aBlock, 0);

        v223 = v230;
        v253 = v308;
        sub_213D1E884(v315 + v230, v308, type metadata accessor for CustomAnnotationViewModel);
        v254 = *v324;
        v255 = v321;
        (*v324)(v253, 0, 1, v321);
        *&v328 = v232;
        v256 = v232;
        v257 = v233;
        v258 = swift_modifyAtReferenceWritableKeyPath();
        v260 = v259;
        if ((*v314)(v253, 1, v255) == 1)
        {
          sub_213CD8330(v253, &qword_27C8EB290, &qword_213D98000);
          v261 = sub_213CE249C(v257);
          if (v262)
          {
            v263 = v261;
            v264 = swift_isUniquelyReferenced_nonNull_native();
            v266 = *(v260 + 16);
            v325 = v266;
            *(v260 + 16) = 0x8000000000000000;
            if (!v264)
            {
              sub_213D1CC00(v265);
              v266 = v325;
            }

            v226 = v306;
            sub_213D1E884(*(v266 + 56) + *(v247 + 72) * v263, v306, type metadata accessor for CustomAnnotationViewModel);
            sub_213D1B698(v263, v266, type metadata accessor for CustomAnnotationViewModel);

            *(v260 + 16) = v266;

            v225 = 0;
          }

          else
          {

            v225 = 1;
            v226 = v306;
          }

          v254(v226, v225, 1, v321);
          sub_213CD8330(v226, &qword_27C8EB290, &qword_213D98000);
        }

        else
        {
          sub_213D1E884(v253, v307, type metadata accessor for CustomAnnotationViewModel);
          v267 = swift_isUniquelyReferenced_nonNull_native();
          v325 = *(v260 + 16);
          v268 = v325;
          *(v260 + 16) = 0x8000000000000000;
          v269 = sub_213CE249C(v257);
          v272 = v268[2];
          v273 = (v270 & 1) == 0;
          v145 = __OFADD__(v272, v273);
          v274 = v272 + v273;
          if (v145)
          {
            goto LABEL_141;
          }

          v275 = v270;
          if (v268[3] >= v274)
          {
            if ((v267 & 1) == 0)
            {
              v280 = v269;
              sub_213D1CC00(v271);
              v269 = v280;
            }
          }

          else
          {
            sub_213D1AB68(v274, v267, v271);
            v269 = sub_213CE249C(v257);
            if ((v275 & 1) != (v276 & 1))
            {
              goto LABEL_147;
            }
          }

          v277 = v325;
          if (v275)
          {
            sub_213D1EA60(v307, v325[7] + *(v247 + 72) * v269, type metadata accessor for CustomAnnotationViewModel);
          }

          else
          {
            v325[(v269 >> 6) + 8] |= 1 << v269;
            *(v277[6] + 8 * v269) = v257;
            sub_213D1E884(v307, v277[7] + *(v247 + 72) * v269, type metadata accessor for CustomAnnotationViewModel);
            v278 = v277[2];
            v145 = __OFADD__(v278, 1);
            v279 = v278 + 1;
            if (v145)
            {
              goto LABEL_142;
            }

            v277[2] = v279;
          }

          *(v260 + 16) = v277;
        }

        v224 = v320 + 1;
        v258(&aBlock, 0);

        v222 = v310;
        if (v319 == v224)
        {

          return v222;
        }
      }

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
      sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);

      v221 = sub_213D91EAC();
    }
  }

  v48 = *(v25 + 80);
  v49 = a2 + ((v48 + 32) & ~v48);
  v305 = (v25 + 56);
  v287 = v48;
  v286 = (v48 + 24) & ~v48;
  v285 = (v26 + v286 + 7) & 0xFFFFFFFFFFFFFFF8;
  v310 = *(v25 + 72);
  v284 = (v25 + 48);
  v50 = MEMORY[0x277D84F90];
  v299 = MEMORY[0x277D84F90];
  v300 = MEMORY[0x277D84F90];
  v51 = v324;
  while (1)
  {
    sub_213D1E9F8(v49, v51, type metadata accessor for CustomAnnotationViewModel);
    v54 = *v51;
    *&v328 = v322;
    v55 = v322;
    swift_getAtKeyPath();

    v56 = v332;
    if (!v332[2] || (v57 = sub_213CE22A8(v54), (v58 & 1) == 0))
    {
      v77 = v49;
      v78 = v47;
      v79 = v50;

LABEL_18:
      v81 = v324[1];
      v82 = v324[2];
      v83 = v324[3];
      v84 = v324[4];
      v85 = v324[7];
      v86 = v324[8];
      v87 = v324[5];
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

      v51 = v324;
      v335.receiver = v89;
      v335.super_class = v88;
      v96 = objc_msgSendSuper2(&v335, sel_init);
      v97 = *(v309 + 48);
      v98 = i;
      *i = v96;
      sub_213D1E9F8(v51, v98 + v97, type metadata accessor for CustomAnnotationViewModel);
      v50 = v79;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_213D70850(0, v79[2] + 1, 1, v79);
      }

      v41 = v319;
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
      sub_213CED608(i, v50 + ((*(v316 + 80) + 32) & ~*(v316 + 80)) + *(v316 + 72) * v100, &qword_27C8EB288, &unk_213D972E0);
      goto LABEL_5;
    }

    v59 = *(v56[7] + 8 * v57);

    *&v328 = v55;
    v60 = v55;
    swift_getAtKeyPath();

    v61 = v331;
    if (!v331[2] || (v62 = sub_213CE249C(v59), (v63 & 1) == 0))
    {
      v77 = v49;
      v78 = v47;
      v79 = v50;

      v80 = v304;
      (*v305)(v304, 1, 1, v321);
      sub_213CD8330(v80, &qword_27C8EB290, &qword_213D98000);
      goto LABEL_18;
    }

    v297 = v60;
    v64 = v51;
    v65 = v304;
    sub_213D1E9F8(v61[7] + v62 * v310, v304, type metadata accessor for CustomAnnotationViewModel);

    v296 = *v305;
    v296(v65, 0, 1, v321);
    sub_213CD8330(v65, &qword_27C8EB290, &qword_213D98000);
    v332 = sub_213CE2B34(0, &qword_27C8EB168, 0x277CD4FA0);
    v333 = &off_28263B0B0;
    v66 = v292;
    aBlock = v292;
    v67 = v289;
    sub_213D1E9F8(v64, v289, type metadata accessor for CustomAnnotationViewModel);
    sub_213D1E22C(&aBlock, &v328);
    sub_213D1E9F8(v67, v303, type metadata accessor for CustomAnnotationViewModel);
    sub_213D1E22C(&v328, &v325);
    v68 = v285;
    v69 = swift_allocObject();
    *(v69 + 16) = v59;
    sub_213D1E884(v67, v69 + v286, type metadata accessor for CustomAnnotationViewModel);
    sub_213D1E2DC(&v328, v69 + v68);
    v70 = v59;
    v71 = v66;
    v72 = v298;
    v302 = v70;
    if (!v298)
    {
      goto LABEL_14;
    }

    [v70 coordinate];
    if (vabdd_f64(v74, *(v64 + 56)) < 0.00000000999999994 && vabdd_f64(v73, *(v64 + 64)) < 0.00000000999999994)
    {

LABEL_14:
      v75 = v303;
      [v70 setCoordinate_];
      if (*(v75 + 16))
      {
        v76 = sub_213D9190C();
      }

      else
      {
        v76 = 0;
      }

      v51 = v324;
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
      v118 = v326;
      v119 = v327;
      __swift_project_boxed_opaque_existential_1(&v325, v326);
      v120 = (*(v119 + 24))(v117, v118, v119);
      if (v120)
      {
        v121 = v120;
        type metadata accessor for SwiftUIAnnotationView();
        v122 = swift_dynamicCastClass();
        v123 = v303;
        if (v122)
        {
          sub_213D2763C(v122, 0);
          v123 = v303;
        }

        else
        {
        }
      }

      else
      {

        v123 = v303;
      }

      v108 = v302;
      __swift_destroy_boxed_opaque_existential_1(&v325);
      sub_213D1F330(v123, type metadata accessor for CustomAnnotationViewModel);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v295 = 0;
      v301 = 0;
      v293 = 0;
      v103 = 0;
      v105 = v291;
      goto LABEL_42;
    }

    __swift_destroy_boxed_opaque_existential_1(&v325);
    sub_213D1F330(v303, type metadata accessor for CustomAnnotationViewModel);
    v101 = swift_allocObject();
    v101[2] = sub_213D1EAC8;
    v101[3] = v69;
    v101[4] = v72;
    v102 = swift_allocObject();
    *(v102 + 16) = sub_213D1EAC8;
    *(v102 + 24) = v69;
    v301 = v102;
    v103 = v101;

    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    v104 = swift_allocObject();
    *(v104 + 16) = sub_213D1E454;
    *(v104 + 24) = v101;
    swift_retain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v299 = sub_213D6FE48(0, v299[2] + 1, 1, v299);
    }

    v105 = v291;
    v107 = v299[2];
    v106 = v299[3];
    if (v107 >= v106 >> 1)
    {
      v299 = sub_213D6FE48((v106 > 1), v107 + 1, 1, v299);
    }

    v108 = v302;

    v109 = v299;
    v299[2] = v107 + 1;
    v110 = &v109[2 * v107];
    v110[4] = sub_213D1F608;
    v110[5] = v104;
    v111 = swift_allocObject();
    *(v111 + 16) = sub_213D1E460;
    *(v111 + 24) = v301;
    swift_retain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v300 = sub_213D6FE48(0, v300[2] + 1, 1, v300);
    }

    v113 = v300[2];
    v112 = v300[3];
    if (v113 >= v112 >> 1)
    {
      v300 = sub_213D6FE48((v112 > 1), v113 + 1, 1, v300);
    }

    v114 = v300;
    v300[2] = v113 + 1;
    v115 = &v114[2 * v113];
    v115[4] = sub_213D1F608;
    v115[5] = v111;
    v293 = sub_213D1E454;
    v295 = sub_213D1E460;
    v51 = v324;
LABEL_42:
    v124 = v314;
    v125 = sub_213CE249C(v108);
    v294 = v103;
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

      sub_213D1E884(*(v124 + 56) + v127 * v310, v105, type metadata accessor for CustomAnnotationViewModel);
      v314 = v124;
      sub_213D1B698(v127, v124, type metadata accessor for CustomAnnotationViewModel);
      v130 = 0;
    }

    else
    {
      v130 = 1;
    }

    v131 = v321;
    v132 = v296;
    v296(v105, v130, 1, v321);
    sub_213CD8330(v105, &qword_27C8EB290, &qword_213D98000);
    v133 = v290;
    sub_213D1E9F8(v51, v290, type metadata accessor for CustomAnnotationViewModel);
    v132(v133, 0, 1, v131);
    *&v328 = v297;
    v134 = v297;
    v135 = v302;
    v302 = swift_modifyAtReferenceWritableKeyPath();
    v137 = v136;
    if ((*v284)(v133, 1, v131) != 1)
    {
      break;
    }

    sub_213CD8330(v133, &qword_27C8EB290, &qword_213D98000);
    v52 = v283;
    sub_213D18E08(v135, v283);

    sub_213CD8330(v52, &qword_27C8EB290, &qword_213D98000);
LABEL_4:
    v53 = v293;
    (v302)(&aBlock, 0);
    sub_213CCE520(v295, v301);
    sub_213CCE520(v53, v294);

    sub_213D1F330(v51, type metadata accessor for CustomAnnotationViewModel);
    v41 = v319;
LABEL_5:
    v49 += v310;
    if (!--v47)
    {
      goto LABEL_60;
    }
  }

  sub_213D1E884(v133, v288, type metadata accessor for CustomAnnotationViewModel);
  v138 = swift_isUniquelyReferenced_nonNull_native();
  v325 = *(v137 + 16);
  v139 = v325;
  *(v137 + 16) = 0x8000000000000000;
  v140 = sub_213CE249C(v135);
  v143 = v139[2];
  v144 = (v141 & 1) == 0;
  v145 = __OFADD__(v143, v144);
  v146 = v143 + v144;
  if (v145)
  {
    goto LABEL_143;
  }

  v147 = v141;
  if (v139[3] >= v146)
  {
    if ((v138 & 1) == 0)
    {
      v152 = v140;
      sub_213D1CC00(v142);
      v140 = v152;
      v51 = v324;
    }
  }

  else
  {
    sub_213D1AB68(v146, v138, v142);
    v140 = sub_213CE249C(v135);
    if ((v147 & 1) != (v148 & 1))
    {
      goto LABEL_147;
    }
  }

  v149 = v325;
  if (v147)
  {
    sub_213D1EA60(v288, v325[7] + v140 * v310, type metadata accessor for CustomAnnotationViewModel);

LABEL_58:
    *(v137 + 16) = v149;

    goto LABEL_4;
  }

  v325[(v140 >> 6) + 8] |= 1 << v140;
  *(v149[6] + 8 * v140) = v135;
  sub_213D1E884(v288, v149[7] + v140 * v310, type metadata accessor for CustomAnnotationViewModel);
  v150 = v149[2];
  v145 = __OFADD__(v150, 1);
  v151 = v150 + 1;
  if (!v145)
  {
    v149[2] = v151;
    goto LABEL_58;
  }

  __break(1u);
LABEL_146:
  sub_213D91F8C();
  __break(1u);
LABEL_147:
  type metadata accessor for MapBridgingCustomAnnotation();
  result = sub_213D91F8C();
  __break(1u);
  return result;
}

void *sub_213D09FA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v8 = swift_readAtKeyPath();
  v271 = *(v9 + 16);

  v8(aBlock, 0);
  v281 = v7;

  v10 = *(a2 + 16);
  if (!v10)
  {
    v12 = MEMORY[0x277D84F90];
    v269 = MEMORY[0x277D84F90];
    v270 = MEMORY[0x277D84F90];
LABEL_81:
    v280 = v12;
    if (a4)
    {
      v129 = objc_opt_self();
      v130 = swift_allocObject();
      *(v130 + 16) = v269;
      *&aBlock[32] = sub_213D1F590;
      *&aBlock[40] = v130;
      *aBlock = MEMORY[0x277D85DD0];
      *&aBlock[8] = 1107296256;
      *&aBlock[16] = sub_213CFF278;
      *&aBlock[24] = &block_descriptor_293;
      v131 = _Block_copy(aBlock);

      v132 = swift_allocObject();
      *(v132 + 16) = v270;
      *&aBlock[32] = sub_213D1F60C;
      *&aBlock[40] = v132;
      *aBlock = MEMORY[0x277D85DD0];
      *&aBlock[8] = 1107296256;
      *&aBlock[16] = sub_213D183BC;
      *&aBlock[24] = &block_descriptor_300;
      v133 = _Block_copy(aBlock);

      [v129 animateWithDuration:v131 animations:v133 completion:0.25];
      _Block_release(v133);
      _Block_release(v131);
    }

    v134 = v271 + 64;
    v135 = 1 << *(v271 + 32);
    v136 = -1;
    if (v135 < 64)
    {
      v136 = ~(-1 << v135);
    }

    v137 = v136 & *(v271 + 64);
    v275 = (v135 + 63) >> 6;

    v138 = 0;
    while (v137)
    {
      v146 = v138;
LABEL_98:
      v149 = __clz(__rbit64(v137)) | (v146 << 6);
      v150 = *(*(v271 + 48) + 8 * v149);
      v137 &= v137 - 1;
      v151 = *(v271 + 56) + 136 * v149;
      v288 = *v151;
      v152 = *(v151 + 64);
      v154 = *(v151 + 16);
      v153 = *(v151 + 32);
      v291 = *(v151 + 48);
      v292 = v152;
      v289 = v154;
      v290 = v153;
      v156 = *(v151 + 96);
      v155 = *(v151 + 112);
      v157 = *(v151 + 80);
      v296 = *(v151 + 128);
      v294 = v156;
      v295 = v155;
      v293 = v157;
      *&v297[80] = *(v151 + 80);
      *&v297[96] = *(v151 + 96);
      *&v297[112] = *(v151 + 112);
      *&v297[128] = *(v151 + 128);
      *&v297[16] = *(v151 + 16);
      *&v297[32] = *(v151 + 32);
      *&v297[48] = *(v151 + 48);
      *&v297[64] = *(v151 + 64);
      *v297 = *v151;
      *aBlock = v150;
      *&aBlock[8] = *v297;
      *&aBlock[72] = *&v297[64];
      *&aBlock[56] = *&v297[48];
      *&aBlock[40] = *&v297[32];
      *&aBlock[24] = *&v297[16];
      v300 = *&v297[128];
      *&aBlock[120] = *&v297[112];
      *&aBlock[104] = *&v297[96];
      *&aBlock[88] = *&v297[80];
      nullsub_2();
      v158 = v150;
      sub_213D1E18C(&v288, v298);
      v12 = *aBlock;
      v307 = *&aBlock[104];
      v308 = *&aBlock[120];
      v309 = v300;
      v159 = *&aBlock[24];
      v303 = *&aBlock[40];
      v304 = *&aBlock[56];
      v305 = *&aBlock[72];
      v306 = *&aBlock[88];
      v160 = *&aBlock[8];
LABEL_99:
      v301 = v160;
      v302 = v159;
      *&aBlock[88] = v306;
      *&aBlock[104] = v307;
      *&aBlock[120] = v308;
      *&aBlock[24] = v159;
      *&aBlock[40] = v303;
      *&aBlock[56] = v304;
      *&aBlock[72] = v305;
      v300 = v309;
      *&aBlock[8] = v160;
      *aBlock = v12;
      if (sub_213CCF338(aBlock) == 1)
      {

        *v297 = MEMORY[0x277D84F90];
        v180 = 1 << *(v271 + 32);
        v181 = -1;
        if (v180 < 64)
        {
          v181 = ~(-1 << v180);
        }

        v182 = v181 & *(v271 + 64);
        v183 = (v180 + 63) >> 6;

        v184 = 0;
        v12 = v280;
        while (v182)
        {
LABEL_116:
          v186 = __clz(__rbit64(v182));
          v182 &= v182 - 1;
          v187 = *(*(v271 + 48) + ((v184 << 9) | (8 * v186)));
          type metadata accessor for MapBridgingUserAnnotation();
          if (!swift_dynamicCastClass())
          {
            v188 = v187;
            sub_213D91DEC();
            sub_213D91E2C();
            sub_213D91E3C();
            sub_213D91DFC();
            v134 = v271 + 64;
          }
        }

        while (1)
        {
          v185 = v184 + 1;
          if (__OFADD__(v184, 1))
          {
            goto LABEL_155;
          }

          if (v185 >= v183)
          {

            v189 = *v297;
            if ((*v297 & 0x8000000000000000) == 0 && (*v297 & 0x4000000000000000) == 0)
            {

              sub_213D91F6C();
              sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);
              v190 = v189;
              goto LABEL_121;
            }

            goto LABEL_160;
          }

          v182 = *(v134 + 8 * v185);
          ++v184;
          if (v182)
          {
            v184 = v185;
            goto LABEL_116;
          }
        }
      }

      *&v297[96] = v307;
      *&v297[112] = v308;
      *&v297[128] = v309;
      *v297 = v301;
      *&v297[16] = v302;
      *&v297[32] = v303;
      *&v297[48] = v304;
      *&v297[64] = v305;
      *&v297[80] = v306;
      v161 = v301;
      *&v298[0] = v281;
      v162 = v281;

      v163 = swift_modifyAtReferenceWritableKeyPath();
      v165 = v164;
      v166 = sub_213CE22A8(v161);
      v168 = v167;

      if (v168)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v170 = *(v165 + 24);
        v282[0] = v170;
        *(v165 + 24) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_213D1CE38(&qword_27C8EB198, &qword_213D97210);
          v170 = v282[0];
        }

        sub_213D1B868(v166, v170);
        *(v165 + 24) = v170;
      }

      v163(&v288, 0);

      v282[0] = v162;
      v171 = v162;
      v172 = swift_modifyAtReferenceWritableKeyPath();
      v174 = v173;
      v175 = sub_213CE2258(v12);
      if (v176)
      {
        v177 = v175;
        v178 = swift_isUniquelyReferenced_nonNull_native();
        v179 = *(v174 + 16);
        v285 = v179;
        *(v174 + 16) = 0x8000000000000000;
        if (!v178)
        {
          sub_213D1C0D4();
          v179 = v285;
        }

        v139 = *(v179 + 56) + 136 * v177;
        v288 = *v139;
        v140 = *(v139 + 48);
        v141 = *(v139 + 64);
        v142 = *(v139 + 32);
        v289 = *(v139 + 16);
        v290 = v142;
        v291 = v140;
        v292 = v141;
        v143 = *(v139 + 80);
        v144 = *(v139 + 96);
        v145 = *(v139 + 112);
        v296 = *(v139 + 128);
        v294 = v144;
        v295 = v145;
        v293 = v143;
        sub_213D1E108(&v288);
        sub_213D1B1E8(v177, v179);
        *(v174 + 16) = v179;
      }

      v172(v298, 0);

      sub_213D1E108(v297);
      v134 = v271 + 64;
    }

    if (v275 <= v138 + 1)
    {
      v147 = v138 + 1;
    }

    else
    {
      v147 = v275;
    }

    v148 = v147 - 1;
    while (1)
    {
      v146 = v138 + 1;
      if (__OFADD__(v138, 1))
      {
        break;
      }

      if (v146 >= v275)
      {
        sub_213D1E1E8(aBlock);
        v137 = 0;
        v309 = v300;
        v12 = *aBlock;
        v307 = *&aBlock[104];
        v308 = *&aBlock[120];
        v159 = *&aBlock[24];
        v303 = *&aBlock[40];
        v304 = *&aBlock[56];
        v305 = *&aBlock[72];
        v306 = *&aBlock[88];
        v160 = *&aBlock[8];
        v138 = v148;
        goto LABEL_99;
      }

      v137 = *(v134 + 8 * v146);
      ++v138;
      if (v137)
      {
        v138 = v146;
        goto LABEL_98;
      }
    }

    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);

    v190 = sub_213D91EAC();

LABEL_121:

    *v297 = a1;
    v191 = sub_213D17C74(v190, &protocolRef_MKOverlay);
    if (v191)
    {
      v192 = v191;

      v193 = off_28263B068;
      v194 = sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
      v193(v192, v194, &off_28263B040);
    }

    else
    {
      v195 = sub_213D17C74(v190, &protocolRef_MKAnnotation);

      if (!v195)
      {
LABEL_126:
        v198 = v12[2];
        if (!v198)
        {
          return v12;
        }

        v199 = 0;
        v276 = v198 - 1;
        v200 = 32;
        while (1)
        {
          v278 = v200;
          *v297 = *(v12 + v200);
          v201 = *(v12 + v200 + 16);
          v202 = *(v12 + v200 + 32);
          v203 = *(v12 + v200 + 64);
          *&v297[48] = *(v12 + v200 + 48);
          *&v297[64] = v203;
          *&v297[16] = v201;
          *&v297[32] = v202;
          v204 = *(v12 + v200 + 80);
          v205 = *(v12 + v200 + 96);
          v206 = *(v12 + v200 + 128);
          *&v297[112] = *(v12 + v200 + 112);
          *&v297[128] = v206;
          *&v297[80] = v204;
          *&v297[96] = v205;
          v208 = *&v297[8];
          v207 = *v297;
          *&v298[0] = v281;
          v12 = v281;
          sub_213CE2C28(v297, &v288, &qword_27C8ECC50, &unk_213D971F0);

          v209 = v207;
          v210 = swift_modifyAtReferenceWritableKeyPath();
          v212 = v211;
          v213 = swift_isUniquelyReferenced_nonNull_native();
          v282[0] = *(v212 + 24);
          v214 = v282[0];
          *(v212 + 24) = 0x8000000000000000;
          v216 = sub_213CE22A8(v208);
          v217 = v214[2];
          v218 = (v215 & 1) == 0;
          v219 = v217 + v218;
          if (__OFADD__(v217, v218))
          {
            goto LABEL_156;
          }

          v220 = v215;
          if (v214[3] >= v219)
          {
            if (v213)
            {
              v223 = v282[0];
              if (v215)
              {
                goto LABEL_135;
              }
            }

            else
            {
              sub_213D1CE38(&qword_27C8EB198, &qword_213D97210);
              v223 = v282[0];
              if (v220)
              {
                goto LABEL_135;
              }
            }
          }

          else
          {
            sub_213D1AEB0(v219, v213, &qword_27C8EB198, &qword_213D97210);
            v221 = sub_213CE22A8(v208);
            if ((v220 & 1) != (v222 & 1))
            {
              goto LABEL_164;
            }

            v216 = v221;
            v223 = v282[0];
            if (v220)
            {
LABEL_135:
              v224 = v223[7];
              v225 = *(v224 + 8 * v216);
              *(v224 + 8 * v216) = v209;

              goto LABEL_139;
            }
          }

          v223[(v216 >> 6) + 8] |= 1 << v216;
          *(v223[6] + 8 * v216) = v208;
          *(v223[7] + 8 * v216) = v209;
          v226 = v223[2];
          v114 = __OFADD__(v226, 1);
          v227 = v226 + 1;
          if (v114)
          {
            goto LABEL_158;
          }

          v223[2] = v227;
LABEL_139:
          *(v212 + 24) = v223;
          v210(&v288, 0);

          v282[0] = v12;
          v228 = v12;
          v229 = v209;
          v230 = swift_modifyAtReferenceWritableKeyPath();
          v12 = v231;
          v232 = swift_isUniquelyReferenced_nonNull_native();
          v285 = v12[2];
          v233 = v285;
          v12[2] = 0x8000000000000000;
          v234 = sub_213CE2258(v229);
          v236 = v233[2];
          v237 = (v235 & 1) == 0;
          v114 = __OFADD__(v236, v237);
          v238 = v236 + v237;
          if (v114)
          {
            goto LABEL_157;
          }

          v239 = v235;
          if (v233[3] < v238)
          {
            sub_213D19760(v238, v232);
            v234 = sub_213CE2258(v229);
            if ((v239 & 1) != (v240 & 1))
            {
              goto LABEL_163;
            }

LABEL_144:
            if ((v239 & 1) == 0)
            {
              goto LABEL_147;
            }

            goto LABEL_145;
          }

          if (v232)
          {
            goto LABEL_144;
          }

          v255 = v234;
          sub_213D1C0D4();
          v234 = v255;
          if ((v239 & 1) == 0)
          {
LABEL_147:
            v241 = v285;
            v285[(v234 >> 6) + 8] |= 1 << v234;
            *(v241[6] + 8 * v234) = v229;
            v256 = v241[7] + 136 * v234;
            *v256 = *&v297[8];
            v257 = *&v297[40];
            v258 = *&v297[72];
            v259 = *&v297[24];
            *(v256 + 48) = *&v297[56];
            *(v256 + 64) = v258;
            *(v256 + 16) = v259;
            *(v256 + 32) = v257;
            v260 = *&v297[88];
            v261 = *&v297[104];
            v262 = *&v297[120];
            *(v256 + 128) = *&v297[136];
            *(v256 + 96) = v261;
            *(v256 + 112) = v262;
            *(v256 + 80) = v260;
            v263 = v241[2];
            v114 = __OFADD__(v263, 1);
            v264 = v263 + 1;
            if (v114)
            {
              goto LABEL_159;
            }

            v241[2] = v264;
            goto LABEL_149;
          }

LABEL_145:
          v241 = v285;
          v242 = v285[7] + 136 * v234;
          v288 = *v242;
          v243 = *(v242 + 64);
          v245 = *(v242 + 16);
          v244 = *(v242 + 32);
          v291 = *(v242 + 48);
          v292 = v243;
          v289 = v245;
          v290 = v244;
          v247 = *(v242 + 96);
          v246 = *(v242 + 112);
          v248 = *(v242 + 80);
          v296 = *(v242 + 128);
          v294 = v247;
          v295 = v246;
          v293 = v248;
          *v242 = *&v297[8];
          v249 = *&v297[24];
          v250 = *&v297[40];
          v251 = *&v297[72];
          *(v242 + 48) = *&v297[56];
          *(v242 + 64) = v251;
          *(v242 + 16) = v249;
          *(v242 + 32) = v250;
          v252 = *&v297[88];
          v253 = *&v297[104];
          v254 = *&v297[120];
          *(v242 + 128) = *&v297[136];
          *(v242 + 96) = v253;
          *(v242 + 112) = v254;
          *(v242 + 80) = v252;
          sub_213D1E108(&v288);

LABEL_149:
          v12[2] = v241;

          v230(v298, 0);

          if (v276 == v199)
          {
            goto LABEL_152;
          }

          ++v199;
          v12 = v280;
          v200 = v278 + 144;
          if (v199 >= v280[2])
          {
            __break(1u);
LABEL_152:
            v12 = v280;

            return v12;
          }
        }
      }

      v196 = off_28263B050;
      v197 = sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
      v196(v195, v197, &off_28263B040);
    }

    goto LABEL_126;
  }

  v11 = (a2 + 32);
  v12 = MEMORY[0x277D84F90];
  v269 = MEMORY[0x277D84F90];
  v270 = MEMORY[0x277D84F90];
  while (1)
  {
    v277 = v10;
    v279 = v12;
    v13 = v11[7];
    v314 = v11[6];
    v315 = v13;
    v316 = *(v11 + 16);
    v14 = v11[3];
    v312 = v11[2];
    *v313 = v14;
    v15 = v11[5];
    *&v313[16] = v11[4];
    *&v313[32] = v15;
    v16 = v11[1];
    v310 = *v11;
    v311 = v16;
    v17 = v16;
    v272 = *&v312;
    v274 = v11;
    v18 = BYTE8(v312);
    v19 = *(&v310 + 1);
    v20 = v310;
    *&v288 = v281;
    v21 = v281;
    sub_213D1E18C(&v310, aBlock);

    swift_getAtKeyPath();

    v22 = *&v297[24];
    if (!*(*&v297[24] + 16))
    {

LABEL_15:

      goto LABEL_18;
    }

    v23 = sub_213CE22A8(v20);
    v25 = v24;

    if ((v25 & 1) == 0)
    {
      goto LABEL_15;
    }

    v26 = *(*(v22 + 56) + 8 * v23);

    v287 = v21;
    v27 = v21;
    swift_getAtKeyPath();

    v28 = v286;
    if (!*(v286 + 16) || (v29 = sub_213CE2258(v26), (v30 & 1) == 0))
    {

      goto LABEL_17;
    }

    v31 = *(v28 + 56) + 136 * v29;
    *aBlock = *v31;
    v32 = *(v31 + 48);
    v33 = *(v31 + 64);
    v34 = *(v31 + 32);
    *&aBlock[16] = *(v31 + 16);
    *&aBlock[32] = v34;
    *&aBlock[48] = v32;
    *&aBlock[64] = v33;
    v35 = *(v31 + 80);
    v36 = *(v31 + 96);
    v37 = *(v31 + 112);
    *&aBlock[128] = *(v31 + 128);
    *&aBlock[96] = v36;
    *&aBlock[112] = v37;
    *&aBlock[80] = v35;
    sub_213D1E18C(aBlock, v297);

    v38 = v19;
    v39 = *(&v17 + 1);
    v40 = *&v17;
    if (v18)
    {
      v41 = v272;
      if ((aBlock[40] & 1) == 0)
      {
        sub_213D1E108(aBlock);

        v12 = v279;
        v42 = v274;
        goto LABEL_20;
      }

      if (v19 != *&aBlock[8] || *&v17 != *&aBlock[16] || *(&v17 + 1) != *&aBlock[24] || *&aBlock[32] != v272)
      {
LABEL_46:
        sub_213D1E108(aBlock);
LABEL_17:

LABEL_18:
        v38 = v19;
        v39 = *(&v17 + 1);
        v40 = *&v17;
        v42 = v274;
        if (v18)
        {
          v41 = v272;
          v12 = v279;
LABEL_20:
          v43 = [objc_opt_self() circleWithMapRect_];
LABEL_23:
          v44 = v43;
          *&aBlock[96] = v314;
          *&aBlock[112] = v315;
          *&aBlock[128] = v316;
          *&aBlock[32] = v312;
          *&aBlock[48] = *v313;
          *&aBlock[64] = *&v313[16];
          *&aBlock[80] = *&v313[32];
          *aBlock = v310;
          *&aBlock[16] = v311;
          sub_213D1E18C(&v310, v297);
          v45 = v44;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = sub_213D70434(0, v12[2] + 1, 1, v12);
          }

          v47 = v12[2];
          v46 = v12[3];
          if (v47 >= v46 >> 1)
          {
            v12 = sub_213D70434((v46 > 1), v47 + 1, 1, v12);
          }

          sub_213D1E108(&v310);

          v12[2] = v47 + 1;
          v48 = &v12[18 * v47];
          v48[4] = v45;
          *(v48 + 5) = *aBlock;
          v49 = *&aBlock[16];
          v50 = *&aBlock[32];
          v51 = *&aBlock[48];
          *(v48 + 13) = *&aBlock[64];
          *(v48 + 11) = v51;
          *(v48 + 9) = v50;
          *(v48 + 7) = v49;
          v52 = *&aBlock[80];
          v53 = *&aBlock[96];
          v54 = *&aBlock[112];
          v48[21] = *&aBlock[128];
          *(v48 + 19) = v54;
          *(v48 + 17) = v53;
          *(v48 + 15) = v52;
          goto LABEL_28;
        }

        v12 = v279;
LABEL_22:
        v43 = [objc_opt_self() circleWithCenterCoordinate:v38 radius:{v40, v39}];
        goto LABEL_23;
      }
    }

    else
    {
      if ((aBlock[40] & 1) != 0 || v19 != *&aBlock[8] || *&v17 != *&aBlock[16])
      {
        sub_213D1E108(aBlock);

        v12 = v279;
        v42 = v274;
        goto LABEL_22;
      }

      if (*(&v17 + 1) != *&aBlock[24])
      {
        goto LABEL_46;
      }
    }

    if (v316 != *&aBlock[128])
    {
      goto LABEL_46;
    }

    *(&v289 + 1) = sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
    *&v290 = &off_28263B040;
    *&v288 = a1;
    sub_213D1E22C(&v288, v298);
    sub_213D1E22C(v298, v282);
    v55 = swift_allocObject();
    sub_213D1E2DC(v298, v55 + 16);
    *(v55 + 56) = v26;
    v56 = v315;
    *(v55 + 160) = v314;
    *(v55 + 176) = v56;
    *(v55 + 192) = v316;
    v57 = *v313;
    *(v55 + 96) = v312;
    *(v55 + 112) = v57;
    v58 = *&v313[32];
    *(v55 + 128) = *&v313[16];
    *(v55 + 144) = v58;
    v59 = v311;
    *(v55 + 64) = v310;
    *(v55 + 80) = v59;
    if (a4)
    {
      sub_213D1E18C(&v310, v297);
      v60 = v26;
      v61 = a1;

      __swift_destroy_boxed_opaque_existential_1(v282);
      v62 = swift_allocObject();
      v62[2] = sub_213D1F508;
      v62[3] = v55;
      v62[4] = a4;
      v63 = swift_allocObject();
      *(v63 + 16) = sub_213D1F508;
      *(v63 + 24) = v55;

      __swift_destroy_boxed_opaque_existential_1(&v288);
      v64 = swift_allocObject();
      *(v64 + 16) = sub_213D1F610;
      *(v64 + 24) = v62;
      swift_retain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v269 = sub_213D6FE48(0, v269[2] + 1, 1, v269);
      }

      v12 = v279;
      v66 = v269[2];
      v65 = v269[3];
      if (v66 >= v65 >> 1)
      {
        v269 = sub_213D6FE48((v65 > 1), v66 + 1, 1, v269);
      }

      v269[2] = v66 + 1;
      v67 = &v269[2 * v66];
      v67[4] = sub_213D1F608;
      v67[5] = v64;
      v68 = swift_allocObject();
      *(v68 + 16) = sub_213D1F584;
      *(v68 + 24) = v63;
      swift_retain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v270 = sub_213D6FE48(0, v270[2] + 1, 1, v270);
      }

      v70 = v270[2];
      v69 = v270[3];
      if (v70 >= v69 >> 1)
      {
        v270 = sub_213D6FE48((v69 > 1), v70 + 1, 1, v270);
      }

      v270[2] = v70 + 1;
      v71 = &v270[2 * v70];
      v71[4] = sub_213D1F608;
      v71[5] = v68;
      v266 = sub_213D1F584;
      v273 = sub_213D1F610;
    }

    else
    {
      v72 = v283;
      v73 = v284;
      __swift_project_boxed_opaque_existential_1(v282, v283);
      v74 = *(v73 + 48);
      sub_213D1E18C(&v310, v297);
      v75 = v26;
      v76 = a1;
      v77 = v74(v75, v72, v73);
      if (v77)
      {
        v78 = v77;
        objc_opt_self();
        v79 = swift_dynamicCastObjCClass();
        v12 = v279;
        if (v79)
        {
          v80 = v79;
          v317 = *&v313[8];
          v318 = *&v313[24];
          v319 = *&v313[40];
          v81 = *&v313[32];
          v82 = *&v313[8];
          sub_213D1E3A4(&v317, v297);
          [v80 setLineWidth_];
          [v80 setLineCap_];
          [v80 setLineJoin_];
          [v80 setMiterLimit_];
          if (*(v81 + 16))
          {

            sub_213D18410(v83);
            sub_213D1E400(&v317);
            sub_213CE2B34(0, &unk_27C8EB188, 0x277CCABB0);
            v84 = sub_213D919EC();
          }

          else
          {
            v84 = 0;
          }

          v85 = v314;
          v86 = BYTE8(v314);
          [v80 setLineDashPattern_];

          [v80 setLineDashPhase_];
          sub_213D1E400(&v317);
          if ((v86 & 1) != 0 && !*(v85 + 16))
          {
            sub_213D9149C();
          }

          else
          {
          }

          v87 = v315;
          v88 = BYTE8(v315);
          sub_213CE2B34(0, &qword_27C8E9370, 0x277D75348);
          v89 = sub_213D91C3C();
          [v80 setStrokeColor_];

          if ((v88 & 1) != 0 && !*(v87 + 16))
          {
            sub_213D9149C();
          }

          else
          {
          }

          v90 = sub_213D91C3C();
          [v80 setFillColor_];

          [v80 setNeedsDisplay];
        }

        else
        {
        }
      }

      else
      {

        v12 = v279;
      }

      __swift_destroy_boxed_opaque_existential_1(v282);
      __swift_destroy_boxed_opaque_existential_1(&v288);
      v273 = 0;
      v62 = 0;
      v266 = 0;
      v63 = 0;
    }

    v91 = v271;
    v92 = sub_213CE2258(v26);
    if (v93)
    {
      v94 = v92;
      v95 = swift_isUniquelyReferenced_nonNull_native();
      *&v288 = v271;
      if (!v95)
      {
        sub_213D1C0D4();
        v91 = v288;
      }

      v96 = *(v91 + 56) + 136 * v94;
      *v297 = *v96;
      v97 = *(v96 + 48);
      v98 = *(v96 + 64);
      v99 = *(v96 + 32);
      *&v297[16] = *(v96 + 16);
      *&v297[32] = v99;
      *&v297[48] = v97;
      *&v297[64] = v98;
      v100 = *(v96 + 80);
      v101 = *(v96 + 96);
      v102 = *(v96 + 112);
      *&v297[128] = *(v96 + 128);
      *&v297[96] = v101;
      *&v297[112] = v102;
      *&v297[80] = v100;
      sub_213D1E108(v297);
      v271 = v91;
      sub_213D1B1E8(v94, v91);
    }

    *&v288 = v27;
    v103 = v27;
    sub_213D1E18C(&v310, v297);
    v104 = v26;
    v105 = swift_modifyAtReferenceWritableKeyPath();
    v107 = v106;
    v108 = swift_isUniquelyReferenced_nonNull_native();
    *&v298[0] = *(v107 + 16);
    v109 = *&v298[0];
    *(v107 + 16) = 0x8000000000000000;
    v110 = sub_213CE2258(v104);
    v112 = *(v109 + 16);
    v113 = (v111 & 1) == 0;
    v114 = __OFADD__(v112, v113);
    v115 = v112 + v113;
    if (v114)
    {
      break;
    }

    v116 = v111;
    if (*(v109 + 24) < v115)
    {
      sub_213D19760(v115, v108);
      v110 = sub_213CE2258(v104);
      if ((v116 & 1) != (v117 & 1))
      {
        goto LABEL_163;
      }

LABEL_72:
      v118 = *&v298[0];
      if ((v116 & 1) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_73;
    }

    if (v108)
    {
      goto LABEL_72;
    }

    v119 = v110;
    sub_213D1C0D4();
    v110 = v119;
    v118 = *&v298[0];
    if ((v116 & 1) == 0)
    {
LABEL_77:
      v118[(v110 >> 6) + 8] |= 1 << v110;
      *(v118[6] + 8 * v110) = v104;
      v120 = v118[7] + 136 * v110;
      *v120 = v310;
      v121 = v311;
      v122 = v312;
      v123 = *&v313[16];
      *(v120 + 48) = *v313;
      *(v120 + 64) = v123;
      *(v120 + 16) = v121;
      *(v120 + 32) = v122;
      v124 = *&v313[32];
      v125 = v314;
      v126 = v315;
      *(v120 + 128) = v316;
      *(v120 + 96) = v125;
      *(v120 + 112) = v126;
      *(v120 + 80) = v124;
      v127 = v118[2];
      v114 = __OFADD__(v127, 1);
      v128 = v127 + 1;
      if (v114)
      {
        goto LABEL_162;
      }

      v118[2] = v128;
      goto LABEL_79;
    }

LABEL_73:
    sub_213D1E348(&v310, v118[7] + 136 * v110);

LABEL_79:
    *(v107 + 16) = v118;

    v105(v297, 0);
    sub_213D1E108(aBlock);
    sub_213CCE520(v266, v63);
    sub_213CCE520(v273, v62);

    sub_213D1E108(&v310);
    v42 = v274;
    v10 = v277;
LABEL_28:
    v11 = (v42 + 136);
    if (!--v10)
    {
      goto LABEL_81;
    }
  }

  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  sub_213CE2B34(0, &qword_27C8EB180, 0x277CD4DA0);
  sub_213D91F8C();
  __break(1u);
LABEL_164:
  result = sub_213D91F8C();
  __break(1u);
  return result;
}

uint64_t sub_213D0B88C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v8 = swift_readAtKeyPath();
  v10 = *(v9 + 16);

  v8(aBlock, 0);
  v290 = v7;

  v11 = *(a2 + 16);
  if (!v11)
  {
    v12 = MEMORY[0x277D84F90];
    v275 = MEMORY[0x277D84F90];
    v276 = MEMORY[0x277D84F90];
LABEL_77:
    v283 = v12;
    if (a4)
    {
      v125 = objc_opt_self();
      v126 = swift_allocObject();
      *(v126 + 16) = v275;
      *&aBlock[32] = sub_213D1F590;
      *&aBlock[40] = v126;
      *aBlock = MEMORY[0x277D85DD0];
      *&aBlock[8] = 1107296256;
      *&aBlock[16] = sub_213CFF278;
      *&aBlock[24] = &block_descriptor_330;
      v127 = _Block_copy(aBlock);

      v128 = swift_allocObject();
      *(v128 + 16) = v276;
      *&aBlock[32] = sub_213D1F60C;
      *&aBlock[40] = v128;
      *aBlock = MEMORY[0x277D85DD0];
      *&aBlock[8] = 1107296256;
      *&aBlock[16] = sub_213D183BC;
      *&aBlock[24] = &block_descriptor_337;
      v129 = _Block_copy(aBlock);

      [v125 animateWithDuration:v127 animations:v129 completion:0.25];
      _Block_release(v129);
      _Block_release(v127);
    }

    v130 = v10 + 64;
    v131 = 1 << *(v10 + 32);
    v132 = -1;
    if (v131 < 64)
    {
      v132 = ~(-1 << v131);
    }

    v133 = v132 & *(v10 + 64);
    v280 = ((v131 + 63) >> 6);

    v134 = 0;
    v285 = v10 + 64;
    v288 = v10;
    while (v133)
    {
      v142 = v134;
LABEL_94:
      v145 = __clz(__rbit64(v133));
      v133 &= v133 - 1;
      v146 = v145 | (v142 << 6);
      v147 = *(*(v10 + 48) + 8 * v146);
      v148 = *(v10 + 56) + 120 * v146;
      v150 = *(v148 + 32);
      v149 = *(v148 + 48);
      v151 = *v148;
      v298 = *(v148 + 16);
      v299 = v150;
      v297 = v151;
      v153 = *(v148 + 80);
      v152 = *(v148 + 96);
      v154 = *(v148 + 64);
      v304 = *(v148 + 112);
      v302 = v153;
      v303 = v152;
      v300 = v149;
      v301 = v154;
      v155 = *v148;
      v156 = *(v148 + 16);
      v157 = *(v148 + 48);
      *&v305[32] = *(v148 + 32);
      *&v305[48] = v157;
      *v305 = v155;
      *&v305[16] = v156;
      v158 = *(v148 + 64);
      v159 = *(v148 + 80);
      v160 = *(v148 + 96);
      *&v305[112] = *(v148 + 112);
      *&v305[80] = v159;
      *&v305[96] = v160;
      *&v305[64] = v158;
      *aBlock = v147;
      *&aBlock[72] = v158;
      *&aBlock[88] = v159;
      *&aBlock[104] = v160;
      v308 = *&v305[112];
      *&aBlock[8] = *v305;
      *&aBlock[24] = *&v305[16];
      *&aBlock[40] = *&v305[32];
      *&aBlock[56] = v157;
      nullsub_2();
      v161 = v147;
      sub_213D1E518(&v297, v306);
      v162 = *aBlock;
      v313 = *&aBlock[72];
      v314 = *&aBlock[88];
      v315 = *&aBlock[104];
      v316 = v308;
      v309 = *&aBlock[8];
      v310 = *&aBlock[24];
      v163 = *&aBlock[40];
      v164 = *&aBlock[56];
LABEL_95:
      v311 = v163;
      v312 = v164;
      *&aBlock[72] = v313;
      *&aBlock[88] = v314;
      *&aBlock[104] = v315;
      *&aBlock[8] = v309;
      *&aBlock[24] = v310;
      *&aBlock[40] = v163;
      v308 = v316;
      *&aBlock[56] = v164;
      *aBlock = v162;
      if (sub_213CCF338(aBlock) == 1)
      {

        *v305 = MEMORY[0x277D84F90];
        v184 = 1 << *(v10 + 32);
        v185 = -1;
        if (v184 < 64)
        {
          v185 = ~(-1 << v184);
        }

        v186 = v185 & *(v10 + 64);
        v187 = (v184 + 63) >> 6;

        v188 = 0;
        v133 = v283;
        while (v186)
        {
LABEL_112:
          v190 = __clz(__rbit64(v186));
          v186 &= v186 - 1;
          v191 = *(*(v10 + 48) + ((v188 << 9) | (8 * v190)));
          type metadata accessor for MapBridgingUserAnnotation();
          if (!swift_dynamicCastClass())
          {
            v192 = v191;
            sub_213D91DEC();
            sub_213D91E2C();
            sub_213D91E3C();
            sub_213D91DFC();
          }
        }

        while (1)
        {
          v189 = v188 + 1;
          if (__OFADD__(v188, 1))
          {
            goto LABEL_151;
          }

          if (v189 >= v187)
          {

            v193 = *v305;
            if ((*v305 & 0x8000000000000000) == 0 && (*v305 & 0x4000000000000000) == 0)
            {

              sub_213D91F6C();
              sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);
              v194 = v193;
              goto LABEL_117;
            }

            goto LABEL_156;
          }

          v186 = *(v130 + 8 * v189);
          ++v188;
          if (v186)
          {
            v188 = v189;
            goto LABEL_112;
          }
        }
      }

      *&v305[64] = v313;
      *&v305[80] = v314;
      *&v305[96] = v315;
      *&v305[112] = v316;
      *v305 = v309;
      *&v305[16] = v310;
      *&v305[32] = v311;
      *&v305[48] = v312;
      v165 = v309;
      *&v306[0] = v290;
      v166 = v290;

      v167 = swift_modifyAtReferenceWritableKeyPath();
      v169 = v168;
      v170 = sub_213CE22A8(v165);
      v172 = v171;

      if (v172)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v174 = *(v169 + 24);
        v291[0] = v174;
        *(v169 + 24) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_213D1CE38(&qword_27C8EB1C8, &qword_213D97230);
          v174 = v291[0];
        }

        sub_213D1B868(v170, v174);
        *(v169 + 24) = v174;
      }

      v167(&v297, 0);

      v291[0] = v166;
      v175 = v166;
      v176 = swift_modifyAtReferenceWritableKeyPath();
      v178 = v177;
      v179 = sub_213CE2354(v162);
      if (v180)
      {
        v181 = v179;
        v182 = swift_isUniquelyReferenced_nonNull_native();
        v183 = *(v178 + 16);
        v294 = v183;
        *(v178 + 16) = 0x8000000000000000;
        if (!v182)
        {
          sub_213D1C2B8();
          v183 = v294;
        }

        v135 = *(v183 + 56) + 120 * v181;
        v137 = *(v135 + 32);
        v136 = *(v135 + 48);
        v138 = *(v135 + 16);
        v297 = *v135;
        v298 = v138;
        v299 = v137;
        v300 = v136;
        v139 = *(v135 + 64);
        v140 = *(v135 + 80);
        v141 = *(v135 + 96);
        v304 = *(v135 + 112);
        v302 = v140;
        v303 = v141;
        v301 = v139;
        sub_213D1E4C4(&v297);
        sub_213D1B378(v181, v183);
        *(v178 + 16) = v183;
      }

      v176(v306, 0);

      sub_213D1E4C4(v305);
      v130 = v285;
      v10 = v288;
    }

    if (v280 <= v134 + 1)
    {
      v143 = (v134 + 1);
    }

    else
    {
      v143 = v280;
    }

    v144 = v143 - 1;
    while (1)
    {
      v142 = v134 + 1;
      if (__OFADD__(v134, 1))
      {
        break;
      }

      if (v142 >= v280)
      {
        sub_213D1E5D0(aBlock);
        v133 = 0;
        v316 = v308;
        v162 = *aBlock;
        v313 = *&aBlock[72];
        v314 = *&aBlock[88];
        v315 = *&aBlock[104];
        v309 = *&aBlock[8];
        v310 = *&aBlock[24];
        v163 = *&aBlock[40];
        v164 = *&aBlock[56];
        v134 = v144;
        goto LABEL_95;
      }

      v133 = *(v130 + 8 * v142);
      ++v134;
      if (v133)
      {
        v134 = v142;
        goto LABEL_94;
      }
    }

    __break(1u);
LABEL_151:
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
    sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);

    v194 = sub_213D91EAC();

LABEL_117:

    *v305 = a1;
    v195 = sub_213D17C74(v194, &protocolRef_MKOverlay);
    if (v195)
    {
      v196 = v195;

      v197 = off_28263B068;
      v198 = sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
      v197(v196, v198, &off_28263B040);
    }

    else
    {
      v199 = sub_213D17C74(v194, &protocolRef_MKAnnotation);

      if (!v199)
      {
LABEL_122:
        v202 = *(v133 + 16);
        if (!v202)
        {
          return v133;
        }

        v203 = 0;
        v286 = v202 - 1;
        v204 = 32;
        while (1)
        {
          v289 = v204;
          v205 = *(v133 + v204 + 48);
          v207 = *(v133 + v204);
          v206 = *(v133 + v204 + 16);
          *&v305[32] = *(v133 + v204 + 32);
          *&v305[48] = v205;
          *v305 = v207;
          *&v305[16] = v206;
          v208 = *(v133 + v204 + 64);
          v209 = *(v133 + v204 + 80);
          v210 = *(v133 + v204 + 112);
          *&v305[96] = *(v133 + v204 + 96);
          *&v305[112] = v210;
          *&v305[64] = v208;
          *&v305[80] = v209;
          v212 = *&v305[8];
          v211 = *v305;
          *&v306[0] = v290;
          v133 = v290;
          sub_213CE2C28(v305, &v297, &qword_27C8EB1B0, &qword_213D97220);

          v213 = v211;
          v214 = swift_modifyAtReferenceWritableKeyPath();
          v216 = v215;
          v217 = swift_isUniquelyReferenced_nonNull_native();
          v291[0] = *(v216 + 24);
          v218 = v291[0];
          *(v216 + 24) = 0x8000000000000000;
          v220 = sub_213CE22A8(v212);
          v221 = v218[2];
          v222 = (v219 & 1) == 0;
          v223 = v221 + v222;
          if (__OFADD__(v221, v222))
          {
            goto LABEL_152;
          }

          v224 = v219;
          if (v218[3] >= v223)
          {
            if (v217)
            {
              v227 = v291[0];
              if (v219)
              {
                goto LABEL_132;
              }
            }

            else
            {
              sub_213D1CE38(&qword_27C8EB1C8, &qword_213D97230);
              v227 = v291[0];
              if (v224)
              {
                goto LABEL_132;
              }
            }
          }

          else
          {
            sub_213D1AEB0(v223, v217, &qword_27C8EB1C8, &qword_213D97230);
            v225 = sub_213CE22A8(v212);
            if ((v224 & 1) != (v226 & 1))
            {
              goto LABEL_160;
            }

            v220 = v225;
            v227 = v291[0];
            if (v224)
            {
LABEL_132:
              v230 = v227[7];
              v231 = *(v230 + 8 * v220);
              *(v230 + 8 * v220) = v213;

              goto LABEL_133;
            }
          }

          v227[(v220 >> 6) + 8] |= 1 << v220;
          *(v227[6] + 8 * v220) = v212;
          *(v227[7] + 8 * v220) = v213;
          v228 = v227[2];
          v110 = __OFADD__(v228, 1);
          v229 = v228 + 1;
          if (v110)
          {
            goto LABEL_154;
          }

          v227[2] = v229;
LABEL_133:
          *(v216 + 24) = v227;
          v214(&v297, 0);

          v291[0] = v133;
          v232 = v133;
          v233 = v213;
          v234 = swift_modifyAtReferenceWritableKeyPath();
          v133 = v235;
          v236 = swift_isUniquelyReferenced_nonNull_native();
          v294 = *(v133 + 16);
          v237 = v294;
          *(v133 + 16) = 0x8000000000000000;
          v238 = sub_213CE2354(v233);
          v240 = v237[2];
          v241 = (v239 & 1) == 0;
          v110 = __OFADD__(v240, v241);
          v242 = v240 + v241;
          if (v110)
          {
            goto LABEL_153;
          }

          v243 = v239;
          if (v237[3] < v242)
          {
            sub_213D19B34(v242, v236);
            v238 = sub_213CE2354(v233);
            if ((v243 & 1) != (v244 & 1))
            {
              goto LABEL_159;
            }

LABEL_138:
            if ((v243 & 1) == 0)
            {
              goto LABEL_143;
            }

            goto LABEL_139;
          }

          if (v236)
          {
            goto LABEL_138;
          }

          v259 = v238;
          sub_213D1C2B8();
          v238 = v259;
          if ((v243 & 1) == 0)
          {
LABEL_143:
            v245 = v294;
            v294[(v238 >> 6) + 8] |= 1 << v238;
            *(v245[6] + 8 * v238) = v233;
            v260 = v245[7] + 120 * v238;
            v261 = *&v305[24];
            v262 = *&v305[56];
            v263 = *&v305[8];
            *(v260 + 32) = *&v305[40];
            *(v260 + 48) = v262;
            *v260 = v263;
            *(v260 + 16) = v261;
            v264 = *&v305[72];
            v265 = *&v305[88];
            v266 = *&v305[104];
            *(v260 + 112) = *&v305[120];
            *(v260 + 80) = v265;
            *(v260 + 96) = v266;
            *(v260 + 64) = v264;
            v267 = v245[2];
            v110 = __OFADD__(v267, 1);
            v268 = v267 + 1;
            if (v110)
            {
              goto LABEL_155;
            }

            v245[2] = v268;
            goto LABEL_145;
          }

LABEL_139:
          v245 = v294;
          v246 = v294[7] + 120 * v238;
          v247 = *(v246 + 48);
          v249 = *v246;
          v248 = *(v246 + 16);
          v299 = *(v246 + 32);
          v300 = v247;
          v297 = v249;
          v298 = v248;
          v251 = *(v246 + 80);
          v250 = *(v246 + 96);
          v252 = *(v246 + 64);
          v304 = *(v246 + 112);
          v302 = v251;
          v303 = v250;
          v301 = v252;
          v253 = *&v305[8];
          v254 = *&v305[24];
          v255 = *&v305[56];
          *(v246 + 32) = *&v305[40];
          *(v246 + 48) = v255;
          *v246 = v253;
          *(v246 + 16) = v254;
          v256 = *&v305[72];
          v257 = *&v305[88];
          v258 = *&v305[104];
          *(v246 + 112) = *&v305[120];
          *(v246 + 80) = v257;
          *(v246 + 96) = v258;
          *(v246 + 64) = v256;
          sub_213D1E4C4(&v297);

LABEL_145:
          *(v133 + 16) = v245;

          v234(v306, 0);

          if (v286 == v203)
          {
            goto LABEL_148;
          }

          ++v203;
          v133 = v283;
          v204 = v289 + 128;
          if (v203 >= v283[2])
          {
            __break(1u);
LABEL_148:
            v133 = v283;

            return v133;
          }
        }
      }

      v200 = off_28263B050;
      v201 = sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
      v200(v199, v201, &off_28263B040);
    }

    goto LABEL_122;
  }

  v12 = MEMORY[0x277D84F90];
  v13 = &qword_27C8EB1C0;
  v14 = (a2 + 40);
  v275 = MEMORY[0x277D84F90];
  v276 = MEMORY[0x277D84F90];
  while (1)
  {
    v15 = *(v14 + 72);
    *&v319[32] = *(v14 + 56);
    v320 = v15;
    v321 = *(v14 + 88);
    v322 = *(v14 + 13);
    v16 = *(v14 + 8);
    v317 = *(v14 - 8);
    v318 = v16;
    v17 = *(v14 + 40);
    *v319 = *(v14 + 24);
    *&v319[16] = v17;
    v18 = *v14;
    v327 = *(v14 + 2);
    v326 = v18;
    *&v297 = v290;
    v19 = v290;
    sub_213D1E518(&v317, aBlock);
    swift_getAtKeyPath();

    v20 = *&v305[24];
    if (!*(*&v305[24] + 16) || (v21 = sub_213CE22A8(v317), (v22 & 1) == 0))
    {

      v39 = *(&v326 + 1);
      v40 = v326;
      if ((*(&v326 + 1) & 0x8000000000000000) != 0)
      {
LABEL_36:
        sub_213D1E574(&v326, aBlock);
        goto LABEL_37;
      }

LABEL_15:
      v41 = v327;
      sub_213D1E574(&v326, aBlock);

      sub_213CE2B34(0, v13, 0x277CD4F18);
      sub_213D1E574(&v326, aBlock);
      v40 = sub_213D67678(v40, v39, v41);
LABEL_37:
      *&aBlock[64] = *&v319[32];
      *&aBlock[80] = v320;
      *&aBlock[96] = v321;
      *&aBlock[112] = v322;
      *aBlock = v317;
      *&aBlock[16] = v318;
      *&aBlock[32] = *v319;
      *&aBlock[48] = *&v319[16];
      sub_213D1E518(&v317, v305);
      v61 = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_213D70584(0, v12[2] + 1, 1, v12);
      }

      v63 = v12[2];
      v62 = v12[3];
      if (v63 >= v62 >> 1)
      {
        v12 = sub_213D70584((v62 > 1), v63 + 1, 1, v12);
      }

      v12[2] = v63 + 1;
      v64 = &v12[16 * v63];
      v64[4] = v61;
      v65 = *aBlock;
      v66 = *&aBlock[16];
      v67 = *&aBlock[32];
      *(v64 + 11) = *&aBlock[48];
      *(v64 + 9) = v67;
      *(v64 + 7) = v66;
      *(v64 + 5) = v65;
      v68 = *&aBlock[64];
      v69 = *&aBlock[80];
      v70 = *&aBlock[96];
      v64[19] = *&aBlock[112];
      *(v64 + 17) = v70;
      *(v64 + 15) = v69;
      *(v64 + 13) = v68;
      sub_213D1E4C4(&v317);
      goto LABEL_42;
    }

    v23 = v13;
    v24 = *(*(v20 + 56) + 8 * v21);

    v296 = v19;
    v25 = v19;
    swift_getAtKeyPath();

    v26 = v295;
    if (!*(v295 + 16) || (v27 = sub_213CE2354(v24), (v28 & 1) == 0))
    {

LABEL_34:

LABEL_35:
      v13 = v23;
      v39 = *(&v326 + 1);
      v40 = v326;
      if ((*(&v326 + 1) & 0x8000000000000000) != 0)
      {
        goto LABEL_36;
      }

      goto LABEL_15;
    }

    v29 = *(v26 + 56) + 120 * v27;
    v31 = *(v29 + 32);
    v30 = *(v29 + 48);
    v32 = *(v29 + 16);
    *aBlock = *v29;
    *&aBlock[16] = v32;
    *&aBlock[32] = v31;
    *&aBlock[48] = v30;
    v33 = *(v29 + 64);
    v34 = *(v29 + 80);
    v35 = *(v29 + 96);
    *&aBlock[112] = *(v29 + 112);
    *&aBlock[80] = v34;
    *&aBlock[96] = v35;
    *&aBlock[64] = v33;
    sub_213D1E518(aBlock, v305);

    if (((*(&v326 + 9) | ((*(&v326 + 13) | (SHIBYTE(v326) << 16)) << 32)) & 0x8000000000000000) != 0)
    {
      if ((*&aBlock[16] & 0x8000000000000000) == 0)
      {
        goto LABEL_33;
      }

      sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);
      if ((sub_213D91C5C() & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if ((*&aBlock[16] & 0x8000000000000000) != 0)
      {
        goto LABEL_33;
      }

      v36 = v327;
      v37 = *&aBlock[24];
      if (!sub_213D6798C(v326, BYTE8(v326) & 1, *&aBlock[8], aBlock[16] & 1))
      {
        goto LABEL_33;
      }

      if (v36)
      {
        if (!v37)
        {
          goto LABEL_21;
        }

        v38 = sub_213D6F248(v36, v37);

        if ((v38 & 1) == 0)
        {
LABEL_33:
          sub_213D1E4C4(aBlock);
          goto LABEL_34;
        }
      }

      else if (v37)
      {
LABEL_21:

        sub_213D1E4C4(aBlock);
        goto LABEL_35;
      }
    }

    if (v322 != *&aBlock[112])
    {
      goto LABEL_33;
    }

    v287 = v10;
    *(&v298 + 1) = sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
    *&v299 = &off_28263B040;
    *&v297 = a1;
    sub_213D1E22C(&v297, v306);
    sub_213D1E22C(v306, v291);
    v42 = swift_allocObject();
    sub_213D1E2DC(v306, v42 + 16);
    *(v42 + 56) = v24;
    v43 = v320;
    *(v42 + 128) = *&v319[32];
    *(v42 + 144) = v43;
    *(v42 + 160) = v321;
    *(v42 + 176) = v322;
    v44 = v318;
    *(v42 + 64) = v317;
    *(v42 + 80) = v44;
    v45 = *&v319[16];
    *(v42 + 96) = *v319;
    *(v42 + 112) = v45;
    if (a4)
    {
      sub_213D1E518(&v317, v305);
      v46 = v24;
      v47 = a1;

      __swift_destroy_boxed_opaque_existential_1(v291);
      v48 = swift_allocObject();
      v48[2] = sub_213D1F50C;
      v48[3] = v42;
      v48[4] = a4;
      v49 = swift_allocObject();
      *(v49 + 16) = sub_213D1F50C;
      *(v49 + 24) = v42;
      v281 = v49;

      __swift_destroy_boxed_opaque_existential_1(&v297);
      v50 = swift_allocObject();
      *(v50 + 16) = sub_213D1F610;
      *(v50 + 24) = v48;
      v277 = v48;
      swift_retain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v275 = sub_213D6FE48(0, v275[2] + 1, 1, v275);
      }

      v51 = v287;
      v53 = v275[2];
      v52 = v275[3];
      if (v53 >= v52 >> 1)
      {
        v275 = sub_213D6FE48((v52 > 1), v53 + 1, 1, v275);
      }

      v275[2] = v53 + 1;
      v54 = &v275[2 * v53];
      v54[4] = sub_213D1F608;
      v54[5] = v50;
      v55 = swift_allocObject();
      *(v55 + 16) = sub_213D1F584;
      *(v55 + 24) = v281;
      swift_retain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v276 = sub_213D6FE48(0, v276[2] + 1, 1, v276);
      }

      v57 = v276[2];
      v56 = v276[3];
      if (v57 >= v56 >> 1)
      {
        v276 = sub_213D6FE48((v56 > 1), v57 + 1, 1, v276);
      }

      v276[2] = v57 + 1;
      v58 = &v276[2 * v57];
      v58[4] = sub_213D1F608;
      v58[5] = v55;
      v59 = sub_213D1F584;
      v60 = sub_213D1F610;
    }

    else
    {
      v282 = v12;
      v71 = v292;
      v72 = v293;
      __swift_project_boxed_opaque_existential_1(v291, v292);
      v278 = *(v72 + 48);
      sub_213D1E518(&v317, v305);
      v73 = v24;
      v74 = a1;
      v75 = v278(v73, v71, v72);
      if (v75)
      {
        v76 = v75;
        objc_opt_self();
        v77 = swift_dynamicCastObjCClass();
        if (v77)
        {
          v78 = v77;
          v323 = *&v319[8];
          v324 = *&v319[24];
          v325 = *&v319[40];
          v79 = *&v319[32];
          v80 = *&v319[8];
          sub_213D1E3A4(&v323, v305);
          [v78 setLineWidth_];
          [v78 setLineCap_];
          [v78 setLineJoin_];
          v279 = v78;
          [v78 setMiterLimit_];
          v12 = v282;
          v272 = v76;
          if (*(v79 + 16))
          {

            sub_213D18410(v81);
            sub_213D1E400(&v323);
            sub_213CE2B34(0, &unk_27C8EB188, 0x277CCABB0);
            v82 = sub_213D919EC();
          }

          else
          {
            v82 = 0;
          }

          v83 = v320;
          v270 = BYTE8(v320);
          [v279 setLineDashPattern_];

          [v279 setLineDashPhase_];
          sub_213D1E400(&v323);
          if ((v270 & 1) != 0 && !*(v83 + 16))
          {
            sub_213D9149C();
          }

          else
          {
          }

          v84 = v321;
          v85 = BYTE8(v321);
          sub_213CE2B34(0, &qword_27C8E9370, 0x277D75348);
          v86 = sub_213D91C3C();
          [v279 setStrokeColor_];

          if ((v85 & 1) != 0 && !*(v84 + 16))
          {
            sub_213D9149C();
          }

          else
          {
          }

          v87 = sub_213D91C3C();
          [v279 setFillColor_];

          [v279 setNeedsDisplay];
        }

        else
        {
        }
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_1(v291);
      __swift_destroy_boxed_opaque_existential_1(&v297);
      v60 = 0;
      v277 = 0;
      v281 = 0;
      v59 = 0;
      v51 = v287;
    }

    v88 = sub_213CE2354(v24);
    v271 = v59;
    v273 = v60;
    if (v89)
    {
      v90 = v88;
      v91 = swift_isUniquelyReferenced_nonNull_native();
      *&v297 = v51;
      if (!v91)
      {
        sub_213D1C2B8();
        v51 = v297;
      }

      v92 = *(v51 + 56) + 120 * v90;
      v94 = *(v92 + 32);
      v93 = *(v92 + 48);
      v95 = *(v92 + 16);
      *v305 = *v92;
      *&v305[16] = v95;
      *&v305[32] = v94;
      *&v305[48] = v93;
      v96 = *(v92 + 64);
      v97 = *(v92 + 80);
      v98 = *(v92 + 96);
      *&v305[112] = *(v92 + 112);
      *&v305[80] = v97;
      *&v305[96] = v98;
      *&v305[64] = v96;
      sub_213D1E4C4(v305);
      v287 = v51;
      sub_213D1B378(v90, v51);
    }

    *&v297 = v25;
    v99 = v25;
    sub_213D1E518(&v317, v305);
    v100 = v24;
    v101 = swift_modifyAtReferenceWritableKeyPath();
    v103 = v102;
    v104 = swift_isUniquelyReferenced_nonNull_native();
    *&v306[0] = *(v103 + 16);
    v105 = *&v306[0];
    *(v103 + 16) = 0x8000000000000000;
    v106 = sub_213CE2354(v100);
    v108 = *(v105 + 16);
    v109 = (v107 & 1) == 0;
    v110 = __OFADD__(v108, v109);
    v111 = v108 + v109;
    if (v110)
    {
      break;
    }

    v112 = v107;
    if (*(v105 + 24) >= v111)
    {
      if ((v104 & 1) == 0)
      {
        v124 = v106;
        sub_213D1C2B8();
        v106 = v124;
      }
    }

    else
    {
      sub_213D19B34(v111, v104);
      v106 = sub_213CE2354(v100);
      if ((v112 & 1) != (v113 & 1))
      {
        goto LABEL_159;
      }
    }

    v114 = *&v306[0];
    if (v112)
    {
      sub_213D1E644(&v317, *(*&v306[0] + 56) + 120 * v106);
    }

    else
    {
      *(*&v306[0] + 8 * (v106 >> 6) + 64) |= 1 << v106;
      *(v114[6] + 8 * v106) = v100;
      v115 = v114[7] + 120 * v106;
      v116 = v317;
      v117 = v318;
      v118 = *&v319[16];
      *(v115 + 32) = *v319;
      *(v115 + 48) = v118;
      *v115 = v116;
      *(v115 + 16) = v117;
      v119 = *&v319[32];
      v120 = v320;
      v121 = v321;
      *(v115 + 112) = v322;
      *(v115 + 80) = v120;
      *(v115 + 96) = v121;
      *(v115 + 64) = v119;
      v122 = v114[2];
      v110 = __OFADD__(v122, 1);
      v123 = v122 + 1;
      if (v110)
      {
        goto LABEL_158;
      }

      v114[2] = v123;
    }

    *(v103 + 16) = v114;

    v101(v305, 0);
    sub_213D1E4C4(aBlock);
    sub_213CCE520(v271, v281);
    sub_213CCE520(v273, v277);

    sub_213D1E4C4(&v317);
    v10 = v287;
    v13 = v23;
LABEL_42:
    v14 = (v14 + 120);
    if (!--v11)
    {
      goto LABEL_77;
    }
  }

  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  sub_213CE2B34(0, &qword_27C8EB1C0, 0x277CD4F18);
  sub_213D91F8C();
  __break(1u);
LABEL_160:
  result = sub_213D91F8C();
  __break(1u);
  return result;
}

void *sub_213D0D144(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v8 = swift_readAtKeyPath();
  v249 = *(v9 + 16);

  v8(aBlock, 0);
  v251 = v7;

  v10 = *(a2 + 16);
  if (!v10)
  {
    v11 = MEMORY[0x277D84F90];
    v232 = MEMORY[0x277D84F90];
    v233 = MEMORY[0x277D84F90];
LABEL_70:
    if (a4)
    {
      v108 = objc_opt_self();
      v109 = swift_allocObject();
      *(v109 + 16) = v232;
      *&aBlock[32] = sub_213D1F590;
      *&aBlock[40] = v109;
      *aBlock = MEMORY[0x277D85DD0];
      *&aBlock[8] = 1107296256;
      *&aBlock[16] = sub_213CFF278;
      *&aBlock[24] = &block_descriptor_367;
      v110 = _Block_copy(aBlock);

      v111 = swift_allocObject();
      *(v111 + 16) = v233;
      *&aBlock[32] = sub_213D1F60C;
      *&aBlock[40] = v111;
      *aBlock = MEMORY[0x277D85DD0];
      *&aBlock[8] = 1107296256;
      *&aBlock[16] = sub_213D183BC;
      *&aBlock[24] = &block_descriptor_374;
      v112 = _Block_copy(aBlock);

      [v108 animateWithDuration:v110 animations:v112 completion:0.25];
      _Block_release(v112);
      _Block_release(v110);
    }

    v113 = v249;
    v114 = v249 + 8;
    v115 = 1 << *(v249 + 32);
    v116 = -1;
    if (v115 < 64)
    {
      v116 = ~(-1 << v115);
    }

    v117 = v116 & v249[8];
    v118 = (v115 + 63) >> 6;

    v119 = 0;
    v248 = v11;
    v234 = v118;
    while (v117)
    {
LABEL_82:
      v126 = __clz(__rbit64(v117)) | (v119 << 6);
      v127 = *(v113[6] + 8 * v126);
      v128 = (v113[7] + 96 * v126);
      v129 = v128[1];
      *aBlock = *v128;
      *&aBlock[16] = v129;
      v130 = v128[4];
      v131 = v128[5];
      v132 = v128[3];
      *&aBlock[32] = v128[2];
      *&aBlock[48] = v132;
      *&aBlock[64] = v130;
      *&aBlock[80] = v131;
      v243 = *&aBlock[16];
      v245 = *aBlock;
      v238 = v131;
      v241 = v132;
      v235 = v130;
      v236 = *&aBlock[32];
      v133 = v127;
      sub_213D1E6AC(aBlock, &v259);
      if (!v133)
      {
LABEL_90:

        *aBlock = MEMORY[0x277D84F90];
        v152 = 1 << *(v113 + 32);
        v153 = -1;
        if (v152 < 64)
        {
          v153 = ~(-1 << v152);
        }

        v154 = v153 & v113[8];
        v155 = (v152 + 63) >> 6;

        v156 = 0;
        while (v154)
        {
LABEL_98:
          v158 = __clz(__rbit64(v154));
          v154 &= v154 - 1;
          v159 = *(v113[6] + ((v156 << 9) | (8 * v158)));
          type metadata accessor for MapBridgingUserAnnotation();
          if (!swift_dynamicCastClass())
          {
            v160 = v159;
            sub_213D91DEC();
            sub_213D91E2C();
            sub_213D91E3C();
            sub_213D91DFC();
            v113 = v249;
          }
        }

        while (1)
        {
          v157 = v156 + 1;
          if (__OFADD__(v156, 1))
          {
            __break(1u);
            goto LABEL_137;
          }

          if (v157 >= v155)
          {
            break;
          }

          v154 = v114[v157];
          ++v156;
          if (v154)
          {
            v156 = v157;
            goto LABEL_98;
          }
        }

        v161 = *aBlock;
        if ((*aBlock & 0x8000000000000000) == 0 && (*aBlock & 0x4000000000000000) == 0)
        {

          sub_213D91F6C();
          sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);
          v162 = v161;
          goto LABEL_103;
        }

        goto LABEL_142;
      }

      *aBlock = v245;
      *&aBlock[16] = v243;
      *&aBlock[32] = v236;
      *&aBlock[48] = v241;
      *&aBlock[64] = v235;
      *&aBlock[80] = v238;
      v256[0] = v251;
      v134 = v251;

      v135 = swift_modifyAtReferenceWritableKeyPath();
      v137 = v136;
      v138 = sub_213CE22A8(v245);
      v140 = v139;

      if (v140)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v142 = *(v137 + 24);
        *&v255[0] = v142;
        *(v137 + 24) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_213D1CE38(&qword_27C8EB1F8, &qword_213D97250);
          v142 = *&v255[0];
        }

        sub_213D1B868(v138, v142);
        *(v137 + 24) = v142;
      }

      v135(&v259, 0);

      *&v255[0] = v134;
      v143 = v134;
      v144 = swift_modifyAtReferenceWritableKeyPath();
      v146 = v145;
      v147 = sub_213CE23A4(v133);
      if (v148)
      {
        v149 = v147;
        v150 = swift_isUniquelyReferenced_nonNull_native();
        v151 = *(v146 + 16);
        v252[0] = v151;
        *(v146 + 16) = 0x8000000000000000;
        if (!v150)
        {
          sub_213D1C5E4();
          v151 = v252[0];
        }

        v120 = (*(v151 + 56) + 96 * v149);
        v121 = v120[1];
        v259 = *v120;
        v260 = v121;
        v122 = v120[5];
        v124 = v120[2];
        v123 = v120[3];
        v263 = v120[4];
        v264 = v122;
        v261 = v124;
        v262 = v123;
        sub_213D1E764(&v259);
        sub_213D1B508(v149, v151);
        *(v146 + 16) = v151;
      }

      v117 &= v117 - 1;
      v144(v256, 0);

      sub_213D1E764(aBlock);
      v11 = v248;
      v113 = v249;
      v118 = v234;
    }

    while (1)
    {
      v125 = v119 + 1;
      if (__OFADD__(v119, 1))
      {
        break;
      }

      if (v125 >= v118)
      {
        goto LABEL_90;
      }

      v117 = v114[v125];
      ++v119;
      if (v117)
      {
        v119 = v125;
        goto LABEL_82;
      }
    }

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
    sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);

    v162 = sub_213D91EAC();

LABEL_103:

    *aBlock = a1;
    v163 = sub_213D17C74(v162, &protocolRef_MKOverlay);
    if (v163)
    {
      v164 = v163;

      v165 = off_28263B068;
      v166 = sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
      v165(v164, v166, &off_28263B040);
    }

    else
    {
      v167 = sub_213D17C74(v162, &protocolRef_MKAnnotation);

      if (!v167)
      {
LABEL_108:
        v170 = v11[2];
        if (!v170)
        {
          return v11;
        }

        v171 = 0;
        v246 = v170 - 1;
        v172 = 32;
        while (1)
        {
          v250 = v172;
          v173 = *(v11 + v172 + 32);
          v174 = *(v11 + v172);
          *&aBlock[16] = *(v11 + v172 + 16);
          *&aBlock[32] = v173;
          *aBlock = v174;
          v175 = *(v11 + v172 + 48);
          v176 = *(v11 + v172 + 64);
          v177 = *(v11 + v172 + 80);
          *&aBlock[96] = *(v11 + v172 + 96);
          *&aBlock[64] = v176;
          *&aBlock[80] = v177;
          *&aBlock[48] = v175;
          v179 = *&aBlock[8];
          v178 = *aBlock;
          v256[0] = v251;
          v11 = v251;
          sub_213CE2C28(aBlock, &v259, &qword_27C8ECC90, &qword_213D97240);

          v180 = v178;
          v181 = swift_modifyAtReferenceWritableKeyPath();
          v183 = v182;
          v184 = swift_isUniquelyReferenced_nonNull_native();
          *&v255[0] = *(v183 + 24);
          v185 = *&v255[0];
          *(v183 + 24) = 0x8000000000000000;
          v187 = sub_213CE22A8(v179);
          v188 = *(v185 + 16);
          v189 = (v186 & 1) == 0;
          v190 = v188 + v189;
          if (__OFADD__(v188, v189))
          {
            goto LABEL_138;
          }

          v191 = v186;
          if (*(v185 + 24) >= v190)
          {
            if (v184)
            {
              v194 = *&v255[0];
              if (v186)
              {
                goto LABEL_118;
              }
            }

            else
            {
              sub_213D1CE38(&qword_27C8EB1F8, &qword_213D97250);
              v194 = *&v255[0];
              if (v191)
              {
                goto LABEL_118;
              }
            }
          }

          else
          {
            sub_213D1AEB0(v190, v184, &qword_27C8EB1F8, &qword_213D97250);
            v192 = sub_213CE22A8(v179);
            if ((v191 & 1) != (v193 & 1))
            {
              goto LABEL_146;
            }

            v187 = v192;
            v194 = *&v255[0];
            if (v191)
            {
LABEL_118:
              v197 = v194[7];
              v198 = *(v197 + 8 * v187);
              *(v197 + 8 * v187) = v180;

              goto LABEL_119;
            }
          }

          v194[(v187 >> 6) + 8] |= 1 << v187;
          *(v194[6] + 8 * v187) = v179;
          *(v194[7] + 8 * v187) = v180;
          v195 = v194[2];
          v95 = __OFADD__(v195, 1);
          v196 = v195 + 1;
          if (v95)
          {
            goto LABEL_140;
          }

          v194[2] = v196;
LABEL_119:
          *(v183 + 24) = v194;
          v181(&v259, 0);

          *&v255[0] = v11;
          v199 = v11;
          v11 = v180;
          v200 = swift_modifyAtReferenceWritableKeyPath();
          v202 = v201;
          v203 = swift_isUniquelyReferenced_nonNull_native();
          v252[0] = *(v202 + 16);
          v204 = v252[0];
          *(v202 + 16) = 0x8000000000000000;
          v205 = sub_213CE23A4(v11);
          v207 = *(v204 + 16);
          v208 = (v206 & 1) == 0;
          v95 = __OFADD__(v207, v208);
          v209 = v207 + v208;
          if (v95)
          {
            goto LABEL_139;
          }

          v210 = v206;
          if (*(v204 + 24) < v209)
          {
            sub_213D1A16C(v209, v203);
            v205 = sub_213CE23A4(v11);
            if ((v210 & 1) != (v211 & 1))
            {
              goto LABEL_145;
            }

LABEL_124:
            if ((v210 & 1) == 0)
            {
              goto LABEL_129;
            }

            goto LABEL_125;
          }

          if (v203)
          {
            goto LABEL_124;
          }

          v222 = v205;
          sub_213D1C5E4();
          v205 = v222;
          if ((v210 & 1) == 0)
          {
LABEL_129:
            v212 = v252[0];
            *(v252[0] + 8 * (v205 >> 6) + 64) |= 1 << v205;
            *(v212[6] + 8 * v205) = v11;
            v223 = (v212[7] + 96 * v205);
            v224 = *&aBlock[24];
            *v223 = *&aBlock[8];
            v223[1] = v224;
            v225 = *&aBlock[40];
            v226 = *&aBlock[56];
            v227 = *&aBlock[88];
            v223[4] = *&aBlock[72];
            v223[5] = v227;
            v223[2] = v225;
            v223[3] = v226;
            v228 = v212[2];
            v95 = __OFADD__(v228, 1);
            v229 = v228 + 1;
            if (v95)
            {
              goto LABEL_141;
            }

            v212[2] = v229;
            goto LABEL_131;
          }

LABEL_125:
          v212 = v252[0];
          v213 = (*(v252[0] + 56) + 96 * v205);
          v214 = v213[1];
          v259 = *v213;
          v260 = v214;
          v215 = v213[2];
          v216 = v213[3];
          v217 = v213[5];
          v263 = v213[4];
          v264 = v217;
          v261 = v215;
          v262 = v216;
          v218 = *&aBlock[56];
          v219 = *&aBlock[88];
          v220 = *&aBlock[40];
          v213[4] = *&aBlock[72];
          v213[5] = v219;
          v213[2] = v220;
          v213[3] = v218;
          v221 = *&aBlock[24];
          *v213 = *&aBlock[8];
          v213[1] = v221;
          sub_213D1E764(&v259);

LABEL_131:
          *(v202 + 16) = v212;

          v200(v256, 0);

          if (v246 == v171)
          {
            goto LABEL_134;
          }

          ++v171;
          v11 = v248;
          v172 = v250 + 104;
          if (v171 >= v248[2])
          {
            __break(1u);
LABEL_134:
            v11 = v248;

            return v11;
          }
        }
      }

      v168 = off_28263B050;
      v169 = sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
      v168(v167, v169, &off_28263B040);
    }

    goto LABEL_108;
  }

  v11 = MEMORY[0x277D84F90];
  v12 = a2 + 40;
  v232 = MEMORY[0x277D84F90];
  v233 = MEMORY[0x277D84F90];
  while (1)
  {
    v13 = *(v12 + 40);
    v268 = *(v12 + 24);
    v269 = v13;
    v14 = *(v12 + 72);
    v270 = *(v12 + 56);
    v271 = v14;
    v15 = *(v12 + 8);
    v266 = *(v12 - 8);
    v267 = v15;
    v272 = *v12;
    v273 = *(v12 + 8);
    v256[0] = v251;
    v16 = v251;
    sub_213D1E6AC(&v266, aBlock);
    swift_getAtKeyPath();

    v17 = *(&v260 + 1);
    if (!*(*(&v260 + 1) + 16) || (v18 = sub_213CE22A8(v266), (v19 & 1) == 0))
    {

      goto LABEL_32;
    }

    v20 = *(*(v17 + 56) + 8 * v18);

    v258 = v16;
    v21 = v16;
    swift_getAtKeyPath();

    v22 = v257;
    if (!*(v257 + 16) || (v23 = sub_213CE23A4(v20), (v24 & 1) == 0))
    {

LABEL_24:

      goto LABEL_32;
    }

    v247 = v11;
    v25 = (*(v22 + 56) + 96 * v23);
    v26 = v25[1];
    *aBlock = *v25;
    *&aBlock[16] = v26;
    v27 = v25[5];
    v29 = v25[2];
    v28 = v25[3];
    *&aBlock[64] = v25[4];
    *&aBlock[80] = v27;
    *&aBlock[32] = v29;
    *&aBlock[48] = v28;
    sub_213D1E6AC(aBlock, &v259);

    v30 = v272;
    v31 = v273;
    v32 = *&aBlock[8];
    v33 = *&aBlock[16];
    if (v273 < 0)
    {
      if (*&aBlock[16] < 0)
      {
        sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);
        sub_213D1E7B8(v32, v33);
        sub_213D1E708(&v272, &v259);
        sub_213D1E7B8(v32, v33);
        sub_213D1E708(&v272, &v259);
        v53 = sub_213D91C5C();
        sub_213D1E6A0(v32, v33);
        sub_213D1E7C4(&v272);
        sub_213D1E6A0(v30, v31);
        sub_213D1E6A0(v32, v33);
        if (v53)
        {
          goto LABEL_11;
        }

LABEL_31:

        sub_213D1E764(aBlock);
        v11 = v247;
      }

      else
      {
        sub_213D1E7B8(*&aBlock[8], *&aBlock[16]);
LABEL_27:
        sub_213D1E708(&v272, &v259);
        sub_213D1E7B8(v32, v33);
        sub_213D1E708(&v272, &v259);

        sub_213D1E764(aBlock);
        sub_213D1E6A0(v32, v33);
        sub_213D1E7C4(&v272);
        sub_213D1E6A0(v30, v31);
        sub_213D1E6A0(v32, v33);
LABEL_29:
        v11 = v247;
      }

LABEL_32:
      v54 = v272;
      if (SHIBYTE(v273) < 0)
      {
        sub_213D1E708(&v272, aBlock);
LABEL_40:
        *&aBlock[32] = v268;
        *&aBlock[48] = v269;
        *&aBlock[64] = v270;
        *&aBlock[80] = v271;
        *aBlock = v266;
        *&aBlock[16] = v267;
        sub_213D1E6AC(&v266, &v259);
        v59 = v54;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_213D706B8(0, v11[2] + 1, 1, v11);
        }

        v61 = v11[2];
        v60 = v11[3];
        if (v61 >= v60 >> 1)
        {
          v11 = sub_213D706B8((v60 > 1), v61 + 1, 1, v11);
        }

        sub_213D1E764(&v266);
        v11[2] = v61 + 1;
        v62 = &v11[13 * v61];
        v62[4] = v59;
        v63 = *&aBlock[32];
        v64 = *&aBlock[48];
        v65 = *&aBlock[64];
        *(v62 + 15) = *&aBlock[80];
        *(v62 + 13) = v65;
        *(v62 + 11) = v64;
        *(v62 + 9) = v63;
        v66 = *aBlock;
        *(v62 + 7) = *&aBlock[16];
        *(v62 + 5) = v66;
        goto LABEL_45;
      }

      v55 = v273;
      if ((v273 & 0x100) != 0)
      {
        sub_213CE2B34(0, &qword_27C8EB1F0, 0x277CD4DF0);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v57 = v54[2];
        if (v55)
        {
LABEL_35:
          v58 = [ObjCClassFromMetadata polylineWithCoordinates:v54 + 4 count:v57];
LABEL_39:
          v54 = v58;
          goto LABEL_40;
        }
      }

      else
      {
        ObjCClassFromMetadata = objc_opt_self();
        v57 = v54[2];
        if (v55)
        {
          goto LABEL_35;
        }
      }

      v58 = [ObjCClassFromMetadata polylineWithPoints:v54 + 4 count:v57];
      goto LABEL_39;
    }

    sub_213D1E7B8(*&aBlock[8], *&aBlock[16]);
    if (v33 < 0)
    {
      goto LABEL_27;
    }

    sub_213D1E708(&v272, &v259);
    sub_213D1E7B8(v32, v33);
    sub_213D1E708(&v272, &v259);
    v34 = sub_213D6798C(v30, v31 & 1, v32, v33 & 1);
    sub_213D1E6A0(v32, v33);
    sub_213D1E7C4(&v272);
    sub_213D1E6A0(v30, v31);
    sub_213D1E6A0(v32, v33);
    if (!v34)
    {

      sub_213D1E764(aBlock);
      goto LABEL_29;
    }

    if (((v33 ^ v31) & 0x100) != 0)
    {
      goto LABEL_31;
    }

LABEL_11:
    v11 = v247;
    if (*(&v271 + 1) != *&aBlock[88])
    {
      sub_213D1E764(aBlock);
      goto LABEL_24;
    }

    v256[3] = sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
    v256[4] = &off_28263B040;
    v256[0] = a1;
    sub_213D1E22C(v256, v255);
    sub_213D1E22C(v255, v252);
    v35 = swift_allocObject();
    sub_213D1E2DC(v255, v35 + 16);
    *(v35 + 56) = v20;
    v36 = v269;
    *(v35 + 96) = v268;
    *(v35 + 112) = v36;
    v37 = v271;
    *(v35 + 128) = v270;
    *(v35 + 144) = v37;
    v38 = v267;
    *(v35 + 64) = v266;
    *(v35 + 80) = v38;
    if (a4)
    {
      sub_213D1E6AC(&v266, &v259);
      v39 = v20;
      v40 = a1;

      __swift_destroy_boxed_opaque_existential_1(v252);
      v41 = swift_allocObject();
      v41[2] = sub_213D1F510;
      v41[3] = v35;
      v41[4] = a4;
      v42 = swift_allocObject();
      *(v42 + 16) = sub_213D1F510;
      *(v42 + 24) = v35;

      __swift_destroy_boxed_opaque_existential_1(v256);
      v43 = swift_allocObject();
      *(v43 + 16) = sub_213D1F610;
      *(v43 + 24) = v41;
      swift_retain_n();
      v44 = v21;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v232 = sub_213D6FE48(0, v232[2] + 1, 1, v232);
      }

      v46 = v232[2];
      v45 = v232[3];
      if (v46 >= v45 >> 1)
      {
        v232 = sub_213D6FE48((v45 > 1), v46 + 1, 1, v232);
      }

      v232[2] = v46 + 1;
      v47 = &v232[2 * v46];
      v47[4] = sub_213D1F608;
      v47[5] = v43;
      v48 = swift_allocObject();
      *(v48 + 16) = sub_213D1F584;
      *(v48 + 24) = v42;
      swift_retain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v233 = sub_213D6FE48(0, v233[2] + 1, 1, v233);
      }

      v50 = v233[2];
      v49 = v233[3];
      if (v50 >= v49 >> 1)
      {
        v233 = sub_213D6FE48((v49 > 1), v50 + 1, 1, v233);
      }

      v233[2] = v50 + 1;
      v51 = &v233[2 * v50];
      v51[4] = sub_213D1F608;
      v51[5] = v48;
      v237 = sub_213D1F584;
      v239 = sub_213D1F610;
      v52 = v249;
      v21 = v44;
    }

    else
    {
      v67 = v253;
      v68 = v254;
      __swift_project_boxed_opaque_existential_1(v252, v253);
      v240 = *(v68 + 48);
      sub_213D1E6AC(&v266, &v259);
      v69 = v20;
      v70 = a1;
      v71 = v240(v69, v67, v68);
      if (v71)
      {
        v72 = v71;
        objc_opt_self();
        v73 = swift_dynamicCastObjCClass();
        if (v73)
        {
          v261 = v268;
          v262 = v269;
          v263 = v270;
          v264 = v271;
          v259 = v266;
          v260 = v267;
          v74 = v73;
          sub_213D28034(v73);
          [v74 setNeedsDisplay];
        }

        else
        {
        }
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_1(v252);
      __swift_destroy_boxed_opaque_existential_1(v256);
      v239 = 0;
      v41 = 0;
      v237 = 0;
      v42 = 0;
      v52 = v249;
    }

    v75 = sub_213CE23A4(v20);
    v242 = v42;
    if (v76)
    {
      v77 = v75;
      v78 = swift_isUniquelyReferenced_nonNull_native();
      v256[0] = v52;
      if (!v78)
      {
        sub_213D1C5E4();
        v52 = v256[0];
      }

      v79 = (v52[7] + 96 * v77);
      v80 = v79[1];
      v259 = *v79;
      v260 = v80;
      v81 = v79[5];
      v83 = v79[2];
      v82 = v79[3];
      v263 = v79[4];
      v264 = v81;
      v261 = v83;
      v262 = v82;
      sub_213D1E764(&v259);
      v249 = v52;
      sub_213D1B508(v77, v52);
    }

    v256[0] = v21;
    v84 = v21;
    sub_213D1E6AC(&v266, &v259);
    v85 = v20;
    v86 = swift_modifyAtReferenceWritableKeyPath();
    v88 = v87;
    v89 = swift_isUniquelyReferenced_nonNull_native();
    *&v255[0] = *(v88 + 16);
    v90 = *&v255[0];
    *(v88 + 16) = 0x8000000000000000;
    v91 = sub_213CE23A4(v85);
    v93 = *(v90 + 16);
    v94 = (v92 & 1) == 0;
    v95 = __OFADD__(v93, v94);
    v96 = v93 + v94;
    if (v95)
    {
      break;
    }

    v97 = v92;
    if (*(v90 + 24) >= v96)
    {
      if ((v89 & 1) == 0)
      {
        v107 = v91;
        sub_213D1C5E4();
        v91 = v107;
      }
    }

    else
    {
      sub_213D1A16C(v96, v89);
      v91 = sub_213CE23A4(v85);
      if ((v97 & 1) != (v98 & 1))
      {
        goto LABEL_145;
      }
    }

    v99 = *&v255[0];
    if (v97)
    {
      sub_213D1E828(&v266, *(*&v255[0] + 56) + 96 * v91);
    }

    else
    {
      *(*&v255[0] + 8 * (v91 >> 6) + 64) |= 1 << v91;
      *(v99[6] + 8 * v91) = v85;
      v100 = (v99[7] + 96 * v91);
      v101 = v267;
      *v100 = v266;
      v100[1] = v101;
      v102 = v268;
      v103 = v269;
      v104 = v271;
      v100[4] = v270;
      v100[5] = v104;
      v100[2] = v102;
      v100[3] = v103;
      v105 = v99[2];
      v95 = __OFADD__(v105, 1);
      v106 = v105 + 1;
      if (v95)
      {
        goto LABEL_144;
      }

      v99[2] = v106;
    }

    *(v88 + 16) = v99;

    v86(&v259, 0);
    sub_213D1E764(aBlock);

    sub_213CCE520(v237, v242);
    sub_213CCE520(v239, v41);

    sub_213D1E764(&v266);
    v11 = v247;
LABEL_45:
    v12 += 96;
    if (!--v10)
    {
      goto LABEL_70;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  sub_213CE2B34(0, &qword_27C8EB6C0, 0x277CD4F28);
  sub_213D91F8C();
  __break(1u);
LABEL_146:
  result = sub_213D91F8C();
  __break(1u);
  return result;
}

void *sub_213D0E7A4(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v284 = a4;
  v278 = a1;
  v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB208, &unk_213D97260);
  v304 = *(v296 - 8);
  MEMORY[0x28223BE20](v296);
  v306 = (&v268 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v303 = (&v268 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB680, &unk_213D97FF0);
  MEMORY[0x28223BE20](v11 - 8);
  v269 = &v268 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v277 = &v268 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v268 - v16;
  MEMORY[0x28223BE20](v18);
  v289 = &v268 - v19;
  MEMORY[0x28223BE20](v20);
  v292 = &v268 - v21;
  MEMORY[0x28223BE20](v22);
  v294 = &v268 - v23;
  MEMORY[0x28223BE20](v24);
  v298 = &v268 - v25;
  v308 = type metadata accessor for UserAnnotationViewModel(0);
  v26 = *(v308 - 8);
  MEMORY[0x28223BE20](v308);
  v274 = &v268 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v285 = &v268 - v29;
  MEMORY[0x28223BE20](v30);
  v275 = &v268 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = (&v268 - v33);
  MEMORY[0x28223BE20](v35);
  v293 = &v268 - v36;
  MEMORY[0x28223BE20](v37);
  v307 = (&v268 - v38);
  v276 = v39;
  MEMORY[0x28223BE20](v40);
  v297 = &v268 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB220, &qword_213D97280);
  MEMORY[0x28223BE20](v42 - 8);
  v301 = &v268 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v300 = (&v268 - v45);
  *&v314 = v5;
  v46 = v5;
  v310 = a5;
  v47 = swift_readAtKeyPath();
  v49 = *(v48 + 16);

  v47(&aBlock, 0);
  v309 = v46;

  v50 = *(a2 + 16);
  v305 = v26;
  if (!v50)
  {
    v53 = MEMORY[0x277D84F90];
    v287 = MEMORY[0x277D84F90];
    v288 = MEMORY[0x277D84F90];
LABEL_51:
    v295 = v53;
    if (v284)
    {
      v148 = objc_opt_self();
      v149 = swift_allocObject();
      *(v149 + 16) = v287;
      v319 = sub_213D1F590;
      v320 = v149;
      aBlock = MEMORY[0x277D85DD0];
      v316 = 1107296256;
      v317 = sub_213CFF278;
      v318 = &block_descriptor_401;
      v150 = _Block_copy(&aBlock);

      v151 = swift_allocObject();
      *(v151 + 16) = v288;
      v319 = sub_213D1F60C;
      v320 = v151;
      aBlock = MEMORY[0x277D85DD0];
      v316 = 1107296256;
      v317 = sub_213D183BC;
      v318 = &block_descriptor_408;
      v152 = _Block_copy(&aBlock);

      [v148 animateWithDuration:v150 animations:v152 completion:0.25];
      _Block_release(v152);
      _Block_release(v150);
    }

    v153 = v49 + 64;
    v154 = 1 << v49[32];
    v155 = -1;
    if (v154 < 64)
    {
      v155 = ~(-1 << v154);
    }

    v156 = v155 & *(v49 + 8);
    v157 = (v154 + 63) >> 6;
    v306 = (v305 + 56);

    v127 = 0;
    v158 = v301;
    v159 = v300;
    v299 = v49 + 64;
    v302 = v49;
    while (v156)
    {
      v162 = v127;
LABEL_68:
      v165 = __clz(__rbit64(v156));
      v156 &= v156 - 1;
      v166 = v165 | (v162 << 6);
      v167 = *(*(v49 + 6) + 8 * v166);
      v168 = v297;
      sub_213D1E9F8(*(v49 + 7) + *(v305 + 72) * v166, v297, type metadata accessor for UserAnnotationViewModel);
      v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB228, &qword_213D97288);
      v170 = *(v169 + 48);
      *v158 = v167;
      sub_213D1E884(v168, v158 + v170, type metadata accessor for UserAnnotationViewModel);
      (*(*(v169 - 8) + 56))(v158, 0, 1, v169);
      v171 = v167;
LABEL_69:
      sub_213CED608(v158, v159, &qword_27C8EB220, &qword_213D97280);
      v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB228, &qword_213D97288);
      if ((*(*(v172 - 8) + 48))(v159, 1, v172) == 1)
      {
        v197 = v302;

        v198 = 0;
        v199 = 1 << v197[32];
        v200 = -1;
        if (v199 < 64)
        {
          v200 = ~(-1 << v199);
        }

        v201 = v200 & *(v197 + 8);
        v202 = (v199 + 63) >> 6;
        v127 = v296;
        while (v201)
        {
LABEL_82:
          v201 &= v201 - 1;
        }

        while (1)
        {
          v203 = v198 + 1;
          if (__OFADD__(v198, 1))
          {
            goto LABEL_130;
          }

          if (v203 >= v202)
          {

            if (MEMORY[0x277D84F90] >> 62)
            {
              goto LABEL_137;
            }

            v204 = MEMORY[0x277D84F90];
            sub_213D91F0C();
            goto LABEL_90;
          }

          v201 = *&v299[8 * v203];
          ++v198;
          if (v201)
          {
            v198 = v203;
            goto LABEL_82;
          }
        }
      }

      v173 = *v159;
      v174 = v159 + *(v172 + 48);
      v175 = v307;
      sub_213D1E884(v174, v307, type metadata accessor for UserAnnotationViewModel);
      v176 = *v175;
      *&v314 = v309;
      v177 = v309;
      v178 = swift_modifyAtReferenceWritableKeyPath();
      v180 = v179;
      v181 = sub_213CE22A8(v176);
      v153 = v299;
      if (v182)
      {
        v183 = v181;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v185 = *(v180 + 24);
        v311 = v185;
        *(v180 + 24) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_213D1CE38(&qword_27C8EB230, &qword_213D97290);
          v185 = v311;
        }

        sub_213D1B868(v183, v185);
        *(v180 + 24) = v185;
      }

      v178(&aBlock, 0);

      *&v314 = v177;
      v186 = v177;
      v187 = swift_modifyAtReferenceWritableKeyPath();
      v189 = v188;
      v190 = sub_213CE23F4(v173);
      if (v191)
      {
        v192 = v190;
        v193 = swift_isUniquelyReferenced_nonNull_native();
        v195 = *(v189 + 16);
        v311 = v195;
        *(v189 + 16) = 0x8000000000000000;
        if (!v193)
        {
          sub_213D1C790(v194);
          v195 = v311;
        }

        v161 = v298;
        sub_213D1E884(*(v195 + 56) + *(v305 + 72) * v192, v298, type metadata accessor for UserAnnotationViewModel);
        sub_213D1B698(v192, v195, type metadata accessor for UserAnnotationViewModel);
        *(v189 + 16) = v195;

        v160 = 0;
      }

      else
      {
        v160 = 1;
        v161 = v298;
      }

      (*v306)(v161, v160, 1, v308);
      sub_213CD8330(v161, &qword_27C8EB680, &unk_213D97FF0);
      v187(&aBlock, 0);

      sub_213D1F330(v307, type metadata accessor for UserAnnotationViewModel);
      v49 = v302;
      v158 = v301;
      v159 = v300;
    }

    if (v157 <= v127 + 1)
    {
      v163 = v127 + 1;
    }

    else
    {
      v163 = v157;
    }

    v164 = (v163 - 1);
    while (1)
    {
      v162 = v127 + 1;
      if (__OFADD__(v127, 1))
      {
        break;
      }

      if (v162 >= v157)
      {
        v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB228, &qword_213D97288);
        (*(*(v196 - 8) + 56))(v158, 1, 1, v196);
        v156 = 0;
        v127 = v164;
        goto LABEL_69;
      }

      v156 = *&v153[8 * v162];
      v127 = (v127 + 1);
      if (v156)
      {
        v127 = v162;
        goto LABEL_68;
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
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);
    v204 = sub_213D91EAC();
LABEL_90:
    v205 = v295;
    aBlock = v278;
    v206 = sub_213D17C74(v204, &protocolRef_MKOverlay);
    if (v206)
    {
      v207 = v206;

      v208 = off_28263B068;
      v209 = sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
      v208(v207, v209, &off_28263B040);
    }

    else
    {
      v210 = sub_213D17C74(v204, &protocolRef_MKAnnotation);

      if (!v210)
      {
LABEL_95:
        v307 = v205[2];
        if (!v307)
        {
          return v205;
        }

        v213 = *(v127 + 12);
        v302 = v205 + ((*(v304 + 80) + 32) & ~*(v304 + 80));
        v301 = (v305 + 48);

        v214 = 0;
        while (1)
        {
          if (v214 >= v205[2])
          {
            goto LABEL_131;
          }

          v217 = v303;
          sub_213CE2C28(&v302[*(v304 + 72) * v214], v303, &qword_27C8EB208, &unk_213D97260);
          v218 = *v217;
          v219 = v213;
          v220 = *(v217 + v213);
          *&v314 = v309;
          v127 = v309;

          v221 = v218;
          v222 = swift_modifyAtReferenceWritableKeyPath();
          v224 = v223;
          v225 = swift_isUniquelyReferenced_nonNull_native();
          v311 = *(v224 + 24);
          v226 = v311;
          *(v224 + 24) = 0x8000000000000000;
          v227 = sub_213CE22A8(v220);
          v229 = v226[2];
          v230 = (v228 & 1) == 0;
          v139 = __OFADD__(v229, v230);
          v231 = v229 + v230;
          if (v139)
          {
            goto LABEL_132;
          }

          v232 = v228;
          if (v226[3] >= v231)
          {
            if ((v225 & 1) == 0)
            {
              v263 = v227;
              sub_213D1CE38(&qword_27C8EB230, &qword_213D97290);
              v227 = v263;
            }
          }

          else
          {
            sub_213D1AEB0(v231, v225, &qword_27C8EB230, &qword_213D97290);
            v227 = sub_213CE22A8(v220);
            if ((v232 & 1) != (v233 & 1))
            {
              goto LABEL_139;
            }
          }

          v213 = v219;
          v234 = v311;
          if (v232)
          {
            v235 = v311[7];
            v236 = *(v235 + 8 * v227);
            *(v235 + 8 * v227) = v221;
          }

          else
          {
            v311[(v227 >> 6) + 8] |= 1 << v227;
            *(v234[6] + 8 * v227) = v220;
            *(v234[7] + 8 * v227) = v221;
            v237 = v234[2];
            v139 = __OFADD__(v237, 1);
            v238 = v237 + 1;
            if (v139)
            {
              goto LABEL_133;
            }

            v234[2] = v238;
          }

          *(v224 + 24) = v234;
          v222(&aBlock, 0);

          v239 = v294;
          sub_213D1E884(v303 + v219, v294, type metadata accessor for UserAnnotationViewModel);
          v240 = *v306;
          v241 = v308;
          (*v306)(v239, 0, 1, v308);
          *&v314 = v127;
          v242 = v127;
          v243 = v221;
          v244 = swift_modifyAtReferenceWritableKeyPath();
          v127 = v245;
          if ((*v301)(v239, 1, v241) == 1)
          {
            sub_213CD8330(v239, &qword_27C8EB680, &unk_213D97FF0);
            v246 = sub_213CE23F4(v243);
            if (v247)
            {
              v248 = v246;
              v249 = swift_isUniquelyReferenced_nonNull_native();
              v251 = v127[2];
              v311 = v251;
              v127[2] = 0x8000000000000000;
              if (!v249)
              {
                sub_213D1C790(v250);
                v251 = v311;
              }

              v216 = v292;
              sub_213D1E884(*(v251 + 56) + *(v305 + 72) * v248, v292, type metadata accessor for UserAnnotationViewModel);
              sub_213D1B698(v248, v251, type metadata accessor for UserAnnotationViewModel);

              v127[2] = v251;

              v215 = 0;
            }

            else
            {

              v215 = 1;
              v216 = v292;
            }

            v240(v216, v215, 1, v308);
            sub_213CD8330(v216, &qword_27C8EB680, &unk_213D97FF0);
            goto LABEL_99;
          }

          sub_213D1E884(v239, v293, type metadata accessor for UserAnnotationViewModel);
          v252 = swift_isUniquelyReferenced_nonNull_native();
          v311 = v127[2];
          v253 = v311;
          v127[2] = 0x8000000000000000;
          v254 = sub_213CE23F4(v243);
          v257 = v253[2];
          v258 = (v255 & 1) == 0;
          v139 = __OFADD__(v257, v258);
          v259 = v257 + v258;
          if (v139)
          {
            goto LABEL_134;
          }

          v260 = v255;
          if (v253[3] < v259)
          {
            break;
          }

          if (v252)
          {
            goto LABEL_121;
          }

          v264 = v254;
          sub_213D1C790(v256);
          v254 = v264;
          v262 = v311;
          if ((v260 & 1) == 0)
          {
LABEL_124:
            v262[(v254 >> 6) + 8] |= 1 << v254;
            *(v262[6] + 8 * v254) = v243;
            sub_213D1E884(v293, v262[7] + *(v305 + 72) * v254, type metadata accessor for UserAnnotationViewModel);
            v265 = v262[2];
            v139 = __OFADD__(v265, 1);
            v266 = v265 + 1;
            if (v139)
            {
              goto LABEL_135;
            }

            v262[2] = v266;
            goto LABEL_126;
          }

LABEL_122:
          sub_213D1EA60(v293, v262[7] + *(v305 + 72) * v254, type metadata accessor for UserAnnotationViewModel);

LABEL_126:
          v127[2] = v262;

LABEL_99:
          v214 = (v214 + 1);
          v244(&aBlock, 0);

          v205 = v295;
          if (v307 == v214)
          {

            return v205;
          }
        }

        sub_213D1A4D8(v259, v252, v256);
        v254 = sub_213CE23F4(v243);
        if ((v260 & 1) != (v261 & 1))
        {
          goto LABEL_140;
        }

LABEL_121:
        v262 = v311;
        if ((v260 & 1) == 0)
        {
          goto LABEL_124;
        }

        goto LABEL_122;
      }

      v211 = off_28263B050;
      v212 = sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
      v211(v210, v212, &off_28263B040);
    }

    v127 = v296;
    goto LABEL_95;
  }

  v273 = v17;
  v51 = *(v26 + 80);
  v52 = a2 + ((v51 + 32) & ~v51);
  v291 = (v26 + 56);
  v299 = *(v26 + 72);
  v272 = v51;
  v271 = (v51 + 64) & ~v51;
  v270 = (v26 + 48);
  v53 = MEMORY[0x277D84F90];
  v287 = MEMORY[0x277D84F90];
  v288 = MEMORY[0x277D84F90];
  v286 = v34;
  while (1)
  {
    sub_213D1E9F8(v52, v34, type metadata accessor for UserAnnotationViewModel);
    v58 = *v34;
    *&v314 = v309;
    v59 = v309;
    swift_getAtKeyPath();

    v60 = v318;
    if (!v318[2] || (v61 = sub_213CE22A8(v58), (v62 & 1) == 0))
    {

LABEL_22:
      v94 = [objc_allocWithZone(type metadata accessor for MapBridgingUserAnnotation()) init];
      v95 = *(v296 + 48);
      v96 = v306;
      *v306 = v94;
      sub_213D1E9F8(v34, v96 + v95, type metadata accessor for UserAnnotationViewModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v53 = sub_213D70808(0, v53[2] + 1, 1, v53);
      }

      v98 = v53[2];
      v97 = v53[3];
      if (v98 >= v97 >> 1)
      {
        v53 = sub_213D70808((v97 > 1), v98 + 1, 1, v53);
      }

      sub_213D1F330(v34, type metadata accessor for UserAnnotationViewModel);
      v53[2] = v98 + 1;
      sub_213CED608(v306, v53 + ((*(v304 + 80) + 32) & ~*(v304 + 80)) + *(v304 + 72) * v98, &qword_27C8EB208, &unk_213D97260);
      goto LABEL_5;
    }

    v63 = *(v60[7] + 8 * v61);

    *&v314 = v59;
    v64 = v59;
    swift_getAtKeyPath();

    v65 = v317;
    if (!v317[2] || (v66 = sub_213CE23F4(v63), (v67 & 1) == 0))
    {

      v93 = v289;
      (*v291)(v289, 1, 1, v308);
      sub_213CD8330(v93, &qword_27C8EB680, &unk_213D97FF0);
      goto LABEL_22;
    }

    v283 = v64;
    v68 = v65[7] + v66 * v299;
    v290 = v63;
    v69 = v289;
    sub_213D1E9F8(v68, v289, type metadata accessor for UserAnnotationViewModel);

    v282 = *v291;
    v282(v69, 0, 1, v308);
    sub_213CD8330(v69, &qword_27C8EB680, &unk_213D97FF0);
    v318 = sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
    v319 = &off_28263B040;
    v70 = v278;
    aBlock = v278;
    sub_213D1E22C(&aBlock, &v314);
    v71 = v34;
    v72 = v290;
    v73 = v275;
    sub_213D1E9F8(v71, v275, type metadata accessor for UserAnnotationViewModel);
    sub_213D1E22C(&v314, &v311);
    v74 = v285;
    sub_213D1E9F8(v73, v285, type metadata accessor for UserAnnotationViewModel);
    v75 = v271;
    v76 = swift_allocObject();
    sub_213D1E2DC(&v314, v76 + 16);
    *(v76 + 56) = v72;
    sub_213D1E884(v73, v76 + v75, type metadata accessor for UserAnnotationViewModel);
    v77 = v284;
    if (v284)
    {
      v78 = v72;
      v79 = v70;

      sub_213D1F330(v74, type metadata accessor for UserAnnotationViewModel);
      __swift_destroy_boxed_opaque_existential_1(&v311);
      v80 = swift_allocObject();
      v80[2] = sub_213D1F5FC;
      v80[3] = v76;
      v80[4] = v77;
      v81 = swift_allocObject();
      *(v81 + 16) = sub_213D1F5FC;
      *(v81 + 24) = v76;

      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v82 = swift_allocObject();
      *(v82 + 16) = sub_213D1F610;
      *(v82 + 24) = v80;
      swift_retain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v287 = sub_213D6FE48(0, v287[2] + 1, 1, v287);
      }

      v84 = v287[2];
      v83 = v287[3];
      v85 = v290;
      if (v84 >= v83 >> 1)
      {
        v287 = sub_213D6FE48((v83 > 1), v84 + 1, 1, v287);
      }

      v86 = v287;
      v287[2] = v84 + 1;
      v87 = &v86[2 * v84];
      v87[4] = sub_213D1F608;
      v87[5] = v82;
      v88 = swift_allocObject();
      *(v88 + 16) = sub_213D1F584;
      *(v88 + 24) = v81;
      swift_retain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v288 = sub_213D6FE48(0, v288[2] + 1, 1, v288);
      }

      v90 = v288[2];
      v89 = v288[3];
      if (v90 >= v89 >> 1)
      {
        v288 = sub_213D6FE48((v89 > 1), v90 + 1, 1, v288);
      }

      v91 = v288;
      v288[2] = v90 + 1;
      v92 = &v91[2 * v90];
      v92[4] = sub_213D1F608;
      v92[5] = v88;
      v279 = sub_213D1F610;
      v281 = sub_213D1F584;
    }

    else
    {
      v302 = v49;
      v295 = v53;
      v99 = v312;
      v100 = v313;
      __swift_project_boxed_opaque_existential_1(&v311, v312);
      v281 = *(v100 + 24);
      v101 = v72;
      v102 = v70;
      v103 = (v281)(v101, v99, v100);
      if (v103)
      {
        v104 = v103;
        type metadata accessor for SwiftUIAnnotationView();
        v105 = swift_dynamicCastClass();
        v49 = v302;
        v106 = v285;
        if (v105)
        {
          v107 = *(v285 + 24);
          v108 = *(v285 + 32);
          v109 = &v105[OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_contentAnchorPoint];
          *v109 = v107;
          v109[1] = v108;
          v110 = v105;
          [v105 frame];
          v113 = v110;
          v106 = v285;
          [v113 setCenterOffset_];
        }

        v53 = v295;
      }

      else
      {

        v53 = v295;
        v49 = v302;
        v106 = v285;
      }

      v85 = v290;
      sub_213D1F330(v106, type metadata accessor for UserAnnotationViewModel);
      __swift_destroy_boxed_opaque_existential_1(&v311);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v281 = 0;
      v81 = 0;
      v279 = 0;
      v80 = 0;
    }

    v114 = sub_213CE23F4(v85);
    v280 = v80;
    v295 = v81;
    if (v115)
    {
      v116 = v114;
      v117 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v49;
      v119 = v277;
      if (!v117)
      {
        sub_213D1C790(v118);
        v119 = v277;
        v49 = aBlock;
      }

      v120 = v273;
      sub_213D1E884(*(v49 + 7) + v116 * v299, v273, type metadata accessor for UserAnnotationViewModel);
      sub_213D1B698(v116, v49, type metadata accessor for UserAnnotationViewModel);
      v121 = 0;
    }

    else
    {
      v121 = 1;
      v119 = v277;
      v120 = v273;
    }

    v122 = v308;
    v123 = v282;
    v282(v120, v121, 1, v308);
    sub_213CD8330(v120, &qword_27C8EB680, &unk_213D97FF0);
    sub_213D1E9F8(v286, v119, type metadata accessor for UserAnnotationViewModel);
    v123(v119, 0, 1, v122);
    *&v314 = v283;
    v124 = v283;
    v302 = v290;
    v125 = swift_modifyAtReferenceWritableKeyPath();
    v127 = v126;
    v128 = (*v270)(v119, 1, v122);
    v290 = v125;
    if (v128 != 1)
    {
      break;
    }

    sub_213CD8330(v119, &qword_27C8EB680, &unk_213D97FF0);
    v54 = v269;
    v55 = v302;
    sub_213D18B10(v302, v269);

    sub_213CD8330(v54, &qword_27C8EB680, &unk_213D97FF0);
    v34 = v286;
    v56 = v295;
LABEL_4:
    v57 = v279;
    (v290)(&aBlock, 0);

    sub_213CCE520(v281, v56);
    sub_213CCE520(v57, v280);

    sub_213D1F330(v34, type metadata accessor for UserAnnotationViewModel);
LABEL_5:
    v52 += v299;
    if (!--v50)
    {
      goto LABEL_51;
    }
  }

  sub_213D1E884(v119, v274, type metadata accessor for UserAnnotationViewModel);
  v129 = swift_isUniquelyReferenced_nonNull_native();
  v130 = v302;
  v131 = v129;
  v311 = v127[2];
  v132 = v311;
  v127[2] = 0x8000000000000000;
  v133 = v130;
  v134 = sub_213CE23F4(v130);
  v137 = v132[2];
  v138 = (v135 & 1) == 0;
  v139 = __OFADD__(v137, v138);
  v140 = v137 + v138;
  if (v139)
  {
    goto LABEL_136;
  }

  v141 = v135;
  v142 = v132[3];
  v283 = v127;
  if (v142 >= v140)
  {
    v34 = v286;
    if ((v131 & 1) == 0)
    {
      v147 = v134;
      sub_213D1C790(v136);
      v134 = v147;
    }

    v56 = v295;
    v55 = v133;
    v144 = v311;
    if ((v141 & 1) == 0)
    {
      goto LABEL_43;
    }

LABEL_48:
    sub_213D1EA60(v274, v144[7] + v134 * v299, type metadata accessor for UserAnnotationViewModel);

    goto LABEL_49;
  }

  sub_213D1A4D8(v140, v131, v136);
  v55 = v133;
  v134 = sub_213CE23F4(v133);
  v34 = v286;
  if ((v141 & 1) != (v143 & 1))
  {
    goto LABEL_140;
  }

  v56 = v295;
  v144 = v311;
  if (v141)
  {
    goto LABEL_48;
  }

LABEL_43:
  v144[(v134 >> 6) + 8] |= 1 << v134;
  *(v144[6] + 8 * v134) = v55;
  sub_213D1E884(v274, v144[7] + v134 * v299, type metadata accessor for UserAnnotationViewModel);
  v145 = v144[2];
  v139 = __OFADD__(v145, 1);
  v146 = v145 + 1;
  if (!v139)
  {
    v144[2] = v146;
LABEL_49:
    v283[2] = v144;

    goto LABEL_4;
  }

  __break(1u);
LABEL_139:
  sub_213D91F8C();
  __break(1u);
LABEL_140:
  type metadata accessor for MapBridgingUserAnnotation();
  result = sub_213D91F8C();
  __break(1u);
  return result;
}