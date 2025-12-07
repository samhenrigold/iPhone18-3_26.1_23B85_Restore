unint64_t Sequence<>.joined(separator:)(unint64_t a1, unint64_t a2, Class *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v351 = a5;
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v12 = v11;
  v367 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v352 = (&v340 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v349 = &v340 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v358 = (&v340 - v21);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v359 = (&v340 - v24);
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v355 = &v340 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v362 = &v340 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v365 = &v340 - v33;
  MEMORY[0x1EEE9AC00](v32, v34);
  v353 = (&v340 - v35);
  v348 = type metadata accessor for Optional(0, v12, v36, v37);
  v347 = *(v348 - 8);
  v39 = MEMORY[0x1EEE9AC00](v348, v38);
  v361 = &v340 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v39, v41);
  v44 = &v340 - v43;
  v46 = MEMORY[0x1EEE9AC00](v42, v45);
  v364 = &v340 - v47;
  v48 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v46, v49);
  v51 = &v340 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v370 = v52;
  v54 = MEMORY[0x1EEE9AC00](v52, v53);
  MEMORY[0x1EEE9AC00](v54, v55);
  v366 = &v340 - v58;
  if (a3 == &unk_1EEEBBE70)
  {
    return specialized Sequence<>.joined(separator:)(a1, a2, *v6);
  }

  v363 = a1;
  v360 = a2;
  if (a3 == &unk_1EEEBD150)
  {
    return specialized Sequence<>.joined(separator:)(v363, v360, *v6);
  }

  v357 = v57;
  v343 = v56;
  v368 = v12;
  v350 = HIBYTE(v360) & 0xF;
  v356 = v363 & 0xFFFFFFFFFFFFLL;
  if ((v360 & 0x2000000000000000) != 0)
  {
    v59 = HIBYTE(v360) & 0xF;
  }

  else
  {
    v59 = v363 & 0xFFFFFFFFFFFFLL;
  }

  v60 = (*(a4 + 40))(a3, a4);
  v61 = v60 + v60 * v59;
  v373 = 0;
  v374 = 0xE000000000000000;
  if (v61 >= 16)
  {
    v62 = _StringGuts.uniqueNativeCapacity.getter();
    if ((v63 & 1) != 0 || v62 < v61)
    {
      v65 = 2 * _StringGuts.uniqueNativeCapacity.getter();
      if (v65 <= v61)
      {
        v65 = v61;
      }

      if (v64)
      {
        v66 = v61;
      }

      else
      {
        v66 = v65;
      }

      v371 = 0;
      v372 = 0;
      v67 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(&v371, 0, v66, 1);
      v68 = *(v67 + 24);
      0xE000000000000000;
      v373 = v68;
      v374 = v67;
    }
  }

  (*(v48 + 16))(v51, v6, a3);
  v69 = *(a4 + 32);
  v70 = v367;
  v71 = (v367 + 48);
  if (v59)
  {
    v344 = v59;
    v72 = v357;
    v69(a3, a4);
    v73 = a4;
    v74 = v370;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v73, a3, v370, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v76 = *(AssociatedConformanceWitness + 16);
    v365 = (AssociatedConformanceWitness + 16);
    v366 = AssociatedConformanceWitness;
    v364 = v76;
    (v76)(v74);
    v77 = v368;
    v362 = *v71;
    if ((v362)(v44, 1, v368) == 1)
    {
      (*(v343 + 8))(v72, v74);
      (*(v347 + 8))(v44, v348);
      return v373;
    }

    v88 = v353;
    v354 = *(v70 + 32);
    v355 = (v70 + 32);
    (v354)(v353, v44, v77);
    v369 = (v70 + 48);
    if (v77 == &type metadata for String)
    {
      v112 = *v88;
      v117 = v88[1];
      v117;
    }

    else
    {
      if (v77 == &type metadata for Substring)
      {
        v164 = *v88;
        v165 = v88[1];
        v166 = v88[2];
        v167 = v88[3];
        v167;
        v168._rawBits = v165;
        v90 = _sSSySSxcs25LosslessStringConvertibleRzSTRzSJ7ElementSTRtzlufCSs_Tt0g5(v164, v168, v166, v167);
      }

      else
      {
        v89 = v352;
        (*(v70 + 16))(v352, v88, v77);
        v90 = String.init<A>(_:)(v89, v77);
      }

      v112 = v90;
      v117 = v91;
    }

    v169 = *(v70 + 8);
    v353 = (v70 + 8);
    v352 = v169;
    (v169)(v88, v77);
    v107 = v373;
    v110 = v374;
    v170 = HIBYTE(v374) & 0xF;
    v108 = (v373 & 0xFFFFFFFFFFFFLL);
    if ((v374 & 0x2000000000000000) != 0)
    {
      v113 = HIBYTE(v374) & 0xF;
    }

    else
    {
      v113 = v373 & 0xFFFFFFFFFFFFLL;
    }

    if (v113 || (v373 & ~v374 & 0x2000000000000000) != 0)
    {
      LOBYTE(v101) = (v117 & 0x2000000000000000) == 0;
      v115 = HIBYTE(v117) & 0xF;
      if ((v374 & 0x2000000000000000) != 0)
      {
        if ((v117 & 0x2000000000000000) != 0)
        {
          v191 = v170 + v115;
          if (v170 + v115 < 0x10)
          {
            if (v115)
            {
              v204 = 0;
              v205 = 0;
              v206 = 8 * v170;
              v207 = 8 * v115;
              v208 = v374;
              v113 = v368;
              v188 = v370;
              v101 = v360;
              do
              {
                v209 = v117 >> (v204 & 0x38);
                if (v205 < 8)
                {
                  v209 = v112 >> v204;
                }

                v210 = (v209 << (v206 & 0x38)) | ((-255 << (v206 & 0x38)) - 1) & v208;
                v211 = (v209 << v206) | ((-255 << v206) - 1) & v107;
                if (v170 <= 7)
                {
                  v107 = v211;
                }

                else
                {
                  v208 = v210;
                }

                ++v170;
                v206 += 8;
                v204 += 8;
                ++v205;
              }

              while (v207 != v204);
            }

            else
            {
              v208 = v374;
              v113 = v368;
              v188 = v370;
              v101 = v360;
            }

            v374;
            v117;
            v212 = 0xA000000000000000;
            if (!(v107 & 0x8080808080808080 | v208 & 0x80808080808080))
            {
              v212 = 0xE000000000000000;
            }

            v373 = v107;
            v374 = v212 & 0xFF00000000000000 | (v191 << 56) | v208 & 0xFFFFFFFFFFFFFFLL;
            goto LABEL_192;
          }

          LOBYTE(v101) = 0;
          v171 = v112 & 0xFFFFFFFFFFFFLL;
          v100 = HIBYTE(v117) & 0xF;
LABEL_132:
          v346 = v171;
          if ((v117 & 0x1000000000000000) != 0)
          {
            goto LABEL_363;
          }

          v117;
          v173 = v100;
          if ((v110 & 0x1000000000000000) != 0)
          {
            goto LABEL_366;
          }

          goto LABEL_134;
        }

        v171 = v112 & 0xFFFFFFFFFFFFLL;
        LOBYTE(v101) = 1;
      }

      else
      {
        v171 = v112 & 0xFFFFFFFFFFFFLL;
        v100 = HIBYTE(v117) & 0xF;
        if ((v117 & 0x2000000000000000) != 0)
        {
          goto LABEL_132;
        }
      }

      v100 = v171;
      goto LABEL_132;
    }

    v374;
    v373 = v112;
    v374 = v117;
    goto LABEL_176;
  }

  v69(a3, a4);
  v79 = v370;
  v80 = swift_getAssociatedConformanceWitness(a4, a3, v370, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v81 = *(v80 + 16);
  v82 = v364;
  v363 = v80;
  v360 = v81;
  v361 = (v80 + 16);
  v81(v79);
  v83 = *v71;
  v84 = v368;
  v369 = v71;
  v359 = v83;
  v85 = (v83)(v82, 1, v368);
  v86 = v362;
  v87 = v365;
  if (v85 == 1)
  {
LABEL_21:
    (*(v343 + 8))(v366, v79);
    return v373;
  }

  v92 = *(v367 + 32);
  v354 = (v367 + 16);
  v367 += 32;
  v93 = (v367 - 24);
  v357 = (v367 - 24);
  v358 = v92;
  v92(v365, v82, v84);
  while (1)
  {
    if (v84 == &type metadata for String)
    {
      v100 = *v87;
      v101 = *(v87 + 1);
LABEL_39:
      v101;
      goto LABEL_42;
    }

    if (v84 != &type metadata for Substring)
    {
      v95 = *v354;
      (*v354)(v86, v87, v84);
      v96 = v355;
      v95(v355, v86, v84);
      if (swift_dynamicCast(&v371, v96, v84, &type metadata for String, 6uLL, v97, v98, v99, v340))
      {
        (*v93)(v86, v84);
        v100 = v371;
        v101 = v372;
      }

      else
      {
        v100 = (*(*(*(v351 + 40) + 8) + 8))(v84);
        v101 = v105;
        (*v93)(v86, v84);
      }

      goto LABEL_42;
    }

    v102 = *v87;
    v103._rawBits = *(v87 + 1);
    v100 = *(v87 + 2);
    v101 = *(v87 + 3);
    v104 = HIBYTE(v101) & 0xF;
    if ((v101 & 0x2000000000000000) == 0)
    {
      v104 = v100 & 0xFFFFFFFFFFFFLL;
    }

    if (!(v102 >> 16) && v103._rawBits >> 16 == v104)
    {
      goto LABEL_39;
    }

    v100 = specialized static String._copying(_:)(v102, v103, *(v87 + 2), *(v87 + 3));
    v101 = v106;
LABEL_42:
    (*v93)(v87, v84);
    v108 = v373;
    v107 = v374;
    v109 = HIBYTE(v374) & 0xF;
    v110 = v373 & 0xFFFFFFFFFFFFLL;
    if ((v374 & 0x2000000000000000) != 0)
    {
      v111 = HIBYTE(v374) & 0xF;
    }

    else
    {
      v111 = v373 & 0xFFFFFFFFFFFFLL;
    }

    if (!v111 && (v373 & ~v374 & 0x2000000000000000) == 0)
    {
      v374;
      v373 = v100;
      v374 = v101;
      goto LABEL_27;
    }

    v112 = (v101 & 0x2000000000000000) == 0;
    v113 = HIBYTE(v101) & 0xF;
    if ((v374 & 0x2000000000000000) != 0)
    {
      break;
    }

    v114 = v100 & 0xFFFFFFFFFFFFLL;
    v115 = HIBYTE(v101) & 0xF;
    if ((v101 & 0x2000000000000000) == 0)
    {
      goto LABEL_52;
    }

LABEL_53:
    v356 = v114;
    if ((v101 & 0x1000000000000000) != 0)
    {
      goto LABEL_82;
    }

LABEL_54:
    v101;
    v117 = v115;
    if ((v107 & 0x1000000000000000) != 0)
    {
      goto LABEL_85;
    }

LABEL_55:
    v118 = __OFADD__(v111, v117);
    v119 = v111 + v117;
    if (v118)
    {
      goto LABEL_360;
    }

LABEL_56:
    if ((*&v108 & ~v107 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v107 & 0xFFFFFFFFFFFFFFFLL))
    {
      if (v119 >= 16)
      {
        goto LABEL_67;
      }

      if ((v107 & 0x2000000000000000) != 0)
      {
LABEL_73:
        v123 = v107;
        goto LABEL_74;
      }

LABEL_62:
      if ((v107 & 0x1000000000000000) != 0)
      {
        v108 = _StringGuts._foreignConvertedToSmall()(*&v108, v107);
        v123 = v156;
LABEL_74:
        v84 = v368;
      }

      else
      {
        if ((*&v108 & 0x1000000000000000) != 0)
        {
          v122 = ((v107 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v122 = _StringObject.sharedUTF8.getter(*&v108, v107);
          v110 = v161;
        }

        v84 = v368;
        closure #1 in _StringGuts._convertedToSmall()(v122, v110, &v371, v116);
        v108 = v371;
        v123 = v372;
      }

      v101;
      v129._rawBits = 1;
      v130._rawBits = (v115 << 16) | 1;
      v131._rawBits = _StringGuts.validateScalarRange(_:)(v129, v130, v100, v101)._rawBits;
      if (v131._rawBits < 0x10000)
      {
        v131._rawBits |= 3;
      }

      if (v131._rawBits >> 16 || v132._rawBits >> 16 != v115)
      {
        v100 = specialized static String._copying(_:)(v131._rawBits, v132, v100, v101);
        v134 = v141;
        v101;
      }

      else
      {
        v134 = v101;
      }

      v79 = v370;
      v93 = v357;
      if ((v134 & 0x2000000000000000) != 0)
      {
        v134;
      }

      else if ((v134 & 0x1000000000000000) != 0)
      {
        v100 = _StringGuts._foreignConvertedToSmall()(v100, v134);
        v163 = v162;
        v134;
        v134 = v163;
      }

      else
      {
        if ((v100 & 0x1000000000000000) != 0)
        {
          v157 = ((v134 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v158 = v100 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v157 = _StringObject.sharedUTF8.getter(v100, v134);
        }

        closure #1 in _StringGuts._convertedToSmall()(v157, v158, &v371, v133);
        v134;
        v100 = v371;
        v134 = v372;
      }

      v142 = specialized _SmallString.init(_:appending:)(*&v108, v123, v100, v134);
      if (v144)
      {
        goto LABEL_380;
      }

      v145 = v142;
      v146 = v143;
      v107;
      swift_bridgeObjectRelease_n(v101, 2);
      v373 = v145;
      v374 = v146;
      v86 = v362;
LABEL_108:
      v94 = v364;
      v87 = v365;
      goto LABEL_28;
    }

    v120 = _StringGuts.nativeUnusedCapacity.getter(*&v108, v107);
    if (v121)
    {
      goto LABEL_380;
    }

    if (v119 <= 15)
    {
      if ((v107 & 0x2000000000000000) != 0)
      {
        goto LABEL_73;
      }

      if (v120 < v117)
      {
        goto LABEL_62;
      }
    }

LABEL_67:
    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v119, v117);
    if ((v101 & 0x1000000000000000) != 0)
    {
      _StringGuts._foreignAppendInPlace(_:)(v100, v101, 0, v115);
      swift_bridgeObjectRelease_n(v101, 2);
      v84 = v368;
      v79 = v370;
      v86 = v362;
LABEL_27:
      v94 = v364;
      v87 = v365;
      v93 = v357;
      goto LABEL_28;
    }

    v87 = v365;
    v93 = v357;
    if (v112)
    {
      if ((v100 & 0x1000000000000000) != 0)
      {
        v124 = (v101 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v125 = v356;
        v126 = v356;
        v84 = v368;
        v79 = v370;
        v86 = v362;
      }

      else
      {
        v159 = _StringObject.sharedUTF8.getter(v100, v101);
        if (v160 < v356)
        {
          goto LABEL_379;
        }

        v124 = v159;
        v126 = v160;
        v84 = v368;
        v79 = v370;
        v86 = v362;
        v87 = v365;
        v125 = v356;
        v93 = v357;
      }

      v127 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v125, v124, v126);
      closure #1 in _StringGuts.append(_:)(v127, v128, &v373, v100 < 0);
      swift_bridgeObjectRelease_n(v101, 2);
      v94 = v364;
    }

    else
    {
      v371 = v100;
      v372 = v101 & 0xFFFFFFFFFFFFFFLL;
      closure #1 in _StringGuts.append(_:)(&v371, HIBYTE(v101) & 0xF, &v373, (v101 & 0x4000000000000000) != 0);
      swift_bridgeObjectRelease_n(v101, 2);
      v84 = v368;
      v79 = v370;
      v86 = v362;
      v94 = v364;
    }

LABEL_28:
    (v360)(v79, v363);
    if (v359(v94, 1, v84) == 1)
    {
      goto LABEL_21;
    }

    v358(v87, v94, v84);
  }

  if ((v101 & 0x2000000000000000) == 0)
  {
    v114 = v100 & 0xFFFFFFFFFFFFLL;
    v112 = 1;
LABEL_52:
    v115 = v114;
    goto LABEL_53;
  }

  v135 = v109 + v113;
  if (v109 + v113 < 0x10)
  {
    if (v113)
    {
      v147 = 0;
      v148 = 0;
      v149 = 8 * v109;
      v150 = 8 * v113;
      v151 = v374;
      v84 = v368;
      v86 = v362;
      v93 = v357;
      do
      {
        v152 = v101 >> (v147 & 0x38);
        if (v148 < 8)
        {
          v152 = v100 >> v147;
        }

        v153 = (v152 << (v149 & 0x38)) | ((-255 << (v149 & 0x38)) - 1) & v151;
        v154 = (v152 << v149) | ((-255 << v149) - 1) & *&v108;
        if (v109 <= 7)
        {
          v108 = v154;
        }

        else
        {
          v151 = v153;
        }

        ++v109;
        v149 += 8;
        v147 += 8;
        ++v148;
      }

      while (v150 != v147);
    }

    else
    {
      v151 = v374;
      v84 = v368;
      v86 = v362;
      v93 = v357;
    }

    v374;
    v101;
    v155 = 0xA000000000000000;
    if (!(*&v108 & 0x8080808080808080 | v151 & 0x80808080808080))
    {
      v155 = 0xE000000000000000;
    }

    v373 = v108;
    v374 = v155 & 0xFF00000000000000 | (v135 << 56) | v151 & 0xFFFFFFFFFFFFFFLL;
    goto LABEL_108;
  }

  v112 = 0;
  v115 = HIBYTE(v101) & 0xF;
  v356 = v100 & 0xFFFFFFFFFFFFLL;
  if ((v101 & 0x1000000000000000) == 0)
  {
    goto LABEL_54;
  }

LABEL_82:
  swift_bridgeObjectRetain_n(v101, 2);
  v136._rawBits = 1;
  v137._rawBits = (v115 << 16) | 1;
  v138._rawBits = _StringGuts.validateScalarRange(_:)(v136, v137, v100, v101)._rawBits;
  if (v138._rawBits < 0x10000)
  {
    v138._rawBits |= 3;
  }

  v117 = String.UTF8View.distance(from:to:)(v138, v139);
  v101;
  if ((v107 & 0x1000000000000000) == 0)
  {
    goto LABEL_55;
  }

LABEL_85:
  v140 = String.UTF8View._foreignCount()();
  v119 = v140 + v117;
  if (!__OFADD__(v140, v117))
  {
    goto LABEL_56;
  }

LABEL_360:
  __break(1u);
LABEL_361:
  __break(1u);
LABEL_362:
  __break(1u);
LABEL_363:
  swift_bridgeObjectRetain_n(v117, 2);
  v325._rawBits = 1;
  v326._rawBits = (v100 << 16) | 1;
  v327._rawBits = _StringGuts.validateScalarRange(_:)(v325, v326, v112, v117)._rawBits;
  if (v327._rawBits < 0x10000)
  {
    v327._rawBits |= 3;
  }

  v173 = String.UTF8View.distance(from:to:)(v327, v328);
  v117;
  if ((v110 & 0x1000000000000000) != 0)
  {
LABEL_366:
    v329 = String.UTF8View._foreignCount()();
    v174 = v329 + v173;
    if (!__OFADD__(v329, v173))
    {
      goto LABEL_135;
    }

LABEL_368:
    __break(1u);
LABEL_369:
    if ((v110 & 0x1000000000000000) != 0)
    {
      v107 = _StringGuts._foreignConvertedToSmall()(v107, v110);
      v178 = v336;
    }

    else
    {
      if ((v107 & 0x1000000000000000) != 0)
      {
        v330 = ((v110 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v330 = _StringObject.sharedUTF8.getter(v107, v110);
        v108 = v339;
      }

      closure #1 in _StringGuts._convertedToSmall()(v330, *&v108, &v371, v172);
      v107 = v371;
      v178 = v372;
    }

LABEL_144:
    v113 = v368;
    v117;
    v179._rawBits = 1;
    v180._rawBits = (v100 << 16) | 1;
    v181._rawBits = _StringGuts.validateScalarRange(_:)(v179, v180, v112, v117)._rawBits;
    if (v181._rawBits < 0x10000)
    {
      v181._rawBits |= 3;
    }

    if (v181._rawBits >> 16 || v182._rawBits >> 16 != v100)
    {
      v112 = specialized static String._copying(_:)(v181._rawBits, v182, v112, v117);
      v184 = v192;
      v117;
    }

    else
    {
      v184 = v117;
    }

    if ((v184 & 0x2000000000000000) != 0)
    {
      v184;
    }

    else
    {
      v331 = v107;
      if ((v184 & 0x1000000000000000) != 0)
      {
        v112 = _StringGuts._foreignConvertedToSmall()(v112, v184);
        v338 = v337;
        v184;
        v184 = v338;
      }

      else
      {
        if ((v112 & 0x1000000000000000) != 0)
        {
          v332 = ((v184 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v333 = v112 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v332 = _StringObject.sharedUTF8.getter(v112, v184);
        }

        closure #1 in _StringGuts._convertedToSmall()(v332, v333, &v371, v183);
        v184;
        v112 = v371;
        v184 = v372;
      }

      v107 = v331;
      v113 = v368;
    }

    v193 = HIBYTE(v178) & 0xF;
    v194 = HIBYTE(v184) & 0xF;
    v195 = v194 + v193;
    if (v194 + v193 < 0x10)
    {
      v117;
      if (v194)
      {
        v196 = 0;
        v197 = 0;
        v198 = 8 * v193;
        v199 = 8 * v194;
        v101 = v360;
        do
        {
          v200 = v184 >> (v196 & 0x38);
          if (v197 < 8)
          {
            v200 = v112 >> v196;
          }

          v201 = (v200 << (v198 & 0x38)) | ((-255 << (v198 & 0x38)) - 1) & v178;
          v202 = (v200 << v198) | ((-255 << v198) - 1) & v107;
          if (v193 <= 7)
          {
            v107 = v202;
          }

          else
          {
            v178 = v201;
          }

          ++v193;
          v198 += 8;
          v196 += 8;
          ++v197;
        }

        while (v199 != v196);
      }

      else
      {
        v101 = v360;
      }

      v110;
      v117;
      v203 = 0xA000000000000000;
      if (!(v107 & 0x8080808080808080 | v178 & 0x80808080808080))
      {
        v203 = 0xE000000000000000;
      }

      v373 = v107;
      v374 = v203 & 0xFF00000000000000 | (v195 << 56) | v178 & 0xFFFFFFFFFFFFFFLL;
      v188 = v370;
      goto LABEL_192;
    }

LABEL_380:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_134:
  v118 = __OFADD__(v113, v173);
  v174 = v113 + v173;
  if (v118)
  {
    goto LABEL_368;
  }

LABEL_135:
  if ((v107 & ~v110 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v110 & 0xFFFFFFFFFFFFFFFLL))
  {
    v175 = _StringGuts.nativeUnusedCapacity.getter(v107, v110);
    if (v176)
    {
      goto LABEL_380;
    }

    v177 = (v110 >> 61) & 1;
    if (v175 < v173)
    {
      LOBYTE(v177) = 1;
    }

    if (v174 <= 15 && (v177 & 1) != 0)
    {
LABEL_142:
      if ((v110 & 0x2000000000000000) == 0)
      {
        goto LABEL_369;
      }

      v178 = v110;
      goto LABEL_144;
    }
  }

  else if (v174 < 16)
  {
    goto LABEL_142;
  }

  _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v174, v173);
  if ((v117 & 0x1000000000000000) != 0)
  {
    _StringGuts._foreignAppendInPlace(_:)(v112, v117, 0, v100);
    swift_bridgeObjectRelease_n(v117, 2);
LABEL_176:
    v113 = v368;
LABEL_187:
    v188 = v370;
    v101 = v360;
    goto LABEL_192;
  }

  v113 = v368;
  if ((v101 & 1) == 0)
  {
    v371 = v112;
    v372 = v117 & 0xFFFFFFFFFFFFFFLL;
    closure #1 in _StringGuts.append(_:)(&v371, v115, &v373, (v117 & 0x4000000000000000) != 0);
    swift_bridgeObjectRelease_n(v117, 2);
    goto LABEL_187;
  }

  if ((v112 & 0x1000000000000000) != 0)
  {
    v185 = (v117 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v186 = v346;
    v187 = v346;
    v188 = v370;
    v101 = v360;
  }

  else
  {
    v334 = _StringObject.sharedUTF8.getter(v112, v117);
    if (v335 < v346)
    {
LABEL_379:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v185 = v334;
    v187 = v335;
    v113 = v368;
    v188 = v370;
    v101 = v360;
    v186 = v346;
  }

  v189 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v186, v185, v187);
  closure #1 in _StringGuts.append(_:)(v189, v190, &v373, v112 < 0);
  swift_bridgeObjectRelease_n(v117, 2);
LABEL_192:
  v213 = v361;
  (v364)(v188, v366);
  if ((v362)(v213, 1, v113) != 1)
  {
    v342 = v101 & 0xFFFFFFFFFFFFFFLL;
    v341 = (v101 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v345 = (v367 + 16);
    v346 = 8 * v350;
    do
    {
      v115 = v359;
      (v354)(v359, v213, v113);
      v107 = v373;
      v117 = v374;
      v215 = HIBYTE(v374) & 0xF;
      v108 = (v373 & 0xFFFFFFFFFFFFLL);
      if ((v374 & 0x2000000000000000) != 0)
      {
        v216 = HIBYTE(v374) & 0xF;
      }

      else
      {
        v216 = v373 & 0xFFFFFFFFFFFFLL;
      }

      if (!v216 && (v373 & ~v374 & 0x2000000000000000) == 0)
      {
        v101;
        v117;
        v373 = v363;
        v374 = v101;
        goto LABEL_246;
      }

      v110 = v363;
      if ((v374 & 0x2000000000000000) != 0)
      {
        v112 = v356;
        if ((v101 & 0x2000000000000000) == 0)
        {
          goto LABEL_217;
        }

        v217 = v215 + v350;
        if (v215 + v350 <= 0xF)
        {
          if (v350)
          {
            v218 = 0;
            v219 = 0;
            v220 = 8 * v215;
            v221 = v374;
            v222 = v358;
            do
            {
              v223 = v101 >> (v218 & 0x38);
              if (v219 < 8)
              {
                v223 = v363 >> v218;
              }

              v224 = (v223 << (v220 & 0x38)) | ((-255 << (v220 & 0x38)) - 1) & v221;
              v225 = (v223 << v220) | ((-255 << v220) - 1) & v107;
              if (v215 <= 7)
              {
                v107 = v225;
              }

              else
              {
                v221 = v224;
              }

              ++v215;
              v220 += 8;
              v218 += 8;
              ++v219;
            }

            while (v346 != v218);
          }

          else
          {
            v221 = v374;
            v222 = v358;
          }

          v374;
          v249 = 0xA000000000000000;
          if (!(v107 & 0x8080808080808080 | v221 & 0x80808080808080))
          {
            v249 = 0xE000000000000000;
          }

          v373 = v107;
          v374 = v249 & 0xFF00000000000000 | (v217 << 56) | v221 & 0xFFFFFFFFFFFFFFLL;
          goto LABEL_254;
        }
      }

      else
      {
        v112 = v356;
        if ((v101 & 0x2000000000000000) == 0)
        {
          goto LABEL_217;
        }
      }

      v112 = v350;
LABEL_217:
      v226 = v112;
      if ((v101 & 0x1000000000000000) != 0)
      {
        v305._rawBits = (v112 << 16) | 1;
        v306._rawBits = 1;
        v307._rawBits = _StringGuts.validateScalarRange(_:)(v306, v305, v363, v101)._rawBits;
        if (v307._rawBits < 0x10000)
        {
          v307._rawBits |= 3;
        }

        v226 = String.UTF8View.distance(from:to:)(v307, v308);
        if ((v117 & 0x1000000000000000) != 0)
        {
LABEL_334:
          v309 = String.UTF8View._foreignCount()();
          v100 = v309 + v226;
          if (__OFADD__(v309, v226))
          {
            goto LABEL_361;
          }

          goto LABEL_220;
        }
      }

      else if ((v374 & 0x1000000000000000) != 0)
      {
        goto LABEL_334;
      }

      v118 = __OFADD__(v216, v226);
      v100 = v216 + v226;
      if (v118)
      {
        goto LABEL_361;
      }

LABEL_220:
      if ((v107 & ~v117 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v117 & 0xFFFFFFFFFFFFFFFLL))
      {
        v227 = _StringGuts.nativeUnusedCapacity.getter(v107, v117);
        if (v228)
        {
          goto LABEL_380;
        }

        v229 = (v117 >> 61) & 1;
        if (v227 < v226)
        {
          LOBYTE(v229) = 1;
        }

        if (v100 <= 15 && (v229 & 1) != 0)
        {
LABEL_227:
          if ((v117 & 0x2000000000000000) != 0)
          {
            v230 = v117;
          }

          else if ((v117 & 0x1000000000000000) != 0)
          {
            v107 = _StringGuts._foreignConvertedToSmall()(v107, v117);
            v230 = v319;
          }

          else
          {
            if ((v107 & 0x1000000000000000) != 0)
            {
              v310 = ((v117 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v310 = _StringObject.sharedUTF8.getter(v107, v117);
              v108 = v322;
            }

            closure #1 in _StringGuts._convertedToSmall()(v310, *&v108, &v371, v214);
            v107 = v371;
            v230 = v372;
          }

          v101;
          v231._rawBits = 1;
          v232._rawBits = (v112 << 16) | 1;
          v233._rawBits = _StringGuts.validateScalarRange(_:)(v231, v232, v110, v101)._rawBits;
          if (v233._rawBits < 0x10000)
          {
            v233._rawBits |= 3;
          }

          if (v233._rawBits >> 16 || (v236 = v101, v237 = v110, v234._rawBits >> 16 != v344))
          {
            v237 = specialized static String._copying(_:)(v233._rawBits, v234, v110, v101);
            v236 = v238;
            v101;
          }

          if ((v236 & 0x2000000000000000) != 0)
          {
            v236;
          }

          else if ((v236 & 0x1000000000000000) != 0)
          {
            v237 = _StringGuts._foreignConvertedToSmall()(*&v237, v236);
            v321 = v320;
            v236;
            v236 = v321;
          }

          else
          {
            if ((*&v237 & 0x1000000000000000) != 0)
            {
              v311 = ((v236 & 0xFFFFFFFFFFFFFFFLL) + 32);
              v312 = *&v237 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v311 = _StringObject.sharedUTF8.getter(*&v237, v236);
            }

            closure #1 in _StringGuts._convertedToSmall()(v311, v312, &v371, v235);
            v236;
            v237 = v371;
            v236 = v372;
          }

          v239 = specialized _SmallString.init(_:appending:)(v107, v230, *&v237, v236);
          if (v241)
          {
            goto LABEL_380;
          }

          v242 = v239;
          v243 = v240;
          v117;
          v373 = v242;
          v374 = v243;
          goto LABEL_246;
        }
      }

      else if (v100 < 16)
      {
        goto LABEL_227;
      }

      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v100, v226);
      if ((v101 & 0x1000000000000000) != 0)
      {
        _StringGuts._foreignAppendInPlace(_:)(v110, v101, 0, v112);
LABEL_246:
        v222 = v358;
        goto LABEL_254;
      }

      v222 = v358;
      if ((v101 & 0x2000000000000000) != 0)
      {
        v371 = v110;
        v372 = v342;
        if (v350 < v112)
        {
          goto LABEL_379;
        }

        v248 = (v101 >> 62) & 1;
        v246 = &v371;
        v247 = v112;
      }

      else
      {
        v244 = v341;
        v245 = v356;
        if ((v110 & 0x1000000000000000) != 0)
        {
          if (v356 < v112)
          {
            goto LABEL_379;
          }
        }

        else
        {
          v244 = _StringObject.sharedUTF8.getter(v110, v101);
          v245 = v317;
          if (v317 < v112)
          {
            goto LABEL_379;
          }
        }

        v246 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v112, v244, v245);
        v248 = v110 >> 63;
      }

      closure #1 in _StringGuts.append(_:)(v246, v247, &v373, v248);
LABEL_254:
      if (v113 == &type metadata for String)
      {
        v112 = *v115;
        v117 = *(v115 + 8);
        v117;
        (v352)(v115, v113);
      }

      else
      {
        if (v113 == &type metadata for Substring)
        {
          v256 = *v115;
          v257._rawBits = *(v115 + 8);
          v112 = *(v115 + 16);
          v117 = *(v115 + 24);
          v258 = HIBYTE(v117) & 0xF;
          if ((v117 & 0x2000000000000000) == 0)
          {
            v258 = v112 & 0xFFFFFFFFFFFFLL;
          }

          v259 = v352;
          if (v256 >> 16 || v257._rawBits >> 16 != v258)
          {
            v112 = specialized static String._copying(_:)(v256, v257, *(v115 + 16), *(v115 + 24));
            v117 = v261;
          }

          else
          {
            *(v115 + 24);
          }
        }

        else
        {
          v250 = *v345;
          (*v345)(v222, v115, v113);
          v251 = v349;
          v250(v349, v222, v113);
          if (swift_dynamicCast(&v371, v251, v113, &type metadata for String, 6uLL, v252, v253, v254, v340))
          {
            v255 = v352;
            (v352)(v222, v113);
            v112 = v371;
            v117 = v372;
            (v255)(v115, v113);
            goto LABEL_267;
          }

          v112 = (*(*(*(v351 + 40) + 8) + 8))(v113);
          v117 = v260;
          v259 = v352;
          (v352)(v222, v113);
        }

        (v259)(v115, v113);
      }

LABEL_267:
      v110 = v373;
      v107 = v374;
      v262 = HIBYTE(v374) & 0xF;
      v100 = v373 & 0xFFFFFFFFFFFFLL;
      if ((v374 & 0x2000000000000000) != 0)
      {
        v263 = HIBYTE(v374) & 0xF;
      }

      else
      {
        v263 = v373 & 0xFFFFFFFFFFFFLL;
      }

      if (!v263 && (v373 & ~v374 & 0x2000000000000000) == 0)
      {
        v374;
        v373 = v112;
        v374 = v117;
        v188 = v370;
        goto LABEL_197;
      }

      LOBYTE(v101) = (v117 & 0x2000000000000000) == 0;
      v115 = HIBYTE(v117) & 0xF;
      if ((v374 & 0x2000000000000000) == 0)
      {
        v264 = v112 & 0xFFFFFFFFFFFFLL;
        v108 = (HIBYTE(v117) & 0xF);
        if ((v117 & 0x2000000000000000) != 0)
        {
LABEL_278:
          v367 = v264;
          if ((v117 & 0x1000000000000000) == 0)
          {
            goto LABEL_279;
          }

          goto LABEL_308;
        }

LABEL_277:
        v108 = v264;
        goto LABEL_278;
      }

      if ((v117 & 0x2000000000000000) == 0)
      {
        v264 = v112 & 0xFFFFFFFFFFFFLL;
        LOBYTE(v101) = 1;
        goto LABEL_277;
      }

      v289 = v262 + v115;
      if (v262 + v115 < 0x10)
      {
        if (v115)
        {
          v295 = 0;
          v296 = 0;
          v297 = 8 * v262;
          v298 = 8 * v115;
          v299 = v374;
          v188 = v370;
          v101 = v360;
          do
          {
            v300 = v117 >> (v295 & 0x38);
            if (v296 < 8)
            {
              v300 = v112 >> v295;
            }

            v301 = (v300 << (v297 & 0x38)) | ((-255 << (v297 & 0x38)) - 1) & v299;
            v302 = (v300 << v297) | ((-255 << v297) - 1) & v110;
            if (v262 <= 7)
            {
              v110 = v302;
            }

            else
            {
              v299 = v301;
            }

            ++v262;
            v297 += 8;
            v295 += 8;
            ++v296;
          }

          while (v298 != v295);
        }

        else
        {
          v299 = v374;
          v188 = v370;
          v101 = v360;
        }

        v374;
        v117;
        v303 = 0xA000000000000000;
        if (!(v110 & 0x8080808080808080 | v299 & 0x80808080808080))
        {
          v303 = 0xE000000000000000;
        }

        v373 = v110;
        v374 = v303 & 0xFF00000000000000 | (v289 << 56) | v299 & 0xFFFFFFFFFFFFFFLL;
        goto LABEL_197;
      }

      LOBYTE(v101) = 0;
      v108 = (HIBYTE(v117) & 0xF);
      v367 = v112 & 0xFFFFFFFFFFFFLL;
      if ((v117 & 0x1000000000000000) == 0)
      {
LABEL_279:
        v117;
        v113 = v108;
        if ((v107 & 0x1000000000000000) == 0)
        {
          goto LABEL_280;
        }

        goto LABEL_311;
      }

LABEL_308:
      swift_bridgeObjectRetain_n(v117, 2);
      v290._rawBits = 1;
      v291._rawBits = (*&v108 << 16) | 1;
      v292._rawBits = _StringGuts.validateScalarRange(_:)(v290, v291, v112, v117)._rawBits;
      if (v292._rawBits < 0x10000)
      {
        v292._rawBits |= 3;
      }

      v113 = String.UTF8View.distance(from:to:)(v292, v293);
      v117;
      if ((v107 & 0x1000000000000000) == 0)
      {
LABEL_280:
        v118 = __OFADD__(v263, v113);
        v266 = v263 + v113;
        if (v118)
        {
          goto LABEL_362;
        }

        goto LABEL_281;
      }

LABEL_311:
      v294 = String.UTF8View._foreignCount()();
      v266 = v294 + v113;
      if (__OFADD__(v294, v113))
      {
        goto LABEL_362;
      }

LABEL_281:
      if ((v110 & ~v107 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v107 & 0xFFFFFFFFFFFFFFFLL))
      {
        v267 = _StringGuts.nativeUnusedCapacity.getter(v110, v107);
        if (v268)
        {
          goto LABEL_380;
        }

        if (v266 <= 15)
        {
          if ((v107 & 0x2000000000000000) != 0)
          {
            goto LABEL_298;
          }

          if (v267 < v113)
          {
            goto LABEL_287;
          }
        }
      }

      else if (v266 < 16)
      {
        if ((v107 & 0x2000000000000000) != 0)
        {
LABEL_298:
          v270 = v107;
          goto LABEL_299;
        }

LABEL_287:
        if ((v107 & 0x1000000000000000) != 0)
        {
          v110 = _StringGuts._foreignConvertedToSmall()(v110, v107);
          v270 = v304;
LABEL_299:
          v113 = v368;
          v188 = v370;
          v101 = v360;
        }

        else
        {
          if ((v110 & 0x1000000000000000) != 0)
          {
            v269 = ((v107 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v269 = _StringObject.sharedUTF8.getter(v110, v107);
            v100 = v318;
          }

          v113 = v368;
          v188 = v370;
          v101 = v360;
          closure #1 in _StringGuts._convertedToSmall()(v269, v100, &v371, v265);
          v110 = v371;
          v270 = v372;
        }

        v117;
        v276._rawBits = 1;
        v277._rawBits = (*&v108 << 16) | 1;
        v278._rawBits = _StringGuts.validateScalarRange(_:)(v276, v277, v112, v117)._rawBits;
        if (v278._rawBits < 0x10000)
        {
          v278._rawBits |= 3;
        }

        v280 = Substring.description.getter(v278._rawBits, v279, v112, v117);
        v282 = v281;
        v117;
        if ((v282 & 0x2000000000000000) != 0)
        {
          v282;
        }

        else if ((v282 & 0x1000000000000000) != 0)
        {
          v280 = _StringGuts._foreignConvertedToSmall()(v280, v282);
          v324 = v323;
          v282;
          v282 = v324;
        }

        else
        {
          if ((v280 & 0x1000000000000000) != 0)
          {
            v313 = ((v282 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v314 = v280 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v313 = _StringObject.sharedUTF8.getter(v280, v282);
          }

          closure #1 in _StringGuts._convertedToSmall()(v313, v314, &v371, v283);
          v282;
          v280 = v371;
          v282 = v372;
        }

        v284 = specialized _SmallString.init(_:appending:)(v110, v270, v280, v282);
        if (v286)
        {
          goto LABEL_380;
        }

        v287 = v284;
        v288 = v285;
        v107;
        swift_bridgeObjectRelease_n(v117, 2);
        v373 = v287;
        v374 = v288;
        goto LABEL_197;
      }

      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v266, v113);
      if ((v117 & 0x1000000000000000) != 0)
      {
        _StringGuts._foreignAppendInPlace(_:)(v112, v117, 0, *&v108);
        swift_bridgeObjectRelease_n(v117, 2);
        v113 = v368;
LABEL_325:
        v188 = v370;
        v101 = v360;
        goto LABEL_197;
      }

      v113 = v368;
      if ((v101 & 1) == 0)
      {
        v371 = v112;
        v372 = v117 & 0xFFFFFFFFFFFFFFLL;
        closure #1 in _StringGuts.append(_:)(&v371, HIBYTE(v117) & 0xF, &v373, (v117 & 0x4000000000000000) != 0);
        swift_bridgeObjectRelease_n(v117, 2);
        goto LABEL_325;
      }

      if ((v112 & 0x1000000000000000) != 0)
      {
        v271 = (v117 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v272 = v367;
        v273 = v367;
      }

      else
      {
        v315 = _StringObject.sharedUTF8.getter(v112, v117);
        if (v316 < v367)
        {
          goto LABEL_379;
        }

        v271 = v315;
        v273 = v316;
        v272 = v367;
        v113 = v368;
      }

      v188 = v370;
      v101 = v360;
      v274 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v272, v271, v273);
      closure #1 in _StringGuts.append(_:)(v274, v275, &v373, v112 < 0);
      swift_bridgeObjectRelease_n(v117, 2);
LABEL_197:
      v213 = v361;
      (v364)(v188, v366);
    }

    while ((v362)(v213, 1, v113) != 1);
  }

  (*(v343 + 8))(v357, v188);
  (*(v347 + 8))(v213, v348);
  return v373;
}

uint64_t StringProtocol._ephemeralString.getter(Class *a1, uint64_t a2)
{
  v4 = *(a1 - 1);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v12 = &v25 - v11;
  if (v9 == &type metadata for String)
  {
    v18 = *v2;
    v2[1];
  }

  else if (a1 == &type metadata for Substring)
  {
    v19 = *v2;
    v20 = v2[1];
    v22 = v2[2];
    v21 = v2[3];
    v21;
    v23._rawBits = v20;
    return _sSSySSxcs25LosslessStringConvertibleRzSTRzSJ7ElementSTRtzlufCSs_Tt0g5(v19, v23, v22, v21);
  }

  else
  {
    v13 = v10;
    v14 = *(v4 + 16);
    v14(&v25 - v11, v2, a1);
    v14(v7, v12, a1);
    if (swift_dynamicCast(&v25, v7, a1, &type metadata for String, 6uLL, v15, v16, v17, v25))
    {
      (*(v4 + 8))(v12, a1);
      return v25;
    }

    else
    {
      v18 = (*(*(*(v13 + 40) + 8) + 8))(a1);
      (*(v4 + 8))(v12, a1);
    }
  }

  return v18;
}

unint64_t specialized BidirectionalCollection<>.joined(separator:)(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a1 & 0xFFFFFFFFFFFFLL;
  v237 = HIBYTE(a2) & 0xF;
  v240 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  v236 = v5;
  v6 = a3[2] + a3[2] * v5;
  v7 = 0xE000000000000000;
  v250 = 0;
  v251 = 0xE000000000000000;
  if (v6 < 16)
  {
    v10 = 0;
  }

  else
  {
    v8 = _StringGuts.uniqueNativeCapacity.getter();
    if ((v9 & 1) != 0 || v8 < v6)
    {
      v12 = 2 * _StringGuts.uniqueNativeCapacity.getter();
      if (v12 <= v6)
      {
        v12 = v6;
      }

      if (v11)
      {
        v13 = v6;
      }

      else
      {
        v13 = v12;
      }

      v248 = 0;
      v249 = 0;
      v7 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(&v248, 0, v13, 1);
      v10 = *(v7 + 24);
      0xE000000000000000;
      v250 = v10;
      v251 = v7;
    }

    else
    {
      v10 = 0;
      v7 = 0xE000000000000000;
    }
  }

  v14 = a3[2];
  v244 = v14;
  if (!v236)
  {
    if (!v14)
    {
      return v250;
    }

    v22 = 0;
    while (1)
    {
      sub_1802E86D0(v22, 1, a3);
      v23 = &a3[2 * v22 + 4];
      v16 = *v23;
      v24 = v23[1];
      v15 = v250;
      v7 = v251;
      v25 = HIBYTE(v251) & 0xF;
      v18 = v250 & 0xFFFFFFFFFFFFLL;
      if ((v251 & 0x2000000000000000) != 0)
      {
        v26 = HIBYTE(v251) & 0xF;
      }

      else
      {
        v26 = v250 & 0xFFFFFFFFFFFFLL;
      }

      if (!v26 && (v250 & ~v251 & 0x2000000000000000) == 0)
      {
        v24;
        v7;
        v250 = v16;
        v251 = v24;
        goto LABEL_27;
      }

      v27 = (v24 & 0x2000000000000000) == 0;
      v28 = HIBYTE(v24) & 0xF;
      if ((v251 & 0x2000000000000000) != 0)
      {
        if ((v24 & 0x2000000000000000) == 0)
        {
          v29 = v16 & 0xFFFFFFFFFFFFLL;
          v27 = 1;
LABEL_38:
          v4 = v29;
          goto LABEL_39;
        }

        v48 = v25 + v28;
        if (v25 + v28 < 0x10)
        {
          if (v28)
          {
            v55 = 0;
            v56 = 0;
            v57 = 8 * v25;
            v58 = 8 * v28;
            v59 = v251;
            v14 = v244;
            do
            {
              v60 = v24 >> (v55 & 0x38);
              if (v56 < 8)
              {
                v60 = v16 >> v55;
              }

              v61 = (v60 << (v57 & 0x38)) | ((-255 << (v57 & 0x38)) - 1) & v59;
              v62 = (v60 << v57) | ((-255 << v57) - 1) & v15;
              if (v25 <= 7)
              {
                v15 = v62;
              }

              else
              {
                v59 = v61;
              }

              ++v25;
              v57 += 8;
              v55 += 8;
              ++v56;
            }

            while (v58 != v55);
          }

          else
          {
            v59 = v251;
            v14 = v244;
          }

          v251;
          v63 = 0xA000000000000000;
          if (!(v15 & 0x8080808080808080 | v59 & 0x80808080808080))
          {
            v63 = 0xE000000000000000;
          }

          v250 = v15;
          v251 = v63 & 0xFF00000000000000 | (v48 << 56) | v59 & 0xFFFFFFFFFFFFFFLL;
          goto LABEL_27;
        }

        v27 = 0;
        v29 = v16 & 0xFFFFFFFFFFFFLL;
        v4 = HIBYTE(v24) & 0xF;
      }

      else
      {
        v29 = v16 & 0xFFFFFFFFFFFFLL;
        v4 = HIBYTE(v24) & 0xF;
        if ((v24 & 0x2000000000000000) == 0)
        {
          goto LABEL_38;
        }
      }

LABEL_39:
      v242 = v27;
      v241 = v29;
      if ((v24 & 0x1000000000000000) != 0)
      {
        swift_bridgeObjectRetain_n(v24, 3);
        v65._rawBits = 1;
        v66._rawBits = (v4 << 16) | 1;
        v67._rawBits = _StringGuts.validateScalarRange(_:)(v65, v66, v16, v24)._rawBits;
        if (v67._rawBits < 0x10000)
        {
          v67._rawBits |= 3;
        }

        v10 = String.UTF8View.distance(from:to:)(v67, v68);
        v24;
        if ((v7 & 0x1000000000000000) != 0)
        {
LABEL_93:
          v69 = String.UTF8View._foreignCount()();
          v32 = v69 + *&v10;
          if (__OFADD__(v69, *&v10))
          {
            goto LABEL_329;
          }

          goto LABEL_42;
        }
      }

      else
      {
        swift_bridgeObjectRetain_n(v24, 2);
        v10 = v4;
        if ((v7 & 0x1000000000000000) != 0)
        {
          goto LABEL_93;
        }
      }

      v31 = __OFADD__(v26, *&v10);
      v32 = v26 + *&v10;
      if (v31)
      {
LABEL_329:
        __break(1u);
LABEL_330:
        __break(1u);
LABEL_331:
        __break(1u);
LABEL_332:
        if ((v7 & 0x1000000000000000) != 0)
        {
          v10 = _StringGuts._foreignConvertedToSmall()(*&v10, v7);
          v18 = v231;
        }

        else
        {
          if ((*&v10 & 0x1000000000000000) != 0)
          {
            v225 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v225 = _StringObject.sharedUTF8.getter(*&v10, v7);
            v18 = v234;
          }

          closure #1 in _StringGuts._convertedToSmall()(v225, v18, &v248, v30);
          v10 = v248;
          v18 = v249;
        }

LABEL_119:
        v14 = v244;
        v16;
        v84._rawBits = 1;
        v85._rawBits = (v4 << 16) | 1;
        rawBits = _StringGuts.validateScalarRange(_:)(v84, v85, v15, v16)._rawBits;
        if (rawBits < 0x10000)
        {
          rawBits |= 3uLL;
        }

        if (!(rawBits >> 16) && v78._rawBits >> 16 == v4)
        {
          v87 = v16;
          goto LABEL_139;
        }

LABEL_138:
        v15 = specialized static String._copying(_:)(rawBits, v78, v15, v16);
        v87 = v98;
        v16;
LABEL_139:
        if ((v87 & 0x2000000000000000) != 0)
        {
          v87;
        }

        else
        {
          v226 = v7;
          if ((v87 & 0x1000000000000000) != 0)
          {
            v15 = _StringGuts._foreignConvertedToSmall()(v15, v87);
            v233 = v232;
            v87;
            v87 = v233;
          }

          else
          {
            if ((v15 & 0x1000000000000000) != 0)
            {
              v227 = ((v87 & 0xFFFFFFFFFFFFFFFLL) + 32);
              v228 = v15 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v227 = _StringObject.sharedUTF8.getter(v15, v87);
            }

            closure #1 in _StringGuts._convertedToSmall()(v227, v228, &v248, v86);
            v87;
            v15 = v248;
            v87 = v249;
          }

          v7 = v226;
          v14 = v244;
        }

        v99 = HIBYTE(v18) & 0xF;
        v100 = HIBYTE(v87) & 0xF;
        v101 = v100 + v99;
        if (v100 + v99 < 0x10)
        {
          v16;
          if (v100)
          {
            v102 = 0;
            v103 = 0;
            v104 = 8 * v99;
            v105 = 8 * v100;
            v4 = v241;
            do
            {
              v106 = v87 >> (v102 & 0x38);
              if (v103 < 8)
              {
                v106 = v15 >> v102;
              }

              v107 = (v106 << (v104 & 0x38)) | ((-255 << (v104 & 0x38)) - 1) & v18;
              v108 = (v106 << v104) | ((-255 << v104) - 1) & *&v10;
              if (v99 <= 7)
              {
                v10 = v108;
              }

              else
              {
                v18 = v107;
              }

              ++v99;
              v104 += 8;
              v102 += 8;
              ++v103;
            }

            while (v105 != v102);
          }

          else
          {
            v4 = v241;
          }

          v7;
          v16;
          v109 = 0xA000000000000000;
          if (!(*&v10 & 0x8080808080808080 | v18 & 0x80808080808080))
          {
            v109 = 0xE000000000000000;
          }

          v110 = v109 & 0xFF00000000000000 | (v101 << 56) | v18 & 0xFFFFFFFFFFFFFFLL;
          goto LABEL_172;
        }

LABEL_343:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_42:
      if ((v15 & ~v7 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v7 & 0xFFFFFFFFFFFFFFFLL))
      {
        v33 = _StringGuts.nativeUnusedCapacity.getter(v15, v7);
        if (v34)
        {
          goto LABEL_343;
        }

        if (v32 <= 15)
        {
          if ((v7 & 0x2000000000000000) != 0)
          {
            goto LABEL_59;
          }

          if (v33 < *&v10)
          {
            goto LABEL_48;
          }
        }
      }

      else if (v32 < 16)
      {
        if ((v7 & 0x2000000000000000) != 0)
        {
LABEL_59:
          v36 = v7;
          goto LABEL_60;
        }

LABEL_48:
        if ((v7 & 0x1000000000000000) != 0)
        {
          v15 = _StringGuts._foreignConvertedToSmall()(v15, v7);
          v36 = v64;
LABEL_60:
          v14 = v244;
        }

        else
        {
          if ((v15 & 0x1000000000000000) != 0)
          {
            v35 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v35 = _StringObject.sharedUTF8.getter(v15, v7);
            v18 = v74;
          }

          v14 = v244;
          closure #1 in _StringGuts._convertedToSmall()(v35, v18, &v248, v30);
          v15 = v248;
          v36 = v249;
        }

        v24;
        v42._rawBits = 1;
        v43._rawBits = (v4 << 16) | 1;
        v44._rawBits = _StringGuts.validateScalarRange(_:)(v42, v43, v16, v24)._rawBits;
        if (v44._rawBits < 0x10000)
        {
          v44._rawBits |= 3;
        }

        if (v44._rawBits >> 16 || v45._rawBits >> 16 != v4)
        {
          v16 = specialized static String._copying(_:)(v44._rawBits, v45, v16, v24);
          v47 = v49;
          v24;
        }

        else
        {
          v47 = v24;
        }

        if ((v47 & 0x2000000000000000) != 0)
        {
          v47;
        }

        else if ((v47 & 0x1000000000000000) != 0)
        {
          v16 = _StringGuts._foreignConvertedToSmall()(v16, v47);
          v76 = v75;
          v47;
          v47 = v76;
        }

        else
        {
          if ((v16 & 0x1000000000000000) != 0)
          {
            v70 = ((v47 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v71 = v16 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v70 = _StringObject.sharedUTF8.getter(v16, v47);
          }

          closure #1 in _StringGuts._convertedToSmall()(v70, v71, &v248, v46);
          v47;
          v16 = v248;
          v47 = v249;
        }

        v50 = specialized _SmallString.init(_:appending:)(v15, v36, v16, v47);
        if (v52)
        {
          goto LABEL_343;
        }

        v53 = v50;
        v54 = v51;
        v7;
        swift_bridgeObjectRelease_n(v24, 2);
        v250 = v53;
        v251 = v54;
        goto LABEL_27;
      }

      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v32, *&v10);
      if ((v24 & 0x1000000000000000) != 0)
      {
        _StringGuts._foreignAppendInPlace(_:)(v16, v24, 0, v4);
        swift_bridgeObjectRelease_n(v24, 2);
LABEL_84:
        v14 = v244;
        goto LABEL_27;
      }

      if (!v242)
      {
        v248 = v16;
        v249 = v24 & 0xFFFFFFFFFFFFFFLL;
        v24;
        _StringGuts.appendInPlace(_:isASCII:)(&v248, HIBYTE(v24) & 0xF, (v24 & 0x4000000000000000) != 0);
        v24;
        goto LABEL_84;
      }

      if ((v16 & 0x1000000000000000) != 0)
      {
        v37 = (v24 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v38 = v241;
        v39 = v241;
      }

      else
      {
        v72 = _StringObject.sharedUTF8.getter(v16, v24);
        v38 = v241;
        if (v73 < v241)
        {
          goto LABEL_342;
        }

        v37 = v72;
        v39 = v73;
      }

      v14 = v244;
      v24;
      v40 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v38, v37, v39);
      _StringGuts.appendInPlace(_:isASCII:)(v40, v41, (v16 & 0x8000000000000000) != 0);
      v24;
LABEL_27:
      if (++v22 == v14)
      {
        return v250;
      }
    }
  }

  if (v14)
  {
    v238 = a2;
    sub_1802E86D0(0, 1, a3);
    v15 = a3[4];
    v239 = a3 + 4;
    v16 = a3[5];
    v17 = HIBYTE(v7) & 0xF;
    v18 = *&v10 & 0xFFFFFFFFFFFFLL;
    if ((v7 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(v7) & 0xF;
    }

    else
    {
      v19 = *&v10 & 0xFFFFFFFFFFFFLL;
    }

    v241 = v4;
    if (!v19 && (*&v10 & ~v7 & 0x2000000000000000) == 0)
    {
      v16;
      v7;
      v250 = v15;
      v251 = v16;
      goto LABEL_173;
    }

    v20 = (v16 & 0x2000000000000000) == 0;
    v14 = HIBYTE(v16) & 0xF;
    if ((v7 & 0x2000000000000000) != 0)
    {
      if ((v16 & 0x2000000000000000) != 0)
      {
        v93 = v17 + v14;
        if (v17 + v14 < 0x10)
        {
          if (v14)
          {
            v111 = 0;
            v112 = 0;
            v113 = 8 * v17;
            v114 = 8 * v14;
            v115 = v7;
            v14 = v244;
            do
            {
              v116 = v16 >> (v111 & 0x38);
              if (v112 < 8)
              {
                v116 = v15 >> v111;
              }

              v117 = (v116 << (v113 & 0x38)) | ((-255 << (v113 & 0x38)) - 1) & v115;
              v118 = (v116 << v113) | ((-255 << v113) - 1) & *&v10;
              if (v17 <= 7)
              {
                v10 = v118;
              }

              else
              {
                v115 = v117;
              }

              ++v17;
              v113 += 8;
              v111 += 8;
              ++v112;
            }

            while (v114 != v111);
          }

          else
          {
            v115 = v7;
            v14 = v244;
          }

          v7;
          v119 = 0xA000000000000000;
          if (!(*&v10 & 0x8080808080808080 | v115 & 0x80808080808080))
          {
            v119 = 0xE000000000000000;
          }

          v110 = v119 & 0xFF00000000000000 | (v93 << 56) | v115 & 0xFFFFFFFFFFFFFFLL;
LABEL_172:
          v250 = v10;
          v251 = v110;
          goto LABEL_173;
        }

        v20 = 0;
        v4 = HIBYTE(v16) & 0xF;
        v245 = v15 & 0xFFFFFFFFFFFFLL;
        if ((v16 & 0x1000000000000000) == 0)
        {
LABEL_108:
          rawBits = swift_bridgeObjectRetain_n(v16, 2);
          v79 = v4;
          if ((v7 & 0x1000000000000000) == 0)
          {
            goto LABEL_109;
          }

          goto LABEL_135;
        }

LABEL_132:
        swift_bridgeObjectRetain_n(v16, 3);
        v94._rawBits = 1;
        v95._rawBits = (v4 << 16) | 1;
        v96._rawBits = _StringGuts.validateScalarRange(_:)(v94, v95, v15, v16)._rawBits;
        if (v96._rawBits < 0x10000)
        {
          v96._rawBits |= 3;
        }

        v79 = String.UTF8View.distance(from:to:)(v96, v97);
        v16;
        if ((v7 & 0x1000000000000000) == 0)
        {
LABEL_109:
          v31 = __OFADD__(v19, v79);
          v80 = v19 + v79;
          if (!v31)
          {
            goto LABEL_110;
          }

          goto LABEL_137;
        }

LABEL_135:
        rawBits = String.UTF8View._foreignCount()();
        v80 = rawBits + v79;
        if (!__OFADD__(rawBits, v79))
        {
LABEL_110:
          if ((*&v10 & ~v7 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v7 & 0xFFFFFFFFFFFFFFFLL))
          {
            v81 = _StringGuts.nativeUnusedCapacity.getter(*&v10, v7);
            if (v82)
            {
              goto LABEL_343;
            }

            v83 = (v7 >> 61) & 1;
            if (v81 < v79)
            {
              LOBYTE(v83) = 1;
            }

            if (v80 <= 15 && (v83 & 1) != 0)
            {
LABEL_117:
              if ((v7 & 0x2000000000000000) == 0)
              {
                goto LABEL_332;
              }

              v18 = v7;
              goto LABEL_119;
            }
          }

          else if (v80 < 16)
          {
            goto LABEL_117;
          }

          v7 = &v250;
          _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v80, v79);
          if ((v16 & 0x1000000000000000) != 0)
          {
            _StringGuts._foreignAppendInPlace(_:)(v15, v16, 0, v4);
          }

          else
          {
            if (v20)
            {
              if ((v15 & 0x1000000000000000) != 0)
              {
                v88 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
                v14 = v244;
                v89 = v245;
                v90 = v245;
              }

              else
              {
                v229 = _StringObject.sharedUTF8.getter(v15, v16);
                if (v230 < v245)
                {
LABEL_342:
                  _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
                }

                v88 = v229;
                v90 = v230;
                v14 = v244;
                v89 = v245;
              }

              v4 = v241;
              v91 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v89, v88, v90);
              closure #1 in _StringGuts.append(_:)(v91, v92, &v250, (v15 & 0x8000000000000000) != 0);
              swift_bridgeObjectRelease_n(v16, 2);
              goto LABEL_173;
            }

            v248 = v15;
            v249 = v16 & 0xFFFFFFFFFFFFFFLL;
            closure #1 in _StringGuts.append(_:)(&v248, HIBYTE(v16) & 0xF, &v250, (v16 & 0x4000000000000000) != 0);
          }

          swift_bridgeObjectRelease_n(v16, 2);
          v14 = v244;
          v4 = v241;
LABEL_173:
          v15 = v238;
          if (v14 == 1)
          {
            return v250;
          }

          v121 = 1;
          while (1)
          {
            sub_1802E86D0(v121, 1, a3);
            v122 = v121 + 1;
            if (__OFADD__(v121, 1))
            {
              __break(1u);
              goto LABEL_329;
            }

            v123 = &v239[2 * v121];
            v18 = *v123;
            v16 = v123[1];
            v10 = v250;
            v7 = v251;
            v124 = HIBYTE(v251) & 0xF;
            v125 = v250 & 0xFFFFFFFFFFFFLL;
            if ((v251 & 0x2000000000000000) != 0)
            {
              v126 = HIBYTE(v251) & 0xF;
            }

            else
            {
              v126 = v250 & 0xFFFFFFFFFFFFLL;
            }

            v246 = v18;
            v243 = v122;
            if (!v126 && (v250 & ~v251 & 0x2000000000000000) == 0)
            {
              v16;
              v15;
              v7;
              v250 = v4;
              v251 = v15;
              goto LABEL_235;
            }

            if ((v251 & 0x2000000000000000) != 0)
            {
              v18 = v240;
              if ((v15 & 0x2000000000000000) != 0)
              {
                v18 = v237;
                v127 = v124 + v237;
                if (v124 + v237 <= 0xF)
                {
                  if (v237)
                  {
                    v128 = 0;
                    v129 = 0;
                    v130 = 8 * v124;
                    v131 = v251;
                    v18 = v246;
                    do
                    {
                      v132 = v15 >> (v128 & 0x38);
                      if (v129 < 8)
                      {
                        v132 = v4 >> v128;
                      }

                      v133 = (v132 << (v130 & 0x38)) | ((-255 << (v130 & 0x38)) - 1) & v131;
                      v134 = (v132 << v130) | ((-255 << v130) - 1) & *&v10;
                      if (v124 <= 7)
                      {
                        v10 = v134;
                      }

                      else
                      {
                        v131 = v133;
                      }

                      ++v124;
                      v130 += 8;
                      v128 += 8;
                      ++v129;
                    }

                    while (8 * v237 != v128);
                  }

                  else
                  {
                    v131 = v251;
                    v18 = v246;
                  }

                  v16;
                  v7;
                  v159 = 0xA000000000000000;
                  if (!(*&v10 & 0x8080808080808080 | v131 & 0x80808080808080))
                  {
                    v159 = 0xE000000000000000;
                  }

                  v250 = v10;
                  v251 = v159 & 0xFF00000000000000 | (v127 << 56) | v131 & 0xFFFFFFFFFFFFFFLL;
                  goto LABEL_235;
                }
              }
            }

            else
            {
              v18 = v240;
              if ((v15 & 0x2000000000000000) != 0)
              {
                v18 = v237;
              }
            }

            if ((v15 & 0x1000000000000000) != 0)
            {
              v16;
              v204._rawBits = 1;
              v205._rawBits = (v18 << 16) | 1;
              v206._rawBits = _StringGuts.validateScalarRange(_:)(v204, v205, v4, v15)._rawBits;
              to._rawBits = v207;
              if (v206._rawBits >= 0x10000)
              {
                v208 = v206._rawBits;
              }

              else
              {
                v208 = v206._rawBits | 3;
              }

              v15;
              v4 = String.UTF8View.distance(from:to:)(v208, to);
              v15;
              if ((v7 & 0x1000000000000000) == 0)
              {
LABEL_201:
                v135 = v126 + v4;
                if (__OFADD__(v126, v4))
                {
                  goto LABEL_330;
                }

                goto LABEL_202;
              }
            }

            else
            {
              v16;
              v4 = v18;
              if ((v7 & 0x1000000000000000) == 0)
              {
                goto LABEL_201;
              }
            }

            v209 = String.UTF8View._foreignCount()();
            v135 = v209 + v4;
            if (__OFADD__(v209, v4))
            {
              goto LABEL_330;
            }

LABEL_202:
            if ((*&v10 & ~v7 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v7 & 0xFFFFFFFFFFFFFFFLL))
            {
              v136 = _StringGuts.nativeUnusedCapacity.getter(*&v10, v7);
              if (v137)
              {
                goto LABEL_343;
              }

              v138 = (v7 >> 61) & 1;
              if (v136 < v4)
              {
                LOBYTE(v138) = 1;
              }

              if (v135 > 15 || (v138 & 1) == 0)
              {
LABEL_221:
                _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v135, v4);
                if ((v15 & 0x1000000000000000) != 0)
                {
                  _StringGuts._foreignAppendInPlace(_:)(v241, v15, 0, v18);
                  v18 = v246;
                }

                else
                {
                  if ((v15 & 0x2000000000000000) != 0)
                  {
                    v248 = v241;
                    v249 = v238 & 0xFFFFFFFFFFFFFFLL;
                    if (v237 < v18)
                    {
                      goto LABEL_342;
                    }

                    v158 = (v15 >> 62) & 1;
                    v156 = &v248;
                    v157 = v18;
                  }

                  else
                  {
                    v154 = ((v238 & 0xFFFFFFFFFFFFFFFLL) + 32);
                    v155 = v240;
                    if ((v241 & 0x1000000000000000) != 0)
                    {
                      if (v240 < v18)
                      {
                        goto LABEL_342;
                      }
                    }

                    else
                    {
                      v154 = _StringObject.sharedUTF8.getter(v241, v15);
                      v155 = v217;
                      if (v217 < v18)
                      {
                        goto LABEL_342;
                      }
                    }

                    v156 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v18, v154, v155);
                    v158 = v241 >> 63;
                  }

                  _StringGuts.appendInPlace(_:isASCII:)(v156, v157, v158);
                  v18 = v246;
                }

                goto LABEL_235;
              }
            }

            else if (v135 >= 16)
            {
              goto LABEL_221;
            }

            if ((v7 & 0x2000000000000000) != 0)
            {
              v139 = v7;
              v140 = v241;
            }

            else
            {
              v140 = v241;
              if ((v7 & 0x1000000000000000) != 0)
              {
                v10 = _StringGuts._foreignConvertedToSmall()(*&v10, v7);
                v139 = v219;
              }

              else
              {
                if ((*&v10 & 0x1000000000000000) != 0)
                {
                  v210 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
                }

                else
                {
                  v210 = _StringObject.sharedUTF8.getter(*&v10, v7);
                  v125 = v222;
                }

                closure #1 in _StringGuts._convertedToSmall()(v210, v125, &v248, v30);
                v10 = v248;
                v139 = v249;
              }
            }

            v15;
            v141._rawBits = 1;
            v142._rawBits = (v18 << 16) | 1;
            v143._rawBits = _StringGuts.validateScalarRange(_:)(v141, v142, v140, v15)._rawBits;
            if (v143._rawBits < 0x10000)
            {
              v143._rawBits |= 3;
            }

            if (v143._rawBits >> 16 || (v146 = v15, v147 = v140, v144._rawBits >> 16 != v236))
            {
              v147 = specialized static String._copying(_:)(v143._rawBits, v144, v140, v15);
              v146 = v148;
              v15;
            }

            v18 = v246;
            if ((v146 & 0x2000000000000000) != 0)
            {
              v146;
            }

            else if ((v146 & 0x1000000000000000) != 0)
            {
              v147 = _StringGuts._foreignConvertedToSmall()(*&v147, v146);
              v221 = v220;
              v146;
              v146 = v221;
              v18 = v246;
            }

            else
            {
              if ((*&v147 & 0x1000000000000000) != 0)
              {
                v211 = ((v146 & 0xFFFFFFFFFFFFFFFLL) + 32);
                v212 = *&v147 & 0xFFFFFFFFFFFFLL;
              }

              else
              {
                v211 = _StringObject.sharedUTF8.getter(*&v147, v146);
              }

              closure #1 in _StringGuts._convertedToSmall()(v211, v212, &v248, v145);
              v146;
              v147 = v248;
              v146 = v249;
            }

            v149 = specialized _SmallString.init(_:appending:)(*&v10, v139, *&v147, v146);
            if (v151)
            {
              goto LABEL_343;
            }

            v152 = v149;
            v153 = v150;
            v7;
            v250 = v152;
            v251 = v153;
LABEL_235:
            v10 = v250;
            v7 = v251;
            v160 = HIBYTE(v251) & 0xF;
            v4 = v250 & 0xFFFFFFFFFFFFLL;
            if ((v251 & 0x2000000000000000) != 0)
            {
              v161 = HIBYTE(v251) & 0xF;
            }

            else
            {
              v161 = v250 & 0xFFFFFFFFFFFFLL;
            }

            if (!v161 && (v250 & ~v251 & 0x2000000000000000) == 0)
            {
              v251;
              v250 = v18;
              v251 = v16;
              goto LABEL_177;
            }

            v15 = (v16 & 0x2000000000000000) == 0;
            v162 = HIBYTE(v16) & 0xF;
            if ((v251 & 0x2000000000000000) == 0)
            {
              v163 = v18 & 0xFFFFFFFFFFFFLL;
              v164 = HIBYTE(v16) & 0xF;
              if ((v16 & 0x2000000000000000) != 0)
              {
LABEL_246:
                if ((v16 & 0x1000000000000000) == 0)
                {
                  goto LABEL_247;
                }

                goto LABEL_276;
              }

LABEL_245:
              v164 = v163;
              goto LABEL_246;
            }

            if ((v16 & 0x2000000000000000) == 0)
            {
              v163 = v18 & 0xFFFFFFFFFFFFLL;
              v15 = 1;
              goto LABEL_245;
            }

            v188 = v160 + v162;
            if (v160 + v162 < 0x10)
            {
              if (v162)
              {
                v194 = 0;
                v195 = 0;
                v196 = 8 * v160;
                v197 = 8 * v162;
                v198 = v251;
                v15 = v238;
                v4 = v241;
                do
                {
                  v199 = v16 >> (v194 & 0x38);
                  if (v195 < 8)
                  {
                    v199 = v18 >> v194;
                  }

                  v200 = (v199 << (v196 & 0x38)) | ((-255 << (v196 & 0x38)) - 1) & v198;
                  v201 = (v199 << v196) | ((-255 << v196) - 1) & *&v10;
                  if (v160 <= 7)
                  {
                    v10 = v201;
                  }

                  else
                  {
                    v198 = v200;
                  }

                  ++v160;
                  v196 += 8;
                  v194 += 8;
                  ++v195;
                }

                while (v197 != v194);
              }

              else
              {
                v198 = v251;
                v15 = v238;
                v4 = v241;
              }

              v251;
              v16;
              v202 = 0xA000000000000000;
              if (!(*&v10 & 0x8080808080808080 | v198 & 0x80808080808080))
              {
                v202 = 0xE000000000000000;
              }

              v250 = v10;
              v251 = v202 & 0xFF00000000000000 | (v188 << 56) | v198 & 0xFFFFFFFFFFFFFFLL;
              goto LABEL_178;
            }

            v15 = 0;
            v163 = v18 & 0xFFFFFFFFFFFFLL;
            v164 = HIBYTE(v16) & 0xF;
            if ((v16 & 0x1000000000000000) == 0)
            {
LABEL_247:
              v16;
              v18 = v164;
              if ((v7 & 0x1000000000000000) == 0)
              {
                goto LABEL_248;
              }

              goto LABEL_279;
            }

LABEL_276:
            swift_bridgeObjectRetain_n(v16, 2);
            v189._rawBits = 1;
            v190._rawBits = (v164 << 16) | 1;
            v191._rawBits = _StringGuts.validateScalarRange(_:)(v189, v190, v246, v16)._rawBits;
            if (v191._rawBits < 0x10000)
            {
              v191._rawBits |= 3;
            }

            v18 = String.UTF8View.distance(from:to:)(v191, v192);
            v16;
            if ((v7 & 0x1000000000000000) == 0)
            {
LABEL_248:
              v31 = __OFADD__(v161, v18);
              v165 = v161 + v18;
              if (v31)
              {
                goto LABEL_331;
              }

              goto LABEL_249;
            }

LABEL_279:
            v193 = String.UTF8View._foreignCount()();
            v165 = v193 + v18;
            if (__OFADD__(v193, v18))
            {
              goto LABEL_331;
            }

LABEL_249:
            if ((*&v10 & ~v7 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v7 & 0xFFFFFFFFFFFFFFFLL))
            {
              v166 = _StringGuts.nativeUnusedCapacity.getter(*&v10, v7);
              if (v167)
              {
                goto LABEL_343;
              }

              if (v165 <= 15)
              {
                if ((v7 & 0x2000000000000000) != 0)
                {
                  goto LABEL_266;
                }

                if (v166 < v18)
                {
                  goto LABEL_255;
                }
              }
            }

            else if (v165 < 16)
            {
              if ((v7 & 0x2000000000000000) != 0)
              {
LABEL_266:
                v170 = v7;
                goto LABEL_267;
              }

LABEL_255:
              if ((v7 & 0x1000000000000000) != 0)
              {
                v10 = _StringGuts._foreignConvertedToSmall()(*&v10, v7);
                v170 = v203;
LABEL_267:
                v15 = v238;
                v169 = v246;
              }

              else
              {
                if ((*&v10 & 0x1000000000000000) != 0)
                {
                  v168 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
                }

                else
                {
                  v168 = _StringObject.sharedUTF8.getter(*&v10, v7);
                  v4 = v218;
                }

                v15 = v238;
                v169 = v246;
                closure #1 in _StringGuts._convertedToSmall()(v168, v4, &v248, v30);
                v10 = v248;
                v170 = v249;
              }

              v16;
              v175._rawBits = 1;
              v176._rawBits = (v164 << 16) | 1;
              v177._rawBits = _StringGuts.validateScalarRange(_:)(v175, v176, v169, v16)._rawBits;
              if (v177._rawBits < 0x10000)
              {
                v177._rawBits |= 3;
              }

              v179 = Substring.description.getter(v177._rawBits, v178, v169, v16);
              v181 = v180;
              v16;
              if ((v181 & 0x2000000000000000) != 0)
              {
                v181;
                v14 = v244;
                v4 = v241;
              }

              else
              {
                v14 = v244;
                v4 = v241;
                if ((v181 & 0x1000000000000000) != 0)
                {
                  v179 = _StringGuts._foreignConvertedToSmall()(v179, v181);
                  v224 = v223;
                  v181;
                  v181 = v224;
                  v15 = v238;
                }

                else
                {
                  if ((v179 & 0x1000000000000000) != 0)
                  {
                    v213 = ((v181 & 0xFFFFFFFFFFFFFFFLL) + 32);
                    v214 = v179 & 0xFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v213 = _StringObject.sharedUTF8.getter(v179, v181);
                  }

                  closure #1 in _StringGuts._convertedToSmall()(v213, v214, &v248, v182);
                  v181;
                  v179 = v248;
                  v181 = v249;
                }
              }

              v183 = specialized _SmallString.init(_:appending:)(*&v10, v170, v179, v181);
              if (v185)
              {
                goto LABEL_343;
              }

              v186 = v183;
              v187 = v184;
              v7;
              swift_bridgeObjectRelease_n(v16, 2);
              v250 = v186;
              v251 = v187;
              goto LABEL_178;
            }

            v7 = &v250;
            _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v165, v18);
            if ((v16 & 0x1000000000000000) != 0)
            {
              _StringGuts._foreignAppendInPlace(_:)(v246, v16, 0, v164);
              swift_bridgeObjectRelease_n(v16, 2);
              v14 = v244;
              v15 = v238;
LABEL_177:
              v4 = v241;
              goto LABEL_178;
            }

            v4 = v241;
            if (v15)
            {
              if ((v246 & 0x1000000000000000) != 0)
              {
                v171 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
                v172 = v163;
              }

              else
              {
                v215 = _StringObject.sharedUTF8.getter(v246, v16);
                if (v216 < v163)
                {
                  goto LABEL_342;
                }

                v171 = v215;
                v172 = v216;
              }

              v14 = v244;
              v15 = v238;
              v16;
              v173 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v163, v171, v172);
              v7 = &v250;
              _StringGuts.appendInPlace(_:isASCII:)(v173, v174, v246 < 0);
              v16;
            }

            else
            {
              v248 = v246;
              v249 = v16 & 0xFFFFFFFFFFFFFFLL;
              v16;
              _StringGuts.appendInPlace(_:isASCII:)(&v248, HIBYTE(v16) & 0xF, (v16 & 0x4000000000000000) != 0);
              v16;
              v14 = v244;
              v15 = v238;
            }

LABEL_178:
            v121 = v243;
            if (v243 == v14)
            {
              return v250;
            }
          }
        }

LABEL_137:
        __break(1u);
        goto LABEL_138;
      }

      v21 = v15 & 0xFFFFFFFFFFFFLL;
      v20 = 1;
    }

    else
    {
      v21 = v15 & 0xFFFFFFFFFFFFLL;
      v4 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) != 0)
      {
        goto LABEL_107;
      }
    }

    v4 = v21;
LABEL_107:
    v245 = v21;
    if ((v16 & 0x1000000000000000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_132;
  }

  return v250;
}

unint64_t BidirectionalCollection<>.joined(separator:)(uint64_t a1, unint64_t a2, const char *a3)
{
  v4 = v3;
  v8 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v253 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(v11 + 8) + 8);
  swift_getAssociatedTypeWitness(0, v12, v13, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v267 = v14;
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  MEMORY[0x1EEE9AC00](v16, v17);
  v266 = &v253 - v20;
  if (a3 == &unk_1EEEBD150)
  {
    return specialized BidirectionalCollection<>.joined(separator:)(a1, a2, *v4);
  }

  v265 = v19;
  v256 = v18;
  v258 = HIBYTE(a2) & 0xF;
  v260 = a1;
  v261 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v21 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v22 = (*(v12 + 40))(a3, v12);
  v257 = v21;
  v23 = v22 + v22 * v21;
  v272 = 0;
  v273 = 0xE000000000000000;
  if (v23 >= 16)
  {
    v24 = _StringGuts.uniqueNativeCapacity.getter();
    if ((v25 & 1) != 0 || v24 < v23)
    {
      v27 = 2 * _StringGuts.uniqueNativeCapacity.getter();
      if (v27 <= v23)
      {
        v27 = v23;
      }

      if (v26)
      {
        v28 = v23;
      }

      else
      {
        v28 = v27;
      }

      v270 = 0;
      v271 = 0;
      v29 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(&v270, 0, v28, 1);
      v30 = *(v29 + 24);
      0xE000000000000000;
      v272 = v30;
      v273 = v29;
    }
  }

  (*(v8 + 16))(v10, v4, a3);
  v31 = *(v12 + 32);
  if (v257)
  {
    v266 = a2;
    v32 = v265;
    v31(a3, v12);
    v33 = v267;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, a3, v267, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v35 = *(AssociatedConformanceWitness + 16);
    v263 = (AssociatedConformanceWitness + 16);
    v264 = AssociatedConformanceWitness;
    v262 = v35;
    (v35)(&v270, v33);
    v36 = v271;
    if (!v271)
    {
LABEL_316:
      (*(v256 + 8))(v32, v33);
      return v272;
    }

    v37 = v270;
    v39 = v272;
    v38 = v273;
    v40 = HIBYTE(v273) & 0xF;
    v41 = v272 & 0xFFFFFFFFFFFFLL;
    if ((v273 & 0x2000000000000000) != 0)
    {
      v42 = HIBYTE(v273) & 0xF;
    }

    else
    {
      v42 = v272 & 0xFFFFFFFFFFFFLL;
    }

    if (!v42 && (v272 & ~v273 & 0x2000000000000000) == 0)
    {
      v273;
      v272 = v37;
      v273 = v36;
LABEL_166:
      v33 = v267;
      goto LABEL_167;
    }

    v43 = v271 & 0x2000000000000000;
    v44 = HIBYTE(v271) & 0xF;
    if ((v271 & 0x2000000000000000 & v273) != 0)
    {
      v45 = v40 + v44;
      if (v40 + v44 <= 0xF)
      {
        if (v44)
        {
          v121 = 0;
          v122 = 0;
          v123 = 8 * v40;
          v124 = v273;
          do
          {
            v125 = v271 >> (v121 & 0x38);
            if (v122 < 8)
            {
              v125 = v270 >> v121;
            }

            v126 = (v125 << (v123 & 0x38)) | ((-255 << (v123 & 0x38)) - 1) & v124;
            v127 = (v125 << v123) | ((-255 << v123) - 1) & *&v39;
            if (v40 <= 7)
            {
              v39 = v127;
            }

            else
            {
              v124 = v126;
            }

            ++v40;
            v123 += 8;
            v121 += 8;
            ++v122;
          }

          while (8 * v44 != v121);
        }

        else
        {
          v124 = v273;
        }

        v273;
        v36;
        v141 = 0xA000000000000000;
        if (!(*&v39 & 0x8080808080808080 | v124 & 0x80808080808080))
        {
          v141 = 0xE000000000000000;
        }

        v140 = v141 & 0xFF00000000000000 | (v45 << 56) | v124 & 0xFFFFFFFFFFFFFFLL;
        goto LABEL_165;
      }
    }

    v259._rawBits = v270 & 0xFFFFFFFFFFFFLL;
    if (v43)
    {
      v46 = HIBYTE(v271) & 0xF;
    }

    else
    {
      v46 = v270 & 0xFFFFFFFFFFFFLL;
    }

    if ((v271 & 0x1000000000000000) != 0)
    {
      goto LABEL_323;
    }

    v271;
    v48 = v46;
    if ((v38 & 0x1000000000000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_326:
    v243 = String.UTF8View._foreignCount()();
    v50 = v243 + v48;
    if (__OFADD__(v243, v48))
    {
      goto LABEL_328;
    }

LABEL_29:
    if ((*&v39 & ~v38 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v38 & 0xFFFFFFFFFFFFFFFLL))
    {
      v51 = _StringGuts.nativeUnusedCapacity.getter(*&v39, v38);
      if (v52)
      {
        goto LABEL_339;
      }

      v53 = (v38 >> 61) & 1;
      if (v51 < v48)
      {
        LOBYTE(v53) = 1;
      }

      if (v50 <= 15 && (v53 & 1) != 0)
      {
LABEL_36:
        if ((v38 & 0x2000000000000000) == 0)
        {
          goto LABEL_329;
        }

        v54 = v38;
LABEL_38:
        v36;
        v55._rawBits = 1;
        v56._rawBits = (v46 << 16) | 1;
        v57._rawBits = _StringGuts.validateScalarRange(_:)(v55, v56, v37, v36)._rawBits;
        if (v57._rawBits < 0x10000)
        {
          v57._rawBits |= 3;
        }

        if (v57._rawBits >> 16 || v58._rawBits >> 16 != v46)
        {
          v37 = specialized static String._copying(_:)(v57._rawBits, v58, v37, v36);
          v60 = v128;
          v36;
        }

        else
        {
          v60 = v36;
        }

        if ((v60 & 0x2000000000000000) != 0)
        {
          v60;
        }

        else if ((v60 & 0x1000000000000000) != 0)
        {
          v37 = _StringGuts._foreignConvertedToSmall()(v37, v60);
          v251 = v250;
          v60;
          v60 = v251;
        }

        else
        {
          if ((v37 & 0x1000000000000000) != 0)
          {
            v245 = ((v60 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v246 = v37 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v245 = _StringObject.sharedUTF8.getter(v37, v60);
          }

          closure #1 in _StringGuts._convertedToSmall()(v245, v246, &v270, v59);
          v60;
          v37 = v270;
          v60 = v271;
        }

        v129 = HIBYTE(v54) & 0xF;
        v130 = HIBYTE(v60) & 0xF;
        v131 = v130 + v129;
        if (v130 + v129 < 0x10)
        {
          v36;
          if (v130)
          {
            v132 = 0;
            v133 = 0;
            v134 = 8 * v129;
            v135 = 8 * v130;
            v32 = v265;
            do
            {
              v136 = v60 >> (v132 & 0x38);
              if (v133 < 8)
              {
                v136 = v37 >> v132;
              }

              v137 = (v136 << (v134 & 0x38)) | ((-255 << (v134 & 0x38)) - 1) & v54;
              v138 = (v136 << v134) | ((-255 << v134) - 1) & *&v39;
              if (v129 <= 7)
              {
                v39 = v138;
              }

              else
              {
                v54 = v137;
              }

              ++v129;
              v134 += 8;
              v132 += 8;
              ++v133;
            }

            while (v135 != v132);
          }

          else
          {
            v32 = v265;
          }

          v38;
          v36;
          v139 = 0xA000000000000000;
          if (!(*&v39 & 0x8080808080808080 | v54 & 0x80808080808080))
          {
            v139 = 0xE000000000000000;
          }

          v140 = v139 & 0xFF00000000000000 | (v131 << 56) | v54 & 0xFFFFFFFFFFFFFFLL;
LABEL_165:
          v272 = v39;
          v273 = v140;
          goto LABEL_166;
        }

LABEL_339:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    else if (v50 < 16)
    {
      goto LABEL_36;
    }

    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v50, v48);
    if ((v36 & 0x1000000000000000) != 0)
    {
      _StringGuts._foreignAppendInPlace(_:)(v37, v36, 0, v46);
      swift_bridgeObjectRelease_n(v36, 2);
      v33 = v267;
      v32 = v265;
    }

    else
    {
      v33 = v267;
      v32 = v265;
      if (v43)
      {
        v120 = (v36 >> 62) & 1;
        v270 = v37;
        v271 = v36 & 0xFFFFFFFFFFFFFFLL;
        v118 = &v270;
        v119 = v44;
      }

      else
      {
        if ((v37 & 0x1000000000000000) != 0)
        {
          v115 = (v36 & 0xFFFFFFFFFFFFFFFLL) + 32;
          rawBits = v259._rawBits;
          v117 = v259._rawBits;
        }

        else
        {
          v247 = _StringObject.sharedUTF8.getter(v37, v36);
          if (v248 < v259._rawBits)
          {
LABEL_338:
            _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v115 = v247;
          v117 = v248;
          v33 = v267;
          v32 = v265;
          rawBits = v259._rawBits;
        }

        v118 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, rawBits, v115, v117);
        v120 = v37 >> 63;
      }

      closure #1 in _StringGuts.append(_:)(v118, v119, &v272, v120);
      swift_bridgeObjectRelease_n(v36, 2);
    }

LABEL_167:
    v262(&v270, v33, v264);
    v44 = v271;
    v36 = v266;
    if (v271)
    {
      v254 = (v266 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v255 = v266 & 0xFFFFFFFFFFFFFFLL;
      v253 = 8 * v258;
      while (1)
      {
        v37 = v270;
        v39 = v272;
        v38 = v273;
        v143 = HIBYTE(v273) & 0xF;
        v42 = v272 & 0xFFFFFFFFFFFFLL;
        if ((v273 & 0x2000000000000000) != 0)
        {
          v144 = HIBYTE(v273) & 0xF;
        }

        else
        {
          v144 = v272 & 0xFFFFFFFFFFFFLL;
        }

        if (!v144 && (v272 & ~v273 & 0x2000000000000000) == 0)
        {
          v36;
          v38;
          v272 = v260;
          v273 = v36;
          goto LABEL_230;
        }

        if ((v273 & 0x2000000000000000) != 0)
        {
          break;
        }

        v41 = v261;
        if ((v36 & 0x2000000000000000) != 0)
        {
          goto LABEL_181;
        }

LABEL_182:
        v43 = v41;
        if ((v36 & 0x1000000000000000) != 0)
        {
          v215._rawBits = (v41 << 16) | 1;
          v216._rawBits = 1;
          v217._rawBits = _StringGuts.validateScalarRange(_:)(v216, v215, v260, v36)._rawBits;
          v259._rawBits = v218;
          if (v217._rawBits >= 0x10000)
          {
            v219 = v217._rawBits;
          }

          else
          {
            v219 = v217._rawBits | 3;
          }

          v36;
          v43 = String.UTF8View.distance(from:to:)(v219, v259);
          v36;
          if ((v38 & 0x1000000000000000) == 0)
          {
LABEL_184:
            v46 = v144 + v43;
            if (__OFADD__(v144, v43))
            {
              goto LABEL_320;
            }

            goto LABEL_185;
          }
        }

        else if ((v273 & 0x1000000000000000) == 0)
        {
          goto LABEL_184;
        }

        v220 = String.UTF8View._foreignCount()();
        v46 = v220 + v43;
        if (__OFADD__(v220, v43))
        {
LABEL_320:
          __break(1u);
LABEL_321:
          __break(1u);
LABEL_322:
          __break(1u);
LABEL_323:
          swift_bridgeObjectRetain_n(v36, 2);
          v239._rawBits = 1;
          v240._rawBits = (v46 << 16) | 1;
          v241._rawBits = _StringGuts.validateScalarRange(_:)(v239, v240, v37, v36)._rawBits;
          if (v241._rawBits < 0x10000)
          {
            v241._rawBits |= 3;
          }

          v48 = String.UTF8View.distance(from:to:)(v241, v242);
          v36;
          if ((v38 & 0x1000000000000000) != 0)
          {
            goto LABEL_326;
          }

LABEL_28:
          v49 = __OFADD__(v42, v48);
          v50 = v42 + v48;
          if (!v49)
          {
            goto LABEL_29;
          }

LABEL_328:
          __break(1u);
LABEL_329:
          if ((v38 & 0x1000000000000000) != 0)
          {
            v39 = _StringGuts._foreignConvertedToSmall()(*&v39, v38);
            v54 = v249;
          }

          else
          {
            if ((*&v39 & 0x1000000000000000) != 0)
            {
              v244 = ((v38 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v244 = _StringObject.sharedUTF8.getter(*&v39, v38);
              v41 = v252;
            }

            closure #1 in _StringGuts._convertedToSmall()(v244, v41, &v270, v47);
            v39 = v270;
            v54 = v271;
          }

          goto LABEL_38;
        }

LABEL_185:
        if ((*&v39 & ~v38 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v38 & 0xFFFFFFFFFFFFFFFLL))
        {
          v146 = _StringGuts.nativeUnusedCapacity.getter(*&v39, v38);
          v147 = v260;
          if (v148)
          {
            goto LABEL_339;
          }

          if (v46 > 15)
          {
LABEL_196:
            _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v46, v43);
            if ((v36 & 0x1000000000000000) != 0)
            {
              _StringGuts._foreignAppendInPlace(_:)(v147, v36, 0, v41);
            }

            else
            {
              if ((v36 & 0x2000000000000000) != 0)
              {
                v270 = v147;
                v271 = v255;
                if (v258 < v41)
                {
                  goto LABEL_338;
                }

                v155 = (v36 >> 62) & 1;
                v153 = &v270;
                v154 = v41;
              }

              else
              {
                v151 = v254;
                v152 = v261;
                if ((v147 & 0x1000000000000000) != 0)
                {
                  if (v261 < v41)
                  {
                    goto LABEL_338;
                  }
                }

                else
                {
                  v151 = _StringObject.sharedUTF8.getter(v147, v36);
                  v152 = v230;
                  if (v230 < v41)
                  {
                    goto LABEL_338;
                  }
                }

                v153 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v41, v151, v152);
                v155 = v147 >> 63;
              }

              closure #1 in _StringGuts.append(_:)(v153, v154, &v272, v155);
            }

            goto LABEL_230;
          }

          if ((v38 & 0x2000000000000000) == 0)
          {
            if (v146 >= v43)
            {
              goto LABEL_196;
            }

LABEL_191:
            if ((v38 & 0x1000000000000000) != 0)
            {
              v39 = _StringGuts._foreignConvertedToSmall()(*&v39, v38);
              v150 = v213;
            }

            else
            {
              if ((*&v39 & 0x1000000000000000) != 0)
              {
                v149 = ((v38 & 0xFFFFFFFFFFFFFFFLL) + 32);
              }

              else
              {
                v149 = _StringObject.sharedUTF8.getter(*&v39, v38);
                v42 = v233;
              }

              closure #1 in _StringGuts._convertedToSmall()(v149, v42, &v270, v142);
              v39 = v270;
              v150 = v271;
            }

            goto LABEL_203;
          }
        }

        else
        {
          v147 = v260;
          if (v46 >= 16)
          {
            goto LABEL_196;
          }

          if ((v38 & 0x2000000000000000) == 0)
          {
            goto LABEL_191;
          }
        }

        v150 = v38;
LABEL_203:
        v36;
        v156._rawBits = 1;
        v157._rawBits = (v41 << 16) | 1;
        v158._rawBits = _StringGuts.validateScalarRange(_:)(v156, v157, v147, v36)._rawBits;
        if (v158._rawBits < 0x10000)
        {
          v158._rawBits |= 3;
        }

        if (v158._rawBits >> 16 || (v161 = v36, v162 = v147, v159._rawBits >> 16 != v257))
        {
          v162 = specialized static String._copying(_:)(v158._rawBits, v159, v147, v36);
          v161 = v163;
          v36;
        }

        if ((v161 & 0x2000000000000000) != 0)
        {
          v161;
        }

        else if ((v161 & 0x1000000000000000) != 0)
        {
          v162 = _StringGuts._foreignConvertedToSmall()(*&v162, v161);
          v236 = v235;
          v161;
          v161 = v236;
        }

        else
        {
          if ((*&v162 & 0x1000000000000000) != 0)
          {
            v226 = ((v161 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v227 = *&v162 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v226 = _StringObject.sharedUTF8.getter(*&v162, v161);
          }

          closure #1 in _StringGuts._convertedToSmall()(v226, v227, &v270, v160);
          v161;
          v162 = v270;
          v161 = v271;
        }

        v164 = specialized _SmallString.init(_:appending:)(*&v39, v150, *&v162, v161);
        if (v166)
        {
          goto LABEL_339;
        }

        v167 = v164;
        v168 = v165;
        v38;
        v272 = v167;
        v273 = v168;
LABEL_230:
        v39 = v272;
        v38 = v273;
        v177 = HIBYTE(v273) & 0xF;
        v36 = v272 & 0xFFFFFFFFFFFFLL;
        if ((v273 & 0x2000000000000000) != 0)
        {
          v178 = HIBYTE(v273) & 0xF;
        }

        else
        {
          v178 = v272 & 0xFFFFFFFFFFFFLL;
        }

        if (!v178 && (v272 & ~v273 & 0x2000000000000000) == 0)
        {
          v273;
          v272 = v37;
          v273 = v44;
          v36 = v266;
          v33 = v267;
          v32 = v265;
          goto LABEL_170;
        }

        v46 = v44 & 0x2000000000000000;
        v42 = HIBYTE(v44) & 0xF;
        if ((v44 & 0x2000000000000000 & v273) != 0)
        {
          v179 = v177 + v42;
          if (v177 + v42 <= 0xF)
          {
            if (v42)
            {
              v190 = 0;
              v191 = 0;
              v192 = 8 * v177;
              v193 = 8 * v42;
              v194 = v273;
              v32 = v265;
              v36 = v266;
              do
              {
                v195 = v44 >> (v190 & 0x38);
                if (v191 < 8)
                {
                  v195 = v37 >> v190;
                }

                v196 = (v195 << (v192 & 0x38)) | ((-255 << (v192 & 0x38)) - 1) & v194;
                v197 = (v195 << v192) | ((-255 << v192) - 1) & *&v39;
                if (v177 <= 7)
                {
                  v39 = v197;
                }

                else
                {
                  v194 = v196;
                }

                ++v177;
                v192 += 8;
                v190 += 8;
                ++v191;
              }

              while (v193 != v190);
            }

            else
            {
              v194 = v273;
              v32 = v265;
              v36 = v266;
            }

            v273;
            v44;
            v212 = 0xA000000000000000;
            if (!(*&v39 & 0x8080808080808080 | v194 & 0x80808080808080))
            {
              v212 = 0xE000000000000000;
            }

            v272 = v39;
            v273 = v212 & 0xFF00000000000000 | (v179 << 56) | v194 & 0xFFFFFFFFFFFFFFLL;
            goto LABEL_282;
          }
        }

        v43 = v37 & 0xFFFFFFFFFFFFLL;
        if (v46)
        {
          v41 = HIBYTE(v44) & 0xF;
        }

        else
        {
          v41 = v37 & 0xFFFFFFFFFFFFLL;
        }

        v259._rawBits = v41;
        if ((v44 & 0x1000000000000000) != 0)
        {
          swift_bridgeObjectRetain_n(v44, 2);
          v221._rawBits = 1;
          v222._rawBits = (v41 << 16) | 1;
          v223._rawBits = _StringGuts.validateScalarRange(_:)(v221, v222, v37, v44)._rawBits;
          if (v223._rawBits < 0x10000)
          {
            v223._rawBits |= 3;
          }

          v41 = String.UTF8View.distance(from:to:)(v223, v224);
          v44;
          if ((v38 & 0x1000000000000000) == 0)
          {
LABEL_242:
            v49 = __OFADD__(v178, v41);
            v181 = v178 + v41;
            if (v49)
            {
              goto LABEL_321;
            }

            goto LABEL_243;
          }
        }

        else
        {
          v44;
          if ((v38 & 0x1000000000000000) == 0)
          {
            goto LABEL_242;
          }
        }

        v225 = String.UTF8View._foreignCount()();
        v181 = v225 + v41;
        if (__OFADD__(v225, v41))
        {
          goto LABEL_321;
        }

LABEL_243:
        if ((*&v39 & ~v38 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v38 & 0xFFFFFFFFFFFFFFFLL))
        {
          v182 = _StringGuts.nativeUnusedCapacity.getter(*&v39, v38);
          if (v183)
          {
            goto LABEL_339;
          }

          if (v181 <= 15)
          {
            if ((v38 & 0x2000000000000000) != 0)
            {
              goto LABEL_269;
            }

            if (v182 < v41)
            {
              goto LABEL_249;
            }
          }
        }

        else if (v181 < 16)
        {
          if ((v38 & 0x2000000000000000) != 0)
          {
LABEL_269:
            v185 = v38;
          }

          else
          {
LABEL_249:
            if ((v38 & 0x1000000000000000) != 0)
            {
              v39 = _StringGuts._foreignConvertedToSmall()(*&v39, v38);
              v185 = v214;
            }

            else
            {
              if ((*&v39 & 0x1000000000000000) != 0)
              {
                v184 = ((v38 & 0xFFFFFFFFFFFFFFFLL) + 32);
              }

              else
              {
                v184 = _StringObject.sharedUTF8.getter(*&v39, v38);
                v36 = v234;
              }

              closure #1 in _StringGuts._convertedToSmall()(v184, v36, &v270, v180);
              v39 = v270;
              v185 = v271;
            }
          }

          v198 = (v259._rawBits << 16) | 1;
          v44;
          v199._rawBits = 1;
          v200._rawBits = v198;
          v201._rawBits = _StringGuts.validateScalarRange(_:)(v199, v200, v37, v44)._rawBits;
          if (v201._rawBits < 0x10000)
          {
            v201._rawBits |= 3;
          }

          v203 = Substring.description.getter(v201._rawBits, v202, v37, v44);
          v205 = v204;
          v44;
          if ((v205 & 0x2000000000000000) != 0)
          {
            v205;
            v36 = v266;
          }

          else
          {
            v36 = v266;
            if ((v205 & 0x1000000000000000) != 0)
            {
              v203 = _StringGuts._foreignConvertedToSmall()(v203, v205);
              v238 = v237;
              v205;
              v205 = v238;
            }

            else
            {
              if ((v203 & 0x1000000000000000) != 0)
              {
                v228 = ((v205 & 0xFFFFFFFFFFFFFFFLL) + 32);
                v229 = v203 & 0xFFFFFFFFFFFFLL;
              }

              else
              {
                v228 = _StringObject.sharedUTF8.getter(v203, v205);
              }

              closure #1 in _StringGuts._convertedToSmall()(v228, v229, &v270, v206);
              v205;
              v203 = v270;
              v205 = v271;
            }
          }

          v207 = specialized _SmallString.init(_:appending:)(*&v39, v185, v203, v205);
          if (v209)
          {
            goto LABEL_339;
          }

          v210 = v207;
          v211 = v208;
          v38;
          swift_bridgeObjectRelease_n(v44, 2);
          v272 = v210;
          v273 = v211;
          v33 = v267;
          v32 = v265;
          goto LABEL_170;
        }

        _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v181, v41);
        if ((v44 & 0x1000000000000000) != 0)
        {
          _StringGuts._foreignAppendInPlace(_:)(v37, v44, 0, v259._rawBits);
          swift_bridgeObjectRelease_n(v44, 2);
          v36 = v266;
          v33 = v267;
          v32 = v265;
        }

        else
        {
          v32 = v265;
          v36 = v266;
          if (v46)
          {
            v270 = v37;
            v271 = v44 & 0xFFFFFFFFFFFFFFLL;
            closure #1 in _StringGuts.append(_:)(&v270, HIBYTE(v44) & 0xF, &v272, (v44 & 0x4000000000000000) != 0);
            swift_bridgeObjectRelease_n(v44, 2);
LABEL_282:
            v33 = v267;
            goto LABEL_170;
          }

          if ((v37 & 0x1000000000000000) != 0)
          {
            v186 = (v44 & 0xFFFFFFFFFFFFFFFLL) + 32;
            v187 = v37 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v231 = _StringObject.sharedUTF8.getter(v37, v44);
            if (v232 < v43)
            {
              goto LABEL_338;
            }

            v186 = v231;
            v187 = v232;
          }

          v33 = v267;
          v188 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v37 & 0xFFFFFFFFFFFFLL, v186, v187);
          closure #1 in _StringGuts.append(_:)(v188, v189, &v272, v37 < 0);
          swift_bridgeObjectRelease_n(v44, 2);
        }

LABEL_170:
        v262(&v270, v33, v264);
        v44 = v271;
        if (!v271)
        {
          goto LABEL_316;
        }
      }

      v41 = v261;
      if ((v36 & 0x2000000000000000) == 0)
      {
        goto LABEL_182;
      }

      v145 = v143 + v258;
      if (v143 + v258 <= 0xF)
      {
        if (v258)
        {
          v169 = 0;
          v170 = 0;
          v171 = 8 * v143;
          v172 = v273;
          do
          {
            v173 = v36 >> (v169 & 0x38);
            if (v170 < 8)
            {
              v173 = v260 >> v169;
            }

            v174 = (v173 << (v171 & 0x38)) | ((-255 << (v171 & 0x38)) - 1) & v172;
            v175 = (v173 << v171) | ((-255 << v171) - 1) & *&v39;
            if (v143 <= 7)
            {
              v39 = v175;
            }

            else
            {
              v172 = v174;
            }

            ++v143;
            v171 += 8;
            v169 += 8;
            ++v170;
          }

          while (v253 != v169);
        }

        else
        {
          v172 = v273;
        }

        v273;
        v176 = 0xA000000000000000;
        if (!(*&v39 & 0x8080808080808080 | v172 & 0x80808080808080))
        {
          v176 = 0xE000000000000000;
        }

        v272 = v39;
        v273 = v176 & 0xFF00000000000000 | (v145 << 56) | v172 & 0xFFFFFFFFFFFFFFLL;
        goto LABEL_230;
      }

LABEL_181:
      v41 = v258;
      goto LABEL_182;
    }

    goto LABEL_316;
  }

  v31(a3, v12);
  v62 = v267;
  v63 = swift_getAssociatedConformanceWitness(v12, a3, v267, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v64 = *(v63 + 16);
  v264 = v63 + 16;
  v265 = v63;
  v263 = v64;
  (v64)(&v270, v62);
  v65 = v271;
  if (v271)
  {
    v36 = -255;
    do
    {
      v43 = v270;
      v44 = v272;
      v38 = v273;
      v68 = HIBYTE(v273) & 0xF;
      v41 = v272 & 0xFFFFFFFFFFFFLL;
      if ((v273 & 0x2000000000000000) != 0)
      {
        v69 = HIBYTE(v273) & 0xF;
      }

      else
      {
        v69 = v272 & 0xFFFFFFFFFFFFLL;
      }

      if (!v69 && (v272 & ~v273 & 0x2000000000000000) == 0)
      {
        v273;
        v272 = v43;
        v273 = v65;
        goto LABEL_51;
      }

      v39 = (v65 & 0x2000000000000000);
      v42 = HIBYTE(v65) & 0xF;
      v70 = v68 + v42;
      if ((v65 & 0x2000000000000000 & v273) != 0 && v70 <= 0xF)
      {
        if (v42)
        {
          v83 = 0;
          v84 = 0;
          v85 = 8 * v68;
          v86 = 8 * v42;
          v66 = v273;
          do
          {
            v87 = v65 >> (v83 & 0x38);
            if (v84 < 8)
            {
              v87 = v270 >> v83;
            }

            v88 = (v87 << (v85 & 0x38)) | ((-255 << (v85 & 0x38)) - 1) & v66;
            v89 = (v87 << v85) | ((-255 << v85) - 1) & v44;
            if (v68 <= 7)
            {
              v44 = v89;
            }

            else
            {
              v66 = v88;
            }

            ++v68;
            v85 += 8;
            v83 += 8;
            ++v84;
          }

          while (v86 != v83);
        }

        else
        {
          v66 = v273;
        }

        v273;
        v65;
        v67 = 0xA000000000000000;
        if (!(v44 & 0x8080808080808080 | v66 & 0x80808080808080))
        {
          v67 = 0xE000000000000000;
        }

        v272 = v44;
        v273 = v67 & 0xFF00000000000000 | (v70 << 56) | v66 & 0xFFFFFFFFFFFFFFLL;
        goto LABEL_50;
      }

      if (v39)
      {
        v37 = HIBYTE(v65) & 0xF;
      }

      else
      {
        v37 = v270 & 0xFFFFFFFFFFFFLL;
      }

      v261 = v270 & 0xFFFFFFFFFFFFLL;
      v262 = v37;
      if ((v65 & 0x1000000000000000) != 0)
      {
        swift_bridgeObjectRetain_n(v65, 2);
        v103._rawBits = 1;
        v104._rawBits = (v37 << 16) | 1;
        v105._rawBits = _StringGuts.validateScalarRange(_:)(v103, v104, v43, v65)._rawBits;
        if (v105._rawBits < 0x10000)
        {
          v105._rawBits |= 3;
        }

        v37 = String.UTF8View.distance(from:to:)(v105, v106);
        v65;
        if ((v38 & 0x1000000000000000) == 0)
        {
LABEL_67:
          v49 = __OFADD__(v69, v37);
          v46 = v69 + v37;
          if (v49)
          {
            goto LABEL_322;
          }

          goto LABEL_68;
        }
      }

      else
      {
        v65;
        if ((v38 & 0x1000000000000000) == 0)
        {
          goto LABEL_67;
        }
      }

      v107 = String.UTF8View._foreignCount()();
      v46 = v107 + v37;
      if (__OFADD__(v107, v37))
      {
        goto LABEL_322;
      }

LABEL_68:
      if ((v44 & ~v38 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v38 & 0xFFFFFFFFFFFFFFFLL))
      {
        v73 = _StringGuts.nativeUnusedCapacity.getter(v44, v38);
        if (v74)
        {
          goto LABEL_339;
        }

        if (v46 <= 15)
        {
          if ((v38 & 0x2000000000000000) != 0)
          {
            goto LABEL_94;
          }

          if (v73 < v37)
          {
            goto LABEL_74;
          }
        }
      }

      else if (v46 < 16)
      {
        if ((v38 & 0x2000000000000000) != 0)
        {
LABEL_94:
          v77 = v38;
          goto LABEL_95;
        }

LABEL_74:
        if ((v38 & 0x1000000000000000) != 0)
        {
          v44 = _StringGuts._foreignConvertedToSmall()(v44, v38);
          v77 = v102;
LABEL_95:
          v76 = v262;
        }

        else
        {
          if ((v44 & 0x1000000000000000) != 0)
          {
            v75 = ((v38 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v75 = _StringObject.sharedUTF8.getter(v44, v38);
            v41 = v112;
          }

          v76 = v262;
          closure #1 in _StringGuts._convertedToSmall()(v75, v41, &v268, v72);
          v44 = v268;
          v77 = v269;
        }

        v65;
        v90._rawBits = 1;
        v91._rawBits = (v76 << 16) | 1;
        v92._rawBits = _StringGuts.validateScalarRange(_:)(v90, v91, v43, v65)._rawBits;
        if (v92._rawBits < 0x10000)
        {
          v92._rawBits |= 3;
        }

        if (v92._rawBits >> 16 || (v93._rawBits >> 16) != v76)
        {
          v43 = specialized static String._copying(_:)(v92._rawBits, v93, v43, v65);
          v95 = v96;
          v65;
        }

        else
        {
          v95 = v65;
        }

        if ((v95 & 0x2000000000000000) != 0)
        {
          v95;
        }

        else if ((v95 & 0x1000000000000000) != 0)
        {
          v43 = _StringGuts._foreignConvertedToSmall()(v43, v95);
          v114 = v113;
          v95;
          v95 = v114;
        }

        else
        {
          if ((v43 & 0x1000000000000000) != 0)
          {
            v108 = ((v95 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v109 = v43 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v108 = _StringObject.sharedUTF8.getter(v43, v95);
          }

          closure #1 in _StringGuts._convertedToSmall()(v108, v109, &v268, v94);
          v95;
          v43 = v268;
          v95 = v269;
        }

        v97 = specialized _SmallString.init(_:appending:)(v44, v77, v43, v95);
        if (v99)
        {
          goto LABEL_339;
        }

        v100 = v97;
        v101 = v98;
        v38;
        swift_bridgeObjectRelease_n(v65, 2);
        v272 = v100;
        v273 = v101;
        goto LABEL_50;
      }

      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v46, v37);
      if ((v65 & 0x1000000000000000) != 0)
      {
        _StringGuts._foreignAppendInPlace(_:)(v43, v65, 0, v262);
        goto LABEL_109;
      }

      if (v39)
      {
        v268 = v43;
        v269 = v65 & 0xFFFFFFFFFFFFFFLL;
        closure #1 in _StringGuts.append(_:)(&v268, HIBYTE(v65) & 0xF, &v272, (v65 & 0x4000000000000000) != 0);
LABEL_109:
        swift_bridgeObjectRelease_n(v65, 2);
LABEL_50:
        v62 = v267;
        goto LABEL_51;
      }

      if ((v43 & 0x1000000000000000) != 0)
      {
        v78 = (v65 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v79 = v261;
        v80 = v261;
      }

      else
      {
        v110 = _StringObject.sharedUTF8.getter(v43, v65);
        v80 = v111;
        v79 = v261;
        if (v80 < v261)
        {
          goto LABEL_338;
        }

        v78 = v110;
      }

      v62 = v267;
      v81 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v79, v78, v80);
      closure #1 in _StringGuts.append(_:)(v81, v82, &v272, v43 < 0);
      swift_bridgeObjectRelease_n(v65, 2);
LABEL_51:
      v263(&v270, v62, v265);
      v65 = v271;
    }

    while (v271);
  }

  (*(v256 + 8))(v266, v62);
  return v272;
}

Swift::String __swiftcall String.lowercased()()
{
  v2 = v1;
  v3 = v0;
  v4 = 0;
  v96 = *MEMORY[0x1E69E9840];
  if ((v1 & 0x1000000000000000) != 0)
  {
    *&v95 = 0;
    *(&v95 + 1) = 0xE000000000000000;
    v50 = String.UTF8View._foreignCount()();
    v6 = v2 & 0x2000000000000000;
    v51 = HIBYTE(v2) & 0xF;
    v52 = v3 & 0xFFFFFFFFFFFFLL;
    goto LABEL_52;
  }

  v5 = v0 < 0;
  v6 = v1 & 0x2000000000000000;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v5 = (v1 & 0x4000000000000000) != 0;
  }

  if (!v5)
  {
    *&v95 = 0;
    *(&v95 + 1) = 0xE000000000000000;
    v51 = HIBYTE(v1) & 0xF;
    v52 = v0 & 0xFFFFFFFFFFFFLL;
    if (v6)
    {
      v50 = HIBYTE(v1) & 0xF;
    }

    else
    {
      v50 = v0 & 0xFFFFFFFFFFFFLL;
    }

LABEL_52:
    String.reserveCapacity(_:)(v50);
    if (v6)
    {
      v54 = v51;
    }

    else
    {
      v54 = v52;
    }

    if (!v54)
    {
LABEL_89:
      v20 = *(&v95 + 1);
      v17 = v95;
      goto LABEL_29;
    }

    v55 = 0;
    v91 = v54;
    while (1)
    {
      if ((v2 & 0x1000000000000000) != 0)
      {
        v60 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v55 << 16));
        scalarLength = v60.scalarLength;
        value = v60._0._value;
      }

      else
      {
        if (v6)
        {
          *&v94[0] = v3;
          *(&v94[0] + 1) = v2 & 0xFFFFFFFFFFFFFFLL;
          v57 = v94;
        }

        else
        {
          v57 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((v3 & 0x1000000000000000) == 0)
          {
            v57 = _StringObject.sharedUTF8.getter(v3, v2);
          }
        }

        value = _decodeScalar(_:startingAt:)(v57, v53, v55);
      }

      v61 = value;
      v62 = scalarLength;
      *&v94[0] = 0;
      SpecialMapping = _swift_stdlib_getSpecialMapping(value, 1, v94);
      if (SpecialMapping && *&v94[0])
      {
        if ((*&v94[0] & 0x8000000000000000) != 0)
        {
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v65 = specialized static String._uncheckedFromUTF8(_:isASCII:)(SpecialMapping, *&v94[0], 0, v64);
      }

      else
      {
        Mapping = _swift_stdlib_getMapping(v61, 1);
        if (Mapping)
        {
          v76 = Mapping + v61;
          if (v76 < 0 || HIDWORD(v76))
          {
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }
        }

        else
        {
          LODWORD(v76) = v61;
        }

        v65 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v76);
      }

      v77 = v66;
      v78 = v95;
      v79 = HIBYTE(*(&v95 + 1)) & 0xFLL;
      if ((*(&v95 + 1) & 0x2000000000000000) == 0)
      {
        v79 = v95 & 0xFFFFFFFFFFFFLL;
      }

      if (!v79 && (v95 & ~*(&v95 + 1) & 0x2000000000000000) == 0)
      {
        v85 = v65;
        *(&v95 + 1);
        *&v95 = v85;
        *(&v95 + 1) = v77;
        goto LABEL_59;
      }

      if ((*(&v95 + 1) & 0x2000000000000000) != 0)
      {
        if ((v66 & 0x2000000000000000) != 0)
        {
          v92 = v4;
          v80 = v6;
          v81 = v65;
          v82 = specialized _SmallString.init(_:appending:)(v95, *(&v95 + 1), v65, v66);
          if ((v84 & 1) == 0)
          {
            v86 = v82;
            v87 = v83;
            *(&v78 + 1);
            v77;
            *&v95 = v86;
            *(&v95 + 1) = v87;
            v6 = v80;
            v4 = v92;
            v54 = v91;
            goto LABEL_59;
          }

          v56 = HIBYTE(v77) & 0xF;
          v65 = v81;
          v4 = v92;
          v54 = v91;
          goto LABEL_58;
        }
      }

      else if ((v66 & 0x2000000000000000) != 0)
      {
        v56 = HIBYTE(v66) & 0xF;
        goto LABEL_58;
      }

      v56 = v65 & 0xFFFFFFFFFFFFLL;
LABEL_58:
      _StringGuts.append(_:)(v65, v77, 0, v56, v67, v68, v69, v70, v71, v72, v73, v74);
      v77;
LABEL_59:
      v55 += v62;
      if (v55 >= v54)
      {
        goto LABEL_89;
      }
    }
  }

  if (!v6)
  {
    if ((v0 & 0x1000000000000000) != 0)
    {
      v7 = ((v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v0 & 0xFFFFFFFFFFFFLL;
      if ((v0 & 0xFFFFFFFFFFFFuLL) <= 0xF)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v7 = _StringObject.sharedUTF8.getter(v0, v1);
      v8 = v88;
      if (v88 <= 15)
      {
LABEL_8:
        v95 = xmmword_18071DD30;
        if (v8)
        {
          v9 = v8 & ~(v8 >> 63);
          v10 = v8 - 1;
          if (v9 < v8 - 1)
          {
            v10 = v8 & ~(v8 >> 63);
          }

          if (v10 >= 0x10)
          {
            v23 = v10 + 1;
            v24 = v23 & 0xF;
            if ((v23 & 0xF) == 0)
            {
              v24 = 16;
            }

            v11 = v23 - v24;
            v25 = &v95;
            v26.i64[0] = -1;
            v26.i64[1] = -1;
            v27.i64[0] = 0x3F3F3F3F3F3F3F3FLL;
            v27.i64[1] = 0x3F3F3F3F3F3F3F3FLL;
            v28 = vdupq_n_s64(0x3FFE000000000uLL);
            v29.i64[0] = 0x2020202020202020;
            v29.i64[1] = 0x2020202020202020;
            v30 = v11;
            v31 = v7;
            do
            {
              v32 = *v31++;
              v33 = vandq_s8(vshrq_n_u8(vaddq_s8(v32, v26), 1uLL), v27);
              v34 = vmovl_u8(*v33.i8);
              v35 = vmovl_u16(*v34.i8);
              v36.i64[0] = v35.u32[0];
              v36.i64[1] = v35.u32[1];
              v37 = v36;
              v38 = vmovl_high_u16(v34);
              v39 = vmovl_high_u8(v33);
              v36.i64[0] = v38.u32[0];
              v36.i64[1] = v38.u32[1];
              v40 = v36;
              v41 = vmovl_u16(*v39.i8);
              v36.i64[0] = v41.u32[0];
              v36.i64[1] = v41.u32[1];
              v42 = v36;
              v43 = vmovl_high_u16(v39);
              v36.i64[0] = v43.u32[0];
              v36.i64[1] = v43.u32[1];
              v97.val[3] = vshlq_u64(v28, vsubw_high_u32(0, v43));
              v97.val[1] = vshlq_u64(v28, vsubw_high_u32(0, v41));
              v97.val[2] = vshlq_u64(v28, vnegq_s64(v36));
              v97.val[0] = vshlq_u64(v28, vnegq_s64(v42));
              v98.val[3] = vshlq_u64(v28, vsubw_high_u32(0, v38));
              v98.val[1] = vshlq_u64(v28, vsubw_high_u32(0, v35));
              v98.val[2] = vshlq_u64(v28, vnegq_s64(v40));
              v98.val[0] = vshlq_u64(v28, vnegq_s64(v37));
              v43.i64[0] = vqtbl4q_s8(v98, xmmword_18071DD40).u64[0];
              v43.i64[1] = vqtbl4q_s8(v97, xmmword_18071DD40).u64[0];
              *v25++ = vaddq_s8(vandq_s8(v43, v29), v32);
              v30 -= 16;
            }

            while (v30);
          }

          else
          {
            v11 = 0;
          }

          do
          {
            if (v9 == v11)
            {
              _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            *(&v95 + v11) = ((0x3FFE000000000uLL >> ((v7->u8[v11] - 1) >> 1)) & 0x20) + v7->i8[v11];
            ++v11;
          }

          while (v8 != v11);
          v44 = 8;
          if (v8 <= 8)
          {
            v45 = 8;
          }

          else
          {
            v45 = v8;
          }

          v46 = 56 * v45;
          if (v8 < 8)
          {
            v44 = v8;
          }

          v47 = 0xFFFFFFFFFFFFFFFFLL >> (v46 & 0x38);
          if (v8 <= 8)
          {
            v47 = 0;
          }

          v17 = v95 & (0xFFFFFFFFFFFFFFFFLL >> ((56 * v44) & 0x38));
          v48 = *(&v95 + 1) & v47;
          v49 = 0xA000000000000000;
          if (((*(&v95 + 1) & v47 | v17) & 0x8080808080808080) == 0)
          {
            v49 = 0xE000000000000000;
          }

          v20 = v49 | (v8 << 56) | v48;
          v2;
          if ((v20 & 0x4000000000000000) == 0)
          {
            *&v95 = v17;
            *(&v95 + 1) = v48 & 0xFFFFFFFFFFFFFFLL;
            closure #2 in String.init(_uninitializedCapacity:initializingUTF8With:)(&v95, HIBYTE(v20) & 0xF, v94);
            v2;
            v20 = *(&v94[0] + 1);
            v17 = *&v94[0];
            goto LABEL_29;
          }

          goto LABEL_28;
        }

        goto LABEL_27;
      }
    }

    v2;
    v17 = specialized static String._fromLargeUTF8Repairing(uninitializedCapacity:initializingWith:)(v8, v7, v8, v3, v2, specialized static __StringStorage.create(uninitializedCodeUnitCapacity:initializingUncheckedUTF8With:));
    v20 = v89;
    goto LABEL_28;
  }

  v12 = HIBYTE(v1) & 0xF;
  *&v95 = v0;
  *(&v95 + 1) = v1 & 0xFFFFFFFFFFFFFFLL;
  v94[0] = xmmword_18071DD30;
  if (!v12)
  {
LABEL_27:
    v2;
    v17 = 0;
    v20 = 0xE000000000000000;
LABEL_28:
    v2;
    goto LABEL_29;
  }

  for (i = 0; i != v12; ++i)
  {
    *(v94 + i) = ((0x3FFE000000000uLL >> ((*(&v95 + i) - 1) >> 1)) & 0x20) + *(&v95 + i);
  }

  if (v12 <= 8)
  {
    LOBYTE(v14) = 8;
  }

  else
  {
    v14 = HIBYTE(v1) & 0xF;
  }

  v15 = 0xFFFFFFFFFFFFFFFFLL >> ((56 * v14) & 0x38);
  if (v12 <= 8)
  {
    v15 = 0;
  }

  v16 = 8 - v12;
  if (v12 > 8)
  {
    v16 = 0;
  }

  v17 = *&v94[0] & (0xFFFFFFFFFFFFFFFFLL >> (8 * (v16 & 7u)));
  v18 = *(&v94[0] + 1) & v15;
  v19 = 0xA000000000000000;
  if (((*(&v94[0] + 1) & v15 | v17) & 0x8080808080808080) == 0)
  {
    v19 = 0xE000000000000000;
  }

  v20 = v19 | (v12 << 56) | v18;
  v1;
  if ((v20 & 0x4000000000000000) != 0)
  {
    goto LABEL_28;
  }

  *&v94[0] = v17;
  *(&v94[0] + 1) = v18 & 0xFFFFFFFFFFFFFFLL;
  closure #2 in String.init(_uninitializedCapacity:initializingUTF8With:)(v94, HIBYTE(v20) & 0xF, v93);
  v2;
  v17 = v93[0];
  v20 = v93[1];
LABEL_29:
  v21 = v17;
  v22 = v20;
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

uint64_t _StringGuts.isFastASCII.getter(unint64_t a1, unint64_t a2)
{
  v2 = (a2 >> 62) & 1;
  if ((a2 & 0x2000000000000000) == 0)
  {
    LODWORD(v2) = a1 >> 63;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

void (*UnsafeMutableBufferPointer.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (a2 < 0 || a4 <= a2)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return _swift_displayCrashMessage;
}

Swift::Int String.UTF8View.count.getter(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return String.UTF8View._foreignCount()();
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    return HIBYTE(a2) & 0xF;
  }

  return a1 & 0xFFFFFFFFFFFFLL;
}

Swift::String __swiftcall String.uppercased()()
{
  v2 = v1;
  v3 = v0;
  v4 = 0;
  v96 = *MEMORY[0x1E69E9840];
  if ((v1 & 0x1000000000000000) != 0)
  {
    *&v95 = 0;
    *(&v95 + 1) = 0xE000000000000000;
    v50 = String.UTF8View._foreignCount()();
    v6 = v2 & 0x2000000000000000;
    v51 = HIBYTE(v2) & 0xF;
    v52 = v3 & 0xFFFFFFFFFFFFLL;
    goto LABEL_52;
  }

  v5 = v0 < 0;
  v6 = v1 & 0x2000000000000000;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v5 = (v1 & 0x4000000000000000) != 0;
  }

  if (!v5)
  {
    *&v95 = 0;
    *(&v95 + 1) = 0xE000000000000000;
    v51 = HIBYTE(v1) & 0xF;
    v52 = v0 & 0xFFFFFFFFFFFFLL;
    if (v6)
    {
      v50 = HIBYTE(v1) & 0xF;
    }

    else
    {
      v50 = v0 & 0xFFFFFFFFFFFFLL;
    }

LABEL_52:
    String.reserveCapacity(_:)(v50);
    if (v6)
    {
      v54 = v51;
    }

    else
    {
      v54 = v52;
    }

    if (!v54)
    {
LABEL_89:
      v20 = *(&v95 + 1);
      v17 = v95;
      goto LABEL_29;
    }

    v55 = 0;
    v91 = v54;
    while (1)
    {
      if ((v2 & 0x1000000000000000) != 0)
      {
        v60 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v55 << 16));
        scalarLength = v60.scalarLength;
        value = v60._0._value;
      }

      else
      {
        if (v6)
        {
          *&v94[0] = v3;
          *(&v94[0] + 1) = v2 & 0xFFFFFFFFFFFFFFLL;
          v57 = v94;
        }

        else
        {
          v57 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((v3 & 0x1000000000000000) == 0)
          {
            v57 = _StringObject.sharedUTF8.getter(v3, v2);
          }
        }

        value = _decodeScalar(_:startingAt:)(v57, v53, v55);
      }

      v61 = value;
      v62 = scalarLength;
      *&v94[0] = 0;
      SpecialMapping = _swift_stdlib_getSpecialMapping(value, 0, v94);
      if (SpecialMapping && *&v94[0])
      {
        if ((*&v94[0] & 0x8000000000000000) != 0)
        {
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v65 = specialized static String._uncheckedFromUTF8(_:isASCII:)(SpecialMapping, *&v94[0], 0, v64);
      }

      else
      {
        Mapping = _swift_stdlib_getMapping(v61, 0);
        if (Mapping)
        {
          v76 = Mapping + v61;
          if (v76 < 0 || HIDWORD(v76))
          {
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }
        }

        else
        {
          LODWORD(v76) = v61;
        }

        v65 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v76);
      }

      v77 = v66;
      v78 = v95;
      v79 = HIBYTE(*(&v95 + 1)) & 0xFLL;
      if ((*(&v95 + 1) & 0x2000000000000000) == 0)
      {
        v79 = v95 & 0xFFFFFFFFFFFFLL;
      }

      if (!v79 && (v95 & ~*(&v95 + 1) & 0x2000000000000000) == 0)
      {
        v85 = v65;
        *(&v95 + 1);
        *&v95 = v85;
        *(&v95 + 1) = v77;
        goto LABEL_59;
      }

      if ((*(&v95 + 1) & 0x2000000000000000) != 0)
      {
        if ((v66 & 0x2000000000000000) != 0)
        {
          v92 = v4;
          v80 = v6;
          v81 = v65;
          v82 = specialized _SmallString.init(_:appending:)(v95, *(&v95 + 1), v65, v66);
          if ((v84 & 1) == 0)
          {
            v86 = v82;
            v87 = v83;
            *(&v78 + 1);
            v77;
            *&v95 = v86;
            *(&v95 + 1) = v87;
            v6 = v80;
            v4 = v92;
            v54 = v91;
            goto LABEL_59;
          }

          v56 = HIBYTE(v77) & 0xF;
          v65 = v81;
          v4 = v92;
          v54 = v91;
          goto LABEL_58;
        }
      }

      else if ((v66 & 0x2000000000000000) != 0)
      {
        v56 = HIBYTE(v66) & 0xF;
        goto LABEL_58;
      }

      v56 = v65 & 0xFFFFFFFFFFFFLL;
LABEL_58:
      _StringGuts.append(_:)(v65, v77, 0, v56, v67, v68, v69, v70, v71, v72, v73, v74);
      v77;
LABEL_59:
      v55 += v62;
      if (v55 >= v54)
      {
        goto LABEL_89;
      }
    }
  }

  if (!v6)
  {
    if ((v0 & 0x1000000000000000) != 0)
    {
      v7 = ((v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v0 & 0xFFFFFFFFFFFFLL;
      if ((v0 & 0xFFFFFFFFFFFFuLL) <= 0xF)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v7 = _StringObject.sharedUTF8.getter(v0, v1);
      v8 = v88;
      if (v88 <= 15)
      {
LABEL_8:
        v95 = xmmword_18071DD30;
        if (v8)
        {
          v9 = v8 & ~(v8 >> 63);
          v10 = v8 - 1;
          if (v9 < v8 - 1)
          {
            v10 = v8 & ~(v8 >> 63);
          }

          if (v10 >= 0x10)
          {
            v23 = v10 + 1;
            v24 = v23 & 0xF;
            if ((v23 & 0xF) == 0)
            {
              v24 = 16;
            }

            v11 = v23 - v24;
            v25 = &v95;
            v26.i64[0] = -1;
            v26.i64[1] = -1;
            v27.i64[0] = 0x3F3F3F3F3F3F3F3FLL;
            v27.i64[1] = 0x3F3F3F3F3F3F3F3FLL;
            v28 = vdupq_n_s64(0x1FFF000000000000uLL);
            v29.i64[0] = 0x2020202020202020;
            v29.i64[1] = 0x2020202020202020;
            v30 = v11;
            v31 = v7;
            do
            {
              v32 = *v31++;
              v33 = vandq_s8(vshrq_n_u8(vaddq_s8(v32, v26), 1uLL), v27);
              v34 = vmovl_u8(*v33.i8);
              v35 = vmovl_u16(*v34.i8);
              v36.i64[0] = v35.u32[0];
              v36.i64[1] = v35.u32[1];
              v37 = v36;
              v38 = vmovl_high_u16(v34);
              v39 = vmovl_high_u8(v33);
              v36.i64[0] = v38.u32[0];
              v36.i64[1] = v38.u32[1];
              v40 = v36;
              v41 = vmovl_u16(*v39.i8);
              v36.i64[0] = v41.u32[0];
              v36.i64[1] = v41.u32[1];
              v42 = v36;
              v43 = vmovl_high_u16(v39);
              v36.i64[0] = v43.u32[0];
              v36.i64[1] = v43.u32[1];
              v97.val[3] = vshlq_u64(v28, vsubw_high_u32(0, v43));
              v97.val[1] = vshlq_u64(v28, vsubw_high_u32(0, v41));
              v97.val[2] = vshlq_u64(v28, vnegq_s64(v36));
              v97.val[0] = vshlq_u64(v28, vnegq_s64(v42));
              v98.val[3] = vshlq_u64(v28, vsubw_high_u32(0, v38));
              v98.val[1] = vshlq_u64(v28, vsubw_high_u32(0, v35));
              v98.val[2] = vshlq_u64(v28, vnegq_s64(v40));
              v98.val[0] = vshlq_u64(v28, vnegq_s64(v37));
              v43.i64[0] = vqtbl4q_s8(v98, xmmword_18071DD40).u64[0];
              v43.i64[1] = vqtbl4q_s8(v97, xmmword_18071DD40).u64[0];
              *v25++ = vsubq_s8(v32, vandq_s8(vshlq_n_s8(v43, 5uLL), v29));
              v30 -= 16;
            }

            while (v30);
          }

          else
          {
            v11 = 0;
          }

          do
          {
            if (v9 == v11)
            {
              _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            *(&v95 + v11) = v7->i8[v11] - 32 * ((0x1FFF000000000000uLL >> ((v7->u8[v11] - 1) >> 1)) & 1);
            ++v11;
          }

          while (v8 != v11);
          v44 = 8;
          if (v8 <= 8)
          {
            v45 = 8;
          }

          else
          {
            v45 = v8;
          }

          v46 = 56 * v45;
          if (v8 < 8)
          {
            v44 = v8;
          }

          v47 = 0xFFFFFFFFFFFFFFFFLL >> (v46 & 0x38);
          if (v8 <= 8)
          {
            v47 = 0;
          }

          v17 = v95 & (0xFFFFFFFFFFFFFFFFLL >> ((56 * v44) & 0x38));
          v48 = *(&v95 + 1) & v47;
          v49 = 0xA000000000000000;
          if (((*(&v95 + 1) & v47 | v17) & 0x8080808080808080) == 0)
          {
            v49 = 0xE000000000000000;
          }

          v20 = v49 | (v8 << 56) | v48;
          v2;
          if ((v20 & 0x4000000000000000) == 0)
          {
            *&v95 = v17;
            *(&v95 + 1) = v48 & 0xFFFFFFFFFFFFFFLL;
            closure #2 in String.init(_uninitializedCapacity:initializingUTF8With:)(&v95, HIBYTE(v20) & 0xF, v94);
            v2;
            v20 = *(&v94[0] + 1);
            v17 = *&v94[0];
            goto LABEL_29;
          }

          goto LABEL_28;
        }

        goto LABEL_27;
      }
    }

    v2;
    v17 = specialized static String._fromLargeUTF8Repairing(uninitializedCapacity:initializingWith:)(v8, v7, v8, v3, v2, specialized static __StringStorage.create(uninitializedCodeUnitCapacity:initializingUncheckedUTF8With:));
    v20 = v89;
    goto LABEL_28;
  }

  v12 = HIBYTE(v1) & 0xF;
  *&v95 = v0;
  *(&v95 + 1) = v1 & 0xFFFFFFFFFFFFFFLL;
  v94[0] = xmmword_18071DD30;
  if (!v12)
  {
LABEL_27:
    v2;
    v17 = 0;
    v20 = 0xE000000000000000;
LABEL_28:
    v2;
    goto LABEL_29;
  }

  for (i = 0; i != v12; ++i)
  {
    *(v94 + i) = *(&v95 + i) - 32 * ((0x1FFF000000000000uLL >> ((*(&v95 + i) - 1) >> 1)) & 1);
  }

  if (v12 <= 8)
  {
    LOBYTE(v14) = 8;
  }

  else
  {
    v14 = HIBYTE(v1) & 0xF;
  }

  v15 = 0xFFFFFFFFFFFFFFFFLL >> ((56 * v14) & 0x38);
  if (v12 <= 8)
  {
    v15 = 0;
  }

  v16 = 8 - v12;
  if (v12 > 8)
  {
    v16 = 0;
  }

  v17 = *&v94[0] & (0xFFFFFFFFFFFFFFFFLL >> (8 * (v16 & 7u)));
  v18 = *(&v94[0] + 1) & v15;
  v19 = 0xA000000000000000;
  if (((*(&v94[0] + 1) & v15 | v17) & 0x8080808080808080) == 0)
  {
    v19 = 0xE000000000000000;
  }

  v20 = v19 | (v12 << 56) | v18;
  v1;
  if ((v20 & 0x4000000000000000) != 0)
  {
    goto LABEL_28;
  }

  *&v94[0] = v17;
  *(&v94[0] + 1) = v18 & 0xFFFFFFFFFFFFFFLL;
  closure #2 in String.init(_uninitializedCapacity:initializingUTF8With:)(v94, HIBYTE(v20) & 0xF, v93);
  v2;
  v17 = v93[0];
  v20 = v93[1];
LABEL_29:
  v21 = v17;
  v22 = v20;
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

uint64_t String.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*(a3 + 8) + 8))(a2);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

__objc2_class **String._nfcCodeUnits.getter(unint64_t a1, unint64_t a2)
{
  v4 = &_swiftEmptyArrayStorage;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  specialized _StringGutsSlice._withNFCCodeUnits(_:)(a1, a2, 0, v2, &v4);
  return v4;
}

uint64_t closure #1 in String._nfcCodeUnits.getter(char a1, uint64_t *a2)
{
  v4 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native(*a2);
  *a2 = v4;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1, v4);
    v4 = result;
    *a2 = result;
  }

  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  if (v7 >= v6 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
    v4 = result;
    *a2 = result;
  }

  *(v4 + 16) = v7 + 1;
  *(v4 + v7 + 32) = a1;
  return result;
}

Swift::String::Index String._withNFCCodeUnits(_:)(uint64_t (*a1)(void), uint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  return _StringGutsSlice._withNFCCodeUnits(_:)(a1, a2, a3, a4, 0, v4);
}

uint64_t _StringBreadcrumbs.init(_:)(uint64_t a1, unint64_t a2)
{
  *(v2 + 24) = &_swiftEmptyArrayStorage;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    a2;
    v10 = 0;
    goto LABEL_50;
  }

  v5 = a1;
  *(v2 + 24) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v4 * 0x155555555555556uLL) >> 64, 0, &_swiftEmptyArrayStorage, canonical specialized generic type metadata accessor for _ContiguousArrayStorage<String.Index>, specialized UnsafeMutablePointer.moveInitialize(from:count:), specialized _ArrayBuffer._copyContents(subRange:initializing:));
  v6 = (a2 & 0x1000000000000000) == 0 || (v5 & 0x800000000000000) != 0;
  v7 = 4 * v4;
  v26 = v6;
  v8 = 4 << v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = (a2 & 0x4000000000000000) != 0;
  }

  else
  {
    v9 = v5 < 0;
  }

  a2;
  v10 = 0;
  rawBits = 15;
  v27 = v5;
  v28 = v4;
  do
  {
    if ((v10 & 0x3F) == 0)
    {
      v12 = *(v2 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v12);
      *(v2 + 24) = v12;
      if (!isUniquelyReferenced_nonNull_native)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, &v12[2]->isa + 1, 1, v12, canonical specialized generic type metadata accessor for _ContiguousArrayStorage<String.Index>, specialized UnsafeMutablePointer.moveInitialize(from:count:), specialized _ArrayBuffer._copyContents(subRange:initializing:));
        *(v2 + 24) = v12;
      }

      v15 = v12[2];
      v14 = v12[3];
      if (v15 >= v14 >> 1)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v12, canonical specialized generic type metadata accessor for _ContiguousArrayStorage<String.Index>, specialized UnsafeMutablePointer.moveInitialize(from:count:), specialized _ArrayBuffer._copyContents(subRange:initializing:));
      }

      v12[2] = (v15 + 1);
      v12[v15 + 4] = rawBits;
      *(v2 + 24) = v12;
      v5 = v27;
      v4 = v28;
    }

    if ((rawBits & 0xC) == v8)
    {
      rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
    }

    v16 = rawBits >> 16;
    if (rawBits >> 16 >= v4)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      rawBits = specialized String.UTF16View._foreignIndex(after:)(rawBits);
      goto LABEL_13;
    }

    if (v9)
    {
      rawBits = (rawBits & 0xFFFFFFFFFFFF0000) + 65549;
      goto LABEL_13;
    }

    if ((rawBits & 0xC001) != 0)
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      rawBits = _StringGuts.scalarAlignSlow(_:)(rawBits)._rawBits;
      v16 = rawBits >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
LABEL_37:
        v29[0] = v5;
        v29[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v18 = *(v29 + v16);
        if ((v18 & 0x80) != 0)
        {
          goto LABEL_30;
        }

        goto LABEL_38;
      }
    }

    v17 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    if ((v5 & 0x1000000000000000) == 0)
    {
      v17 = _StringObject.sharedUTF8.getter(v5, a2);
    }

    v18 = v17[v16];
    if ((v18 & 0x80) != 0)
    {
LABEL_30:
      LODWORD(v19) = __clz(v18 ^ 0xFF) - 24;
      if (v19 == 4)
      {
        if ((rawBits & 0xC000) == 0)
        {
          rawBits = rawBits & 0xFFFFFFFFFFFF0000 | 0x4004;
          goto LABEL_13;
        }

        v19 = 4;
      }

      else
      {
        v19 = v19;
      }

      goto LABEL_39;
    }

LABEL_38:
    v19 = 1;
LABEL_39:
    rawBits = (rawBits + (v19 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
LABEL_13:
    ++v10;
  }

  while (v7 != rawBits >> 14);
  swift_bridgeObjectRelease_n(a2, 2);
  if (v26)
  {
    v20 = 7;
  }

  else
  {
    v20 = 11;
  }

  if ((v10 & 0x3F) == 0)
  {
    v21 = *(v2 + 24);
    v22 = swift_isUniquelyReferenced_nonNull_native(v21);
    *(v2 + 24) = v21;
    if (!v22)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, &v21[2]->isa + 1, 1, v21, canonical specialized generic type metadata accessor for _ContiguousArrayStorage<String.Index>, specialized UnsafeMutablePointer.moveInitialize(from:count:), specialized _ArrayBuffer._copyContents(subRange:initializing:));
      *(v2 + 24) = v21;
    }

    v24 = v21[2];
    v23 = v21[3];
    if (v24 >= v23 >> 1)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v21, canonical specialized generic type metadata accessor for _ContiguousArrayStorage<String.Index>, specialized UnsafeMutablePointer.moveInitialize(from:count:), specialized _ArrayBuffer._copyContents(subRange:initializing:));
    }

    v21[2] = (v24 + 1);
    v21[v24 + 4] = (v20 | (v4 << 16));
    *(v2 + 24) = v21;
  }

LABEL_50:
  *(v2 + 16) = v10;
  return v2;
}

Swift::String::Index __swiftcall String.UTF16View.index(after:)(Swift::String::Index after)
{
  v3 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((after._rawBits & 0xC) == 4 << v3)
  {
    v9 = v1;
    v10 = v2;
    after._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(after)._rawBits;
    v1 = v9;
    v2 = v10;
  }

  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  v5 = after._rawBits >> 16;
  if (after._rawBits >> 16 >= v4)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v2 & 0x1000000000000000) == 0)
  {
    v6 = (v2 >> 62) & 1;
    if ((v2 & 0x2000000000000000) == 0)
    {
      LODWORD(v6) = v1 < 0;
    }

    if (v6 == 1)
    {
      return ((after._rawBits & 0xFFFFFFFFFFFF0000) + 65549);
    }

    if ((after._rawBits & 0xC001) != 0)
    {
      if ((v2 & 0x2000000000000000) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v11 = v1;
      v12 = v2;
      after._rawBits = _StringGuts.scalarAlignSlow(_:)(after)._rawBits;
      v1 = v11;
      v2 = v12;
      v5 = after._rawBits >> 16;
      if ((v12 & 0x2000000000000000) == 0)
      {
LABEL_15:
        if ((v1 & 0x1000000000000000) != 0)
        {
          LODWORD(v8) = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v5);
          if ((v8 & 0x80) != 0)
          {
LABEL_26:
            LODWORD(v8) = __clz(v8 ^ 0xFF) - 24;
            if (v8 == 4)
            {
              if ((after._rawBits & 0xC000) == 0)
              {
                v14 = 16388;
                return (after._rawBits & 0xFFFFFFFFFFFF0000 | v14);
              }

              v8 = 4;
            }

            else
            {
              v8 = v8;
            }

LABEL_30:
            after._rawBits += v8 << 16;
            v14 = 5;
            return (after._rawBits & 0xFFFFFFFFFFFF0000 | v14);
          }
        }

        else
        {
          rawBits = after._rawBits;
          v8 = _StringObject.sharedUTF8.getter(v1, v2);
          after._rawBits = rawBits;
          LODWORD(v8) = *(v8 + v5);
          if ((v8 & 0x80) != 0)
          {
            goto LABEL_26;
          }
        }

LABEL_24:
        v8 = 1;
        goto LABEL_30;
      }
    }

    v15[0] = v1;
    v15[1] = v2 & 0xFFFFFFFFFFFFFFLL;
    LODWORD(v8) = *(v15 + v5);
    if ((v8 & 0x80) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  return specialized String.UTF16View._foreignIndex(after:)(after._rawBits);
}

void _StringBreadcrumbs.__deallocating_deinit()
{
  *(v0 + 24);

  swift_deallocClassInstance(v0);
}

Swift::tuple_lowerBound_String_Index_offset_Int __swiftcall _StringBreadcrumbs.getBreadcrumb(forIndex:)(Swift::String::Index forIndex)
{
  v2 = forIndex._rawBits / 0xC00000;
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);
  if (v4 >= (forIndex._rawBits >> 22) + 1)
  {
    v5 = (forIndex._rawBits >> 22) + 1;
  }

  else
  {
    v5 = *(v3 + 16);
  }

  v6 = v5 - v2;
  if ((v5 - v2) < 2)
  {
LABEL_11:
    sub_1802E86D0(v2, 1, v3);
    forIndex._rawBits = *(v3 + 8 * v2 + 32);
    v9 = v2 << 6;
  }

  else
  {
    while (1)
    {
      v7 = __OFADD__(v2, v6 >> 1);
      v8 = v2 + (v6 >> 1);
      if (v7)
      {
        break;
      }

      if (v8 >= v4)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (forIndex._rawBits >> 14 < *(v3 + 32 + 8 * v8) >> 14)
      {
        v5 = v8;
      }

      else
      {
        v2 = v8;
      }

      v6 = v5 - v2;
      if ((v5 - v2) <= 1)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  result.offset = v9;
  result.lowerBound = forIndex;
  return result;
}

uint64_t _NSStringCopyBytes(_:encoding:into:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = 0;
  v6 = 0;
  if ([a1 getBytes:a3 maxLength:a4 - a3 usedLength:&v6 encoding:a2 options:0 range:0 remainingRange:{objc_msgSend(a1, sel_length), &v7}])
  {
    v4 = v8 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t specialized _withCocoaASCIIPointer<A>(_:requireStableAddress:work:)(unint64_t a1, void (*a2)(uint64_t *__return_ptr, void *))
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    v4 = specialized _SmallString.init(taggedCocoa:)(a1, 1);
    if ((v6 & 1) == 0)
    {
      if ((v5 & 0x2000000000000000) != 0)
      {
        v10[0] = v4;
        v10[1] = v5 & 0xFFFFFFFFFFFFFFLL;
        swift_unknownObjectRetain(a1);
        v7 = v10;
      }

      else
      {
        if ((v4 & 0x1000000000000000) != 0)
        {
          v8 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v8 = _StringObject.sharedUTF8.getter(v4, v5);
        }

        swift_unknownObjectRetain(a1);
        v7 = v8;
      }

      goto LABEL_11;
    }

    swift_unknownObjectRetain(a1);
  }

  v7 = [a1 _fastCStringContents_];
  if (v7)
  {
LABEL_11:
    a2(&v11, v7);
    return v11;
  }

  LOBYTE(v11) = 2;
  return v11;
}

unint64_t _bridgeCocoaString(_:)(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    v2 = _swift_classOfObjCHeapObject(a1);
    if (type metadata accessor for __StringStorage() == v2)
    {
      v8 = *(a1 + 24);
    }

    else
    {
      if (type metadata accessor for __SharedStringStorage() != v2)
      {
        v3 = [a1 copyWithZone_];
        if ((v3 & 0x8000000000000000) != 0)
        {
          v11 = specialized _SmallString.init(taggedCocoa:)(v3, 4);
          if (v12)
          {
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          return v11;
        }

        else
        {
          v4 = v3;
          v5 = [v3 _fastCStringContents_];
          v6 = [v4 length];
          v7 = 0x4000000000000000;
          if (v5)
          {
            v8 = v6 | 0xC000000000000000;
          }

          else
          {
            v7 = 0x5000000000000000;
            v8 = v6;
          }

          v7 | v4;
          swift_unknownObjectRelease(v4);
        }

        return v8;
      }

      v8 = *(a1 + 32);
    }

    a1;
    return v8;
  }

  v9 = specialized _SmallString.init(taggedCocoa:)(a1, 4);
  if (v10)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v8 = v9;
  swift_unknownObjectRetain(a1);
  return v8;
}

unint64_t String.init<A>(_immortalCocoaString:count:encoding:)(unint64_t a1, unint64_t a2, ValueMetadata *a3)
{
  v3 = a2;
  if (a3 == &type metadata for Unicode.ASCII)
  {
    v3 = a2 | 0xC000000000000000;
    goto LABEL_6;
  }

  if (a3 == &type metadata for Unicode.UTF8)
  {
LABEL_6:
    v5 = 0xC000000000000000;
    goto LABEL_7;
  }

  if (a3 != &type metadata for Unicode.UTF16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = 0x5000000000000000;
LABEL_7:
  v5 | a1;
  swift_unknownObjectRelease(a1);
  return v3;
}

unint64_t String.init(_cocoaString:)(void *a1)
{
  v2 = _bridgeCocoaString(_:)(a1);
  swift_unknownObjectRelease(a1);
  return v2;
}

Swift::Void __swiftcall _StringGuts.grow(_:)(Swift::Int a1)
{
  v2 = v1;
  v4 = _StringGuts.uniqueNativeCapacity.getter();
  if (v5)
  {
    v6 = v1[1];
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = String.UTF8View._foreignCount()();
    }

    else if ((v6 & 0x2000000000000000) != 0)
    {
      v7 = HIBYTE(v6) & 0xF;
    }

    else
    {
      v7 = *v1 & 0xFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v7 = 2 * v4;
  }

  if (v7 <= a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = v7;
  }

  v9 = v2[1];
  if ((v9 & 0x1000000000000000) != 0)
  {

    _StringGuts._foreignGrow(_:)(v8);
  }

  else
  {
    v10 = *v2;
    if ((v9 & 0x2000000000000000) != 0)
    {
      v18[0] = *v2;
      v18[1] = v9 & 0xFFFFFFFFFFFFFFLL;
      v14 = HIBYTE(v9) & 0xF | 0xC000000000000000;
      if ((v9 & 0x4000000000000000) == 0)
      {
        v14 = HIBYTE(v9) & 0xF;
      }

      v15 = v14 | 0x3000000000000000;
      v13 = _allocateStringStorage(codeUnitCapacity:)(v8);
      *(v13 + 16) = v16;
      *(v13 + 24) = v15;
      if (v16 < 0)
      {
        *__StringStorage._breadcrumbsAddress.getter() = 0;
        v15 = *(v13 + 24);
      }

      *(v13 + 32 + (v15 & 0xFFFFFFFFFFFFLL)) = 0;
      specialized UnsafeMutablePointer.initialize(from:count:)(v18, HIBYTE(v9) & 0xF, (v13 + 32));
    }

    else
    {
      if ((v10 & 0x1000000000000000) != 0)
      {
        v11 = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v12 = v10 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = _StringObject.sharedUTF8.getter(*v2, v2[1]);
      }

      v13 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v11, v12, v8, v10 < 0);
    }

    v17 = *(v13 + 24);
    v9;
    *v2 = v17;
    v2[1] = v13;
  }
}

unint64_t _StringGuts.isASCII.getter(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    return (a2 >> 62) & 1;
  }

  else
  {
    return a1 < 0;
  }
}

void *_SwiftCreateBridgedString_DoNotCall(bytes:length:encoding:)(unsigned __int8 *a1, uint64_t a2, int a3)
{
  if (a2 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a3 == 1536)
  {
    v9 = _sSS14_fromCodeUnits_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0B4UnitQy_7ElementRtzr0_lFZSRys5UInt8VG_s0H0O5ASCIIOTt0t2g5();
    if (!v10)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  else
  {
    if (a3 != 134217984)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000001CLL, 0x800000018066DFC0, "Swift/StringBridge.swift", 0x18uLL, 2, 0x28EuLL, 0);
    }

    v5 = validateUTF8(_:)(a1, a2);
    if ((v5 & 0x8000000000000000) != 0)
    {
      v9 = repairUTF8(_:firstKnownBrokenRange:)(a1, a2, v6, v7);
    }

    else
    {
      v9 = specialized static String._uncheckedFromUTF8(_:isASCII:)(a1, a2, v5 & 1, v8);
    }
  }

  v12 = v10;
  v13 = String._bridgeToObjectiveCImpl()(v9, v10, v11);
  v12;
  return v13;
}

uint64_t _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)(unsigned __int8 *a1, uint64_t a2)
{
  v3 = validateUTF8(_:)(a1, a2);
  v4 = a2 | 0xC000000000000000;
  if ((v3 & 1) == 0)
  {
    v4 = a2;
  }

  v5 = v4 | 0x1000000000000000;
  if (v3 >= 0)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

unint64_t validateUTF8(_:)(unsigned __int8 *a1, uint64_t a2)
{
  v4 = _allASCII(_:)(a1, a2);
  result = 1;
  if (v4 || !a1)
  {
    return result;
  }

  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  v7 = &a1[a2];
  v8 = 1;
  v9 = a1;
  v10 = a1;
  while (1)
  {
    v12 = *v10++;
    v11 = v12;
    if ((v12 & 0x80000000) == 0)
    {
      v13 = 1;
      goto LABEL_7;
    }

    if ((v11 + 11) <= 0xCCu)
    {
      v16 = _diagnoseInvalidUTF8MultiByteLeading(_:)(v11);
      v22 = v16;
      swift_willThrowTypedImpl(&v22, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
      v17 = v16 | 0x8000000000000000;
      goto LABEL_47;
    }

    if (v11 > 0xDFu)
    {
      break;
    }

    if (v10 == v7 || (*v10 & 0xC0) != 0x80)
    {
LABEL_50:
      v17 = 0x8000000000000004;
      v22 = 4;
      swift_willThrowTypedImpl(&v22, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
      goto LABEL_47;
    }

    v8 = 0;
    v10 = v9 + 2;
    v13 = 2;
LABEL_7:
    v6 += v13;
    v9 = v10;
    if (v10 == v7)
    {
      return v8 & 1;
    }
  }

  if (v11 == 224)
  {
    if (v10 == v7)
    {
      goto LABEL_50;
    }

    if (v9[1] - 192 < 0xFFFFFFE0)
    {
      goto LABEL_51;
    }

    goto LABEL_31;
  }

  if (v11 <= 0xECu)
  {
    goto LABEL_29;
  }

  if (v11 == 237)
  {
    if (v10 == v7)
    {
      goto LABEL_50;
    }

    v14 = v9[1];
    if (v14 > 0x9F || (v14 & 0xC0) != 0x80)
    {
      v22 = 1;
      swift_willThrowTypedImpl(&v22, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
      v17 = 0x8000000000000001;
      goto LABEL_47;
    }

    goto LABEL_31;
  }

  if (v11 <= 0xEFu)
  {
LABEL_29:
    if (v10 == v7 || (v9[1] & 0xC0) != 0x80)
    {
      goto LABEL_50;
    }

LABEL_31:
    if (v9 + 2 == v7 || (v9[2] & 0xC0) != 0x80)
    {
      goto LABEL_50;
    }

    v8 = 0;
    v10 = v9 + 3;
    v13 = 3;
    goto LABEL_7;
  }

  if (v11 == 240)
  {
    if (v10 == v7)
    {
      goto LABEL_50;
    }

    if (v9[1] - 192 < 0xFFFFFFD0)
    {
LABEL_51:
      v22 = 3;
      swift_willThrowTypedImpl(&v22, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
      v17 = 0x8000000000000003;
      goto LABEL_47;
    }

    goto LABEL_41;
  }

  if (v11 <= 0xF3u)
  {
    if (v10 == v7 || (v9[1] & 0xC0) != 0x80)
    {
      goto LABEL_50;
    }

    goto LABEL_41;
  }

  if (v10 == v7)
  {
    goto LABEL_50;
  }

  v15 = v9[1];
  if (v15 <= 0x8F && (v15 & 0xC0) == 0x80)
  {
LABEL_41:
    if (v9 + 2 == v7 || (v9[2] & 0xC0) != 0x80 || v9 + 3 == v7 || (v9[3] & 0xC0) != 0x80)
    {
      goto LABEL_50;
    }

    v8 = 0;
    v10 = v9 + 4;
    v13 = 4;
    goto LABEL_7;
  }

  v22 = 2;
  swift_willThrowTypedImpl(&v22, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
  v17 = 0x8000000000000002;
LABEL_47:
  v18 = specialized Collection.subscript.getter(v6, a1, a2);
  findInvalidRange #1 (_:) in validateUTF8(_:)(v18, v19, v20, v21);
  return v17;
}

void *swift_stdlib_getDescription(uint64_t a1, Class *a2)
{
  v3 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](a1, a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5);
  v10 = 0;
  v11 = 0xE000000000000000;
  _debugPrint_unlocked<A, B>(_:_:)(v5, &v10, a2, &type metadata for String, &protocol witness table for String);
  (*(v3 + 8))(v5, a2);
  v6 = v11;
  v8 = String._bridgeToObjectiveCImpl()(v10, v11, v7);
  v6;
  return v8;
}

void *swift_stdlib_NSStringFromUTF8(unsigned __int8 *a1, uint64_t a2)
{
  if (a2 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = validateUTF8(_:)(a1, a2);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v8 = repairUTF8(_:firstKnownBrokenRange:)(a1, a2, v5, v6);
  }

  else
  {
    v8 = specialized static String._uncheckedFromUTF8(_:isASCII:)(a1, a2, v4 & 1, v7);
  }

  v11 = v9;
  v12 = String._bridgeToObjectiveCImpl()(v8, v9, v10);
  v11;
  return v12;
}

Swift::Int __swiftcall StringProtocol._toUTF16Offset(_:)(Swift::String::Index a1)
{
  v4 = v2;
  v5 = v1;
  swift_getAssociatedTypeWitness(0, v2, v1, &protocol requirements base descriptor for StringProtocol, associated type descriptor for StringProtocol.UTF16View);
  v8 = v7;
  v9 = *(v7 - 8);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &rawBits - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &rawBits - v15;
  if (v5 == &type metadata for String)
  {
    v22._rawBits = 15;
  }

  else
  {
    if (v5 != &type metadata for Substring)
    {
      rawBits = a1._rawBits;
      v17 = v4[16];
      (v17)(v5, v4);
      (v17)(v5, v4);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v4, v5, v8, &protocol requirements base descriptor for StringProtocol, associated conformance descriptor for StringProtocol.StringProtocol.UTF16View: BidirectionalCollection);
      (*(*(AssociatedConformanceWitness + 8) + 64))(&v26, v8);
      v19 = *(v9 + 8);
      v19(v13, v8);
      v24 = rawBits;
      v25 = v26;
      v20 = (*(AssociatedConformanceWitness + 64))(&v25, &v24, v8, AssociatedConformanceWitness);
      v19(v16, v8);
      return v20;
    }

    v22._rawBits = *v3;
  }

  return String.UTF16View.distance(from:to:)(v22, a1);
}

Swift::String::Index __swiftcall StringProtocol._toUTF16Index(_:)(Swift::Int a1)
{
  v4 = v2;
  v5 = v1;
  swift_getAssociatedTypeWitness(0, v2, v1, &protocol requirements base descriptor for StringProtocol, associated type descriptor for StringProtocol.UTF16View);
  v8 = v7;
  v9 = *(v7 - 8);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v22 - v15;
  if (v5 == &type metadata for String)
  {
    v21._rawBits = 15;
  }

  else
  {
    if (v5 != &type metadata for Substring)
    {
      v22 = a1;
      v17 = v4[16];
      (v17)(v5, v4);
      (v17)(v5, v4);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v4, v5, v8, &protocol requirements base descriptor for StringProtocol, associated conformance descriptor for StringProtocol.StringProtocol.UTF16View: BidirectionalCollection);
      (*(*(AssociatedConformanceWitness + 8) + 64))(&v24, v8);
      v19 = *(v9 + 8);
      v19(v13, v8);
      v23 = v24;
      (*(AssociatedConformanceWitness + 48))(&v25, &v23, v22, v8, AssociatedConformanceWitness);
      v19(v16, v8);
      return v25;
    }

    v21._rawBits = *v3;
  }

  return String.UTF16View.index(_:offsetBy:)(v21, a1);
}

Swift::Int StringProtocol._toUTF16Offsets(_:)(Swift::String::Index a1, Swift::UInt64 a2, ValueMetadata *a3)
{
  if (a3 == &type metadata for String)
  {
    rawBits = a1._rawBits;
    v7 = 15;
    v8 = 1;
    v9 = v3;
LABEL_7:
    v10 = *v9;
    v11 = v3[v8];
    v11;
    v12._rawBits = rawBits;
    v13._rawBits = a2;
    v14._rawBits = v7;
    v5 = String.UTF16View._offsetRange(for:from:)(v12, v13, v14, v10, v11);
    v11;
    return v5;
  }

  if (a3 == &type metadata for Substring)
  {
    rawBits = a1._rawBits;
    v9 = v3 + 2;
    v7 = *v3;
    v8 = 3;
    goto LABEL_7;
  }

  v5 = StringProtocol._toUTF16Offset(_:)(a1);
  if (StringProtocol._toUTF16Offset(_:)(a2) < v5)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v5;
}

Swift::UInt64 String.UTF16View._offsetRange(for:from:)(Swift::String::Index a1, Swift::String::Index a2, Swift::String::Index from, unint64_t a4, unint64_t a5)
{
  rawBits = a1._rawBits;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  if ((a1._rawBits & 0xC) == 4 << v9)
  {
    v25 = from._rawBits;
    v26._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a1)._rawBits;
    from._rawBits = v25;
    rawBits = v26._rawBits;
  }

  if ((a2._rawBits & 0xC) == v10)
  {
    v27 = a2._rawBits;
    v28 = from._rawBits;
    v29._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v27)._rawBits;
    from._rawBits = v28;
    a2._rawBits = v29._rawBits;
  }

  if ((a5 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v11 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v12 = rawBits >> 16;
  if (v11 < rawBits >> 16 && (v30 = from._rawBits, isExecutableLinkedOnOrAfter = _swift_stdlib_isExecutableLinkedOnOrAfter(0x50700u), from._rawBits = v30, isExecutableLinkedOnOrAfter) || v11 < a2._rawBits >> 16 && (v32 = from._rawBits, v33 = _swift_stdlib_isExecutableLinkedOnOrAfter(0x50700u), from._rawBits = v32, v33))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    v34 = specialized String.UTF16View._foreignDistance(from:to:)(from._rawBits, rawBits);
    result = specialized String.UTF16View._foreignDistance(from:to:)(rawBits, a2._rawBits);
    v35 = v34 + result;
    if (__OFADD__(v34, result))
    {
      __break(1u);
    }

    else
    {
      result = v34;
      if (v35 < v34)
      {
        goto LABEL_42;
      }
    }

    return result;
  }

  v13 = (a2._rawBits >> 16) - v12;
  v14 = (a5 >> 62) & 1;
  if ((a5 & 0x2000000000000000) == 0)
  {
    LODWORD(v14) = (a4 & 0x8000000000000000) != 0;
  }

  if (v14 == 1)
  {
    if ((v13 & 0x8000000000000000) == 0)
    {
      return v12 - (from._rawBits >> 16);
    }

LABEL_42:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v13 < 0)
  {
    v13 = v12 - (a2._rawBits >> 16);
  }

  if (v13 <= 0x20)
  {
LABEL_25:
    if ((rawBits & 0xC001) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_45;
  }

  v16 = from._rawBits;
  v17 = String.UTF16View._nativeGetOffset(for:)(from);
  v18._rawBits = v16;
  v19 = v17;
  if ((v12 - (v18._rawBits >> 16)) <= 32)
  {
    rawBits = String.UTF16View._utf16Distance(from:to:)(v18, rawBits);
    goto LABEL_32;
  }

  v20 = String.UTF16View._nativeGetOffset(for:)(rawBits);
  rawBits = v20 - v19;
  if (__OFSUB__(v20, v19))
  {
    __break(1u);
    goto LABEL_25;
  }

LABEL_32:
  v24 = String.UTF16View._nativeGetOffset(for:)(a2);
  if (__OFSUB__(v24, v19))
  {
    while (1)
    {
      __break(1u);
LABEL_45:
      v36 = from._rawBits;
      v37._rawBits = _StringGuts.scalarAlignSlow(_:)(rawBits)._rawBits;
      from._rawBits = v36;
      rawBits = rawBits & 0xC | v37._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
LABEL_26:
      if ((a2._rawBits & 0xC001) == 0)
      {
        v38 = from._rawBits;
        v39._rawBits = _StringGuts.scalarAlignSlow(_:)(a2)._rawBits;
        from._rawBits = v38;
        a2._rawBits = a2._rawBits & 0xC | v39._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
      }

      v21 = String.UTF16View.distance(from:to:)(from, rawBits);
      v22 = String.UTF16View._utf16Distance(from:to:)(rawBits, a2);
      v23 = v21 + v22;
      if (!__OFADD__(v21, v22))
      {
        break;
      }

      __break(1u);
    }

    result = v21;
    if (v23 < v21)
    {
      goto LABEL_42;
    }
  }

  else
  {
    if (v24 - v19 < rawBits)
    {
      goto LABEL_42;
    }

    return rawBits;
  }

  return result;
}

Swift::UInt64 StringProtocol._toUTF16Indices(_:)(Swift::UInt64 a1, Swift::Int a2, ValueMetadata *a3)
{
  if (a3 == &type metadata for String)
  {
    v6 = a1;
    v7 = 15;
    v8 = 1;
    v9 = v3;
LABEL_7:
    v10 = *v9;
    v11 = v3[v8];
    v11;
    v12._rawBits = v6;
    v13._rawBits = v7;
    v5._rawBits = String.UTF16View._indexRange(for:from:)(v12, a2, v13, v10, v11)._rawBits;
    v11;
    return v5._rawBits;
  }

  if (a3 == &type metadata for Substring)
  {
    v6 = a1;
    v9 = (v3 + 2);
    v7 = *v3;
    v8 = 3;
    goto LABEL_7;
  }

  v5._rawBits = StringProtocol._toUTF16Index(_:)(a1)._rawBits;
  if (StringProtocol._toUTF16Index(_:)(a2)._rawBits >> 14 < v5._rawBits >> 14)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v5._rawBits;
}

Swift::String::Index String.UTF16View._indexRange(for:from:)(Swift::String::Index offsetBy, uint64_t a2, Swift::String::Index a3, uint64_t a4, unint64_t a5)
{
  rawBits = offsetBy._rawBits;
  if ((a5 & 0x1000000000000000) == 0)
  {
    v10 = (a5 >> 62) & 1;
    if ((a5 & 0x2000000000000000) == 0)
    {
      LODWORD(v10) = a4 < 0;
    }

    if (v10 == 1)
    {
      offsetBy._rawBits = String.UTF16View.index(_:offsetBy:)(a3, offsetBy._rawBits)._rawBits;
      if (!__OFSUB__(a2, rawBits))
      {
        v11 = offsetBy._rawBits;
        v12._rawBits = String.UTF16View.index(_:offsetBy:)(offsetBy, a2 - rawBits)._rawBits;
        goto LABEL_18;
      }

      __break(1u);
      goto LABEL_24;
    }

    if (__OFSUB__(a2, offsetBy._rawBits))
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if ((a2 - offsetBy._rawBits) <= 31)
    {
      v11 = String.UTF16View.index(_:offsetBy:)(a3, offsetBy._rawBits)._rawBits;
      if (specialized BidirectionalCollection._index(_:offsetBy:)(v11, a2 - rawBits, a4, a5) >> 14 >= v11 >> 14)
      {
        return v11;
      }

      goto LABEL_22;
    }

    offsetBy._rawBits = String.UTF16View._nativeGetOffset(for:)(a3);
    if (__OFSUB__(rawBits, offsetBy._rawBits))
    {
      goto LABEL_25;
    }

    v13 = offsetBy._rawBits;
    if ((rawBits - offsetBy._rawBits) <= 32)
    {
      v14._rawBits = specialized BidirectionalCollection._index(_:offsetBy:)(a3._rawBits, rawBits, a4, a5);
    }

    else
    {
      offsetBy._rawBits += rawBits;
      if (__OFADD__(v13, rawBits))
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v14._rawBits = String.UTF16View._nativeGetIndex(for:)(offsetBy._rawBits)._rawBits;
    }

    v11 = v14._rawBits;
    offsetBy._rawBits = v13 + a2;
    if (__OFADD__(v13, a2))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v12._rawBits = String.UTF16View._nativeGetIndex(for:)(offsetBy._rawBits)._rawBits;
LABEL_18:
    if (v12._rawBits >> 14 >= v11 >> 14)
    {
      return v11;
    }

LABEL_22:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  offsetBy._rawBits = String.UTF16View.index(_:offsetBy:)(a3, offsetBy._rawBits)._rawBits;
  if (!__OFSUB__(a2, rawBits))
  {
    v11 = offsetBy._rawBits;
    v12._rawBits = String.UTF16View._foreignIndex(_:offsetBy:)(offsetBy, a2 - rawBits)._rawBits;
    goto LABEL_18;
  }

LABEL_28:
  __break(1u);
  return offsetBy;
}

unint64_t String._copyUTF16CodeUnits(into:range:)(unint64_t a1, uint64_t a2, Swift::String::Index offsetBy, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v11._rawBits = 15;
  v13._rawBits = String.UTF16View._indexRange(for:from:)(offsetBy, a4, v11, a5, a6)._rawBits;

  return String.UTF16View._nativeCopy(into:alignedRange:)(a1, a2, v13._rawBits, v12._rawBits, a5, a6);
}

unint64_t String.UTF16View._nativeCopy(into:alignedRange:)(unint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a4 ^ a3) < 0x4000)
  {
    return result;
  }

  v7 = result;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v80[0] = a5;
    v80[1] = a6 & 0xFFFFFFFFFFFFFFLL;
    v18 = a3 >> 16;
    v19 = a4 >> 16;
    if ((a6 & 0x4000000000000000) == 0)
    {
      if ((a3 & 0xC000) == 0)
      {
        if (v19 > v18)
        {
          v20 = 0;
          goto LABEL_32;
        }

        if ((a4 & 0xC000) != 0x4000)
        {
          return result;
        }

        v20 = 0;
LABEL_109:
        v79 = a2;
        result = _decodeScalar(_:startingAt:)(v80, a2, v18);
        if (result < 0x10000 || (result = ((result + 67043328) >> 10) + 55296, (result & 0x10000) == 0))
        {
          if (v20 < v79)
          {
            v7->i16[v20] = result;
            return result;
          }

LABEL_113:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

LABEL_115:
        __break(1u);
        return result;
      }

      v73 = a4;
      v74 = v18;
      v75 = a2;
      v76 = _decodeScalar(_:startingAt:)(v80, a2, v18);
      v78 = v77;
      result = Unicode.Scalar.UTF16View.subscript.getter(1, v76);
      if (v75 <= 0)
      {
        goto LABEL_113;
      }

      a2 = v75;
      v7->i16[0] = result;
      v18 = v78 + v74;
      if ((v78 + v74) >= v19)
      {
        if ((v73 & 0xC000) != 0x4000)
        {
          return result;
        }

        v20 = 1;
        goto LABEL_109;
      }

      v20 = 1;
      LOWORD(a4) = v73;
      while (1)
      {
LABEL_32:
        v21 = v80 + v18;
        v22 = *(v80 + v18);
        if ((*(v80 + v18) & 0x80000000) == 0)
        {
          goto LABEL_33;
        }

        v26 = (__clz(v22 ^ 0xFF) - 24);
        if (v26 > 2)
        {
          if (v26 == 3)
          {
            v22 = ((v22 & 0xF) << 12) | ((v21[1] & 0x3F) << 6) | v21[2] & 0x3F;
            v23 = 3;
          }

          else
          {
            v22 = ((v22 & 0xF) << 18) | ((v21[1] & 0x3F) << 12) | ((v21[2] & 0x3F) << 6) | v21[3] & 0x3F;
            v23 = 4;
          }

          goto LABEL_34;
        }

        if (v26 == 1)
        {
LABEL_33:
          v23 = 1;
        }

        else
        {
          v22 = v21[1] & 0x3F | ((v22 & 0x1F) << 6);
          v23 = 2;
        }

LABEL_34:
        if (v20 >= a2)
        {
          goto LABEL_113;
        }

        if (HIWORD(v22))
        {
          v24 = ((v22 + 67043328) >> 10) - 10240;
        }

        else
        {
          v24 = v22;
        }

        v7->i16[v20] = v24;
        v25 = v20 + 1;
        if (v22 < 0x10000)
        {
          ++v20;
        }

        else
        {
          if (v25 >= a2)
          {
            goto LABEL_113;
          }

          v7->i16[v25] = v22 & 0x3FF | 0xDC00;
          v20 += 2;
        }

        v18 += v23;
        if (v18 >= v19)
        {
          if ((a4 & 0xC000) != 0x4000)
          {
            return result;
          }

          goto LABEL_109;
        }
      }
    }

    v27 = v19 - v18;
    if (v19 <= v18)
    {
      return result;
    }

    if (v27 < 8 || v80 + v19 > result && v80 + v18 < result + 2 * v27)
    {
      v28 = 0;
      v29 = a3 >> 16;
      goto LABEL_52;
    }

    if (v27 >= 0x20)
    {
      v28 = v27 & 0xFFFFFFFFFFFFFFE0;
      v43 = (&v80[2] + v18);
      v44 = (result + 32);
      v45 = v27 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v46 = *v43[-2].i8;
        v47 = vmovl_u8(*v43);
        v48 = vmovl_high_u8(*v43->i8);
        v44[-2] = vmovl_u8(*v46.i8);
        v44[-1] = vmovl_high_u8(v46);
        *v44 = v47;
        v44[1] = v48;
        v44 += 4;
        v43 += 4;
        v45 -= 32;
      }

      while (v45);
      if (v27 == v28)
      {
        return result;
      }

      if ((v27 & 0x18) == 0)
      {
        v29 = v18 + v28;
        goto LABEL_52;
      }
    }

    else
    {
      v28 = 0;
    }

    v49 = v28;
    v28 = v27 & 0xFFFFFFFFFFFFFFF8;
    v29 = v18 + (v27 & 0xFFFFFFFFFFFFFFF8);
    v50 = (v80 + v49 + v18);
    v51 = (result + 2 * v49);
    v52 = v49 - (v27 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v53 = *v50++;
      *v51++ = vmovl_u8(v53);
      v52 += 8;
    }

    while (v52);
    if (v27 == v28)
    {
      return result;
    }

LABEL_52:
    v30 = v80 + v29;
    v31 = (result + 2 * v28);
    v32 = v28 + v18 - v19;
    do
    {
      v33 = *v30++;
      *v31++ = v33;
      v34 = __CFADD__(v32++, 1);
    }

    while (!v34);
    return result;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    v8 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v65 = a2;
    v66 = a4;
    v67 = a5;
    result = _StringObject.sharedUTF8.getter(a5, a6);
    a5 = v67;
    a4 = v66;
    a2 = v65;
    v8 = result;
  }

  v9 = a3 >> 16;
  v10 = a4 >> 16;
  if (a5 < 0)
  {
    v35 = v10 - v9;
    if (v10 <= v9)
    {
      return result;
    }

    if (v35 < 8 || v8 + v10 > v7 && v8 + v9 < v7 + 2 * v35)
    {
      v36 = 0;
      v37 = a3 >> 16;
      goto LABEL_61;
    }

    if (v35 >= 0x20)
    {
      v36 = v35 & 0xFFFFFFFFFFFFFFE0;
      v54 = (v9 + v8 + 16);
      v55 = v7 + 2;
      v56 = v35 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v57 = *v54[-2].i8;
        v58 = vmovl_u8(*v54);
        v59 = vmovl_high_u8(*v54->i8);
        v55[-2] = vmovl_u8(*v57.i8);
        v55[-1] = vmovl_high_u8(v57);
        *v55 = v58;
        v55[1] = v59;
        v55 += 4;
        v54 += 4;
        v56 -= 32;
      }

      while (v56);
      if (v35 == v36)
      {
        return result;
      }

      if ((v35 & 0x18) == 0)
      {
        v37 = v9 + v36;
        goto LABEL_61;
      }
    }

    else
    {
      v36 = 0;
    }

    v60 = v36;
    v36 = v35 & 0xFFFFFFFFFFFFFFF8;
    v37 = v9 + (v35 & 0xFFFFFFFFFFFFFFF8);
    v61 = (v8 + v60 + v9);
    v62 = (v7 + 2 * v60);
    v63 = v60 - (v35 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v64 = *v61++;
      *v62++ = vmovl_u8(v64);
      v63 += 8;
    }

    while (v63);
    if (v35 == v36)
    {
      return result;
    }

LABEL_61:
    v38 = (v8 + v37);
    v39 = &v7->i16[v36];
    v40 = v36 + v9 - v10;
    do
    {
      v41 = *v38++;
      *v39++ = v41;
      v34 = __CFADD__(v40++, 1);
    }

    while (!v34);
    return result;
  }

  if ((a3 & 0xC000) == 0)
  {
    if (v10 > v9)
    {
      v11 = 0;
      goto LABEL_11;
    }

    if ((a4 & 0xC000) != 0x4000)
    {
      return result;
    }

    v11 = 0;
LABEL_68:
    v42 = a2;
    result = _decodeScalar(_:startingAt:)(v8, a2, v9);
    if (result < 0x10000 || (result = ((result + 67043328) >> 10) + 55296, (result & 0x10000) == 0))
    {
      if (v11 < v42)
      {
        v7->i16[v11] = result;
        return result;
      }

      goto LABEL_113;
    }

    __break(1u);
    goto LABEL_115;
  }

  v68 = a4;
  v69 = a2;
  v70 = _decodeScalar(_:startingAt:)(v8, a2, a3 >> 16);
  v72 = v71;
  result = Unicode.Scalar.UTF16View.subscript.getter(1, v70);
  if (v69 <= 0)
  {
    goto LABEL_113;
  }

  a2 = v69;
  v7->i16[0] = result;
  v9 += v72;
  if (v9 >= v10)
  {
    if ((v68 & 0xC000) == 0x4000)
    {
      v11 = 1;
      goto LABEL_68;
    }

    return result;
  }

  v11 = 1;
  LOWORD(a4) = v68;
  do
  {
LABEL_11:
    v12 = (v8 + v9);
    v13 = *(v8 + v9);
    if ((*(v8 + v9) & 0x80000000) == 0)
    {
LABEL_12:
      v14 = 1;
      goto LABEL_13;
    }

    v17 = (__clz(v13 ^ 0xFF) - 24);
    if (v17 > 2)
    {
      if (v17 == 3)
      {
        v13 = ((v13 & 0xF) << 12) | ((v12[1] & 0x3F) << 6) | v12[2] & 0x3F;
        v14 = 3;
      }

      else
      {
        v13 = ((v13 & 0xF) << 18) | ((v12[1] & 0x3F) << 12) | ((v12[2] & 0x3F) << 6) | v12[3] & 0x3F;
        v14 = 4;
      }
    }

    else
    {
      if (v17 == 1)
      {
        goto LABEL_12;
      }

      v13 = v12[1] & 0x3F | ((v13 & 0x1F) << 6);
      v14 = 2;
    }

LABEL_13:
    if (v11 >= a2)
    {
      goto LABEL_113;
    }

    if (HIWORD(v13))
    {
      v15 = ((v13 + 67043328) >> 10) - 10240;
    }

    else
    {
      v15 = v13;
    }

    v7->i16[v11] = v15;
    v16 = v11 + 1;
    if (v13 < 0x10000)
    {
      ++v11;
    }

    else
    {
      if (v16 >= a2)
      {
        goto LABEL_113;
      }

      v7->i16[v16] = v13 & 0x3FF | 0xDC00;
      v11 += 2;
    }

    v9 += v14;
  }

  while (v9 < v10);
  if ((a4 & 0xC000) == 0x4000)
  {
    goto LABEL_68;
  }

  return result;
}

Swift::Int String.count.getter(unint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1;
  }

  v3 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v3 = 11;
  }

  return String.distance(from:to:)(15, (v3 | (v2 << 16)));
}

Swift::Int __swiftcall String.distance(from:to:)(Swift::String::Index from, Swift::String::Index to)
{
  v4 = v3;
  v5 = v2;
  v7._rawBits = _StringGuts.validateInclusiveCharacterIndex_5_7(_:)(from)._rawBits;
  v8._rawBits = _StringGuts.validateInclusiveCharacterIndex_5_7(_:)(to)._rawBits;
  v9 = v7._rawBits >> 16;
  if (v7._rawBits >> 14 < v8._rawBits >> 14)
  {
    v10 = v8._rawBits >> 16;
    if (v9 < v8._rawBits >> 16)
    {
      v11 = 1;
      if ((v4 & 0x1000000000000000) == 0)
      {
        goto LABEL_6;
      }

LABEL_19:
      v14 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v9) + v9;
      while (v14 < v10)
      {
        ++v11;
        v9 = v14;
        if ((v4 & 0x1000000000000000) != 0)
        {
          goto LABEL_19;
        }

LABEL_6:
        if ((v4 & 0x2000000000000000) != 0)
        {
          v25 = v5;
          v26 = v4 & 0xFFFFFFFFFFFFFFLL;
          v14 = v9 + 1;
          if (v9 + 1 != (HIBYTE(v4) & 0xF))
          {
            v16 = *(&v25 + v9);
            if (v16 == 2573 || (v16 & 0x80808080) != 0)
            {
              goto LABEL_19;
            }
          }
        }

        else
        {
          v12 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v13 = v5 & 0xFFFFFFFFFFFFLL;
          if ((v5 & 0x1000000000000000) == 0)
          {
            v12 = _StringObject.sharedUTF8.getter(v5, v4);
          }

          v14 = v9 + 1;
          if (v9 + 1 != v13)
          {
            if (!v12)
            {
              goto LABEL_43;
            }

            v15 = *&v12[v9];
            if (v15 == 2573 || (v15 & 0x80808080) != 0)
            {
              goto LABEL_19;
            }
          }
        }
      }

      return v11;
    }

    return 0;
  }

  if (v8._rawBits >> 14 >= v7._rawBits >> 14)
  {
    return 0;
  }

  v18 = v8._rawBits >> 16;
  if (v8._rawBits >> 16 >= v9)
  {
    return 0;
  }

  v11 = -1;
  if (v9 >= 2)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v19 = 1;
LABEL_26:
    v9 -= v19;
    if (v18 >= v9)
    {
      return v11;
    }

    while (1)
    {
      --v11;
      if (v9 < 2)
      {
        break;
      }

LABEL_28:
      if ((v4 & 0x1000000000000000) != 0)
      {
        goto LABEL_41;
      }

      if ((v4 & 0x2000000000000000) != 0)
      {
        v25 = v5;
        v26 = v4 & 0xFFFFFFFFFFFFFFLL;
        v21 = *&v24[v9];
      }

      else
      {
        v20 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if ((v5 & 0x1000000000000000) == 0)
        {
          v20 = _StringObject.sharedUTF8.getter(v5, v4);
          if (!v20)
          {
LABEL_43:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }
        }

        v21 = *&v20[v9 - 2];
      }

      if (v21 == 2573 || (v21 & 0x8080) != 0)
      {
LABEL_41:
        v19 = _StringGuts._opaqueComplexCharacterStride(endingAt:)(v9);
        goto LABEL_26;
      }

      if (v18 >= --v9)
      {
        return v11;
      }
    }
  }
}

Swift::Bool __swiftcall String._isValidIndex(_:)(Swift::String::Index a1)
{
  v3 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((a1._rawBits & 0xC) == 4 << v3)
  {
    return 0;
  }

  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  return v4 >= a1._rawBits >> 16 && _StringGuts.isOnGraphemeClusterBoundary(_:)(a1);
}

Swift::Bool __swiftcall _StringGuts.isOnGraphemeClusterBoundary(_:)(Swift::String::Index a1)
{
  if ((a1._rawBits & 2) != 0)
  {
    return 1;
  }

  if ((a1._rawBits & 0xC000) != 0)
  {
    return 0;
  }

  if (a1._rawBits < 0x10000)
  {
    return 1;
  }

  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  return v4 == a1._rawBits >> 16 || _StringGuts.isOnUnicodeScalarBoundary(_:)(a1) && (_StringGuts._slowRoundDownToNearestCharacter(_:)((a1._rawBits | 1))._rawBits ^ a1._rawBits) < 0x4000;
}

Swift::String::Index __swiftcall _StringGuts.validateCharacterIndex(_:)(Swift::String::Index result)
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
    result._rawBits = _StringGuts.validateSubscalarIndex(_:)(result)._rawBits;
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

    if (v4 <= result._rawBits >> 16)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  return result;
}

Swift::String::Index __swiftcall String._uncheckedIndex(after:)(Swift::String::Index after)
{
  v3 = (after._rawBits >> 8) & 0x3F;
  v4 = v2 & 0x2000000000000000;
  v5 = HIBYTE(v2) & 0xF;
  v6 = v1 & 0xFFFFFFFFFFFFLL;
  if (v3)
  {
    goto LABEL_21;
  }

  if (v4)
  {
    v7 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v7 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (after._rawBits >> 14 == 4 * v7)
  {
    v3 = 0;
    goto LABEL_21;
  }

  v8 = after._rawBits >> 16;
  if ((v2 & 0x1000000000000000) == 0)
  {
    if (v4)
    {
      v39 = v1;
      v40 = v2 & 0xFFFFFFFFFFFFFFLL;
      if (v8 + 1 == v5 || (v12 = *(&v39 + v8), v12 != 2573) && (v12 & 0x80808080) == 0)
      {
        v4 = 1;
        goto LABEL_20;
      }
    }

    else
    {
      if ((v1 & 0x1000000000000000) != 0)
      {
        v9 = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v10 = v1 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        rawBits = after._rawBits;
        v38 = v1;
        v32 = v2;
        v33 = _StringObject.sharedUTF8.getter(v1, v2);
        v2 = v32;
        v9 = v33;
        after._rawBits = rawBits;
        v10 = v34;
        v1 = v38;
      }

      if (v8 + 1 == v10)
      {
        goto LABEL_15;
      }

      if (!v9)
      {
        goto LABEL_52;
      }

      v11 = *(v9 + v8);
      if (v11 != 2573 && (v11 & 0x80808080) == 0)
      {
LABEL_15:
        v4 = 0;
LABEL_20:
        v3 = 1;
        goto LABEL_21;
      }
    }
  }

  v36 = v2;
  v37 = v1;
  v27 = after._rawBits;
  v28 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v8);
  v2 = v36;
  v1 = v37;
  v3 = v28;
  after._rawBits = v27;
LABEL_21:
  v13 = after._rawBits + (v3 << 16);
  v14 = v13 & 0xFFFFFFFFFFFF0000;
  if (v4)
  {
    v15 = v5;
  }

  else
  {
    v15 = v6;
  }

  v16 = v2 & 0x1000000000000000;
  if (v14 >> 14 == 4 * v15)
  {
    v17 = 0;
LABEL_42:
    v14 |= v17 << 8;
    goto LABEL_43;
  }

  v18 = v13 >> 16;
  if (!v16)
  {
    if (v4)
    {
      v39 = v1;
      v40 = v2 & 0xFFFFFFFFFFFFFFLL;
      if (v18 + 1 != v5)
      {
        v19 = *(&v39 + v18);
        if (v19 == 2573 || (v19 & 0x80808080) != 0)
        {
          goto LABEL_33;
        }
      }

LABEL_41:
      v16 = 0;
      v17 = 1;
      goto LABEL_42;
    }

    if ((v1 & 0x1000000000000000) != 0)
    {
      v22 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v29 = v13 >> 16;
      v30 = v1;
      v22 = _StringObject.sharedUTF8.getter(v1, v2);
      v18 = v29;
      v6 = v31;
      v1 = v30;
    }

    if (v18 + 1 == v6)
    {
      goto LABEL_41;
    }

    if (v22)
    {
      v23 = *&v22[v18];
      if (v23 == 2573 || (v23 & 0x80808080) != 0)
      {
        goto LABEL_33;
      }

      goto LABEL_41;
    }

LABEL_52:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_33:
  v21 = v1;
  v17 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v18);
  v1 = v21;
  if (v17 <= 63)
  {
    goto LABEL_42;
  }

LABEL_43:
  v24 = (v1 & 0x800000000000000) != 0 || v16 == 0;
  v25 = 7;
  if (!v24)
  {
    v25 = 11;
  }

  return (v14 | v25);
}

Swift::Int __swiftcall String._characterStride(startingAt:)(Swift::String::Index startingAt)
{
  result = (startingAt._rawBits >> 8) & 0x3F;
  if (!result)
  {
    v5 = v1 & 0xFFFFFFFFFFFFLL;
    if ((v2 & 0x2000000000000000) != 0)
    {
      v6 = HIBYTE(v2) & 0xF;
    }

    else
    {
      v6 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (startingAt._rawBits >> 14 == 4 * v6)
    {
      return 0;
    }

    v7 = startingAt._rawBits >> 16;
    if ((v2 & 0x1000000000000000) == 0)
    {
      if ((v2 & 0x2000000000000000) != 0)
      {
        v12[0] = v1;
        v12[1] = v2 & 0xFFFFFFFFFFFFFFLL;
        if (v7 + 1 == (HIBYTE(v2) & 0xF))
        {
          return 1;
        }

        v9 = *(v12 + v7);
      }

      else
      {
        if ((v1 & 0x1000000000000000) != 0)
        {
          v8 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v11 = startingAt._rawBits >> 16;
          v8 = _StringObject.sharedUTF8.getter(v1, v2);
          v7 = v11;
          v5 = v10;
        }

        if (v7 + 1 == v5)
        {
          return 1;
        }

        if (!v8)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v9 = *&v8[v7];
      }

      if (v9 != 2573 && (v9 & 0x80808080) == 0)
      {
        return 1;
      }
    }

    return _StringGuts._opaqueComplexCharacterStride(startingAt:)(v7);
  }

  return result;
}

Swift::String::Index __swiftcall String.Index.init(encodedOffset:characterStride:)(Swift::Int encodedOffset, Swift::Int characterStride)
{
  v2 = characterStride << 8;
  if (characterStride > 63)
  {
    v2 = 0;
  }

  return (v2 | (encodedOffset << 16));
}

Swift::String::Index __swiftcall _StringGuts.validateInclusiveCharacterIndex_5_7(_:)(Swift::String::Index result)
{
  v3 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result._rawBits & 2) == 0 || (result._rawBits & 0xC) == 4 << v3)
  {
    v7 = v1;
    v8 = v2;
    result._rawBits = _StringGuts.validateInclusiveSubscalarIndex_5_7(_:)(result)._rawBits;
    if (result._rawBits)
    {
      if ((result._rawBits & 2) != 0)
      {
        return result;
      }
    }

    else
    {
      v9 = result._rawBits & 0xC | _StringGuts.scalarAlignSlow(_:)(result)._rawBits & 0xFFFFFFFFFFFFFFF3;
      result._rawBits = v9 | 1;
      if ((v9 & 2) != 0)
      {
        return result;
      }
    }

    if (result._rawBits < 0x10000)
    {
      return (result._rawBits | 3);
    }

    v10 = (v8 & 0x2000000000000000) != 0 ? HIBYTE(v8) & 0xF : v7 & 0xFFFFFFFFFFFFLL;
    if (result._rawBits >> 16 == v10)
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
      rawBits = result._rawBits;
      isExecutableLinkedOnOrAfter = _swift_stdlib_isExecutableLinkedOnOrAfter(0x50700u);
      result._rawBits = rawBits;
      if (isExecutableLinkedOnOrAfter)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }
  }

  return result;
}

Swift::String::Index __swiftcall String._uncheckedIndex(before:)(Swift::String::Index before)
{
  if (before._rawBits < 0x4000)
  {
    v3 = 0;
LABEL_15:
    v7 = v3 << 8;
    goto LABEL_19;
  }

  v3 = before._rawBits >> 16;
  if (before._rawBits >= 0x20000)
  {
    if ((v2 & 0x1000000000000000) == 0)
    {
      if ((v2 & 0x2000000000000000) != 0)
      {
        v19[0] = v1;
        v19[1] = v2 & 0xFFFFFFFFFFFFFFLL;
        v4 = v19;
      }

      else if ((v1 & 0x1000000000000000) != 0)
      {
        v4 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v13 = before._rawBits >> 16;
        rawBits = before._rawBits;
        v17 = v2;
        v18 = v1;
        v12 = _StringObject.sharedUTF8.getter(v1, v2);
        v2 = v17;
        v1 = v18;
        v4 = v12;
        v3 = v13;
        before._rawBits = rawBits;
        if (!v4)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }

      v5 = *(v4 + v3 - 2);
      if (v5 != 2573 && (v5 & 0x80808080) == 0)
      {
        v3 = 1;
        goto LABEL_15;
      }
    }

    v14 = before._rawBits;
    v16 = v2;
    v18 = v1;
    v8 = _StringGuts._opaqueComplexCharacterStride(endingAt:)(v3);
    v2 = v16;
    v1 = v18;
    v3 = v8;
    before._rawBits = v14;
  }

  v7 = v3 << 8;
  if (v3 >= 64)
  {
    v7 = 0;
  }

LABEL_19:
  v9 = (before._rawBits - (v3 << 16)) & 0xFFFFFFFFFFFF0000;
  v10 = 7;
  if (((v2 >> 60) & ((v1 & 0x800000000000000) == 0)) != 0)
  {
    v10 = 11;
  }

  return (v7 | v9 | v10);
}

Swift::Int __swiftcall String._characterStride(endingAt:)(Swift::String::Index endingAt)
{
  if (endingAt._rawBits < 0x4000)
  {
    return 0;
  }

  result = endingAt._rawBits >> 16;
  if (endingAt._rawBits >= 0x20000)
  {
    if ((v2 & 0x1000000000000000) != 0)
    {
      goto LABEL_16;
    }

    if ((v2 & 0x2000000000000000) != 0)
    {
      v9[0] = v1;
      v9[1] = v2 & 0xFFFFFFFFFFFFFFLL;
      v5 = v9;
    }

    else if ((v1 & 0x1000000000000000) != 0)
    {
      v5 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v8 = result;
      v5 = _StringObject.sharedUTF8.getter(v1, v2);
      result = v8;
      if (!v5)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    v6 = *(v5 + result - 2);
    if (v6 != 2573 && (v6 & 0x80808080) == 0)
    {
      return 1;
    }

    else
    {
LABEL_16:

      return _StringGuts._opaqueComplexCharacterStride(endingAt:)(result);
    }
  }

  return result;
}

Swift::String::Index __swiftcall String.index(_:offsetBy:)(Swift::String::Index _, Swift::Int offsetBy)
{
  v4 = v3;
  v5 = v2;
  result._rawBits = _StringGuts.validateInclusiveCharacterIndex_5_7(_:)(_)._rawBits;
  if (offsetBy < 0)
  {
    v27 = 0;
    if (((v4 >> 60) & ((v5 & 0x800000000000000) == 0)) != 0)
    {
      v28 = 11;
    }

    else
    {
      v28 = 7;
    }

    while (1)
    {
      if (!(result._rawBits >> 14))
      {
LABEL_74:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v30 = result._rawBits >> 16;
      if (result._rawBits < 0x20000)
      {
        goto LABEL_55;
      }

      if ((v4 & 0x1000000000000000) != 0)
      {
        break;
      }

      if ((v4 & 0x2000000000000000) != 0)
      {
        v38 = v5;
        v39 = v4 & 0xFFFFFFFFFFFFFFLL;
        v34 = *(&v37 + v30 + 6);
      }

      else
      {
        v33 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if ((v5 & 0x1000000000000000) == 0)
        {
          rawBits = result._rawBits;
          v33 = _StringObject.sharedUTF8.getter(v5, v4);
          result._rawBits = rawBits;
          if (!v33)
          {
LABEL_72:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }
        }

        v34 = *&v33[v30 - 2];
      }

      if (v34 == 2573 || (v34 & 0x8080) != 0)
      {
        break;
      }

      v31 = (result._rawBits & 0xFFFFFFFFFFFF0000) - 0x10000;
      v32 = 256;
LABEL_57:
      --v27;
      result._rawBits = v31 | v28 | v32;
      if (v27 <= offsetBy)
      {
        return result;
      }
    }

    v29 = result._rawBits;
    v30 = _StringGuts._opaqueComplexCharacterStride(endingAt:)(v30);
    result._rawBits = v29;
LABEL_55:
    v31 = (result._rawBits - (v30 << 16)) & 0xFFFFFFFFFFFF0000;
    v32 = v30 << 8;
    if (v30 > 63)
    {
      v32 = 0;
    }

    goto LABEL_57;
  }

  if (offsetBy)
  {
    v8 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(v4) & 0xF;
    }

    else
    {
      v9 = v5 & 0xFFFFFFFFFFFFLL;
    }

    v10 = 4 * v9;
    if (((v4 >> 60) & ((v5 & 0x800000000000000) == 0)) != 0)
    {
      v11 = 11;
    }

    else
    {
      v11 = 7;
    }

    do
    {
      if (v10 <= result._rawBits >> 14)
      {
        goto LABEL_74;
      }

      v12 = (result._rawBits >> 8) & 0x3F;
      if (!v12)
      {
        v13 = result._rawBits >> 16;
        if ((v4 & 0x1000000000000000) == 0)
        {
          if ((v4 & 0x2000000000000000) != 0)
          {
            v38 = v5;
            v39 = v4 & 0xFFFFFFFFFFFFFFLL;
            if (v13 + 1 == v8)
            {
              goto LABEL_26;
            }

            v17 = *(&v38 + v13);
            if (v17 != 2573 && (v17 & 0x80808080) == 0)
            {
              goto LABEL_26;
            }
          }

          else
          {
            v14 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v15 = v5 & 0xFFFFFFFFFFFFLL;
            if ((v5 & 0x1000000000000000) == 0)
            {
              v37 = result._rawBits;
              v14 = _StringObject.sharedUTF8.getter(v5, v4);
              result._rawBits = v37;
            }

            if (v13 + 1 == v15)
            {
              goto LABEL_26;
            }

            if (!v14)
            {
              goto LABEL_72;
            }

            v16 = *&v14[v13];
            if (v16 != 2573 && (v16 & 0x80808080) == 0)
            {
LABEL_26:
              v12 = 1;
              goto LABEL_27;
            }
          }
        }

        v37 = result._rawBits;
        v12 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v13);
        result._rawBits = v37;
      }

LABEL_27:
      v19 = result._rawBits + (v12 << 16);
      v20 = v19 & 0xFFFFFFFFFFFF0000;
      if (v10 != (v19 & 0xFFFFFFFFFFFF0000) >> 14)
      {
        v22 = v19 >> 16;
        if ((v4 & 0x1000000000000000) != 0)
        {
          goto LABEL_47;
        }

        if ((v4 & 0x2000000000000000) != 0)
        {
          v38 = v5;
          v39 = v4 & 0xFFFFFFFFFFFFFFLL;
          if (v22 + 1 != v8)
          {
            v25 = *(&v38 + v22);
LABEL_38:
            if (v25 == 2573 || (v25 & 0x8080) != 0)
            {
LABEL_47:
              v21 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v22);
              if (v21 > 63)
              {
                goto LABEL_45;
              }

              goto LABEL_44;
            }
          }
        }

        else
        {
          v23 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v24 = v5 & 0xFFFFFFFFFFFFLL;
          if ((v5 & 0x1000000000000000) == 0)
          {
            v37 = v22;
            v23 = _StringObject.sharedUTF8.getter(v5, v4);
            v22 = v37;
          }

          if (v22 + 1 != v24)
          {
            if (!v23)
            {
              goto LABEL_72;
            }

            v25 = *&v23[v22];
            goto LABEL_38;
          }
        }

        v21 = 1;
        goto LABEL_44;
      }

      v21 = 0;
LABEL_44:
      v20 |= v21 << 8;
LABEL_45:
      result._rawBits = v20 | v11;
      --offsetBy;
    }

    while (offsetBy);
  }

  return result;
}

Swift::String::Index_optional __swiftcall String.index(_:offsetBy:limitedBy:)(Swift::String::Index _, Swift::Int offsetBy, Swift::String::Index limitedBy)
{
  v5 = v4;
  v6 = v3;
  rawBits = limitedBy._rawBits;
  v9 = (v3 >> 59) & 1;
  if ((v4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  if ((limitedBy._rawBits & 0xC) == 4 << v9)
  {
    v58 = _._rawBits;
    rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(limitedBy)._rawBits;
    _._rawBits = v58;
  }

  v11 = _._rawBits;
  if ((_._rawBits & 0xC) == v10)
  {
    v59 = _._rawBits;
    v11 = _StringGuts._slowEnsureMatchingEncoding(_:)(_)._rawBits;
    _._rawBits = v59;
  }

  v12._rawBits = _StringGuts.validateInclusiveCharacterIndex_5_7(_:)(_)._rawBits;
  v13 = rawBits >> 14;
  if (offsetBy < 0)
  {
    v41 = 0;
    v42 = v11 >> 14;
    v43 = &v68 + 6;
    if (((v5 >> 60) & ((v6 & 0x800000000000000) == 0)) != 0)
    {
      v44 = 11;
    }

    else
    {
      v44 = 7;
    }

    while (1)
    {
      v52 = v12._rawBits >> 14;
      if (v42 >= v13 && v13 >= v52)
      {
        goto LABEL_86;
      }

      if (!v52)
      {
LABEL_88:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v48 = v12._rawBits >> 16;
      if (v12._rawBits < 0x20000)
      {
        goto LABEL_63;
      }

      if ((v5 & 0x1000000000000000) != 0)
      {
        goto LABEL_62;
      }

      if ((v5 & 0x2000000000000000) != 0)
      {
        v69 = v6;
        v70 = v5 & 0xFFFFFFFFFFFFFFLL;
        v55 = *&v43[v48];
        if (v55 == 2573 || (v55 & 0x80808080) != 0)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v53 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if ((v6 & 0x1000000000000000) == 0)
        {
          v67 = v12._rawBits;
          v68 = v43;
          v53 = _StringObject.sharedUTF8.getter(v6, v5);
          v12._rawBits = v67;
          v43 = v68;
          if (!v53)
          {
LABEL_83:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }
        }

        v54 = *&v53[v48 - 2];
        if (v54 == 2573 || (v54 & 0x80808080) != 0)
        {
LABEL_62:
          v66 = v12._rawBits;
          v45 = v48;
          v46 = v43;
          v47 = _StringGuts._opaqueComplexCharacterStride(endingAt:)(v45);
          v43 = v46;
          v48 = v47;
          v12._rawBits = v66;
LABEL_63:
          v49 = (v12._rawBits - (v48 << 16)) & 0xFFFFFFFFFFFF0000;
          v50 = v48 << 8;
          if (v48 > 63)
          {
            v50 = 0;
          }

          goto LABEL_65;
        }
      }

      v49 = (v12._rawBits & 0xFFFFFFFFFFFF0000) - 0x10000;
      v50 = 256;
LABEL_65:
      --v41;
      v51 = v50 | v49;
      v12._rawBits = v51 | v44;
      if (v41 <= offsetBy)
      {
        if (v42 < v13 || v51 >> 14 >= v13)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      }
    }
  }

  v14 = v11 >> 14;
  if (offsetBy)
  {
    v15 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) != 0)
    {
      v16 = HIBYTE(v5) & 0xF;
    }

    else
    {
      v16 = v6 & 0xFFFFFFFFFFFFLL;
    }

    v17 = 4 * v16;
    v18 = v5 & 0xFFFFFFFFFFFFFFLL;
    v19 = (v5 & 0xFFFFFFFFFFFFFFFLL) + 32;
    if (((v5 >> 60) & ((v6 & 0x800000000000000) == 0)) != 0)
    {
      v20 = 11;
    }

    else
    {
      v20 = 7;
    }

    while (1)
    {
      v21 = v12._rawBits >> 14;
      if (v13 >= v14 && v21 >= v13)
      {
        goto LABEL_86;
      }

      if (v21 >= v17)
      {
        goto LABEL_88;
      }

      v22 = (v12._rawBits >> 8) & 0x3F;
      if (!v22)
      {
        break;
      }

LABEL_31:
      v27 = v12._rawBits + (v22 << 16);
      v28 = v27 & 0xFFFFFFFFFFFF0000;
      if (v17 == (v27 & 0xFFFFFFFFFFFF0000) >> 14)
      {
        v29 = 0;
      }

      else
      {
        v30 = v27 >> 16;
        if ((v5 & 0x1000000000000000) != 0)
        {
          goto LABEL_52;
        }

        if ((v5 & 0x2000000000000000) != 0)
        {
          v69 = v6;
          v70 = v18;
          if (v30 + 1 != v15)
          {
            v34 = *(&v69 + v30);
            if (v34 == 2573 || (v34 & 0x80808080) != 0)
            {
              goto LABEL_52;
            }
          }
        }

        else
        {
          v31 = v19;
          v32 = v6 & 0xFFFFFFFFFFFFLL;
          if ((v6 & 0x1000000000000000) == 0)
          {
            v64 = v30;
            v68 = v18;
            v61 = v19;
            v39 = _StringObject.sharedUTF8.getter(v6, v5);
            v18 = v68;
            v31 = v39;
            v19 = v61;
            v30 = v64;
          }

          if (v30 + 1 != v32)
          {
            if (!v31)
            {
              goto LABEL_83;
            }

            v33 = *&v31[v30];
            if (v33 == 2573 || (v33 & 0x80808080) != 0)
            {
LABEL_52:
              v60 = v19;
              v68 = v18;
              v29 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v30);
              v19 = v60;
              v18 = v68;
              if (v29 > 63)
              {
                goto LABEL_50;
              }

              goto LABEL_49;
            }
          }
        }

        v29 = 1;
      }

LABEL_49:
      v28 |= v29 << 8;
LABEL_50:
      v12._rawBits = v28 | v20;
      if (!--offsetBy)
      {
        goto LABEL_55;
      }
    }

    v23 = v12._rawBits >> 16;
    if ((v5 & 0x1000000000000000) == 0)
    {
      if ((v5 & 0x2000000000000000) == 0)
      {
        v24 = v19;
        v25 = v6 & 0xFFFFFFFFFFFFLL;
        if ((v6 & 0x1000000000000000) == 0)
        {
          v65 = v12._rawBits;
          v68 = v18;
          v62 = v19;
          v40 = _StringObject.sharedUTF8.getter(v6, v5);
          v18 = v68;
          v24 = v40;
          v19 = v62;
          v12._rawBits = v65;
        }

        if (v23 + 1 == v25)
        {
LABEL_30:
          v22 = 1;
          goto LABEL_31;
        }

        if (!v24)
        {
          goto LABEL_83;
        }

        v26 = *&v24[v23];
        if (v26 == 2573)
        {
          goto LABEL_54;
        }

        goto LABEL_29;
      }

      v69 = v6;
      v70 = v18;
      if (v23 + 1 == v15)
      {
        goto LABEL_30;
      }

      v26 = *(&v69 + v23);
      if (v26 != 2573)
      {
LABEL_29:
        if ((v26 & 0x80808080) == 0)
        {
          goto LABEL_30;
        }
      }
    }

LABEL_54:
    v63 = v12._rawBits;
    v68 = v18;
    v36 = v23;
    v37 = v19;
    v38 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v36);
    v19 = v37;
    v22 = v38;
    v12._rawBits = v63;
    v18 = v68;
    goto LABEL_31;
  }

LABEL_55:
  if (v13 >= v14 && v13 < v12._rawBits >> 14)
  {
LABEL_86:
    v12._rawBits = 0;
    v57 = 1;
  }

  else
  {
LABEL_87:
    v57 = 0;
  }

  result.value = v12;
  result.is_nil = v57;
  return result;
}

Swift::Int __swiftcall _StringGuts._opaqueCharacterStride(startingAt:)(Swift::Int startingAt)
{
  if ((v2 & 0x1000000000000000) == 0)
  {
    if ((v2 & 0x2000000000000000) != 0)
    {
      v10[0] = v1;
      v10[1] = v2 & 0xFFFFFFFFFFFFFFLL;
      if (startingAt + 1 == (HIBYTE(v2) & 0xF))
      {
        return 1;
      }

      v3 = v10;
    }

    else
    {
      if ((v1 & 0x1000000000000000) != 0)
      {
        v3 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v4 = v1 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = startingAt;
        v3 = _StringObject.sharedUTF8.getter(v1, v2);
        startingAt = v9;
        v4 = v8;
      }

      if (startingAt + 1 == v4)
      {
        return 1;
      }

      if (!v3)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    v5 = *(v3 + startingAt);
    if (v5 == 2573 || (v5 & 0x80808080) != 0)
    {
      goto LABEL_16;
    }

    return 1;
  }

LABEL_16:

  return _StringGuts._opaqueComplexCharacterStride(startingAt:)(startingAt);
}

Swift::Int __swiftcall _StringGuts._opaqueCharacterStride(endingAt:)(Swift::Int endingAt)
{
  if (endingAt >= 2)
  {
    if ((v2 & 0x1000000000000000) != 0)
    {
      goto LABEL_14;
    }

    if ((v2 & 0x2000000000000000) != 0)
    {
      v7[0] = v1;
      v7[1] = v2 & 0xFFFFFFFFFFFFFFLL;
      v3 = v7;
    }

    else if ((v1 & 0x1000000000000000) != 0)
    {
      v3 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v6 = endingAt;
      v3 = _StringObject.sharedUTF8.getter(v1, v2);
      endingAt = v6;
      if (!v3)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    v4 = *(v3 + endingAt - 2);
    if (v4 != 2573 && (v4 & 0x80808080) == 0)
    {
      return 1;
    }

    else
    {
LABEL_14:

      return _StringGuts._opaqueComplexCharacterStride(endingAt:)(endingAt);
    }
  }

  return endingAt;
}

Swift::String::Index __swiftcall _StringGuts.validateScalarIndex(_:)(Swift::String::Index result)
{
  v3 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result._rawBits & 1) == 0 || (result._rawBits & 0xC) == 4 << v3)
  {
    result._rawBits = _StringGuts.validateSubscalarIndex(_:)(result)._rawBits;
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

    if (v4 <= result._rawBits >> 16)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  return result;
}

Swift::String __swiftcall _StringGuts.errorCorrectedCharacter(startingAt:endingAt:)(Swift::Int startingAt, Swift::Int endingAt)
{
  if ((v3 & 0x1000000000000000) == 0)
  {
    if (endingAt < startingAt)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if ((v3 & 0x2000000000000000) != 0)
    {
      v23[0] = v2;
      v23[1] = v3 & 0xFFFFFFFFFFFFFFLL;
      if ((startingAt & 0x8000000000000000) == 0 && (HIBYTE(v3) & 0xF) >= endingAt)
      {
        v13 = endingAt - startingAt;
        if (endingAt - startingAt >= 0)
        {
          v14 = startingAt;
          v15 = _allASCII(_:)((v23 + startingAt), v13);
          v11 = v23 + v14;
          v9 = v15;
          v12 = v13;
          goto LABEL_12;
        }
      }
    }

    else
    {
      if ((v2 & 0x1000000000000000) != 0)
      {
        v4 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v5 = v2 & 0xFFFFFFFFFFFFLL;
        if (startingAt < 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v19 = startingAt;
        v20 = endingAt;
        v4 = _StringObject.sharedUTF8.getter(v2, v3);
        startingAt = v19;
        v5 = v21;
        endingAt = v20;
        if (v19 < 0)
        {
          goto LABEL_19;
        }
      }

      if (v5 >= endingAt)
      {
        v6 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(startingAt, endingAt, v4, v5);
        v8 = v7;
        v9 = _allASCII(_:)(v6, v7);
        v11 = v6;
        v12 = v8;
LABEL_12:
        countAndFlagsBits = specialized static String._uncheckedFromUTF8(_:isASCII:)(v11, v12, v9, v10);
        goto LABEL_21;
      }
    }

LABEL_19:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v18 = _StringGuts.foreignErrorCorrectedGrapheme(startingAt:endingAt:)(startingAt, endingAt);
  object = v18._object;
  countAndFlagsBits = v18._countAndFlagsBits;
LABEL_21:
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

Swift::String::Index protocol witness for BidirectionalCollection.index(before:) in conformance String@<X0>(Swift::String::Index *a1@<X0>, Swift::String::Index *a2@<X8>)
{
  result._rawBits = String.index(before:)(a1->_rawBits)._rawBits;
  a2->_rawBits = result._rawBits;
  return result;
}

Swift::String::Index protocol witness for BidirectionalCollection.formIndex(before:) in conformance String(Swift::String::Index *a1)
{
  result._rawBits = String.index(before:)(a1->_rawBits)._rawBits;
  a1->_rawBits = result._rawBits;
  return result;
}

Swift::String::Index _sSSSlsSl5index_8offsetBy5IndexQzAD_SitFTW_0@<X0>(Swift::String::Index *a1@<X0>, Swift::Int a2@<X1>, Swift::String::Index *a3@<X8>)
{
  result._rawBits = String.index(_:offsetBy:)(a1->_rawBits, a2)._rawBits;
  a3->_rawBits = result._rawBits;
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance String(uint64_t *a1, Swift::UInt64 *a2))(uint64_t a1)
{
  v4._rawBits = *a2;
  v5 = String.subscript.getter(v4, *v2, *(v2 + 8));
  a1[1] = v6;
  a1[2] = v6;
  *a1 = v5;
  return protocol witness for Collection.subscript.read in conformance String;
}

unint64_t protocol witness for Collection.subscript.getter in conformance String@<X0>(Swift::UInt64 *a1@<X0>, Swift::UInt64 *a2@<X8>)
{
  v4._rawBits = a1[1];
  v6 = *v2;
  v5 = v2[1];
  v7._rawBits = *a1;
  v8._rawBits = _StringGuts.validateScalarRange(_:)(v7, v4, v6, v5)._rawBits;
  rawBits = v8._rawBits | 3;
  if (v8._rawBits >= 0x10000)
  {
    rawBits = v8._rawBits;
  }

  *a2 = rawBits;
  a2[1] = v9._rawBits;
  a2[2] = v6;
  a2[3] = v5;

  return v5;
}

Swift::UInt64 String.subscript.getter(Swift::String::Index a1, Swift::String::Index a2, unint64_t a3, unint64_t a4)
{
  v5._rawBits = _StringGuts.validateScalarRange(_:)(a1, a2, a3, a4)._rawBits;
  if (v5._rawBits >= 0x10000)
  {
    rawBits = v5._rawBits;
  }

  else
  {
    rawBits = v5._rawBits | 3;
  }

  a4;
  return rawBits;
}

BOOL protocol witness for Collection.isEmpty.getter in conformance String()
{
  v1 = v0[1];
  v2 = *v0 & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  return v2 == 0;
}

Swift::String::Index protocol witness for Collection.index(after:) in conformance String@<X0>(Swift::String::Index *a1@<X0>, Swift::String::Index *a2@<X8>)
{
  v3._rawBits = _StringGuts.validateCharacterIndex(_:)(a1->_rawBits)._rawBits;
  result._rawBits = String._uncheckedIndex(after:)(v3)._rawBits;
  a2->_rawBits = result._rawBits;
  return result;
}

Swift::String::Index protocol witness for Collection.formIndex(after:) in conformance String(Swift::String::Index *a1)
{
  v2._rawBits = _StringGuts.validateCharacterIndex(_:)(a1->_rawBits)._rawBits;
  result._rawBits = String._uncheckedIndex(after:)(v2)._rawBits;
  a1->_rawBits = result._rawBits;
  return result;
}

Swift::Int protocol witness for Collection.count.getter in conformance String()
{
  v1 = v0[1];
  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = *v0;
  }

  v3 = 7;
  if (((v1 >> 60) & ((*v0 & 0x800000000000000) == 0)) != 0)
  {
    v3 = 11;
  }

  return String.distance(from:to:)(15, (v3 | (v2 << 16)));
}

__objc2_class **protocol witness for Sequence._copyToContiguousArray() in conformance String()
{
  v1 = v0[1];
  v2 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0, v1);
  v1;
  return v2;
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v1 = v0[2];
  if (v1 >= v0[3])
  {
    countAndFlagsBits = 0;
    object = 0;
    goto LABEL_41;
  }

  v2 = *v0;
  v3 = v0[1];
  if ((v3 & 0x1000000000000000) != 0)
  {
    v23 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v0[2]);
    v6 = v23 + v1;
    v24 = _StringGuts.foreignErrorCorrectedGrapheme(startingAt:endingAt:)(v1, v23 + v1);
    object = v24._object;
    countAndFlagsBits = v24._countAndFlagsBits;
    goto LABEL_28;
  }

  if ((v3 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(v3) & 0xF;
    v29 = *v0;
    v30 = v3 & 0xFFFFFFFFFFFFFFLL;
    v6 = v1 + 1;
    if (v1 + 1 != v17)
    {
      v18 = *(&v29 + v1);
      if (v18 == 2573 || (v18 & 0x80808080) != 0)
      {
        v25 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v1);
        v6 = v25 + v1;
        if (v25 + v1 < v1)
        {
          goto LABEL_39;
        }
      }
    }

    v29 = v2;
    v30 = v3 & 0xFFFFFFFFFFFFFFLL;
    if ((v1 & 0x8000000000000000) == 0 && v17 >= v6)
    {
      v13 = v6 - v1;
      if (v6 - v1 >= 0)
      {
        v20 = _allASCII(_:)((&v29 + v1), v6 - v1);
        v16 = &v29 + v1;
        v14 = v20;
        goto LABEL_27;
      }
    }

    goto LABEL_36;
  }

  if ((v2 & 0x1000000000000000) != 0)
  {
    v4 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter(*v0, v0[1]);
  }

  v6 = v1 + 1;
  if (v1 + 1 != v5)
  {
    if (!v4)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v7 = *&v4[v1];
    if (v7 == 2573 || (v7 & 0x80808080) != 0)
    {
      v27 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v1);
      v6 = v27 + v1;
      if (v27 + v1 < v1)
      {
LABEL_39:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }
  }

  if ((v2 & 0x1000000000000000) != 0)
  {
    v9 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v10 = v2 & 0xFFFFFFFFFFFFLL;
    if (v1 < 0)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v9 = _StringObject.sharedUTF8.getter(v2, v3);
    v10 = v26;
    if (v1 < 0)
    {
      goto LABEL_36;
    }
  }

  if (v10 < v6)
  {
LABEL_36:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v11 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v1, v6, v9, v10);
  v13 = v12;
  v14 = _allASCII(_:)(v11, v12);
  v16 = v11;
LABEL_27:
  countAndFlagsBits = specialized static String._uncheckedFromUTF8(_:isASCII:)(v16, v13, v14, v15);
LABEL_28:
  v0[2] = v6;
LABEL_41:
  result.value._object = object;
  result.value._countAndFlagsBits = countAndFlagsBits;
  return result;
}

uint64_t protocol witness for IteratorProtocol.next() in conformance String.Iterator@<X0>(Swift::String_optional *a1@<X8>)
{
  v3 = String.Iterator.next()();
  result = v3.value._countAndFlagsBits;
  *a1 = v3;
  return result;
}

uint64_t static StringProtocol.== infix<A>(_:_:)(unint64_t *a1, uint64_t a2, Class *a3, ValueMetadata *a4)
{
  Description = a4[-1].Description;
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = (&v90 - v12);
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v11, v16);
  v19 = (&v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v23 = &v90 - v22;
  MEMORY[0x1EEE9AC00](v21, v24);
  v31 = (&v90 - v27);
  if (v32 == &type metadata for String)
  {
    if (a4 == &type metadata for String)
    {
      v80 = *a1;
      v81 = a1[1];
      v82 = *v30;
      v83 = v30[1];

      return specialized static StringProtocol.== infix<A>(_:_:)(v80, v81, v82, v83);
    }

    if (a4 == &type metadata for Substring)
    {
      v39 = *a1;
      v40 = a1[1];
      v41 = *v30;
      v42 = v30[1];
      v43 = v30[2];
      v44 = v30[3];

      return specialized static StringProtocol.== infix<A>(_:_:)(v39, v40, v41, v42, v43, v44);
    }
  }

  if (a3 != &type metadata for Substring)
  {
    goto LABEL_3;
  }

  if (a4 != &type metadata for String)
  {
    if (a4 == &type metadata for Substring)
    {
      v49 = a1[2];
      v50 = a1[3];
      v51 = *a1 >> 16;
      v52 = a1[1] >> 16;
      v53 = v30[2];
      v54 = v30[3];
      v55 = *v30 >> 16;
      v56 = v30[1] >> 16;
      if (v49 != v53 || v50 != v54 || v51 != v55 || v52 != v56)
      {
        return _stringCompareInternal(_:_:_:_:expecting:)(v49, v50, v51, v52, v53, v54, v55, v56, 0) & 1;
      }

      v57 = 1;
      return v57 & 1;
    }

LABEL_3:
    v93 = v30;
    v94 = v26;
    v33 = v25;
    v90 = v28;
    v91 = v29;
    v34 = *(v15 + 16);
    v34(&v90 - v27, a1, a3);
    if (swift_dynamicCast(&v96, v31, a3, &type metadata for String, 6uLL, v35, v36, v37, v90))
    {
      v38 = v97;
      v92 = v96;
    }

    else
    {
      v34(v23, a1, a3);
      if (swift_dynamicCast(&v96, v23, a3, &type metadata for Substring, 6uLL, v46, v47, v48, v90))
      {
        v38 = v99;
        v92 = v98;
      }

      else
      {
        v34(v19, a1, a3);
        v92 = String.init<A>(_:)(v19, a3);
        v38 = v58;
      }
    }

    v59 = *(*(v33 + 8) + 8);
    (*(v59 + 64))(&v96, a3, v59);
    v60 = v96;
    (*(v59 + 72))(&v96, a3, v59);
    v61 = v96;
    v62 = Description[2];
    v63 = v93;
    v62(v13, v93, a4);
    if (swift_dynamicCast(&v96, v13, a4, &type metadata for String, 6uLL, v64, v65, v66, v90))
    {
      v68 = v96;
      v67 = v97;
    }

    else
    {
      v69 = v91;
      v62(v91, v63, a4);
      if (swift_dynamicCast(&v96, v69, a4, &type metadata for Substring, 6uLL, v70, v71, v72, v90))
      {
        v68 = v98;
        v67 = v99;
      }

      else
      {
        v73 = v90;
        v62(v90, v63, a4);
        v68 = String.init<A>(_:)(v73, a4);
        v67 = v74;
      }
    }

    v75 = v60 >> 16;
    v76 = *(*(v94 + 8) + 8);
    (*(v76 + 64))(&v96, a4, v76);
    v77 = v96;
    (*(v76 + 72))(&v96, a4, v76);
    v78 = v77 >> 16;
    v79 = v96 >> 16;
    if (v92 == v68 && v38 == v67 && v75 == v78 && v61 >> 16 == v79)
    {
      v38;
      v67;
      v57 = 1;
    }

    else
    {
      v57 = _stringCompareInternal(_:_:_:_:expecting:)(v92, v38, v75, v61 >> 16, v68, v67, v78, v79, 0);
      v38;
      v67;
    }

    return v57 & 1;
  }

  v84 = *a1;
  v85 = a1[1];
  v86 = a1[2];
  v87 = a1[3];
  v88 = *v30;
  v89 = v30[1];

  return specialized static StringProtocol.== infix<A>(_:_:)(v84, v85, v86, v87, v88, v89);
}

uint64_t StringProtocol._wholeGuts.getter(Class *a1, uint64_t a2)
{
  v4 = *(a1 - 1);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  v7 = (v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = v26 - v10;
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = (v26 - v14);
  if (v13 == &type metadata for String)
  {
    v20 = *v2;
    v21 = v2[1];
LABEL_7:
    v21;
    return v20;
  }

  if (a1 == &type metadata for Substring)
  {
    v20 = v2[2];
    v21 = v2[3];
    goto LABEL_7;
  }

  v16 = v4[2];
  v16(v26 - v14, v2, a1);
  if (swift_dynamicCast(v26, v15, a1, &type metadata for String, 6uLL, v17, v18, v19, v26[0]))
  {
    return v26[0];
  }

  v16(v11, v2, a1);
  if (swift_dynamicCast(v26, v11, a1, &type metadata for Substring, 6uLL, v23, v24, v25, v26[0]))
  {
    return v26[2];
  }

  v16(v7, v2, a1);
  return String.init<A>(_:)(v7, a1);
}

unint64_t StringProtocol._offsetRange.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 8) + 8);
  (*(v3 + 64))(&v6, a1, v3);
  v4 = v6;
  (*(v3 + 72))(&v6, a1, v3);
  return v4 >> 16;
}

uint64_t _stringCompare(_:_:_:_:expecting:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a1 == a5 && a2 == a6 && a3 == a7 && a4 == a8)
  {
    return (a9 & 1) == 0;
  }

  else
  {
    return _stringCompareInternal(_:_:_:_:expecting:)(a1, a2, a3, a4, a5, a6, a7, a8, a9 & 1);
  }
}

uint64_t static StringProtocol.< infix<A>(_:_:)(unint64_t *a1, unint64_t *a2, Class *a3, ValueMetadata *a4)
{
  Description = a4[-1].Description;
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v19 = (&v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v23 = &v93 - v22;
  MEMORY[0x1EEE9AC00](v21, v24);
  v31 = (&v93 - v27);
  if (v32 == &type metadata for String)
  {
    if (a4 == &type metadata for String)
    {
      v45 = *a1;
      v46 = a1[1];
      v47 = *a2;
      v48 = a2[1];

      return specialized static StringProtocol.< infix<A>(_:_:)(v45, v46, v47, v48);
    }

    else
    {
      v40 = *a1;
      v39 = a1[1];
      if (a4 != &type metadata for Substring)
      {
        v96 = v30;
        v97 = v40;
        v33 = v25;
        v93 = v28;
        v94 = v29;
        v98 = v26;
LABEL_11:
        v39;
        goto LABEL_20;
      }

      v72 = *a2;
      v73 = a2[1];
      v74 = a2[2];
      v75 = a2[3];
      v76 = a1[1];

      return specialized static StringProtocol.< infix<A>(_:_:)(v40, v76, v72, v73, v74, v75);
    }
  }

  else
  {
    if (a3 != &type metadata for Substring)
    {
      v95 = Description;
      v96 = v30;
      v33 = v25;
      v93 = v28;
      v94 = v29;
      v98 = v26;
      v34 = *(v15 + 16);
      v34(&v93 - v27, a1, a3);
      if (swift_dynamicCast(&v99, v31, a3, &type metadata for String, 6uLL, v35, v36, v37, v93))
      {
        v38 = v99;
        v39 = v100;
      }

      else
      {
        v34(v23, a1, a3);
        if (!swift_dynamicCast(&v99, v23, a3, &type metadata for Substring, 6uLL, v42, v43, v44, v93))
        {
          v34(v19, a1, a3);
          v97 = String.init<A>(_:)(v19, a3);
          v39 = v50;
          goto LABEL_19;
        }

        v38 = v101;
        v39 = v102;
      }

      v97 = v38;
LABEL_19:
      Description = v95;
LABEL_20:
      v51 = *(*(v33 + 8) + 8);
      (*(v51 + 64))(&v99, a3, v51);
      v52 = v99;
      (*(v51 + 72))(&v99, a3, v51);
      v53 = v99;
      if (a4 == &type metadata for String)
      {
        v60 = *a2;
        v59 = a2[1];
      }

      else
      {
        if (a4 != &type metadata for Substring)
        {
          v54 = Description[2];
          v55 = v96;
          v54(v96, a2, a4);
          if (swift_dynamicCast(&v99, v55, a4, &type metadata for String, 6uLL, v56, v57, v58, v93))
          {
            v60 = v99;
            v59 = v100;
          }

          else
          {
            v68 = v94;
            v54(v94, a2, a4);
            if (swift_dynamicCast(&v99, v68, a4, &type metadata for Substring, 6uLL, v69, v70, v71, v93))
            {
              v60 = v101;
              v59 = v102;
            }

            else
            {
              v83 = v93;
              v54(v93, a2, a4);
              v60 = String.init<A>(_:)(v83, a4);
              v59 = v84;
            }
          }

LABEL_27:
          v61 = v52 >> 16;
          v62 = v53 >> 16;
          v63 = *(*(v98 + 8) + 8);
          (*(v63 + 64))(&v99, a4, v63);
          v64 = v99;
          (*(v63 + 72))(&v99, a4, v63);
          v65 = v64 >> 16;
          v66 = v99 >> 16;
          if (v97 == v60 && v39 == v59 && v61 == v65 && v62 == v66)
          {
            v39;
            v59;
            v67 = 0;
          }

          else
          {
            v67 = _stringCompareInternal(_:_:_:_:expecting:)(v97, v39, v61, v62, v60, v59, v65, v66, 1);
            v39;
            v59;
          }

          return v67 & 1;
        }

        v60 = a2[2];
        v59 = a2[3];
      }

      v59;
      goto LABEL_27;
    }

    if (a4 != &type metadata for String)
    {
      if (a4 == &type metadata for Substring)
      {
        v85 = a1[2];
        v86 = a1[3];
        v87 = *a1 >> 16;
        v88 = a1[1] >> 16;
        v89 = a2[2];
        v90 = a2[3];
        v91 = *a2 >> 16;
        v92 = a2[1] >> 16;
        if (v85 != v89 || v86 != v90 || v87 != v91 || v88 != v92)
        {
          return _stringCompareInternal(_:_:_:_:expecting:)(v85, v86, v87, v88, v89, v90, v91, v92, 1) & 1;
        }

        v67 = 0;
        return v67 & 1;
      }

      v33 = v25;
      v93 = v28;
      v94 = v29;
      v98 = v26;
      v41 = a1[2];
      v39 = a1[3];
      v96 = v30;
      v97 = v41;
      goto LABEL_11;
    }

    v77 = *a1;
    v78 = a1[1];
    v79 = a1[2];
    v80 = a1[3];
    v81 = *a2;
    v82 = a2[1];

    return specialized static StringProtocol.< infix<A>(_:_:)(v77, v78, v79, v80, v81, v82);
  }
}