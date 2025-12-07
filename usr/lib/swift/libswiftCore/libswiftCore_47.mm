unint64_t _StringGuts.replaceSubrange<A>(_:with:)(Swift::UInt64 a1, Swift::UInt64 a2, unint64_t a3, Class *a4, uint64_t a5)
{
  v325 = a3;
  v326 = a1;
  v323 = a2;
  v8 = *(a5 + 8);
  v9 = type metadata accessor for LazyMapSequence(0, a4, &type metadata for String.UTF8View, v8);
  v310 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v312 = &v302 - v11;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for LazyMapSequence<A, B>, v9, v12);
  v16 = lazy protocol witness table accessor for type String.UTF8View and conformance String.UTF8View(WitnessTable, v14, v15);
  v17 = type metadata accessor for FlattenSequence(0, v9, WitnessTable, v16);
  v308 = *(v17 - 1);
  MEMORY[0x1EEE9AC00](v17, v18);
  v307 = &v302 - v19;
  v311 = type metadata accessor for FlattenSequence.Iterator(0, v9, WitnessTable, v16);
  v304 = *(v311 - 8);
  MEMORY[0x1EEE9AC00](v311, v20);
  v309 = &v302 - v21;
  v317 = a5;
  v336 = a5;
  v22 = swift_getWitnessTable(protocol conformance descriptor for <> LazyMapSequence<A, B>, v9, &v336);
  v25 = lazy protocol witness table accessor for type String.UTF8View and conformance String.UTF8View(v22, v23, v24);
  v315 = v22;
  v313 = v25;
  v316 = type metadata accessor for FlattenSequence<>.Index(0, v9, v22, v25);
  v314 = *(v316 - 8);
  v27 = MEMORY[0x1EEE9AC00](v316, v26);
  v29 = &v302 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v30);
  v32 = &v302 - v31;
  v322 = v8;
  v34 = type metadata accessor for LazySequence(0, a4, v8, v33);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v37 = &v302 - v36;
  v39 = swift_getWitnessTable(protocol conformance descriptor for FlattenSequence<A>, v17, v38);
  v320 = v17;
  v41 = type metadata accessor for LazySequence(0, v17, v39, v40);
  v318 = *(v41 - 8);
  v319 = v41;
  v43 = MEMORY[0x1EEE9AC00](v41, v42);
  v306 = &v302 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x1EEE9AC00](v43, v45);
  v321 = &v302 - v47;
  v328 = a4;
  v48 = *(a4 - 1);
  v50 = MEMORY[0x1EEE9AC00](v46, v49);
  v305 = &v302 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x1EEE9AC00](v50, v52);
  v55 = &v302 - v54;
  MEMORY[0x1EEE9AC00](v53, v56);
  v58 = (&v302 - v57);
  v60 = *v5;
  v59 = v5[1];
  v327 = v5;
  v329 = v59;
  v324 = v60;
  if ((v60 & ~v59 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v59 & 0xFFFFFFFFFFFFFFFLL))
  {
    v330 = 0;
    v331 = 0xE000000000000000;
    v76 = _StringGuts.nativeCapacity.getter(v60, v59);
    if ((v77 & 1) == 0)
    {
      String.reserveCapacity(_:)(v76);
    }

    v78._rawBits = v326;
    v80 = specialized Collection.subscript.getter(v78, v60, v59);
    v82 = v81;
    v84 = v83;
    v85 = v79;
    v86 = v80 >> 16;
    v87 = v81 >> 16;
    if ((v79 & 0x1000000000000000) != 0)
    {
      swift_bridgeObjectRetain_n(v79, 3);
      v249._rawBits = v80 & 0xFFFFFFFFFFFF0000 | 1;
      v250._rawBits = v82 & 0xFFFFFFFFFFFF0000 | 1;
      v251._rawBits = _StringGuts.validateScalarRange(_:)(v249, v250, v84, v85)._rawBits;
      if (v251._rawBits < 0x10000)
      {
        v251._rawBits |= 3;
      }

      v88 = String.UTF8View.distance(from:to:)(v251, v252);
      v85;
      v90 = v330;
      v89 = v331;
      if ((v331 & 0x1000000000000000) == 0)
      {
LABEL_16:
        if ((v89 & 0x2000000000000000) != 0)
        {
          goto LABEL_20;
        }

        v91 = (v90 & 0xFFFFFFFFFFFFLL) + v88;
        if (!__OFADD__(v90 & 0xFFFFFFFFFFFFLL, v88))
        {
          goto LABEL_21;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v88 = v87 - v86;
      swift_bridgeObjectRetain_n(v79, 2);
      v90 = v330;
      v89 = v331;
      if ((v331 & 0x1000000000000000) == 0)
      {
        goto LABEL_16;
      }
    }

    v253 = String.UTF8View._foreignCount()();
    v91 = v253 + v88;
    if (!__OFADD__(v253, v88))
    {
      goto LABEL_21;
    }

    do
    {
LABEL_19:
      __break(1u);
LABEL_20:
      v92 = HIBYTE(v89) & 0xF;
      v91 = v92 + v88;
    }

    while (__OFADD__(v92, v88));
LABEL_21:
    if ((v90 & ~v89 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v89 & 0xFFFFFFFFFFFFFFFLL))
    {
      v93 = _StringGuts.nativeUnusedCapacity.getter(v90, v89);
      if (v94)
      {
        goto LABEL_188;
      }

      if (v91 > 15 || (v89 & 0x2000000000000000) == 0 && v93 >= v88)
      {
        goto LABEL_27;
      }
    }

    else if (v91 > 15)
    {
LABEL_27:
      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v91, v88);
      if ((v85 & 0x1000000000000000) == 0)
      {
        v95 = v325;
        if ((v85 & 0x2000000000000000) != 0)
        {
          v85;
          v334 = v84;
          v335 = v85 & 0xFFFFFFFFFFFFFFLL;
          if ((HIBYTE(v85) & 0xF) < v87 || v87 - v86 < 0)
          {
            goto LABEL_182;
          }

          v85;
          v230 = v331 & 0xFFFFFFFFFFFFFFFLL;
          specialized UnsafeMutablePointer.initialize(from:count:)(&v334 + v86, v87 - v86, ((v331 & 0xFFFFFFFFFFFFFFFLL) + (*((v331 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL) + 32));
          __StringStorage._updateCountAndFlags(newCount:newIsASCII:)((*(v230 + 24) & 0xFFFFFFFFFFFFLL) + v87 - v86, (v85 >> 62) & (*(v230 + 24) < 0));
          v330 = *(v230 + 24);
          v101 = v322;
          v102 = v95;
        }

        else
        {
          if ((v84 & 0x1000000000000000) != 0)
          {
            v96 = ((v85 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v97 = v84 & 0xFFFFFFFFFFFFLL;
            if ((v84 & 0xFFFFFFFFFFFFLL) < v87)
            {
              goto LABEL_182;
            }
          }

          else
          {
            v96 = _StringObject.sharedUTF8.getter(v84, v85);
            v97 = v260;
            if (v260 < v87)
            {
              goto LABEL_182;
            }
          }

          v85;
          v98 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v86, v87, v96, v97);
          v99 = v331 & 0xFFFFFFFFFFFFFFFLL;
          __StringStorage.appendInPlace(_:isASCII:)(v98, v100, v84 < 0);
          v330 = *(v99 + 24);
          v85;
          v101 = v322;
          v102 = v95;
        }

LABEL_65:
        v161 = v324;
        v162 = v330 & 0xFFFFFFFFFFFFLL;
        if ((v331 & 0x2000000000000000) != 0)
        {
          v162 = HIBYTE(v331) & 0xF;
        }

        v325 = v162;
        String.append<A>(contentsOf:)(v102, v328, v101);
        v164 = v330;
        v163 = v331;
        if ((v331 & 0x2000000000000000) != 0)
        {
          v165 = HIBYTE(v331) & 0xF;
        }

        else
        {
          v165 = v330 & 0xFFFFFFFFFFFFLL;
        }

        v166._rawBits = v323;
        v168._rawBits = specialized Collection.subscript.getter(v166, v161, v329)._rawBits;
        v170 = v169;
        v172 = v171;
        rawBits = v167._rawBits;
        v174 = v168._rawBits >> 16;
        v175 = v169 >> 16;
        v326 = v165;
        if ((v167._rawBits & 0x1000000000000000) != 0)
        {
          swift_bridgeObjectRetain_n(v167._rawBits, 3);
          v254._rawBits = v168._rawBits & 0xFFFFFFFFFFFF0000 | 1;
          v255._rawBits = v170 & 0xFFFFFFFFFFFF0000 | 1;
          v256 = v326;
          v257._rawBits = _StringGuts.validateScalarRange(_:)(v254, v255, v172, rawBits)._rawBits;
          if (v257._rawBits < 0x10000)
          {
            v257._rawBits |= 3;
          }

          v176 = String.UTF8View.distance(from:to:)(v257, v258);
          rawBits;
          v177 = v256;
          if ((v163 & 0x1000000000000000) == 0)
          {
LABEL_72:
            v178 = v177 + v176;
            if (!__OFADD__(v177, v176))
            {
LABEL_73:
              if ((v164 & ~v163 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v163 & 0xFFFFFFFFFFFFFFFLL))
              {
                v179 = _StringGuts.nativeUnusedCapacity.getter(v164, v163);
                if (v180)
                {
                  goto LABEL_188;
                }

                v181 = (v163 >> 61) & 1;
                if (v179 < v176)
                {
                  LODWORD(v181) = 1;
                }

                if (v178 <= 15 && v181)
                {
                  goto LABEL_80;
                }
              }

              else if (v178 <= 15)
              {
LABEL_80:
                rawBits;
                v190 = _StringGuts._convertedToSmall()(v164, v163, v182, v183, v184, v185, v186, v187, v188, v189);
                v192 = v191;
                rawBits;
                v193._rawBits = v168._rawBits & 0xFFFFFFFFFFFF0000 | 1;
                v194._rawBits = v170 & 0xFFFFFFFFFFFF0000 | 1;
                v195._rawBits = _StringGuts.validateScalarRange(_:)(v193, v194, v172, rawBits)._rawBits;
                if (v195._rawBits < 0x10000)
                {
                  v195._rawBits |= 3;
                }

                v197 = Substring.description.getter(v195._rawBits, v196, v172, rawBits);
                v199 = v198;
                rawBits;
                v208 = _StringGuts._convertedToSmall()(v197, v199, v200, v201, v202, v203, v204, v205, v206, v207);
                v210 = v209;
                v199;
                v211 = HIBYTE(v192) & 0xF;
                v212 = HIBYTE(v210) & 0xF;
                v213 = v212 + v211;
                if (v212 + v211 <= 0xF)
                {
                  rawBits;
                  if (v212)
                  {
                    v214 = 0;
                    v215 = 0;
                    v216 = 8 * v211;
                    v217 = 8 * v212;
                    v218 = v327;
                    do
                    {
                      v219 = v210 >> (v214 & 0x38);
                      if (v215 < 8)
                      {
                        v219 = v208 >> v214;
                      }

                      v220 = (v219 << (v216 & 0x38)) | ((-255 << (v216 & 0x38)) - 1) & v192;
                      v221 = (v219 << v216) | ((-255 << v216) - 1) & v190;
                      if (v211 <= 7)
                      {
                        v190 = v221;
                      }

                      else
                      {
                        v192 = v220;
                      }

                      ++v211;
                      v216 += 8;
                      v214 += 8;
                      ++v215;
                    }

                    while (v217 != v214);
                  }

                  else
                  {
                    v218 = v327;
                  }

                  v329;
                  v163;
                  v227 = 0xA000000000000000;
                  if (!(v190 & 0x8080808080808080 | v192 & 0x80808080808080))
                  {
                    v227 = 0xE000000000000000;
                  }

                  v330 = v190;
                  v331 = v227 & 0xFF00000000000000 | (v213 << 56) | v192 & 0xFFFFFFFFFFFFFFLL;
                  goto LABEL_103;
                }

LABEL_188:
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
              }

              _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v178, v176);
              if ((rawBits & 0x1000000000000000) == 0)
              {
                v218 = v327;
                v72 = v325;
                if ((rawBits & 0x2000000000000000) != 0)
                {
                  rawBits;
                  v334 = v172;
                  v335 = rawBits & 0xFFFFFFFFFFFFFFLL;
                  if ((HIBYTE(rawBits) & 0xF) < v175 || (v175 - v174) < 0)
                  {
                    goto LABEL_182;
                  }

                  rawBits;
                  v231 = v331 & 0xFFFFFFFFFFFFFFFLL;
                  specialized UnsafeMutablePointer.initialize(from:count:)(&v334 + v174, v175 - v174, ((v331 & 0xFFFFFFFFFFFFFFFLL) + (*((v331 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL) + 32));
                  __StringStorage._updateCountAndFlags(newCount:newIsASCII:)((*(v231 + 24) & 0xFFFFFFFFFFFFLL) + v175 - v174, (rawBits >> 62) & (*(v231 + 24) < 0));
                  v330 = *(v231 + 24);
                  v329;
                }

                else
                {
                  if ((v172 & 0x1000000000000000) != 0)
                  {
                    v222 = ((rawBits & 0xFFFFFFFFFFFFFFFLL) + 32);
                    v223 = v172 & 0xFFFFFFFFFFFFLL;
                    if ((v172 & 0xFFFFFFFFFFFFLL) < v175)
                    {
                      goto LABEL_182;
                    }
                  }

                  else
                  {
                    v222 = _StringObject.sharedUTF8.getter(v172, rawBits);
                    v223 = v261;
                    if (v261 < v175)
                    {
                      goto LABEL_182;
                    }
                  }

                  rawBits;
                  v224 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v174, v175, v222, v223);
                  v225 = v331 & 0xFFFFFFFFFFFFFFFLL;
                  __StringStorage.appendInPlace(_:isASCII:)(v224, v226, v172 < 0);
                  v330 = *(v225 + 24);
                  v329;
                  rawBits;
                }

LABEL_104:
                v228 = v331;
                *v218 = v330;
                v218[1] = v228;
                return v72;
              }

              rawBits;
              _StringGuts._foreignAppendInPlace(_:)(v172, rawBits, v174, v175);
              v329;
              rawBits;
              v218 = v327;
LABEL_103:
              v72 = v325;
              goto LABEL_104;
            }

LABEL_139:
            __break(1u);
            goto LABEL_182;
          }
        }

        else
        {
          v176 = v175 - v174;
          swift_bridgeObjectRetain_n(v167._rawBits, 2);
          v177 = v165;
          if ((v163 & 0x1000000000000000) == 0)
          {
            goto LABEL_72;
          }
        }

        v259 = String.UTF8View._foreignCount()();
        v178 = v259 + v176;
        if (!__OFADD__(v259, v176))
        {
          goto LABEL_73;
        }

        goto LABEL_139;
      }

      v85;
      _StringGuts._foreignAppendInPlace(_:)(v84, v85, v86, v87);
      v85;
      v101 = v322;
LABEL_64:
      v102 = v325;
      goto LABEL_65;
    }

    v85;
    v111 = _StringGuts._convertedToSmall()(v90, v89, v103, v104, v105, v106, v107, v108, v109, v110);
    v113 = v112;
    v85;
    v114._rawBits = v80 & 0xFFFFFFFFFFFF0000 | 1;
    v115._rawBits = v82 & 0xFFFFFFFFFFFF0000 | 1;
    v116._rawBits = _StringGuts.validateScalarRange(_:)(v114, v115, v84, v85)._rawBits;
    if (v116._rawBits < 0x10000)
    {
      v116._rawBits |= 3;
    }

    v118 = Substring.description.getter(v116._rawBits, v117, v84, v85);
    v120 = v119;
    v85;
    v129 = _StringGuts._convertedToSmall()(v118, v120, v121, v122, v123, v124, v125, v126, v127, v128);
    v131 = v130;
    v120;
    v132 = HIBYTE(v113) & 0xF;
    v133 = HIBYTE(v131) & 0xF;
    v134 = v133 + v132;
    if (v133 + v132 > 0xF)
    {
      goto LABEL_188;
    }

    v85;
    if (v133)
    {
      v135 = 0;
      v136 = 0;
      v137 = 8 * v132;
      v101 = v322;
      do
      {
        v138 = v131 >> (v135 & 0x38);
        if (v136 < 8)
        {
          v138 = v129 >> v135;
        }

        v139 = (v138 << (v137 & 0x38)) | ((-255 << (v137 & 0x38)) - 1) & v113;
        v140 = (v138 << v137) | ((-255 << v137) - 1) & v111;
        if (v132 <= 7)
        {
          v111 = v140;
        }

        else
        {
          v113 = v139;
        }

        ++v132;
        v137 += 8;
        v135 += 8;
        ++v136;
      }

      while (8 * v133 != v135);
    }

    else
    {
      v101 = v322;
    }

    v89;
    v160 = 0xA000000000000000;
    if (!(v111 & 0x8080808080808080 | v113 & 0x80808080808080))
    {
      v160 = 0xE000000000000000;
    }

    v330 = v111;
    v331 = v160 & 0xFF00000000000000 | (v134 << 56) | v113 & 0xFFFFFFFFFFFFFFLL;
    goto LABEL_64;
  }

  v303 = v48;
  v61 = *(v48 + 16);
  v62 = v325;
  v63 = v328;
  (v61)(v58, v325, v328);
  v67 = swift_dynamicCast(&v330, v58, v63, &type metadata for String, 6uLL, v64, v65, v66, v302);
  v302 = v61;
  if (!v67)
  {
    (v61)(v55, v62, v63);
    v144 = swift_dynamicCast(&v330, v55, v63, &type metadata for Substring, 6uLL, v141, v142, v143, v302);
    v68 = v320;
    if ((v144 & 1) == 0)
    {
      goto LABEL_147;
    }

    v145 = v333;
    if ((v333 & 0x1000000000000000) != 0)
    {
      v333;
      goto LABEL_147;
    }

    v146 = v332;
    v147 = v330 >> 16;
    v148 = v331 >> 16;
    if ((v333 & 0x2000000000000000) != 0)
    {
      v330 = v332;
      v331 = v333 & 0xFFFFFFFFFFFFFFLL;
      v239 = v327;
      if ((HIBYTE(v333) & 0xF) >= v148)
      {
        v240 = v148 - v147;
        if (v148 - v147 >= 0)
        {
          v241 = v333;
          v242 = v326 >> 16;
          v243 = v323 >> 16;
          v244 = v324 & 0xFFFFFFFFFFFFLL;
          if ((v329 & 0x2000000000000000) != 0)
          {
            v244 = HIBYTE(v329) & 0xF;
          }

          v245 = v240 + (v326 >> 16) + v244 - v243;
          if (v245 >= 16)
          {
            v246 = _StringGuts.uniqueNativeCapacity.getter();
            if ((v247 & 1) != 0 || v246 < v245)
            {
              _StringGuts.grow(_:)(v245);
            }
          }

          v248 = v239[1] & 0xFFFFFFFFFFFFFFFLL;
          __StringStorage.replace(from:to:with:)(v242, v243, &v330 + v147, v240);
          v241;
          *v239 = *(v248 + 24);
          return v242;
        }
      }
    }

    else
    {
      v32 = v327;
      v149 = v324;
      if ((v332 & 0x1000000000000000) == 0)
      {
        goto LABEL_181;
      }

      v68 = v333;
      v150 = ((v333 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v151 = v332 & 0xFFFFFFFFFFFFLL;
      if ((v332 & 0xFFFFFFFFFFFFLL) >= v148)
      {
        goto LABEL_51;
      }
    }

LABEL_182:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v68 = v331;
  if ((v331 & 0x1000000000000000) == 0)
  {
    v69 = v330;
    if ((v331 & 0x2000000000000000) != 0)
    {
      v331 &= 0xFFFFFFFFFFFFFFuLL;
      v232 = v327;
      v72 = v326 >> 16;
      v233 = v323 >> 16;
      v234 = v324 & 0xFFFFFFFFFFFFLL;
      if ((v329 & 0x2000000000000000) != 0)
      {
        v234 = HIBYTE(v329) & 0xF;
      }

      v235 = (HIBYTE(v68) & 0xF) + (v326 >> 16) + v234 - v233;
      if (v235 > 15)
      {
        v236 = _StringGuts.uniqueNativeCapacity.getter();
        if ((v237 & 1) != 0 || v236 < v235)
        {
          _StringGuts.grow(_:)(v235);
        }
      }

      v238 = v232[1] & 0xFFFFFFFFFFFFFFFLL;
      __StringStorage.replace(from:to:with:)(v72, v233, &v330, HIBYTE(v68) & 0xF);
      v68;
      *v232 = *(v238 + 24);
      return v72;
    }

    v32 = v327;
    v61 = v324;
    if ((v330 & 0x1000000000000000) != 0)
    {
      v70 = ((v331 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v71 = v330 & 0xFFFFFFFFFFFFLL;
      goto LABEL_8;
    }

LABEL_179:
    v70 = _StringObject.sharedUTF8.getter(v69, v68);
    v71 = v299;
LABEL_8:
    v72 = v326 >> 16;
    v73 = v323 >> 16;
    v74 = v61 & 0xFFFFFFFFFFFFLL;
    if ((v329 & 0x2000000000000000) != 0)
    {
      v74 = HIBYTE(v329) & 0xF;
    }

    v75 = v71 + (v326 >> 16) + v74 - v73;
    if (v75 >= 16)
    {
      goto LABEL_56;
    }

    goto LABEL_59;
  }

  v331;
  v62 = v325;
  v68 = v320;
LABEL_147:
  v262 = v317;
  v302(v37, v62, v63);
  v263 = *(v303 + 32);
  v264 = v321;
  v303 += 32;
  v263(v321, v37, v63);
  v265 = &v264[*(v9 + 44)];
  *v265 = closure #3 in _StringGuts.replaceSubrange<A>(_:with:);
  *(v265 + 1) = 0;
  v266 = v315;
  v267 = v313;
  FlattenSequence<>.startIndex.getter(v68, v315, v313, v32);
  (*(v262 + 72))(v63, v262);
  v268 = v316;
  v269 = &v29[*(v316 + 44)];
  *v269 = 0;
  v269[8] = 1;
  v55 = FlattenSequence<>.distance(from:to:)(v32, v29, v68, v266, v267);
  v61 = *(v314 + 8);
  (v61)(v29, v268);
  v69 = (v61)(v32, v268);
  v147 = v326 >> 16;
  v270 = (v326 >> 16) + v55;
  if (__OFADD__(v326 >> 16, v55))
  {
    __break(1u);
LABEL_178:
    __break(1u);
    goto LABEL_179;
  }

  v32 = (v323 >> 16);
  v271 = v324 & 0xFFFFFFFFFFFFLL;
  if ((v329 & 0x2000000000000000) != 0)
  {
    v271 = HIBYTE(v329) & 0xF;
  }

  v272 = v271 - v32;
  v326 = (v326 >> 16) + v55;
  v273 = v270 + v272;
  v61 = v327;
  if (__OFADD__(v270, v272))
  {
    goto LABEL_178;
  }

  v29 = v263;
  if (v273 >= 16)
  {
    v274 = _StringGuts.uniqueNativeCapacity.getter();
    if ((v275 & 1) != 0 || v274 < v273)
    {
      v276 = _StringGuts.uniqueNativeCapacity.getter();
      if (v277)
      {
        v278 = *(v61 + 8);
        if ((v278 & 0x1000000000000000) != 0)
        {
          v279 = String.UTF8View._foreignCount()();
        }

        else if ((v278 & 0x2000000000000000) != 0)
        {
          v279 = HIBYTE(v278) & 0xF;
        }

        else
        {
          v279 = *v61 & 0xFFFFFFFFFFFFLL;
        }
      }

      else
      {
        v279 = 2 * v276;
      }

      if (v279 <= v273)
      {
        v154 = v273;
      }

      else
      {
        v154 = v279;
      }

      v280 = *(v61 + 8);
      if ((v280 & 0x1000000000000000) != 0)
      {
        goto LABEL_185;
      }

      v281 = *v61;
      if ((v280 & 0x2000000000000000) != 0)
      {
        v284 = (v280 >> 62) & 1;
        v283 = HIBYTE(v280) & 0xF;
        v330 = *v61;
        v331 = v280 & 0xFFFFFFFFFFFFFFLL;
        v282 = &v330;
      }

      else
      {
        if ((v281 & 0x1000000000000000) != 0)
        {
          v282 = ((v280 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v283 = v281 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v301 = v154;
          v282 = _StringObject.sharedUTF8.getter(*v61, *(v61 + 8));
          v154 = v301;
        }

        v284 = v281 >> 63;
      }

      v285 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v282, v283, v154, v284);
      v286 = *(v285 + 24);
      v280;
      *v61 = v286;
      *(v61 + 8) = v285;
    }
  }

  while (1)
  {
    v287 = *(v61 + 8) & 0xFFFFFFFFFFFFFFFLL;
    v325 = v147;
    v288 = v287 + 32 + v147;
    v149 = (*(v287 + 24) & 0xFFFFFFFFFFFFLL) - v32;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(&v32[v287 + 32], v149, (v288 + v55));
    v55 = *(v287 + 24) >> 63;
    v289 = v306;
    (*(v318 + 16))(v306, v321, v319);
    v290 = v307;
    (*(v308 + 32))(v307, v289, v68);
    v291 = v312;
    (*(v310 + 32))(v312, v290, v9);
    v292 = v328;
    (v29)(v305, v291, v328);
    v293 = v322;
    v29 = v309;
    (*(v322 + 32))(v292, v322);
    v294 = *(v9 + 44);
    v295 = type metadata accessor for LazyMapSequence.Iterator(0, v292, &type metadata for String.UTF8View, v293);
    v32 = 0;
    *&v29[*(v295 + 44)] = *&v291[v294];
    v147 = v311;
    v296 = &v29[*(v311 + 44)];
    *(v296 + 1) = 0;
    *(v296 + 2) = 0;
    *v296 = 0;
    v297 = v326;
    while (1)
    {
      FlattenSequence.Iterator.next()(v147, &v330);
      if ((v330 & 0x100) != 0)
      {
        break;
      }

      v55 = ((v330 & 0x80u) == 0) & v55;
      v32[v288] = v330;
      if (__OFADD__(v32++, 1))
      {
        __break(1u);
        break;
      }
    }

    (*(v304 + 8))(v29, v147);
    v146 = v297 + v149;
    if (!__OFADD__(v297, v149))
    {
      __StringStorage._updateCountAndFlags(newCount:newIsASCII:)(v146, v55 & 1);
      (*(v318 + 8))(v321, v319);
      *v327 = *(v287 + 24);
      return v325;
    }

    __break(1u);
LABEL_181:
    v61 = v148;
    v68 = v145;
    v150 = _StringObject.sharedUTF8.getter(v146, v145);
    v151 = v300;
    v148 = v61;
    if (v151 < v61)
    {
      goto LABEL_182;
    }

LABEL_51:
    v152 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v147, v148, v150, v151);
    v72 = v326 >> 16;
    v9 = (v326 >> 16) + v153;
    if (!__OFADD__(v326 >> 16, v153))
    {
      break;
    }

    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    _StringGuts._foreignGrow(_:)(v154);
  }

  v73 = v323 >> 16;
  v155 = v149 & 0xFFFFFFFFFFFFLL;
  if ((v329 & 0x2000000000000000) != 0)
  {
    v155 = HIBYTE(v329) & 0xF;
  }

  v156 = v155 - v73;
  v75 = v9 + v156;
  if (__OFADD__(v9, v156))
  {
    goto LABEL_184;
  }

  v70 = v152;
  v71 = v153;
  if (v75 < 16)
  {
    goto LABEL_59;
  }

LABEL_56:
  v157 = _StringGuts.uniqueNativeCapacity.getter();
  if ((v158 & 1) != 0 || v157 < v75)
  {
    _StringGuts.grow(_:)(v75);
  }

LABEL_59:
  v159 = *(v32 + 1) & 0xFFFFFFFFFFFFFFFLL;
  __StringStorage.replace(from:to:with:)(v72, v73, v70, v71);
  *v32 = *(v159 + 24);
  v68;
  return v72;
}

unint64_t closure #3 in _StringGuts.replaceSubrange<A>(_:with:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
  return v3;
}

unint64_t specialized _StringGuts.uniqueNativeReplaceSubrange<A>(_:with:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, void (*a5)(void *__return_ptr, Swift::UInt32 *), uint64_t a6)
{
  v8 = v6;
  v9 = a6;
  v10 = a5;
  v15 = specialized Collection.count.getter(a3, a4, a5, a6);
  v17 = a1 >> 16;
  v18 = (a1 >> 16) + v15;
  if (__OFADD__(a1 >> 16, v15))
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v44 = v10;
  v10 = a2 >> 16;
  v19 = v8[1];
  if ((v19 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(v19) & 0xF;
  }

  else
  {
    v20 = *v8 & 0xFFFFFFFFFFFFLL;
  }

  v21 = v20 - v10;
  v22 = v18 + v21;
  if (__OFADD__(v18, v21))
  {
    goto LABEL_31;
  }

  v7 = v15;
  if (v22 < 16)
  {
    goto LABEL_29;
  }

  v23 = _StringGuts.uniqueNativeCapacity.getter();
  if ((v24 & 1) == 0 && v23 >= v22)
  {
    goto LABEL_29;
  }

  v25 = _StringGuts.uniqueNativeCapacity.getter();
  if (v26)
  {
    v27 = v8[1];
    if ((v27 & 0x1000000000000000) != 0)
    {
      v28 = String.UTF8View._foreignCount()();
    }

    else if ((v27 & 0x2000000000000000) != 0)
    {
      v28 = HIBYTE(v27) & 0xF;
    }

    else
    {
      v28 = *v8 & 0xFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v28 = 2 * v25;
  }

  if (v28 <= v22)
  {
    v16 = v22;
  }

  else
  {
    v16 = v28;
  }

  v29 = v8[1];
  if ((v29 & 0x1000000000000000) != 0)
  {
LABEL_32:
    _StringGuts._foreignGrow(_:)(v16);
    goto LABEL_29;
  }

  v30 = *v8;
  v43 = v9;
  if ((v29 & 0x2000000000000000) != 0)
  {
    __src[0] = *v8;
    __src[1] = v29 & 0xFFFFFFFFFFFFFFLL;
    v34 = HIBYTE(v29) & 0xF | 0xC000000000000000;
    if ((v29 & 0x4000000000000000) == 0)
    {
      v34 = HIBYTE(v29) & 0xF;
    }

    v35 = v34 | 0x3000000000000000;
    v36 = _allocateStringStorage(codeUnitCapacity:)(v16);
    v37 = v35;
    v33 = v36;
    *(v36 + 16) = v38;
    *(v36 + 24) = v37;
    if (v38 < 0)
    {
      *__StringStorage._breadcrumbsAddress.getter() = 0;
      v37 = *(v33 + 24);
    }

    *(v33 + 32 + (v37 & 0xFFFFFFFFFFFFLL)) = 0;
    specialized UnsafeMutablePointer.initialize(from:count:)(__src, HIBYTE(v29) & 0xF, (v33 + 32));
  }

  else
  {
    if ((v30 & 0x1000000000000000) != 0)
    {
      v31 = ((v29 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v32 = v30 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v42 = v16;
      v31 = _StringObject.sharedUTF8.getter(v30, v29);
      v16 = v42;
    }

    v33 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v31, v32, v16, v30 < 0);
  }

  v39 = *(v33 + 24);
  v29;
  *v8 = v39;
  v8[1] = v33;
  v9 = v43;
LABEL_29:
  v40 = v8[1] & 0xFFFFFFFFFFFFFFFLL;
  specialized __StringStorage.replace<A>(from:to:with:replacementCount:)(v17, v10, a3, a4, v44, v9, v7);
  *v8 = *(v40 + 24);
  return v17;
}

void (*specialized _StringGuts.uniqueNativeReplaceSubrange<A>(_:with:)(unint64_t a1, unint64_t p_src, unint64_t a3, unint64_t a4, void (*a5)(uint64_t *__return_ptr, void *), uint64_t a6))(uint64_t *__return_ptr, void *)
{
  v7 = v6;
  v8 = a6;
  v9 = a5;
  v14._rawBits = specialized FlattenSequence<>.startIndex.getter(a3, a4, a5, a6);
  if ((a4 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v17 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v18 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v18 = 11;
  }

  v19 = specialized FlattenSequence<>.distance(from:to:)(v14, v15, v16 & 1, v18 | (v17 << 16), 0, 1, a3, a4, v9, v8);
  v20 = a1 >> 16;
  v21 = (a1 >> 16) + v19;
  if (__OFADD__(a1 >> 16, v19))
  {
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  a1 = p_src >> 16;
  v22 = *(v7 + 8);
  if ((v22 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v22) & 0xF;
  }

  else
  {
    v23 = *v7 & 0xFFFFFFFFFFFFLL;
  }

  v24 = v23 - a1;
  v47 = v21;
  v25 = v21 + v24;
  if (__OFADD__(v21, v24))
  {
    goto LABEL_43;
  }

  v26 = v19;
  v48 = v17;
  v49 = v9;
  if (v25 < 16)
  {
    goto LABEL_35;
  }

  v9 = v19;
  v27 = _StringGuts.uniqueNativeCapacity.getter();
  if ((v28 & 1) == 0)
  {
    v26 = v9;
    if (v27 >= v25)
    {
      goto LABEL_35;
    }
  }

  v29 = _StringGuts.uniqueNativeCapacity.getter();
  if (v30)
  {
    v31 = *(v7 + 8);
    if ((v31 & 0x1000000000000000) != 0)
    {
      v32 = String.UTF8View._foreignCount()();
    }

    else if ((v31 & 0x2000000000000000) != 0)
    {
      v32 = HIBYTE(v31) & 0xF;
    }

    else
    {
      v32 = *v7 & 0xFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v32 = 2 * v29;
  }

  if (v32 <= v25)
  {
    p_src = v25;
  }

  else
  {
    p_src = v32;
  }

  v33 = *(v7 + 8);
  if ((v33 & 0x1000000000000000) != 0)
  {
    goto LABEL_45;
  }

  v34 = *v7;
  if ((v33 & 0x2000000000000000) != 0)
  {
    *&__src = *v7;
    *(&__src + 1) = v33 & 0xFFFFFFFFFFFFFFLL;
    v38 = HIBYTE(v33) & 0xF | 0xC000000000000000;
    if ((v33 & 0x4000000000000000) == 0)
    {
      v38 = HIBYTE(v33) & 0xF;
    }

    v39 = v38 | 0x3000000000000000;
    v37 = _allocateStringStorage(codeUnitCapacity:)(p_src);
    *(v37 + 16) = v40;
    *(v37 + 24) = v39;
    if (v40 < 0)
    {
      *__StringStorage._breadcrumbsAddress.getter() = 0;
      v39 = *(v37 + 24);
    }

    *(v37 + 32 + (v39 & 0xFFFFFFFFFFFFLL)) = 0;
    specialized UnsafeMutablePointer.initialize(from:count:)(&__src, HIBYTE(v33) & 0xF, (v37 + 32));
  }

  else
  {
    if ((v34 & 0x1000000000000000) != 0)
    {
      v35 = ((v33 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v36 = v34 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v35 = _StringObject.sharedUTF8.getter(*v7, *(v7 + 8));
    }

    v37 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v35, v36, p_src, v34 < 0);
  }

  v41 = *(v37 + 24);
  v33;
  *v7 = v41;
  *(v7 + 8) = v37;
  while (1)
  {
    v26 = v9;
LABEL_35:
    v42 = *(v7 + 8) & 0xFFFFFFFFFFFFFFFLL;
    v9 = v20;
    v20 += v42 + 32;
    v43 = (*(v42 + 0x18) & 0xFFFFFFFFFFFFLL) - a1;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((v42 + 32 + a1), v43, &v26[v20]);
    a1 = *(v42 + 24) >> 63;
    *&__src = a3;
    *(&__src + 1) = a4;
    *&v53 = 0;
    *(&v53 + 1) = v48;
    *&v54 = v49;
    *(&v54 + 1) = v8;
    v56 = 0;
    v55 = 0uLL;
    a4;
    v8;
    v8 = 0;
    while (1)
    {
      p_src = &__src;
      v44 = specialized FlattenSequence.Iterator.next()();
      if ((v44 & 0x100) != 0)
      {
        break;
      }

      a1 = ((v44 & 0x80u) == 0) & a1;
      *(v20 + v8) = v44;
      if (__OFADD__(v8++, 1))
      {
        __break(1u);
        break;
      }
    }

    v50[2] = v54;
    v50[3] = v55;
    v51 = v56;
    v50[0] = __src;
    v50[1] = v53;
    outlined destroy of _HasContiguousBytes?(v50, &_ss15FlattenSequenceV8IteratorVys07LazyMapB0VyS2S8UTF8ViewVG_GMd, _ss15FlattenSequenceV8IteratorVys07LazyMapB0VyS2S8UTF8ViewVG_GMR);
    if (!__OFADD__(v47, v43))
    {
      break;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    _StringGuts._foreignGrow(_:)(p_src);
  }

  __StringStorage._updateCountAndFlags(newCount:newIsASCII:)(v47 + v43, a1 & 1);
  *v7 = *(v42 + 24);
  return v9;
}

unint64_t specialized _StringGuts.uniqueNativeReplaceSubrange<A>(_:with:)(unint64_t a1, unint64_t a2, int a3, void (*a4)(uint64_t *__return_ptr, int *), unint64_t a5)
{
  v8 = v5;
  v10 = a4;
  v11 = a3;
  LODWORD(v48) = a3;
  a4(__src, &v48);
  v46 = a5;
  v14 = specialized FlattenSequence<>.distance(from:to:)(0, 0, 0, 1, 0, 1, v11, v10);
  v45 = a1 >> 16;
  v15 = (a1 >> 16) + v14;
  if (__OFADD__(a1 >> 16, v14))
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v6 = a2 >> 16;
  v16 = *(v8 + 8);
  if ((v16 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(v16) & 0xF;
  }

  else
  {
    v17 = *v8 & 0xFFFFFFFFFFFFLL;
  }

  v18 = v17 - v6;
  v19 = v15 + v18;
  if (__OFADD__(v15, v18))
  {
    goto LABEL_50;
  }

  v7 = v14;
  if (v19 >= 16)
  {
    v20 = _StringGuts.uniqueNativeCapacity.getter();
    if ((v21 & 1) != 0 || v20 < v19)
    {
      v22 = _StringGuts.uniqueNativeCapacity.getter();
      if (v23)
      {
        v24 = *(v8 + 8);
        if ((v24 & 0x1000000000000000) != 0)
        {
          v25 = String.UTF8View._foreignCount()();
        }

        else if ((v24 & 0x2000000000000000) != 0)
        {
          v25 = HIBYTE(v24) & 0xF;
        }

        else
        {
          v25 = *v8 & 0xFFFFFFFFFFFFLL;
        }
      }

      else
      {
        v25 = 2 * v22;
      }

      if (v25 <= v19)
      {
        a5 = v19;
      }

      else
      {
        a5 = v25;
      }

      v26 = *(v8 + 8);
      if ((v26 & 0x1000000000000000) != 0)
      {
        goto LABEL_52;
      }

      v27 = *v8;
      if ((v26 & 0x2000000000000000) != 0)
      {
        __src[0] = *v8;
        __src[1] = v26 & 0xFFFFFFFFFFFFFFLL;
        v31 = HIBYTE(v26) & 0xF | 0xC000000000000000;
        if ((v26 & 0x4000000000000000) == 0)
        {
          v31 = HIBYTE(v26) & 0xF;
        }

        v32 = v31 | 0x3000000000000000;
        v30 = _allocateStringStorage(codeUnitCapacity:)(a5);
        *(v30 + 16) = v33;
        *(v30 + 24) = v32;
        if (v33 < 0)
        {
          *__StringStorage._breadcrumbsAddress.getter() = 0;
          v32 = *(v30 + 24);
        }

        *(v30 + 32 + (v32 & 0xFFFFFFFFFFFFLL)) = 0;
        specialized UnsafeMutablePointer.initialize(from:count:)(__src, HIBYTE(v26) & 0xF, (v30 + 32));
      }

      else
      {
        if ((v27 & 0x1000000000000000) != 0)
        {
          v28 = ((v26 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v29 = v27 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = _StringObject.sharedUTF8.getter(*v8, *(v8 + 8));
        }

        v30 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v28, v29, a5, v27 < 0);
      }

      v34 = *(v30 + 24);
      v26;
      *v8 = v34;
      *(v8 + 8) = v30;
    }
  }

  while (2)
  {
    v44 = v15;
    v35 = *(v8 + 8) & 0xFFFFFFFFFFFFFFFLL;
    v36 = (v35 + 32 + v45);
    v37 = (*(v35 + 0x18) & 0xFFFFFFFFFFFFLL) - v6;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((v35 + 32 + v6), v37, &v36[v7]);
    v38 = *(v35 + 24);
    v46;
    LODWORD(__src[0]) = v11;
    v10(&v48, __src);
    a5 = v48;
    v10 = Unicode.Scalar.UTF8View.subscript.getter(0, v48);
    v11 = v10;
    v39 = specialized RandomAccessCollection<>.index(after:)(0, a5);
    v6 = v10 >= 0 && v38 < 0;
    *v36 = v10;
    v7 = v45 + 33;
    v41 = 1;
    while (1)
    {
      if (a5 < 0x80)
      {
        if (v39 == 1)
        {
          break;
        }

        goto LABEL_37;
      }

      if (a5 < 0x800)
      {
        if (v39 == 2)
        {
          break;
        }

        goto LABEL_37;
      }

      if (a5 < 0x10000)
      {
        if (v39 == 3)
        {
          break;
        }

        goto LABEL_37;
      }

      if (v39 == 4)
      {
        break;
      }

LABEL_37:
      v10 = v39;
      v11 = Unicode.Scalar.UTF8View.subscript.getter(v39, a5);
      v15 = v11;
      v39 = specialized RandomAccessCollection<>.index(after:)(v10, a5);
      v6 = ((v15 & 0x80000000) == 0) & v6;
      *(v35 + v7++) = v11;
      if (__OFADD__(v41++, 1))
      {
        __break(1u);
        goto LABEL_49;
      }
    }

    v46;
    v15 = v44;
    if (__OFADD__(v44, v37))
    {
LABEL_51:
      __break(1u);
LABEL_52:
      _StringGuts._foreignGrow(_:)(a5);
      continue;
    }

    break;
  }

  __StringStorage._updateCountAndFlags(newCount:newIsASCII:)(v44 + v37, v6 & 1);
  *v8 = *(v35 + 24);
  return v45;
}

unint64_t _StringGuts.uniqueNativeReplaceSubrange<A>(_:with:)(unint64_t a1, unint64_t a2, char *a3, Class *a4, unint64_t a5)
{
  v6 = v5;
  v8 = a4;
  v54 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v53 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 8);
  swift_getAssociatedTypeWitness(0, v14, v8, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v16 = v15;
  v52 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v49 - v18;
  v20 = *(a5 + 112);
  v55 = a3;
  v21 = v20(v8, a5);
  v22 = a1 >> 16;
  v23 = (a1 >> 16) + v21;
  if (__OFADD__(a1 >> 16, v21))
  {
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  a5 = a2 >> 16;
  v24 = *(v6 + 8);
  if ((v24 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v24) & 0xF;
  }

  else
  {
    v25 = *v6 & 0xFFFFFFFFFFFFLL;
  }

  v26 = v25 - a5;
  v27 = v23 + v26;
  if (__OFADD__(v23, v26))
  {
    goto LABEL_38;
  }

  v28 = v21;
  v51 = (a1 >> 16) + v21;
  v56 = a1 >> 16;
  if (v27 < 16)
  {
    goto LABEL_30;
  }

  v50 = v21;
  v29 = _StringGuts.uniqueNativeCapacity.getter();
  v28 = v50;
  if ((v30 & 1) == 0 && v29 >= v27)
  {
    goto LABEL_30;
  }

  v31 = _StringGuts.uniqueNativeCapacity.getter();
  if (v32)
  {
    v33 = *(v6 + 8);
    if ((v33 & 0x1000000000000000) != 0)
    {
      v34 = String.UTF8View._foreignCount()();
    }

    else if ((v33 & 0x2000000000000000) != 0)
    {
      v34 = HIBYTE(v33) & 0xF;
    }

    else
    {
      v34 = *v6 & 0xFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v34 = 2 * v31;
  }

  if (v34 <= v27)
  {
    a3 = v27;
  }

  else
  {
    a3 = v34;
  }

  v35 = *(v6 + 8);
  if ((v35 & 0x1000000000000000) != 0)
  {
    goto LABEL_40;
  }

  v36 = *v6;
  if ((v35 & 0x2000000000000000) != 0)
  {
    __src[0] = *v6;
    __src[1] = v35 & 0xFFFFFFFFFFFFFFLL;
    v40 = HIBYTE(v35) & 0xF | 0xC000000000000000;
    if ((v35 & 0x4000000000000000) == 0)
    {
      v40 = HIBYTE(v35) & 0xF;
    }

    v41 = v40 | 0x3000000000000000;
    v39 = _allocateStringStorage(codeUnitCapacity:)(a3);
    *(v39 + 16) = v42;
    *(v39 + 24) = v41;
    if (v42 < 0)
    {
      *__StringStorage._breadcrumbsAddress.getter() = 0;
      v41 = *(v39 + 24);
    }

    *(v39 + 32 + (v41 & 0xFFFFFFFFFFFFLL)) = 0;
    specialized UnsafeMutablePointer.initialize(from:count:)(__src, HIBYTE(v35) & 0xF, (v39 + 32));
  }

  else
  {
    if ((v36 & 0x1000000000000000) != 0)
    {
      v37 = ((v35 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v38 = v36 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v37 = _StringObject.sharedUTF8.getter(*v6, *(v6 + 8));
    }

    v39 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v37, v38, a3, v36 < 0);
  }

  v43 = *(v39 + 24);
  v35;
  *v6 = v43;
  *(v6 + 8) = v39;
  v22 = v56;
  while (1)
  {
    v28 = v50;
LABEL_30:
    v49 = v6;
    v44 = *(v6 + 8) & 0xFFFFFFFFFFFFFFFLL;
    v6 = v44 + 32 + v22;
    v50 = (*(v44 + 24) & 0xFFFFFFFFFFFFLL) - a5;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((v44 + 32 + a5), v50, (v6 + v28));
    a5 = *(v44 + 24) >> 63;
    (*(v54 + 16))(v53, v55, v8);
    (*(v14 + 32))(v8, v14);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v14, v8, v16, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v14 = 0;
    v8 = (AssociatedConformanceWitness + 16);
    v46 = *(AssociatedConformanceWitness + 16);
    while (1)
    {
      a3 = v19;
      v46(__src, v16, AssociatedConformanceWitness);
      if ((__src[0] & 0x100) != 0)
      {
        break;
      }

      a5 = (SLOBYTE(__src[0]) >= 0) & a5;
      *(v6 + v14) = __src[0];
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        break;
      }
    }

    (*(v52 + 8))(v19, v16);
    v22 = v51;
    if (!__OFADD__(v51, v50))
    {
      break;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    _StringGuts._foreignGrow(_:)(a3);
  }

  __StringStorage._updateCountAndFlags(newCount:newIsASCII:)(v51 + v50, a5 & 1);
  *v49 = *(v44 + 24);
  return v56;
}

void String.append(contentsOf:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, int8x16_t a12)
{
  v16 = a1 >> 16;
  v17 = a2 >> 16;
  if ((a4 & 0x1000000000000000) == 0)
  {
    v18 = a3;
    v19 = v17 - v16;
    v21 = *v12;
    v20 = v12[1];
    if ((v20 & 0x1000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_47:
    v74 = String.UTF8View._foreignCount()();
    v23 = v74 + v19;
    if (!__OFADD__(v74, v19))
    {
      goto LABEL_7;
    }

LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v66._rawBits = a1 & 0xFFFFFFFFFFFF0000 | 1;
  v67._rawBits = a2 & 0xFFFFFFFFFFFF0000 | 1;
  v69._rawBits = _StringGuts.validateScalarRange(_:)(v66, v67, a3, a4)._rawBits;
  v71 = v70;
  if (v69._rawBits >= 0x10000)
  {
    rawBits = v69._rawBits;
  }

  else
  {
    rawBits = v69._rawBits | 3;
  }

  a4;
  v73._rawBits = v71;
  v18 = a3;
  v19 = String.UTF8View.distance(from:to:)(rawBits, v73);
  a4;
  v21 = *v76;
  v20 = v76[1];
  if ((v20 & 0x1000000000000000) != 0)
  {
    goto LABEL_47;
  }

LABEL_3:
  if ((v20 & 0x2000000000000000) != 0)
  {
    v22 = HIBYTE(v20) & 0xF;
  }

  else
  {
    v22 = v21 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v22 + v19;
  if (__OFADD__(v22, v19))
  {
    goto LABEL_49;
  }

LABEL_7:
  if ((v21 & ~v20 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v20 & 0xFFFFFFFFFFFFFFFLL))
  {
    if (v23 > 15)
    {
      goto LABEL_13;
    }

LABEL_20:
    v33 = _StringGuts._convertedToSmall()(v21, v20, a5, a6, a7, a8, a9, a10, a11, a12);
    v35 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v35 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (v35 >= v17)
    {
      v36 = v33;
      v37 = v34;
      v38 = 3;
      if (a1 >= 0x10000)
      {
        v38 = 1;
      }

      v39._rawBits = a2 & 0xFFFFFFFFFFFF0000 | 1;
      v40 = Substring.description.getter(v38 | a1 & 0xFFFFFFFFFFFF0000, v39, v18, a4);
      v42 = v41;
      v51 = _StringGuts._convertedToSmall()(v40, v41, v43, v44, v45, v46, v47, v48, v49, v50);
      v53 = v52;
      v42;
      v54 = HIBYTE(v37) & 0xF;
      v55 = HIBYTE(v53) & 0xF;
      v56 = v55 + v54;
      if (v55 + v54 <= 0xF)
      {
        if (v55)
        {
          v57 = 0;
          v58 = 0;
          v59 = 8 * v54;
          v60 = 8 * v55;
          do
          {
            v61 = v53 >> (v57 & 0x38);
            if (v58 < 8)
            {
              v61 = v51 >> v57;
            }

            v62 = (v61 << (v59 & 0x38)) | ((-255 << (v59 & 0x38)) - 1) & v37;
            v63 = (v61 << v59) | ((-255 << v59) - 1) & v36;
            if (v54 <= 7)
            {
              v36 = v63;
            }

            else
            {
              v37 = v62;
            }

            ++v54;
            v59 += 8;
            v57 += 8;
            ++v58;
          }

          while (v60 != v57);
        }

        v20;
        v64 = 0xA000000000000000;
        if (!(v36 & 0x8080808080808080 | v37 & 0x80808080808080))
        {
          v64 = 0xE000000000000000;
        }

        *v76 = v36;
        v76[1] = v64 & 0xFF00000000000000 | (v56 << 56) | v37 & 0xFFFFFFFFFFFFFFLL;
        return;
      }

LABEL_55:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_50:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v24 = _StringGuts.nativeUnusedCapacity.getter(v21, v20);
  if (v25)
  {
    goto LABEL_55;
  }

  if (v23 <= 15 && ((v20 & 0x2000000000000000) != 0 || v24 < v19))
  {
    goto LABEL_20;
  }

LABEL_13:
  _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v23, v19);
  if ((a4 & 0x1000000000000000) != 0)
  {

    _StringGuts._foreignAppendInPlace(_:)(v18, a4, v16, v17);
  }

  else
  {
    if ((a4 & 0x2000000000000000) == 0)
    {
      if ((v18 & 0x1000000000000000) != 0)
      {
        v26 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v27 = v18 & 0xFFFFFFFFFFFFLL;
        if ((v18 & 0xFFFFFFFFFFFFLL) < v17)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v26 = _StringObject.sharedUTF8.getter(v18, a4);
        v27 = v75;
        if (v75 < v17)
        {
          goto LABEL_54;
        }
      }

      v28 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v16, v17, v26, v27);
      v30 = v29;
      v31 = v76[1] & 0xFFFFFFFFFFFFFFFLL;
      specialized UnsafeMutablePointer.initialize(from:count:)(v28, v29, (v31 + (*(v31 + 0x18) & 0xFFFFFFFFFFFFLL) + 32));
      v32 = *(v31 + 24);
      if (!__OFADD__(v32 & 0xFFFFFFFFFFFFLL, v30))
      {
        __StringStorage._updateCountAndFlags(newCount:newIsASCII:)((v32 & 0xFFFFFFFFFFFFLL) + v30, (v32 & v18) < 0);
        *v76 = *(v31 + 24);
        return;
      }

      __break(1u);
LABEL_54:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v77[0] = v18;
    v77[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    if ((HIBYTE(a4) & 0xF) < v17 || (v17 - v16) < 0)
    {
      goto LABEL_54;
    }

    v65 = v76[1] & 0xFFFFFFFFFFFFFFFLL;
    specialized UnsafeMutablePointer.initialize(from:count:)(v77 + v16, v17 - v16, (v65 + (*(v65 + 0x18) & 0xFFFFFFFFFFFFLL) + 32));
    __StringStorage._updateCountAndFlags(newCount:newIsASCII:)((*(v65 + 24) & 0xFFFFFFFFFFFFLL) + v17 - v16, (a4 >> 62) & (*(v65 + 24) < 0));
    *v76 = *(v65 + 24);
  }
}

void specialized String.append<A>(contentsOf:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v82 = a1 + 32;
    do
    {
      v4 = (v82 + 16 * v3);
      v6 = *v4;
      v5 = v4[1];
      v8 = *v1;
      v7 = v1[1];
      v9 = HIBYTE(v7) & 0xF;
      v10 = *v1 & 0xFFFFFFFFFFFFLL;
      if ((v7 & 0x2000000000000000) != 0)
      {
        v11 = HIBYTE(v7) & 0xF;
      }

      else
      {
        v11 = *v1 & 0xFFFFFFFFFFFFLL;
      }

      if (!v11 && (*&v8 & ~v7 & 0x2000000000000000) == 0)
      {
        v5;
        v7;
        *v1 = v6;
        v1[1] = v5;
        goto LABEL_4;
      }

      v12 = HIBYTE(v5) & 0xF;
      if ((v7 & 0x2000000000000000) != 0)
      {
        if ((v5 & 0x2000000000000000) == 0)
        {
          v13 = *&v6 & 0xFFFFFFFFFFFFLL;
          v83 = 1;
LABEL_15:
          v14 = v13;
          goto LABEL_16;
        }

        v46 = v9 + v12;
        if (v9 + v12 < 0x10)
        {
          if (v12)
          {
            v48 = 0;
            v49 = 0;
            v50 = 8 * v9;
            v51 = 8 * v12;
            v52 = v1[1];
            do
            {
              v53 = v5 >> (v48 & 0x38);
              if (v49 < 8)
              {
                v53 = *&v6 >> v48;
              }

              v54 = (v53 << (v50 & 0x38)) | ((-255 << (v50 & 0x38)) - 1) & v52;
              v55 = (v53 << v50) | ((-255 << v50) - 1) & *&v8;
              if (v9 <= 7)
              {
                v8 = v55;
              }

              else
              {
                v52 = v54;
              }

              ++v9;
              v50 += 8;
              v48 += 8;
              ++v49;
            }

            while (v51 != v48);
          }

          else
          {
            v52 = v1[1];
          }

          *&v1[1];
          v64 = 0xA000000000000000;
          if (!(*&v8 & 0x8080808080808080 | v52 & 0x80808080808080))
          {
            v64 = 0xE000000000000000;
          }

          *v1 = v8;
          v1[1] = (v64 & 0xFF00000000000000 | (v46 << 56) | v52 & 0xFFFFFFFFFFFFFFLL);
          goto LABEL_4;
        }

        v83 = 0;
        v13 = *&v6 & 0xFFFFFFFFFFFFLL;
        v14 = HIBYTE(v5) & 0xF;
      }

      else
      {
        v83 = (v5 & 0x2000000000000000) == 0;
        v13 = *&v6 & 0xFFFFFFFFFFFFLL;
        v14 = HIBYTE(v5) & 0xF;
        if ((v5 & 0x2000000000000000) == 0)
        {
          goto LABEL_15;
        }
      }

LABEL_16:
      __n = HIBYTE(v5) & 0xF;
      v84 = v3;
      if ((v5 & 0x1000000000000000) != 0)
      {
        swift_bridgeObjectRetain_n(v5, 3);
        v68._rawBits = 1;
        v69._rawBits = (v14 << 16) | 1;
        v70._rawBits = _StringGuts.validateScalarRange(_:)(v68, v69, *&v6, v5)._rawBits;
        if (v70._rawBits < 0x10000)
        {
          v70._rawBits |= 3;
        }

        v16 = String.UTF8View.distance(from:to:)(v70, v71);
        v5;
        if ((v7 & 0x1000000000000000) == 0)
        {
LABEL_18:
          v17 = __OFADD__(v11, v16);
          v18 = v11 + v16;
          if (v17)
          {
            goto LABEL_107;
          }

          goto LABEL_19;
        }
      }

      else
      {
        swift_bridgeObjectRetain_n(v5, 2);
        v16 = v14;
        if ((v7 & 0x1000000000000000) == 0)
        {
          goto LABEL_18;
        }
      }

      v72 = String.UTF8View._foreignCount()();
      v18 = v72 + v16;
      if (__OFADD__(v72, v16))
      {
LABEL_107:
        __break(1u);
LABEL_108:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_19:
      if ((*&v8 & ~v7 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v7 & 0xFFFFFFFFFFFFFFFLL))
      {
        v19 = _StringGuts.nativeUnusedCapacity.getter(*&v8, v7);
        if (v20)
        {
          goto LABEL_110;
        }

        if (v18 <= 15)
        {
          if ((v7 & 0x2000000000000000) != 0)
          {
            goto LABEL_44;
          }

          if (v19 < v16)
          {
            goto LABEL_25;
          }
        }
      }

      else if (v18 <= 15)
      {
        if ((v7 & 0x2000000000000000) != 0)
        {
LABEL_44:
          v22 = v7;
        }

        else
        {
LABEL_25:
          if ((v7 & 0x1000000000000000) != 0)
          {
            v8 = _StringGuts._foreignConvertedToSmall()(*&v8, v7);
            v22 = v67;
          }

          else
          {
            if ((*&v8 & 0x1000000000000000) != 0)
            {
              v21 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v21 = _StringObject.sharedUTF8.getter(*&v8, v7);
              v10 = v77;
            }

            closure #1 in _StringGuts._convertedToSmall()(v21, v10, &__src, v15);
            v8 = __src;
            v22 = v86;
          }
        }

        v5;
        if (v83)
        {
          if ((v5 & 0x1000000000000000) != 0)
          {
            v34 = v79;
            v6 = _StringGuts._foreignConvertedToSmall()(*&v6, v5);
            v35 = v78;
            v5;
          }

          else
          {
            if ((*&v6 & 0x1000000000000000) != 0)
            {
              v73 = v13;
              v74 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v74 = _StringObject.sharedUTF8.getter(*&v6, v5);
            }

            v34 = v79;
            closure #1 in _StringGuts._convertedToSmall()(v74, v73, &__src, v33);
            v5;
            v6 = __src;
            v35 = v86;
          }
        }

        else
        {
          v34 = v79;
          v5;
          v35 = v5;
        }

        v36 = HIBYTE(v22) & 0xF;
        v37 = HIBYTE(v35) & 0xF;
        v38 = v37 + v36;
        if (v37 + v36 > 0xF)
        {
LABEL_110:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v5;
        if (v37)
        {
          v39 = 0;
          v40 = 0;
          v41 = 8 * v36;
          v42 = 8 * v37;
          v2 = v34;
          do
          {
            v43 = v35 >> (v39 & 0x38);
            if (v40 < 8)
            {
              v43 = *&v6 >> v39;
            }

            v44 = (v43 << (v41 & 0x38)) | ((-255 << (v41 & 0x38)) - 1) & v22;
            v45 = (v43 << v41) | ((-255 << v41) - 1) & *&v8;
            if (v36 <= 7)
            {
              v8 = v45;
            }

            else
            {
              v22 = v44;
            }

            ++v36;
            v41 += 8;
            v39 += 8;
            ++v40;
          }

          while (v42 != v39);
        }

        else
        {
          v2 = v34;
        }

        v5;
        v7;
        v47 = 0xA000000000000000;
        if (!(*&v8 & 0x8080808080808080 | v22 & 0x80808080808080))
        {
          v47 = 0xE000000000000000;
        }

        v1 = v80;
        *v80 = v8;
        v80[1] = (v47 & 0xFF00000000000000 | (v38 << 56) | v22 & 0xFFFFFFFFFFFFFFLL);
        v3 = v84;
        goto LABEL_4;
      }

      v1 = v80;
      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v18, v16);
      if ((v5 & 0x1000000000000000) != 0)
      {
        _StringGuts._foreignAppendInPlace(_:)(*&v6, v5, 0, v14);
        swift_bridgeObjectRelease_n(v5, 2);
        v3 = v84;
        goto LABEL_60;
      }

      v3 = v84;
      if (v83)
      {
        if ((*&v6 & 0x1000000000000000) != 0)
        {
          v23 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if (v13)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v75 = _StringObject.sharedUTF8.getter(*&v6, v5);
          if (v76 < v13)
          {
            goto LABEL_108;
          }

          v23 = v75;
          if (v13)
          {
LABEL_34:
            if (!v23)
            {
              goto LABEL_108;
            }
          }
        }

        v5;
        v24 = *&v80[1] & 0xFFFFFFFFFFFFFFFLL;
        v25 = v24 + 32;
        v26 = (v24 + 32 + (*(v24 + 0x18) & 0xFFFFFFFFFFFFLL));
        if (&v26[v13] > v23 && v26 < &v23[v13])
        {
          goto LABEL_109;
        }

        memcpy(v26, v23, v13);
        v27 = *(v24 + 24);
        v28 = (v27 & 0xFFFFFFFFFFFFLL) + v13;
        if ((v27 & *&v6) < 0 != v17)
        {
          v28 |= 0xC000000000000000;
        }

        v29 = v28 | 0x3000000000000000;
        *(v24 + 24) = v28 | 0x3000000000000000;
        *(v25 + (v28 & 0xFFFFFFFFFFFFLL)) = 0;
        v30 = *(v24 + 16);
        if (v30 < 0)
        {
          v31 = ((v25 + (v30 & 0xFFFFFFFFFFFFLL) + 7) & 0x7FFFFFFFFFFFFFF8);
          v32 = *v31;
          *v31 = 0;
          v32;
          v29 = *(v24 + 24);
        }

        *v80 = v29;
        v5;
LABEL_60:
        v2 = v79;
        goto LABEL_4;
      }

      __src = v6;
      v86 = v5 & 0xFFFFFFFFFFFFFFLL;
      v5;
      v56 = *&v80[1] & 0xFFFFFFFFFFFFFFFLL;
      v57 = v56 + 32;
      v58 = (v56 + 32 + (*(v56 + 0x18) & 0xFFFFFFFFFFFFLL));
      if (&__src < &v58[__n] && v58 < &__src + __n)
      {
LABEL_109:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      memcpy(v58, &__src, __n);
      v59 = *(v56 + 24);
      v60 = (v59 & 0xFFFFFFFFFFFFLL) + __n;
      v61 = v59 > -1 || (v5 & 0x4000000000000000) == 0;
      v62 = v60 | 0xC000000000000000;
      if (v61)
      {
        v62 = v60;
      }

      *(v56 + 24) = v62 | 0x3000000000000000;
      *(v57 + (v62 & 0xFFFFFFFFFFFFLL)) = 0;
      v63 = *(v56 + 16);
      if (v63 < 0)
      {
        v65 = ((v57 + (v63 & 0xFFFFFFFFFFFFLL) + 7) & 0x7FFFFFFFFFFFFFF8);
        v66 = *v65;
        *v65 = 0;
        v5;
        v66;
      }

      else
      {
        v5;
      }

      v2 = v79;
      *v80 = *(v56 + 24);
LABEL_4:
      ++v3;
    }

    while (v3 != v2);
  }
}

void specialized String.append<A>(contentsOf:)(unint64_t a1, unint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, int8x16_t a10)
{
  if (&full type metadata for CollectionOfOne<Character> == &full type metadata for String)
  {
    String.append(_:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
    return;
  }

  if (&full type metadata for CollectionOfOne<Character> == &full type metadata for Substring)
  {
    __break(1u);
    goto LABEL_109;
  }

  if (&full type metadata for CollectionOfOne<Character> == &full type metadata for [Character])
  {

    specialized String.append<A>(contentsOf:)(a1);
    return;
  }

  v12 = *v10;
  v11 = *(v10 + 8);
  v13 = HIBYTE(v11) & 0xF;
  v14 = *v10 & 0xFFFFFFFFFFFFLL;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v15 = *v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15 && (*&v12 & ~v11 & 0x2000000000000000) == 0)
  {
    a2;
    v11;
    *v10 = a1;
    *(v10 + 8) = a2;
    return;
  }

  v16 = (a2 & 0x2000000000000000) == 0;
  v17 = HIBYTE(a2) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v18 = a1 & 0xFFFFFFFFFFFFLL;
    v19 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) != 0)
    {
LABEL_19:
      v91 = v18;
      v92 = a1;
      if ((a2 & 0x1000000000000000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_66;
    }

LABEL_18:
    v19 = v18;
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    v18 = a1 & 0xFFFFFFFFFFFFLL;
    v16 = 1;
    goto LABEL_18;
  }

  v55 = v13 + v17;
  if (v13 + v17 < 0x10)
  {
    if (v17)
    {
      v64 = 0;
      v65 = 0;
      v66 = 8 * v13;
      v67 = 8 * v17;
      v68 = *(v10 + 8);
      do
      {
        v69 = a2 >> (v64 & 0x38);
        if (v65 < 8)
        {
          v69 = a1 >> v64;
        }

        v70 = (v69 << (v66 & 0x38)) | ((-255 << (v66 & 0x38)) - 1) & v68;
        v71 = (v69 << v66) | ((-255 << v66) - 1) & *&v12;
        if (v13 <= 7)
        {
          v12 = v71;
        }

        else
        {
          v68 = v70;
        }

        ++v13;
        v66 += 8;
        v64 += 8;
        ++v65;
      }

      while (v67 != v64);
    }

    else
    {
      v68 = *(v10 + 8);
    }

    *(v10 + 8);
    v80 = 0xA000000000000000;
    if (!(*&v12 & 0x8080808080808080 | v68 & 0x80808080808080))
    {
      v80 = 0xE000000000000000;
    }

    v54 = v80 & 0xFF00000000000000 | (v55 << 56) | v68 & 0xFFFFFFFFFFFFFFLL;
    goto LABEL_96;
  }

  v16 = 0;
  v19 = HIBYTE(a2) & 0xF;
  v91 = a1 & 0xFFFFFFFFFFFFLL;
  v92 = a1;
  if ((a2 & 0x1000000000000000) == 0)
  {
LABEL_20:
    v20 = a2;
    swift_bridgeObjectRetain_n(a2, 2);
    v22 = v19;
    if ((v11 & 0x1000000000000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_69:
    v61 = String.UTF8View._foreignCount()();
    v24 = v61 + v22;
    if (!__OFADD__(v61, v22))
    {
      goto LABEL_22;
    }

LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

LABEL_66:
  swift_bridgeObjectRetain_n(a2, 2);
  v57._rawBits = 1;
  v58._rawBits = (v19 << 16) | 1;
  v59._rawBits = _StringGuts.validateScalarRange(_:)(v57, v58, v92, a2)._rawBits;
  if (v59._rawBits < 0x10000)
  {
    v59._rawBits |= 3;
  }

  v20 = a2;
  v22 = String.UTF8View.distance(from:to:)(v59, v60);
  if ((v11 & 0x1000000000000000) != 0)
  {
    goto LABEL_69;
  }

LABEL_21:
  v23 = __OFADD__(v15, v22);
  v24 = v15 + v22;
  if (v23)
  {
    goto LABEL_71;
  }

LABEL_22:
  if ((*&v12 & ~v11 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v11 & 0xFFFFFFFFFFFFFFFLL))
  {
    if (v24 >= 16)
    {
      goto LABEL_33;
    }

    if ((v11 & 0x2000000000000000) == 0)
    {
LABEL_28:
      if ((v11 & 0x1000000000000000) != 0)
      {
        v12 = _StringGuts._foreignConvertedToSmall()(*&v12, v11);
        v28 = v83;
      }

      else
      {
        if ((*&v12 & 0x1000000000000000) != 0)
        {
          v27 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v27 = _StringObject.sharedUTF8.getter(*&v12, v11);
          v14 = v86;
        }

        closure #1 in _StringGuts._convertedToSmall()(v27, v14, &__src, v21);
        v12 = __src;
        v28 = v94;
      }

      goto LABEL_50;
    }

    goto LABEL_49;
  }

  v25 = _StringGuts.nativeUnusedCapacity.getter(*&v12, v11);
  if (v26)
  {
    goto LABEL_109;
  }

  if (v24 > 15)
  {
    goto LABEL_33;
  }

  if ((v11 & 0x2000000000000000) != 0)
  {
LABEL_49:
    v28 = v11;
LABEL_50:
    v20;
    if (v16)
    {
      if ((v20 & 0x1000000000000000) != 0)
      {
        v92 = _StringGuts._foreignConvertedToSmall()(v92, v20);
        v42 = v87;
        v20;
        v41 = v20;
      }

      else
      {
        if ((v92 & 0x1000000000000000) != 0)
        {
          closure #1 in _StringGuts._convertedToSmall()(((v20 & 0xFFFFFFFFFFFFFFFLL) + 32), v91, &__src, v40);
        }

        else
        {
          v88 = _StringObject.sharedUTF8.getter(v92, v20);
          closure #1 in _StringGuts._convertedToSmall()(v88, v89, &__src, v90);
        }

        v20;
        v41 = v20;
        v42 = v94;
        v92 = __src;
      }
    }

    else
    {
      v20;
      v41 = v20;
      v42 = v20;
    }

    v43 = HIBYTE(v28) & 0xF;
    v44 = HIBYTE(v42) & 0xF;
    v45 = v44 + v43;
    if (v44 + v43 < 0x10)
    {
      v46 = v41;
      v41;
      if (v44)
      {
        v47 = 0;
        v48 = 0;
        v49 = 8 * v43;
        do
        {
          v50 = v42 >> (v47 & 0x38);
          if (v48 < 8)
          {
            v50 = v92 >> v47;
          }

          v51 = (v50 << (v49 & 0x38)) | ((-255 << (v49 & 0x38)) - 1) & v28;
          v52 = (v50 << v49) | ((-255 << v49) - 1) & *&v12;
          if (v43 <= 7)
          {
            v12 = v52;
          }

          else
          {
            v28 = v51;
          }

          ++v43;
          v49 += 8;
          v47 += 8;
          ++v48;
        }

        while (8 * v44 != v47);
      }

      v46;
      v11;
      v53 = 0xA000000000000000;
      if (!(*&v12 & 0x8080808080808080 | v28 & 0x80808080808080))
      {
        v53 = 0xE000000000000000;
      }

      v54 = v53 & 0xFF00000000000000 | (v45 << 56) | v28 & 0xFFFFFFFFFFFFFFLL;
LABEL_96:
      *v10 = v12;
      *(v10 + 8) = v54;
      return;
    }

LABEL_109:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v25 < v22)
  {
    goto LABEL_28;
  }

LABEL_33:
  _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v24, v22);
  if ((v20 & 0x1000000000000000) != 0)
  {
LABEL_72:
    _StringGuts._foreignAppendInPlace(_:)(v92, v20, 0, v19);
    swift_bridgeObjectRelease_n(v20, 2);
    return;
  }

  if (v16)
  {
    if ((v92 & 0x1000000000000000) != 0)
    {
      v29 = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v30 = v91;
      if (!v91)
      {
LABEL_38:
        v20;
        v31 = *(v10 + 8) & 0xFFFFFFFFFFFFFFFLL;
        v32 = v31 + 32;
        v33 = (v31 + 32 + (*(v31 + 0x18) & 0xFFFFFFFFFFFFLL));
        if (&v33[v30] <= v29 || v33 >= &v29[v30])
        {
          memcpy(v33, v29, v30);
          v34 = *(v31 + 24);
          if (((v34 & v92 & 0x8000000000000000) != 0) != v23)
          {
            v35 = ((v34 & 0xFFFFFFFFFFFFLL) + v30) | 0xC000000000000000;
          }

          else
          {
            v35 = (v34 & 0xFFFFFFFFFFFFLL) + v30;
          }

          v36 = v35 | 0x3000000000000000;
          *(v31 + 24) = v35 | 0x3000000000000000;
          *(v32 + (v35 & 0xFFFFFFFFFFFFLL)) = 0;
          v37 = *(v31 + 16);
          if (v37 < 0)
          {
            v38 = ((v32 + (v37 & 0xFFFFFFFFFFFFLL) + 7) & 0x7FFFFFFFFFFFFFF8);
            v39 = *v38;
            *v38 = 0;
            v39;
            v36 = *(v31 + 24);
          }

          *v10 = v36;

          v20;
          return;
        }

LABEL_106:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    else
    {
      v84 = _StringObject.sharedUTF8.getter(v92, v20);
      if (v85 < v91)
      {
        goto LABEL_105;
      }

      v29 = v84;
      v30 = v91;
      if (!v91)
      {
        goto LABEL_38;
      }
    }

    if (v29)
    {
      goto LABEL_38;
    }

LABEL_105:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  __src = v92;
  v94 = v20 & 0xFFFFFFFFFFFFFFLL;
  v20;
  v72 = *(v10 + 8) & 0xFFFFFFFFFFFFFFFLL;
  v73 = v72 + 32;
  v74 = (v72 + 32 + (*(v72 + 0x18) & 0xFFFFFFFFFFFFLL));
  if (&__src < &v74[v17] && v74 < &__src + v17)
  {
    goto LABEL_106;
  }

  memcpy(v74, &__src, v17);
  v75 = *(v72 + 24);
  v76 = (v75 & 0xFFFFFFFFFFFFLL) + v17;
  v77 = v75 > -1 || (v20 & 0x4000000000000000) == 0;
  v78 = v76 | 0xC000000000000000;
  if (v77)
  {
    v78 = v76;
  }

  *(v72 + 24) = v78 | 0x3000000000000000;
  *(v73 + (v78 & 0xFFFFFFFFFFFFLL)) = 0;
  v79 = *(v72 + 16);
  if (v79 < 0)
  {
    v81 = ((v73 + (v79 & 0xFFFFFFFFFFFFLL) + 7) & 0x7FFFFFFFFFFFFFF8);
    v82 = *v81;
    *v81 = 0;
    v20;
    v82;
  }

  else
  {
    v20;
  }

  *v10 = *(v72 + 24);
}

void specialized String.append<A>(contentsOf:)(uint64_t a1, unint64_t a2, unint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, int8x16_t a11)
{
  if (&full type metadata for Repeated<Character> == &full type metadata for String)
  {
    String.append(_:)(a1, a2, a4, a5, a6, a7, a8, a9, a10, a11);
    return;
  }

  if (&full type metadata for Repeated<Character> == &full type metadata for Substring)
  {
    __break(1u);
LABEL_119:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (&full type metadata for Repeated<Character> != &full type metadata for [Character])
  {
    a3;
    v13 = a2;
    if (!a1)
    {
LABEL_114:
      a3;
      return;
    }

    v14 = 0;
    v15 = HIBYTE(a3) & 0xF;
    __n = a2 & 0xFFFFFFFFFFFFLL;
    if ((a3 & 0x2000000000000000) != 0)
    {
      v16 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v16 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v17 = 8 * v15;
    v97 = HIBYTE(a3) & 0xF;
    v98 = v16;
    v92 = (v16 << 16) | 1;
    v93 = &__src + v15;
    v18 = a1 & ~(a1 >> 63);
    while (1)
    {
      if (v14 == v18)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v20 = *v11;
      v19 = *(v11 + 8);
      v21 = HIBYTE(v19) & 0xF;
      v22 = *v11 & 0xFFFFFFFFFFFFLL;
      v23 = (v19 & 0x2000000000000000) != 0 ? HIBYTE(v19) & 0xF : *v11 & 0xFFFFFFFFFFFFLL;
      if (v23 || (*&v20 & ~v19 & 0x2000000000000000) != 0)
      {
        break;
      }

      v63 = v17;
      v64 = v18;
      a3;
      v19;
      v18 = v64;
      v17 = v63;
      v65 = a1;
      v13 = a2;
      *v11 = a2;
      *(v11 + 8) = a3;
LABEL_95:
      if (++v14 == v65)
      {
        goto LABEL_114;
      }
    }

    if ((v19 & 0x2000000000000000) != 0 && (a3 & 0x2000000000000000) != 0)
    {
      v24 = v21 + v97;
      if (v21 + v97 <= 0xF)
      {
        if (v97)
        {
          v55 = v18;
          v56 = 0;
          v57 = 0;
          v58 = 8 * v21;
          v59 = *(v11 + 8);
          do
          {
            v60 = a3 >> (v56 & 0x38);
            if (v57 < 8)
            {
              v60 = v13 >> v56;
            }

            v61 = (v60 << (v58 & 0x38)) | ((-255 << (v58 & 0x38)) - 1) & v59;
            v62 = (v60 << v58) | ((-255 << v58) - 1) & *&v20;
            if (v21 <= 7)
            {
              v20 = v62;
            }

            else
            {
              v59 = v61;
            }

            ++v21;
            v58 += 8;
            v56 += 8;
            ++v57;
          }

          while (v17 != v56);
        }

        else
        {
          v55 = v18;
          v59 = *(v11 + 8);
        }

        v74 = v17;
        *(v11 + 8);
        v17 = v74;
        v13 = a2;
        v75 = 0xA000000000000000;
        if (!(*&v20 & 0x8080808080808080 | v59 & 0x80808080808080))
        {
          v75 = 0xE000000000000000;
        }

        *v11 = v20;
        *(v11 + 8) = v75 & 0xFF00000000000000 | (v24 << 56) | v59 & 0xFFFFFFFFFFFFFFLL;
        v65 = a1;
        v18 = v55;
        goto LABEL_95;
      }
    }

    v95 = v18;
    v96 = v17;
    swift_bridgeObjectRetain_n(a3, 2);
    v26 = v98;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v79._rawBits = 1;
      v80._rawBits = v92;
      v81._rawBits = _StringGuts.validateScalarRange(_:)(v79, v80, a2, a3)._rawBits;
      if (v81._rawBits < 0x10000)
      {
        v81._rawBits |= 3;
      }

      v26 = String.UTF8View.distance(from:to:)(v81, v82);
      if ((v19 & 0x1000000000000000) == 0)
      {
LABEL_24:
        v27 = __OFADD__(v23, v26);
        v28 = v23 + v26;
        if (v27)
        {
          goto LABEL_115;
        }

        goto LABEL_25;
      }
    }

    else if ((v19 & 0x1000000000000000) == 0)
    {
      goto LABEL_24;
    }

    v83 = String.UTF8View._foreignCount()();
    v28 = v83 + v26;
    if (__OFADD__(v83, v26))
    {
LABEL_115:
      __break(1u);
LABEL_116:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_25:
    if ((*&v20 & ~v19 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v19 & 0xFFFFFFFFFFFFFFFLL))
    {
      v29 = _StringGuts.nativeUnusedCapacity.getter(*&v20, v19);
      if (v30)
      {
        goto LABEL_119;
      }

      if (v28 > 15)
      {
        goto LABEL_36;
      }

      if ((v19 & 0x2000000000000000) == 0)
      {
        if (v29 < v26)
        {
          goto LABEL_31;
        }

LABEL_36:
        _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v28, v26);
        if ((a3 & 0x1000000000000000) != 0)
        {
          v13 = a2;
          _StringGuts._foreignAppendInPlace(_:)(a2, a3, 0, v98);
          swift_bridgeObjectRelease_n(a3, 2);
LABEL_94:
          v65 = a1;
          v18 = v95;
          v17 = v96;
          goto LABEL_95;
        }

        if ((a3 & 0x2000000000000000) != 0)
        {
          __src = a2;
          v102 = a3 & 0xFFFFFFFFFFFFFFLL;
          a3;
          v67 = *(v11 + 8) & 0xFFFFFFFFFFFFFFFLL;
          v68 = v67 + 32;
          v69 = (v67 + 32 + (*(v67 + 0x18) & 0xFFFFFFFFFFFFLL));
          if (&__src < &v69[v97] && v69 < v93)
          {
LABEL_117:
            _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          memcpy(v69, &__src, v97);
          v70 = *(v67 + 24);
          v71 = v70 > -1 || (a3 & 0x4000000000000000) == 0;
          v72 = (v70 & 0xFFFFFFFFFFFFLL) + v97;
          if (!v71)
          {
            v72 |= 0xC000000000000000;
          }

          *(v67 + 24) = v72 | 0x3000000000000000;
          *(v68 + (v72 & 0xFFFFFFFFFFFFLL)) = 0;
          v73 = *(v67 + 16);
          if (v73 < 0)
          {
            v76 = ((v68 + (v73 & 0xFFFFFFFFFFFFLL) + 7) & 0x7FFFFFFFFFFFFFF8);
            v77 = *v76;
            *v76 = 0;
            a3;
            v77;
          }

          else
          {
            a3;
          }

          *v11 = *(v67 + 24);
          goto LABEL_93;
        }

        v33 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if ((a2 & 0x1000000000000000) != 0)
        {
          if (!__n)
          {
LABEL_41:
            a3;
            v34 = *(v11 + 8) & 0xFFFFFFFFFFFFFFFLL;
            v35 = v34 + 32;
            v36 = (v34 + 32 + (*(v34 + 0x18) & 0xFFFFFFFFFFFFLL));
            if (&v36[__n] > v33 && v36 < &v33[__n])
            {
              goto LABEL_117;
            }

            memcpy(v36, v33, __n);
            v37 = *(v34 + 24);
            if (((v37 & a2 & 0x8000000000000000) != 0) != v27)
            {
              v38 = ((v37 & 0xFFFFFFFFFFFFLL) + __n) | 0xC000000000000000;
            }

            else
            {
              v38 = (v37 & 0xFFFFFFFFFFFFLL) + __n;
            }

            v39 = v38 | 0x3000000000000000;
            *(v34 + 24) = v38 | 0x3000000000000000;
            *(v35 + (v38 & 0xFFFFFFFFFFFFLL)) = 0;
            v40 = *(v34 + 16);
            if (v40 < 0)
            {
              v41 = ((v35 + (v40 & 0xFFFFFFFFFFFFLL) + 7) & 0x7FFFFFFFFFFFFFF8);
              v42 = *v41;
              *v41 = 0;
              v42;
              v39 = *(v34 + 24);
            }

            *v11 = v39;
            a3;
LABEL_93:
            v13 = a2;
            goto LABEL_94;
          }
        }

        else
        {
          v86 = _StringObject.sharedUTF8.getter(a2, a3);
          if (v87 < __n)
          {
            goto LABEL_116;
          }

          v33 = v86;
          if (!__n)
          {
            goto LABEL_41;
          }
        }

        if (!v33)
        {
          goto LABEL_116;
        }

        goto LABEL_41;
      }
    }

    else
    {
      if (v28 >= 16)
      {
        goto LABEL_36;
      }

      if ((v19 & 0x2000000000000000) == 0)
      {
LABEL_31:
        if ((v19 & 0x1000000000000000) != 0)
        {
          v20 = _StringGuts._foreignConvertedToSmall()(*&v20, v19);
          v32 = v78;
        }

        else
        {
          if ((*&v20 & 0x1000000000000000) != 0)
          {
            v31 = ((v19 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v31 = _StringObject.sharedUTF8.getter(*&v20, v19);
            v22 = v88;
          }

          closure #1 in _StringGuts._convertedToSmall()(v31, v22, &__src, v25);
          v20 = __src;
          v32 = v102;
        }

        goto LABEL_51;
      }
    }

    v32 = v19;
LABEL_51:
    a3;
    v91 = v14;
    if ((a3 & 0x2000000000000000) != 0)
    {
      a3;
      v44 = a2;
      v45 = a3;
    }

    else if ((a3 & 0x1000000000000000) != 0)
    {
      v44 = _StringGuts._foreignConvertedToSmall()(a2, a3);
      v45 = v89;
      a3;
    }

    else
    {
      v84 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v85 = a2 & 0xFFFFFFFFFFFFLL;
      if ((a2 & 0x1000000000000000) == 0)
      {
        v84 = _StringObject.sharedUTF8.getter(a2, a3);
      }

      closure #1 in _StringGuts._convertedToSmall()(v84, v85, &__src, v43);
      a3;
      v44 = __src;
      v45 = v102;
    }

    v46 = HIBYTE(v32) & 0xF;
    v47 = HIBYTE(v45) & 0xF;
    v90 = v47 + v46;
    if (v47 + v46 >= 0x10)
    {
      goto LABEL_119;
    }

    a3;
    if (v47)
    {
      v48 = 0;
      v49 = 0;
      v50 = 8 * v46;
      v51 = 8 * v47;
      v14 = v91;
      do
      {
        v52 = v45 >> (v48 & 0x38);
        if (v49 < 8)
        {
          v52 = v44 >> v48;
        }

        v53 = (v52 << (v50 & 0x38)) | ((-255 << (v50 & 0x38)) - 1) & v32;
        v54 = (v52 << v50) | ((-255 << v50) - 1) & *&v20;
        if (v46 <= 7)
        {
          v20 = v54;
        }

        else
        {
          v32 = v53;
        }

        ++v46;
        v50 += 8;
        v48 += 8;
        ++v49;
      }

      while (v51 != v48);
    }

    else
    {
      v14 = v91;
    }

    a3;
    v19;
    v66 = 0xA000000000000000;
    if (!(*&v20 & 0x8080808080808080 | v32 & 0x80808080808080))
    {
      v66 = 0xE000000000000000;
    }

    *v11 = v20;
    *(v11 + 8) = v66 & 0xFF00000000000000 | (v90 << 56) | v32 & 0xFFFFFFFFFFFFFFLL;
    goto LABEL_93;
  }

  specialized String.append<A>(contentsOf:)(a1);
}

void String.append<A>(contentsOf:)(unint64_t *a1, ValueMetadata *a2, uint64_t a3)
{
  v4 = v3;
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v139 = v8;
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v138 = &v130 - v11;
  Description = a2[-1].Description;
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v130 - v19;
  MEMORY[0x1EEE9AC00](v18, v21);
  v32 = (&v130 - v22);
  if (a2 == &type metadata for String)
  {
    String.append(_:)(*a1, a1[1], v24, v25, v26, v27, v28, v29, v30, v31);
    return;
  }

  if (a2 == &type metadata for Substring)
  {
    String.append(contentsOf:)(*a1, a1[1], a1[2], a1[3], v24, v25, v26, v27, v28, v29, v30, v31);
    return;
  }

  if (a2 == &unk_1EEEBBE38)
  {
    v48 = *a1;

    specialized String.append<A>(contentsOf:)(v48);
    return;
  }

  v131 = v23;
  v33 = Description[2];
  v33(&v130 - v22, a1, a2);
  if (!swift_dynamicCast(&__src, v32, a2, &type metadata for String, 6uLL, v34, v35, v36, v130))
  {
    v33(v20, a1, a2);
    if (swift_dynamicCast(&__src, v20, a2, &type metadata for Substring, 6uLL, v49, v50, v51, v130))
    {
      v45 = v142;
      String.append(contentsOf:)();
      goto LABEL_17;
    }

    v33(v16, a1, a2);
    (*(a3 + 32))(a2, a3);
    v52 = v139;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a2, v139, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v54 = *(AssociatedConformanceWitness + 16);
    v135 = AssociatedConformanceWitness + 16;
    v136 = AssociatedConformanceWitness;
    v134 = v54;
    (v54)(&__src, v52);
    v55 = v141;
    if (!v141)
    {
LABEL_122:
      (*(v131 + 8))(v138, v139);
      return;
    }

    v56 = __src;
    v137 = v4;
    while (1)
    {
      v60 = *v4;
      v59 = v4[1];
      v61 = HIBYTE(v59) & 0xF;
      v62 = *v4 & 0xFFFFFFFFFFFFLL;
      if ((v59 & 0x2000000000000000) != 0)
      {
        v63 = HIBYTE(v59) & 0xF;
      }

      else
      {
        v63 = *v4 & 0xFFFFFFFFFFFFLL;
      }

      if (!v63 && (*&v60 & ~v59 & 0x2000000000000000) == 0)
      {
        *&v4[1];
        *v4 = v56;
        v4[1] = v55;
        goto LABEL_24;
      }

      v64 = v55 & 0x2000000000000000;
      v65 = HIBYTE(v55) & 0xF;
      v66 = v61 + v65;
      if ((v55 & 0x2000000000000000 & v59) != 0 && v66 <= 0xF)
      {
        if (v65)
        {
          v88 = 0;
          v89 = 0;
          v90 = 8 * v61;
          v91 = v59;
          do
          {
            v92 = v55 >> (v88 & 0x38);
            if (v89 < 8)
            {
              v92 = *&v56 >> v88;
            }

            v93 = (v92 << (v90 & 0x38)) | ((-255 << (v90 & 0x38)) - 1) & v91;
            v94 = (v92 << v90) | ((-255 << v90) - 1) & *&v60;
            if (v61 <= 7)
            {
              v60 = v94;
            }

            else
            {
              v91 = v93;
            }

            ++v61;
            v90 += 8;
            v88 += 8;
            ++v89;
          }

          while (8 * v65 != v88);
        }

        else
        {
          v91 = v59;
        }

        v59;
        v55;
        v106 = 0xA000000000000000;
        if (!(*&v60 & 0x8080808080808080 | v91 & 0x80808080808080))
        {
          v106 = 0xE000000000000000;
        }

        v58 = v106 & 0xFF00000000000000 | (v66 << 56) | v91 & 0xFFFFFFFFFFFFFFLL;
        goto LABEL_23;
      }

      if (v64)
      {
        v68 = HIBYTE(v55) & 0xF;
      }

      else
      {
        v68 = *&v56 & 0xFFFFFFFFFFFFLL;
      }

      v132 = *&v56 & 0xFFFFFFFFFFFFLL;
      v133 = v68;
      if ((v55 & 0x1000000000000000) != 0)
      {
        swift_bridgeObjectRetain_n(v55, 2);
        v118._rawBits = 1;
        v119._rawBits = (v68 << 16) | 1;
        v120._rawBits = _StringGuts.validateScalarRange(_:)(v118, v119, *&v56, v55)._rawBits;
        if (v120._rawBits < 0x10000)
        {
          v120._rawBits |= 3;
        }

        v68 = String.UTF8View.distance(from:to:)(v120, v121);
        v55;
        if ((v59 & 0x1000000000000000) == 0)
        {
LABEL_40:
          v70 = __OFADD__(v63, v68);
          v71 = v63 + v68;
          if (v70)
          {
            goto LABEL_124;
          }

          goto LABEL_41;
        }
      }

      else
      {
        v55;
        if ((v59 & 0x1000000000000000) == 0)
        {
          goto LABEL_40;
        }
      }

      v122 = String.UTF8View._foreignCount()();
      v71 = v122 + v68;
      if (__OFADD__(v122, v68))
      {
LABEL_124:
        __break(1u);
LABEL_125:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_41:
      if ((*&v60 & ~v59 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v59 & 0xFFFFFFFFFFFFFFFLL))
      {
        v72 = _StringGuts.nativeUnusedCapacity.getter(*&v60, v59);
        if (v73)
        {
          goto LABEL_127;
        }

        if (v71 <= 15)
        {
          if ((v59 & 0x2000000000000000) != 0)
          {
            goto LABEL_76;
          }

          if (v72 < v68)
          {
            goto LABEL_47;
          }
        }
      }

      else if (v71 <= 15)
      {
        if ((v59 & 0x2000000000000000) != 0)
        {
LABEL_76:
          v75 = v59;
        }

        else
        {
LABEL_47:
          if ((v59 & 0x1000000000000000) != 0)
          {
            v60 = _StringGuts._foreignConvertedToSmall()(*&v60, v59);
            v75 = v117;
          }

          else
          {
            if ((*&v60 & 0x1000000000000000) != 0)
            {
              v74 = ((v59 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v74 = _StringObject.sharedUTF8.getter(*&v60, v59);
              v62 = v127;
            }

            closure #1 in _StringGuts._convertedToSmall()(v74, v62, &__src, v69);
            v60 = __src;
            v75 = v141;
          }
        }

        v55;
        if (v64)
        {
          v55;
          v96 = v55;
        }

        else if ((v55 & 0x1000000000000000) != 0)
        {
          v56 = _StringGuts._foreignConvertedToSmall()(*&v56, v55);
          v96 = v128;
          v55;
        }

        else
        {
          v123 = v132;
          if ((*&v56 & 0x1000000000000000) != 0)
          {
            v124 = ((v55 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v124 = _StringObject.sharedUTF8.getter(*&v56, v55);
          }

          closure #1 in _StringGuts._convertedToSmall()(v124, v123, &__src, v95);
          v55;
          v56 = __src;
          v96 = v141;
        }

        v97 = HIBYTE(v75) & 0xF;
        v98 = HIBYTE(v96) & 0xF;
        v99 = v98 + v97;
        if (v98 + v97 > 0xF)
        {
LABEL_127:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v55;
        if (v98)
        {
          v100 = 0;
          v101 = 0;
          v102 = 8 * v97;
          do
          {
            v103 = v96 >> (v100 & 0x38);
            if (v101 < 8)
            {
              v103 = *&v56 >> v100;
            }

            v104 = (v103 << (v102 & 0x38)) | ((-255 << (v102 & 0x38)) - 1) & v75;
            v105 = (v103 << v102) | ((-255 << v102) - 1) & *&v60;
            if (v97 <= 7)
            {
              v60 = v105;
            }

            else
            {
              v75 = v104;
            }

            ++v97;
            v102 += 8;
            v100 += 8;
            ++v101;
          }

          while (8 * v98 != v100);
        }

        v55;
        v59;
        v57 = 0xA000000000000000;
        if (!(*&v60 & 0x8080808080808080 | v75 & 0x80808080808080))
        {
          v57 = 0xE000000000000000;
        }

        v58 = v57 & 0xFF00000000000000 | (v99 << 56) | v75 & 0xFFFFFFFFFFFFFFLL;
LABEL_23:
        v4 = v137;
        *v137 = v60;
        v4[1] = v58;
        goto LABEL_24;
      }

      v76 = v137;
      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v71, v68);
      if ((v55 & 0x1000000000000000) != 0)
      {
        _StringGuts._foreignAppendInPlace(_:)(*&v56, v55, 0, v133);
        swift_bridgeObjectRelease_n(v55, 2);
        v4 = v76;
      }

      else if (v64)
      {
        __src = v56;
        v141 = v55 & 0xFFFFFFFFFFFFFFLL;
        v55;
        v107 = *&v137[1] & 0xFFFFFFFFFFFFFFFLL;
        v108 = v107 + 32;
        v109 = (v107 + 32 + (*(v107 + 0x18) & 0xFFFFFFFFFFFFLL));
        if (&__src < &v109[v65] && v109 < &__src + v65)
        {
LABEL_126:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        memcpy(v109, &__src, HIBYTE(v55) & 0xF);
        v110 = *(v107 + 24);
        v111 = (v110 & 0xFFFFFFFFFFFFLL) + v65;
        v112 = v110 > -1 || (v55 & 0x4000000000000000) == 0;
        v113 = v111 | 0xC000000000000000;
        if (v112)
        {
          v113 = v111;
        }

        *(v107 + 24) = v113 | 0x3000000000000000;
        *(v108 + (v113 & 0xFFFFFFFFFFFFLL)) = 0;
        v114 = *(v107 + 16);
        if (v114 < 0)
        {
          v115 = ((v108 + (v114 & 0xFFFFFFFFFFFFLL) + 7) & 0x7FFFFFFFFFFFFFF8);
          v116 = *v115;
          *v115 = 0;
          v55;
          v116;
        }

        else
        {
          v55;
        }

        v4 = v137;
        *v137 = *(v107 + 24);
      }

      else
      {
        if ((*&v56 & 0x1000000000000000) != 0)
        {
          v77 = ((v55 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v125 = _StringObject.sharedUTF8.getter(*&v56, v55);
          if (v126 < v132)
          {
            goto LABEL_125;
          }

          v77 = v125;
        }

        v4 = v137;
        v78 = v132;
        if (v132 && !v77)
        {
          goto LABEL_125;
        }

        v55;
        v79 = *&v4[1] & 0xFFFFFFFFFFFFFFFLL;
        v80 = v79 + 32;
        v81 = (v79 + 32 + (*(v79 + 0x18) & 0xFFFFFFFFFFFFLL));
        if (&v81[v78] > v77 && v81 < &v77[v78])
        {
          goto LABEL_126;
        }

        memcpy(v81, v77, v78);
        v82 = *(v79 + 24);
        v83 = (v82 & 0xFFFFFFFFFFFFLL) + v78;
        if ((v82 & *&v56) < 0 != v70)
        {
          v83 |= 0xC000000000000000;
        }

        v84 = v83 | 0x3000000000000000;
        *(v79 + 24) = v83 | 0x3000000000000000;
        *(v80 + (v83 & 0xFFFFFFFFFFFFLL)) = 0;
        v85 = *(v79 + 16);
        if (v85 < 0)
        {
          v86 = ((v80 + (v85 & 0xFFFFFFFFFFFFLL) + 7) & 0x7FFFFFFFFFFFFFF8);
          v87 = *v86;
          *v86 = 0;
          v87;
          v84 = *(v79 + 24);
        }

        *v4 = v84;
        v55;
      }

LABEL_24:
      v134(&__src, v139, v136);
      v56 = __src;
      v55 = v141;
      if (!v141)
      {
        goto LABEL_122;
      }
    }
  }

  v45 = v141;
  v46 = v4[1];
  v47 = HIBYTE(*&v46) & 0xFLL;
  if ((*&v46 & 0x2000000000000000) == 0)
  {
    v47 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v47 || (*v4 & ~*&v46 & 0x2000000000000000) != 0)
  {
    _StringGuts.append(_:)(*&__src, v141, v37, v38, v39, v40, v41, v42, v43, v44);
LABEL_17:
    v45;
    return;
  }

  v129 = __src;
  *&v4[1];
  *v4 = v129;
  v4[1] = v45;
}

unint64_t specialized _StringGuts.replaceSubrange<A>(_:with:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v11 = *v5;
  v10 = v5[1];
  if ((*v5 & ~v10 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v10 & 0xFFFFFFFFFFFFFFFLL))
  {
    if ((a4 & 0x1000000000000000) != 0)
    {
      return specialized _StringGuts.uniqueNativeReplaceSubrange<A>(_:with:)(a1, a2, a3, a4, protocol witness for ExpressibleByUnicodeScalarLiteral.init(unicodeScalarLiteral:) in conformance Unicode.Scalar, 0);
    }

    else
    {
      if ((a4 & 0x2000000000000000) != 0)
      {
        v78 = a3;
        v79 = a4 & 0xFFFFFFFFFFFFFFLL;
        v14 = a1 >> 16;
        v72 = (HIBYTE(a4) & 0xF) + (a1 >> 16);
        v73 = a2 >> 16;
        v74 = v11 & 0xFFFFFFFFFFFFLL;
        if ((v10 & 0x2000000000000000) != 0)
        {
          v74 = HIBYTE(v10) & 0xF;
        }

        _StringGuts.reserveCapacity(_:)(v72 - v73 + v74);
        v18 = v5[1] & 0xFFFFFFFFFFFFFFFLL;
        v21 = &v78;
        v19 = v14;
        v20 = v73;
        v22 = HIBYTE(a4) & 0xF;
      }

      else
      {
        if ((a3 & 0x1000000000000000) != 0)
        {
          v12 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v13 = a3 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = _StringObject.sharedUTF8.getter(a3, a4);
          v13 = v76;
        }

        v14 = a1 >> 16;
        v15 = v13 + (a1 >> 16);
        v16 = a2 >> 16;
        v17 = v11 & 0xFFFFFFFFFFFFLL;
        if ((v10 & 0x2000000000000000) != 0)
        {
          v17 = HIBYTE(v10) & 0xF;
        }

        _StringGuts.reserveCapacity(_:)(v17 - v16 + v15);
        v18 = v5[1] & 0xFFFFFFFFFFFFFFFLL;
        v19 = v14;
        v20 = v16;
        v21 = v12;
        v22 = v13;
      }

      __StringStorage.replace(from:to:with:)(v19, v20, v21, v22);
      *v5 = *(v18 + 24);
    }
  }

  else
  {
    v77 = a2;
    v78 = 0;
    v79 = 0xE000000000000000;
    v23 = _StringGuts.nativeCapacity.getter(v11, v10);
    if ((v24 & 1) == 0)
    {
      v25 = v23;
      if (v23 >= 16)
      {
        v26 = _StringGuts.uniqueNativeCapacity.getter();
        if ((v27 & 1) != 0 || v26 < v25)
        {
          _StringGuts.grow(_:)(v25);
        }
      }
    }

    v28._rawBits = a1;
    v29 = specialized Collection.subscript.getter(v28, v11, v10);
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v34;
    v36._rawBits = v29;
    v37._rawBits = v31;
    v38 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSs17UnicodeScalarViewV_s6UInt32Vs5NeverOTg506_sSS17def38V6append10contentsOfyx_tSTRzs0A0O0B0V7b7RtzlFs6G8VAHXEfU_Tf1cn_n(v36, v37, v33, v35);
    v35;
    v39 = _sSS14_fromCodeUnits_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0B4UnitQy_7ElementRtzr0_lFZSays6UInt32VG_s0H0O5UTF32OTt0t2g5();
    if (!v40 || ((v41 = v39, v42 = v40, v38, v43 = specialized static String.+ infix(_:_:)(v78, v79, v41, v42), v45 = v44, v79, v42, (v45 & 0x2000000000000000) != 0) ? (v14 = HIBYTE(v45) & 0xF) : (v14 = v43 & 0xFFFFFFFFFFFFLL), (v46 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_s6UInt32Vs5NeverOTg506_sSS17def38V6append10contentsOfyx_tSTRzs0A0O0B0V7b7RtzlFs6G8VAHXEfU_Tf1cn_n(a3, a4), v47 = _sSS14_fromCodeUnits_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0B4UnitQy_7ElementRtzr0_lFZSays6UInt32VG_s0H0O5UTF32OTt0t2g5(), !v48) || (v49 = v47, v50 = v48, v46, v51 = specialized static String.+ infix(_:_:)(v43, v45, v49, v50), v53 = v52, v45, v50, v78 = v51, v79 = v53, v54._rawBits = v77, rawBits = specialized Collection.subscript.getter(v54, v11, v10)._rawBits, v57 = v56, v59 = v58, v61 = v60, v60, v62._rawBits = rawBits, v63._rawBits = v57, v64 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSs17UnicodeScalarViewV_s6UInt32Vs5NeverOTg506_sSS17def38V6append10contentsOfyx_tSTRzs0A0O0B0V7b7RtzlFs6G8VAHXEfU_Tf1cn_n(v62, v63, v59, v61), v61, v65 = _sSS14_fromCodeUnits_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0B4UnitQy_7ElementRtzr0_lFZSays6UInt32VG_s0H0O5UTF32OTt0t2g5(), !v66)))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v67 = v65;
    v68 = v66;
    v64;
    v69 = specialized static String.+ infix(_:_:)(v51, v53, v67, v68);
    v71 = v70;
    v10;
    v53;
    v68;
    *v5 = v69;
    v5[1] = v71;
  }

  return v14;
}

unint64_t specialized _StringGuts.replaceSubrange<A>(_:with:)(unint64_t a1, unint64_t a2, int a3)
{
  v8 = *v3;
  v7 = v3[1];
  if ((*v3 & ~v7 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v7 & 0xFFFFFFFFFFFFFFFLL))
  {
    return specialized _StringGuts.uniqueNativeReplaceSubrange<A>(_:with:)(a1, a2, a3, protocol witness for ExpressibleByUnicodeScalarLiteral.init(unicodeScalarLiteral:) in conformance Unicode.Scalar, 0);
  }

  v57 = a2;
  v10 = _StringGuts.nativeCapacity.getter(v8, v7);
  if ((v11 & 1) == 0)
  {
    String.reserveCapacity(_:)(v10);
  }

  v12._rawBits = a1;
  v13 = specialized Collection.subscript.getter(v12, v8, v7);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v18;
  v20._rawBits = v13;
  v21._rawBits = v15;
  v22 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSs17UnicodeScalarViewV_s6UInt32Vs5NeverOTg506_sSS17def38V6append10contentsOfyx_tSTRzs0A0O0B0V7b7RtzlFs6G8VAHXEfU_Tf1cn_n(v20, v21, v17, v19);
  v23 = _sSS14_fromCodeUnits_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0B4UnitQy_7ElementRtzr0_lFZSays6UInt32VG_s0H0O5UTF32OTt0t2g5();
  if (!v24 || ((v25 = v23, v26 = v24, v22, v27 = specialized static String.+ infix(_:_:)(0, 0xE000000000000000, v25, v26), v29 = v28, v19, 0xE000000000000000, v26, (v29 & 0x2000000000000000) != 0) ? (v9 = HIBYTE(v29) & 0xF) : (v9 = v27 & 0xFFFFFFFFFFFFLL), (v30 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyADs5NeverOs6UInt32VIsgnrzr_xSayAIGAGSTRzAIRsd__AGRsd_0_r_0_lIetMgnozo_Tp5s15CollectionOfOneVys7UnicodeO6ScalarVG_Tg506_sSS17ij42ViewV6append10contentsOfyx_tSTRzs0A0O0B0V7b7RtzlFs6E8VAHXEfU_Tf1cn_n(a3), v31 = _sSS14_fromCodeUnits_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0B4UnitQy_7ElementRtzr0_lFZSays6UInt32VG_s0H0O5UTF32OTt0t2g5(), !v32) || (v33 = v31, v34 = v32, v30, v35 = specialized static String.+ infix(_:_:)(v27, v29, v33, v34), v37 = v36, v29, v34, v38._rawBits = v57, rawBits = specialized Collection.subscript.getter(v38, v8, v7)._rawBits, v41 = v40, v43 = v42, v45 = v44, v44, v46._rawBits = rawBits, v47._rawBits = v41, v48 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSs17UnicodeScalarViewV_s6UInt32Vs5NeverOTg506_sSS17def38V6append10contentsOfyx_tSTRzs0A0O0B0V7b7RtzlFs6G8VAHXEfU_Tf1cn_n(v46, v47, v43, v45), v49 = _sSS14_fromCodeUnits_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0B4UnitQy_7ElementRtzr0_lFZSays6UInt32VG_s0H0O5UTF32OTt0t2g5(), !v50)))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v51 = v49;
  v52 = v50;
  v48;
  v53 = specialized static String.+ infix(_:_:)(v35, v37, v51, v52);
  v55 = v54;
  v7;
  v45;
  v37;
  v52;
  *v3 = v53;
  v3[1] = v55;
  return v9;
}

uint64_t _StringGuts.replaceSubrange<A>(_:with:)(Swift::UInt64 a1, unint64_t a2, uint64_t a3, Class *a4, uint64_t a5)
{
  v209 = a2;
  v210 = a3;
  v207 = a5;
  v8 = *(a5 + 8);
  v9 = type metadata accessor for LazySequence(0, a4, v8, a4);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v203 = &v202 - v11;
  v12 = type metadata accessor for LazyMapSequence(255, a4, &type metadata for Unicode.Scalar.UTF8View, v8);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for LazyMapSequence<A, B>, v12, v13);
  v17 = lazy protocol witness table accessor for type Unicode.Scalar.UTF8View and conformance Unicode.Scalar.UTF8View(WitnessTable, v15, v16);
  v18 = type metadata accessor for FlattenSequence(255, v12, WitnessTable, v17);
  v20 = swift_getWitnessTable(protocol conformance descriptor for FlattenSequence<A>, v18, v19);
  v22 = type metadata accessor for LazySequence(0, v18, v20, v21);
  v205 = *(v22 - 1);
  v206 = v22;
  v24 = MEMORY[0x1EEE9AC00](v22, v23);
  v204 = &v202 - v25;
  v208 = *(a4 - 1);
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v29 = (&v202 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v27, v30);
  v32 = (&v202 - v31);
  v34 = *v5;
  v33 = v5[1];
  v211 = v5;
  if ((v34 & ~v33 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v33 & 0xFFFFFFFFFFFFFFFLL))
  {
    v202 = a1;
    v35 = *(v208 + 16);
    v36 = v210;
    (v35)(v32, v210, a4);
    if (swift_dynamicCast(&__src, v32, a4, &type metadata for String.UnicodeScalarView, 6uLL, v37, v38, v39, v202))
    {
      v40 = v218;
      if ((v218 & 0x1000000000000000) == 0)
      {
        if ((v218 & 0x2000000000000000) == 0)
        {
          v41 = v202;
          if ((__src & 0x1000000000000000) != 0)
          {
            v35 = ((v218 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v12 = __src & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v35 = _StringObject.sharedUTF8.getter(__src, v218);
            v12 = v200;
          }

          v42 = v41 >> 16;
          v43 = v209 >> 16;
          v44 = v34 & 0xFFFFFFFFFFFFLL;
          if ((v33 & 0x2000000000000000) != 0)
          {
            v44 = HIBYTE(v33) & 0xF;
          }

          v45 = v12 + (v41 >> 16) + v44 - v43;
          v34 = v211;
          if (v45 < 16)
          {
            goto LABEL_93;
          }

          v46 = _StringGuts.uniqueNativeCapacity.getter();
          if ((v47 & 1) == 0 && v46 >= v45)
          {
            goto LABEL_93;
          }

          v48 = _StringGuts.uniqueNativeCapacity.getter();
          if (v49)
          {
            v50 = *(v34 + 8);
            if ((v50 & 0x1000000000000000) != 0)
            {
              v51 = String.UTF8View._foreignCount()();
            }

            else if ((v50 & 0x2000000000000000) != 0)
            {
              v51 = HIBYTE(v50) & 0xF;
            }

            else
            {
              v51 = *v34 & 0xFFFFFFFFFFFFLL;
            }
          }

          else
          {
            v51 = 2 * v48;
          }

          if (v51 <= v45)
          {
            v106 = v45;
          }

          else
          {
            v106 = v51;
          }

          v152 = *(v34 + 8);
          if ((v152 & 0x1000000000000000) == 0)
          {
            v153 = *v34;
            if ((v152 & 0x2000000000000000) != 0)
            {
              __src = *v34;
              v218 = v152 & 0xFFFFFFFFFFFFFFLL;
              v163 = HIBYTE(v152) & 0xF | 0xC000000000000000;
              if ((v152 & 0x4000000000000000) == 0)
              {
                v163 = HIBYTE(v152) & 0xF;
              }

              v164 = v163 | 0x3000000000000000;
              v156 = _allocateStringStorage(codeUnitCapacity:)(v106);
              *(v156 + 16) = v165;
              *(v156 + 24) = v164;
              if (v165 < 0)
              {
                *__StringStorage._breadcrumbsAddress.getter() = 0;
                v164 = *(v156 + 24);
              }

              *(v156 + 32 + (v164 & 0xFFFFFFFFFFFFLL)) = 0;
              specialized UnsafeMutablePointer.initialize(from:count:)(&__src, HIBYTE(v152) & 0xF, (v156 + 32));
            }

            else
            {
              if ((v153 & 0x1000000000000000) != 0)
              {
                v154 = ((v152 & 0xFFFFFFFFFFFFFFFLL) + 32);
                v155 = v153 & 0xFFFFFFFFFFFFLL;
              }

              else
              {
                v154 = _StringObject.sharedUTF8.getter(*v34, *(v34 + 8));
              }

              v156 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v154, v155, v106, v153 < 0);
            }

            v166 = *(v156 + 24);
            v152;
            v167 = v211;
            *v211 = v166;
            v167[1] = v156;
            v34 = v167;
            goto LABEL_93;
          }

LABEL_142:
          _StringGuts._foreignGrow(_:)(v106);
LABEL_93:
          v168 = *(v34 + 8) & 0xFFFFFFFFFFFFFFFLL;
          v169 = v42;
          v170 = v43;
          v171 = v35;
          v172 = v12;
LABEL_134:
          __StringStorage.replace(from:to:with:)(v169, v170, v171, v172);
          *v34 = *(v168 + 24);
          v40;
          return v42;
        }

        v133 = HIBYTE(v218) & 0xF;
        v218 &= 0xFFFFFFFFFFFFFFuLL;
        v42 = v202 >> 16;
        v134 = v209 >> 16;
        v135 = v34 & 0xFFFFFFFFFFFFLL;
        if ((v33 & 0x2000000000000000) != 0)
        {
          v135 = HIBYTE(v33) & 0xF;
        }

        v136 = v133 + (v202 >> 16) + v135 - v134;
        v137 = v211;
        if (v136 > 15)
        {
          v138 = _StringGuts.uniqueNativeCapacity.getter();
          if ((v139 & 1) != 0 || v138 < v136)
          {
            v140 = _StringGuts.uniqueNativeCapacity.getter();
            if (v141)
            {
              v142 = v137[1];
              if ((v142 & 0x1000000000000000) != 0)
              {
                v143 = String.UTF8View._foreignCount()();
              }

              else if ((v142 & 0x2000000000000000) != 0)
              {
                v143 = HIBYTE(v142) & 0xF;
              }

              else
              {
                v143 = *v137 & 0xFFFFFFFFFFFFLL;
              }
            }

            else
            {
              v143 = 2 * v140;
            }

            if (v143 <= v136)
            {
              v157 = v136;
            }

            else
            {
              v157 = v143;
            }

            v158 = v137[1];
            if ((v158 & 0x1000000000000000) != 0)
            {
              _StringGuts._foreignGrow(_:)(v157);
            }

            else
            {
              v159 = *v137;
              if ((v158 & 0x2000000000000000) != 0)
              {
                v212 = v159;
                v213 = v158 & 0xFFFFFFFFFFFFFFLL;
                v173 = HIBYTE(v158) & 0xF | 0xC000000000000000;
                if ((v158 & 0x4000000000000000) == 0)
                {
                  v173 = HIBYTE(v158) & 0xF;
                }

                v174 = v173 | 0x3000000000000000;
                v162 = _allocateStringStorage(codeUnitCapacity:)(v157);
                *(v162 + 16) = v175;
                *(v162 + 24) = v174;
                if (v175 < 0)
                {
                  *__StringStorage._breadcrumbsAddress.getter() = 0;
                  v174 = *(v162 + 24);
                }

                *(v162 + 32 + (v174 & 0xFFFFFFFFFFFFLL)) = 0;
                specialized UnsafeMutablePointer.initialize(from:count:)(&v212, HIBYTE(v158) & 0xF, (v162 + 32));
              }

              else
              {
                if ((v159 & 0x1000000000000000) != 0)
                {
                  v160 = ((v158 & 0xFFFFFFFFFFFFFFFLL) + 32);
                  v161 = v159 & 0xFFFFFFFFFFFFLL;
                }

                else
                {
                  v160 = _StringObject.sharedUTF8.getter(v159, v158);
                }

                v162 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v160, v161, v157, v159 < 0);
              }

              v176 = *(v162 + 24);
              v158;
              v137 = v211;
              *v211 = v176;
              v137[1] = v162;
            }
          }
        }

        v177 = v137[1] & 0xFFFFFFFFFFFFFFFLL;
        p_src = &__src;
        goto LABEL_126;
      }

      goto LABEL_135;
    }

    (v35)(v29, v36, a4);
    if ((swift_dynamicCast(&__src, v29, a4, &type metadata for Substring.UnicodeScalarView, 6uLL, v101, v102, v103, v202) & 1) == 0)
    {
      v123 = v36;
LABEL_46:
      v124 = v203;
      (v35)(v203, v123, a4);
      v125 = v204;
      (*(v208 + 32))(v204, v124, a4);
      v126 = &v125[*(v12 + 44)];
      *v126 = protocol witness for ExpressibleByUnicodeScalarLiteral.init(unicodeScalarLiteral:) in conformance Unicode.Scalar;
      *(v126 + 1) = 0;
      v216 = v207;
      v127 = swift_getWitnessTable(protocol conformance descriptor for <> LazyMapSequence<A, B>, v12, &v216);
      v130 = lazy protocol witness table accessor for type Unicode.Scalar.UTF8View and conformance Unicode.Scalar.UTF8View(v127, v128, v129);
      v215[0] = v127;
      v215[1] = v130;
      v214 = swift_getWitnessTable(protocol conformance descriptor for <> FlattenSequence<A>, v18, v215);
      v131 = v206;
      v132 = swift_getWitnessTable(protocol conformance descriptor for <> LazySequence<A>, v206, &v214);
      v42 = _StringGuts.uniqueNativeReplaceSubrange<A>(_:with:)(v202, v209, v125, v131, v132);
      (*(v205 + 8))(v125, v131);
      return v42;
    }

    v40 = v220;
    if ((v220 & 0x1000000000000000) != 0)
    {
LABEL_135:
      v40;
      v123 = v210;
      goto LABEL_46;
    }

    v104 = __src >> 16;
    v105 = v218 >> 16;
    if ((v220 & 0x2000000000000000) != 0)
    {
      __src = v219;
      v218 = v220 & 0xFFFFFFFFFFFFFFLL;
      if ((HIBYTE(v220) & 0xF) >= v105)
      {
        v133 = v105 - v104;
        if ((v105 - v104) >= 0)
        {
          v42 = v202 >> 16;
          v134 = v209 >> 16;
          v144 = v34 & 0xFFFFFFFFFFFFLL;
          if ((v33 & 0x2000000000000000) != 0)
          {
            v144 = HIBYTE(v33) & 0xF;
          }

          v145 = v133 + (v202 >> 16) + v144 - v134;
          v137 = v211;
          if (v145 >= 16)
          {
            v146 = _StringGuts.uniqueNativeCapacity.getter();
            if ((v147 & 1) != 0 || v146 < v145)
            {
              v148 = _StringGuts.uniqueNativeCapacity.getter();
              if (v149)
              {
                v150 = v137[1];
                if ((v150 & 0x1000000000000000) != 0)
                {
                  v151 = String.UTF8View._foreignCount()();
                }

                else if ((v150 & 0x2000000000000000) != 0)
                {
                  v151 = HIBYTE(v150) & 0xF;
                }

                else
                {
                  v151 = *v137 & 0xFFFFFFFFFFFFLL;
                }
              }

              else
              {
                v151 = 2 * v148;
              }

              if (v151 <= v145)
              {
                v179 = v145;
              }

              else
              {
                v179 = v151;
              }

              v180 = v137[1];
              if ((v180 & 0x1000000000000000) != 0)
              {
                _StringGuts._foreignGrow(_:)(v179);
              }

              else
              {
                v181 = *v137;
                if ((v180 & 0x2000000000000000) != 0)
                {
                  v212 = v181;
                  v213 = v180 & 0xFFFFFFFFFFFFFFLL;
                  v191 = HIBYTE(v180) & 0xF | 0xC000000000000000;
                  if ((v180 & 0x4000000000000000) == 0)
                  {
                    v191 = HIBYTE(v180) & 0xF;
                  }

                  v192 = v191 | 0x3000000000000000;
                  v184 = _allocateStringStorage(codeUnitCapacity:)(v179);
                  *(v184 + 16) = v193;
                  *(v184 + 24) = v192;
                  if (v193 < 0)
                  {
                    *__StringStorage._breadcrumbsAddress.getter() = 0;
                    v192 = *(v184 + 24);
                  }

                  *(v184 + 32 + (v192 & 0xFFFFFFFFFFFFLL)) = 0;
                  specialized UnsafeMutablePointer.initialize(from:count:)(&v212, HIBYTE(v180) & 0xF, (v184 + 32));
                }

                else
                {
                  if ((v181 & 0x1000000000000000) != 0)
                  {
                    v182 = ((v180 & 0xFFFFFFFFFFFFFFFLL) + 32);
                    v183 = v181 & 0xFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v182 = _StringObject.sharedUTF8.getter(v181, v180);
                  }

                  v184 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v182, v183, v179, v181 < 0);
                }

                v194 = *(v184 + 24);
                v180;
                v137 = v211;
                *v211 = v194;
                v137[1] = v184;
              }
            }
          }

          v177 = v137[1] & 0xFFFFFFFFFFFFFFFLL;
          p_src = &__src + v104;
LABEL_126:
          __StringStorage.replace(from:to:with:)(v42, v134, p_src, v133);
          v40;
          *v137 = *(v177 + 24);
          return v42;
        }
      }
    }

    else
    {
      v106 = v202;
      if ((v219 & 0x1000000000000000) != 0)
      {
        v107 = ((v220 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v108 = v219 & 0xFFFFFFFFFFFFLL;
        if ((v219 & 0xFFFFFFFFFFFFLL) < v105)
        {
          goto LABEL_140;
        }
      }

      else
      {
        v12 = v218 >> 16;
        v107 = _StringObject.sharedUTF8.getter(v219, v220);
        v108 = v201;
        v105 = v12;
        if (v108 < v12)
        {
          goto LABEL_140;
        }
      }

      v109 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v104, v105, v107, v108);
      v42 = v106 >> 16;
      v111 = (v106 >> 16) + v110;
      if (!__OFADD__(v106 >> 16, v110))
      {
        v43 = v209 >> 16;
        v112 = v34 & 0xFFFFFFFFFFFFLL;
        if ((v33 & 0x2000000000000000) != 0)
        {
          v112 = HIBYTE(v33) & 0xF;
        }

        v113 = v112 - v43;
        v114 = v111 + v113;
        if (!__OFADD__(v111, v113))
        {
          v115 = v109;
          v116 = v110;
          v34 = v211;
          if (v114 >= 16)
          {
            v117 = _StringGuts.uniqueNativeCapacity.getter();
            if ((v118 & 1) != 0 || v117 < v114)
            {
              v119 = _StringGuts.uniqueNativeCapacity.getter();
              if (v120)
              {
                v121 = *(v34 + 8);
                if ((v121 & 0x1000000000000000) != 0)
                {
                  v122 = String.UTF8View._foreignCount()();
                }

                else if ((v121 & 0x2000000000000000) != 0)
                {
                  v122 = HIBYTE(v121) & 0xF;
                }

                else
                {
                  v122 = *v34 & 0xFFFFFFFFFFFFLL;
                }
              }

              else
              {
                v122 = 2 * v119;
              }

              if (v122 <= v114)
              {
                v185 = v114;
              }

              else
              {
                v185 = v122;
              }

              v186 = *(v34 + 8);
              if ((v186 & 0x1000000000000000) != 0)
              {
                _StringGuts._foreignGrow(_:)(v185);
              }

              else
              {
                v187 = *v34;
                if ((v186 & 0x2000000000000000) != 0)
                {
                  __src = *v34;
                  v218 = v186 & 0xFFFFFFFFFFFFFFLL;
                  v195 = HIBYTE(v186) & 0xF | 0xC000000000000000;
                  if ((v186 & 0x4000000000000000) == 0)
                  {
                    v195 = HIBYTE(v186) & 0xF;
                  }

                  v196 = v195 | 0x3000000000000000;
                  v190 = _allocateStringStorage(codeUnitCapacity:)(v185);
                  *(v190 + 16) = v197;
                  *(v190 + 24) = v196;
                  if (v197 < 0)
                  {
                    *__StringStorage._breadcrumbsAddress.getter() = 0;
                    v196 = *(v190 + 24);
                  }

                  *(v190 + 32 + (v196 & 0xFFFFFFFFFFFFLL)) = 0;
                  specialized UnsafeMutablePointer.initialize(from:count:)(&__src, HIBYTE(v186) & 0xF, (v190 + 32));
                }

                else
                {
                  if ((v187 & 0x1000000000000000) != 0)
                  {
                    v188 = ((v186 & 0xFFFFFFFFFFFFFFFLL) + 32);
                    v189 = v187 & 0xFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v188 = _StringObject.sharedUTF8.getter(*v34, *(v34 + 8));
                  }

                  v190 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v188, v189, v185, v187 < 0);
                }

                v198 = *(v190 + 24);
                v186;
                v199 = v211;
                *v211 = v198;
                v199[1] = v190;
                v34 = v199;
              }
            }
          }

          v168 = *(v34 + 8) & 0xFFFFFFFFFFFFFFFLL;
          v169 = v42;
          v170 = v43;
          v171 = v115;
          v172 = v116;
          goto LABEL_134;
        }

        __break(1u);
        goto LABEL_142;
      }

      __break(1u);
    }

LABEL_140:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  __src = 0;
  v218 = 0xE000000000000000;
  v52 = _StringGuts.nativeCapacity.getter(v34, v33);
  if ((v53 & 1) == 0)
  {
    String.reserveCapacity(_:)(v52);
  }

  v54._rawBits = a1;
  v55 = specialized Collection.subscript.getter(v54, v34, v33);
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v60;
  v62._rawBits = v55;
  v63._rawBits = v57;
  v64 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSs17UnicodeScalarViewV_s6UInt32Vs5NeverOTg506_sSS17def38V6append10contentsOfyx_tSTRzs0A0O0B0V7b7RtzlFs6G8VAHXEfU_Tf1cn_n(v62, v63, v59, v61);
  v65 = _sSS14_fromCodeUnits_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0B4UnitQy_7ElementRtzr0_lFZSays6UInt32VG_s0H0O5UTF32OTt0t2g5();
  if (!v66 || ((v67 = v65, v68 = v66, v64, v69 = v218, v70 = specialized static String.+ infix(_:_:)(__src, v218, v67, v68), v72 = v71, v61, v69, v68, (v72 & 0x2000000000000000) != 0) ? (v42 = HIBYTE(v72) & 0xF) : (v42 = v70 & 0xFFFFFFFFFFFFLL), (v73 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyADs5NeverOs6UInt32VIsgnrzr_xSayAIGAGSTRzAIRsd__AGRsd_0_r_0_lIetMgnozo_Tp5(protocol witness for ExpressibleByUnicodeScalarLiteral.init(unicodeScalarLiteral:) in conformance Unicode.Scalar, 0, a4, v8), v74 = _sSS14_fromCodeUnits_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0B4UnitQy_7ElementRtzr0_lFZSays6UInt32VG_s0H0O5UTF32OTt0t2g5(), !v75) || (v76 = v74, v77 = v75, v73, v78 = specialized static String.+ infix(_:_:)(v70, v72, v76, v77), v80 = v79, v72, v77, __src = v78, v218 = v80, v81._rawBits = v209, rawBits = specialized Collection.subscript.getter(v81, v34, v33)._rawBits, v84 = v83, v86 = v85, v88 = v87, v87, v89._rawBits = rawBits, v90._rawBits = v84, v91 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSs17UnicodeScalarViewV_s6UInt32Vs5NeverOTg506_sSS17def38V6append10contentsOfyx_tSTRzs0A0O0B0V7b7RtzlFs6G8VAHXEfU_Tf1cn_n(v89, v90, v86, v88), v92 = _sSS14_fromCodeUnits_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0B4UnitQy_7ElementRtzr0_lFZSays6UInt32VG_s0H0O5UTF32OTt0t2g5(), !v93)))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v94 = v92;
  v95 = v93;
  v91;
  v96 = specialized static String.+ infix(_:_:)(v78, v80, v94, v95);
  v98 = v97;
  v33;
  v88;
  v80;
  v95;
  v99 = v211;
  *v211 = v96;
  v99[1] = v98;
  return v42;
}

void __StringStorage.replace(from:to:with:)(uint64_t a1, uint64_t a2, char *a3, size_t a4)
{
  v8 = (v4 + 32 + a1);
  v9 = (*(v4 + 24) & 0xFFFFFFFFFFFFLL) - a2;
  specialized UnsafeMutablePointer.moveInitialize(from:count:)((v4 + 32 + a2), v9, &v8[a4]);
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a3, a4, v8);
  if ((*(v4 + 24) & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = a1 + a4;
    if (!__OFADD__(a1, a4))
    {
      goto LABEL_3;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = _allASCII(_:)(a3, a4);
  v11 = a1 + a4;
  if (__OFADD__(a1, a4))
  {
    goto LABEL_9;
  }

LABEL_3:
  v12 = __OFADD__(v11, v9);
  v13 = v11 + v9;
  if (v12)
  {
LABEL_10:
    __break(1u);
    return;
  }

  __StringStorage._updateCountAndFlags(newCount:newIsASCII:)(v13, v10);
}

void specialized __StringStorage.replace<A>(from:to:with:replacementCount:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void *__return_ptr, void), uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v34 = v8 + 32 + a1;
  v30 = (*(v8 + 24) & 0xFFFFFFFFFFFFLL) - a2;
  specialized UnsafeMutablePointer.moveInitialize(from:count:)((v8 + 32 + a2), v30, (v34 + a7));
  v13 = *(v8 + 24);
  if ((a4 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v14 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v15 = v13 >> 63;
  v16 = a4 & 0xFFFFFFFFFFFFFFLL;
  a4;
  a6;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 1;
  v33 = a5;
LABEL_5:
  v35 = v19;
  while (1)
  {
    if ((v21 & 1) == 0)
    {
      if (v17 > 0x7F)
      {
        if (v17 >= 0x800)
        {
          if (v17 >> 16)
          {
            if (v18 != 4)
            {
LABEL_41:
              if ((v18 & 0x8000000000000000) != 0)
              {
                goto LABEL_46;
              }

              if (v17 >> 16)
              {
                if (v18 >= 4)
                {
                  goto LABEL_46;
                }
              }

              else if (v18 >= 3)
              {
LABEL_46:
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
              }

LABEL_36:
              v28 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v17, v18);
              v18 = specialized RandomAccessCollection<>.index(after:)(v18, v17);
              v21 = 0;
              LOBYTE(v15) = (v28 >= 0) & v15;
              *(v34 + v35) = v28;
              v16 = a4 & 0xFFFFFFFFFFFFFFLL;
              a5 = v33;
              v19 = v35 + 1;
              if (!__OFADD__(v35, 1))
              {
                goto LABEL_5;
              }

              __break(1u);
LABEL_52:
              __break(1u);
LABEL_53:
              __break(1u);
              return;
            }
          }

          else if (v18 != 3)
          {
            goto LABEL_41;
          }
        }

        else if (v18 != 2)
        {
          if (v18 >= 2)
          {
            goto LABEL_46;
          }

          goto LABEL_36;
        }
      }

      else if (v18 != 1)
      {
        if (v18)
        {
          goto LABEL_46;
        }

        goto LABEL_36;
      }
    }

    if (v20 >= v14)
    {
      break;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      v27 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v20 << 16));
      scalarLength = v27.scalarLength;
      value = v27._0._value;
    }

    else
    {
      if ((a4 & 0x2000000000000000) != 0)
      {
        v36[0] = a3;
        v36[1] = v16;
        v24 = v36 + v20;
      }

      else
      {
        v23 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if ((a3 & 0x1000000000000000) == 0)
        {
          v23 = _StringObject.sharedUTF8.getter(a3, a4);
        }

        v24 = &v23[v20];
      }

      value = *v24;
      if ((*v24 & 0x80000000) == 0)
      {
LABEL_6:
        scalarLength = 1;
        goto LABEL_7;
      }

      v26 = (__clz(value ^ 0xFF) - 24);
      if (v26 > 2)
      {
        if (v26 == 3)
        {
          value = ((value & 0xF) << 12) | ((v24[1] & 0x3F) << 6) | v24[2] & 0x3F;
          scalarLength = 3;
        }

        else
        {
          value = ((value & 0xF) << 18) | ((v24[1] & 0x3F) << 12) | ((v24[2] & 0x3F) << 6) | v24[3] & 0x3F;
          scalarLength = 4;
        }
      }

      else
      {
        if (v26 == 1)
        {
          goto LABEL_6;
        }

        value = v24[1] & 0x3F | ((value & 0x1F) << 6);
        scalarLength = 2;
      }
    }

LABEL_7:
    v20 += scalarLength;
    v37 = value;
    a5(v36, &v37);
    v21 = 0;
    v18 = 0;
    v17 = LODWORD(v36[0]);
  }

  a6;
  a4;
  v29 = a1 + a7;
  if (__OFADD__(a1, a7))
  {
    goto LABEL_52;
  }

  if (__OFADD__(v29, v30))
  {
    goto LABEL_53;
  }

  __StringStorage._updateCountAndFlags(newCount:newIsASCII:)(v29 + v30, v15 & 1);
}

void specialized __StringStorage.replace<A>(from:to:with:replacementCount:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v5 = v4;
  v9 = (*(v5 + 24) & 0xFFFFFFFFFFFFLL) - a2;
  specialized UnsafeMutablePointer.moveInitialize(from:count:)((v5 + 32 + a2), v9, (v5 + 32 + a1 + a4));
  v10 = *(v5 + 24) >> 63;
  v12 = *(a3 + 2);
  v11 = *(a3 + 3);
  v13 = *(a3 + 4);
  v14 = *(a3 + 5);
  v20 = *a3;
  *&v21 = v12;
  *(&v21 + 1) = v11;
  *&v22 = v20;
  *(&v22 + 1) = v13;
  v23 = v14;
  v24 = 0uLL;
  v11;
  v14;
  v15 = 0;
  while (1)
  {
    v16 = specialized FlattenSequence.Iterator.next()();
    if ((v16 & 0x100) != 0)
    {
      break;
    }

    LOBYTE(v10) = ((v16 & 0x80u) == 0) & v10;
    *(v5 + a1 + v15 + 32) = v16;
    if (__OFADD__(v15++, 1))
    {
      __break(1u);
      break;
    }
  }

  v19[2] = v22;
  v19[3] = v23;
  v19[4] = v24;
  v19[0] = v20;
  v19[1] = v21;
  outlined destroy of _HasContiguousBytes?(v19, &_ss15FlattenSequenceV8IteratorVys07LazyMapB0VySsSS8UTF8ViewVG_GMd, _ss15FlattenSequenceV8IteratorVys07LazyMapB0VySsSS8UTF8ViewVG_GMR);
  v18 = a1 + a4;
  if (__OFADD__(a1, a4))
  {
    __break(1u);
  }

  else if (!__OFADD__(v18, v9))
  {
    __StringStorage._updateCountAndFlags(newCount:newIsASCII:)(v18 + v9, v10 & 1);
    return;
  }

  __break(1u);
}

uint64_t _StringGuts.mutateSubrangeInSubstring(subrange:startIndex:endIndex:with:)(Swift::UInt64 a1, Swift::UInt64 a2, Swift::UInt64 *a3, Swift::UInt64 *a4, uint64_t (*a5)(uint64_t *))
{
  v7 = v5;
  v12 = v5[1];
  if ((v12 & 0x1000000000000000) != 0)
  {
    v6 = *v5;
    if ((*v5 & 0x800000000000000) == 0)
    {
LABEL_35:
      v28._rawBits = *a3;
      v29 = *a3 & 0xC;
      v30 = *a3;
      v48 = a5;
      if (v29 == 4)
      {
        goto LABEL_75;
      }

      while (1)
      {
        v31 = HIBYTE(v12) & 0xF;
        if ((v12 & 0x2000000000000000) == 0)
        {
          v31 = v6 & 0xFFFFFFFFFFFFLL;
        }

        v50 = v31;
        if (v31 < v30 >> 16)
        {
LABEL_79:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        startingAt = String.UTF8View._foreignDistance(from:to:)(15, v30);
        rawBits = *a4;
        if (v29 == 4)
        {
          v33 = *a4;
          v34._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v28)._rawBits;
          rawBits = v33;
          v28._rawBits = v34._rawBits;
        }

        if ((rawBits & 0xC) == 4)
        {
          rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
          if (v50 < v28._rawBits >> 16)
          {
            goto LABEL_79;
          }
        }

        else if (v50 < v28._rawBits >> 16)
        {
          goto LABEL_79;
        }

        if (v50 < rawBits >> 16)
        {
          goto LABEL_79;
        }

        v28._rawBits = String.UTF8View._foreignDistance(from:to:)(v28, rawBits);
        if ((a1 & 0xC) == 4)
        {
          a1 = _StringGuts._slowEnsureMatchingEncoding(_:)(a1)._rawBits;
        }

        if ((a2 & 0xC) == 4)
        {
          a2 = _StringGuts._slowEnsureMatchingEncoding(_:)(a2)._rawBits;
          if (v50 < a1 >> 16)
          {
            goto LABEL_79;
          }
        }

        else if (v50 < a1 >> 16)
        {
          goto LABEL_79;
        }

        if (v50 < a2 >> 16)
        {
          goto LABEL_79;
        }

        v29 = String.UTF8View._foreignDistance(from:to:)(a1, a2);
        v35 = v48(v7);
        v37 = v36 - v35;
        if (__OFSUB__(v36, v35))
        {
          break;
        }

        v38 = __OFADD__(v28._rawBits, v37);
        v39 = v28._rawBits + v37;
        if (v38)
        {
          goto LABEL_82;
        }

        v38 = __OFSUB__(v39, v29);
        v29 = v39 - v29;
        if (v38)
        {
          goto LABEL_83;
        }

        if (v35 == v36)
        {
          v40 = 0;
          v41 = startingAt << 16;
LABEL_69:
          v41 |= v40 << 8;
          goto LABEL_70;
        }

        v43 = *v7;
        v44 = v7[1];
        if ((v44 & 0x1000000000000000) == 0)
        {
          if ((v44 & 0x2000000000000000) != 0)
          {
            v51 = *v7;
            v52 = v44 & 0xFFFFFFFFFFFFFFLL;
            if (startingAt + 1 == (HIBYTE(v44) & 0xF))
            {
              goto LABEL_68;
            }

            v47 = *(&v51 + startingAt);
          }

          else
          {
            if ((v43 & 0x1000000000000000) != 0)
            {
              v45 = ((v44 & 0xFFFFFFFFFFFFFFFLL) + 32);
              v46 = v43 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v45 = _StringObject.sharedUTF8.getter(*v7, v7[1]);
            }

            if (startingAt + 1 == v46)
            {
LABEL_68:
              v41 = startingAt << 16;
              v40 = 1;
              goto LABEL_69;
            }

            if (!v45)
            {
              goto LABEL_80;
            }

            v47 = *&v45[startingAt];
          }

          if (v47 != 2573 && (v47 & 0x80808080) == 0)
          {
            goto LABEL_68;
          }
        }

LABEL_84:
        a1 = startingAt;
        v40 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(startingAt);
        v41 = startingAt << 16;
        if (v40 <= 63)
        {
          goto LABEL_69;
        }

LABEL_70:
        *a3 = v41 | 5;
        result = _StringGuts.isOnGraphemeClusterBoundary(_:)((v41 | 5));
        if (result)
        {
          *a3 = v41 | 7;
        }

        a2 = startingAt + v29;
        if (!__OFADD__(startingAt, v29))
        {
          goto LABEL_32;
        }

        __break(1u);
LABEL_75:
        v30 = _StringGuts._slowEnsureMatchingEncoding(_:)(v28)._rawBits;
      }

      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }
  }

  result = a5(v5);
  if (__OFSUB__(v14, result))
  {
    __break(1u);
    goto LABEL_35;
  }

  v15 = a1 >> 16;
  v16 = *a3;
  v17 = *a3 >> 16;
  v18 = v14 - result + (a1 >> 16) - (a2 >> 16);
  a2 = v18 + (*a4 >> 16);
  v19 = (*a3 >> 8) & 0x3F;
  if (v19)
  {
    if (v19 + v17 < v15)
    {
      goto LABEL_31;
    }
  }

  else if (v17 < v15)
  {
    goto LABEL_31;
  }

  if (v17 == a2)
  {
    result = 0;
    v20 = v16 & 0xFFFFFFFFFFFF0000;
LABEL_25:
    v20 |= result << 8;
    goto LABEL_26;
  }

  v21 = *v7;
  v22 = v7[1];
  if ((v22 & 0x1000000000000000) == 0)
  {
    if ((v22 & 0x2000000000000000) != 0)
    {
      v51 = *v7;
      v52 = v22 & 0xFFFFFFFFFFFFFFLL;
      if (v17 + 1 == (HIBYTE(v22) & 0xF))
      {
        goto LABEL_24;
      }

      v25 = *(&v51 + v17);
    }

    else
    {
      if ((v21 & 0x1000000000000000) != 0)
      {
        v23 = ((v22 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v24 = v21 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = _StringObject.sharedUTF8.getter(*v7, v7[1]);
        v24 = v42;
      }

      if (v17 + 1 == v24)
      {
        goto LABEL_24;
      }

      if (!v23)
      {
LABEL_80:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v25 = *&v23[v17];
    }

    if (v25 == 2573 || (v25 & 0x8080) != 0)
    {
      goto LABEL_54;
    }

LABEL_24:
    v20 = v16 & 0xFFFFFFFFFFFF0000;
    result = 1;
    goto LABEL_25;
  }

LABEL_54:
  result = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v17);
  v20 = v16 & 0xFFFFFFFFFFFF0000;
  if (result <= 63)
  {
    goto LABEL_25;
  }

LABEL_26:
  v27 = v20 | 5;
  if ((v16 & 2) != 0)
  {
    if (v17 < v15 || (result = _StringGuts.isOnGraphemeClusterBoundary(_:)((v20 | 5)), (result & 1) != 0))
    {
      v27 = v20 | 7;
    }
  }

  *a3 = v27;
LABEL_31:
  if (v18)
  {
LABEL_32:
    *a4 = (a2 << 16) | 5;
  }

  return result;
}

Swift::Int __swiftcall String.UTF8View.distance(from:to:)(Swift::String::Index from, Swift::String::Index to)
{
  v4 = v2;
  v5 = (v2 >> 59) & 1;
  if ((v3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  v6 = 4 << v5;
  if ((from._rawBits & 0xC) == 4 << v5)
  {
    rawBits = to._rawBits;
    v9 = v3;
    from._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(from)._rawBits;
    to._rawBits = rawBits;
    v3 = v9;
  }

  if ((to._rawBits & 0xC) == v6)
  {
    v10 = from._rawBits;
    v11 = v3;
    v12._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(to)._rawBits;
    v3 = v11;
    to._rawBits = v12._rawBits;
    from._rawBits = v10;
    if ((v11 & 0x1000000000000000) == 0)
    {
      return (to._rawBits >> 16) - (from._rawBits >> 16);
    }
  }

  else if ((v3 & 0x1000000000000000) == 0)
  {
    return (to._rawBits >> 16) - (from._rawBits >> 16);
  }

  v13 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v13 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v13 < from._rawBits >> 16 || v13 < to._rawBits >> 16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return String.UTF8View._foreignDistance(from:to:)(from, to);
}

Swift::String::Index __swiftcall String.Index.init(encodedOffset:transcodedOffset:characterStride:)(Swift::Int encodedOffset, Swift::Int transcodedOffset, Swift::Int characterStride)
{
  v3 = characterStride << 8;
  if (characterStride > 63)
  {
    v3 = 0;
  }

  return ((transcodedOffset << 14) | (encodedOffset << 16) | v3);
}

uint64_t _StringObject.init(object:discriminator:countAndFlags:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  a1 | a2;
  swift_unknownObjectRelease(a1);
  return a3;
}

unint64_t static _StringObject.Nibbles.small(isASCII:)(char a1)
{
  if (a1)
  {
    return 0xE000000000000000;
  }

  else
  {
    return 0xA000000000000000;
  }
}

Swift::_StringObject::CountAndFlags __swiftcall _StringObject.CountAndFlags.init(immortalCount:isASCII:)(Swift::Int immortalCount, Swift::Bool isASCII)
{
  v2 = immortalCount | 0xC000000000000000;
  if (!isASCII)
  {
    v2 = immortalCount;
  }

  return (v2 | 0x1000000000000000);
}

id _StringObject.getSharedUTF8Start()(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 12)
  {
    return *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  }

  if ((a2 & 0x4000000000000000) != 0)
  {
    return [a2 & 0xFFFFFFFFFFFFFFFLL _fastCStringContents_];
  }

  return *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
}

uint64_t specialized StringProtocol.hasSuffix<A>(_:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v8 = type metadata accessor for ReversedCollection(0, a3, *(a4 + 8), a4);
  v9 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v16 - v11;
  (*(*(v5 - 8) + 16))(&v16 - v11, v4, v5);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ReversedCollection<A>, v8, v13);
  LOBYTE(v5) = specialized Sequence<>.starts<A>(with:)(a1, a2, v8, WitnessTable);
  (*(v9 + 8))(v12, v8);
  return v5 & 1;
}

uint64_t StringProtocol.hasSuffix<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = a3;
  v11 = type metadata accessor for ReversedCollection(0, a3, *(a5 + 8), a4);
  v12 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v27 - v14;
  v17 = type metadata accessor for ReversedCollection(0, a2, *(a4 + 8), v16);
  v18 = *(v17 - 1);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v27 - v20;
  (*(*(a2 - 8) + 16))(&v27 - v20, v6, a2);
  (*(*(v8 - 8) + 16))(v15, a1, v8);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ReversedCollection<A>, v17, v22);
  v25 = swift_getWitnessTable(protocol conformance descriptor for ReversedCollection<A>, v11, v24);
  LOBYTE(v8) = Sequence<>.starts<A>(with:)(v15, v17, v11, WitnessTable, v25, &protocol witness table for Character);
  (*(v12 + 8))(v15, v11);
  (*(v18 + 8))(v21, v17);
  return v8 & 1;
}

Swift::Void __swiftcall Substring._slowMakeContiguousUTF8()()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *v0;
  v1;
  rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(15)._rawBits;
  v107._rawBits = v3;
  v5 = _StringGuts.validateInclusiveScalarIndex(_:)(v3)._rawBits;
  v6._rawBits = rawBits;
  v7 = rawBits >> 14;
  v8 = v5 >> 14;
  if (v7 < v5 >> 14)
  {
    v9 = 0;
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if ((v1 & 0x1000000000000000) != 0)
      {
        v6._rawBits = String.UnicodeScalarView._foreignIndex(after:)(v6)._rawBits;
      }

      else
      {
        v11 = v6._rawBits >> 16;
        if ((v1 & 0x2000000000000000) != 0)
        {
          v108 = v2;
          v109 = v1 & 0xFFFFFFFFFFFFFFLL;
          v13 = *(&v108 + v11);
        }

        else
        {
          v12 = ((v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((v2 & 0x1000000000000000) == 0)
          {
            v12 = _StringObject.sharedUTF8.getter(v2, v1);
          }

          v13 = v12[v11];
        }

        v14 = v13;
        v15 = __clz(v13 ^ 0xFF) - 24;
        if (v14 >= 0)
        {
          LOBYTE(v15) = 1;
        }

        v6._rawBits = ((v11 + v15) << 16) | 5;
      }

      ++v9;
      if (v8 <= v6._rawBits >> 14)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_151;
  }

  if (v8 < v7)
  {
    v10 = 0;
    while (1)
    {
      v16 = __OFSUB__(v10--, 1);
      if (v16)
      {
        goto LABEL_152;
      }

      if ((v1 & 0x1000000000000000) != 0)
      {
        v6._rawBits = String.UnicodeScalarView._foreignIndex(before:)(v6)._rawBits;
      }

      else
      {
        if ((v1 & 0x2000000000000000) != 0)
        {
          v108 = v2;
          v109 = v1 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v107._rawBits + (v6._rawBits >> 16) + 7) & 0xC0) == 0x80)
          {
            v22 = &v107._rawBits + (v6._rawBits >> 16) + 6;
            v21 = 1;
            do
            {
              ++v21;
              v23 = *v22--;
            }

            while ((v23 & 0xC0) == 0x80);
          }

          else
          {
            v21 = 1;
          }
        }

        else
        {
          v17 = ((v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((v2 & 0x1000000000000000) == 0)
          {
            v24 = v6._rawBits;
            v17 = _StringObject.sharedUTF8.getter(v2, v1);
            v6._rawBits = v24;
          }

          v18 = 0;
          v19 = v17 + (v6._rawBits >> 16) - 1;
          do
          {
            v20 = *(v19 + v18--) & 0xC0;
          }

          while (v20 == 128);
          v21 = -v18;
        }

        v6._rawBits = (v6._rawBits - (v21 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v8 >= v6._rawBits >> 14)
      {
        goto LABEL_34;
      }
    }
  }

  v10 = 0;
LABEL_34:
  v1;
  v25._rawBits = v106[1];
  v1;
  v26 = _StringGuts.validateInclusiveScalarIndex(_:)(v107)._rawBits;
  v27 = _StringGuts.validateInclusiveScalarIndex(_:)(v25)._rawBits;
  v28._rawBits = v26;
  v29 = v26 >> 14;
  v30 = v27 >> 14;
  v105 = v25._rawBits;
  if (v29 < v27 >> 14)
  {
    v31 = 0;
    while (1)
    {
      v32 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if ((v1 & 0x1000000000000000) != 0)
      {
        v28._rawBits = String.UnicodeScalarView._foreignIndex(after:)(v28)._rawBits;
      }

      else
      {
        v33 = v28._rawBits >> 16;
        if ((v1 & 0x2000000000000000) != 0)
        {
          v108 = v2;
          v109 = v1 & 0xFFFFFFFFFFFFFFLL;
          v35 = *(&v108 + v33);
        }

        else
        {
          v34 = ((v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((v2 & 0x1000000000000000) == 0)
          {
            v34 = _StringObject.sharedUTF8.getter(v2, v1);
          }

          v35 = v34[v33];
        }

        v36 = v35;
        v37 = __clz(v35 ^ 0xFF) - 24;
        if (v36 >= 0)
        {
          LOBYTE(v37) = 1;
        }

        v28._rawBits = ((v33 + v37) << 16) | 5;
      }

      ++v31;
      if (v30 <= v28._rawBits >> 14)
      {
        goto LABEL_67;
      }
    }

LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  if (v30 < v29)
  {
    v32 = 0;
    while (1)
    {
      v16 = __OFSUB__(v32--, 1);
      if (v16)
      {
        goto LABEL_153;
      }

      if ((v1 & 0x1000000000000000) != 0)
      {
        v28._rawBits = String.UnicodeScalarView._foreignIndex(before:)(v28)._rawBits;
      }

      else
      {
        if ((v1 & 0x2000000000000000) != 0)
        {
          v108 = v2;
          v109 = v1 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v107._rawBits + (v28._rawBits >> 16) + 7) & 0xC0) == 0x80)
          {
            v43 = &v107._rawBits + (v28._rawBits >> 16) + 6;
            v42 = 1;
            do
            {
              ++v42;
              v44 = *v43--;
            }

            while ((v44 & 0xC0) == 0x80);
          }

          else
          {
            v42 = 1;
          }
        }

        else
        {
          v38 = ((v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((v2 & 0x1000000000000000) == 0)
          {
            v100 = v28._rawBits;
            v38 = _StringObject.sharedUTF8.getter(v2, v1);
            v28._rawBits = v100;
          }

          v39 = 0;
          v40 = v38 + (v28._rawBits >> 16) - 1;
          do
          {
            v41 = *(v40 + v39--) & 0xC0;
          }

          while (v41 == 128);
          v42 = -v39;
        }

        v28._rawBits = (v28._rawBits - (v42 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v30 >= v28._rawBits >> 14)
      {
        goto LABEL_67;
      }
    }
  }

  v32 = 0;
LABEL_67:
  v1;
  v45 = specialized static String._copying(_:)(v2, v1);
  v47 = v46;
  v46;
  v48._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(15)._rawBits;
  if (v10 < 0)
  {
    v59 = 0;
    v60 = &v107._rawBits + 7;
    v61 = &v107._rawBits + 6;
    while (1)
    {
      v62 = v48._rawBits >> 16;
      if (!(v48._rawBits >> 16))
      {
        break;
      }

      if ((v47 & 0x1000000000000000) != 0)
      {
        v69 = v48._rawBits;
        v101 = v60;
        v70 = v61;
        v71._rawBits = String.UnicodeScalarView._foreignIndex(before:)(v69)._rawBits;
        v61 = v70;
        v60 = v101;
        v48._rawBits = v71._rawBits;
      }

      else
      {
        if ((v47 & 0x2000000000000000) != 0)
        {
          v108 = v45;
          v109 = v47 & 0xFFFFFFFFFFFFFFLL;
          if ((v60[v62] & 0xC0) == 0x80)
          {
            v67 = &v61[v62];
            v66 = 1;
            do
            {
              ++v66;
              v68 = *v67--;
            }

            while ((v68 & 0xC0) == 0x80);
          }

          else
          {
            v66 = 1;
          }
        }

        else
        {
          v63 = ((v47 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((v45 & 0x1000000000000000) == 0)
          {
            v98 = v61;
            v102 = v60;
            v63 = _StringObject.sharedUTF8.getter(v45, v47);
            v61 = v98;
            v60 = v102;
          }

          v64 = 0;
          do
          {
            v65 = v63[(v48._rawBits >> 16) - 1 + v64--] & 0xC0;
          }

          while (v65 == 128);
          v66 = -v64;
        }

        v48._rawBits = (v48._rawBits - (v66 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v10 >= --v59)
      {
        goto LABEL_104;
      }
    }

LABEL_149:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v10)
  {
    if ((v47 & 0x2000000000000000) != 0)
    {
      v49 = HIBYTE(v47) & 0xF;
    }

    else
    {
      v49 = v45 & 0xFFFFFFFFFFFFLL;
    }

    v50 = v47 & 0xFFFFFFFFFFFFFFLL;
    while (1)
    {
      v51 = v48._rawBits >> 16;
      if (v48._rawBits >> 16 >= v49)
      {
        goto LABEL_149;
      }

      if ((v47 & 0x1000000000000000) != 0)
      {
        v56 = v50;
        v57._rawBits = String.UnicodeScalarView._foreignIndex(after:)(v48)._rawBits;
        v50 = v56;
        v48._rawBits = v57._rawBits;
        if (!--v10)
        {
          break;
        }
      }

      else
      {
        if ((v47 & 0x2000000000000000) != 0)
        {
          v108 = v45;
          v109 = v50;
          v53 = *(&v108 + v51);
        }

        else
        {
          v52 = ((v47 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((v45 & 0x1000000000000000) == 0)
          {
            v58 = v50;
            v52 = _StringObject.sharedUTF8.getter(v45, v47);
            v50 = v58;
          }

          v53 = v52[v51];
        }

        v54 = v53;
        v55 = __clz(v53 ^ 0xFF) - 24;
        if (v54 >= 0)
        {
          LOBYTE(v55) = 1;
        }

        v48._rawBits = ((v51 + v55) << 16) | 5;
        if (!--v10)
        {
          break;
        }
      }
    }
  }

LABEL_104:
  v72._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(v48)._rawBits;
  if (v32 < 0)
  {
    v83 = 0;
    v84 = &v107._rawBits + 7;
    v85 = &v107._rawBits + 6;
    while (1)
    {
      v86 = v72._rawBits >> 16;
      if (!(v72._rawBits >> 16))
      {
        goto LABEL_149;
      }

      if ((v47 & 0x1000000000000000) != 0)
      {
        v93 = v72._rawBits;
        v103 = v84;
        v94 = v85;
        v95._rawBits = String.UnicodeScalarView._foreignIndex(before:)(v93)._rawBits;
        v85 = v94;
        v84 = v103;
        v72._rawBits = v95._rawBits;
      }

      else
      {
        if ((v47 & 0x2000000000000000) != 0)
        {
          v108 = v45;
          v109 = v47 & 0xFFFFFFFFFFFFFFLL;
          if ((v84[v86] & 0xC0) == 0x80)
          {
            v91 = &v85[v86];
            v90 = 1;
            do
            {
              ++v90;
              v92 = *v91--;
            }

            while ((v92 & 0xC0) == 0x80);
          }

          else
          {
            v90 = 1;
          }
        }

        else
        {
          v87 = ((v47 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((v45 & 0x1000000000000000) == 0)
          {
            v99 = v85;
            v104 = v84;
            v87 = _StringObject.sharedUTF8.getter(v45, v47);
            v85 = v99;
            v84 = v104;
          }

          v88 = 0;
          do
          {
            v89 = v87[(v72._rawBits >> 16) - 1 + v88--] & 0xC0;
          }

          while (v89 == 128);
          v90 = -v88;
        }

        v72._rawBits = (v72._rawBits - (v90 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v32 >= --v83)
      {
        goto LABEL_141;
      }
    }
  }

  if (v32)
  {
    if ((v47 & 0x2000000000000000) != 0)
    {
      v73 = HIBYTE(v47) & 0xF;
    }

    else
    {
      v73 = v45 & 0xFFFFFFFFFFFFLL;
    }

    v74 = v47 & 0xFFFFFFFFFFFFFFLL;
    while (1)
    {
      v75 = v72._rawBits >> 16;
      if (v72._rawBits >> 16 >= v73)
      {
        goto LABEL_149;
      }

      if ((v47 & 0x1000000000000000) != 0)
      {
        v80 = v74;
        v81._rawBits = String.UnicodeScalarView._foreignIndex(after:)(v72)._rawBits;
        v74 = v80;
        v72._rawBits = v81._rawBits;
        if (!--v32)
        {
          break;
        }
      }

      else
      {
        if ((v47 & 0x2000000000000000) != 0)
        {
          v108 = v45;
          v109 = v74;
          v77 = *(&v108 + v75);
        }

        else
        {
          v76 = ((v47 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((v45 & 0x1000000000000000) == 0)
          {
            v82 = v74;
            v76 = _StringObject.sharedUTF8.getter(v45, v47);
            v74 = v82;
          }

          v77 = v76[v75];
        }

        v78 = v77;
        v79 = __clz(v77 ^ 0xFF) - 24;
        if (v78 >= 0)
        {
          LOBYTE(v79) = 1;
        }

        v72._rawBits = ((v75 + v79) << 16) | 5;
        if (!--v32)
        {
          break;
        }
      }
    }
  }

LABEL_141:
  v47;
  if ((v107._rawBits & 2) != 0)
  {
    v96 = v48._rawBits | 3;
  }

  else
  {
    v96 = v48._rawBits;
  }

  if ((v105 & 2) != 0)
  {
    v97 = v72._rawBits | 3;
  }

  else
  {
    v97 = v72._rawBits;
  }

  if (v97 >> 14 < v96 >> 14)
  {
LABEL_154:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v1;
  *v106 = v96;
  v106[1] = v97;
  v106[2] = v45;
  v106[3] = v47;
}

Swift::String::Index __swiftcall String.UnicodeScalarView.index(_:offsetBy:)(Swift::String::Index _, Swift::Int offsetBy)
{
  v4 = v3;
  v5 = v2;
  result._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(_)._rawBits;
  if (offsetBy < 0)
  {
    v14 = 0;
    while (1)
    {
      v15 = result._rawBits >> 16;
      if (!(result._rawBits >> 16))
      {
        break;
      }

      if ((v4 & 0x1000000000000000) != 0)
      {
        result._rawBits = String.UnicodeScalarView._foreignIndex(before:)(result)._rawBits;
      }

      else
      {
        if ((v4 & 0x2000000000000000) != 0)
        {
          v25 = v5;
          v26 = v4 & 0xFFFFFFFFFFFFFFLL;
          if ((v24[v15 + 1] & 0xC0) == 0x80)
          {
            v21 = &v24[v15];
            v20 = 1;
            do
            {
              ++v20;
              v22 = *v21--;
            }

            while ((v22 & 0xC0) == 0x80);
          }

          else
          {
            v20 = 1;
          }
        }

        else
        {
          v16 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((v5 & 0x1000000000000000) == 0)
          {
            rawBits = result._rawBits;
            v16 = _StringObject.sharedUTF8.getter(v5, v4);
            result._rawBits = rawBits;
          }

          v17 = 0;
          v18 = v16 + (result._rawBits >> 16) - 1;
          do
          {
            v19 = *(v18 + v17--) & 0xC0;
          }

          while (v19 == 128);
          v20 = -v17;
        }

        result._rawBits = (result._rawBits - (v20 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (--v14 <= offsetBy)
      {
        return result;
      }
    }

LABEL_38:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (offsetBy)
  {
    if ((v4 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(v4) & 0xF;
    }

    else
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    while (1)
    {
      v9 = result._rawBits >> 16;
      if (result._rawBits >> 16 >= v8)
      {
        break;
      }

      if ((v4 & 0x1000000000000000) != 0)
      {
        result._rawBits = String.UnicodeScalarView._foreignIndex(after:)(result)._rawBits;
      }

      else
      {
        if ((v4 & 0x2000000000000000) != 0)
        {
          v25 = v5;
          v26 = v4 & 0xFFFFFFFFFFFFFFLL;
          v11 = *(&v25 + v9);
        }

        else
        {
          v10 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((v5 & 0x1000000000000000) == 0)
          {
            v10 = _StringObject.sharedUTF8.getter(v5, v4);
          }

          v11 = v10[v9];
        }

        v12 = v11;
        v13 = __clz(v11 ^ 0xFF) - 24;
        if (v12 >= 0)
        {
          LOBYTE(v13) = 1;
        }

        result._rawBits = ((v9 + v13) << 16) | 5;
      }

      if (!--offsetBy)
      {
        return result;
      }
    }

    goto LABEL_38;
  }

  return result;
}

uint64_t String.Index.utf16Offset<A>(in:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4)
{
  v21 = a2;
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for StringProtocol, associated type descriptor for StringProtocol.UTF16View);
  v7 = v6;
  v8 = *(v6 - 8);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v21 - v14;
  v16 = *(a4 + 128);
  v16(a3, a4);
  v16(a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v7, &protocol requirements base descriptor for StringProtocol, associated conformance descriptor for StringProtocol.StringProtocol.UTF16View: BidirectionalCollection);
  (*(*(AssociatedConformanceWitness + 8) + 64))(&v24, v7);
  v18 = *(v8 + 8);
  v18(v12, v7);
  v22 = v21;
  v23 = v24;
  v19 = (*(AssociatedConformanceWitness + 64))(&v23, &v22, v7, AssociatedConformanceWitness);
  v18(v15, v7);
  return v19;
}

unint64_t String.Index.init<A>(utf16Offset:in:)(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4)
{
  v37 = a1;
  v38 = a2;
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for StringProtocol, associated type descriptor for StringProtocol.UTF16View);
  v7 = v6;
  v8 = *(v6 - 8);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v35 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v29 - v13;
  v15 = *(a4 + 128);
  v15(a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v7, &protocol requirements base descriptor for StringProtocol, associated conformance descriptor for StringProtocol.StringProtocol.UTF16View: BidirectionalCollection);
  v16 = *(AssociatedConformanceWitness + 8);
  (*(v16 + 64))(&v40, v7, v16);
  v17 = *(v8 + 8);
  v31 = v14;
  v18 = v14;
  v19 = v7;
  v17(v18, v7);
  v30 = v40;
  v20 = v35;
  v36 = a3;
  v32 = a4;
  v33 = v15;
  v15(a3, a4);
  v21 = *(v16 + 72);
  v22 = v16;
  v23 = v37;
  v21(&v42, v19, v22);
  v17(v20, v19);
  v24 = v42;
  if (v23 < 0)
  {
    (*(*(v36 - 1) + 1))(v38);
  }

  else
  {
    v25 = v31;
    v26 = v38;
    v27 = v36;
    v33(v36, v32);
    (*(*(v27 - 1) + 1))(v26, v27);
    v42 = v30;
    v39 = v24;
    (*(AssociatedConformanceWitness + 56))(&v40, &v42, v23, &v39, v19);
    v17(v25, v19);
    if (v41 != 1)
    {
      return v40;
    }
  }

  return (v24 & 0xFFFFFFFFFFFF0000) + 0x10000;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance String.Index()
{
  v1 = *v0;
  specialized Hasher.init(_seed:)(0, v3);
  Hasher._combine(_:)(v1 >> 14);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance String.Index(uint64_t a1)
{
  v2 = *v1;
  specialized Hasher.init(_seed:)(a1, v4);
  Hasher._combine(_:)(v2 >> 14);
  return Hasher._finalize()();
}

unint64_t String.Index.debugDescription.getter(unint64_t a1)
{
  _StringGuts.init(_initialCapacity:)(6);
  v3 = v2;
  v4 = _int64ToString(_:radix:uppercase:)(a1 >> 16, 10, 0, swift_int64ToString);
  v6 = v5;
  v3;
  v90 = v4;
  v91 = v6;
  v15 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v15 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v15 || (v4 & ~v6 & 0x2000000000000000) != 0)
  {
    if ((v6 & 0x2000000000000000) != 0 && (v16 = specialized _SmallString.init(_:appending:)(v4, v6, 0x5BuLL, 0xE100000000000000), (v18 & 1) == 0))
    {
      v27 = v16;
      v28 = v17;
      v6;
      v90 = v27;
      v91 = v28;
    }

    else
    {
      _StringGuts.append(_:)(91, 0xE100000000000000, 0, 1, v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  else
  {
    v6;
    v90 = 91;
    v91 = 0xE100000000000000;
  }

  v29 = 0x3631667475;
  if ((a1 & 8) == 0)
  {
    v29 = 0x6E776F6E6B6E75;
  }

  v30 = 0xE500000000000000;
  if ((a1 & 8) == 0)
  {
    v30 = 0xE700000000000000;
  }

  v31 = 7958113;
  if ((a1 & 8) == 0)
  {
    v31 = 946238581;
  }

  v32 = 0xE300000000000000;
  if ((a1 & 8) == 0)
  {
    v32 = 0xE400000000000000;
  }

  if ((a1 & 4) != 0)
  {
    v33 = v31;
  }

  else
  {
    v33 = v29;
  }

  if ((a1 & 4) != 0)
  {
    v34 = v32;
  }

  else
  {
    v34 = v30;
  }

  v35 = HIBYTE(v91) & 0xF;
  if ((v91 & 0x2000000000000000) == 0)
  {
    v35 = v90 & 0xFFFFFFFFFFFFLL;
  }

  if (v35 || (v90 & ~v91 & 0x2000000000000000) != 0)
  {
    if ((v91 & 0x2000000000000000) != 0 && (v36 = specialized _SmallString.init(_:appending:)(v90, v91, v33, v34), (v38 & 1) == 0))
    {
      v47 = v36;
      v48 = v37;
      v34;
      v91;
      v90 = v47;
      v91 = v48;
      v34 = v48;
      v33 = v47;
    }

    else
    {
      _StringGuts.append(_:)(v33, v34, 0, HIBYTE(v34) & 7, v19, v20, v21, v22, v23, v24, v25, v26);
      v34;
      v33 = v90;
      v34 = v91;
    }
  }

  else
  {
    v91;
    v90 = v33;
    v91 = v34;
  }

  v49 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v49 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (v49 || (v33 & ~v34 & 0x2000000000000000) != 0)
  {
    if ((v34 & 0x2000000000000000) != 0 && (v50 = specialized _SmallString.init(_:appending:)(v33, v34, 0x5DuLL, 0xE100000000000000), (v52 & 1) == 0))
    {
      v54 = v50;
      v53 = v51;
      0xE100000000000000;
      v34;
    }

    else
    {
      _StringGuts.append(_:)(93, 0xE100000000000000, 0, 1, v39, v40, v41, v42, v43, v44, v45, v46);
      0xE100000000000000;
      v54 = v90;
      v53 = v91;
    }
  }

  else
  {
    v34;
    v53 = 0xE100000000000000;
    v54 = 93;
  }

  v55 = a1 >> 14;
  if (!v55)
  {
    return v54;
  }

  _StringGuts.init(_initialCapacity:)(3);
  v56;
  v58 = _int64ToString(_:radix:uppercase:)(v55, 10, 0, swift_int64ToString);
  v67 = v57;
  if ((v57 & 0x2000000000000000) != 0 && (v68 = specialized _SmallString.init(_:appending:)(0x2BuLL, 0xE100000000000000, v58, v57), (v70 & 1) == 0))
  {
    v81 = v69;
    v83 = v68;
    v67;
    0xE100000000000000;
    v80 = v83;
  }

  else
  {
    if ((v67 & 0x2000000000000000) != 0)
    {
      v71 = HIBYTE(v67) & 0xF;
    }

    else
    {
      v71 = v58 & 0xFFFFFFFFFFFFLL;
    }

    _StringGuts.append(_:)(v58, v67, 0, v71, v59, v60, v61, v62, v63, v64, v65, v66);
    v67;
    v80 = 43;
    v81 = 0xE100000000000000;
  }

  v84 = HIBYTE(v53) & 0xF;
  if ((v53 & 0x2000000000000000) == 0)
  {
    v84 = v54 & 0xFFFFFFFFFFFFLL;
  }

  if (v84 || (v54 & ~v53 & 0x2000000000000000) != 0)
  {
    if ((v53 & 0x2000000000000000) == 0)
    {
      if ((v81 & 0x2000000000000000) != 0)
      {
        v85 = HIBYTE(v81) & 0xF;
LABEL_60:
        _StringGuts.append(_:)(v80, v81, 0, v85, v72, v73, v74, v75, v76, v77, v78, v79);
        v81;
        return v54;
      }

LABEL_59:
      v85 = v80 & 0xFFFFFFFFFFFFLL;
      goto LABEL_60;
    }

    if ((v81 & 0x2000000000000000) == 0)
    {
      goto LABEL_59;
    }

    v86 = v80;
    v87 = specialized _SmallString.init(_:appending:)(v54, v53, v80, v81);
    if (v88)
    {
      v85 = HIBYTE(v81) & 0xF;
      v80 = v86;
      goto LABEL_60;
    }

    v89 = v87;
    v81;
    v53;
  }

  else
  {
    v89 = v80;
    v53;
  }

  return v89;
}

Swift::String::Index_optional __swiftcall String.Index.init(_:within:)(Swift::String::Index _, Swift::String within)
{
  v2 = specialized String.Index.init(_:within:)(_, within._countAndFlagsBits, within._object);
  v4 = v3 & 1;
  result.value._rawBits = v2;
  result.is_nil = v4;
  return result;
}

Swift::UInt64 String.Index.init<A>(_:within:)(Swift::UInt64 a1, Swift::UInt64 *a2, Class *a3)
{
  v5._rawBits = a1;
  v6 = *(a3 - 1);
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  v9 = (v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = (v30 - v11);
  v13 = *(v6 + 16);
  v13(v30 - v11);
  if ((swift_dynamicCast(v30, v12, a3, &type metadata for String, 6uLL, v14, v15, v16, v30[0]) & 1) == 0)
  {
    (v13)(v9, a2, a3);
    if (swift_dynamicCast(v30, v9, a3, &type metadata for Substring, 6uLL, v20, v21, v22, v30[0]))
    {
      (*(v6 + 8))(a2, a3);
      v23 = v31;
      v24 = (v30[2] >> 59) & 1;
      if ((v31 & 0x1000000000000000) == 0)
      {
        LOBYTE(v24) = 1;
      }

      if ((v5._rawBits & 0xC) == 4 << v24)
      {
        v5._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v5)._rawBits;
      }

      v25 = Substring._isValidIndex(_:)(v5);
      v23;
      if (v25)
      {
        return v5._rawBits;
      }
    }

    else
    {
      v26 = String.init<A>(_:)(a2, a3);
      v27._rawBits = v5._rawBits;
      result = specialized String.Index.init(_:within:)(v27, v26, v28);
      if ((v29 & 1) == 0)
      {
        return result;
      }
    }

    return 0;
  }

  (*(v6 + 8))(a2, a3);
  v17._rawBits = v5._rawBits;
  result = specialized String.Index.init(_:within:)(v17, v30[0], v30[1]);
  if (v19)
  {
    return 0;
  }

  return result;
}

Swift::Bool __swiftcall Substring._isValidIndex(_:)(Swift::String::Index a1)
{
  v5 = (v3 >> 59) & 1;
  if ((v4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((a1._rawBits & 0xC) == 4 << v5)
  {
    return 0;
  }

  v7 = a1._rawBits >> 14;
  v8 = v1 >> 14;
  if (a1._rawBits >> 14 < v1 >> 14)
  {
    return 0;
  }

  v9 = v2 >> 14;
  if (v2 >> 14 < v7)
  {
    return 0;
  }

  v10 = v1;
  v11 = v2;
  v13 = v3;
  v14 = v4;
  if (!_StringGuts.isOnUnicodeScalarBoundary(_:)(a1))
  {
    return 0;
  }

  v15 = a1._rawBits | 1;
  if ((a1._rawBits & v10 & 2) == 0 && v7 != v8 && v7 != v9)
  {
    v15 = _StringGuts._slowRoundDownToNearestCharacter(_:in:)(v15, v10, v11, v13, v14);
  }

  return v7 == v15 >> 14;
}

uint64_t String.Index.samePosition(in:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  return String.Index.samePosition(in:)(a1, a2, a3, specialized String.Index.init(_:within:));
}

{
  return String.Index.samePosition(in:)(a1, a2, a3, specialized String.Index.init(_:within:));
}

{
  return String.Index.samePosition(in:)(a1, a2, a3, specialized String.Index.init(_:within:));
}

Swift::UInt64 String.Index.init(_:within:)(Swift::String::Index a1, unint64_t a2, unint64_t a3)
{
  return specialized String.Index.init(_:within:)(a1, a2, a3);
}

{
  return specialized String.Index.init(_:within:)(a1, a2, a3);
}

{
  return specialized String.Index.init(_:within:)(a1, a2, a3);
}

Swift::String::Index __swiftcall _StringGuts.validateInclusiveCharacterIndex(_:)(Swift::String::Index result)
{
  v3 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result._rawBits & 2) == 0 || (result._rawBits & 0xC) == 4 << v3)
  {
    v5 = v1;
    v6 = v2;
    result._rawBits = _StringGuts.validateInclusiveSubscalarIndex(_:)(result)._rawBits;
    if (result._rawBits)
    {
      if ((result._rawBits & 2) != 0)
      {
        return result;
      }
    }

    else
    {
      v7 = result._rawBits & 0xC | _StringGuts.scalarAlignSlow(_:)(result)._rawBits & 0xFFFFFFFFFFFFFFF3;
      result._rawBits = v7 | 1;
      if ((v7 & 2) != 0)
      {
        return result;
      }
    }

    if (result._rawBits < 0x10000)
    {
      return (result._rawBits | 3);
    }

    v8 = (v6 & 0x2000000000000000) != 0 ? HIBYTE(v6) & 0xF : v5 & 0xFFFFFFFFFFFFLL;
    if (result._rawBits >> 16 == v8)
    {
      return (result._rawBits | 3);
    }

    else
    {

      return _StringGuts._slowRoundDownToNearestCharacter(_:)(result);
    }
  }

  else
  {
    v4 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v4 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v4 < result._rawBits >> 16)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  return result;
}

Swift::UInt64 _StringGuts.validateInclusiveCharacterIndex(_:in:)(Swift::UInt64 result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v7 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  if ((result & 2) != 0 && (result & 0xC) != 4 << v7)
  {
    if (result >> 14 < a2 >> 14 || a3 >> 14 < result >> 14)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    return result;
  }

  result = _StringGuts.validateInclusiveSubscalarIndex(_:in:)(result, a2, a3, a4, a5);
  if (result)
  {
    if ((a2 & 2) != 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    result = result & 0xC | _StringGuts.scalarAlignSlow(_:)(result)._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
    if ((a2 & 2) != 0)
    {
LABEL_10:
      if ((result & 2) != 0)
      {
        return result;
      }
    }
  }

  if (result >> 14 != a2 >> 14 && result >> 14 != a3 >> 14)
  {

    return _StringGuts._slowRoundDownToNearestCharacter(_:in:)(result, a2, a3, a4, a5);
  }

  return result;
}

Swift::String::Index __swiftcall _StringGuts.validateInclusiveScalarIndex(_:)(Swift::String::Index result)
{
  v3 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result._rawBits & 1) == 0 || (result._rawBits & 0xC) == 4 << v3)
  {
    result._rawBits = _StringGuts.validateInclusiveSubscalarIndex(_:)(result)._rawBits;
    if ((result._rawBits & 1) == 0)
    {
      return (result._rawBits & 0xC | _StringGuts.scalarAlignSlow(_:)(result)._rawBits & 0xFFFFFFFFFFFFFFF3 | 1);
    }
  }

  else
  {
    v4 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v4 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v4 < result._rawBits >> 16)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  return result;
}

Swift::String::Index __swiftcall _StringGuts.validateInclusiveSubscalarIndex(_:)(Swift::String::Index result)
{
  v3 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result._rawBits & 0xC) == 4 << v3)
  {
    v5 = v1;
    v6 = v2;
    result._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(result)._rawBits;
    v1 = v5;
    v2 = v6;
  }

  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result._rawBits >> 16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

Swift::UInt64 _StringGuts.validateInclusiveSubscalarIndex(_:in:)(Swift::UInt64 result, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    v6 = a2;
    v7 = a3;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result)._rawBits;
    a2 = v6;
    a3 = v7;
  }

  if (result >> 14 < a2 >> 14 || a3 >> 14 < result >> 14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

Swift::String::Index __swiftcall _StringGuts.validateSubscalarIndex(_:)(Swift::String::Index result)
{
  v3 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result._rawBits & 0xC) == 4 << v3)
  {
    v5 = v1;
    v6 = v2;
    result._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(result)._rawBits;
    v1 = v5;
    v2 = v6;
  }

  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result._rawBits >> 16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

Swift::UInt64 _StringGuts.validateSubscalarIndex(_:in:)(Swift::UInt64 result, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    v6 = a2;
    v7 = a3;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result)._rawBits;
    a2 = v6;
    a3 = v7;
  }

  if (result >> 14 < a2 >> 14 || result >> 14 >= a3 >> 14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

Swift::String::Index _StringGuts.validateSubscalarRange(_:in:)(Swift::String::Index result, Swift::String::Index a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v6 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v6) = 1;
  }

  v7 = 4 << v6;
  if ((a2._rawBits & 0xC) == 4 << v6)
  {
    rawBits = result._rawBits;
    v9 = a3;
    v10 = a4;
    v11._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a2)._rawBits;
    a3 = v9;
    a4 = v10;
    a2._rawBits = v11._rawBits;
    result._rawBits = rawBits;
  }

  if ((result._rawBits & 0xC) == v7)
  {
    v12 = a2._rawBits;
    v13 = a3;
    v14 = a4;
    result._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(result)._rawBits;
    a3 = v13;
    a2._rawBits = v12;
    a4 = v14;
  }

  if (result._rawBits >> 14 < a3 >> 14 || a2._rawBits >> 14 < result._rawBits >> 14 || a4 >> 14 < a2._rawBits >> 14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

Swift::String::Index __swiftcall _StringGuts.scalarAlign(_:)(Swift::String::Index result)
{
  if ((result._rawBits & 1) == 0)
  {
    return (result._rawBits & 0xC | _StringGuts.scalarAlignSlow(_:)(result)._rawBits & 0xFFFFFFFFFFFFFFF3 | 1);
  }

  return result;
}

Swift::UInt64 _StringGuts.validateScalarIndex(_:in:)(Swift::UInt64 result, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a5 & 0x1000000000000000) == 0 || (a4 & 0x800000000000000) != 0;
  v6 = result & 0xC;
  v7 = 4 << v5;
  if ((result & 1) == 0 || v6 == v7)
  {
    if (v6 == v7)
    {
      v9 = a2;
      v8 = a3;
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(result)._rawBits;
      a2 = v9;
      a3 = v8;
    }

    if (result >> 14 < a2 >> 14 || result >> 14 >= a3 >> 14)
    {
LABEL_16:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if ((result & 1) == 0)
    {
      return result & 0xC | _StringGuts.scalarAlignSlow(_:)(result)._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  else if (result >> 14 < a2 >> 14 || result >> 14 >= a3 >> 14)
  {
    goto LABEL_16;
  }

  return result;
}

Swift::String::Index _StringGuts.validateScalarRange(_:)(Swift::String::Index result, Swift::String::Index a2, unint64_t a3, unint64_t a4)
{
  v4 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v4) = 1;
  }

  if ((result._rawBits & 1) == 0 || (v5 = 4 << v4, (result._rawBits & 0xC) == v5) || (a2._rawBits & 1) == 0 || (a2._rawBits & 0xC) == v5)
  {
    result._rawBits = _StringGuts.validateSubscalarRange(_:)(result, a2, a3, a4)._rawBits;
    if (result._rawBits)
    {
      if (v7._rawBits)
      {
        return result;
      }
    }

    else
    {
      rawBits = result._rawBits;
      v9 = v7._rawBits;
      v10._rawBits = _StringGuts.scalarAlignSlow(_:)(result)._rawBits;
      v7._rawBits = v9;
      result._rawBits = rawBits & 0xC | v10._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
      if (v9)
      {
        return result;
      }
    }

    v11 = result._rawBits;
    _StringGuts.scalarAlignSlow(_:)(v7);
    return v11;
  }

  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < a2._rawBits >> 16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

Swift::UInt64 _StringGuts.validateScalarRange(_:in:)(Swift::UInt64 result, Swift::String::Index a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v6 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v6) = 1;
  }

  if ((result & 1) == 0 || (v7 = 4 << v6, (result & 0xC) == v7) || (a2._rawBits & 1) == 0 || (a2._rawBits & 0xC) == v7)
  {
    result = _StringGuts.validateSubscalarRange(_:in:)(result, a2, a3, a4, a5, a6)._rawBits;
    if (v8._rawBits)
    {
      if (result)
      {
        return result;
      }
    }

    else
    {
      v9 = result;
      _StringGuts.scalarAlignSlow(_:)(v8);
      result = v9;
      if (v9)
      {
        return result;
      }
    }

    return result & 0xC | _StringGuts.scalarAlignSlow(_:)(result)._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
  }

  if (result >> 14 < a3 >> 14 || a4 >> 14 < a2._rawBits >> 14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

unint64_t _StringGuts.validateCharacterIndex(_:in:)(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v7 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  if ((result & 2) != 0 && (result & 0xC) != 4 << v7)
  {
    if (result >> 14 < a2 >> 14 || result >> 14 >= a3 >> 14)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    return result;
  }

  result = _StringGuts.validateSubscalarIndex(_:in:)(result, a2, a3, a4, a5);
  if (result)
  {
    if ((a2 & 2) != 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    result = result & 0xC | _StringGuts.scalarAlignSlow(_:)(result)._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
    if ((a2 & 2) != 0)
    {
LABEL_10:
      if ((result & 2) != 0)
      {
        return result;
      }
    }
  }

  if (result >> 14 != a2 >> 14 && result >> 14 != a3 >> 14)
  {

    return _StringGuts._slowRoundDownToNearestCharacter(_:in:)(result, a2, a3, a4, a5);
  }

  return result;
}

Swift::String::Index __swiftcall _StringGuts.validateInclusiveSubscalarIndex_5_7(_:)(Swift::String::Index result)
{
  v3 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result._rawBits & 0xC) == 4 << v3)
  {
    v5 = v1;
    v6 = v2;
    result._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(result)._rawBits;
    v1 = v5;
    v2 = v6;
  }

  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result._rawBits >> 16)
  {
    rawBits = result._rawBits;
    isExecutableLinkedOnOrAfter = _swift_stdlib_isExecutableLinkedOnOrAfter(0x50700u);
    result._rawBits = rawBits;
    if (isExecutableLinkedOnOrAfter)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  return result;
}

Swift::String::Index _StringGuts.validateSubscalarRange(_:)(Swift::String::Index result, Swift::String::Index a2, unint64_t a3, unint64_t a4)
{
  v4 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v4) = 1;
  }

  v5 = 4 << v4;
  if ((a2._rawBits & 0xC) == 4 << v4)
  {
    rawBits = result._rawBits;
    v8 = a3;
    v9 = a4;
    v10._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a2)._rawBits;
    a3 = v8;
    a4 = v9;
    a2._rawBits = v10._rawBits;
    result._rawBits = rawBits;
  }

  if ((result._rawBits & 0xC) == v5)
  {
    v11 = a2._rawBits;
    v12 = a3;
    v13 = a4;
    result._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(result)._rawBits;
    a3 = v12;
    a4 = v13;
    a2._rawBits = v11;
  }

  v6 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a4) & 0xF;
  }

  if (a2._rawBits >> 14 > 4 * v6 || a2._rawBits >> 14 < result._rawBits >> 14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

Swift::UInt64 _StringGuts.validateScalarRange_5_7(_:)(Swift::UInt64 result, Swift::String::Index a2, unint64_t a3, unint64_t a4)
{
  v4 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v4) = 1;
  }

  if ((result & 1) == 0 || (v5 = 4 << v4, (result & 0xC) == v5) || (a2._rawBits & 1) == 0 || (a2._rawBits & 0xC) == v5)
  {
    result = _StringGuts.validateSubscalarRange(_:)(result, a2, a3, a4)._rawBits;
    if (result)
    {
      if (v9._rawBits)
      {
        return result;
      }
    }

    else
    {
      v10 = result;
      rawBits = v9._rawBits;
      v12._rawBits = _StringGuts.scalarAlignSlow(_:)(result)._rawBits;
      v9._rawBits = rawBits;
      result = v10 & 0xC | v12._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
      if (rawBits)
      {
        return result;
      }
    }

    v13 = result;
    _StringGuts.scalarAlignSlow(_:)(v9);
    return v13;
  }

  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < a2._rawBits >> 16)
  {
    v7 = result;
    isExecutableLinkedOnOrAfter = _swift_stdlib_isExecutableLinkedOnOrAfter(0x50700u);
    result = v7;
    if (isExecutableLinkedOnOrAfter)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  return result;
}

Swift::Int protocol witness for StringInterpolationProtocol.init(literalCapacity:interpolationCount:) in conformance DefaultStringInterpolation@<X0>(Swift::Int result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a2 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = __OFADD__(result, 2 * a2);
    result += 2 * a2;
    if (!v4)
    {
      result = static String._createEmpty(withInitialCapacity:)(result);
      *a3 = result;
      a3[1] = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall String.hasPrefix(_:)(Swift::String a1)
{
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = v1;
  }

  if ((v2 & 0x1000000000000000) == 0 && (v3 & 0x4000000000000000) != 0)
  {
    v4 = (a1._object & 0x2000000000000000) != 0 ? a1._object : a1._countAndFlagsBits;
    if ((a1._object & 0x1000000000000000) == 0 && (v4 & 0x4000000000000000) != 0)
    {
      v5 = HIBYTE(a1._object) & 0xF;
      v6 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      object = a1._object;
      if ((a1._object & 0x2000000000000000) != 0)
      {
        v8 = HIBYTE(a1._object) & 0xF;
      }

      else
      {
        v8 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      v9 = HIBYTE(v2) & 0xF;
      v10 = v1 & 0xFFFFFFFFFFFFLL;
      if ((v2 & 0x2000000000000000) != 0)
      {
        v11 = HIBYTE(v2) & 0xF;
      }

      else
      {
        v11 = v1 & 0xFFFFFFFFFFFFLL;
      }

      if (v11 < v8)
      {
        return 0;
      }

      if ((object & 0x2000000000000000) != 0)
      {
        __s2 = a1._countAndFlagsBits;
        v29 = object & 0xFFFFFFFFFFFFFFLL;
        if ((v2 & 0x2000000000000000) != 0)
        {
          __s1[0] = v1;
          __s1[1] = v2 & 0xFFFFFFFFFFFFFFLL;
          if (v9 < v5)
          {
            goto LABEL_49;
          }

          v16 = __s1;
        }

        else
        {
          if ((v1 & 0x1000000000000000) != 0)
          {
            v16 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
            if (v10 < v5)
            {
              goto LABEL_49;
            }
          }

          else
          {
            v16 = _StringObject.sharedUTF8.getter(v1, v2);
            if (v25 < v5)
            {
              goto LABEL_49;
            }
          }

          if (v5 && !v16)
          {
            goto LABEL_49;
          }
        }

        v17 = _swift_stdlib_memcmp(v16, &__s2, v5);
        v6 = v5;
      }

      else
      {
        if ((a1._countAndFlagsBits & 0x1000000000000000) != 0)
        {
          v12 = ((object & 0xFFFFFFFFFFFFFFFLL) + 32);
          v13 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
          if ((v2 & 0x2000000000000000) == 0)
          {
LABEL_21:
            if ((v1 & 0x1000000000000000) != 0)
            {
              v14 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
              if (v10 < v13)
              {
                goto LABEL_49;
              }
            }

            else
            {
              v23 = v13;
              v14 = _StringObject.sharedUTF8.getter(v1, v2);
              v13 = v23;
              if (v24 < v23)
              {
                goto LABEL_49;
              }
            }

            if (!v13 || v14)
            {
              if (!_swift_stdlib_memcmp(v14, v12, v13))
              {
LABEL_26:

                return _StringGuts.isOnGraphemeClusterBoundary(_:)((v6 << 16));
              }

              return 0;
            }

LABEL_49:
            _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
          }
        }

        else
        {
          v26 = v1 & 0xFFFFFFFFFFFFLL;
          v18 = v2;
          v19 = v1;
          v20 = HIBYTE(v2) & 0xF;
          v21 = _StringObject.sharedUTF8.getter(a1._countAndFlagsBits, object);
          v9 = v20;
          v1 = v19;
          v2 = v18;
          v12 = v21;
          v13 = v22;
          v10 = v26;
          if ((v2 & 0x2000000000000000) == 0)
          {
            goto LABEL_21;
          }
        }

        __s2 = v1;
        v29 = v2 & 0xFFFFFFFFFFFFFFLL;
        if (v9 < v13)
        {
          goto LABEL_49;
        }

        v17 = _swift_stdlib_memcmp(&__s2, v12, v13);
      }

      if (!v17)
      {
        goto LABEL_26;
      }

      return 0;
    }
  }

  return specialized Sequence<>.starts<A>(with:)(a1._countAndFlagsBits, a1._object, v1, v2);
}

Swift::Bool __swiftcall String.hasSuffix(_:)(Swift::String a1)
{
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = v1;
  }

  if ((v2 & 0x1000000000000000) == 0 && (v3 & 0x4000000000000000) != 0)
  {
    v4 = (a1._object & 0x2000000000000000) != 0 ? a1._object : a1._countAndFlagsBits;
    if ((a1._object & 0x1000000000000000) == 0 && (v4 & 0x4000000000000000) != 0)
    {
      object = a1._object;
      v6 = v1 & 0xFFFFFFFFFFFFLL;
      if ((v2 & 0x2000000000000000) != 0)
      {
        v7 = HIBYTE(v2) & 0xF;
      }

      else
      {
        v7 = v1 & 0xFFFFFFFFFFFFLL;
      }

      v8 = HIBYTE(object) & 0xF;
      v9 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      v10 = object;
      if ((object & 0x2000000000000000) != 0)
      {
        v11 = HIBYTE(object) & 0xF;
      }

      else
      {
        v11 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      v12 = v7 - v11;
      if (v7 - v11 < 0)
      {
        return 0;
      }

      if ((v10 & 0x2000000000000000) != 0)
      {
        __s2 = a1._countAndFlagsBits;
        v48 = v10 & 0xFFFFFFFFFFFFFFLL;
        if ((v2 & 0x2000000000000000) != 0)
        {
          v46[0] = v1;
          v46[1] = v2 & 0xFFFFFFFFFFFFFFLL;
          v31 = _swift_stdlib_memcmp(v46 + v12, &__s2, v8);
        }

        else
        {
          if ((v1 & 0x1000000000000000) != 0)
          {
            v24 = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
            v25 = v6;
          }

          else
          {
            v43 = v1 & 0xFFFFFFFFFFFFLL;
            v44 = _StringObject.sharedUTF8.getter(v1, v2);
            v25 = v45;
            if (v45 < v43)
            {
              goto LABEL_58;
            }

            v24 = v44;
            v6 = v43;
          }

          v26 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v12, v6, v24, v25);
          v28 = v27;
          if (v8 >= v27)
          {
            v29 = v27;
          }

          else
          {
            v29 = v8;
          }

          v30 = _swift_stdlib_memcmp(v26, &__s2, v29);
          v31 = v30;
          if (!v30)
          {
            v31 = v28 - v8;
          }
        }

        if (!v31)
        {
LABEL_52:

          return _StringGuts.isOnGraphemeClusterBoundary(_:)((v12 << 16));
        }

        return 0;
      }

      if ((a1._countAndFlagsBits & 0x1000000000000000) != 0)
      {
        v13 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v14 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        if ((v2 & 0x2000000000000000) == 0)
        {
LABEL_21:
          if ((v1 & 0x1000000000000000) != 0)
          {
            v15 = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
            v16 = v6;
            goto LABEL_23;
          }

          v40 = v6;
          v41 = _StringObject.sharedUTF8.getter(v1, v2);
          v16 = v42;
          if (v42 >= v40)
          {
            v15 = v41;
            v6 = v40;
LABEL_23:
            v17 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v12, v6, v15, v16);
            v19 = v18;
            if (v14 >= v18)
            {
              v20 = v18;
            }

            else
            {
              v20 = v14;
            }

            v21 = _swift_stdlib_memcmp(v17, v13, v20);
            v22 = v21;
            if (!v21)
            {
              v22 = v19 - v14;
            }

            if (!v22)
            {
              goto LABEL_52;
            }

            return 0;
          }

LABEL_58:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }

      else
      {
        v32 = v1 & 0xFFFFFFFFFFFFLL;
        v33 = v2;
        v34 = v1;
        v35 = _StringObject.sharedUTF8.getter(a1._countAndFlagsBits, v10);
        v1 = v34;
        v2 = v33;
        v13 = v35;
        v14 = v36;
        v6 = v32;
        if ((v2 & 0x2000000000000000) == 0)
        {
          goto LABEL_21;
        }
      }

      __s2 = v1;
      v48 = v2 & 0xFFFFFFFFFFFFFFLL;
      if (v14 >= v9)
      {
        v37 = v9;
      }

      else
      {
        v37 = v14;
      }

      v38 = _swift_stdlib_memcmp(&__s2 + v12, v13, v37);
      v39 = v38;
      if (!v38)
      {
        v39 = v9 - v14;
      }

      if (!v39)
      {
        goto LABEL_52;
      }

      return 0;
    }
  }

  return specialized Sequence<>.starts<A>(with:)(a1._countAndFlagsBits, a1._object, v1, v2);
}

Swift::Bool __swiftcall _isScalarNFCQC(_:_:)(Swift::Unicode::Scalar a1, Swift::UInt8 *a2)
{
  if (a1._value > 0x2FF)
  {
    v6 = a2;
    NormData = _swift_stdlib_getNormData(a1._value);
    a2 = v6;
  }

  else
  {
    NormData = 0;
  }

  v3 = NormData >> 3;
  if (v3)
  {
    v4 = *a2 <= (NormData >> 3);
  }

  else
  {
    v4 = 1;
  }

  result = (NormData & 6) == 0 && v4;
  if (result)
  {
    *a2 = v3;
  }

  return result;
}

Swift::Void __swiftcall _StringGutsSlice._fastNFCCheck(_:_:)(Swift::Bool *a1, Swift::UInt8 *a2)
{
  v6 = v2;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v46[0] = v2;
    v46[1] = v3 & 0xFFFFFFFFFFFFFFLL;
    if (v4 < 0)
    {
      goto LABEL_54;
    }

    if ((HIBYTE(v3) & 0xF) < v5)
    {
      goto LABEL_54;
    }

    v28 = v5 - v4;
    if (v5 - v4 < 0)
    {
      goto LABEL_54;
    }

    if (v5 != v4)
    {
      v30 = 0;
      v31 = v46 + v4;
      while ((v30 & 0x8000000000000000) == 0)
      {
        v34 = &v31[v30];
        v35 = v31[v30];
        if (v35 < 0xCC)
        {
          v32 = 0;
          if (v35 < 0xC0)
          {
            v33 = 1;
          }

          else
          {
            v33 = 2;
          }
        }

        else
        {
          v36 = __clz(v35 ^ 0xFF) - 24;
          v37 = v34[1];
          if (v36 == 2)
          {
            v38 = (v35 & 0x1F) << 6;
            v33 = 2;
          }

          else if (v36 == 3)
          {
            v38 = ((v35 & 0xF) << 12) | ((v37 & 0x3F) << 6);
            v37 = v34[2];
            v33 = 3;
          }

          else
          {
            v39 = ((v35 & 0xF) << 18) | ((v37 & 0x3F) << 12);
            v37 = v34[3];
            v38 = v39 & 0xFFFFF03F | ((v34[2] & 0x3F) << 6);
            v33 = 4;
          }

          if (v38 >= 0x300)
          {
            NormData = _swift_stdlib_getNormData(v38 | v37 & 0x3F);
          }

          else
          {
            NormData = 0;
          }

          v29 = 0;
          v41 = *a2 <= (NormData >> 3);
          v32 = NormData >> 3;
          if (!v32)
          {
            v41 = 1;
          }

          if ((NormData & 6) != 0 || !v41)
          {
            goto LABEL_31;
          }
        }

        *a2 = v32;
        v30 += v33;
        if (v30 >= v28)
        {
          goto LABEL_30;
        }
      }

LABEL_54:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_30:
    v29 = 1;
LABEL_31:
    *a1 = v29;
  }

  else
  {
    if ((v2 & 0x1000000000000000) != 0)
    {
      v9 = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v10 = v6 & 0xFFFFFFFFFFFFLL;
      if (v4 < 0)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v42 = v4;
      v43 = v5;
      v44 = _StringObject.sharedUTF8.getter(v2, v3);
      v5 = v43;
      v4 = v42;
      v9 = v44;
      v10 = v45;
      if (v42 < 0)
      {
        goto LABEL_54;
      }
    }

    if (v10 < v5)
    {
      goto LABEL_54;
    }

    v11 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v4, v5, v9, v10);
    if (v12 >= 1)
    {
      v13 = 0;
      while ((v13 & 0x8000000000000000) == 0)
      {
        v16 = (v11 + v13);
        v17 = *(v11 + v13);
        if (v17 < 0xCC)
        {
          v14 = 0;
          if (v17 < 0xC0)
          {
            v15 = 1;
          }

          else
          {
            v15 = 2;
          }
        }

        else
        {
          v18 = __clz(v17 ^ 0xFF) - 24;
          v19 = v16[1];
          if (v18 == 2)
          {
            v20 = (v17 & 0x1F) << 6;
            v15 = 2;
          }

          else if (v18 == 3)
          {
            v20 = ((v17 & 0xF) << 12) | ((v19 & 0x3F) << 6);
            v19 = v16[2];
            v15 = 3;
          }

          else
          {
            v21 = ((v17 & 0xF) << 18) | ((v19 & 0x3F) << 12);
            v19 = v16[3];
            v20 = v21 & 0xFFFFF03F | ((v16[2] & 0x3F) << 6);
            v15 = 4;
          }

          if (v20 >= 0x300)
          {
            v25 = v11;
            v26 = v12;
            v27 = _swift_stdlib_getNormData(v20 | v19 & 0x3F);
            v12 = v26;
            v22 = v27;
            v11 = v25;
          }

          else
          {
            v22 = 0;
          }

          v23 = 0;
          v24 = *a2 <= (v22 >> 3);
          v14 = v22 >> 3;
          if (!v14)
          {
            v24 = 1;
          }

          if ((v22 & 6) != 0 || !v24)
          {
            goto LABEL_33;
          }
        }

        *a2 = v14;
        v13 += v15;
        if (v13 >= v12)
        {
          goto LABEL_32;
        }
      }

      goto LABEL_54;
    }

LABEL_32:
    v23 = 1;
LABEL_33:
    *a1 = v23;
  }
}

unsigned __int8 *specialized closure #1 in _StringGutsSlice._withNFCCodeUnits(_:)(unsigned __int8 *result, uint64_t a2, unint64_t *a3)
{
  if (result && a2)
  {
    v3 = *a3;
    do
    {
      v15 = *result++;
      v14 = v15;
      if ((~v3 & 0x700000000000000) != 0)
      {
        v4 = (v14 << ((v3 >> 53) & 0x38)) | v3;
      }

      else
      {
        v4 = v3 & 0xFF00000000000000;
        v5 = v3 & 0xFFFFFFFFFFFFFFLL | (v14 << 56);
        v6 = a3[4] ^ v5;
        v7 = a3[2];
        v8 = v7 + a3[1];
        v9 = v8 ^ __ROR8__(v7, 51);
        v10 = a3[3] + v6;
        v11 = v10 ^ __ROR8__(v6, 48);
        v12 = v11 + __ROR8__(v8, 32);
        v13 = v10 + v9;
        a3[3] = __ROR8__(v13, 32);
        a3[4] = v12 ^ __ROR8__(v11, 43);
        a3[1] = v12 ^ v5;
        a3[2] = v13 ^ __ROR8__(v9, 47);
      }

      v3 = v4 + 0x100000000000000;
      *a3 = v4 + 0x100000000000000;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t specialized closure #1 in _StringGutsSlice._withNFCCodeUnits(_:)(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (result)
  {
    v3 = a2;
    if (a2)
    {
      v5 = result;
      do
      {
        v6 = *v5;
        v7 = *a3;
        result = swift_isUniquelyReferenced_nonNull_native(*a3);
        *a3 = v7;
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
          v7 = result;
          *a3 = result;
        }

        v9 = *(v7 + 16);
        v8 = *(v7 + 24);
        if (v9 >= v8 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v7);
          v7 = result;
          *a3 = result;
        }

        ++v5;
        *(v7 + 16) = v9 + 1;
        *(v7 + v9 + 32) = v6;
        --v3;
      }

      while (v3);
    }
  }

  return result;
}

uint64_t protocol witness for StringProtocol.init<A, B>(decoding:as:) in conformance String@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  v11 = *(a3 - 1);
  v12 = MEMORY[0x1EEE9AC00](a1, a2);
  v15 = (v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v13 != &type metadata for Unicode.UTF8)
  {
    v27 = static String._fromCodeUnits<A, B>(_:encoding:repair:)(a1, v13, 1, a3);
    if (!v28)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    goto LABEL_10;
  }

  MEMORY[0x1EEE9AC00](v12, v13);
  (*(*(a4 + 8) + 72))(&v31, closure #1 in String.init<A, B>(decoding:as:)partial apply);
  v16 = v32;
  if (v32)
  {
    v17 = v31;
LABEL_11:
    result = (*(v11 + 8))(a1, a3);
    goto LABEL_12;
  }

  (*(v11 + 16))(v15, a1, a3);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19_HasContiguousBytes_pMd, _ss19_HasContiguousBytes_pMR);
  if ((swift_dynamicCast(v29, v15, a3, v18, 6uLL, v19, v20, v21, v29[0]) & 1) == 0)
  {
    v30 = 0;
    memset(v29, 0, sizeof(v29));
    outlined destroy of _HasContiguousBytes?(v29, &_ss19_HasContiguousBytes_pSgMd, _ss19_HasContiguousBytes_pSgMR);
LABEL_9:
    v27 = static String._fromNonContiguousUnsafeBitcastUTF8Repairing<A>(_:)(a1, a3, a4);
LABEL_10:
    v17 = v27;
    v16 = v28;
    goto LABEL_11;
  }

  _ss9CodingKey_pWOb_0(v29, &v31);
  v22 = v33;
  v23 = v34;
  __swift_project_boxed_opaque_existential_0Tm(&v31, v33);
  if (((*(v23 + 16))(v22, v23) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v31);
    goto LABEL_9;
  }

  (*(v11 + 8))(a1, a3);
  v24 = v33;
  v25 = v34;
  __swift_project_boxed_opaque_existential_0Tm(&v31, v33);
  (*(v25 + 8))(v29, closure #2 in String.init<A, B>(decoding:as:), 0, a5, v24, v25);
  v16 = *(&v29[0] + 1);
  v17 = *&v29[0];
  result = __swift_destroy_boxed_opaque_existential_1Tm(&v31);
LABEL_12:
  *a6 = v17;
  a6[1] = v16;
  return result;
}

uint64_t protocol witness for StringProtocol.init(cString:) in conformance String@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = _swift_stdlib_strlen(a1);
  if ((v4 & 0x8000000000000000) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result = _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFs4Int8V_s5UInt8Vs5NeverOSSTt1g5019_sSS7cStringSSSPys4f14VG_tcfcSSSRys5G7VGXEfU_Tf1cn_n(a1, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

unint64_t protocol witness for StringProtocol.init<A>(decodingCString:as:) in conformance String@<X0>(char *a1@<X0>, ValueMetadata *a2@<X1>, ValueMetadata *a3@<X2>, int **a4@<X3>, unint64_t *a5@<X8>)
{
  result = String.init<A>(decodingCString:as:)(a1, a2, a3, a4);
  *a5 = result;
  a5[1] = v7;
  return result;
}

void protocol witness for StringProtocol.withCString<A, B>(encodedAs:_:) in conformance String(ValueMetadata *a1@<X0>, void (*a2)(unint64_t)@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(char *, uint64_t)@<X3>, Class *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  if (a1 == &type metadata for Unicode.UTF8)
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    v15[2] = v8;
    v15[3] = v9;
    v15[4] = v11;
    v15[5] = v10;
    v15[6] = v12;
    String.withCString<A>(_:)(closure #1 in String.withCString<A, B>(encodedAs:_:)partial apply, v15, v13, v14);
  }

  else
  {
    String._slowWithCString<A, B>(encodedAs:_:)(a2, a3, *v7, *(v7 + 8), a4, a5, a6, a7);
  }
}

uint64_t protocol witness for LosslessStringConvertible.init(_:) in conformance String@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

Swift::UInt64 String.init<A>(_:)(unint64_t *a1, Class *a2)
{
  v4 = *(a2 - 1);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v11 = (&v28 - v10);
  if (v12 == &type metadata for String)
  {
    return *a1;
  }

  if (a2 == &type metadata for Substring)
  {
    v21 = *a1;
    v22._rawBits = a1[1];
    v23 = a1[2];
    v24 = a1[3];
    goto LABEL_9;
  }

  if (a2 == &unk_1EEEBBE38)
  {
    v27 = *a1;
    v28 = 0;
    v29 = 0xE000000000000000;
    specialized String.append<A>(contentsOf:)(v27);
    v27;
  }

  else
  {
    v13 = v9;
    v14 = v4[2];
    v14(&v28 - v10, a1, a2);
    if ((swift_dynamicCast(&v28, v11, a2, &type metadata for String, 6uLL, v15, v16, v17, v28) & 1) == 0)
    {
      v14(v7, a1, a2);
      if (swift_dynamicCast(&v28, v7, a2, &type metadata for Substring, 6uLL, v18, v19, v20, v28))
      {
        (v4[1])(a1, a2);
        v21 = v28;
        v22._rawBits = v29;
        v23 = v30;
        v24 = v31;
LABEL_9:
        v26 = Substring.description.getter(v21, v22, v23, v24);
        v24;
        return v26;
      }

      v28 = 0;
      v29 = 0xE000000000000000;
      String.append<A>(contentsOf:)(a1, a2, v13);
    }

    (v4[1])(a1, a2);
  }

  return v28;
}

void String.append(_:)(unint64_t a1, unint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, int8x16_t a10)
{
  v11 = v10[1];
  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = *v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v12 || (*v10 & ~v11 & 0x2000000000000000) != 0)
  {

    _StringGuts.append(_:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  }

  else
  {
    a2;
    v11;
    *v10 = a1;
    v10[1] = a2;
  }
}

void (*specialized String.replaceSubrange<A>(_:with:)(Swift::String::Index a1, Swift::String::Index a2, unint64_t a3, unint64_t a4))(uint64_t *__return_ptr, void *)
{
  v6 = *v4;
  v5 = v4[1];
  v7 = (*v4 >> 59) & 1;
  if ((v5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  v8 = a1._rawBits & 0xC;
  v9 = 4 << v7;
  v10 = a2._rawBits & 0xC;
  if ((a1._rawBits & 1) != 0 && v8 != v9 && (a2._rawBits & 1) != 0 && v10 != v9)
  {
    v11 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v11 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v11 < a2._rawBits >> 16)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  if (v10 == v9)
  {
    rawBits = a1._rawBits;
    v16 = a3;
    v17 = a4;
    v18._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a2)._rawBits;
    a3 = v16;
    a4 = v17;
    a2._rawBits = v18._rawBits;
    a1._rawBits = rawBits;
    if (v8 != v9)
    {
      goto LABEL_13;
    }

LABEL_26:
    v19 = a2._rawBits;
    v20 = a3;
    v21 = a4;
    a1._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a1)._rawBits;
    a2._rawBits = v19;
    a3 = v20;
    a4 = v21;
    goto LABEL_13;
  }

  if (v8 == v9)
  {
    goto LABEL_26;
  }

LABEL_13:
  v12 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v12 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (a2._rawBits >> 14 > 4 * v12 || a2._rawBits >> 14 < a1._rawBits >> 14)
  {
LABEL_19:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a1._rawBits)
  {
    if (a2._rawBits)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v22 = a1._rawBits;
    v23 = a2._rawBits;
    v24 = a3;
    v25 = a4;
    v26._rawBits = _StringGuts.scalarAlignSlow(_:)(a1)._rawBits;
    a2._rawBits = v23;
    a3 = v24;
    a4 = v25;
    a1._rawBits = v22 & 0xC | v26._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
    if (v23)
    {
      goto LABEL_22;
    }
  }

  v27 = a1._rawBits;
  v28 = a2._rawBits;
  v29 = a3;
  v30 = a4;
  v31._rawBits = _StringGuts.scalarAlignSlow(_:)(a2)._rawBits;
  a3 = v29;
  a4 = v30;
  v32 = v31._rawBits;
  a1._rawBits = v27;
  a2._rawBits = v28 & 0xC | v32 & 0xFFFFFFFFFFFFFFF3 | 1;
LABEL_22:

  return specialized _StringGuts.replaceSubrange<A>(_:with:)(a1._rawBits, a2._rawBits, a3, a4);
}

Swift::UInt64 specialized String.replaceSubrange<A>(_:with:)(Swift::String::Index a1, Swift::String::Index a2, unint64_t a3)
{
  v5 = *v3;
  v4 = v3[1];
  v6 = (*v3 >> 59) & 1;
  if ((v4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v6) = 1;
  }

  v7 = a1._rawBits & 0xC;
  v8 = 4 << v6;
  v9 = a2._rawBits & 0xC;
  if ((a1._rawBits & 1) != 0 && v7 != v8 && (a2._rawBits & 1) != 0 && v9 != v8)
  {
    v10 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v10 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v10 < a2._rawBits >> 16)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  if (v9 == v8)
  {
    rawBits = a1._rawBits;
    v15 = a3;
    v16._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a2)._rawBits;
    a3 = v15;
    a2._rawBits = v16._rawBits;
    a1._rawBits = rawBits;
    if (v7 != v8)
    {
      goto LABEL_13;
    }

LABEL_26:
    v17 = a2._rawBits;
    v18 = a3;
    a1._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a1)._rawBits;
    a2._rawBits = v17;
    a3 = v18;
    goto LABEL_13;
  }

  if (v7 == v8)
  {
    goto LABEL_26;
  }

LABEL_13:
  v11 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v11 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (a2._rawBits >> 14 > 4 * v11 || a2._rawBits >> 14 < a1._rawBits >> 14)
  {
LABEL_19:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a1._rawBits)
  {
    if (a2._rawBits)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v19 = a1._rawBits;
    v20 = a2._rawBits;
    v21 = a3;
    v22._rawBits = _StringGuts.scalarAlignSlow(_:)(a1)._rawBits;
    a2._rawBits = v20;
    a3 = v21;
    a1._rawBits = v19 & 0xC | v22._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
    if (v20)
    {
      goto LABEL_22;
    }
  }

  v23 = a1._rawBits;
  v24 = a2._rawBits;
  v25 = a3;
  v26._rawBits = _StringGuts.scalarAlignSlow(_:)(a2)._rawBits;
  a3 = v25;
  v27 = v26._rawBits;
  a1._rawBits = v23;
  a2._rawBits = v24 & 0xC | v27 & 0xFFFFFFFFFFFFFFF3 | 1;
LABEL_22:

  return specialized _StringGuts.replaceSubrange<A>(_:with:)(a1._rawBits, a2._rawBits, a3);
}

Swift::UInt64 specialized String.replaceSubrange<A>(_:with:)(Swift::String::Index a1, Swift::String::Index a2, unint64_t a3, Swift::UInt64 a4, uint64_t a5, Swift::UInt64 a6)
{
  v8 = *v6;
  v7 = v6[1];
  v9 = (*v6 >> 59) & 1;
  if ((v7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = a1._rawBits & 0xC;
  v11 = 4 << v9;
  v12 = a2._rawBits & 0xC;
  if ((a1._rawBits & 1) != 0 && v10 != v11 && (a2._rawBits & 1) != 0 && v12 != v11)
  {
    v13 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v13 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v13 < a2._rawBits >> 16)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  if (v12 == v11)
  {
    rawBits = a1._rawBits;
    v18 = a3;
    v19 = a6;
    v20 = a5;
    v21 = a4;
    v22._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a2)._rawBits;
    a3 = v18;
    a4 = v21;
    a5 = v20;
    a6 = v19;
    a2._rawBits = v22._rawBits;
    a1._rawBits = rawBits;
    if (v10 != v11)
    {
      goto LABEL_13;
    }

LABEL_26:
    v23 = a2._rawBits;
    v24 = a3;
    v25 = a6;
    v26 = a5;
    v27 = a4;
    a1._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a1)._rawBits;
    a2._rawBits = v23;
    a3 = v24;
    a4 = v27;
    a5 = v26;
    a6 = v25;
    goto LABEL_13;
  }

  if (v10 == v11)
  {
    goto LABEL_26;
  }

LABEL_13:
  v14 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v14 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (a2._rawBits >> 14 > 4 * v14 || a2._rawBits >> 14 < a1._rawBits >> 14)
  {
LABEL_19:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a1._rawBits)
  {
    if (a2._rawBits)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v28 = a1._rawBits;
    v29 = a2._rawBits;
    v30 = a3;
    v31 = a6;
    v32 = a5;
    v33 = a4;
    v34._rawBits = _StringGuts.scalarAlignSlow(_:)(a1)._rawBits;
    a2._rawBits = v29;
    a3 = v30;
    a4 = v33;
    a5 = v32;
    a6 = v31;
    a1._rawBits = v28 & 0xC | v34._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
    if (v29)
    {
      goto LABEL_22;
    }
  }

  v35 = a1._rawBits;
  v36 = a2._rawBits;
  v37 = a3;
  v38 = a6;
  v39 = a5;
  v40 = a4;
  v41._rawBits = _StringGuts.scalarAlignSlow(_:)(a2)._rawBits;
  a3 = v37;
  a4 = v40;
  a5 = v39;
  a6 = v38;
  v42 = v41._rawBits;
  a1._rawBits = v35;
  a2._rawBits = v36 & 0xC | v42 & 0xFFFFFFFFFFFFFFF3 | 1;
LABEL_22:

  return specialized _StringGuts.replaceSubrange<A>(_:with:)(a1._rawBits, a2._rawBits, a3, a4, a5, a6);
}

void (*String.replaceSubrange<A>(_:with:)(Swift::String::Index a1, Swift::String::Index a2, unint64_t *a3, Class *a4, uint64_t a5))(uint64_t *__return_ptr, void *)
{
  if (a4 == &type metadata for String)
  {
    v13 = a3[1];
    v14 = *a3;

    return specialized String.replaceSubrange<A>(_:with:)(a1, a2, v14, v13);
  }

  else if (a4 == &type metadata for Substring)
  {
    v16 = a3[1];
    v17 = a3[2];
    v18 = a3[3];
    v19 = *a3;

    return specialized String.replaceSubrange<A>(_:with:)(a1, a2, v19, v16, v17, v18);
  }

  else
  {
    if (a4 != &unk_1EEEBBE38)
    {
      v7 = *v5;
      v6 = v5[1];
      v8 = (*v5 >> 59) & 1;
      if ((v6 & 0x1000000000000000) == 0)
      {
        LOBYTE(v8) = 1;
      }

      v9 = a1._rawBits & 0xC;
      v10 = 4 << v8;
      v11 = a2._rawBits & 0xC;
      if ((a1._rawBits & 1) != 0 && v9 != v10 && (a2._rawBits & 1) != 0 && v11 != v10)
      {
        v12 = HIBYTE(v6) & 0xF;
        if ((v6 & 0x2000000000000000) == 0)
        {
          v12 = v7 & 0xFFFFFFFFFFFFLL;
        }

        if (v12 < a2._rawBits >> 16)
        {
          goto LABEL_34;
        }

        goto LABEL_28;
      }

      if (v11 == v10)
      {
        v35._rawBits = a1._rawBits;
        v39 = a5;
        v42 = a3;
        v32 = v10;
        v33 = a4;
        v22._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a2)._rawBits;
        a4 = v33;
        a5 = v39;
        a3 = v42;
        a2._rawBits = v22._rawBits;
        a1._rawBits = v35._rawBits;
        if (v9 != v32)
        {
          goto LABEL_22;
        }
      }

      else if (v9 != v10)
      {
        goto LABEL_22;
      }

      v36._rawBits = a2._rawBits;
      v40 = a5;
      v43 = a3;
      v23 = a4;
      a1._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a1)._rawBits;
      a4 = v23;
      a2._rawBits = v36._rawBits;
      a5 = v40;
      a3 = v43;
LABEL_22:
      v20 = v7 & 0xFFFFFFFFFFFFLL;
      if ((v6 & 0x2000000000000000) != 0)
      {
        v20 = HIBYTE(v6) & 0xF;
      }

      if (a2._rawBits >> 14 > 4 * v20 || a2._rawBits >> 14 < a1._rawBits >> 14)
      {
LABEL_34:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (a1._rawBits)
      {
        if (a2._rawBits)
        {
LABEL_28:

          return _StringGuts.replaceSubrange<A>(_:with:)(a1._rawBits, a2._rawBits, a3, a4, a5);
        }
      }

      else
      {
        rawBits = a1._rawBits;
        v37._rawBits = a2._rawBits;
        v41 = a5;
        v44 = a3;
        v34 = a4;
        v25._rawBits = _StringGuts.scalarAlignSlow(_:)(a1)._rawBits;
        a4 = v34;
        a2._rawBits = v37._rawBits;
        a5 = v41;
        a3 = v44;
        a1._rawBits = rawBits & 0xC | v25._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
        if (v37._rawBits)
        {
          goto LABEL_28;
        }
      }

      v38._rawBits = a1._rawBits;
      v26 = a2._rawBits;
      v27 = a3;
      v28 = a5;
      v29 = a4;
      v30._rawBits = _StringGuts.scalarAlignSlow(_:)(a2)._rawBits;
      a4 = v29;
      a5 = v28;
      a3 = v27;
      v31 = v30._rawBits;
      a1._rawBits = v38._rawBits;
      a2._rawBits = v26 & 0xC | v31 & 0xFFFFFFFFFFFFFFF3 | 1;
      goto LABEL_28;
    }

    v21 = *a3;

    return specialized String.replaceSubrange<A>(_:with:)(a1, a2, v21);
  }
}

Swift::Void __swiftcall String.insert(_:at:)(Swift::String _, Swift::String::Index at)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v4._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(at)._rawBits;

  specialized _StringGuts.replaceSubrange<A>(_:with:)(v4._rawBits, v4._rawBits, countAndFlagsBits, object);
}

void (*String.insert<A>(contentsOf:at:)(unint64_t *a1, Swift::String::Index a2, Class *a3, uint64_t a4))(uint64_t *__return_ptr, void *)
{
  if (a3 == &type metadata for String)
  {
    v9 = *a1;
    v10 = a1[1];
    v11._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(a2)._rawBits;

    return specialized _StringGuts.replaceSubrange<A>(_:with:)(v11._rawBits, v11._rawBits, v9, v10);
  }

  else if (a3 == &type metadata for Substring)
  {
    v12 = *a1;
    v13 = a1[1];
    v14 = a1[2];
    v15 = a1[3];
    v16._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(a2)._rawBits;

    return specialized _StringGuts.replaceSubrange<A>(_:with:)(v16._rawBits, v16._rawBits, v12, v13, v14, v15);
  }

  else if (a3 == &unk_1EEEBBE38)
  {
    v17 = *a1;
    v18._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(a2)._rawBits;

    return specialized _StringGuts.replaceSubrange<A>(_:with:)(v18._rawBits, v18._rawBits, v17);
  }

  else
  {
    v7._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(a2)._rawBits;

    return _StringGuts.replaceSubrange<A>(_:with:)(v7._rawBits, v7._rawBits, a1, a3, a4);
  }
}

Swift::String __swiftcall String.remove(at:)(Swift::String::Index at)
{
  v2 = *v1;
  v3 = v1[1];
  v4._rawBits = _StringGuts.validateScalarIndex(_:)(at)._rawBits;
  v5 = (v4._rawBits >> 8) & 0x3F;
  v6 = v4._rawBits >> 16;
  if (!v5)
  {
    v7 = v2 & 0xFFFFFFFFFFFFLL;
    if ((v3 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(v3) & 0xF;
    }

    else
    {
      v8 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (v4._rawBits >> 14 == 4 * v8)
    {
      v5 = 0;
      goto LABEL_22;
    }

    if ((v3 & 0x1000000000000000) != 0)
    {
      goto LABEL_37;
    }

    if ((v3 & 0x2000000000000000) != 0)
    {
      v34 = v2;
      v35 = v3 & 0xFFFFFFFFFFFFFFLL;
      if (v6 + 1 == (HIBYTE(v3) & 0xF))
      {
        goto LABEL_21;
      }

      v10 = *(&v34 + v6);
    }

    else
    {
      if ((v2 & 0x1000000000000000) != 0)
      {
        v9 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v9 = _StringObject.sharedUTF8.getter(v2, v3);
      }

      if (v6 + 1 == v7)
      {
        goto LABEL_21;
      }

      if (!v9)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v10 = *&v9[v6];
    }

    if (v10 == 2573 || (v10 & 0x8080) != 0)
    {
LABEL_37:
      v5 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v4._rawBits >> 16);
      goto LABEL_22;
    }

LABEL_21:
    v5 = 1;
  }

LABEL_22:
  v12 = v5 + v6;
  v13 = (v5 + v6) & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x1000000000000000) != 0)
  {
    v29 = _StringGuts.foreignErrorCorrectedGrapheme(startingAt:endingAt:)(v4._rawBits >> 16, v13);
    object = v29._object;
    countAndFlagsBits = v29._countAndFlagsBits;
    goto LABEL_32;
  }

  if (v13 < v6)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v3 & 0x2000000000000000) != 0)
  {
    v34 = v2;
    v35 = v3 & 0xFFFFFFFFFFFFFFLL;
    if ((HIBYTE(v3) & 0xF) >= v13)
    {
      v18 = v13 - v6;
      if ((v13 - v6) >= 0)
      {
        v22 = _allASCII(_:)((&v34 + v6), v13 - v6);
        v21 = &v34 + v6;
        v19 = v22;
        goto LABEL_31;
      }
    }

    goto LABEL_36;
  }

  if ((v2 & 0x1000000000000000) == 0)
  {
    v30 = v2;
    v31 = v13;
    v14 = _StringObject.sharedUTF8.getter(v30, v3);
    v15 = v32;
    v13 = v31;
    if (v15 >= v31)
    {
      goto LABEL_27;
    }

LABEL_36:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v14 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
  v15 = v2 & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0xFFFFFFFFFFFFLL) < v13)
  {
    goto LABEL_36;
  }

LABEL_27:
  v16 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v4._rawBits >> 16, v13, v14, v15);
  v18 = v17;
  v19 = _allASCII(_:)(v16, v17);
  v21 = v16;
LABEL_31:
  countAndFlagsBits = specialized static String._uncheckedFromUTF8(_:isASCII:)(v21, v18, v19, v20);
LABEL_32:
  v25 = countAndFlagsBits;
  v26 = object;
  _StringGuts.remove(from:to:)(v4, ((v12 << 16) | 1));
  v27 = v25;
  v28 = v26;
  result._object = v28;
  result._countAndFlagsBits = v27;
  return result;
}

void String.removeSubrange(_:)(Swift::String::Index a1, Swift::String::Index a2)
{
  v3._rawBits = _StringGuts.validateScalarRange(_:)(a1, a2, *v2, v2[1])._rawBits;

  _StringGuts.remove(from:to:)(v3, v4);
}

Swift::Void __swiftcall String.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  if (!keepingCapacity)
  {
    v6 = v1[1];
LABEL_9:
    v6;
    *v1 = 0;
    v1[1] = 0xE000000000000000;
    return;
  }

  v2 = v1[1];
  if ((*v1 & ~v2 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v2 & 0xFFFFFFFFFFFFFFFLL))
  {
    v6 = v2;
    goto LABEL_9;
  }

  v3 = 0xF000000000000000;
  *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x18) = 0xF000000000000000;
  *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x20) = 0;
  if ((*((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10) & 0x8000000000000000) != 0)
  {
    v4 = __StringStorage._breadcrumbsAddress.getter();
    v5 = *v4;
    *v4 = 0;
    v5;
    v3 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  }

  *v1 = v3;
}

uint64_t protocol witness for RangeReplaceableCollection.init(repeating:count:) in conformance String@<X0>(Swift::Int count@<X1>, Swift::String *a2@<X0>, Swift::String *a3@<X8>)
{
  v5 = String.init(repeating:count:)(*a2, count);
  result = v5._countAndFlagsBits;
  *a3 = v5;
  return result;
}

Swift::UInt64 protocol witness for RangeReplaceableCollection.init<A>(_:) in conformance String@<X0>(unint64_t *a1@<X0>, Class *a2@<X1>, Swift::UInt64 *a3@<X8>)
{
  result = String.init<A>(_:)(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

void protocol witness for RangeReplaceableCollection.append(_:) in conformance String(uint64_t *a1)
{
  v1 = a1[1];
  v2._countAndFlagsBits = *a1;
  v2._object = v1;
  String.write(_:)(v2);

  v1;
}

void protocol witness for RangeReplaceableCollection.insert(_:at:) in conformance String(unint64_t *a1, Swift::String::Index *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(a2->_rawBits)._rawBits;
  specialized _StringGuts.replaceSubrange<A>(_:with:)(v4._rawBits, v4._rawBits, v2, v3);

  v3;
}

uint64_t protocol witness for RangeReplaceableCollection.remove(at:) in conformance String@<X0>(Swift::String::Index *a1@<X0>, Swift::String *a2@<X8>)
{
  v4 = String.remove(at:)(a1->_rawBits);
  result = v4._countAndFlagsBits;
  *a2 = v4;
  return result;
}

void protocol witness for RangeReplaceableCollection.removeSubrange(_:) in conformance String(Swift::UInt64 *a1)
{
  v2._rawBits = a1[1];
  v3._rawBits = *a1;
  v4._rawBits = _StringGuts.validateScalarRange(_:)(v3, v2, *v1, v1[1])._rawBits;

  _StringGuts.remove(from:to:)(v4, v5);
}

uint64_t protocol witness for RangeReplaceableCollection.removeFirst() in conformance String@<X0>(uint64_t *a1@<X8>)
{
  result = specialized RangeReplaceableCollection.removeFirst()();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Void __swiftcall String._boundsCheck(_:)(Swift::String::Index a1)
{
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3 <= a1._rawBits >> 16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }
}

void String._boundsCheck(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < a2 >> 16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }
}

{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= a2 >> 16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }
}

uint64_t String.max<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v9 = (*(a4 + 32))(a2, a1, a3, a4);
  v10 = *(*(a3 - 8) + 16);
  if (v9)
  {
    v11 = a2;
  }

  else
  {
    v11 = a1;
  }

  return v10(a5, v11, a3);
}

uint64_t String.min<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v9 = (*(a4 + 16))(a2, a1, a3, a4);
  v10 = *(*(a3 - 8) + 16);
  if (v9)
  {
    v11 = a2;
  }

  else
  {
    v11 = a1;
  }

  return v10(a5, v11, a3);
}

void static Sequence<>.+ infix(_:_:)()
{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/StringRangeReplaceableCollection.swift", 0x2CuLL, 2, 0x168uLL, 0);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/StringRangeReplaceableCollection.swift", 0x2CuLL, 2, 0x16DuLL, 0);
}

Swift::Int __swiftcall Int.init(_:)(Swift::Float a1)
{
  if ((LODWORD(a1) & 0x7FFFFFFFu) >= 0x7F800000 || a1 <= -9.2234e18 || a1 >= 9.2234e18)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1;
}

int64_t _allocateStringStorage(codeUnitCapacity:)(int64_t result)
{
  v2 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  v1 = 8 * (result > 63);
  v3 = __OFADD__(v2, v1);
  v2 += v1;
  if (v3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = __OFADD__(v2, 32);
  v2 += 32;
  if (v3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v2 <= 127)
  {
    v4 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
    v5 = v4 - 32;
    if (__OFSUB__(v4, 32))
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v6 = type metadata accessor for __StringStorage();
    result = swift_allocObject(v6, (v5 + 32), 7uLL);
    if (!__OFSUB__(v5, v1))
    {
      return result;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_11:
  v7 = v2 + 15;
  if (__OFADD__(v2, 15))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = type metadata accessor for __StringStorage();
  v9 = swift_allocObject(v8, (v7 & 0xFFFFFFFFFFFFFFF0), 7uLL);
  result = _swift_stdlib_malloc_size(v9);
  v10 = result - 32;
  if (__OFSUB__(result, 32))
  {
LABEL_18:
    __break(1u);
    return result;
  }

  result = v9;
  if (__OFSUB__(v10, v1))
  {
    goto LABEL_15;
  }

  return result;
}

unint64_t __StringStorage._breadcrumbsAddress.getter()
{
  v1 = *(v0 + 16);
  if ((v1 & 0x8000000000000000) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (v0 + (v1 & 0xFFFFFFFFFFFFLL) + 39) & 0xFFFFFFFFFFFFFFF8;
}

void __StringStorage.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  if (v1 < 0)
  {
    outlined destroy of _HasContiguousBytes?((v0 + (v1 & 0xFFFFFFFFFFFFLL) + 39) & 0xFFFFFFFFFFFFFFF8, &_ss18_StringBreadcrumbsCSgMd, _ss18_StringBreadcrumbsCSgMR);
  }

  swift_deallocClassInstance(v0);
}

uint64_t __SharedStringStorage.__ivar_destroyer()
{
  swift_unknownObjectRelease(*(v0 + 16));
  v1 = *(v0 + 40);

  return v1;
}

void __SharedStringStorage.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    if (*(v0 + 48) == 1)
    {
      v1 = 0;
    }

    else
    {
      *(v0 + 24);
      v1 = *(v0 + 16);
    }
  }

  v0;
  swift_unknownObjectRelease(v1);
  v2 = *(v0 + 40);
  v0;
  v2;

  swift_deallocClassInstance(v0);
}

void *_StringGuts.loadUnmanagedBreadcrumbs()(uint64_t a1, unint64_t a2)
{
  v4 = a2 & 0xFFFFFFFFFFFFFFFLL;
  if ((a1 & ~a2 & 0x2000000000000000) != 0)
  {
    v5 = __StringStorage._breadcrumbsAddress.getter();
    explicit = atomic_load_explicit(v5, memory_order_acquire);
    if (explicit)
    {
      return explicit;
    }
  }

  else
  {
    v5 = (v4 + 40);
    explicit = atomic_load_explicit((v4 + 40), memory_order_acquire);
    if (explicit)
    {
      return explicit;
    }
  }

  v7 = type metadata accessor for _StringBreadcrumbs();
  explicit = swift_allocObject(v7, 0x20, 7uLL);
  a2;
  _StringBreadcrumbs.init(_:)(a1, a2);
  v8 = explicit;
  v9 = 0;
  atomic_compare_exchange_strong(v5, &v9, explicit);
  v8;
  if (v9)
  {
    explicit;
    return v9;
  }

  return explicit;
}

uint64_t String.init(_nativeStorage:)(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_4;
  }

  v2 = _swift_classOfObjCHeapObject(a1);
  if (type metadata accessor for __StringStorage() == v2)
  {
    v4 = 24;
  }

  else
  {
    if (type metadata accessor for __SharedStringStorage() != v2)
    {
LABEL_4:
      swift_unknownObjectRelease(a1);
      return 0;
    }

    v4 = 32;
  }

  return *(a1 + v4);
}

uint64_t specialized _AbstractStringStorage._lengthOfBytes(using:)(uint64_t a1)
{
  if (a1 > 9)
  {
    if (a1 == 10)
    {
      v7 = String.UTF16View.count.getter();
      if (v7 < 0)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      return 2 * v7;
    }

    if (a1 == 30)
    {
      v4 = v1[3];
      v3 = v4 & 0xFFFFFFFFFFFFLL;
      if (v4 < 0 || _allASCII(_:)(v1 + 4, v4 & 0xFFFFFFFFFFFFLL))
      {
        return v3;
      }
    }
  }

  else
  {
    if (a1 == 1)
    {
      v6 = v1[3];
      v3 = v6 & 0xFFFFFFFFFFFFLL;
      if ((v6 & 0x8000000000000000) == 0 && !_allASCII(_:)(v1 + 4, v6 & 0xFFFFFFFFFFFFLL))
      {
        return 0;
      }

      return v3;
    }

    if (a1 == 4)
    {
      return v1[3] & 0xFFFFFFFFFFFFLL;
    }
  }

  return _swift_stdlib_NSStringLengthOfBytesInEncodingTrampoline(v1, a1);
}

{
  if (a1 > 9)
  {
    if (a1 == 10)
    {
      v7 = String.UTF16View.count.getter();
      if (v7 < 0)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      return 2 * v7;
    }

    if (a1 == 30)
    {
      v4 = *(v1 + 32);
      v3 = v4 & 0xFFFFFFFFFFFFLL;
      if (v4 < 0 || _allASCII(_:)(*(v1 + 24), v4 & 0xFFFFFFFFFFFFLL))
      {
        return v3;
      }
    }
  }

  else
  {
    if (a1 == 1)
    {
      v6 = *(v1 + 32);
      v3 = v6 & 0xFFFFFFFFFFFFLL;
      if ((v6 & 0x8000000000000000) == 0 && !_allASCII(_:)(*(v1 + 24), v6 & 0xFFFFFFFFFFFFLL))
      {
        return 0;
      }

      return v3;
    }

    if (a1 == 4)
    {
      return *(v1 + 32) & 0xFFFFFFFFFFFFLL;
    }
  }

  return _swift_stdlib_NSStringLengthOfBytesInEncodingTrampoline(v1, a1);
}

unint64_t static UInt.* infix(_:_:)(unint64_t result, unint64_t a2)
{
  if (is_mul_ok(result, a2))
  {
    result *= a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL specialized _AbstractStringStorage._nativeIsEqual<A>(_:)(uint64_t a1)
{
  v2 = *(v1 + 32) & 0xFFFFFFFFFFFFLL;
  if (v2 != (*(a1 + 24) & 0xFFFFFFFFFFFFLL))
  {
    return 0;
  }

  if (*(v1 + 24) == a1 + 32)
  {
    return 1;
  }

  return memcmp(*(v1 + 24), (a1 + 32), v2) == 0;
}

{
  v2 = *(v1 + 24) & 0xFFFFFFFFFFFFLL;
  if (v2 != (*(a1 + 32) & 0xFFFFFFFFFFFFLL))
  {
    return 0;
  }

  v3 = *(a1 + 24);
  return (v1 + 32) == v3 || memcmp((v1 + 32), v3, v2) == 0;
}

{
  v2 = *(v1 + 32) & 0xFFFFFFFFFFFFLL;
  if (v2 != (*(a1 + 32) & 0xFFFFFFFFFFFFLL))
  {
    return 0;
  }

  v3 = *(a1 + 24);
  return *(v1 + 24) == v3 || memcmp(*(v1 + 24), v3, v2) == 0;
}

Swift::UInt16 __swiftcall __StringStorage.character(at:)(Swift::Int at)
{
  v2 = *(v1 + 24);
  v3._rawBits = String.UTF16View.index(_:offsetBy:)(15, at)._rawBits;
  rawBits = v3._rawBits;
  v5 = (v2 >> 59) & 1;
  if ((v1 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((v3._rawBits & 0xC) == 4 << v5)
  {
    rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v3)._rawBits;
  }

  v6 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v6 = v2 & 0xFFFFFFFFFFFFLL;
  }

  v7 = rawBits >> 16;
  if (rawBits >> 16 >= v6)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v1 & 0x1000000000000000) != 0)
  {

    return String.UTF16View._foreignSubscript(position:)(rawBits);
  }

  else
  {
    if ((rawBits & 1) == 0)
    {
      v7 = _StringGuts.scalarAlignSlow(_:)(rawBits)._rawBits >> 16;
    }

    v1;
    LODWORD(v8) = _StringGuts.fastUTF8Scalar(startingAt:)(v7);
    v9 = Unicode.Scalar.UTF16View.subscript.getter(rawBits >> 14, v8);
    v1;
    return v9;
  }
}

uint64_t String.UTF16View.subscript.getter(Swift::String::Index a1, unint64_t a2, unint64_t a3)
{
  rawBits = a1._rawBits;
  v4 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v4) = 1;
  }

  if ((a1._rawBits & 0xC) == 4 << v4)
  {
    v9 = a2;
    v10 = a3;
    v11._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a1)._rawBits;
    a2 = v9;
    a3 = v10;
    rawBits = v11._rawBits;
  }

  v5 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v5 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v6 = rawBits >> 16;
  if (rawBits >> 16 >= v5)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((a3 & 0x1000000000000000) != 0)
  {

    return String.UTF16View._foreignSubscript(position:)(rawBits);
  }

  else
  {
    if ((rawBits & 1) == 0)
    {
      v6 = _StringGuts.scalarAlignSlow(_:)(rawBits)._rawBits >> 16;
    }

    LODWORD(v7) = _StringGuts.fastUTF8Scalar(startingAt:)(v6);

    return Unicode.Scalar.UTF16View.subscript.getter(rawBits >> 14, v7);
  }
}

void __StringStorage.getCharacters(_:range:)(unint64_t a1, Swift::UInt64 a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) != 0 || a3 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = a2 + a3;
  if (__OFADD__(a2, a3))
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(v3 + 24);
  if ((v6 & 0xFFFFFFFFFFFFLL) < v5)
  {
    goto LABEL_10;
  }

  if (__OFSUB__(v5, a2))
  {
    __break(1u);
LABEL_14:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a3 < 0)
  {
    goto LABEL_14;
  }

  v3;
  v8._rawBits = a2;
  v9._rawBits = 15;
  v10._rawBits = String.UTF16View._indexRange(for:from:)(v8, v5, v9, v6, v3)._rawBits;
  String.UTF16View._nativeCopy(into:alignedRange:)(a1, v5 - a2, v10._rawBits, v11, v6, v3);

  v3;
}

uint64_t __StringStorage.getCString(_:maxLength:encoding:)(char *__dst, uint64_t a2, unint64_t a3)
{
  v5 = *(v3 + 24);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (a3 != 4)
    {
      goto LABEL_3;
    }

LABEL_7:
    if ((v5 & 0xFFFFFFFFFFFFLL) >= a2)
    {
      return 0;
    }

    specialized UnsafeMutablePointer.initialize(from:count:)((v3 + 32), v5 & 0xFFFFFFFFFFFFLL, __dst);
    __dst[*(v3 + 24) & 0xFFFFFFFFFFFFLL] = 0;
    return 1;
  }

  if (a3 <= 0x1E && ((1 << a3) & 0x40000012) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  CStringTrampoline = _swift_stdlib_NSStringGetCStringTrampoline(v3, __dst, a2, a3);
  if (CStringTrampoline < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return CStringTrampoline;
}

uint64_t __StringStorage.isEqualToString(to:)(uint64_t result, uint64_t a2, void (*a3)(uint64_t *__return_ptr, void *), double a4)
{
  if (result)
  {
    v5 = result;
    if (result == v4)
    {
      return 1;
    }

    if (result < 0)
    {
      goto LABEL_9;
    }

    v7 = *v4;
    v8 = _swift_classOfObjCHeapObject(result);
    if (v7 == v8)
    {
      v9 = v4[3] & 0xFFFFFFFFFFFFLL;
      if (v9 == (v5[3] & 0xFFFFFFFFFFFFLL))
      {
        return memcmp(v4 + 4, v5 + 4, v9) == 0;
      }

      return 0;
    }

    if (type metadata accessor for __SharedStringStorage() == v8)
    {

      return specialized _AbstractStringStorage._nativeIsEqual<A>(_:)(v5);
    }

    else
    {
LABEL_9:
      result = _swift_stdlib_isNSString(a4);
      if (result)
      {
        v10 = [v5 length];
        v14 = MEMORY[0x1EEE9AC00](v10, v11);
        MEMORY[0x1EEE9AC00](v14, v12);
        v13 = specialized _withCocoaASCIIPointer<A>(_:requireStableAddress:work:)(v5, a3);
        if (v13 == 2)
        {
          if (String.UTF16View.count.getter() == v10)
          {
            return [v4 compare:v5 options:2 range:0 locale:{objc_msgSend(v4, sel_length), 0}] == 0;
          }

          return 0;
        }

        return v13 & 1;
      }
    }
  }

  return result;
}