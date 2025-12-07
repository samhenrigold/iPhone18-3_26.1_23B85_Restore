uint64_t closure #1 in UserGraph.resolveSwizzleNodes(nodeDefStore:)(__int128 *a1, _OWORD *a2, unint64_t a3, uint64_t a4)
{
  v237 = a3;
  v238 = a4;
  v6 = type metadata accessor for CharacterSet();
  v7 = *(v6 - 8);
  v239 = v6;
  v240 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = (&v225 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = &v225 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v225 - v14;
  v16 = a1[1];
  v417 = *a1;
  v418[0] = v16;
  *(v418 + 9) = *(a1 + 25);
  v17 = a2[8];
  v18 = a2[9];
  v19 = a2[6];
  v421[7] = a2[7];
  v421[8] = v17;
  v422[0] = v18;
  *(v422 + 9) = *(a2 + 153);
  v20 = a2[5];
  v421[4] = a2[4];
  v421[5] = v20;
  v421[6] = v19;
  v21 = a2[1];
  v421[0] = *a2;
  v421[1] = v21;
  v22 = a2[3];
  v421[2] = a2[2];
  v421[3] = v22;
  outlined init with copy of UserGraph(v421, &v250);
  v23 = v424;
  ShaderGraphNode.subscript.getter(7632239, 0xE300000000000000, v254);
  if (v23)
  {
    return outlined destroy of UserGraph(v421);
  }

  v236 = v9;
  v234 = v12;
  v424 = 0;
  v235 = v15;
  v25 = UserGraph.edges(from:)(v254);

  v408 = v255;
  outlined destroy of String(&v408);
  outlined destroy of UserGraph(v421);
  v26 = *(v25 + 16);

  if (v26)
  {
    v27 = *(&v417 + 1);
    specialized ShaderGraphNode.output(labeled:)(&v256, 0x736C656E6E616863, 0xE800000000000000, *(&v417 + 1));
    if (!v257)
    {
      *&v246 = 0;
      *(&v246 + 1) = 0xE000000000000000;
      MEMORY[0x266771550](0x736C656E6E616863, 0xE900000000000020);
      v250 = v417;
      v251[0] = v418[0];
      *(v251 + 9) = *(v418 + 9);
      _print_unlocked<A, B>(_:_:)();
      v38 = v246;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v39 = 11;
      *(v39 + 8) = v38;
      return swift_willThrow();
    }

    v287[0] = v256;
    v287[1] = v257;
    v288 = v258;
    v289 = v259;
    v290 = v260;
    v28 = a2[9];
    v29 = &v417;
    v419[8] = a2[8];
    v420[0] = v28;
    *(v420 + 9) = *(a2 + 153);
    v30 = a2[5];
    v419[4] = a2[4];
    v419[5] = v30;
    v31 = a2[7];
    v419[6] = a2[6];
    v419[7] = v31;
    v32 = a2[1];
    v419[0] = *a2;
    v419[1] = v32;
    v33 = a2[3];
    v419[2] = a2[2];
    v419[3] = v33;
    outlined init with copy of UserGraph(v419, &v250);
    UserGraph.node(connectedTo:)(v287, &v261);
    outlined destroy of UserGraph(v419);
    v34 = v262;
    if (!v262)
    {
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v40 = 9;
      *(v40 + 8) = 0xD000000000000018;
      *(v40 + 16) = 0x8000000265F31220;
      swift_willThrow();

      v291 = v288;
      return outlined destroy of String(&v291);
    }

    v35 = v263;
    v314 = v261;
    if (v261 >> 61)
    {
      *&v246 = 0;
      *(&v246 + 1) = 0xE000000000000000;
      v250 = v417;
      v251[0] = v418[0];
      *(v251 + 9) = *(v418 + 9);
      _print_unlocked<A, B>(_:_:)();
      v41 = v246;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v42 = 41;
      *(v42 + 8) = v41;
      swift_willThrow();
      outlined destroy of NodePersonality(&v314);
      v315 = v34;
      outlined destroy of [Input](&v315, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v316 = v35;
      outlined destroy of [Input](&v316, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v292 = v288;
      return outlined destroy of String(&v292);
    }

    v36 = *(v261 + 48);
    v251[0] = *(v261 + 32);
    v251[1] = v36;
    v252 = *(v261 + 64);
    v253 = *(v261 + 80);
    v250 = *(v261 + 16);
    outlined init with copy of SGDataTypeStorage(&v250, &v246);
    v37 = v424;
    ShaderGraphNode.subscript.getter(7632239, 0xE300000000000000, &v264);
    v424 = v37;
    if (v37)
    {
      outlined destroy of SGDataTypeStorage(&v250);
      outlined destroy of NodePersonality(&v314);
      v317 = v34;
      outlined destroy of [Input](&v317, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v318 = v35;
      outlined destroy of [Input](&v318, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v293 = v288;
      return outlined destroy of String(&v293);
    }

    v233 = v34;
    v43 = *(&v264 + 1);
    specialized ShaderGraphNode.output(labeled:)(v268, 28265, 0xE200000000000000, v27);
    v44 = *(&v268[0] + 1);
    if (!*(&v268[0] + 1))
    {
      v244 = 0;
      v245 = 0xE000000000000000;

      MEMORY[0x266771550](2125417, 0xE300000000000000);
      v246 = v417;
      v247[0] = v418[0];
      *(v247 + 9) = *(v418 + 9);
      _print_unlocked<A, B>(_:_:)();
      v49 = v244;
      v50 = v245;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v51 = 11;
      *(v51 + 8) = v49;
      *(v51 + 16) = v50;
      swift_willThrow();

      v407 = v265;
      outlined destroy of String(&v407);
      outlined destroy of SGDataTypeStorage(&v250);
      outlined destroy of NodePersonality(&v314);
      v319 = v233;
      outlined destroy of [Input](&v319, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v320 = v35;
      outlined destroy of [Input](&v320, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v294 = v288;
      return outlined destroy of String(&v294);
    }

    v283 = v268[0];
    v284 = v268[1];
    v285 = v268[2];
    v286 = v269;
    if (v253 != 6)
    {
      v247[1] = v251[1];
      v248 = v252;
      v249 = v253;
      v246 = v250;
      v247[0] = v251[0];
      outlined init with copy of SGDataTypeStorage(&v250, &v244);

      v52 = String.init<A>(describing:)();
      v54 = v53;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v55 = 25;
      *(v55 + 8) = v52;
      *(v55 + 16) = v54;
      swift_willThrow();

      v359 = v284;
      outlined destroy of String(&v359);

      v406 = v265;
      outlined destroy of String(&v406);
      outlined destroy of SGDataTypeStorage(&v250);
      outlined destroy of NodePersonality(&v314);
      v321 = v233;
      outlined destroy of [Input](&v321, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v322 = v35;
      outlined destroy of [Input](&v322, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v295 = v288;
      return outlined destroy of String(&v295);
    }

    v45 = v250;
    outlined init with copy of SGDataTypeStorage(&v250, &v246);

    if ((String.count.getter() - 5) <= 0xFFFFFFFFFFFFFFFBLL)
    {
      v244 = 0;
      v245 = 0xE000000000000000;
      MEMORY[0x266771550](v45, *(&v45 + 1));
      outlined destroy of SGDataTypeStorage(&v250);
      MEMORY[0x266771550](32, 0xE100000000000000);
      v246 = v417;
      v247[0] = v418[0];
      *(v247 + 9) = *(v418 + 9);
      _print_unlocked<A, B>(_:_:)();
      v46 = v244;
      v47 = v245;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v48 = 25;
      *(v48 + 8) = v46;
      *(v48 + 16) = v47;
      swift_willThrow();

      v360 = v284;
      outlined destroy of String(&v360);

      v379 = v265;
      outlined destroy of String(&v379);
      outlined destroy of SGDataTypeStorage(&v250);
      outlined destroy of NodePersonality(&v314);
      v323 = v233;
      outlined destroy of [Input](&v323, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v324 = v35;
      outlined destroy of [Input](&v324, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v296 = v288;
      return outlined destroy of String(&v296);
    }

    v230 = v35;
    v231 = v44;
    v229 = v43;
    v56 = v235;
    *v232 = v45;
    CharacterSet.init(charactersIn:)();
    v58 = v239;
    v57 = v240;
    v59 = *(v240 + 16);
    v227 = v240 + 16;
    v228 = v59;
    v59();
    v226 = lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet, MEMORY[0x277CC8858]);
    v60 = v234;
    dispatch thunk of SetAlgebra.intersection(_:)();
    v225 = lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet, MEMORY[0x277CC8850]);
    LODWORD(v237) = dispatch thunk of static Equatable.== infix(_:_:)();
    v62 = *(v57 + 8);
    v61 = v57 + 8;
    v62(v60, v58);
    (v228)(v236, v56, v58);
    dispatch thunk of SetAlgebra.intersection(_:)();
    v63 = dispatch thunk of static Equatable.== infix(_:_:)();
    v236 = v62;
    v62(v60, v58);
    if ((v237 & 1) == 0 && (v63 & 1) == 0)
    {
      v244 = 0;
      v245 = 0xE000000000000000;
      MEMORY[0x266771550](*v232, *&v232[8]);
      outlined destroy of SGDataTypeStorage(&v250);
      MEMORY[0x266771550](32, 0xE100000000000000);
      v246 = v417;
      v247[0] = v418[0];
      *(v247 + 9) = *(v418 + 9);
      _print_unlocked<A, B>(_:_:)();
      v64 = v244;
      v65 = v245;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v66 = 25;
      *(v66 + 8) = v64;
      *(v66 + 16) = v65;
      swift_willThrow();

      v313 = v288;
      outlined destroy of String(&v313);

      v377 = v284;
      outlined destroy of String(&v377);

      v405 = v265;
      outlined destroy of String(&v405);
      outlined destroy of NodePersonality(&v314);
      v357 = v233;
      outlined destroy of [Input](&v357, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v358 = v230;
      outlined destroy of [Input](&v358, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      outlined destroy of SGDataTypeStorage(&v250);
      v67 = v56;
      return v236(v67, v58);
    }

    v68 = String.count.getter();
    v240 = v61;
    if (v68)
    {
      *&v246 = MEMORY[0x277D84F90];
      v69 = v68;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v68 & ~(v68 >> 63), 0);
      v237 = v69;
      if (v69 < 0)
      {
        __break(1u);
        goto LABEL_50;
      }

      v58 = 0;
      v238 = v246;
      v69 = 15;
      while (1)
      {
        v70 = v58 + 1;
        if (__OFADD__(v58, 1))
        {
          break;
        }

        v71 = String.subscript.getter();
        v72 = v424;
        v74 = index #1 (for:) in UserGraph.resolveSwizzleNodes(nodeDefStore:)(v71, v73);
        v424 = v72;
        if (v72)
        {

          v297 = v288;
          outlined destroy of String(&v297);
          outlined destroy of SGDataTypeStorage(&v250);

          v361 = v284;
          outlined destroy of String(&v361);

          v404 = v265;
          outlined destroy of String(&v404);
          outlined destroy of NodePersonality(&v314);
          v325 = v233;
          outlined destroy of [Input](&v325, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v326 = v230;
          outlined destroy of [Input](&v326, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

          outlined destroy of SGDataTypeStorage(&v250);

          v236(v235, v239);
        }

        v75 = v74;

        v76 = v238;
        *&v246 = v238;
        v78 = *(v238 + 16);
        v77 = *(v238 + 24);
        if (v78 >= v77 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v77 > 1), v78 + 1, 1);
          v76 = v246;
        }

        *(v76 + 16) = v78 + 1;
        v238 = v76;
        *(v76 + 8 * v78 + 32) = v75;
        v69 = String.index(after:)();
        ++v58;
        v29 = 7632239;
        if (v70 == v237)
        {
          v58 = v239;
          goto LABEL_32;
        }
      }

      __break(1u);
    }

    else
    {
      v238 = MEMORY[0x277D84F90];
      v29 = 7632239;
LABEL_32:
      v69 = (*(*v231 + 144))();
      v79 = one-time initialization token for float;

      if (v79 == -1)
      {
LABEL_33:
        if (v69)
        {
          v80 = MetalDataType.isEqual(to:)(v69);

          if (v80)
          {

            v244 = 0xD00000000000001ELL;
            v245 = 0x8000000265F313A0;
            v82 = *(v238 + 16);
            v83 = 32;
            v84 = v231;
            while (v82)
            {
              v85 = *(v238 + v83);
              v83 += 8;
              --v82;
              if (v85 >= 1)
              {
                outlined destroy of SGDataTypeStorage(&v250);

                lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
                swift_allocError();
                *v86 = 44;
                *(v86 + 8) = 0xD000000000000030;
                *(v86 + 16) = 0x8000000265F31260;
                swift_willThrow();

                v298 = v288;
                outlined destroy of String(&v298);

                v362 = v284;
                outlined destroy of String(&v362);

                v393 = v265;
                outlined destroy of String(&v393);
                outlined destroy of NodePersonality(&v314);
                v327 = v233;
                outlined destroy of [Input](&v327, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                v328 = v230;
                v87 = &v328;
LABEL_185:
                outlined destroy of [Input](v87, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

                outlined destroy of SGDataTypeStorage(&v250);
                v67 = v235;
                return v236(v67, v58);
              }
            }

            v237 = 0x8000000265F313A0;
            goto LABEL_121;
          }
        }

        v88 = one-time initialization token for float2;

        if (v88 == -1)
        {
          if (!v69)
          {
            goto LABEL_51;
          }

LABEL_41:
          v89 = MetalDataType.isEqual(to:)(v69);

          if (v89)
          {

            v90 = 0x8000000265F31380;
            v244 = 0xD00000000000001FLL;
            v245 = 0x8000000265F31380;
            v91 = *(v238 + 16);
            v92 = 32;
            do
            {
              if (!v91)
              {
                goto LABEL_58;
              }

              v93 = *(v238 + v92);
              v92 += 8;
              --v91;
            }

            while (v93 < 2);
            outlined destroy of SGDataTypeStorage(&v250);

            lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
            swift_allocError();
            *v94 = 44;
            *(v94 + 8) = 0xD000000000000030;
            *(v94 + 16) = 0x8000000265F31260;
            swift_willThrow();

            v299 = v288;
            outlined destroy of String(&v299);

            v363 = v284;
            outlined destroy of String(&v363);

            v394 = v265;
            outlined destroy of String(&v394);
            outlined destroy of NodePersonality(&v314);
            v329 = v233;
            outlined destroy of [Input](&v329, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v330 = v230;
            v95 = &v330;
LABEL_67:
            outlined destroy of [Input](v95, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

            outlined destroy of SGDataTypeStorage(&v250);
            return v236(v235, v58);
          }

LABEL_51:
          v96 = one-time initialization token for float3;

          if (v96 == -1)
          {
            if (!v69)
            {
              goto LABEL_60;
            }
          }

          else
          {
            swift_once();
            if (!v69)
            {
              goto LABEL_60;
            }
          }

          v97 = MetalDataType.isEqual(to:)(v69);

          if (v97)
          {

            v90 = 0x8000000265F31360;
            v244 = 0xD00000000000001FLL;
            v245 = 0x8000000265F31360;
            v98 = *(v238 + 16);
            v99 = 32;
            while (v98)
            {
              v100 = *(v238 + v99);
              v99 += 8;
              --v98;
              if (v100 >= 3)
              {
                outlined destroy of SGDataTypeStorage(&v250);

                lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
                swift_allocError();
                *v101 = 44;
                *(v101 + 8) = 0xD000000000000030;
                *(v101 + 16) = 0x8000000265F31260;
                swift_willThrow();

                v300 = v288;
                outlined destroy of String(&v300);

                v364 = v284;
                outlined destroy of String(&v364);

                v395 = v265;
                outlined destroy of String(&v395);
                outlined destroy of NodePersonality(&v314);
                v331 = v233;
                outlined destroy of [Input](&v331, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                v332 = v230;
                v95 = &v332;
                goto LABEL_67;
              }
            }

LABEL_58:
            v237 = v90;
            v84 = v231;
            goto LABEL_121;
          }

LABEL_60:
          v102 = one-time initialization token for float4;

          if (v102 == -1)
          {
            if (!v69)
            {
              goto LABEL_70;
            }
          }

          else
          {
            swift_once();
            if (!v69)
            {
              goto LABEL_70;
            }
          }

          v103 = MetalDataType.isEqual(to:)(v69);

          if (v103)
          {

            v244 = 0xD00000000000001FLL;
            v245 = 0x8000000265F31340;
            v237 = 0x8000000265F31340;
            v104 = *(v238 + 16);
            v105 = 32;
            while (v104)
            {
              v106 = *(v238 + v105);
              v105 += 8;
              --v104;
              if (v106 >= 4)
              {
                outlined destroy of SGDataTypeStorage(&v250);

                lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
                swift_allocError();
                *v107 = 44;
                *(v107 + 8) = 0xD000000000000030;
                *(v107 + 16) = 0x8000000265F31260;
                swift_willThrow();

                v301 = v288;
                outlined destroy of String(&v301);

                v365 = v284;
                outlined destroy of String(&v365);

                v396 = v265;
                outlined destroy of String(&v396);
                outlined destroy of NodePersonality(&v314);
                v333 = v233;
                outlined destroy of [Input](&v333, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                v334 = v230;
                v95 = &v334;
                goto LABEL_67;
              }
            }

            v84 = v231;
            v29 = 7632239;
            goto LABEL_121;
          }

LABEL_70:
          v108 = one-time initialization token for half;

          if (v108 == -1)
          {
            if (!v69)
            {
              goto LABEL_78;
            }
          }

          else
          {
            swift_once();
            if (!v69)
            {
              goto LABEL_78;
            }
          }

          v109 = MetalDataType.isEqual(to:)(v69);

          if (v109)
          {

            v244 = 0xD00000000000001DLL;
            v245 = 0x8000000265F31320;
            v237 = 0x8000000265F31320;
            v110 = *(v238 + 16);
            v111 = 32;
            do
            {
              if (!v110)
              {
                goto LABEL_120;
              }

              v112 = *(v238 + v111);
              v111 += 8;
              --v110;
            }

            while (v112 < 1);
            outlined destroy of SGDataTypeStorage(&v250);

            lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
            swift_allocError();
            *v113 = 44;
            *(v113 + 8) = 0xD000000000000030;
            *(v113 + 16) = 0x8000000265F31260;
            swift_willThrow();

            v302 = v288;
            outlined destroy of String(&v302);

            v366 = v284;
            outlined destroy of String(&v366);

            v397 = v265;
            outlined destroy of String(&v397);
            outlined destroy of NodePersonality(&v314);
            v335 = v233;
            outlined destroy of [Input](&v335, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v336 = v230;
            v114 = &v336;
            goto LABEL_85;
          }

LABEL_78:
          v115 = one-time initialization token for half2;

          if (v115 == -1)
          {
            if (!v69)
            {
              goto LABEL_88;
            }
          }

          else
          {
            swift_once();
            if (!v69)
            {
              goto LABEL_88;
            }
          }

          v116 = MetalDataType.isEqual(to:)(v69);

          if (v116)
          {

            v244 = 0xD00000000000001ELL;
            v245 = 0x8000000265F31300;
            v237 = 0x8000000265F31300;
            v117 = *(v238 + 16);
            v118 = 32;
            do
            {
              if (!v117)
              {
                goto LABEL_120;
              }

              v119 = *(v238 + v118);
              v118 += 8;
              --v117;
            }

            while (v119 < 2);
            outlined destroy of SGDataTypeStorage(&v250);

            lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
            swift_allocError();
            *v120 = 44;
            *(v120 + 8) = 0xD000000000000030;
            *(v120 + 16) = 0x8000000265F31260;
            swift_willThrow();

            v303 = v288;
            outlined destroy of String(&v303);

            v367 = v284;
            outlined destroy of String(&v367);

            v398 = v265;
            outlined destroy of String(&v398);
            outlined destroy of NodePersonality(&v314);
            v337 = v233;
            outlined destroy of [Input](&v337, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v338 = v230;
            v114 = &v338;
LABEL_85:
            outlined destroy of [Input](v114, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

            outlined destroy of SGDataTypeStorage(&v250);
            return v236(v235, v239);
          }

LABEL_88:
          v121 = one-time initialization token for half3;

          if (v121 == -1)
          {
            if (!v69)
            {
              goto LABEL_96;
            }
          }

          else
          {
            swift_once();
            if (!v69)
            {
              goto LABEL_96;
            }
          }

          v122 = MetalDataType.isEqual(to:)(v69);

          if (v122)
          {

            v244 = 0xD00000000000001ELL;
            v245 = 0x8000000265F312E0;
            v237 = 0x8000000265F312E0;
            v123 = *(v238 + 16);
            v124 = 32;
            do
            {
              if (!v123)
              {
                goto LABEL_120;
              }

              v125 = *(v238 + v124);
              v124 += 8;
              --v123;
            }

            while (v125 < 3);
            outlined destroy of SGDataTypeStorage(&v250);

            lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
            swift_allocError();
            *v126 = 44;
            *(v126 + 8) = 0xD000000000000030;
            *(v126 + 16) = 0x8000000265F31260;
            swift_willThrow();

            v304 = v288;
            outlined destroy of String(&v304);

            v368 = v284;
            outlined destroy of String(&v368);

            v399 = v265;
            outlined destroy of String(&v399);
            outlined destroy of NodePersonality(&v314);
            v339 = v233;
            outlined destroy of [Input](&v339, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v340 = v230;
            v127 = &v340;
LABEL_209:
            outlined destroy of [Input](v127, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
            goto LABEL_210;
          }

LABEL_96:
          v128 = one-time initialization token for half4;

          if (v128 == -1)
          {
            if (!v69)
            {
              goto LABEL_104;
            }
          }

          else
          {
            swift_once();
            if (!v69)
            {
              goto LABEL_104;
            }
          }

          v129 = MetalDataType.isEqual(to:)(v69);

          if (v129)
          {

            v244 = 0xD00000000000001ELL;
            v245 = 0x8000000265F312C0;
            v237 = 0x8000000265F312C0;
            v130 = *(v238 + 16);
            v131 = 32;
            do
            {
              if (!v130)
              {
                goto LABEL_120;
              }

              v132 = *(v238 + v131);
              v131 += 8;
              --v130;
            }

            while (v132 < 4);
            outlined destroy of SGDataTypeStorage(&v250);

            lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
            swift_allocError();
            *v133 = 44;
            *(v133 + 8) = 0xD000000000000030;
            *(v133 + 16) = 0x8000000265F31260;
            swift_willThrow();

            v305 = v288;
            outlined destroy of String(&v305);

            v369 = v284;
            outlined destroy of String(&v369);

            v400 = v265;
            outlined destroy of String(&v400);
            outlined destroy of NodePersonality(&v314);
            v341 = v233;
            outlined destroy of [Input](&v341, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v342 = v230;
            v127 = &v342;
            goto LABEL_209;
          }

LABEL_104:
          v134 = one-time initialization token for color3;

          if (v134 == -1)
          {
            if (!v69)
            {
              goto LABEL_112;
            }
          }

          else
          {
            swift_once();
            if (!v69)
            {
              goto LABEL_112;
            }
          }

          v135 = MetalDataType.isEqual(to:)(v69);

          if (v135)
          {

            v244 = 0xD00000000000001FLL;
            v245 = 0x8000000265F312A0;
            v237 = 0x8000000265F312A0;
            v136 = *(v238 + 16);
            v137 = 32;
            do
            {
              if (!v136)
              {
                goto LABEL_120;
              }

              v138 = *(v238 + v137);
              v137 += 8;
              --v136;
            }

            while (v138 < 3);
            outlined destroy of SGDataTypeStorage(&v250);

            lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
            swift_allocError();
            *v139 = 44;
            *(v139 + 8) = 0xD000000000000030;
            *(v139 + 16) = 0x8000000265F31260;
            swift_willThrow();

            v306 = v288;
            outlined destroy of String(&v306);

            v370 = v284;
            outlined destroy of String(&v370);

            v401 = v265;
            outlined destroy of String(&v401);
            outlined destroy of NodePersonality(&v314);
            v343 = v233;
            outlined destroy of [Input](&v343, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v344 = v230;
            v127 = &v344;
            goto LABEL_209;
          }

LABEL_112:
          if (one-time initialization token for color4 != -1)
          {
            swift_once();
          }

          if (v69)
          {
            v140 = MetalDataType.isEqual(to:)(v69);

            if (v140)
            {
              v244 = 0xD00000000000001FLL;
              v245 = 0x8000000265F31240;
              v237 = 0x8000000265F31240;
              v141 = *(v238 + 16);
              v142 = 32;
              while (v141)
              {
                v143 = *(v238 + v142);
                v142 += 8;
                --v141;
                if (v143 >= 4)
                {
                  outlined destroy of SGDataTypeStorage(&v250);

                  lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
                  swift_allocError();
                  *v144 = 44;
                  *(v144 + 8) = 0xD000000000000030;
                  *(v144 + 16) = 0x8000000265F31260;
                  swift_willThrow();

                  v307 = v288;
                  outlined destroy of String(&v307);

                  v371 = v284;
                  outlined destroy of String(&v371);

                  v402 = v265;
                  outlined destroy of String(&v402);
                  outlined destroy of NodePersonality(&v314);
                  v345 = v233;
                  outlined destroy of [Input](&v345, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                  v346 = v230;
                  v127 = &v346;
                  goto LABEL_209;
                }
              }

LABEL_120:
              v58 = v239;
              v84 = v231;
              v29 = 7632239;
LABEL_121:
              v145 = (*(*v229 + 144))(v81);
              v146 = v145;
              if (v145 && (MetalDataType.isEqual(to:)(v145) & 1) != 0)
              {

                MEMORY[0x266771550](0x74616F6C66, 0xE500000000000000);
                v147 = 1;
                goto LABEL_174;
              }

              v148 = one-time initialization token for float2;

              if (v148 == -1)
              {
                if (!v146)
                {
                  goto LABEL_132;
                }
              }

              else
              {
                swift_once();
                if (!v146)
                {
                  goto LABEL_132;
                }
              }

              v149 = MetalDataType.isEqual(to:)(v146);

              if (v149)
              {

                MEMORY[0x266771550](0x3274616F6C66, 0xE600000000000000);
                v147 = 2;
                goto LABEL_174;
              }

LABEL_132:
              v153 = one-time initialization token for float3;

              if (v153 == -1)
              {
                if (!v146)
                {
                  goto LABEL_137;
                }
              }

              else
              {
                swift_once();
                if (!v146)
                {
                  goto LABEL_137;
                }
              }

              v154 = MetalDataType.isEqual(to:)(v146);

              if (v154)
              {

                MEMORY[0x266771550](0x3374616F6C66, 0xE600000000000000);
                v147 = 3;
                goto LABEL_174;
              }

LABEL_137:
              v155 = one-time initialization token for float4;

              if (v155 == -1)
              {
                if (!v146)
                {
                  goto LABEL_142;
                }
              }

              else
              {
                swift_once();
                if (!v146)
                {
                  goto LABEL_142;
                }
              }

              v156 = MetalDataType.isEqual(to:)(v146);

              if (v156)
              {

                MEMORY[0x266771550](0x3474616F6C66, 0xE600000000000000);
                v147 = 4;
                while (1)
                {
LABEL_174:
                  v172 = *v232;
                  if (*(v238 + 16) != v147)
                  {

                    v242 = 0;
                    v243 = 0xE000000000000000;
                    MEMORY[0x266771550](v172, *&v232[8]);
                    outlined destroy of SGDataTypeStorage(&v250);
                    MEMORY[0x266771550](32, 0xE100000000000000);
                    v246 = v417;
                    v247[0] = v418[0];
                    *(v247 + 9) = *(v418 + 9);
                    _print_unlocked<A, B>(_:_:)();
                    v182 = v242;
                    v183 = v243;
                    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
                    swift_allocError();
                    *v184 = 25;
                    *(v184 + 8) = v182;
                    *(v184 + 16) = v183;
                    swift_willThrow();

                    v312 = v288;
                    outlined destroy of String(&v312);

                    v376 = v284;
                    outlined destroy of String(&v376);

                    v391 = v265;
                    outlined destroy of String(&v391);
                    outlined destroy of NodePersonality(&v314);
                    v355 = v233;
                    outlined destroy of [Input](&v355, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                    v356 = v230;
                    v87 = &v356;
                    goto LABEL_185;
                  }

                  outlined destroy of SGDataTypeStorage(&v250);
                  v173 = v238;
                  v146 = *(v238 + 16);
                  if (v146)
                  {
                    break;
                  }

                  v175 = MEMORY[0x277D84F90];
LABEL_188:
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMR);
                  v185 = swift_allocObject();
                  *&v232[8] = xmmword_265F1F670;
                  *(v185 + 16) = xmmword_265F1F670;
                  *(v185 + 32) = 0x726F74636576;
                  *(v185 + 40) = 0xE600000000000000;
                  *(v185 + 48) = v84;
                  *&v246 = v185;
                  v186 = v229;

                  specialized Array.append<A>(contentsOf:)(v175);
                  v187 = v246;
                  *v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
                  v188 = swift_allocObject();
                  *(v188 + 16) = *&v232[8];
                  *(v188 + 32) = v29;
                  v146 = v188 + 32;
                  *(v188 + 40) = 0xE300000000000000;
                  *(v188 + 48) = v186;
                  v189 = swift_allocObject();
                  v190 = v245;
                  *(v189 + 16) = v244;
                  *(v189 + 24) = v190;
                  *(v189 + 32) = v186;
                  swift_retain_n();
                  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(v187, v188, v189 | 0x2000000000000000, &v270);

                  swift_setDeallocating();
                  swift_arrayDestroy();
                  swift_deallocClassInstance();

                  v191 = *(&v270 + 1);
                  v390 = *(&v270 + 1);
                  v192 = v230;
                  if (!*(*(&v270 + 1) + 16))
                  {
                    goto LABEL_213;
                  }

                  v193 = *(*(&v270 + 1) + 40);
                  v194 = *(*(&v270 + 1) + 48);
                  v195 = *(*(&v270 + 1) + 56);
                  v196 = *(*(&v270 + 1) + 64);
                  v197 = *(*(&v270 + 1) + 72);
                  v198 = *(*(&v270 + 1) + 80);
                  v414[0] = *(*(&v270 + 1) + 32);
                  v414[1] = v193;
                  v414[2] = v194;
                  v414[3] = v195;
                  v414[4] = v196;
                  v415 = v197;
                  v416 = v198;

                  UserGraph.moveEdge(from:to:)(&v283, v414);

                  v389 = v271;
                  if (*(v271 + 16))
                  {
                    v199 = *(v271 + 40);
                    v200 = *(v271 + 48);
                    v201 = *(v271 + 56);
                    v202 = *(v271 + 64);
                    v203 = *(v271 + 72);
                    v204 = *(v271 + 80);
                    v411[0] = *(v271 + 32);
                    v411[1] = v199;
                    v411[2] = v200;
                    v411[3] = v201;
                    v411[4] = v202;
                    v412 = v203;
                    v413 = v204;

                    UserGraph.moveEdges(from:to:)(&v264, v411);

                    v205 = *(v191 + 16);
                    if (!v205)
                    {
                      goto LABEL_215;
                    }

                    v206 = *(v238 + 16);
                    outlined init with copy of [Input](&v390, &v246, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);

                    outlined init with copy of [Input](&v390, &v246, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                    v226 = v191;
                    v227 = v206;
                    if (!v206)
                    {
                      v208 = v424;
LABEL_202:
                      v424 = v208;

                      v310 = v288;
                      outlined destroy of String(&v310);
                      outlined destroy of SGDataTypeStorage(&v250);

                      outlined destroy of [Input](&v390, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                      v381 = v270;
                      outlined destroy of NodePersonality(&v381);
                      outlined destroy of [Input](&v390, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                      outlined destroy of [Input](&v389, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

                      v374 = v284;
                      outlined destroy of String(&v374);

                      v380 = v265;
                      outlined destroy of String(&v380);
                      outlined destroy of NodePersonality(&v314);
                      v351 = v233;
                      outlined destroy of [Input](&v351, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                      v352 = v192;
                      outlined destroy of [Input](&v352, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

                      v236(v235, v239);
                      swift_unknownObjectRelease();
                    }

                    v146 = 0;
                    v228 = (v205 - 1);
                    v207 = v191 + 104;
                    v208 = v424;
                    while (v146 < *(v238 + 16))
                    {
                      if (v228 == v146)
                      {
                        goto LABEL_202;
                      }

                      v209 = *(v238 + 8 * v146 + 32);
                      v210 = *v207;
                      v409[0] = *(v207 - 16);
                      v409[1] = v210;
                      v409[2] = *(v207 + 16);
                      v211 = v207;
                      v410 = *(v207 + 32);
                      v212 = *(&v409[0] + 1);
                      v423[0] = v210;

                      outlined init with copy of String(v423, &v246);
                      v213 = constantFunction(for:)(v209);
                      v424 = v214;
                      v237 = v212;
                      if (v214)
                      {
                        goto LABEL_205;
                      }

                      v234 = v146;
                      if (one-time initialization token for int32 != -1)
                      {
                        swift_once();
                      }

                      v215 = static MetalDataType.int32;
                      v216 = swift_allocObject();
                      *(v216 + 16) = *&v232[8];
                      *(v216 + 32) = 7632239;
                      *(v216 + 40) = 0xE300000000000000;
                      *(v216 + 48) = v215;
                      v217 = swift_allocObject();
                      *(v217 + 16) = v213;
                      *(v217 + 32) = v215;
                      swift_retain_n();
                      UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], v216, v217 | 0x2000000000000000, &v272);

                      swift_setDeallocating();
                      swift_arrayDestroy();
                      swift_deallocClassInstance();
                      v388 = v273[0];
                      specialized ShaderGraphNode.output(labeled:)(&v274, 7632239, 0xE300000000000000, v273[0]);
                      if (!v275)
                      {
                        v242 = 0;
                        v243 = 0xE000000000000000;
                        MEMORY[0x266771550](7632239, 0xE300000000000000);
                        MEMORY[0x266771550](32, 0xE100000000000000);
                        v246 = v272;
                        v247[0] = *v273;
                        *(v247 + 9) = *(&v273[1] + 1);
                        _print_unlocked<A, B>(_:_:)();
                        v218 = v242;
                        v219 = v243;
                        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
                        v220 = swift_allocError();
                        *v221 = 14;
                        *(v221 + 8) = v218;
                        *(v221 + 16) = v219;
                        v424 = v220;
                        swift_willThrow();
                        v387 = v272;
                        outlined destroy of NodePersonality(&v387);
                        v386 = *(&v272 + 1);
                        outlined destroy of [Input](&v386, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                        outlined destroy of [Input](&v388, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
LABEL_205:

                        v311 = v288;
                        outlined destroy of String(&v311);

                        outlined destroy of [Input](&v390, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                        v385 = v270;
                        outlined destroy of NodePersonality(&v385);
                        outlined destroy of [Input](&v390, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                        outlined destroy of [Input](&v389, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

                        v375 = v284;
                        outlined destroy of String(&v375);

                        v384 = v265;
                        outlined destroy of String(&v384);
                        outlined destroy of NodePersonality(&v314);
                        v353 = v233;
                        outlined destroy of [Input](&v353, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                        v354 = v230;
                        outlined destroy of [Input](&v354, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

                        outlined destroy of SGDataTypeStorage(&v250);

                        outlined destroy of String(v423);
                        v236(v235, v239);
                        swift_unknownObjectRelease();
                      }

                      v146 = (v234 + 1);
                      v279[0] = v274;
                      v279[1] = v275;
                      v280 = v276;
                      v281 = v277;
                      v282 = v278;
                      UserGraph.connect(_:to:)(v279, v409);

                      v378 = v280;
                      outlined destroy of String(&v378);
                      v383 = v272;
                      outlined destroy of NodePersonality(&v383);
                      v382 = *(&v272 + 1);
                      outlined destroy of [Input](&v382, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                      outlined destroy of [Input](&v388, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

                      outlined destroy of String(v423);
                      v207 = v211 + 56;
                      v192 = v230;
                      v208 = v424;
                      if (v227 == v146)
                      {
                        goto LABEL_202;
                      }
                    }

                    goto LABEL_212;
                  }

LABEL_214:
                  __break(1u);
LABEL_215:
                  __break(1u);
LABEL_216:
                  swift_once();
LABEL_169:
                  if (!v146)
                  {

                    outlined destroy of SGDataTypeStorage(&v250);

LABEL_208:

                    v242 = 0;
                    v243 = 0xE000000000000000;
                    v246 = v264;
                    v247[0] = v265;
                    v247[1] = v266;
                    *&v248 = v267;
                    _print_unlocked<A, B>(_:_:)();
                    MEMORY[0x266771550](32, 0xE100000000000000);
                    v246 = v417;
                    v247[0] = v418[0];
                    *(v247 + 9) = *(v418 + 9);
                    _print_unlocked<A, B>(_:_:)();
                    v222 = v242;
                    v223 = v243;
                    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
                    swift_allocError();
                    *v224 = 43;
                    *(v224 + 8) = v222;
                    *(v224 + 16) = v223;
                    swift_willThrow();

                    v309 = v288;
                    outlined destroy of String(&v309);

                    v373 = v284;
                    outlined destroy of String(&v373);

                    v392 = v265;
                    outlined destroy of String(&v392);
                    outlined destroy of NodePersonality(&v314);
                    v349 = v233;
                    outlined destroy of [Input](&v349, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                    v350 = v230;
                    v127 = &v350;
                    goto LABEL_209;
                  }

                  v171 = MetalDataType.isEqual(to:)(v146);

                  if ((v171 & 1) == 0)
                  {
                    outlined destroy of SGDataTypeStorage(&v250);

                    goto LABEL_208;
                  }

                  v167 = 0x34726F6C6F63;
                  v168 = 0xE600000000000000;
LABEL_172:
                  MEMORY[0x266771550](v167, v168);
                  v147 = 4;
LABEL_173:
                  v58 = v239;
                  v84 = v231;
                  v29 = 7632239;
                }

                v242 = MEMORY[0x277D84F90];

                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v146, 0);
                v174 = 0;
                v175 = v242;
                v237 = *(v173 + 16);
                v234 = v146;
                while (v237 != v174)
                {
                  *&v246 = 0x5F7865646E69;
                  *(&v246 + 1) = 0xE600000000000000;
                  v241 = v174;
                  v176 = dispatch thunk of CustomStringConvertible.description.getter();
                  MEMORY[0x266771550](v176);

                  v177 = v246;
                  if (one-time initialization token for int32 != -1)
                  {
                    swift_once();
                  }

                  v178 = static MetalDataType.int32;
                  v242 = v175;
                  v180 = *(v175 + 16);
                  v179 = *(v175 + 24);

                  if (v180 >= v179 >> 1)
                  {
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v179 > 1), v180 + 1, 1);
                    v175 = v242;
                  }

                  ++v174;
                  *(v175 + 16) = v180 + 1;
                  v181 = v175 + 24 * v180;
                  *(v181 + 32) = v177;
                  *(v181 + 48) = v178;
                  v146 = v234;
                  v29 = 7632239;
                  if (v234 == v174)
                  {

                    v84 = v231;
                    goto LABEL_188;
                  }
                }

                __break(1u);
LABEL_212:
                __break(1u);
LABEL_213:
                __break(1u);
                goto LABEL_214;
              }

LABEL_142:
              v157 = one-time initialization token for half;

              if (v157 == -1)
              {
                if (!v146)
                {
                  goto LABEL_147;
                }
              }

              else
              {
                swift_once();
                if (!v146)
                {
                  goto LABEL_147;
                }
              }

              v158 = MetalDataType.isEqual(to:)(v146);

              if (v158)
              {

                MEMORY[0x266771550](1718378856, 0xE400000000000000);
                v147 = 1;
                goto LABEL_173;
              }

LABEL_147:
              v159 = one-time initialization token for half2;

              if (v159 == -1)
              {
                if (!v146)
                {
                  goto LABEL_152;
                }
              }

              else
              {
                swift_once();
                if (!v146)
                {
                  goto LABEL_152;
                }
              }

              v160 = MetalDataType.isEqual(to:)(v146);

              if (v160)
              {

                MEMORY[0x266771550](0x32666C6168, 0xE500000000000000);
                v147 = 2;
                goto LABEL_173;
              }

LABEL_152:
              v161 = one-time initialization token for half3;

              if (v161 == -1)
              {
                if (!v146)
                {
                  goto LABEL_157;
                }
              }

              else
              {
                swift_once();
                if (!v146)
                {
                  goto LABEL_157;
                }
              }

              v162 = MetalDataType.isEqual(to:)(v146);

              if (v162)
              {

                v163 = 0x33666C6168;
                v164 = 0xE500000000000000;
LABEL_166:
                MEMORY[0x266771550](v163, v164);
                v147 = 3;
                goto LABEL_173;
              }

LABEL_157:
              v165 = one-time initialization token for half4;

              if (v165 == -1)
              {
                if (!v146)
                {
                  goto LABEL_162;
                }
              }

              else
              {
                swift_once();
                if (!v146)
                {
                  goto LABEL_162;
                }
              }

              v166 = MetalDataType.isEqual(to:)(v146);

              if (v166)
              {

                v167 = 0x34666C6168;
                v168 = 0xE500000000000000;
                goto LABEL_172;
              }

LABEL_162:
              v169 = one-time initialization token for color3;

              if (v169 == -1)
              {
                if (!v146)
                {
                  goto LABEL_168;
                }
              }

              else
              {
                swift_once();
                if (!v146)
                {
                  goto LABEL_168;
                }
              }

              v170 = MetalDataType.isEqual(to:)(v146);

              if (v170)
              {

                v163 = 0x33726F6C6F63;
                v164 = 0xE600000000000000;
                goto LABEL_166;
              }

LABEL_168:
              if (one-time initialization token for color4 != -1)
              {
                goto LABEL_216;
              }

              goto LABEL_169;
            }

            outlined destroy of SGDataTypeStorage(&v250);
          }

          else
          {

            outlined destroy of SGDataTypeStorage(&v250);
          }

          v242 = 0;
          v243 = 0xE000000000000000;
          v246 = v283;
          v247[0] = v284;
          v247[1] = v285;
          *&v248 = v286;
          _print_unlocked<A, B>(_:_:)();
          MEMORY[0x266771550](32, 0xE100000000000000);
          v246 = v417;
          v247[0] = v418[0];
          *(v247 + 9) = *(v418 + 9);
          _print_unlocked<A, B>(_:_:)();
          v150 = v242;
          v151 = v243;
          lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
          swift_allocError();
          *v152 = 42;
          *(v152 + 8) = v150;
          *(v152 + 16) = v151;
          swift_willThrow();

          v308 = v288;
          outlined destroy of String(&v308);

          v372 = v284;
          outlined destroy of String(&v372);

          v403 = v265;
          outlined destroy of String(&v403);
          outlined destroy of NodePersonality(&v314);
          v347 = v233;
          outlined destroy of [Input](&v347, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v348 = v230;
          outlined destroy of [Input](&v348, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
LABEL_210:

          outlined destroy of SGDataTypeStorage(&v250);
          return v236(v235, v239);
        }

LABEL_50:
        swift_once();
        if (!v69)
        {
          goto LABEL_51;
        }

        goto LABEL_41;
      }
    }

    swift_once();
    goto LABEL_33;
  }

  return result;
}

double UserGraph.constantIntegerNode(for:)@<D0>(Swift::Int a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = constantFunction(for:)(a1);
  if (!v5)
  {
    if (one-time initialization token for int32 != -1)
    {
      swift_once();
    }

    v6 = static MetalDataType.int32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_265F1F670;
    *(inited + 32) = 7632239;
    *(inited + 40) = 0xE300000000000000;
    *(inited + 48) = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 32) = v6;
    swift_retain_n();
    UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], inited, v8 | 0x2000000000000000, &v10);

    swift_setDeallocating();
    swift_arrayDestroy();
    v9 = v11[0];
    *a2 = v10;
    a2[1] = v9;
    result = *(v11 + 9);
    *(a2 + 25) = *(v11 + 9);
  }

  return result;
}

uint64_t closure #1 in UserGraph.resolveEnvironmentRadianceNode()(uint64_t result, uint64_t a2)
{
  v3 = *result;
  if (*result >> 61 == 5)
  {
    v63 = v2;
    v6 = *(result + 8);
    v5 = *(result + 16);
    v7 = *(result + 24);
    v8 = *(result + 32);
    v9 = *(result + 40);
    v10 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == 0xD000000000000022 && 0x8000000265F31100 == *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    if (v10 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
    {
      v269 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMR);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_265F24130;
      if (one-time initialization token for surface_parameters_private != -1)
      {
        swift_once();
      }

      v64 = v5;
      v12 = static MetalDataType.re.surface_parameters_private;
      *(v11 + 32) = 0x736D61726170;
      *(v11 + 40) = 0xE600000000000000;
      *(v11 + 48) = v12;
      v13 = one-time initialization token for color3;
      v58 = v12;

      if (v13 != -1)
      {
        swift_once();
      }

      v14 = static MetalDataType.color3;
      *(v11 + 56) = 0x6F6C6F4365736162;
      *(v11 + 64) = 0xE900000000000072;
      *(v11 + 72) = v14;
      v15 = one-time initialization token for half;

      if (v15 != -1)
      {
        swift_once();
      }

      v16 = static MetalDataType.half;
      *(v11 + 80) = 0x73656E6867756F72;
      *(v11 + 88) = 0xE900000000000073;
      *(v11 + 96) = v16;
      *(v11 + 104) = 0x72616C7563657073;
      *(v11 + 112) = 0xE800000000000000;
      *(v11 + 120) = v16;
      *(v11 + 128) = 0x63696C6C6174656DLL;
      *(v11 + 136) = 0xE800000000000000;
      *(v11 + 144) = v16;
      v17 = one-time initialization token for float3;
      swift_retain_n();
      if (v17 != -1)
      {
        swift_once();
      }

      v59 = v8;
      v60 = v3;
      v61 = v7;
      v62 = v6;
      v18 = static MetalDataType.float3;
      *(v11 + 152) = 0x6C616D726F6ELL;
      *(v11 + 160) = 0xE600000000000000;
      *(v11 + 168) = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_265F1F670;
      v20 = one-time initialization token for EnvironmentRadianceResult;

      if (v20 != -1)
      {
        swift_once();
      }

      v21 = static MetalDataType.re.EnvironmentRadianceResult;
      *(v19 + 32) = 7632239;
      *(v19 + 40) = 0xE300000000000000;
      *(v19 + 48) = v21;
      v22 = swift_allocObject();
      *(v22 + 16) = 0xD00000000000002ALL;
      *(v22 + 24) = 0x8000000265F31130;
      *(v22 + 32) = v21;
      swift_retain_n();
      UserGraph.insertNode(inputs:outputs:shaderGraphData:)(v11, v19, v22 | 0x2000000000000000, &v68);

      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_265F1F670;
      *(v23 + 32) = 28265;
      *(v23 + 40) = 0xE200000000000000;
      *(v23 + 48) = v21;
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_265F1F670;
      if (one-time initialization token for half3 != -1)
      {
        v57 = v24;
        swift_once();
        v24 = v57;
      }

      v25 = static MetalDataType.half3;
      *(v24 + 32) = 7632239;
      *(v24 + 40) = 0xE300000000000000;
      *(v24 + 48) = v25;
      v26 = v24;
      v27 = swift_allocObject();
      *(v27 + 16) = 0xD000000000000029;
      *(v27 + 24) = 0x8000000265F31160;
      *(v27 + 32) = v25;
      swift_retain_n();
      UserGraph.insertNode(inputs:outputs:shaderGraphData:)(v23, v26, v27 | 0x2000000000000000, &v70);

      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_265F1F670;
      *(v28 + 32) = 28265;
      *(v28 + 40) = 0xE200000000000000;
      *(v28 + 48) = v21;
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_265F1F670;
      *(v29 + 32) = 7632239;
      *(v29 + 40) = 0xE300000000000000;
      *(v29 + 48) = v25;
      v30 = swift_allocObject();
      *(v30 + 16) = 0xD00000000000002ALL;
      *(v30 + 24) = 0x8000000265F31190;
      *(v30 + 32) = v25;
      UserGraph.insertNode(inputs:outputs:shaderGraphData:)(v28, v29, v30 | 0x2000000000000000, &v72);

      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      specialized ShaderGraphNode.output(labeled:)(&v74, 0x5265737566666964, 0xEF65636E61696461, v64);
      if (v75)
      {
        v153[0] = v74;
        v153[1] = v75;
        v154 = v76;
        v155 = v77;
        v156 = v78;
        specialized ShaderGraphNode.output(labeled:)(&v79, 0xD000000000000010, 0x8000000265F311E0, v64);
        if (v80)
        {
          v149[0] = v79;
          v149[1] = v80;
          v150 = v81;
          v151 = v82;
          v152 = v83;
          v250 = v71[0];
          specialized ShaderGraphNode.output(labeled:)(&v84, 7632239, 0xE300000000000000, v71[0]);
          if (v85)
          {
            v145[0] = v84;
            v145[1] = v85;
            v146 = v86;
            v147 = v87;
            v148 = v88;
            UserGraph.moveEdges(from:to:)(v153, v145);

            v176 = v146;
            outlined destroy of String(&v176);
            v241 = v73[0];
            specialized ShaderGraphNode.output(labeled:)(&v89, 7632239, 0xE300000000000000, v73[0]);
            if (v90)
            {
              v141[0] = v89;
              v141[1] = v90;
              v142 = v91;
              v143 = v92;
              v144 = v93;
              UserGraph.moveEdges(from:to:)(v149, v141);

              v177 = v142;
              outlined destroy of String(&v177);
              v232 = *(&v68 + 1);
              v233 = v68;
              v231 = *&v69[0];
              outlined init with copy of NodePersonality(&v233, &v65);
              outlined init with copy of [Input](&v232, &v65, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
              outlined init with copy of [Input](&v231, &v65, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
              specialized Sequence.forEach(_:)(v62, &v68);
              if (v63)
              {
                outlined destroy of NodePersonality(&v233);
                outlined destroy of [Input](&v232, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                outlined destroy of [Input](&v231, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
                v230 = v72;
                outlined destroy of NodePersonality(&v230);
                v229 = *(&v72 + 1);
                outlined destroy of [Input](&v229, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                outlined destroy of [Input](&v241, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
                v228 = v70;
                outlined destroy of NodePersonality(&v228);
                v227 = *(&v70 + 1);
                outlined destroy of [Input](&v227, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                outlined destroy of [Input](&v250, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

                v166 = v154;
                outlined destroy of String(&v166);
                outlined destroy of NodePersonality(&v233);
                outlined destroy of [Input](&v232, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                outlined destroy of [Input](&v231, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

                v175 = v150;
                return outlined destroy of String(&v175);
              }

              outlined destroy of NodePersonality(&v233);
              outlined destroy of [Input](&v232, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
              outlined destroy of [Input](&v231, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
              v40 = swift_allocObject();
              *(v40 + 16) = xmmword_265F1F670;
              *(v40 + 32) = 7632239;
              *(v40 + 40) = 0xE300000000000000;
              *(v40 + 48) = v58;
              v41 = swift_allocObject();
              *(v41 + 16) = 12324;
              *(v41 + 24) = 0xE200000000000000;

              UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], v40, v41 | 0x6000000000000000, &v94);

              swift_setDeallocating();
              swift_arrayDestroy();
              swift_deallocClassInstance();
              v226 = v95[0];
              specialized ShaderGraphNode.output(labeled:)(&v96, 7632239, 0xE300000000000000, v95[0]);
              if (v97)
              {
                v137[0] = v96;
                v137[1] = v97;
                v138 = v98;
                v139 = v99;
                v140 = v100;
                specialized ShaderGraphNode.output(labeled:)(&v101, 0x736D61726170, 0xE600000000000000, v232);
                if (v102)
                {
                  v133[0] = v101;
                  v133[1] = v102;
                  v134 = v103;
                  v135 = v104;
                  v136 = v105;
                  v42 = v231;
                  v43 = v269;
                  UserGraph.connect(_:to:)(v137, v133);
                  specialized ShaderGraphNode.output(labeled:)(&v106, 7632239, 0xE300000000000000, v42);
                  if (v107)
                  {
                    v129[0] = v106;
                    v129[1] = v107;
                    v130 = v108;
                    v131 = v109;
                    v132 = v110;
                    v207 = *(&v70 + 1);
                    specialized ShaderGraphNode.output(labeled:)(&v111, 28265, 0xE200000000000000, *(&v70 + 1));
                    if (v112)
                    {
                      v125[0] = v111;
                      v125[1] = v112;
                      v126 = v113;
                      v127 = v114;
                      v128 = v115;
                      v201 = *(&v72 + 1);
                      specialized ShaderGraphNode.output(labeled:)(&v116, 28265, 0xE200000000000000, *(&v72 + 1));
                      if (v117)
                      {
                        v121[0] = v116;
                        v121[1] = v117;
                        v122 = v118;
                        v123 = v119;
                        v124 = v120;
                        UserGraph.connect(_:to:)(v129, v125);
                        UserGraph.connect(_:to:)(v129, v121);
                        specialized UserGraph.removeEdges(connectedTo:)(v61);
                        v44 = *(v43 + 64);
                        result = swift_isUniquelyReferenced_nonNull_native();
                        *(v43 + 64) = v44;
                        if (result)
                        {
                          if ((v61 & 0x8000000000000000) == 0)
                          {
                            goto LABEL_37;
                          }
                        }

                        else
                        {
                          result = specialized _ArrayBuffer._consumeAndCreateNew()(v44);
                          v44 = result;
                          *(v43 + 64) = result;
                          if ((v61 & 0x8000000000000000) == 0)
                          {
LABEL_37:
                            if (v61 < *(v44 + 16))
                            {
                              ShaderGraphNode.update(id:)(-7);
                              v196 = v72;
                              outlined destroy of NodePersonality(&v196);
                              outlined destroy of [Input](&v201, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                              outlined destroy of [Input](&v241, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
                              v195 = v70;
                              outlined destroy of NodePersonality(&v195);
                              outlined destroy of [Input](&v207, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                              outlined destroy of [Input](&v250, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
                              outlined destroy of NodePersonality(&v233);
                              outlined destroy of [Input](&v232, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                              outlined destroy of [Input](&v231, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

                              v165 = v154;
                              outlined destroy of String(&v165);

                              v174 = v150;
                              outlined destroy of String(&v174);

                              v178 = v138;
                              outlined destroy of String(&v178);

                              v186 = v134;
                              outlined destroy of String(&v186);

                              v187 = v130;
                              outlined destroy of String(&v187);

                              v191 = v126;
                              outlined destroy of String(&v191);

                              v192 = v122;
                              outlined destroy of String(&v192);
                              v194 = v94;
                              outlined destroy of NodePersonality(&v194);
                              v193 = *(&v94 + 1);
                              outlined destroy of [Input](&v193, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                              return outlined destroy of [Input](&v226, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
                            }

                            goto LABEL_50;
                          }
                        }

                        __break(1u);
LABEL_50:
                        __break(1u);
                        return result;
                      }

                      *&v67 = 0;
                      *(&v67 + 1) = 0xE000000000000000;
                      MEMORY[0x266771550](2125417, 0xE300000000000000);
                      v65 = v72;
                      *v66 = *v73;
                      *&v66[9] = *(&v73[1] + 1);
                      _print_unlocked<A, B>(_:_:)();
                      v55 = v67;
                      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
                      swift_allocError();
                      *v56 = 11;
                      *(v56 + 8) = v55;
                      swift_willThrow();

                      v190 = v126;
                      outlined destroy of String(&v190);

                      v188 = v130;
                      outlined destroy of String(&v188);

                      v185 = v134;
                      outlined destroy of String(&v185);

                      v179 = v138;
                      outlined destroy of String(&v179);
                      v200 = v94;
                      outlined destroy of NodePersonality(&v200);
                      v199 = *(&v94 + 1);
                      outlined destroy of [Input](&v199, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                      outlined destroy of [Input](&v226, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

                      v173 = v150;
                      outlined destroy of String(&v173);

                      v164 = v154;
                      outlined destroy of String(&v164);
                      v198 = v72;
                      outlined destroy of NodePersonality(&v198);
                      outlined destroy of [Input](&v201, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                      outlined destroy of [Input](&v241, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
                      v197 = v70;
                      v54 = &v197;
                    }

                    else
                    {
                      *&v67 = 0;
                      *(&v67 + 1) = 0xE000000000000000;
                      MEMORY[0x266771550](2125417, 0xE300000000000000);
                      v65 = v70;
                      *v66 = *v71;
                      *&v66[9] = *(&v71[1] + 1);
                      _print_unlocked<A, B>(_:_:)();
                      v52 = v67;
                      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
                      swift_allocError();
                      *v53 = 11;
                      *(v53 + 8) = v52;
                      swift_willThrow();

                      v189 = v130;
                      outlined destroy of String(&v189);

                      v184 = v134;
                      outlined destroy of String(&v184);

                      v180 = v138;
                      outlined destroy of String(&v180);
                      v206 = v94;
                      outlined destroy of NodePersonality(&v206);
                      v205 = *(&v94 + 1);
                      outlined destroy of [Input](&v205, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                      outlined destroy of [Input](&v226, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

                      v172 = v150;
                      outlined destroy of String(&v172);

                      v163 = v154;
                      outlined destroy of String(&v163);
                      v204 = v72;
                      outlined destroy of NodePersonality(&v204);
                      v203 = *(&v72 + 1);
                      outlined destroy of [Input](&v203, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                      outlined destroy of [Input](&v241, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
                      v202 = v70;
                      v54 = &v202;
                    }

                    outlined destroy of NodePersonality(v54);
                    v47 = &v207;
                  }

                  else
                  {
                    *&v67 = 0;
                    *(&v67 + 1) = 0xE000000000000000;
                    MEMORY[0x266771550](7632239, 0xE300000000000000);
                    MEMORY[0x266771550](32, 0xE100000000000000);
                    v65 = v68;
                    *v66 = v69[0];
                    *&v66[9] = *(v69 + 9);
                    _print_unlocked<A, B>(_:_:)();
                    v50 = v67;
                    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
                    swift_allocError();
                    *v51 = 14;
                    *(v51 + 8) = v50;
                    swift_willThrow();

                    v183 = v134;
                    outlined destroy of String(&v183);

                    v181 = v138;
                    outlined destroy of String(&v181);
                    v213 = v94;
                    outlined destroy of NodePersonality(&v213);
                    v212 = *(&v94 + 1);
                    outlined destroy of [Input](&v212, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                    outlined destroy of [Input](&v226, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

                    v171 = v150;
                    outlined destroy of String(&v171);

                    v162 = v154;
                    outlined destroy of String(&v162);
                    v211 = v72;
                    outlined destroy of NodePersonality(&v211);
                    v210 = *(&v72 + 1);
                    outlined destroy of [Input](&v210, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                    outlined destroy of [Input](&v241, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
                    v209 = v70;
                    outlined destroy of NodePersonality(&v209);
                    v208 = *(&v70 + 1);
                    v47 = &v208;
                  }
                }

                else
                {
                  *&v67 = 0;
                  *(&v67 + 1) = 0xE000000000000000;
                  MEMORY[0x266771550](0x20736D61726170, 0xE700000000000000);
                  v65 = v68;
                  *v66 = v69[0];
                  *&v66[9] = *(v69 + 9);
                  _print_unlocked<A, B>(_:_:)();
                  v48 = v67;
                  lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
                  swift_allocError();
                  *v49 = 11;
                  *(v49 + 8) = v48;
                  swift_willThrow();

                  v182 = v138;
                  outlined destroy of String(&v182);
                  v219 = v94;
                  outlined destroy of NodePersonality(&v219);
                  v218 = *(&v94 + 1);
                  outlined destroy of [Input](&v218, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                  outlined destroy of [Input](&v226, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

                  v170 = v150;
                  outlined destroy of String(&v170);

                  v161 = v154;
                  outlined destroy of String(&v161);
                  v217 = v72;
                  outlined destroy of NodePersonality(&v217);
                  v216 = *(&v72 + 1);
                  outlined destroy of [Input](&v216, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                  outlined destroy of [Input](&v241, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
                  v215 = v70;
                  outlined destroy of NodePersonality(&v215);
                  v214 = *(&v70 + 1);
                  v47 = &v214;
                }
              }

              else
              {
                *&v67 = 0;
                *(&v67 + 1) = 0xE000000000000000;
                MEMORY[0x266771550](7632239, 0xE300000000000000);
                MEMORY[0x266771550](32, 0xE100000000000000);
                v65 = v94;
                *v66 = *v95;
                *&v66[9] = *(&v95[1] + 1);
                _print_unlocked<A, B>(_:_:)();

                *&v67 = 0;
                *(&v67 + 1) = 0xE000000000000000;
                MEMORY[0x266771550](544503151, 0xE400000000000000);
                v65 = v94;
                *v66 = *v95;
                *&v66[9] = *(&v95[1] + 1);
                _print_unlocked<A, B>(_:_:)();
                v45 = v67;
                lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
                swift_allocError();
                *v46 = 14;
                *(v46 + 8) = v45;
                swift_willThrow();
                v225 = v94;
                outlined destroy of NodePersonality(&v225);
                v224 = *(&v94 + 1);
                outlined destroy of [Input](&v224, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                outlined destroy of [Input](&v226, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

                v169 = v150;
                outlined destroy of String(&v169);

                v160 = v154;
                outlined destroy of String(&v160);
                v223 = v72;
                outlined destroy of NodePersonality(&v223);
                v222 = *(&v72 + 1);
                outlined destroy of [Input](&v222, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                outlined destroy of [Input](&v241, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
                v221 = v70;
                outlined destroy of NodePersonality(&v221);
                v220 = *(&v70 + 1);
                v47 = &v220;
              }

              outlined destroy of [Input](v47, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
              outlined destroy of [Input](&v250, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
              outlined destroy of NodePersonality(&v233);
              outlined destroy of [Input](&v232, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
              v33 = &v231;
            }

            else
            {
              *&v67 = 0;
              *(&v67 + 1) = 0xE000000000000000;
              MEMORY[0x266771550](7632239, 0xE300000000000000);
              MEMORY[0x266771550](32, 0xE100000000000000);
              v65 = v72;
              *v66 = *v73;
              *&v66[9] = *(&v73[1] + 1);
              _print_unlocked<A, B>(_:_:)();
              v38 = v67;
              lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
              swift_allocError();
              *v39 = 14;
              *(v39 + 8) = v38;
              swift_willThrow();

              v168 = v150;
              outlined destroy of String(&v168);

              v159 = v154;
              outlined destroy of String(&v159);
              v240 = v72;
              outlined destroy of NodePersonality(&v240);
              v239 = *(&v72 + 1);
              outlined destroy of [Input](&v239, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
              outlined destroy of [Input](&v241, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
              v238 = v70;
              outlined destroy of NodePersonality(&v238);
              v237 = *(&v70 + 1);
              outlined destroy of [Input](&v237, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
              outlined destroy of [Input](&v250, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
              v236 = v68;
              outlined destroy of NodePersonality(&v236);
              v235 = *(&v68 + 1);
              outlined destroy of [Input](&v235, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
              v234 = *&v69[0];
              v33 = &v234;
            }
          }

          else
          {
            *&v67 = 0;
            *(&v67 + 1) = 0xE000000000000000;
            MEMORY[0x266771550](7632239, 0xE300000000000000);
            MEMORY[0x266771550](32, 0xE100000000000000);
            v65 = v70;
            *v66 = *v71;
            *&v66[9] = *(&v71[1] + 1);
            _print_unlocked<A, B>(_:_:)();
            v36 = v67;
            lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
            swift_allocError();
            *v37 = 14;
            *(v37 + 8) = v36;
            swift_willThrow();

            v167 = v150;
            outlined destroy of String(&v167);

            v158 = v154;
            outlined destroy of String(&v158);
            v249 = v72;
            outlined destroy of NodePersonality(&v249);
            v248 = *(&v72 + 1);
            outlined destroy of [Input](&v248, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v247 = v73[0];
            outlined destroy of [Input](&v247, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
            v246 = v70;
            outlined destroy of NodePersonality(&v246);
            v245 = *(&v70 + 1);
            outlined destroy of [Input](&v245, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            outlined destroy of [Input](&v250, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
            v244 = v68;
            outlined destroy of NodePersonality(&v244);
            v243 = *(&v68 + 1);
            outlined destroy of [Input](&v243, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v242 = *&v69[0];
            v33 = &v242;
          }
        }

        else
        {
          *&v65 = 0;
          *(&v65 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(19);
          v67 = v65;
          MEMORY[0x266771550](0xD000000000000011, 0x8000000265F31200);
          *&v65 = v60;
          *(&v65 + 1) = v62;
          *v66 = v64;
          *&v66[8] = v61;
          *&v66[16] = v59;
          v66[24] = v9;
          _print_unlocked<A, B>(_:_:)();
          v34 = v67;
          lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
          swift_allocError();
          *v35 = 14;
          *(v35 + 8) = v34;
          swift_willThrow();

          v157 = v154;
          outlined destroy of String(&v157);
          v259 = v72;
          outlined destroy of NodePersonality(&v259);
          v258 = *(&v72 + 1);
          outlined destroy of [Input](&v258, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v257 = v73[0];
          outlined destroy of [Input](&v257, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          v256 = v70;
          outlined destroy of NodePersonality(&v256);
          v255 = *(&v70 + 1);
          outlined destroy of [Input](&v255, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v254 = v71[0];
          outlined destroy of [Input](&v254, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          v253 = v68;
          outlined destroy of NodePersonality(&v253);
          v252 = *(&v68 + 1);
          outlined destroy of [Input](&v252, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v251 = *&v69[0];
          v33 = &v251;
        }
      }

      else
      {
        *&v65 = 0;
        *(&v65 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(18);
        v67 = v65;
        MEMORY[0x266771550](0xD000000000000010, 0x8000000265F311C0);
        *&v65 = v60;
        *(&v65 + 1) = v62;
        *v66 = v64;
        *&v66[8] = v61;
        *&v66[16] = v59;
        v66[24] = v9;
        _print_unlocked<A, B>(_:_:)();
        v31 = v67;
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v32 = 14;
        *(v32 + 8) = v31;
        swift_willThrow();
        v268[0] = v72;
        outlined destroy of NodePersonality(v268);
        v267 = *(&v72 + 1);
        outlined destroy of [Input](&v267, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v266 = v73[0];
        outlined destroy of [Input](&v266, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        v265 = v70;
        outlined destroy of NodePersonality(&v265);
        v264 = *(&v70 + 1);
        outlined destroy of [Input](&v264, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v263 = v71[0];
        outlined destroy of [Input](&v263, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        v262 = v68;
        outlined destroy of NodePersonality(&v262);
        v261 = *(&v68 + 1);
        outlined destroy of [Input](&v261, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v260 = *&v69[0];
        v33 = &v260;
      }

      return outlined destroy of [Input](v33, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    }
  }

  return result;
}

uint64_t swizzleFunction #1 (for:) in UserGraph.replaceMultiOutputNodes()(uint64_t a1)
{
  if (one-time initialization token for float2 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(a1))
  {
    return 0xD000000000000024;
  }

  if (one-time initialization token for float3 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(a1))
  {
    return 0xD000000000000024;
  }

  if (one-time initialization token for float4 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(a1))
  {
    return 0xD000000000000024;
  }

  _StringGuts.grow(_:)(43);

  v4 = (*(*a1 + 136))(v3);
  MEMORY[0x266771550](v4);

  lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
  swift_allocError();
  *v5 = 44;
  *(v5 + 8) = 0xD000000000000029;
  *(v5 + 16) = 0x8000000265F314E0;
  return swift_willThrow();
}

uint64_t closure #1 in UserGraph.replaceMultiOutputNodes()(uint64_t result, uint64_t a2)
{
  v3 = v2;
  if (*result >> 61 == 5)
  {
    v5 = *(result + 8);
    v6 = *(result + 16);
    v7 = *((*result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v8 = *((*result & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v9 = v7 == 0xD000000000000014 && 0x8000000265F31440 == v8;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      if (one-time initialization token for float2 != -1)
      {
        goto LABEL_58;
      }

      while (1)
      {
        v10 = &static MetalDataType.float2;
LABEL_22:
        v13 = *v10;
        v14 = swift_retain_n();
        v15 = swizzleFunction #1 (for:) in UserGraph.replaceMultiOutputNodes()(v14);
        v17 = v16;

        if (v3)
        {
        }

        if (!v5[2])
        {
          goto LABEL_42;
        }

        v65 = v15;
        v18 = v5[5];
        v19 = v5[6];
        v20 = v5[7];
        v21 = v5[8];
        v22 = *(v5 + 72);
        v23 = v5[10];
        v112[0] = v5[4];
        v112[1] = v18;
        v112[2] = v19;
        v112[3] = v20;
        v112[4] = v21;
        v113 = v22;
        v114 = v23;
        v24 = *(a2 + 144);
        v115[8] = *(a2 + 128);
        v116[0] = v24;
        *(v116 + 9) = *(a2 + 153);
        v25 = *(a2 + 80);
        v115[4] = *(a2 + 64);
        v115[5] = v25;
        v26 = *(a2 + 96);
        v115[7] = *(a2 + 112);
        v115[6] = v26;
        v27 = *(a2 + 32);
        v115[3] = *(a2 + 48);
        v115[2] = v27;
        v28 = *a2;
        v115[1] = *(a2 + 16);
        v115[0] = v28;

        outlined init with copy of UserGraph(v115, &v67);
        UserGraph.edge(to:)(v112, v69);
        outlined destroy of UserGraph(v115);
        if (!*(&v69[0] + 1))
        {
        }

        v66 = v17;
        v83 = v69[0];
        v86 = v69[3];
        v87 = v69[4];
        v88 = v69[5];
        v89 = v69[6];
        v84 = v69[1];
        v85 = v69[2];
        UserGraph.remove(_:)(&v83);
        v64 = *(v6 + 16);
        if (!v64)
        {
LABEL_40:

          outlined destroy of [Input](v69, &_s11ShaderGraph4EdgeVSgMd, &_s11ShaderGraph4EdgeVSgMR);
LABEL_42:
        }

        v29 = 0;
        v5 = (v6 + 80);
        v62 = v13;
        v63 = v6;
        while (v29 < *(v6 + 16))
        {
          v30 = *v5;
          v31 = *(v5 - 8);
          v33 = *(v5 - 3);
          v32 = *(v5 - 2);
          v35 = *(v5 - 5);
          v34 = *(v5 - 4);
          v100[0] = *(v5 - 6);
          v100[1] = v35;
          v100[2] = v34;
          v100[3] = v33;
          v100[4] = v32;
          v101 = v31;
          v102 = v30;

          UserGraph.constantIntegerNode(for:)(v29, &v70);
          v117 = v71[0];
          specialized ShaderGraphNode.output(labeled:)(&v72, 7632239, 0xE300000000000000, v71[0]);
          if (!v73)
          {
            MEMORY[0x266771550](7632239, 0xE300000000000000);
            MEMORY[0x266771550](32, 0xE100000000000000);
            v67 = v70;
            v68[0] = *v71;
            *(v68 + 9) = *(&v71[1] + 1);
            _print_unlocked<A, B>(_:_:)();
            lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
            swift_allocError();
            *v61 = 14;
            *(v61 + 8) = 0;
            *(v61 + 16) = 0xE000000000000000;
            swift_willThrow();
            v99 = v70;
            outlined destroy of NodePersonality(&v99);
            v98 = *(&v70 + 1);
            outlined destroy of [Input](&v98, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            outlined destroy of [Input](&v117, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

            outlined destroy of [Input](v69, &_s11ShaderGraph4EdgeVSgMd, &_s11ShaderGraph4EdgeVSgMR);

            goto LABEL_42;
          }

          v79[0] = v72;
          v79[1] = v73;
          v80 = v74;
          v81 = v75;
          v82 = v76;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMR);
          v36 = swift_allocObject();
          *(v36 + 16) = xmmword_265F21D90;
          *(v36 + 32) = 28265;
          *(v36 + 40) = 0xE200000000000000;
          *(v36 + 48) = v13;
          v37 = one-time initialization token for int32;

          if (v37 != -1)
          {
            swift_once();
          }

          v38 = a2;
          v39 = static MetalDataType.int32;
          *(v36 + 56) = 0x7865646E69;
          *(v36 + 64) = 0xE500000000000000;
          *(v36 + 72) = v39;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
          v40 = swift_allocObject();
          *(v40 + 16) = xmmword_265F1F670;
          v41 = one-time initialization token for float;

          if (v41 != -1)
          {
            swift_once();
          }

          v42 = static MetalDataType.float;
          *(v40 + 32) = 7632239;
          *(v40 + 40) = 0xE300000000000000;
          *(v40 + 48) = v42;
          a2 = swift_allocObject();
          *(a2 + 16) = v65;
          *(a2 + 24) = v66;
          *(a2 + 32) = v42;
          swift_retain_n();

          UserGraph.insertNode(inputs:outputs:shaderGraphData:)(v36, v40, a2 | 0x2000000000000000, &v77);

          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v90[0] = v83;
          v90[1] = v84;
          v90[2] = v85;
          v91 = v86;
          v6 = *(&v77 + 1);
          v97 = *(&v77 + 1);
          if (!*(*(&v77 + 1) + 16))
          {
            goto LABEL_55;
          }

          v43 = *(*(&v77 + 1) + 40);
          v44 = *(*(&v77 + 1) + 48);
          v45 = *(*(&v77 + 1) + 56);
          v46 = *(*(&v77 + 1) + 64);
          v47 = *(*(&v77 + 1) + 72);
          v48 = *(*(&v77 + 1) + 80);
          v109[0] = *(*(&v77 + 1) + 32);
          v109[1] = v43;
          v109[2] = v44;
          v109[3] = v45;
          v109[4] = v46;
          v110 = v47;
          v111 = v48;

          UserGraph.connect(_:to:)(v90, v109);

          if (*(v6 + 16) < 2uLL)
          {
            goto LABEL_56;
          }

          a2 = v38;
          v49 = *(v6 + 96);
          v50 = *(v6 + 104);
          v51 = *(v6 + 112);
          v52 = *(v6 + 120);
          v53 = *(v6 + 128);
          v54 = *(v6 + 136);
          v106[0] = *(v6 + 88);
          v106[1] = v49;
          v106[2] = v50;
          v106[3] = v51;
          v106[4] = v52;
          v107 = v53;
          v108 = v54;

          UserGraph.connect(_:to:)(v79, v106);

          v96 = v78;
          if (!*(v78 + 16))
          {
            goto LABEL_57;
          }

          v55 = *(v78 + 40);
          v56 = *(v78 + 48);
          v57 = *(v78 + 56);
          v58 = *(v78 + 64);
          v59 = *(v78 + 72);
          v60 = *(v78 + 80);
          v103[0] = *(v78 + 32);
          v103[1] = v55;
          v103[2] = v56;
          v103[3] = v57;
          v103[4] = v58;
          v104 = v59;
          v105 = v60;

          UserGraph.moveEdges(from:to:)(v100, v103);

          v92 = v80;
          outlined destroy of String(&v92);
          v95 = v70;
          outlined destroy of NodePersonality(&v95);
          v94 = *(&v70 + 1);
          outlined destroy of [Input](&v94, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          outlined destroy of [Input](&v117, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          v93 = v77;
          outlined destroy of NodePersonality(&v93);
          outlined destroy of [Input](&v97, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          ++v29;
          outlined destroy of [Input](&v96, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

          v5 += 7;
          v13 = v62;
          v6 = v63;
          if (v64 == v29)
          {
            goto LABEL_40;
          }
        }

        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        swift_once();
      }
    }

    else
    {
      v11 = v7 == 0xD000000000000013 && 0x8000000265F31460 == v8;
      if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v7 == 0xD000000000000014 ? (v12 = 0x8000000265F31480 == v8) : (v12 = 0), v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        if (one-time initialization token for float3 != -1)
        {
          swift_once();
        }

        v10 = &static MetalDataType.float3;
        goto LABEL_22;
      }

      if (v7 == 0xD000000000000013 && 0x8000000265F314A0 == v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v7 == 0xD000000000000014 && 0x8000000265F314C0 == v8 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {
        if (one-time initialization token for float4 != -1)
        {
          swift_once();
        }

        v10 = &static MetalDataType.float4;
        goto LABEL_22;
      }
    }
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> constantFunction(for:)(Swift::Int a1)
{
  v2 = 0xD000000000000025;
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v3 = "ND_appleinternal_constant_one_integer";
LABEL_11:
        v4 = (v3 - 32);
        goto LABEL_12;
      }

      goto LABEL_8;
    }

    v4 = "_constant_one_integer";
    v2 = 0xD000000000000026;
LABEL_12:
    v9 = (v4 | 0x8000000000000000);
    goto LABEL_13;
  }

  if (a1 == 2)
  {
    v3 = "ND_appleinternal_constant_two_integer";
    goto LABEL_11;
  }

  if (a1 == 3)
  {
    v4 = " not a built in constant";
    v2 = 0xD000000000000027;
    goto LABEL_12;
  }

LABEL_8:
  _StringGuts.grow(_:)(26);
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  v7 = v6;

  MEMORY[0x266771550](0xD000000000000018, 0x8000000265F30CF0);
  lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
  swift_allocError();
  *v8 = 25;
  *(v8 + 8) = v5;
  *(v8 + 16) = v7;
  v2 = swift_willThrow();
LABEL_13:
  result._object = v9;
  result._countAndFlagsBits = v2;
  return result;
}

unint64_t *closure #2 in UserGraph.splitSharedNodes(nodeDefStore:surfaceShader:geometryModifier:)(unint64_t *result, _OWORD *a2, uint64_t *a3, uint64_t *a4, char **a5, char **a6)
{
  v118 = *result;
  if (*result == 0xE000000000000000)
  {
    return result;
  }

  v174 = v6;
  v8 = result[1];
  v9 = result[2];
  v112 = result[3];
  v10 = MEMORY[0x277D84F90];
  v125 = *(v8 + 16);
  v116 = v9;
  if (v125)
  {
    *&v172[0] = MEMORY[0x277D84F90];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v125, 0);
    v11 = *&v172[0];
    v12 = (v8 + 56);
    v13 = v125;
    do
    {
      v15 = *(v12 - 2);
      v14 = *(v12 - 1);
      v7 = *v12;
      *&v172[0] = v11;
      v17 = *(v11 + 16);
      v16 = *(v11 + 24);

      if (v17 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
        v11 = *&v172[0];
      }

      *(v11 + 16) = v17 + 1;
      v18 = (v11 + 24 * v17);
      v18[4] = v14;
      v18[5] = v7;
      v18[6] = v15;
      v12 += 7;
      --v13;
    }

    while (v13);
    v9 = v116;
    v10 = MEMORY[0x277D84F90];
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  v117 = v8;
  v119 = *(v9 + 16);
  if (v119)
  {
    *&v172[0] = v10;

    v114 = v11;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v119, 0);
    v19 = v10;
    v20 = (v9 + 56);
    v21 = v119;
    do
    {
      v7 = *(v20 - 2);
      v22 = *(v20 - 1);
      v23 = *v20;
      *&v172[0] = v19;
      v25 = *(v19 + 16);
      v24 = *(v19 + 24);

      if (v25 >= v24 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
        v11 = v114;
        v19 = *&v172[0];
      }

      *(v19 + 16) = v25 + 1;
      v26 = (v19 + 24 * v25);
      v26[4] = v22;
      v26[5] = v23;
      v26[6] = v7;
      v20 += 7;
      --v21;
    }

    while (v21);
    v9 = v116;
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(v11, v19, v118, &v151);

  specialized Set._Variant.insert(_:)(v172, v153);
  v27 = MEMORY[0x277D84F90];
  if (v125)
  {
    *&v172[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v125, 0);
    v28 = v125;
    v27 = *&v172[0];
    v29 = (v117 + 56);
    do
    {
      v30 = *(v29 - 2);
      v31 = *(v29 - 1);
      v7 = *v29;
      *&v172[0] = v27;
      v33 = *(v27 + 16);
      v32 = *(v27 + 24);

      if (v33 >= v32 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
        v27 = *&v172[0];
      }

      *(v27 + 16) = v33 + 1;
      v34 = (v27 + 24 * v33);
      v34[4] = v31;
      v34[5] = v7;
      v34[6] = v30;
      v29 += 7;
      --v28;
    }

    while (v28);
    v9 = v116;
  }

  v35 = MEMORY[0x277D84F90];
  if (v119)
  {
    *&v172[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v119, 0);
    v36 = v119;
    v35 = *&v172[0];
    v37 = (v9 + 56);
    do
    {
      v7 = *(v37 - 2);
      v38 = *(v37 - 1);
      v39 = *v37;
      *&v172[0] = v35;
      v41 = *(v35 + 16);
      v40 = *(v35 + 24);

      if (v41 >= v40 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1);
        v35 = *&v172[0];
      }

      *(v35 + 16) = v41 + 1;
      v42 = (v35 + 24 * v41);
      v42[4] = v38;
      v42[5] = v39;
      v42[6] = v7;
      v37 += 7;
      --v36;
    }

    while (v36);
    v9 = v116;
  }

  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(v27, v35, v118, &v154);

  specialized Set._Variant.insert(_:)(v172, v156);
  v43 = v152;
  v44 = v155;
  v45 = *(v9 + 16);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  v113 = v45;
  v115 = v43;
  if (v45)
  {
    v46 = 0;
    v47 = 0;
    do
    {
      v48 = *(v43 + 2);
      if (v47 == v48)
      {
        break;
      }

      if (v47 >= v48)
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v49 = *(v44 + 16);
      if (v47 == v49)
      {
        break;
      }

      v51 = *(v9 + v46 + 32);
      v50 = *(v9 + v46 + 40);
      v52 = *(v9 + v46 + 48);
      v53 = *(v9 + v46 + 56);
      v54 = *(v9 + v46 + 64);
      v55 = *(v9 + v46 + 72);
      v56 = *(v9 + v46 + 80);
      v57 = *&v43[v46 + 32];
      v58 = *&v43[v46 + 40];
      v59 = *&v43[v46 + 48];
      v35 = *&v43[v46 + 56];
      v60 = *&v43[v46 + 64];
      v61 = v43[v46 + 72];
      v62 = *&v43[v46 + 80];
      v169[0] = v51;
      v169[1] = v50;
      v169[2] = v52;
      v169[3] = v53;
      v169[4] = v54;
      v170 = v55;
      v171 = v56;
      *&v157 = v57;
      *(&v157 + 1) = v58;
      v158 = v59;
      v159 = v35;
      v160 = v60;
      v161 = v61;
      v162 = v62;
      if (v47 >= v49)
      {
        goto LABEL_58;
      }

      ++v47;
      v63 = v44 + v46;
      v120 = v46;
      v64 = *(v44 + v46 + 32);
      v65 = *(v44 + v46 + 40);
      v66 = *(v44 + v46 + 48);
      v67 = *(v63 + 56);
      v68 = *(v63 + 64);
      v69 = *(v63 + 72);
      v70 = *(v63 + 80);
      *&v163 = v64;
      *(&v163 + 1) = v65;
      v164 = v66;
      v165 = v67;
      v166 = v68;
      v167 = v69;
      v168 = v70;
      v139 = v61;
      v138 = v69;
      *&v140 = v51;
      *(&v140 + 1) = v50;
      *&v141 = v52;
      *(&v141 + 1) = v53;
      *&v142 = v54;
      BYTE8(v142) = v55;
      *&v143 = v56;
      *(&v143 + 1) = v57;
      *&v144 = v58;
      *(&v144 + 1) = v59;
      *&v145 = v35;
      *(&v145 + 1) = v60;
      LOBYTE(v146) = v61;
      *(&v146 + 1) = v62;
      *&v147 = v64;
      *(&v147 + 1) = v65;
      *&v148 = v66;
      *(&v148 + 1) = v67;
      *&v149 = v68;
      BYTE8(v149) = v69;
      v150 = v70;
      v71 = a2[8];
      v72 = a2[9];
      v73 = a2[6];
      v172[7] = a2[7];
      v172[8] = v71;
      v173[0] = v72;
      *(v173 + 9) = *(a2 + 153);
      v74 = a2[5];
      v172[4] = a2[4];
      v172[5] = v74;
      v172[6] = v73;
      v75 = a2[1];
      v172[0] = *a2;
      v172[1] = v75;
      v76 = a2[3];
      v172[2] = a2[2];
      v172[3] = v76;

      outlined init with copy of [Input](&v140, &v127, &_s11ShaderGraph6OutputV_AC_ACttMd, &_s11ShaderGraph6OutputV_AC_ACttMR);
      outlined init with copy of UserGraph(v172, &v127);
      v7 = UserGraph.edges(from:)(v169);
      outlined destroy of UserGraph(v172);

      v9 = v116;
      v77 = v174;
      specialized Sequence.forEach(_:)(v7, a3, a4, a2, a5, &v157, a6, &v163);
      v174 = v77;
      v43 = v115;

      swift_bridgeObjectRelease_n();

      swift_bridgeObjectRelease_n();

      outlined destroy of [Input](&v140, &_s11ShaderGraph6OutputV_AC_ACttMd, &_s11ShaderGraph6OutputV_AC_ACttMR);
      v46 = v120 + 56;
    }

    while (v113 != v47);
  }

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v78 = *(&v151 + 1);
  v79 = *(&v154 + 1);
  v43 = v117;
  v80 = *(v117 + 16);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  if (v80)
  {
    v81 = 0;
    v35 = 0;
    v7 = a2;
    v82 = a6;
    do
    {
      v83 = *(v78 + 16);
      if (v35 == v83)
      {
        break;
      }

      if (v35 >= v83)
      {
        goto LABEL_57;
      }

      v84 = *(v79 + 16);
      if (v35 == v84)
      {
        break;
      }

      if (v35 >= v84)
      {
        goto LABEL_59;
      }

      v86 = *(v117 + v81 + 32);
      v85 = *(v117 + v81 + 40);
      v87 = *(v117 + v81 + 48);
      v88 = *(v117 + v81 + 56);
      v89 = *(v117 + v81 + 64);
      v90 = *(v117 + v81 + 72);
      v91 = *(v117 + v81 + 80);
      v92 = *(v78 + v81 + 32);
      v43 = *(v78 + v81 + 40);
      v93 = *(v78 + v81 + 48);
      v94 = *(v78 + v81 + 56);
      v95 = *(v78 + v81 + 64);
      v96 = *(v78 + v81 + 80);
      v97 = *(v79 + v81 + 32);
      v98 = *(v79 + v81 + 40);
      v99 = *(v79 + v81 + 48);
      v100 = *(v79 + v81 + 56);
      v101 = *(v79 + v81 + 64);
      v102 = *(v79 + v81 + 72);
      v103 = *(v79 + v81 + 80);
      v138 = *(v78 + v81 + 72);
      v139 = v90;
      *&v127 = v86;
      *(&v127 + 1) = v85;
      *&v128 = v87;
      *(&v128 + 1) = v88;
      *&v129 = v89;
      BYTE8(v129) = v90;
      *&v130 = v91;
      *(&v130 + 1) = v92;
      *&v131 = v43;
      *(&v131 + 1) = v93;
      *&v132 = v94;
      *(&v132 + 1) = v95;
      LOBYTE(v133) = v138;
      *(&v133 + 1) = v96;
      *&v134 = v97;
      *(&v134 + 1) = v98;
      *&v135 = v99;
      *(&v135 + 1) = v100;
      *&v136 = v101;
      BYTE8(v136) = v102;
      v137 = v103;

      v7 = a2;

      v82 = a6;

      v104 = v174;
      closure #2 in closure #2 in UserGraph.splitSharedNodes(nodeDefStore:surfaceShader:geometryModifier:)(&v127, a2, a3, a4, a5, a6);
      v174 = v104;
      if (v104)
      {
        goto LABEL_63;
      }

      ++v35;
      v148 = v135;
      v149 = v136;
      v150 = v137;
      v144 = v131;
      v145 = v132;
      v146 = v133;
      v147 = v134;
      v140 = v127;
      v141 = v128;
      v142 = v129;
      v143 = v130;
      outlined destroy of [Input](&v140, &_s11ShaderGraph5InputV_AC_ACttMd, &_s11ShaderGraph5InputV_AC_ACttMR);
      v81 += 56;
    }

    while (v80 != v35);
  }

  else
  {
    v7 = a2;
    v82 = a6;
  }

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  specialized Sequence.forEach(_:)(v105);

  specialized Sequence.forEach(_:)(v106);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v108 = *a5;
  if (isUniquelyReferenced_nonNull_native)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v108 + 2));
  }

  else
  {
    *a5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11ShaderGraph4EdgeV_Tt1g5(0, *(v108 + 3) >> 1);
  }

  v35 = v112;
  v109 = swift_isUniquelyReferenced_nonNull_native();
  v110 = *v82;
  if (v109)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v110 + 2));
  }

  else
  {
    *v82 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11ShaderGraph4EdgeV_Tt1g5(0, *(v110 + 3) >> 1);
  }

  specialized UserGraph.removeEdges(connectedTo:)(v112);
  v43 = *(v7 + 8);
  v111 = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + 8) = v43;
  if (v111)
  {
    if ((v112 & 0x8000000000000000) == 0)
    {
      goto LABEL_53;
    }
  }

  else
  {
LABEL_60:
    v43 = specialized _ArrayBuffer._consumeAndCreateNew()(v43);
    *(v7 + 8) = v43;
    if ((v35 & 0x8000000000000000) == 0)
    {
LABEL_53:
      if (v35 < *(v43 + 2))
      {
        ShaderGraphNode.update(id:)(-7);
        *&v127 = v154;
        outlined destroy of NodePersonality(&v127);

        *&v140 = v151;
        outlined destroy of NodePersonality(&v140);
      }

      goto LABEL_62;
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  v148 = v135;
  v149 = v136;
  v150 = v137;
  v144 = v131;
  v145 = v132;
  v146 = v133;
  v147 = v134;
  v140 = v127;
  v141 = v128;
  v142 = v129;
  v143 = v130;
  outlined destroy of [Input](&v140, &_s11ShaderGraph5InputV_AC_ACttMd, &_s11ShaderGraph5InputV_AC_ACttMR);

  __break(1u);
  return result;
}

uint64_t closure #2 in closure #2 in UserGraph.splitSharedNodes(nodeDefStore:surfaceShader:geometryModifier:)(__int128 *a1, _OWORD *a2, uint64_t *a3, uint64_t *a4, char **a5, char **a6)
{
  v7 = a1[9];
  v89 = a1[8];
  v90 = v7;
  v91 = *(a1 + 20);
  v8 = a1[5];
  v85 = a1[4];
  v86 = v8;
  v9 = a1[6];
  v88 = a1[7];
  v87 = v9;
  v10 = a1[1];
  v81 = *a1;
  v82 = v10;
  v11 = a1[2];
  v84 = a1[3];
  v83 = v11;
  v75[0] = v81;
  v75[1] = v82;
  v76 = v11;
  v77 = BYTE8(v11);
  *v69 = *(&v84 + 1);
  v78 = v84;
  *&v69[8] = v85;
  *&v69[24] = v86;
  v69[40] = v87;
  v70 = *(&v87 + 1);
  v71 = v88;
  v72 = v89;
  *&v73 = v90;
  BYTE8(v73) = BYTE8(v90);
  v74 = v91;
  v12 = a2[1];
  v79[0] = *a2;
  v79[1] = v12;
  v13 = a2[2];
  v14 = a2[3];
  v15 = a2[5];
  v79[4] = a2[4];
  v79[5] = v15;
  v79[2] = v13;
  v79[3] = v14;
  v16 = a2[6];
  v17 = a2[7];
  *(v80 + 9) = *(a2 + 153);
  v18 = a2[9];
  v79[8] = a2[8];
  v80[0] = v18;
  v79[6] = v16;
  v79[7] = v17;
  outlined init with copy of [Input](&v81, &v56, &_s11ShaderGraph5InputV_AC_ACttMd, &_s11ShaderGraph5InputV_AC_ACttMR);
  outlined init with copy of UserGraph(v79, &v56);
  UserGraph.edge(to:)(v75, v63);
  outlined destroy of UserGraph(v79);
  if (!*(&v63[0] + 1))
  {
  }

  v56 = v63[0];
  v59 = v63[3];
  v60 = v63[4];
  v61 = v63[5];
  v62 = v63[6];
  v57 = v63[1];
  v58 = v63[2];
  UserGraph.remove(_:)(&v56);
  v19 = *a3;
  v64 = v56;
  v65 = v57;
  v66 = v58;
  v67 = v59;
  v20 = v56;
  v21 = specialized Set.contains(_:)(v56, v19);
  v22 = specialized Set.contains(_:)(v20, *a4);
  if (!v21)
  {
    if (!v22)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      __swift_project_value_buffer(v40, logger);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_265D7D000, v41, v42, "Edge destination node isn't a surface node or geometry modifier node.", v43, 2u);
        MEMORY[0x266773120](v43, -1, -1);
      }

      goto LABEL_23;
    }

    UserGraph.connect(_:to:)(&v64, &v71);

LABEL_17:

LABEL_23:

    return outlined destroy of [Input](v63, &_s11ShaderGraph4EdgeVSgMd, &_s11ShaderGraph4EdgeVSgMR);
  }

  if (!v22)
  {
    UserGraph.connect(_:to:)(&v64, v69);

    goto LABEL_17;
  }

  v68 = v57;
  v52 = v56;
  v53 = v57;
  v54 = v58;
  *&v55[8] = *v69;
  *&v55[40] = *&v69[32];
  *v55 = v59;
  *&v55[56] = v70;
  *&v55[24] = *&v69[16];
  v23 = *a5;

  outlined init with copy of String(&v68, v51);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a5 = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 2) + 1, 1, v23);
    *a5 = v23;
  }

  v26 = *(v23 + 2);
  v25 = *(v23 + 3);
  if (v26 >= v25 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v23);
    *a5 = v23;
  }

  *(v23 + 2) = v26 + 1;
  v27 = &v23[112 * v26];
  v28 = v52;
  v29 = v54;
  *(v27 + 3) = v53;
  *(v27 + 4) = v29;
  *(v27 + 2) = v28;
  v30 = *v55;
  v31 = *&v55[16];
  v32 = *&v55[48];
  *(v27 + 7) = *&v55[32];
  *(v27 + 8) = v32;
  *(v27 + 5) = v30;
  *(v27 + 6) = v31;
  v47 = v64;
  v48 = v65;
  v49 = v66;
  *v50 = v67;
  *&v50[8] = v71;
  *&v50[24] = v72;
  *&v50[40] = v73;
  *&v50[56] = v74;
  v33 = *a6;

  outlined init with copy of String(&v68, v51);

  v34 = swift_isUniquelyReferenced_nonNull_native();
  *a6 = v33;
  if ((v34 & 1) == 0)
  {
    v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v33 + 2) + 1, 1, v33);
    *a6 = v33;
  }

  v36 = *(v33 + 2);
  v35 = *(v33 + 3);
  if (v36 >= v35 >> 1)
  {
    *a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v33);
  }

  outlined destroy of [Input](v63, &_s11ShaderGraph4EdgeVSgMd, &_s11ShaderGraph4EdgeVSgMR);

  v38 = *a6;
  *(v38 + 2) = v36 + 1;
  v39 = &v38[112 * v36];
  *(v39 + 6) = *&v50[16];
  *(v39 + 7) = *&v50[32];
  *(v39 + 8) = *&v50[48];
  *(v39 + 2) = v47;
  *(v39 + 3) = v48;
  *(v39 + 4) = v49;
  *(v39 + 5) = *v50;
  return result;
}

uint64_t closure #1 in UserGraph.insertConversionFromFloatColorToHalfColor(for:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  specialized ShaderGraphNode.output(labeled:)(&v26, *a1, v2, *(a2 + 96));
  if (!v27)
  {
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v12 = 14;
    *(v12 + 8) = v3;
    *(v12 + 16) = v2;
    swift_willThrow();
  }

  v51[0] = v26;
  v51[1] = v27;
  v52 = v28;
  v53 = v29;
  v54 = v30;
  if (v4 == 44)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_265F1F670;
    if (one-time initialization token for float4 != -1)
    {
      swift_once();
    }

    v15 = static MaterialXDataType.float4;
    *(inited + 32) = 28265;
    *(inited + 40) = 0xE200000000000000;
    *(inited + 48) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
    v16 = swift_initStackObject();
    *(v16 + 16) = xmmword_265F1F670;
    v17 = one-time initialization token for color4;

    if (v17 != -1)
    {
      swift_once();
    }

    v18 = static MaterialXDataType.color4;
    *(v16 + 32) = 7632239;
    *(v16 + 40) = 0xE300000000000000;
    *(v16 + 48) = v18;
    v19 = swift_allocObject();
    *(v19 + 16) = 0xD000000000000019;
    *(v19 + 24) = 0x8000000265F30E50;

    v11 = v32;
    UserGraph.insertNode(inputs:outputs:shaderGraphData:)(inited, v16, v19 | 0xA000000000000000, v32);

    swift_setDeallocating();
    swift_arrayDestroy();
  }

  else
  {
    if (v4 != 41)
    {

      v55 = v28;
      return outlined destroy of String(&v55);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMR);
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_265F1F670;
    if (one-time initialization token for float3 != -1)
    {
      swift_once();
    }

    v6 = static MaterialXDataType.float3;
    *(v5 + 32) = 28265;
    *(v5 + 40) = 0xE200000000000000;
    *(v5 + 48) = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_265F1F670;
    v8 = one-time initialization token for color3;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = static MaterialXDataType.color3;
    *(v7 + 32) = 7632239;
    *(v7 + 40) = 0xE300000000000000;
    *(v7 + 48) = v9;
    v10 = swift_allocObject();
    *(v10 + 16) = 0xD000000000000019;
    *(v10 + 24) = 0x8000000265F30E70;

    v11 = v31;
    UserGraph.insertNode(inputs:outputs:shaderGraphData:)(v5, v7, v10 | 0xA000000000000000, v31);

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  v21 = *v11;
  v20 = v11[1];
  v22 = v11[2];
  outlined copy of NodePersonality(*v11);

  specialized ShaderGraphNode.output(labeled:)(&v33, 7632239, 0xE300000000000000, v22);
  outlined consume of NodePersonality(v21);

  if (v34)
  {
    v47[0] = v33;
    v47[1] = v34;
    v48 = v35;
    v49 = v36;
    v50 = v37;
    specialized ShaderGraphNode.output(labeled:)(&v38, 28265, 0xE200000000000000, v20);
    if (v39)
    {
      v43[0] = v38;
      v43[1] = v39;
      v44 = v40;
      v45 = v41;
      v46 = v42;
      UserGraph.moveEdges(from:to:)(v51, v47);
      UserGraph.connect(_:to:)(v51, v43);

      v58 = v52;
      outlined destroy of String(&v58);

      v60 = v48;
      outlined destroy of String(&v60);

      v61 = v44;
      v23 = &v61;
    }

    else
    {
      MEMORY[0x266771550](2125417, 0xE300000000000000);
      _print_unlocked<A, B>(_:_:)();
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v25 = 11;
      *(v25 + 8) = 0;
      *(v25 + 16) = 0xE000000000000000;
      swift_willThrow();

      v57 = v52;
      outlined destroy of String(&v57);

      v59 = v48;
      v23 = &v59;
    }
  }

  else
  {
    MEMORY[0x266771550](544503151, 0xE400000000000000);
    _print_unlocked<A, B>(_:_:)();
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v24 = 14;
    *(v24 + 8) = 0;
    *(v24 + 16) = 0xE000000000000000;
    swift_willThrow();

    v56 = v52;
    v23 = &v56;
  }

  outlined destroy of String(v23);
  outlined consume of NodePersonality(v21);
}

uint64_t closure #1 in closure #1 in UserGraph.resolveMaterialXEnums()(__int128 *a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v153 = *(a1 + 6);
  v151 = v4;
  v152 = v5;
  v150 = v3;
  v6 = *(&v3 + 1);
  type metadata accessor for MaterialXDataType();
  result = swift_dynamicCastClass();
  if (result)
  {
    v8 = result;
    v9 = *(result + 24);
    if (v9)
    {
      v10 = a2[9];
      v162[8] = a2[8];
      v163[0] = v10;
      *(v163 + 9) = *(a2 + 153);
      v11 = a2[5];
      v162[4] = a2[4];
      v162[5] = v11;
      v12 = a2[6];
      v162[7] = a2[7];
      v162[6] = v12;
      v13 = a2[1];
      v162[0] = *a2;
      v162[1] = v13;
      v14 = a2[2];
      v162[3] = a2[3];
      v162[2] = v14;

      outlined init with copy of UserGraph(v162, v113);
      UserGraph.output(connectedTo:)(&v150, &v115);
      outlined destroy of UserGraph(v162);
      if (!v116)
      {
        goto LABEL_6;
      }

      v165 = v6;
      v15 = v115;
      v131 = v117;
      v132 = v118;
      v133 = v119;
      if (v115 == -7)
      {

        v134 = v117;
        return outlined destroy of String(&v134);
      }

      if ((v115 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v16 = *(a2 + 8);
        if (v115 < *(v16 + 16))
        {
          v109 = v116;
          v17 = v16 + 48 * v115;
          v18 = *(v17 + 32);
          v19 = *(v17 + 40);
          v20 = *(v17 + 48);
          if (v18 >> 61)
          {
            v38 = *(v17 + 32);
            outlined copy of NodePersonality(v38);

            outlined consume of NodePersonality(v38);

            v135 = v117;
            return outlined destroy of String(&v135);
          }

          v21 = *(v17 + 64);
          v104 = *(v17 + 56);
          v105 = v21;
          LODWORD(v106) = *(v17 + 72);
          v22 = *(v18 + 88);
          v107 = v20;
          v108 = v22;
          v23 = v18;
          v24 = swift_dynamicCastClass();
          if (v24)
          {
            v26 = *(v23 + 48);
            v25 = *(v23 + 64);
            v27 = *(v23 + 16);
            v28 = *(v23 + 32);
            v114 = *(v23 + 80);
            v113[0] = v27;
            v113[1] = v28;
            v113[2] = v26;
            v113[3] = v25;
            v29 = v23;
            *(&v103 + 1) = v19;
            if (v114 == 6)
            {
              v30 = *(&v113[0] + 1);
              v31 = *(v24 + 24);
              v102 = *&v113[0];
              *&v103 = v29;
              if (v31)
              {
                v32 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v9, v31);
                if ((v32 & 1) == 0)
                {

                  outlined copy of NodePersonality(v103);

                  v53 = MEMORY[0x277D837D0];
                  v54 = MEMORY[0x2667717B0](v9, MEMORY[0x277D837D0]);
                  v56 = v55;

                  *&v110 = v54;
                  *(&v110 + 1) = v56;
                  MEMORY[0x266771550](540877088, 0xE400000000000000);
                  v57 = MEMORY[0x2667717B0](v31, v53);
                  MEMORY[0x266771550](v57);

                  v58 = v110;
                  if (one-time initialization token for logger != -1)
                  {
                    swift_once();
                  }

                  v59 = type metadata accessor for Logger();
                  __swift_project_value_buffer(v59, logger);

                  v60 = Logger.logObject.getter();
                  v61 = static os_log_type_t.error.getter();

                  if (os_log_type_enabled(v60, v61))
                  {
                    v62 = swift_slowAlloc();
                    v63 = swift_slowAlloc();
                    *&v110 = v63;
                    *v62 = 136315138;
                    *(v62 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, *(&v58 + 1), &v110);
                    _os_log_impl(&dword_265D7D000, v60, v61, "%s", v62, 0xCu);
                    __swift_destroy_boxed_opaque_existential_1Tm(v63);
                    MEMORY[0x266773120](v63, -1, -1);
                    MEMORY[0x266773120](v62, -1, -1);
                  }

                  lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
                  swift_allocError();
                  *v64 = 44;
                  *(v64 + 8) = v58;
                  swift_willThrow();

                  outlined consume of NodePersonality(v103);

                  v138 = v131;
                  v37 = &v138;
                  goto LABEL_51;
                }

                v100 = &v99;
                v112 = __PAIR128__(v30, v102);
                MEMORY[0x28223BE20](v32);
                v98 = &v112;
                v101 = v30;

                outlined copy of NodePersonality(v103);

                outlined init with copy of SGDataTypeStorage(v113, &v110);
                v33 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v97, v9);

                if ((v33 & 1) == 0)
                {
                  *&v112 = 0;
                  *(&v112 + 1) = 0xE000000000000000;
                  MEMORY[0x266771550](v102, v101);
                  outlined destroy of SGDataTypeStorage(v113);
                  MEMORY[0x266771550](32, 0xE100000000000000);
                  v34 = v103;
                  v110 = v103;
                  *&v111[0] = v107;
                  *(&v111[0] + 1) = v104;
                  *&v111[1] = v105;
                  BYTE8(v111[1]) = v106;
                  _print_unlocked<A, B>(_:_:)();
                  v35 = v112;
                  lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
                  swift_allocError();
                  *v36 = 25;
                  *(v36 + 8) = v35;
                  swift_willThrow();

                  outlined consume of NodePersonality(v34);

                  v139 = v131;
                  v37 = &v139;
LABEL_51:
                  outlined destroy of String(v37);
                }
              }

              else
              {
                v100 = &v99;
                v101 = *(&v113[0] + 1);
                v112 = v113[0];
                MEMORY[0x28223BE20](v24);
                v98 = &v112;

                outlined copy of NodePersonality(v29);

                outlined init with copy of SGDataTypeStorage(v113, &v110);
                if ((specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v97, v9) & 1) == 0)
                {
                  if (one-time initialization token for logger != -1)
                  {
                    swift_once();
                  }

                  v65 = type metadata accessor for Logger();
                  __swift_project_value_buffer(v65, logger);

                  outlined init with copy of SGDataTypeStorage(v113, &v110);
                  v66 = Logger.logObject.getter();
                  v67 = static os_log_type_t.error.getter();
                  outlined destroy of SGDataTypeStorage(v113);

                  if (os_log_type_enabled(v66, v67))
                  {
                    v68 = swift_slowAlloc();
                    v69 = swift_slowAlloc();
                    *&v110 = v69;
                    *v68 = 136315394;
                    v70 = v102;
                    *(v68 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v101, &v110);
                    *(v68 + 12) = 2080;
                    v71 = MEMORY[0x2667717B0](v9, MEMORY[0x277D837D0]);
                    v73 = v72;

                    v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v73, &v110);

                    *(v68 + 14) = v74;
                    _os_log_impl(&dword_265D7D000, v66, v67, "Enum value %s not a memeber of enum set %s", v68, 0x16u);
                    swift_arrayDestroy();
                    MEMORY[0x266773120](v69, -1, -1);
                    MEMORY[0x266773120](v68, -1, -1);

                    v75 = v101;
                    v76 = v107;
                  }

                  else
                  {

                    v76 = v107;
                    v75 = v101;
                    v70 = v102;
                  }

                  *&v112 = 0;
                  *(&v112 + 1) = 0xE000000000000000;
                  MEMORY[0x266771550](v70, v75);
                  outlined destroy of SGDataTypeStorage(v113);
                  MEMORY[0x266771550](32, 0xE100000000000000);
                  v85 = v103;
                  v110 = v103;
                  *&v111[0] = v76;
                  *(&v111[0] + 1) = v104;
                  *&v111[1] = v105;
                  BYTE8(v111[1]) = v106;
                  _print_unlocked<A, B>(_:_:)();
                  v86 = v112;
                  lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
                  swift_allocError();
                  *v87 = 25;
                  *(v87 + 8) = v86;
                  swift_willThrow();

                  outlined consume of NodePersonality(v85);

                  v137 = v131;
                  v37 = &v137;
                  goto LABEL_51;
                }
              }

              v106 = MaterialXDataType.asMetalDataType.getter();
              if (v106)
              {
                v46 = v101;
                v47 = v102;
                v48._countAndFlagsBits = v102;
                v48._object = v101;
                v49 = MetalDataType.convertEnumConstant(_:)(v48);
                if (v49.value._object)
                {
                  outlined destroy of SGDataTypeStorage(v113);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
                  v50 = swift_allocObject();
                  *(v50 + 16) = xmmword_265F1F670;
                  *(v50 + 32) = 7632239;
                  v105 = v50 + 32;
                  v51 = v106;
                  *(v50 + 40) = 0xE300000000000000;
                  *(v50 + 48) = v51;
                  v52 = swift_allocObject();
                  *(v52 + 16) = v49;
                  *(v52 + 80) = 6;
                  *(v52 + 88) = v51;
                  swift_retain_n();

                  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], v50, v52, &v120);

                  swift_setDeallocating();
                  swift_arrayDestroy();
                  swift_deallocClassInstance();
                  v140 = v117;
                  v155 = v117;
                  v156 = v118;
                  v164 = v151;
                  v158 = v150;
                  v159 = v151;
                  v160 = v152;
                  v157 = v119;
                  v161 = v153;
                  v154[0] = v15;
                  v154[1] = v109;

                  outlined init with copy of String(&v140, &v110);
                  outlined init with copy of String(&v164, &v110);
                  UserGraph.remove(_:)(v154);
                  outlined destroy of Edge(v154);
                  v149 = v121[0];
                  specialized ShaderGraphNode.output(labeled:)(&v122, 7632239, 0xE300000000000000, v121[0]);
                  if (v123)
                  {
                    v127[0] = v122;
                    v127[1] = v123;
                    v128 = v124;
                    v129 = v125;
                    v130 = v126;
                    UserGraph.connect(_:to:)(v127, &v150);

                    v144 = v128;
                    outlined destroy of String(&v144);
                    v146 = v120;
                    outlined destroy of NodePersonality(&v146);
                    v145 = *(&v120 + 1);
                    outlined destroy of [Input](&v145, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                    outlined destroy of [Input](&v149, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

                    outlined consume of NodePersonality(v103);

                    return outlined destroy of String(&v140);
                  }

                  *&v112 = 0;
                  *(&v112 + 1) = 0xE000000000000000;
                  MEMORY[0x266771550](7632239, 0xE300000000000000);
                  MEMORY[0x266771550](32, 0xE100000000000000);
                  v110 = v120;
                  v111[0] = *v121;
                  *(v111 + 9) = *(&v121[1] + 1);
                  _print_unlocked<A, B>(_:_:)();
                  v95 = v112;
                  lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
                  swift_allocError();
                  *v96 = 14;
                  *(v96 + 8) = v95;
                  swift_willThrow();
                  v148 = v120;
                  outlined destroy of NodePersonality(&v148);
                  v147 = *(&v120 + 1);
                  outlined destroy of [Input](&v147, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
                  outlined destroy of [Input](&v149, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

                  outlined consume of NodePersonality(v103);

                  v37 = &v140;
                }

                else
                {
                  *&v110 = 0;
                  *(&v110 + 1) = 0xE000000000000000;
                  _StringGuts.grow(_:)(39);

                  *&v110 = 0xD000000000000012;
                  *(&v110 + 1) = 0x8000000265F313E0;
                  MEMORY[0x266771550](v47, v46);
                  outlined destroy of SGDataTypeStorage(v113);
                  MEMORY[0x266771550](0xD000000000000013, 0x8000000265F31420);
                  v88 = v110;
                  if (one-time initialization token for logger != -1)
                  {
                    swift_once();
                  }

                  v89 = type metadata accessor for Logger();
                  __swift_project_value_buffer(v89, logger);

                  v90 = Logger.logObject.getter();
                  v91 = static os_log_type_t.error.getter();

                  if (os_log_type_enabled(v90, v91))
                  {
                    v92 = swift_slowAlloc();
                    v93 = swift_slowAlloc();
                    *&v110 = v93;
                    *v92 = 136315138;
                    *(v92 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, *(&v88 + 1), &v110);
                    _os_log_impl(&dword_265D7D000, v90, v91, "%s", v92, 0xCu);
                    __swift_destroy_boxed_opaque_existential_1Tm(v93);
                    MEMORY[0x266773120](v93, -1, -1);
                    MEMORY[0x266773120](v92, -1, -1);
                  }

                  lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
                  swift_allocError();
                  *v94 = 44;
                  *(v94 + 8) = v88;
                  swift_willThrow();

                  outlined consume of NodePersonality(v103);

                  v141 = v131;
                  v37 = &v141;
                }
              }

              else
              {
                outlined destroy of SGDataTypeStorage(v113);
                *&v110 = 0;
                *(&v110 + 1) = 0xE000000000000000;
                _StringGuts.grow(_:)(39);

                *&v110 = 0xD000000000000012;
                *(&v110 + 1) = 0x8000000265F313E0;
                v77 = MaterialXDataType.description.getter();
                MEMORY[0x266771550](v77);

                MEMORY[0x266771550](0xD000000000000013, 0x8000000265F31400);
                v78 = v110;
                if (one-time initialization token for logger != -1)
                {
                  swift_once();
                }

                v79 = type metadata accessor for Logger();
                __swift_project_value_buffer(v79, logger);

                v80 = Logger.logObject.getter();
                v81 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v80, v81))
                {
                  v82 = swift_slowAlloc();
                  v83 = swift_slowAlloc();
                  *&v110 = v83;
                  *v82 = 136315138;
                  *(v82 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, *(&v78 + 1), &v110);
                  _os_log_impl(&dword_265D7D000, v80, v81, "%s", v82, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v83);
                  MEMORY[0x266773120](v83, -1, -1);
                  MEMORY[0x266773120](v82, -1, -1);
                }

                lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
                swift_allocError();
                *v84 = 44;
                *(v84 + 8) = v78;
                swift_willThrow();

                outlined consume of NodePersonality(v103);

                v142 = v131;
                v37 = &v142;
              }

              goto LABEL_51;
            }

            outlined copy of NodePersonality(v23);

            *&v112 = 0;
            *(&v112 + 1) = 0xE000000000000000;
            v15 = v23;
            *&v110 = v23;
            *(&v110 + 1) = v19;
            *&v111[0] = v107;
            *(&v111[0] + 1) = v104;
            *&v111[1] = v105;
            BYTE8(v111[1]) = v106;
            _print_unlocked<A, B>(_:_:)();
            v9 = 0xE000000000000000;
            v8 = 0;
            if (one-time initialization token for logger == -1)
            {
LABEL_19:
              v39 = type metadata accessor for Logger();
              __swift_project_value_buffer(v39, logger);

              v40 = Logger.logObject.getter();
              v41 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v40, v41))
              {
                v42 = swift_slowAlloc();
                v43 = swift_slowAlloc();
                *&v110 = v43;
                *v42 = 136315138;
                v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v110);

                *(v42 + 4) = v44;
                _os_log_impl(&dword_265D7D000, v40, v41, "enum value isn't a string %s", v42, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v43);
                MEMORY[0x266773120](v43, -1, -1);
                MEMORY[0x266773120](v42, -1, -1);
              }

              else
              {
              }

              lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
              swift_allocError();
              *v45 = 44;
              *(v45 + 8) = 0;
              *(v45 + 16) = 0;
              swift_willThrow();

              outlined consume of NodePersonality(v15);

              v143 = v131;
              v37 = &v143;
              goto LABEL_51;
            }

LABEL_55:
            swift_once();
            goto LABEL_19;
          }

          v136 = v117;
          outlined destroy of String(&v136);
LABEL_6:
        }
      }

      __break(1u);
      goto LABEL_55;
    }
  }

  return result;
}

uint64_t closure #1 in UserGraph.insertParamsInputs(surface:type:nodeDefStore:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char **a7)
{
  v12 = *a1;
  v11 = a1[1];
  v14 = a1[2];
  v13 = a1[3];
  result = specialized Set.contains(_:)(v13, a2);
  if ((result & 1) == 0 || (v12 & 0xE000000000000000) != 0xA000000000000000)
  {
    return result;
  }

  v66 = v14;
  v67 = v11;
  v64 = a6;
  v65 = v13;
  v63 = v12;
  v16 = v12 & 0x1FFFFFFFFFFFFFFFLL;
  v17 = *(v16 + 16);
  v18 = *(v16 + 24);
  v19 = one-time initialization token for realityKitParamGetterFuncs;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = static ShaderGraphNode.realityKitParamGetterFuncs;

  v21 = specialized Set.contains(_:)(v17, v18, v20);

  if ((v21 & 1) == 0)
  {
  }

  MEMORY[0x266771550](95, 0xE100000000000000);

  MEMORY[0x266771550](a3, a4);

  v61 = v17;
  v62 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMR);
  inited = swift_initStackObject();
  v23 = inited;
  *(inited + 16) = xmmword_265F1F670;
  *(inited + 32) = 12324;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = a5;
  v24 = *(v67 + 16);
  v25 = MEMORY[0x277D84F90];
  if (v24)
  {
    v59 = inited;
    v69 = MEMORY[0x277D84F90];
    swift_retain_n();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24, 0);
    v26 = v69;
    v27 = (v67 + 56);
    do
    {
      v28 = *(v27 - 2);
      v29 = *(v27 - 1);
      v30 = *v27;
      v32 = *(v69 + 16);
      v31 = *(v69 + 24);

      if (v32 >= v31 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
      }

      *(v69 + 16) = v32 + 1;
      v33 = (v69 + 24 * v32);
      v33[4] = v29;
      v33[5] = v30;
      v33[6] = v28;
      v27 += 7;
      --v24;
    }

    while (v24);
    v23 = v59;
    v25 = MEMORY[0x277D84F90];
  }

  else
  {
    swift_retain_n();
    v26 = MEMORY[0x277D84F90];
  }

  specialized Array.append<A>(contentsOf:)(v26);
  v34 = v23;
  v35 = v66;
  if (v66[2] != 1)
  {

    _StringGuts.grow(_:)(43);
    MEMORY[0x266771550](0xD000000000000029, 0x8000000265F310B0);
    swift_bridgeObjectRetain_n();
    v57 = String.init<A>(describing:)();
    MEMORY[0x266771550](v57);

    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v58 = 40;
    *(v58 + 8) = 0;
    *(v58 + 16) = 0xE000000000000000;
    swift_willThrow();
  }

  v70 = v25;
  v60 = v66[5];
  swift_retain_n();

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0);
  v36 = v25;
  v38 = v66[5];
  v37 = v66[6];
  v39 = v66[7];
  v41 = *(v36 + 16);
  v40 = *(v36 + 24);

  if (v41 >= v40 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1);
    v36 = v70;
  }

  *(v36 + 16) = v41 + 1;
  v42 = (v36 + 24 * v41);
  v42[4] = v37;
  v42[5] = v39;
  v42[6] = v38;
  v43 = swift_allocObject();
  v44 = v60;
  *(v43 + 16) = v61;
  *(v43 + 24) = v62;
  *(v43 + 32) = v60;

  v45 = v64;
  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(v34, v36, v43 | 0x2000000000000000, &v71);

  v46 = *(&v71 + 1);
  outlined copy of NodePersonality(v63);

  specialized Sequence.forEach(_:)(v46, v67, v64);
  outlined consume of NodePersonality(v63);

  v47 = v72;
  outlined copy of NodePersonality(v63);

  specialized Sequence.forEach(_:)(v47, v66, v64);
  outlined consume of NodePersonality(v63);

  v48 = v65;
  specialized UserGraph.removeEdges(connectedTo:)(v65);
  v49 = *(v64 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v64 + 64) = v49;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v65 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v49 = specialized _ArrayBuffer._consumeAndCreateNew()(v49);
  *(v64 + 64) = v49;
  if ((v65 & 0x8000000000000000) != 0)
  {
    goto LABEL_28;
  }

LABEL_19:
  if (v65 >= *(v49 + 2))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v45 = &v49[48 * v65 + 32];
  ShaderGraphNode.update(id:)(-7);
  if (!*(v46 + 16))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v47 = *(v46 + 32);
  v45 = *(v46 + 40);
  v44 = *(v46 + 48);
  v48 = *(v46 + 56);
  v35 = *(v46 + 64);
  v51 = *(v46 + 72);
  v65 = *(v46 + 80);
  v49 = *a7;

  v52 = swift_isUniquelyReferenced_nonNull_native();
  *a7 = v49;
  LOBYTE(v66) = v51;
  if ((v52 & 1) == 0)
  {
LABEL_31:
    v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v49 + 2) + 1, 1, v49);
    *a7 = v49;
  }

  v54 = *(v49 + 2);
  v53 = *(v49 + 3);
  if (v54 >= v53 >> 1)
  {
    *a7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v49);
  }

  v73 = v71;
  outlined destroy of NodePersonality(&v73);

  v55 = *a7;
  *(v55 + 2) = v54 + 1;
  v56 = &v55[56 * v54];
  *(v56 + 4) = v47;
  *(v56 + 5) = v45;
  *(v56 + 6) = v44;
  *(v56 + 7) = v48;
  *(v56 + 8) = v35;
  v56[72] = v66;
  *(v56 + 10) = v65;
  return result;
}

uint64_t UserGraph.materialXImageNodes.getter(uint64_t a1, void *a2)
{
  v26._countAndFlagsBits = a1;
  v26._object = a2;
  v27 = *(v2 + 64);
  v3 = *(v27 + 16);

  if (v3)
  {
    v5 = 0;
    v6 = result + 32;
    v24 = MEMORY[0x277D84F90];
    v25 = result + 32;
    while (v5 < v3)
    {
      v8 = v6 + 48 * v5;
      v9 = *(v8 + 24);
      if (v9 == -7)
      {
        v7 = __OFADD__(v5++, 1);
        if (v7)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v7 = __OFADD__(v5++, 1);
        if (v7)
        {
          goto LABEL_20;
        }

        v10 = *v8;
        if (*v8 >> 61 == 5)
        {
          v12 = *(v8 + 8);
          v11 = *(v8 + 16);
          v13 = *(v8 + 32);
          v14 = *(v8 + 40);
          outlined copy of NodePersonality(v10);

          v15 = String.hasPrefix(_:)(v26);

          if (v15)
          {
            v23 = v13;
            v16 = v24;
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 16) + 1, 1);
              v16 = v24;
            }

            v6 = v25;
            v17 = v23;
            v18 = v14;
            v20 = *(v16 + 16);
            v19 = *(v16 + 24);
            v21 = v20 + 1;
            if (v20 >= v19 >> 1)
            {
              result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
              v18 = v14;
              v17 = v23;
              v21 = v20 + 1;
              v16 = v24;
            }

            *(v16 + 16) = v21;
            v24 = v16;
            v22 = v16 + 48 * v20;
            *(v22 + 32) = v10;
            *(v22 + 40) = v12;
            *(v22 + 48) = v11;
            *(v22 + 56) = v9;
            *(v22 + 64) = v17;
            *(v22 + 72) = v18;
          }

          else
          {
            outlined consume of NodePersonality(v10);

            v6 = v25;
          }
        }
      }

      if (v5 >= v3)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
LABEL_17:
    outlined destroy of [Input](&v27, &_sSay11ShaderGraph0aB4NodeVGMd, &_sSay11ShaderGraph0aB4NodeVGMR);
    return v24;
  }

  return result;
}

BOOL ShaderGraphNode.isMaterialXImageNode.getter(uint64_t a1, void *a2)
{
  if (*v2 >> 61 != 5)
  {
    return 0;
  }

  v5._countAndFlagsBits = a1;
  v5._object = a2;
  v6 = String.hasPrefix(_:)(v5);

  return v6;
}

uint64_t UserGraph.materialXCubeimageNodes.getter()
{
  v23 = *(v0 + 64);
  v1 = *(v23 + 16);

  if (!v1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_18:
    outlined destroy of [Input](&v23, &_sSay11ShaderGraph0aB4NodeVGMd, &_sSay11ShaderGraph0aB4NodeVGMR);
    return v21;
  }

  v3 = 0;
  v4 = result + 32;
  v21 = MEMORY[0x277D84F90];
  v22 = result + 32;
  while (v3 < v1)
  {
    v6 = v4 + 48 * v3;
    v7 = *(v6 + 24);
    if (v7 == -7)
    {
      v5 = __OFADD__(v3++, 1);
      if (v5)
      {
        goto LABEL_20;
      }

LABEL_4:
      if (v3 >= v1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v5 = __OFADD__(v3++, 1);
      if (v5)
      {
        goto LABEL_21;
      }

      v8 = *v6;
      if (*v6 >> 61 != 5)
      {
        goto LABEL_4;
      }

      v9 = *(v6 + 8);
      v10 = *(v6 + 16);
      v11 = *(v6 + 32);
      v12 = *(v6 + 40);
      outlined copy of NodePersonality(v8);

      v13._object = 0x8000000265F2D850;
      v13._countAndFlagsBits = 0xD000000000000017;
      v14 = String.hasPrefix(_:)(v13);

      if (!v14)
      {
        outlined consume of NodePersonality(v8);

        v4 = v22;
        goto LABEL_4;
      }

      v15 = v21;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 16) + 1, 1);
        v15 = v21;
      }

      v16 = v11;
      v18 = *(v15 + 16);
      v17 = *(v15 + 24);
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
        v16 = v11;
        v19 = v18 + 1;
        v15 = v21;
      }

      *(v15 + 16) = v19;
      v21 = v15;
      v20 = v15 + 48 * v18;
      *(v20 + 32) = v8;
      *(v20 + 40) = v9;
      *(v20 + 48) = v10;
      *(v20 + 56) = v7;
      *(v20 + 64) = v16;
      *(v20 + 72) = v12;
      v4 = v22;
      if (v3 >= v1)
      {
        goto LABEL_18;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

BOOL ShaderGraphNode.isModernRealityKitTextureNode.getter()
{
  if (*v0 >> 61 != 5)
  {
    return 0;
  }

  v1._object = 0x8000000265F30DD0;
  v1._countAndFlagsBits = 0xD000000000000014;
  v2 = String.hasPrefix(_:)(v1);

  return v2;
}

BOOL ShaderGraphNode.isRealityKit2DImageArrayNode.getter()
{
  if (*v0 >> 61 != 5)
  {
    return 0;
  }

  v1._object = 0x8000000265F30DF0;
  v1._countAndFlagsBits = 0xD00000000000001DLL;
  v2 = String.hasPrefix(_:)(v1);

  return v2;
}

BOOL ShaderGraphNode.isRealityKit3DImageNode.getter()
{
  if (*v0 >> 61 != 5)
  {
    return 0;
  }

  v1._object = 0x8000000265F30E10;
  v1._countAndFlagsBits = 0xD000000000000018;
  v2 = String.hasPrefix(_:)(v1);

  return v2;
}

BOOL ShaderGraphNode.isModernRealityKitTextureCubeNode.getter()
{
  if (*v0 >> 61 != 5)
  {
    return 0;
  }

  v1._object = 0x8000000265F30E30;
  v1._countAndFlagsBits = 0xD000000000000018;
  v2 = String.hasPrefix(_:)(v1);

  return v2;
}

uint64_t one-time initialization function for realityKitSurfaceParamNodes()
{
  result = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n();
  static ShaderGraphNode.realityKitSurfaceParamNodes = result;
  return result;
}

uint64_t *ShaderGraphNode.realityKitSurfaceParamNodes.unsafeMutableAddressor()
{
  if (one-time initialization token for realityKitSurfaceParamNodes != -1)
  {
    swift_once();
  }

  return &static ShaderGraphNode.realityKitSurfaceParamNodes;
}

uint64_t static MaterialXHardcodedNames.realityKitBackgroundBlurNodes.getter(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static MaterialXHardcodedNames.realityKitBackgroundBlurNodes.setter(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a3 = a1;
}

uint64_t (*static ShaderGraphNode.realityKitSurfaceParamNodes.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for realityKitSurfaceParamNodes != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return XMLParserDelegate.StringNode.children.modify;
}

uint64_t one-time initialization function for realityKitParamGetterFuncs()
{
  if (one-time initialization token for realityKitGeometryGetterFuncs != -1)
  {
    swift_once();
  }

  v0 = realityKitGeometryGetterFuncs;
  v1 = one-time initialization token for realityKitSurfaceGetterFuncs;

  if (v1 != -1)
  {
    swift_once();
  }

  v3 = specialized Set.union<A>(_:)(v2, v0);
  if (one-time initialization token for realityKitSurfaceParamNodes != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  v5 = specialized Set.union<A>(_:)(v4, v3);
  if (one-time initialization token for realityKitBackgroundBlurNodes != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  v7 = specialized Set.union<A>(_:)(v6, v5);
  if (one-time initialization token for realityKitLightSpillNodes != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  v9 = specialized Set.union<A>(_:)(v8, v7);
  if (one-time initialization token for realityKitHoverStateNodes != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  result = specialized Set.union<A>(_:)(v10, v9);
  static ShaderGraphNode.realityKitParamGetterFuncs = result;
  return result;
}

uint64_t specialized Set.union<A>(_:)(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    specialized Set._Variant.insert(_:)(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

double UserGraph.getArgument(name:type:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F1F670;
  *(inited + 32) = 7632239;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = a3;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], inited, v9 | 0x6000000000000000, &v12);

  swift_setDeallocating();
  swift_arrayDestroy();
  v10 = v13[0];
  *a4 = v12;
  a4[1] = v10;
  result = *(v13 + 9);
  *(a4 + 25) = *(v13 + 9);
  return result;
}

uint64_t Input.prependFunction(_:label:arguments:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, _OWORD *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F1F670;
  v9 = v4[1];
  *(inited + 32) = 7632239;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = v9;
  swift_retain_n();

  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(a3, inited, v10 | 0x2000000000000000, &v15);

  swift_setDeallocating();
  swift_arrayDestroy();
  v29[0] = v16[0];
  specialized ShaderGraphNode.output(labeled:)(&v17, 7632239, 0xE300000000000000, v16[0]);
  if (v18)
  {
    v22[0] = v17;
    v22[1] = v18;
    v23 = v19;
    v24 = v20;
    v25 = v21;
    UserGraph.connect(_:to:)(v22, v4);

    v26 = v23;
    result = outlined destroy of String(&v26);
    v12 = *v16;
    *a4 = v15;
    a4[1] = v12;
    *(a4 + 25) = *(&v16[1] + 1);
  }

  else
  {
    MEMORY[0x266771550](7632239, 0xE300000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    _print_unlocked<A, B>(_:_:)();
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v13 = 14;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0xE000000000000000;
    swift_willThrow();
    v28 = v15;
    outlined destroy of NodePersonality(&v28);
    v27 = *(&v15 + 1);
    outlined destroy of [Input](&v27, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    return outlined destroy of [Input](v29, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  }

  return result;
}

uint64_t Output.appendUnaryFunction(_:resultType:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v31[4] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F1F670;
  v9 = v5[1];
  *(inited + 32) = 28265;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_265F1F670;
  *(v10 + 32) = 7632239;
  *(v10 + 40) = 0xE300000000000000;
  *(v10 + 48) = a3;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  swift_retain_n();

  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(inited, v10, v11 | 0x2000000000000000, &v17);

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_setDeallocating();
  swift_arrayDestroy();
  v31[0] = *(&v17 + 1);
  specialized ShaderGraphNode.output(labeled:)(&v19, 28265, 0xE200000000000000, *(&v17 + 1));
  if (v20)
  {
    v24[0] = v19;
    v24[1] = v20;
    v25 = v21;
    v26 = v22;
    v27 = v23;
    UserGraph.connect(_:to:)(v5, v24);

    v28 = v25;
    result = outlined destroy of String(&v28);
    v13 = v18[0];
    *a5 = v17;
    a5[1] = v13;
    *(a5 + 25) = *(v18 + 9);
  }

  else
  {
    MEMORY[0x266771550](28265, 0xE200000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    _print_unlocked<A, B>(_:_:)();
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v14 = 11;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0xE000000000000000;
    swift_willThrow();
    v30 = v17;
    outlined destroy of NodePersonality(&v30);
    outlined destroy of [Input](v31, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v29 = *&v18[0];
    return outlined destroy of [Input](&v29, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  }

  return result;
}

void *specialized OrderedSet.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v5 + 16);
  if (!*v2)
  {
    result = specialized Collection<>.firstIndex(of:)(a1, v5 + 32, *(v5 + 16));
    v12 = 0;
    if (v20)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      goto LABEL_8;
    }

LABEL_7:
    result = specialized OrderedSet._removeExistingMember(at:in:)(result, v12, v21);
    v12 = v21[0];
    v14 = v21[1];
    v15 = v21[2];
    v16 = v21[3];
    v17 = v21[4];
    v18 = v22;
    v19 = v23;
    goto LABEL_8;
  }

  v8 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a1, v5 + 32, v6, v4 + 16, v4 + 32);
  v10 = v9;
  v12 = v11;

  if ((v10 & 1) == 0)
  {
    result = v8;
    goto LABEL_7;
  }

  v12 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
LABEL_8:
  *a2 = v12;
  a2[1] = v14;
  a2[2] = v15;
  a2[3] = v16;
  a2[4] = v17;
  a2[5] = v18;
  a2[6] = v19;
  return result;
}

void specialized OrderedSet.remove(_:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = v4 + 32;
  v7 = *(v4 + 16);
  if (!*v2)
  {
    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = 0;
    while (1)
    {
      outlined init with copy of [Input](v6, v20, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
      Strong = swift_unknownObjectWeakLoadStrong();
      v14 = swift_unknownObjectWeakLoadStrong();
      v15 = v14;
      if (!Strong)
      {
        break;
      }

      if (!v14)
      {
        outlined destroy of [Input](v20, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
        v15 = Strong;
LABEL_7:

        goto LABEL_8;
      }

      type metadata accessor for SGEdge();
      v16 = static NSObject.== infix(_:_:)();
      outlined destroy of [Input](v20, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);

      if (v16)
      {
LABEL_15:
        v12 = 0;
        goto LABEL_16;
      }

LABEL_8:
      ++v8;
      v6 += 8;
      if (v7 == v8)
      {
        goto LABEL_14;
      }
    }

    outlined destroy of [Input](v20, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
    if (!v15)
    {
      goto LABEL_15;
    }

    goto LABEL_7;
  }

  v8 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a1, v6, v7, (v5 + 16), v5 + 32);
  v10 = v9;
  v12 = v11;

  if ((v10 & 1) == 0)
  {
LABEL_16:
    v17 = a2;
    specialized OrderedSet._removeExistingMember(at:in:)(v8, v12, a2);
    v18 = 0;
    goto LABEL_17;
  }

LABEL_14:
  v17 = a2;
  *a2 = 0;
  v18 = 1;
LABEL_17:
  *(v17 + 8) = v18;
}

unint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11ShaderGraph15MaterialXTargetC_Tt0g5Tf4g_n(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11ShaderGraph15MaterialXTargetCGMd, &_ss11_SetStorageCy11ShaderGraph15MaterialXTargetCGMR);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!v2)
  {
LABEL_4:
    v5 = *(v4 + 16);
    if (!v5)
    {
      return v3;
    }

    goto LABEL_9;
  }

LABEL_8:
  result = __CocoaSet.count.getter();
  v5 = result;
  if (!result)
  {
    return v3;
  }

LABEL_9:
  v6 = v3 + 56;
  v30 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      result = MEMORY[0x266772030](v7, v1);
      v8 = __OFADD__(v7++, 1);
      if (v8)
      {
        break;
      }

      v9 = result;
      Hasher.init(_seed:)();
      String.hash(into:)();
      specialized Optional<A>.hash(into:)(v31, *(v9 + 32));
      result = Hasher._finalize()();
      v10 = ~(-1 << *(v3 + 32));
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) != 0)
      {
        while (1)
        {

          v16 = specialized static MaterialXTarget.== infix(_:_:)(v15, v9);

          if (v16)
          {
            break;
          }

          v11 = (v11 + 1) & v10;
          v12 = v11 >> 6;
          v13 = *(v6 + 8 * (v11 >> 6));
          v14 = 1 << v11;
          if (((1 << v11) & v13) == 0)
          {
            v5 = v30;
            goto LABEL_17;
          }
        }

        swift_unknownObjectRelease();
        v5 = v30;
        if (v7 == v30)
        {
          return v3;
        }
      }

      else
      {
LABEL_17:
        *(v6 + 8 * v12) = v14 | v13;
        *(*(v3 + 48) + 8 * v11) = v9;
        v17 = *(v3 + 16);
        v8 = __OFADD__(v17, 1);
        v18 = v17 + 1;
        if (v8)
        {
          goto LABEL_31;
        }

        *(v3 + 16) = v18;
        if (v7 == v5)
        {
          return v3;
        }
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
    v19 = 0;
    v29 = v1 + 32;
    v20 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v19 != v20)
    {
      v21 = *(v29 + 8 * v19);
      Hasher.init(_seed:)();

      String.hash(into:)();
      specialized Optional<A>.hash(into:)(v31, *(v21 + 32));
      result = Hasher._finalize()();
      v22 = ~(-1 << *(v3 + 32));
      for (i = result & v22; ; i = (i + 1) & v22)
      {
        v24 = *(v6 + 8 * (i >> 6));
        if (((1 << i) & v24) == 0)
        {
          break;
        }

        v26 = specialized static MaterialXTarget.== infix(_:_:)(v25, v21);

        if (v26)
        {

          goto LABEL_22;
        }
      }

      *(v6 + 8 * (i >> 6)) = (1 << i) | v24;
      *(*(v3 + 48) + 8 * i) = v21;
      v27 = *(v3 + 16);
      v8 = __OFADD__(v27, 1);
      v28 = v27 + 1;
      if (v8)
      {
        goto LABEL_33;
      }

      *(v3 + 16) = v28;
LABEL_22:
      if (++v19 == v30)
      {
        return v3;
      }
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

void *specialized UserGraph.insertGeomPropGetter(_:outputType:nodeDefStore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  result = GeomPropDef.GeomProp.paramGetterNodeDefName(type:)(a2, *(a1 + 24), *(a1 + 32), *(a1 + 40));
  if (!v4)
  {
    specialized NodeDefStore.createNode(in:nodeDefName:)(result, v9, a3, &v26);
    v90[4] = 0;

    v10 = *(&v26 + 1);
    v90[0] = *(&v26 + 1);
    result = specialized ShaderGraphNode.output(labeled:)(&v28, 0x7865646E69, 0xE500000000000000, *(&v26 + 1));
    v11 = v29;
    if (!v29)
    {
LABEL_10:
      result = specialized ShaderGraphNode.output(labeled:)(&v40, 0x6563617073, 0xE500000000000000, v10);
      v16 = v41;
      if (!v41)
      {
LABEL_25:
        v24 = v27[0];
        *a4 = v26;
        a4[1] = v24;
        *(a4 + 25) = *(v27 + 9);
        return result;
      }

      v56[0] = v40;
      v56[1] = v41;
      v57 = v42;
      v58 = v43;
      v59 = v44;
      if (*(a1 + 41) > 1u)
      {
        if (*(a1 + 41) != 2)
        {

          v72 = v42;
          v21 = &v72;
          goto LABEL_24;
        }

        v18 = 0xE500000000000000;
        v17 = 0x646C726F77;
      }

      else
      {
        if (*(a1 + 41))
        {
          v17 = 0x7463656A626FLL;
        }

        else
        {
          v17 = 0x6C65646F6DLL;
        }

        if (*(a1 + 41))
        {
          v18 = 0xE600000000000000;
        }

        else
        {
          v18 = 0xE500000000000000;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_265F1F670;
      *(v19 + 32) = 7632239;
      *(v19 + 40) = 0xE300000000000000;
      *(v19 + 48) = v16;
      v20 = swift_allocObject();
      *(v20 + 16) = v17;
      *(v20 + 24) = v18;
      *(v20 + 80) = 6;
      *(v20 + 88) = v16;
      swift_retain_n();

      UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], v19, v20, &v45);

      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v82 = v46[0];
      specialized ShaderGraphNode.output(labeled:)(&v47, 7632239, 0xE300000000000000, v46[0]);
      if (v48)
      {
        v52[0] = v47;
        v52[1] = v48;
        v53 = v49;
        v54 = v50;
        v55 = v51;
        UserGraph.connect(_:to:)(v52, v56);

        v75 = v53;
        outlined destroy of String(&v75);
        v77 = v45;
        outlined destroy of NodePersonality(&v77);
        v76 = *(&v45 + 1);
        outlined destroy of [Input](&v76, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        outlined destroy of [Input](&v82, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

        v73 = v57;
        v21 = &v73;
LABEL_24:
        result = outlined destroy of String(v21);
        goto LABEL_25;
      }

      MEMORY[0x266771550](7632239, 0xE300000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      _print_unlocked<A, B>(_:_:)();
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v22 = 14;
      *(v22 + 8) = 0;
      *(v22 + 16) = 0xE000000000000000;
      swift_willThrow();
      v81 = v45;
      outlined destroy of NodePersonality(&v81);
      v80 = *(&v45 + 1);
      outlined destroy of [Input](&v80, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v82, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v74 = v57;
      outlined destroy of String(&v74);
      v79 = v26;
      outlined destroy of NodePersonality(&v79);
      outlined destroy of [Input](v90, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v78 = *&v27[0];
      v23 = &v78;
      return outlined destroy of [Input](v23, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    }

    v64[0] = v28;
    v64[1] = v29;
    v65 = v30;
    v66 = v31;
    v67 = v32;
    if (*(a1 + 56))
    {

      v68 = v30;
      v12 = &v68;
LABEL_9:
      outlined destroy of String(v12);
      goto LABEL_10;
    }

    v13 = *(a1 + 48);
    if (v13 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v13 <= 0x7FFFFFFF)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_265F1F670;
      *(v14 + 32) = 7632239;
      *(v14 + 40) = 0xE300000000000000;
      *(v14 + 48) = v11;
      v15 = swift_allocObject();
      *(v15 + 16) = v13;
      *(v15 + 80) = 2;
      *(v15 + 88) = v11;
      swift_retain_n();
      UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], v14, v15, &v33);

      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v89 = v34[0];
      specialized ShaderGraphNode.output(labeled:)(&v35, 7632239, 0xE300000000000000, v34[0]);
      if (!v36)
      {
        MEMORY[0x266771550](7632239, 0xE300000000000000);
        MEMORY[0x266771550](32, 0xE100000000000000);
        _print_unlocked<A, B>(_:_:)();
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v25 = 14;
        *(v25 + 8) = 0;
        *(v25 + 16) = 0xE000000000000000;
        swift_willThrow();
        v88 = v33;
        outlined destroy of NodePersonality(&v88);
        v87 = *(&v33 + 1);
        outlined destroy of [Input](&v87, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        outlined destroy of [Input](&v89, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

        v70 = v65;
        outlined destroy of String(&v70);
        v86 = v26;
        outlined destroy of NodePersonality(&v86);
        outlined destroy of [Input](v90, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v85 = *&v27[0];
        v23 = &v85;
        return outlined destroy of [Input](v23, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      }

      v60[0] = v35;
      v60[1] = v36;
      v61 = v37;
      v62 = v38;
      v63 = v39;
      UserGraph.connect(_:to:)(v60, v64);

      v71 = v61;
      outlined destroy of String(&v71);
      v84 = v33;
      outlined destroy of NodePersonality(&v84);
      v83 = *(&v33 + 1);
      outlined destroy of [Input](&v83, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v89, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v69 = v65;
      v12 = &v69;
      goto LABEL_9;
    }

    __break(1u);
  }

  return result;
}

Swift::Int specialized _ArrayProtocol.filter(_:)(Swift::Int result, uint64_t *a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v18 = result + 32;
    v4 = MEMORY[0x277D84F90];
    while (v3 < v2)
    {
      v8 = v3;
      if (__OFADD__(v3++, 1))
      {
        goto LABEL_20;
      }

      v10 = *a2;
      if (*(*a2 + 16))
      {
        v11 = v18 + 48 * v8;
        v12 = *v11;
        v13 = *(v11 + 8);
        v14 = *(v11 + 16);
        v21 = *(v11 + 24);
        v19 = *(v11 + 40);
        Hasher.init(_seed:)();
        MEMORY[0x266772770](v21);
        result = Hasher._finalize()();
        v15 = -1 << *(v10 + 32);
        v16 = result & ~v15;
        if ((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
        {
          v17 = ~v15;
          while (*(*(v10 + 48) + 8 * v16) != v21)
          {
            v16 = (v16 + 1) & v17;
            if (((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          outlined copy of NodePersonality(v12);

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1);
          }

          v6 = *(v4 + 16);
          v5 = *(v4 + 24);
          if (v6 >= v5 >> 1)
          {
            result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
          }

          *(v4 + 16) = v6 + 1;
          v7 = v4 + 48 * v6;
          *(v7 + 32) = v12;
          *(v7 + 40) = v13;
          *(v7 + 48) = v14;
          *(v7 + 56) = v21;
          *(v7 + 72) = v19;
        }
      }

LABEL_6:
      if (v3 == v2)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t specialized _ArrayProtocol.filter(_:)(uint64_t result, _OWORD *a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v5 = result + 80;
  v6 = MEMORY[0x277D84F90];
  v28 = result + 80;
  do
  {
    v37 = v6;
    v7 = (v5 + 56 * v4);
    for (i = v4; ; ++i)
    {
      if (i >= v2)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v9 = *(v7 - 5);
      v10 = *(v7 - 4);
      v11 = *(v7 - 3);
      v12 = *(v7 - 2);
      v13 = *(v7 - 8);
      v14 = *v7;
      *&v31 = *(v7 - 6);
      *(&v31 + 1) = v9;
      *&v32 = v10;
      *(&v32 + 1) = v11;
      *&v33 = v12;
      BYTE8(v33) = v13;
      v34 = v14;
      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_18;
      }

      v15 = a2[9];
      v35[8] = a2[8];
      v36[0] = v15;
      *(v36 + 9) = *(a2 + 153);
      v16 = a2[5];
      v35[4] = a2[4];
      v35[5] = v16;
      v17 = a2[7];
      v35[6] = a2[6];
      v35[7] = v17;
      v18 = a2[1];
      v35[0] = *a2;
      v35[1] = v18;
      v19 = a2[3];
      v35[2] = a2[2];
      v35[3] = v19;

      outlined init with copy of UserGraph(v35, v29);
      v20 = UserGraph.edges(from:)(&v31);
      outlined destroy of UserGraph(v35);
      v21 = *(v20 + 16);

      if (v21)
      {
        break;
      }

      v7 += 7;
      if (v4 == v2)
      {
        return v37;
      }
    }

    v6 = v37;
    result = swift_isUniquelyReferenced_nonNull_native();
    v30 = v6;
    if ((result & 1) == 0)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1);
      v6 = v30;
    }

    v5 = v28;
    v23 = *(v6 + 16);
    v22 = *(v6 + 24);
    if (v23 >= v22 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
      v6 = v30;
    }

    *(v6 + 16) = v23 + 1;
    v24 = v6 + 56 * v23;
    v25 = v31;
    v26 = v32;
    v27 = v33;
    *(v24 + 80) = v34;
    *(v24 + 48) = v26;
    *(v24 + 64) = v27;
    *(v24 + 32) = v25;
  }

  while (v4 != v2);
  return v6;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay11ShaderGraph5InputVGSayAH7NodeDefV6IOSpecVGG_AH0H4SpecVs5NeverOTg504_s11f6Graph5h4VAA7ij2V6k6VAA0C4l17VIgggo_AC_AGtAIs5M11OIegnrzr_TRAjoSIgggo_Tf1cn_nTf4ng_n(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, _OWORD *))
{
  v4 = a1;
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v6 >= v5)
  {
    v7 = *(a1 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  v69 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
  v8 = v69;
  v45 = v6;
  v46 = v5;
  v43 = a2;
  v44 = v4;
  if (v7)
  {
    v56 = v69;

    if (v5)
    {
      v10 = (a2 + 32);
      v55 = v7 - 1;
      v57 = (v4 + 80);
      v58 = v6;
      for (i = v5; i; --i)
      {
        if (!v58)
        {
          break;
        }

        v11 = *(v57 - 5);
        v61 = *(v57 - 6);
        v12 = *(v57 - 3);
        v84 = *(v57 - 4);
        v62 = *(v57 - 2);
        v54 = *v57;
        v13 = *(v57 - 8);
        v14 = v10[1];
        v64 = *v10;
        v65 = v14;
        *v66 = v10[2];
        *&v66[9] = *(v10 + 41);
        v63[0] = v13;
        v15 = v64;
        v16 = v14;
        v17 = *v66;
        v60 = *&v66[16];
        v59 = v66[24];

        result = outlined init with copy of NodeDef.IOSpec(&v64, v73);
        if (!v11)
        {
          break;
        }

        v49 = v10;
        v75[0] = v61;
        v75[1] = v11;
        v75[2] = v84;
        v75[3] = v12;
        v75[4] = v62;
        v76 = v63[0];
        v79 = 0;
        v78 = 0;
        v77 = 0;
        v80 = v54;
        v81[0] = v15;
        v81[1] = v16;
        v81[2] = v17;
        v82 = v60;
        v83 = v59;
        v18 = a3(v75, v81);
        v52 = v19;
        v53 = v18;
        v51 = v20;
        *&v64 = v61;
        *(&v64 + 1) = v11;
        *&v65 = v84;
        *(&v65 + 1) = v12;
        *v66 = v62;
        v66[8] = v63[0];
        v66[15] = 0;
        *&v66[13] = 0;
        *&v66[9] = 0;
        *&v66[16] = v54;
        *&v66[24] = v15;
        v67 = v16;
        *v68 = v17;
        *&v68[16] = v60;
        v68[24] = v59;
        result = outlined destroy of [Input](&v64, &_s11ShaderGraph5InputV_AA7NodeDefV6IOSpecVtMd, &_s11ShaderGraph5InputV_AA7NodeDefV6IOSpecVtMR);
        v8 = v56;
        v69 = v56;
        v22 = *(v56 + 16);
        v21 = *(v56 + 24);
        if (v22 >= v21 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
          v8 = v69;
        }

        *(v8 + 16) = v22 + 1;
        v23 = (v8 + 24 * v22);
        v23[4] = v53;
        v23[5] = v52;
        v23[6] = v51;
        if (!v55)
        {
          v4 = v44;
          if (v5 > v6)
          {
            goto LABEL_17;
          }

          goto LABEL_26;
        }

        v56 = v8;
        v57 += 7;
        --v55;
        v10 = v49 + 4;
        --v58;
      }
    }
  }

  else
  {

    if (v5 <= v6)
    {
LABEL_26:

      return v8;
    }

LABEL_17:
    v24 = (v4 + 56 * v7 + 80);
    v25 = (v43 + (v7 << 6) + 32);
    while (v7 < v5)
    {
      v26 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_28;
      }

      if (v6 == v7)
      {
        goto LABEL_26;
      }

      v27 = *(v24 - 6);
      result = *(v24 - 5);
      v28 = *(v24 - 4);
      v29 = *(v24 - 3);
      v30 = *(v24 - 2);
      v31 = *(v24 - 8);
      v32 = *v24;
      v70[0] = v27;
      v70[1] = result;
      v70[2] = v28;
      v70[3] = v29;
      v70[4] = v30;
      v71 = v31;
      v72 = v32;
      if (v7 >= v6)
      {
        goto LABEL_29;
      }

      v33 = v25[1];
      v73[0] = *v25;
      v73[1] = v33;
      v74[0] = v25[2];
      *(v74 + 9) = *(v25 + 41);
      if (__OFADD__(v7, 1))
      {
        goto LABEL_30;
      }

      v47 = v7;
      v34 = v25[1];
      *&v66[24] = *v25;
      *&v64 = v27;
      *(&v64 + 1) = result;
      *&v65 = v28;
      *(&v65 + 1) = v29;
      *v66 = v30;
      v66[8] = v31;
      *&v66[16] = v32;
      v67 = v34;
      *v68 = v25[2];
      *&v68[9] = *(v25 + 41);

      outlined init with copy of NodeDef.IOSpec(v73, v63);
      v35 = a3(v70, v73);
      v37 = v36;
      v39 = v38;
      result = outlined destroy of [Input](&v64, &_s11ShaderGraph5InputV_AA7NodeDefV6IOSpecVtMd, &_s11ShaderGraph5InputV_AA7NodeDefV6IOSpecVtMR);
      v69 = v8;
      v41 = *(v8 + 16);
      v40 = *(v8 + 24);
      if (v41 >= v40 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1);
        v8 = v69;
      }

      *(v8 + 16) = v41 + 1;
      v42 = (v8 + 24 * v41);
      v42[4] = v35;
      v42[5] = v37;
      v42[6] = v39;
      v5 = v46;
      v7 = v47 + 1;
      v24 += 7;
      v25 += 4;
      v6 = v45;
      if (v26 == v46)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11ShaderGraph11DebugConfigO5GroupO_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11ShaderGraph11DebugConfigO5GroupOGMd, &_ss11_SetStorageCy11ShaderGraph11DebugConfigO5GroupOGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v33 = v1;
    v34 = a1 + 32;
    while (1)
    {
      v6 = *(v34 + v4);
      v35 = v4 + 1;
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        do
        {
          v13 = *(*(v3 + 48) + v9);
          if (v13 > 4)
          {
            if (*(*(v3 + 48) + v9) <= 6u)
            {
              if (v13 == 5)
              {
                v18 = 0x6E69686374697473;
              }

              else
              {
                v18 = 0x446C616D696E696DLL;
              }

              if (v13 == 5)
              {
                v19 = 0xEE00687061724767;
              }

              else
              {
                v19 = 0xEA0000000000746FLL;
              }

              if (v6 > 4)
              {
                goto LABEL_56;
              }
            }

            else if (v13 == 7)
            {
              v19 = 0xE800000000000000;
              v18 = 0x6870617247697061;
              if (v6 > 4)
              {
                goto LABEL_56;
              }
            }

            else if (v13 == 8)
            {
              v18 = 0xD000000000000011;
              v19 = 0x8000000265F2BCB0;
              if (v6 > 4)
              {
                goto LABEL_56;
              }
            }

            else
            {
              v18 = 0xD00000000000001ALL;
              v19 = 0x8000000265F2BCD0;
              if (v6 > 4)
              {
                goto LABEL_56;
              }
            }
          }

          else
          {
            v14 = 0x62694C6C6174656DLL;
            if (v13 == 3)
            {
              v14 = 7630692;
            }

            v15 = 0xEC00000079726172;
            if (v13 == 3)
            {
              v15 = 0xE300000000000000;
            }

            if (v13 == 2)
            {
              v14 = 0x65766968637261;
              v15 = 0xE700000000000000;
            }

            v16 = 0x7972616D6D7573;
            if (!*(*(v3 + 48) + v9))
            {
              v16 = 1701736302;
            }

            v17 = 0xE400000000000000;
            if (*(*(v3 + 48) + v9))
            {
              v17 = 0xE700000000000000;
            }

            if (*(*(v3 + 48) + v9) <= 1u)
            {
              v18 = v16;
            }

            else
            {
              v18 = v14;
            }

            if (*(*(v3 + 48) + v9) <= 1u)
            {
              v19 = v17;
            }

            else
            {
              v19 = v15;
            }

            if (v6 > 4)
            {
LABEL_56:
              v24 = 0xD00000000000001ALL;
              if (v6 == 8)
              {
                v24 = 0xD000000000000011;
              }

              v25 = 0x8000000265F2BCD0;
              if (v6 == 8)
              {
                v25 = 0x8000000265F2BCB0;
              }

              if (v6 == 7)
              {
                v24 = 0x6870617247697061;
                v25 = 0xE800000000000000;
              }

              v26 = 0x6E69686374697473;
              if (v6 != 5)
              {
                v26 = 0x446C616D696E696DLL;
              }

              v27 = 0xEE00687061724767;
              if (v6 != 5)
              {
                v27 = 0xEA0000000000746FLL;
              }

              if (v6 <= 6)
              {
                v28 = v26;
              }

              else
              {
                v28 = v24;
              }

              if (v6 <= 6)
              {
                v23 = v27;
              }

              else
              {
                v23 = v25;
              }

              if (v18 != v28)
              {
                goto LABEL_74;
              }

              goto LABEL_73;
            }
          }

          if (v6 <= 1)
          {
            if (v6)
            {
              v23 = 0xE700000000000000;
              if (v18 != 0x7972616D6D7573)
              {
                goto LABEL_74;
              }
            }

            else
            {
              v23 = 0xE400000000000000;
              if (v18 != 1701736302)
              {
                goto LABEL_74;
              }
            }
          }

          else
          {
            v20 = 0x62694C6C6174656DLL;
            if (v6 == 3)
            {
              v20 = 7630692;
            }

            v21 = 0xEC00000079726172;
            if (v6 == 3)
            {
              v21 = 0xE300000000000000;
            }

            if (v6 == 2)
            {
              v22 = 0x65766968637261;
            }

            else
            {
              v22 = v20;
            }

            if (v6 == 2)
            {
              v23 = 0xE700000000000000;
            }

            else
            {
              v23 = v21;
            }

            if (v18 != v22)
            {
              goto LABEL_74;
            }
          }

LABEL_73:
          if (v19 == v23)
          {

            goto LABEL_4;
          }

LABEL_74:
          v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v29)
          {
            goto LABEL_4;
          }

          v9 = (v9 + 1) & v8;
          v10 = v9 >> 6;
          v11 = *(v5 + 8 * (v9 >> 6));
          v12 = 1 << v9;
        }

        while ((v11 & (1 << v9)) != 0);
      }

      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v30 = *(v3 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      *(v3 + 16) = v32;
LABEL_4:
      v4 = v35;
      if (v35 == v33)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11ShaderGraph5InputV_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11ShaderGraph5InputVGMd, &_ss11_SetStorageCy11ShaderGraph5InputVGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v36 = a1 + 32;
    v38 = v1;
    while (1)
    {
      v7 = (v36 + 56 * v4);
      v8 = *v7;
      v9 = v7[1];
      v10 = v7[2];
      v11 = v7[3];
      v39 = v7[4];
      v40 = *(v7 + 40);
      v41 = v7[6];
      Hasher.init(_seed:)();
      v47 = v8;
      MEMORY[0x266772770](v8);
      v12 = *(*v9 + 120);

      v45 = v9;
      v12(v48);
      v42 = v10;
      v43 = v11;
      String.hash(into:)();
      if (v40 == 1)
      {
        Hasher._combine(_:)(0);
        v13 = v39;
      }

      else
      {
        Hasher._combine(_:)(1u);
        v13 = v39;
        MEMORY[0x266772770](v39);
      }

      MEMORY[0x266772770](v41);
      result = Hasher._finalize()();
      v15 = -1 << *(v3 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      v18 = *(v5 + 8 * (v16 >> 6));
      v19 = 1 << v16;
      v6 = v38;
      if (((1 << v16) & v18) != 0)
      {
        break;
      }

LABEL_34:
      *(v5 + 8 * v17) = v18 | v19;
      v32 = *(v3 + 48) + 56 * v16;
      *v32 = v47;
      *(v32 + 8) = v45;
      *(v32 + 16) = v42;
      *(v32 + 24) = v43;
      *(v32 + 32) = v13;
      *(v32 + 40) = v40;
      *(v32 + 48) = v41;
      v33 = *(v3 + 16);
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v35;
LABEL_4:
      if (++v4 == v6)
      {
        return v3;
      }
    }

    v37 = v4;
    v20 = ~v15;
    while (1)
    {
      v21 = *(v3 + 48) + 56 * v16;
      if (*v21 == v47)
      {
        v22 = v5;
        v23 = *(v21 + 16);
        v24 = *(v21 + 24);
        v44 = *(v21 + 32);
        v25 = *(v21 + 40);
        v46 = *(v21 + 48);
        v26 = *(**(v21 + 8) + 128);

        if (v26(v45))
        {
          if (v23 == v42 && v24 == v43)
          {

            v5 = v22;
            if ((v25 & 1) == 0)
            {
LABEL_25:
              v30 = v40 ^ 1;
              if (v44 != v39)
              {
                v30 = 0;
              }

              if (v30 == 1 && v46 == v41)
              {
LABEL_3:

                v4 = v37;
                v6 = v38;
                goto LABEL_4;
              }

              goto LABEL_11;
            }

            goto LABEL_20;
          }

          v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v5 = v22;
          if (v28)
          {
            if ((v25 & 1) == 0)
            {
              goto LABEL_25;
            }

LABEL_20:
            v29 = v40;
            if (v46 != v41)
            {
              v29 = 0;
            }

            if (v29)
            {
              goto LABEL_3;
            }
          }
        }

        else
        {

          v5 = v22;
        }
      }

LABEL_11:
      v16 = (v16 + 1) & v20;
      v17 = v16 >> 6;
      v18 = *(v5 + 8 * (v16 >> 6));
      v19 = 1 << v16;
      if ((v18 & (1 << v16)) == 0)
      {
        v4 = v37;
        v6 = v38;
        v13 = v39;
        goto LABEL_34;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t a4, char **a5, __int128 *a6, char **a7, __int128 *a8)
{
  v99 = a4;
  v71 = *(result + 16);
  if (v71)
  {
    v10 = 0;
    v70 = result + 32;
    do
    {
      v11 = v70 + 112 * v10;
      v12 = *(v11 + 80);
      v94 = *(v11 + 64);
      v95 = v12;
      v13 = *(v11 + 96);
      v14 = *(v11 + 16);
      v93[0] = *v11;
      v93[1] = v14;
      v15 = *(v11 + 48);
      v93[2] = *(v11 + 32);
      v93[3] = v15;
      v16 = *a2;
      v17 = *(&v15 + 1);
      v18 = *(v11 + 72);
      v96 = v13;
      v97 = v18;
      v19 = *(v11 + 88);
      v92 = *(v11 + 104);
      v89 = __PAIR128__(v94, v17);
      v90 = *(v11 + 72);
      v91 = v19;
      if (*(v16 + 16) && (Hasher.init(_seed:)(), MEMORY[0x266772770](v17), v20 = Hasher._finalize()(), v21 = v16 + 56, v22 = -1 << *(v16 + 32), v23 = v20 & ~v22, ((*(v16 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0))
      {
        v24 = ~v22;
        v25 = *(v16 + 48);
        do
        {
          v26 = *(v25 + 8 * v23);
          v27 = v26 == v17;
          if (v26 == v17)
          {
            break;
          }

          v23 = (v23 + 1) & v24;
        }

        while (((*(v21 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0);
      }

      else
      {
        v27 = 0;
      }

      v28 = *a3;
      if (*(*a3 + 16) && (Hasher.init(_seed:)(), MEMORY[0x266772770](v17), v29 = Hasher._finalize()(), v30 = v28 + 56, v31 = -1 << *(v28 + 32), v32 = v29 & ~v31, ((*(v28 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0))
      {
        v33 = ~v31;
        v34 = *(v28 + 48);
        do
        {
          v35 = *(v34 + 8 * v32);
          v36 = v35 == v17;
          if (v35 == v17)
          {
            break;
          }

          v32 = (v32 + 1) & v33;
        }

        while (((*(v30 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0);
      }

      else
      {
        v36 = 0;
      }

      v98[0] = v97;

      outlined init with copy of String(v98, &v80);

      outlined init with copy of String(v98, &v80);
      outlined init with copy of Edge(v93, &v80);
      UserGraph.remove(_:)(v93);
      if (v27)
      {
        if (v36)
        {
          v37 = *a6;
          v88 = a6[1];
          v38 = a6[1];
          v39 = a6[2];
          v76 = v37;
          v77 = v38;
          v78 = v39;
          *v79 = *(a6 + 6);
          *&v79[40] = v91;
          *&v79[24] = v90;
          *&v79[8] = v89;
          *&v79[56] = v92;
          v80 = v37;
          v81 = v38;
          v85 = *&v79[32];
          v86 = *&v79[48];
          v83 = *v79;
          v84 = *&v79[16];
          v82 = v39;
          v40 = *a5;

          outlined init with copy of String(&v88, &v76);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *a5 = v40;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v40 + 2) + 1, 1, v40);
            *a5 = v40;
          }

          v43 = *(v40 + 2);
          v42 = *(v40 + 3);
          if (v43 >= v42 >> 1)
          {
            v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v40);
            *a5 = v40;
          }

          *(v40 + 2) = v43 + 1;
          v44 = &v40[112 * v43];
          v45 = v80;
          v46 = v82;
          *(v44 + 3) = v81;
          *(v44 + 4) = v46;
          *(v44 + 2) = v45;
          v47 = v83;
          v48 = v84;
          v49 = v86;
          *(v44 + 7) = v85;
          *(v44 + 8) = v49;
          *(v44 + 5) = v47;
          *(v44 + 6) = v48;
          v50 = *a8;
          v87 = a8[1];
          v51 = a8[1];
          v52 = a8[2];
          v74[0] = v50;
          v74[1] = v51;
          v74[2] = v52;
          *v75 = *(a8 + 6);
          *&v75[40] = v91;
          *&v75[24] = v90;
          *&v75[8] = v89;
          *&v75[56] = v92;
          v76 = v50;
          v77 = v51;
          *&v79[32] = *&v75[32];
          *&v79[48] = *&v75[48];
          *v79 = *v75;
          *&v79[16] = *&v75[16];
          v78 = v52;
          v53 = *a7;

          outlined init with copy of String(&v87, v74);
          v54 = swift_isUniquelyReferenced_nonNull_native();
          *a7 = v53;
          if ((v54 & 1) == 0)
          {
            v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v53 + 2) + 1, 1, v53);
            *a7 = v53;
          }

          v56 = *(v53 + 2);
          v55 = *(v53 + 3);
          if (v56 >= v55 >> 1)
          {
            v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v53);
            *a7 = v53;
          }

          *(v53 + 2) = v56 + 1;
          v57 = &v53[112 * v56];
          v58 = v76;
          v59 = v78;
          *(v57 + 3) = v77;
          *(v57 + 4) = v59;
          *(v57 + 2) = v58;
          v60 = *v79;
          v61 = *&v79[16];
          v62 = *&v79[48];
          *(v57 + 7) = *&v79[32];
          *(v57 + 8) = v62;
          *(v57 + 5) = v60;
          *(v57 + 6) = v61;
          goto LABEL_4;
        }

        outlined destroy of String(v98);

        outlined destroy of String(v98);
        v63 = a6;
      }

      else
      {

        outlined destroy of String(v98);

        outlined destroy of String(v98);
        if (!v36)
        {
          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v64 = type metadata accessor for Logger();
          __swift_project_value_buffer(v64, logger);
          v65 = Logger.logObject.getter();
          v66 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            *v67 = 0;
            _os_log_impl(&dword_265D7D000, v65, v66, "Edge destination node isn't a surface node or geometry modifier node.", v67, 2u);
            MEMORY[0x266773120](v67, -1, -1);
          }

          goto LABEL_4;
        }

        v63 = a8;
      }

      UserGraph.connect(_:to:)(v63, &v89);
LABEL_4:
      result = outlined destroy of Edge(v93);
      ++v10;
    }

    while (v10 != v71);
  }

  return result;
}

uint64_t *specialized UserGraph.splitSharedNodes(nodeDefStore:surfaceShader:geometryModifier:)(uint64_t *result, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = result;
    v47 = *a2;
    v48 = v4;
    v49[0] = *(a2 + 16);
    *(v49 + 9) = *(a2 + 25);
    v6 = v3[8];
    v7 = v3[9];
    v8 = v3[6];
    v53[9] = v3[7];
    v53[10] = v6;
    v54[0] = v7;
    *(v54 + 9) = *(v3 + 153);
    v9 = v3[5];
    v53[6] = v3[4];
    v53[7] = v9;
    v53[8] = v8;
    v10 = v3[1];
    v53[2] = *v3;
    v53[3] = v10;
    v11 = v3[3];
    v53[4] = v3[2];
    v53[5] = v11;
    outlined copy of NodePersonality(v47);

    UserGraph.connectedBreathFirstUpstreamSubgraph(rootedAt:)(v5, v52);
    v12 = *&v52[0];

    v13 = v3[9];
    v52[8] = v3[8];
    v53[0] = v13;
    *(v53 + 9) = *(v3 + 153);
    v14 = v3[5];
    v52[4] = v3[4];
    v52[5] = v14;
    v15 = v3[7];
    v52[6] = v3[6];
    v52[7] = v15;
    v16 = v3[1];
    v52[0] = *v3;
    v52[1] = v16;
    v17 = v3[3];
    v52[2] = v3[2];
    v52[3] = v17;
    UserGraph.connectedBreathFirstUpstreamSubgraph(rootedAt:)(&v47, &v43);
    v18 = v43;

    v19 = *(v18 + 16);
    if (v19)
    {
      v43 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19, 0);
      v20 = v43;
      v21 = *(v43 + 16);
      v22 = 56;
      do
      {
        v23 = *(v18 + v22);
        v43 = v20;
        v24 = *(v20 + 24);
        if (v21 >= v24 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v21 + 1, 1);
          v20 = v43;
        }

        *(v20 + 16) = v21 + 1;
        *(v20 + 8 * v21 + 32) = v23;
        v22 += 48;
        ++v21;
        --v19;
      }

      while (v19);
    }

    else
    {

      v20 = MEMORY[0x277D84F90];
    }

    v25 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11ShaderGraph0bC4NodeV2IDV_SayAHGTt0g5Tf4g_n(v20);

    v42 = v25;
    v26 = *(v12 + 16);
    v27 = MEMORY[0x277D84F90];
    if (v26)
    {
      v43 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 0);
      v28 = v43;
      v29 = (v12 + 56);
      v30 = *(v43 + 16);
      do
      {
        v32 = *v29;
        v29 += 6;
        v31 = v32;
        v43 = v28;
        v33 = *(v28 + 24);
        if (v30 >= v33 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v30 + 1, 1);
          v28 = v43;
        }

        *(v28 + 16) = v30 + 1;
        *(v28 + 8 * v30++ + 32) = v31;
        --v26;
      }

      while (v26);
    }

    else
    {
      v28 = MEMORY[0x277D84F90];
    }

    v34 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11ShaderGraph0bC4NodeV2IDV_SayAHGTt0g5Tf4g_n(v28);

    v41 = v34;
    v35 = specialized _ArrayProtocol.filter(_:)(v12, &v42);

    v39 = v27;
    v40 = v27;
    v36 = *(v35 + 16);
    if (v36)
    {
      v37 = v35 + 40;
      do
      {
        v38 = *(v37 + 32);
        v43 = *(v37 - 8);
        v44 = *v37;
        v45 = *(v37 + 16);
        LOBYTE(v46) = v38;
        closure #2 in UserGraph.splitSharedNodes(nodeDefStore:surfaceShader:geometryModifier:)(&v43, v3, &v41, &v42, &v40, &v39);
        v37 += 48;
        --v36;
      }

      while (v36);
    }

    v50 = v47;
    outlined destroy of NodePersonality(&v50);
    v51 = v48;
    outlined destroy of [Input](&v51, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v43 = *&v49[0];
    outlined destroy of [Input](&v43, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  }

  return result;
}

unint64_t *specialized closure #1 in UserGraph.mapStringInputs(nodeDefStore:)(unint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (*result >> 61 == 5)
  {
    v5 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v4 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

    v6._countAndFlagsBits = 0x736E6172745F444ELL;
    v6._object = 0xEC0000006D726F66;
    if (String.hasPrefix(_:)(v6) || (v7._object = 0x8000000265F315D0, v7._countAndFlagsBits = 0xD000000000000020, String.hasPrefix(_:)(v7)))
    {
      if (*(a2 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v4), (v9 & 1) != 0))
      {
        v10 = v8;

        v12 = *(*(a2 + 56) + 152 * v10 + 128);
        MEMORY[0x28223BE20](v11);

        _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay11ShaderGraph5InputVGSayAH7NodeDefV6IOSpecVGG_AH0H4SpecVs5NeverOTg504_s11f6Graph5h4VAA7ij2V6k6VAA0C4l17VIgggo_AC_AGtAIs5M11OIegnrzr_TRAjoSIgggo_Tf1cn_nTf4ng_n(v13, v12, partial apply for closure #1 in closure #1 in UserGraph.mapStringInputs(nodeDefStore:));
      }

      else
      {
        _StringGuts.grow(_:)(49);

        MEMORY[0x266771550](v5, v4);

        MEMORY[0x266771550](0x6F6E20726F662027, 0xEC00000027206564);
        v14 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266771550](v14);

        MEMORY[0x266771550](1701080942, 0xE400000000000000);

        MEMORY[0x266771550](39, 0xE100000000000000);
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v15 = 28;
        *(v15 + 8) = 0xD000000000000020;
        *(v15 + 16) = 0x8000000265F315A0;
        return swift_willThrow();
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t specialized closure #1 in closure #1 in UserGraph.insertMaterialXDefaultValues(nodeDefStore:)(__int128 *a1, __int128 *a2, __int128 *a3, _OWORD *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v115 = a5;
  v13 = *a1;
  v14 = a1[1];
  v15 = a1[2];
  v110 = *(a1 + 6);
  v109[1] = v14;
  v109[2] = v15;
  v109[0] = v13;
  v16 = v14;
  NodeDef.subscript.getter(v14, *(&v14 + 1), v74);
  if (!v75)
  {
    v72 = 0;
    v73 = 0xE000000000000000;
    MEMORY[0x266771550](v16, *(&v16 + 1));
    MEMORY[0x266771550](32, 0xE100000000000000);
    v27 = a2[7];
    v68 = a2[6];
    v69 = v27;
    v70 = a2[8];
    v71 = *(a2 + 18);
    v28 = a2[3];
    *&v64[16] = a2[2];
    v65 = v28;
    v29 = a2[5];
    v66 = a2[4];
    v67 = v29;
    v30 = a2[1];
    v63 = *a2;
    *v64 = v30;
    _print_unlocked<A, B>(_:_:)();
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v31 = 13;
    *(v31 + 8) = 0;
    *(v31 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  v96 = v76;
  v97 = v77;
  if (!(*(&v76 + 1) | *(&v77 + 1)))
  {
    goto LABEL_41;
  }

  type metadata accessor for MaterialXDataType();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
    v72 = 0;
    v73 = 0xE000000000000000;
    v33 = a1[1];
    v63 = *a1;
    *v64 = v33;
    *&v64[16] = a1[2];
    *&v65 = *(a1 + 6);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x266771550](32, 0xE100000000000000);
    v34 = a3[1];
    v63 = *a3;
    *v64 = v34;
    *&v64[9] = *(a3 + 25);
    _print_unlocked<A, B>(_:_:)();
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v35 = 42;
    *(v35 + 8) = 0;
    *(v35 + 16) = 0xE000000000000000;
    swift_willThrow();
LABEL_41:
    v53 = &_s11ShaderGraph7NodeDefV6IOSpecVSgMd;
    v54 = &_s11ShaderGraph7NodeDefV6IOSpecVSgMR;
    v55 = v74;
    return outlined destroy of [Input](v55, v53, v54);
  }

  v18 = v17;
  v19 = a4[9];
  v113[8] = a4[8];
  v114[0] = v19;
  *(v114 + 9) = *(a4 + 153);
  v20 = a4[5];
  v113[4] = a4[4];
  v113[5] = v20;
  v21 = a4[7];
  v113[6] = a4[6];
  v113[7] = v21;
  v22 = a4[1];
  v113[0] = *a4;
  v113[1] = v22;
  v23 = a4[3];
  v113[2] = a4[2];
  v113[3] = v23;

  outlined init with copy of [Input](&v97, &v63, &_sSSSgMd, &_sSSSgMR);
  outlined init with copy of [Input](&v96, &v63, &_sSSSgMd, &_sSSSgMR);
  outlined init with copy of UserGraph(v113, &v63);
  UserGraph.output(connectedTo:)(v109, v78);
  outlined destroy of UserGraph(v113);
  if (!v78[1])
  {
    goto LABEL_8;
  }

  v93 = v79;
  v94 = v80;
  v95 = v81;
  if (v78[0] == -7)
  {

    v98 = v79;
    v24 = &v98;
LABEL_7:
    outlined destroy of String(v24);
LABEL_8:
    v25 = *(&v96 + 1);
    if (*(&v96 + 1))
    {
      v26 = v96;

      outlined destroy of [Input](&v97, &_sSSSgMd, &_sSSSgMR);
      UserGraph.insertMaterialXDefaultValue(_:ofType:toFeedInput:)(v26, v25, v18, v109);
      if (!v7)
      {

        outlined destroy of [Input](v74, &_s11ShaderGraph7NodeDefV6IOSpecVSgMd, &_s11ShaderGraph7NodeDefV6IOSpecVSgMR);
        v53 = &_sSSSgMd;
        v54 = &_sSSSgMR;
        v55 = &v96;
        return outlined destroy of [Input](v55, v53, v54);
      }

      outlined destroy of [Input](&v96, &_sSSSgMd, &_sSSSgMR);
      goto LABEL_37;
    }

    v40 = *(&v97 + 1);
    if (*(&v97 + 1))
    {
      v41 = v97;
      if (*(a6 + 16) && (v42 = specialized __RawDictionaryStorage.find<A>(_:)(v97, *(&v97 + 1)), (v43 & 1) != 0))
      {
        v44 = v42;

        outlined destroy of [Input](&v97, &_sSSSgMd, &_sSSSgMR);
        v45 = (*(a6 + 56) + (v44 << 6));
        v47 = v45[1];
        v46 = v45[2];
        v48 = *v45;
        *(v112 + 9) = *(v45 + 41);
        v111[1] = v47;
        v112[0] = v46;
        v111[0] = v48;
        outlined init with copy of GeomPropDef(v111, &v63);
        specialized UserGraph.insertGeomPropGetter(_:outputType:nodeDefStore:)(v111, v18, v115, &v82);
        if (v7)
        {

          v49 = &_s11ShaderGraph7NodeDefV6IOSpecVSgMd;
          v50 = &_s11ShaderGraph7NodeDefV6IOSpecVSgMR;
          v51 = v74;
LABEL_32:
          outlined destroy of [Input](v51, v49, v50);
          return outlined destroy of GeomPropDef(v111);
        }

        v108 = v83[0];
        specialized ShaderGraphNode.output(labeled:)(&v84, 7632239, 0xE300000000000000, v83[0]);
        if (!v85)
        {
          v72 = 0;
          v73 = 0xE000000000000000;
          MEMORY[0x266771550](7632239, 0xE300000000000000);
          MEMORY[0x266771550](32, 0xE100000000000000);
          v63 = v82;
          *v64 = *v83;
          *&v64[9] = *(&v83[1] + 1);
          _print_unlocked<A, B>(_:_:)();
          v58 = v72;
          v59 = v73;
          lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
          swift_allocError();
          *v60 = 14;
          *(v60 + 8) = v58;
          *(v60 + 16) = v59;
          swift_willThrow();

          outlined destroy of [Input](v74, &_s11ShaderGraph7NodeDefV6IOSpecVSgMd, &_s11ShaderGraph7NodeDefV6IOSpecVSgMR);
          v107 = v82;
          outlined destroy of NodePersonality(&v107);
          v106 = *(&v82 + 1);
          outlined destroy of [Input](&v106, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v49 = &_sSay11ShaderGraph6OutputVGMd;
          v50 = &_sSay11ShaderGraph6OutputVGMR;
          v51 = &v108;
          goto LABEL_32;
        }

        v89[0] = v84;
        v89[1] = v85;
        v90 = v86;
        v91 = v87;
        v92 = v88;
        UserGraph.connect(_:to:)(v89, v109);

        v103 = v90;
        outlined destroy of String(&v103);
        v105 = v82;
        outlined destroy of NodePersonality(&v105);
        v104 = *(&v82 + 1);
        outlined destroy of [Input](&v104, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        outlined destroy of [Input](&v108, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        outlined destroy of GeomPropDef(v111);
      }

      else
      {
        v63 = v16;
        MEMORY[0x266771550](32, 0xE100000000000000);
        MEMORY[0x266771550](v41, v40);
        outlined destroy of [Input](&v97, &_sSSSgMd, &_sSSSgMR);
        v56 = v63;
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v57 = 17;
        *(v57 + 8) = v56;
        swift_willThrow();
      }

LABEL_37:

      goto LABEL_41;
    }

LABEL_40:

    goto LABEL_41;
  }

  if ((v78[0] & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_48;
  }

  v36 = *(a4 + 8);
  if (v78[0] >= *(v36 + 16))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v37 = v36 + 48 * v78[0];
  v61 = *(v37 + 56);
  v62 = *(v37 + 32);
  outlined copy of NodePersonality(v62);
  v38 = one-time initialization token for string;

  if (v38 != -1)
  {
LABEL_49:
    swift_once();
  }

  if ((MaterialXDataType.isEqual(to:)(static MaterialXDataType.string) & 1) == 0 && !*(v18 + 24))
  {

    outlined destroy of [Input](&v97, &_sSSSgMd, &_sSSSgMR);
    outlined destroy of [Input](&v96, &_sSSSgMd, &_sSSSgMR);

    v102 = v79;
    outlined destroy of String(&v102);
    outlined consume of NodePersonality(v62);

    goto LABEL_40;
  }

  if (v62 >> 61 || *(v62 + 80) != 6)
  {
    outlined consume of NodePersonality(v62);

    v100 = v79;
    v52 = &v100;
LABEL_34:
    outlined destroy of String(v52);
    outlined destroy of [Input](&v97, &_sSSSgMd, &_sSSSgMR);
    outlined destroy of [Input](&v96, &_sSSSgMd, &_sSSSgMR);
    outlined destroy of [Input](v74, &_s11ShaderGraph7NodeDefV6IOSpecVSgMd, &_s11ShaderGraph7NodeDefV6IOSpecVSgMR);
  }

  if ((*(v62 + 16) || *(v62 + 24) != 0xE000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    outlined consume of NodePersonality(v62);

    v99 = v79;
    v52 = &v99;
    goto LABEL_34;
  }

  specialized UserGraph.removeEdges(connectedTo:)(v61);
  v39 = *(a4 + 8);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 8) = v39;
  if (result)
  {
    if ((v61 & 0x8000000000000000) == 0)
    {
      goto LABEL_25;
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v39);
  v39 = result;
  *(a4 + 8) = result;
  if ((v61 & 0x8000000000000000) != 0)
  {
    goto LABEL_51;
  }

LABEL_25:
  if (v61 < *(v39 + 16))
  {
    ShaderGraphNode.update(id:)(-7);
    outlined consume of NodePersonality(v62);

    v101 = v93;
    v24 = &v101;
    goto LABEL_7;
  }

LABEL_52:
  __break(1u);
  return result;
}

unint64_t specialized UserGraph.removePassthroughNodes(nodeDefStore:)(unint64_t result)
{
  v6 = v2;
  v7 = v1[8];
  v8 = *(v7 + 16);
  if (!v8)
  {
    return result;
  }

  v9 = result;

  v10 = 0;
  v11 = v7;
  while (2)
  {
    while (2)
    {
      for (i = 48 * v10; ; i += 48)
      {
        if (v10 >= v8)
        {
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v13 = v7 + i;
        v5 = *(v7 + i + 56);
        if (v5 != -7)
        {
          break;
        }

        v14 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_37;
        }

        ++v10;
        if (v14 >= v8)
        {
        }
      }

      if (__OFADD__(v10++, 1))
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      result = *(v13 + 32);
      if (result >> 61 != 5)
      {
LABEL_27:
        if (v10 < v8)
        {
          continue;
        }
      }

      break;
    }

    v50 = v11;
    v51 = v6;
    v56 = v1;
    v16 = *(v13 + 40);
    v17 = *(v13 + 48);
    v48 = *(v13 + 64);
    v49 = *(v13 + 72);
    v19 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v18 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v52 = *(v13 + 32);
    v53 = *(v9 + 16);
    outlined copy of NodePersonality(result);
    v105 = v16;

    v55 = v17;

    if (!v53 || (v20 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v18), (v21 & 1) == 0))
    {
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v36 = 28;
      *(v36 + 8) = v19;
      *(v36 + 16) = v18;
      swift_willThrow();
      outlined consume of NodePersonality(v52);

LABEL_35:
    }

    v22 = v20;

    v54 = v9;
    v23 = *(v9 + 56) + 152 * v22;
    v4 = *(v23 + 16);
    v3 = *(v23 + 24);
    v24 = one-time initialization token for passthroughNodeNames;

    if (v24 != -1)
    {
      swift_once();
    }

    rawValue = passthroughNodeNames._rawValue;
    v6 = v51;
    if (!*(passthroughNodeNames._rawValue + 2))
    {
      outlined consume of NodePersonality(v52);

      goto LABEL_31;
    }

    v4 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v3);
    v27 = v26;

    if ((v27 & 1) == 0)
    {
      outlined consume of NodePersonality(v52);
LABEL_31:

      v1 = v56;
      v9 = v54;
      v11 = v50;
      if (v10 < v8)
      {
        continue;
      }
    }

    break;
  }

  v28 = (rawValue[7] + 16 * v4);
  v3 = *v28;
  v4 = v28[1];
  v11 = v105;
  specialized ShaderGraphNode.output(labeled:)(&v65, *v28, v4, v105);
  if (!v66)
  {
LABEL_38:
    v63 = 0;
    v64 = 0xE000000000000000;

    MEMORY[0x266771550](v3, v4);
    MEMORY[0x266771550](32, 0xE100000000000000);
    v57 = v52;
    v58 = v11;
    v59 = v55;
    v60 = v5;
    v61 = v48;
    v62 = v49;
    _print_unlocked<A, B>(_:_:)();

    v63 = 0;
    v64 = 0xE000000000000000;
    MEMORY[0x266771550](v3, v4);

    MEMORY[0x266771550](0x65646F6E206E6920, 0xE900000000000020);
    v57 = v52;
    v58 = v105;
    v59 = v55;
    v60 = v5;
    v61 = v48;
    v62 = v49;
    _print_unlocked<A, B>(_:_:)();
    v37 = v63;
    v38 = v64;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v39 = 11;
    *(v39 + 8) = v37;
    *(v39 + 16) = v38;
    swift_willThrow();
    outlined consume of NodePersonality(v52);

    goto LABEL_35;
  }

  v92[0] = v65;
  v92[1] = v66;
  v93 = v67;
  v94 = v68;
  v95 = v69;
  v1 = v56;
  specialized OrderedDictionary.subscript.getter(v65, *v56, v56[1], v56[2], &v70);
  v29 = v71;
  if (!v71)
  {
    goto LABEL_22;
  }

  v30 = v74;
  v31 = v75;
  v32 = v73;
  v47 = v72;
  v100 = v70;

  outlined destroy of [Input](&v100, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
  v99 = v29;
  outlined destroy of [Input](&v99, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMR);
  v98 = v47;
  outlined destroy of [Input](&v98, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMd, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMR);

  specialized OrderedDictionary.subscript.getter(v92, v32, v30, v31, &v76);

  v1 = v56;

  v33 = v77;
  if (v77 < 2)
  {
    goto LABEL_22;
  }

  v46 = v82;
  v45 = v81;
  v34 = v79;
  v43 = v78;
  v44 = v80;
  v35 = v76;

  outlined destroy of [Input](&v76, &_s11ShaderGraph6OutputVSgSgMd, &_s11ShaderGraph6OutputVSgSgMR);
  v96 = v93;
  v102[0] = v35;
  v102[1] = v33;
  v102[2] = v43;
  v102[3] = v34;
  v102[4] = v44;
  v103 = v45 & 1;
  v104 = v46;

  outlined init with copy of String(&v96, &v57);

  specialized ShaderGraphNode.output(labeled:)(&v83, 7632239, 0xE300000000000000, v55);
  if (!v84)
  {
    v63 = 0;
    v64 = 0xE000000000000000;
    MEMORY[0x266771550](7632239, 0xE300000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    v57 = v52;
    v58 = v105;
    v59 = v55;
    v60 = v5;
    v61 = v48;
    v62 = v49;
    _print_unlocked<A, B>(_:_:)();
    v40 = v63;
    v41 = v64;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v42 = 14;
    *(v42 + 8) = v40;
    *(v42 + 16) = v41;
    swift_willThrow();

    outlined destroy of String(&v96);
    outlined consume of NodePersonality(v52);
    goto LABEL_35;
  }

  v88[0] = v83;
  v88[1] = v84;
  v89 = v85;
  v90 = v86;
  v91 = v87;
  v1 = v56;
  UserGraph.moveEdges(from:to:)(v88, v102);

  v101 = v89;
  outlined destroy of String(&v101);

LABEL_22:
  v4 = v1;
  specialized UserGraph.removeEdges(connectedTo:)(v5);
  v11 = v50;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v50);
    v11 = result;
  }

  v3 = v105;
  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_41;
  }

  if (v5 < *(v11 + 16))
  {
    ShaderGraphNode.update(id:)(-7);
    outlined consume of NodePersonality(v52);

    v97 = v93;
    result = outlined destroy of String(&v97);
    v1[8] = v11;
    v9 = v54;
    goto LABEL_27;
  }

LABEL_42:
  __break(1u);
  return result;
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t specialized UserGraph.resolveSwizzleNodes(nodeDefStore:)()
{
  v1 = type metadata accessor for CharacterSet();
  v38 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v32[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v6 = &v32[-v5];
  v43 = &outlined read-only object #0 of UserGraph.resolveSwizzleNodes(nodeDefStore:);
  lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet, MEMORY[0x277CC8858]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays7UnicodeO6ScalarVGMd, &_sSays7UnicodeO6ScalarVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [Unicode.Scalar] and conformance [A], &_sSays7UnicodeO6ScalarVGMd, &_sSays7UnicodeO6ScalarVGMR, MEMORY[0x277D83970]);
  v37 = v6;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v43 = &outlined read-only object #1 of UserGraph.resolveSwizzleNodes(nodeDefStore:);
  v36 = v3;
  v39 = v1;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v35 = v0;
  v7 = *(*(v0 + 64) + 16);

  v34 = result;
  if (v7)
  {
    v9 = 0;
    v10 = result + 32;
    v40 = MEMORY[0x277D84F90];
    v42 = result + 32;
    while (v9 < v7)
    {
      v12 = v10 + 48 * v9;
      v13 = *(v12 + 24);
      if (v13 == -7)
      {
        v11 = __OFADD__(v9++, 1);
        if (v11)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v11 = __OFADD__(v9++, 1);
        if (v11)
        {
          goto LABEL_20;
        }

        v14 = *v12;
        if (*v12 >> 61 == 5)
        {
          v16 = *(v12 + 8);
          v15 = *(v12 + 16);
          v41 = *(v12 + 32);
          v17 = *(v12 + 40);
          outlined copy of NodePersonality(v14);

          outlined copy of NodePersonality(v14);

          v18._countAndFlagsBits = 0x7A7A6977735F444ELL;
          v18._object = 0xEA0000000000656CLL;
          v19 = String.hasPrefix(_:)(v18);

          outlined consume of NodePersonality(v14);

          if (v19)
          {
            v33 = v17;
            v20 = v40;
            result = swift_isUniquelyReferenced_nonNull_native();
            v43 = v20;
            if ((result & 1) == 0)
            {
              result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 16) + 1, 1);
              v20 = v43;
            }

            v21 = v41;
            v10 = v42;
            v22 = v33;
            v24 = *(v20 + 16);
            v23 = *(v20 + 24);
            v25 = v24 + 1;
            if (v24 >= v23 >> 1)
            {
              v40 = v24 + 1;
              result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
              v25 = v40;
              v21 = v41;
              v22 = v33;
              v20 = v43;
            }

            *(v20 + 16) = v25;
            v40 = v20;
            v26 = v20 + 48 * v24;
            *(v26 + 32) = v14;
            *(v26 + 40) = v16;
            *(v26 + 48) = v15;
            *(v26 + 56) = v13;
            *(v26 + 64) = v21;
            *(v26 + 72) = v22;
          }

          else
          {
            outlined consume of NodePersonality(v14);

            v10 = v42;
          }
        }
      }

      if (v9 >= v7)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
    v40 = MEMORY[0x277D84F90];
LABEL_17:

    MEMORY[0x28223BE20](v27);
    v29 = v36;
    v28 = v37;
    *&v32[-32] = v35;
    *&v32[-24] = v28;
    *&v32[-16] = v29;
    specialized Sequence.forEach(_:)(partial apply for closure #1 in UserGraph.resolveSwizzleNodes(nodeDefStore:), &v32[-48], v40);

    v30 = v39;
    v31 = *(v38 + 8);
    v31(v29, v39);
    return (v31)(v28, v30);
  }

  return result;
}

uint64_t sub_265E4CA60()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result, __int128 *a2)
{
  v25 = a2;
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *(v25 + 1);
    v4 = (result + 80);
    while (1)
    {
      v6 = *(v4 - 4);
      v5 = *(v4 - 3);
      v7 = *v4;
      v8 = *(v4 - 8);
      v9 = *(v4 - 2);
      v10 = *(v4 - 5);
      v22[0] = *(v4 - 6);
      v22[1] = v10;
      v22[2] = v6;
      v22[3] = v5;
      v22[4] = v9;
      v23 = v8;
      v24 = v7;
      specialized ShaderGraphNode.output(labeled:)(&v12, v6, v5, v3);
      if (!v13)
      {
        break;
      }

      v4 += 7;
      v17[0] = v12;
      v17[1] = v13;
      v18 = v14;
      v19 = v15;
      v20 = v16;

      UserGraph.moveEdge(from:to:)(v22, v17);

      v21 = v18;
      outlined destroy of String(&v21);

      if (!--v2)
      {
        return result;
      }
    }

    MEMORY[0x266771550](v6, v5);
    MEMORY[0x266771550](32, 0xE100000000000000);
    _print_unlocked<A, B>(_:_:)();
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v11 = 11;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0xE000000000000000;
    swift_willThrow();
  }

  return result;
}

{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = (result + 32);
    do
    {
      v5 = v4[5];
      v15 = v4[4];
      v16 = v5;
      v17 = v4[6];
      v6 = v4[1];
      v14[0] = *v4;
      v14[1] = v6;
      v7 = v4[3];
      v14[2] = v4[2];
      v14[3] = v7;
      v8 = *(&v7 + 1);
      v9 = *a2;
      v25 = a2[1];
      v10 = a2[1];
      v11 = a2[2];
      v18[0] = v9;
      v18[1] = v10;
      v18[2] = v11;
      v12 = *(a2 + 6);
      v13[0] = v17;
      v19 = v12;
      v20 = v8;
      v21 = v15;
      v22 = v16;
      v23 = v17;
      v24 = *(&v17 + 1);
      v26[0] = v9;
      v26[1] = v10;
      v27 = v11;
      v28 = BYTE8(v11);
      v29 = v12;
      v30 = v8;
      v31 = v15;
      v32 = v16;
      v33 = v17;
      v34 = *(&v17 + 1);
      outlined init with copy of Edge(v14, v13);

      outlined init with copy of String(&v25, v13);
      UserGraph.connect(_:to:)(v26, &v30);
      outlined destroy of Edge(v18);
      result = outlined destroy of Edge(v14);
      v4 += 7;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t specialized ShaderGraphNode.metalTextureType.getter(unint64_t a1)
{
  if (a1 >> 61 != 5)
  {
    goto LABEL_37;
  }

  swift_bridgeObjectRetain_n();
  v1._countAndFlagsBits = 0x6567616D695F444ELL;
  v1._object = 0xE800000000000000;
  v2 = String.hasPrefix(_:)(v1);

  if (v2 || (, v3._object = 0x8000000265F2D830, v3._countAndFlagsBits = 0xD000000000000014, v4 = String.hasPrefix(_:)(v3), , v4) || (, v5._object = 0x8000000265F30DD0, v5._countAndFlagsBits = 0xD000000000000014, v6 = String.hasPrefix(_:)(v5), , v6))
  {
    v7._countAndFlagsBits = 0x33726F6C6F63;
    v7._object = 0xE600000000000000;
    if (String.hasSuffix(_:)(v7))
    {

LABEL_8:
      if (one-time initialization token for texture2d_half != -1)
      {
        swift_once();
      }

      v10 = &static MetalDataType.texture2d_half;
      return *v10;
    }

    v8._countAndFlagsBits = 0x34726F6C6F63;
    v8._object = 0xE600000000000000;
    v9 = String.hasSuffix(_:)(v8);

    if (v9)
    {
      goto LABEL_8;
    }

    goto LABEL_37;
  }

  v11._countAndFlagsBits = 0xD00000000000001DLL;
  v11._object = 0x8000000265F30DF0;
  v12 = String.hasPrefix(_:)(v11);

  if (!v12)
  {

    v14._countAndFlagsBits = 0xD000000000000018;
    v14._object = 0x8000000265F30E10;
    v15 = String.hasPrefix(_:)(v14);

    if (v15)
    {
      v16._countAndFlagsBits = 0x33726F6C6F63;
      v16._object = 0xE600000000000000;
      if (String.hasSuffix(_:)(v16))
      {
      }

      else
      {
        v24._countAndFlagsBits = 0x34726F6C6F63;
        v24._object = 0xE600000000000000;
        v25 = String.hasSuffix(_:)(v24);

        if (!v25)
        {
          if (one-time initialization token for texture3d_float != -1)
          {
            swift_once();
          }

          v10 = &static MetalDataType.texture3d_float;
          return *v10;
        }
      }

      if (one-time initialization token for texture3d_half != -1)
      {
        swift_once();
      }

      v10 = &static MetalDataType.texture3d_half;
      return *v10;
    }

    v19._countAndFlagsBits = 0xD000000000000017;
    v19._object = 0x8000000265F2D850;
    v20 = String.hasPrefix(_:)(v19);

    if (v20 || (, v21._countAndFlagsBits = 0xD000000000000018, v21._object = 0x8000000265F30E30, v22 = String.hasPrefix(_:)(v21), , v22))
    {
      v23._countAndFlagsBits = 0x33726F6C6F63;
      v23._object = 0xE600000000000000;
      if (String.hasSuffix(_:)(v23))
      {
      }

      else
      {
        v26._countAndFlagsBits = 0x34726F6C6F63;
        v26._object = 0xE600000000000000;
        v27 = String.hasSuffix(_:)(v26);

        if (!v27)
        {
          if (one-time initialization token for texturecube_float != -1)
          {
            swift_once();
          }

          v10 = &static MetalDataType.texturecube_float;
          return *v10;
        }
      }

      if (one-time initialization token for texturecube_half != -1)
      {
        swift_once();
      }

      v10 = &static MetalDataType.texturecube_half;
      return *v10;
    }

LABEL_37:
    if (one-time initialization token for texture2d_float != -1)
    {
      swift_once();
    }

    v10 = &static MetalDataType.texture2d_float;
    return *v10;
  }

  v13._countAndFlagsBits = 0x33726F6C6F63;
  v13._object = 0xE600000000000000;
  if (String.hasSuffix(_:)(v13))
  {

LABEL_18:
    if (one-time initialization token for texture2darray_half != -1)
    {
      swift_once();
    }

    v10 = &static MetalDataType.texture2darray_half;
    return *v10;
  }

  v17._countAndFlagsBits = 0x34726F6C6F63;
  v17._object = 0xE600000000000000;
  v18 = String.hasSuffix(_:)(v17);

  if (v18)
  {
    goto LABEL_18;
  }

  if (one-time initialization token for texture2darray_float != -1)
  {
    swift_once();
  }

  v10 = &static MetalDataType.texture2darray_float;
  return *v10;
}

double specialized UserGraph.insertCreateSampler(label:)@<D0>(_OWORD *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F24140;
  if (one-time initialization token for coord != -1)
  {
    swift_once();
  }

  v3 = static MetalDataType.coord;
  *(inited + 32) = 0x64726F6F63;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = v3;
  v4 = one-time initialization token for address;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = static MetalDataType.address;
  *(inited + 56) = 0x73736572646461;
  *(inited + 64) = 0xE700000000000000;
  *(inited + 72) = v5;
  v6 = one-time initialization token for s_address;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = static MetalDataType.s_address;
  *(inited + 80) = 0x7365726464615F73;
  *(inited + 88) = 0xE900000000000073;
  *(inited + 96) = v7;
  v8 = one-time initialization token for t_address;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = static MetalDataType.t_address;
  *(inited + 104) = 0x7365726464615F74;
  *(inited + 112) = 0xE900000000000073;
  *(inited + 120) = v9;
  v10 = one-time initialization token for r_address;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = static MetalDataType.r_address;
  *(inited + 128) = 0x7365726464615F72;
  *(inited + 136) = 0xE900000000000073;
  *(inited + 144) = v11;
  v12 = one-time initialization token for border_color;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = static MetalDataType.border_color;
  strcpy((inited + 152), "border_color");
  *(inited + 165) = 0;
  *(inited + 166) = -5120;
  *(inited + 168) = v13;
  v14 = one-time initialization token for mag_filter;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = static MetalDataType.mag_filter;
  *(inited + 176) = 0x746C69665F67616DLL;
  *(inited + 184) = 0xEA00000000007265;
  *(inited + 192) = v15;
  v16 = one-time initialization token for min_filter;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = static MetalDataType.min_filter;
  *(inited + 200) = 0x746C69665F6E696DLL;
  *(inited + 208) = 0xEA00000000007265;
  *(inited + 216) = v17;
  v18 = one-time initialization token for mip_filter;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = static MetalDataType.mip_filter;
  *(inited + 224) = 0x746C69665F70696DLL;
  *(inited + 232) = 0xEA00000000007265;
  *(inited + 240) = v19;
  v20 = one-time initialization token for max_anisotropy;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = static MetalDataType.max_anisotropy;
  strcpy((inited + 248), "max_anisotropy");
  *(inited + 263) = -18;
  *(inited + 264) = v21;
  v22 = one-time initialization token for lod_clamp;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = static MetalDataType.lod_clamp;
  *(inited + 272) = 0x6D616C635F646F6CLL;
  *(inited + 280) = 0xE900000000000070;
  *(inited + 288) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_265F1F670;
  v25 = one-time initialization token for sampler;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = static MetalDataType.sampler;
  *(v24 + 32) = 7632239;
  *(v24 + 40) = 0xE300000000000000;
  *(v24 + 48) = v26;

  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(inited, v24, 0xE000000000000008, &v29);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_setDeallocating();
  swift_arrayDestroy();
  v27 = v30[0];
  *a1 = v29;
  a1[1] = v27;
  result = *(v30 + 9);
  *(a1 + 25) = *(v30 + 9);
  return result;
}

void specialized closure #1 in UserGraph.transformGeomPropValueNodes(surface:geometryModifier:nodeDefStore:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v5 = *a1;
  if (*a1 >> 61 != 5)
  {
    return;
  }

  v156 = a4;
  v8 = v4;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v97 = *(a1 + 32);
  v98 = *(a1 + 40);
  v12 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v13 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

  v14._object = 0x8000000265F310E0;
  v14._countAndFlagsBits = 0xD000000000000011;
  if (!String.hasPrefix(_:)(v14))
  {

    return;
  }

  v96 = v11;
  if (!*(a2 + 16))
  {

LABEL_16:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, logger);
    outlined copy of NodePersonality(v5);

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    outlined consume of NodePersonality(v5);

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v129 = v46;
      *v45 = 136315138;
      *&v144 = 1701080942;
      *(&v144 + 1) = 0xE400000000000000;
      *&v125 = v96;
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v47);

      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v144, *(&v144 + 1), &v129);

      *(v45 + 4) = v48;
      _os_log_impl(&dword_265D7D000, v43, v44, "Failed to transform geompropvalue node %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x266773120](v46, -1, -1);
      MEMORY[0x266773120](v45, -1, -1);
    }

    return;
  }

  v15 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v13);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
    goto LABEL_16;
  }

  v18 = *(a2 + 56) + 152 * v15;
  v19 = *(v18 + 112);
  v154[8] = *(v18 + 96);
  v154[9] = v19;
  v154[10] = *(v18 + 128);
  v155 = *(v18 + 144);
  v20 = *(v18 + 48);
  v154[4] = *(v18 + 32);
  v154[5] = v20;
  v21 = *(v18 + 80);
  v154[6] = *(v18 + 64);
  v154[7] = v21;
  v22 = *(v18 + 16);
  v154[2] = *v18;
  v154[3] = v22;
  NodeDef.subscript.getter(7632239, 0xE300000000000000, v105);
  if (!v106)
  {
    goto LABEL_16;
  }

  v23 = v107;

  outlined destroy of [Input](v105, &_s11ShaderGraph7NodeDefV6IOSpecVSgMd, &_s11ShaderGraph7NodeDefV6IOSpecVSgMR);
  v24 = v156[9];
  v153[8] = v156[8];
  v154[0] = v24;
  *(v154 + 9) = *(v156 + 153);
  v25 = v156[5];
  v153[4] = v156[4];
  v153[5] = v25;
  v26 = v156[6];
  v153[7] = v156[7];
  v153[6] = v26;
  v27 = v156[1];
  v153[0] = *v156;
  v153[1] = v27;
  v28 = v156[2];
  v153[3] = v156[3];
  v153[2] = v28;
  specialized ShaderGraphNode.output(labeled:)(&v108, 0x706F72706D6F6567, 0xE800000000000000, v9);
  if (!v109)
  {
    *&v99 = 0;
    *(&v99 + 1) = 0xE000000000000000;
    outlined init with copy of UserGraph(v153, &v144);
    MEMORY[0x266771550](0x706F72706D6F6567, 0xE800000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    *&v144 = v5;
    *(&v144 + 1) = v9;
    *&v145 = v10;
    *(&v145 + 1) = v96;
    *v146 = v97;
    v146[8] = v98;
    _print_unlocked<A, B>(_:_:)();
    v49 = v99;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    v8 = swift_allocError();
    *v50 = 11;
    *(v50 + 8) = v49;
    swift_willThrow();
    outlined destroy of UserGraph(v153);
    goto LABEL_23;
  }

  v132[0] = v108;
  v132[1] = v109;
  v133 = v110;
  v134 = v111;
  v135 = v112;
  outlined init with copy of UserGraph(v153, &v144);
  UserGraph.node(connectedTo:)(v132, &v113);

  v136 = v133;
  outlined destroy of String(&v136);
  outlined destroy of UserGraph(v153);
  v29 = v114;
  if (!v114)
  {

    goto LABEL_16;
  }

  v30 = v115;
  v137 = v113;
  if (v113 >> 61 || (v32 = *(v113 + 48), v31 = *(v113 + 64), v33 = *(v113 + 16), v34 = *(v113 + 32), v104 = *(v113 + 80), v103[0] = v33, v103[1] = v34, v103[2] = v32, v103[3] = v31, v104 != 6))
  {

    outlined destroy of NodePersonality(&v137);
    *&v103[0] = v29;
    outlined destroy of [Input](v103, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    *&v99 = v30;
    outlined destroy of [Input](&v99, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    goto LABEL_16;
  }

  v94 = *(&v103[0] + 1);
  v95 = *&v103[0];
  outlined init with copy of SGDataTypeStorage(v103, &v144);
  outlined destroy of NodePersonality(&v137);
  v138 = v29;
  outlined destroy of [Input](&v138, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  v139 = v30;
  outlined destroy of [Input](&v139, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  if (*(a3 + 16))
  {
    v35 = specialized __RawDictionaryStorage.find<A>(_:)(v95, v94);
    if (v36)
    {
      v37 = v35;
      outlined destroy of SGDataTypeStorage(v103);
      v38 = (*(a3 + 56) + (v37 << 6));
      v40 = v38[1];
      v39 = v38[2];
      v41 = *v38;
      *&v146[9] = *(v38 + 41);
      v145 = v40;
      *v146 = v39;
      v144 = v41;
      outlined init with copy of GeomPropDef(&v144, &v99);
      specialized UserGraph.insertGeomPropGetter(_:outputType:nodeDefStore:)(&v144, v23, a2, &v118);
      if (v4)
      {
        outlined destroy of GeomPropDef(&v144);

LABEL_24:
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v51 = type metadata accessor for Logger();
        __swift_project_value_buffer(v51, logger);
        outlined copy of NodePersonality(v5);

        v52 = v8;

        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.info.getter();

        outlined consume of NodePersonality(v5);

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          *&v140 = v56;
          *v55 = 136315394;
          *&v103[0] = v8;
          v57 = v8;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
          v58 = String.init<A>(describing:)();
          v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, &v140);

          *(v55 + 4) = v60;
          *(v55 + 12) = 2080;
          *&v103[0] = 1701080942;
          *(&v103[0] + 1) = 0xE400000000000000;
          v143 = v96;
          v61 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x266771550](v61);

          v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v103[0], *(&v103[0] + 1), &v140);

          *(v55 + 14) = v62;
          _os_log_impl(&dword_265D7D000, v53, v54, "Got error '%s' attempting to convert a geompropvalue node ('%s') to an equivalent built-in geom prop node. Skipping conversion.", v55, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x266773120](v56, -1, -1);
          MEMORY[0x266773120](v55, -1, -1);
        }

        else
        {
        }

        return;
      }

      specialized ShaderGraphNode.output(labeled:)(&v121, 7632239, 0xE300000000000000, v10);
      if (*(&v121 + 1))
      {
        v99 = v121;
        v100 = v122;
        v101 = v123;
        v102 = v124;
        *&v141 = *v119;
        specialized ShaderGraphNode.output(labeled:)(&v125, 7632239, 0xE300000000000000, *v119);
        if (*(&v125 + 1))
        {
          v129 = v125;
          *v130 = v126;
          *&v130[16] = v127;
          v131 = v128;
          UserGraph.moveEdges(from:to:)(&v99, &v129);

          v116[0] = *v130;
          outlined destroy of String(v116);

          v142 = v100;
          outlined destroy of String(&v142);
          *&v140 = v118;
          outlined destroy of NodePersonality(&v140);
          v143 = *(&v118 + 1);
          outlined destroy of [Input](&v143, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          outlined destroy of [Input](&v141, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          outlined destroy of GeomPropDef(&v144);
          return;
        }

        *&v116[0] = 0;
        *(&v116[0] + 1) = 0xE000000000000000;
        MEMORY[0x266771550](7632239, 0xE300000000000000);
        MEMORY[0x266771550](32, 0xE100000000000000);
        v129 = v118;
        *v130 = *v119;
        *&v130[9] = *&v119[9];
        _print_unlocked<A, B>(_:_:)();
        v91 = v116[0];
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        v8 = swift_allocError();
        *v92 = 14;
        *(v92 + 8) = v91;
        swift_willThrow();

        v129 = v100;
        outlined destroy of String(&v129);
        *&v116[0] = v118;
        outlined destroy of NodePersonality(v116);
        *&v142 = *(&v118 + 1);
        outlined destroy of [Input](&v142, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v90 = &v141;
      }

      else
      {
        *&v129 = 0;
        *(&v129 + 1) = 0xE000000000000000;
        MEMORY[0x266771550](7632239, 0xE300000000000000);
        MEMORY[0x266771550](32, 0xE100000000000000);
        *&v99 = v5;
        *(&v99 + 1) = v9;
        *&v100 = v10;
        *(&v100 + 1) = v96;
        *&v101 = v97;
        BYTE8(v101) = v98;
        _print_unlocked<A, B>(_:_:)();
        v88 = v129;
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        v8 = swift_allocError();
        *v89 = 14;
        *(v89 + 8) = v88;
        swift_willThrow();
        *&v99 = v118;
        outlined destroy of NodePersonality(&v99);
        *&v129 = *(&v118 + 1);
        outlined destroy of [Input](&v129, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        *&v125 = *v119;
        v90 = &v125;
      }

      outlined destroy of [Input](v90, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      outlined destroy of GeomPropDef(&v144);
LABEL_23:

      goto LABEL_24;
    }
  }

  specialized ShaderGraphNode.output(labeled:)(v116, 0x746C7561666564, 0xE700000000000000, v9);
  v63 = v10;
  if (*(&v116[0] + 1))
  {
    v129 = v116[0];
    *v130 = v116[1];
    *&v130[16] = v116[2];
    v131 = v117;
    v64 = v156[9];
    v151 = v156[8];
    v152[0] = v64;
    *(v152 + 9) = *(v156 + 153);
    v65 = v156[5];
    v147 = v156[4];
    v148 = v65;
    v66 = v156[6];
    v150 = v156[7];
    v149 = v66;
    v67 = v156[1];
    v144 = *v156;
    v145 = v67;
    v68 = v156[3];
    *v146 = v156[2];
    *&v146[16] = v68;
    outlined init with copy of UserGraph(&v144, &v99);
    UserGraph.output(connectedTo:)(&v129, &v118);
    outlined destroy of UserGraph(&v144);
    if (*(&v118 + 1))
    {
      v125 = v118;
      v126 = *v119;
      v127 = *&v119[16];
      v128 = v120;
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v69 = type metadata accessor for Logger();
      __swift_project_value_buffer(v69, logger);
      outlined init with copy of SGDataTypeStorage(v103, &v99);
      outlined copy of NodePersonality(v5);

      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.error.getter();
      outlined consume of NodePersonality(v5);

      outlined destroy of SGDataTypeStorage(v103);
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *&v121 = swift_slowAlloc();
        v73 = v121;
        *v72 = 136315394;
        *&v99 = 1701080942;
        *(&v99 + 1) = 0xE400000000000000;
        *&v142 = v96;
        v93 = v71;
        v74 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266771550](v74);

        v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, *(&v99 + 1), &v121);

        *(v72 + 4) = v75;
        *(v72 + 12) = 2080;
        v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v94, &v121);
        outlined destroy of SGDataTypeStorage(v103);
        *(v72 + 14) = v76;
        _os_log_impl(&dword_265D7D000, v70, v93, "Failed to find valid geompropvalue name for %s, given value: %s, using default value.", v72, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266773120](v73, -1, -1);
        v77 = v72;
        v63 = v10;
        MEMORY[0x266773120](v77, -1, -1);
      }

      else
      {

        outlined destroy of SGDataTypeStorage(v103);
      }

      specialized ShaderGraphNode.output(labeled:)(&v121, 7632239, 0xE300000000000000, v63);
      if (*(&v121 + 1))
      {
        v99 = v121;
        v100 = v122;
        v101 = v123;
        v102 = v124;
        UserGraph.moveEdges(from:to:)(&v99, &v125);

        v142 = v100;
        outlined destroy of String(&v142);

        v141 = v126;
        outlined destroy of String(&v141);

        v140 = *v130;
        outlined destroy of String(&v140);
        return;
      }

      *&v142 = 0;
      *(&v142 + 1) = 0xE000000000000000;
      MEMORY[0x266771550](7632239, 0xE300000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      *&v99 = v5;
      *(&v99 + 1) = v9;
      *&v100 = v63;
      *(&v100 + 1) = v96;
      *&v101 = v97;
      BYTE8(v101) = v98;
      _print_unlocked<A, B>(_:_:)();
      v86 = v142;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      v8 = swift_allocError();
      *v87 = 14;
      *(v87 + 8) = v86;
      swift_willThrow();

      v99 = v126;
      outlined destroy of String(&v99);

      v142 = *v130;
      outlined destroy of String(&v142);
      goto LABEL_23;
    }

    v125 = *v130;
    outlined destroy of String(&v125);
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v78 = type metadata accessor for Logger();
  __swift_project_value_buffer(v78, logger);
  outlined init with copy of SGDataTypeStorage(v103, &v99);
  outlined copy of NodePersonality(v5);

  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.error.getter();
  outlined consume of NodePersonality(v5);

  outlined destroy of SGDataTypeStorage(v103);
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    *&v121 = v82;
    *v81 = 136315394;
    *&v99 = 1701080942;
    *(&v99 + 1) = 0xE400000000000000;
    *&v142 = v96;
    v83 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v83);

    v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, *(&v99 + 1), &v121);

    *(v81 + 4) = v84;
    *(v81 + 12) = 2080;
    v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v94, &v121);
    outlined destroy of SGDataTypeStorage(v103);
    *(v81 + 14) = v85;
    _os_log_impl(&dword_265D7D000, v79, v80, "Failed to find valid geomprop for node %s, given value: %s, and no default was found.", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266773120](v82, -1, -1);
    MEMORY[0x266773120](v81, -1, -1);
  }

  else
  {

    outlined destroy of SGDataTypeStorage(v103);
  }
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v5 = (result + 80);
    do
    {
      v6 = *v5;
      v7 = *(v5 - 8);
      v9 = *(v5 - 3);
      v8 = *(v5 - 2);
      v11 = *(v5 - 5);
      v10 = *(v5 - 4);
      v12[0] = *(v5 - 6);
      v12[1] = v11;
      v12[2] = v10;
      v12[3] = v9;
      v12[4] = v8;
      v13 = v7;
      v14 = v6;

      UserGraph.connect(_:to:)(a3, v12);

      v5 += 7;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t specialized UserGraph.insertParamsInputs(surface:type:nodeDefStore:)(uint64_t *a1, int a2)
{
  v4 = v2;
  v6 = v2[9];
  v68 = v2[8];
  v69[0] = v6;
  *(v69 + 9) = *(v2 + 153);
  v7 = v2[5];
  v64 = v2[4];
  v65 = v7;
  v8 = v2[7];
  v66 = v2[6];
  v67 = v8;
  v9 = v2[1];
  v60 = *v2;
  v61 = v9;
  v10 = v2[3];
  v62 = v2[2];
  v63 = v10;
  UserGraph.connectedUpstreamSubgraph(rootedAt:)(a1, &v41);
  v11 = v41;

  v12 = *(v11 + 16);
  v13 = MEMORY[0x277D84F90];
  v38 = v4;
  if (v12)
  {
    LODWORD(v71) = a2;
    *&v41 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v14 = v41;
    v15 = *(v41 + 16);
    v16 = 56;
    do
    {
      v17 = *(v11 + v16);
      *&v41 = v14;
      v18 = *(v14 + 24);
      if (v15 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v15 + 1, 1);
        v14 = v41;
      }

      *(v14 + 16) = v15 + 1;
      *(v14 + 8 * v15 + 32) = v17;
      v16 += 48;
      ++v15;
      --v12;
    }

    while (v12);

    v13 = MEMORY[0x277D84F90];
    LOBYTE(a2) = v71;
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  v71 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11ShaderGraph0bC4NodeV2IDV_SayAHGTt0g5Tf4g_n(v14);

  if ((a2 & 1) == 0)
  {
    v37 = 0x65636166727573;
    if (one-time initialization token for surface_parameters_private != -1)
    {
      swift_once();
    }

    v39 = 0xE700000000000000;
    goto LABEL_14;
  }

  v37 = 0x797274656D6F6567;
  if (one-time initialization token for geometry_parameters_private != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v39 = 0xE800000000000000;
LABEL_14:

    v20 = v64;
    v70[0] = v64;
    v40 = v13;
    v21 = *(v64 + 16);
    v22 = v19;

    outlined init with copy of [Input](v70, &v41, &_sSay11ShaderGraph0aB4NodeVGMd, &_sSay11ShaderGraph0aB4NodeVGMR);
    if (!v21)
    {
      break;
    }

    v13 = 0;
    while (v13 < v21)
    {
      v24 = v20 + 32 + 48 * v13;
      v25 = *(v24 + 24);
      if (v25 == -7)
      {
        v23 = __OFADD__(v13++, 1);
        if (v23)
        {
          goto LABEL_31;
        }

        if (v13 >= v21)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v23 = __OFADD__(v13++, 1);
        if (v23)
        {
          goto LABEL_32;
        }

        v26 = *(v24 + 8);
        v27 = *(v24 + 16);
        v28 = *v24;
        v29 = *(v24 + 40);
        v30 = *(v24 + 32);
        *&v41 = v28;
        *(&v41 + 1) = v26;
        *v42 = v27;
        *&v42[8] = v25;
        *&v42[16] = v30;
        v42[24] = v29;
        outlined copy of NodePersonality(v28);

        closure #1 in UserGraph.insertParamsInputs(surface:type:nodeDefStore:)(&v41, v71, v37, v39, v22, v38, &v40);
        outlined consume of NodePersonality(v28);
        if (v3)
        {

          outlined destroy of [Input](v70, &_sSay11ShaderGraph0aB4NodeVGMd, &_sSay11ShaderGraph0aB4NodeVGMR);
        }

        if (v13 >= v21)
        {
          goto LABEL_23;
        }
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    swift_once();
  }

LABEL_23:
  outlined destroy of [Input](v70, &_sSay11ShaderGraph0aB4NodeVGMd, &_sSay11ShaderGraph0aB4NodeVGMR);

  v31 = v22;

  v32 = v40;
  if (*(v40 + 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_265F1F670;
    *(inited + 32) = 7632239;
    *(inited + 40) = 0xE300000000000000;
    *(inited + 48) = v31;
    v34 = swift_allocObject();
    *(v34 + 16) = 12324;
    *(v34 + 24) = 0xE200000000000000;

    UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], inited, v34 | 0x6000000000000000, &v43);

    swift_setDeallocating();
    swift_arrayDestroy();
    v59 = v44[0];
    specialized ShaderGraphNode.output(labeled:)(&v45, 7632239, 0xE300000000000000, v44[0]);
    if (v46)
    {
      v50[0] = v45;
      v50[1] = v46;
      v51 = v47;
      v52 = v48;
      v53 = v49;
      v54 = v47;

      outlined init with copy of String(&v54, &v41);
      specialized Sequence.forEach(_:)(v32, v38, v50);

      outlined destroy of String(&v54);
      v56 = v43;
      outlined destroy of NodePersonality(&v56);
      v55 = *(&v43 + 1);
      outlined destroy of [Input](&v55, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v59, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      outlined destroy of String(&v54);
    }

    else
    {
      MEMORY[0x266771550](7632239, 0xE300000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      v41 = v43;
      *v42 = *v44;
      *&v42[9] = *(&v44[1] + 1);
      _print_unlocked<A, B>(_:_:)();

      v41 = v43;
      *v42 = *v44;
      *&v42[9] = *(&v44[1] + 1);
      _print_unlocked<A, B>(_:_:)();
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v36 = 14;
      *(v36 + 8) = 0;
      *(v36 + 16) = 0xE000000000000000;
      swift_willThrow();
      v58 = v43;
      outlined destroy of NodePersonality(&v58);
      v57 = *(&v43 + 1);
      outlined destroy of [Input](&v57, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v59, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    }
  }

  else
  {
  }
}

void specialized closure #1 in UserGraph.resolveMaterialXNodeDefs(connectedTo:nodeDefStore:shaderType:)(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int (*a4)(char *, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v82 = a7;
  v83 = a4;
  v11 = type metadata accessor for NodeDef.Implementation.Kind(0);
  MEMORY[0x28223BE20](v11);
  v84 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph7NodeDefV14ImplementationVSgMd, &_s11ShaderGraph7NodeDefV14ImplementationVSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v74 - v14;
  v16 = type metadata accessor for NodeDef.Implementation(0);
  MEMORY[0x28223BE20](v16);
  v19 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  if (*a1 >> 61 != 5)
  {
    return;
  }

  if (!*(a2 + 16))
  {
LABEL_9:
    *&v87 = 0;
    *(&v87 + 1) = 0xE000000000000000;
    v44 = *(a1 + 1);
    v85 = *a1;
    v86[0] = v44;
    *(v86 + 9) = *(a1 + 25);
    _print_unlocked<A, B>(_:_:)();
    v45 = v87;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v46 = 27;
    *(v46 + 8) = v45;
    swift_willThrow();
    return;
  }

  v79 = v17;
  v80 = a6;
  v81 = v19;
  v21 = v20 & 0x1FFFFFFFFFFFFFFFLL;
  v22 = *(v21 + 16);
  v23 = *(v21 + 24);

  v78 = v22;
  v24 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v23);
  if ((v25 & 1) == 0)
  {

    goto LABEL_9;
  }

  v77 = v23;
  v26 = *(a2 + 56) + 152 * v24;
  v27 = *(v26 + 16);
  v88[0] = *v26;
  v88[1] = v27;
  v28 = *(v26 + 80);
  v30 = *(v26 + 32);
  v29 = *(v26 + 48);
  v88[4] = *(v26 + 64);
  v88[5] = v28;
  v88[2] = v30;
  v88[3] = v29;
  v32 = *(v26 + 112);
  v31 = *(v26 + 128);
  v33 = *(v26 + 96);
  v89 = *(v26 + 144);
  v88[7] = v32;
  v88[8] = v31;
  v88[6] = v33;
  v34 = a1[3];
  if (!specialized Set.contains(_:)(v34, a5))
  {

    return;
  }

  outlined init with copy of NodeDef(v88, &v85);
  NodeDefStore.implementation(for:target:)(v88, v80, v83, v15);
  v35 = *(v79 + 48);
  v36 = v35(v15, 1, v16);
  v76 = v34;
  if (v36 == 1)
  {
    *&v85 = 1599098185;
    *(&v85 + 1) = 0xE400000000000000;
    v37 = v80;

    v83 = v35;
    MEMORY[0x266771550](v78, v77);
    v75 = *(&v85 + 1);
    v79 = v85;
    v38 = v81;
    v39 = (v81 + *(v16 + 20));
    *v39 = specialized static NodeDefStore.inferLibraryFunctionName(forNodeDefName:)(*&v88[0], *(&v88[0] + 1));
    v39[1] = v40;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_265F20CD0;
    *(inited + 32) = v37;
    v42 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11ShaderGraph15MaterialXTargetC_SayAFGTt0g5Tf4g_n(inited);

    outlined destroy of NodeDef(v88);
    v43 = v75;
    *v38 = v79;
    v38[1] = v43;
    *(v38 + *(v16 + 24)) = v42;
    if (v83(v15, 1, v16) != 1)
    {
      outlined destroy of [Input](v15, &_s11ShaderGraph7NodeDefV14ImplementationVSgMd, &_s11ShaderGraph7NodeDefV14ImplementationVSgMR);
    }
  }

  else
  {
    outlined destroy of NodeDef(v88);
    v38 = v81;
    outlined init with take of NodeDef.Implementation(v15, v81);
  }

  v47 = v38 + *(v16 + 20);
  v48 = v84;
  outlined init with copy of NodeDef.Implementation.Kind(v47, v84, type metadata accessor for NodeDef.Implementation.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {

      v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSg12functionName_10Foundation3URLV4filetMd, &_sSSSg12functionName_10Foundation3URLV4filetMR) + 48);
      *&v85 = 0;
      *(&v85 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(69);
      MEMORY[0x266771550](0xD000000000000042, 0x8000000265F30FD0);
      MEMORY[0x266771550](v78, v77);

      MEMORY[0x266771550](46, 0xE100000000000000);
      v56 = v85;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v57 = 29;
      *(v57 + 8) = v56;
      swift_willThrow();
      outlined destroy of NodeDef.Implementation.Kind(v81, type metadata accessor for NodeDef.Implementation);
      v58 = type metadata accessor for URL();
      (*(*(v58 - 8) + 8))(&v48[v55], v58);
      return;
    }

    outlined destroy of NodeDef.Implementation.Kind(v48, type metadata accessor for NodeDef.Implementation.Kind);
    *&v85 = 0;
    *(&v85 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(87);
    MEMORY[0x266771550](0xD00000000000004ALL, 0x8000000265F31020);
    MEMORY[0x266771550](0xD00000000000003ELL, 0x8000000265F31070);
    MEMORY[0x266771550](0x6C6C616320736920, 0xEB000000002E6465);
    v51 = *(&v85 + 1);
    v50 = v85;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    v53 = 47;
    goto LABEL_30;
  }

  if (EnumCaseMultiPayload == 2)
  {

    outlined destroy of NodeDef.Implementation.Kind(v48, type metadata accessor for NodeDef.Implementation.Kind);
    *&v85 = 0;
    *(&v85 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    v87 = v85;
    MEMORY[0x266771550](0xD000000000000031, 0x8000000265F30EF0);
    v54 = *(a1 + 1);
    v85 = *a1;
    v86[0] = v54;
    *(v86 + 9) = *(a1 + 25);
    _print_unlocked<A, B>(_:_:)();
    v51 = *(&v87 + 1);
    v50 = v87;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    v53 = 29;
LABEL_30:
    *v52 = v53;
    *(v52 + 8) = v50;
    *(v52 + 16) = v51;
    swift_willThrow();
    outlined destroy of NodeDef.Implementation.Kind(v81, type metadata accessor for NodeDef.Implementation);
    return;
  }

  v59 = *(v48 + 1);
  v60 = a1[2];
  v61 = *(v60 + 16);
  if (!v61)
  {

    *&v85 = 0;
    *(&v85 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(66);
    v87 = v85;
    v71 = "t yet supported. ";
    v72 = 0xD000000000000040;
LABEL_29:
    MEMORY[0x266771550](v72, v71 | 0x8000000000000000);
    v73 = *(a1 + 1);
    v85 = *a1;
    v86[0] = v73;
    *(v86 + 9) = *(a1 + 25);
    _print_unlocked<A, B>(_:_:)();
    v51 = *(&v87 + 1);
    v50 = v87;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    v53 = 40;
    goto LABEL_30;
  }

  if (v61 != 1)
  {

    *&v85 = 0;
    *(&v85 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(72);
    v87 = v85;
    v71 = " function call. ";
    v72 = 0xD000000000000046;
    goto LABEL_29;
  }

  v62 = *v48;
  v63 = *(v60 + 40);
  v64 = swift_allocObject();
  *(v64 + 16) = v62;
  *(v64 + 24) = v59;
  *(v64 + 32) = v63;
  v65 = v82;
  v66 = *(v82 + 64);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v65 + 64) = v66;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    *(v65 + 64) = specialized _ArrayBuffer._consumeAndCreateNew()(v66);
  }

  outlined destroy of NodeDef.Implementation.Kind(v81, type metadata accessor for NodeDef.Implementation);
  if ((v76 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v68 = *(v65 + 64);
    if (v76 < *(v68 + 16))
    {
      v69 = v68 + 48 * v76;
      v70 = *(v69 + 32);
      *(v69 + 32) = v64 | 0x2000000000000000;
      outlined consume of NodePersonality(v70);
      return;
    }
  }

  __break(1u);
}

uint64_t sub_265E4F9F8()
{
  outlined consume of SGDataTypeStorage(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 96, 15);
}

uint64_t sub_265E4FA54()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo10SGDataTypeV_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo10SGDataTypeVGMd, &_ss11_SetStorageCySo10SGDataTypeVGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      Hasher.init(_seed:)();
      MEMORY[0x266772770](v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}