void LNActionMetadata.init(from:bundleMetadataVersion:bundleURL:effectiveBundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_260();
  a19 = v20;
  a20 = v21;
  v274 = v23;
  v275 = v22;
  v262 = v24;
  v26 = v25;
  v27 = _s14CodableWrapperVMa(0);
  v28 = OUTLINED_FUNCTION_45(v27);
  v270 = v29;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_42();
  v32 = (v30 - v31);
  MEMORY[0x1EEE9AC00](v33);
  v34 = OUTLINED_FUNCTION_371();
  v35 = type metadata accessor for LNActionMetadata.CodableWrapper(v34);
  v39 = v35;
  v40 = *(v26 + v35[22]);
  v279 = v35;
  v280[0] = v26;
  if (v40 || (v40 = *(v26 + v35[21])) != 0)
  {
  }

  else
  {
    v228 = 0;
    v229 = *(v26 + v35[37]);
    v278 = *(v229 + 16);
    v40 = MEMORY[0x1E69E7CC8];
    while (v278 != v228)
    {
      if (v228 >= *(v229 + 16))
      {
        goto LABEL_127;
      }

      v230 = *(v229 + 32 + 8 * v228);
      swift_isUniquelyReferenced_nonNull_native();
      *&v281 = v40;
      sub_18EF952E4(v230);
      if (__OFADD__(v40[2], (v36 & 1) == 0))
      {
        goto LABEL_128;
      }

      v232 = v231;
      v233 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7320, &qword_18F09BD50);
      if (sub_18F09417C())
      {
        sub_18EF952E4(v230);
        if ((v233 & 1) != (v36 & 1))
        {
          goto LABEL_131;
        }

        v232 = v234;
      }

      v40 = v281;
      if (v233)
      {
        v235 = *(v281 + 56) + 40 * v232;
        v236 = *v235;
        v237 = *(v235 + 8);
        v238 = *(v235 + 16);
        v239 = *(v235 + 24);
        *v235 = 0u;
        *(v235 + 16) = 0u;
        v240 = *(v235 + 32);
        *(v235 + 32) = 8;
        sub_18EFDEB74(v236, v237, v238, v239, v240);
      }

      else
      {
        *(v281 + 8 * (v232 >> 6) + 64) |= 1 << v232;
        *(v40[6] + 8 * v232) = v230;
        v241 = v40[7] + 40 * v232;
        *v241 = 0u;
        *(v241 + 16) = 0u;
        *(v241 + 32) = 8;
        v242 = v40[2];
        v142 = __OFADD__(v242, 1);
        v243 = v242 + 1;
        if (v142)
        {
          goto LABEL_130;
        }

        v40[2] = v243;
      }

      ++v228;
      v39 = v279;
    }

    swift_bridgeObjectRelease_n();
    v26 = v280[0];
  }

  v276 = v40;
  v41 = *(v26 + v39[17]);
  if (v41 == 2 || (v41 & 1) != 0)
  {
    v42 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  }

  else
  {
    v42 = 0;
  }

  v43 = sub_18F093B5C();
  if (!v26[6])
  {
  }

  OUTLINED_FUNCTION_108();
  v44 = sub_18F093B5C();
  OUTLINED_FUNCTION_232(v44, &v286 + 8);

  if (v26[7])
  {
    goto LABEL_13;
  }

  if (v26[4])
  {

LABEL_13:

    goto LABEL_14;
  }

  sub_18F093A5C();
LABEL_14:
  v45 = sub_18F093A3C();
  OUTLINED_FUNCTION_345(v45, &v286);
  v46 = v26[8];
  v261 = v42;
  v260 = v43;
  if (v46 && (v47 = *(v46 + 16)) != 0)
  {
    v48 = v46 + ((*(v270 + 80) + 32) & ~*(v270 + 80));
    v49 = MEMORY[0x1E69E7CC0];
    v50 = *(v270 + 72);
    do
    {
      OUTLINED_FUNCTION_9();
      v51 = OUTLINED_FUNCTION_368();
      sub_18EF86A14(v51, v52);
      OUTLINED_FUNCTION_245();
      if (v53)
      {
        v54 = sub_18EF825F4(0, &qword_1ED5FF350, off_1E72AFFF8);
        OUTLINED_FUNCTION_9();
        v55 = OUTLINED_FUNCTION_189();
        sub_18EF86A14(v55, v56);
        v57 = sub_18EF9FEB8(v32);
        *(&v287 + 1) = v54;
        *&v286 = v57;
      }

      else
      {
        v286 = 0u;
        v287 = 0u;
      }

      OUTLINED_FUNCTION_63();
      sub_18EF86A6C();
      if (*(&v287 + 1))
      {
        sub_18EF914D4(&v286, &v281);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = OUTLINED_FUNCTION_242();
          v49 = sub_18EFA0044(v60, v61, v62, v49);
        }

        v59 = *(v49 + 2);
        v58 = *(v49 + 3);
        if (v59 >= v58 >> 1)
        {
          v63 = OUTLINED_FUNCTION_114(v58);
          v49 = sub_18EFA0044(v63, v59 + 1, 1, v49);
        }

        *(v49 + 2) = v59 + 1;
        sub_18EF914D4(&v281, &v49[32 * v59 + 32]);
      }

      else
      {
        sub_18EF933AC(&v286, &qword_1EACB9180);
      }

      v48 += v50;
      --v47;
    }

    while (v47);
  }

  else
  {
    v49 = MEMORY[0x1E69E7CC0];
  }

  sub_18EF825F4(0, qword_1ED5FF370, 0x1E695DFB8);
  v257 = sub_18EF9CBD0(v49, MEMORY[0x1E69E7CA0] + 8, &selRef_initWithArray_);
  MEMORY[0x1EEE9AC00](v257);
  OUTLINED_FUNCTION_247();
  *(v64 - 16) = v275;
  *(v64 - 8) = v274;
  v65 = v280[0];
  v256 = sub_18EF9EBC8(sub_18EF93270);
  MEMORY[0x1EEE9AC00](v256);
  OUTLINED_FUNCTION_247();
  *(v66 - 16) = v275;
  *(v66 - 8) = v274;
  v255 = sub_18EFD9810(sub_18EF9D964);
  MEMORY[0x1EEE9AC00](v255);
  OUTLINED_FUNCTION_247();
  *(v67 - 16) = v275;
  *(v67 - 8) = v274;
  v68 = sub_18EFD99B4(sub_18F01299C);
  v254 = v68;
  v69 = v279[14];
  v253 = *(v65 + v279[13]);
  v252 = *(v65 + v69);
  v251 = *(v65 + v69 + 8);
  v70 = *(v65 + v279[18]);
  if ((~v70 & 0xF000000000000007) != 0)
  {
    sub_18EF825F4(0, &unk_1ED5FFA60, off_1E72B0220);
    v71 = OUTLINED_FUNCTION_216();
    sub_18EFA3D24(v71);
    sub_18EF9E62C(v70);
    v72 = OUTLINED_FUNCTION_216();
    v68 = sub_18EFA3D90(v72);
  }

  v73 = (v65 + v279[19]);
  v249 = *v73;
  v248 = *(v73 + 8);
  v74 = MEMORY[0x193AD91F0](v68);
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_81();
  sub_18EF93B88(sub_18F0129B8, v75, v76, _s14CodableWrapperVMa_10);
  objc_autoreleasePoolPop(v74);
  sub_18EF825F4(0, &unk_1ED5FFA18, off_1E72AFEA8);
  OUTLINED_FUNCTION_142();
  v77 = sub_18F093DBC();
  OUTLINED_FUNCTION_232(v77, v280);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB9450, &unk_18F09BD58);
  sub_18F0941CC();
  v78 = 0;
  OUTLINED_FUNCTION_65();
  v81 = v80 & v79;
  v83 = (v82 + 63) >> 6;
  v271 = v84;
  if ((v80 & v79) != 0)
  {
    goto LABEL_33;
  }

LABEL_34:
  v86 = v78;
  while (1)
  {
    v78 = v86 + 1;
    if (__OFADD__(v86, 1))
    {
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (v78 >= v83)
    {
      break;
    }

    ++v86;
    if (v276[v78 + 8])
    {
      OUTLINED_FUNCTION_229();
      v81 = v88 & v87;
      while (2)
      {
        v89 = v85 | (v78 << 6);
        v90 = *(v276[6] + 8 * v89);
        v91 = v276[7] + 40 * v89;
        v92 = *v91;
        switch(*(v91 + 32))
        {
          case 1:
            v120 = sub_18EF825F4(0, &qword_1ED5FD150, off_1E72B0168);
            OUTLINED_FUNCTION_234(v120);
            v121 = v90;
            v122 = OUTLINED_FUNCTION_67();
            sub_18EFA7610(v122, v123, v124, v125, 1);
            OUTLINED_FUNCTION_282();
            v111 = MEMORY[0x1E69E6158];
            v112 = &selRef_initWithSearchScopes_;
            goto LABEL_46;
          case 2:
            v104 = sub_18EF825F4(0, &qword_1EACB7328, off_1E72B00F0);
            OUTLINED_FUNCTION_234(v104);
            v105 = v90;
            v106 = OUTLINED_FUNCTION_67();
            sub_18EFA7610(v106, v107, v108, v109, 2);
            OUTLINED_FUNCTION_282();
            v111 = MEMORY[0x1E69E6158];
            v112 = &selRef_initWithSupportedCategories_;
LABEL_46:
            sub_18EF9CBD0(v110, v111, v112);
            break;
          case 3:
            OUTLINED_FUNCTION_234(objc_allocWithZone(LNPropertyUpdaterSystemProtocolMetadata));
            v113 = v90;

            OUTLINED_FUNCTION_67();
            OUTLINED_FUNCTION_282();
            sub_18EFA7764(v114, v115, v116, v117, &selRef_initWithEntityIdentifier_entityProperty_);
            break;
          case 4:
            v95 = sub_18EF825F4(0, &qword_1EACB7070, off_1E72B0028);
            OUTLINED_FUNCTION_234(v95);
            v96 = v90;
            v97 = OUTLINED_FUNCTION_67();
            sub_18EFA7610(v97, v98, v99, v100, 4);
            OUTLINED_FUNCTION_168();
            OUTLINED_FUNCTION_282();
            v103 = &selRef_initWithEntityIdentifier_;
            goto LABEL_48;
          case 5:
            v126 = sub_18EF825F4(0, &qword_1EACB6FA8, off_1E72B0210);
            OUTLINED_FUNCTION_234(v126);
            v127 = v90;
            v128 = OUTLINED_FUNCTION_67();
            sub_18EFA7610(v128, v129, v130, v131, 5);
            OUTLINED_FUNCTION_168();
            OUTLINED_FUNCTION_282();
            v103 = &selRef_initWithActionIdentifier_;
LABEL_48:
            sub_18EF9EB60(v101, v102, v103);
            break;
          case 6:
            v132 = sub_18EF825F4(0, &qword_1EACB6ED0, off_1E72B00D8);
            OUTLINED_FUNCTION_234(v132);
            v133 = v90;
            v134 = OUTLINED_FUNCTION_67();
            sub_18EFA7610(v134, v135, v136, v137, 6);
            OUTLINED_FUNCTION_282();
            sub_18EFBFC64();
            break;
          case 7:
            v118 = objc_allocWithZone(LNStructuredDataRepresentableTypeSystemProtocolMetadata);
            v119 = v90;
            [v118 initWithStructuredRepresentations_];
            break;
          case 8:
            v138 = objc_allocWithZone(LNEmptySystemProtocolMetadata);
            v139 = v90;
            [v138 init];
            break;
          default:
            v93 = objc_allocWithZone(LNConditionallyEnabledSystemProtocolMetadata);
            v94 = v90;
            [v93 initWithPersistState_];
            break;
        }

        OUTLINED_FUNCTION_297((v89 >> 3) & 0x1FFFFFFFFFFFFFF8);
        *(v271[6] + 8 * v89) = v90;
        *(v271[7] + 8 * v89) = v140;
        v141 = v271[2];
        v142 = __OFADD__(v141, 1);
        v143 = v141 + 1;
        if (!v142)
        {
          v271[2] = v143;
          v65 = v280[0];
          if (!v81)
          {
            goto LABEL_34;
          }

LABEL_33:
          v85 = __clz(__rbit64(v81));
          v81 &= v81 - 1;
          continue;
        }

        break;
      }

LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      type metadata accessor for LNSystemProtocolIdentifier(0, v36, v37, v38);
      sub_18F0944AC();
      __break(1u);
      JUMPOUT(0x18EF9BB28);
    }
  }

  type metadata accessor for LNSystemProtocolIdentifier(0, v144, v145, v146);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72E0, &qword_18F09BD28);
  OUTLINED_FUNCTION_24();
  sub_18EF8558C(v147);
  OUTLINED_FUNCTION_288();
  v277 = sub_18F093A3C();

  v149 = 0;
  v150 = *(v65 + v279[23]);
  if ((~v150 & 0xF000000000000007) != 0)
  {
    v149 = sub_18EF825F4(0, &qword_1ED5FDBC8, off_1E72AFE40);

    sub_18EFA4278(v150, v275, v274);
    v151 = OUTLINED_FUNCTION_216();
    v148 = sub_18EFA4FC0(v151);
  }

  v273 = v149;
  v152 = MEMORY[0x193AD91F0](v148);
  v153 = v152;
  if (*(v65 + v279[24]))
  {
    MEMORY[0x1EEE9AC00](v152);
    OUTLINED_FUNCTION_81();
    sub_18EF92A54(sub_18F0206B4, v154, v155, sub_18EF94860);
  }

  else
  {
    type metadata accessor for LNActionTypeSpecificMetadataKey(0);
    OUTLINED_FUNCTION_30();
    sub_18EF8558C(v156);
    sub_18F093A5C();
  }

  objc_autoreleasePoolPop(v153);
  type metadata accessor for LNActionTypeSpecificMetadataKey(0);
  OUTLINED_FUNCTION_30();
  sub_18EF8558C(v157);
  OUTLINED_FUNCTION_168();
  v158 = sub_18F093A3C();

  if (*(v65 + v279[25] + 8))
  {
    v269 = sub_18F093B5C();
  }

  else
  {
    v269 = 0;
  }

  v159 = *(v65 + v279[26]);
  v272 = v158;
  if (v159)
  {
    sub_18EF94FC0(v159);
    v160 = OUTLINED_FUNCTION_204();
    type metadata accessor for LNPlatformName(v160, v161, v162, v163);
    sub_18EF825F4(0, &qword_1ED5FFA40, off_1E72AFF68);
    OUTLINED_FUNCTION_2();
    sub_18EF8558C(v164);
    OUTLINED_FUNCTION_108();
    v165 = sub_18F093A3C();
    OUTLINED_FUNCTION_234(v165);
  }

  else
  {
    OUTLINED_FUNCTION_139();
  }

  v166 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_332();
  sub_18F093A5C();
  OUTLINED_FUNCTION_332();
  v267 = sub_18F093A3C();

  v168 = *(v65 + v279[27]);
  if (v168)
  {
    v169 = *(v168 + 16);
    if (v169)
    {
      *&v281 = MEMORY[0x1E69E7CC0];
      sub_18F09411C();
      sub_18EF825F4(0, qword_1ED5FEEC8, off_1E72B0150);
      v170 = (v168 + 64);
      do
      {
        v172 = *(v170 - 4);
        v171 = *(v170 - 3);
        v173 = *(v170 - 2);
        v174 = *(v170 - 1);
        v175 = *v170;
        v170 += 40;
        *&v286 = v172;
        *(&v286 + 1) = v171;
        *&v287 = v173;
        *(&v287 + 1) = v174;
        v288 = v175;

        sub_18EFCAE3C(&v286);
        sub_18F0940FC();
        sub_18F09412C();
        OUTLINED_FUNCTION_184();
        sub_18F09413C();
        sub_18F09410C();
        --v169;
      }

      while (v169);
      v65 = v280[0];
    }

    sub_18EF825F4(0, qword_1ED5FEEC8, off_1E72B0150);
    OUTLINED_FUNCTION_142();
    v176 = sub_18F093DBC();
    OUTLINED_FUNCTION_232(v176, &a16);
  }

  if (*(v65 + v279[28] + 8))
  {
    v167 = sub_18F093B5C();
  }

  MEMORY[0x1EEE9AC00](v167);
  OUTLINED_FUNCTION_81();
  v181 = sub_18EFA0BE8(sub_18EFA0BCC, v177, v178, v179, v180);
  OUTLINED_FUNCTION_323(v181);
  v182 = *(v65 + v279[30]);
  if (v182)
  {
    v183 = *(v182 + 16);
    if (v183)
    {
      OUTLINED_FUNCTION_347();
      sub_18EF825F4(0, qword_1ED5FE9A0, off_1E72AFF10);
      v184 = (v182 + 72);
      do
      {
        v185 = *(v184 - 4);
        v186 = *(v184 - 3);
        v187 = *(v184 - 2);
        v189 = *(v184 - 1);
        v188 = *v184;
        *&v281 = *(v184 - 5);
        *(&v281 + 1) = v185;
        v282 = v186;
        v283 = v187;
        v284 = v189;
        v285 = v188;

        sub_18EFA1084(&v281);
        sub_18F0940FC();
        sub_18F09412C();
        OUTLINED_FUNCTION_184();
        sub_18F09413C();
        sub_18F09410C();
        v184 += 6;
        --v183;
      }

      while (v183);
      v65 = v280[0];
    }

    sub_18EF825F4(0, qword_1ED5FE9A0, off_1E72AFF10);
    OUTLINED_FUNCTION_142();
    v190 = sub_18F093DBC();
    OUTLINED_FUNCTION_232(v190, &a13);
  }

  v191 = *(v65 + v279[31]);
  if (v191)
  {
    v192 = *(v191 + 16);
    if (v192)
    {
      OUTLINED_FUNCTION_347();
      sub_18EF825F4(0, &unk_1EACB7078, off_1E72B0030);
      v193 = (v191 + 40);
      do
      {
        v194 = *(v193 - 1);
        v195 = *v193;

        sub_18EF9EB60(v194, v195, &selRef_initWithEntityIdentifier_);
        sub_18F0940FC();
        sub_18F09412C();
        OUTLINED_FUNCTION_366();
        sub_18F09413C();
        sub_18F09410C();
        v193 += 2;
        --v192;
      }

      while (v192);
      v65 = v280[0];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7390, &qword_18F09BD68);
    OUTLINED_FUNCTION_142();
    v196 = sub_18F093DBC();
    OUTLINED_FUNCTION_228(v196);
  }

  else
  {
    v265 = 0;
  }

  if (*(v65 + v279[32]) == 2)
  {
    v198 = *(v65 + v279[15]);
    v199 = [objc_allocWithZone(LNVisibilityMetadata) initWithIsDiscoverable:(v198 == 2) | (v198 & 1) assistantOnly:0];
  }

  else
  {
    v197 = *(v65 + v279[32]);
    v199 = [objc_allocWithZone(LNVisibilityMetadata) initWithIsDiscoverable:v197 & 1 assistantOnly:(v197 >> 8) & 1];
  }

  v200 = OUTLINED_FUNCTION_365(v199);
  v36 = *(v65 + v279[33] + 8);
  if (v36)
  {
    v200 = sub_18F093B5C();
    v264 = v200;
  }

  else
  {
    v264 = 0;
  }

  v37 = *(v65 + v279[34]);
  if (v37)
  {
    MEMORY[0x1EEE9AC00](v200);
    OUTLINED_FUNCTION_81();
    sub_18EF93B88(sub_18F0129D4, v201, v202, _s14CodableWrapperVMa_24);
    sub_18EF825F4(0, &unk_1EACB6F30, off_1E72AFE70);
    OUTLINED_FUNCTION_272();
    v203 = sub_18F093DBC();
    OUTLINED_FUNCTION_345(v203, &a9);
  }

  else
  {
    v263 = 0;
  }

  v204 = *(v65 + v279[35]);
  if (v204)
  {
    v205 = 0;
    v280[1] = v166;
    v206 = *(v204 + 16);
    v207 = v204 + 56;
    while (v206 != v205)
    {
      if (v205 >= *(v204 + 16))
      {
        goto LABEL_126;
      }

      sub_18EF825F4(0, &unk_1EACB72E8, off_1E72B01E8);

      OUTLINED_FUNCTION_263();
      OUTLINED_FUNCTION_124();
      sub_18EFF196C(v208, v209, v210, v211);
      MEMORY[0x193AD88C0]();
      OUTLINED_FUNCTION_386();
      if (v213)
      {
        OUTLINED_FUNCTION_114(v212);
        sub_18F093DFC();
      }

      OUTLINED_FUNCTION_257();
      sub_18F093E3C();
      v207 += 32;
      ++v205;
    }

    sub_18EF825F4(0, &unk_1EACB72E8, off_1E72B01E8);
    v214 = sub_18F093DBC();
  }

  else
  {
    v214 = 0;
  }

  if (v248)
  {
    v215 = 0;
  }

  else
  {
    v215 = v249;
  }

  if (v251)
  {
    v216 = 0;
  }

  else
  {
    v216 = v252;
  }

  v217 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_319();
  v247 = v218;
  OUTLINED_FUNCTION_326();
  v246 = v219;
  OUTLINED_FUNCTION_372();
  v245 = v220;
  OUTLINED_FUNCTION_116();
  LOBYTE(v244) = v253 & 1;
  [v221 v222];

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_372();

  OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_319();

  sub_18EF933AC(v275, &qword_1EACB72C8);
  OUTLINED_FUNCTION_28();
  sub_18EF86A6C();
  OUTLINED_FUNCTION_259();
}

void LNEntityMetadata.init(from:bundleURL:effectiveBundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_260();
  a19 = v23;
  a20 = v24;
  v214 = v25;
  v27 = v26;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  OUTLINED_FUNCTION_95(v30);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_163();
  v32 = _s14CodableWrapperVMa_0(0);
  v33 = OUTLINED_FUNCTION_95(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_19();
  v34 = _s14CodableWrapperVMa(0);
  v35 = OUTLINED_FUNCTION_45(v34);
  v37 = v36;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_42();
  v226 = (v38 - v39);
  MEMORY[0x1EEE9AC00](v40);
  v41 = OUTLINED_FUNCTION_371();
  v42 = type metadata accessor for LNEntityMetadata.CodableWrapper(v41);
  v43 = *(v29 + *(v42 + 68));
  v217 = v29;
  v213 = v27;
  v44 = OUTLINED_FUNCTION_281(v42);
  v211 = v21;
  v210 = v22;
  v205 = v37;
  if (v43)
  {
    v48 = v43;
  }

  else
  {
    v49 = *(v44 + 64);
    if (*(v29 + v49))
    {
      v29 = *(v29 + v49);
    }

    else
    {
      type metadata accessor for LNSystemEntityProtocolIdentifier(0, v45, v46, v47);
      OUTLINED_FUNCTION_61();
      sub_18EF8558C(v50);
      sub_18F093A5C();
      OUTLINED_FUNCTION_138();
    }

    v48 = v29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D8, &qword_18F09BD20);
  v222 = sub_18F0941CC();
  v51 = v48 + 8;
  OUTLINED_FUNCTION_65();
  v54 = v53 & v52;
  v56 = (v55 + 63) >> 6;

  v57 = 0;
  if (v54)
  {
    while (2)
    {
      v58 = __clz(__rbit64(v54));
      v54 &= v54 - 1;
LABEL_14:
      v62 = v58 | (v57 << 6);
      v63 = *(v48[6] + 8 * v62);
      v64 = v48[7] + 40 * v62;
      v65 = *v64;
      switch(*(v64 + 32))
      {
        case 1:
          OUTLINED_FUNCTION_77();
          OUTLINED_FUNCTION_228(objc_allocWithZone(v92));
          v93 = v63;
          OUTLINED_FUNCTION_130();
          OUTLINED_FUNCTION_328();
          sub_18EFA7610(v94, v95, v96, v97, 1);
          v48 = sub_18F093DBC();
          v75 = OUTLINED_FUNCTION_258(v48, sel_initWithSearchScopes_);

          v76 = OUTLINED_FUNCTION_56();
          v80 = 1;
          goto LABEL_23;
        case 2:
          OUTLINED_FUNCTION_77();
          OUTLINED_FUNCTION_228(objc_allocWithZone(v81));
          v82 = v63;
          OUTLINED_FUNCTION_130();
          OUTLINED_FUNCTION_328();
          sub_18EFA7610(v83, v84, v85, v86, 2);
          v48 = sub_18F093DBC();
          v75 = OUTLINED_FUNCTION_258(v48, sel_initWithSupportedCategories_);

          v76 = OUTLINED_FUNCTION_56();
          v80 = 2;
          goto LABEL_23;
        case 3:
          v224 = *(v64 + 24);
          v220 = *(v64 + 16);
          OUTLINED_FUNCTION_228(objc_allocWithZone(LNPropertyUpdaterSystemProtocolMetadata));
          v87 = v63;

          v88 = OUTLINED_FUNCTION_168();
          v68 = sub_18EFA7764(v88, v89, v220, v224, &selRef_initWithEntityIdentifier_entityProperty_);
          goto LABEL_25;
        case 4:
          OUTLINED_FUNCTION_77();
          OUTLINED_FUNCTION_228(objc_allocWithZone(v69));
          v70 = v63;
          OUTLINED_FUNCTION_328();
          sub_18EFA7610(v71, v72, v73, v74, 4);
          OUTLINED_FUNCTION_130();
          v48 = sub_18F093B5C();
          v75 = OUTLINED_FUNCTION_258(v48, sel_initWithEntityIdentifier_);

          v76 = OUTLINED_FUNCTION_56();
          v80 = 4;
          goto LABEL_23;
        case 5:
          OUTLINED_FUNCTION_77();
          OUTLINED_FUNCTION_228(objc_allocWithZone(v98));
          v99 = v63;
          OUTLINED_FUNCTION_328();
          sub_18EFA7610(v100, v101, v102, v103, 5);
          OUTLINED_FUNCTION_130();
          v48 = sub_18F093B5C();
          v75 = OUTLINED_FUNCTION_258(v48, sel_initWithActionIdentifier_);

          v76 = OUTLINED_FUNCTION_56();
          v80 = 5;
          goto LABEL_23;
        case 6:
          OUTLINED_FUNCTION_77();
          OUTLINED_FUNCTION_228(objc_allocWithZone(v104));
          v105 = v63;
          OUTLINED_FUNCTION_130();
          OUTLINED_FUNCTION_328();
          sub_18EFA7610(v106, v107, v108, v109, 6);
          sub_18F0939FC();
          OUTLINED_FUNCTION_142();
          v48 = sub_18F093DBC();
          v75 = OUTLINED_FUNCTION_258(v48, sel_initWithSupportedContentTypes_);

          v76 = OUTLINED_FUNCTION_56();
          v80 = 6;
LABEL_23:
          sub_18EFDEB74(v76, v77, v78, v79, v80);
          goto LABEL_26;
        case 7:
          v90 = objc_allocWithZone(LNStructuredDataRepresentableTypeSystemProtocolMetadata);
          v91 = v63;
          v68 = [v90 initWithStructuredRepresentations_];
          goto LABEL_25;
        case 8:
          v110 = objc_allocWithZone(LNEmptySystemProtocolMetadata);
          v111 = v63;
          v68 = [v110 init];
          goto LABEL_25;
        default:
          v66 = objc_allocWithZone(LNConditionallyEnabledSystemProtocolMetadata);
          v67 = v63;
          v68 = [v66 initWithPersistState_];
LABEL_25:
          v75 = v68;
LABEL_26:
          OUTLINED_FUNCTION_297((v62 >> 3) & 0x1FFFFFFFFFFFFFF8);
          *(v222[6] + 8 * v62) = v63;
          *(v222[7] + 8 * v62) = v75;
          v112 = v222[2];
          v113 = __OFADD__(v112, 1);
          v114 = v112 + 1;
          if (v113)
          {
            goto LABEL_95;
          }

          v222[2] = v114;
          if (!v54)
          {
            break;
          }

          continue;
      }

      break;
    }
  }

  v59 = v57;
  while (1)
  {
    v57 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      JUMPOUT(0x18EF9CBA4);
    }

    if (v57 >= v56)
    {
      break;
    }

    ++v59;
    if (v51[v57])
    {
      OUTLINED_FUNCTION_229();
      v54 = v61 & v60;
      goto LABEL_14;
    }
  }

  v216 = sub_18F093B5C();
  if (v217[4])
  {
    v115 = v217[3];
  }

  else
  {
    v115 = 0;
  }

  v116 = *(v217 + 16);

  OUTLINED_FUNCTION_168();
  sub_18F093B5C();
  OUTLINED_FUNCTION_216();

  if (!v217[5])
  {
    sub_18F093A5C();
    OUTLINED_FUNCTION_204();
  }

  v117 = sub_18F093A3C();

  v118 = v217[6];
  v209 = v115;
  v208 = v116;
  v207 = v117;
  if (v118)
  {
    v119 = *(v118 + 16);
    if (v119)
    {
      v120 = v118 + ((*(v205 + 80) + 32) & ~*(v205 + 80));
      v121 = MEMORY[0x1E69E7CC0];
      v122 = *(v205 + 72);
      do
      {
        OUTLINED_FUNCTION_9();
        v123 = OUTLINED_FUNCTION_137();
        sub_18EF86A14(v123, v124);
        OUTLINED_FUNCTION_245();
        if (v125)
        {
          v126 = sub_18EF825F4(0, &qword_1ED5FF350, off_1E72AFFF8);
          OUTLINED_FUNCTION_9();
          sub_18EF86A14(v20, v226);
          v127 = sub_18EF9FEB8(v226);
          *(&v234 + 1) = v126;
          *&v233 = v127;
        }

        else
        {
          v233 = 0u;
          v234 = 0u;
        }

        OUTLINED_FUNCTION_63();
        sub_18EF86A6C();
        if (*(&v234 + 1))
        {
          sub_18EF914D4(&v233, &v228);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v130 = OUTLINED_FUNCTION_242();
            v121 = sub_18EFA0044(v130, v131, v132, v121);
          }

          v129 = *(v121 + 2);
          v128 = *(v121 + 3);
          if (v129 >= v128 >> 1)
          {
            v133 = OUTLINED_FUNCTION_114(v128);
            v121 = sub_18EFA0044(v133, v129 + 1, 1, v121);
          }

          *(v121 + 2) = v129 + 1;
          sub_18EF914D4(&v228, &v121[32 * v129 + 32]);
        }

        else
        {
          sub_18EF933AC(&v233, &qword_1EACB9180);
        }

        v120 += v122;
        --v119;
      }

      while (v119);
    }

    else
    {
      v121 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v121 = MEMORY[0x1E69E7CC0];
  }

  sub_18EF825F4(0, qword_1ED5FF370, 0x1E695DFB8);
  v206 = sub_18EF9CBD0(v121, MEMORY[0x1E69E7CA0] + 8, &selRef_initWithArray_);
  sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
  OUTLINED_FUNCTION_8();
  sub_18EF86A14(v217 + v134, v210);
  sub_18EF9FE2C();
  v135 = v214;
  v204 = v214;
  v136 = sub_18EF9CEB8(v210, v211, v214);
  MEMORY[0x1EEE9AC00](v136);
  OUTLINED_FUNCTION_247();
  *(v137 - 16) = v213;
  *(v137 - 8) = v214;
  v138 = sub_18EF9EBC8(sub_18EFA3E10);
  if (*(v217 + v212[14]))
  {
    MEMORY[0x1EEE9AC00](v138);
    OUTLINED_FUNCTION_97();
    *(v139 - 16) = v213;
    *(v139 - 8) = v214;
    sub_18EF9D97C(sub_18EFA3E10, v140, v141, _s14CodableWrapperVMa_0, v142, v143, v144, v145, v198, v200, v202, v204);
    v135 = v214;
  }

  v146 = objc_allocWithZone(LNTypeDisplayRepresentation);
  OUTLINED_FUNCTION_108();
  v147 = sub_18EF9307C();
  MEMORY[0x1EEE9AC00](v147);
  OUTLINED_FUNCTION_97();
  *(v148 - 16) = v213;
  *(v148 - 8) = v135;
  sub_18EF93B88(sub_18EF94A38, v149, v150, _s14CodableWrapperVMa_12);
  sub_18EF825F4(0, &qword_1ED5FE780, off_1E72B0108);
  OUTLINED_FUNCTION_272();
  v151 = sub_18F093DBC();
  OUTLINED_FUNCTION_345(v151, &a15);
  OUTLINED_FUNCTION_390();
  if (v152)
  {
    v155 = sub_18F093B5C();
    OUTLINED_FUNCTION_323(v155);
  }

  else
  {
    v210 = 0;
  }

  v156 = *(v217 + v212[13]);
  v215 = v147;
  if (v156)
  {
    sub_18EF94FC0(v156);
    v157 = OUTLINED_FUNCTION_204();
    type metadata accessor for LNPlatformName(v157, v158, v159, v160);
    sub_18EF825F4(0, &qword_1ED5FFA40, off_1E72AFF68);
    OUTLINED_FUNCTION_2();
    sub_18EF8558C(v161);
    OUTLINED_FUNCTION_108();
    v227 = sub_18F093A3C();
  }

  else
  {
    v227 = 0;
  }

  v162 = *(v217 + v212[15]);
  if (v162)
  {
    v163 = *(v162 + 16);
    if (v163)
    {
      *&v228 = MEMORY[0x1E69E7CC0];
      sub_18F09411C();
      sub_18EF825F4(0, qword_1ED5FEEC8, off_1E72B0150);
      v164 = (v162 + 64);
      do
      {
        v166 = *(v164 - 4);
        v165 = *(v164 - 3);
        v167 = *(v164 - 2);
        v168 = *(v164 - 1);
        v169 = *v164;
        v164 += 40;
        *&v233 = v166;
        *(&v233 + 1) = v165;
        *&v234 = v167;
        *(&v234 + 1) = v168;
        v235 = v169;

        sub_18EFCAE3C(&v233);
        sub_18F0940FC();
        sub_18F09412C();
        OUTLINED_FUNCTION_137();
        sub_18F09413C();
        sub_18F09410C();
        --v163;
      }

      while (v163);
    }

    sub_18EF825F4(0, qword_1ED5FEEC8, off_1E72B0150);
    OUTLINED_FUNCTION_142();
    v225 = sub_18F093DBC();
  }

  else
  {
    v225 = 0;
  }

  type metadata accessor for LNSystemEntityProtocolIdentifier(0, v152, v153, v154);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72E0, &qword_18F09BD28);
  OUTLINED_FUNCTION_61();
  sub_18EF8558C(v170);
  OUTLINED_FUNCTION_288();
  v221 = sub_18F093A3C();

  OUTLINED_FUNCTION_390();
  if (v171)
  {
    v223 = sub_18F093B5C();
  }

  else
  {
    v223 = 0;
  }

  v172 = *(v217 + v212[20]);
  v203 = *(v217 + v212[19]);
  if (v172)
  {
    v173 = *(v172 + 16);
    if (v173)
    {
      OUTLINED_FUNCTION_347();
      sub_18EF825F4(0, qword_1ED5FE9A0, off_1E72AFF10);
      v174 = (v172 + 72);
      do
      {
        v175 = *(v174 - 4);
        v176 = *(v174 - 3);
        v177 = *(v174 - 2);
        v179 = *(v174 - 1);
        v178 = *v174;
        *&v228 = *(v174 - 5);
        *(&v228 + 1) = v175;
        v229 = v176;
        v230 = v177;
        v231 = v179;
        v232 = v178;

        sub_18EFA1084(&v228);
        sub_18F0940FC();
        sub_18F09412C();
        OUTLINED_FUNCTION_137();
        sub_18F09413C();
        sub_18F09410C();
        v174 += 6;
        --v173;
      }

      while (v173);
    }

    sub_18EF825F4(0, qword_1ED5FE9A0, off_1E72AFF10);
    OUTLINED_FUNCTION_142();
    v219 = sub_18F093DBC();
  }

  else
  {
    v219 = 0;
  }

  OUTLINED_FUNCTION_390();
  if (v180)
  {
    v218 = sub_18F093B5C();
  }

  else
  {
    v218 = 0;
  }

  if (*(v217 + v212[22]) == 2)
  {
    v182 = [objc_allocWithZone(LNVisibilityMetadata) initWithIsDiscoverable:1 assistantOnly:0];
  }

  else
  {
    v181 = *(v217 + v212[22]);
    v182 = [objc_allocWithZone(LNVisibilityMetadata) initWithIsDiscoverable:v181 & 1 assistantOnly:(v181 >> 8) & 1];
  }

  v201 = v182;
  OUTLINED_FUNCTION_390();
  if (v183)
  {
    v199 = sub_18F093B5C();
  }

  else
  {
    v199 = 0;
  }

  v184 = *(v217 + v212[24]);
  if (v184)
  {
    v185 = 0;
    v186 = *(v184 + 16);
    v187 = v184 + 56;
    while (v186 != v185)
    {
      if (v185 >= *(v184 + 16))
      {
        goto LABEL_94;
      }

      sub_18EF825F4(0, &unk_1EACB72E8, off_1E72B01E8);
      OUTLINED_FUNCTION_404();

      OUTLINED_FUNCTION_393();
      OUTLINED_FUNCTION_124();
      sub_18EFF196C(v188, v189, v190, v191);
      MEMORY[0x193AD88C0]();
      OUTLINED_FUNCTION_386();
      if (v193)
      {
        OUTLINED_FUNCTION_114(v192);
        sub_18F093DFC();
      }

      sub_18F093E3C();
      v187 += 32;
      ++v185;
    }

    sub_18EF825F4(0, &unk_1EACB72E8, off_1E72B01E8);
    OUTLINED_FUNCTION_201();
    v194 = sub_18F093DBC();
  }

  else
  {
    v194 = 0;
  }

  v195 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIdentifier:v216 transient:v208 & 1 mangledTypeName:v209 mangledTypeNameByBundleIdentifier:v207 effectiveBundleIdentifiers:v206 displayRepresentation:v215 properties:v211 customIntentTypeClassName:v210 availabilityAnnotations:v227 requiredCapabilities:v225 systemProtocolMetadata:v221 attributionBundleIdentifier:v223 transferableContentTypes:v203 assistantDefinedSchemas:v219 fullyQualifiedTypeName:v218 visibilityMetadata:v201 defaultQueryIdentifier:v199 allowedTargets:v194];
  OUTLINED_FUNCTION_281(v195);

  v196 = OUTLINED_FUNCTION_374();
  sub_18EF933AC(v196, v197);
  OUTLINED_FUNCTION_27();
  sub_18EF86A6C();
  OUTLINED_FUNCTION_259();
}

id sub_18EF9CBD0(uint64_t a1, uint64_t a2, SEL *a3)
{
  OUTLINED_FUNCTION_376();
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_189();
  v5 = sub_18F093DBC();

  v6 = [v4 *a3];

  return v6;
}

unint64_t sub_18EF9CC4C()
{
  result = qword_1ED5FF498;
  if (!qword_1ED5FF498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7470, &qword_18F09BDB0);
    sub_18EFC2698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF498);
  }

  return result;
}

unint64_t sub_18EF9CCD8()
{
  result = qword_1ED5FF1D0;
  if (!qword_1ED5FF1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF1D0);
  }

  return result;
}

__n128 OUTLINED_FUNCTION_356@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 - 176);
  v3 = *(v1 - 160);
  *(a1 + 64) = *(v1 - 144);
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  return result;
}

uint64_t sub_18EF9CD40@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_18EF99EB0(a1);
  if (!v2)
  {
    *a2 = result & 1;
    a2[1] = BYTE1(result) & 1;
  }

  return result;
}

uint64_t sub_18EF9CD80(char a1)
{
  if (a1)
  {
    return 0x6E61747369737361;
  }

  else
  {
    return 0x766F637369447369;
  }
}

unint64_t sub_18EF9CDD0()
{
  result = qword_1ED5FD148;
  if (!qword_1ED5FD148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB74E0, &qword_18F09BDD0);
    sub_18EF8558C(&unk_1ED5FD100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD148);
  }

  return result;
}

id sub_18EF9CEB8(void *a1, uint64_t a2, void *a3)
{
  v58 = a2;
  v61 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v56 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v57 = &v55 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v55 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v55 - v12;
  v60 = sub_18F0932BC();
  v63 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB78A0, &qword_18F09DDD8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v55 - v16;
  v18 = sub_18F0931CC();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = _s14CodableWrapperVMa_0(0);
  v62 = a1;
  sub_18EF9FE2C();
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_18EF933AC(v17, &qword_1EACB78A0);
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
    sub_18F0931AC();
    sub_18EF825F4(0, &qword_1ED5FD160, 0x1E696B100);
    if (swift_dynamicCast())
    {
      v23 = v64;
      v24 = *(v62 + *(v22 + 36));
      if (v24)
      {
        sub_18EF933FC(v24);
        type metadata accessor for LNStaticDeferredLocalizedStringAlternativeKind(0);
        sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
        sub_18EF8558C(&unk_1ED5FD778);
        v25 = sub_18F093A3C();
      }

      else
      {
        v25 = 0;
      }

      v49 = v61;
      v48 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithLocalizedStringResource:v23 alternatives:v25];

      sub_18EF933AC(v58, &qword_1EACB72C8);
      (*(v19 + 8))(v21, v18);
      goto LABEL_45;
    }

    (*(v19 + 8))(v21, v18);
  }

  v26 = v58;
  sub_18EF9FE2C();
  v27 = v60;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v60);
  v29 = v62;
  v30 = v56;
  v31 = v57;
  if (EnumTagSinglePayload == 1)
  {
    sub_18EF9FE2C();
    if (__swift_getEnumTagSinglePayload(v11, 1, v27) != 1)
    {
      sub_18EF933AC(v11, &qword_1EACB72C8);
    }
  }

  else
  {
    (*(v63 + 32))(v13, v11, v27);
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v27);
  }

  if (__swift_getEnumTagSinglePayload(v13, 1, v27) == 1)
  {
    sub_18EF933AC(v13, &qword_1EACB72C8);
    v32 = sub_18F093B5C();
    if (v29[3])
    {
      v33 = sub_18F093B5C();
    }

    else
    {
      v33 = 0;
    }

    if (v29[5])
    {
      v36 = sub_18F093B5C();
    }

    else
    {
      v36 = 0;
    }

    sub_18EF9FE2C();
    if (__swift_getEnumTagSinglePayload(v30, 1, v27) == 1)
    {
      v39 = v61;
      if (v61)
      {
        sub_18EF825F4(0, &qword_1EACB6AE8, 0x1E6963620);
        v40 = v39;
        v41 = [v40 bundleIdentifier];
        v42 = sub_18F093B8C();
        v44 = v43;

        v51 = sub_18F0469EC(v42, v44, 0);
        v27 = v60;
        v31 = v57;
        if (v51 >= 2)
        {
          v52 = [v51 URL];
          sub_18F09327C();
          sub_18F019C6C(v51);
          v50 = 0;
        }

        else
        {
          v50 = 1;
        }

        v30 = v56;
      }

      else
      {
        v50 = 1;
        v27 = v60;
      }

      __swift_storeEnumTagSinglePayload(v31, v50, 1, v27);
      if (__swift_getEnumTagSinglePayload(v30, 1, v27) != 1)
      {
        sub_18EF933AC(v30, &qword_1EACB72C8);
      }
    }

    else
    {
      (*(v63 + 32))(v31, v30, v27);
      __swift_storeEnumTagSinglePayload(v31, 0, 1, v27);
    }

    if (__swift_getEnumTagSinglePayload(v31, 1, v27) == 1)
    {
      v53 = 0;
    }

    else
    {
      v53 = sub_18F09324C();
      (*(v63 + 8))(v31, v27);
    }

    v48 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithKey:v32 defaultValue:v33 table:v36 bundleURL:v53];

    sub_18EF933AC(v26, &qword_1EACB72C8);
  }

  else
  {
    (*(v63 + 32))(v59, v13, v27);
    v34 = sub_18F093B5C();
    if (v29[3])
    {
      v35 = sub_18F093B5C();
    }

    else
    {
      v35 = 0;
    }

    v37 = v61;
    if (v29[5])
    {
      v38 = sub_18F093B5C();
    }

    else
    {
      v38 = 0;
    }

    v45 = sub_18F09324C();
    v46 = *(v29 + *(v22 + 36));
    if (v46)
    {
      sub_18EF933FC(v46);
      type metadata accessor for LNStaticDeferredLocalizedStringAlternativeKind(0);
      sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
      sub_18EF8558C(&unk_1ED5FD778);
      v47 = sub_18F093A3C();
      v27 = v60;
    }

    else
    {
      v47 = 0;
    }

    v48 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithKey:v34 defaultValue:v35 table:v38 bundleURL:v45 alternatives:v47];

    sub_18EF933AC(v26, &qword_1EACB72C8);
    (*(v63 + 8))(v59, v27);
  }

LABEL_45:
  sub_18EF86A6C();
  return v48;
}

void sub_18EF9D85C()
{
  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_145();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  OUTLINED_FUNCTION_95(v4);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_21();
  v7 = _s14CodableWrapperVMa_1(v6);
  v8 = OUTLINED_FUNCTION_95(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_256();
  sub_18EF825F4(0, &qword_1ED5FE2F8, off_1E72AFE98);
  sub_18EF86A14(v2, v3);
  OUTLINED_FUNCTION_363();
  sub_18EF9FE2C();
  v9 = v1;
  v10 = OUTLINED_FUNCTION_197();
  *v0 = sub_18EF938B4(v10, v11, v1);
  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_177();
}

id sub_18EF9DA9C(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v44 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7830, &qword_18F09DA08);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v40 = &v39 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7878, &qword_18F09DA78);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v39 - v5;
  v41 = _s14CodableWrapperVMa_7(0);
  MEMORY[0x1EEE9AC00](v41);
  v39 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v43 = &v39 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7870, &qword_18F09DA70);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v39 - v14;
  v16 = _s14CodableWrapperVMa_6(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7868, &qword_18F09DA68);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v39 - v20;
  v22 = _s14CodableWrapperVMa_5(0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18EF9FE2C();
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) != 1)
  {
    sub_18EF88240(v21, v24);
    sub_18EF9FE2C();
    if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
    {
      sub_18EF933AC(v15, &qword_1EACB7870);
      sub_18EF9FE2C();
      if (__swift_getEnumTagSinglePayload(v6, 1, v41) == 1)
      {
        sub_18EF86A6C();
        v25 = &qword_1EACB7878;
        v26 = v6;
        goto LABEL_3;
      }

      v33 = v39;
      sub_18EF88240(v6, v39);
      sub_18EF825F4(0, &qword_1ED5FE018, off_1E72B0070);
      v34 = v40;
      sub_18EF86A14(v33, v40);
      v35 = _s14CodableWrapperOMa(0);
      __swift_storeEnumTagSinglePayload(v34, 0, 1, v35);
      v36 = sub_18EFA6BE0();
      sub_18EF933AC(v34, &qword_1EACB7830);
      if (!v36)
      {
        sub_18EF86A6C();
        sub_18EF86A6C();
        return 0;
      }

      v27 = [objc_allocWithZone(LNActionDescriptionIconImage) initWithImage_];
    }

    else
    {
      sub_18EF88240(v15, v18);
      v28 = *v18;
      v29 = v18[1];
      sub_18EF9FE2C();
      v30 = sub_18F0932BC();
      if (__swift_getEnumTagSinglePayload(v11, 1, v30) == 1)
      {
        v31 = v43;
        sub_18EF9FE2C();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v30);

        if (EnumTagSinglePayload != 1)
        {
          sub_18EF933AC(v11, &qword_1EACB72C8);
        }
      }

      else
      {
        v31 = v43;
        (*(*(v30 - 8) + 32))(v43, v11, v30);
        __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
      }

      v37 = objc_allocWithZone(LNActionDescriptionIconNamed);
      v27 = sub_18F00DD44(v28, v29, v31);
    }

    sub_18EF86A6C();
    sub_18EF86A6C();
    return v27;
  }

  v25 = &qword_1EACB7868;
  v26 = v21;
LABEL_3:
  sub_18EF933AC(v26, v25);
  return 0;
}

id sub_18EF9E184(void *a1, uint64_t a2, void *a3)
{
  sub_18EF825F4(0, &unk_1ED5FFA60, off_1E72B0220);
  v7 = _s14CodableWrapperVMa_10(0);
  v8 = sub_18EF9E62C(*(a1 + v7[7]));
  if (v8)
  {
    v9 = a1[1];
    v55 = v8;
    v53 = v3;
    if (v9)
    {
      v8 = sub_18F093B5C();
      v54 = v8;
    }

    else
    {
      v54 = 0;
    }

    v51 = *(a1 + v7[8]);
    MEMORY[0x1EEE9AC00](v8);
    v52 = sub_18EF9EBC8(sub_18EF92DAC);
    MEMORY[0x1EEE9AC00](v52);
    v56 = a2;
    v45 = a2;
    v46 = a3;
    v59 = a3;
    result = sub_18EF9EBC8(sub_18EFA3E10);
    v48 = 0;
    v49 = result;
    v12 = 0;
    v50 = v7;
    v13 = v7[9];
    v57 = a1;
    v14 = *(a1 + v13);
    v58 = MEMORY[0x1E69E7CC0];
    v60 = MEMORY[0x1E69E7CC0];
    v15 = *(v14 + 16);
    v16 = v14 + 56;
    v47 = v14 + 56;
LABEL_7:
    v17 = (v16 + 32 * v12);
    while (v15 != v12)
    {
      if (v12 >= *(v14 + 16))
      {
        __break(1u);
        return result;
      }

      ++v12;
      v18 = v17 + 4;
      v20 = *(v17 - 1);
      v19 = *v17;
      v22 = *(v17 - 3);
      v21 = *(v17 - 2);
      sub_18EF825F4(0, &unk_1ED5FF090, off_1E72B0158);

      sub_18EFA3F8C(v19);
      result = sub_18EFA3E28(v22, v21, v20, v19);
      v17 = v18;
      if (result)
      {
        MEMORY[0x193AD88C0]();
        if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18F093DFC();
        }

        result = sub_18F093E3C();
        v58 = v60;
        v16 = v47;
        goto LABEL_7;
      }
    }

    sub_18EF825F4(0, &unk_1ED5FF090, off_1E72B0158);
    v23 = sub_18F093DBC();

    v25 = v50;
    v26 = v57;
    MEMORY[0x1EEE9AC00](v24);
    a2 = v56;
    v45 = v56;
    v46 = v59;
    sub_18EF92A54(sub_18F0206B4, &v44, v27, sub_18EFA4264);
    type metadata accessor for LNValueTypeSpecificMetadataKey(0, v28, v29, v30);
    sub_18EF8558C(&qword_1ED5FF088);
    v31 = sub_18F093A3C();

    v32 = v26 + v25[13];
    if (v32[8])
    {
      if (*(v26 + v25[12]))
      {
        v33 = 2;
      }

      else
      {
        v33 = 0;
      }
    }

    else
    {
      v33 = *v32;
    }

    v34 = *(v26 + v25[11]);
    v35 = v25[15];
    v36 = v26 + v25[14];
    if (v36[8])
    {
      v37 = 0;
    }

    else
    {
      v37 = *v36;
    }

    if (*(v26 + v35 + 8))
    {
      v38 = sub_18F093B5C();
    }

    else
    {
      v38 = 0;
    }

    v39 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v43 = v34;
    v44 = v33;
    v41 = v54;
    v40 = v55;
    v42 = v49;
    v10 = [v39 initWithName:v54 valueType:v55 optional:v51 title:v52 description:v49 resolvableInputTypes:v23 typeSpecificMetadata:v31 dynamicOptionsSupport:v43 inputConnectionBehavior:v44 capabilities:v37 queryIdentifier:v38];

    swift_unknownObjectRelease();
  }

  else
  {

    v10 = 0;
  }

  sub_18EF933AC(a2, &qword_1EACB72C8);
  sub_18EF86A6C();
  return v10;
}

id sub_18EF9E62C(unint64_t a1)
{
  v2 = a1 >> 60;
  result = 0;
  switch(v2)
  {
    case 1uLL:
      memcpy(v24, ((a1 & 0xFFFFFFFFFFFFFFFLL) + 16), 0x79uLL);
      if (v24[11])
      {
        sub_18EF825F4(0, &unk_1ED5FF9C0, off_1E72AFFA8);
        result = sub_18EFD255C(v24);
      }

      else
      {
        if ((v24[15] & 1) == 0)
        {
          v20 = LNAnyAppValueType;
          goto LABEL_22;
        }

        sub_18EF825F4(0, &unk_1ED5FE710, off_1E72B0038);
        result = sub_18EF9E9CC(v24);
      }

      break;
    case 2uLL:
      v14 = a1 & 0xFFFFFFFFFFFFFFFLL;
      v15 = *(v14 + 16);
      v16 = *(v14 + 24);
      v17 = *(v14 + 32);
      sub_18EF825F4(0, &qword_1ED5FDCB8, off_1E72AFF00);
      sub_18EFA3D24(v15);
      result = sub_18EFA3FA0(v15, v16, v17);
      break;
    case 3uLL:
      v6 = a1 & 0xFFFFFFFFFFFFFFFLL;
      v7 = *(v6 + 16);
      v8 = *(v6 + 24);
      sub_18EF825F4(0, &qword_1ED5FE070, off_1E72B0088);

      v9 = &selRef_initWithEnumerationIdentifier_;
      goto LABEL_16;
    case 4uLL:
      sub_18EF825F4(0, &unk_1EACB7248, off_1E72AFED0);

      result = sub_18EFD261C(v19);
      break;
    case 5uLL:
      v21 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_18EF825F4(0, &unk_1ED5FCF10, off_1E72B0098);
      result = sub_18EFB0F38(v21);
      break;
    case 6uLL:
      v18 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_18EF825F4(0, qword_1ED5FD958, off_1E72B0080);
      result = sub_18EFA4058(v18);
      break;
    case 7uLL:
      v23 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_18EF825F4(0, &unk_1ED5FD170, off_1E72B0160);
      result = sub_18EFA756C(v23);
      break;
    case 8uLL:
      v13 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_18EF825F4(0, &unk_1EACB7098, off_1E72AFF78);
      result = sub_18EFD27C4(v13);
      break;
    case 9uLL:
      v22 = a1 & 0xFFFFFFFFFFFFFFFLL;
      v7 = *(v22 + 16);
      v8 = *(v22 + 24);
      sub_18EF825F4(0, &unk_1EACB6E00, off_1E72AFF18);

      v9 = &selRef_initWithIdentifier_;
LABEL_16:
      result = sub_18EF9EB60(v7, v8, v9);
      break;
    case 0xAuLL:
      v5 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_18EF825F4(0, &unk_1EACB6EF8, off_1E72B0058);
      result = sub_18EFF1118(v5, off_1E72B0058, &selRef_recurrenceRuleType);
      break;
    case 0xBuLL:
      v10 = a1 & 0xFFFFFFFFFFFFFFFLL;
      v11 = *(v10 + 16);
      v12 = *(v10 + 24);
      sub_18EF825F4(0, &qword_1EACB8790, off_1E72AFF58);
      result = sub_18EFD2818(v11, v12);
      break;
    case 0xCuLL:
      return result;
    case 0xDuLL:
      if (a1 == 0xD000000000000000)
      {
        v20 = LNQueryParametersValueType;
      }

      else
      {
        v20 = LNEntityIdentifierValueType;
      }

LABEL_22:
      result = [objc_allocWithZone(v20) init];
      break;
    default:
      v4 = *(a1 + 16);
      sub_18EF825F4(0, &unk_1ED5FE198, off_1E72B00F8);
      result = sub_18EF94F6C(v4);
      break;
  }

  return result;
}

id sub_18EF9E9CC(uint64_t *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v4 = a1[5];
    v3 = a1[2];
    if (v4)
    {
      v5 = a1[4];
      v7 = *a1;
      v6 = a1[1];
      objc_allocWithZone(LNSystemEntityValueType);
      sub_18EF9FE2C();
LABEL_8:
      sub_18EF9FE2C();

      return sub_18EFACD38(v7, v6, v3, v2, v5, v4);
    }
  }

  v2 = a1[7];
  if (v2 != 1)
  {
    v3 = a1[6];
    if (v2)
    {
      v4 = a1[9];
      if (v4)
      {
        v5 = a1[8];
        v7 = *a1;
        v6 = a1[1];
        objc_allocWithZone(LNSystemEntityValueType);
        sub_18EF9FE2C();
        goto LABEL_8;
      }
    }
  }

  sub_18EF825F4(0, &unk_1ED5FE710, off_1E72B0038);
  v10 = *a1;
  v9 = a1[1];

  return sub_18EF9EB60(v10, v9, &selRef_initWithIdentifier_);
}

id sub_18EF9EB60(uint64_t a1, uint64_t a2, SEL *a3)
{
  OUTLINED_FUNCTION_376();
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_189();
  sub_18F093B5C();
  OUTLINED_FUNCTION_357();

  v6 = [v5 *a3];

  return v6;
}

uint64_t sub_18EF9EBC8(void (*a1)(uint64_t *__return_ptr, char *))
{
  v3 = _s14CodableWrapperVMa_0(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - v7;
  sub_18EF9FE2C();
  if (__swift_getEnumTagSinglePayload(v8, 1, v3) == 1)
  {
    return 0;
  }

  sub_18EF88240(v8, v5);
  a1(&v11, v5);
  if (v1)
  {
    result = sub_18EF86A6C();
    __break(1u);
  }

  else
  {
    sub_18EF86A6C();
    return v11;
  }

  return result;
}

uint64_t sub_18EF9ED98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 80))(a1);
  OUTLINED_FUNCTION_8_0();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, a2);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_18EF9EE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + 16);
  swift_getAssociatedTypeWitness();
  sub_18F093F3C();
  OUTLINED_FUNCTION_7();
  v36 = v9;
  v37 = v8;
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_135();
  v34 = v11;
  v35 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_7();
  v13 = v12;
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_135();
  v33 = v15;
  OUTLINED_FUNCTION_1_3();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_22();
  v21 = v20 - v19;
  OUTLINED_FUNCTION_1_3();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_22();
  v27 = v26 - v25;
  (*(v17 + 16))(v21, v4, a3);
  if (__swift_getEnumTagSinglePayload(v21, 1, v7) == 1)
  {
    (*(v13 + 8))(a2, AssociatedTypeWitness);
    (*(v36 + 8))(a1, v37);
    return (*(v17 + 8))(v21, a3);
  }

  else
  {
    (*(v17 + 8))(v4, a3);
    v29 = *(v23 + 32);
    v29(v27, v21, v7);
    (*(v13 + 16))(v33, a2, AssociatedTypeWitness);
    (*(v36 + 16))(v34, a1, v37);
    (*(v35 + 96))(v34, v33, v7);
    (*(v13 + 8))(a2, AssociatedTypeWitness);
    (*(v36 + 8))(a1, v37);
    v29(v4, v27, v7);
    OUTLINED_FUNCTION_8_0();
    return __swift_storeEnumTagSinglePayload(v30, v31, v32, v7);
  }
}

uint64_t sub_18EF9F1FC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF8 && *(a1 + 33))
    {
      v2 = *a1 + 247;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 8)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void sub_18EF9F23C(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        return;
      case 2:
        *&a1[v8] = v14;
        return;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        return;
      default:
        return;
    }
  }

  switch(v12)
  {
    case 1:
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 2:
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 3:
LABEL_37:
      __break(1u);
      JUMPOUT(0x18EF9F440);
    case 4:
      *&a1[v8] = 0;
      goto LABEL_23;
    default:
LABEL_23:
      if (a2)
      {
LABEL_24:

        __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
      }

      return;
  }
}

unint64_t sub_18EF9F4F8()
{
  result = qword_1ED5FE6E8;
  if (!qword_1ED5FE6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE6E8);
  }

  return result;
}

void OUTLINED_FUNCTION_113(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{

  sub_18EF84150(v19, v18, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

unint64_t sub_18EF9F694()
{
  result = qword_1ED5FEC60;
  if (!qword_1ED5FEC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FEC60);
  }

  return result;
}

uint64_t sub_18EF9F6E8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8070, &qword_18F0A0F38);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EF9F95C();
  sub_18F09459C();
  type metadata accessor for LNSideEffect(0);
  HIBYTE(v8) = 0;
  sub_18EF8558C(&unk_1ED5FE0E8);
  sub_18F0942CC();
  v6 = v9;
  type metadata accessor for LNChangeEffect(0);
  HIBYTE(v8) = 1;
  sub_18EF8558C(&unk_1ED5FE0C0);
  sub_18F0942CC();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

uint64_t sub_18EF9F930@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18EF9F6E8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_18EF9F95C()
{
  result = qword_1ED5FE0B0;
  if (!qword_1ED5FE0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE0B0);
  }

  return result;
}

uint64_t sub_18EF9FA74(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

unint64_t sub_18EF9FAC4()
{
  result = qword_1ED5FF270;
  if (!qword_1ED5FF270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7518, &qword_18F09BDE0);
    sub_18EF8558C(&unk_1ED5FF178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF270);
  }

  return result;
}

void OUTLINED_FUNCTION_4_1()
{

  JUMPOUT(0x193AD8780);
}

uint64_t OUTLINED_FUNCTION_4_3()
{

  return sub_18F0938FC();
}

uint64_t OUTLINED_FUNCTION_4_7(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_8()
{

  return sub_18F093B8C();
}

uint64_t OUTLINED_FUNCTION_4_13()
{
  *(v0 + 392) = *(v0 + 320);
  *(v0 + 408) = v1;

  return AssistantSchemaVersion.description.getter();
}

uint64_t OUTLINED_FUNCTION_4_15()
{

  return swift_slowAlloc();
}

uint64_t sub_18EF9FD20()
{
  OUTLINED_FUNCTION_62();
  if (v2)
  {
    return OUTLINED_FUNCTION_16();
  }

  OUTLINED_FUNCTION_161();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  OUTLINED_FUNCTION_106();
  if (*(v4 + 84) == v0)
  {
    v5 = v1[10];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7310, &qword_18F09BD48);
    OUTLINED_FUNCTION_106();
    if (*(v6 + 84) == v0)
    {
      v5 = v1[11];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7308, &qword_18F09BD40);
      v5 = v1[12];
    }
  }

  v7 = OUTLINED_FUNCTION_120(v5);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

uint64_t sub_18EF9FE2C()
{
  OUTLINED_FUNCTION_115();
  v4 = OUTLINED_FUNCTION_269(v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_36();
  v6 = OUTLINED_FUNCTION_108();
  v7(v6);
  return v0;
}

id sub_18EF9FEB8(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  v5 = *a1;
  v6 = sub_18F093B5C();
  _s14CodableWrapperVMa(0);
  sub_18EF9FE2C();
  v7 = sub_18F0932BC();
  v8 = 0;
  if (__swift_getEnumTagSinglePayload(v4, 1, v7) != 1)
  {
    v8 = sub_18F09324C();
    (*(*(v7 - 8) + 8))(v4, v7);
  }

  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithType:v5 bundleIdentifier:v6 url:v8];

  sub_18EF86A6C();
  return v9;
}

char *sub_18EFA0044(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8748, &qword_18F0A1350);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *static DaemonRecord.from(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  if (qword_1ED5FDB08 != -1)
  {
LABEL_20:
    OUTLINED_FUNCTION_0_9(&qword_1ED5FDB08);
  }

  OUTLINED_FUNCTION_4_7(&qword_1ED5FDAE0, v13);
  v4 = qword_1ED5FDAE0;
  v5 = sub_18EFA0A74(qword_1ED5FDAE0);

  for (i = 0; v5 != i; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x193AD8BA0](i, v4);
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v9 = &v7[OBJC_IVAR___swift_DaemonRecord_bundleIdentifier];
    OUTLINED_FUNCTION_4_7(&v7[OBJC_IVAR___swift_DaemonRecord_bundleIdentifier], &v12);
    v10 = *v9 == a1 && *(v9 + 1) == a2;
    if (v10 || (sub_18F09444C() & 1) != 0)
    {

      return v8;
    }
  }

  return 0;
}

uint64_t sub_18EFA0A7C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_18F0941BC();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

id sub_18EFA0AD0@<X0>(uint64_t *a1@<X0>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  v10 = *a1;
  v9 = a1[1];
  sub_18EF825F4(0, &qword_1ED5FE098, off_1E72AFEB8);
  sub_18EF9FE2C();
  v11 = a2;
  result = sub_18EFA0C40(v10, v9, v8, a2);
  *a3 = result;
  return result;
}

void *sub_18EFA0BE8(void *(*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    return 0;
  }

  v7[0] = a3;
  v7[1] = a4;
  result = a1(&v8, v7);
  if (!v5)
  {
    return v8;
  }

  __break(1u);
  return result;
}

id sub_18EFA0C40(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSideEffect:a1 changeEffect:a2];

  sub_18EF933AC(a3, &qword_1EACB72C8);
  return v6;
}

uint64_t get_enum_tag_for_layout_string_12LinkMetadata012TypeSpecificB7Storage33_8F5A22252D2EEFBD74C1473F6DDC7E6CLLO(void *a1)
{
  if (*a1 >> 61 == 7)
  {
    return (*a1 >> 3) + 14;
  }

  else
  {
    return *a1 >> 60;
  }
}

double sub_18EFA0D4C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_18EFA0D90(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_18EFA0D90@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8078, &qword_18F0A0F40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFA0FDC();
  sub_18F09459C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v25 = 0;
  v9 = sub_18F09427C();
  v22 = v10;
  v24 = 1;
  v20 = sub_18F09427C();
  v21 = v11;
  v23 = 2;
  v12 = sub_18F09423C();
  v13 = v8;
  v15 = v14;
  (*(v6 + 8))(v13, v5);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v17 = v22;
  *a2 = v9;
  a2[1] = v17;
  v18 = v21;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v12;
  a2[5] = v15;
  return result;
}

unint64_t sub_18EFA0FDC()
{
  result = qword_1ED5FCF90;
  if (!qword_1ED5FCF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCF90);
  }

  return result;
}

uint64_t sub_18EFA1038(char a1)
{
  if (!a1)
  {
    return 1701667182;
  }

  if (a1 == 1)
  {
    return 0x6E6F6973726576;
  }

  return 0x6E69616D6F64;
}

id sub_18EFA1084(void *a1)
{
  v2 = sub_18F093B5C();
  v3 = sub_18F093B5C();
  if (a1[5])
  {

    v4 = sub_18F093B5C();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithName:v2 version:v3 domain:v4];

  return v5;
}

uint64_t sub_18EFA1164(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8450, &qword_18F0A1118);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFA1394();
  sub_18F09459C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v9[31] = 0;
    v7 = sub_18F0942AC();
    v9[30] = 1;
    sub_18F09423C();
    v9[29] = 2;
    sub_18EF8882C();
    sub_18F09426C();
    (*(v4 + 8))(v6, v3);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v7;
}

unint64_t sub_18EFA1394()
{
  result = qword_1ED5FDFE8;
  if (!qword_1ED5FDFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDFE8);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

unint64_t sub_18EFA1418()
{
  result = qword_1ED5FDCE8;
  if (!qword_1ED5FDCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDCE8);
  }

  return result;
}

uint64_t sub_18EFA146C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8D78, &qword_18F0A7C90);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFA16C8();
  sub_18F09459C();
  v9 = 0;
  sub_18EF8882C();
  sub_18F0942CC();
  v7 = v8;
  type metadata accessor for LNArrayValueTypeCapabilities(0);
  v9 = 1;
  sub_18EF8558C(&unk_1ED5FDCD0);
  sub_18F09426C();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

uint64_t sub_18EFA1694@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_18EFA146C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

unint64_t sub_18EFA16C8()
{
  result = qword_1ED5FDD10;
  if (!qword_1ED5FDD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDD10);
  }

  return result;
}

uint64_t sub_18EFA1720(char a1)
{
  if (a1)
  {
    return 0x696C696261706163;
  }

  else
  {
    return 0x61567265626D656DLL;
  }
}

unint64_t sub_18EFA182C()
{
  result = qword_1ED5FD9F8;
  if (!qword_1ED5FD9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD9F8);
  }

  return result;
}

void sub_18EFA1880()
{
  OUTLINED_FUNCTION_180();
  v3 = v2;
  v6 = OUTLINED_FUNCTION_311(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_163();
  __swift_project_boxed_opaque_existential_1Tm(v0, v0[3]);
  v3();
  OUTLINED_FUNCTION_174();
  sub_18F09459C();
  if (!v1)
  {
    sub_18F0942AC();
    v9 = OUTLINED_FUNCTION_279();
    v10(v9);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_177();
}

void sub_18EFA19A8(uint64_t *a1@<X8>)
{
  sub_18EFA1880();
  if (!v1)
  {
    *a1 = v3;
  }
}

unint64_t sub_18EFA1A00()
{
  result = qword_1ED5FDA20;
  if (!qword_1ED5FDA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDA20);
  }

  return result;
}

unint64_t sub_18EFA1AE4()
{
  result = qword_1ED5FD600;
  if (!qword_1ED5FD600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD600);
  }

  return result;
}

uint64_t sub_18EFA1B54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x71)
  {
    *result = a2 - 114;
    if (a3 >= 0x72)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x72)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_18EFA1BA4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x72 && *(a1 + 8))
    {
      v2 = *a1 + 113;
    }

    else
    {
      v2 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
      if (v2 >= 0x71)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

void sub_18EFA1BEC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7FA0, &qword_18F0A0E88);
  v3 = *(v2 - 8);
  v41 = v2;
  v42 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v43 = &v36 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7FA8, &qword_18F0A0E90);
  v40 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v6 = &v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7FB0, &qword_18F0A0E98);
  v39 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7FB8, &qword_18F0A0EA0);
  v44 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFA2438();
  v13 = v45;
  sub_18F09459C();
  if (v13)
  {
    goto LABEL_10;
  }

  v36 = v7;
  v37 = v9;
  v45 = a1;
  v14 = sub_18F0942EC();
  sub_18EF89690(v14, 0);
  if (v17 == v18 >> 1)
  {
    goto LABEL_9;
  }

  if (v17 >= (v18 >> 1))
  {
    __break(1u);
    return;
  }

  v19 = *(v16 + v17);
  sub_18F019378(v17 + 1, v18 >> 1, v15, v16, v17, v18);
  v21 = v20;
  v23 = v22;
  swift_unknownObjectRelease();
  if (v21 != v23 >> 1)
  {
LABEL_9:
    v28 = sub_18F0940BC();
    swift_allocError();
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7F98, &qword_18F0A0E80);
    *v30 = &_s14CodableWrapperON_1;
    sub_18F09422C();
    sub_18F0940AC();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v44 + 8))(v12, v10);
    a1 = v45;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return;
  }

  if (v19)
  {
    if (v19 == 1)
    {
      v47 = 1;
      sub_18EFC4298();
      v24 = v6;
      sub_18F09421C();
      swift_allocObject();
      sub_18EFC42EC();
      v25 = v38;
      v26 = v24;
      sub_18F0942CC();
      v27 = v44;
      swift_unknownObjectRelease();
      (*(v40 + 8))(v26, v25);
    }

    else
    {
      v48 = 2;
      sub_18EFA25DC();
      v34 = v43;
      sub_18F09421C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7CA8, &qword_18F0A0CD0);
      swift_allocBox();
      _s24WhenClauseCodableWrapperVMa(0);
      sub_18EF8558C(&unk_1ED5FD560);
      v35 = v41;
      sub_18F0942CC();
      v27 = v44;
      swift_unknownObjectRelease();
      (*(v42 + 8))(v34, v35);
    }

    (*(v27 + 8))(v12, v10);
  }

  else
  {
    v46 = 0;
    sub_18EFA3100();
    v31 = v37;
    sub_18F09421C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7CD0, &qword_18F0A0CD8);
    swift_allocBox();
    _s27ActionSummaryCodableWrapperVMa(0);
    sub_18EF8558C(&unk_1ED5FDC80);
    v32 = v36;
    sub_18F0942CC();
    v33 = v44;
    swift_unknownObjectRelease();
    (*(v39 + 8))(v31, v32);
    (*(v33 + 8))(v12, v10);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v45);
}

uint64_t sub_18EFA23CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_18EFA240C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_18EFA1BEC(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

unint64_t sub_18EFA2438()
{
  result = qword_1ED5FDC60;
  if (!qword_1ED5FDC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDC60);
  }

  return result;
}

uint64_t sub_18EFA248C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_18EFA24B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_18EFA24B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x75536E6F69746361 && a2 == 0xED00007972616D6DLL;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7453686374697773 && a2 == 0xEF746E656D657461;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x75616C436E656877 && a2 == 0xEA00000000006573)
    {

      return 2;
    }

    else
    {
      v8 = sub_18F09444C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

unint64_t sub_18EFA25DC()
{
  result = qword_1ED5FD590;
  if (!qword_1ED5FD590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD590);
  }

  return result;
}

uint64_t sub_18EFA2638(char a1)
{
  if (!a1)
  {
    return 0x75536E6F69746361;
  }

  if (a1 == 1)
  {
    return 0x7453686374697773;
  }

  return 0x75616C436E656877;
}

uint64_t sub_18EFA26CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = _s14CodableWrapperVMa_22(0);
  MEMORY[0x1EEE9AC00](v4);
  v20 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8DA8, &qword_18F0A7CA8);
  v19 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v7 = &v17 - v6;
  v8 = _s24WhenClauseCodableWrapperVMa(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFA2ADC();
  sub_18F09459C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v17 = v8;
  v11 = v19;
  v12 = v10;
  LOBYTE(v23) = 0;
  sub_18EF8558C(&unk_1ED5FD4F0);
  v14 = v20;
  v13 = v21;
  sub_18F0942CC();
  sub_18EF88240(v14, v12);
  v22 = 1;
  sub_18EF9561C();
  sub_18F0942CC();
  *(v12 + *(v17 + 20)) = v23;
  v22 = 2;
  sub_18F09426C();
  v15 = *(v17 + 24);
  (*(v11 + 8))(v7, v13);
  *(v12 + v15) = v23;
  sub_18EF86A14(v12, v18);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_18EF86A6C();
}

unint64_t sub_18EFA2ADC()
{
  result = qword_1ED5FD578;
  if (!qword_1ED5FD578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD578);
  }

  return result;
}

uint64_t sub_18EFA2B38(char a1)
{
  if (!a1)
  {
    return 0x6F697469646E6F63;
  }

  if (a1 == 1)
  {
    return 1852139639;
  }

  return 0x736977726568746FLL;
}

uint64_t sub_18EFA2B8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB72F8, &qword_18F09BD38);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8E80, &qword_18F0A7D30);
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = _s14CodableWrapperVMa_22(0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v11 + 32);
  v15 = _s19BasicCodableWrapperOMa(0);
  v24 = v14;
  __swift_storeEnumTagSinglePayload(v13 + v14, 1, 1, v15);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFA2F8C();
  sub_18F09459C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_18EF933AC(v13 + v24, &unk_1EACB72F8);
  }

  else
  {
    v20 = v6;
    v28 = 0;
    v17 = v22;
    v16 = v23;
    *v13 = sub_18F09427C();
    v13[1] = v18;
    type metadata accessor for LNActionConfigurationConditionComparisonOperator(0);
    v27 = 1;
    sub_18EF8558C(&unk_1ED5FD470);
    sub_18F0942CC();
    v13[2] = v25;
    v26 = 2;
    sub_18EF8558C(&unk_1ED5FE008);
    sub_18F09426C();
    (*(v17 + 8))(v9, v16);
    sub_18EF872D4();
    sub_18EF86A14(v13, v21);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_18EF86A6C();
  }
}

unint64_t sub_18EFA2F8C()
{
  result = qword_1ED5FD508;
  if (!qword_1ED5FD508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD508);
  }

  return result;
}

uint64_t sub_18EFA2FE8(char a1)
{
  if (!a1)
  {
    return 0xD000000000000013;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0x65756C6176;
}

unint64_t sub_18EFA3100()
{
  result = qword_1ED5FDC38;
  if (!qword_1ED5FDC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDC38);
  }

  return result;
}

uint64_t sub_18EFA3174@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8DC0, &qword_18F0A7CB8);
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v24 - v5;
  v7 = _s27ActionSummaryCodableWrapperVMa(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = (v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v8 + 20);
  v12 = sub_18F0932BC();
  v30 = v11;
  __swift_storeEnumTagSinglePayload(v10 + v11, 1, 1, v12);
  v13 = a1[3];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v13);
  sub_18EFA3620();
  v14 = v28;
  sub_18F09459C();
  if (v14)
  {
    v15 = v30;
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    sub_18F01E5A4(0, 0);
    sub_18EF933AC(v10 + v15, &qword_1EACB72C8);
  }

  else
  {
    v34 = 0;
    sub_18EFA3674();
    sub_18F09426C();
    v16 = v32;
    v17 = v33;
    v28 = v31;
    *v10 = v31;
    v10[1] = v16;
    v24[1] = v17;
    v24[2] = v16;
    v10[2] = v17;
    LOBYTE(v31) = 1;
    sub_18EF8558C(&unk_1ED5FF550);
    sub_18F09426C();
    sub_18EF872D4();
    LOBYTE(v31) = 2;
    v18 = sub_18F09423C();
    v19 = v26;
    v20 = (v10 + *(v7 + 24));
    *v20 = v18;
    v20[1] = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7768, &qword_18F09BEF0);
    v34 = 3;
    sub_18EFA3C14(&unk_1ED5FDD20);
    v22 = v27;
    sub_18F0942CC();
    (*(v19 + 8))(v6, v22);
    *(v10 + *(v7 + 28)) = v31;
    sub_18EF86A14(v10, v25);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    return sub_18EF86A6C();
  }
}

unint64_t sub_18EFA3620()
{
  result = qword_1ED5FDC98;
  if (!qword_1ED5FDC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDC98);
  }

  return result;
}

unint64_t sub_18EFA3674()
{
  result = qword_1ED5FDC00;
  if (!qword_1ED5FDC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDC00);
  }

  return result;
}

unint64_t sub_18EFA36D0(char a1)
{
  result = 0x537972616D6D7573;
  switch(a1)
  {
    case 1:
      result = 0x5255656C646E7562;
      break;
    case 2:
      result = 0x656C626174;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_18EFA377C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_211(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_209(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x18EFA3838);
      case 4:
        result = OUTLINED_FUNCTION_210(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_181(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_18EFA3860(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_170(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_170((*a1 | (v4 << 8)) - 4);
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

      return OUTLINED_FUNCTION_170((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_170((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_170(v8);
}

uint64_t sub_18EFA38EC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8DE0, &qword_18F0A7CD0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFA3B74();
  sub_18F09459C();
  if (!v1)
  {
    v9[31] = 0;
    v7 = sub_18F09427C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7768, &qword_18F09BEF0);
    v9[15] = 1;
    sub_18EFA3C14(&unk_1ED5FDD20);
    sub_18F0942CC();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

uint64_t sub_18EFA3B14@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_18EFA3B74()
{
  result = qword_1ED5FDB58;
  if (!qword_1ED5FDB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDB58);
  }

  return result;
}

uint64_t sub_18EFA3BD0(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x745374616D726F66;
  }
}

unint64_t sub_18EFA3C14(uint64_t a1)
{
  result = OUTLINED_FUNCTION_293(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7768, &qword_18F09BEF0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_18EFA3C84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

      return OUTLINED_FUNCTION_84(result, a2);
    }

    *(result + 24) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_84(result, a2);
    }
  }

  return result;
}

uint64_t sub_18EFA3CBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_170(-1);
  }

  if (a2 < 0 && *(a1 + 24))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_416();
  }

  return OUTLINED_FUNCTION_170(v2);
}

unint64_t sub_18EFA3D24(unint64_t result)
{
  switch(result >> 60)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18EFA3D90(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_18EFA3DA4(result);
  }

  return result;
}

unint64_t sub_18EFA3DA4(unint64_t result)
{
  switch(result >> 60)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:

      break;
    default:
      return result;
  }

  return result;
}

id sub_18EFA3E28(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a1 != 1 || !a3)
  {
    if (a1)
    {
    }

    else
    {
      if ((~a4 & 0xF000000000000007) == 0)
      {

        return 0;
      }

      sub_18EF825F4(0, &unk_1ED5FFA60, off_1E72B0220);
      sub_18EFA3D24(a4);
      v9 = sub_18EF9E62C(a4);
      if (v9)
      {
        v10 = v9;
        v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValueType_];
        sub_18EFA3D90(a4);

        sub_18EFA3D90(a4);
        return v7;
      }

      sub_18EFA3D90(a4);
    }

    sub_18EFA3D90(a4);
    return 0;
  }

  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v6 = sub_18F093B5C();

  v7 = [v5 initWithQueryType_];

  sub_18EFA3D90(a4);

  return v7;
}

unint64_t sub_18EFA3F8C(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_18EFA3D24(result);
  }

  return result;
}

id sub_18EFA3FA0(unint64_t a1, uint64_t a2, char a3)
{
  sub_18EF825F4(0, &unk_1ED5FFA60, off_1E72B0220);
  v6 = sub_18EF9E62C(a1);
  if (v6)
  {
    v7 = v6;
    if (a3)
    {
      a2 = 3;
    }

    v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithMemberValueType:v6 capabilities:a2];

    sub_18EFA3DA4(a1);
  }

  else
  {
    sub_18EFA3DA4(a1);
    return 0;
  }

  return v8;
}

id sub_18EFA4058(uint64_t a1)
{
  if (a1)
  {
    switch(a1)
    {
      case 14:
        v1 = &selRef_currencyAmountValueType;
        break;
      case 12:
        v1 = &selRef_fileValueType;
        break;
      case 13:
        v1 = &selRef_paymentMethodValueType;
        break;
      case 3:
        v1 = &selRef_personValueType;
        break;
      default:
        return 0;
    }
  }

  else
  {
    v1 = &selRef_applicationValueType;
  }

  return [objc_opt_self() *v1];
}

char *sub_18EFA40F4(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  v7 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    while (1)
    {
      v14 = *v6;

      a1(&v11, &v14);
      if (v3)
      {
        break;
      }

      if (v12)
      {
        sub_18EF914D4(&v11, v13);
        sub_18EF914D4(v13, &v11);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_18EFA0044(0, *(v7 + 2) + 1, 1, v7);
        }

        v9 = *(v7 + 2);
        v8 = *(v7 + 3);
        if (v9 >= v8 >> 1)
        {
          v7 = sub_18EFA0044((v8 > 1), v9 + 1, 1, v7);
        }

        *(v7 + 2) = v9 + 1;
        sub_18EF914D4(&v11, &v7[32 * v9 + 32]);
      }

      else
      {
        sub_18EF933AC(&v11, &qword_1EACB9180);
      }

      ++v6;
      if (!--v5)
      {
        return v7;
      }
    }
  }

  return v7;
}

id sub_18EFA4278(unint64_t a1, uint64_t a2, void *a3)
{
  v6 = _s24WhenClauseCodableWrapperVMa(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s27ActionSummaryCodableWrapperVMa(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!(a1 >> 62))
  {
    v17 = swift_projectBox();
    sub_18EF86A14(v17, v11);
    sub_18EF825F4(0, &qword_1ED5FDBD0, off_1E72AFEC0);
    v16 = sub_18EFA4934(v11, a2, a3);
LABEL_6:
    sub_18EF86A6C();
    return v16;
  }

  if (a1 >> 62 != 1)
  {
    v18 = swift_projectBox();
    sub_18EF86A14(v18, v8);
    sub_18EF825F4(0, &unk_1ED5FD650, off_1E72AFE68);
    v16 = sub_18EFA4484(v8, a2, a3);
    goto LABEL_6;
  }

  v12 = a1 & 0x3FFFFFFFFFFFFFFFLL;
  v13 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v14 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v15 = *(v12 + 32);
  sub_18EF825F4(0, &unk_1ED5FD518, off_1E72AFE58);
  return sub_18EFC6860(v13, v14, v15, a2, a3);
}

id sub_18EFA4484(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = _s14CodableWrapperVMa_22(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_18EF825F4(0, &unk_1ED5FD4E0, off_1E72AFE48);
  sub_18EF86A14(a1, v11);
  sub_18EF9FE2C();
  v12 = a3;
  result = sub_18EFA468C(v11, v8, a3);
  if (result)
  {
    v14 = result;
    sub_18EF825F4(0, &qword_1ED5FDBC8, off_1E72AFE40);
    v15 = _s24WhenClauseCodableWrapperVMa(0);
    v16 = sub_18EFA4278(*(a1 + *(v15 + 20)), a2, a3);
    if (v16)
    {
      v17 = v16;
      v18 = *(a1 + *(v15 + 24));
      if ((~v18 & 0xF000000000000007) != 0)
      {

        v19 = sub_18EFA4278(v18, a2, a3);
        sub_18EFA4FC0(v18);
      }

      else
      {
        v19 = 0;
      }

      sub_18EF825F4(0, &unk_1ED5FD650, off_1E72AFE68);
      return sub_18EFA4F58(v14, v17, v19);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_18EFA468C(void *a1, uint64_t a2, void *a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_18F093B5C();
  v8 = a1[2];
  _s14CodableWrapperVMa_22(0);
  v9 = sub_18EFA4790(sub_18EFC74D8);
  v10 = [v6 initWithParameterIdentifier:v7 comparisonOperator:v8 value:v9];

  sub_18EF86A6C();
  sub_18EF933AC(a2, &qword_1EACB72C8);
  return v10;
}

uint64_t sub_18EFA4790(void (*a1)(uint64_t *__return_ptr, char *))
{
  v3 = _s19BasicCodableWrapperOMa(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB72F8, &qword_18F09BD38);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - v7;
  sub_18EF9FE2C();
  if (__swift_getEnumTagSinglePayload(v8, 1, v3) == 1)
  {
    return 0;
  }

  sub_18EF88240(v8, v5);
  a1(&v11, v5);
  if (v1)
  {
    result = sub_18EF86A6C();
    __break(1u);
  }

  else
  {
    sub_18EF86A6C();
    return v11;
  }

  return result;
}

id sub_18EFA4934(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23[-v10];
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  v24 = a2;
  v25 = a3;
  v15 = sub_18EFA4B50(sub_18EFA4D04, v23, v12, v13, v14);
  v16 = _s27ActionSummaryCodableWrapperVMa(0);
  sub_18EF9FE2C();
  v17 = sub_18F0932BC();
  if (__swift_getEnumTagSinglePayload(v9, 1, v17) == 1)
  {
    sub_18EF9FE2C();
    if (__swift_getEnumTagSinglePayload(v9, 1, v17) != 1)
    {
      sub_18EF933AC(v9, &qword_1EACB72C8);
    }
  }

  else
  {
    (*(*(v17 - 8) + 32))(v11, v9, v17);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v17);
  }

  v18 = (a1 + *(v16 + 24));
  v19 = *v18;
  v20 = v18[1];
  v21 = *(a1 + *(v16 + 28));
  objc_allocWithZone(LNActionSummary);

  return sub_18EFA4E30(v15, v11, v19, v20, v21);
}

uint64_t sub_18EFA4B50(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    return 0;
  }

  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;

  a1(&v9, v8);

  if (v5)
  {

    __break(1u);
  }

  else
  {

    return v9;
  }

  return result;
}

void sub_18EFA4C04()
{
  OUTLINED_FUNCTION_180();
  v12 = v1;
  v13 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  OUTLINED_FUNCTION_95(v8);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_46();
  sub_18EF825F4(0, v5, v3);
  OUTLINED_FUNCTION_366();
  sub_18EF9FE2C();
  v10 = v7;

  v11 = OUTLINED_FUNCTION_318();
  *v12 = v13(v11);
  OUTLINED_FUNCTION_177();
}

id sub_18EFA4D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v8 = sub_18F093B5C();
  v9 = sub_18F093DBC();

  v10 = [v7 initWithFormatString:v8 parameterIdentifiers:v9];

  sub_18EF933AC(a4, &qword_1EACB72C8);
  return v10;
}

id sub_18EFA4E30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_18F0932BC();
  v11 = 0;
  if (__swift_getEnumTagSinglePayload(a2, 1, v10) != 1)
  {
    v11 = sub_18F09324C();
    (*(*(v10 - 8) + 8))(a2, v10);
  }

  if (a4)
  {
    v12 = sub_18F093B5C();
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_18F093DBC();

  v14 = [v6 initWithSummaryString:a1 bundleURL:v11 table:v12 otherParameterIdentifiers:v13];

  return v14;
}

id sub_18EFA4F58(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCondition:a1 when:a2 otherwise:a3];

  return v6;
}

uint64_t sub_18EFA4FC0(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So11LNValueTypeC12LinkMetadataE14CodableWrapper33_8F5A22252D2EEFBD74C1473F6DDC7E6CLLOSg(void *a1)
{
  v1 = (*a1 >> 60) & 0x8F | (16 * (*a1 & 7));
  v2 = v1 ^ 0x7E;
  v3 = 128 - v1;
  if (v2 >= 0x72)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t OUTLINED_FUNCTION_117(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_187()
{
  *(v1 - 344) = v0;

  return swift_unknownObjectRelease();
}

void LNEnumMetadata.init(from:bundleURL:effectiveBundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_260();
  a19 = v23;
  a20 = v24;
  v146 = v25;
  v27 = v26;
  v28 = OUTLINED_FUNCTION_204();
  v29 = _s14CodableWrapperVMa_0(v28);
  v30 = OUTLINED_FUNCTION_95(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_22();
  v144 = v32 - v31;
  v33 = OUTLINED_FUNCTION_237();
  v34 = _s14CodableWrapperVMa(v33);
  v35 = OUTLINED_FUNCTION_45(v34);
  v37 = v36;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_42();
  v40 = (v38 - v39);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v133 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v45 = OUTLINED_FUNCTION_95(v44);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_301();
  MEMORY[0x1EEE9AC00](v46);
  v142 = v27;
  v148 = &v133 - v47;
  sub_18EF9FE2C();
  v48 = type metadata accessor for LNEnumMetadata.CodableWrapper(0);
  v49 = *(v20 + *(v48 + 52));
  if (v49 != 2 && (v49 & 1) != 0 || (static LNEnumMetadata.enumIdentifierIsSystem(enumIdentifier:)(*v20, v20[1]) & 1) != 0)
  {
    sub_18F09323C();
    v50 = sub_18F0932BC();
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v50);
    sub_18EF872D4();
  }

  v140 = sub_18F093B5C();

  v51 = sub_18F093B5C();
  OUTLINED_FUNCTION_234(v51);

  v52 = v20[4];
  v145 = v48;
  if (!v52)
  {
    sub_18F093A5C();
    OUTLINED_FUNCTION_295();
  }

  v143 = v22;

  v138 = sub_18F093A3C();

  v53 = v20[5];
  v54 = MEMORY[0x1E69E7CC0];
  v149 = v20;
  v141 = v21;
  LODWORD(v147) = v49;
  if (v53)
  {
    v55 = *(v53 + 16);
    if (v55)
    {
      v56 = v53 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
      v57 = MEMORY[0x1E69E7CC0];
      v58 = *(v37 + 72);
      do
      {
        OUTLINED_FUNCTION_9();
        sub_18EF86A14(v56, v43);
        OUTLINED_FUNCTION_245();
        if (v59)
        {
          v60 = sub_18EF825F4(0, &qword_1ED5FF350, off_1E72AFFF8);
          OUTLINED_FUNCTION_9();
          v61 = OUTLINED_FUNCTION_368();
          sub_18EF86A14(v61, v62);
          v63 = sub_18EF9FEB8(v40);
          *(&v151 + 1) = v60;
          *&v150 = v63;
        }

        else
        {
          v150 = 0u;
          v151 = 0u;
        }

        OUTLINED_FUNCTION_63();
        sub_18EF86A6C();
        if (*(&v151 + 1))
        {
          sub_18EF914D4(&v150, &v152);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v66 = OUTLINED_FUNCTION_242();
            v57 = sub_18EFA0044(v66, v67, v68, v57);
          }

          v65 = *(v57 + 2);
          v64 = *(v57 + 3);
          if (v65 >= v64 >> 1)
          {
            v69 = OUTLINED_FUNCTION_114(v64);
            v57 = sub_18EFA0044(v69, v65 + 1, 1, v57);
          }

          *(v57 + 2) = v65 + 1;
          sub_18EF914D4(&v152, &v57[32 * v65 + 32]);
        }

        else
        {
          sub_18EF933AC(&v150, &qword_1EACB9180);
        }

        v56 += v58;
        --v55;
      }

      while (v55);
    }

    else
    {
      v57 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v57 = MEMORY[0x1E69E7CC0];
  }

  sub_18EF825F4(0, qword_1ED5FF370, 0x1E695DFB8);
  v70 = sub_18EF9CBD0(v57, MEMORY[0x1E69E7CA0] + 8, &selRef_initWithArray_);
  sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
  v71 = v144;
  v72 = v145;
  OUTLINED_FUNCTION_8();
  v73 = v149;
  sub_18EF86A14(v149 + v74, v71);
  v75 = v148;
  sub_18EF9FE2C();
  v76 = v146;
  v77 = v146;
  v78 = OUTLINED_FUNCTION_244();
  sub_18EF9CEB8(v78, v79, v76);
  v80 = v72[9];
  v81 = v77;
  sub_18EFA5D44(v73 + v80, v75, v76);
  v82 = *(v73 + v72[14]);
  if (v82)
  {
    v83 = v81;
    sub_18EFD6FA4(v82, v75, v76);
  }

  v84 = objc_allocWithZone(LNTypeDisplayRepresentation);
  OUTLINED_FUNCTION_130();
  v143 = sub_18EF9307C();
  v85 = v149;
  OUTLINED_FUNCTION_281(v81);
  v86 = OUTLINED_FUNCTION_168();
  sub_18EFA5F9C(v86, v87, v76);
  sub_18EF825F4(0, &qword_1ED5FDFF0, off_1E72B0040);
  OUTLINED_FUNCTION_142();
  v144 = sub_18F093DBC();

  if (*(v85 + v72[11] + 8))
  {
    v137 = sub_18F093B5C();
  }

  else
  {
    v137 = 0;
  }

  v88 = v147;
  v89 = *(v85 + v72[12]);
  if (v89)
  {
    sub_18EF94FC0(v89);
    v90 = OUTLINED_FUNCTION_138();
    type metadata accessor for LNPlatformName(v90, v91, v92, v93);
    sub_18EF825F4(0, &qword_1ED5FFA40, off_1E72AFF68);
    OUTLINED_FUNCTION_2();
    sub_18EF8558C(v94);
    OUTLINED_FUNCTION_144();
    v95 = sub_18F093A3C();
    OUTLINED_FUNCTION_232(v95, &a14);
  }

  else
  {
    v136 = 0;
  }

  if (v88 == 2)
  {
    v135 = 0;
  }

  else
  {
    v135 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  if (*(v85 + v72[15] + 8))
  {
    v147 = sub_18F093B5C();
  }

  else
  {
    v147 = 0;
  }

  v96 = *(v85 + v72[16]);
  if (v96)
  {
    v97 = *(v96 + 16);
    if (v97)
    {
      *&v150 = MEMORY[0x1E69E7CC0];
      sub_18F09411C();
      sub_18EF825F4(0, qword_1ED5FE9A0, off_1E72AFF10);
      v98 = (v96 + 72);
      do
      {
        v99 = *(v98 - 4);
        v100 = *(v98 - 3);
        v101 = *(v98 - 2);
        v103 = *(v98 - 1);
        v102 = *v98;
        *&v152 = *(v98 - 5);
        *(&v152 + 1) = v99;
        v153 = v100;
        v154 = v101;
        v155 = v103;
        v156 = v102;

        sub_18EFA1084(&v152);
        sub_18F0940FC();
        sub_18F09412C();
        OUTLINED_FUNCTION_178();
        sub_18F09413C();
        sub_18F09410C();
        v98 += 6;
        --v97;
      }

      while (v97);
      v85 = v149;
    }

    sub_18EF825F4(0, qword_1ED5FE9A0, off_1E72AFF10);
    OUTLINED_FUNCTION_142();
    v146 = sub_18F093DBC();
  }

  else
  {
    v146 = 0;
  }

  if (*(v85 + v72[17]) == 2)
  {
    v105 = [objc_allocWithZone(LNVisibilityMetadata) initWithIsDiscoverable:1 assistantOnly:0];
  }

  else
  {
    v104 = *(v85 + v72[17]);
    v105 = [objc_allocWithZone(LNVisibilityMetadata) initWithIsDiscoverable:v104 & 1 assistantOnly:(v104 >> 8) & 1];
  }

  OUTLINED_FUNCTION_228(v105);
  v106 = *(v85 + v72[18]);
  if (v106)
  {
    v145 = v70;
    v107 = 0;
    *&v150 = v54;
    v108 = *(v106 + 16);
    for (i = (v106 + 56); ; i += 4)
    {
      if (v108 == v107)
      {
        sub_18EF825F4(0, &unk_1EACB72E8, off_1E72B01E8);
        v106 = OUTLINED_FUNCTION_414();

        v115 = v145;
        goto LABEL_57;
      }

      if (v107 >= *(v106 + 16))
      {
        break;
      }

      v111 = *(i - 1);
      v110 = *i;
      v112 = *(i - 3);
      v113 = *(i - 2);
      sub_18EF825F4(0, &unk_1EACB72E8, off_1E72B01E8);

      sub_18EFF196C(v112, v113, v111, v110);
      MEMORY[0x193AD88C0]();
      v114 = *((v150 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v114 >> 1)
      {
        OUTLINED_FUNCTION_114(v114);
        sub_18F093DFC();
      }

      OUTLINED_FUNCTION_140();
      sub_18F093E3C();
      ++v107;
    }

    __break(1u);
  }

  else
  {
    v115 = v70;
LABEL_57:
    v116 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v133 = v106;
    v132 = v106;
    v117 = v134;
    v118 = v135;
    v119 = v136;
    v120 = v137;
    v121 = v140;
    v122 = v139;
    v123 = v138;
    v125 = v143;
    v124 = v144;
    v145 = [v116 initWithIdentifier:v140 mangledTypeName:v139 mangledTypeNameByBundleIdentifier:v138 effectiveBundleIdentifiers:v115 displayRepresentation:v143 cases:v144 customIntentEnumTypeName:v137 availabilityAnnotations:v136 system:v135 fullyQualifiedTypeName:v147 assistantDefinedSchemas:v146 visibilityMetadata:v134 allowedTargets:v132];
    OUTLINED_FUNCTION_116();

    OUTLINED_FUNCTION_319();
    OUTLINED_FUNCTION_268();
    sub_18EF933AC(v128, v129);
    OUTLINED_FUNCTION_268();
    sub_18EF933AC(v130, v131);
    OUTLINED_FUNCTION_23();
    sub_18EF86A6C();
    OUTLINED_FUNCTION_259();
  }
}

uint64_t static LNEnumMetadata.enumIdentifierIsSystem(enumIdentifier:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB85D0, &qword_18F0A1218);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F0AAAC0;
  OUTLINED_FUNCTION_0_15();
  v5[4] = 0xD00000000000001DLL;
  v5[5] = v6;
  v5[6] = 0x704F65676E616843;
  v5[7] = 0xEF6E6F6974617265;
  OUTLINED_FUNCTION_0_15();
  *(v7 + 64) = v9;
  *(v7 + 72) = v8;
  OUTLINED_FUNCTION_0_15();
  *(v10 + 80) = v12;
  *(v10 + 88) = v11;
  OUTLINED_FUNCTION_0_15();
  *(v13 + 96) = v15;
  *(v13 + 104) = v14;
  strcpy((v13 + 112), "UndoOperation");
  *(v13 + 126) = -4864;
  v18[0] = a1;
  v18[1] = a2;
  v17[2] = v18;
  LOBYTE(a2) = sub_18EFA5BB8(sub_18EFA5C94, v17, inited);
  swift_setDeallocating();
  sub_18EFA5CF8();
  return a2 & 1;
}

BOOL sub_18EFA5BB8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_18EFA5CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_18F09444C() & 1;
  }
}

uint64_t sub_18EFA5CF8()
{
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

id sub_18EFA5D44(uint64_t a1, uint64_t a2, void *a3)
{
  v19[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v19 - v5;
  v7 = _s14CodableWrapperVMa_0(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = (v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v12 = v19 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v19 - v14;
  sub_18EF9FE2C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v7) == 1)
  {

    return 0;
  }

  else
  {
    sub_18EF88240(v15, v12);
    sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
    sub_18EF86A14(v12, v10);
    sub_18EF9FE2C();
    v17 = a3;
    v16 = sub_18EF9CEB8(v10, v6, a3);
    sub_18EF86A6C();
  }

  return v16;
}

uint64_t sub_18EFA5F9C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  v9 = _s14CodableWrapperVMa_18(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a1 + 16);
  if (v13)
  {
    v17 = v3;
    v21 = MEMORY[0x1E69E7CC0];
    sub_18F09411C();
    v14 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v15 = sub_18EF825F4(0, &qword_1ED5FDFF0, off_1E72B0040);
    v19 = *(v10 + 72);
    v20 = v15;
    do
    {
      sub_18EF86A14(v14, v12);
      sub_18EF9FE2C();
      v18 = a3;
      sub_18EFA61D8(v12, v8, a3);
      sub_18F0940FC();
      sub_18F09412C();
      sub_18F09413C();
      sub_18F09410C();
      v14 += v19;
      --v13;
    }

    while (v13);

    return v21;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

id sub_18EFA61D8(void *a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  v9 = _s14CodableWrapperVMa_2(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v13 = sub_18F093B5C();
  sub_18EF825F4(0, qword_1ED5FE100, off_1E72AFFF0);
  v14 = _s14CodableWrapperVMa_18(0);
  sub_18EF86A14(a1 + *(v14 + 20), v11);
  sub_18EF9FE2C();
  v15 = a3;
  v16 = sub_18EFA63B4(v11, v8, a3);
  v17 = [v12 initWithIdentifier:v13 displayRepresentation:v16];

  sub_18EF933AC(a2, &qword_1EACB72C8);
  sub_18EF86A6C();
  return v17;
}

id sub_18EFA63B4(uint64_t a1, uint64_t a2, void *a3)
{
  v69 = a3;
  v75 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7830, &qword_18F09DA08);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v70 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v71 = &v66 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v66 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v66 - v15;
  v17 = _s14CodableWrapperVMa_0(0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v66 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = (&v66 - v21);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v66 - v23;
  v25 = _s14CodableWrapperVMa_2(0);
  v68 = a1;
  sub_18EF9FE2C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v17);
  v73 = v10;
  v74 = v22;
  if (EnumTagSinglePayload == 1)
  {
    v27 = sub_18EF933AC(v16, &qword_1EACB72D0);
    v72 = 0;
    v28 = v75;
    v29 = v69;
  }

  else
  {
    sub_18EF88240(v16, v24);
    sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
    sub_18EF86A14(v24, v22);
    v28 = v75;
    sub_18EF9FE2C();
    v29 = v69;
    v30 = v69;
    v72 = sub_18EF9CEB8(v22, v10, v29);
    v27 = sub_18EF86A6C();
  }

  v31 = v68;
  if (*(v68 + *(v25 + 32)))
  {
    MEMORY[0x1EEE9AC00](v27);
    *(&v66 - 2) = v28;
    *(&v66 - 1) = v29;
    v69 = sub_18EF9D97C(sub_18EFA3E10, (&v66 - 4), v32, _s14CodableWrapperVMa_0, v33, v34, v35, v36, v66, v67, v68, v69);
  }

  else
  {
    v69 = 0;
  }

  sub_18EF9FE2C();
  if (__swift_getEnumTagSinglePayload(v14, 1, v17) == 1)
  {
    sub_18EF933AC(v14, &qword_1EACB72D0);
    v67 = 0;
    v37 = v73;
    v38 = v74;
  }

  else
  {
    v39 = v66;
    sub_18EF88240(v14, v66);
    sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
    v38 = v74;
    sub_18EF86A14(v39, v74);
    v37 = v73;
    sub_18EF9FE2C();
    v40 = v29;
    v67 = sub_18EF9CEB8(v38, v37, v29);
    sub_18EF86A6C();
  }

  v41 = v70;
  v42 = v31;
  sub_18EF9FE2C();
  v43 = _s14CodableWrapperOMa(0);
  v44 = v29;
  if (__swift_getEnumTagSinglePayload(v41, 1, v43) == 1)
  {
    v45 = v71;
    sub_18EF9FE2C();
    if (__swift_getEnumTagSinglePayload(v41, 1, v43) != 1)
    {
      sub_18EF933AC(v41, &qword_1EACB7830);
    }
  }

  else
  {
    v45 = v71;
    sub_18EF88240(v41, v71);
    __swift_storeEnumTagSinglePayload(v45, 0, 1, v43);
  }

  sub_18EF825F4(0, &qword_1ED5FE018, off_1E72B0070);
  v46 = sub_18EFA6BE0();
  sub_18EF933AC(v45, &qword_1EACB7830);
  if (v46)
  {
    v47 = v46;
    v48 = [v47 inImage];
    v49 = [v48 _isSystem];

    if ((v49 & 1) == 0)
    {
      sub_18F0126AC([v47 inImage], &selRef__name);
      if (v50)
      {

        if (v44)
        {
          v51 = [v44 bundleIdentifier];
          v52 = sub_18F093B8C();
          v53 = v37;
          v55 = v54;

          v56 = [v47 inImage];
          v57 = v55;
          v37 = v53;
          v38 = v74;
          sub_18F012714(v52, v57, v56);

          v47 = v56;
        }
      }
    }
  }

  sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
  sub_18EF86A14(v42, v38);
  sub_18EF9FE2C();
  v58 = v44;
  v59 = sub_18EF9CEB8(v38, v37, v44);
  if (v69)
  {
    v60 = sub_18F093DBC();
  }

  else
  {
    v60 = 0;
  }

  v61 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v62 = v72;
  v63 = v67;
  v64 = [v61 initWithTitle:v59 subtitle:v72 image:v46 synonyms:v60 descriptionText:v67];

  sub_18EF933AC(v75, &qword_1EACB72C8);
  sub_18EF86A6C();
  return v64;
}

id sub_18EFA6BE0()
{
  v0 = sub_18F0932BC();
  v56[0] = *(v0 - 8);
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v56 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7830, &qword_18F09DA08);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v56 - v7;
  v9 = _s14CodableWrapperOMa(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v56 - v13;
  sub_18EF9FE2C();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
  {
    sub_18EF88240(v8, v14);
    sub_18EF86A14(v14, v12);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v39 = *v12;
        v40 = *(v12 + 1);
        if (v12[57])
        {
          v41 = 0;
          v42 = 0;
LABEL_35:
          sub_18EF825F4(0, &qword_1ED5FCF48, off_1E72B01B0);
          v47 = v41;
          v52 = v42;
          v53 = sub_18EFA72AC(v42, v41);
          v54 = objc_allocWithZone(LNSymbolImage);
          v15 = sub_18EFA7308(v39, v40, v53, 0);

          goto LABEL_36;
        }

        v43 = *(v12 + 5);
        v44 = *(v12 + 6);
        v45 = v12[56];
        if (*(v12 + 8))
        {
          v42 = 0;
          v41 = 0;
          if (v45)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v48 = [objc_allocWithZone(LNSystemNamedColor) initWithSystemColor:*(v12 + 2) variant:*(v12 + 3)];
          if (v48)
          {
            v49 = v48;
            v42 = [objc_allocWithZone(LNSymbolImageColorSpecification) initWithSystemNamedColor_];
          }

          else
          {
            v42 = 0;
          }

          if (v45)
          {
            goto LABEL_34;
          }
        }

        v50 = [objc_allocWithZone(LNSystemNamedColor) initWithSystemColor:v43 variant:v44];
        if (v50)
        {
          v51 = v50;
          v41 = [objc_allocWithZone(LNSymbolImageColorSpecification) initWithSystemNamedColor_];

          goto LABEL_35;
        }

LABEL_34:
        v41 = 0;
        goto LABEL_35;
      case 2u:
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8380, &qword_18F0A10A0);
        v27 = *&v12[v26[12]];
        v28 = *&v12[v26[16]];
        v29 = &v12[v26[20]];
        v30 = *v29;
        v31 = v29[8];
        v32 = v56[0];
        (*(v56[0] + 32))(v5, v12, v0);
        (*(v32 + 16))(v3, v5, v0);
        if (v31)
        {
          v33 = 0;
        }

        else
        {
          v33 = v30;
        }

        sub_18EF825F4(0, &qword_1ED5FE018, off_1E72B0070);
        v15 = sub_18EFFFA38(v3, 0, v33, v27, v28);
        (*(v32 + 8))(v5, v0);
        goto LABEL_37;
      case 3u:
        v35 = *v12;
        v34 = *(v12 + 1);
        v36 = *(v12 + 2);
        v37 = v12[24];
        sub_18EF825F4(0, &qword_1ED5FCE00, 0x1E696ACD0);
        sub_18EF825F4(0, &qword_1ED5FCDF8, 0x1E696E980);
        v38 = sub_18F093EEC();
        v15 = v38;
        if (!v38)
        {
          sub_18EF86A6C();
          sub_18EF9A4AC(v35, v34);
          return v15;
        }

        if (v37)
        {
          v46 = 0;
        }

        else
        {
          v46 = v36;
        }

        sub_18EF825F4(0, &qword_1ED5FE018, off_1E72B0070);
        v47 = v15;
        v15 = sub_18EFFFB04(v47, v46, 0);
        sub_18EF9A4AC(v35, v34);
LABEL_36:

        goto LABEL_37;
      case 4u:
        v23 = *v12;
        v24 = *(v12 + 1);
        v25 = *(v12 + 2);
        sub_18EF825F4(0, &unk_1ED5FD340, off_1E72B0068);
        v15 = sub_18EFFF9BC(v23, v24, v25);
        goto LABEL_37;
      default:
        v16 = *v12;
        v17 = *(v12 + 1);
        v19 = *(v12 + 2);
        v18 = *(v12 + 3);
        if (v12[40])
        {
          v20 = 0;
        }

        else
        {
          v20 = *(v12 + 4);
        }

        sub_18EF825F4(0, &qword_1ED5FE018, off_1E72B0070);
        v21 = sub_18EFFF930(v16, v17, 0, v20);
        v15 = v21;
        if (!v18)
        {
          goto LABEL_37;
        }

        if (v21)
        {
          v22 = [v21 inImage];
          sub_18F012714(v19, v18, v22);

LABEL_37:
          sub_18EF86A6C();
        }

        else
        {
          sub_18EF86A6C();
        }

        return v15;
    }
  }

  sub_18EF933AC(v8, &qword_1EACB7830);
  return 0;
}

id sub_18EFA72AC(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithForeground:a1 background:a2];

  return v4;
}

id sub_18EFA7308(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_18F093B5C();

  v8 = [v4 initWithSymbolSystemName:v7 colorization:a3 configuration:a4];

  return v8;
}

unint64_t sub_18EFA7380()
{
  result = qword_1ED5FD180;
  if (!qword_1ED5FD180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD180);
  }

  return result;
}

void sub_18EFA73D4(uint64_t *a1@<X8>)
{
  sub_18EFA1880();
  if (!v1)
  {
    *a1 = v3;
  }
}

unint64_t sub_18EFA742C()
{
  result = qword_1ED5FD1A0;
  if (!qword_1ED5FD1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD1A0);
  }

  return result;
}

unint64_t sub_18EFA7480()
{
  result = qword_1ED5FCF58;
  if (!qword_1ED5FCF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCF58);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_352()
{
}

id sub_18EFA756C(uint64_t a1)
{
  if (a1)
  {
    type metadata accessor for LNSearchCriteriaValueTypeIdentifier(0);
    result = sub_18F09447C();
    __break(1u);
  }

  else
  {
    v1 = [objc_opt_self() stringValueType];

    return v1;
  }

  return result;
}

uint64_t sub_18EFA7610(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 1:
    case 2:
    case 6:

      goto LABEL_4;
    case 3:

      goto LABEL_4;
    case 4:
    case 5:

LABEL_4:

      break;
    default:
      return v6;
  }

  return v6;
}

unint64_t sub_18EFA76BC()
{
  result = qword_1ED5FDB48;
  if (!qword_1ED5FDB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDB48);
  }

  return result;
}

uint64_t sub_18EFA7724(char a1)
{
  if (a1)
  {
    return 0x79747265706F7270;
  }

  else
  {
    return 0x797469746E65;
  }
}

id sub_18EFA7764(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, SEL *a5)
{
  v8 = sub_18F093B5C();

  OUTLINED_FUNCTION_189();
  sub_18F093B5C();
  OUTLINED_FUNCTION_357();

  v9 = [v5 *a5];

  return v9;
}

uint64_t OUTLINED_FUNCTION_37_0(uint64_t a1)
{

  return sub_18F0941DC();
}

uint64_t OUTLINED_FUNCTION_18@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

void *OUTLINED_FUNCTION_18_2(void *a1)
{

  return memcpy(a1, (v1 + 488), 0x50uLL);
}

uint64_t sub_18EFA7A98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v32 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v29 - v6;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8160, &qword_18F0A0FD0);
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v8 = &v29 - v7;
  v9 = _s14CodableWrapperVMa_29(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v10 + 24);
  v14 = _s14CodableWrapperVMa_0(0);
  v38 = v13;
  __swift_storeEnumTagSinglePayload(v12 + v13, 1, 1, v14);
  v40 = *(v9 + 28);
  __swift_storeEnumTagSinglePayload(v12 + v40, 1, 1, v14);
  v15 = v12;
  v16 = v12 + *(v9 + 36);
  *(v16 + 3) = 0u;
  *(v16 + 4) = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 2) = 0u;
  v17 = v16;
  *v16 = 0u;
  v18 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v18);
  sub_18EFA810C();
  v36 = v8;
  v19 = v37;
  sub_18F09459C();
  if (v19)
  {
    v21 = v38;
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    sub_18EF933AC(v15 + v21, &qword_1EACB72D0);
    sub_18EF933AC(v15 + v40, &qword_1EACB72D0);

    memcpy(__dst, v17, 0x50uLL);
    return sub_18EF933AC(__dst, &unk_1EACB8170);
  }

  else
  {
    v37 = v14;
    v20 = v33;
    v30 = v9;
    LOBYTE(__dst[0]) = 0;
    *v15 = sub_18F09427C();
    v15[1] = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB75C0, &qword_18F09BE30);
    v43[0] = 1;
    sub_18EF883DC();
    sub_18F0942CC();
    v15[2] = __dst[0];
    LOBYTE(__dst[0]) = 2;
    v29 = sub_18EF8558C(&unk_1ED5FF4F8);
    sub_18F09426C();
    sub_18EF872D4();
    LOBYTE(__dst[0]) = 3;
    sub_18F09426C();
    sub_18EF872D4();
    LOBYTE(__dst[0]) = 4;
    v23 = sub_18F09423C();
    v24 = v30;
    v25 = (v15 + *(v30 + 32));
    *v25 = v23;
    v25[1] = v26;
    v46 = 5;
    sub_18EFA860C();
    sub_18F09426C();
    memcpy(v42, __dst, sizeof(v42));
    memcpy(v43, v17, sizeof(v43));
    sub_18EF933AC(v43, &unk_1EACB8170);
    memcpy(v17, v42, 0x50uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7470, &qword_18F09BDB0);
    v45 = 6;
    sub_18EF9CC4C();
    sub_18F09426C();
    v27 = *(v24 + 40);
    (*(v20 + 8))(v36, v35);
    *(v15 + v27) = v41;
    sub_18EF86A14(v15, v31);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    return sub_18EF86A6C();
  }
}

unint64_t sub_18EFA810C()
{
  result = qword_1EACB7138;
  if (!qword_1EACB7138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7138);
  }

  return result;
}

unint64_t sub_18EFA8168(char a1)
{
  result = 0x6554657361726870;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x74695474726F6873;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0x6D496D6574737973;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

_BYTE *_s14CodableWrapperV10CodingKeysOwst_5(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x18EFA8348);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t _s14CodableWrapperV10CodingKeysOwet_5(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_18EFA860C()
{
  result = qword_1EACB7068;
  if (!qword_1EACB7068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7068);
  }

  return result;
}

uint64_t sub_18EFA8660(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18EFA86B4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void sub_18EFA8768()
{
  OUTLINED_FUNCTION_29();
  if (v2)
  {
    OUTLINED_FUNCTION_217();
  }

  else
  {
    OUTLINED_FUNCTION_157();
    OUTLINED_FUNCTION_51();
    if (*(v3 + 84) == v1)
    {
      v4 = *(v0 + 32);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
      v4 = *(v0 + 36);
    }

    v5 = OUTLINED_FUNCTION_52(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_18EFA8828()
{
  OUTLINED_FUNCTION_62();
  if (v2)
  {
    return OUTLINED_FUNCTION_16();
  }

  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_51();
  if (*(v4 + 84) == v0)
  {
    v5 = *(v1 + 32);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
    v5 = *(v1 + 36);
  }

  v6 = OUTLINED_FUNCTION_120(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

uint64_t OUTLINED_FUNCTION_99@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

id sub_18EFA89F4(void *a1, uint64_t a2, void *a3)
{
  v30 = sub_18F093B5C();
  v7 = a1[2];
  v32 = a2;
  v33 = a3;
  v34 = v3;
  sub_18EF9D97C(sub_18EFA8EB4, v31, v7, _s14CodableWrapperVMa_0, v8, v9, v10, v11, v22, v23, v24, v26);
  sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
  v29 = sub_18F093DBC();

  v12 = _s14CodableWrapperVMa_29(0);
  v28 = sub_18EF9EBC8(sub_18EFA3E10);
  v27 = sub_18EF9EBC8(sub_18EFA3E10);
  if (*(a1 + v12[8] + 8))
  {
    v25 = sub_18F093B5C();
  }

  else
  {
    v25 = 0;
  }

  v13 = memcpy(__dst, a1 + v12[9], sizeof(__dst));
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_18EFA9774(sub_18F019CD0);
  v15 = *(a1 + v12[10]);
  if (v15)
  {
    sub_18EF94FC0(v15);
    type metadata accessor for LNPlatformName(0, v16, v17, v18);
    sub_18EF825F4(0, &qword_1ED5FFA40, off_1E72AFF68);
    sub_18EF8558C(&qword_1ED5FFA38);
    v19 = sub_18F093A3C();
  }

  else
  {
    v19 = 0;
  }

  v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithActionIdentifier:v30 phraseTemplates:v29 shortTitle:v28 autoShortcutDescription:v27 systemImageName:v25 parameterPresentation:v14 availabilityAnnotations:v19];

  sub_18EF86A6C();
  sub_18EF933AC(a2, &qword_1EACB72C8);
  return v20;
}

id sub_18EFA8D40@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v14 - v7;
  v9 = _s14CodableWrapperVMa_0(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
  sub_18EF86A14(a1, v11);
  sub_18EF9FE2C();
  v12 = a2;
  result = sub_18EFA8ED8(v11, 0x74726F6853707041, 0xEC00000073747563, v8, a2);
  *a3 = result;
  return result;
}

id sub_18EFA8ED8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v56 = a4;
  v58 = a5;
  v55 = a3;
  v52[1] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v53 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v54 = v52 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v52 - v11;
  v57 = sub_18F0932BC();
  v59 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v14 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB78A0, &qword_18F09DDD8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v52 - v16;
  v18 = sub_18F0931CC();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = _s14CodableWrapperVMa_0(0);
  sub_18EF9FE2C();
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_18EF933AC(v17, &qword_1EACB78A0);
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
    sub_18F0931AC();
    sub_18EF825F4(0, &qword_1ED5FD160, 0x1E696B100);
    if (swift_dynamicCast())
    {

      v23 = v60;
      v24 = *(a1 + *(v22 + 36));
      if (v24)
      {
        sub_18EF933FC(v24);
        type metadata accessor for LNStaticDeferredLocalizedStringAlternativeKind(0);
        sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
        sub_18EF8558C(&unk_1ED5FD778);
        v25 = sub_18F093A3C();
      }

      else
      {
        v25 = 0;
      }

      v46 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithLocalizedStringResource:v23 alternatives:v25];

      sub_18EF933AC(v56, &qword_1EACB72C8);
      (*(v19 + 8))(v21, v18);
      goto LABEL_35;
    }

    (*(v19 + 8))(v21, v18);
  }

  sub_18EF9FE2C();
  v26 = v57;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v57);
  v28 = v56;
  v30 = v53;
  v29 = v54;
  if (EnumTagSinglePayload == 1)
  {
    sub_18EF933AC(v12, &qword_1EACB72C8);
    v31 = sub_18F093B5C();
    if (a1[3])
    {
      v32 = sub_18F093B5C();
    }

    else
    {
      v32 = 0;
    }

    v35 = v58;
    v36 = sub_18F093B5C();

    sub_18EF9FE2C();
    if (__swift_getEnumTagSinglePayload(v30, 1, v26) == 1)
    {
      if (v35)
      {
        sub_18EF825F4(0, &qword_1EACB6AE8, 0x1E6963620);
        v37 = v35;
        v38 = [v37 bundleIdentifier];
        v39 = sub_18F093B8C();
        v41 = v40;

        v48 = sub_18F0469EC(v39, v41, 0);
        v30 = v53;
        v29 = v54;
        if (v48 >= 2)
        {
          v49 = [v48 URL];
          sub_18F09327C();
          sub_18F019C6C(v48);
          v47 = 0;
          v35 = v58;
        }

        else
        {
          v47 = 1;
          v35 = v58;
        }

        v26 = v57;
      }

      else
      {
        v47 = 1;
      }

      __swift_storeEnumTagSinglePayload(v29, v47, 1, v26);
      if (__swift_getEnumTagSinglePayload(v30, 1, v26) != 1)
      {
        sub_18EF933AC(v30, &qword_1EACB72C8);
      }
    }

    else
    {
      (*(v59 + 32))(v29, v30, v26);
      __swift_storeEnumTagSinglePayload(v29, 0, 1, v26);
    }

    if (__swift_getEnumTagSinglePayload(v29, 1, v26) == 1)
    {
      v50 = 0;
    }

    else
    {
      v50 = sub_18F09324C();
      (*(v59 + 8))(v29, v26);
    }

    v46 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithKey:v31 defaultValue:v32 table:v36 bundleURL:v50];

    sub_18EF933AC(v28, &qword_1EACB72C8);
  }

  else
  {
    (*(v59 + 32))(v14, v12, v26);
    v33 = sub_18F093B5C();
    if (a1[3])
    {
      v34 = sub_18F093B5C();
    }

    else
    {
      v34 = 0;
    }

    v42 = sub_18F093B5C();

    v43 = sub_18F09324C();
    v44 = *(a1 + *(v22 + 36));
    if (v44)
    {
      sub_18EF933FC(v44);
      type metadata accessor for LNStaticDeferredLocalizedStringAlternativeKind(0);
      sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
      sub_18EF8558C(&unk_1ED5FD778);
      v26 = v57;
      v45 = sub_18F093A3C();
    }

    else
    {
      v45 = 0;
    }

    v46 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithKey:v33 defaultValue:v34 table:v42 bundleURL:v43 alternatives:v45];

    sub_18EF933AC(v28, &qword_1EACB72C8);
    (*(v59 + 8))(v14, v26);
  }

LABEL_35:
  sub_18EF86A6C();
  return v46;
}

uint64_t sub_18EFA9774(void (*a1)(uint64_t *__return_ptr, _BYTE *))
{
  if (!v1[1])
  {
    return 0;
  }

  memcpy(__dst, v1, sizeof(__dst));
  memcpy(v7, v1, sizeof(v7));
  sub_18F018818(v7, v5);
  a1(&v8, __dst);
  memcpy(v5, __dst, sizeof(v5));
  if (v2)
  {
    result = sub_18F018850(v5);
    __break(1u);
  }

  else
  {
    sub_18F018850(v5);
    return v8;
  }

  return result;
}

void __LNValueTypeObjectClassesForCoding_block_invoke()
{
  v14[17] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v14[2] = objc_opt_class();
  v14[3] = objc_opt_class();
  v14[4] = objc_opt_class();
  v14[5] = objc_opt_class();
  v14[6] = objc_opt_class();
  v14[7] = objc_opt_class();
  v14[8] = objc_opt_class();
  v14[9] = objc_opt_class();
  v14[10] = objc_opt_class();
  v14[11] = objc_opt_class();
  v14[12] = objc_opt_class();
  v14[13] = objc_opt_class();
  v14[14] = objc_opt_class();
  v14[15] = objc_opt_class();
  v14[16] = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:{17, 0}];
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    do
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [*(*(&v9 + 1) + 8 * v5) objectClassesForCoding];
        [v0 addObjectsFromArray:v6];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  v7 = [v0 copy];
  v8 = LNValueTypeObjectClassesForCoding_objectClassesForCoding;
  LNValueTypeObjectClassesForCoding_objectClassesForCoding = v7;
}

id sub_18EFAA01C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), unint64_t *a4, void *a5)
{
  a3(a1, a2);
  sub_18EF825F4(0, a4, a5);
  v7 = sub_18F093A3C();

  return v7;
}

void *sub_18EFAA0A0()
{
  result = sub_18EFAA0C0();
  off_1ED5FF9E0 = result;
  return result;
}

uint64_t sub_18EFAA0C0()
{
  v0 = sub_18EFAA19C();
  v1 = sub_18EFAD214();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = v0;
  sub_18EFAC0F0(v1, sub_18EFAF5C4, 0, isUniquelyReferenced_nonNull_native, &v10);
  v3 = v10;
  v4 = sub_18EFAE610();
  v5 = swift_isUniquelyReferenced_nonNull_native();
  v10 = v3;
  sub_18EFAC0F0(v4, sub_18EFAF5C4, 0, v5, &v10);
  v6 = v10;
  v7 = sub_18EFADCB0();
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v10 = v6;
  sub_18EFAC0F0(v7, sub_18EFAF5C4, 0, v8, &v10);
  return v10;
}

uint64_t sub_18EFAA19C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9510, &qword_18F0AAE88);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18F0AAAE0;
  if (qword_1ED5FF9D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED5FF9D8;
  *(v0 + 32) = 0xD00000000000001BLL;
  *(v0 + 40) = 0x800000018F0B00C0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 48) = MEMORY[0x1E69E7CC0];
  *(v0 + 56) = v1;
  v3 = objc_opt_self();
  swift_bridgeObjectRetain_n();
  *(v0 + 64) = [v3 attributedStringValueType];
  *(v0 + 72) = 0xD000000000000010;
  *(v0 + 80) = 0x800000018F0B00E0;
  *(v0 + 88) = v2;
  *(v0 + 96) = v1;

  *(v0 + 104) = [v3 attributedStringValueType];
  strcpy((v0 + 112), "Swift.String");
  *(v0 + 125) = 0;
  *(v0 + 126) = -5120;
  *(v0 + 128) = v2;
  *(v0 + 136) = v1;

  *(v0 + 144) = [v3 stringValueType];
  *(v0 + 152) = 0x676E69727453;
  *(v0 + 160) = 0xE600000000000000;
  *(v0 + 168) = v2;
  *(v0 + 176) = v1;

  *(v0 + 184) = [v3 stringValueType];
  strcpy((v0 + 192), "Swift.Double");
  *(v0 + 205) = 0;
  *(v0 + 206) = -5120;
  *(v0 + 208) = v2;
  *(v0 + 216) = v1;

  *(v0 + 224) = [v3 doubleValueType];
  *(v0 + 232) = 0x656C62756F44;
  *(v0 + 240) = 0xE600000000000000;
  *(v0 + 248) = v2;
  *(v0 + 256) = v1;

  *(v0 + 264) = [v3 doubleValueType];
  *(v0 + 272) = 0xD000000000000017;
  *(v0 + 280) = 0x800000018F0B0100;
  *(v0 + 288) = v2;
  *(v0 + 296) = v1;

  *(v0 + 304) = [v3 doubleValueType];
  strcpy((v0 + 312), "TimeInterval");
  *(v0 + 325) = 0;
  *(v0 + 326) = -5120;
  *(v0 + 328) = v2;
  *(v0 + 336) = v1;

  *(v0 + 344) = [v3 doubleValueType];
  *(v0 + 352) = 0x6E492E7466697753;
  *(v0 + 360) = 0xE900000000000074;
  *(v0 + 368) = v2;
  *(v0 + 376) = v1;

  *(v0 + 384) = [v3 intValueType];
  *(v0 + 392) = 0x6E492E7466697753;
  *(v0 + 400) = 0xEA00000000003874;
  *(v0 + 408) = v2;
  *(v0 + 416) = v1;

  *(v0 + 424) = [v3 int8ValueType];
  *(v0 + 432) = 0x6E492E7466697753;
  *(v0 + 440) = 0xEB00000000363174;
  *(v0 + 448) = v2;
  *(v0 + 456) = v1;

  *(v0 + 464) = [v3 int16ValueType];
  *(v0 + 472) = 0x6E492E7466697753;
  *(v0 + 480) = 0xEB00000000323374;
  *(v0 + 488) = v2;
  *(v0 + 496) = v1;

  *(v0 + 504) = [v3 int32ValueType];
  *(v0 + 512) = 0x6E492E7466697753;
  *(v0 + 520) = 0xEB00000000343674;
  *(v0 + 528) = v2;
  *(v0 + 536) = v1;

  *(v0 + 544) = [v3 int64ValueType];
  *(v0 + 552) = 7630409;
  *(v0 + 560) = 0xE300000000000000;
  *(v0 + 568) = v2;
  *(v0 + 576) = v1;

  *(v0 + 584) = [v3 intValueType];
  *(v0 + 592) = 947154505;
  *(v0 + 600) = 0xE400000000000000;
  *(v0 + 608) = v2;
  *(v0 + 616) = v1;

  *(v0 + 624) = [v3 int8ValueType];
  *(v0 + 632) = 0x3631746E49;
  *(v0 + 640) = 0xE500000000000000;
  *(v0 + 648) = v2;
  *(v0 + 656) = v1;

  *(v0 + 664) = [v3 int16ValueType];
  *(v0 + 672) = 0x3233746E49;
  *(v0 + 680) = 0xE500000000000000;
  *(v0 + 688) = v2;
  *(v0 + 696) = v1;

  *(v0 + 704) = [v3 int32ValueType];
  *(v0 + 712) = 0x3436746E49;
  *(v0 + 720) = 0xE500000000000000;
  *(v0 + 728) = v2;
  *(v0 + 736) = v1;

  *(v0 + 744) = [v3 int64ValueType];
  *(v0 + 752) = 0xD000000000000019;
  *(v0 + 760) = 0x800000018F0B0120;
  *(v0 + 768) = v2;
  *(v0 + 776) = v1;

  *(v0 + 784) = [v3 dateComponentsValueType];
  strcpy((v0 + 792), "DateComponents");
  *(v0 + 807) = -18;
  *(v0 + 808) = v2;
  *(v0 + 816) = v1;

  *(v0 + 824) = [v3 dateComponentsValueType];
  *(v0 + 832) = 0x697461646E756F46;
  *(v0 + 840) = 0xEF657461442E6E6FLL;
  *(v0 + 848) = v2;
  *(v0 + 856) = v1;

  *(v0 + 864) = [v3 dateValueType];
  *(v0 + 872) = 1702125892;
  *(v0 + 880) = 0xE400000000000000;
  *(v0 + 888) = v2;
  *(v0 + 896) = v1;

  *(v0 + 904) = [v3 dateValueType];
  *(v0 + 912) = 0x6F422E7466697753;
  *(v0 + 920) = 0xEA00000000006C6FLL;
  *(v0 + 928) = v2;
  *(v0 + 936) = v1;

  *(v0 + 944) = [v3 BOOLValueType];
  *(v0 + 952) = 1819242306;
  *(v0 + 960) = 0xE400000000000000;
  *(v0 + 968) = v2;
  *(v0 + 976) = v1;

  *(v0 + 984) = [v3 BOOLValueType];
  strcpy((v0 + 992), "Foundation.URL");
  *(v0 + 1007) = -18;
  *(v0 + 1008) = v2;
  *(v0 + 1016) = v1;

  *(v0 + 1024) = [v3 URLValueType];
  *(v0 + 1032) = 5001813;
  *(v0 + 1040) = 0xE300000000000000;
  *(v0 + 1048) = v2;
  *(v0 + 1056) = v1;

  *(v0 + 1064) = [v3 URLValueType];
  *(v0 + 1072) = 0x6C504C432E435F5FLL;
  *(v0 + 1080) = 0xEF6B72616D656361;
  *(v0 + 1088) = v2;
  *(v0 + 1096) = v1;

  *(v0 + 1104) = [v3 placemarkValueType];
  *(v0 + 1112) = 0xD000000000000018;
  *(v0 + 1120) = 0x800000018F0B0140;
  *(v0 + 1128) = v2;
  *(v0 + 1136) = v1;

  *(v0 + 1144) = [v3 placemarkValueType];
  *(v0 + 1152) = 0x6D6563616C504C43;
  *(v0 + 1160) = 0xEB000000006B7261;
  *(v0 + 1168) = v2;
  *(v0 + 1176) = v1;

  *(v0 + 1184) = [v3 placemarkValueType];
  *(v0 + 1192) = 1701603654;
  *(v0 + 1200) = 0xE400000000000000;
  *(v0 + 1208) = v2;
  *(v0 + 1216) = v1;
  v4 = objc_opt_self();

  *(v0 + 1224) = [v4 fileValueType];
  *(v0 + 1232) = 0x6E6F73726550;
  *(v0 + 1240) = 0xE600000000000000;
  *(v0 + 1248) = v2;
  *(v0 + 1256) = v1;

  *(v0 + 1264) = [v4 personValueType];
  strcpy((v0 + 1272), "CurrencyAmount");
  *(v0 + 1287) = -18;
  *(v0 + 1288) = v2;
  *(v0 + 1296) = v1;

  *(v0 + 1304) = [v4 currencyAmountValueType];
  strcpy((v0 + 1312), "PaymentMethod");
  *(v0 + 1326) = -4864;
  *(v0 + 1328) = v2;
  *(v0 + 1336) = v1;

  *(v0 + 1344) = [v4 paymentMethodValueType];
  *(v0 + 1352) = 0xD000000000000013;
  *(v0 + 1360) = 0x800000018F0B0160;
  *(v0 + 1368) = v2;
  *(v0 + 1376) = v1;

  *(v0 + 1384) = [v4 paymentMethodValueType];
  *(v0 + 1392) = 0xD000000000000022;
  *(v0 + 1400) = 0x800000018F0B0180;
  *(v0 + 1408) = v2;
  *(v0 + 1416) = v1;
  v5 = objc_opt_self();

  *(v0 + 1424) = [v5 recurrenceRuleType];
  *(v0 + 1432) = 0xD000000000000017;
  *(v0 + 1440) = 0x800000018F0AEA10;
  *(v0 + 1448) = v2;
  *(v0 + 1456) = v1;
  sub_18EF825F4(0, &unk_1ED5FF9C0, off_1E72AFFA8);

  *(v0 + 1464) = static LNCodableValueType.dateInterval.getter();
  strcpy((v0 + 1472), "Swift.Duration");
  *(v0 + 1487) = -18;
  *(v0 + 1488) = v2;
  *(v0 + 1496) = v1;

  *(v0 + 1504) = static LNCodableValueType.duration.getter();
  *(v0 + 1512) = 0xD00000000000001FLL;
  *(v0 + 1520) = 0x800000018F0AEAA0;
  *(v0 + 1528) = v2;
  *(v0 + 1536) = v1;

  *(v0 + 1544) = static LNCodableValueType.personNameComponents.getter();
  *(v0 + 1552) = 0xD00000000000001ALL;
  *(v0 + 1560) = 0x800000018F0B01B0;
  *(v0 + 1568) = v2;
  *(v0 + 1576) = v1;
  sub_18EF825F4(0, &qword_1ED5FF9F0, off_1E72B01C8);

  *(v0 + 1584) = static LNSystemEntityValueType.placeDescriptor.getter();
  *(v0 + 1592) = 0xD00000000000002BLL;
  *(v0 + 1600) = 0x800000018F0B01D0;
  *(v0 + 1608) = v2;
  *(v0 + 1616) = v1;
  *(v0 + 1624) = static LNSystemEntityValueType.audioSearchCriteria.getter();
  *(v0 + 1632) = 0xD00000000000002CLL;
  *(v0 + 1640) = 0x800000018F0B0200;
  *(v0 + 1648) = v2;
  *(v0 + 1656) = v1;
  *(v0 + 1664) = static LNSystemEntityValueType.semanticContentDescriptor.getter();
  sub_18EF825F4(0, &unk_1ED5FFA60, off_1E72B0220);
  sub_18EFACEF8();

  return sub_18F093A5C();
}

uint64_t sub_18EFAAD4C()
{
  result = sub_18EFAAD74(&unk_1F02E2A60);
  qword_1ED5FF9D8 = result;
  return result;
}

uint64_t sub_18EFAAD74(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_18EFAAE0C();
  v4 = MEMORY[0x193AD8990](v2, &type metadata for PrebuiltType.Role, v3);
  v10 = v4;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 32;
    do
    {
      sub_18EFAAEB8(&v9, *(a1 + v6++));
      --v5;
    }

    while (v5);

    return v10;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

unint64_t sub_18EFAAE0C()
{
  result = qword_1ED5FF9B0;
  if (!qword_1ED5FF9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF9B0);
  }

  return result;
}

unint64_t sub_18EFAAE64()
{
  result = qword_1ED5FF9E8;
  if (!qword_1ED5FF9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF9E8);
  }

  return result;
}

BOOL sub_18EFAAEB8(_BYTE *a1, unint64_t a2)
{
  v5 = *v2;
  sub_18F09452C();
  MEMORY[0x193AD9050](a2);
  v6 = sub_18F09456C();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      break;
    }

    if (*(*(v5 + 48) + v8) == a2)
    {
      goto LABEL_6;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  sub_18EFAAFA8(a2, v8, isUniquelyReferenced_nonNull_native);
  *v2 = v12;
LABEL_6:
  result = v9 == 0;
  *a1 = a2;
  return result;
}

unint64_t sub_18EFAAFA8(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_18F02BC08(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_18F02C488(v6 + 1);
LABEL_10:
      v12 = *v3;
      sub_18F09452C();
      MEMORY[0x193AD9050](v5);
      result = sub_18F09456C();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_18F02C114();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_18F09449C();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

id static LNCodableValueType.dateInterval.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v28[-v1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB9160, &unk_18F0AAE90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F0AA0E0;
  *(inited + 32) = @"LNPlatformNameIOS";
  v4 = objc_allocWithZone(LNAvailabilityAnnotation);
  v5 = @"LNPlatformNameIOS";
  *(inited + 40) = OUTLINED_FUNCTION_0_1();
  *(inited + 48) = @"LNPlatformNameMACOS";
  v6 = objc_allocWithZone(LNAvailabilityAnnotation);
  v7 = @"LNPlatformNameMACOS";
  *(inited + 56) = OUTLINED_FUNCTION_0_1();
  *(inited + 64) = @"LNPlatformNameVISIONOS";
  v8 = objc_allocWithZone(LNAvailabilityAnnotation);
  v9 = @"LNPlatformNameVISIONOS";
  *(inited + 72) = OUTLINED_FUNCTION_0_1();
  *(inited + 80) = @"LNPlatformNameWATCHOS";
  v10 = objc_allocWithZone(LNAvailabilityAnnotation);
  v11 = @"LNPlatformNameWATCHOS";
  *(inited + 88) = OUTLINED_FUNCTION_0_1();
  *(inited + 96) = @"LNPlatformNameTVOS";
  v12 = objc_allocWithZone(LNAvailabilityAnnotation);
  v13 = @"LNPlatformNameTVOS";
  *(inited + 104) = OUTLINED_FUNCTION_0_1();
  type metadata accessor for LNPlatformName(0, v14, v15, v16);
  v17 = sub_18EFABC24();
  sub_18EFABC68(v17, v18, v19, v20);
  v21 = sub_18F093A5C();
  sub_18F09323C();
  v22 = sub_18F0932BC();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v22);
  v23 = objc_allocWithZone(LNStaticDeferredLocalizedString);
  sub_18EFABD08(0x746E492065746144, 0xED00006C61767265, 0, 0, v2);
  v24 = objc_allocWithZone(LNTypeDisplayRepresentation);
  v25 = sub_18EF9307C();
  v26 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  return sub_18EFABE0C(0xD000000000000017, 0x800000018F0AEA10, 0xD00000000000001BLL, 0x800000018F0AEA30, v21, 0xD000000000000021, 0x800000018F0AEA50, v25);
}

id sub_18EFABB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v9 = sub_18F093B5C();

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v10 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v9 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v10 = sub_18F093B5C();

  if (!a6)
  {
    goto LABEL_7;
  }

LABEL_4:
  v11 = sub_18F093B5C();

LABEL_8:
  v12 = [v6 initWithIntroducedVersion:v9 deprecatedVersion:v10 obsoletedVersion:v11];

  return v12;
}

unint64_t sub_18EFABC24()
{
  result = qword_1ED5FFA40;
  if (!qword_1ED5FFA40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED5FFA40);
  }

  return result;
}

unint64_t sub_18EFABC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = qword_1ED5FFA38;
  if (!qword_1ED5FFA38)
  {
    type metadata accessor for LNPlatformName(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FFA38);
  }

  return result;
}

id sub_18EFABD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = sub_18F093B5C();

  if (a4)
  {
    v10 = sub_18F093B5C();
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_18F0932BC();
  v12 = 0;
  if (__swift_getEnumTagSinglePayload(a5, 1, v11) != 1)
  {
    v12 = sub_18F09324C();
    (*(*(v11 - 8) + 8))(a5, v11);
  }

  v13 = [v6 initWithKey:v9 table:v10 bundleURL:v12];

  return v13;
}

id sub_18EFABE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v11 = sub_18F093B5C();

  v12 = sub_18F093B5C();

  if (a5)
  {
    type metadata accessor for LNPlatformName(0, v13, v14, v15);
    v16 = sub_18EFABC24();
    sub_18EFABC68(v16, v17, v18, v19);
    v20 = sub_18F093A3C();
  }

  else
  {
    v20 = 0;
  }

  v21 = sub_18F093B5C();

  v22 = [v8 initWithIdentifier:v11 mangledTypeName:v12 availabilityAnnotations:v20 contentTypeIdentifier:v21 displayRepresentation:a8];

  return v22;
}

unint64_t sub_18EFABF2C()
{
  result = qword_1ED5FCF40;
  if (!qword_1ED5FCF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCF40);
  }

  return result;
}

unint64_t sub_18EFABF98()
{
  result = qword_1ED5FCF20;
  if (!qword_1ED5FCF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCF20);
  }

  return result;
}

void sub_18EFABFEC(uint64_t *a1@<X8>)
{
  sub_18EFA1880();
  if (!v1)
  {
    *a1 = v3;
  }
}

unint64_t sub_18EFAC048()
{
  result = qword_1ED5FDAF0;
  if (!qword_1ED5FDAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDAF0);
  }

  return result;
}

uint64_t sub_18EFAC0F0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v75 = a5;
  HIDWORD(v57) = a4;
  sub_18EFAF5BC(&v68, a1, a2, a3);
  v7 = v69;
  v8 = v71;
  v9 = v72;
  v53 = v73;
  v54 = v68;
  v55 = v74;
  v47 = v70;
  v10 = (v70 + 64) >> 6;
  v49 = a1;

  *v48 = a3;

  v11 = v8;
  __src = v10;
  for (i = v7; ; v7 = i)
  {
    v12 = v9;
    if (!v9)
    {
      break;
    }

LABEL_7:
    v14 = __clz(__rbit64(v12)) | (v11 << 6);
    v15 = (*(v54 + 48) + 32 * v14);
    v16 = v15[1];
    v17 = *(*(v54 + 56) + 8 * v14);
    v19 = v15[2];
    v18 = v15[3];
    v58 = *v15;
    v59 = v16;
    v60 = v19;
    v61 = v18;
    v62 = v17;

    v20 = v17;
    v53(&v63, &v58);

    v21 = v64;
    if (!v64)
    {
      goto LABEL_19;
    }

    v22 = v63;
    v24 = v65;
    v23 = v66;
    v56 = v67;
    v25 = *v75;
    v33 = sub_18EFAC46C(v63, v64, v65, v66);
    v34 = v25[2];
    v35 = (v26 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_21;
    }

    v37 = v26;
    if (v25[3] >= v36)
    {
      if ((v57 & 0x100000000) != 0)
      {
        if (v26)
        {
          goto LABEL_18;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9518, &qword_18F0AAEA0);
        sub_18F09418C();
        if (v37)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      sub_18EFAF260(v36, BYTE4(v57) & 1, v27, v28, v29, v30, v31, v32, v46, v47, v48[0], v48[1], v49, v50, __src, i, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
      v38 = sub_18EFAC46C(v22, v21, v24, v23);
      if ((v37 & 1) != (v39 & 1))
      {
        goto LABEL_23;
      }

      v33 = v38;
      if (v37)
      {
LABEL_18:
        __break(1u);
LABEL_19:
        sub_18EFAE608(v54);
      }
    }

    v40 = *v75;
    v40[(v33 >> 6) + 8] |= 1 << v33;
    v41 = (v40[6] + 32 * v33);
    *v41 = v22;
    v41[1] = v21;
    v41[2] = v24;
    v41[3] = v23;
    *(v40[7] + 8 * v33) = v56;
    v42 = v40[2];
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (v43)
    {
      goto LABEL_22;
    }

    v9 = (v12 - 1) & v12;
    v40[2] = v44;
    HIDWORD(v57) = 1;
    v8 = v11;
    v10 = __src;
  }

  v13 = v8;
  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v11 >= v10)
    {
      goto LABEL_19;
    }

    v12 = *(v7 + 8 * v11);
    ++v13;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_18F0944AC();
  __break(1u);
  return result;
}

uint64_t sub_18EFAC3CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

id sub_18EFAC408(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;

  return a6;
}

uint64_t sub_18EFAC46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_18F09452C();
  sub_18F093C1C();
  sub_18EFAD10C(__src, a3);
  sub_18EFACFFC(__src, a4);
  sub_18F09456C();
  v6 = OUTLINED_FUNCTION_264();

  return sub_18EFAF5FC(v6, v7, a3, a4, v8);
}

uint64_t sub_18EFAC510(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB85D0, &qword_18F0A1218);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_18F09BCC0;
  MEMORY[0x193AD8780](a1, a2);
  *(v8 + 32) = 0x6E55534E2E435F5FLL;
  *(v8 + 40) = 0xEA00000000007469;
  if (qword_1ED5FF9D0 != -1)
  {
    swift_once();
  }

  v9 = qword_1ED5FF9D8;
  swift_beginAccess();
  swift_bridgeObjectRetain_n();
  v10 = a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(a4 + 16);
  sub_18EFAC848(v10, 0xD000000000000016, 0x800000018F0AFF80, v8, v9, isUniquelyReferenced_nonNull_native);
  *(a4 + 16) = v19;

  swift_endAccess();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_18F09BCC0;
  sub_18F09406C();

  MEMORY[0x193AD8780](a1, a2);
  *(v12 + 32) = 0x697461646E756F46;
  *(v12 + 40) = 0xEF74696E552E6E6FLL;
  swift_beginAccess();

  v13 = v10;
  v14 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(a4 + 16);
  sub_18EFAC848(v13, 0xD000000000000016, 0x800000018F0AFF80, v12, v9, v14);
  *(a4 + 16) = v20;

  swift_endAccess();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_18F09BCC0;
  MEMORY[0x193AD8780](a1, a2);
  *(v15 + 32) = 1953066581;
  *(v15 + 40) = 0xE400000000000000;
  swift_beginAccess();
  v16 = v13;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(a4 + 16);
  sub_18EFAC848(v16, 0xD000000000000016, 0x800000018F0AFF80, v15, v9, v17);
  *(a4 + 16) = v21;

  return swift_endAccess();
}

void sub_18EFAC848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  sub_18EFAC46C(a2, a3, a4, a5);
  OUTLINED_FUNCTION_0_16();
  if (v14)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v12;
  v16 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9518, &qword_18F0AAEA0);
  if ((sub_18F09417C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = sub_18EFAC46C(a2, a3, a4, a5);
  if ((v16 & 1) != (v18 & 1))
  {
LABEL_13:
    sub_18F0944AC();
    __break(1u);
    return;
  }

  v15 = v17;
LABEL_5:
  v19 = *v6;
  if (v16)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v15);
    *(v20 + 8 * v15) = a1;
  }

  else
  {
    sub_18EFAC9B4(v15, a2, a3, a4, a5, a1, v19);
  }
}

unint64_t sub_18EFAC9B4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 32 * result);
  *v7 = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  *(a7[7] + 8 * result) = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

id static LNCodableValueType.duration.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v28[-v1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB9160, &unk_18F0AAE90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F0AA0E0;
  *(inited + 32) = @"LNPlatformNameIOS";
  v4 = objc_allocWithZone(LNAvailabilityAnnotation);
  v5 = @"LNPlatformNameIOS";
  *(inited + 40) = OUTLINED_FUNCTION_0_1();
  *(inited + 48) = @"LNPlatformNameMACOS";
  v6 = objc_allocWithZone(LNAvailabilityAnnotation);
  v7 = @"LNPlatformNameMACOS";
  *(inited + 56) = OUTLINED_FUNCTION_0_1();
  *(inited + 64) = @"LNPlatformNameVISIONOS";
  v8 = objc_allocWithZone(LNAvailabilityAnnotation);
  v9 = @"LNPlatformNameVISIONOS";
  *(inited + 72) = OUTLINED_FUNCTION_0_1();
  *(inited + 80) = @"LNPlatformNameWATCHOS";
  v10 = objc_allocWithZone(LNAvailabilityAnnotation);
  v11 = @"LNPlatformNameWATCHOS";
  *(inited + 88) = OUTLINED_FUNCTION_0_1();
  *(inited + 96) = @"LNPlatformNameTVOS";
  v12 = objc_allocWithZone(LNAvailabilityAnnotation);
  v13 = @"LNPlatformNameTVOS";
  *(inited + 104) = OUTLINED_FUNCTION_0_1();
  type metadata accessor for LNPlatformName(0, v14, v15, v16);
  v17 = sub_18EFABC24();
  sub_18EFABC68(v17, v18, v19, v20);
  v21 = sub_18F093A5C();
  sub_18F09323C();
  v22 = sub_18F0932BC();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v22);
  v23 = objc_allocWithZone(LNStaticDeferredLocalizedString);
  sub_18EFABD08(0x6E6F697461727544, 0xE800000000000000, 0, 0, v2);
  v24 = objc_allocWithZone(LNTypeDisplayRepresentation);
  v25 = sub_18EF9307C();
  v26 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  return sub_18EFABE0C(0x75442E7466697753, 0xEE006E6F69746172, 0x6974617275443873, 0xEB00000000566E6FLL, v21, 0xD00000000000001DLL, 0x800000018F0AEA80, v25);
}

id sub_18EFACD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_18F093B5C();

  v8 = sub_18F093B5C();

  v9 = sub_18F093B5C();

  v10 = [v6 initWithIdentifier:v7 bundleIdentifier:v8 contentTypeIdentifier:v9];

  return v10;
}

unint64_t sub_18EFACEF8()
{
  result = qword_1ED5FF9A8;
  if (!qword_1ED5FF9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF9A8);
  }

  return result;
}

unint64_t sub_18EFACF50()
{
  result = qword_1ED5FF9A0;
  if (!qword_1ED5FF9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF9A0);
  }

  return result;
}

uint64_t sub_18EFACFA4()
{
  OUTLINED_FUNCTION_3_4();
  v2 = sub_18F09452C();
  OUTLINED_FUNCTION_6_3(v2);
  sub_18EFAD10C(__src, v1);
  sub_18EFACFFC(__src, v0);
  return sub_18F09456C();
}

void sub_18EFACFFC(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_18F09456C();
  v3 = 0;
  v4 = 0;
  OUTLINED_FUNCTION_65();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  if ((v6 & v5) != 0)
  {
    do
    {
      v10 = v4;
LABEL_7:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = *(*(a2 + 48) + (v11 | (v10 << 6)));
      sub_18F09452C();
      MEMORY[0x193AD9050](v12);
      v3 ^= sub_18F09456C();
    }

    while (v7);
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= v9)
    {
      MEMORY[0x193AD9050](v3);
      return;
    }

    v7 = *(a2 + 56 + 8 * v10);
    ++v4;
    if (v7)
    {
      v4 = v10;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_18EFAD10C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193AD9050](v3);
  if (v3)
  {
    v5 = a2 + 40;
    do
    {

      OUTLINED_FUNCTION_4_4();
      sub_18F093C1C();

      v5 += 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t static PrebuiltType.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_18F09444C() & 1) == 0 || (sub_18EFAD634(v2, v3) & 1) == 0)
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_108();

  return sub_18F02A618(v5, v6);
}

uint64_t sub_18EFAD214()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9510, &qword_18F0AAE88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F0AAAF0;
  if (qword_1ED5FF9D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED5FF9D8;
  *(inited + 32) = 0xD00000000000001CLL;
  *(inited + 40) = 0x800000018F0AFFA0;
  v2 = MEMORY[0x1E69E7CC0];
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v1;
  v3 = objc_opt_self();
  swift_bridgeObjectRetain_n();
  *(inited + 64) = [v3 applicationValueType];
  *(inited + 72) = 0xD000000000000015;
  *(inited + 80) = 0x800000018F0AFFC0;
  *(inited + 88) = v2;
  *(inited + 96) = v1;

  *(inited + 104) = [v3 fileValueType];
  *(inited + 112) = 0xD000000000000017;
  *(inited + 120) = 0x800000018F0AFFE0;
  *(inited + 128) = v2;
  *(inited + 136) = v1;

  *(inited + 144) = [v3 personValueType];
  *(inited + 152) = 0xD00000000000001FLL;
  *(inited + 160) = 0x800000018F0B0000;
  *(inited + 168) = v2;
  *(inited + 176) = v1;

  *(inited + 184) = [v3 currencyAmountValueType];
  *(inited + 192) = 0xD00000000000001ELL;
  *(inited + 200) = 0x800000018F0B0020;
  *(inited + 208) = v2;
  *(inited + 216) = v1;

  *(inited + 224) = [v3 paymentMethodValueType];
  *(inited + 232) = 0xD000000000000025;
  *(inited + 240) = 0x800000018F0B0040;
  *(inited + 248) = v2;
  *(inited + 256) = v1;
  v4 = objc_opt_self();

  *(inited + 264) = [v4 photoItemCollectionValueType];
  *(inited + 272) = 0xD000000000000020;
  *(inited + 280) = 0x800000018F0B0070;
  *(inited + 288) = v2;
  *(inited + 296) = v1;
  *(inited + 304) = [v4 intentToggleOperationValueType];
  *(inited + 312) = 0xD00000000000001CLL;
  *(inited + 320) = 0x800000018F0B00A0;
  *(inited + 328) = v2;
  *(inited + 336) = v1;
  *(inited + 344) = [v4 intentToggleStateValueType];
  sub_18EF825F4(0, &unk_1ED5FFA60, off_1E72B0220);
  sub_18EFACEF8();
  return sub_18F093A5C();
}

uint64_t sub_18EFAD634(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_18F09444C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_18EFADCB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v24 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9510, &qword_18F0AAE88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F0AA3F0;
  if (qword_1ED5FF9D0 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED5FF9D8;
  v5 = MEMORY[0x1E69E7CC0];
  *(inited + 32) = 0xD000000000000021;
  *(inited + 40) = 0x800000018F0AFD40;
  *(inited + 48) = v5;
  *(inited + 56) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB9160, &unk_18F0AAE90);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_18F09BCC0;
  *(v6 + 32) = @"LNPlatformNameWildcard";
  v7 = objc_opt_self();
  swift_bridgeObjectRetain_n();
  v8 = @"LNPlatformNameWildcard";
  *(v6 + 40) = [v7 available];
  type metadata accessor for LNPlatformName(0, v9, v10, v11);
  v12 = sub_18EF825F4(0, &qword_1ED5FFA40, off_1E72AFF68);
  sub_18EFABC68(v12, v13, v14, v15);
  v16 = sub_18F093A5C();
  sub_18F09323C();
  v17 = sub_18F0932BC();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v17);
  v18 = objc_allocWithZone(LNStaticDeferredLocalizedString);
  sub_18EFABD08(0xD000000000000013, 0x800000018F0AFDD0, 0, 0, v2);
  v19 = objc_allocWithZone(LNTypeDisplayRepresentation);
  v20 = sub_18EF9307C();
  v21 = objc_allocWithZone(LNCodableValueType);
  *(inited + 64) = sub_18EFABE0C(0xD000000000000021, 0x800000018F0AFD40, 0xD000000000000025, 0x800000018F0AFD70, v16, 0xD00000000000002BLL, 0x800000018F0AFDA0, v20);
  *(inited + 72) = 0xD000000000000028;
  *(inited + 80) = 0x800000018F0AFE30;
  *(inited + 88) = MEMORY[0x1E69E7CC0];
  *(inited + 96) = v4;
  v22 = objc_allocWithZone(LNSystemEntityValueType);
  *(inited + 104) = sub_18EFACD38(0xD00000000000002ELL, 0x800000018F0AFE60, 0xD000000000000026, 0x800000018F0AFE90, 0xD000000000000037, 0x800000018F0AFEC0);
  sub_18EF825F4(0, &unk_1ED5FFA60, off_1E72B0220);
  sub_18EFACEF8();
  return sub_18F093A5C();
}

void sub_18EFAE034(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a1;
  if (a3)
  {
    OUTLINED_FUNCTION_74();
    if (v8 != v9)
    {
      OUTLINED_FUNCTION_238();
      if (v8)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_73();
    }
  }

  else
  {
    v7 = a2;
  }

  v10 = a4[2];
  if (v7 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v7;
  }

  if (v11)
  {
    v12 = OUTLINED_FUNCTION_253(a1, a2, a3, a4, a5);
    __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v10;
    v14[3] = 2 * ((v15 - 32) / 24);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v6)
  {
    if (v14 != a4 || &a4[3 * v10 + 4] <= v14 + 4)
    {
      v17 = OUTLINED_FUNCTION_393();
      memmove(v17, v18, v19);
    }

    a4[2] = 0;
  }

  else
  {
    v20 = OUTLINED_FUNCTION_292();
    __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
    OUTLINED_FUNCTION_393();
    swift_arrayInitWithCopy();
  }
}

unint64_t OUTLINED_FUNCTION_79(uint64_t a1)
{

  return sub_18EF85B48(a1);
}

uint64_t OUTLINED_FUNCTION_78(uint64_t a1, uint64_t a2)
{

  return sub_18F09431C();
}

void sub_18EFAE1E8(uint64_t a1, char a2, void *a3, void (*a4)(void), uint64_t *a5, uint64_t *a6)
{
  v7 = 0;
  v31 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v31 == v7)
    {

      return;
    }

    if (v7 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_18F0944AC();
      __break(1u);
      goto LABEL_22;
    }

    v9 = *(i - 2);
    v10 = *(i - 1);
    v11 = *i;
    v12 = *a3;

    v13 = v11;
    v15 = sub_18EFAF54C();
    v16 = v12[2];
    v17 = (v14 & 1) == 0;
    if (__OFADD__(v16, v17))
    {
      goto LABEL_19;
    }

    v18 = v14;
    if (v12[3] < v16 + v17)
    {
      break;
    }

    if (a2)
    {
      if (v14)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      sub_18F09418C();
      if (v18)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v21 = *a3;
    *(*a3 + 8 * (v15 >> 6) + 64) |= 1 << v15;
    v22 = (v21[6] + 16 * v15);
    *v22 = v9;
    v22[1] = v10;
    *(v21[7] + 8 * v15) = v13;
    v23 = v21[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_20;
    }

    v21[2] = v25;
    ++v7;
    a2 = 1;
  }

  a4();
  v19 = sub_18EFAF54C();
  if ((v18 & 1) != (v20 & 1))
  {
    goto LABEL_21;
  }

  v15 = v19;
  if ((v18 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v26 = swift_allocError();
  swift_willThrow();
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB72B8, &unk_18F09BD00);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_18F09406C();
  MEMORY[0x193AD8780](0xD00000000000001BLL, 0x800000018F0AFB50);
  sub_18F09414C();
  MEMORY[0x193AD8780](39, 0xE100000000000000);
  sub_18F0941AC();
  __break(1u);
}

unint64_t sub_18EFAE4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_18F09444C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_18EFAE610()
{
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  v1 = objc_opt_self();
  v2 = [v1 accelerationValueType];
  sub_18EFAC510(0x6172656C65636341, 0xEC0000006E6F6974, v2, v0);

  v3 = [v1 angleValueType];
  sub_18EFAC510(0x656C676E41, 0xE500000000000000, v3, v0);

  v4 = [v1 areaValueType];
  sub_18EFAC510(1634038337, 0xE400000000000000, v4, v0);

  v5 = [v1 concentrationMassValueType];
  sub_18EFAC510(0xD000000000000011, 0x800000018F0AFF00, v5, v0);

  v6 = [v1 dispersionValueType];
  sub_18EFAC510(0x6973726570736944, 0xEA00000000006E6FLL, v6, v0);

  v7 = [v1 durationValueType];
  sub_18EFAC510(0x6E6F697461727544, 0xE800000000000000, v7, v0);

  v8 = [v1 energyValueType];
  sub_18EFAC510(0x796772656E45, 0xE600000000000000, v8, v0);

  v9 = [v1 electricChargeValueType];
  sub_18EFAC510(0x6369727463656C45, 0xEE00656772616843, v9, v0);

  v10 = [v1 electricCurrentValueType];
  sub_18EFAC510(0x6369727463656C45, 0xEF746E6572727543, v10, v0);

  v11 = [v1 electricPotentialDifferenceValueType];
  sub_18EFAC510(0xD00000000000001BLL, 0x800000018F0AFF20, v11, v0);

  v12 = [v1 electricResistanceValueType];
  sub_18EFAC510(0xD000000000000012, 0x800000018F0AFF40, v12, v0);

  v13 = [v1 frequencyValueType];
  sub_18EFAC510(0x636E657571657246, 0xE900000000000079, v13, v0);

  v14 = [v1 fuelEfficiencyValueType];
  sub_18EFAC510(0x696666456C657546, 0xEE0079636E656963, v14, v0);

  v15 = [v1 illuminanceValueType];
  sub_18EFAC510(0x616E696D756C6C49, 0xEB0000000065636ELL, v15, v0);

  v16 = [v1 informationStorageValueType];
  sub_18EFAC510(0xD000000000000012, 0x800000018F0AFF60, v16, v0);

  v17 = [v1 lengthValueType];
  sub_18EFAC510(0x6874676E654CLL, 0xE600000000000000, v17, v0);

  v18 = [v1 massValueType];
  sub_18EFAC510(1936941389, 0xE400000000000000, v18, v0);

  v19 = [v1 powerValueType];
  sub_18EFAC510(0x7265776F50, 0xE500000000000000, v19, v0);

  v20 = [v1 pressureValueType];
  sub_18EFAC510(0x6572757373657250, 0xE800000000000000, v20, v0);

  v21 = [v1 speedValueType];
  sub_18EFAC510(0x6465657053, 0xE500000000000000, v21, v0);

  v22 = [v1 temperatureValueType];
  sub_18EFAC510(0x74617265706D6554, 0xEB00000000657275, v22, v0);

  v23 = [v1 volumeValueType];
  sub_18EFAC510(0x656D756C6F56, 0xE600000000000000, v23, v0);

  swift_beginAccess();
  v24 = *(v0 + 16);

  return v24;
}

uint64_t sub_18EFAEC48()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_18EFAF260(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, uint64_t a14, uint64_t __src, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  OUTLINED_FUNCTION_36_0();
  a34 = v37;
  a35 = v38;
  OUTLINED_FUNCTION_34_0();
  v39 = *v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9498, &qword_18F0AAA88);
  v40 = OUTLINED_FUNCTION_38_0(v39);
  if (!v39[2])
  {
LABEL_29:

LABEL_30:
    *v35 = v40;
    OUTLINED_FUNCTION_35_0();
    return;
  }

  v77 = v35;
  v78 = v39;
  v41 = 0;
  v42 = v39;
  OUTLINED_FUNCTION_0_7();
  v46 = (v45 + 63) >> 6;
  v47 = v40 + 64;
  if ((v44 & v43) == 0)
  {
LABEL_4:
    v49 = v41;
    while (1)
    {
      v41 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v41 >= v46)
      {
        break;
      }

      ++v49;
      if (*(v42 + 8 * v41))
      {
        OUTLINED_FUNCTION_229();
        goto LABEL_9;
      }
    }

    if ((a12 & 1) == 0)
    {

      v35 = v77;
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_9_1();
    v35 = v77;
    if (v73 != v74)
    {
      OUTLINED_FUNCTION_11_1(v72);
    }

    else
    {
      v75 = OUTLINED_FUNCTION_8_1();
      sub_18EFAF4AC(v75, v76, v42);
    }

    v39[2] = 0;
    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_12_0();
LABEL_9:
    v50 = v48 | (v41 << 6);
    v51 = v39[7];
    v52 = (v39[6] + 32 * v50);
    v53 = *v52;
    v54 = v52[1];
    v55 = v52[2];
    v56 = v52[3];
    v57 = *(v51 + 8 * v50);
    if ((a12 & 1) == 0)
    {

      v58 = v57;
    }

    sub_18F09452C();
    v59 = v54;
    v60 = v53;
    v61 = v55;
    v62 = v59;
    sub_18F093C1C();
    sub_18EFAD10C(&__src, v61);
    sub_18EFACFFC(&__src, v56);
    sub_18F09456C();
    OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_17_0();
    if (v63)
    {
      break;
    }

    OUTLINED_FUNCTION_5_3();
LABEL_21:
    OUTLINED_FUNCTION_2_4();
    *(v47 + v67) |= v68;
    v70 = (*(v40 + 48) + 32 * v69);
    *v70 = v60;
    v70[1] = v62;
    v70[2] = v61;
    v70[3] = v56;
    *(*(v40 + 56) + 8 * v69) = v57;
    OUTLINED_FUNCTION_13_1();
    v39 = v78;
    if (!v71)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_4_5();
  while (1)
  {
    OUTLINED_FUNCTION_18_0();
    if (v63)
    {
      if (v65)
      {
        break;
      }
    }

    if (v64 == v66)
    {
      v64 = 0;
    }

    if (*(v47 + 8 * v64) != -1)
    {
      OUTLINED_FUNCTION_3_3();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_18EFAF4AC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_18F0AAA20;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_18EFAF54C()
{
  OUTLINED_FUNCTION_376();
  sub_18F09452C();
  sub_18F093C1C();
  sub_18F09456C();
  v0 = OUTLINED_FUNCTION_189();

  return sub_18EFAE4CC(v0, v1, v2);
}

id sub_18EFAF5C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_18EFAC408(a2, *a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
  a2[4] = result;
  return result;
}

uint64_t sub_18EFAF5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return v7;
  }

  v11 = ~v6;
  v22 = (a3 + 40);
  while (1)
  {
    v12 = (*(v5 + 48) + 32 * v7);
    result = *v12;
    v14 = v12[2];
    v15 = v12[3];
    v16 = *v12 == a1 && v12[1] == a2;
    if (v16 || (result = sub_18F09444C(), (result & 1) != 0))
    {
      v17 = *(v14 + 16);
      if (v17 == *(a3 + 16))
      {
        break;
      }
    }

LABEL_22:
    v7 = (v7 + 1) & v11;
    if (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return v7;
    }
  }

  if (v17)
  {
    v18 = v14 == a3;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
LABEL_21:
    if (sub_18F02A618(v15, a4))
    {
      return v7;
    }

    goto LABEL_22;
  }

  v19 = (v14 + 40);
  v20 = v22;
  while (v17)
  {
    result = *(v19 - 1);
    if (result != *(v20 - 1) || *v19 != *v20)
    {
      result = sub_18F09444C();
      if ((result & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v19 += 2;
    v20 += 2;
    if (!--v17)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_1(uint64_t a1)
{
  *(v1 - 152) = a1;

  return sub_18F0938EC();
}

void OUTLINED_FUNCTION_7_7()
{

  JUMPOUT(0x193AD8780);
}

void OUTLINED_FUNCTION_7_8()
{

  JUMPOUT(0x193AD9AF0);
}

void LNContentTypeMetadata.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_180();
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7560, &qword_18F09BE08);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_127();
  sub_18EFAFB88();
  OUTLINED_FUNCTION_174();
  sub_18F09459C();
  if (!v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7570, &qword_18F09BE10);
    sub_18EFAFBDC(&unk_1ED5FD6E8);
    OUTLINED_FUNCTION_126();
    OUTLINED_FUNCTION_314();
    OUTLINED_FUNCTION_362();
    OUTLINED_FUNCTION_126();
    OUTLINED_FUNCTION_314();
    v18 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    sub_18EF825F4(0, &qword_1ED5FE1A8, off_1E72AFFC8);
    OUTLINED_FUNCTION_320();
    v14 = sub_18F093DBC();

    v15 = sub_18F093DBC();

    [v18 initWithExportableTypes:v14 importableTypes:v15];

    v16 = OUTLINED_FUNCTION_279();
    v17(v16);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_177();
}

unint64_t sub_18EFAFB88()
{
  result = qword_1ED5FD688;
  if (!qword_1ED5FD688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD688);
  }

  return result;
}

unint64_t sub_18EFAFBDC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_293(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EACB7570, &qword_18F09BE10);
    sub_18EF99DFC(v4);
    OUTLINED_FUNCTION_289();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_18EFAFC98(char a1)
{
  if (a1)
  {
    return 0x626174726F706D69;
  }

  else
  {
    return 0x626174726F707865;
  }
}

void LNContentType.init(from:)()
{
  OUTLINED_FUNCTION_180();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7548, &qword_18F09BDF8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_127();
  sub_18EFAFE40();
  OUTLINED_FUNCTION_174();
  sub_18F09459C();
  if (!v0)
  {
    sub_18F09427C();
    v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v5 = sub_18F093B5C();

    [v4 initWithContentType_];

    v6 = OUTLINED_FUNCTION_137();
    v7(v6);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_177();
}

unint64_t sub_18EFAFE40()
{
  result = qword_1ED5FD5C0;
  if (!qword_1ED5FD5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD5C0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_347()
{
  *(v1 - 192) = v0;

  return sub_18F09411C();
}

void sub_18EFAFED0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  LNContentTypeMetadata.init(from:)(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13);
  if (!v9)
  {
    *a9 = v11;
  }
}

__n128 OUTLINED_FUNCTION_91@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 - 136);
  v3 = *(v1 - 104);
  *(a1 + 48) = *(v1 - 120);
  *(a1 + 64) = v3;
  *(a1 + 32) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_291(uint64_t a1, uint64_t a2)
{

  return sub_18F09444C();
}

void sub_18EFAFF30(void *a1@<X8>)
{
  LNContentType.init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

Class __getLNExportedContentClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!LinkServicesLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __LinkServicesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E72B1318;
    v8 = 0;
    LinkServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!LinkServicesLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *LinkServicesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"LNValue.m" lineNumber:19 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("LNExportedContent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLNExportedContentClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"LNValue.m" lineNumber:20 description:{@"Unable to find class %s", "LNExportedContent"}];

LABEL_10:
    __break(1u);
  }

  getLNExportedContentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_18EFB0DC4@<X0>(uint64_t a1@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v14 - v7;
  v9 = _s14CodableWrapperVMa_2(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18EF825F4(0, qword_1ED5FE100, off_1E72AFFF0);
  sub_18EF86A14(a1, v11);
  sub_18EF9FE2C();
  v12 = a2;
  result = sub_18EFA63B4(v11, v8, a2);
  *a3 = result;
  return result;
}

id sub_18EFB0F38(unint64_t a1)
{
  if (a1 > 0x16)
  {
    return 0;
  }

  else
  {
    return [objc_opt_self() *off_1E72B0BA8[a1]];
  }
}

uint64_t static AssistantPrebuiltLibrary.loadLibrary()()
{
  if (qword_1EACB6C90 != -1)
  {
    swift_once();
  }

  v1 = sub_18F093A2C();
  __swift_project_value_buffer(v1, qword_1EACCDC28);
  v2 = sub_18F093A0C();
  v3 = sub_18F093EDC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_18EF7E000, v2, v3, "Loading prebuilt library from AppIntentDomains", v4, 2u);
    MEMORY[0x193AD9AF0](v4, -1, -1);
  }

  sub_18F0934FC();
  result = sub_18F0934CC();
  if (!v0)
  {
    v6 = sub_18EFB3ACC();

    return v6;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_18EFB115C()
{
  OUTLINED_FUNCTION_260();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v137 = sub_18F09381C();
  OUTLINED_FUNCTION_7();
  v129 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_42();
  v136 = v10 - v11;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v12);
  v144 = &v103 - v13;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9420, &qword_18F0AAA38);
  OUTLINED_FUNCTION_36();
  MEMORY[0x1EEE9AC00](v14);
  v145 = (&v103 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9428, &qword_18F0AAA40);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v142 = &v103 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9430, &qword_18F0AAA48);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v141 = &v103 - v19;
  OUTLINED_FUNCTION_237();
  v138 = sub_18F09339C();
  OUTLINED_FUNCTION_7();
  v134 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_22();
  v133 = v23 - v22;
  OUTLINED_FUNCTION_237();
  v139 = sub_18F0937FC();
  OUTLINED_FUNCTION_7();
  v143 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_42();
  v140 = v26 - v27;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v103 - v29;
  v150 = 0;
  v119 = sub_18F09343C();
  v118 = v31;
  v32 = MEMORY[0x1E69E7CC0];
  v117 = sub_18F093A5C();
  sub_18EF825F4(0, qword_1ED5FF370, 0x1E695DFB8);
  v116 = MEMORY[0x193AD89C0](v32);
  v33 = sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
  v153[0] = sub_18F09343C();
  v153[1] = v34;
  v153[2] = 0;
  v153[3] = 0;
  v154 = 0;
  v35 = v3;
  v36 = sub_18F0937AC();
  v38 = v37;

  sub_18F0933DC();
  v115 = sub_18F042998(v153, v36, v38, v7, v5, v30, 0, 0);
  v151[0] = sub_18F09343C();
  v151[1] = v39;
  v151[2] = 0;
  v151[3] = 0;
  v152 = 1;
  v127 = v35;
  v40 = sub_18F0937AC();
  v42 = v41;

  sub_18F0933DC();
  v43 = v7;
  v126 = v30;
  v123 = v33;
  v44 = sub_18F042998(v151, v40, v42, v7, v5, v30, 0, 0);
  v45 = objc_allocWithZone(LNActionDescriptionMetadata);
  v114 = sub_18EFB38A8(v44, 0, MEMORY[0x1E69E7CC0], 0);
  HIDWORD(v113) = sub_18F0933AC();
  v46 = v133;
  sub_18F0933FC();
  v112 = sub_18F09338C();
  v47 = v141;
  (*(v134 + 8))(v46, v138);
  sub_18F09341C();
  v48 = sub_18F09386C();
  HIDWORD(v110) = __swift_getEnumTagSinglePayload(v47, 1, v48);
  if (HIDWORD(v110) == 1)
  {
    sub_18EFB3164(v47, &qword_1EACB9430, &qword_18F0AAA48);
    v111 = 0;
  }

  else
  {
    v49 = sub_18F02CB74();
    OUTLINED_FUNCTION_33_0(v49, &v143);
    (*(v50 + 8))(v47, v48);
  }

  v51 = v142;
  sub_18F09344C();
  v52 = sub_18F0939AC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v51, 1, v52);
  v54 = v127;
  if (EnumTagSinglePayload == 1)
  {
    sub_18EFB3164(v51, &qword_1EACB9428, &qword_18F0AAA40);
    v109 = 0;
  }

  else
  {
    v55 = sub_18EFB22F0();
    OUTLINED_FUNCTION_33_0(v55, &v141);
    (*(v56 + 8))(v51, v52);
  }

  v57 = sub_18F0933BC();
  MEMORY[0x1EEE9AC00](v57);
  v102 = v0;
  v108 = sub_18EFB394C(sub_18EFB383C);

  sub_18EFB336C();
  v107 = v58;
  sub_18F09345C();
  v59 = v148;
  v125 = v5;
  v124 = v43;
  if (v148)
  {
    __swift_project_boxed_opaque_existential_1Tm(v147, v148);
    v60 = v126;
    sub_18F0933DC();
    v61 = sub_18F09343C();
    v106 = sub_18F0345A0(v43, v5, v54, v60, v61, v62, &v150, v59);

    v63 = v143;
    (*(v143 + 8))(v60, v139);
    __swift_destroy_boxed_opaque_existential_1Tm(v147);
  }

  else
  {
    sub_18EFB3164(v147, &unk_1EACB9438, &qword_18F0AAA50);
    v106 = 0;
    v63 = v143;
  }

  v105 = sub_18EFB5704();
  v104 = [objc_allocWithZone(LNVisibilityMetadata) initWithIsDiscoverable:1 assistantOnly:0];
  v64 = *(sub_18F0933EC() + 16);

  v65 = MEMORY[0x1E69E7CC0];
  if (v64)
  {
    v66 = sub_18F0933EC();
    v67 = 0;
    v132 = v129 + 16;
    v131 = v129 + 88;
    v146 = v65;
    v68 = (v129 + 8);
    v121 = v129 + 96;
    v138 = *(v66 + 16);
    LODWORD(v129) = *MEMORY[0x1E698ACA8];
    v122 = v63 + 16;
    v128 = v63 + 8;
    v120 = *MEMORY[0x1E698ACA0];
    v64 = v65;
    v134 = v1;
    v133 = v66;
    for (i = v68; ; v68 = i)
    {
      if (v138 == v67)
      {

        goto LABEL_29;
      }

      if (v67 >= *(v66 + 16))
      {
        break;
      }

      sub_18F09384C();
      OUTLINED_FUNCTION_36();
      v70 = *(v69 + 16);
      v71 = v66 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v67;
      v72 = *(v135 + 48);
      v73 = v145;
      *v145 = v67;
      v70(v73 + v72, v71);
      sub_18F0933DC();
      v141 = sub_18F09343C();
      v75 = v74;
      v76 = v144;
      sub_18F09383C();
      OUTLINED_FUNCTION_4_2();
      v77 = v136;
      v78 = v137;
      v79(v136, v76, v137);
      OUTLINED_FUNCTION_4_2();
      v81 = v80(v77, v78);
      if (v81 == v129)
      {
        OUTLINED_FUNCTION_4_2();
        v82(v77, v78);
        v83 = *(v77 + 8);
        v84 = *v68;
        v85 = 1;
      }

      else
      {
        v84 = *v68;
        if (v81 != v120)
        {
          v84(v77, v78);
        }

        v83 = 0;
        v85 = 9999;
      }

      v143 = v85;
      v84(v144, v78);
      sub_18EF825F4(0, &qword_1EACB6F80, 0x1E696AE18);
      sub_18F09380C();
      v142 = sub_18F093E9C();

      sub_18F09382C();
      if (v86)
      {
        v87 = sub_18F093E9C();
      }

      else
      {
        v87 = 0;
      }

      v88 = v139;
      if (v83)
      {
        v147[0] = v141;
        v147[1] = v75;
        v147[2] = v67;
        v148 = 0;
        v149 = 7;

        v89 = sub_18F0937AC();
        v91 = v90;
        OUTLINED_FUNCTION_4_2();
        v92 = v126;
        v93 = v140;
        v94(v126, v140, v88);
        v95 = v125;

        v96 = sub_18F042998(v147, v89, v91, v124, v95, v92, 0, 0);

        swift_bridgeObjectRelease_n();
      }

      else
      {

        v96 = 0;
        v93 = v140;
      }

      sub_18EF825F4(0, &unk_1EACB6F30, off_1E72AFE70);
      sub_18EFB9C40(v142, v87, v143, v96);
      OUTLINED_FUNCTION_4_2();
      v97(v93, v88);
      v98 = sub_18EFB3164(v145, &qword_1EACB9420, &qword_18F0AAA38);
      MEMORY[0x193AD88C0](v98);
      if (*((v146 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v146 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18F093DFC();
      }

      sub_18F093E3C();
      v64 = v146;
      ++v67;
      v66 = v133;
    }

    __break(1u);
  }

  else
  {
LABEL_29:
    v99 = HIDWORD(v110) == 1;
    sub_18EF825F4(0, &qword_1ED5FF210, off_1E72AFEA0);
    LOBYTE(v101) = v99;
    LOBYTE(v100) = BYTE4(v113) & 1;
    LNActionMetadata.init(identifier:mangledTypeName:mangledTypeNameByBundleIdentifier:effectiveBundleIdentifiers:bundleMetadataVersion:title:descriptionMetadata:deprecationMetadata:openAppWhenRun:supportedModes:explicitAuthenticationPolicy:outputType:outputFlags:parameters:systemProtocolMetadata:actionConfiguration:typeSpecificMetadata:customIntentClassName:availabilityAnnotations:shortcutsMetadata:requiredCapabilities:attributionBundleIdentifier:sideEffect:assistantDefinedSchemas:assistantDefinedSchemaTraits:visibilityMetadata:fullyQualifiedTypeName:constraints:allowedTargets:)(v119, v118, 0, 0xE000000000000000, v117, v116, 1, v115, v114, 0, v100, v112, v111, v101, v109, 0, v108, v107, v106, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v105, v104, 0, 0, v64, 0, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113);
    OUTLINED_FUNCTION_259();
  }
}

uint64_t sub_18EFB1E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v58 = a4;
  v65 = a3;
  v49 = a2;
  v55 = a5;
  v6 = sub_18F0939AC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_18F0937FC();
  v50 = *(v47 - 8);
  v10 = v50;
  v11 = MEMORY[0x1EEE9AC00](v47);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v46 = (&v43 - v14);
  sub_18F0933DC();
  v15 = sub_18F09343C();
  v56 = v15;
  v17 = v16;
  v18 = sub_18F09371C();
  v53 = v19;
  v54 = v18;
  sub_18F09372C();
  v52 = sub_18EFB22F0();
  (*(v7 + 8))(v9, v6);
  v45 = a1;
  v51 = sub_18F0936DC();
  v57 = sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);

  v20 = sub_18F09371C();
  v63[0] = v15;
  v63[1] = v17;
  v63[2] = v20;
  v63[3] = v21;
  v64 = 3;
  v22 = sub_18F0937AC();
  v24 = v23;
  v43 = *(v10 + 16);
  v25 = v46;
  v26 = v47;
  v43(v13, v46, v47);
  v27 = v65;

  v28 = v49;
  v48 = sub_18F042998(v63, v22, v24, v49, v27, v13, 0, 0);
  v44 = v17;

  v29 = sub_18F09371C();
  v61[0] = v56;
  v61[1] = v17;
  v61[2] = v29;
  v61[3] = v30;
  v62 = 4;
  v31 = sub_18F0937AC();
  v33 = v32;
  v43(v13, v25, v26);
  v34 = v65;

  v35 = sub_18F042998(v61, v31, v33, v28, v34, v13, 0, 0);
  v36 = sub_18F09371C();
  v38 = sub_18F0409B0(v28, v34, v58, v25, v56, v44, v36, v37);

  sub_18F0936FC();
  v39 = v60 != 0;
  sub_18EFB3164(v59, &qword_1EACB9180, &qword_18F09BD30);
  v40 = objc_allocWithZone(LNActionParameterMetadata);
  v41 = sub_18EFB31BC(v54, v53, v52, v51 & 1, v48, v35, MEMORY[0x1E69E7CC0], v38, 0, 0, v39, 0, 0);

  result = (*(v50 + 8))(v25, v26);
  *v55 = v41;
  return result;
}

id sub_18EFB22F0()
{
  sub_18F0936BC();
  OUTLINED_FUNCTION_7();
  v88 = v2;
  v89 = v1;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_22();
  v87 = v4 - v3;
  sub_18F0936CC();
  OUTLINED_FUNCTION_7();
  v90 = v6;
  v91 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_22();
  v9 = v8 - v7;
  v96 = sub_18F09362C();
  OUTLINED_FUNCTION_7();
  v94 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_22();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB96A0, &unk_18F0ABB80);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v95 = &v85 - v19;
  v20 = sub_18F09356C();
  OUTLINED_FUNCTION_7();
  v97 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_22();
  v25 = v24 - v23;
  v26 = sub_18F0939AC();
  OUTLINED_FUNCTION_7();
  v28 = v27;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v93 = &v85 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v85 - v32;
  v34 = *(v28 + 16);
  v86 = v0;
  v92 = v34;
  v34(&v85 - v32, v0, v26);
  v35 = *(v28 + 88);
  v98 = v26;
  v36 = v35(v33, v26);
  if (v36 != *MEMORY[0x1E698AD50])
  {
    if (v36 == *MEMORY[0x1E698AD98])
    {
      v37 = [objc_opt_self() doubleValueType];
      goto LABEL_9;
    }

    if (v36 == *MEMORY[0x1E698AD68])
    {
      v37 = [objc_opt_self() BOOLValueType];
      goto LABEL_9;
    }

    if (v36 == *MEMORY[0x1E698ADB0])
    {
      (*(v28 + 8))(v33, v98);
      v37 = [objc_opt_self() stringValueType];
      goto LABEL_9;
    }

    if (v36 == *MEMORY[0x1E698ADA8])
    {
      v39 = OUTLINED_FUNCTION_3_15();
      v40(v39);
      v41 = [objc_opt_self() personValueType];
      sub_18EF82E14(v33, &qword_1EACB97E8, &qword_18F0AC370);
      return v41;
    }

    if (v36 == *MEMORY[0x1E698AD78])
    {
      v42 = OUTLINED_FUNCTION_3_15();
      v43(v42);
      v44 = v97;
      (*(v97 + 32))(v25, v33, v20);
      sub_18EF825F4(0, &unk_1EACB6E00, off_1E72AFF18);
      v45 = sub_18F09354C();
      v47 = sub_18EFB39E8(v45, v46);
      (*(v44 + 8))(v25, v20);
      return v47;
    }

    if (v36 == *MEMORY[0x1E698ADA0])
    {
      v48 = OUTLINED_FUNCTION_3_15();
      v49(v48);
      v50 = v95;
      sub_18EFB3978(v33, v95);
      sub_18EFB3A5C(v50, v18);
      v51 = v96;
      if (__swift_getEnumTagSinglePayload(v18, 1, v96) == 1)
      {
        sub_18EF82E14(v18, &qword_1EACB96A0, &unk_18F0ABB80);
        v47 = [objc_allocWithZone(LNAnyEntityType) init];
      }

      else
      {
        v62 = v94;
        (*(v94 + 32))(v14, v18, v51);
        sub_18EF825F4(0, &unk_1EACB6E00, off_1E72AFF18);
        v63 = sub_18F09361C();
        v47 = sub_18EFB39E8(v63, v64);
        (*(v62 + 8))(v14, v51);
      }

      sub_18EF82E14(v50, &qword_1EACB96A0, &unk_18F0ABB80);
      return v47;
    }

    if (v36 == *MEMORY[0x1E698AD90])
    {
      v52 = OUTLINED_FUNCTION_2_17();
      v53 = v98;
      v54(v52, v98);
      v55 = *v33;
      v56 = *(*v33 + 16);
      if (v56)
      {
        v99 = MEMORY[0x1E69E7CC0];
        sub_18F09411C();
        v57 = v55 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
        v58 = *(v28 + 72);
        v96 = v55;
        v97 = v58;
        v60 = v92;
        v59 = v93;
        do
        {
          v60(v59, v57, v53);
          sub_18EFB22F0();
          (*(v28 + 8))(v59, v53);
          sub_18F0940FC();
          sub_18F09412C();
          sub_18F09413C();
          sub_18F09410C();
          v57 += v97;
          --v56;
        }

        while (v56);

        v61 = v99;
      }

      else
      {

        v61 = MEMORY[0x1E69E7CC0];
      }

      sub_18EF825F4(0, &unk_1EACB7248, off_1E72AFED0);
      return sub_18EFBA294(v61);
    }

    v65 = v98;
    if (v36 == *MEMORY[0x1E698AD00])
    {
      (*(v28 + 96))(v33, v98);
      v67 = v90;
      v66 = v91;
      (*(v90 + 32))(v9, v33, v91);
      v47 = sub_18EFB7B38();
      (*(v67 + 8))(v9, v66);
      return v47;
    }

    if (v36 == *MEMORY[0x1E698ACF8])
    {
      (*(v28 + 96))(v33, v98);
      v68 = v87;
      v69 = v88;
      v70 = v89;
      (*(v88 + 32))(v87, v33, v89);
      v47 = sub_18EFBBA78();
      (*(v69 + 8))(v68, v70);
      return v47;
    }

    if (v36 == *MEMORY[0x1E698AD88])
    {
      v72 = OUTLINED_FUNCTION_2_17();
      v73(v72, v65);
      v74 = swift_projectBox();
      v75 = v93;
      v92(v93, v74, v65);
      v76 = sub_18EFB22F0();
      v77 = [objc_allocWithZone(LNArrayValueType) initWithMemberValueType:v76 capabilities:3];
    }

    else
    {
      v78 = v92;
      v75 = v93;
      if (v36 != *MEMORY[0x1E698AD58])
      {
        if (v36 != *MEMORY[0x1E698ADC0])
        {
          if (v36 == *MEMORY[0x1E698AD48])
          {
            v37 = [objc_opt_self() stringValueType];
            goto LABEL_9;
          }

          if (v36 == *MEMORY[0x1E698AD38])
          {
            v37 = [objc_opt_self() attributedStringValueType];
            goto LABEL_9;
          }

          if (v36 == *MEMORY[0x1E698AD70])
          {
            v37 = [objc_opt_self() dateValueType];
            goto LABEL_9;
          }

          if (v36 == *MEMORY[0x1E698AD18])
          {
            v37 = [objc_opt_self() dateComponentsValueType];
            goto LABEL_9;
          }

          if (v36 == *MEMORY[0x1E698AD08])
          {
            sub_18EF825F4(0, &unk_1ED5FF9C0, off_1E72AFFA8);
            return static LNCodableValueType.dateInterval.getter();
          }

          else if (v36 == *MEMORY[0x1E698ADB8])
          {
            sub_18EF825F4(0, &unk_1ED5FF9C0, off_1E72AFFA8);
            return static LNCodableValueType.duration.getter();
          }

          else
          {
            if (v36 == *MEMORY[0x1E698AD60])
            {
              v37 = [objc_opt_self() URLValueType];
              goto LABEL_9;
            }

            if (v36 == *MEMORY[0x1E698AD80])
            {
              v37 = [objc_opt_self() fileValueType];
              goto LABEL_9;
            }

            if (v36 == *MEMORY[0x1E698AD40])
            {
              sub_18EF825F4(0, &unk_1ED5FF9C0, off_1E72AFFA8);
              return static LNCodableValueType.personNameComponents.getter();
            }

            else
            {
              if (v36 == *MEMORY[0x1E698ADC8])
              {
                v37 = [objc_opt_self() placemarkValueType];
                goto LABEL_9;
              }

              if (v36 == *MEMORY[0x1E698AD10])
              {
                v37 = [objc_opt_self() currencyAmountValueType];
                goto LABEL_9;
              }

              if (v36 == *MEMORY[0x1E698ACF0])
              {
                v37 = [objc_opt_self() applicationValueType];
                goto LABEL_9;
              }

              if (v36 == *MEMORY[0x1E698AD20])
              {
                v37 = [objc_opt_self() recurrenceRuleType];
                goto LABEL_9;
              }

              if (v36 == *MEMORY[0x1E698ACE8])
              {
                return [objc_allocWithZone(LNAnyAppValueType) init];
              }

              else if (v36 == *MEMORY[0x1E698AD28])
              {
                sub_18EF825F4(0, &qword_1ED5FF9F0, off_1E72B01C8);
                return static LNSystemEntityValueType.placeDescriptor.getter();
              }

              else
              {
                if (v36 != *MEMORY[0x1E698AD30])
                {
                  v99 = 0;
                  v100 = 0xE000000000000000;
                  sub_18F09406C();
                  MEMORY[0x193AD8780](0xD000000000000013, 0x800000018F0B0C80);
                  sub_18F09414C();
                  result = sub_18F0941AC();
                  __break(1u);
                  return result;
                }

                sub_18EF825F4(0, &qword_1ED5FF9F0, off_1E72B01C8);
                return static LNSystemEntityValueType.semanticContentDescriptor.getter();
              }
            }
          }
        }

        v82 = OUTLINED_FUNCTION_2_17();
        v83(v82, v65);
        v84 = swift_projectBox();
        v78(v75, v84, v65);
        v47 = sub_18EFB22F0();
LABEL_39:
        (*(v28 + 8))(v75, v65);

        return v47;
      }

      v79 = OUTLINED_FUNCTION_2_17();
      v80(v79, v65);
      v81 = swift_projectBox();
      v78(v75, v81, v65);
      v76 = sub_18EFB22F0();
      v77 = [objc_allocWithZone(LNArrayValueType) initWithMemberValueType:v76 capabilities:0];
    }

    v47 = v77;

    goto LABEL_39;
  }

  v37 = [objc_opt_self() intValueType];
LABEL_9:

  return v37;
}

unint64_t sub_18EFB30C8()
{
  result = qword_1ED5FCF00;
  if (!qword_1ED5FCF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCF00);
  }

  return result;
}

uint64_t sub_18EFB311C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = *(v1 + 16 * v2);

  return v4;
}

uint64_t sub_18EFB3164(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_36();
  (*(v4 + 8))(a1);
  return a1;
}

id sub_18EFB31BC(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a2)
  {
    v16 = sub_18F093B5C();
  }

  else
  {
    v16 = 0;
  }

  sub_18EF825F4(0, &unk_1ED5FF090, off_1E72B0158);
  v17 = sub_18F093DBC();

  type metadata accessor for LNValueTypeSpecificMetadataKey(0, v18, v19, v20);
  sub_18EFB3860(&qword_1ED5FF088, type metadata accessor for LNValueTypeSpecificMetadataKey, &unk_18F09FA1C);
  v21 = sub_18F093A3C();

  if (a13)
  {
    v22 = sub_18F093B5C();
  }

  else
  {
    v22 = 0;
  }

  v23 = [v26 initWithName:v16 valueType:a3 optional:a4 & 1 title:a5 description:a6 resolvableInputTypes:v17 typeSpecificMetadata:v21 dynamicOptionsSupport:a9 inputConnectionBehavior:a10 capabilities:a11 queryIdentifier:v22];

  swift_unknownObjectRelease();
  return v23;
}

void sub_18EFB336C()
{
  OUTLINED_FUNCTION_260();
  v1 = sub_18F09337C();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_22();
  v7 = v6 - v5;
  v8 = sub_18F09340C();
  v19 = v0;
  v9 = sub_18EFB3578(sub_18EFB9104, &v18, v8);
  type metadata accessor for LNSystemProtocolIdentifier(0, v10, v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72E0, &qword_18F09BD28);
  sub_18EFB3860(&qword_1ED5FFA10, type metadata accessor for LNSystemProtocolIdentifier, &unk_18F0A0AE0);
  v13 = sub_18F093A5C();
  v14 = 0;
  v15 = *(v9 + 16);
  while (1)
  {
    if (v15 == v14)
    {

      OUTLINED_FUNCTION_259();
      return;
    }

    if (v14 >= *(v9 + 16))
    {
      break;
    }

    (*(v3 + 16))(v7, v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v14++, v1);
    v16 = sub_18EFB8BA0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = v13;
    sub_18EFB8908(v16, sub_18EFB908C, 0, isUniquelyReferenced_nonNull_native, &v20);
    (*(v3 + 8))(v7, v1);
    v13 = v20;
  }

  __break(1u);
}

unint64_t sub_18EFB3578(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v31 = a2;
  v33 = sub_18F09337C();
  v5 = *(v33 - 8);
  v6 = MEMORY[0x1EEE9AC00](v33);
  v27 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = 0;
  v32 = *(a3 + 16);
  v29 = v5 + 16;
  v12 = (v5 + 8);
  v26 = (v5 + 32);
  v28 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v32 == v11)
    {

      return v28;
    }

    if (v11 >= *(a3 + 16))
    {
      break;
    }

    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = *(v5 + 72);
    v15 = a3;
    (*(v5 + 16))(v10, a3 + v13 + v14 * v11, v33);
    v16 = v30(v10);
    if (v3)
    {
      (*v12)(v10, v33);
      v23 = v28;

      return v23;
    }

    if (v16)
    {
      v25 = *v26;
      v25(v27, v10, v33);
      v17 = v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v17;
      if (isUniquelyReferenced_nonNull_native)
      {
        v19 = v17;
      }

      else
      {
        sub_18EFB9244(0, *(v17 + 16) + 1, 1);
        v19 = v34;
      }

      a3 = v15;
      v21 = *(v19 + 16);
      v20 = *(v19 + 24);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v28 = v21 + 1;
        v24 = v21;
        sub_18EFB9244(v20 > 1, v21 + 1, 1);
        v22 = v28;
        v21 = v24;
        a3 = v15;
        v19 = v34;
      }

      ++v11;
      *(v19 + 16) = v22;
      v28 = v19;
      result = (v25)(v19 + v13 + v21 * v14, v27, v33);
    }

    else
    {
      result = (*v12)(v10, v33);
      ++v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18EFB3860(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

id sub_18EFB38A8(void *a1, void *a2, uint64_t a3, void *a4)
{
  sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
  v8 = sub_18F093DBC();

  v9 = [v4 initWithDescriptionText:a1 categoryName:a2 searchKeywords:v8 resultValueName:a4];

  return v9;
}

uint64_t sub_18EFB3978(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB96A0, &unk_18F0ABB80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_18EFB39E8(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_18F093B5C();

  v4 = [v2 initWithIdentifier_];

  return v4;
}

uint64_t sub_18EFB3A5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB96A0, &unk_18F0ABB80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18EFB3ACC()
{
  v26 = sub_18F0935CC();
  v0 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v2 = v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_18F0934DC();
  v4 = 0;
  v27 = *(v3 + 16);
  v25[0] = v0 + 8;
  v25[1] = v0 + 16;
  v5 = MEMORY[0x1E69E7CC8];
  v6 = MEMORY[0x1E69E7CC8];
  v7 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    if (v27 == v4)
    {

      type metadata accessor for AssistantPrebuiltLibrary();
      swift_allocObject();
      return AssistantPrebuiltLibrary.init(intents:entities:enums:)(v7, v6, v5);
    }

    if (v4 >= *(v3 + 16))
    {
      break;
    }

    v8 = v26;
    (*(v0 + 16))(v2, v3 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v4, v26);
    sub_18EFB4004();
    (*(v0 + 8))(v2, v8);

    swift_isUniquelyReferenced_nonNull_native();
    v28 = v7;
    v9 = OUTLINED_FUNCTION_0_0();
    sub_18EFB7024(v9, v10, v11, v12, v13);
    v7 = v28;

    swift_isUniquelyReferenced_nonNull_native();
    v28 = v6;
    v14 = OUTLINED_FUNCTION_0_0();
    sub_18EFB7744(v14, v15, v16, v17, v18);
    v6 = v28;

    swift_isUniquelyReferenced_nonNull_native();
    v28 = v5;
    v19 = OUTLINED_FUNCTION_0_0();
    sub_18EFB7350(v19, v20, v21, v22, v23);

    v5 = v28;
    ++v4;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t AssistantSchemaVersion.description.getter()
{
  OUTLINED_FUNCTION_18_1();
  v3 = sub_18F0943FC();
  MEMORY[0x193AD8780](46, 0xE100000000000000);
  OUTLINED_FUNCTION_18_1();
  v0 = sub_18F0943FC();
  MEMORY[0x193AD8780](v0);

  MEMORY[0x193AD8780](46, 0xE100000000000000);
  OUTLINED_FUNCTION_18_1();
  v1 = sub_18F0943FC();
  MEMORY[0x193AD8780](v1);

  return v3;
}

uint64_t sub_18EFB3E08@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_18F0937BC();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v2, v4);
  result = (*(v6 + 88))(v9, v4);
  if (result == *MEMORY[0x1E698AC68])
  {
    v11 = xmmword_18F0AAA20;
LABEL_9:
    *a1 = v11;
    *(a1 + 16) = 0;
    return result;
  }

  if (result == *MEMORY[0x1E698AC70])
  {
    v11 = xmmword_18F0AC0B0;
    goto LABEL_9;
  }

  if (result == *MEMORY[0x1E698AC78])
  {
    v11 = xmmword_18F0AC0C0;
    goto LABEL_9;
  }

  if (result == *MEMORY[0x1E698AC80])
  {
    v11 = xmmword_18F0AC0D0;
    goto LABEL_9;
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_18F09406C();
  MEMORY[0x193AD8780](0xD000000000000010, 0x800000018F0B0A60);
  sub_18F09414C();
  result = sub_18F0941AC();
  __break(1u);
  return result;
}

uint64_t sub_18EFB4004()
{
  v1 = sub_18F0937FC();
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_0_3();
  v106 = v2;
  OUTLINED_FUNCTION_237();
  v3 = sub_18F0937EC();
  OUTLINED_FUNCTION_7();
  v136 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_0();
  v112 = v6;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v103 - v8;
  v10 = sub_18F09346C();
  OUTLINED_FUNCTION_7();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_0();
  v111 = v14;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v15);
  v135 = &v103 - v16;
  OUTLINED_FUNCTION_237();
  v122 = sub_18F09362C();
  OUTLINED_FUNCTION_7();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1_0();
  v119 = v20;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v21);
  v131 = &v103 - v22;
  OUTLINED_FUNCTION_237();
  v128 = sub_18F0937BC();
  OUTLINED_FUNCTION_7();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_0_3();
  v127 = v26;
  OUTLINED_FUNCTION_237();
  v27 = sub_18F09356C();
  OUTLINED_FUNCTION_7();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_1_0();
  v134 = v31;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v32);
  v129 = v0;
  v130 = &v103 - v33;
  v34 = sub_18F0935BC();
  v35 = v34;
  v133 = *(v34 + 16);
  if (!v133)
  {

    v38 = MEMORY[0x1E69E7CC8];
    v101 = MEMORY[0x1E69E7CC8];
    v100 = MEMORY[0x1E69E7CC8];
LABEL_34:
    type metadata accessor for AssistantPrebuiltLibrary();
    swift_allocObject();
    return AssistantPrebuiltLibrary.init(intents:entities:enums:)(v100, v101, v38);
  }

  v110 = v9;
  v113 = v3;
  v36 = 0;
  v107 = 0;
  v37 = v34 + 32;
  v104 = (v136 + 8);
  v105 = (v136 + 32);
  v109 = (v12 + 32);
  v126 = *MEMORY[0x1E698AC70];
  v124 = (v24 + 8);
  v125 = v24 + 104;
  v108 = (v12 + 8);
  v114 = (v18 + 8);
  v115 = (v18 + 32);
  v118 = (v29 + 32);
  v38 = MEMORY[0x1E69E7CC8];
  v116 = MEMORY[0x1E69E7CC8];
  v117 = (v29 + 8);
  v120 = MEMORY[0x1E69E7CC8];
  v121 = v10;
  v39 = v122;
  v40 = v130;
  v41 = v131;
  v123 = v27;
  v42 = v135;
  v132 = v35;
  while (v36 < *(v35 + 16))
  {
    v136 = v37;
    sub_18EFB4B8C(v37, v140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9230, &qword_18F0AA148);
    if (swift_dynamicCast())
    {
      (*v118)(v134, v40, v27);
      sub_18F0935AC();
      OUTLINED_FUNCTION_3_0();
      v44 = v127;
      v43 = v128;
      v45(v127, v126, v128);
      v46 = OUTLINED_FUNCTION_5_0();
      sub_18EFB6958(v46, v47, v48);

      (*v124)(v44, v43);
      memcpy(v141, v139, sizeof(v141));
      OUTLINED_FUNCTION_2_1(v141);
      v137 = v141[2].n128_u64[1];
      v138 = v141[3].n128_u64[0];

      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_4_1();
      v49 = AssistantSchemaVersion.description.getter();
      MEMORY[0x193AD8780](v49);

      v50 = v137;
      v42 = v138;
      sub_18EFB6BF8(v141, v139);
      swift_isUniquelyReferenced_nonNull_native();
      v139[0] = v38;
      OUTLINED_FUNCTION_7_0();
      v51 = sub_18EFAF54C();
      if (__OFADD__(v38[2], (v52 & 1) == 0))
      {
        goto LABEL_36;
      }

      v53 = v51;
      v54 = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9138, &qword_18F0AA0C0);
      if (sub_18F09417C())
      {
        OUTLINED_FUNCTION_7_0();
        v55 = sub_18EFAF54C();
        v40 = v130;
        v41 = v131;
        if ((v54 & 1) != (v56 & 1))
        {
          goto LABEL_38;
        }

        v53 = v55;
      }

      else
      {
        v40 = v130;
        v41 = v131;
      }

      v35 = v132;
      v38 = v139[0];
      if (v54)
      {
        sub_18F02359C(v141, v139[0][7] + 80 * v53);
      }

      else
      {
        sub_18F0418B4(v53, v50, v42, v141, v139[0]);
      }

      v39 = v122;
      sub_18EFB6C54(v141);
      v27 = v123;
      (*v117)(v134, v123);
      v10 = v121;
      goto LABEL_25;
    }

    if (swift_dynamicCast())
    {
      (*v115)(v119, v41, v39);
      sub_18F0935AC();
      OUTLINED_FUNCTION_3_0();
      v58 = v127;
      v57 = v128;
      v59(v127, v126, v128);
      v60 = OUTLINED_FUNCTION_5_0();
      sub_18EFB5CB4(v60, v61, v58, v62);

      (*v124)(v58, v57);
      memcpy(v142, v139, sizeof(v142));
      OUTLINED_FUNCTION_2_1(v142);
      v137 = v142[2].n128_u64[1];
      v138 = v142[3].n128_u64[0];

      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_4_1();
      v63 = AssistantSchemaVersion.description.getter();
      MEMORY[0x193AD8780](v63);

      v64 = v137;
      v42 = v138;
      sub_18EFB62B4(v142, v139);
      v65 = v120;
      swift_isUniquelyReferenced_nonNull_native();
      v139[0] = v65;
      OUTLINED_FUNCTION_7_0();
      v66 = sub_18EFAF54C();
      if (__OFADD__(v65[2], (v67 & 1) == 0))
      {
        goto LABEL_37;
      }

      v68 = v66;
      v69 = v67;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9148, &qword_18F0AA0C8);
      if (sub_18F09417C())
      {
        OUTLINED_FUNCTION_7_0();
        v70 = sub_18EFAF54C();
        v40 = v130;
        v41 = v131;
        if ((v69 & 1) != (v71 & 1))
        {
          goto LABEL_38;
        }

        v68 = v70;
      }

      else
      {
        v40 = v130;
        v41 = v131;
      }

      v35 = v132;
      v120 = v139[0];
      if (v69)
      {
        sub_18F023540(v142, v139[0][7] + 80 * v68);
      }

      else
      {
        sub_18F0418B4(v68, v64, v42, v142, v139[0]);
      }

      sub_18EFB677C(v142);
      v39 = v122;
      (*v114)(v119, v122);
      v10 = v121;
      v42 = v135;
      v27 = v123;
    }

    else
    {
      if (!swift_dynamicCast())
      {
        v83 = v110;
        v84 = v113;
        if (swift_dynamicCast())
        {
          (*v105)(v112, v83, v84);
          sub_18F0935AC();
          sub_18F09379C();
          sub_18F09359C();
          sub_18F09377C();
          v85 = *(sub_18F0419AC() + 16);
          v86 = v116;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v139[0] = v86;
          v88 = v85;
          v42 = v107;
          sub_18EFB7024(v88, sub_18EFB76CC, 0, isUniquelyReferenced_nonNull_native, v139);
          if (v42)
          {
            goto LABEL_39;
          }

          v116 = v139[0];
          v89 = v120;

          swift_isUniquelyReferenced_nonNull_native();
          v139[0] = v89;
          v90 = OUTLINED_FUNCTION_9_0();
          sub_18EFB7744(v90, v91, v92, v93, v94);

          v120 = v139[0];

          swift_isUniquelyReferenced_nonNull_native();
          v139[0] = v38;
          v95 = OUTLINED_FUNCTION_9_0();
          sub_18EFB7350(v95, v96, v97, v98, v99);
          v41 = v131;
          v107 = 0;

          (*v104)(v112, v113);

          v38 = v139[0];
          v40 = v130;
        }

        v35 = v132;
LABEL_25:
        v42 = v135;
        goto LABEL_31;
      }

      v72 = v111;
      (*v109)(v111, v42, v10);
      sub_18F0935AC();
      OUTLINED_FUNCTION_3_0();
      v74 = v127;
      v73 = v128;
      v75(v127, v126, v128);
      OUTLINED_FUNCTION_5_0();
      sub_18EFB4BF0();

      v76 = v74;
      v27 = v123;
      (*v124)(v76, v73);
      memcpy(__dst, v139, sizeof(__dst));
      OUTLINED_FUNCTION_2_1(__dst);
      v137 = __dst[2].n128_u64[1];
      v138 = __dst[3].n128_u64[0];

      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_4_1();
      v77 = AssistantSchemaVersion.description.getter();
      MEMORY[0x193AD8780](v77);

      v78 = v137;
      v79 = v138;
      v80 = v116;
      swift_isUniquelyReferenced_nonNull_native();
      v139[0] = v80;
      v81 = v78;
      v42 = v135;
      sub_18EFB5598(__dst, v81, v79);
      v40 = v130;

      v116 = v139[0];
      v82 = v72;
      v41 = v131;
      (*v108)(v82, v10);
      v35 = v132;
    }

LABEL_31:
    ++v36;
    __swift_destroy_boxed_opaque_existential_1Tm(v140);
    v37 = v136 + 40;
    if (v133 == v36)
    {

      v100 = v116;
      v101 = v120;
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  sub_18F0944AC();
  __break(1u);
LABEL_39:

  __break(1u);
  return result;
}