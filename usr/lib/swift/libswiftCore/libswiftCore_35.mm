void _parseInteger<A, B>(ascii:radix:)(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, char *a4@<X3>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v322 = a7;
  swift_getTupleTypeMetadata2(0, a4, &type metadata for Bool, 0, 0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v324 = &v304 - v14;
  v15 = *(a6 + 8);
  v326 = a6;
  v327 = v15;
  v321 = *(*(v15 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v321, a4, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v319 = v16;
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v320 = &v304 - v19;
  v325 = *(a4 - 1);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v308 = &v304 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v314 = &v304 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v311 = &v304 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v304 = &v304 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v35 = &v304 - v34;
  v37 = MEMORY[0x1EEE9AC00](v33, v36);
  v317 = &v304 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37, v39);
  v307 = &v304 - v41;
  v43 = MEMORY[0x1EEE9AC00](v40, v42);
  v313 = &v304 - v44;
  v46 = MEMORY[0x1EEE9AC00](v43, v45);
  v310 = &v304 - v47;
  v49 = MEMORY[0x1EEE9AC00](v46, v48);
  v306 = &v304 - v50;
  v52 = MEMORY[0x1EEE9AC00](v49, v51);
  v54 = &v304 - v53;
  v56 = MEMORY[0x1EEE9AC00](v52, v55);
  v312 = &v304 - v57;
  v59 = MEMORY[0x1EEE9AC00](v56, v58);
  v315 = &v304 - v60;
  v62 = MEMORY[0x1EEE9AC00](v59, v61);
  v64 = &v304 - v63;
  v66 = MEMORY[0x1EEE9AC00](v62, v65);
  v316 = &v304 - v67;
  v69 = MEMORY[0x1EEE9AC00](v66, v68);
  v323 = &v304 - v70;
  v72 = MEMORY[0x1EEE9AC00](v69, v71);
  v305 = &v304 - v73;
  v75 = MEMORY[0x1EEE9AC00](v72, v74);
  v77 = &v304 - v76;
  v79 = MEMORY[0x1EEE9AC00](v75, v78);
  v309 = &v304 - v80;
  MEMORY[0x1EEE9AC00](v79, v81);
  v83 = (&v304 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v84 + 16))(v83, a1, a3);
  v85 = String.init<A>(_:)(v83, a3);
  v88 = v86;
  if ((v86 & 0x1000000000000000) == 0)
  {
    if ((v86 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_85:
    v199 = HIBYTE(v88) & 0xF;
    v329[0] = v85;
    v329[1] = v88 & 0xFFFFFFFFFFFFFFLL;
    if (!v199)
    {
      goto LABEL_175;
    }

    v318 = v88;
    if (v85 == 43)
    {
      v238 = specialized Collection.subscript.getter(1, v329, HIBYTE(v88) & 0xF);
      v242 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v238, v239, v240, v241);
      if (!v243)
      {
        goto LABEL_173;
      }

      v245 = v242;
      v246 = v243;
      v247 = a2 + 55;
      v248 = a2 + 87;
      if (a2 <= 10)
      {
        v248 = 97;
      }

      LODWORD(v309) = v248;
      if (a2 <= 10)
      {
        v247 = 65;
      }

      LODWORD(v310) = v247;
      v328 = a2;
      if (a2 <= 10)
      {
        v249 = a2 + 48;
      }

      else
      {
        v249 = 58;
      }

      v250 = v327;
      v251 = (v327 + 96);
      v252 = *(v327 + 96);
      v253 = lazy protocol witness table accessor for type Int and conformance Int(v242, v243, v244);
      v216 = v311;
      v316 = v252;
      v317 = v251;
      (v252)(&v328, &type metadata for Int, v253, a4, v250);
      v254 = v321;
      v255 = v319;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v321, a4, v319, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v257 = v320;
      (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v255, AssociatedConformanceWitness);
      v258 = (v254[3])(v257, a4, v254);
      if (v245)
      {
        v261 = v326 + 96;
        v321 = (v325 + 8);
        v319 = (v325 + 32);
        v315 = (v326 + 80);
        LODWORD(v307) = v249;
        while (1)
        {
          v313 = v245;
          v262 = *v245;
          if (v262 < 0x30 || v262 >= v249)
          {
            v264 = v308;
            if (v262 < 0x41 || v262 >= v310)
            {
              if (v262 < 0x61 || v262 >= v309)
              {
                v300 = v325;
                v301 = *(v325 + 8);
                v303 = v314;
LABEL_171:
                v301(v303, a4);
                v302 = v216;
LABEL_172:
                v301(v302, a4);
                (*(v300 + 56))(v322, 1, 1, a4);
LABEL_166:
                v88 = v318;
                goto LABEL_167;
              }

              v312 = v246;
              v265 = v262 - 87;
            }

            else
            {
              v312 = v246;
              v265 = v262 - 55;
            }

            LOBYTE(v328) = v265;
            v263 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v258, v259, v260);
          }

          else
          {
            v312 = v246;
            LOBYTE(v328) = v262 - 48;
            v263 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v258, v259, v260);
            v264 = v308;
          }

          (v316)(&v328, &type metadata for UInt8, v263, a4, v327);
          v266 = v326;
          v267 = v323;
          v268 = v314;
          v269 = v261;
          LODWORD(v320) = (*(v326 + 96))(v323, v216, a4, v326);
          v123 = *v321;
          (*v321)(v268, a4);
          v270 = *v319;
          (*v319)(v268, v267, a4);
          v271 = v324;
          v272 = (*(v266 + 80))(v324, v264, a4, v266);
          (v123)(v264, a4);
          (v123)(v268, a4);
          v258 = v270(v268, v271, a4);
          if (v320 & 1) != 0 || (v272)
          {
            break;
          }

          v245 = v313 + 1;
          v246 = v312 - 1;
          v216 = v311;
          LOBYTE(v249) = v307;
          v261 = v269;
          if (v312 == 1)
          {
            goto LABEL_135;
          }
        }

        (v123)(v314, a4);
        v189 = v311;
        goto LABEL_164;
      }

LABEL_135:
      v236 = v325;
      (*(v325 + 8))(v216, a4);
      v237 = v322;
      (*(v236 + 32))(v322, v314, a4);
    }

    else
    {
      if (v85 != 45)
      {
        v273 = a2 + 55;
        v274 = a2 + 87;
        if (a2 <= 10)
        {
          v274 = 97;
        }

        LODWORD(v307) = v274;
        if (a2 <= 10)
        {
          v273 = 65;
        }

        LODWORD(v308) = v273;
        v328 = a2;
        v275 = v35;
        if (a2 <= 10)
        {
          v276 = a2 + 48;
        }

        else
        {
          v276 = 58;
        }

        v277 = v327;
        v279 = (v327 + 96);
        v278 = *(v327 + 96);
        v280 = lazy protocol witness table accessor for type Int and conformance Int(v85, v86, v87);
        v314 = v278;
        (v278)(&v328, &type metadata for Int, v280, a4, v277);
        v281 = v321;
        v282 = v319;
        v283 = swift_getAssociatedConformanceWitness(v321, a4, v319, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v284 = v320;
        (*(v283 + 8))(&qword_18071E0A8, 256, v282, v283);
        v285 = v281[3];
        v319 = v275;
        v286 = (v285)(v284, a4, v281);
        v321 = (v325 + 8);
        v315 = (v326 + 80);
        v316 = (v325 + 32);
        v289 = v329;
        v290 = v304;
        LODWORD(v311) = v276;
        v310 = v279;
        v309 = (v326 + 96);
        while (1)
        {
          v291 = *v289;
          if (v291 < 0x30 || v291 >= v276)
          {
            if (v291 < 0x41 || v291 >= v308)
            {
              if (v291 < 0x61 || v291 >= v307)
              {
                v300 = v325;
                v301 = *(v325 + 8);
                v301(v319, a4);
                v302 = v317;
                goto LABEL_172;
              }

              v312 = v289;
              v313 = v199;
              v292 = v291 - 87;
            }

            else
            {
              v312 = v289;
              v313 = v199;
              v292 = v291 - 55;
            }

            LOBYTE(v328) = v292;
          }

          else
          {
            v312 = v289;
            v313 = v199;
            LOBYTE(v328) = v291 - 48;
          }

          v293 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v286, v287, v288);
          (v314)(&v328, &type metadata for UInt8, v293, a4, v327);
          v294 = v326;
          v295 = v323;
          v296 = v319;
          LODWORD(v320) = (*(v326 + 96))(v323, v317, a4, v326);
          v159 = *v321;
          (*v321)(v296, a4);
          v297 = *v316;
          (*v316)(v296, v295, a4);
          v298 = v324;
          v299 = (*(v294 + 80))(v324, v290, a4, v294);
          (v159)(v290, a4);
          (v159)(v296, a4);
          v286 = v297(v296, v298, a4);
          if (v320 & 1) != 0 || (v299)
          {
            break;
          }

          v289 = v312 + 1;
          v199 = (v313 - 1);
          LOBYTE(v276) = v311;
          if (v313 == 1)
          {
            (v159)(v317, a4);
            v188 = v322;
            v297(v322, v319, a4);
LABEL_159:
            (*(v325 + 56))(v188, 0, 1, a4);
            goto LABEL_166;
          }
        }

        (v159)(v296, a4);
        v190 = v317;
LABEL_161:
        (v159)(v190, a4);
        goto LABEL_165;
      }

      v200 = specialized Collection.subscript.getter(1, v329, HIBYTE(v88) & 0xF);
      v204 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v200, v201, v202, v203);
      if (!v205)
      {
        goto LABEL_173;
      }

      v207 = v204;
      v208 = v205;
      v209 = a2 + 55;
      v210 = a2 + 87;
      if (a2 <= 10)
      {
        v210 = 97;
      }

      LODWORD(v309) = v210;
      if (a2 <= 10)
      {
        v209 = 65;
      }

      LODWORD(v311) = v209;
      v328 = a2;
      if (a2 <= 10)
      {
        v211 = a2 + 48;
      }

      else
      {
        v211 = 58;
      }

      v212 = v327;
      v213 = (v327 + 96);
      v214 = *(v327 + 96);
      v215 = lazy protocol witness table accessor for type Int and conformance Int(v204, v205, v206);
      v216 = v310;
      v316 = v214;
      v317 = v213;
      (v214)(&v328, &type metadata for Int, v215, a4, v212);
      v217 = v321;
      v218 = v319;
      v219 = swift_getAssociatedConformanceWitness(v321, a4, v319, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v220 = v320;
      (*(v219 + 8))(&qword_18071E0A8, 256, v218, v219);
      v221 = (v217[3])(v220, a4, v217);
      if (v207)
      {
        v224 = v326 + 96;
        v321 = (v325 + 8);
        v319 = (v325 + 32);
        v315 = (v326 + 88);
        LODWORD(v308) = v211;
        while (1)
        {
          v314 = v207;
          v225 = *v207;
          if (v225 < 0x30 || v225 >= v211)
          {
            v227 = v307;
            if (v225 < 0x41 || v225 >= v311)
            {
              if (v225 < 0x61 || v225 >= v309)
              {
                v300 = v325;
                v301 = *(v325 + 8);
                v303 = v313;
                goto LABEL_171;
              }

              v312 = v208;
              v228 = v225 - 87;
            }

            else
            {
              v312 = v208;
              v228 = v225 - 55;
            }

            LOBYTE(v328) = v228;
            v226 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v221, v222, v223);
          }

          else
          {
            v312 = v208;
            LOBYTE(v328) = v225 - 48;
            v226 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v221, v222, v223);
            v227 = v307;
          }

          (v316)(&v328, &type metadata for UInt8, v226, a4, v327);
          v229 = v326;
          v230 = v323;
          v231 = v313;
          v232 = v224;
          LODWORD(v320) = (*(v326 + 96))(v323, v216, a4, v326);
          v123 = *v321;
          (*v321)(v231, a4);
          v233 = *v319;
          (*v319)(v231, v230, a4);
          v234 = v324;
          v235 = (*(v229 + 88))(v324, v227, a4, v229);
          (v123)(v227, a4);
          (v123)(v231, a4);
          v221 = v233(v231, v234, a4);
          if (v320 & 1) != 0 || (v235)
          {
            break;
          }

          v207 = v314 + 1;
          v208 = v312 - 1;
          v216 = v310;
          LOBYTE(v211) = v308;
          v224 = v232;
          if (v312 == 1)
          {
            goto LABEL_111;
          }
        }

        (v123)(v313, a4);
        v189 = v310;
LABEL_164:
        (v123)(v189, a4);
LABEL_165:
        (*(v325 + 56))(v322, 1, 1, a4);
        goto LABEL_166;
      }

LABEL_111:
      v236 = v325;
      (*(v325 + 8))(v216, a4);
      v237 = v322;
      (*(v236 + 32))(v322, v313, a4);
    }

    (*(v236 + 56))(v237, 0, 1, a4);
    goto LABEL_166;
  }

  v196 = specialized static String._copying(_:)(v85, v86);
  v198 = v197;
  v88;
  v85 = v196;
  v88 = v198;
  if ((v198 & 0x2000000000000000) != 0)
  {
    goto LABEL_85;
  }

LABEL_3:
  if ((v85 & 0x1000000000000000) == 0)
  {
    v85 = _StringObject.sharedUTF8.getter(v85, v88);
    v89 = v85;
    v90 = v86;
    if (v86 > 0)
    {
      goto LABEL_5;
    }

LABEL_175:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v89 = ((v88 & 0xFFFFFFFFFFFFFFFLL) + 32);
  v90 = v85 & 0xFFFFFFFFFFFFLL;
  if ((v85 & 0xFFFFFFFFFFFFLL) == 0)
  {
    goto LABEL_175;
  }

LABEL_5:
  v91 = *v89;
  if (v91 != 43)
  {
    if (v91 != 45)
    {
      v318 = v88;
      v163 = a2 + 55;
      v164 = a2 + 87;
      if (a2 <= 10)
      {
        v164 = 97;
      }

      LODWORD(v307) = v164;
      if (a2 <= 10)
      {
        v163 = 65;
      }

      LODWORD(v308) = v163;
      v329[0] = a2;
      if (a2 <= 10)
      {
        v165 = a2 + 48;
      }

      else
      {
        v165 = 58;
      }

      v166 = v327;
      v167 = (v327 + 96);
      v168 = *(v327 + 96);
      v169 = lazy protocol witness table accessor for type Int and conformance Int(v85, v86, v87);
      v313 = v168;
      v314 = v167;
      (v168)(v329, &type metadata for Int, v169, a4, v166);
      v170 = v321;
      v171 = v319;
      v172 = swift_getAssociatedConformanceWitness(v321, a4, v319, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v173 = v320;
      (*(v172 + 8))(&qword_18071E0A8, 256, v171, v172);
      v174 = (v170[3])(v173, a4, v170);
      v321 = (v325 + 8);
      v319 = (v325 + 32);
      v317 = (v326 + 80);
      LODWORD(v310) = v165;
      v309 = (v326 + 96);
      while (1)
      {
        v177 = *v89;
        if (v177 < 0x30 || v177 >= v165)
        {
          if (v177 < 0x41 || v177 >= v308)
          {
            if (v177 < 0x61 || v177 >= v307)
            {
              v191 = v325;
              v192 = *(v325 + 8);
              v192(v64, a4);
              v192(v316, a4);
              (*(v191 + 56))(v322, 1, 1, a4);
              goto LABEL_166;
            }

            v311 = v89;
            v312 = v90;
            v179 = v177 - 87;
          }

          else
          {
            v311 = v89;
            v312 = v90;
            v179 = v177 - 55;
          }

          LOBYTE(v329[0]) = v179;
          v178 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v174, v175, v176);
        }

        else
        {
          v311 = v89;
          v312 = v90;
          LOBYTE(v329[0]) = v177 - 48;
          v178 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v174, v175, v176);
        }

        (v313)(v329, &type metadata for UInt8, v178, a4, v327);
        v180 = v326;
        v181 = v323;
        v182 = v64;
        LODWORD(v320) = (*(v326 + 96))(v323, v316, a4, v326);
        v183 = *v321;
        (*v321)(v64, a4);
        v184 = *v319;
        (*v319)(v64, v181, a4);
        v185 = v324;
        v186 = v315;
        v187 = (*(v180 + 80))(v324, v315, a4, v180);
        (v183)(v186, a4);
        (v183)(v182, a4);
        v64 = v182;
        v174 = v184(v182, v185, a4);
        if (v320 & 1) != 0 || (v187)
        {
          (v183)(v182, a4);
          (v183)(v316, a4);
          (*(v325 + 56))(v322, 1, 1, a4);
          goto LABEL_166;
        }

        v89 = v311 + 1;
        v90 = (v312 - 1);
        LOBYTE(v165) = v310;
        if (v312 == 1)
        {
          (v183)(v316, a4);
          v188 = v322;
          v184(v322, v182, a4);
          goto LABEL_159;
        }
      }
    }

    v92 = specialized Collection.subscript.getter(1, v89, v90);
    v96 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v92, v93, v94, v95);
    if (v97)
    {
      v99 = v96;
      v100 = v97;
      v101 = a2 + 48;
      v102 = a2 + 55;
      v103 = a2 + 87;
      if (a2 <= 10)
      {
        v103 = 97;
      }

      LODWORD(v310) = v103;
      if (a2 <= 10)
      {
        v102 = 65;
      }

      LODWORD(v311) = v102;
      v329[0] = a2;
      if (a2 > 10)
      {
        v101 = 58;
      }

      LODWORD(v315) = v101;
      v104 = v327;
      v105 = (v327 + 96);
      v106 = *(v327 + 96);
      v107 = lazy protocol witness table accessor for type Int and conformance Int(v96, v97, v98);
      v108 = v309;
      v316 = v106;
      v317 = v105;
      (v106)(v329, &type metadata for Int, v107, a4, v104);
      v109 = v321;
      v110 = v319;
      v111 = swift_getAssociatedConformanceWitness(v321, a4, v319, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v112 = v320;
      (*(v111 + 8))(&qword_18071E0A8, 256, v110, v111);
      v113 = (v109[3])(v112, a4, v109);
      if (v99)
      {
        v321 = (v325 + 8);
        v318 = v88;
        v319 = (v325 + 32);
        v314 = (v326 + 88);
        v308 = (v326 + 96);
        v116 = (v325 + 32);
        do
        {
          v313 = v100;
          v117 = *v99;
          if (v117 < 0x30 || v117 >= v315)
          {
            v119 = v305;
            if (v117 < 0x41 || v117 >= v311)
            {
              if (v117 < 0x61 || v117 >= v310)
              {
                v193 = v325;
                v194 = *(v325 + 8);
                v194(v77, a4);
                v195 = v108;
                goto LABEL_83;
              }

              v312 = v99;
              v120 = v117 - 87;
            }

            else
            {
              v312 = v99;
              v120 = v117 - 55;
            }

            LOBYTE(v329[0]) = v120;
            v118 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v113, v114, v115);
          }

          else
          {
            v312 = v99;
            LOBYTE(v329[0]) = v117 - 48;
            v118 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v113, v114, v115);
            v119 = v305;
          }

          (v316)(v329, &type metadata for UInt8, v118, a4, v327);
          v121 = v326;
          v122 = v323;
          LODWORD(v320) = (*(v326 + 96))(v323, v108, a4, v326);
          v123 = *v321;
          (*v321)(v77, a4);
          v124 = *v116;
          (*v116)(v77, v122, a4);
          v125 = v324;
          v126 = (*(v121 + 88))(v324, v119, a4, v121);
          (v123)(v119, a4);
          (v123)(v77, a4);
          v113 = v124(v77, v125, a4);
          if (v320 & 1) != 0 || (v126)
          {
            (v123)(v77, a4);
            v189 = v309;
            goto LABEL_164;
          }

          v99 = v312 + 1;
          v100 = v313 - 1;
          v88 = v318;
          v108 = v309;
        }

        while (v313 != 1);
      }

      v127 = v325;
      (*(v325 + 8))(v108, a4);
      v128 = v322;
      (*(v127 + 32))(v322, v77, a4);
      goto LABEL_54;
    }

LABEL_173:
    (*(v325 + 56))(v322, 1, 1, a4);
    goto LABEL_167;
  }

  v129 = specialized Collection.subscript.getter(1, v89, v90);
  v133 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v129, v130, v131, v132);
  if (!v134)
  {
    goto LABEL_173;
  }

  v136 = v133;
  v137 = v134;
  v138 = a2 + 55;
  v139 = a2 + 87;
  if (a2 <= 10)
  {
    v139 = 97;
  }

  LODWORD(v310) = v139;
  if (a2 <= 10)
  {
    v138 = 65;
  }

  LODWORD(v311) = v138;
  v329[0] = a2;
  if (a2 <= 10)
  {
    v140 = a2 + 48;
  }

  else
  {
    v140 = 58;
  }

  v141 = v327;
  v142 = (v327 + 96);
  v143 = *(v327 + 96);
  v144 = lazy protocol witness table accessor for type Int and conformance Int(v133, v134, v135);
  v316 = v143;
  v317 = v142;
  (v143)(v329, &type metadata for Int, v144, a4, v141);
  v145 = v321;
  v146 = v319;
  v147 = swift_getAssociatedConformanceWitness(v321, a4, v319, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v148 = v320;
  (*(v147 + 8))(&qword_18071E0A8, 256, v146, v147);
  v149 = (v145[3])(v148, a4, v145);
  if (!v136)
  {
LABEL_53:
    v127 = v325;
    (*(v325 + 8))(v312, a4);
    v128 = v322;
    (*(v127 + 32))(v322, v54, a4);
LABEL_54:
    (*(v127 + 56))(v128, 0, 1, a4);
    goto LABEL_167;
  }

  v321 = (v325 + 8);
  v318 = v88;
  v319 = (v325 + 32);
  v315 = (v326 + 80);
  LODWORD(v309) = v140;
  v308 = (v326 + 96);
  v152 = (v325 + 32);
  while (1)
  {
    v153 = *v136;
    if (v153 < 0x30 || v153 >= v140)
    {
      break;
    }

    v313 = v137;
    v314 = v136;
    LOBYTE(v329[0]) = v153 - 48;
    v154 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v149, v150, v151);
    v155 = v306;
LABEL_50:
    (v316)(v329, &type metadata for UInt8, v154, a4, v327);
    v157 = v326;
    v158 = v323;
    LODWORD(v320) = (*(v326 + 96))(v323, v312, a4, v326);
    v159 = *v321;
    (*v321)(v54, a4);
    v160 = *v152;
    (*v152)(v54, v158, a4);
    v161 = v324;
    v162 = (*(v157 + 80))(v324, v155, a4, v157);
    (v159)(v155, a4);
    (v159)(v54, a4);
    v149 = v160(v54, v161, a4);
    if (v320 & 1) != 0 || (v162)
    {
      (v159)(v54, a4);
      v190 = v312;
      goto LABEL_161;
    }

    v136 = v314 + 1;
    v137 = v313 - 1;
    v88 = v318;
    LOBYTE(v140) = v309;
    if (v313 == 1)
    {
      goto LABEL_53;
    }
  }

  v155 = v306;
  if (v153 >= 0x41 && v153 < v311)
  {
    v313 = v137;
    v314 = v136;
    v156 = v153 - 55;
LABEL_49:
    LOBYTE(v329[0]) = v156;
    v154 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v149, v150, v151);
    goto LABEL_50;
  }

  if (v153 >= 0x61 && v153 < v310)
  {
    v313 = v137;
    v314 = v136;
    v156 = v153 - 87;
    goto LABEL_49;
  }

  v193 = v325;
  v194 = *(v325 + 8);
  v194(v54, a4);
  v195 = v312;
LABEL_83:
  v194(v195, a4);
  (*(v193 + 56))(v322, 1, 1, a4);
LABEL_167:
  v88;
}

uint64_t _sSSySSxcs25LosslessStringConvertibleRzSTRzSJ7ElementSTRtzlufCSs_Tt0g5(Swift::UInt64 a1, Swift::String::Index a2, Swift::UInt64 a3, unint64_t a4)
{
  v4 = a3;
  v5 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (a1 >> 16 || a2._rawBits >> 16 != v5)
  {
    v4 = specialized static String._copying(_:)(a1, a2, a3, a4);
    a4;
  }

  return v4;
}

uint64_t String.init<A>(_:)(Swift::UInt64 *a1, Class *a2)
{
  v4 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v8 == &type metadata for String)
  {
    return *a1;
  }

  if (a2 == &type metadata for Substring)
  {
    v14._rawBits = a1[1];
    v15 = a1[3];
    v16 = Substring.description.getter(*a1, v14, a1[2], v15);
    v15;
    return v16;
  }

  else
  {
    v9 = v5;
    (*(v4 + 16))(v7, a1, a2);
    if (swift_dynamicCast(&v18, v7, a2, &type metadata for String, 6uLL, v10, v11, v12, v18))
    {
      (*(v4 + 8))(a1, a2);
      return v18;
    }

    else
    {
      v17 = (*(*(v9 + 8) + 8))(a2);
      (*(v4 + 8))(a1, a2);
      return v17;
    }
  }
}

uint64_t FixedWidthInteger.init<A>(_:radix:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, Class *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v68 = a5;
  v69 = a1;
  v67 = a7;
  swift_getAssociatedTypeWitness(0, a6, a4, &protocol requirements base descriptor for StringProtocol, associated type descriptor for StringProtocol.UTF8View);
  v12 = v11;
  v66 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v59 - v14;
  v18 = type metadata accessor for Optional(255, a3, v16, v17);
  v21 = type metadata accessor for Optional(0, v18, v19, v20);
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v23, v26);
  v29 = &v59 - v28;
  v31 = MEMORY[0x1EEE9AC00](v27, v30);
  v33 = MEMORY[0x1EEE9AC00](v31, v32);
  v38 = &v59 - v37;
  if ((a2 - 37) <= 0xFFFFFFFFFFFFFFDCLL)
  {
    LODWORD(v58) = 0;
    v57 = 128;
    LOBYTE(v56) = 2;
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v60 = v36;
  v61 = v33;
  v63 = v34;
  v64 = a2;
  v62 = v35;
  v65 = a3;
  v39 = v68;
  if ((*(*(*(a6 + 8) + 8) + 104))(a4))
  {
    (*(*(a4 - 1) + 1))(v69, a4);
    v48 = v65;
    v51 = *(v65 - 1);
  }

  else
  {
    v40 = (*(a6 + 120))(a4, a6);
    v59 = &v59;
    MEMORY[0x1EEE9AC00](v40, v41);
    v42 = v64;
    *(&v59 - 6) = v65;
    *(&v59 - 5) = a4;
    v56 = v39;
    v57 = a6;
    v58 = v42;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a6, a4, v12, &protocol requirements base descriptor for StringProtocol, associated conformance descriptor for StringProtocol.StringProtocol.UTF8View: Collection);
    (*(*(AssociatedConformanceWitness + 8) + 72))(partial apply for closure #1 in FixedWidthInteger.init<A>(_:radix:), &v59 - 8, v18, v12);
    (*(v66 + 8))(v15, v12);
    v45 = v60;
    v44 = v61;
    (*(v60 + 32))(v25, v29, v61);
    v46 = v63;
    if ((*(v63 + 48))(v25, 1, v18) == 1)
    {
      v47 = v69;
      v48 = v65;
      _parseInteger<A, B>(ascii:radix:)(v69, v64, a4, v65, v68, v38);
      (*(*(a4 - 1) + 1))(v47, a4);
      (*(v45 + 8))(v25, v44);
      v49 = *(v46 + 32);
    }

    else
    {
      (*(*(a4 - 1) + 1))(v69, a4);
      v49 = *(v46 + 32);
      v49(v38, v25, v18);
      v48 = v65;
    }

    v50 = v62;
    v49(v62, v38, v18);
    v51 = *(v48 - 1);
    v52 = v51;
    if ((*(v51 + 48))(v50, 1, v48) != 1)
    {
      v54 = v67;
      (*(v51 + 32))(v67, v50, v48);
      v53 = 0;
      return (*(v52 + 56))(v54, v53, 1, v48);
    }

    (*(v46 + 8))(v50, v18);
  }

  v52 = v51;
  v53 = 1;
  v54 = v67;
  return (*(v52 + 56))(v54, v53, 1, v48);
}

unint64_t specialized closure #1 in FixedWidthInteger.init<A>(_:radix:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  if (a2 <= 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v6 = a1;
  v7 = *a1;
  if (v7 == 43)
  {
    v37 = specialized Collection.subscript.getter(1, a1, v5);
    v41 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v37, v38, v39, v40);
    if (!v42)
    {
      return 0;
    }

    v44 = v41;
    v45 = a3 + 48;
    v46 = a3 + 55;
    v47 = a3 + 87;
    if (a3 > 10)
    {
      v45 = 58;
    }

    else
    {
      v47 = 97;
      v46 = 65;
    }

    if (v41)
    {
      v19 = 0;
      v48 = 0;
      v49 = -a3;
      v50 = -__PAIR128__(v43, a3) >> 64;
      if (a3 >> 63 != -1)
      {
        v50 = a3 >> 63;
        v49 = a3;
      }

      while (1)
      {
        v51 = *v44;
        if (v51 < 0x30 || v51 >= v45)
        {
          if (v51 < 0x41 || v51 >= v46)
          {
            result = 0;
            if (v51 < 0x61 || v51 >= v47)
            {
              return result;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = __PAIR128__(v48 ^ (v48 >> 63), v19 ^ (v48 >> 63)) - __PAIR128__(v48 >> 63, v48 >> 63);
        if ((__PAIR128__(v48 ^ (v48 >> 63), v19 ^ (v48 >> 63)) - __PAIR128__(v48 >> 63, v48 >> 63)) >> 64)
        {
          v54 = v50 == 0;
        }

        else
        {
          v54 = 1;
        }

        v57 = !v54 || (*(&v53 + 1) * v49) >> 64 != 0 || (v50 * v53) >> 64 != 0;
        v58 = (__PAIR128__(v50, v49) * v53) >> 64;
        if (__CFADD__((v53 * v49) >> 64, v50 * v53 + *(&v53 + 1) * v49))
        {
          v59 = 1;
        }

        else
        {
          v59 = v57;
        }

        v60 = v53 * v49;
        if ((v48 ^ (a3 >> 63)) < 0)
        {
          if (v59)
          {
            return 0;
          }

          v35 = v60 == 0;
          v60 = -v60;
          v58 = -(v58 + !v35);
          LOBYTE(v61) = v60 != 0;
        }

        else
        {
          if (v59)
          {
            return 0;
          }

          v61 = v58 >> 63;
        }

        result = 0;
        v35 = __CFADD__(v60, (v51 + v52));
        v48 = (__PAIR128__(v58, v60) + (v51 + v52)) >> 64;
        v19 = v60 + (v51 + v52);
        v62 = __OFADD__(v35, v58);
        if ((v61 & 1) != 0 || v62)
        {
          return result;
        }

        ++v44;
        if (!--v42)
        {
          return v19;
        }
      }
    }

    return 0;
  }

  if (v7 == 45)
  {
    v8 = specialized Collection.subscript.getter(1, a1, v5);
    v12 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v8, v9, v10, v11);
    if (!v13)
    {
      return 0;
    }

    v15 = v12;
    v16 = a3 + 48;
    v17 = a3 + 55;
    v18 = a3 + 87;
    if (a3 > 10)
    {
      v16 = 58;
    }

    else
    {
      v18 = 97;
      v17 = 65;
    }

    if (v12)
    {
      v19 = 0;
      v20 = 0;
      v21 = -a3;
      v22 = -__PAIR128__(v14, a3) >> 64;
      if (a3 >> 63 != -1)
      {
        v22 = a3 >> 63;
        v21 = a3;
      }

      while (1)
      {
        v23 = *v15;
        if (v23 < 0x30 || v23 >= v16)
        {
          if (v23 < 0x41 || v23 >= v17)
          {
            result = 0;
            if (v23 < 0x61 || v23 >= v18)
            {
              return result;
            }

            v24 = -87;
          }

          else
          {
            v24 = -55;
          }
        }

        else
        {
          v24 = -48;
        }

        v26 = __PAIR128__(v20 ^ (v20 >> 63), v19 ^ (v20 >> 63)) - __PAIR128__(v20 >> 63, v20 >> 63);
        v27 = !((__PAIR128__(v20 ^ (v20 >> 63), v19 ^ (v20 >> 63)) - __PAIR128__(v20 >> 63, v20 >> 63)) >> 64) || v22 == 0;
        v28 = v27 && (*(&v26 + 1) * v21) >> 64 == 0;
        v29 = v28 && (v22 * v26) >> 64 == 0;
        v30 = !v29;
        v31 = (__PAIR128__(v22, v21) * v26) >> 64;
        v32 = __CFADD__((v26 * v21) >> 64, v22 * v26 + *(&v26 + 1) * v21) || v30;
        v33 = v26 * v21;
        if ((v20 ^ (a3 >> 63)) < 0)
        {
          if (v32)
          {
            return 0;
          }

          v35 = v33 == 0;
          v33 = -v33;
          v31 = -(v31 + !v35);
          LOBYTE(v34) = v33 != 0;
        }

        else
        {
          if (v32)
          {
            return 0;
          }

          v34 = v31 >> 63;
        }

        result = 0;
        v35 = v33 >= (v23 + v24);
        v20 = (__PAIR128__(v31, v33) - (v23 + v24)) >> 64;
        v19 = v33 - (v23 + v24);
        v36 = __OFSUB__(v31, !v35);
        if ((v34 & 1) != 0 || v36)
        {
          break;
        }

        ++v15;
        if (!--v13)
        {
          return v19;
        }
      }

      return result;
    }

    return 0;
  }

  v63 = 0;
  v64 = 0;
  v65 = a3 + 48;
  v66 = a3 + 55;
  v67 = a3 + 87;
  if (a3 > 10)
  {
    v65 = 58;
  }

  else
  {
    v67 = 97;
    v66 = 65;
  }

  v68 = -a3;
  v69 = -__PAIR128__(v3, a3) >> 64;
  if (a3 >> 63 != -1)
  {
    v68 = a3;
    v69 = a3 >> 63;
  }

  while (1)
  {
    v70 = *v6;
    if (v70 < 0x30 || v70 >= v65)
    {
      if (v70 < 0x41 || v70 >= v66)
      {
        result = 0;
        if (v70 < 0x61 || v70 >= v67)
        {
          return result;
        }

        v71 = -87;
      }

      else
      {
        v71 = -55;
      }
    }

    else
    {
      v71 = -48;
    }

    v72 = __PAIR128__(v64 ^ (v64 >> 63), v63 ^ (v64 >> 63)) - __PAIR128__(v64 >> 63, v64 >> 63);
    v73 = !((__PAIR128__(v64 ^ (v64 >> 63), v63 ^ (v64 >> 63)) - __PAIR128__(v64 >> 63, v64 >> 63)) >> 64) || v69 == 0;
    v74 = v73 && (*(&v72 + 1) * v68) >> 64 == 0;
    v75 = v74 && (v69 * v72) >> 64 == 0;
    v76 = !v75;
    v77 = (__PAIR128__(v69, v68) * v72) >> 64;
    v78 = __CFADD__((v72 * v68) >> 64, v69 * v72 + *(&v72 + 1) * v68) || v76;
    v79 = v72 * v68;
    if ((v64 ^ (a3 >> 63)) < 0)
    {
      if (v78)
      {
        return 0;
      }

      v35 = v79 == 0;
      v79 = -v79;
      v77 = -(v77 + !v35);
      LOBYTE(v80) = v79 != 0;
    }

    else
    {
      if (v78)
      {
        return 0;
      }

      v80 = v77 >> 63;
    }

    result = 0;
    v35 = __CFADD__(v79, (v70 + v71));
    v64 = (__PAIR128__(v77, v79) + (v70 + v71)) >> 64;
    v63 = v79 + (v70 + v71);
    v81 = __OFADD__(v35, v77);
    if ((v80 & 1) != 0 || v81)
    {
      break;
    }

    ++v6;
    if (!--v5)
    {
      return v63;
    }
  }

  return result;
}

{
  v4 = a2;
  if (a2 <= 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = a1;
  v6 = *a1;
  if (v6 == 43)
  {
    v35 = specialized Collection.subscript.getter(1, a1, v4);
    v39 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v35, v36, v37, v38);
    if (!v40)
    {
      return 0;
    }

    v41 = v39;
    v42 = a3 + 55;
    v43 = a3 + 87;
    if (a3 > 10)
    {
      v44 = 58;
    }

    else
    {
      v43 = 97;
      v42 = 65;
      v44 = a3 + 48;
    }

    if (!v39)
    {
      return 0;
    }

    v17 = 0;
    v45 = 0;
    v46 = a3 >> 63;
    while (1)
    {
      v47 = *v41;
      if (v47 < 0x30 || v47 >= v44)
      {
        if (v47 < 0x41 || v47 >= v42)
        {
          result = 0;
          if (v47 < 0x61 || v47 >= v43)
          {
            return result;
          }

          v48 = -87;
        }

        else
        {
          v48 = -55;
        }
      }

      else
      {
        v48 = -48;
      }

      result = 0;
      v49 = v47 + v48;
      if (v45)
      {
        v50 = a3 >= 0;
      }

      else
      {
        v50 = 1;
      }

      v53 = !v50 || (v45 * a3) >> 64 != 0 || (v46 * v17) >> 64 != 0;
      v54 = v46 * v17 + v45 * a3;
      v55 = (v17 * a3) >> 64;
      v30 = __CFADD__(v55, v54);
      v56 = v55 + v54;
      if (v30)
      {
        v53 = 1;
      }

      v57 = v17 * a3;
      v30 = __CFADD__(v57, v49);
      v17 = v57 + v49;
      v58 = v30;
      v30 = __CFADD__(v30, v56);
      v45 = v58 + v56;
      v59 = v30;
      if ((v53 & 1) != 0 || v59)
      {
        break;
      }

      ++v41;
      if (!--v40)
      {
        return v17;
      }
    }
  }

  else
  {
    if (v6 == 45)
    {
      v7 = specialized Collection.subscript.getter(1, a1, v4);
      v11 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v7, v8, v9, v10);
      if (!v12)
      {
        return 0;
      }

      v13 = v11;
      v14 = a3 + 55;
      v15 = a3 + 87;
      if (a3 > 10)
      {
        v16 = 58;
      }

      else
      {
        v15 = 97;
        v14 = 65;
        v16 = a3 + 48;
      }

      if (v11)
      {
        v17 = 0;
        v18 = 0;
        v19 = a3 >> 63;
        while (1)
        {
          v20 = *v13;
          if (v20 < 0x30 || v20 >= v16)
          {
            if (v20 < 0x41 || v20 >= v14)
            {
              result = 0;
              if (v20 < 0x61 || v20 >= v15)
              {
                return result;
              }

              v21 = -87;
            }

            else
            {
              v21 = -55;
            }
          }

          else
          {
            v21 = -48;
          }

          result = 0;
          v23 = v20 + v21;
          if (v18)
          {
            v24 = a3 >= 0;
          }

          else
          {
            v24 = 1;
          }

          v27 = !v24 || (v18 * a3) >> 64 != 0 || (v19 * v17) >> 64 != 0;
          v28 = v19 * v17 + v18 * a3;
          v29 = (v17 * a3) >> 64;
          v30 = __CFADD__(v29, v28);
          v31 = v29 + v28;
          if (v30)
          {
            v27 = 1;
          }

          v32 = v17 * a3;
          v30 = v32 >= v23;
          v17 = v32 - v23;
          v33 = v30;
          v30 = v31 >= !v30;
          v18 = v31 - !v33;
          v34 = !v30;
          if ((v27 & 1) != 0 || v34)
          {
            break;
          }

          ++v13;
          if (!--v12)
          {
            return v17;
          }
        }

        return result;
      }

      return 0;
    }

    v60 = 0;
    v61 = 0;
    v62 = a3 + 48;
    v63 = a3 + 55;
    v64 = a3 + 87;
    if (a3 > 10)
    {
      v62 = 58;
    }

    else
    {
      v64 = 97;
      v63 = 65;
    }

    v65 = a3 >> 63;
    while (1)
    {
      v66 = *v5;
      if (v66 < 0x30 || v66 >= v62)
      {
        if (v66 < 0x41 || v66 >= v63)
        {
          result = 0;
          if (v66 < 0x61 || v66 >= v64)
          {
            return result;
          }

          v67 = -87;
        }

        else
        {
          v67 = -55;
        }
      }

      else
      {
        v67 = -48;
      }

      result = 0;
      v68 = v66 + v67;
      if (v61)
      {
        v69 = a3 >= 0;
      }

      else
      {
        v69 = 1;
      }

      v72 = !v69 || (v61 * a3) >> 64 != 0 || (v65 * v60) >> 64 != 0;
      v73 = v65 * v60 + v61 * a3;
      v74 = (v60 * a3) >> 64;
      v30 = __CFADD__(v74, v73);
      v75 = v74 + v73;
      if (v30)
      {
        v72 = 1;
      }

      v76 = v60 * a3;
      v30 = __CFADD__(v76, v68);
      v60 = v76 + v68;
      v77 = v30;
      v30 = __CFADD__(v30, v75);
      v61 = v77 + v75;
      v78 = v30;
      if ((v72 & 1) != 0 || v78)
      {
        break;
      }

      ++v5;
      if (!--v4)
      {
        return v60;
      }
    }
  }

  return result;
}

{
  v4 = a2;
  if (a2 <= 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = a1;
  v6 = *a1;
  if (v6 == 43)
  {
    v7 = 1;
    v26 = specialized Collection.subscript.getter(1, a1, v4);
    v30 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v26, v27, v28, v29);
    if (!v31)
    {
      v20 = 0;
      return v20 | (v7 << 32);
    }

    v32 = a3 + 55;
    v33 = a3 + 87;
    if (a3 > 10)
    {
      v34 = 58;
    }

    else
    {
      v33 = 97;
      v32 = 65;
      v34 = a3 + 48;
    }

    if (!v30)
    {
      goto LABEL_67;
    }

    v35 = 0;
    do
    {
      v36 = *v30;
      if (v36 < 0x30 || v36 >= v34)
      {
        if (v36 < 0x41 || v36 >= v32)
        {
          v20 = 0;
          v7 = 1;
          if (v36 < 0x61 || v36 >= v33)
          {
            return v20 | (v7 << 32);
          }

          v37 = -87;
        }

        else
        {
          v37 = -55;
        }
      }

      else
      {
        v37 = -48;
      }

      v20 = 0;
      v38 = v36 + v37;
      v39 = v35 * a3;
      v40 = (v39 & 0xFFFFFFFF00000000) != 0;
      v24 = __CFADD__(v39, v38);
      v35 = v39 + v38;
      v41 = v24;
      v7 = 1;
      if (v40)
      {
        break;
      }

      if (v41)
      {
        break;
      }

      v7 = 0;
      ++v30;
      v20 = v35;
      --v31;
    }

    while (v31);
  }

  else
  {
    if (v6 == 45)
    {
      v7 = 1;
      v8 = specialized Collection.subscript.getter(1, a1, v4);
      v12 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v8, v9, v10, v11);
      if (!v13)
      {
        v20 = 0;
        return v20 | (v7 << 32);
      }

      v14 = a3 + 55;
      v15 = a3 + 87;
      if (a3 > 10)
      {
        v16 = 58;
      }

      else
      {
        v15 = 97;
        v14 = 65;
        v16 = a3 + 48;
      }

      if (v12)
      {
        v17 = 0;
        do
        {
          v18 = *v12;
          if (v18 < 0x30 || v18 >= v16)
          {
            if (v18 < 0x41 || v18 >= v14)
            {
              v20 = 0;
              v7 = 1;
              if (v18 < 0x61 || v18 >= v15)
              {
                return v20 | (v7 << 32);
              }

              v19 = -87;
            }

            else
            {
              v19 = -55;
            }
          }

          else
          {
            v19 = -48;
          }

          v20 = 0;
          v21 = v18 + v19;
          v22 = v17 * a3;
          v23 = (v22 & 0xFFFFFFFF00000000) != 0;
          v24 = v22 >= v21;
          v17 = v22 - v21;
          v25 = !v24;
          v7 = 1;
          if (v23)
          {
            break;
          }

          if (v25)
          {
            break;
          }

          v7 = 0;
          ++v12;
          v20 = v17;
          --v13;
        }

        while (v13);
        return v20 | (v7 << 32);
      }

LABEL_67:
      v20 = 0;
      v7 = 0;
      return v20 | (v7 << 32);
    }

    v42 = 0;
    v43 = a3 + 55;
    v44 = a3 + 87;
    if (a3 > 10)
    {
      v45 = 58;
    }

    else
    {
      v44 = 97;
      v43 = 65;
      v45 = a3 + 48;
    }

    do
    {
      v46 = *v5;
      if (v46 < 0x30 || v46 >= v45)
      {
        if (v46 < 0x41 || v46 >= v43)
        {
          v20 = 0;
          v7 = 1;
          if (v46 < 0x61 || v46 >= v44)
          {
            return v20 | (v7 << 32);
          }

          v47 = -87;
        }

        else
        {
          v47 = -55;
        }
      }

      else
      {
        v47 = -48;
      }

      v20 = 0;
      v48 = v46 + v47;
      v49 = v42 * a3;
      v50 = (v49 & 0xFFFFFFFF00000000) != 0;
      v24 = __CFADD__(v49, v48);
      v42 = v49 + v48;
      v51 = v24;
      v7 = 1;
      if (v50)
      {
        break;
      }

      if (v51)
      {
        break;
      }

      v7 = 0;
      ++v5;
      v20 = v42;
      --v4;
    }

    while (v4);
  }

  return v20 | (v7 << 32);
}

{
  v4 = a2;
  if (a2 <= 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = a1;
  v6 = *a1;
  if (v6 == 43)
  {
    v7 = 1;
    v26 = specialized Collection.subscript.getter(1, a1, v4);
    v30 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v26, v27, v28, v29);
    if (!v31)
    {
      v20 = 0;
      return v20 | (v7 << 32);
    }

    v32 = a3 + 55;
    v33 = a3 + 87;
    if (a3 > 10)
    {
      v34 = 58;
    }

    else
    {
      v33 = 97;
      v32 = 65;
      v34 = a3 + 48;
    }

    if (!v30)
    {
      goto LABEL_67;
    }

    v35 = 0;
    do
    {
      v36 = *v30;
      if (v36 < 0x30 || v36 >= v34)
      {
        if (v36 < 0x41 || v36 >= v32)
        {
          v20 = 0;
          v7 = 1;
          if (v36 < 0x61 || v36 >= v33)
          {
            return v20 | (v7 << 32);
          }

          v37 = -87;
        }

        else
        {
          v37 = -55;
        }
      }

      else
      {
        v37 = -48;
      }

      v20 = 0;
      v38 = v36 + v37;
      v39 = v35 * a3;
      v40 = v39 != v39;
      v24 = __OFADD__(v39, v38);
      v35 = v39 + v38;
      v41 = v24;
      v7 = 1;
      if (v40)
      {
        break;
      }

      if (v41)
      {
        break;
      }

      v7 = 0;
      ++v30;
      v20 = v35;
      --v31;
    }

    while (v31);
  }

  else
  {
    if (v6 == 45)
    {
      v7 = 1;
      v8 = specialized Collection.subscript.getter(1, a1, v4);
      v12 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v8, v9, v10, v11);
      if (!v13)
      {
        v20 = 0;
        return v20 | (v7 << 32);
      }

      v14 = a3 + 55;
      v15 = a3 + 87;
      if (a3 > 10)
      {
        v16 = 58;
      }

      else
      {
        v15 = 97;
        v14 = 65;
        v16 = a3 + 48;
      }

      if (v12)
      {
        v17 = 0;
        do
        {
          v18 = *v12;
          if (v18 < 0x30 || v18 >= v16)
          {
            if (v18 < 0x41 || v18 >= v14)
            {
              v20 = 0;
              v7 = 1;
              if (v18 < 0x61 || v18 >= v15)
              {
                return v20 | (v7 << 32);
              }

              v19 = -87;
            }

            else
            {
              v19 = -55;
            }
          }

          else
          {
            v19 = -48;
          }

          v20 = 0;
          v21 = v18 + v19;
          v22 = v17 * a3;
          v23 = v22 != v22;
          v24 = __OFSUB__(v22, v21);
          v17 = v22 - v21;
          v25 = v24;
          v7 = 1;
          if (v23)
          {
            break;
          }

          if (v25)
          {
            break;
          }

          v7 = 0;
          ++v12;
          v20 = v17;
          --v13;
        }

        while (v13);
        return v20 | (v7 << 32);
      }

LABEL_67:
      v20 = 0;
      v7 = 0;
      return v20 | (v7 << 32);
    }

    v42 = 0;
    v43 = a3 + 55;
    v44 = a3 + 87;
    if (a3 > 10)
    {
      v45 = 58;
    }

    else
    {
      v44 = 97;
      v43 = 65;
      v45 = a3 + 48;
    }

    do
    {
      v46 = *v5;
      if (v46 < 0x30 || v46 >= v45)
      {
        if (v46 < 0x41 || v46 >= v43)
        {
          v20 = 0;
          v7 = 1;
          if (v46 < 0x61 || v46 >= v44)
          {
            return v20 | (v7 << 32);
          }

          v47 = -87;
        }

        else
        {
          v47 = -55;
        }
      }

      else
      {
        v47 = -48;
      }

      v20 = 0;
      v48 = v46 + v47;
      v49 = v42 * a3;
      v50 = v49 != v49;
      v24 = __OFADD__(v49, v48);
      v42 = v49 + v48;
      v51 = v24;
      v7 = 1;
      if (v50)
      {
        break;
      }

      if (v51)
      {
        break;
      }

      v7 = 0;
      ++v5;
      v20 = v42;
      --v4;
    }

    while (v4);
  }

  return v20 | (v7 << 32);
}

{
  v4 = a2;
  if (a2 <= 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = a1;
  v6 = *a1;
  if (v6 == 43)
  {
    v36 = specialized Collection.subscript.getter(1, a1, v4);
    v40 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v36, v37, v38, v39);
    if (v41)
    {
      v42 = v40;
      v43 = a3 + 55;
      v44 = a3 + 87;
      v45 = -1;
      if (a3 >= 0)
      {
        v46 = a3;
      }

      else
      {
        v46 = ~a3;
      }

      if (a3 >= 0)
      {
        v45 = 0;
      }

      if (a3 <= 10)
      {
        v47 = v46;
      }

      else
      {
        v47 = a3;
      }

      v48 = a3 <= 10 && a3 < 0;
      if (a3 <= 10)
      {
        v49 = v45;
      }

      else
      {
        v49 = 0;
      }

      if (a3 > 10)
      {
        v50 = 58;
      }

      else
      {
        v44 = 97;
        v43 = 65;
        v50 = a3 + 48;
      }

      if (!v42)
      {
        return 0;
      }

      v51 = 0;
      v52 = 0;
      v53 = v49 ^ v47;
      while (1)
      {
        v59 = *v42;
        if (v59 < 0x30 || v59 >= v50)
        {
          if (v59 < 0x41 || v59 >= v43)
          {
            result = 0;
            if (v59 < 0x61 || v59 >= v44)
            {
              return result;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        result = 0;
        v61 = !is_mul_ok(v52, v53);
        v62 = !is_mul_ok(v51, v49);
        v63 = __CFADD__(v52 * v53, v51 * v49);
        v64 = (__PAIR128__(v49, v53) * __PAIR128__(v52, v51)) >> 64;
        v65 = __CFADD__(v52 * v53 + v51 * v49, (v51 * v53) >> 64);
        v66 = v52 && v48;
        if (v66 || v61 || v62 || v63)
        {
          break;
        }

        v67 = v51 * v53;
        v68 = __CFADD__(v67, (v59 + v60));
        v51 = v67 + (v59 + v60);
        v69 = v68;
        if (v64 == -1)
        {
          if ((v69 | v65))
          {
            return 0;
          }

          v52 = -1;
        }

        else if (v69)
        {
          if (v65)
          {
            return 0;
          }

          v52 = v64 + 1;
        }

        else
        {
          v52 = v64;
          if (v65)
          {
            return 0;
          }
        }

        ++v42;
        if (!--v41)
        {
          return v51;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  else if (v6 == 45)
  {
    v7 = specialized Collection.subscript.getter(1, a1, v4);
    v11 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v7, v8, v9, v10);
    if (v12)
    {
      v13 = v11;
      v14 = a3 + 55;
      v15 = a3 + 87;
      v16 = -1;
      if (a3 >= 0)
      {
        v17 = a3;
      }

      else
      {
        v17 = ~a3;
      }

      if (a3 >= 0)
      {
        v16 = 0;
      }

      if (a3 <= 10)
      {
        v18 = v17;
      }

      else
      {
        v18 = a3;
      }

      v19 = a3 <= 10 && a3 < 0;
      if (a3 <= 10)
      {
        v20 = v16;
      }

      else
      {
        v20 = 0;
      }

      if (a3 > 10)
      {
        v21 = 58;
      }

      else
      {
        v15 = 97;
        v14 = 65;
        v21 = a3 + 48;
      }

      if (v13)
      {
        v22 = 0;
        v23 = 0;
        v24 = v20 ^ v18;
        while (1)
        {
          v25 = *v13;
          if (v25 < 0x30 || v25 >= v21)
          {
            if (v25 < 0x41 || v25 >= v14)
            {
              result = 0;
              if (v25 < 0x61 || v25 >= v15)
              {
                return result;
              }

              v26 = -87;
            }

            else
            {
              v26 = -55;
            }
          }

          else
          {
            v26 = -48;
          }

          result = 0;
          v28 = !is_mul_ok(v23, v24);
          v29 = !is_mul_ok(v22, v20);
          v30 = __CFADD__(v23 * v24, v22 * v20);
          v31 = (__PAIR128__(v20, v24) * __PAIR128__(v23, v22)) >> 64;
          v32 = __CFADD__(v23 * v24 + v22 * v20, (v22 * v24) >> 64);
          if (v23)
          {
            v33 = v19;
          }

          else
          {
            v33 = 0;
          }

          if (v33 || v28 || v29 || v30)
          {
            return result;
          }

          v34 = v22 * v24;
          v35 = v25 + v26;
          result = v34 - v35;
          if (v34 < v35)
          {
            break;
          }

          if (v31)
          {
            goto LABEL_50;
          }

          if (v32)
          {
            return 0;
          }

LABEL_51:
          ++v13;
          v22 = v34 - v35;
          v23 = v31;
          if (!--v12)
          {
            return result;
          }
        }

        if (!v31)
        {
          return 0;
        }

        --v31;
LABEL_50:
        if (v32)
        {
          return 0;
        }

        goto LABEL_51;
      }

      return 0;
    }

    return 0;
  }

  else
  {
    if (a3 <= 10)
    {
      v58 = a3 + 48;
      v55 = -1;
      v70 = a3 >= 0;
      if (a3 >= 0)
      {
        v54 = 0;
      }

      else
      {
        a3 = ~a3;
        v54 = 1;
      }

      if (v70)
      {
        v55 = 0;
      }

      v57 = 97;
      v56 = 65;
    }

    else
    {
      v54 = 0;
      v55 = 0;
      v56 = a3 + 55;
      v57 = a3 + 87;
      v58 = 58;
    }

    v71 = 0;
    v72 = 0;
    v73 = v55 ^ a3;
    while (1)
    {
      v74 = *v5;
      if (v74 < 0x30 || v74 >= v58)
      {
        if (v74 < 0x41 || v74 >= v56)
        {
          result = 0;
          if (v74 < 0x61 || v74 >= v57)
          {
            return result;
          }

          v75 = -87;
        }

        else
        {
          v75 = -55;
        }
      }

      else
      {
        v75 = -48;
      }

      result = 0;
      v76 = !is_mul_ok(v71, v73);
      v77 = !is_mul_ok(v72, v55);
      v78 = __CFADD__(v71 * v73, v72 * v55);
      v79 = (__PAIR128__(v55, v73) * __PAIR128__(v71, v72)) >> 64;
      v80 = __CFADD__(v71 * v73 + v72 * v55, (v72 * v73) >> 64);
      v81 = v71 ? v54 : 0;
      if ((v81 & 1) != 0 || v76 || v77 || v78)
      {
        break;
      }

      v82 = v72 * v73;
      v68 = __CFADD__(v82, (v74 + v75));
      v72 = v82 + (v74 + v75);
      v83 = v68;
      if (v79 == -1)
      {
        if ((v83 | v80))
        {
          return 0;
        }

        v71 = -1;
      }

      else if (v83)
      {
        if (v80)
        {
          return 0;
        }

        v71 = v79 + 1;
      }

      else
      {
        v71 = v79;
        if (v80)
        {
          return 0;
        }
      }

      ++v5;
      if (!--v4)
      {
        return v72;
      }
    }
  }

  return result;
}

uint64_t specialized closure #1 in FixedWidthInteger.init<A>(_:radix:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  if (a2 <= 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = a1;
  v6 = *a1;
  if (v6 == 43)
  {
    v7 = 1;
    v23 = specialized Collection.subscript.getter(1, a1, v4);
    v27 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v23, v24, v25, v26);
    if (!v28)
    {
      v20 = 0;
      return v20 | (v7 << 8);
    }

    v29 = a3 + 55;
    v30 = a3 + 87;
    if (a3 > 10)
    {
      v31 = 58;
    }

    else
    {
      v30 = 97;
      v29 = 65;
      v31 = a3 + 48;
    }

    if (v27)
    {
      LOBYTE(v32) = 0;
      while (1)
      {
        v33 = *v27;
        if (v33 < 0x30 || v33 >= v31)
        {
          if (v33 < 0x41 || v33 >= v29)
          {
            v20 = 0;
            v7 = 1;
            if (v33 < 0x61 || v33 >= v30)
            {
              return v20 | (v7 << 8);
            }

            v34 = -87;
          }

          else
          {
            v34 = -55;
          }
        }

        else
        {
          v34 = -48;
        }

        v20 = 0;
        v35 = v32 * a3;
        v7 = 1;
        if ((v35 & 0xFF00) == 0)
        {
          v32 = v35 + (v33 + v34);
          if (((v32 >> 8) & 1) == 0)
          {
            v7 = 0;
            ++v27;
            v20 = v32;
            if (--v28)
            {
              continue;
            }
          }
        }

        return v20 | (v7 << 8);
      }
    }
  }

  else
  {
    if (v6 != 45)
    {
      LOBYTE(v36) = 0;
      v37 = a3 + 55;
      v38 = a3 + 87;
      if (a3 > 10)
      {
        v39 = 58;
      }

      else
      {
        v38 = 97;
        v37 = 65;
        v39 = a3 + 48;
      }

      while (1)
      {
        v40 = *v5;
        if (v40 < 0x30 || v40 >= v39)
        {
          if (v40 < 0x41 || v40 >= v37)
          {
            v20 = 0;
            v7 = 1;
            if (v40 < 0x61 || v40 >= v38)
            {
              return v20 | (v7 << 8);
            }

            v41 = -87;
          }

          else
          {
            v41 = -55;
          }
        }

        else
        {
          v41 = -48;
        }

        v20 = 0;
        v42 = v36 * a3;
        v7 = 1;
        if ((v42 & 0xFF00) == 0)
        {
          v36 = v42 + (v40 + v41);
          if (((v36 >> 8) & 1) == 0)
          {
            v7 = 0;
            ++v5;
            v20 = v36;
            if (--v4)
            {
              continue;
            }
          }
        }

        return v20 | (v7 << 8);
      }
    }

    v7 = 1;
    v8 = specialized Collection.subscript.getter(1, a1, v4);
    v12 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v8, v9, v10, v11);
    if (!v13)
    {
      v20 = 0;
      return v20 | (v7 << 8);
    }

    v14 = a3 + 55;
    v15 = a3 + 87;
    if (a3 > 10)
    {
      v16 = 58;
    }

    else
    {
      v15 = 97;
      v14 = 65;
      v16 = a3 + 48;
    }

    if (v12)
    {
      LOBYTE(v17) = 0;
      while (1)
      {
        v18 = *v12;
        if (v18 < 0x30 || v18 >= v16)
        {
          if (v18 < 0x41 || v18 >= v14)
          {
            v20 = 0;
            v7 = 1;
            if (v18 < 0x61 || v18 >= v15)
            {
              return v20 | (v7 << 8);
            }

            v19 = -87;
          }

          else
          {
            v19 = -55;
          }
        }

        else
        {
          v19 = -48;
        }

        v20 = 0;
        v21 = v18 + v19;
        v22 = v17 * a3;
        v17 = (v17 * a3) - v21;
        v7 = 1;
        if ((v22 & 0xFF00) == 0 && (v17 & 0xFFFFFF00) == 0)
        {
          v7 = 0;
          ++v12;
          v20 = v17;
          if (--v13)
          {
            continue;
          }
        }

        return v20 | (v7 << 8);
      }
    }
  }

  v20 = 0;
  v7 = 0;
  return v20 | (v7 << 8);
}

{
  v4 = a2;
  if (a2 <= 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = a1;
  v6 = *a1;
  if (v6 == 43)
  {
    v7 = 1;
    v25 = specialized Collection.subscript.getter(1, a1, v4);
    v29 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v25, v26, v27, v28);
    if (!v30)
    {
      v20 = 0;
      return v20 | (v7 << 8);
    }

    v31 = a3 + 55;
    v32 = a3 + 87;
    if (a3 > 10)
    {
      v33 = 58;
    }

    else
    {
      v32 = 97;
      v31 = 65;
      v33 = a3 + 48;
    }

    if (v29)
    {
      LOBYTE(v34) = 0;
      while (1)
      {
        v35 = *v29;
        if (v35 < 0x30 || v35 >= v33)
        {
          if (v35 < 0x41 || v35 >= v31)
          {
            v20 = 0;
            v7 = 1;
            if (v35 < 0x61 || v35 >= v32)
            {
              return v20 | (v7 << 8);
            }

            v36 = -87;
          }

          else
          {
            v36 = -55;
          }
        }

        else
        {
          v36 = -48;
        }

        v20 = 0;
        v37 = v35 + v36;
        v38 = v34 * a3;
        v39 = (v34 * a3);
        v34 = v39 + v37;
        v40 = v34 != (v39 + v37);
        v7 = 1;
        if (v39 == v38 && !v40)
        {
          v7 = 0;
          ++v29;
          v20 = v34;
          if (--v30)
          {
            continue;
          }
        }

        return v20 | (v7 << 8);
      }
    }
  }

  else
  {
    if (v6 != 45)
    {
      LOBYTE(v41) = 0;
      v42 = a3 + 55;
      v43 = a3 + 87;
      if (a3 > 10)
      {
        v44 = 58;
      }

      else
      {
        v43 = 97;
        v42 = 65;
        v44 = a3 + 48;
      }

      while (1)
      {
        v45 = *v5;
        if (v45 < 0x30 || v45 >= v44)
        {
          if (v45 < 0x41 || v45 >= v42)
          {
            v20 = 0;
            v7 = 1;
            if (v45 < 0x61 || v45 >= v43)
            {
              return v20 | (v7 << 8);
            }

            v46 = -87;
          }

          else
          {
            v46 = -55;
          }
        }

        else
        {
          v46 = -48;
        }

        v20 = 0;
        v47 = v45 + v46;
        v48 = v41 * a3;
        v49 = (v41 * a3);
        v41 = v49 + v47;
        v50 = v41 != (v49 + v47);
        v7 = 1;
        if (v49 == v48 && !v50)
        {
          v7 = 0;
          ++v5;
          v20 = v41;
          if (--v4)
          {
            continue;
          }
        }

        return v20 | (v7 << 8);
      }
    }

    v7 = 1;
    v8 = specialized Collection.subscript.getter(1, a1, v4);
    v12 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v8, v9, v10, v11);
    if (!v13)
    {
      v20 = 0;
      return v20 | (v7 << 8);
    }

    v14 = a3 + 55;
    v15 = a3 + 87;
    if (a3 > 10)
    {
      v16 = 58;
    }

    else
    {
      v15 = 97;
      v14 = 65;
      v16 = a3 + 48;
    }

    if (v12)
    {
      LOBYTE(v17) = 0;
      while (1)
      {
        v18 = *v12;
        if (v18 < 0x30 || v18 >= v16)
        {
          if (v18 < 0x41 || v18 >= v14)
          {
            v20 = 0;
            v7 = 1;
            if (v18 < 0x61 || v18 >= v15)
            {
              return v20 | (v7 << 8);
            }

            v19 = -87;
          }

          else
          {
            v19 = -55;
          }
        }

        else
        {
          v19 = -48;
        }

        v20 = 0;
        v21 = v18 + v19;
        v22 = v17 * a3;
        v23 = (v17 * a3);
        v17 = v23 - v21;
        v24 = v17 != (v23 - v21);
        v7 = 1;
        if (v23 == v22 && !v24)
        {
          v7 = 0;
          ++v12;
          v20 = v17;
          if (--v13)
          {
            continue;
          }
        }

        return v20 | (v7 << 8);
      }
    }
  }

  v20 = 0;
  v7 = 0;
  return v20 | (v7 << 8);
}

{
  v4 = a2;
  if (a2 <= 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = a1;
  v6 = *a1;
  if (v6 == 43)
  {
    v7 = 1;
    v23 = specialized Collection.subscript.getter(1, a1, v4);
    v27 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v23, v24, v25, v26);
    if (!v28)
    {
      v20 = 0;
      return v20 | (v7 << 16);
    }

    v29 = a3 + 55;
    v30 = a3 + 87;
    if (a3 > 10)
    {
      v31 = 58;
    }

    else
    {
      v30 = 97;
      v29 = 65;
      v31 = a3 + 48;
    }

    if (v27)
    {
      LOWORD(v32) = 0;
      while (1)
      {
        v33 = *v27;
        if (v33 < 0x30 || v33 >= v31)
        {
          if (v33 < 0x41 || v33 >= v29)
          {
            v20 = 0;
            v7 = 1;
            if (v33 < 0x61 || v33 >= v30)
            {
              return v20 | (v7 << 16);
            }

            v34 = -87;
          }

          else
          {
            v34 = -55;
          }
        }

        else
        {
          v34 = -48;
        }

        v20 = 0;
        v35 = v32 * a3;
        v7 = 1;
        if ((v35 & 0xFFFF0000) == 0)
        {
          v32 = v35 + (v33 + v34);
          if ((v32 & 0x10000) == 0)
          {
            v7 = 0;
            ++v27;
            v20 = v32;
            if (--v28)
            {
              continue;
            }
          }
        }

        return v20 | (v7 << 16);
      }
    }
  }

  else
  {
    if (v6 != 45)
    {
      LOWORD(v36) = 0;
      v37 = a3 + 55;
      v38 = a3 + 87;
      if (a3 > 10)
      {
        v39 = 58;
      }

      else
      {
        v38 = 97;
        v37 = 65;
        v39 = a3 + 48;
      }

      while (1)
      {
        v40 = *v5;
        if (v40 < 0x30 || v40 >= v39)
        {
          if (v40 < 0x41 || v40 >= v37)
          {
            v20 = 0;
            v7 = 1;
            if (v40 < 0x61 || v40 >= v38)
            {
              return v20 | (v7 << 16);
            }

            v41 = -87;
          }

          else
          {
            v41 = -55;
          }
        }

        else
        {
          v41 = -48;
        }

        v20 = 0;
        v42 = v36 * a3;
        v7 = 1;
        if ((v42 & 0xFFFF0000) == 0)
        {
          v36 = v42 + (v40 + v41);
          if ((v36 & 0x10000) == 0)
          {
            v7 = 0;
            ++v5;
            v20 = v36;
            if (--v4)
            {
              continue;
            }
          }
        }

        return v20 | (v7 << 16);
      }
    }

    v7 = 1;
    v8 = specialized Collection.subscript.getter(1, a1, v4);
    v12 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v8, v9, v10, v11);
    if (!v13)
    {
      v20 = 0;
      return v20 | (v7 << 16);
    }

    v14 = a3 + 55;
    v15 = a3 + 87;
    if (a3 > 10)
    {
      v16 = 58;
    }

    else
    {
      v15 = 97;
      v14 = 65;
      v16 = a3 + 48;
    }

    if (v12)
    {
      LOWORD(v17) = 0;
      while (1)
      {
        v18 = *v12;
        if (v18 < 0x30 || v18 >= v16)
        {
          if (v18 < 0x41 || v18 >= v14)
          {
            v20 = 0;
            v7 = 1;
            if (v18 < 0x61 || v18 >= v15)
            {
              return v20 | (v7 << 16);
            }

            v19 = -87;
          }

          else
          {
            v19 = -55;
          }
        }

        else
        {
          v19 = -48;
        }

        v20 = 0;
        v21 = v18 + v19;
        v22 = v17 * a3;
        v17 = (v17 * a3) - v21;
        v7 = 1;
        if ((v22 & 0xFFFF0000) == 0 && (v17 & 0xFFFF0000) == 0)
        {
          v7 = 0;
          ++v12;
          v20 = v17;
          if (--v13)
          {
            continue;
          }
        }

        return v20 | (v7 << 16);
      }
    }
  }

  v20 = 0;
  v7 = 0;
  return v20 | (v7 << 16);
}

{
  v4 = a2;
  if (a2 <= 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = a1;
  v6 = *a1;
  if (v6 == 43)
  {
    v7 = 1;
    v25 = specialized Collection.subscript.getter(1, a1, v4);
    v29 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v25, v26, v27, v28);
    if (!v30)
    {
      v20 = 0;
      return v20 | (v7 << 16);
    }

    v31 = a3 + 55;
    v32 = a3 + 87;
    if (a3 > 10)
    {
      v33 = 58;
    }

    else
    {
      v32 = 97;
      v31 = 65;
      v33 = a3 + 48;
    }

    if (v29)
    {
      LOWORD(v34) = 0;
      while (1)
      {
        v35 = *v29;
        if (v35 < 0x30 || v35 >= v33)
        {
          if (v35 < 0x41 || v35 >= v31)
          {
            v20 = 0;
            v7 = 1;
            if (v35 < 0x61 || v35 >= v32)
            {
              return v20 | (v7 << 16);
            }

            v36 = -87;
          }

          else
          {
            v36 = -55;
          }
        }

        else
        {
          v36 = -48;
        }

        v20 = 0;
        v37 = v35 + v36;
        v38 = v34 * a3;
        v39 = (v34 * a3);
        v34 = v39 + v37;
        v40 = v34 != (v39 + v37);
        v7 = 1;
        if (v39 == v38 && !v40)
        {
          v7 = 0;
          ++v29;
          v20 = v34;
          if (--v30)
          {
            continue;
          }
        }

        return v20 | (v7 << 16);
      }
    }
  }

  else
  {
    if (v6 != 45)
    {
      LOWORD(v41) = 0;
      v42 = a3 + 55;
      v43 = a3 + 87;
      if (a3 > 10)
      {
        v44 = 58;
      }

      else
      {
        v43 = 97;
        v42 = 65;
        v44 = a3 + 48;
      }

      while (1)
      {
        v45 = *v5;
        if (v45 < 0x30 || v45 >= v44)
        {
          if (v45 < 0x41 || v45 >= v42)
          {
            v20 = 0;
            v7 = 1;
            if (v45 < 0x61 || v45 >= v43)
            {
              return v20 | (v7 << 16);
            }

            v46 = -87;
          }

          else
          {
            v46 = -55;
          }
        }

        else
        {
          v46 = -48;
        }

        v20 = 0;
        v47 = v45 + v46;
        v48 = v41 * a3;
        v49 = (v41 * a3);
        v41 = v49 + v47;
        v50 = v41 != (v49 + v47);
        v7 = 1;
        if (v49 == v48 && !v50)
        {
          v7 = 0;
          ++v5;
          v20 = v41;
          if (--v4)
          {
            continue;
          }
        }

        return v20 | (v7 << 16);
      }
    }

    v7 = 1;
    v8 = specialized Collection.subscript.getter(1, a1, v4);
    v12 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v8, v9, v10, v11);
    if (!v13)
    {
      v20 = 0;
      return v20 | (v7 << 16);
    }

    v14 = a3 + 55;
    v15 = a3 + 87;
    if (a3 > 10)
    {
      v16 = 58;
    }

    else
    {
      v15 = 97;
      v14 = 65;
      v16 = a3 + 48;
    }

    if (v12)
    {
      LOWORD(v17) = 0;
      while (1)
      {
        v18 = *v12;
        if (v18 < 0x30 || v18 >= v16)
        {
          if (v18 < 0x41 || v18 >= v14)
          {
            v20 = 0;
            v7 = 1;
            if (v18 < 0x61 || v18 >= v15)
            {
              return v20 | (v7 << 16);
            }

            v19 = -87;
          }

          else
          {
            v19 = -55;
          }
        }

        else
        {
          v19 = -48;
        }

        v20 = 0;
        v21 = v18 + v19;
        v22 = v17 * a3;
        v23 = (v17 * a3);
        v17 = v23 - v21;
        v24 = v17 != (v23 - v21);
        v7 = 1;
        if (v23 == v22 && !v24)
        {
          v7 = 0;
          ++v12;
          v20 = v17;
          if (--v13)
          {
            continue;
          }
        }

        return v20 | (v7 << 16);
      }
    }
  }

  v20 = 0;
  v7 = 0;
  return v20 | (v7 << 16);
}

{
  v4 = a2;
  if (a2 <= 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = a1;
  v6 = *a1;
  if (v6 == 43)
  {
    v25 = specialized Collection.subscript.getter(1, a1, v4);
    v29 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v25, v26, v27, v28);
    if (!v30)
    {
      return 0;
    }

    v31 = v29;
    v32 = a3 + 48;
    v33 = a3 + 55;
    v34 = a3 + 87;
    if (a3 > 10)
    {
      v32 = 58;
    }

    else
    {
      v34 = 97;
      v33 = 65;
    }

    if (!v29)
    {
      return 0;
    }

    v35 = 0;
    do
    {
      v36 = *v31;
      if (v36 < 0x30 || v36 >= v32)
      {
        if (v36 < 0x41 || v36 >= v33)
        {
          result = 0;
          if (v36 < 0x61 || v36 >= v34)
          {
            return result;
          }

          v37 = -87;
        }

        else
        {
          v37 = -55;
        }
      }

      else
      {
        v37 = -48;
      }

      result = 0;
      v38 = v36 + v37;
      v39 = v35 * a3;
      v40 = (v35 * a3) >> 64 != (v35 * a3) >> 63;
      v35 = v35 * a3 + v38;
      v41 = __OFADD__(v39, v38);
      if (v40)
      {
        break;
      }

      if (v41)
      {
        break;
      }

      ++v31;
      result = v35;
      --v30;
    }

    while (v30);
  }

  else
  {
    if (v6 == 45)
    {
      v7 = specialized Collection.subscript.getter(1, a1, v4);
      v11 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v7, v8, v9, v10);
      if (!v12)
      {
        return 0;
      }

      v13 = v11;
      v14 = a3 + 48;
      v15 = a3 + 55;
      v16 = a3 + 87;
      if (a3 > 10)
      {
        v14 = 58;
      }

      else
      {
        v16 = 97;
        v15 = 65;
      }

      if (v11)
      {
        v17 = 0;
        do
        {
          v18 = *v13;
          if (v18 < 0x30 || v18 >= v14)
          {
            if (v18 < 0x41 || v18 >= v15)
            {
              result = 0;
              if (v18 < 0x61 || v18 >= v16)
              {
                return result;
              }

              v19 = -87;
            }

            else
            {
              v19 = -55;
            }
          }

          else
          {
            v19 = -48;
          }

          result = 0;
          v21 = v18 + v19;
          v22 = v17 * a3;
          v23 = (v17 * a3) >> 64 != (v17 * a3) >> 63;
          v17 = v17 * a3 - v21;
          v24 = __OFSUB__(v22, v21);
          if (v23)
          {
            break;
          }

          if (v24)
          {
            break;
          }

          ++v13;
          result = v17;
          --v12;
        }

        while (v12);
        return result;
      }

      return 0;
    }

    v42 = 0;
    v43 = a3 + 48;
    v44 = a3 + 55;
    v45 = a3 + 87;
    if (a3 > 10)
    {
      v43 = 58;
    }

    else
    {
      v45 = 97;
      v44 = 65;
    }

    do
    {
      v46 = *v5;
      if (v46 < 0x30 || v46 >= v43)
      {
        if (v46 < 0x41 || v46 >= v44)
        {
          result = 0;
          if (v46 < 0x61 || v46 >= v45)
          {
            return result;
          }

          v47 = -87;
        }

        else
        {
          v47 = -55;
        }
      }

      else
      {
        v47 = -48;
      }

      result = 0;
      v48 = v46 + v47;
      v49 = v42 * a3;
      v50 = (v42 * a3) >> 64 != (v42 * a3) >> 63;
      v42 = v42 * a3 + v48;
      v51 = __OFADD__(v49, v48);
      if (v50)
      {
        break;
      }

      if (v51)
      {
        break;
      }

      ++v5;
      result = v42;
      --v4;
    }

    while (v4);
  }

  return result;
}

unint64_t specialized closure #1 in FixedWidthInteger.init<A>(_:radix:)(unsigned __int8 *a1, uint64_t a2, int64_t a3)
{
  v4 = a2;
  if (a2 <= 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = a1;
  v6 = *a1;
  if (v6 == 43)
  {
    v26 = specialized Collection.subscript.getter(1, a1, v4);
    v30 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v26, v27, v28, v29);
    if (!v31)
    {
      return 0;
    }

    v32 = v30;
    v33 = a3 + 48;
    v34 = a3 + 55;
    v35 = a3 + 87;
    if (a3 > 10)
    {
      v33 = 58;
    }

    else
    {
      v35 = 97;
      v34 = 65;
    }

    if (!v30)
    {
      return 0;
    }

    v36 = 0;
    do
    {
      v37 = *v32;
      if (v37 < 0x30 || v37 >= v33)
      {
        if (v37 < 0x41 || v37 >= v34)
        {
          result = 0;
          if (v37 < 0x61 || v37 >= v35)
          {
            return result;
          }

          v38 = -87;
        }

        else
        {
          v38 = -55;
        }
      }

      else
      {
        v38 = -48;
      }

      result = 0;
      v39 = v37 + v38;
      v40 = !is_mul_ok(v36, a3);
      v41 = v36 * a3;
      v24 = __CFADD__(v41, v39);
      v36 = v41 + v39;
      v42 = v24;
      if (v40)
      {
        break;
      }

      if (v42)
      {
        break;
      }

      ++v32;
      result = v36;
      --v31;
    }

    while (v31);
  }

  else
  {
    if (v6 == 45)
    {
      v7 = specialized Collection.subscript.getter(1, a1, v4);
      v11 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v7, v8, v9, v10);
      if (!v12)
      {
        return 0;
      }

      v13 = v11;
      v14 = a3 + 48;
      v15 = a3 + 55;
      v16 = a3 + 87;
      if (a3 > 10)
      {
        v14 = 58;
      }

      else
      {
        v16 = 97;
        v15 = 65;
      }

      if (v11)
      {
        v17 = 0;
        do
        {
          v18 = *v13;
          if (v18 < 0x30 || v18 >= v14)
          {
            if (v18 < 0x41 || v18 >= v15)
            {
              result = 0;
              if (v18 < 0x61 || v18 >= v16)
              {
                return result;
              }

              v19 = -87;
            }

            else
            {
              v19 = -55;
            }
          }

          else
          {
            v19 = -48;
          }

          result = 0;
          v21 = v18 + v19;
          v22 = !is_mul_ok(v17, a3);
          v23 = v17 * a3;
          v24 = v23 >= v21;
          v17 = v23 - v21;
          v25 = !v24;
          if (v22)
          {
            break;
          }

          if (v25)
          {
            break;
          }

          ++v13;
          result = v17;
          --v12;
        }

        while (v12);
        return result;
      }

      return 0;
    }

    v43 = 0;
    v44 = a3 + 48;
    v45 = a3 + 55;
    v46 = a3 + 87;
    if (a3 > 10)
    {
      v44 = 58;
    }

    else
    {
      v46 = 97;
      v45 = 65;
    }

    do
    {
      v47 = *v5;
      if (v47 < 0x30 || v47 >= v44)
      {
        if (v47 < 0x41 || v47 >= v45)
        {
          result = 0;
          if (v47 < 0x61 || v47 >= v46)
          {
            return result;
          }

          v48 = -87;
        }

        else
        {
          v48 = -55;
        }
      }

      else
      {
        v48 = -48;
      }

      result = 0;
      v49 = v47 + v48;
      v50 = !is_mul_ok(v43, a3);
      v51 = v43 * a3;
      v24 = __CFADD__(v51, v49);
      v43 = v51 + v49;
      v52 = v24;
      if (v50)
      {
        break;
      }

      if (v52)
      {
        break;
      }

      ++v5;
      result = v43;
      --v4;
    }

    while (v4);
  }

  return result;
}

Swift::UInt64 specialized closure #1 in FixedWidthInteger.init<A>(_:radix:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 <= 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = a2;
  v5 = a1;
  v6 = *a1;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (a3 >= 11)
      {
        v49 = a3;
      }

      else
      {
        v49 = (a3 >> 63) ^ a3;
      }

      if (a3 >= 11)
      {
        v50 = a3 + 87;
      }

      else
      {
        v50 = 97;
      }

      if (a3 >= 11)
      {
        v51 = 0;
      }

      else
      {
        v51 = a3 >> 63;
      }

      if (a3 >= 11)
      {
        v52 = a3 + 55;
      }

      else
      {
        v52 = 65;
      }

      if (a3 >= 11)
      {
        v53 = 58;
      }

      else
      {
        v53 = a3 + 48;
      }

      while (1)
      {
        v54 = *v5;
        if (v54 < 0x30 || v54 >= v53)
        {
          if (v54 < 0x41 || v54 >= v52)
          {
            v26.partialValue.low = 0;
            if (v54 < 0x61 || v54 >= v50)
            {
              return v26.partialValue.low;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v54 + v55;
        v57.low = v51 ^ v49;
        v57.high = v51;
        v26 = _Int128.multipliedReportingOverflow(by:)(v57);
        v58 = *&v26.overflow;
        *&v26.overflow = v26.partialValue.low + v56;
        v60 = __CFADD__(v26.partialValue.low, v56);
        if (v26.partialValue.high == 0x7FFFFFFFFFFFFFFFLL)
        {
          if ((v60 | v58))
          {
            goto LABEL_115;
          }
        }

        else if (v60)
        {
          if (v58)
          {
            goto LABEL_115;
          }
        }

        else if (v58)
        {
          goto LABEL_115;
        }

        ++v5;
        if (!--v4)
        {
          goto LABEL_116;
        }
      }
    }

    v7 = specialized Collection.subscript.getter(1, a1, a2);
    v11 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v7, v8, v9, v10);
    if (!v12)
    {
      v26.partialValue.low = 0;
      return v26.partialValue.low;
    }

    v13 = a3 <= 10;
    v14 = a3 + 55;
    v15 = a3 + 87;
    v16 = a3 + 48;
    if (a3 <= 10)
    {
      v17 = (a3 >> 63) ^ a3;
    }

    else
    {
      v17 = a3;
    }

    if (a3 <= 10)
    {
      v18 = a3 >> 63;
    }

    else
    {
      v18 = 0;
    }

    if (v13)
    {
      v19 = 97;
    }

    else
    {
      v19 = v15;
    }

    if (v13)
    {
      v20 = 65;
    }

    else
    {
      v20 = v14;
    }

    if (v13)
    {
      v21 = v16;
    }

    else
    {
      v21 = 58;
    }

    v22 = v11;
    if (v11)
    {
      v23 = v12;
      do
      {
        v24 = *v22;
        if (v24 < 0x30 || v24 >= v21)
        {
          if (v24 < 0x41 || v24 >= v20)
          {
            v26.partialValue.low = 0;
            if (v24 < 0x61 || v24 >= v19)
            {
              return v26.partialValue.low;
            }

            v25 = -87;
          }

          else
          {
            v25 = -55;
          }
        }

        else
        {
          v25 = -48;
        }

        v27 = v24 + v25;
        v28.low = v18 ^ v17;
        v28.high = v18;
        v26 = _Int128.multipliedReportingOverflow(by:)(v28);
        v30 = v26.partialValue.low >= v27;
        v26.partialValue.low -= v27;
        v31 = !v30;
        if (v26.partialValue.high == 0x8000000000000000)
        {
          if ((*&v26.overflow | v31))
          {
            goto LABEL_115;
          }
        }

        else if (v26.overflow)
        {
          goto LABEL_115;
        }

        ++v22;
        --v23;
      }

      while (v23);
      return v26.partialValue.low;
    }

LABEL_113:
    v26.partialValue.low = 0;
    return v26.partialValue.low;
  }

  v32 = specialized Collection.subscript.getter(1, a1, a2);
  v36 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v32, v33, v34, v35);
  if (!v37)
  {
    v26.partialValue.low = 0;
    return v26.partialValue.low;
  }

  v38 = v36;
  v39 = a3 < 11;
  v40 = a3 + 48;
  v41 = a3 + 55;
  v42 = a3 + 87;
  if (a3 >= 11)
  {
    v43 = a3;
  }

  else
  {
    v43 = (a3 >> 63) ^ a3;
  }

  if (a3 >= 11)
  {
    v44 = 0;
  }

  else
  {
    v44 = a3 >> 63;
  }

  if (v39)
  {
    v45 = 97;
  }

  else
  {
    v45 = v42;
  }

  if (v39)
  {
    v46 = 65;
  }

  else
  {
    v46 = v41;
  }

  if (v39)
  {
    v47 = v40;
  }

  else
  {
    v47 = 58;
  }

  if (!v36)
  {
    goto LABEL_113;
  }

  v48 = v37;
  do
  {
    v61 = *v38;
    if (v61 < 0x30 || v61 >= v47)
    {
      if (v61 < 0x41 || v61 >= v46)
      {
        v26.partialValue.low = 0;
        if (v61 < 0x61 || v61 >= v45)
        {
          return v26.partialValue.low;
        }

        v62 = -87;
      }

      else
      {
        v62 = -55;
      }
    }

    else
    {
      v62 = -48;
    }

    v63 = v61 + v62;
    v64.low = v44 ^ v43;
    v64.high = v44;
    v26 = _Int128.multipliedReportingOverflow(by:)(v64);
    v65 = *&v26.overflow;
    *&v26.overflow = v26.partialValue.low + v63;
    v66 = __CFADD__(v26.partialValue.low, v63);
    if (v26.partialValue.high == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ((v66 | v65))
      {
        goto LABEL_115;
      }
    }

    else if (v66)
    {
      if (v65)
      {
LABEL_115:
        v26.partialValue.low = 0;
        return v26.partialValue.low;
      }
    }

    else if (v65)
    {
      goto LABEL_115;
    }

    ++v38;
    --v48;
  }

  while (v48);
LABEL_116:
  v26.partialValue.low = *&v26.overflow;
  return v26.partialValue.low;
}

uint64_t specialized closure #1 in FixedWidthInteger.init<A>(_:radix:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v167 = a6;
  swift_getTupleTypeMetadata2(0, a4, &type metadata for Bool, 0, 0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v169 = &v151 - v13;
  v172 = *(a5 + 8);
  v173 = a5;
  v166 = *(*(v172 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v166, a4, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v15 = v14;
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v171 = *(a4 - 1);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v23 = (&v151 - v22);
  v25 = MEMORY[0x1EEE9AC00](v21, v24);
  MEMORY[0x1EEE9AC00](v25, v26);
  v29 = MEMORY[0x1EEE9AC00](&v151 - v27, v28);
  v31 = &v151 - v30;
  v33 = MEMORY[0x1EEE9AC00](v29, v32);
  v170 = &v151 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v168 = &v151 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36, v38);
  v41 = (&v151 - v40);
  v43 = MEMORY[0x1EEE9AC00](v39, v42);
  v45 = &v151 - v44;
  v47 = MEMORY[0x1EEE9AC00](v43, v46);
  if (a2 <= 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v53 = *a1;
  v54 = a1;
  v165 = v51;
  if (v53 != 43)
  {
    if (v53 == 45)
    {
      v163 = v41;
      v170 = &v151 - v49;
      v55 = specialized Collection.subscript.getter(1, a1, a2);
      v59 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v55, v56, v57, v58);
      if (v60)
      {
        v62 = v59;
        v63 = v60;
        v64 = a3 + 48;
        v65 = a3 + 55;
        v66 = a3 + 87;
        if (a3 <= 10)
        {
          v66 = 97;
        }

        v153 = v66;
        if (a3 <= 10)
        {
          v65 = 65;
        }

        v154 = v65;
        v174 = a3;
        if (a3 > 10)
        {
          v64 = 58;
        }

        LODWORD(v159) = v64;
        v67 = v172;
        v164 = v45;
        v68 = v166;
        v69 = v172 + 96;
        v70 = *(v172 + 96);
        v71 = lazy protocol witness table accessor for type Int and conformance Int(v59, v60, v61);
        v161 = v70;
        v162 = v69;
        v70(&v174, &type metadata for Int, v71, a4, v67);
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v68, a4, v15, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v73 = v165;
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v15, AssociatedConformanceWitness);
        v74 = v164;
        v75 = (v68[3])(v73, a4, v68);
        if (v62)
        {
          v166 = (v171 + 8);
          v157 = v173 + 88;
          v158 = (v171 + 32);
          v152 = v173 + 96;
          do
          {
            v78 = *v62;
            if (v78 < 0x30 || v78 >= v159)
            {
              if (v78 < 0x41 || v78 >= v154)
              {
                if (v78 < 0x61 || v78 >= v153)
                {
                  v148 = v171;
                  v149 = *(v171 + 8);
                  v150 = v74;
                  goto LABEL_80;
                }

                v155 = v63;
                v156 = v62;
                v79 = v78 - 87;
              }

              else
              {
                v155 = v63;
                v156 = v62;
                v79 = v78 - 55;
              }

              LOBYTE(v174) = v79;
            }

            else
            {
              v155 = v63;
              v156 = v62;
              LOBYTE(v174) = v78 - 48;
            }

            v80 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v75, v76, v77);
            v81 = v163;
            v161(&v174, &type metadata for UInt8, v80, a4, v172);
            v82 = v173;
            v83 = v168;
            LODWORD(v165) = (*(v173 + 96))(v168, v170, a4, v173);
            v84 = *v166;
            (*v166)(v74, a4);
            v160 = *v158;
            v160(v74, v83, a4);
            v85 = v169;
            v86 = (*(v82 + 88))(v169, v81, a4, v82);
            (v84)(v81, a4);
            (v84)(v74, a4);
            v75 = (v160)(v74, v85, a4);
            if (v165 & 1) != 0 || (v86)
            {
              v147 = v74;
              goto LABEL_74;
            }

            v62 = (v156 + 1);
            v63 = v155 - 1;
          }

          while (v155 != 1);
        }

        v87 = v171;
        (*(v171 + 8))(v170, a4);
        v88 = v167;
        (*(v87 + 32))(v167, v74, a4);
        return (*(v87 + 56))(v88, 0, 1, a4);
      }
    }

    else
    {
      v160 = v47;
      v123 = a3 + 48;
      v124 = a3 + 55;
      v125 = a3 + 87;
      if (a3 <= 10)
      {
        v125 = 97;
      }

      v154 = v125;
      if (a3 <= 10)
      {
        v124 = 65;
      }

      LODWORD(v155) = v124;
      v174 = a3;
      if (a3 > 10)
      {
        v123 = 58;
      }

      LODWORD(v157) = v123;
      v126 = v172;
      v128 = v172 + 96;
      v127 = *(v172 + 96);
      v164 = v54;
      v129 = lazy protocol witness table accessor for type Int and conformance Int(v47, v54, v48);
      v158 = v127;
      v159 = v128;
      v127(&v174, &type metadata for Int, v129, a4, v126);
      v130 = v166;
      v131 = swift_getAssociatedConformanceWitness(v166, a4, v15, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v132 = v165;
      (*(v131 + 8))(&qword_18071E0A8, 256, v15, v131);
      v133 = (v130[3])(v132, a4, v130);
      v136 = v164;
      v166 = (v171 + 8);
      v162 = v173 + 96;
      v163 = (v171 + 32);
      v161 = (v173 + 80);
      while (1)
      {
        v137 = *v136;
        if (v137 < 0x30 || v137 >= v157)
        {
          if (v137 < 0x41 || v137 >= v155)
          {
            if (v137 < 0x61 || v137 >= v154)
            {
              v148 = v171;
              v149 = *(v171 + 8);
              v150 = v31;
              goto LABEL_80;
            }

            v164 = v136;
            v156 = a2;
            v138 = v137 - 87;
          }

          else
          {
            v164 = v136;
            v156 = a2;
            v138 = v137 - 55;
          }

          LOBYTE(v174) = v138;
        }

        else
        {
          v164 = v136;
          v156 = a2;
          LOBYTE(v174) = v137 - 48;
        }

        v139 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v133, v134, v135);
        v140 = v160;
        v158(&v174, &type metadata for UInt8, v139, a4, v126);
        v141 = v173;
        v142 = v168;
        LODWORD(v165) = (*(v173 + 96))(v168, v170, a4, v173);
        v84 = *v166;
        (*v166)(v31, a4);
        v143 = *v163;
        (*v163)(v31, v142, a4);
        v144 = v169;
        v145 = (*(v141 + 80))(v169, v140, a4, v141);
        (v84)(v140, a4);
        (v84)(v31, a4);
        v133 = v143(v31, v144, a4);
        if (v165 & 1) != 0 || (v145)
        {
          break;
        }

        v136 = v164 + 1;
        a2 = v156 - 1;
        v126 = v172;
        if (v156 == 1)
        {
          (v84)(v170, a4);
          v146 = v167;
          v143(v167, v31, a4);
          return (*(v171 + 56))(v146, 0, 1, a4);
        }
      }

      v147 = v31;
LABEL_74:
      (v84)(v147, a4);
      (v84)(v170, a4);
    }

    return (*(v171 + 56))(v167, 1, 1, a4);
  }

  v164 = v52;
  v170 = v50;
  v89 = specialized Collection.subscript.getter(1, a1, a2);
  v93 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v89, v90, v91, v92);
  if (!v94)
  {
    return (*(v171 + 56))(v167, 1, 1, a4);
  }

  v96 = v93;
  v97 = v94;
  v98 = a3 + 48;
  v99 = a3 + 55;
  v100 = a3 + 87;
  if (a3 <= 10)
  {
    v100 = 97;
  }

  v153 = v100;
  if (a3 <= 10)
  {
    v99 = 65;
  }

  v154 = v99;
  v174 = a3;
  if (a3 > 10)
  {
    v98 = 58;
  }

  LODWORD(v159) = v98;
  v101 = v172;
  v102 = v172 + 96;
  v103 = *(v172 + 96);
  v104 = lazy protocol witness table accessor for type Int and conformance Int(v93, v94, v95);
  v161 = v103;
  v162 = v102;
  v103(&v174, &type metadata for Int, v104, a4, v101);
  v105 = v166;
  v106 = swift_getAssociatedConformanceWitness(v166, a4, v15, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v107 = v165;
  (*(v106 + 8))(&qword_18071E0A8, 256, v15, v106);
  v108 = v105[3];
  v163 = v23;
  v109 = (v108)(v107, a4, v105);
  if (!v96)
  {
LABEL_49:
    v87 = v171;
    (*(v171 + 8))(v170, a4);
    v88 = v167;
    (*(v87 + 32))(v167, v163, a4);
    return (*(v87 + 56))(v88, 0, 1, a4);
  }

  v166 = (v171 + 8);
  v157 = v173 + 80;
  v158 = (v171 + 32);
  v152 = v173 + 96;
  while (1)
  {
    v112 = *v96;
    if (v112 < 0x30 || v112 >= v159)
    {
      break;
    }

    v155 = v97;
    v156 = v96;
    LOBYTE(v174) = v112 - 48;
LABEL_46:
    v114 = lazy protocol witness table accessor for type UInt8 and conformance UInt8(v109, v110, v111);
    v161(&v174, &type metadata for UInt8, v114, a4, v172);
    v115 = v173;
    v116 = v168;
    v117 = v163;
    LODWORD(v165) = (*(v173 + 96))(v168, v170, a4, v173);
    v118 = *v166;
    (*v166)(v117, a4);
    v160 = *v158;
    v160(v117, v116, a4);
    v119 = v169;
    v120 = v164;
    v121 = (*(v115 + 80))(v169, v164, a4, v115);
    (v118)(v120, a4);
    (v118)(v117, a4);
    v109 = (v160)(v117, v119, a4);
    if (v165 & 1) != 0 || (v121)
    {
      (v118)(v117, a4);
      (v118)(v170, a4);
      return (*(v171 + 56))(v167, 1, 1, a4);
    }

    v96 = (v156 + 1);
    v97 = v155 - 1;
    if (v155 == 1)
    {
      goto LABEL_49;
    }
  }

  if (v112 >= 0x41 && v112 < v154)
  {
    v155 = v97;
    v156 = v96;
    v113 = v112 - 55;
LABEL_45:
    LOBYTE(v174) = v113;
    goto LABEL_46;
  }

  if (v112 >= 0x61 && v112 < v153)
  {
    v155 = v97;
    v156 = v96;
    v113 = v112 - 87;
    goto LABEL_45;
  }

  v148 = v171;
  v149 = *(v171 + 8);
  v150 = v163;
LABEL_80:
  v149(v150, a4);
  v149(v170, a4);
  return (*(v148 + 56))(v167, 1, 1, a4);
}

uint64_t closure #1 in FixedWidthInteger.init<A>(_:radix:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  if (a2 <= 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = *a1;
  if (v7 == 43)
  {
    v16 = a3;
    v9 = a5;
    v17 = a6;
    v18 = specialized Collection.subscript.getter(1, a1, a2);
    a1 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v18, v19, v20, v21);
    a6 = v17;
    a3 = v16;
    v15 = 0;
  }

  else
  {
    if (v7 != 45)
    {
      v15 = 0;
      v22 = a4;
      return _parseIntegerDigits<A>(ascii:radix:isNegative:)(a1, a2, a3, v15, v22, a5, a6);
    }

    v8 = a3;
    v9 = a5;
    v10 = a6;
    v11 = specialized Collection.subscript.getter(1, a1, a2);
    a1 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v11, v12, v13, v14);
    a6 = v10;
    a3 = v8;
    v15 = 1;
  }

  v22 = a4;
  a5 = v9;
  return _parseIntegerDigits<A>(ascii:radix:isNegative:)(a1, a2, a3, v15, v22, a5, a6);
}

Swift::UInt16 __swiftcall _ascii16(_:)(Swift::Unicode::Scalar a1)
{
  if (a1._value >= 0x10000)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1._value;
}

uint64_t _asciiDigit<A, B>(codeUnit:radix:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, Class *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v44 = a1;
  v42 = a6;
  v10 = *(*(a5 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v10, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v12 = v11;
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v42 - v15;
  v43 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (*(*(a4 + 8) + 120))(a2);
  if ((v20 - 58) > 0xFFF5u)
  {
    v24 = -48;
    goto LABEL_10;
  }

  if ((v20 - 91) > 0xFFE5u)
  {
    v24 = -55;
    goto LABEL_10;
  }

  if ((v20 - 123) > 0xFFE5u)
  {
    v24 = -87;
LABEL_10:
    v25 = v24 + v20;
    v26 = (*(a5 + 64))(a3, a5);
    v27 = (*(a5 + 128))(a3, a5);
    if (v26)
    {
      if (v27 <= 16)
      {
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, a3, v12, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v12, AssociatedConformanceWitness);
        (*(v10 + 24))(v16, a3, v10);
        v39 = (*(*(*(a5 + 32) + 8) + 40))(v44, v19, a3);
        (*(v43 + 8))(v19, a3);
        v37 = v42;
        if ((v39 & 1) == 0)
        {
          return (*(v43 + 56))(v37, 1, 1, a3);
        }

        v34 = (*(a5 + 120))(a3, a5);
        if (v25 >= v34)
        {
          return (*(v43 + 56))(v37, 1, 1, a3);
        }

        goto LABEL_21;
      }

      v45 = v25;
      v30 = *(a5 + 96);
      v31 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v27, v28, v29);
      v32 = &v45;
    }

    else
    {
      if (v27 <= 16)
      {
        v34 = (*(a5 + 120))(a3, a5);
        v37 = v42;
        if (v25 >= v34)
        {
          return (*(v43 + 56))(v37, 1, 1, a3);
        }

LABEL_21:
        v47 = v25;
        v40 = *(a5 + 96);
        v41 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v34, v35, v36);
        v40(&v47, &type metadata for UInt16, v41, a3, a5);
        return (*(v43 + 56))(v37, 0, 1, a3);
      }

      v46 = v25;
      v30 = *(a5 + 96);
      v31 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v27, v28, v29);
      v32 = &v46;
    }

    v30(v32, &type metadata for UInt16, v31, a3, a5);
    v33 = (*(*(*(a5 + 32) + 8) + 16))(v19, v44, a3);
    v34 = (*(v43 + 8))(v19, a3);
    v37 = v42;
    if ((v33 & 1) == 0)
    {
      return (*(v43 + 56))(v37, 1, 1, a3);
    }

    goto LABEL_21;
  }

  v21 = v42;
  v22 = *(v43 + 56);

  return v22(v21, 1, 1, a3);
}

uint64_t UInt16.init(_builtinIntegerLiteral:)(unsigned __int16 *a1, unint64_t a2)
{
  result = 0;
  if (a2 >> 9 <= 8 && (a2 & 1) == 0)
  {
    return *a1;
  }

  return result;
}

uint64_t _parseUnsignedASCII<A, B>(first:rest:radix:positive:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, Class *a5@<X4>, char *a6@<X5>, int **a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v148 = a4;
  v153 = a3;
  v154 = a1;
  v143 = a2;
  v152 = a9;
  swift_getTupleTypeMetadata2(0, a6, &type metadata for Bool, 0, 0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v135 = &v110 - v16;
  v144 = a5;
  v145 = a7;
  swift_getAssociatedTypeWitness(255, a7, a5, &protocol requirements base descriptor for IteratorProtocol, associated type descriptor for IteratorProtocol.Element);
  v18 = v17;
  v132 = type metadata accessor for Optional(0, v17, v19, v20);
  v131 = *(v132 - 8);
  v22 = MEMORY[0x1EEE9AC00](v132, v21);
  v142 = &v110 - v23;
  v149 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v138 = &v110 - v25;
  v150 = a8;
  v26 = *(a8 + 8);
  v130 = *(*(v26 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v130, a6, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v28 = v27;
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v129 = &v110 - v31;
  v32 = *(a6 - 1);
  v34 = MEMORY[0x1EEE9AC00](v30, v33);
  v134 = &v110 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v34, v36);
  v133 = &v110 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37, v39);
  v146 = &v110 - v41;
  v43 = MEMORY[0x1EEE9AC00](v40, v42);
  v128 = &v110 - v44;
  v46 = MEMORY[0x1EEE9AC00](v43, v45);
  v140 = &v110 - v47;
  MEMORY[0x1EEE9AC00](v46, v48);
  v151 = &v110 - v49;
  v52 = type metadata accessor for Optional(0, a6, v50, v51);
  v53 = *(v52 - 8);
  v55 = MEMORY[0x1EEE9AC00](v52, v54);
  v136 = &v110 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x1EEE9AC00](v55, v57);
  v147 = &v110 - v59;
  v61 = MEMORY[0x1EEE9AC00](v58, v60);
  v63 = &v110 - v62;
  MEMORY[0x1EEE9AC00](v61, v64);
  v66 = &v110 - v65;
  v141 = v18;
  v139 = a10;
  v137 = v26;
  _asciiDigit<A, B>(codeUnit:radix:)(v153, v18, a6, a10, v26, &v110 - v65);
  v154 = v32;
  v67 = *(v32 + 48);
  if (v67(v66, 1, a6) == 1)
  {
    (*(v53 + 8))(v66, v52);
    return (*(v154 + 56))(v152, 1, 1, a6);
  }

  v68 = *(v53 + 16);
  v68(v63, v66, v52);
  if (v67(v63, 1, a6) == 1)
  {
    v69 = *(v53 + 8);
    v69(v66, v52);
    v69(v63, v52);
    return (*(v154 + 56))(v152, 1, 1, a6);
  }

  v123 = v68;
  v124 = v53 + 16;
  v70 = *(v154 + 32);
  v127 = v154 + 32;
  v126 = v70;
  v70(v151, v63, a6);
  v125 = v52;
  if ((v148 & 1) == 0)
  {
    v71 = v130;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v130, a6, v28, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v73 = v129;
    (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v28, AssociatedConformanceWitness);
    v74 = v128;
    (v71[3])(v73, a6, v71);
    v75 = v151;
    v76 = (*(v150 + 88))(v140, v151, a6);
    v77 = *(v154 + 8);
    v77(v74, a6);
    v77(v75, a6);
    if (v76)
    {
      v77(v140, a6);
      (*(v53 + 8))(v66, v125);
      return (*(v154 + 56))(v152, 1, 1, a6);
    }

    v126(v75, v140, a6);
    v52 = v125;
  }

  v78 = v53;
  v79 = v145[2];
  v80 = v142;
  v128 = (v145 + 2);
  v122 = v79;
  (v79)(v144);
  v81 = v149;
  v82 = *(v149 + 48);
  v83 = v141;
  v121 = v149 + 48;
  v120 = v82;
  if (v82(v80, 1, v141) != 1)
  {
    v89 = *(v81 + 32);
    v88 = v81 + 32;
    v87 = v89;
    v90 = (v88 - 24);
    v116 = v150 + 96;
    v118 = (v154 + 8);
    v115 = v150 + 88;
    v114 = v150 + 80;
    v119 = (v78 + 8);
    v110 = (v78 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v91 = v147;
    v149 = v88;
    v113 = v67;
    v117 = v66;
    v112 = v89;
    v111 = (v88 - 24);
    while (1)
    {
      v92 = v138;
      v87(v138, v80, v83);
      _asciiDigit<A, B>(codeUnit:radix:)(v153, v83, a6, v139, v137, v91);
      (*v90)(v92, v83);
      if (v67(v91, 1, a6) == 1)
      {
        (*v118)(v151, a6);
        v106 = *v119;
        v107 = v125;
        (*v119)(v91, v125);
        v106(v66, v107);
        return (*(v154 + 56))(v152, 1, 1, a6);
      }

      v93 = v136;
      v123(v136, v91, v125);
      if (v67(v93, 1, a6) == 1)
      {
        break;
      }

      v126(v146, v93, a6);
      v95 = v150;
      v94 = v151;
      v96 = v133;
      v97 = (*(v150 + 96))(v133, v153, a6, v150);
      v140 = *v118;
      (v140)(v94, a6);
      LODWORD(v130) = v97;
      v98 = v135;
      v99 = v146;
      if (v148)
      {
        v100 = (*(v95 + 80))(v135, v146, a6, v95);
      }

      else
      {
        v100 = (*(v95 + 88))(v135, v146, a6, v95);
      }

      LODWORD(v129) = v100;
      v101 = v140;
      (v140)(v96, a6);
      (v101)(v99, a6);
      v102 = v134;
      v103 = v126;
      v126(v134, v98, a6);
      v84 = *v119;
      v104 = v125;
      (*v119)(v147, v125);
      if ((v130 | v129))
      {
        (v101)(v102, a6);
        v84(v117, v104);
        return (*(v154 + 56))(v152, 1, 1, a6);
      }

      v103(v151, v102, a6);
      v80 = v142;
      (v122)(v144, v145);
      v83 = v141;
      v105 = v120(v80, 1, v141);
      v67 = v113;
      v66 = v117;
      v87 = v112;
      v90 = v111;
      v91 = v147;
      if (v105 == 1)
      {
        v52 = v125;
        goto LABEL_10;
      }
    }

    (*v118)(v151, a6);
    v108 = *v119;
    v109 = v125;
    (*v119)(v91, v125);
    v108(v66, v109);
    v108(v93, v109);
    return (*(v154 + 56))(v152, 1, 1, a6);
  }

  v84 = *(v78 + 8);
LABEL_10:
  v84(v66, v52);
  (*(v131 + 8))(v80, v132);
  v85 = v152;
  v126(v152, v151, a6);
  return (*(v154 + 56))(v85, 0, 1, a6);
}

uint64_t _parseASCII<A, B>(codeUnits:radix:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v198 = a2;
  v199 = a6;
  v205 = a8;
  v206 = a4;
  v197 = a7;
  v204 = *(a7 + 8);
  v11 = *(*(v204 + 24) + 16);
  swift_getAssociatedTypeWitness(255, a5, a3, &protocol requirements base descriptor for IteratorProtocol, associated type descriptor for IteratorProtocol.Element);
  v13 = v12;
  v192 = v11;
  swift_getAssociatedTypeWitness(0, v11, v12, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v191 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v190 = &v177 - v16;
  v17 = swift_checkMetadataState(0, v13);
  v18 = *(v17 - 1);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v193 = &v177 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v200 = &v177 - v24;
  MEMORY[0x1EEE9AC00](v23, v25);
  v203 = &v177 - v26;
  v29 = type metadata accessor for Optional(0, v17, v27, v28);
  v30 = *(v29 - 8);
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v194 = &v177 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v32, v34);
  v201 = &v177 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35, v37);
  v40 = &v177 - v39;
  MEMORY[0x1EEE9AC00](v38, v41);
  v43 = &v177 - v42;
  v44 = *(a5 + 16);
  v202 = a1;
  v45 = a3;
  v46 = a3;
  v47 = a5;
  v195 = v44;
  v196 = (a5 + 16);
  v44(v46, a5);
  v48 = v18;
  v49 = *(v18 + 48);
  if (v49(v43, 1, v17) == 1)
  {
    (*(v30 + 8))(v43, v29);
    return (*(*(v206 - 1) + 56))(v205, 1, 1);
  }

  v187 = *(v30 + 16);
  v188 = v30 + 16;
  v187(v40, v43, v29);
  if (v49(v40, 1, v17) == 1)
  {
    v50 = *(v30 + 8);
    v50(v43, v29);
    v50(v40, v29);
    return (*(*(v206 - 1) + 56))(v205, 1, 1);
  }

  v189 = v49;
  v183 = v43;
  v184 = v30;
  v186 = v29;
  v51 = *(v48 + 32);
  v52 = v203;
  v179 = v48 + 32;
  v178 = v51;
  v51(v203, v40, v17);
  v53 = v204;
  v54 = v204 + 64;
  v55 = *(v204 + 64);
  v56 = v55(v17, v204);
  v182 = v54;
  v181 = v55;
  v185 = v47;
  if (v56)
  {
    v57 = v55(v17, v53);
    v58 = v53;
    v59 = v57;
    v180 = *(v58 + 128);
    v60 = v180(v17);
    v63 = v45;
    if (v59)
    {
      v64 = v48;
      v65 = v189;
      if (v60 <= 16)
      {
        v81 = v191;
        v82 = v192;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v192, v17, v191, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v84 = v190;
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v81, AssociatedConformanceWitness);
        v85 = v200;
        v82[3](v84, v17, v82);
        v53 = v204;
        LOBYTE(v82) = (*(*(*(v204 + 32) + 8) + 32))(v52, v85, v17);
        (*(v64 + 8))(v85, v17);
        v71 = v201;
        if (v82)
        {
          v86 = (*(v53 + 120))(v17, v53);
          v63 = v45;
          v70 = v202;
          if (v86 == 43)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v63 = v45;
          v70 = v202;
        }
      }

      else
      {
        v207[0] = 43;
        v66 = v204;
        v177 = *(v204 + 96);
        v67 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v60, v61, v62);
        v68 = v200;
        v177(v207, &type metadata for UInt16, v67, v17, v66);
        v53 = v66;
        v69 = (*(*(*(v66 + 16) + 8) + 8))(v52, v68, v17);
        (*(v64 + 8))(v68, v17);
        v63 = v45;
        v71 = v201;
        v70 = v202;
        if (v69)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      v70 = v202;
      v64 = v48;
      v65 = v189;
      if (v60 >= 16)
      {
        v207[0] = 43;
        v87 = v204;
        v177 = *(v204 + 96);
        v88 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v60, v61, v62);
        v89 = v63;
        v90 = v200;
        v177(v207, &type metadata for UInt16, v88, v17, v87);
        v53 = v87;
        v91 = (*(*(*(v87 + 16) + 8) + 8))(v52, v90, v17);
        v92 = v90;
        v63 = v89;
        v70 = v202;
        (*(v64 + 8))(v92, v17);
        v71 = v201;
        if (v91)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v53 = v204;
        v76 = (*(v204 + 120))(v17, v204);
        v71 = v201;
        if (v76 == 43)
        {
          goto LABEL_22;
        }
      }
    }
  }

  else
  {
    v180 = *(v53 + 128);
    v72 = (v180)(v17, v53);
    v63 = v45;
    if (v72 >= 16)
    {
      v207[0] = 43;
      v77 = *(v204 + 96);
      v78 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v72, v73, v74);
      v79 = v200;
      v77(v207, &type metadata for UInt16, v78, v17, v204);
      v53 = v204;
      v80 = (*(*(*(v204 + 16) + 8) + 8))(v52, v79, v17);
      v64 = v48;
      (*(v48 + 8))(v79, v17);
      v71 = v201;
      v70 = v202;
      v65 = v189;
      if (v80)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v75 = (*(v53 + 120))(v17, v53);
      v71 = v201;
      v70 = v202;
      v64 = v48;
      v65 = v189;
      if (v75 == 43)
      {
        goto LABEL_22;
      }
    }
  }

  v112 = v181;
  if (v181(v17, v53))
  {
    v113 = v112(v17, v53);
    v114 = v180(v17);
    if (v113)
    {
      v117 = v63;
      v65 = v189;
      if (v114 > 16)
      {
        v207[0] = 45;
        v118 = v204;
        v177 = *(v204 + 96);
        v119 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v114, v115, v116);
        v120 = v200;
        v177(v207, &type metadata for UInt16, v119, v17, v118);
        v53 = v118;
        v121 = (*(*(*(v118 + 16) + 8) + 8))(v203, v120, v17);
        (*(v64 + 8))(v120, v17);
        v63 = v117;
        v70 = v202;
        if (v121)
        {
          goto LABEL_22;
        }

LABEL_49:
        v146 = v203;
        _parseUnsignedASCII<A, B>(first:rest:radix:positive:)(v203, v70, v198, 1, v63, v206, v185, v199, v205, v197);
        (*(v64 + 8))(v146, v17);
        return (*(v184 + 8))(v183, v186);
      }

      v134 = v191;
      v135 = v192;
      v136 = swift_getAssociatedConformanceWitness(v192, v17, v191, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v137 = v190;
      (*(v136 + 8))(&qword_18071E0A8, 256, v134, v136);
      v138 = v200;
      (*(v135 + 3))(v137, v17, v135);
      v53 = v204;
      LOBYTE(v134) = (*(*(*(v204 + 32) + 8) + 32))(v203, v138, v17);
      (*(v64 + 8))(v138, v17);
      v63 = v117;
      v70 = v202;
      if ((v134 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v65 = v189;
      if (v114 >= 16)
      {
        v207[0] = 45;
        v139 = v204;
        v177 = *(v204 + 96);
        v140 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v114, v115, v116);
        v141 = v70;
        v142 = v63;
        v143 = v200;
        v177(v207, &type metadata for UInt16, v140, v17, v139);
        v53 = v139;
        v144 = (*(*(*(v139 + 16) + 8) + 8))(v203, v143, v17);
        v145 = v143;
        v63 = v142;
        v70 = v141;
        v71 = v201;
        (*(v64 + 8))(v145, v17);
        if (v144)
        {
          goto LABEL_22;
        }

        goto LABEL_49;
      }

      v53 = v204;
    }

    if ((*(v53 + 120))(v17, v53) != 45)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v122 = v203;
    v123 = (v180)(v17, v53);
    if (v123 >= 16)
    {
      v207[0] = 45;
      v127 = *(v204 + 96);
      v128 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v123, v124, v125);
      v129 = v70;
      v130 = v63;
      v131 = v200;
      v127(v207, &type metadata for UInt16, v128, v17, v204);
      v53 = v204;
      v132 = (*(*(*(v204 + 16) + 8) + 8))(v122, v131, v17);
      v133 = v131;
      v63 = v130;
      v70 = v129;
      v71 = v201;
      (*(v64 + 8))(v133, v17);
      v65 = v189;
      if ((v132 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v126 = (*(v53 + 120))(v17, v53);
      v65 = v189;
      if (v126 != 45)
      {
        goto LABEL_49;
      }
    }
  }

LABEL_22:
  v195(v63, v185);
  if (v65(v71, 1, v17) == 1)
  {
    (*(v64 + 8))(v203, v17);
    v93 = *(v184 + 8);
    v94 = v186;
    v93(v71, v186);
    v93(v183, v94);
    return (*(*(v206 - 1) + 56))(v205, 1, 1);
  }

  v95 = v194;
  v96 = v186;
  v187(v194, v71, v186);
  if (v65(v95, 1, v17) == 1)
  {
    (*(v64 + 8))(v203, v17);
    v97 = *(v184 + 8);
    v97(v71, v96);
    v97(v183, v96);
    v97(v95, v96);
    return (*(*(v206 - 1) + 56))(v205, 1, 1);
  }

  v178(v193, v95, v17);
  v99 = v181;
  if ((v181(v17, v53) & 1) == 0)
  {
    v147 = v203;
    v148 = (v180)(v17, v53);
    if (v148 < 16)
    {
      v151 = (*(v53 + 120))(v17, v53);
      goto LABEL_54;
    }

    v207[0] = 45;
    v153 = *(v53 + 96);
    v154 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v148, v149, v150);
    v155 = v63;
    v156 = v200;
    v153(v207, &type metadata for UInt16, v154, v17, v53);
    v157 = (*(*(*(v53 + 16) + 8) + 8))(v147, v156, v17);
    v111 = *(v64 + 8);
    v158 = v156;
    v63 = v155;
    v70 = v202;
    v111(v158, v17);
LABEL_61:
    v111(v147, v17);
    if (v157)
    {
      goto LABEL_62;
    }

    goto LABEL_65;
  }

  v100 = v99(v17, v53);
  v101 = v180(v17);
  if ((v100 & 1) == 0)
  {
    if (v101 < 16)
    {
      v147 = v203;
      v151 = (*(v204 + 120))(v17, v204);
LABEL_54:
      v152 = v151;
      v111 = *(v64 + 8);
      v111(v147, v17);
      if (v152 != 45)
      {
        goto LABEL_65;
      }

      goto LABEL_62;
    }

    v207[0] = 45;
    v167 = v204;
    v168 = *(v204 + 96);
    v169 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v101, v102, v103);
    v170 = v63;
    v171 = v200;
    v168(v207, &type metadata for UInt16, v169, v17, v167);
    v172 = *(*(*(v167 + 16) + 8) + 8);
    v147 = v203;
    v157 = v172(v203, v171, v17);
    v111 = *(v64 + 8);
    v173 = v171;
    v63 = v170;
    v111(v173, v17);
    goto LABEL_61;
  }

  v196 = v63;
  if (v101 <= 16)
  {
    v160 = v191;
    v159 = v192;
    v161 = swift_getAssociatedConformanceWitness(v192, v17, v191, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v162 = v190;
    (*(v161 + 8))(&qword_18071E0A8, 256, v160, v161);
    v163 = v200;
    (*(v159 + 3))(v162, v17, v159);
    v164 = v203;
    v165 = v204;
    LOBYTE(v160) = (*(*(*(v204 + 32) + 8) + 32))(v203, v163, v17);
    v111 = *(v64 + 8);
    v111(v163, v17);
    if (v160)
    {
      v166 = (*(v165 + 120))(v17, v165);
      v111(v164, v17);
      v63 = v196;
      if (v166 != 45)
      {
        goto LABEL_65;
      }

      goto LABEL_62;
    }

    v111(v164, v17);
    v63 = v196;
LABEL_65:
    v174 = v193;
    _parseUnsignedASCII<A, B>(first:rest:radix:positive:)(v193, v70, v198, 1, v63, v206, v185, v199, v205, v197);
    goto LABEL_63;
  }

  v207[0] = 45;
  v104 = v204;
  v105 = *(v204 + 96);
  v106 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v101, v102, v103);
  v107 = v200;
  v105(v207, &type metadata for UInt16, v106, v17, v104);
  v108 = *(*(*(v104 + 16) + 8) + 8);
  v109 = v203;
  v110 = v108(v203, v107, v17);
  v111 = *(v64 + 8);
  v111(v107, v17);
  v111(v109, v17);
  v63 = v196;
  if ((v110 & 1) == 0)
  {
    goto LABEL_65;
  }

LABEL_62:
  v174 = v193;
  _parseUnsignedASCII<A, B>(first:rest:radix:positive:)(v193, v70, v198, 0, v63, v206, v185, v199, v205, v197);
LABEL_63:
  v111(v174, v17);
  v175 = *(v184 + 8);
  v176 = v186;
  v175(v71, v186);
  return (v175)(v183, v176);
}

uint64_t static AdditiveArithmetic.+= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 32))(v10, a1);
  (*(a4 + 24))(v10, a2, a3, a4);
  return (*(v8 + 8))(v10, a3);
}

uint64_t static AdditiveArithmetic.-= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 32))(v10, a1);
  (*(a4 + 40))(v10, a2, a3, a4);
  return (*(v8 + 8))(v10, a3);
}

uint64_t static AdditiveArithmetic<>.zero.getter(Class *a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness(0, a3, a1, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a1, v6, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v6, AssociatedConformanceWitness);
  return (*(a3 + 24))(v9, a1, a3);
}

Swift::Void __swiftcall SignedNumeric.negate()()
{
  v2 = v0;
  v3 = *(v0 - 1);
  v4 = (MEMORY[0x1EEE9AC00])();
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v20 - v8;
  v11 = *(v10 + 8);
  v12 = *(v11 + 16);
  swift_getAssociatedTypeWitness(0, v12, v2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v20 - v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, v2, v14, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v14, AssociatedConformanceWitness);
  (*(v12 + 24))(v17, v2, v12);
  (*(v3 + 32))(v6, v1, v2);
  (*(*(v11 + 8) + 40))(v9, v6, v2);
  v19 = *(v3 + 8);
  v19(v6, v2);
  v19(v9, v2);
}

{
  v2 = v0;
  v3 = *(v0 - 1);
  v4 = (MEMORY[0x1EEE9AC00])();
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v20 - v8;
  v11 = *(v10 + 8);
  v12 = *(v11 + 16);
  swift_getAssociatedTypeWitness(0, v12, v2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v20 - v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, v2, v14, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v14, AssociatedConformanceWitness);
  (*(v12 + 24))(v17, v2, v12);
  (*(v3 + 32))(v6, v1, v2);
  (*(*(v11 + 8) + 40))(v9, v6, v2);
  v19 = *(v3 + 8);
  v19(v6, v2);
  v19(v9, v2);
}

uint64_t BinaryInteger._lowWord.getter(Class *a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness(0, a2, a1, &protocol requirements base descriptor for BinaryInteger, associated type descriptor for BinaryInteger.Words);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4, v6);
  v7 = *(*(*(swift_getAssociatedConformanceWitness(a2, a1, v5, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.BinaryInteger.Words: RandomAccessCollection) + 8) + 8) + 8);
  swift_getAssociatedTypeWitness(0, v7, v5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v16 - v12;
  (*(a2 + 112))(a1, a2);
  (*(v7 + 32))(v5, v7);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, v5, v9, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  (*(AssociatedConformanceWitness + 16))(&v16, v9, AssociatedConformanceWitness);
  (*(v10 + 8))(v13, v9);
  if (v17)
  {
    return 0;
  }

  else
  {
    return v16;
  }
}

{
  swift_getAssociatedTypeWitness(0, a2, a1, &protocol requirements base descriptor for BinaryInteger, associated type descriptor for BinaryInteger.Words);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4, v6);
  v7 = *(*(*(swift_getAssociatedConformanceWitness(a2, a1, v5, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.BinaryInteger.Words: RandomAccessCollection) + 8) + 8) + 8);
  swift_getAssociatedTypeWitness(0, v7, v5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v16 - v12;
  (*(a2 + 112))(a1, a2);
  (*(v7 + 32))(v5, v7);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, v5, v9, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  (*(AssociatedConformanceWitness + 16))(&v16, v9, AssociatedConformanceWitness);
  (*(v10 + 8))(v13, v9);
  if (v17)
  {
    return 0;
  }

  else
  {
    return v16;
  }
}

Swift::Int __swiftcall BinaryInteger._binaryLogarithm()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v6 = *(v0 - 1);
  (MEMORY[0x1EEE9AC00])();
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(v9 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v10, v5, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v32 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v5, v12, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v12, AssociatedConformanceWitness);
  (*(v10 + 24))(v15, v5, v10);
  v17 = (*(*(v4[4] + 8) + 40))(v2, v8, v5);
  v18 = v6 + 8;
  v38 = *(v6 + 8);
  v38(v8, v5);
  if ((v17 & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v19 = v4[16];
  v20 = v19(v5, v4);
  v21 = v20 + 62;
  if (v20 - 1 >= 0)
  {
    v21 = v20 - 1;
  }

  v22 = v21 >> 6;
  v32 = v21 & 0xFFFFFFFFFFFFFFC0;
  v33 = v20 - 1;
  v23 = v20 - 1 - (v21 & 0xFFFFFFFFFFFFFFC0);
  v37 = v19;
  v24 = v19(v5, v4);
  v39 = ~v23 + v24;
  v25 = v4[30];
  v36 = lazy protocol witness table accessor for type Int and conformance Int(v24, v26, v27);
  v25(v3, &v39, &type metadata for Int);
  v34 = v4[15];
  v35 = v4 + 15;
  v28 = v34(v5, v4);
  v38(v8, v5);
  if (!v28)
  {
    v29 = v32 - v33;
    v33 = v18;
    v30 = v29 - 65;
    do
    {
      --v22;
      v39 = v37(v5, v4) + v30;
      (v25)(v3, &v39, &type metadata for Int, v36, v5, v4);
      v28 = v34(v5, v4);
      v38(v8, v5);
      v30 -= 64;
    }

    while (!v28);
  }

  return (__clz(v28) | (v22 << 6)) ^ 0x3F;
}

uint64_t static BinaryInteger.& infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 16))(a5, a1);
  return (*(a4 + 200))(a5, a2, a3, a4);
}

{
  (*(*(a3 - 8) + 16))(a5, a1);
  return (*(a4 + 200))(a5, a2, a3, a4);
}

uint64_t static BinaryInteger.| infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 16))(a5, a1);
  return (*(a4 + 216))(a5, a2, a3, a4);
}

{
  (*(*(a3 - 8) + 16))(a5, a1);
  return (*(a4 + 216))(a5, a2, a3, a4);
}

uint64_t static BinaryInteger.^ infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 16))(a5, a1);
  return (*(a4 + 232))(a5, a2, a3, a4);
}

{
  (*(*(a3 - 8) + 16))(a5, a1);
  return (*(a4 + 232))(a5, a2, a3, a4);
}

uint64_t static BinaryInteger.>> infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a5 - 8) + 16))(a7, a1, a5);
  return (*(a6 + 248))(a7, a2, a3, a4, a5, a6);
}

{
  (*(*(a3 - 8) + 16))(a7, a1);
  return (*(a5 + 248))(a7, a2, a4, a6, a3, a5);
}

uint64_t static BinaryInteger.<< infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a5 - 8) + 16))(a7, a1, a5);
  return (*(a6 + 264))(a7, a2, a3, a4, a5, a6);
}

{
  (*(*(a3 - 8) + 16))(a7, a1);
  return (*(a5 + 264))(a7, a2, a4, a6, a3, a5);
}

uint64_t specialized BinaryInteger.quotientAndRemainder(dividingBy:)(int *a1, int a2, int a3)
{
  if (!a2 || a2 == -1 && a3 == 0x80000000)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a1 = a3 % a2;
  return (a3 / a2);
}

uint64_t specialized BinaryInteger.quotientAndRemainder(dividingBy:)(_WORD *a1, __int16 a2, __int16 a3)
{
  if (!a2 || a2 == -1 && a3 == 0x8000)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a1 = a3 % a2;
  return (a3 / a2);
}

unint64_t specialized BinaryInteger.quotientAndRemainder(dividingBy:)(_OWORD *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  if (!(a2 | a3) || (a2 & a3) == 0xFFFFFFFFFFFFFFFFLL && !(a4 | a5 ^ 0x8000000000000000))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result = __divti3();
  *a1 = __PAIR128__(a5, a4) - __PAIR128__(v11, result) * __PAIR128__(a3, a2);
  return result;
}

uint64_t specialized BinaryInteger.quotientAndRemainder(dividingBy:)(_BYTE *a1, char a2, char a3)
{
  if (!a2 || a2 == -1 && a3 == 128)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a1 = a3 % a2;
  return (a3 / a2);
}

uint64_t specialized BinaryInteger.quotientAndRemainder(dividingBy:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || a2 == -1 && a3 == 0x8000000000000000)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a1 = a3 % a2;
  return a3 / a2;
}

uint64_t BinaryInteger.quotientAndRemainder(dividingBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  (*(a5 + 152))(v6, a3, a4, a5);
  return (*(a5 + 168))(v6, a3, a4, a5);
}

BOOL specialized BinaryInteger.isMultiple(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 | a2)
  {
    a3 = __umodti3();
    a4 = v4;
  }

  return (a3 | a4) == 0;
}

BOOL specialized BinaryInteger.isMultiple(of:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a2;
  if (a1)
  {
    v2 = a2 % a1;
  }

  return v2 == 0;
}

BOOL specialized BinaryInteger.isMultiple(of:)(unsigned __int16 a1, unsigned __int16 a2)
{
  v2 = a2;
  if (a1)
  {
    v2 = a2 % a1;
  }

  return v2 == 0;
}

BOOL specialized BinaryInteger.isMultiple(of:)(unsigned int a1, unsigned int a2)
{
  if (a1)
  {
    a2 %= a1;
  }

  return a2 == 0;
}

BOOL specialized BinaryInteger.isMultiple(of:)(Swift::UInt64 a1, Swift::UInt64 a2, Swift::UInt64 a3, Swift::UInt64 a4)
{
  v6.high = a3;
  if (!(a2 | a1))
  {
    return (a4 | a3) == 0;
  }

  v10[1] = v4;
  v10[2] = v5;
  v6.low = a2;
  specialized _wideDivide22<A>(_:by:)(v10, &v9, &v8, a4, v6, a1);
  return !v9 && v8 == 0;
}

uint64_t BinaryInteger.isMultiple(of:)(uint64_t a1, Class *a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v8, a2, &protocol requirements base descriptor for Numeric, associated type descriptor for Numeric.Magnitude);
  v10 = v9;
  v99 = *(swift_getAssociatedConformanceWitness(v8, a2, v9, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Numeric) + 16);
  swift_getAssociatedTypeWitness(0, v99, v10, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v98 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v97 = &v96 - v13;
  v14 = swift_checkMetadataState(0, v10);
  v104 = *(v14 - 1);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v103 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v108 = &v96 - v20;
  MEMORY[0x1EEE9AC00](v19, v21);
  v110 = &v96 - v22;
  v105 = v8;
  v23 = *(v8 + 16);
  swift_getAssociatedTypeWitness(0, v23, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v25 = v24;
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v100 = &v96 - v28;
  v107 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v27, v29);
  v106 = &v96 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a3 + 64);
  v32 = v31(a2, a3);
  v109 = v4;
  v96 = v25;
  if ((v32 & 1) == 0)
  {
    v102 = v31;
    v36 = v31(a2, a3);
    v101 = *(a3 + 128);
    v37 = v101(a2, a3);
    if (v36)
    {
      if (v37 <= 64)
      {
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v23, a2, v25, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v41 = v100;
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v25, AssociatedConformanceWitness);
        v42 = v106;
        (*(v23 + 24))(v41, a2, v23);
        v43 = (*(*(*(a3 + 32) + 8) + 32))(a1, v42, a2);
        (*(v107 + 8))(v42, a2);
        v31 = v102;
        if ((v43 & 1) == 0 || (*(a3 + 120))(a2, a3))
        {
          goto LABEL_11;
        }

LABEL_22:
        if (v31(a2, a3))
        {
          v75 = v109;
          v76 = v101(a2, a3);
          if (v76 >= 64)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }

        v79 = v31(a2, a3);
        v75 = v109;
        v76 = v101(a2, a3);
        if (v79)
        {
          if (v76 <= 64)
          {
            v80 = v96;
            v81 = swift_getAssociatedConformanceWitness(v23, a2, v96, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v82 = v100;
            (*(v81 + 8))(&qword_18071E0A8, 256, v80, v81);
            v83 = v106;
            (*(v23 + 24))(v82, a2, v23);
            LOBYTE(v80) = (*(*(*(a3 + 32) + 8) + 32))(v75, v83, a2);
            (*(v107 + 8))(v83, a2);
            if ((v80 & 1) == 0)
            {
              goto LABEL_28;
            }

LABEL_33:
            v84 = (*(a3 + 120))(a2, a3) == 0;
            return v84 & 1;
          }
        }

        else if (v76 < 64)
        {
          goto LABEL_33;
        }

LABEL_34:
        v111 = 0;
        v92 = *(a3 + 96);
        v93 = lazy protocol witness table accessor for type Int and conformance Int(v76, v77, v78);
        v94 = v106;
        v92(&v111, &type metadata for Int, v93, a2, a3);
        v84 = (*(*(*(a3 + 16) + 8) + 8))(v75, v94, a2);
        (*(v107 + 8))(v94, a2);
        return v84 & 1;
      }
    }

    else if (v37 < 64)
    {
      v68 = (*(a3 + 120))(a2, a3);
      v31 = v102;
      if (v68)
      {
        goto LABEL_11;
      }

      goto LABEL_22;
    }

    v111 = 0;
    v69 = v23;
    v70 = *(a3 + 96);
    v71 = lazy protocol witness table accessor for type Int and conformance Int(v37, v38, v39);
    v72 = a1;
    v73 = v106;
    v70(&v111, &type metadata for Int, v71, a2, a3);
    v23 = v69;
    v74 = (*(*(*(a3 + 16) + 8) + 8))(v72, v73, a2);
    (*(v107 + 8))(v73, a2);
    v31 = v102;
    if (v74)
    {
      goto LABEL_22;
    }

    goto LABEL_11;
  }

  v101 = *(a3 + 128);
  v33 = v101(a2, a3);
  if (v33 >= 64)
  {
    v111 = 0;
    v102 = v31;
    v44 = v23;
    v45 = *(a3 + 96);
    v46 = lazy protocol witness table accessor for type Int and conformance Int(v33, v34, v35);
    v47 = a1;
    v48 = v106;
    v45(&v111, &type metadata for Int, v46, a2, a3);
    v31 = v102;
    v23 = v44;
    v49 = (*(*(*(a3 + 16) + 8) + 8))(v47, v48, a2);
    (*(v107 + 8))(v48, a2);
    if (v49)
    {
      goto LABEL_22;
    }
  }

  else if (!(*(a3 + 120))(a2, a3))
  {
    goto LABEL_22;
  }

LABEL_11:
  v50 = v105;
  v51 = *(v105 + 7);
  v52 = v108;
  v51(a2, v105);
  v53 = v103;
  v51(a2, v50);
  v54 = swift_getAssociatedConformanceWitness(a3, a2, v14, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.Numeric.Magnitude: BinaryInteger);
  (*(v54 + 168))(v52, v53, v14, v54);
  v55 = *(v104 + 8);
  v55(v53, v14);
  v55(v52, v14);
  v56 = *(v54 + 64);
  if (v56(v14, v54))
  {
    v57 = (*(v54 + 128))(v14, v54);
    if (v57 >= 64)
    {
      goto LABEL_31;
    }

LABEL_30:
    v85 = v110;
    v86 = (*(v54 + 120))(v14, v54);
    v55(v85, v14);
    v84 = v86 == 0;
    return v84 & 1;
  }

  v60 = v56(v14, v54);
  v57 = (*(v54 + 128))(v14, v54);
  if ((v60 & 1) == 0)
  {
    if (v57 < 64)
    {
      goto LABEL_30;
    }

LABEL_31:
    v111 = 0;
    v87 = *(v54 + 96);
    v88 = lazy protocol witness table accessor for type Int and conformance Int(v57, v58, v59);
    v89 = v108;
    v87(&v111, &type metadata for Int, v88, v14, v54);
    v90 = swift_getAssociatedConformanceWitness(v50, a2, v14, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
    v91 = v110;
    v84 = (*(*(v90 + 8) + 8))(v110, v89, v14);
    v55(v89, v14);
    v55(v91, v14);
    return v84 & 1;
  }

  if (v57 > 64)
  {
    goto LABEL_31;
  }

  v61 = v98;
  v62 = v99;
  v63 = swift_getAssociatedConformanceWitness(v99, v14, v98, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v64 = v97;
  (*(v63 + 8))(&qword_18071E0A8, 256, v61, v63);
  v65 = v108;
  (v62[3])(v64, v14, v62);
  v66 = swift_getAssociatedConformanceWitness(v50, a2, v14, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
  v67 = (*(v66 + 32))(v110, v65, v14, v66);
  v55(v65, v14);
  if (v67)
  {
    goto LABEL_30;
  }

  v55(v110, v14);
LABEL_28:
  v84 = 0;
  return v84 & 1;
}

uint64_t specialized BinaryInteger.signum()(uint64_t a1, uint64_t a2)
{
  v2 = a1 != 0;
  if (a2)
  {
    v2 = a2 > 0;
  }

  if (v2)
  {
    return !a2 || a2 >= 0;
  }

  else if (a2 < 0)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

uint64_t BinaryInteger.signum()@<X0>(Class *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v43 = *(a2 + 24);
  v5 = *(v43 + 16);
  swift_getAssociatedTypeWitness(0, v5, a1, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v7 = v6;
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v38 - v10;
  v12 = *(a1 - 1);
  v14 = MEMORY[0x1EEE9AC00](v9, v13);
  v40 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v38 - v18;
  MEMORY[0x1EEE9AC00](v17, v20);
  v47 = &v38 - v21;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, a1, v7, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v48 = *(AssociatedConformanceWitness + 8);
  v49 = AssociatedConformanceWitness;
  v48(&qword_18071E0A8, 256, v7);
  v23 = *(v5 + 24);
  v41 = v5;
  v45 = v23;
  v23(v11, a1, v5);
  v24 = *(*(a2 + 32) + 8);
  v25 = (*(v24 + 40))(v46, v19, a1, v24);
  v26 = *(v12 + 8);
  v42 = v12 + 8;
  v39 = v26;
  v26(v19, a1);
  if (v25)
  {
    v27 = &qword_1806729C0;
    v28 = 512;
  }

  else
  {
    v27 = &qword_18071E0A8;
    v28 = 256;
  }

  (v48)(v27, v28, v7, v49);
  v29 = v41;
  v30 = v45;
  v45(v11, a1, v41);
  (v48)(&qword_18071E0A8, 256, v7, v49);
  v30(v11, a1, v29);
  v31 = (*(v24 + 16))(v46, v19, a1, v24);
  v32 = v39;
  v39(v19, a1);
  if (v31)
  {
    v33 = &qword_1806729C0;
    v34 = 512;
  }

  else
  {
    v33 = &qword_18071E0A8;
    v34 = 256;
  }

  (v48)(v33, v34, v7, v49);
  v35 = v40;
  v45(v11, a1, v29);
  v36 = v47;
  (*(*(v43 + 8) + 40))(v47, v35, a1);
  v32(v35, a1);
  return (v32)(v36, a1);
}

uint64_t BinaryInteger.init()(Class *a1, uint64_t a2)
{
  v3 = *(*(a2 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v3, a1, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v3, a1, v5, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v5, AssociatedConformanceWitness);
  return (*(v3 + 24))(v8, a1, v3);
}

uint64_t specialized BinaryInteger._description(radix:uppercase:)(unint64_t a1, char a2, unint64_t a3, unint64_t a4)
{
  if (a1 - 37 <= 0xFFFFFFFFFFFFFFDCLL)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = a4;
  v5 = a3;
  v6 = a4 == 0;
  v7 = 48;
  if (a4 | a3)
  {
    v9 = vcnt_s8(a1);
    v9.i16[0] = vaddlv_u8(v9);
    v35 = v9.u32[0];
    v10 = __clz(__rbit64(a1));
    v34 = a1 - 1;
    if (a2)
    {
      v11 = 55;
    }

    else
    {
      v11 = 87;
    }

    v12 = &_swiftEmptyArrayStorage;
    do
    {
      if (v35 == 1)
      {
        v13 = (v4 << (-v10 & 0x3F)) | (v5 >> v10);
        v4 >>= v10;
        LOBYTE(v14) = v5 & v34;
        if (v10)
        {
          v5 = v13;
        }
      }

      else
      {
        v15 = v4 != 0;
        if (v6)
        {
          v15 = v5 > a1;
        }

        if (v15)
        {
          if (v6)
          {
            v4 = 0;
            v14 = v5 % a1;
            v5 /= a1;
          }

          else
          {
            if (v4 % a1)
            {
              v17 = __udivti3();
              LOBYTE(v14) = v5 - v17 * a1;
              v5 = v17;
            }

            else
            {
              v14 = v5 % a1;
              v5 /= a1;
            }

            v4 /= a1;
          }
        }

        else
        {
          if (v5 < a1)
          {
            v16 = v5;
          }

          else
          {
            v16 = 0;
          }

          if (v6)
          {
            LOBYTE(v14) = v16;
          }

          else
          {
            LOBYTE(v14) = 0;
          }

          v5 = !v6 || v5 >= a1;
          v4 = 0;
        }
      }

      if (v14 >= 0xAu && a1 >= 0xB)
      {
        v19 = v11;
      }

      else
      {
        v19 = 48;
      }

      if (!swift_isUniquelyReferenced_nonNull_native(v12))
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, &v12[2]->isa + 1, 1, v12);
      }

      v21 = v12[2];
      v20 = v12[3];
      if (v21 >= v20 >> 1)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), &v21->isa + 1, 1, v12);
      }

      v12[2] = (&v21->isa + 1);
      *(&v21->info + v12) = v19 + v14;
      v6 = v4 == 0;
    }

    while (v4 | v5);
    specialized MutableCollection<>.reverse()();
    v22 = v12[2];
    if (v22)
    {
      if (v22 <= 0xF)
      {
        v26 = v22 - 8;
        v27 = 8;
        if (v22 < 8)
        {
          v27 = v12[2];
        }

        v28 = (v27 - 1);
        if (v22 < v27 - 1)
        {
          v28 = v12[2];
        }

        if (v27 == v28)
        {
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v7 = *(v12 + 32);
        if (v22 != 1)
        {
          v7 |= *(v12 + 33) << 8;
          if (v22 != 2)
          {
            v7 |= *(v12 + 34) << 16;
            if (v22 != 3)
            {
              v7 |= *(v12 + 35) << 24;
              if (v22 != 4)
              {
                v7 |= *(v12 + 36) << 32;
                if (v22 != 5)
                {
                  v7 |= *(v12 + 37) << 40;
                  if (v22 != 6)
                  {
                    v7 |= *(v12 + 38) << 48;
                    if (v22 != 7)
                    {
                      v7 |= *(v12 + 39) << 56;
                    }
                  }
                }
              }
            }
          }
        }

        if (v22 >= 9)
        {
          v29 = 0;
          v30 = 0;
          v31 = (v12 + 5);
          do
          {
            v32 = *v31++;
            v29 |= v32 << v30;
            v30 += 8;
            --v26;
          }

          while (v26);
        }
      }

      else
      {
        v23 = v22 | 0xF000000000000000;
        v24 = _allocateStringStorage(codeUnitCapacity:)(v12[2]);
        *(v24 + 16) = v25;
        *(v24 + 24) = v22 | 0xF000000000000000;
        if (v25 < 0)
        {
          *__StringStorage._breadcrumbsAddress.getter() = 0;
          v23 = *(v24 + 24);
        }

        *(v24 + 32 + (v23 & 0xFFFFFFFFFFFFLL)) = 0;
        specialized UnsafeMutablePointer.initialize(from:count:)(v12 + 32, v22, (v24 + 32));
        v7 = *(v24 + 24);
      }
    }

    else
    {
      v7 = 0;
    }

    v12;
  }

  return v7;
}

{
  if (a1 - 37 <= 0xFFFFFFFFFFFFFFDCLL)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = a4;
  v5 = a3;
  v6 = 48;
  if (a3 | a4)
  {
    v8 = vcnt_s8(a1);
    v8.i16[0] = vaddlv_u8(v8);
    v32 = v8.u32[0];
    if (a2)
    {
      v9 = 55;
    }

    else
    {
      v9 = 87;
    }

    v10 = __clz(__rbit64(a1));
    v31 = a1 - 1;
    v11 = &_swiftEmptyArrayStorage;
    do
    {
      if (v32 == 1)
      {
        v12 = v5 & v31;
        if ((v10 & 0x40) != 0)
        {
          v5 = v4 >> v10;
        }

        else
        {
          v5 = ((2 * v4) << ~v10) | (v5 >> v10);
        }

        if ((v10 & 0x40) != 0)
        {
          v4 = 0;
        }

        else
        {
          v4 >>= v10;
        }
      }

      else
      {
        v13 = __udivti3();
        v4 = v14;
        v12 = v5 - v13 * a1;
        v5 = v13;
      }

      if (v12 >= 0xAu && a1 >= 0xB)
      {
        v16 = v9;
      }

      else
      {
        v16 = 48;
      }

      if (!swift_isUniquelyReferenced_nonNull_native(v11))
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, &v11[2]->isa + 1, 1, v11);
      }

      v18 = v11[2];
      v17 = v11[3];
      if (v18 >= v17 >> 1)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), &v18->isa + 1, 1, v11);
      }

      v11[2] = (&v18->isa + 1);
      *(&v18->info + v11) = v16 + v12;
    }

    while (v5 | v4);
    specialized MutableCollection<>.reverse()();
    v19 = v11[2];
    if (v19)
    {
      if (v19 <= 0xF)
      {
        v23 = v19 - 8;
        v24 = 8;
        if (v19 < 8)
        {
          v24 = v11[2];
        }

        v25 = (v24 - 1);
        if (v19 < v24 - 1)
        {
          v25 = v11[2];
        }

        if (v24 == v25)
        {
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v6 = *(v11 + 32);
        if (v19 != 1)
        {
          v6 |= *(v11 + 33) << 8;
          if (v19 != 2)
          {
            v6 |= *(v11 + 34) << 16;
            if (v19 != 3)
            {
              v6 |= *(v11 + 35) << 24;
              if (v19 != 4)
              {
                v6 |= *(v11 + 36) << 32;
                if (v19 != 5)
                {
                  v6 |= *(v11 + 37) << 40;
                  if (v19 != 6)
                  {
                    v6 |= *(v11 + 38) << 48;
                    if (v19 != 7)
                    {
                      v6 |= *(v11 + 39) << 56;
                    }
                  }
                }
              }
            }
          }
        }

        if (v19 >= 9)
        {
          v26 = 0;
          v27 = 0;
          v28 = (v11 + 5);
          do
          {
            v29 = *v28++;
            v26 |= v29 << v27;
            v27 += 8;
            --v23;
          }

          while (v23);
        }
      }

      else
      {
        v20 = v19 | 0xF000000000000000;
        v21 = _allocateStringStorage(codeUnitCapacity:)(v11[2]);
        *(v21 + 16) = v22;
        *(v21 + 24) = v19 | 0xF000000000000000;
        if (v22 < 0)
        {
          *__StringStorage._breadcrumbsAddress.getter() = 0;
          v20 = *(v21 + 24);
        }

        *(v21 + 32 + (v20 & 0xFFFFFFFFFFFFLL)) = 0;
        specialized UnsafeMutablePointer.initialize(from:count:)(v11 + 32, v19, (v21 + 32));
        v6 = *(v21 + 24);
      }
    }

    else
    {
      v6 = 0;
    }

    v11;
  }

  return v6;
}

uint64_t specialized BinaryInteger._description(radix:uppercase:)(unint64_t a1, char a2, int64_t a3, uint64_t a4)
{
  if (a1 - 37 <= 0xFFFFFFFFFFFFFFDCLL)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!(a4 | a3))
  {
    return 48;
  }

  v6 = -__PAIR128__(v4, a3) >> 64;
  if (a4 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = -a3;
  }

  if (a4 >= 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = v6;
  }

  v9 = &_swiftEmptyArrayStorage;
  v41 = &_swiftEmptyArrayStorage;
  v10 = v8 == 0;
  if (v8 | v7)
  {
    v18 = vcnt_s8(a1);
    v18.i16[0] = vaddlv_u8(v18);
    v40 = v18.u32[0];
    v19 = __clz(__rbit64(a1));
    v39 = a1 - 1;
    if (a2)
    {
      v20 = 55;
    }

    else
    {
      v20 = 87;
    }

    do
    {
      if (v40 == 1)
      {
        v21 = (v8 << (-v19 & 0x3F)) | (v7 >> v19);
        v8 >>= v19;
        LOBYTE(v22) = v7 & v39;
        if (v19)
        {
          v7 = v21;
        }
      }

      else
      {
        v23 = v8 != 0;
        if (v10)
        {
          v23 = v7 > a1;
        }

        if (v23)
        {
          if (v10)
          {
            v8 = 0;
            v22 = v7 % a1;
            v7 /= a1;
          }

          else
          {
            if (v8 % a1)
            {
              v25 = __udivti3();
              LOBYTE(v22) = v7 - v25 * a1;
              v7 = v25;
            }

            else
            {
              v22 = v7 % a1;
              v7 /= a1;
            }

            v8 /= a1;
          }
        }

        else
        {
          if (v7 < a1)
          {
            v24 = v7;
          }

          else
          {
            v24 = 0;
          }

          if (v10)
          {
            LOBYTE(v22) = v24;
          }

          else
          {
            LOBYTE(v22) = 0;
          }

          v7 = !v10 || v7 >= a1;
          v8 = 0;
        }
      }

      if (v22 >= 0xAu && a1 >= 0xB)
      {
        v27 = v20;
      }

      else
      {
        v27 = 48;
      }

      if (!swift_isUniquelyReferenced_nonNull_native(v9))
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, &v9[2]->isa + 1, 1, v9);
      }

      v29 = v9[2];
      v28 = v9[3];
      if (v29 >= v28 >> 1)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), &v29->isa + 1, 1, v9);
      }

      v9[2] = (&v29->isa + 1);
      *(&v29->info + v9) = v27 + v22;
      v41 = v9;
      v10 = v8 == 0;
    }

    while (v8 | v7);
  }

  if (a4 < 0)
  {
    if (!swift_isUniquelyReferenced_nonNull_native(v9))
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, &v9[2]->isa + 1, 1, v9);
    }

    v12 = v9[2];
    v11 = v9[3];
    if (v12 >= v11 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), &v12->isa + 1, 1, v9);
    }

    v9[2] = (&v12->isa + 1);
    *(&v12->info + v9) = 45;
    v41 = v9;
  }

  specialized MutableCollection<>.reverse()();
  v13 = v41[2];
  if (v13)
  {
    if (v13 <= 0xF)
    {
      v30 = v13 - 8;
      v31 = 8;
      if (v13 < 8)
      {
        v31 = v41[2];
      }

      v32 = (v31 - 1);
      if (v13 < v31 - 1)
      {
        v32 = v41[2];
      }

      if (v31 == v32)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v5 = *(v41 + 32);
      if (v13 != 1)
      {
        v5 |= *(v41 + 33) << 8;
        if (v13 != 2)
        {
          v5 |= *(v41 + 34) << 16;
          if (v13 != 3)
          {
            v5 |= *(v41 + 35) << 24;
            if (v13 != 4)
            {
              v5 |= *(v41 + 36) << 32;
              if (v13 != 5)
              {
                v5 |= *(v41 + 37) << 40;
                if (v13 != 6)
                {
                  v5 |= *(v41 + 38) << 48;
                  if (v13 != 7)
                  {
                    v5 |= *(v41 + 39) << 56;
                  }
                }
              }
            }
          }
        }
      }

      if (v13 >= 9)
      {
        v33 = 0;
        v34 = 0;
        v35 = (v41 + 5);
        do
        {
          v36 = *v35++;
          v33 |= v36 << v34;
          v34 += 8;
          --v30;
        }

        while (v30);
      }
    }

    else
    {
      v14 = v13 | 0xF000000000000000;
      v15 = _allocateStringStorage(codeUnitCapacity:)(v41[2]);
      *(v15 + 16) = v16;
      *(v15 + 24) = v13 | 0xF000000000000000;
      if (v16 < 0)
      {
        *__StringStorage._breadcrumbsAddress.getter() = 0;
        v14 = *(v15 + 24);
      }

      *(v15 + 32 + (v14 & 0xFFFFFFFFFFFFLL)) = 0;
      specialized UnsafeMutablePointer.initialize(from:count:)(v41 + 32, v13, (v15 + 32));
      v5 = *(v15 + 24);
    }
  }

  else
  {
    v5 = 0;
  }

  v41;
  return v5;
}

uint64_t specialized BinaryInteger._description(radix:uppercase:)(unint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a1 - 37 <= 0xFFFFFFFFFFFFFFDCLL)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = 48;
  if (a3 | a4)
  {
    v6 = vcnt_s8(a1);
    v6.i16[0] = vaddlv_u8(v6);
    v35 = v6.u32[0];
    v8 = (__PAIR128__(a4 ^ (a4 >> 63), a3 ^ (a4 >> 63)) - __PAIR128__(a4 >> 63, a4 >> 63)) >> 64;
    v7 = (a3 ^ (a4 >> 63)) - (a4 >> 63);
    if (a2)
    {
      v9 = 55;
    }

    else
    {
      v9 = 87;
    }

    v10 = __clz(__rbit64(a1));
    v34 = a1 - 1;
    v11 = &_swiftEmptyArrayStorage;
    do
    {
      if (v35 == 1)
      {
        v12 = v7 & v34;
        if ((v10 & 0x40) != 0)
        {
          v7 = v8 >> v10;
        }

        else
        {
          v7 = ((2 * v8) << ~v10) | (v7 >> v10);
        }

        if ((v10 & 0x40) != 0)
        {
          v8 = 0;
        }

        else
        {
          v8 >>= v10;
        }
      }

      else
      {
        v13 = __udivti3();
        v8 = v14;
        v12 = v7 - v13 * a1;
        v7 = v13;
      }

      if (v12 >= 0xAu && a1 >= 0xB)
      {
        v16 = v9;
      }

      else
      {
        v16 = 48;
      }

      if (!swift_isUniquelyReferenced_nonNull_native(v11))
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, &v11[2]->isa + 1, 1, v11);
      }

      v18 = v11[2];
      v17 = v11[3];
      if (v18 >= v17 >> 1)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), &v18->isa + 1, 1, v11);
      }

      v11[2] = (&v18->isa + 1);
      *(&v18->info + v11) = v16 + v12;
      v36 = v11;
    }

    while (v7 | v8);
    if (a4 < 0)
    {
      if (!swift_isUniquelyReferenced_nonNull_native(v11))
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, &v11[2]->isa + 1, 1, v11);
      }

      v20 = v11[2];
      v19 = v11[3];
      if (v20 >= v19 >> 1)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), &v20->isa + 1, 1, v11);
      }

      v11[2] = (&v20->isa + 1);
      *(&v20->info + v11) = 45;
      v36 = v11;
    }

    specialized MutableCollection<>.reverse()();
    v21 = *(v36 + 16);
    if (v21)
    {
      if (v21 <= 0xF)
      {
        v25 = v21 - 8;
        v26 = 8;
        if (v21 < 8)
        {
          v26 = *(v36 + 16);
        }

        v27 = v26 - 1;
        if (v21 < v26 - 1)
        {
          v27 = *(v36 + 16);
        }

        if (v26 == v27)
        {
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v4 = *(v36 + 32);
        if (v21 != 1)
        {
          v4 |= *(v36 + 33) << 8;
          if (v21 != 2)
          {
            v4 |= *(v36 + 34) << 16;
            if (v21 != 3)
            {
              v4 |= *(v36 + 35) << 24;
              if (v21 != 4)
              {
                v4 |= *(v36 + 36) << 32;
                if (v21 != 5)
                {
                  v4 |= *(v36 + 37) << 40;
                  if (v21 != 6)
                  {
                    v4 |= *(v36 + 38) << 48;
                    if (v21 != 7)
                    {
                      v4 |= *(v36 + 39) << 56;
                    }
                  }
                }
              }
            }
          }
        }

        if (v21 >= 9)
        {
          v28 = 0;
          v29 = 0;
          v30 = (v36 + 40);
          do
          {
            v31 = *v30++;
            v28 |= v31 << v29;
            v29 += 8;
            --v25;
          }

          while (v25);
        }
      }

      else
      {
        v22 = v21 | 0xF000000000000000;
        v23 = _allocateStringStorage(codeUnitCapacity:)(*(v36 + 16));
        *(v23 + 16) = v24;
        *(v23 + 24) = v21 | 0xF000000000000000;
        if (v24 < 0)
        {
          *__StringStorage._breadcrumbsAddress.getter() = 0;
          v22 = *(v23 + 24);
        }

        *(v23 + 32 + (v22 & 0xFFFFFFFFFFFFLL)) = 0;
        specialized UnsafeMutablePointer.initialize(from:count:)((v36 + 32), v21, (v23 + 32));
        v4 = *(v23 + 24);
      }
    }

    else
    {
      v4 = 0;
    }

    v36;
  }

  return v4;
}

Swift::String __swiftcall BinaryInteger._description(radix:uppercase:)(Swift::Int radix, Swift::Bool uppercase)
{
  v4 = v2;
  LODWORD(v171) = uppercase;
  v172 = radix;
  v5 = *(v3 + 24);
  swift_getAssociatedTypeWitness(255, v5, v2, &protocol requirements base descriptor for Numeric, associated type descriptor for Numeric.Magnitude);
  v7 = v6;
  swift_getTupleTypeMetadata2(0, v7, v7, 0, 0);
  v168 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v167 = &v144[-v10];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, v4, v7, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Numeric);
  v176 = *(AssociatedConformanceWitness + 16);
  swift_getAssociatedTypeWitness(0, v176, v7, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v177 = v11;
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v175 = &v144[-v14];
  v169 = *(v7 - 1);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v154 = &v144[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v166 = &v144[-v20];
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v24 = &v144[-v23];
  v26 = MEMORY[0x1EEE9AC00](v22, v25);
  v28 = &v144[-v27];
  v30 = MEMORY[0x1EEE9AC00](v26, v29);
  v32 = &v144[-v31];
  v34 = MEMORY[0x1EEE9AC00](v30, v33);
  v36 = &v144[-v35];
  v38 = MEMORY[0x1EEE9AC00](v34, v37);
  v40 = &v144[-v39];
  v170 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v38, v41);
  v43 = &v144[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = v5;
  v45 = *(v5 + 16);
  swift_getAssociatedTypeWitness(0, v45, v4, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v48 = MEMORY[0x1EEE9AC00](v46, v47);
  if ((v50 - 37) <= 0xFFFFFFFFFFFFFFDCLL)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v159 = &v144[-v49];
  v162 = v48;
  v163 = v45;
  v156 = v44;
  v164 = v43;
  v165 = v40;
  v173 = v28;
  v174 = v32;
  v180 = v24;
  v151 = v36;
  v52 = v178;
  v51 = v179;
  if ((*(v178 + 128))(v4, v178) <= 64)
  {
    v62 = (*(v52 + 64))(v4, v52);
    v63 = (*(v52 + 120))(v4, v52);
    if (v62)
    {
      countAndFlagsBits = _int64ToString(_:radix:uppercase:)(v63, v172, v171 & 1, swift_int64ToString);
    }

    else
    {
      v74 = _uint64ToString(_:radix:uppercase:)(v63, v172, v171 & 1);
      object = v74._object;
      countAndFlagsBits = v74._countAndFlagsBits;
    }

    v60 = object;
    goto LABEL_82;
  }

  v54 = v162;
  v53 = v163;
  v55 = swift_getAssociatedConformanceWitness(v163, v4, v162, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v56 = *(v55 + 8);
  v57 = v159;
  i = v55;
  v157 = v56;
  (v56)(&qword_18071E0A8, 256, v54);
  v58 = v164;
  v153 = *(v53 + 3);
  (v153)(v57, v4, v53);
  LOBYTE(v54) = (*(*(*(v52 + 16) + 8) + 8))(v51, v58, v4);
  v59 = *(v170 + 8);
  v59(v58, v4);
  if (v54)
  {
    v60 = 0xE100000000000000;
    countAndFlagsBits = 48;
    goto LABEL_82;
  }

  v152 = v59;
  v65 = vcnt_s8(v172);
  v65.i16[0] = vaddlv_u8(v65);
  v160 = v65.u32[0];
  v182 = v172;
  v66 = v4;
  v67 = swift_getAssociatedConformanceWitness(v52, v4, v7, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.Numeric.Magnitude: BinaryInteger);
  v170 = *(v67 + 88);
  v161 = lazy protocol witness table accessor for type Int and conformance Int(v67, v68, v69);
  (v170)(&v182, &type metadata for Int);
  if ((*(v52 + 64))(v66, v52))
  {
    v70 = v159;
    v157(&qword_18071E0A8, 256);
    v71 = v164;
    v72 = v70;
    v73 = v179;
    (v153)(v72, v66, v163);
    v145 = (*(*(*(v52 + 32) + 8) + 16))(v73, v71, v66);
    v152(v71, v66);
  }

  else
  {
    v145 = 0;
  }

  v75 = v175;
  v76 = v176;
  v77 = *(v156 + 7);
  v78 = v151;
  v153 = v66;
  v77(v66);
  v79 = *(v67 + 64);
  v170 = v67 + 120;
  v80 = *(v169 + 16);
  v162 = v67 + 128;
  v163 = v80;
  v150 = v67 + 96;
  v179 = &_swiftEmptyArrayStorage;
  v182 = &_swiftEmptyArrayStorage;
  v152 = (v76 + 3);
  v149 = v67 + 272;
  v148 = __clz(__rbit64(v172));
  v147 = v67 + 240;
  v146 = v67 + 192;
  v178 = v169 + 32;
  if (v171)
  {
    v81 = 55;
  }

  else
  {
    v81 = 87;
  }

  LODWORD(v157) = v81;
  v171 = (v169 + 8);
  v164 = (v169 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v169 += 16;
  v159 = (v67 + 64);
  for (i = v79; ; v79 = i)
  {
    v82 = v174;
    (v163)(v174, v78, v7);
    v83 = v79(v7, v67);
    v84 = v168;
    v85 = v79;
    v86 = v173;
    if (v83)
    {
      if ((*(v67 + 128))(v7, v67) >= 64)
      {
        v181 = 0;
        (*(v67 + 96))(&v181, &type metadata for Int, v161, v7, v67);
        v97 = *(*(swift_getAssociatedConformanceWitness(v156, v153, v7, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable) + 8) + 8);
        v98 = v97(v82, v86, v7);
        goto LABEL_31;
      }

      v87 = (*(v67 + 120))(v7, v67);
      v88 = *v171;
      (*v171)(v82, v7);
      goto LABEL_28;
    }

    v89 = v85(v7, v67);
    v90 = (*(v67 + 128))(v7, v67);
    if ((v89 & 1) == 0)
    {
      break;
    }

    if (v90 > 64)
    {
      goto LABEL_30;
    }

    v91 = v177;
    v92 = swift_getAssociatedConformanceWitness(v76, v7, v177, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    (*(v92 + 8))(&qword_18071E0A8, 256, v91, v92);
    (v76[3])(v75, v7, v76);
    v93 = swift_getAssociatedConformanceWitness(v156, v153, v7, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
    v94 = v174;
    v95 = (*(v93 + 32))(v174, v86, v7, v93);
    v88 = *v171;
    (*v171)(v86, v7);
    if (v95)
    {
      v96 = (*(v67 + 120))(v7, v67);
      v88(v94, v7);
      if (!v96)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v88(v94, v7);
    }

LABEL_32:
    if (v160 == 1)
    {
      v181 = v148;
      v102 = v167;
      (*(v67 + 240))(v78, &v181, &type metadata for Int, v161, v7, v67);
      v103 = v176;
      v104 = swift_getAssociatedConformanceWitness(v176, v7, v177, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v105 = v175;
      (*(v104 + 8))(&qword_1806729C0, 512, v177, v104);
      v106 = v154;
      (v103[3])(v105, v7, v103);
      v107 = v173;
      (*(*(AssociatedConformanceWitness + 8) + 40))(v165, v106, v7);
      v108 = v106;
      v78 = v151;
      v88(v108, v7);
      v109 = v84;
      (*(v67 + 192))(v78, v107, v7, v67);
      v88(v107, v7);
    }

    else
    {
      v109 = v84;
      v102 = v167;
      (*(v67 + 272))(v167, &v167[*(v84 + 48)], v165, v7, v67);
    }

    v88(v78, v7);
    v110 = *(v109 + 48);
    v111 = *v178;
    (*v178)(v180, v102, v7);
    v112 = v166;
    (v111)(v166, &v102[v110], v7);
    v113 = (*(v67 + 120))(v7, v67);
    v88(v112, v7);
    if (v113 >= 0xAu && v172 >= 0xB)
    {
      v115 = v157;
    }

    else
    {
      v115 = 48;
    }

    v116 = v179;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v179);
    v118 = v116;
    v182 = v116;
    if (!isUniquelyReferenced_nonNull_native)
    {
      v118 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, &v116[2]->isa + 1, 1, v116);
      v182 = v118;
    }

    v120 = v118[2];
    v119 = v118[3];
    if (v120 >= v119 >> 1)
    {
      v118 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v119 > 1), &v120->isa + 1, 1, v118);
    }

    v118[2] = (&v120->isa + 1);
    *(&v120->info + v118) = v115 + v113;
    v179 = v118;
    v182 = v118;
    v111(v78);
    v75 = v175;
    v76 = v176;
  }

  if (v90 < 64)
  {
    v99 = v174;
    v87 = (*(v67 + 120))(v7, v67);
    v88 = *v171;
    (*v171)(v99, v7);
LABEL_28:
    if (!v87)
    {
      goto LABEL_47;
    }

    goto LABEL_32;
  }

LABEL_30:
  v181 = 0;
  (*(v67 + 96))(&v181, &type metadata for Int, v161, v7, v67);
  v100 = *(*(swift_getAssociatedConformanceWitness(v156, v153, v7, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable) + 8) + 8);
  v82 = v174;
  v98 = v100(v174, v86, v7);
LABEL_31:
  v101 = v98;
  v88 = *v171;
  (*v171)(v86, v7);
  v88(v82, v7);
  if ((v101 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_47:
  v121 = v165;
  v122 = v145;
  v88(v78, v7);
  v88(v121, v7);
  if (v122)
  {
    v123 = v179;
    v124 = swift_isUniquelyReferenced_nonNull_native(v179);
    v125 = v123;
    v182 = v123;
    if (!v124)
    {
      v125 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, &v123[2]->isa + 1, 1, v123);
      v182 = v125;
    }

    v127 = v125[2];
    v126 = v125[3];
    if (v127 >= v126 >> 1)
    {
      v125 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v126 > 1), &v127->isa + 1, 1, v125);
    }

    v125[2] = (&v127->isa + 1);
    *(&v127->info + v125) = 45;
    v182 = v125;
  }

  specialized MutableCollection<>.reverse()();
  v128 = v182;
  v129 = v182[2];
  if (v129)
  {
    if (v129 <= 0xF)
    {
      v133 = v129 - 8;
      v134 = 8;
      if (v129 < 8)
      {
        v134 = v182[2];
      }

      v135 = (v134 - 1);
      if (v129 < v134 - 1)
      {
        v135 = v182[2];
      }

      if (v134 == v135)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v136 = *(v182 + 32);
      if (v129 != 1)
      {
        v136 |= *(v182 + 33) << 8;
        if (v129 != 2)
        {
          v136 |= *(v182 + 34) << 16;
          if (v129 != 3)
          {
            v136 |= *(v182 + 35) << 24;
            if (v129 != 4)
            {
              v136 |= *(v182 + 36) << 32;
              if (v129 != 5)
              {
                v136 |= *(v182 + 37) << 40;
                if (v129 != 6)
                {
                  v136 |= *(v182 + 38) << 48;
                  if (v129 != 7)
                  {
                    v136 |= *(v182 + 39) << 56;
                  }
                }
              }
            }
          }
        }
      }

      if (v129 < 9)
      {
        v137 = 0;
      }

      else
      {
        v137 = 0;
        v138 = 0;
        v139 = (v182 + 5);
        do
        {
          v140 = *v139++;
          v137 |= v140 << v138;
          v138 += 8;
          --v133;
        }

        while (v133);
      }

      v141 = 0xA000000000000000;
      if (((v137 | v136) & 0x8080808080808080) == 0)
      {
        v141 = 0xE000000000000000;
      }

      v60 = v141 | (v129 << 56) | v137;
      v132 = v136;
    }

    else
    {
      v130 = v129 | 0xF000000000000000;
      v60 = _allocateStringStorage(codeUnitCapacity:)(v182[2]);
      *(v60 + 16) = v131;
      *(v60 + 24) = v129 | 0xF000000000000000;
      if (v131 < 0)
      {
        *__StringStorage._breadcrumbsAddress.getter() = 0;
        v130 = *(v60 + 24);
      }

      *(v60 + 32 + (v130 & 0xFFFFFFFFFFFFLL)) = 0;
      specialized UnsafeMutablePointer.initialize(from:count:)((v128 + 32), v129, (v60 + 32));
      v132 = *(v60 + 24);
    }
  }

  else
  {
    v60 = 0xE000000000000000;
    v132 = 0;
  }

  v128;
  countAndFlagsBits = v132;
LABEL_82:
  v142 = v60;
  result._object = v142;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

Swift::String __swiftcall _int64ToString(_:radix:uppercase:)(Swift::Int64 _, Swift::Int64 radix, Swift::Bool uppercase)
{

  v3 = _int64ToString(_:radix:uppercase:)(_, radix, uppercase, swift_int64ToString);
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

Swift::String __swiftcall _uint64ToString(_:radix:uppercase:)(Swift::UInt64 _, Swift::Int64 radix, Swift::Bool uppercase)
{

  v3 = _int64ToString(_:radix:uppercase:)(_, radix, uppercase, swift_uint64ToString);
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

unint64_t _int64ToString(_:radix:uppercase:)(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(__int128 *, uint64_t, uint64_t, uint64_t, void))
{
  v30 = *MEMORY[0x1E69E9840];
  if (a2 < 10)
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    __src = 0u;
    v26 = 0u;
    v4 = a4(&__src, 72, a1, a2, a3 & 1);
    if ((v4 & 0x8000000000000000) == 0)
    {
      v5 = v4;
      if (v4)
      {
        if (v4 <= 0xF)
        {
          v6 = v4 - 8;
          v7 = 8;
          if (v4 < 8)
          {
            v7 = v4;
          }

          v8 = v7 - 1;
          if (v4 < v7 - 1)
          {
            v8 = v4;
          }

          if (v7 != v8)
          {
            result = __src;
            if (v5 != 1)
            {
              result = __src | (BYTE1(__src) << 8);
              if (v5 != 2)
              {
                result |= BYTE2(__src) << 16;
                if (v5 != 3)
                {
                  result |= BYTE3(__src) << 24;
                  if (v5 != 4)
                  {
                    result |= BYTE4(__src) << 32;
                    if (v5 != 5)
                    {
                      result |= BYTE5(__src) << 40;
                      if (v5 != 6)
                      {
                        result |= BYTE6(__src) << 48;
                        if (v5 != 7)
                        {
                          result |= BYTE7(__src) << 56;
                        }
                      }
                    }
                  }
                }
              }
            }

            if (v5 >= 9)
            {
              v10 = 0;
              v11 = 0;
              v12 = &__src + 8;
              do
              {
                v13 = *v12++;
                v10 |= v13 << v11;
                v11 += 8;
                --v6;
              }

              while (v6);
            }

            return result;
          }

LABEL_34:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        goto LABEL_25;
      }

      return 0;
    }

LABEL_48:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  __src = 0u;
  v26 = 0u;
  v14 = a4(&__src, 32, a1, a2, a3 & 1);
  if ((v14 & 0x8000000000000000) != 0)
  {
    goto LABEL_48;
  }

  v5 = v14;
  if (!v14)
  {
    return 0;
  }

  if (v14 > 0xF)
  {
LABEL_25:
    v15 = v5 | 0xF000000000000000;
    v16 = _allocateStringStorage(codeUnitCapacity:)(v5);
    *(v16 + 16) = v17;
    *(v16 + 24) = v5 | 0xF000000000000000;
    if (v17 < 0)
    {
      *__StringStorage._breadcrumbsAddress.getter() = 0;
      v15 = *(v16 + 24);
    }

    *(v16 + 32 + (v15 & 0xFFFFFFFFFFFFLL)) = 0;
    specialized UnsafeMutablePointer.initialize(from:count:)(&__src, v5, (v16 + 32));
    return *(v16 + 24);
  }

  v18 = v14 - 8;
  v19 = 8;
  if (v14 < 8)
  {
    v19 = v14;
  }

  v20 = v19 - 1;
  if (v14 < v19 - 1)
  {
    v20 = v14;
  }

  if (v19 == v20)
  {
    goto LABEL_34;
  }

  result = __src;
  if (v5 != 1)
  {
    result = __src | (BYTE1(__src) << 8);
    if (v5 != 2)
    {
      result |= BYTE2(__src) << 16;
      if (v5 != 3)
      {
        result |= BYTE3(__src) << 24;
        if (v5 != 4)
        {
          result |= BYTE4(__src) << 32;
          if (v5 != 5)
          {
            result |= BYTE5(__src) << 40;
            if (v5 != 6)
            {
              result |= BYTE6(__src) << 48;
              if (v5 != 7)
              {
                result |= BYTE7(__src) << 56;
              }
            }
          }
        }
      }
    }
  }

  if (v5 >= 9)
  {
    v21 = 0;
    v22 = 0;
    v23 = &__src + 8;
    do
    {
      v24 = *v23++;
      v21 |= v24 << v22;
      v22 += 8;
      --v18;
    }

    while (v18);
  }

  return result;
}

uint64_t Int.nonzeroBitCount.getter(uint64_t a1)
{
  v1 = vcnt_s8(a1);
  v1.i16[0] = vaddlv_u8(v1);
  return v1.u32[0];
}

void specialized MutableCollection<>.reverse()()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = v2 == 1;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v0);
    *v0 = v1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    }

    v5 = 0;
    *v0 = v1;
    v6 = v2 + 31;
    do
    {
      if (v5 != v6 - 32)
      {
        v8 = v1[2];
        if (v5 >= v8 || v6 - 32 >= v8)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v9 = *(v1 + v5 + 32);
        *(v1 + v5 + 32) = *(v1 + v6);
        *(v1 + v6) = v9;
      }

      ++v5;
      v7 = v6 - 33;
      --v6;
    }

    while (v5 < v7);
    *v0 = v1;
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v0);
      *v0 = v1;
      if (!isUniquelyReferenced_nonNull_native)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
      }

      *v0 = v1;
      v5 = &v1[v2 + 3] + 2;
      v6 = v1 + 18;
      v7 = 1;
      do
      {
        if (v7 - 1 != v3)
        {
          v9 = v1[2];
          if (v7 - 1 >= v9 || v3 >= v9)
          {
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v10 = *v6;
          v11 = *(v6 - 1);
          v12 = *v5;
          *(v6 - 1) = *(v5 - 1);
          *v6 = v12;
          *(v5 - 1) = v11;
          *v5 = v10;
        }

        --v3;
        v5 -= 4;
        v6 += 4;
      }

      while (v7++ < v3);
      *v0 = v1;
    }
  }
}

uint64_t MutableCollection<>.reverse()(Class *a1, uint64_t a2, uint64_t a3)
{
  v40 = a2;
  v5 = *(a2 + 8);
  swift_getAssociatedTypeWitness(0, v5, a1, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  v8 = *(v6 - 8);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = v32 - v15;
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = v32 - v18;
  v20 = *(v5 + 104);
  v39 = v5;
  result = v20(a1, v5);
  if ((result & 1) == 0)
  {
    v22 = v39;
    (*(v39 + 64))(a1, v39);
    (*(v22 + 9))(a1, v22);
    (*(v40 + 32))(v12, a1);
    v32[0] = *(v8 + 8);
    v32[1] = v8 + 8;
    (v32[0])(v12, v7);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v22, a1, v7, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
    v24 = AssociatedConformanceWitness + 16;
    v25 = *(AssociatedConformanceWitness + 16);
    v37 = AssociatedConformanceWitness;
    v26 = v25(v19, v16, v7);
    v38 = a3;
    if (v26)
    {
      v27 = v24;
      v35 = *(v38 + 64);
      v36 = v38 + 64;
      v33 = *(v39 + 192);
      v34 = v39 + 192;
      v28 = *(v40 + 40);
      do
      {
        v29 = v27;
        v35(v19, v16, a1, v38);
        v33(v19, a1, v39);
        v28(v16, a1, v40);
        v30 = (v25)(v19, v16, v7, v37);
        v27 = v29;
      }

      while ((v30 & 1) != 0);
    }

    v31 = v32[0];
    (v32[0])(v16, v7);
    return v31(v19, v7);
  }

  return result;
}

uint64_t BinaryInteger.distance(to:)(char *a1, Class *a2, swift *a3)
{
  v258 = a1;
  v5 = *(a3 + 3);
  swift_getAssociatedTypeWitness(255, v5, a2, &protocol requirements base descriptor for Numeric, associated type descriptor for Numeric.Magnitude);
  v7 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, a2, v6, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Numeric);
  v241 = *(AssociatedConformanceWitness + 16);
  swift_getAssociatedTypeWitness(0, v241, v7, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v240 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v231 - v10;
  v252 = swift_checkMetadataState(0, v7);
  v254 = *(v252 - 1);
  v13 = MEMORY[0x1EEE9AC00](v252, v12);
  v244 = v231 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v250 = v231 - v17;
  MEMORY[0x1EEE9AC00](v16, v18);
  v248 = v231 - v19;
  v20 = *(v5 + 16);
  swift_getAssociatedTypeWitness(0, v20, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v22 = v21;
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v253 = v231 - v25;
  v259 = *(a2 - 1);
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v247 = v231 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v246 = (v231 - v31);
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v35 = v231 - v34;
  MEMORY[0x1EEE9AC00](v33, v36);
  v249 = v231 - v37;
  v38 = *(a3 + 8);
  v260 = a2;
  v261 = a3;
  v39 = (v38)(a2, a3);
  v255 = (a3 + 64);
  v256 = v38;
  if ((v39 & 1) == 0)
  {
    v71 = v35;
    v41 = v22;
    v55 = v20;
    v72 = v259;
    v73 = v261;
    v74 = *(*(v261[4] + 1) + 40);
    v252 = *(v261[4] + 1);
    v75 = v74(v257, v258);
    v76 = *(*(v5 + 8) + 40);
    v254 = v73 + 128;
    if (v75)
    {
      v77 = v249;
      v78 = v260;
      v76(v257, v258, v260);
      v79 = v261;
      v80 = (v38)(v78, v261);
      v63 = *(v79 + 16);
      v59 = v72;
      if ((v80 & 1) != 0 && v63(v260, v261) >= 65)
      {
        v81 = v256;
        if (v256())
        {
          v77 = v249;
          v82 = v63(v260, v261);
          v59 = v72;
          if (v82 < 64)
          {
LABEL_69:
            (v261[15])(v260);
            goto LABEL_70;
          }

          v262 = 0x8000000000000000;
          v85 = v261;
          v86 = v261[12];
          v87 = lazy protocol witness table accessor for type Int and conformance Int(v82, v83, v84);
          v88 = v260;
          v86(&v262, &type metadata for Int, v87, v260, v85);
          v89 = (*(v252 + 2))(v77, v71, v88);
          v90 = v72 + 8;
          v91 = *(v59 + 8);
          v91(v71, v88);
        }

        else
        {
          v130 = v261;
          v236 = v71;
          v131 = v260;
          v132 = (v81)(v260, v261);
          v133 = v63(v131, v130);
          if ((v132 & 1) == 0)
          {
            v71 = v236;
            v59 = v72;
            v77 = v249;
            if (v133 >= 64)
            {
              goto LABEL_70;
            }

            goto LABEL_69;
          }

          v59 = v72;
          if (v133 <= 64)
          {
            goto LABEL_68;
          }

          v262 = 0x8000000000000000;
          v136 = v261;
          v137 = v261[12];
          v138 = lazy protocol witness table accessor for type Int and conformance Int(v133, v134, v135);
          v139 = v236;
          v140 = v260;
          v137(&v262, &type metadata for Int, v138, v260, v136);
          v77 = v249;
          v89 = (*(v252 + 2))(v249, v139, v140);
          v90 = v72 + 8;
          v91 = *(v59 + 8);
          v71 = v139;
          v91(v139, v140);
        }

        if (v89)
        {
          v251 = v91;
          goto LABEL_115;
        }
      }

LABEL_70:
      v184 = v59;
      v41 = v260;
      v142 = v254;
      v185 = v63(v260, v261);
      v186 = v256;
      if (v185 <= 64 && (v63(v41, v261) != 64 || ((v186)(v41, v261) & 1) != 0))
      {
        goto LABEL_80;
      }

      v187 = v261;
      v142 = (v186)(v41, v261);
      v188 = v63(v41, v187);
      if (v142)
      {
        if (v188 >= 65)
        {
          goto LABEL_73;
        }
      }

      else if (v188 >= 64)
      {
LABEL_73:
        v262 = 0x7FFFFFFFFFFFFFFFLL;
        v191 = *(v187 + 12);
        v192 = lazy protocol witness table accessor for type Int and conformance Int(v188, v189, v190);
        v191(&v262, &type metadata for Int, v192, v41, v187);
        v193 = (*(v252 + 2))(v71, v77, v41);
        v142 = *(v184 + 8);
        (v142)(v71, v41);
        if (v193)
        {
          v251 = v142;
          v254 = (v184 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          (v142)(v249, v260);
          goto LABEL_113;
        }

        goto LABEL_80;
      }

      (*(v187 + 15))(v41, v187);
LABEL_80:
      v194 = (v261[15])(v41);
      v195 = *(v184 + 8);
      v48 = (v184 + 8);
      v195(v77, v41);
      v176 = __OFSUB__(0, v194);
      v175 = -v194;
      if (!v176)
      {
        return v175;
      }

      __break(1u);
LABEL_83:
      v196 = v71;
      v48(&qword_18071E0A8, 256);
      v197 = v236;
      (v238)(v196, v41, v242);
      v92 = v247;
      v198 = v243(v247, v197, v41, v234);
      v251(v197, v41);
      v93 = v142;
      if (v198)
      {
LABEL_89:
        v249 = v92;
LABEL_112:
        v251(v249, v260);
LABEL_113:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      goto LABEL_84;
    }

    v102 = v246;
    v103 = v260;
    v76(v258, v257, v260);
    v104 = v261;
    v105 = (v38)(v103, v261);
    v106 = *(v104 + 16);
    v107 = v72;
    v55 = v102;
    if ((v105 & 1) == 0 || v106(v260, v261) < 65)
    {
      goto LABEL_98;
    }

    v108 = v256;
    if (v256())
    {
      v55 = v246;
      v109 = v106(v260, v261);
      v107 = v72;
      if (v109 >= 64)
      {
        v262 = 0x8000000000000000;
        v112 = v261;
        v113 = v261[12];
        v114 = lazy protocol witness table accessor for type Int and conformance Int(v109, v110, v111);
        v115 = v260;
        v113(&v262, &type metadata for Int, v114, v260, v112);
        v116 = (*(v252 + 2))(v55, v71, v115);
        v117 = v72 + 8;
        v118 = *(v107 + 8);
        v118(v71, v115);
        goto LABEL_42;
      }
    }

    else
    {
      v242 = v20;
      v149 = v261;
      v236 = v71;
      v150 = v260;
      v151 = (v108)(v260, v261);
      v152 = v106(v150, v149);
      if (v151)
      {
        v107 = v72;
        if (v152 > 64)
        {
          v262 = 0x8000000000000000;
          v155 = v261;
          v156 = v261[12];
          v157 = lazy protocol witness table accessor for type Int and conformance Int(v152, v153, v154);
          v158 = v236;
          v159 = v260;
          v156(&v262, &type metadata for Int, v157, v260, v155);
          v55 = v246;
          v116 = (*(v252 + 2))(v246, v158, v159);
          v117 = v72 + 8;
          v118 = *(v107 + 8);
          v71 = v158;
          v118(v158, v159);
LABEL_42:
          if (v116)
          {
            goto LABEL_110;
          }

LABEL_98:
          v218 = v260;
          v219 = v106(v260, v261);
          v220 = v256;
          if (v219 <= 64 && (v106(v218, v261) != 64 || ((v220)(v218, v261) & 1) != 0))
          {
            goto LABEL_108;
          }

          v221 = v261;
          v222 = (v220)(v218, v261);
          v223 = v106(v218, v221);
          if (v222)
          {
            if (v223 >= 65)
            {
              goto LABEL_101;
            }
          }

          else if (v223 >= 64)
          {
LABEL_101:
            v262 = 0x7FFFFFFFFFFFFFFFLL;
            v226 = *(v221 + 12);
            v227 = lazy protocol witness table accessor for type Int and conformance Int(v223, v224, v225);
            v226(&v262, &type metadata for Int, v227, v218, v221);
            v228 = (*(v252 + 2))(v71, v55, v218);
            v229 = *(v107 + 8);
            v229(v71, v218);
            if (v228)
            {
              v251 = v229;
              v254 = (v107 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
              goto LABEL_111;
            }

            goto LABEL_108;
          }

          (*(v221 + 15))(v218, v221);
LABEL_108:
          v175 = (v261[15])(v218);
          (*(v107 + 8))(v55, v218);
          return v175;
        }

        v212 = v242;
        v213 = v260;
        v214 = swift_getAssociatedConformanceWitness(v242, v260, v41, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v215 = v253;
        (*(v214 + 8))(&qword_18071E0A8, 256, v41, v214);
        v216 = v236;
        (*(v212 + 3))(v215, v213, v212);
        v55 = v246;
        v217 = (*(v252 + 2))(v246, v216, v213);
        v117 = v107 + 8;
        v118 = *(v107 + 8);
        v71 = v216;
        v118(v216, v213);
        if (v217)
        {
LABEL_110:
          v251 = v118;
          v254 = v117 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          goto LABEL_111;
        }
      }

      else
      {
        v71 = v236;
        v107 = v72;
        v55 = v246;
        if (v152 >= 64)
        {
          goto LABEL_98;
        }
      }
    }

    (v261[15])(v260);
    goto LABEL_98;
  }

  v232 = v11;
  v246 = v5;
  v40 = v20;
  v41 = v260;
  v239 = swift_getAssociatedConformanceWitness(v20, v260, v22, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v42 = v239 + 8;
  v237 = *(v239 + 8);
  v43 = v253;
  v237(&qword_18071E0A8, 256, v22, v239);
  v242 = v40;
  v44 = v40 + 3;
  v238 = v40[3];
  (v238)(v43, v41, v40);
  v45 = *(v261[4] + 1);
  v243 = *(v45 + 16);
  LODWORD(v249) = v243(v257, v35, v41, v45);
  v46 = *(v259 + 8);
  v259 += 8;
  v46(v35, v41);
  v233 = v22;
  v47 = v22;
  v231[1] = v42;
  v48 = v237;
  v237(&qword_18071E0A8, 256, v47, v239);
  v231[0] = v44;
  (v238)(v43, v41, v242);
  v234 = v45;
  v235 = v45 + 16;
  v49 = v243(v258, v35, v41, v45);
  v236 = v35;
  v50 = v259;
  v251 = v46;
  v46(v35, v41);
  if (((v249 ^ v49) & 1) == 0)
  {
    v71 = v43;
    v254 = v50 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v92 = v247;
    (*(*(v246 + 1) + 40))(v258, v257, v41);
    v93 = v261;
    v94 = (v256)(v41, v261);
    v63 = *(v93 + 16);
    if ((v94 & 1) != 0 && v63(v41, v93) >= 65)
    {
      v95 = v256;
      if ((v256)(v41, v93))
      {
        v92 = v247;
        v96 = v63(v41, v93);
        if (v96 < 64)
        {
LABEL_84:
          (*(v93 + 15))(v41, v93);
          goto LABEL_85;
        }

        v262 = 0x8000000000000000;
        v99 = *(v93 + 12);
        v100 = lazy protocol witness table accessor for type Int and conformance Int(v96, v97, v98);
        v101 = v236;
        v99(&v262, &type metadata for Int, v100, v41, v93);
      }

      else
      {
        v141 = (v95)(v41, v93);
        v142 = v93;
        v143 = v63(v41, v93);
        if ((v141 & 1) == 0)
        {
          v92 = v247;
          if (v143 >= 64)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        }

        if (v143 <= 64)
        {
          goto LABEL_83;
        }

        v262 = 0x8000000000000000;
        v146 = *(v93 + 12);
        v147 = lazy protocol witness table accessor for type Int and conformance Int(v143, v144, v145);
        v101 = v236;
        v146(&v262, &type metadata for Int, v147, v41, v93);
        v92 = v247;
      }

      v148 = v243(v92, v101, v41, v234);
      v251(v101, v41);
      if (v148)
      {
        goto LABEL_89;
      }
    }

LABEL_85:
    v199 = v63(v41, v93);
    v200 = v93;
    v201 = v251;
    if (v199 <= 64 && (v63(v41, v93) != 64 || ((v256)(v41, v93) & 1) != 0))
    {
      goto LABEL_95;
    }

    v202 = (v256)(v41, v93);
    v203 = v63(v41, v93);
    if (v202)
    {
      if (v203 >= 65)
      {
        goto LABEL_88;
      }
    }

    else if (v203 >= 64)
    {
LABEL_88:
      v262 = 0x7FFFFFFFFFFFFFFFLL;
      v206 = *(v93 + 12);
      v207 = lazy protocol witness table accessor for type Int and conformance Int(v203, v204, v205);
      v208 = v200;
      v209 = v236;
      v206(&v262, &type metadata for Int, v207, v41, v208);
      v210 = v243(v209, v92, v41, v234);
      v211 = v209;
      v200 = v208;
      v201 = v251;
      v251(v211, v41);
      if (v210)
      {
        goto LABEL_89;
      }

LABEL_95:
      v175 = (*(v200 + 15))(v41, v200);
      v201(v92, v41);
      return v175;
    }

    (*(v93 + 15))(v41, v93);
    goto LABEL_95;
  }

  v51 = v246;
  v52 = *(v246 + 7);
  v53 = v250;
  v52(v41, v246);
  v54 = v244;
  v52(v41, v51);
  v55 = v248;
  v56 = v252;
  (*(*(AssociatedConformanceWitness + 8) + 24))(v53, v54, v252);
  v57 = v254 + 8;
  v58 = *(v254 + 8);
  v59 = (v254 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v58(v54, v56);
  v254 = v57;
  v251 = v58;
  v58(v53, v56);
  v60 = swift_getAssociatedConformanceWitness(v261, v41, v56, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.Numeric.Magnitude: BinaryInteger);
  v61 = *(v60 + 64);
  v62 = v61(v56, v60);
  v63 = (v60 + 128);
  v64 = *(v60 + 128);
  if ((v62 & 1) != 0 && v64(v56, v60) >= 65)
  {
    if (v61(v56, v60))
    {
      v55 = v248;
      v65 = v64(v56, v60);
      if (v65 >= 64)
      {
        v261 = *(v60 + 96);
        v262 = 0x8000000000000000;
        v68 = lazy protocol witness table accessor for type Int and conformance Int(v65, v66, v67);
        (v261)(&v262, &type metadata for Int, v68, v252, v60);
        v56 = v252;
        v69 = swift_getAssociatedConformanceWitness(v246, v41, v252, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
        v70 = (*(v69 + 16))(v55, v250, v56, v69);
        goto LABEL_27;
      }
    }

    else
    {
      v119 = v61(v56, v60);
      v120 = v56;
      v121 = v119;
      v122 = v64(v120, v60);
      if (v121)
      {
        if (v122 > 64)
        {
          v262 = 0x8000000000000000;
          v125 = *(v60 + 96);
          v126 = lazy protocol witness table accessor for type Int and conformance Int(v122, v123, v124);
          v127 = v252;
          v125(&v262, &type metadata for Int, v126, v252, v60);
          v56 = v127;
          v128 = swift_getAssociatedConformanceWitness(v246, v41, v127, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
          v55 = v248;
          v70 = (*(v128 + 16))(v248, v250, v127, v128);
LABEL_27:
          v129 = v70;
          v251(v250, v56);
          if (v129)
          {
            goto LABEL_58;
          }

          goto LABEL_54;
        }

        v56 = v252;
        v160 = v240;
        v161 = swift_getAssociatedConformanceWitness(v241, v252, v240, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v162 = v232;
        (*(v161 + 8))(&qword_18071E0A8, 256, v160, v161);
        (v241[3])(v162, v56);
        v163 = swift_getAssociatedConformanceWitness(v246, v41, v56, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
        v55 = v248;
        LOBYTE(v160) = (*(v163 + 16))(v248, v250, v56, v163);
        v251(v250, v56);
        if (v160)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v56 = v252;
        v55 = v248;
        if (v122 >= 64)
        {
          goto LABEL_54;
        }
      }
    }

    (*(v60 + 120))(v56, v60);
  }

LABEL_54:
  if (v64(v56, v60) > 64 || v64(v56, v60) == 64 && (v61(v56, v60) & 1) == 0)
  {
    v164 = v61(v56, v60);
    v165 = v56;
    v166 = v164;
    v167 = v64(v165, v60);
    if (v166)
    {
      if (v167 >= 65)
      {
        goto LABEL_57;
      }
    }

    else if (v167 >= 64)
    {
LABEL_57:
      v262 = 0x7FFFFFFFFFFFFFFFLL;
      v170 = *(v60 + 96);
      v171 = lazy protocol witness table accessor for type Int and conformance Int(v167, v168, v169);
      v172 = v250;
      v173 = v252;
      v170(&v262, &type metadata for Int, v171, v252, v60);
      v56 = v173;
      v174 = swift_getAssociatedConformanceWitness(v246, v41, v173, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
      v41 = (*(v174 + 16))(v172, v55, v173, v174);
      v251(v172, v173);
      if ((v41 & 1) == 0)
      {
        goto LABEL_64;
      }

LABEL_58:
      v254 = v59;
      v260 = v56;
LABEL_111:
      v249 = v55;
      goto LABEL_112;
    }

    v56 = v252;
    (*(v60 + 120))(v252, v60);
  }

LABEL_64:
  v175 = (*(v60 + 120))(v56, v60);
  v251(v55, v56);
  if ((v249 & 1) == 0)
  {
    v176 = __OFSUB__(0, v175);
    v175 = -v175;
    if (v176)
    {
      __break(1u);
LABEL_68:
      v177 = v55;
      v178 = v260;
      v179 = swift_getAssociatedConformanceWitness(v55, v260, v41, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v180 = v253;
      (*(v179 + 8))(&qword_18071E0A8, 256, v41, v179);
      v181 = v236;
      (*(v177 + 3))(v180, v178, v177);
      v77 = v249;
      v182 = (*(v252 + 2))(v249, v181, v178);
      v90 = v59 + 8;
      v183 = *(v59 + 8);
      v71 = v181;
      v183(v181, v178);
      if ((v182 & 1) == 0)
      {
        goto LABEL_69;
      }

      v251 = v183;
LABEL_115:
      v254 = v90 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      goto LABEL_112;
    }
  }

  return v175;
}

uint64_t SignedInteger<>.init<A>(exactly:)@<X0>(void *a1@<X0>, Class *a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, void *a5@<X5>, uint64_t a6@<X8>)
{
  v9 = a2;
  v140 = a6;
  v145 = *(a4 + 8);
  v135 = *(*(v145 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v135, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v134 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v133 = &v127 - v13;
  v132 = *(a5[3] + 16);
  swift_getAssociatedTypeWitness(0, v132, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v131 = v14;
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v130 = &v127 - v17;
  v143 = *(a3 - 1);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v137 = &v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = *(v9 - 1);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v139 = &v127 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v136 = &v127 - v26;
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v127 - v28;
  v141 = a5[8];
  v142 = a5 + 8;
  v30 = v141(a3, a5);
  v146 = a5;
  v33 = a5[16];
  v32 = a5 + 16;
  v31 = v33;
  if (v30)
  {
    v34 = v31(a3, v146);
    if ((*(a4 + 56))(v9, a4) < v34)
    {
      v138 = v31;
      v129 = v32;
      (*(a4 + 72))(v9, a4);
      v35 = v29;
      v36 = v141;
      v37 = v141(a3, v146);
      v38 = v145;
      if ((v37 ^ (*(v145 + 64))(v9, v145)))
      {
        v39 = v146;
        LODWORD(v127) = v36(a3, v146);
        v40 = a1;
        v128 = a3;
        v31 = v138;
        v41 = v138(a3, v39);
        v42 = (*(v38 + 128))(v9, v38);
        if (v127)
        {
          if (v42 < v41)
          {
            v43 = v146;
            v44 = v137;
            a3 = v128;
            (v146[12])(v35, v9, v145, v128, v146);
            v45 = (*(*(v43[4] + 8) + 16))(a1, v44, a3);
            (*(v143 + 8))(v44, a3);
            goto LABEL_15;
          }

          v127 = v35;
          v105 = v131;
          v106 = v132;
          a3 = v128;
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v132, v128, v131, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
          v108 = v130;
          (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v105, AssociatedConformanceWitness);
          v109 = v137;
          (v106[3])(v108, a3, v106);
          v110 = v146;
          v111 = v40;
          LOBYTE(v105) = (*(*(v146[4] + 8) + 16))(v40, v109, a3);
          v112 = v143;
          (*(v143 + 8))(v109, a3);
          v113 = v145;
          if (v105)
          {
            (*(v144 + 8))(v127, v9);
            a1 = v40;
            goto LABEL_45;
          }

          (*(v112 + 16))(v109, v40, a3);
          v125 = v136;
          (*(v113 + 96))(v109, a3, v110, v9, v113);
          v126 = v127;
          v45 = (*(*(*(v113 + 32) + 8) + 16))(v125, v127, v9);
          a1 = v111;
          v49 = *(v144 + 8);
          v49(v125, v9);
          v50 = v126;
          goto LABEL_9;
        }

        if (v41 < v42)
        {
          v51 = v137;
          a3 = v128;
          (*(v143 + 16))(v137, a1, v128);
          v52 = v145;
          v53 = v136;
          (*(v145 + 96))(v51, a3, v146, v9, v145);
          LOBYTE(v51) = (*(*(*(v52 + 32) + 8) + 16))(v53, v35, v9);
          v54 = *(v144 + 8);
          v54(v53, v9);
          v54(v35, v9);
          if (v51)
          {
            goto LABEL_45;
          }

          goto LABEL_16;
        }

        v116 = v134;
        v115 = v135;
        v117 = swift_getAssociatedConformanceWitness(v135, v9, v134, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v118 = v133;
        (*(v117 + 8))(&qword_18071E0A8, 256, v116, v117);
        v119 = v136;
        (v115[3])(v118, v9, v115);
        v120 = v145;
        v121 = (*(*(*(v145 + 32) + 8) + 40))(v35, v119, v9);
        v122 = *(v144 + 8);
        v122(v119, v9);
        if ((v121 & 1) == 0)
        {
          v122(v35, v9);
          a3 = v128;
          v31 = v138;
          v58 = v138(v128, v146);
          goto LABEL_17;
        }

        v123 = v146;
        v56 = v137;
        v124 = v120;
        a3 = v128;
        (v146[12])(v35, v9, v124, v128, v146);
        v57 = v123[4];
      }

      else
      {
        v46 = v138(a3, v146);
        if (v46 < (*(v38 + 128))(v9, v38))
        {
          v47 = v137;
          (*(v143 + 16))(v137, a1, a3);
          v48 = v136;
          (*(v38 + 96))(v47, a3, v146, v9, v38);
          v45 = (*(*(*(v38 + 32) + 8) + 16))(v48, v35, v9);
          v49 = *(v144 + 8);
          v49(v48, v9);
          v50 = v35;
LABEL_9:
          v49(v50, v9);
          goto LABEL_15;
        }

        v55 = v146;
        v56 = v137;
        (v146[12])(v35, v9, v38, a3, v146);
        v57 = v55[4];
      }

      v45 = (*(*(v57 + 8) + 16))(a1, v56, a3);
      (*(v143 + 8))(v56, a3);
LABEL_15:
      v31 = v138;
      if (v45)
      {
        goto LABEL_45;
      }
    }
  }

LABEL_16:
  v58 = v31(a3, v146);
LABEL_17:
  v59 = *(a4 + 56);
  if (v59(v9, a4) >= v58)
  {
    v74 = v31(a3, v146);
    if (v74 != v59(v9, a4) || (v141(a3, v146) & 1) != 0)
    {
      goto LABEL_42;
    }
  }

  v138 = v31;
  v60 = v139;
  (*(a4 + 64))(v9, a4);
  v61 = v145;
  v62 = *(v145 + 64);
  v63 = v62(v9, v145);
  if (((v63 ^ v141(a3, v146)) & 1) == 0)
  {
    v75 = (*(v61 + 128))(v9, v61);
    v76 = v146;
    v77 = v60;
    if (v75 >= v138(a3, v146))
    {
      v84 = v137;
      (*(v143 + 16))(v137, a1, a3);
      v85 = v76;
      v86 = v136;
      (*(v61 + 96))(v84, a3, v85, v9, v61);
      LOBYTE(v84) = (*(*(*(v61 + 32) + 8) + 16))(v77, v86, v9);
      v87 = *(v144 + 8);
      v87(v86, v9);
      v87(v77, v9);
      if ((v84 & 1) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_45;
    }

    v78 = v137;
    (v76[12])(v60, v9, v61, a3, v76);
    v79 = (*(*(v76[4] + 8) + 16))(v78, a1, a3);
    goto LABEL_27;
  }

  v64 = v62(v9, v61);
  v65 = v9;
  v66 = (*(v61 + 128))(v9, v61);
  v67 = v146;
  v68 = v138(a3, v146);
  if ((v64 & 1) == 0)
  {
    v81 = v67;
    v82 = v137;
    if (v66 >= v68)
    {
      v95 = v131;
      v96 = v132;
      v97 = swift_getAssociatedConformanceWitness(v132, a3, v131, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v98 = v130;
      (*(v97 + 8))(&qword_18071E0A8, 256, v95, v97);
      (v96[3])(v98, a3, v96);
      LOBYTE(v95) = (*(*(v67[4] + 8) + 40))(a1, v82, a3);
      v99 = v143;
      (*(v143 + 8))(v82, a3);
      v72 = v139;
      if ((v95 & 1) == 0)
      {
        v9 = v65;
        (*(v144 + 8))(v139, v65);
        goto LABEL_42;
      }

      (*(v99 + 16))(v82, a1, a3);
      v70 = a1;
      v71 = v136;
      v9 = v65;
      (*(v61 + 96))(v82, a3, v146, v65, v61);
      v73 = (*(*(*(v61 + 32) + 8) + 16))(v72, v71, v65);
      goto LABEL_38;
    }

    v83 = v67[12];
    v9 = v65;
    v83(v139, v65, v61, a3, v81);
    v80 = (*(*(v81[4] + 8) + 16))(v82, a1, a3);
    (*(v143 + 8))(v82, a3);
    goto LABEL_30;
  }

  if (v68 >= v66)
  {
    v142 = a1;
    v88 = v134;
    v89 = v135;
    v9 = v65;
    v90 = swift_getAssociatedConformanceWitness(v135, v65, v134, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v91 = v133;
    (*(v90 + 8))(&qword_18071E0A8, 256, v88, v90);
    v92 = v136;
    (v89[3])(v91, v65, v89);
    v93 = v139;
    LOBYTE(v88) = (*(*(*(v61 + 32) + 8) + 16))(v139, v92, v65);
    v94 = *(v144 + 8);
    v94(v92, v65);
    if (v88)
    {
      v94(v93, v65);
      a1 = v142;
      goto LABEL_45;
    }

    v102 = v146;
    v78 = v137;
    (v146[12])(v93, v65, v61, a3, v146);
    a1 = v142;
    v79 = (*(*(v102[4] + 8) + 16))(v78, v142, a3);
LABEL_27:
    v80 = v79;
    (*(v143 + 8))(v78, a3);
LABEL_30:
    if ((v80 & 1) == 0)
    {
      goto LABEL_42;
    }

LABEL_45:
    (*(v143 + 8))(a1, a3);
    v104 = 1;
    v103 = v140;
    return (*(v144 + 56))(v103, v104, 1, v9);
  }

  v69 = v137;
  (*(v143 + 16))(v137, a1, a3);
  v70 = a1;
  v71 = v136;
  v9 = v65;
  (*(v61 + 96))(v69, a3, v146, v65, v61);
  v72 = v139;
  v73 = (*(*(*(v61 + 32) + 8) + 16))(v139, v71, v65);
LABEL_38:
  v100 = v73;
  v101 = *(v144 + 8);
  v101(v71, v65);
  v101(v72, v65);
  a1 = v70;
  if (v100)
  {
    goto LABEL_45;
  }

LABEL_42:
  v103 = v140;
  (*(v145 + 96))(a1, a3, v146, v9);
  v104 = 0;
  return (*(v144 + 56))(v103, v104, 1, v9);
}

uint64_t BinaryInteger.advanced(by:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (*(v10 + 64))(v11, v10);
  if ((v12 & 1) == 0)
  {
    if (a1 < 0)
    {
      v30 = -a1;
      v27 = *(a3 + 88);
      v28 = lazy protocol witness table accessor for type UInt and conformance UInt(v12, v13, v14);
      v27(&v30, &type metadata for UInt, v28, a2, a3);
      (*(*(*(a3 + 24) + 8) + 40))(v3, v9, a2);
      return (*(v7 + 8))(v9, a2);
    }

    v30 = a1;
    v23 = *(a3 + 88);
    v24 = lazy protocol witness table accessor for type UInt and conformance UInt(v12, v13, v14);
    v23(&v30, &type metadata for UInt, v24, a2, a3);
LABEL_8:
    (*(*(*(a3 + 24) + 8) + 24))(v3, v9, a2);
    return (*(v7 + 8))(v9, a2);
  }

  v15 = (*(a3 + 128))(a2, a3);
  if (v15 > 63)
  {
    v30 = a1;
    v25 = *(a3 + 96);
    v26 = lazy protocol witness table accessor for type Int and conformance Int(v15, v16, v17);
    v25(&v30, &type metadata for Int, v26, a2, a3);
    goto LABEL_8;
  }

  result = (*(a3 + 120))(a2, a3);
  if (__OFADD__(result, a1))
  {
    __break(1u);
  }

  else
  {
    v30 = result + a1;
    v21 = *(a3 + 88);
    v22 = lazy protocol witness table accessor for type Int and conformance Int(result, v19, v20);
    return v21(&v30, &type metadata for Int, v22, a2, a3);
  }

  return result;
}

uint64_t specialized FixedWidthInteger.multipliedFullWidth(by:)(_OWORD *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v5 = (a5 * a2) >> 64;
  if (__CFADD__((a4 * a2) >> 64, a5 * a2))
  {
    ++v5;
  }

  if (__CFADD__((__PAIR128__(a5, a4) * a2) >> 64, a4 * a3))
  {
    v6 = ((a4 * a3) >> 64) + 1;
  }

  else
  {
    v6 = (a4 * a3) >> 64;
  }

  *a1 = __PAIR128__(a3, a2) * __PAIR128__(a5, a4);
  return v5 + a5 * a3 + v6;
}

uint64_t FixedWidthInteger.multipliedFullWidth(by:)(uint64_t a1, uint64_t a2, unint64_t a3, Class *a4, void *a5)
{
  v6 = v5;
  v133 = a3;
  v115 = a2;
  v113 = a1;
  v135 = a5[1];
  swift_getAssociatedTypeWitness(0, v135[3], a4, &protocol requirements base descriptor for Numeric, associated type descriptor for Numeric.Magnitude);
  v10 = v9;
  v138 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v114 = v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v134 = v109 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = v109 - v19;
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v125 = v109 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v27 = v109 - v26;
  v29 = MEMORY[0x1EEE9AC00](v25, v28);
  v31 = v109 - v30;
  v126 = v109 - v30;
  v123 = *(a4 - 1);
  v33 = MEMORY[0x1EEE9AC00](v29, v32);
  v111 = v109 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v124 = v109 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36, v38);
  v132 = v109 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39, v41);
  v129 = v109 - v43;
  v45 = MEMORY[0x1EEE9AC00](v42, v44);
  v139 = v109 - v46;
  v48 = MEMORY[0x1EEE9AC00](v45, v47);
  v136 = v109 - v49;
  v51 = MEMORY[0x1EEE9AC00](v48, v50);
  v53 = v109 - v52;
  v122 = v109 - v52;
  MEMORY[0x1EEE9AC00](v51, v54);
  v131 = v109 - v55;
  split #1 <A><A1>(_:) in FixedWidthInteger.multipliedFullWidth(by:)(v109 - v55, v31, v6, a4, a4, a5, a5);
  v56 = a5;
  split #1 <A><A1>(_:) in FixedWidthInteger.multipliedFullWidth(by:)(v53, v27, v133, a4, a4, a5, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a4, v10, &protocol requirements base descriptor for FixedWidthInteger, associated conformance descriptor for FixedWidthInteger.Numeric.Magnitude: FixedWidthInteger);
  v57 = *(AssociatedConformanceWitness + 232);
  v112 = v27;
  v58 = v10;
  v57(v31, v27, v10, AssociatedConformanceWitness);
  v59 = *(v138 + 16);
  v109[2] = v138 + 16;
  v110 = v59;
  v60 = v20;
  v59(v20, v27, v58);
  v61 = v135;
  v62 = (v135 + 11);
  v118 = v135[11];
  v63 = v118;
  v133 = swift_getAssociatedConformanceWitness(v135, a4, v58, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.Numeric.Magnitude: BinaryInteger);
  v64 = v129;
  (v63)(v60, v58, v133, a4, v61);
  v109[1] = v62;
  v65 = v56[29];
  v120 = v56 + 29;
  v121 = v65;
  v65(v131, v64, a4, v56);
  v66 = *(v123 + 8);
  v66(v64, a4);
  v137 = v60;
  v67 = v134;
  split #1 <A><A1>(_:) in FixedWidthInteger.multipliedFullWidth(by:)(v60, v134, v125, a4, v58, v56, AssociatedConformanceWitness);
  v68 = *(v138 + 8);
  v138 += 8;
  v119 = v68;
  v68(v67, v58);
  v69 = v64;
  v70 = v60;
  v71 = v133;
  v72 = v135;
  (v118)(v70, v58, v133, a4, v135);
  v128 = v56;
  v116 = v56[10];
  v117 = v56 + 10;
  v73 = v139;
  v116(v136, v69, a4, v56);
  v66(v69, a4);
  v66(v73, a4);
  v74 = v137;
  v130 = v58;
  v110(v137, v126, v58);
  v75 = v132;
  v76 = v58;
  v77 = v118;
  (v118)(v74, v76, v71, a4, v72);
  v78 = v122;
  v79 = v128;
  v121(v75, v122, a4, v128);
  v66(v75, a4);
  v80 = v124;
  v81 = v137;
  split #1 <A><A1>(_:) in FixedWidthInteger.multipliedFullWidth(by:)(v124, v137, v136, a4, a4, v79, v79);
  v66(v80, a4);
  v82 = v130;
  (v77)(v81, v130, v133, a4, v135);
  v83 = v129;
  v84 = v116;
  v116(v139, v75, a4, v79);
  v66(v75, a4);
  v66(v83, a4);
  v85 = v124;
  v121(v131, v78, a4, v79);
  v86 = v111;
  v87 = v137;
  split #1 <A><A1>(_:) in FixedWidthInteger.multipliedFullWidth(by:)(v111, v137, v136, a4, a4, v79, v79);
  v88 = v82;
  v89 = v119;
  v119(v87, v88);
  v84(v132, v86, a4, v79);
  v66(v86, a4);
  v66(v85, a4);
  v90 = v137;
  v91 = v128;
  split #1 <A><A1>(_:) in FixedWidthInteger.multipliedFullWidth(by:)(v85, v137, v139, a4, a4, v128, v128);
  v89(v90, v130);
  v92 = v129;
  v93 = v132;
  v116(v129, v85, a4, v91);
  v66(v85, a4);
  v66(v93, a4);
  (*(v123 + 16))(v113, v92, a4);
  v94 = v139;
  split #1 <A><A1>(_:) in FixedWidthInteger.multipliedFullWidth(by:)(v93, v134, v139, a4, a4, v91, v91);
  v66(v93, a4);
  v95 = (v135[16])(a4);
  v66(v92, a4);
  v66(v94, a4);
  v66(v136, a4);
  v96 = v130;
  v97 = v119;
  v119(v112, v130);
  v66(v122, a4);
  v97(v126, v96);
  v98 = (v66)(v131, a4);
  v140 = v95 / 2;
  v99 = v133;
  v100 = *(v133 + 256);
  v103 = lazy protocol witness table accessor for type Int and conformance Int(v98, v101, v102);
  v104 = v137;
  v105 = v134;
  v100(v134, &v140, &type metadata for Int, v103, v96, v99);
  v97(v105, v96);
  v106 = v114;
  v107 = v125;
  split #1 <A><A1>(_:) in FixedWidthInteger.multipliedFullWidth(by:)(v105, v114, v125, a4, v96, v128, AssociatedConformanceWitness);
  v97(v105, v96);
  v97(v107, v96);
  (*(v99 + 208))(v104, v106, v96, v99);
  v97(v106, v96);
  return (v97)(v104, v96);
}

uint64_t FixedWidthInteger.init(bigEndian:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return FixedWidthInteger.init(bigEndian:)(a1, a2, a3);
}

{
  (*(a3 + 192))(a2, a3);
  v5 = *(*(a2 - 8) + 8);

  return v5(a1, a2);
}

uint64_t static FixedWidthInteger.&>> infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 16))(a5, a1);
  return (*(a4 + 208))(a5, a2, a3, a4);
}

{
  (*(*(a3 - 8) + 16))(a5, a1);
  return (*(a4 + 208))(a5, a2, a3, a4);
}

uint64_t static FixedWidthInteger.&>>= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = &v21 - v14;
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v21 - v17;
  (*(v8 + 32))(&v21 - v17, a1);
  (*(v8 + 16))(v11, a2, a3);
  (*(*(a4 + 8) + 96))(v11, a3, *(a4 + 8), a3, *(a4 + 8));
  (*(a4 + 200))(v18, v15, a3, a4);
  v19 = *(v8 + 8);
  v19(v15, a3);
  return (v19)(v18, a3);
}

uint64_t static FixedWidthInteger.&>>= infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a6;
  v11 = *(a4 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1, a2);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v12, v17);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v26 - v22;
  (*(v16 + 32))(&v26 - v22, a1);
  (*(v11 + 16))(v14, a2, a4);
  (*(*(a5 + 8) + 96))(v14, a4, v27, a3);
  (*(a5 + 200))(v23, v20, a3, a5);
  v24 = *(v16 + 8);
  v24(v20, a3);
  return (v24)(v23, a3);
}

uint64_t static FixedWidthInteger.&<< infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 16))(a5, a1);
  return (*(a4 + 224))(a5, a2, a3, a4);
}

{
  (*(*(a3 - 8) + 16))(a5, a1);
  return (*(a4 + 224))(a5, a2, a3, a4);
}

uint64_t static FixedWidthInteger.&<<= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = &v21 - v14;
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v21 - v17;
  (*(v8 + 32))(&v21 - v17, a1);
  (*(v8 + 16))(v11, a2, a3);
  (*(*(a4 + 8) + 96))(v11, a3, *(a4 + 8), a3, *(a4 + 8));
  (*(a4 + 216))(v18, v15, a3, a4);
  v19 = *(v8 + 8);
  v19(v15, a3);
  return (v19)(v18, a3);
}

uint64_t static FixedWidthInteger.&<<= infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a6;
  v11 = *(a4 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1, a2);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v12, v17);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v26 - v22;
  (*(v16 + 32))(&v26 - v22, a1);
  (*(v11 + 16))(v14, a2, a4);
  (*(*(a5 + 8) + 96))(v14, a4, v27, a3);
  (*(a5 + 216))(v23, v20, a3, a5);
  v24 = *(v16 + 8);
  v24(v20, a3);
  return (v24)(v23, a3);
}

uint64_t split #1 <A><A1>(_:) in FixedWidthInteger.multipliedFullWidth(by:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, Class *a5, uint64_t a6, uint64_t a7)
{
  v68 = a2;
  AssociatedConformanceWitness = a1;
  v10 = *(a7 + 8);
  v11 = *(v10 + 3);
  swift_getAssociatedTypeWitness(255, v11, a5, &protocol requirements base descriptor for Numeric, associated type descriptor for Numeric.Magnitude);
  v13 = v12;
  v72 = *(swift_getAssociatedConformanceWitness(v11, a5, v12, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Numeric) + 16);
  swift_getAssociatedTypeWitness(0, v72, v13, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v70 = v14;
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v71 = &v55 - v17;
  v18 = *(a5 - 1);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_checkMetadataState(0, v13);
  v67 = *(v22 - 1);
  v24 = MEMORY[0x1EEE9AC00](v22, v23);
  v64 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v62 = &v55 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v65 = &v55 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v66 = &v55 - v34;
  MEMORY[0x1EEE9AC00](v33, v35);
  v63 = &v55 - v36;
  v61 = a7;
  v37 = (*(a7 + 56))(a5, a7);
  v60 = v37 / 2;
  *v73 = v37 / 2;
  v38 = *(v10 + 30);
  v59 = lazy protocol witness table accessor for type Int and conformance Int(v37, v39, v40);
  v38(a3, v73, &type metadata for Int, v59, a5, v10);
  (*(v18 + 16))(v21, a3, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, a5, v22, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.Numeric.Magnitude: BinaryInteger);
  v55 = *(AssociatedConformanceWitness + 96);
  v55(v21, a5, v10, v22, AssociatedConformanceWitness);
  v41 = v72;
  v42 = v70;
  v43 = swift_getAssociatedConformanceWitness(v72, v22, v70, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v44 = *(v43 + 8);
  v57 = v43;
  v58 = v44;
  v45 = v71;
  (v44)(&qword_1806729C0, 512, v42, v43);
  v56 = v41[3];
  v46 = v62;
  (v56)(v45, v22, v41);
  *v73 = v60;
  v47 = v64;
  v55(v73, &type metadata for Int, v59, v22, AssociatedConformanceWitness);
  v48 = swift_getAssociatedConformanceWitness(v61, a5, v22, &protocol requirements base descriptor for FixedWidthInteger, associated conformance descriptor for FixedWidthInteger.Numeric.Magnitude: FixedWidthInteger);
  v49 = v65;
  (*(v48 + 216))(v46, v47, v22, v48);
  v50 = *(v67 + 8);
  v50(v47, v22);
  v50(v46, v22);
  v51 = v71;
  v58(&qword_1806729C0, 512);
  (v56)(v51, v22, v72);
  v52 = v66;
  (*(v48 + 88))(v66, v46, v22, v48);
  v50(v46, v22);
  v50(v49, v22);
  v53 = v63;
  (*(AssociatedConformanceWitness + 192))(v63, v52, v22);
  v50(v52, v22);
  return (v50)(v53, v22);
}