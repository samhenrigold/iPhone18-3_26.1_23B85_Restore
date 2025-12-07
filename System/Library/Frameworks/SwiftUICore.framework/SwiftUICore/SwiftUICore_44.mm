Swift::Void __swiftcall LazyLayoutViewCache.updatePlacedIndices(minIndex:maxIndex:containingSize:)(Swift::Int_optional minIndex, Swift::Int_optional maxIndex, CGSize containingSize)
{
  if (*(v3 + 264) != containingSize.width || *(v3 + 272) != containingSize.height)
  {
    *(v3 + 296) = 0;
    *(v3 + 304) = 0;
  }

  if (minIndex.is_nil)
  {
    value = -1;
  }

  else
  {
    value = minIndex.value;
  }

  if (maxIndex.is_nil)
  {
    v6 = -1;
  }

  else
  {
    v6 = maxIndex.value;
  }

  *(v3 + 280) = value;
  *(v3 + 288) = v6;
  if (value < 0 || v6 < 0)
  {
    goto LABEL_16;
  }

  v7 = *(v3 + 304);
  v8 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    *(v3 + 296) = (*(v3 + 296) * v7 + (v6 - value)) / v8;
    *(v3 + 304) = v8;
LABEL_16:
    *(v3 + 264) = containingSize.width;
    *(v3 + 272) = containingSize.height;
    return;
  }

  __break(1u);
}

uint64_t sub_18D29A3F0()
{

  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t closure #1 in LazyLayoutViewCache.collect()(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(*a2 + 224);

  if (v5 == 1)
  {
    LazyLayoutViewCache.ensureRemoved(item:)(v4);
  }

  else
  {
    v6 = *(v4 + 386);
    if (v6 == 2 || (v6 & 1) != 0)
    {
      LazyLayoutCacheItem.attach(to:)(*(a3 + 24));
    }
  }

  swift_beginAccess();
  if (*(a3 + 192) >= (*(a3 + 184) - *(v4 + 196)) || *(v4 + 204) == *(a3 + 224) || *(v4 + 192) || *(v4 + 208) == *(a3 + 228) || *(v4 + 212) == 3)
  {
    v8 = 1;
  }

  else
  {
    (*(*a3 + 432))(partial apply for implicit closure #5 in closure #1 in LazyLayoutViewCache.collect(), v4);
    AGSubgraphRef.willInvalidate(isInserted:)(0);
    AGSubgraphInvalidate();
    v8 = 0;
  }

  return v8;
}

Swift::Void __swiftcall LazySubviewPlacements.updateValue()()
{
  v6 = v1;
  v291 = *MEMORY[0x1E69E9840];
  v7 = *(*&v0 + 16);
  v8 = *(v7 - 8);
  MinY = v0;
  MaxX = v8;
  (MEMORY[0x1EEE9AC00])();
  v10 = &v177 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v177 - v12;
  _sSay7SwiftUI25_LazyLayout_PlacedSubviewVGMaTm_0(0, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);
  v15 = v14;
  if (!AGGraphGetOutputValue() || !AGGraphHasDeadlinePassed())
  {
    v237 = v10;
    v16 = *(v6 + 452);
    v17 = type metadata accessor for LazyLayoutViewCache();
    AGGraphGetValue();
    swift_beginAccess();
    v18 = *AGGraphGetValue() >> 1;
    v229 = v16;
    v232 = v18;
    if (v16 != v18)
    {
      *(v6 + 452) = v232;
      LOBYTE(v289[0]) = 1;
      v19 = *(v6 + 408);
      v290[8] = *(v6 + 392);
      v290[9] = v19;
      v290[10] = *(v6 + 424);
      *(&v290[10] + 9) = *(v6 + 433);
      v20 = *(v6 + 344);
      v290[4] = *(v6 + 328);
      v290[5] = v20;
      v21 = *(v6 + 376);
      v290[6] = *(v6 + 360);
      v290[7] = v21;
      v22 = *(v6 + 280);
      v290[0] = *(v6 + 264);
      v290[1] = v22;
      v23 = *(v6 + 312);
      v290[2] = *(v6 + 296);
      v290[3] = v23;
      outlined destroy of PositionState(v290);
      *(v6 + 264) = 0;
      *(v6 + 272) = 0u;
      *(v6 + 288) = 0u;
      *(v6 + 304) = 0u;
      *(v6 + 320) = 0u;
      *(v6 + 336) = 0u;
      *(v6 + 352) = 0u;
      *(v6 + 368) = 0u;
      *(v6 + 384) = 0u;
      *(v6 + 400) = 0u;
      *(v6 + 416) = 0u;
      *(v6 + 432) = 0u;
      *(v6 + 448) = 1;
      v24 = *MEMORY[0x1E695F050];
      v25 = *(MEMORY[0x1E695F050] + 8);
      y = *(MEMORY[0x1E695F050] + 16);
      x = *(MEMORY[0x1E695F050] + 24);
      v26 = *(v6 + 96);
      v27 = *(v6 + 112);
      v28 = *(v6 + 144);
      v289[2] = *(v6 + 128);
      v289[3] = v28;
      v289[0] = v26;
      v289[1] = v27;
      v29 = *(v6 + 160);
      v30 = *(v6 + 176);
      v31 = *(v6 + 192);
      LODWORD(v289[7]) = *(v6 + 208);
      v289[5] = v30;
      v289[6] = v31;
      v289[4] = v29;
      outlined destroy of PlacementState(v289);
      v32 = MEMORY[0x1E69E7CC0];
      *(v6 + 96) = MEMORY[0x1E69E7CC0];
      *(v6 + 104) = v32;
      *(v6 + 112) = v24;
      *(v6 + 120) = v25;
      *(v6 + 128) = y;
      *(v6 + 136) = x;
      *(v6 + 144) = v24;
      *(v6 + 152) = v25;
      *(v6 + 160) = y;
      *(v6 + 168) = x;
      *(v6 + 176) = v24;
      *(v6 + 184) = v25;
      *(v6 + 192) = y;
      *(v6 + 200) = x;
      *(v6 + 208) = 0;

      *(v6 + 256) = 0;
      *(v6 + 216) = 0u;
      *(v6 + 232) = 0u;
      *(v6 + 248) = 0;
    }

    v33 = *(v6 + 36);
    v34 = *(*AGGraphGetValue() + 341);
    v231 = v15;
    if (v34 == 1)
    {
      LODWORD(v228) = *(v6 + 36);
      Value = AGGraphGetValue();
      v36 = MaxX;
      (*(*&MaxX + 16))(v13, Value, v7);
      (*(*(*&MinY + 24) + 120))(v290, v7);
      (*(*&v36 + 8))(v13, v7);
      v202 = v290[0];
    }

    else
    {
      LODWORD(v228) = v33;
      v202 = 0;
    }

    v37 = AGGraphGetValue();
    v39 = v38;
    v40 = *v37;
    v41 = *(v37 + 8);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v43 = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      __break(1u);
    }

    else
    {
      v225 = CurrentAttribute;
      v226 = v39;
      v189 = v43;
      v188 = v13;
      v45 = *(v37 + 32);
      v44 = *(v37 + 40);
      v47 = *(v37 + 16);
      v46 = *(v37 + 24);
      v224 = *(v6 + 16);
      type metadata accessor for CGPoint(0);
      v48 = MaxX;

      v49 = AGGraphGetValue();
      *&v50 = *v49;
      v239 = v50;
      *&v50 = v49[1];
      v238 = v50;
      v51 = AGGraphGetValue();
      *&v52 = *v51;
      v240 = v52;
      *&v52 = v51[1];
      v241 = v52;

      AGGraphGetValue();

      v210 = *AGGraphGetValue();

      v53 = AGGraphGetValue();
      v54 = v237;
      v185 = *(*&v48 + 16);
      v186 = *&v48 + 16;
      v185(v237, v53, v7);
      v55 = *(*(*&MinY + 24) + 120);
      v234 = *(*&MinY + 24);
      v55(&v245, v7);
      v56 = *(*&v48 + 8);
      v233 = v7;
      *&MaxX = *&v48 + 8;
      v187 = v56;
      v56(v54, v7);
      v57 = v245;
      v227 = *(v6 + 96);
      v58 = *(v6 + 112);
      v180 = (v6 + 112);
      v59 = *(v6 + 128);
      v183 = *(v6 + 120);
      v184 = v58;
      v60 = *(v6 + 144);
      v181 = *(v6 + 136);
      v182 = v59;
      v61 = *(v6 + 160);
      v196 = *(v6 + 152);
      v197 = v60;
      v62 = *(v6 + 176);
      v194 = *(v6 + 168);
      v195 = v61;
      v63 = *(v6 + 192);
      v192 = *(v6 + 184);
      v193 = v62;
      v190 = *(v6 + 200);
      v191 = v63;
      v64 = *(v6 + 304);
      v200 = *(v6 + 312);
      v201 = v64;
      v65 = *(v6 + 320);
      v198 = *(v6 + 328);
      v199 = v65;
      v66 = *(v6 + 400);
      v178 = *(v6 + 408);
      v179 = v66;
      v230 = v17;
      AGGraphGetValue();

      v67 = *AGGraphGetValue();

      v242 = 1;
      v68 = *&v238 - v46;
      v69 = v45 - (*&v239 - v47);
      memset(v290, 0, 112);
      v70 = v44 - v68;
      LOBYTE(v290[7]) = 1;
      v237 = v40;
      *&v289[0] = v40;
      v71 = v210;
      *(&v289[0] + 1) = v41;
      *&v289[1] = v239;
      *(&v289[1] + 1) = v238;
      *&v289[2] = v69;
      *(&v289[2] + 1) = v44 - v68;
      specialized ViewTransform.forEach(inverted:_:)(0, v289, v290, 0.0);
      v72 = *&v290[1];
      if (v290[7])
      {
        v72 = *&v240;
      }

      v221 = v72;
      if (v290[7])
      {
        v73 = *&v241;
      }

      else
      {
        v73 = *(&v290[1] + 1);
      }

      v220 = v73;
      v74 = 0.0;
      if (v290[7])
      {
        v75 = 0.0;
      }

      else
      {
        v75 = *&v290[2];
      }

      if (v290[7])
      {
        v76 = 0.0;
      }

      else
      {
        v76 = *(&v290[2] + 1);
      }

      v217 = v76;
      v218 = v75;
      if (v290[7])
      {
        v77 = 0.0;
      }

      else
      {
        v77 = *&v290[3];
      }

      if (v290[7])
      {
        v78 = 0.0;
      }

      else
      {
        v78 = *(&v290[3] + 1);
      }

      v215 = v78;
      v216 = v77;
      if (v290[7])
      {
        v79 = *&v240;
      }

      else
      {
        v79 = *&v290[6];
      }

      if (v290[7])
      {
        v80 = *&v241;
      }

      else
      {
        v80 = *(&v290[6] + 1);
      }

      v222 = v80;
      v223 = v79;
      if (v290[7])
      {
        v81 = 0.0;
      }

      else
      {
        v81 = *(&v290[5] + 1);
      }

      if (v290[7])
      {
        v82 = 0.0;
      }

      else
      {
        v82 = *&v290[5];
      }

      if (v290[7])
      {
        v83 = *&v240;
      }

      else
      {
        v83 = *&v290[4];
      }

      if (v290[7])
      {
        v84 = *&v241;
      }

      else
      {
        v84 = *(&v290[4] + 1);
      }

      if (v290[7])
      {
        v85 = 0.0;
      }

      else
      {
        v85 = *v290;
      }

      if (v290[7])
      {
        v86 = 0.0;
      }

      else
      {
        v86 = *(v290 + 1);
      }

      v212 = v84;
      v213 = v83;
      v211 = v86;
      if (v71 == 1)
      {
        v87 = v85;
        v88 = v86;
        v89 = *&v240 - CGRectGetMaxX(*(&v83 - 2));
        v214 = v82 + v89 - v85;
        v219 = v81 + v86 - v86;
        v85 = v89;
      }

      else
      {
        v214 = v82;
        v219 = v81;
      }

      memset(v290, 0, 112);
      LOBYTE(v290[7]) = 1;
      *&v289[0] = v237;
      *(&v289[0] + 1) = v41;
      *&v289[1] = v239;
      *(&v289[1] + 1) = v238;
      *&v289[2] = v69;
      *(&v289[2] + 1) = v70;
      specialized ViewTransform.forEach(inverted:_:)(0, v289, v290, *&v238);
      v90 = *&v290[1];
      if (v290[7])
      {
        v90 = *&v240;
      }

      v207 = v90;
      if (v290[7])
      {
        v91 = *&v241;
      }

      else
      {
        v91 = *(&v290[1] + 1);
      }

      if (v290[7])
      {
        v92 = 0.0;
      }

      else
      {
        v92 = *&v290[2];
      }

      if (v290[7])
      {
        v93 = 0.0;
      }

      else
      {
        v93 = *(&v290[2] + 1);
      }

      v205 = v93;
      v206 = v92;
      if (v290[7])
      {
        v94 = 0.0;
      }

      else
      {
        v94 = *&v290[3];
      }

      if (v290[7])
      {
        v95 = 0.0;
      }

      else
      {
        v95 = *(&v290[3] + 1);
      }

      v203 = v95;
      v204 = v94;
      if (v290[7])
      {
        v96 = *&v240;
      }

      else
      {
        v96 = *&v290[6];
      }

      if (v290[7])
      {
        v97 = *&v241;
      }

      else
      {
        v97 = *(&v290[6] + 1);
      }

      v208 = v97;
      v209 = v96;
      if (v290[7])
      {
        v98 = 0.0;
      }

      else
      {
        v98 = *(&v290[5] + 1);
      }

      if (v290[7])
      {
        v99 = 0.0;
      }

      else
      {
        v99 = *&v290[5];
      }

      if (v290[7])
      {
        v100 = *&v240;
      }

      else
      {
        v100 = *&v290[4];
      }

      if (v290[7])
      {
        v101 = *&v241;
      }

      else
      {
        v101 = *(&v290[4] + 1);
      }

      if (v290[7])
      {
        v102 = 0.0;
      }

      else
      {
        v102 = *v290;
      }

      if ((v290[7] & 1) == 0)
      {
        v74 = *(v290 + 1);
      }

      if (v71)
      {
        v293.origin.x = v102;
        v293.origin.y = v74;
        v293.size.width = v100;
        v293.size.height = v101;
        v103 = *&v240 - CGRectGetMaxX(v293);
        v99 = v99 + v103 - v102;
        v98 = v98 + v74 - v74;
        v102 = v103;
      }

      v104 = v228;
      v228 = v41;

      LODWORD(v290[0]) = v225;
      *(v290 + 4) = __PAIR64__(v224, v225);
      HIDWORD(v290[0]) = v104;
      *&v105 = v239;
      *(&v105 + 1) = v238;
      v106 = v240;
      *&v107 = v240;
      *(&v107 + 1) = v241;
      v290[1] = v105;
      v290[2] = v107;
      LODWORD(v290[3]) = v57;
      *(&v290[3] + 1) = v85;
      *&v290[4] = v211;
      *(&v290[4] + 1) = v221;
      *&v290[5] = v220;
      *(&v290[5] + 1) = v218;
      *&v290[6] = v217;
      *(&v290[6] + 1) = v216;
      *&v290[7] = v215;
      *(&v290[7] + 1) = v213;
      *&v290[8] = v212;
      *(&v290[8] + 1) = v214;
      *&v290[9] = v219;
      *(&v290[9] + 1) = v223;
      *&v290[10] = v222;
      *(&v290[10] + 1) = v102;
      *&v290[11] = v74;
      *(&v290[11] + 1) = v207;
      *&v290[12] = v91;
      *(&v290[12] + 1) = v206;
      *&v290[13] = v205;
      *(&v290[13] + 1) = v204;
      *&v290[14] = v203;
      *(&v290[14] + 1) = v100;
      *&v290[15] = v101;
      *(&v290[15] + 1) = v99;
      *&v290[16] = v98;
      *(&v290[16] + 1) = v209;
      *&v290[17] = v208;
      *(&v290[17] + 8) = __PAIR128__(v241, v240);
      BYTE8(v290[18]) = v67;
      v244 = *(&v290[15] + 8);
      v249 = *(&v290[6] + 8);
      v250 = *(&v290[7] + 8);
      v251 = *(&v290[8] + 8);
      v252 = *(&v290[9] + 8);
      v246 = *(&v290[3] + 8);
      v247 = *(&v290[4] + 8);
      v248 = *(&v290[5] + 8);
      v289[4] = *(&v290[7] + 8);
      v289[5] = *(&v290[8] + 8);
      v289[6] = *(&v290[9] + 8);
      v289[0] = *(&v290[3] + 8);
      v289[1] = *(&v290[4] + 8);
      v289[2] = *(&v290[5] + 8);
      v289[3] = *(&v290[6] + 8);
      if (v67)
      {
        ScrollGeometry.outsetForAX(limit:)(__PAIR128__(v241, v240));
        v106 = v240;
      }

      v108 = v289[5];
      v109 = v289[6];
      v243 = *&v289[5];
      v289[4] = *(&v290[7] + 8);
      v289[5] = *(&v290[8] + 8);
      v289[6] = *(&v290[9] + 8);
      v289[0] = *(&v290[3] + 8);
      v289[1] = *(&v290[4] + 8);
      v289[2] = *(&v290[5] + 8);
      v289[3] = *(&v290[6] + 8);
      if (v67)
      {
        ScrollGeometry.outsetForAX(limit:)(__PAIR128__(v241, v106));
        v106 = v240;
      }

      v110 = 0;
      v111 = 0;
      v112 = v241;
      v294 = CGRectIntersection(*&v289[5], *(&v106 - 2));
      x = v294.origin.x;
      y = v294.origin.y;
      width = v294.size.width;
      height = v294.size.height;
      OutputValue = AGGraphGetOutputValue();
      if (v229 != v232 || !OutputValue)
      {
        v114 = *(&v290[16] + 8);
        *(v6 + 272) = *(&v290[15] + 8);
        *(v6 + 288) = v114;
        *(v6 + 304) = v108;
        v115 = *(&v290[9] + 8);
        *(v6 + 336) = *(&v290[8] + 8);
        *(v6 + 352) = v115;
        v200 = v108.y;
        v201 = v108.x;
        v198 = v109.height;
        v199 = v109.width;
        *(v6 + 320) = v109;
      }

      if (v226)
      {
        *(v6 + 456) = 0;
        *(v6 + 464) = 0;
        *(v6 + 472) = 1;
      }

      v309.origin.x = 0.0;
      v309.origin.y = 0.0;
      v309.size.width = 0.0;
      v309.size.height = 0.0;
      v295.origin = v108;
      v295.size = v109;
      LOBYTE(v37) = CGRectEqualToRect(v295, v309);
      if (one-time initialization token for v7 == -1)
      {
LABEL_105:
        v116 = static Semantics.v7;
        if (one-time initialization token for forced != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        if (byte_1ED53C51C == 1)
        {
          v117 = dyld_program_sdk_at_least();
          v118 = v233;
          v119 = v227;
          if ((v117 & 1) == 0)
          {
            goto LABEL_109;
          }
        }

        else
        {
          v118 = v233;
          v119 = v227;
          if (static Semantics.forced < v116)
          {
LABEL_109:
            v296.origin.y = v192;
            v296.origin.x = v193;
            v296.size.height = v190;
            v296.size.width = v191;
            if (CGRectIsNull(v296))
            {
              goto LABEL_115;
            }

LABEL_114:
            *&v289[0] = *(v6 + 8);
            if ((AGGraphAnyInputsChanged() & 1) == 0)
            {
              v310.origin.x = 0.0;
              v310.origin.y = 0.0;
              v299.origin.y = v200;
              v299.origin.x = v201;
              v299.size.height = v198;
              v299.size.width = v199;
              v310.size.height = v178;
              v310.size.width = v179;
              v300 = CGRectIntersection(v299, v310);
              v160 = v300.origin.x;
              v161 = v300.origin.y;
              v162 = v300.size.width;
              v163 = v300.size.height;
              LOBYTE(v278) = 2;
              v300.origin.x = x;
              v300.origin.y = y;
              v300.size.width = width;
              v300.size.height = height;
              if (CGRectIsEmpty(v300))
              {
                if (v37)
                {
                  v121 = 0;
                  goto LABEL_124;
                }

                v120 = 1;
LABEL_116:
                v122 = AGGraphGetValue();
                v123 = MEMORY[0x1E69E7CC0];
                ++*(*v122 + 228);
                *&v253[0] = v123;
                v124 = *(MEMORY[0x1E695F050] + 16);
                *(v253 + 8) = *MEMORY[0x1E695F050];
                *(&v253[1] + 8) = v124;
                BYTE8(v253[2]) = 0;
                v254 = 0uLL;
                v255 = 0;
                if (v120)
                {
                  v125 = v180;
                  v180[4] = 0u;
                  v125[5] = 0u;
                  v125[2] = 0u;
                  v125[3] = 0u;
                  *v125 = 0u;
                  v125[1] = 0u;
                  *(*AGGraphGetValue() + 312) = 0;
                }

                else
                {
                  memcpy(v289, v290, 0x129uLL);
                  LazySubviewPlacements.placeSubviews(placementContext:in:nearestVisibleRect:containingVisibleRect:)(v289, v253, &v244, &v243, *&MinY);
                }

                v126 = *(v6 + 96);
                AGGraphGetValue();
                v127 = AGGraphGetCurrentAttribute();
                if (v127 == v189)
                {
                  __break(1u);
                }

                v128 = v127;
                v129 = v255;
                size = v244.size;

                LazyLayoutViewCache.commitPlacedSubviews(from:to:wasCancelled:context:containingSize:)(v126, v253, v129, v128, size.width, size.height);

                if (v120)
                {
                  v289[2] = v253[2];
                  v289[3] = v254;
                  LOBYTE(v289[4]) = v255;
                  v289[0] = v253[0];
                  v289[1] = v253[1];
                  outlined destroy of _LazyLayout_Placements(v289);
                  v131 = v233;
                  v132 = v234;
                }

                else
                {
                  *&v239 = DWORD1(v290[0]);
                  v133 = DWORD2(v290[0]);
                  KeyPath = swift_getKeyPath();
                  LODWORD(v278) = v133;
                  *(&v278 + 1) = KeyPath;
                  _sSay7SwiftUI25_LazyLayout_PlacedSubviewVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentFetch<LazySubviewMinorSizingConfiguration>, &type metadata for LazySubviewMinorSizingConfiguration, type metadata accessor for EnvironmentFetch);
                  Hasher.init(_seed:)();
                  Hasher._combine(_:)(v133);
                  *&v268[0] = KeyPath;
                  type metadata accessor for KeyPath<EnvironmentValues, LazySubviewMinorSizingConfiguration>(0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, LazySubviewMinorSizingConfiguration>, &type metadata for EnvironmentValues, &type metadata for LazySubviewMinorSizingConfiguration, MEMORY[0x1E69E77A8]);

                  dispatch thunk of Hashable.hash(into:)();
                  Hasher._finalize()();
                  lazy protocol witness table accessor for type EnvironmentFetch<LazySubviewMinorSizingConfiguration> and conformance EnvironmentFetch<A>(&lazy protocol witness table cache variable for type EnvironmentFetch<LazySubviewMinorSizingConfiguration> and conformance EnvironmentFetch<A>, protocol conformance descriptor for EnvironmentFetch<A>);
                  lazy protocol witness table accessor for type EnvironmentFetch<LazySubviewMinorSizingConfiguration> and conformance EnvironmentFetch<A>(&lazy protocol witness table cache variable for type EnvironmentFetch<LazySubviewMinorSizingConfiguration> and conformance EnvironmentFetch<A>, protocol conformance descriptor for EnvironmentFetch<A>);
                  LOBYTE(v289[0]) = 0;
                  v135 = static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();
                  v136 = *(v135 + 8);
                  v137 = *v135;

                  v131 = v233;
                  v138 = v234;
                  (*(v234 + 32))(v289, v233, v234);
                  LOWORD(v278) = v289[0];
                  SizingState.prepare(minorSizing:properties:viewSize:)(v137, v136, &v278, *&v240, *&v241);

                  v280 = v253[2];
                  v281 = v254;
                  LOBYTE(v282) = v255;
                  v278 = v253[0];
                  v279 = v253[1];
                  LODWORD(v268[0]) = v202;
                  v132 = v138;
                  PlacementState.update(placements:visibleRect:pinnedSubviews:sizingState:)(&v278, v268, x, y, width, height);
                  v289[2] = v280;
                  v289[3] = v281;
                  LOBYTE(v289[4]) = v282;
                  v289[0] = v278;
                  v289[1] = v279;
                  outlined destroy of _LazyLayout_Placements(v289);
                }

                v139 = *(v6 + 408);
                v140 = *(v6 + 376);
                v275 = *(v6 + 392);
                v276 = v139;
                v141 = *(v6 + 408);
                v277[0] = *(v6 + 424);
                *(v277 + 9) = *(v6 + 433);
                v142 = *(v6 + 344);
                v143 = *(v6 + 312);
                v271 = *(v6 + 328);
                v272 = v142;
                v144 = *(v6 + 344);
                v145 = *(v6 + 376);
                v273 = *(v6 + 360);
                v274 = v145;
                v146 = *(v6 + 280);
                v268[0] = *(v6 + 264);
                v268[1] = v146;
                v147 = *(v6 + 312);
                v149 = *(v6 + 264);
                v148 = *(v6 + 280);
                v269 = *(v6 + 296);
                v270 = v147;
                v264 = v275;
                v265 = v141;
                v266[0] = *(v6 + 424);
                *(v266 + 9) = *(v6 + 433);
                v260 = v271;
                v261 = v144;
                v262 = v273;
                v263 = v140;
                v256 = v149;
                v257 = v148;
                v258 = v269;
                v259 = v143;
                v150 = *(v6 + 96);
                memcpy(v289, v290, 0x129uLL);
                outlined init with copy of PositionState(v268, &v278);
                v151 = AGGraphGetValue();
                v152 = v188;
                v185(v188, v151, v131);
                PositionState.mainID<A>(subviews:context:layout:)(v150, v289, v131, v132, v267);
                v187(v152, v131);
                v286 = v264;
                v287 = v265;
                v288[0] = v266[0];
                *(v288 + 9) = *(v266 + 9);
                v282 = v260;
                v283 = v261;
                v284 = v262;
                v285 = v263;
                v278 = v256;
                v279 = v257;
                v280 = v258;
                v281 = v259;
                outlined destroy of PositionState(&v278);
                v153 = v267[0];
                v154 = v267[1];

                *(v6 + 416) = v153;
                *(v6 + 424) = v154;
                v119 = *(v6 + 96);
                v155 = *(v6 + 112);
                v240 = *(v6 + 128);
                v241 = v155;
                v156 = *AGGraphGetValue();
                v157 = v241;
                *(v156 + 248) = v240;
                *(v156 + 232) = v157;
                v121 = 1;
                v118 = v131;
                goto LABEL_124;
              }

              if ((specialized getter of needsToPlace #1 in LazySubviewPlacements.updateValue()(&v278, v6, v118, v234, x, y, width, height, v160, v161, v162, v163) & 1) == 0)
              {
                v301.origin.x = x;
                v301.origin.y = y;
                v301.size.width = width;
                v301.size.height = height;
                *&v241 = CGRectGetMinX(v301);
                v165 = v183;
                v164 = v184;
                v302.origin.x = v184;
                v302.origin.y = v183;
                v167 = v181;
                v166 = v182;
                v302.size.width = v182;
                v302.size.height = v181;
                *&v240 = CGRectGetMinX(v302);
                v303.origin.x = v164;
                v303.origin.y = v165;
                v303.size.width = v166;
                v303.size.height = v167;
                *&v239 = CGRectGetMaxX(v303);
                v304.origin.x = x;
                v304.origin.y = y;
                v304.size.width = width;
                v304.size.height = height;
                MaxX = CGRectGetMaxX(v304);
                v305.origin.x = x;
                v305.origin.y = y;
                v305.size.width = width;
                v305.size.height = height;
                *&v238 = CGRectGetMinY(v305);
                v306.origin.x = v164;
                v306.origin.y = v165;
                v306.size.width = v166;
                v306.size.height = v167;
                MinY = CGRectGetMinY(v306);
                v307.origin.x = v164;
                v307.origin.y = v165;
                v307.size.width = v166;
                v307.size.height = v167;
                MaxY = CGRectGetMaxY(v307);
                v308.origin.x = x;
                v308.origin.y = y;
                v308.size.width = width;
                v308.size.height = height;
                v169 = CGRectGetMaxY(v308);
                v170 = *(v6 + 96);
                v171 = *(**AGGraphGetValue() + 360);

                v173 = v171(v172);

                if (v173)
                {
                  v174 = height / 3.0;
                  if (*&v239 - MaxX < width / 3.0)
                  {
                    v175 = (2 * (*&v241 - *&v240 < width / 3.0)) | 8;
                  }

                  else
                  {
                    v175 = 2 * (*&v241 - *&v240 < width / 3.0);
                  }

                  if (*&v238 - MinY < v174)
                  {
                    ++v175;
                  }

                  if (MaxY - v169 < v174)
                  {
                    v176 = v175 | 4;
                  }

                  else
                  {
                    v176 = v175;
                  }

                  v119 = *(v6 + 96);
                  v121 = 0;
                  *(*AGGraphGetValue() + 312) = v176;
                  v118 = v233;
                }

                else
                {
                  v121 = 0;
                  v118 = v233;
                  v119 = v170;
                }

LABEL_124:
                *&v278 = v119;

                if (*(*AGGraphGetValue() + 341) == 1 && ((*(v234 + 32))(v289, v118, v234), v158 = LOBYTE(v289[0]), LOBYTE(v289[0])) && v202)
                {
                  v159 = LOBYTE(v289[0]) & (v202 << 30 >> 31);
                  v289[4] = v250;
                  v289[5] = v251;
                  v289[6] = v252;
                  v289[0] = v246;
                  v289[1] = v247;
                  v289[2] = v248;
                  v289[3] = v249;
                  Array<A>.pinSectionHeadersAndFooters(in:headerAxes:footerAxes:)(v289, (v202 << 31 >> 31) & v158, v159);
                  AGGraphGetValue();

                  LazyLayoutViewCache.updatePrefetchPhases()();
                }

                else
                {
                  AGGraphGetValue();

                  LazyLayoutViewCache.updatePrefetchPhases()();

                  if ((v121 & 1) == 0 && AGGraphGetOutputValue())
                  {
                    goto LABEL_131;
                  }
                }

                *&v289[0] = v278;
                AGGraphSetOutputValue();
LABEL_131:

                $defer #1 <A>() in LazySubviewPlacements.updateValue()(v6, &v244, &v243, v290);

                return;
              }
            }

LABEL_115:
            v120 = 0;
            v121 = 0;
            if (v37)
            {
              goto LABEL_124;
            }

            goto LABEL_116;
          }
        }

        v297.origin.y = v196;
        v297.origin.x = v197;
        v297.size.height = v194;
        v297.size.width = v195;
        if (CGRectIsNull(v297))
        {
          goto LABEL_115;
        }

        v298.origin.y = v183;
        v298.origin.x = v184;
        v298.size.height = v181;
        v298.size.width = v182;
        if (CGRectIsNull(v298))
        {
          goto LABEL_115;
        }

        goto LABEL_114;
      }
    }

    swift_once();
    goto LABEL_105;
  }

  AGGraphCancelUpdate();
}

void LazySubviewPlacements.makeIDPlacementContextIfNeeded(_:)(__int128 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a1[1];
  v46 = *a1;
  v47 = v6;
  v7 = *(a1 + 4);
  v8 = *(a1 + 5);
  v9 = a1[16];
  v43 = a1[15];
  v44 = v9;
  v45[0] = a1[17];
  *(v45 + 9) = *(a1 + 281);
  v10 = a1[12];
  v39 = a1[11];
  v40 = v10;
  v11 = a1[14];
  v41 = a1[13];
  v42 = v11;
  v12 = a1[8];
  v35 = a1[7];
  v36 = v12;
  v13 = a1[10];
  v37 = a1[9];
  v38 = v13;
  v14 = a1[4];
  v31 = a1[3];
  v32 = v14;
  v15 = a1[6];
  v33 = a1[5];
  v34 = v15;
  v16 = *(v3 + 48);
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ContentScrollPositionKey);
  v17 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE021ContentScrollPositionV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(v16, *&__src[0]);
  if (!v17)
  {
    goto LABEL_4;
  }

  if (*(v17 + 76) == 255)
  {
    goto LABEL_4;
  }

  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v16) == *MEMORY[0x1E698D3F8])
  {
    goto LABEL_4;
  }

  _sSay7SwiftUI25_LazyLayout_PlacedSubviewVGMaTm_0(0, &lazy cache variable for type metadata for ScrollTargetRole.Role?, &type metadata for ScrollTargetRole.Role, MEMORY[0x1E69E6720]);
  v18 = *AGGraphGetValue();
  if ((v18 & 0xFE) == 2 || (v18 & 1) != 0 || v7 == 0.0 || v8 == 0.0)
  {
    goto LABEL_4;
  }

  v19 = *(v3 + 96);
  if (!*(v19 + 16))
  {
    type metadata accessor for LazyLayoutViewCache();
    AGGraphGetValue();
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);

    Value = AGGraphGetValue();
    outlined init with copy of AnyTrackedValue(Value, __src);

    v24 = *(&__src[1] + 1);
    v25 = *&__src[2];
    __swift_project_boxed_opaque_existential_1(__src, *(&__src[1] + 1));
    v26 = (*(v25 + 40))(v24, v25);
    if (v26)
    {
      v27 = v26;
      if ((*(*v26 + 88))(v26))
      {
        (*(*v27 + 96))(&v28, 0);

        v22 = v28;
        v21 = v29;
        __swift_destroy_boxed_opaque_existential_1(__src);
        goto LABEL_11;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(__src);
LABEL_4:
    _s7SwiftUI28_LazyLayout_PlacementContextVSgWOi0_(__src);
    memcpy(a3, __src, 0x129uLL);
    return;
  }

  v20 = *(v19 + 32);
  v22 = *(v20 + 144);
  v21 = *(v20 + 152);

LABEL_11:
  __src[0] = v46;
  __src[1] = v47;
  *&__src[2] = v7;
  *(&__src[2] + 1) = v8;
  *(&__src[17] + 9) = *(v45 + 9);
  __src[15] = v43;
  __src[16] = v44;
  __src[17] = v45[0];
  __src[11] = v39;
  __src[12] = v40;
  __src[13] = v41;
  __src[14] = v42;
  __src[7] = v35;
  __src[8] = v36;
  __src[9] = v37;
  __src[10] = v38;
  __src[3] = v31;
  __src[4] = v32;
  __src[5] = v33;
  __src[6] = v34;
  v28 = v22;
  v29 = v21;
  LazySubviewPlacements.makeIDPlacementContextIfNeeded(_:matchingID:)(__src, &v28, a2, a3);
}

uint64_t closure #1 in LazySubviewPlacements.placeSubviews(placementContext:in:nearestVisibleRect:containingVisibleRect:)(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a4;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v16 = *(type metadata accessor for LazySubviewPlacements(0, v14, v15, v13) + 16);
  Value = AGGraphGetValue();
  (*(*(v16 - 8) + 16))(v12, Value, v16);
  type metadata accessor for LazyLayoutViewCache();
  AGGraphGetValue();
  result = AGGraphGetCurrentAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v19 = result;

    LazyLayoutViewCache.subviews(context:)(v19, v22);

    memcpy(v21, a3, 0x129uLL);
    (*(a6 + 64))(v22, v21, a1, v20, a5, a6);
    outlined destroy of _LazyLayout_Subviews(v22);
    return (*(v10 + 8))(v12, a5);
  }

  return result;
}

uint64_t type metadata completion function for StackPlacement(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for MinorProperties(319, result, *(a1 + 24), v3);
    if (v5 <= 0x3F)
    {
      result = type metadata accessor for EstimationCache(319);
      if (v6 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

char *initializeWithCopy for EstimationCache(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  v6 = *(a3 + 24);
  v7 = type metadata accessor for IndexSet();
  v8 = *(*(v7 - 8) + 16);

  v8(&a1[v6], &a2[v6], v7);
  return a1;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI19_LazyLayout_SubviewV_Tt1g5(uint64_t a1, uint64_t a2)
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

  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_LazyLayout_Subview>, &type metadata for _LazyLayout_Subview);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4924924924924925) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 5) + (v7 >> 63));
  return result;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(double *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  while (v10)
  {
LABEL_11:
    v17 = (v12 << 9) | (8 * __clz(__rbit64(v10)));
    v18 = *(*(a1 + 48) + v17);
    v19 = *(*(a1 + 56) + v17);
    v36[0] = v18;
    v36[1] = v19;
    a2(v35, v36);
    v20 = v35[0];
    v21 = v35[1];
    v22 = *a5;
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(v35[0]);
    v25 = v22[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      goto LABEL_23;
    }

    v29 = v24;
    if (v22[3] >= v28)
    {
      if ((a4 & 1) == 0)
      {
        v32 = v23;
        specialized _NativeDictionary.copy()();
        v23 = v32;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v28, a4 & 1);
      v23 = specialized __RawDictionaryStorage.find<A>(_:)(v20);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_26;
      }
    }

    v31 = *a5;
    if (v29)
    {
      v13 = (v31[7] + 8 * v23);
      v15 = *v13 + *&v21;
      if (__OFADD__(*v13, *&v21))
      {
        goto LABEL_24;
      }
    }

    else
    {
      v31[(v23 >> 6) + 8] |= 1 << v23;
      *(v31[6] + 8 * v23) = v20;
      *(v31[7] + 8 * v23) = v21;
      v14 = v31[2];
      v13 = v31 + 2;
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_25;
      }
    }

    v10 &= v10 - 1;
    *v13 = v15;
    a4 = 1;
  }

  while (1)
  {
    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v16 >= v11)
    {

      return;
    }

    v10 = *(v7 + 8 * v16);
    ++v12;
    if (v10)
    {
      v12 = v16;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  sub_18D3ACF34(a1, a2, a3, a4, a5);
}

void type metadata accessor for Logger?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Logger?)
  {
    type metadata accessor for Logger();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Logger?);
    }
  }
}

uint64_t outlined destroy of EstimationCache(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void lazy protocol witness table accessor for type EnvironmentFetch<CGFloat> and conformance EnvironmentFetch<A>(unint64_t *a1, const char *a2)
{
  if (!*a1)
  {
    type metadata accessor for [_LazyLayout_Subview](255, &lazy cache variable for type metadata for EnvironmentFetch<CGFloat>, MEMORY[0x1E69E7DE0], type metadata accessor for EnvironmentFetch);
    swift_getWitnessTable(a2, v4);
    atomic_store(v5, a1);
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE022LazySubviewMinorSizingV033_0B6308C3BA3B00B5060A0BAAE3782C53LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE022LazySubviewMinorSizingV033_0B6308C3BA3B00B5060A0BAAE3782C53LLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LazySubviewMinorSizingKey>, &type metadata for EnvironmentValues.LazySubviewMinorSizingKey, &protocol witness table for EnvironmentValues.LazySubviewMinorSizingKey, type metadata accessor for EnvironmentPropertyKey);
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

void PlacementState.update(placements:visibleRect:pinnedSubviews:sizingState:)(uint64_t *a1, int *a2, CGFloat a3, CGFloat a4, double a5, double a6)
{
  v7 = v6;
  r2.origin.x = a3;
  v10 = *a1;
  v118 = a1[2];
  v119 = a1[1];
  v116 = a1[4];
  v117 = a1[3];
  v135 = *(a1 + 64);
  v128 = *a2;

  *v6 = v10;
  v11 = *(v10 + 16);
  v12 = (v6 + 1);
  v13 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v13 + 3) >> 1)
  {
    if (*(v13 + 2) <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = *(v13 + 2);
    }

    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v15, 0, v13);
  }

  *v12 = v13;
  v16 = *(v10 + 16);
  x = r2.origin.x;
  if (v16 - *(v13 + 2) < 0)
  {
    specialized RangeReplaceableCollection<>.removeLast(_:)(*(v13 + 2) - v16);
    x = r2.origin.x;
    v16 = *(v10 + 16);
  }

  v19 = *MEMORY[0x1E695F050];
  v18 = *(MEMORY[0x1E695F050] + 8);
  v20 = *(MEMORY[0x1E695F050] + 16);
  v21 = *(MEMORY[0x1E695F050] + 24);
  if (v16)
  {
    v115 = v7;
    v22 = 0;
    v23 = (v10 + 32);
    v114 = (v7 + 1);
    v24 = *v12;
    v132 = v16 - 1;
    v142 = *MEMORY[0x1E698D3F8];
    v122 = *(MEMORY[0x1E695F050] + 8);
    v123 = *MEMORY[0x1E695F050];
    v25 = *MEMORY[0x1E695F050];
    v26 = v122;
    v120 = *(MEMORY[0x1E695F050] + 24);
    v121 = *(MEMORY[0x1E695F050] + 16);
    v27 = v121;
    v28 = v120;
    v127 = x;
    v125 = a5;
    y = a4;
    height = a6;
    v143 = a6;
    v130 = a5;
    while (1)
    {
      v146 = *v23;
      v29 = v23[1];
      v30 = v23[2];
      v31 = v23[4];
      v149 = v23[3];
      v150 = v31;
      v147 = v29;
      v148 = v30;
      v32 = v146;
      v138 = v27;
      v140 = v28;
      v136 = v25;
      if (*(v146 + 44) == v142)
      {
        outlined init with copy of _LazyLayout_PlacedSubview(&v146, &r2.origin.y);
        Value = &static LayoutComputer.defaultValue;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
          Value = &static LayoutComputer.defaultValue;
        }
      }

      else
      {
        outlined init with copy of _LazyLayout_PlacedSubview(&v146, &r2.origin.y);
        Value = AGGraphGetValue();
      }

      v34 = *Value;
      v35 = *(&v146 + 1);
      v36 = v147;
      v37 = *(&v147 + 1);
      v38 = v148;
      v39 = *(&v148 + 1);
      v41 = v149;
      v40 = *&v150;
      v42 = one-time initialization token for lockAssertionsAreEnabled;

      if (v42 != -1)
      {
        swift_once();
      }

      v43 = lockAssertionsAreEnabled;
      if (lockAssertionsAreEnabled)
      {
        if (one-time initialization token for _lock != -1)
        {
          swift_once();
        }

        if (!_MovableLockIsOwner(static Update._lock))
        {
LABEL_103:
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return;
        }
      }

      r2.origin.y = v35;
      LOBYTE(r2.size.width) = v36;
      r2.size.height = v37;
      v145 = v38;
      v44 = (*(*v34 + 120))(&r2.origin.y);
      v46 = v45;

      if (*(v32 + 44) == v142)
      {
        v47 = &static LayoutComputer.defaultValue;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
          v47 = &static LayoutComputer.defaultValue;
        }
      }

      else
      {
        v47 = AGGraphGetValue();
      }

      v48 = *v47;
      if (v43)
      {
        v49 = one-time initialization token for _lock;

        if (v49 != -1)
        {
          swift_once();
        }

        if (!_MovableLockIsOwner(static Update._lock))
        {
          goto LABEL_103;
        }
      }

      else
      {
      }

      v50 = *(&v41 + 1) - v39 * v44;
      v51 = v40 - *&v41 * v46;
      r2.origin.y = v35;
      LOBYTE(r2.size.width) = v36;
      r2.size.height = v37;
      v145 = v38;
      v52 = (*(*v48 + 120))(&r2.origin.y);
      v54 = v53;

      SizingState.update(subviewFrame:)(v50, v51, v52, v54);
      v55 = *(v24 + 2);
      v56 = swift_isUniquelyReferenced_nonNull_native();
      if (v22 >= v55)
      {
        v57 = v143;
        v27 = v138;
        v58 = v140;
        if ((v56 & 1) == 0)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v55 + 1, 1, v24);
        }

        v59 = *(v24 + 2);
        v60 = *(v24 + 3);
        if (v59 >= v60 >> 1)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v59 + 1, 1, v24);
        }

        *(v24 + 2) = v59 + 1;
      }

      else
      {
        v57 = v143;
        v27 = v138;
        v58 = v140;
        if (v56)
        {
          if ((v22 & 0x8000000000000000) != 0)
          {
            goto LABEL_101;
          }
        }

        else
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
          if ((v22 & 0x8000000000000000) != 0)
          {
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
            goto LABEL_103;
          }
        }

        v59 = v22;
        if (v22 >= *(v24 + 2))
        {
          goto LABEL_102;
        }
      }

      v61 = &v24[32 * v59];
      v61[4] = v50;
      v61[5] = v51;
      v61[6] = v52;
      v61[7] = v54;
      v62 = v135;
      if (v52 == 0.0)
      {
        v62 = 1;
      }

      if ((v62 & 1) != 0 || v54 == 0.0)
      {
LABEL_53:
        v63 = v136;
        goto LABEL_92;
      }

      if (*(v32 + 173))
      {
        if (*(v32 + 174))
        {
          if ((v128 & 3) == 0)
          {
            goto LABEL_54;
          }
        }

        else if ((v128 & 1) == 0)
        {
          goto LABEL_54;
        }
      }

      else if ((*(v32 + 174) & ((v128 & 2) >> 1) & 1) == 0)
      {
        goto LABEL_54;
      }

      v151.origin.x = v50;
      v151.origin.y = v51;
      v151.size.width = v52;
      v151.size.height = v54;
      v178.origin.x = r2.origin.x;
      v178.size.width = v130;
      v178.origin.y = a4;
      v178.size.height = v57;
      v152 = CGRectIntersection(v151, v178);
      if (CGRectIsEmpty(v152))
      {
        goto LABEL_53;
      }

LABEL_54:
      v153.origin.x = v136;
      v153.origin.y = v26;
      v153.size.width = v27;
      v153.size.height = v58;
      IsNull = CGRectIsNull(v153);
      v65 = v50;
      v133 = v52;
      v134 = v51;
      v129 = v54;
      if (!IsNull)
      {
        v154.origin.x = v136;
        v154.origin.y = v26;
        v154.size.width = v27;
        v154.size.height = v58;
        v179.origin.x = v50;
        v179.origin.y = v51;
        v179.size.width = v52;
        v179.size.height = v54;
        *&v65 = CGRectUnion(v154, v179);
        v133 = v67;
        v134 = v66;
        v129 = v68;
      }

      v137 = v65;
      v155.origin.x = r2.origin.x;
      v155.origin.y = a4;
      v155.size.width = v130;
      v155.size.height = v143;
      MaxY = CGRectGetMaxY(v155);
      v156.origin.x = v50;
      v156.origin.y = v51;
      v156.size.width = v52;
      v156.size.height = v54;
      v139 = 0.0;
      v141 = 0.0;
      if (MaxY <= CGRectGetMaxY(v156))
      {
        v157.origin.x = r2.origin.x;
        v157.origin.y = a4;
        v157.size.width = v130;
        v157.size.height = v143;
        v70 = CGRectGetMaxY(v157);
        v158.origin.x = v50;
        v158.origin.y = v51;
        v158.size.width = v52;
        v158.size.height = v54;
        v141 = v70 - CGRectGetMinY(v158);
      }

      v159.origin.x = r2.origin.x;
      v159.origin.y = a4;
      v159.size.width = v130;
      v159.size.height = v143;
      MaxX = CGRectGetMaxX(v159);
      v160.origin.x = v50;
      v160.origin.y = v51;
      v160.size.width = v52;
      v160.size.height = v54;
      if (MaxX <= CGRectGetMaxX(v160))
      {
        v161.origin.x = r2.origin.x;
        v161.origin.y = a4;
        v161.size.width = v130;
        v161.size.height = v143;
        v72 = CGRectGetMaxX(v161);
        v162.origin.x = v50;
        v162.origin.y = v51;
        v162.size.width = v52;
        v162.size.height = v54;
        v139 = v72 - CGRectGetMinX(v162);
      }

      v163.origin.x = r2.origin.x;
      v163.origin.y = a4;
      v163.size.width = v130;
      v163.size.height = v143;
      MinY = CGRectGetMinY(v163);
      v164.origin.x = v50;
      v164.origin.y = v51;
      v164.size.width = v52;
      v164.size.height = v54;
      v74 = 0.0;
      if (CGRectGetMinY(v164) <= MinY)
      {
        v165.origin.x = v50;
        v165.origin.y = v51;
        v165.size.width = v52;
        v165.size.height = v54;
        v75 = CGRectGetMaxY(v165);
        v166.size.height = v143;
        v166.origin.x = r2.origin.x;
        v166.origin.y = a4;
        v166.size.width = v130;
        v74 = v75 - CGRectGetMinY(v166);
      }

      v167.size.height = v143;
      v167.origin.x = r2.origin.x;
      v167.origin.y = a4;
      v167.size.width = v130;
      MinX = CGRectGetMinX(v167);
      v168.origin.x = v50;
      v168.origin.y = v51;
      v168.size.width = v52;
      v168.size.height = v54;
      if (CGRectGetMinX(v168) <= MinX)
      {
        v169.origin.x = v50;
        v169.origin.y = v51;
        v169.size.width = v52;
        v169.size.height = v54;
        v81 = CGRectGetMaxX(v169);
        v170.size.height = v143;
        v170.origin.x = r2.origin.x;
        v170.origin.y = a4;
        v170.size.width = v130;
        v77 = v81 - CGRectGetMinX(v170);
        v78 = v74;
        if (v74 != 0.0)
        {
          v82 = r2.origin.x;
          v80 = v139;
          v83 = v141;
LABEL_73:
          v85 = v130;
          v84 = a4;
          v86 = a4;
          v87 = v130;
          v88 = v143;
          v89 = v143;
          v90 = v82;
          v91 = CGRectIsNull(*&v82);
          v92 = v90;
          if (!v91)
          {
            v171.size.height = v143;
            v171.origin.x = r2.origin.x;
            v171.size.width = v130;
            v171.origin.y = a4;
            v172 = CGRectStandardize(v171);
            v93 = v77 == v80 ? v80 : v77;
            v94 = v93 + v172.origin.x;
            v95 = v78;
            v96 = v78 + v172.origin.y;
            v97 = v172.size.width - (v80 + v77);
            v98 = v172.size.height - (v83 + v95);
            v173.origin.x = v94;
            v173.origin.y = v96;
            v173.size.width = v97;
            v173.size.height = v98;
            Width = CGRectGetWidth(v173);
            v84 = v122;
            v92 = v123;
            v88 = v120;
            v85 = v121;
            if (Width >= 0.0)
            {
              v174.origin.x = v94;
              v174.origin.y = v96;
              v174.size.width = v97;
              v174.size.height = v98;
              v100 = CGRectGetHeight(v174) < 0.0;
              if (v100)
              {
                v92 = v123;
              }

              else
              {
                v92 = v94;
              }

              if (v100)
              {
                v84 = v122;
              }

              else
              {
                v84 = v96;
              }

              if (v100)
              {
                v85 = v121;
              }

              else
              {
                v85 = v97;
              }

              if (v100)
              {
                v88 = v120;
              }

              else
              {
                v88 = v98;
              }
            }
          }

          v175.origin.y = y;
          v175.origin.x = v127;
          v175.size.height = height;
          v175.size.width = v125;
          v101 = v84;
          v102 = v85;
          v103 = v88;
          v176 = CGRectIntersection(v175, *&v92);
          y = v176.origin.y;
          v127 = v176.origin.x;
          height = v176.size.height;
          v125 = v176.size.width;
          v63 = v137;
          v27 = v133;
          v26 = v134;
          goto LABEL_91;
        }

        v27 = v133;
        v26 = v134;
        v80 = v139;
        v83 = v141;
        if (v77 != 0.0)
        {
          v82 = r2.origin.x;
          goto LABEL_73;
        }
      }

      else
      {
        v77 = 0.0;
        v78 = v74;
        v79 = v74 == 0.0;
        v27 = v133;
        v26 = v134;
        v80 = v139;
        if (!v79)
        {
          v82 = r2.origin.x;
          v83 = v141;
          goto LABEL_73;
        }

        v83 = v141;
      }

      v82 = r2.origin.x;
      if (v83 != 0.0 || v80 != 0.0)
      {
        goto LABEL_73;
      }

      v63 = v137;
LABEL_91:
      v58 = v129;
LABEL_92:
      outlined destroy of _LazyLayout_PlacedSubview(&v146);
      if (v132 == v22)
      {
        v104 = v58;
        v105 = v63;
        v7 = v115;
        *v114 = v24;
        v18 = v122;
        v19 = v123;
        v21 = v120;
        v20 = v121;
        goto LABEL_98;
      }

      v23 += 5;
      ++v22;
      v25 = v63;
      v28 = v58;
    }
  }

  v105 = *MEMORY[0x1E695F050];
  v26 = *(MEMORY[0x1E695F050] + 8);
  v27 = *(MEMORY[0x1E695F050] + 16);
  v104 = *(MEMORY[0x1E695F050] + 24);
  v127 = x;
  v125 = a5;
  y = a4;
  height = a6;
LABEL_98:
  v106 = v19;
  v107 = v19;
  v108 = v18;
  v109 = v20;
  v110 = v21;
  v111 = *&v18;
  v112 = *&v20;
  v113 = *&v21;
  if ((v135 & 1) == 0)
  {
    v177.origin.y = y;
    v177.origin.x = v127;
    v177.size.height = height;
    v177.size.width = v125;
    v106 = v105;
    v180.origin.x = v105;
    v180.origin.y = v26;
    v180.size.width = v27;
    v110 = v104;
    v180.size.height = v104;
    *(&v18 - 1) = CGRectIntersection(v177, v180);
    v108 = v26;
    v109 = v27;
    v111 = v118;
    v19 = *&v119;
    v113 = v116;
    v112 = v117;
  }

  *(v7 + 6) = v107;
  *(v7 + 7) = v18;
  *(v7 + 8) = v20;
  *(v7 + 9) = v21;
  *(v7 + 2) = v106;
  *(v7 + 3) = v108;
  *(v7 + 4) = v109;
  *(v7 + 5) = v110;
  *(v7 + 10) = v19;
  v7[11] = v111;
  v7[12] = v112;
  v7[13] = v113;
}

uint64_t LazyLayoutViewCache.ensureRemoved(item:)(uint64_t result)
{
  v2 = *(result + 386);
  if (v2 != 2 && (v2 & 1) == 0)
  {
    v4 = result;
    (*(*v1 + 432))(partial apply for implicit closure #2 in LazyLayoutViewCache.ensureRemoved(item:), result);
    swift_beginAccess();
    if (static ReuseTrace.recorder)
    {
      AGGraphAddTraceEvent();
    }

    AGSubgraphApply();
    result = AGSubgraphRemoveChild();
    *(v4 + 386) = 1;
  }

  return result;
}

double _s7SwiftUI28_LazyLayout_PlacementContextVSgWOi0_(uint64_t a1)
{
  *(a1 + 288) = 0;
  result = 0.0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 296) = 2;
  return result;
}

void LazyStack<>.place(subviews:context:cache:in:)(void *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, int *a6)
{
  v179 = a4;
  v191 = a3;
  v189 = a1;
  v9 = type metadata accessor for MinorProperties(0, a5, a6, a4);
  v183 = *(v9 - 8);
  v184 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v182 = (&v164 - v10);
  v12 = type metadata accessor for StackPlacement(0, a5, a6, v11);
  v193 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v185 = &v164 - v13;
  v15 = type metadata accessor for PlacementProperties(255, a5, a6, v14);
  v192 = v12;
  v178 = v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = type metadata accessor for Optional();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v164 - v19;
  v186 = TupleTypeMetadata2;
  v188 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v164 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v187 = &v164 - v25;
  memcpy(v195, a2, 0x129uLL);
  v26 = *(a6 + 4);
  v190 = a6;
  v174 = v26(a5, a6);
  v27 = *(a2 + 104);
  v28 = *(a2 + 136);
  v194[4] = *(a2 + 120);
  v194[5] = v28;
  v194[6] = *(a2 + 152);
  v29 = *(a2 + 72);
  v194[0] = *(a2 + 56);
  v194[1] = v29;
  v194[2] = *(a2 + 88);
  v194[3] = v27;
  if (v195[37])
  {
    ScrollGeometry.outsetForAX(limit:)(*&v195[35]);
  }

  v30 = v194[5];
  v32 = *(&v194[6] + 1);
  v31 = *&v194[6];
  memcpy(v194, v195, 0x129uLL);
  LazyStack<>.resolvedPlacerProperties(subviews:context:cache:)(v189, v194, v191, a5, v190, v20);
  v33 = v188;
  v34 = v186;
  if ((*(v188 + 48))(v20, 1, v186) == 1)
  {
    (*(v18 + 8))(v20, v17);
    return;
  }

  v35 = v187;
  (*(v33 + 32))(v187, v20, v34);
  v37 = v33 + 16;
  v36 = *(v33 + 16);
  v36(v23, v35, v34);
  v38 = v36;
  v180 = v36;
  v39 = v34;
  v40 = *(v34 + 48);
  (*(v193 + 32))(v185, v23, v192);
  v41 = v178;
  v42 = (*(v178 - 1) + 8);
  v43 = *v42;
  v175 = a5;
  v44 = v42;
  (v43)(&v23[v40], v178);
  v38(v23, v35, v39);
  v45 = *(v39 + 48);
  v170 = *(v183 + 16);
  v171 = v183 + 16;
  v170(v182, &v23[v45], v184);
  v46 = &v23[v45];
  v47 = v192;
  v176 = v44;
  (v43)(v46, v41);
  v181 = v43;
  v177 = *(v193 + 8);
  v193 += 8;
  v177(v23, v47);
  v48 = v35;
  v49 = v35;
  v50 = v180;
  v180(v23, v49, v39);
  v51 = &v23[*(v39 + 48) + v41[9]];
  v52 = *v51;
  v53 = *(v51 + 1);
  v43();
  v54 = v177;
  v177(v23, v47);
  v50(v23, v48, v39);
  v172 = v23[*(v39 + 48) + v41[10]];
  v181();
  v54(v23, v47);
  v55 = v187;
  v173 = v37;
  v180(v23, v187, v39);
  v169 = v23[*(v39 + 48) + v41[11]];
  v181();
  v56 = v192;
  v54(v23, v192);
  memcpy(v194, v195, 0x129uLL);
  v57 = v189;
  v58 = v185;
  v59 = specialized LazyStack<>.resolveIndexAndPosition(subviews:context:cache:placer:properties:)(v189, v194, v191, v185, &v55[*(v39 + 48)], v175, v190);
  if (v61)
  {
    (*(v183 + 8))(v182, v184);
    v54(v58, v56);
    (*(v188 + 8))(v55, v39);
    return;
  }

  v62 = v59;
  v63 = v57;
  v64 = v182;
  v168 = *v182;
  v65 = 2 * v168;
  *&v194[0] = 2 * v168;
  v66 = StackPlacement.place(subviews:from:position:stopping:style:)(v60, v63, v62, 0, 1, v194, v56);
  if (AGGraphHasDeadlinePassed())
  {
    AGGraphCancelUpdate();
    goto LABEL_9;
  }

  if (*(v58 + *(v56 + 100)) == 1)
  {
LABEL_9:
    (*(v183 + 8))(v64, v184);
    v177(v58, v56);
    (*(v188 + 8))(v187, v186);
    *(v179 + 64) = 1;
    return;
  }

  v167 = v66;
  v164 = v65;
  v67 = *(v58 + *(v56 + 84));
  v68 = v179;

  v165 = v67;
  *v68 = v67;
  v166 = v174 & 1;
  v196.origin = v30;
  v196.size.width = v31;
  v196.size.height = v32;
  CGRectIsNull(v196);
  v197.origin.x = StackPlacement.placedBounds(minorAxis:)(v192);
  v198.origin = v30;
  v198.size.width = v31;
  v198.size.height = v32;
  *(v179 + 8) = CGRectUnion(v197, v198);
  v69 = v184;
  v70 = type metadata accessor for Optional();
  v71 = v191;
  (*(*(v70 - 8) + 8))(v191, v70);
  v72 = v186;
  v73 = v187;
  v74 = v180;
  v180(v23, v187, v186);
  v75 = *(v72 + 48);
  v170(v71, &v23[v75], v69);
  v76 = &v23[v75];
  v77 = v192;
  v78 = v178;
  (v181)(v76, v178);
  (*(v183 + 56))(v71, 0, 1, v69);
  v79 = v77;
  v80 = v77;
  v81 = v177;
  v177(v23, v79);
  v82 = v74;
  v74(v23, v73, v72);
  v83 = &v23[*(v72 + 48) + v78[9]];
  v84 = *v83;
  v85 = *(v83 + 1);
  v181();
  v87 = type metadata accessor for _LazyStack_Cache(0, v175, v190, v86);
  v88 = &v191[*(v87 + 48)];
  *v88 = v84;
  v88[1] = v85;
  v81(v23, v80);
  v82(v23, v73, v72);
  v89 = *&v23[*(v72 + 48) + v78[12]];
  v90 = v181;
  v181();
  v91 = v191;
  *&v191[*(v87 + 52)] = v89;
  v177(v23, v80);
  v180(v23, v187, v72);
  v92 = *&v23[*(v72 + 48) + v78[13]];
  v90();
  v93 = v87;
  *(v91 + *(v87 + 56)) = v92;
  v177(v23, v80);
  v94 = (v91 + *(v87 + 40));
  v95 = *v94;
  v96 = &protocol conformance descriptor for GestureGraph;
  if (*v94 != *(v94 + 1))
  {
    v97 = v185;
    v102 = (v185 + v80[22]);
    v95 = *v102;
    v99 = *(v102 + 1);
    v101 = v167;
    goto LABEL_16;
  }

  v97 = v185;
  v98 = (v185 + v80[22]);
  v100 = *v98;
  v99 = *(v98 + 1);
  v101 = v167;
  if (v99 >= *&v100)
  {
    if (v99 + 1 < *&v100)
    {
      __break(1u);
      goto LABEL_100;
    }

    if (*&v100 != v99 + 1)
    {
      v95 = v100;
LABEL_16:
      if (v99 >= *&v95)
      {
        *&v103 = v99 + 1;
        if (*&v103 < *&v95)
        {
          goto LABEL_97;
        }
      }

      else
      {
        v95 = *(v97 + v80[14]);
        v103 = v95;
      }

      *v94 = v95;
      v94[1] = v103;
      v104 = StackPlacement.placedExtent.getter(v80);
      v106 = (v91 + *(v87 + 44));
      *v106 = v104;
      v106[1] = v105;
      if (v101)
      {
        v107 = (v97 + v80[22]);
        v109 = *v107;
        v108 = v107[1];
        if (v108 >= v109)
        {
          v110 = v108 + 1;
          if (v110 < v109)
          {
LABEL_102:
            __break(1u);
            goto LABEL_103;
          }
        }

        else
        {
          v110 = *(v97 + v80[14]);
        }
      }

      else
      {
        v110 = 0;
      }

      v111 = v91 + *(v87 + 36);
      *v111 = v110;
      *(v111 + 8) = (v101 & 1) == 0;
      if (v104 < 0.01 && v105 < 0.01)
      {
        v95 = 0.0;
        *v94 = 0.0;
        v94[1] = 0.0;
      }
    }
  }

  v112 = (v97 + v80[26]);
  v101 = v91;
  v113 = v87;
  v93 = (v101 + *(v87 + 60));
  v114 = *v112;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v194[0] = *v93;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v114, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, v194);
  *v93 = *&v194[0];
  v116 = v112[1];

  v117 = swift_isUniquelyReferenced_nonNull_native();
  *&v194[0] = *(v93 + 1);
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v116, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v117, v194);
  *(v93 + 1) = *&v194[0];
  v87 = *(type metadata accessor for EstimationCache(0) + 24);
  v97 = v93 + v87;
  *&v118 = COERCE_DOUBLE(IndexSet.formUnion(_:)());
  v119 = v113;
  v120 = v113[15];
  if (*(*(v101 + v120) + 16))
  {
    v97 = v101 + v120;
    *&v118 = COERCE_DOUBLE(EstimationCache.average.getter());
    v122 = *&v118;
    if (v123)
    {
      v122 = 0.0;
    }

    v92 = v121 + v122;
  }

  else
  {
    v92 = 32.0;
  }

  v91 = v175;
  *&v194[0] = 0;
  v94 = (v101 + v119[11]);
  v124 = *v94;
  v80 = v184;
  v125 = v192;
  if (v168 != 1)
  {
    if (!v168)
    {
      __break(1u);
      goto LABEL_95;
    }

    if (v95 != -0.0 || v168 != -1)
    {
      *&v95 /= v168;
      goto LABEL_37;
    }

LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

LABEL_37:
  v31 = 0.0;
  if (v172)
  {
    goto LABEL_46;
  }

  if (v95 == 0.0)
  {
    if (fabs(v124) <= 0.01)
    {
      goto LABEL_46;
    }

    v31 = -v124;
    goto LABEL_45;
  }

  if (v124 < 0.01)
  {
    if ((*&v95 & 0x8000000000000000) != 0)
    {
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    v97 = v93 + v87;
    *&v118 = COERCE_DOUBLE(IndexSet.contains(integersIn:)());
    v125 = v192;
    if ((v118 & 1) == 0)
    {
      v31 = v92 * *&v95;
LABEL_45:
      *v194 = v31;
    }
  }

LABEL_46:
  v85 = 0.01;
  v87 = v190;
  v96 = v191;
  v101 = v187;
  v93 = v177;
  LODWORD(v95) = v166;
  if (fabs(v31) <= 0.01)
  {
    goto LABEL_57;
  }

  v126 = v31 + v94[1];
  if (v124 + v31 > v126)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  *v94 = v124 + v31;
  v94[1] = v126;
  v127 = 56;
  if (!LODWORD(v95))
  {
    v127 = 48;
  }

  *(v179 + v127) = v31;
  v94 = v165;
  v97 = *(v165 + 2);
  if (!v97)
  {
    goto LABEL_56;
  }

  *&v118 = COERCE_DOUBLE(swift_isUniquelyReferenced_nonNull_native());
  if ((v118 & 1) == 0)
  {
    goto LABEL_98;
  }

  while (1)
  {
    v128 = 0;
    v129 = v97 - 1;
    if (v97 == 1)
    {
      goto LABEL_53;
    }

    v160 = &v94[(v174 & 1u) + 11];
    v161 = !is_mul_ok(v129, 0x50uLL);
    if (&v160[10 * v129] < v160)
    {
      goto LABEL_53;
    }

    if (v161)
    {
      goto LABEL_53;
    }

    v128 = v97 & 0x7FFFFFFFFFFFFFFELL;
    v162 = v97 & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v163 = v31 + v160[10];
      *v160 = v31 + *v160;
      v160[10] = v163;
      v160 += 20;
      v162 -= 2;
    }

    while (v162);
    if (v97 != v128)
    {
LABEL_53:
      v130 = (v94 + ((8 * LODWORD(v95)) | (80 * v128)) + 88);
      v131 = v97 - v128;
      do
      {
        *v130 = v31 + *v130;
        v130 += 10;
        --v131;
      }

      while (v131);
    }

    *v179 = v94;
LABEL_56:
    MEMORY[0x1EEE9AC00](v118);
    *(&v164 - 2) = v194;
    specialized LazyStack<>.log(_:)(partial apply for implicit closure #3 in LazyStack<>.place(subviews:context:cache:in:), (&v164 - 4), v91);
    v125 = v192;
LABEL_57:
    v97 = v185;
    StackPlacement.placedExtent.getter(v125);
    v134 = (v97 + *(v192 + 88));
    v135 = *v134;
    v136 = v134[1];
    if (v136 < v135)
    {
      break;
    }

    v94 = (v136 + 1);
    if (v136 + 1 >= v135)
    {
      goto LABEL_60;
    }

LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    *&v118 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew()(v94));
    v94 = v118;
  }

  v94 = *(v97 + *(v192 + 56));
LABEL_60:
  if (v167)
  {
    v137 = &v195[5];
    if (!LODWORD(v95))
    {
      v137 = &v195[4];
    }

    v138 = vabdd_f64(v133, *v137);
    *(v179 + 40) = v138 >= 1.0;
    v139 = v183;
    if (v138 < 1.0)
    {
      goto LABEL_86;
    }

    MEMORY[0x1EEE9AC00](v132);
    v140 = &v164 - 6;
    *(&v164 - 4) = v141;
    *(&v164 - 3) = v142;
    *(&v164 - 16) = LOBYTE(v95);
    v143 = partial apply for implicit closure #4 in LazyStack<>.place(subviews:context:cache:in:);
    goto LABEL_85;
  }

  v144 = &v195[4];
  if (LODWORD(v95))
  {
    v144 = &v195[5];
  }

  v145 = *v144;
  if (*v144 + v85 < v133)
  {
    *(v179 + 40) = 1;
    MEMORY[0x1EEE9AC00](v132);
    *(&v164 - 4) = v146;
    *(&v164 - 3) = v147;
    *(&v164 - 16) = LOBYTE(v95);
    v132 = specialized LazyStack<>.log(_:)(partial apply for implicit closure #5 in LazyStack<>.place(subviews:context:cache:in:), (&v164 - 6), v91);
    v139 = v183;
LABEL_86:
    MEMORY[0x1EEE9AC00](v132);
    *(&v164 - 6) = v91;
    *(&v164 - 5) = v87;
    *(&v164 - 4) = v52;
    *(&v164 - 3) = v53;
    v159 = v179;
    *(&v164 - 2) = v96;
    *(&v164 - 1) = v159;
    specialized LazyStack<>.log(_:)(partial apply for implicit closure #8 in LazyStack<>.place(subviews:context:cache:in:), (&v164 - 8), v91);
    (*(v139 + 8))(v182, v80);
    (v93)(v185, v192);
    (*(v188 + 8))(v101, v186);
    return;
  }

  v148 = v133;
  *&v194[0] = v164;
  v132 = _ViewList_Node.estimatedCount(style:)(v194);
  if (__OFSUB__(v132, v94))
  {
    goto LABEL_101;
  }

  v149 = (v132 - v94) & ~((v132 - v94) >> 63);
  v139 = v183;
  if (v168 == 1)
  {
LABEL_78:
    v154 = v148 + v92 * v149;
    if (v154 >= v145)
    {
      v155 = v145;
    }

    else
    {
      v155 = v148 + v92 * v149;
    }

    v156 = v155 * 0.1;
    if ((v172 & v169) != 0)
    {
      v156 = v85;
    }

    v157 = vabdd_f64(v145, v154);
    *(v179 + 40) = v156 < v157;
    if (v156 >= v157)
    {
      goto LABEL_86;
    }

    v158 = MEMORY[0x1EEE9AC00](v132);
    v140 = &v164 - 4;
    *(&v164 - 2) = v158;
    *(&v164 - 1) = v145;
    v143 = partial apply for implicit closure #7 in LazyStack<>.place(subviews:context:cache:in:);
LABEL_85:
    v132 = specialized LazyStack<>.log(_:)(v143, v140, v91);
    goto LABEL_86;
  }

  v150 = __OFADD__(v149, v168);
  v151 = v149 + v168;
  if (v150)
  {
    goto LABEL_104;
  }

  if (!v168)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v152 = v151 - 1;
  if (v152 != 0x8000000000000000 || v168 != -1)
  {
    v149 = v152 / v168;
    goto LABEL_78;
  }

LABEL_106:
  __break(1u);
}

uint64_t destroy for PlacementProperties(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 8);
  v6 = (v2 + *(v4 + 80) + 8) & ~*(v4 + 80);

  return v5(v6, AssociatedTypeWitness);
}

uint64_t getEnumTagSinglePayload for StackPlacement(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  if (v7 <= v9)
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = v7;
  }

  v11 = type metadata accessor for IndexSet();
  v12 = *(v11 - 8);
  v13 = *(v6 + 64);
  v14 = *(v8 + 80);
  v15 = *(v12 + 80);
  if (*(v12 + 84) <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = *(v12 + 84);
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v14 | 7;
  v18 = ((v14 + 16) & ~v14) + *(v8 + 64) + 7;
  v19 = v15 | 7;
  if (a2 <= v16)
  {
    goto LABEL_33;
  }

  v20 = *(*(v11 - 8) + 64) - ((-17 - v15) | v15) - ((-18 - v19 - ((((((((((((((((((((v18 + ((v13 + v17 + 1) & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 43) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 119) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) | v19) - 2;
  v21 = 8 * v20;
  if (v20 > 3)
  {
    goto LABEL_12;
  }

  v24 = ((a2 - v16 + ~(-1 << v21)) >> v21) + 1;
  if (HIWORD(v24))
  {
    v22 = *(a1 + v20);
    if (v22)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v24 <= 0xFF)
    {
      if (v24 < 2)
      {
        goto LABEL_33;
      }

LABEL_12:
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_33;
      }

LABEL_20:
      v25 = (v22 - 1) << v21;
      if (v20 > 3)
      {
        v25 = 0;
      }

      if (v20)
      {
        if (v20 <= 3)
        {
          v26 = v20;
        }

        else
        {
          v26 = 4;
        }

        if (v26 > 2)
        {
          if (v26 == 3)
          {
            v27 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v27 = *a1;
          }
        }

        else if (v26 == 1)
        {
          v27 = *a1;
        }

        else
        {
          v27 = *a1;
        }
      }

      else
      {
        v27 = 0;
      }

      return v16 + (v27 | v25) + 1;
    }

    v22 = *(a1 + v20);
    if (*(a1 + v20))
    {
      goto LABEL_20;
    }
  }

LABEL_33:
  if (v7 == v16)
  {
    v28 = *(v6 + 48);
    v29 = a1;
    v30 = v7;
    v31 = v5;

    return v28(v29, v30, v31);
  }

  v32 = (a1 + v13 + v17 + 1) & ~v17;
  if (v9 == v16)
  {
    v28 = *(v8 + 48);
    v29 = ((v14 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14);
    v30 = v9;
    v31 = AssociatedTypeWitness;

    return v28(v29, v30, v31);
  }

  v33 = ((((((((v18 + v32) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8);
  if ((v16 & 0x80000000) != 0)
  {
    v35 = *(v12 + 48);

    return v35((v15 + ((((v19 + ((((((((((((v33 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 119) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 17) & ~v19) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v15);
  }

  else
  {
    v34 = *v33;
    if (*v33 >= 0xFFFFFFFF)
    {
      LODWORD(v34) = -1;
    }

    return (v34 + 1);
  }
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 8 * result) = a4;
  *(a3[7] + 8 * result) = a2;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

void partial apply for closure #1 in _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:)(uint64_t a1@<X0>, uint64_t *x8_0@<X8>)
{
  closure #1 in _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:)(a1, *(v3 + 16), *(v3 + 24), *(v3 + 25), *(v3 + 32), x8_0);
}

{
  partial apply for closure #1 in _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:)(a1, x8_0);
}

uint64_t EstimationCache.average.getter()
{
  v1 = *v0;
  if (*(*v0 + 16))
  {
    v2 = 0;
    v3 = 1 << *(v1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(v1 + 64);
    v6 = (v3 + 63) >> 6;
    v7 = 0.0;
    v8 = 0.0;
    if (v5)
    {
      while (1)
      {
        v9 = v2;
LABEL_10:
        v10 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v11 = (v9 << 9) | (8 * v10);
        v12 = *(*(v1 + 56) + v11);
        v7 = v7 + *(*(v1 + 48) + v11) * v12;
        v8 = v8 + v12;
        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v9 >= v6)
      {
        break;
      }

      v5 = *(v1 + 64 + 8 * v9);
      ++v2;
      if (v5)
      {
        v2 = v9;
        goto LABEL_10;
      }
    }

    v13 = 0;
    v14 = v0[1];
    v15 = 1 << *(v14 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v14 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = 0.0;
    for (i = 0.0; v17; i = i + v24)
    {
      v21 = v13;
LABEL_20:
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v23 = (v21 << 9) | (8 * v22);
      v24 = *(*(v14 + 56) + v23);
      v19 = v19 + *(*(v14 + 48) + v23) * v24;
    }

    while (1)
    {
      v21 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v21 >= v18)
      {
        if (i <= 0.0)
        {
          *&result = 0.0;
        }

        else
        {
          *&result = v19 / i;
        }

        return result;
      }

      v17 = *(v14 + 64 + 8 * v21);
      ++v13;
      if (v17)
      {
        v13 = v21;
        goto LABEL_20;
      }
    }

LABEL_27:
    __break(1u);
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

int *PlacementProperties.init(minor:visible:resetEstimates:estimatesChanged:visibleLength:containerLength:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>)
{
  v20 = type metadata accessor for MinorProperties(0, a4, a5, a4);
  (*(*(v20 - 8) + 32))(a6, a1, v20);
  result = type metadata accessor for PlacementProperties(0, a4, a5, v21);
  v23 = (a6 + result[9]);
  *v23 = a7;
  v23[1] = a8;
  *(a6 + result[10]) = a2;
  *(a6 + result[11]) = a3;
  *(a6 + result[12]) = a9;
  *(a6 + result[13]) = a10;
  return result;
}

uint64_t initializeWithCopy for StackPlacement(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 48);
  v7 = v6 + a1;
  v8 = (v6 + a2);
  *(v6 + a1) = *v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 16);
  v12 = v10 + 16;
  v13 = *(v10 + 80);
  v14 = (v13 | 7) + 1;
  v15 = ((v14 + v7) & ~(v13 | 7));
  v16 = (&v8[v14] & ~(v13 | 7));
  *v15 = *v16;
  v17 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  v18 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v17 = *v18;
  v11((v17 + v13 + 8) & ~v13, (v18 + v13 + 8) & ~v13, AssociatedTypeWitness);
  v19 = *(v12 + 48) + ((v13 + 16) & ~v13) + 7;
  v20 = ((v15 + v19) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((v16 + v19) & 0xFFFFFFFFFFFFFFF8);
  *v20 = *v21;
  v22 = ((v21 + 19) & 0xFFFFFFFFFFFFFFF8);
  v23 = v22 + 43;
  v24 = ((v20 + 19) & 0xFFFFFFFFFFFFFFF8);
  *v24 = *v22;
  v25 = (v24 + 11) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v22 + 11) & 0xFFFFFFFFFFFFFFF8;
  v27 = *v26;
  *(v25 + 8) = *(v26 + 8);
  *v25 = v27;
  v28 = (v24 + 27) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v22 + 27) & 0xFFFFFFFFFFFFFFF8;
  *v28 = *v29;
  *(v28 + 8) = *(v29 + 8);
  v30 = ((v24 + 43) & 0xFFFFFFFFFFFFFFF8);
  v31 = (v23 & 0xFFFFFFFFFFFFFFF8) + 15;
  v32 = (v23 & 0xFFFFFFFFFFFFFFF8) + 31;
  *v30 = *(v23 & 0xFFFFFFFFFFFFFFF8);
  v33 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 &= 0xFFFFFFFFFFFFFFF8;
  v34 = *v31;
  *(v33 + 8) = *(v31 + 8);
  *v33 = v34;
  v32 &= 0xFFFFFFFFFFFFFFF8;
  v35 = ((v30 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v35 = *v32;
  v36 = ((v32 + 15) & 0xFFFFFFFFFFFFFFF8);
  v37 = ((v35 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v37 = *v36;
  v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  v40 = *v39;

  if (v40 < 0xFFFFFFFF)
  {
    v45 = *v39;
    v46 = *(v39 + 32);
    *(v38 + 16) = *(v39 + 16);
    *(v38 + 32) = v46;
    *v38 = v45;
    v47 = *(v39 + 48);
    v48 = *(v39 + 64);
    v49 = *(v39 + 96);
    *(v38 + 80) = *(v39 + 80);
    *(v38 + 96) = v49;
    *(v38 + 48) = v47;
    *(v38 + 64) = v48;
  }

  else
  {
    *v38 = v40;
    *(v38 + 8) = *(v39 + 8);
    v41 = *(v39 + 40);
    *(v38 + 40) = v41;
    *(v38 + 48) = *(v39 + 48);
    v42 = **(v41 - 8);

    v42(v38 + 16, v39 + 16, v41);
    *(v38 + 56) = *(v39 + 56);
    *(v38 + 64) = *(v39 + 64);
    *(v38 + 68) = *(v39 + 68);
    *(v38 + 72) = *(v39 + 72);
    *(v38 + 80) = *(v39 + 80);
    v43 = *(v39 + 88);
    *(v38 + 92) = *(v39 + 92);
    *(v38 + 88) = v43;
    v44 = *(v39 + 99);
    *(v38 + 96) = *(v39 + 96);
    *(v38 + 99) = v44;
    *(v38 + 104) = *(v39 + 104);
  }

  v50 = ((v38 + 119) & 0xFFFFFFFFFFFFFFF8);
  v51 = ((v39 + 119) & 0xFFFFFFFFFFFFFFF8);
  *v50 = *v51;
  v52 = ((v50 + 15) & 0xFFFFFFFFFFFFFFF8);
  v53 = ((v51 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v52 = *v53;
  v54 = ((v52 + 23) & 0xFFFFFFFFFFFFFFF8);
  v55 = ((v53 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v54 = *v55;
  v56 = (v54 + 23) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v55 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v56 = *v57;
  *(v56 + 16) = *(v57 + 16);
  v58 = type metadata accessor for IndexSet();
  v59 = *(v58 - 8);
  v60 = *(v59 + 16);
  v61 = *(v59 + 80);
  v62 = (v61 | 7) + 17;
  v63 = ((v62 + v56) & ~(v61 | 7));
  v64 = ((v62 + v57) & ~(v61 | 7));
  *v63 = *v64;
  v65 = ((v63 + 15) & 0xFFFFFFFFFFFFFFF8);
  v66 = ((v64 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v65 = *v66;
  v67 = v65 + v61 + 8;
  v68 = v66 + v61 + 8;

  v60(v67 & ~v61, v68 & ~v61, v58);
  return a1;
}

uint64_t specialized LazyStack<>.resolveIndexAndPosition(subviews:context:cache:placer:properties:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v154 = a4;
  v173 = a3;
  v168 = a1;
  v193 = *MEMORY[0x1E69E9840];
  v11 = type metadata accessor for MinorProperties(255, a6, a7, a4);
  v12 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v164 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v171 = &v151 - v13;
  v175 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v163 = &v151 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v151 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v151 - v20);
  v177 = v11;
  v22 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v157 = &v151 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v179 = &v151 - v26;
  v27 = *(a2 + 8);
  v170 = *(a2 + 4);
  LODWORD(v11) = *(a2 + 12);
  v28 = *(a2 + 40);
  v166 = *(a2 + 32);
  v29 = *(a2 + 208);
  v156 = *(a2 + 200);
  v155 = v29;
  v172 = (*(a7 + 32))(a6, a7);
  v30 = 0.0;
  v31 = 0.0;
  if (v11 != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v30 = *Value;
    v31 = Value[1];
  }

  v178 = v22;
  v33 = v179;
  v169 = *(v22 + 16);
  v169(v179, a5, v177);
  v35 = type metadata accessor for PlacementProperties(0, a6, a7, v34);
  v36 = (a5 + *(v35 + 36));
  v37 = *v36;
  v160 = v36[1];
  v176 = *v33;
  v159 = a6;
  v158 = a7;
  v39 = type metadata accessor for _LazyStack_Cache(0, a6, a7, v38);
  v40 = v173;
  v41 = *(*(v173 + *(v39 + 60)) + 16);
  v161 = v39;
  if (v41)
  {
    v42 = v39;
    v44 = COERCE_DOUBLE(EstimationCache.average.getter());
    if (v45)
    {
      v44 = 0.0;
    }

    v46 = v43 + v44;
    v47 = *(v42 + 60);
    v48 = v40;
    v49 = *(*(v40 + v47) + 16) != 0;
  }

  else
  {
    v49 = 0;
    v46 = 32.0;
    v48 = v173;
  }

  v167 = 2 * v176;
  if (v46 <= 0.0)
  {
    v49 = 0;
  }

  v165 = v49;
  LODWORD(v162) = *(a5 + *(v35 + 40));
  KeyPath = swift_getKeyPath();
  LODWORD(v188) = v27;
  v189 = KeyPath;
  type metadata accessor for [_LazyLayout_Subview](0, &lazy cache variable for type metadata for EnvironmentFetch<CGFloat>, MEMORY[0x1E69E7DE0], type metadata accessor for EnvironmentFetch);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v27);
  v187 = KeyPath;
  type metadata accessor for KeyPath<EnvironmentValues, CGFloat>();

  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  lazy protocol witness table accessor for type EnvironmentFetch<CGFloat> and conformance EnvironmentFetch<A>(&lazy protocol witness table cache variable for type EnvironmentFetch<CGFloat> and conformance EnvironmentFetch<A>, protocol conformance descriptor for EnvironmentFetch<A>);
  lazy protocol witness table accessor for type EnvironmentFetch<CGFloat> and conformance EnvironmentFetch<A>(&lazy protocol witness table cache variable for type EnvironmentFetch<CGFloat> and conformance EnvironmentFetch<A>, protocol conformance descriptor for EnvironmentFetch<A>);
  v192 = 0;
  v149 = v51;
  v52 = *static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();

  v53 = v177;
  v169(v21, v179, v177);
  v54 = v178;
  (*(v178 + 56))(v21, 0, 1, v53);
  v55 = v175;
  v56 = *(v175 + 16);
  v57 = v48;
  v58 = v21;
  v59 = v54;
  v56(v18, v57, v12);
  v60 = *(TupleTypeMetadata2 + 48);
  v61 = v171;
  v56(v171, v58, v12);
  v170 = v60;
  v56(&v61[v60], v18, v12);
  v62 = *(v59 + 48);
  if (v62(v61, 1, v53) != 1)
  {
    v153 = v18;
    v169 = v58;
    v69 = v163;
    v56(v163, v61, v12);
    v70 = v170;
    v71 = v62(&v61[v170], 1, v53);
    v63 = v178;
    v72 = (v178 + 8);
    if (v71 != 1)
    {
      v85 = &v61[v70];
      v86 = v157;
      (*(v178 + 32))(v157, v85, v53);
      v87 = static MinorProperties.== infix(_:_:)(v69, v86, v159, v158);
      v88 = *(v63 + 8);
      v88(v86, v53);
      v89 = *(v175 + 8);
      v89(v153, v12);
      v89(v169, v12);
      v88(v69, v53);
      v89(v61, v12);
      v66 = v176;
      v68 = v178;
      if (v162 & 1 | ((v87 & 1) == 0))
      {
        goto LABEL_17;
      }

      goto LABEL_43;
    }

    v73 = *(v175 + 8);
    v73(v153, v12);
    v73(v169, v12);
    (*v72)(v69, v53);
    v66 = v176;
LABEL_16:
    (*(v164 + 8))(v61, TupleTypeMetadata2);
    v68 = v63;
    goto LABEL_17;
  }

  v63 = v178;
  v64 = *(v55 + 8);
  v64(v18, v12);
  v64(v58, v12);
  v65 = v62(&v61[v170], 1, v53);
  v66 = v176;
  if (v65 != 1)
  {
    goto LABEL_16;
  }

  v64(v61, v12);
  v68 = v63;
  if (v162)
  {
    goto LABEL_17;
  }

LABEL_43:
  v90 = (v173 + v161[11]);
  v91 = *v90;
  if (v52 == 1.0)
  {
    v92 = round(v91);
    v93 = v90[1];
    v94 = round(v93);
  }

  else
  {
    v92 = v52 * round(v91 / v52);
    v93 = v90[1];
    v94 = v52 * round(v93 / v52);
  }

  if (v92 > v94)
  {
    goto LABEL_142;
  }

  v97 = (v173 + v161[10]);
  v84 = *v97;
  if (v92 <= v37)
  {
    if (v160 <= v94)
    {
      goto LABEL_69;
    }

    if (v37 <= v94)
    {
      v101 = v173 + v161[9];
      if ((*(v101 + 8) & 1) == 0 && *v101 == v97[1])
      {
        goto LABEL_69;
      }
    }
  }

  if (v172)
  {
    v98 = v31;
  }

  else
  {
    v98 = v30;
  }

  v99 = v37 - v93;
  v100 = v98 + v98;
  if (v37 - v93 + 0.01 > 0.0 && v99 < v100)
  {
    (*(v68 + 8))(v179, v53);
    return v97[1];
  }

  v102 = v37 - v91;
  if (v37 - v91 + 0.01 > 0.0 && v102 < v100)
  {
LABEL_69:
    (*(v68 + 8))(v179, v53);
    return v84;
  }

  if (v102 >= 0.0)
  {
    v104 = v37 - v93;
  }

  else
  {
    v104 = v37 - v91;
    if (v99 < 0.0)
    {
      if (v102 > v99)
      {
        v104 = v37 - v91;
      }

      else
      {
        v104 = v37 - v93;
      }
    }
  }

  if (v104 >= 0.0 || v98 * 3.0 <= -v104)
  {
    if (v165)
    {
LABEL_113:
      v188 = v167;
      v138 = _ViewList_Node.estimatedCount(style:)(&v188);
      if (v66 != 1)
      {
        if (!v66)
        {
LABEL_159:
          __break(1u);
          goto LABEL_160;
        }

        if (v138 == 0x8000000000000000 && v66 == -1)
        {
LABEL_164:
          __break(1u);
        }

        v138 /= v66;
      }

      v139 = v138 - 1;
      if (__OFSUB__(v138, 1))
      {
        goto LABEL_152;
      }

      v140 = round(v102 / v46);
      if ((*&v140 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_153:
        __break(1u);
        goto LABEL_154;
      }

      if (v140 <= -9.22337204e18)
      {
LABEL_154:
        __break(1u);
        goto LABEL_155;
      }

      if (v140 >= 9.22337204e18)
      {
LABEL_155:
        __break(1u);
        goto LABEL_156;
      }

      v141 = v139 & ~(v139 >> 63);
      v142 = v141 * v66;
      if ((v141 * v66) >> 64 != (v141 * v66) >> 63)
      {
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
        goto LABEL_158;
      }

      if (v139 >= v140)
      {
        v139 = v140;
      }

      v143 = v139 & ~(v139 >> 63);
      v144 = v143 * v66;
      if ((v143 * v66) >> 64 != (v143 * v66) >> 63)
      {
        goto LABEL_157;
      }

      v96 = __OFADD__(v84, v144);
      v145 = v84 + v144;
      if (v96)
      {
LABEL_158:
        __break(1u);
        goto LABEL_159;
      }

      v146 = v91 + v46 * v143;
      if (v146 + 0.01 >= 0.0 && v146 + -0.01 <= v37)
      {
        v148 = v145 & ~(v145 >> 63);
        if (v142 >= v148)
        {
          v84 = v148;
        }

        else
        {
          v84 = v142;
        }

        goto LABEL_69;
      }
    }
  }

  else if (v165)
  {
    v105 = v97[1];
    v106 = v105 - v84;
    if (!__OFSUB__(v105, v84))
    {
      v107 = ceil(v98 / v46);
      if ((*&v107 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v107 > -9.22337204e18)
        {
          if (v107 < 9.22337204e18)
          {
            if (v106 <= v107)
            {
              v106 = v107;
            }

            v164 = v106;
            if (v102 >= 0.0)
            {
              v108 = v105;
            }

            else
            {
              v108 = v84;
            }

            if (v102 >= 0.0)
            {
              v109 = v93;
            }

            else
            {
              v109 = v91;
            }

            v157 = *&v109;
            v169 = type metadata accessor for StackPlacement(0, v159, v158, v67);
            v159 = *(v169 + 16);
            v110 = v66 & 0x7FFFFFFFFFFFFFFFLL;
            v163 = ((v66 & 0x7FFFFFFFFFFFFFFFLL) - 1);
            v162 = v168[17];
            v111 = 2;
            v112 = v168[15];
            v158 = v168[14];
            v153 = v112;
            v152 = v66 & 0x7FFFFFFFFFFFFFFFLL;
            while (1)
            {
              v113 = v111 * v164;
              if ((v111 * v164) >> 64 != (v111 * v164) >> 63)
              {
                goto LABEL_145;
              }

              v170 = v111;
              v114 = v108 - v113;
              v115 = v167;
              if (__OFSUB__(v108, v113))
              {
                goto LABEL_146;
              }

              v116 = v114 & ~(v114 >> 63);
              v117 = swift_allocObject();
              v175 = v117;
              v118 = MEMORY[0x1E69E7CC0];
              *(v117 + 16) = MEMORY[0x1E69E7CC0];
              v119 = (v117 + 16);
              v183 = v116;
              v185 = 0;
              v186 = 1;
              v184 = 3;
              v120 = swift_allocObject();
              *(v120 + 16) = v118;
              v121 = v120 + 16;
              v182 = v108;
              v122 = v108;
              if (v110 != 1)
              {
                if (!v110)
                {
                  goto LABEL_149;
                }

                v123 = v108 % v110;
                v122 = v108;
                if (v108 % v110)
                {
                  v124 = v110 - v123;
                  if (__OFSUB__(v110, v123))
                  {
                    goto LABEL_150;
                  }

                  v96 = __OFADD__(v108, v124);
                  v122 = v108 + v124;
                  if (v96)
                  {
                    goto LABEL_151;
                  }
                }
              }

              TupleTypeMetadata2 = v114;
              v96 = __OFADD__(v122, v163);
              v125 = &v163[v122];
              if (v96)
              {
                goto LABEL_147;
              }

              v182 = v125;
              v181 = v114 & ~(v114 >> 63);
              MEMORY[0x1EEE9AC00](v120);
              *(&v151 - 8) = &v185;
              *(&v151 - 7) = &v184;
              *(&v151 - 6) = v115;
              *(&v151 - 5) = &v183;
              *(&v151 - 4) = &v182;
              *(&v151 - 3) = v126;
              v171 = v126;
              v149 = v175;
              v127 = swift_allocObject();
              if (__OFADD__(v116, v162))
              {
                goto LABEL_148;
              }

              *(v127 + 16) = v116 + v162;
              v188 = v158;
              v189 = v153;
              v180 = v115;
              v190 = &v188;
              v191 = 1;
              MEMORY[0x1EEE9AC00](v127);
              *(&v151 - 4) = v168;
              *(&v151 - 3) = v128;
              v149 = closure #1 in LazyStack<>.collectBackwards(from:to:subviews:style:atEnd:)partial apply;
              v150 = &v151 - 10;

              _ViewList_Node.applyNodes(from:style:transform:to:)(&v181, &v180, &v190, partial apply for closure #1 in closure #1 in _LazyLayout_Subviews.apply(from:style:to:), (&v151 - 6));
              v130 = v129;

              swift_beginAccess();
              v131 = *v121;
              if (*(*v121 + 16))
              {
                swift_beginAccess();
                v132 = *v119;

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v132 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v132[2] + 1, 1, v132);
                }

                v134 = v132[2];
                v133 = v132[3];
                if (v134 >= v133 >> 1)
                {
                  v132 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v133 > 1), v134 + 1, 1, v132);
                }

                v132[2] = v134 + 1;
                v132[v134 + 4] = v131;
                *v119 = v132;
                swift_endAccess();
                *v121 = MEMORY[0x1E69E7CC0];
              }

              swift_beginAccess();
              v135 = *(v175 + 16);

              v136 = TupleTypeMetadata2;
              v137 = v154;
              StackPlacement.measureBackwards(subviews:lastIndex:lastPosition:atStart:atEnd:allowBeforeFirst:)(v135, v108, TupleTypeMetadata2 < 1, v130 & 1, 0, v169, *&v157);

              if (*(v137 + v159) <= v37 + 0.01)
              {
                break;
              }

              v53 = v177;
              v68 = v178;
              v66 = v176;
              v110 = v152;
              if (v136 >= 1)
              {
                v111 = 2 * v170;
                if (v170 <= 7)
                {
                  continue;
                }
              }

              goto LABEL_113;
            }

            (*(v178 + 8))(v179, v177);
            return *(v154 + *(v169 + 14));
          }

          goto LABEL_163;
        }

LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
        goto LABEL_164;
      }

LABEL_161:
      __break(1u);
      goto LABEL_162;
    }

LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

LABEL_17:
  v188 = v167;
  v74 = _ViewList_Node.estimatedCount(style:)(&v188);
  v75 = v172;
  if (v66 != 1)
  {
    if (!v66)
    {
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
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
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
      goto LABEL_153;
    }

    if (v74 == 0x8000000000000000 && v66 == -1)
    {
      goto LABEL_143;
    }

    v74 /= v66;
  }

  if (v172)
  {
    v76 = v28;
  }

  else
  {
    v76 = v166;
  }

  v77 = 0.0;
  if (v76 > 0.0)
  {
    v78 = v37 / v76;
    v77 = 1.0;
    if (v78 < 1.0)
    {
      v77 = 0.0;
      if (v78 >= 0.0)
      {
        v77 = v78;
      }
    }
  }

  if (__OFSUB__(v74, 1))
  {
    __break(1u);
    goto LABEL_136;
  }

  v79 = (v74 - 1) & ~((v74 - 1) >> 63);
  v80 = v79 * v66;
  if ((v79 * v66) >> 64 != (v79 * v66) >> 63)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  v81 = v77 * v74 + 0.5;
  if ((*&v81 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v81 <= -9.22337204e18)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v81 >= 9.22337204e18)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  v82 = v81 * v66;
  if ((v81 * v66) >> 64 != v82 >> 63)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  v83 = v82 & ~(v82 >> 63);
  if (v83 >= v80)
  {
    v84 = v80;
  }

  else
  {
    v84 = v83;
  }

  if (v84 < 1 || !v165)
  {
    goto LABEL_69;
  }

  EstimationCache.average.getter();
  (*(v68 + 8))(v179, v53);
  v95 = v156;
  if ((v75 & 1) == 0)
  {
    v95 = v155;
  }

  if (v84 >= v66 && v95 > 0.0)
  {
    v96 = __OFSUB__(v84, v66);
    v84 -= v66;
    if (v96)
    {
      goto LABEL_144;
    }
  }

  return v84;
}

uint64_t _LazyLayout_Subviews.applyNodes(from:style:to:)(void *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = *a2;
  v9 = swift_allocObject();
  *(v9 + 16) = *a1;
  v10 = *(v4 + 120);
  v14[0] = *(v4 + 112);
  v14[1] = v10;
  v13 = v8;
  v20 = v14;
  v21 = 1;
  v16 = v4;
  v17 = v9;
  v18 = a3;
  v19 = a4;

  _ViewList_Node.applyNodes(from:style:transform:to:)(a1, &v13, &v20, partial apply for applyNode #1 (start:style:node:transform:) in _LazyLayout_Subviews.applyNodes(from:style:to:), v15);
  LOBYTE(a4) = v11;

  return a4 & 1;
}

double destroy for _LazyLayout_Subviews(uint64_t a1)
{

  v2 = *(a1 + 109);
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      if (v2 != 3)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    if (!*(a1 + 109))
    {
      __swift_destroy_boxed_opaque_existential_1((a1 + 16));
      goto LABEL_10;
    }

    if (v2 != 1)
    {
      goto LABEL_10;
    }

    __swift_destroy_boxed_opaque_existential_1((a1 + 48));
  }

LABEL_10:

  return result;
}

void StackPlacement.placeBody(subview:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of _LazyLayout_Subview(a1, v15);
  v4 = *(a2 + 72);
  v5 = *(v2 + v4);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  v8 = v7 + 1;
  if (v7 >= v6 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v8;
  v9 = &v5[112 * v7];
  v10 = v15[0];
  v11 = v15[2];
  *(v9 + 3) = v15[1];
  *(v9 + 4) = v11;
  *(v9 + 2) = v10;
  v12 = v15[3];
  v13 = v15[4];
  v14 = v15[6];
  *(v9 + 7) = v15[5];
  *(v9 + 8) = v14;
  *(v9 + 5) = v12;
  *(v9 + 6) = v13;
  *(v2 + v4) = v5;
  if (v8 == *(v2 + *(a2 + 40)))
  {
    StackPlacement.flushMinorGroup()(a2);
  }
}

BOOL StackPlacement.shouldStop()(int *a1)
{
  type metadata accessor for Logger?(0);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (AGGraphHasDeadlinePassed())
  {
    AGGraphCancelUpdate();
    if (one-time initialization token for lazyLayoutPrefetch != -1)
    {
      swift_once();
    }

    v9 = __swift_project_value_buffer(v4, static Log.lazyLayoutPrefetch);
    outlined init with copy of EstimationCache(v9, v6, type metadata accessor for Logger?);
    v10 = type metadata accessor for Logger();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v6, 1, v10) == 1)
    {
      outlined destroy of EstimationCache(v6, type metadata accessor for Logger?);
    }

    else
    {
      v12 = v1;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = v14;
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v23 = v11;
        v24 = v17;
        v18 = v17;
        *v16 = 136446210;
        v19 = _typeName(_:qualified:)();
        v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v24);

        *(v16 + 4) = v21;
        _os_log_impl(&dword_18D018000, v13, v15, "%{public}s: Stopping placement because deadline passed", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v18);
        v22 = v18;
        v11 = v23;
        MEMORY[0x193AC4820](v22, -1, -1);
        MEMORY[0x193AC4820](v16, -1, -1);
      }

      v1 = v12;
      (*(v11 + 8))(v6, v10);
    }

    result = 1;
    *(v1 + a1[25]) = 1;
  }

  else
  {
    v7 = v1 + a1[17];
    if (*(v7 + 8) == 1)
    {
      return *(v1 + a1[11] + 8) <= *(v1 + a1[16]);
    }

    else
    {
      return *v7 < *(v1 + a1[14]);
    }
  }

  return result;
}

uint64_t StackPlacement.flushPendingHeader()(uint64_t a1)
{
  v3 = (v1 + *(a1 + 80));
  outlined init with copy of _LazyLayout_Subview?(v3, &v30, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720], type metadata accessor for [_LazyLayout_Subview]);
  if (!v30)
  {
    return outlined destroy of _LazyLayout_Subview?(&v30, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720], type metadata accessor for [_LazyLayout_Subview]);
  }

  v38[3] = v34;
  v38[4] = v35;
  v38[5] = v36;
  v37 = v30;
  v38[0] = v31;
  v38[1] = v32;
  v38[2] = v33;
  if ((*(v1 + *(a1 + 48)) & 1) == 0 || (*(v1 + *(a1 + 68) + 8) & 1) == 0)
  {
    return outlined destroy of _LazyLayout_Subview(&v37);
  }

  v4 = *(a1 + 40);
  v5 = *(v1 + *(a1 + 36));
  v6 = *(v1 + v4 + 8);
  if (*(v1 + *(a1 + 36)))
  {
    v7 = *(v1 + v4 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (*(v1 + *(a1 + 36)))
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v1 + v4 + 8);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  v9 = *(a1 + 24);
  v22 = *(a1 + 16);
  (*(v9 + 40))();
  v10 = DWORD2(v37);
  v11 = *(LazyLayoutViewCache.item(data:)(v38) + 44);

  v12 = *MEMORY[0x1E698D3F8];
  v27 = v10;
  v28 = v11;
  v29 = v12;
  v23 = v7;
  v24 = v5 ^ 1;
  v25 = v8;
  v26 = v5;
  LayoutProxy.lengthThatFits(_:in:)(&v23, v5);
  if (v5)
  {
    v15 = v6;
  }

  else
  {
    v15 = v14;
  }

  if (v5)
  {
    v6 = v14;
    v16 = 0.0;
  }

  else
  {
    v16 = -v14;
  }

  if (v5)
  {
    v17 = -v14;
  }

  else
  {
    v17 = 0.0;
  }

  MEMORY[0x1EEE9AC00](v13);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI19_LazyLayout_SubviewV_s5NeverO12CoreGraphics7CGFloatVTg5(closure #1 in _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:)partial apply);
  v18 = MEMORY[0x1E69E6720];
  outlined destroy of _LazyLayout_Subview?(&v30, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720], type metadata accessor for [_LazyLayout_Subview]);
  *&v30 = v15;
  BYTE8(v30) = 0;
  *&v31 = v6;
  BYTE8(v31) = 0;
  v19 = (*(v9 + 48))(v22, v9);
  StackPlacement.emit(_:at:size:anchor:)(v16, v17, v19, v20, &v37, &v30, a1);
  outlined destroy of _LazyLayout_Subview(&v37);
  result = outlined destroy of _LazyLayout_Subview?(v3, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, v18, type metadata accessor for [_LazyLayout_Subview]);
  *v3 = 0u;
  v3[1] = 0u;
  v3[2] = 0u;
  v3[3] = 0u;
  v3[4] = 0u;
  v3[5] = 0u;
  v3[6] = 0u;
  return result;
}

void closure #2 in StackPlacement.flushMinorGroup()(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v15 = *a2;
  v16 = *(a2 + 8);
  v17 = a2[2];
  v18 = *(a2 + 24);
  v19 = type metadata accessor for StackPlacement(0, a4, a5, a4);
  v20 = *(a3 + *(v19 + 64));
  v21 = v20 + a7;
  v22 = v20 + a6;
  if (*(a3 + *(v19 + 36)))
  {
    v22 = a6;
  }

  else
  {
    v21 = a7;
  }

  v23 = v15;
  v24 = v16;
  v25 = v17;
  v26 = v18;
  StackPlacement.emit(_:at:size:anchor:)(v22, v21, a8, a9, a1, &v23, v19);
}

double StackPlacement.placedBounds(minorAxis:)(uint64_t a1)
{
  v2 = (v1 + *(a1 + 92));
  if (*v2 >= v2[1])
  {
    return *MEMORY[0x1E695F050];
  }

  if (!*(v1 + *(a1 + 36)))
  {
    return *v2;
  }

  return result;
}

double $defer #1 <A><A1, B1>() in _LazyLayoutViewCache.withMutableCacheState<A, B>(type:_:)(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v11 - v7;
  (*(v5 + 16))(&v11 - v7, a2, AssociatedTypeWitness, v6);
  v9 = *(*a1 + 464);
  swift_beginAccess();
  (*(v5 + 40))(a1 + v9, v8, AssociatedTypeWitness);
  swift_endAccess();
  return result;
}

uint64_t LazySubviewPlacements.transaction.getter(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  AGGraphClearUpdate();
  closure #1 in LazySubviewPlacements.transaction.getter(&v3);
  AGGraphSetUpdate();
  return v3;
}

void specialized LazySubviewPlacements.makeAnchorTranslationIfNeeded(placements:context:newSize:reason:)(__int128 *a1, __int128 *a2, char *a3, uint64_t a4)
{
  v8 = a1[3];
  v99 = a1[2];
  v100 = v8;
  v101 = *(a1 + 64);
  v9 = *a1;
  v98 = a1[1];
  v97 = v9;
  v10 = a2[1];
  v117 = *a2;
  v118 = v10;
  v11 = *(a2 + 4);
  v12 = *(a2 + 5);
  v13 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v107 = a2[6];
  v106 = v15;
  v104 = v13;
  v105 = v14;
  v16 = a2[7];
  v17 = a2[8];
  v18 = a2[9];
  v111 = a2[10];
  v110 = v18;
  v108 = v16;
  v109 = v17;
  v19 = a2[11];
  v20 = a2[12];
  v21 = a2[13];
  v22 = a2[14];
  v116 = *(a2 + 30);
  v115 = v22;
  v114 = v21;
  v112 = v19;
  v113 = v20;
  v23 = *(a2 + 31);
  v24 = *(a2 + 32);
  v25 = *(a2 + 33);
  v26 = *(a2 + 34);
  v27 = a2 + 280;
  v102 = *(a2 + 280);
  v103 = *(a2 + 296);
  memcpy(__dst, v4, 0x1D9uLL);
  v120.origin.x = v23;
  v120.origin.y = v24;
  v120.size.width = v25;
  v120.size.height = v26;
  if (CGRectGetMinX(v120) <= 0.0)
  {
    v122.origin.x = v23;
    v122.origin.y = v24;
    v122.size.width = v25;
    v122.size.height = v26;
    MinY = CGRectGetMinY(v122);
    v28 = MinY <= 0.0;
    v123.origin.x = v23;
    v123.origin.y = v24;
    v123.size.width = v25;
    v123.size.height = v26;
    if (v11 <= CGRectGetMaxX(v123))
    {
      goto LABEL_7;
    }

    if (MinY <= 0.0)
    {
      return;
    }
  }

  else
  {
    v121.origin.x = v23;
    v121.origin.y = v24;
    v121.size.width = v25;
    v121.size.height = v26;
    if (v11 <= CGRectGetMaxX(v121))
    {
      v28 = 0;
LABEL_7:
      v124.origin.x = v23;
      v124.origin.y = v24;
      v124.size.width = v25;
      v124.size.height = v26;
      MaxY = CGRectGetMaxY(v124);
      if (v28 || v12 <= MaxY)
      {
        return;
      }
    }
  }

  if (v11 == 0.0)
  {
    return;
  }

  if (v12 == 0.0)
  {
    return;
  }

  if (LOBYTE(__dst[59]) != 1)
  {
    return;
  }

  memcpy(v96, v4, 0x1D9uLL);
  if (LazySubviewPlacements.scrollPhase.getter() == 4)
  {
    return;
  }

  v31 = *(a4 + 24);
  v64 = *(a4 + 16);
  (*(v31 + 32))(v96);
  v93 = 0;
  __src[8] = *&__dst[49];
  __src[9] = *&__dst[51];
  __src[10] = *&__dst[53];
  *(&__src[10] + 9) = *(&__dst[54] + 1);
  __src[4] = *&__dst[41];
  __src[5] = *&__dst[43];
  __src[6] = *&__dst[45];
  __src[7] = *&__dst[47];
  __src[0] = *&__dst[33];
  __src[1] = *&__dst[35];
  __src[2] = *&__dst[37];
  __src[3] = *&__dst[39];
  v32 = a2[1];
  v96[0] = *a2;
  v96[1] = v32;
  *&v96[2] = v11;
  *(&v96[2] + 1) = v12;
  v33 = a2[14];
  v96[13] = a2[13];
  v96[14] = v33;
  *&v96[15] = *(a2 + 30);
  v34 = a2[10];
  v96[9] = a2[9];
  v96[10] = v34;
  v35 = a2[11];
  v96[12] = a2[12];
  v96[11] = v35;
  v36 = a2[6];
  v96[5] = a2[5];
  v96[6] = v36;
  v37 = a2[7];
  v96[8] = a2[8];
  v96[7] = v37;
  v38 = a2[3];
  v96[4] = a2[4];
  v96[3] = v38;
  *(&v96[15] + 1) = v23;
  *&v96[16] = v24;
  *(&v96[16] + 1) = v25;
  *&v96[17] = v26;
  *(&v96[17] + 8) = *v27;
  BYTE8(v96[18]) = v27[16];
  v39 = PositionState.dispatchViewSizeChange(context:axes:allowedAxes:)(v96, &v93);
  v94[8] = __src[8];
  v94[9] = __src[9];
  v95[0] = __src[10];
  *(v95 + 9) = *(&__src[10] + 9);
  v94[4] = __src[4];
  v94[5] = __src[5];
  v94[6] = __src[6];
  v94[7] = __src[7];
  v94[0] = __src[0];
  v94[1] = __src[1];
  v94[2] = __src[2];
  v94[3] = __src[3];
  outlined init with copy of PositionState(&__dst[33], &v82);
  outlined init with copy of PositionState(&__dst[33], &v82);
  outlined destroy of PositionState(v94);
  if (v39)
  {
    outlined destroy of PositionState(&__dst[33]);
    v40 = 3;
  }

  else
  {
    v90 = *&__dst[49];
    v91 = *&__dst[51];
    *v92 = *&__dst[53];
    *&v92[9] = *(&__dst[54] + 1);
    v86 = *&__dst[41];
    v87 = *&__dst[43];
    v88 = *&__dst[45];
    v89 = *&__dst[47];
    v82 = *&__dst[33];
    v83 = *&__dst[35];
    v84 = *&__dst[37];
    v85 = *&__dst[39];
    v41 = a2[1];
    v96[0] = *a2;
    v96[1] = v41;
    *&v96[2] = v11;
    *(&v96[2] + 1) = v12;
    v42 = a2[14];
    v96[13] = a2[13];
    v96[14] = v42;
    *&v96[15] = *(a2 + 30);
    v43 = a2[10];
    v96[9] = a2[9];
    v96[10] = v43;
    v44 = a2[11];
    v96[12] = a2[12];
    v96[11] = v44;
    v45 = a2[6];
    v96[5] = a2[5];
    v96[6] = v45;
    v46 = a2[7];
    v96[8] = a2[8];
    v96[7] = v46;
    v47 = a2[3];
    v96[4] = a2[4];
    v96[3] = v47;
    *(&v96[15] + 1) = v23;
    *&v96[16] = v24;
    *(&v96[16] + 1) = v25;
    *&v96[17] = v26;
    *(&v96[17] + 8) = *v27;
    BYTE8(v96[18]) = v27[16];
    v48 = PositionState.dispatchContainerSizeChange(context:axes:allowedAxes:)(v96, &v93);
    __src[8] = v90;
    __src[9] = v91;
    __src[10] = *v92;
    *(&__src[10] + 9) = *&v92[9];
    __src[4] = v86;
    __src[5] = v87;
    __src[6] = v88;
    __src[7] = v89;
    __src[0] = v82;
    __src[1] = v83;
    __src[2] = v84;
    __src[3] = v85;
    outlined destroy of PositionState(__src);
    if (!v48)
    {
      return;
    }

    v40 = 4;
  }

  memcpy(v96, __dst, 0x1D9uLL);
  v49 = v93;
  __src[0] = v117;
  __src[1] = v118;
  *&__src[2] = v11;
  *(&__src[2] + 1) = v12;
  __src[13] = v114;
  __src[14] = v115;
  *&__src[15] = v116;
  __src[9] = v110;
  __src[10] = v111;
  __src[11] = v112;
  __src[12] = v113;
  __src[5] = v106;
  __src[6] = v107;
  __src[7] = v108;
  __src[8] = v109;
  __src[3] = v104;
  __src[4] = v105;
  *(&__src[15] + 1) = v23;
  *&__src[16] = v24;
  *(&__src[16] + 1) = v25;
  *&__src[17] = v26;
  *(&__src[17] + 8) = v102;
  BYTE8(__src[18]) = v103;
  v84 = v99;
  v85 = v100;
  LOBYTE(v86) = v101;
  v82 = v97;
  v83 = v98;
  LazySubviewPlacements.placedAnchorTranslation(axes:placementContext:placements:)(v93, __src, &v82, a4);
  if (v52)
  {
    memcpy(v96, __dst, 0x1D9uLL);
    memcpy(__src, __dst, 0x1D9uLL);
    implicit closure #1 in LazySubviewPlacements.makeAnchorTranslationIfNeeded(placements:context:newSize:reason:)(__src, v64, v31);
    LazySubviewPlacements.placedSubviewAnchor(subviews:frame:)(__src);

    v84 = __src[2];
    v85 = __src[3];
    v86 = __src[4];
    *&v87 = *&__src[5];
    v82 = __src[0];
    v83 = __src[1];
    v53 = *&__src[0];
    v79 = *(&__src[2] + 8);
    v80 = *(&__src[3] + 8);
    v81 = *(&__src[4] + 1);
    v77 = *(__src + 8);
    v78 = *(&__src[1] + 8);
    if (!*&__src[0])
    {
      return;
    }

    v54 = v87;
    memcpy(v96, __dst, 0x1D9uLL);
    v72 = v78;
    v73 = v79;
    v70 = *&__src[0];
    v74 = v80;
    v75 = v81;
    v71 = v77;
    __src[0] = v117;
    __src[1] = v118;
    *&__src[2] = v11;
    *(&__src[2] + 1) = v12;
    __src[13] = v114;
    __src[14] = v115;
    *&__src[15] = v116;
    __src[9] = v110;
    __src[10] = v111;
    __src[11] = v112;
    __src[12] = v113;
    __src[5] = v106;
    __src[6] = v107;
    __src[7] = v108;
    __src[8] = v109;
    __src[3] = v104;
    __src[4] = v105;
    *(&__src[15] + 1) = v23;
    *&__src[16] = v24;
    *(&__src[16] + 1) = v25;
    *&__src[17] = v26;
    *(&__src[17] + 8) = v102;
    BYTE8(__src[18]) = v103;
    v67 = v99;
    v68 = v100;
    v69 = v101;
    v65 = v97;
    v66 = v98;
    LazySubviewPlacements.placedAnchorTranslation(oldSubview:oldIndex:axes:placementContext:placements:)(&v70, v87, v49, __src, &v65, a4);
    if (v57)
    {
      memcpy(v96, __dst, 0x1D9uLL);
      specialized LazySubviewPlacements.cache.getter();
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
      AGGraphGetValue();
      if (v58)
      {
        memcpy(v96, __dst, 0x1D9uLL);
        v72 = v78;
        v73 = v79;
        v70 = v53;
        v74 = v80;
        v75 = v81;
        v71 = v77;
        __src[0] = v117;
        __src[1] = v118;
        *&__src[2] = v11;
        *(&__src[2] + 1) = v12;
        __src[13] = v114;
        __src[14] = v115;
        *&__src[15] = v116;
        __src[9] = v110;
        __src[10] = v111;
        __src[11] = v112;
        __src[12] = v113;
        __src[5] = v106;
        __src[6] = v107;
        __src[7] = v108;
        __src[8] = v109;
        __src[3] = v104;
        __src[4] = v105;
        *(&__src[15] + 1) = v23;
        *&__src[16] = v24;
        *(&__src[16] + 1) = v25;
        *&__src[17] = v26;
        *(&__src[17] + 8) = v102;
        BYTE8(__src[18]) = v103;
        v67 = v99;
        v68 = v100;
        v69 = v101;
        v65 = v97;
        v66 = v98;
        v59 = LazySubviewPlacements.notPlacedAnchorTranslation(oldSubview:oldIndex:axes:placementContext:placements:)(&v70, v54, v49, __src, &v65, a4);
        if ((v61 & 1) == 0 && ((v59 | v60) & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v62 = "list changed, found estimated subview";
          v63 = 37;
          goto LABEL_32;
        }
      }
    }

    else if (((v55 | v56) & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v62 = "found matching new subview";
      v63 = 26;
LABEL_32:
      specialized LazySubviewPlacements.logAnchorTranslation(_:)(v62, v63, 2);
      outlined destroy of Logger?(&v82, &lazy cache variable for type metadata for (_LazyLayout_PlacedSubview, Int)?, type metadata accessor for (_LazyLayout_PlacedSubview, Int));
      *a3 = v40;
      return;
    }

    outlined destroy of Logger?(&v82, &lazy cache variable for type metadata for (_LazyLayout_PlacedSubview, Int)?, type metadata accessor for (_LazyLayout_PlacedSubview, Int));
    return;
  }

  if (((v50 | v51) & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    specialized LazySubviewPlacements.logAnchorTranslation(_:)("found matching old subview", 26, 2);
    *a3 = v40;
  }
}

uint64_t initializeWithCopy for _LazyLayout_PlacedSubview(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 1);
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 56) = *(a2 + 7);
  *(a1 + 72) = a2[9];

  return a1;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE022LazySubviewMinorSizingF033_0B6308C3BA3B00B5060A0BAAE3782C53LLVG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LazySubviewMinorSizingKey>, &type metadata for EnvironmentValues.LazySubviewMinorSizingKey, &protocol witness table for EnvironmentValues.LazySubviewMinorSizingKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE022LazySubviewMinorSizingV033_0B6308C3BA3B00B5060A0BAAE3782C53LLVG_Tt0B5(a1, v6);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 72);

  return v4;
}

uint64_t sub_18D2A1EFC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

void SizingState.prepare(minorSizing:properties:viewSize:)(char a1, uint64_t a2, _BYTE *a3, double a4, double a5)
{
  if (a1 == 2)
  {
    v8 = *a3 ^ 3;
    *(v5 + 32) = v8 & 3;

    *(v5 + 40) = a2;
    *v5 = a4;
    *(v5 + 8) = a5;
    if (v8)
    {
      v10 = *(v5 + 16);
      if (v10 <= a4)
      {
        v10 = a4;
      }

      *(v5 + 16) = v10;
    }

    if ((v8 & 2) != 0)
    {
      v11 = *(v5 + 24);
      if (v11 <= a5)
      {
        v11 = a5;
      }

      *(v5 + 24) = v11;
    }
  }

  else
  {
    v12 = *(v5 + 16);
    v13 = *(v5 + 24);

    *(v5 + 40) = 0;
    v14 = v12 != 0.0;
    if (v13 != 0.0)
    {
      v14 = 1;
    }

    *(v5 + 32) = 0;
    *v5 = 0u;
    *(v5 + 16) = 0u;
    *(v5 + 33) = v14;
  }
}

void SizingState.update(subviewFrame:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = *(v4 + 32);
  if ((v9 & 1) != 0 && ((MaxX = CGRectGetMaxX(*&a1), v15.origin.x = a1, v15.origin.y = a2, v15.size.width = a3, v15.size.height = a4, CGRectGetMaxY(v15), v11 = *(v4 + 16), v11 > MaxX) ? (v12 = *(v4 + 16)) : (v12 = MaxX), v12 != v11))
  {
    *(v4 + 16) = v12;
    *(v4 + 33) = 1;
    if ((v9 & 2) == 0)
    {
      return;
    }
  }

  else if ((v9 & 2) == 0)
  {
    return;
  }

  v16.origin.x = a1;
  v16.origin.y = a2;
  v16.size.width = a3;
  v16.size.height = a4;
  CGRectGetMaxX(v16);
  v17.origin.x = a1;
  v17.origin.y = a2;
  v17.size.width = a3;
  v17.size.height = a4;
  MaxY = CGRectGetMaxY(v17);
  v14 = *(v4 + 24);
  if (v14 > MaxY)
  {
    MaxY = *(v4 + 24);
  }

  if (MaxY != v14)
  {
    *(v4 + 24) = MaxY;
    *(v4 + 33) = 1;
  }
}

void lazy protocol witness table accessor for type [_LazyLayout_PlacedSubview] and conformance [A]()
{
  if (!lazy protocol witness table cache variable for type [_LazyLayout_PlacedSubview] and conformance [A])
  {
    _sSay7SwiftUI25_LazyLayout_PlacedSubviewVGMaTm_0(255, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);
    swift_getWitnessTable(MEMORY[0x1E69E6328], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type [_LazyLayout_PlacedSubview] and conformance [A]);
  }
}

{
  if (!lazy protocol witness table cache variable for type [_LazyLayout_PlacedSubview] and conformance [A])
  {
    type metadata accessor for _LazyLayout_Subview_V1?(255, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);
    swift_getWitnessTable(MEMORY[0x1E69E6340], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type [_LazyLayout_PlacedSubview] and conformance [A]);
  }
}

uint64_t getEnumTagSinglePayload for _LazyLayout_PlacedSubview(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for _LazyLayout_PlacedSubview(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void _LazyLayout_PlacedSubview.size.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  if (*(*v0 + 44) == *MEMORY[0x1E698D3F8])
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    Value = &static LayoutComputer.defaultValue;
  }

  else
  {
    Value = AGGraphGetValue();
  }

  v6 = *Value;
  v7 = one-time initialization token for lockAssertionsAreEnabled;

  if (v7 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_12;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_12:
    v8 = v1;
    v9 = v2;
    v10 = v3;
    v11 = v4;
    (*(*v6 + 120))(&v8);
  }
}

Swift::Void __swiftcall LazyLayoutViewCache.updatePrefetchPhases()()
{
  if ((*(*v0 + 360))())
  {
    if (one-time initialization token for v7 != -1)
    {
      goto LABEL_57;
    }

    while (1)
    {
      v1 = static Semantics.v7;
      if (one-time initialization token for forced != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      if (byte_1ED53C51C == 1)
      {
        if ((dyld_program_sdk_at_least() & 1) == 0)
        {
          return;
        }
      }

      else if (static Semantics.forced < v1)
      {
        return;
      }

      swift_beginAccess();
      if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA21UsingGraphicsRendererV_Tt2g5(*(v0 + 32)))
      {
        return;
      }

      swift_beginAccess();
      v2 = *(v0 + 176);
      v3 = v2 + 64;
      v4 = 1 << *(v2 + 32);
      v5 = -1;
      if (v4 < 64)
      {
        v5 = ~(-1 << v4);
      }

      v6 = v5 & *(v2 + 64);

      swift_beginAccess();
      v7 = 0;
      v8 = (v4 + 63) >> 6;
      v41 = v2;
      v42 = v1;
      while (v6)
      {
LABEL_18:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(*(v2 + 56) + ((v7 << 9) | (8 * v10)));
        if (*(v11 + 224))
        {
          if (*(v11 + 212) == 3 && *(v0 + 192) < *(v0 + 208) - *(v11 + 188))
          {
            *(v11 + 212) = 0;

            goto LABEL_42;
          }

LABEL_27:
        }

        else
        {
          if (!*(v11 + 212))
          {

            LazyLayoutViewCache.resetMaxDisplayListSubviews(item:)(v13);
            goto LABEL_27;
          }

          v12 = *(v0 + 352);
          *(v0 + 344) = 0;
          *(v0 + 352) = 1;
          if (v12)
          {
          }

          else
          {
            v14 = *(v0 + 156);
            swift_beginAccess();
            v15 = *(v0 + 32);
            BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.UpdateCycleUseSetNeedsLayoutKey);
            v16 = v53;

            updated = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE028UpdateCycleUseSetNeedsLayoutV033_49A76CA1B5E4F66260081F1C9EDD4305LLV_Tt0B5(v15, v17, v16);
            v48 = v11;
            if (updated)
            {
              v19 = *(updated + 72);
            }

            else if (byte_1ED53C51C)
            {
              v19 = dyld_program_sdk_at_least();
            }

            else
            {
              v19 = static Semantics.forced >= v1;
            }

            swift_endAccess();
            v20 = swift_allocObject();
            *(v20 + 16) = v14;
            *(v20 + 24) = v19;
            specialized static Update.begin()();
            LOBYTE(v53) = 10;

            Update.Action.init(reason:thunk:)(&v53, closure #1 in LazyLayoutViewCache.signalPrefetch()partial apply, v20, v49);
            v45 = v49[0];
            v43 = v50;
            v40 = v52;
            v21 = one-time initialization token for actions;
            v47 = v51;

            if (v21 != -1)
            {
              swift_once();
            }

            v22 = static Update.actions;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
            }

            v24 = *(v22 + 2);
            v23 = *(v22 + 3);
            if (v24 >= v23 >> 1)
            {
              v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v22);
            }

            *(v22 + 2) = v24 + 1;
            v25 = &v22[32 * v24];
            v25[32] = v45;
            *(v25 + 5) = v43;
            *(v25 + 6) = v47;
            *(v25 + 14) = v40;
            static Update.actions = v22;

            static Update.end()();

            v11 = v48;
          }

          *(v11 + 212) = 0;
          if ((*(v11 + 224) & 1) == 0)
          {
            LazyLayoutViewCache.resetMaxDisplayListSubviews(item:)(v11);
          }

LABEL_42:
          v26 = *(v0 + 156);
          swift_beginAccess();
          v27 = *(v0 + 32);
          BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.UpdateCycleUseSetNeedsLayoutKey);
          v29 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE028UpdateCycleUseSetNeedsLayoutV033_49A76CA1B5E4F66260081F1C9EDD4305LLV_Tt0B5(v27, v28, v53);
          if (v29)
          {
            v30 = *(v29 + 72);
          }

          else if (byte_1ED53C51C)
          {
            v30 = dyld_program_sdk_at_least();
          }

          else
          {
            v30 = static Semantics.forced >= v1;
          }

          swift_endAccess();
          v31 = swift_allocObject();
          *(v31 + 16) = v26;
          *(v31 + 24) = v30;
          specialized static Update.begin()();
          LOBYTE(v53) = 10;

          Update.Action.init(reason:thunk:)(&v53, closure #1 in LazyLayoutViewCache.signalPrefetch()partial apply, v31, v49);
          v32 = v49[0];
          v33 = v50;
          v34 = v51;
          v44 = v52;
          v35 = one-time initialization token for actions;

          if (v35 != -1)
          {
            swift_once();
          }

          v36 = static Update.actions;

          v46 = v33;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 2) + 1, 1, v36);
          }

          v38 = *(v36 + 2);
          v37 = *(v36 + 3);
          if (v38 >= v37 >> 1)
          {
            v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v36);
          }

          *(v36 + 2) = v38 + 1;
          v39 = &v36[32 * v38];
          v39[32] = v32;
          *(v39 + 5) = v46;
          *(v39 + 6) = v34;
          *(v39 + 14) = v44;
          static Update.actions = v36;

          static Update.end()();

          v2 = v41;
          v1 = v42;
        }
      }

      while (1)
      {
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v9 >= v8)
        {

          return;
        }

        v6 = *(v3 + 8 * v9);
        ++v7;
        if (v6)
        {
          v7 = v9;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_57:
      swift_once();
    }
  }
}

Swift::Void __swiftcall LazyLayoutViewCache.updateItemPhases()()
{
  swift_beginAccess();
  v1 = *(v0 + 176);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = 1 << *(*(v0 + 176) + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v2;
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  if (v7)
  {
    goto LABEL_9;
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

    v7 = *(v3 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v7 &= v7 - 1;

        LazyLayoutViewCache.updateItemPhase(_:)(v11);
      }

      while (v7);
      continue;
    }
  }

  __break(1u);
}

uint64_t LazyLayoutViewCache.updateItemPhase(_:)(uint64_t a1)
{
  result = AGSubgraphIsValid();
  if (result)
  {
    v4 = *(a1 + 204);
    v5 = *(v1 + 224);
    result = AGGraphGetValue();
    v6 = *(result + 4);
    if (v4 == v5)
    {
      if (v6 == 1)
      {
        return result;
      }

      AGGraphGetValue();
      return AGGraphSetValue();
    }

    if (*(result + 4))
    {
      if (v6 == 1 && (*(a1 + 224) & 1) == 0)
      {
        AGGraphGetValue();
        result = AGGraphSetValue();
        *(a1 + 384) = 0;
        return result;
      }

      if (!*(a1 + 192))
      {
        *(a1 + 216) = 0;
        *(a1 + 224) = 1;
        if (LazyLayoutViewCache.supportsViewHierarchyPrefetching.getter())
        {
          v7 = 3;
        }

        else
        {
          v7 = 0;
        }

        *(a1 + 232) = 0u;
        v8 = a1 + 232;
        *(v8 - 20) = v7;
        *(v8 + 16) = 0u;
        *(v8 + 32) = 0u;
        *(v8 + 48) = 0u;
        *(v8 + 64) = 1;
        AGGraphGetValue();
        return AGGraphSetValue();
      }
    }
  }

  return result;
}

uint64_t static MinorProperties.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  swift_getAssociatedTypeWitness();
  type metadata accessor for MinorProperties(0, a3, a4, v6);
  swift_getAssociatedConformanceWitness();
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

void *specialized _NativeDictionary.filter(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  v18[1] = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 32);
  v11 = v10 & 0x3F;
  v12 = ((1 << v10) + 63) >> 6;
  v13 = 8 * v12;
  v14 = swift_retain_n();
  if (v11 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v17 = swift_slowAlloc();

      v15 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI12_ViewList_IDV9CanonicalVAH19LazyLayoutCacheItemCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i5UI12_kl5_IDV9n6V_AI19opqR4CTG5AOxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAlNIsgnndzo_Tf1nc_n03_s7i4UI19opkq21C7collectyyFSbAA01_E7l5_IDV9n13V3key_AA0cdF4R15C5valuet_tXEfU_AH0opkQ0CTf1nnc_nTm(v17, v12, a1, a2, a4);
      MEMORY[0x193AC4820](v17, -1, -1);

      return v15;
    }
  }

  MEMORY[0x1EEE9AC00](v14);
  bzero(v18 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0), v13);

  v15 = a3(v18 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0), v12, a1, a2);

  if (v7)
  {
    swift_willThrow();
  }

  return v15;
}

void type metadata accessor for [_LazyLayout_PlacedSubview](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void _sSay7SwiftUI25_LazyLayout_PlacedSubviewVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t _s7SwiftUI28_LazyLayout_PlacementContextVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 296);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t default argument 18 of StackPlacement.init(stack:axis:minor:visible:pinnedViews:queriedIndex:index:skipFirst:position:stoppingCondition:currentSubviews:lastSubviews:pendingHeader:placedSubviews:placedIndex:placedPosition:placedQuery:wasCancelled:estimations:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  a1[1] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v2);
  type metadata accessor for EstimationCache(0);
  type metadata accessor for IndexSet();
  lazy protocol witness table accessor for type [[_LazyLayout_Subview]] and conformance [A](&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
  v3 = MEMORY[0x1E69E6530];
  type metadata accessor for [_LazyLayout_Subview](0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [_LazyLayout_Subview] and conformance [A](&lazy protocol witness table cache variable for type [Int] and conformance [A], &lazy cache variable for type metadata for [Int], v3, MEMORY[0x1E69E6328]);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t partial apply for closure #1 in LazyStack<>.shouldResetEstimates(visibleLength:containerLength:cache:)@<X0>(double *a1@<X0>, uint64_t a2@<X3>, BOOL *a3@<X8>)
{
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = *a1;
  result = type metadata accessor for _LazyStack_Cache(0, v5, v6, a2);
  v10 = *(v7 + *(result + 52));
  v11 = v10 > 0.0;
  if (v8 <= 0.0)
  {
    v11 = 0;
  }

  if (vabdd_f64(v10, v8) < 0.01)
  {
    v11 = 0;
  }

  *a3 = v11;
  return result;
}

uint64_t _LazyStack_Cache.resetEstimates()(uint64_t a1)
{
  v3 = type metadata accessor for IndexSet();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1 + 60));
  v8 = MEMORY[0x1E69E7CC0];
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

  *v7 = v9;
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v8);

  v7[1] = v10;
  v14[1] = v8;
  lazy protocol witness table accessor for type [[_LazyLayout_Subview]] and conformance [A](&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
  v11 = MEMORY[0x1E69E6530];
  type metadata accessor for [_LazyLayout_Subview](0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [_LazyLayout_Subview] and conformance [A](&lazy protocol witness table cache variable for type [Int] and conformance [A], &lazy cache variable for type metadata for [Int], v11, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v12 = type metadata accessor for EstimationCache(0);
  return (*(v4 + 40))(v7 + *(v12 + 24), v6, v3);
}

double EstimationCache.add(length:spacing:count:)(unint64_t a1, char a2, void (*i)(void *a1@<X8>), double a4)
{
  v6 = v4;
  LOBYTE(v8) = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v4;
  v81 = *v4;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    goto LABEL_71;
  }

  v5 = v14;
  if (v12[3] >= v18)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_73;
    }

LABEL_6:
    *v6 = v12;
    if (v5)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, isUniquelyReferenced_nonNull_native);
  v12 = v81;
  v19 = v81;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a4);
  if ((v5 & 1) == (v20 & 1))
  {
    goto LABEL_6;
  }

LABEL_14:
  v13 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_15:
  if ((v8 & 1) == 0)
  {
    goto LABEL_77;
  }

LABEL_16:
  v6[1] = v19;
  if ((a1 & 1) == 0)
  {
LABEL_17:
    a1 = v13;
    specialized _NativeDictionary._insert(at:key:value:)(v13, 0, v19, a4);
    v13 = a1;
  }

  while (1)
  {
    v30 = v19[7];
    v31 = *(v30 + 8 * v13);
    v17 = __OFADD__(v31, i);
    v32 = i + v31;
    if (!v17)
    {
      break;
    }

LABEL_76:
    __break(1u);
LABEL_77:
    v8 = v13;
    specialized _NativeDictionary.copy()();
    v13 = v8;
    v19 = v81;
    v6[1] = v81;
    if ((a1 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  *(v30 + 8 * v13) = v32;
  for (i = protocol witness for Collection.startIndex.getter in conformance ViewGraphFeatureBuffer; ; i = 0)
  {
    if (v12[2] >= 0x1AuLL)
    {
      v33 = 1 << *(v12 + 32);
      v34 = -1;
      if (v33 < 64)
      {
        v34 = ~(-1 << v33);
      }

      v35 = v34 & v12[8];
      if (v35)
      {
        v36 = 0;
        v37 = __clz(__rbit64(v35));
        v38 = (v35 - 1) & v35;
        v39 = (v33 + 63) >> 6;
LABEL_29:
        v43 = v12[6];
        v44 = v12[7];
        v45 = *(v43 + 8 * v37);
        v46 = *(v44 + 8 * v37);
        if (!v38)
        {
          goto LABEL_31;
        }

        do
        {
          v47 = v36;
LABEL_35:
          v48 = (v47 << 9) | (8 * __clz(__rbit64(v38)));
          v49 = *(v43 + v48);
          v38 &= v38 - 1;
          v50 = *(v44 + v48);
          if (v50 < v46)
          {
            v45 = v49;
            v46 = v50;
          }
        }

        while (v38);
        while (1)
        {
LABEL_31:
          v47 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            __break(1u);
            goto LABEL_70;
          }

          if (v47 >= v39)
          {
            break;
          }

          v38 = v12[v47 + 8];
          ++v36;
          if (v38)
          {
            v36 = v47;
            goto LABEL_35;
          }
        }

        v13 = specialized __RawDictionaryStorage.find<A>(_:)(v45);
        if (v51)
        {
          v52 = v13;
          v53 = swift_isUniquelyReferenced_nonNull_native();
          v54 = *v6;
          v81 = *v6;
          if (!v53)
          {
            specialized _NativeDictionary.copy()();
            v54 = v81;
          }

          v13 = specialized _NativeDictionary._delete(at:)(v52, v54);
          *v6 = v54;
        }
      }

      else
      {
        v40 = 0;
        v41 = 0;
        v39 = (v33 + 63) >> 6;
        while (v39 - 1 != v41)
        {
          v36 = v41 + 1;
          v42 = v12[v41 + 9];
          v40 -= 64;
          ++v41;
          if (v42)
          {
            v38 = (v42 - 1) & v42;
            v37 = __clz(__rbit64(v42)) - v40;
            goto LABEL_29;
          }
        }
      }
    }

    v55 = v6[1];
    if (*(v55 + 16) < 0x1AuLL)
    {
      break;
    }

    v56 = 1 << *(v55 + 32);
    v57 = -1;
    if (v56 < 64)
    {
      v57 = ~(-1 << v56);
    }

    v58 = v57 & *(v55 + 64);
    if (!v58)
    {
      v63 = 0;
      v64 = 0;
      v62 = (v56 + 63) >> 6;
      while (v62 - 1 != v64)
      {
        v59 = v64 + 1;
        v65 = *(v55 + 72 + 8 * v64);
        v63 -= 64;
        ++v64;
        if (v65)
        {
          v61 = (v65 - 1) & v65;
          v60 = __clz(__rbit64(v65)) - v63;
          goto LABEL_52;
        }
      }

      break;
    }

    v59 = 0;
    v60 = __clz(__rbit64(v58));
    v61 = (v58 - 1) & v58;
    v62 = (v56 + 63) >> 6;
LABEL_52:
    v66 = *(v55 + 48);
    v67 = *(v55 + 56);
    v68 = *(v66 + 8 * v60);
    v69 = *(v67 + 8 * v60);
    if (!v61)
    {
      goto LABEL_54;
    }

    do
    {
      v70 = v59;
LABEL_58:
      v71 = (v70 << 9) | (8 * __clz(__rbit64(v61)));
      v72 = *(v66 + v71);
      v61 &= v61 - 1;
      v73 = *(v67 + v71);
      if (v73 < v69)
      {
        v68 = v72;
        v69 = v73;
      }
    }

    while (v61);
LABEL_54:
    while (1)
    {
      v70 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        break;
      }

      if (v70 >= v62)
      {
        v74 = specialized __RawDictionaryStorage.find<A>(_:)(v68);
        if ((v75 & 1) == 0)
        {
          goto LABEL_66;
        }

        v76 = v74;
        v77 = swift_isUniquelyReferenced_nonNull_native();
        v78 = v6[1];
        if (!v77)
        {
          specialized _NativeDictionary.copy()();
        }

        specialized _NativeDictionary._delete(at:)(v76, v78);
        result = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(i, 0);
        v6[1] = v78;
        return result;
      }

      v61 = *(v55 + 64 + 8 * v70);
      ++v59;
      if (v61)
      {
        v59 = v70;
        goto LABEL_58;
      }
    }

LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    do
    {
      __break(1u);
LABEL_73:
      v80 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v80;
      v12 = v81;
      *v6 = v81;
      if ((v5 & 1) == 0)
      {
LABEL_7:
        v21 = v13;
        specialized _NativeDictionary._insert(at:key:value:)(v13, 0, v12, a4);
        v13 = v21;
      }

LABEL_8:
      v22 = v12[7];
      v23 = *(v22 + 8 * v13);
      v17 = __OFADD__(v23, i);
      v24 = i + v23;
    }

    while (v17);
    *(v22 + 8 * v13) = v24;
    if ((v8 & 1) == 0)
    {
      a4 = *&a1;
      v8 = swift_isUniquelyReferenced_nonNull_native();
      v19 = v6[1];
      v81 = v19;
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(*&a1);
      v26 = v19[2];
      v27 = (v25 & 1) == 0;
      v17 = __OFADD__(v26, v27);
      v28 = v26 + v27;
      if (v17)
      {
        __break(1u);
        goto LABEL_76;
      }

      a1 = v25;
      if (v19[3] >= v28)
      {
        goto LABEL_15;
      }

      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v28, v8);
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(a4);
      if ((a1 & 1) == (v29 & 1))
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }
  }

LABEL_66:

  return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(i, 0);
}

void closure #1 in _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  if (a3)
  {
    LazyLayoutViewCache.item(data:)((a1 + 16));

    LayoutProxy.spacing()();
    v14 = *AGGraphGetValue();
    LazyLayoutViewCache.item(data:)((a5 + 16));

    LayoutProxy.spacing()();
    v9 = a4 & 1;
    v10 = Spacing.distanceToSuccessorView(along:layoutDirection:preferring:)(v9, &v14, &v13);
    LOBYTE(a5) = v11;

    if (a5)
    {
      swift_beginAccess();
      v12 = &dbl_1EAB21528;
      if (!v9)
      {
        v12 = static Spacing.defaultValue;
      }

      *a6 = *v12;
    }

    else
    {
      *a6 = v10;
    }
  }

  else
  {
    *a6 = a2;
  }
}

uint64_t EstimationCache.merge(_:)(uint64_t *a1)
{
  v3 = *a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v1;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v3, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v8);
  *v1 = v8;
  v5 = a1[1];

  v6 = swift_isUniquelyReferenced_nonNull_native();
  v8 = v1[1];
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v5, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v6, &v8);
  v1[1] = v8;
  type metadata accessor for EstimationCache(0);
  return IndexSet.formUnion(_:)();
}

uint64_t destroy for EstimationCache(char *a1, uint64_t a2)
{

  v4 = *(a2 + 24);
  v5 = type metadata accessor for IndexSet();
  v6 = *(*(v5 - 8) + 8);

  return v6(&a1[v4], v5);
}

uint64_t specialized LazyStack<>.log(_:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  type metadata accessor for Logger?(0);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v5, static Log.lazyStack);
  outlined init with copy of EstimationCache(v12, v7, type metadata accessor for Logger?);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of EstimationCache(v7, type metadata accessor for Logger?);
  }

  v14 = (*(v9 + 32))(v11, v7, v8);
  v15 = a1(v14);
  v17 = v16;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v27 = v15;
    v21 = v20;
    v22 = swift_slowAlloc();
    v28 = v22;
    *v21 = 136315394;
    v23 = _typeName(_:qualified:)();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v28);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v17, &v28);

    *(v21 + 14) = v26;
    _os_log_impl(&dword_18D018000, v18, v19, "%s: %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v22, -1, -1);
    MEMORY[0x193AC4820](v21, -1, -1);
  }

  else
  {
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t destroy for StackPlacement(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)(a1, *(a2 + 16));
  v4 = *(v3 + 56);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = v6 + 8;
  v8 = *(v6 + 80);
  v9 = (a1 + v4 + (v8 | 7) + 1) & ~(v8 | 7);
  (*(v6 + 8))((v8 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8, AssociatedTypeWitness);
  v10 = ((((((((*(v7 + 56) + ((v8 + 16) & ~v8) + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 43) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15;

  v11 = (((v10 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  if (*v11 >= 0xFFFFFFFFuLL)
  {

    __swift_destroy_boxed_opaque_existential_1(v11 + 2);
  }

  v12 = (((((((v11 + 119) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = type metadata accessor for IndexSet();
  v17 = *(v13 - 8);
  v14 = *(v17 + 80);

  v15 = *(v17 + 8);

  return v15((v14 + ((((v12 + (v14 | 7) + 17) & ~(v14 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14, v13);
}

void type metadata accessor for KeyPath<EnvironmentValues, CGFloat>()
{
  if (!lazy cache variable for type metadata for KeyPath<EnvironmentValues, CGFloat>)
  {
    v0 = type metadata accessor for KeyPath();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, CGFloat>);
    }
  }
}

Swift::Int __swiftcall _ViewList_Node.estimatedCount(style:)(SwiftUI::_ViewList_IteratorStyle style)
{
  v2 = *style.value;
  outlined init with copy of _ViewList_Node(v1, &v19);
  if (v24 <= 1u)
  {
    if (!v24)
    {
      outlined init with take of AnyTrackedValue(&v19, &v13);
      v3 = *(&v14 + 1);
      v4 = v15;
      __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
      v18 = v2;
      v5 = (*(v4 + 24))(&v18, v3, v4);
      __swift_destroy_boxed_opaque_existential_1(&v13);
      return v5;
    }

    v15 = v21;
    v16 = v22;
    v17[0] = *v23;
    *(v17 + 13) = *&v23[13];
    v13 = v19;
    v14 = v20;
    v5 = *(&v19 + 1);
    outlined destroy of _ViewList_Sublist(&v13);
    if ((v2 & 1) == 0)
    {
      return v5;
    }

    v12 = (v5 * (v2 >> 1)) >> 64;
    v5 *= v2 >> 1;
    if (v12 == v5 >> 63)
    {
      return v5;
    }

    __break(1u);
LABEL_13:
    LODWORD(v13) = v19;
    *(&v13 + 1) = *(&v19 + 1);
    *&v14 = v20;
    BYTE8(v14) = BYTE8(v20);
    v18 = v2;
    v5 = _ViewList_Section.estimatedCount(style:)(&v18);

LABEL_14:

    return v5;
  }

  if (v24 != 2)
  {
    goto LABEL_13;
  }

  v6 = *(v19 + 16);
  if (!v6)
  {

    return 0;
  }

  v5 = 0;
  v7 = v19 + 32;
  while (1)
  {
    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v7, &v13, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
    v8 = *(&v14 + 1);
    v9 = v15;
    __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
    v18 = v2;
    result = (*(v9 + 24))(&v18, v8, v9);
    v11 = __OFADD__(v5, result);
    v5 += result;
    if (v11)
    {
      break;
    }

    outlined destroy of (list: ViewList, attribute: Attribute<ViewList>)(&v13, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
    v7 += 48;
    if (!--v6)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t StackPlacement.place(subviews:from:position:stopping:style:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, unint64_t *a6, uint64_t a7)
{
  v8 = v7;
  v14 = *a6;
  v15 = *(a7 + 44);
  v26 = a3;
  v27 = a1;
  v28 = *(v8 + v15);
  v16 = *(a7 + 16);
  v17 = *(a7 + 24);
  specialized StackPlacement.log(_:)(partial apply for implicit closure #3 in StackPlacement.place(subviews:from:position:stopping:style:), v25, v16, v17);
  result = StackPlacement.reset(index:position:stoppingCondition:skipFirst:)(a3, a4, a5 & 1, 0, a7, a1);
  v19 = *(a7 + 56);
  v20 = *(v8 + v19);
  v21 = *(v8 + *(a7 + 40));
  if (v20 >= v21)
  {
    *(v8 + *(a7 + 60)) = 1;
    v22 = __OFSUB__(v20, v21);
    v20 -= v21;
    if (v22)
    {
      __break(1u);
      return result;
    }

    *(v8 + v19) = v20;
  }

  v29 = v14;
  v30 = v20;
  MEMORY[0x1EEE9AC00](result);
  v24[2] = v16;
  v24[3] = v17;
  v24[4] = v8;
  v23 = _LazyLayout_Subviews.applyNodes(from:style:to:)(&v30, &v29, partial apply for closure #1 in StackPlacement.place(subviews:from:position:stopping:style:), v24);
  StackPlacement.flushMinorGroup()(a7);
  return (v23 & 1) != 0 && vabdd_f64(*(v8 + *(a7 + 64)), *(v8 + *(a7 + 92) + 8)) < 0.01;
}

uint64_t initializeWithCopy for _LazyLayout_Subviews(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 2);
  v4 = *(a2 + 109);

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(a1 + 16) = a2[2];
      *(a1 + 109) = 2;
LABEL_9:

      goto LABEL_10;
    }

    *(a1 + 16) = *(a2 + 4);
    v11 = a2[4];
    *(a1 + 24) = a2[3];
    *(a1 + 32) = v11;
    *(a1 + 40) = *(a2 + 40);
    v10 = 3;
LABEL_8:
    *(a1 + 109) = v10;

    goto LABEL_9;
  }

  if (v4)
  {
    *(a1 + 16) = *(a2 + 1);
    *(a1 + 32) = a2[4];
    *(a1 + 40) = a2[5];
    v6 = *(a2 + 9);
    *(a1 + 72) = v6;
    v7 = v6;
    v8 = **(v6 - 8);

    v8(a1 + 48, a2 + 6, v7);
    v9 = a2[12];
    *(a1 + 88) = a2[11];
    *(a1 + 96) = v9;
    *(a1 + 104) = *(a2 + 26);
    *(a1 + 108) = *(a2 + 108);
    v10 = 1;
    goto LABEL_8;
  }

  v5 = *(a2 + 5);
  *(a1 + 40) = v5;
  (**(v5 - 8))(a1 + 16, a2 + 2);
  *(a1 + 56) = *(a2 + 14);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 109) = 0;
LABEL_10:
  v12 = a2[15];
  *(a1 + 112) = a2[14];
  *(a1 + 120) = v12;
  *(a1 + 128) = *(a2 + 32);
  *(a1 + 131) = *(a2 + 131);
  *(a1 + 136) = a2[17];

  return a1;
}

double destroy for _LazyLayout_Subviews.Node(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2 >= 2)
  {
    v2 = *a1 + 2;
  }

  if (v2 == 1)
  {

    return result;
  }

  v4 = *(a1 + 109);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      goto LABEL_15;
    }

    if (v4 == 3)
    {

      goto LABEL_15;
    }
  }

  else if (*(a1 + 109))
  {
    if (v4 == 1)
    {

      __swift_destroy_boxed_opaque_existential_1((a1 + 48));

LABEL_15:
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((a1 + 16));
  }

  return result;
}

BOOL StackPlacement.isVisible(length:)(_BOOL8 result, double a2)
{
  v3 = (v2 + *(result + 68));
  if (*(v3 + 8) == 1)
  {
    v4 = (v2 + *(result + 44));
    v5 = *(result + 64);
    v6 = *(v2 + v5);
    v7 = *v4;
    if (*v4 <= v6)
    {
      v7 = *(v2 + v5);
    }

    v8 = v6 + a2;
    if (v8 >= v4[1])
    {
      v8 = v4[1];
    }

    v9 = a2 == 0.0;
    if (v7 != v8)
    {
      v9 = 0;
    }

    return v7 < v8 || v9;
  }

  else
  {
    v10 = *(v2 + *(result + 56));
    v11 = *(v2 + *(result + 40)) + v10;
    if (v11 < v10)
    {
      __break(1u);
    }

    else
    {
      v12 = *v3;
      return v12 >= v10 && v12 < v11;
    }
  }

  return result;
}

int *StackPlacement.addVisibleSubview(length:spacing:)(int *result, double a2, double a3)
{
  v4 = (v3 + result[22]);
  v5 = *(v3 + result[14]);
  v6 = *v4;
  v7 = v4[1];
  if (v5 < *v4)
  {
    v6 = *(v3 + result[14]);
  }

  *v4 = v6;
  v8 = *(v3 + result[10]);
  v9 = __OFADD__(v5, v8);
  v10 = v5 + v8;
  v11 = v9;
  if (v10 - 1 > v7)
  {
    v7 = v10 - 1;
  }

  v4[1] = v7;
  v12 = (v3 + result[23]);
  v13 = *(v3 + result[16]);
  v14 = v13 - a3;
  if (v14 >= *v12)
  {
    v14 = *v12;
  }

  v15 = v13 + a2;
  if (v12[1] > v15)
  {
    v16 = v12[1];
  }

  else
  {
    v16 = v15;
  }

  *v12 = v14;
  v12[1] = v16;
  v17 = v3 + result[13];
  if ((*(v17 + 8) & 1) == 0)
  {
    if (v11)
    {
      __break(1u);
    }

    else if (v10 >= v5)
    {
      if (*v17 >= v5 && *v17 < v10)
      {
        v19 = (v3 + result[24]);
        v20 = *v19;
        if (v13 < *v19)
        {
          v20 = v13;
        }

        if (v19[1] > v15)
        {
          v15 = v19[1];
        }

        *v19 = v20;
        v19[1] = v15;
      }

      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t destroy for _LazyStack_Cache(unsigned __int16 *a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  v7 = ~v6;
  v8 = ((v6 + 16) & ~v6) + *(v4 + 64);
  if (v5)
  {
    if ((*(v4 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & v7, *(v4 + 84), AssociatedTypeWitness))
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (!*(a1 + v8))
  {
    goto LABEL_20;
  }

  v9 = (*(a1 + v8) - 1) << (8 * v8);
  if (v8 > 3)
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = v8 <= 3 ? ((v6 + 16) & ~v6) + *(v4 + 64) : 4;
    if (v10 > 2)
    {
      v11 = v10 == 3 ? *a1 | (*(a1 + 2) << 16) : *a1;
    }

    else
    {
      v11 = v10 == 1 ? *a1 : *a1;
    }
  }

  else
  {
    v11 = 0;
  }

  if ((v11 | v9) == 0xFFFFFFFF)
  {
LABEL_20:
    (*(v4 + 8))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & v7, AssociatedTypeWitness);
  }

LABEL_21:
  if (v5)
  {
    v12 = a1;
  }

  else
  {
    v12 = (a1 + 1);
  }

  v13 = (((((((((v12 + v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = type metadata accessor for IndexSet();
  v18 = *(v14 - 8);
  v15 = *(v18 + 80);

  v16 = *(v18 + 8);

  return v16((v15 + ((((v13 + (v15 | 7) + 8) & ~(v15 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v15, v14);
}

double closure #1 in LazySubviewPlacements.transaction.getter@<D0>(void *a2@<X8>)
{
  type metadata accessor for LazyLayoutViewCache();
  AGGraphGetValue();
  swift_beginAccess();
  *a2 = *AGGraphGetValue();

  return result;
}

void type metadata accessor for KeyPath<EnvironmentValues, LazySubviewMinorSizingConfiguration>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t initializeWithCopy for _LazyLayout_Placements(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 1);
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 3);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

void lazy protocol witness table accessor for type EnvironmentFetch<LazySubviewMinorSizingConfiguration> and conformance EnvironmentFetch<A>(unint64_t *a1, const char *a2)
{
  if (!*a1)
  {
    _sSay7SwiftUI25_LazyLayout_PlacedSubviewVGMaTm_0(255, &lazy cache variable for type metadata for EnvironmentFetch<LazySubviewMinorSizingConfiguration>, &type metadata for LazySubviewMinorSizingConfiguration, type metadata accessor for EnvironmentFetch);
    swift_getWitnessTable(a2, v4);
    atomic_store(v5, a1);
  }
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t LazyLayoutCacheItem.attach(to:)(uint64_t a1)
{
  result = AGSubgraphAddChild();
  v3 = *(v1 + 386);
  if (v3 != 2 && (v3 & 1) != 0)
  {
    result = AGSubgraphApply();
  }

  *(v1 + 386) = 0;
  return result;
}

uint64_t LazyViewGeometry.value.getter@<X0>(uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (!a3)
  {
    __break(1u);
LABEL_26:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  type metadata accessor for LazyLayoutCacheItem.AllItemsPhaseMutation?(0, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);
  Value = AGGraphGetValue();
  LazyLayoutViewCache.placement(of:in:)(a3, *Value, &v41);
  if (v49)
  {
    v7 = AGGraphGetValue();
    v8 = v7[1];
    v39 = *v7;
    v40 = v8;
    ViewSize.proposal.getter(&v35);
    v9 = v35;
    v10 = v36;
    v34 = 0.0;
    v11 = 0.0;
    v12 = v37;
    v13 = 0.0;
    v14 = 0.0;
    v15 = v38;
  }

  else
  {
    v13 = v47;
    v14 = v48;
    v11 = v46;
    v34 = v45;
    v12 = v43;
    v9 = v41;
    v10 = v42;
    v15 = v44;
  }

  if (*(a3 + 44) == *MEMORY[0x1E698D3F8])
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v16 = &static LayoutComputer.defaultValue;
  }

  else
  {
    v16 = AGGraphGetValue();
  }

  v17 = *v16;
  v18 = *(v16 + 1);
  v19 = one-time initialization token for lockAssertionsAreEnabled;
  swift_retain_n();
  if (v19 != -1)
  {
    swift_once();
  }

  if (lockAssertionsAreEnabled)
  {
    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      goto LABEL_26;
    }
  }

  *&v39 = v9;
  if (v15)
  {
    v20 = NAN;
  }

  else
  {
    v20 = v12;
  }

  BYTE8(v39) = v10 & 1;
  *&v40 = v12;
  BYTE8(v40) = v15 & 1;
  if (v10)
  {
    v21 = NAN;
  }

  else
  {
    v21 = v9;
  }

  v22 = (*(*v17 + 120))(&v39);
  v24 = v23;
  v25 = v13 - v34 * v22;
  v26 = v14 - v11 * v23;
  *a4 = v25;
  *(a4 + 8) = v26;
  *(a4 + 16) = v17;
  *(a4 + 24) = v18;
  *(a4 + 32) = v22;
  *(a4 + 40) = v23;
  *(a4 + 48) = v21;
  *(a4 + 56) = v20;

  v27 = *AGGraphGetValue();
  v28 = AGGraphGetValue();
  if (v27 == 1)
  {
    v29 = *v28;
    v50.origin.x = v13 - v34 * v22;
    v50.origin.y = v26;
    v50.size.width = v22;
    v50.size.height = v24;
    v25 = v29 - CGRectGetMaxX(v50);
    *a4 = v25;
  }

  type metadata accessor for CGPoint(0);
  v30 = AGGraphGetValue();
  v31 = *v30;
  v32 = v30[1];

  *a4 = v25 + v31;
  *(a4 + 8) = v26 + v32;
  return result;
}

uint64_t LazyLayoutViewCache.placement(of:in:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((*(result + 224) & 1) == 0)
  {
    v3 = *(result + 216);
    v4 = *(a2 + 16);
    if (v3 < v4)
    {
      if (v3 < 0)
      {
        __break(1u);
        return result;
      }

      v5 = a2 + 80 * v3;
      v7 = *(v5 + 32);
      v6 = v5 + 32;
      if (v7 == result)
      {
        v17 = *(v6 + 24);
        *a3 = *(v6 + 8);
        *(a3 + 16) = v17;
        v15 = *(v6 + 40);
        v16 = *(v6 + 56);
LABEL_14:
        *(a3 + 32) = v15;
        *(a3 + 48) = v16;
        *(a3 + 64) = 0;
        return result;
      }
    }

    if (v4)
    {
      v8 = (a2 + 40);
      while (*(v8 - 1) != result)
      {
        v8 += 5;
        if (!--v4)
        {
          goto LABEL_9;
        }
      }

      v14 = v8[1];
      *a3 = *v8;
      *(a3 + 16) = v14;
      v15 = v8[2];
      v16 = v8[3];
      goto LABEL_14;
    }
  }

LABEL_9:
  v9 = *(result + 368);
  if (v9)
  {
    v10 = *(result + 248);
    *(a3 + 64) = *(result + 296);
    *a3 = *(result + 232);
    *(a3 + 16) = v10;
    v11 = *(result + 280);
    *(a3 + 32) = *(result + 264);
    *(a3 + 48) = v11;
  }

  else
  {
    v12 = *(result + 320);
    *a3 = *(result + 304);
    *(a3 + 16) = v12;
    v13 = *(result + 352);
    *(a3 + 32) = *(result + 336);
    *(a3 + 48) = v13;
    *(a3 + 64) = v9;
  }

  return result;
}

uint64_t LazySubviewPlacements.placeSubviews(placementContext:in:nearestVisibleRect:containingVisibleRect:)(void *__src, uint64_t a2, CGRect *a3, CGRect *a4, uint64_t a5)
{
  v6 = v5;
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v79, __src, 0x129uLL);
  LazySubviewPlacements.resolvedPlacementContext(placementContext:)(v79, a5, v77);
  type metadata accessor for LazyLayoutViewCache();
  v11 = *AGGraphGetValue();
  v13 = *(a5 + 16);
  v12 = *(a5 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = v13;
  v56 = v12;
  v57 = v6;
  v58 = v77;
  v59 = a2;
  v15 = *(*v11 + 408);

  v15(AssociatedTypeWitness, partial apply for closure #1 in LazySubviewPlacements.placeSubviews(placementContext:in:nearestVisibleRect:containingVisibleRect:), v54, AssociatedTypeWitness, MEMORY[0x1E69E7CA8] + 8);

  if (*(a2 + 40) == 1)
  {
    v16 = *(v6 + 40);
    if (v16 != *MEMORY[0x1E698D3F8])
    {
      v17 = v16;
      AGGraphGetValue();

      LazyLayoutViewCache.invalidateSize(layoutComputer:animation:)(v17, 0);
    }
  }

  memcpy(v76, v6, sizeof(v76));
  v18 = LazySubviewPlacements.transaction.getter(a5);
  type metadata accessor for KeyPath<EnvironmentValues, LazySubviewMinorSizingConfiguration>(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.ScrollContentAdjustmentBehaviorKey>, &type metadata for Transaction.ScrollContentAdjustmentBehaviorKey, &protocol witness table for Transaction.ScrollContentAdjustmentBehaviorKey, type metadata accessor for TransactionPropertyKey);
  BloomFilter.init(hashValue:)(v19);
  v20 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0V031ScrollContentAdjustmentBehaviorV033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt0B5(v18, v79[0]);
  if (v20)
  {
    v21 = *(v20 + 72) == 2;
  }

  else
  {
    v21 = 0;
  }

  AGGraphGetValue();

  v22 = *AGGraphGetValue();

  v23 = *(v6 + 432);
  v24 = *(v6 + 440);
  v25 = *(v6 + 448);
  result = AGGraphGetValue();
  v75 = 5;
  v27 = 0.0;
  if (v25)
  {
    v28 = 0.0;
  }

  else
  {
    v29 = v23 == 0.0;
    if (v24 != 0.0)
    {
      v29 = 0;
    }

    v28 = 0.0;
    if (!v29 && !v21)
    {
      v75 = 1;
      v27 = v24;
      v28 = v23;
    }
  }

  v30 = *(a2 + 48);
  v31 = *(a2 + 56);
  v32 = v30 == 0.0;
  if (v31 != 0.0)
  {
    v32 = 0;
  }

  if (!v32 && !v21)
  {
    v28 = v28 + v30;
    v27 = v27 + v31;
    v75 = 0;
  }

  v33 = v28 != 0.0;
  if (v27 != 0.0)
  {
    v33 = 1;
  }

  if (!v33 && !v21)
  {
    memcpy(v68, v6, 0x1D9uLL);
    memcpy(__srca, v6, 0x1D9uLL);
    v34 = *(a2 + 16);
    v35 = *(a2 + 48);
    v70 = *(a2 + 32);
    v71 = v35;
    v36 = *a2;
    v37 = *a2;
    v69[1] = *(a2 + 16);
    v69[0] = v36;
    v38 = *(a2 + 48);
    v64 = v70;
    v65 = v38;
    v72 = *(a2 + 64);
    v66 = *(a2 + 64);
    v62 = v37;
    v63 = v34;
    memcpy(v61, __dst, 0x129uLL);
    v39 = *(a5 - 8);
    (*(v39 + 16))(v60, v68, a5);
    outlined init with copy of _LazyLayout_Placements(v69, v60);
    specialized LazySubviewPlacements.makeAnchorTranslationIfNeeded(placements:context:newSize:reason:)(&v62, v61, &v75, a5);
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v73[2] = v64;
    v73[3] = v65;
    v74 = v66;
    v73[1] = v63;
    v73[0] = v62;
    outlined destroy of _LazyLayout_Placements(v73);
    memcpy(v79, __srca, 0x1D9uLL);
    result = (*(v39 + 8))(v79, a5);
    if ((v45 & 1) == 0)
    {
      v28 = v41;
      v27 = v43;
    }
  }

  if ((v22 & (v28 != 0.0)) != 0)
  {
    v46 = -v28;
  }

  else
  {
    v46 = v28;
  }

  if (v27 != 0.0 || v28 != 0.0)
  {
    v48 = v75;
    if (v75 != 5)
    {
      specialized LazySubviewPlacements.logTranslation(_:reason:)(v75, v46, v27);
      *a3 = CGRectOffset(*a3, v46, v27);
      *a4 = CGRectOffset(*a4, v46, v27);
      *(v6 + 456) = v46;
      *(v6 + 464) = v27;
      *(v6 + 472) = 0;
      AGGraphClearUpdate();
      memcpy(v79, v6, 0x1D9uLL);
      LazySubviewPlacements.parent.getter(v68);
      AGGraphSetUpdate();
      if (v48)
      {
        memcpy(v79, v6, 0x1D9uLL);
        if (LazySubviewPlacements.scrollPhase.getter())
        {
          v49 = v48 == 1;
        }

        else
        {
          v49 = 1;
        }

        v50 = v49;
      }

      else
      {
        v50 = 0;
      }

      outlined init with copy of Scrollable?(v68, v79);
      v51 = v79[3];
      if (v79[3])
      {
        v52 = v79[4];
        __swift_project_boxed_opaque_existential_1(v79, v79[3]);
        __srca[0] = v50;
        (*(v52 + 32))(__srca, v51, v52, v46, v27);
        outlined destroy of Scrollable?(v68);
        result = __swift_destroy_boxed_opaque_existential_1(v79);
      }

      else
      {
        outlined destroy of Scrollable?(v68);
        result = outlined destroy of Scrollable?(v79);
      }
    }
  }

  *(v6 + 432) = 0;
  *(v6 + 440) = 0;
  *(v6 + 448) = 1;
  return result;
}

uint64_t LazyStack<>.placer(subviews:context:cache:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v108 = a2;
  v107 = a5;
  v8 = type metadata accessor for EstimationCache(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v97 = (v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v96 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v98 = v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MinorProperties(255, a3, a4, v12);
  v14 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v94 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v100 = v88 - v15;
  v103 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v99 = v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v88 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v88 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v88 - v25;
  v106 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v101 = v88 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v104 = v88 - v30;
  v31 = *(a1 + 32);
  v32 = *(a1 + 40);
  v95 = *(a1 + 48);
  v33 = *(a1 + 104);
  v34 = *(a1 + 136);
  v115 = *(a1 + 120);
  v116.origin = v34;
  v116.size = *(a1 + 152);
  v35 = *(a1 + 72);
  v111 = *(a1 + 56);
  v36 = *(a1 + 88);
  v114 = v33;
  v112 = v35;
  v113 = v36;
  v37 = *(a1 + 280);
  v38 = *(a1 + 288);
  v39 = *(a1 + 296);
  v40 = (*(a4 + 32))(a3, a4);
  if (v39 == 1)
  {
    ScrollGeometry.outsetForAX(limit:)(__PAIR128__(v38, v37));
  }

  origin = v116.origin;
  size = v116.size;
  result = CGRectIsNull(v116);
  v44 = 0.0;
  if (result)
  {
    goto LABEL_25;
  }

  v45 = v40 & 1;
  if (v40)
  {
    height = size.height;
  }

  else
  {
    height = size.width;
  }

  if (v40)
  {
    y = origin.y;
  }

  else
  {
    y = origin.x;
  }

  v48 = y + height;
  if (v48 >= y)
  {
    v49 = y;
  }

  else
  {
    v49 = v48;
  }

  if (y > v48)
  {
    v48 = y;
  }

  v44 = v49 > v48 ? 0.0 : v48;
  v50 = v49 > v48 ? 0.0 : v49;
  v51 = v50 > 0.0 ? v50 : 0.0;
  if (v51 >= v44)
  {
LABEL_25:
    v86 = MEMORY[0x1EEE9AC00](result);
    v87 = v44;
    specialized LazyStack<>.log(_:)(partial apply for implicit closure #1 in LazyStack<>.placer(subviews:context:cache:), v84, a3);
    v53 = type metadata accessor for _LazyStack_Cache(0, a3, a4, v52);
LABEL_26:
    _LazyStack_Cache.reset()(v53);
    v55 = type metadata accessor for StackPlacement(0, a3, a4, v54);
    return (*(*(v55 - 8) + 56))(v107, 1, 1, v55);
  }

  if (v51 <= v44)
  {
    if (v40)
    {
      v56 = v31;
    }

    else
    {
      v56 = v32;
    }

    v110 = v56;
    LazyStack<>.resolveMinorProperties(minorSize:cache:)(&v110, a3, a4, v26);
    v57 = v106;
    v93 = *(v106 + 48);
    if (v93(v26, 1, v13) == 1)
    {
      v58 = (*(v103 + 8))(v26, v14);
LABEL_41:
      MEMORY[0x1EEE9AC00](v58);
      v86 = v51;
      v87 = v44;
      specialized LazyStack<>.log(_:)(partial apply for implicit closure #2 in LazyStack<>.placer(subviews:context:cache:), v84, a3);
      v53 = type metadata accessor for _LazyStack_Cache(0, a3, a4, v69);
      goto LABEL_26;
    }

    v59 = *(v57 + 32);
    v90 = v57 + 32;
    v89 = v59;
    v59(v104, v26, v13);
    v92 = v45;
    if (v45)
    {
      v60 = v32;
    }

    else
    {
      v60 = v31;
    }

    if (v60 <= 0.0)
    {
      v58 = (*(v57 + 8))(v104, v13);
      goto LABEL_41;
    }

    v61 = *(v57 + 16);
    v88[1] = v57 + 16;
    v88[0] = v61;
    v61(v23, v104, v13);
    (*(v57 + 56))(v23, 0, 1, v13);
    v62 = *(v103 + 16);
    v62(v20, v108, v14);
    v91 = *(TupleTypeMetadata2 + 48);
    v63 = v100;
    v62(v100, v23, v14);
    v62(&v63[v91], v20, v14);
    if (v93(v63, 1, v13) == 1)
    {
      v64 = v20;
      v65 = *(v103 + 8);
      v65(v64, v14);
      v65(v23, v14);
      v66 = v93(&v63[v91], 1, v13);
      v67 = v106;
      if (v66 == 1)
      {
        v65(v63, v14);
        v68 = v104;
LABEL_46:
        v74 = v98;
        (*(v96 + 16))(v98, v105, a3);
        v75 = v101;
        (v88[0])(v101, v68, v13);
        v109 = v95;
        memset(&v116, 0, sizeof(v116));
        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        v111 = 0u;
        v76 = v97;
        default argument 18 of StackPlacement.init(stack:axis:minor:visible:pinnedViews:queriedIndex:index:skipFirst:position:stoppingCondition:currentSubviews:lastSubviews:pendingHeader:placedSubviews:placedIndex:placedPosition:placedQuery:wasCancelled:estimations:)(v97);
        (*(v67 + 8))(v68, v13);
        v85 = v76;
        v77 = v107;
        StackPlacement.init(stack:axis:minor:visible:pinnedViews:queriedIndex:index:skipFirst:position:stoppingCondition:currentSubviews:lastSubviews:pendingHeader:placedSubviews:placedIndex:placedPosition:placedQuery:wasCancelled:estimations:)(v74, v92, v75, &v109, 0, 1, 0, 0, v107, v51, v44, 0.0, INFINITY, -INFINITY, INFINITY, -INFINITY, 0, 1, MEMORY[0x1E69E7CC0], 0, &v111, MEMORY[0x1E69E7CC0], 0x7FFFFFFFFFFFFFFFLL, 0x8000000000000000, 0, v85, a3, a4);
        v79 = type metadata accessor for StackPlacement(0, a3, a4, v78);
        return (*(*(v79 - 8) + 56))(v77, 0, 1, v79);
      }
    }

    else
    {
      v62(v99, v63, v14);
      v70 = v91;
      if (v93(&v63[v91], 1, v13) != 1)
      {
        v80 = &v63[v70];
        v81 = v101;
        v89(v101, v80, v13);
        LODWORD(TupleTypeMetadata2) = static MinorProperties.== infix(_:_:)(v99, v81, a3, a4);
        v82 = *(v106 + 8);
        v82(v81, v13);
        v83 = *(v103 + 8);
        v83(v20, v14);
        v83(v23, v14);
        v82(v99, v13);
        v67 = v106;
        v83(v100, v14);
        v68 = v104;
        if (TupleTypeMetadata2)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }

      v71 = *(v103 + 8);
      v71(v20, v14);
      v71(v23, v14);
      v67 = v106;
      (*(v106 + 8))(v99, v13);
    }

    (*(v94 + 8))(v63, TupleTypeMetadata2);
    v68 = v104;
LABEL_45:
    v73 = type metadata accessor for _LazyStack_Cache(0, a3, a4, v72);
    _LazyStack_Cache.reset()(v73);
    goto LABEL_46;
  }

  __break(1u);
  return result;
}

uint64_t _LazyLayoutViewCache.supportsPrefetching.getter()
{
  v1 = *v0;
  swift_beginAccess();
  if (static CoreTesting.isRunning)
  {
    return 0;
  }

  result = AGSubgraphIsValid();
  if (result)
  {
    (*(*(v1 + 448) + 32))(&v4);
    v3 = v4;
    return (*AGGraphGetValue() & v3) != 0;
  }

  return result;
}

void $defer #1 <A>() in LazySubviewPlacements.updateValue()(uint64_t a1, _OWORD *a2, _OWORD *a3, uint64_t a4)
{
  v6 = a2[1];
  *(a1 + 272) = *a2;
  *(a1 + 288) = v6;
  v7 = a3[1];
  *(a1 + 304) = *a3;
  *(a1 + 320) = v7;
  v8 = *(a4 + 12);
  v9 = *(a4 + 152);
  *(a1 + 336) = *(a4 + 136);
  *(a1 + 352) = v9;
  v10 = *MEMORY[0x1E698D3F8];
  v11 = 0uLL;
  if (v8 != *MEMORY[0x1E698D3F8])
  {
    v11 = *AGGraphGetValue();
  }

  v12 = *(a4 + 16);
  v13 = *(a4 + 32);
  *(a1 + 368) = v11;
  *(a1 + 384) = v12;
  *(a1 + 400) = v13;
  type metadata accessor for LazyLayoutViewCache();
  v14 = *AGGraphGetValue();
  v15 = *(a1 + 40);
  *(v14 + 320) = *(a1 + 232);
  if (*(a1 + 249) == 1 && v15 != v10)
  {
    v16 = v15;
    v17 = *(a1 + 256);

    LazyLayoutViewCache.invalidateSize(layoutComputer:animation:)(v16, v17);
  }

  *(a1 + 249) = 0;
}

double protocol witness for GraphMutation.apply() in conformance LazyLayoutCacheItem.AllItemsPhaseMutation()
{
  if (swift_weakLoadStrong())
  {
    LazyLayoutViewCache.updateItemPhases()();
  }

  return result;
}

BOOL protocol witness for static TransactionKey._valuesEqual(_:_:) in conformance AnimationKey(uint64_t *a1, void *a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return (v2 | *a2) == 0;
  }

  else
  {
    return (*(*v2 + 104))() & 1;
  }
}

double protocol witness for InternalCustomAnimation.function.getter in conformance BezierAnimation@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  result = v2 / 3.0 + (*(v1 + 16) + v2) / 3.0;
  *a1 = *v1;
  *(a1 + 8) = v2 / 3.0;
  *(a1 + 16) = v4 / 3.0;
  *(a1 + 24) = result;
  *(a1 + 32) = v4 / 3.0 + (v3 + v4) / 3.0;
  *(a1 + 40) = 4;
  return result;
}

double one-time initialization function for sharedPrimary()
{
  if (one-time initialization token for primary != -1)
  {
    swift_once();
  }

  v0 = static Color.primary;
  type metadata accessor for OffsetShapeStyle<AnyShapeStyle>(0, &lazy cache variable for type metadata for ShapeStyleBox<LegacyContentStyle>, &type metadata for LegacyContentStyle, &protocol witness table for LegacyContentStyle, type metadata accessor for ShapeStyleBox);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v1 + 24) = v0;
  static LegacyContentStyle.sharedPrimary = v1;

  return result;
}

uint64_t specialized TextForegroundStyleModifier.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v6);
  *(v3 + 16) = AnyShapeStyle.init<A>(_:)(v8, a2, a3);
  return v3;
}

void TextForegroundStyleModifier.modify(style:environment:)(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v6 = *(v2 + 16);
  v7 = *(a1 + 16);
  v12 = a2[1];
  v5 = v12;
  v13 = v7;
  v11 = v4;
  v8 = outlined copy of Text.Style.TextStyleColor(v7);
  v9 = Text.Style.TextStyleColor.baseStyle(in:)(&v11, v8);
  outlined consume of Gradient.ProviderTag(v13);
  v10 = specialized ShapeStyle.copyStyle(name:in:foregroundStyle:)(0, v4, v5, v9, v6);

  outlined consume of Gradient.ProviderTag(*(a1 + 16));
  *(a1 + 16) = v10;
}

uint64_t EnvironmentValues.lineLimit.getter(uint64_t (*a1)(uint64_t), uint64_t (*a2)(void))
{
  v3 = *v2;
  if (v2[1])
  {

    v5 = a1(v3);
  }

  else
  {
    v6 = a2(*v2);
    if (v6)
    {
      return *(v6 + 72);
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

uint64_t AsymmetricTransition.body(content:phase:)@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>, unsigned __int8 a4@<W1>)
{
  v24[1] = a3;
  v6 = a4;
  v7 = type metadata accessor for PlaceholderContentView(255, a1, a1, a2);
  v8 = a1[2];
  v9 = a1[4];
  v11 = type metadata accessor for ApplyTransitionModifier(255, v8, v9, v10);
  v13 = type metadata accessor for ModifiedContent(0, v7, v11, v12);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v24 - v16;
  if (v6 == 2)
  {
    v18 = 1;
  }

  else
  {
    v18 = a4;
  }

  if ((a4 & 0xFE) != 0)
  {
    v19 = v6;
  }

  else
  {
    v19 = 1;
  }

  Transition.apply<A>(content:phase:)(v15, v18, v8, v7, v9, &protocol witness table for PlaceholderContentView<A>);
  v20 = a1[3];
  v21 = a1[5];
  v25[0] = &protocol witness table for PlaceholderContentView<A>;
  v25[1] = &protocol witness table for ApplyTransitionModifier<A>;
  swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v13, v25);
  Transition.apply<A>(content:phase:)(v17, v19, v20, v13, v21, v22);
  return (*(v14 + 8))(v17, v13);
}

uint64_t Transition.apply<A>(content:phase:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21[0] = a4;
  v21[1] = a6;
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ApplyTransitionModifier(0, v12, v14, v13);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v21 - v18;
  (*(v9 + 16))(v11, v6, a3, v17);
  (*(v9 + 32))(v19, v11, a3);
  v19[*(v15 + 36)] = a2;
  View.modifier<A>(_:)();
  return (*(v16 + 8))(v19, v15);
}

uint64_t ApplyTransitionModifier.Child.value.getter@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v67 = a4;
  v78 = *MEMORY[0x1E69E9840];
  v7 = type metadata accessor for ObservationTracking._AccessList();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v58[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v63 = &v58[-v12];
  MEMORY[0x1EEE9AC00](v13);
  v64 = &v58[-v14];
  type metadata accessor for ObservationTracking._AccessList?(0);
  v61 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v62 = &v58[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v58[-v18];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v58[-v21];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v65 = type metadata accessor for UncheckedSendable(0, AssociatedTypeWitness, v24, v25);
  v70 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v27 = &v58[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v28);
  v68 = &v58[-v29];
  MEMORY[0x1EEE9AC00](v30);
  v69 = &v58[-v31];
  v73 = a2;
  v74 = a3;
  v75 = a1;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v32 = static ObservationCenter._current;
  swift_beginAccess();
  v33 = pthread_getspecific(v32[2]);
  if (!v33)
  {
    v34 = swift_slowAlloc();
    pthread_setspecific(v32[2], v34);
    v77 = type metadata accessor for ObservationCenter();
    *&v76 = v32[3];
    outlined init with take of Any(&v76, v34);

    v33 = v34;
  }

  outlined init with copy of Any(v33, &v76);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v35 = v71;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19[2] + 1, 1, v19);
    *(v35 + 24) = v19;
    goto LABEL_9;
  }

  a1 = v22;
  v59 = CurrentAttribute;
  v66 = AssociatedTypeWitness;
  swift_beginAccess();
  v60 = *(v35 + 24);
  *(v35 + 24) = MEMORY[0x1E69E7CC0];
  v37 = (*(v8 + 7))(v19, 1, 1, v7);
  MEMORY[0x1EEE9AC00](v37);
  v38 = v65;
  *&v58[-32] = v65;
  *&v58[-24] = partial apply for closure #1 in ApplyTransitionModifier.Child.value.getter;
  *&v58[-16] = &v72;
  v39 = type metadata accessor for Error();
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v19, partial apply for closure #1 in ObservationCenter._withObservation<A>(do:), &v58[-48], v61, v39, v38, MEMORY[0x1E69E7288], &v71);
  v61 = v10;
  v40 = v70 + 32;
  AssociatedTypeWitness = *(v70 + 32);
  (AssociatedTypeWitness)(v68, v27, v38);
  outlined init with take of ObservationTracking._AccessList?(v19, a1);
  v41 = v62;
  outlined init with copy of ObservationTracking._AccessList?(a1, v62);
  if ((*(v8 + 6))(v41, 1, v7) == 1)
  {
    v10 = v7;
    outlined destroy of ObservationTracking._AccessList?(a1);
    a1 = v41;
    v42 = v67;
    goto LABEL_12;
  }

  v43 = v41;
  v44 = v64;
  v62 = *(v8 + 4);
  (v62)(v64, v43, v7);
  v10 = v7;
  (*(v8 + 2))(v63, v44, v7);
  v19 = *(v35 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v35 + 24) = v19;
  v70 = v40;
  v22 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v47 = v19[2];
  v46 = v19[3];
  if (v47 >= v46 >> 1)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v19);
  }

  v19[2] = v47 + 1;
  v48 = v19 + ((v22[80] + 32) & ~v22[80]) + *(v22 + 9) * v47;
  v8 = v22;
  (v62)(v48, v63, v10);
  *(v35 + 24) = v19;
  (*(v22 + 1))(v64, v10);
  v42 = v67;
  v38 = v65;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(a1);
  (AssociatedTypeWitness)(v69, v68, v38);
  v49 = *(v35 + 24);
  v50 = *(v49 + 16);
  if (v50)
  {
    v52 = *(v8 + 2);
    v51 = v8 + 16;
    v70 = v52;
    v53 = v49 + ((v51[64] + 32) & ~v51[64]);
    v54 = *(v51 + 7);
    v68 = v49;

    v55 = v59;
    v56 = v61;
    do
    {
      (v70)(v56, v53, v10);
      ObservationCenter.invalidate<A>(_:onChangeIn:)(v55, v56);
      (*(v51 - 1))(v56, v10);
      v53 += v54;
      --v50;
    }

    while (v50);

    v42 = v67;
  }

  *(v35 + 24) = v60;

  return (*(*(v66 - 1) + 32))(v42, v69);
}

uint64_t closure #1 in closure #1 in ApplyTransitionModifier.Child.value.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v12[2] = a2;
  v12[3] = a3;
  v6 = type metadata accessor for ApplyTransitionModifier(0, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for UncheckedSendable(0, AssociatedTypeWitness, v8, v9);
  return Attribute.syncMainIfReferences<A>(do:)(partial apply for closure #1 in closure #1 in closure #1 in ApplyTransitionModifier.Child.value.getter, v12, v6, v10, a5);
}

uint64_t closure #1 in closure #1 in closure #1 in ApplyTransitionModifier.Child.value.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v11 - v7;
  PlaceholderContentView.init()();
  type metadata accessor for ApplyTransitionModifier(0, a1, a2, v9);
  (*(a2 + 24))();
  return UncheckedSendable.init(_:)(v8, AssociatedTypeWitness, a3);
}

uint64_t static AnyTransition.asymmetric(insertion:removal:)(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v6 = 0;
  v2 = *(*a1 + 80);

  result = v2(&v5, &unk_1F0065060, &protocol witness table for AnyTransition.InsertionVisitor);
  v4 = v6;
  if (v6)
  {

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void AnyTransition.InsertionVisitor.visit<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AnyTransition.RemovalVisitor(0, v8, v9, v10);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v18 - v14;
  (*(v5 + 16))(v7, a1, a2, v13);
  (*(v5 + 32))(v15, v7, a2);
  *&v15[*(v11 + 36)] = 0;
  AnyTransition.visitBase<A>(applying:)(v15, *v2, v11, &protocol witness table for AnyTransition.RemovalVisitor<A>);
  v16 = *&v15[*(v11 + 36)];
  v17 = *(v12 + 8);

  v17(v15, v11);

  v2[1] = v16;
}

void AnyTransition.RemovalVisitor.visit<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v30 = a1;
  v7 = *(a3 - 8);
  v27 = a4;
  v28 = v7;
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v29 = v10;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 24);
  v31[0] = v11;
  v31[1] = v18;
  v31[2] = v17;
  v31[3] = v19;
  v20 = type metadata accessor for AsymmetricTransition(0, v31);
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v27 - v23;
  (*(v12 + 16))(v15, v5, v11, v22);
  (*(v28 + 16))(v9, v30, a3);
  AsymmetricTransition.init(insertion:removal:)(v15, v9, v11, a3, v17, v27, v24);
  swift_getWitnessTable(protocol conformance descriptor for AsymmetricTransition<A, B>, v20);
  v25 = specialized AnyTransition.init<A>(_:)(v24, v20);
  (*(v21 + 8))(v24, v20);
  v26 = *(v29 + 36);

  *(v5 + v26) = v25;
}

uint64_t AsymmetricTransition.init(insertion:removal:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for AsymmetricTransition(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

float protocol witness for ColorProvider.resolveHDR(in:) in conformance Color.OpacityColor@<S0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v11 = *a1;
  result = (*(**&v4 + 112))(&v11);
  v7 = v5;
  *a2 = result;
  *(a2 + 4) = v9;
  *(a2 + 8) = v10;
  *(a2 + 12) = v8 * v7;
  *(a2 + 16) = 2143289344;
  return result;
}

void type metadata accessor for KeyPath<EnvironmentValues, EnvironmentValues>()
{
  if (!lazy cache variable for type metadata for KeyPath<EnvironmentValues, EnvironmentValues>)
  {
    v0 = type metadata accessor for KeyPath();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, EnvironmentValues>);
    }
  }
}

uint64_t ForEachState.LazyEdits.appendInsert(id:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  v28 = v5;
  v29 = v6;
  v30 = v7;
  v31 = v8;
  v25 = v9;
  v26 = a1;
  v32 = v9;
  v33 = v10;
  v24 = v10;
  v11 = type metadata accessor for ForEachState.EditsBuilder(0, &v28);
  v12 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = (&v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 32))(v18, v3, a2, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *v18;
    v28 = v5;
    v29 = v6;
    v30 = v7;
    v31 = v8;
    v32 = v25;
    v33 = v24;
    v20 = type metadata accessor for ForEachState.Edits(0, &v28);
    ForEachState.Edits.appendInsert(id:)(v26, v20);
    *v3 = v27;
  }

  else
  {
    v21 = *(v12 + 32);
    v21(v14, v18, v11);
    ForEachState.EditsBuilder.appendInsert(id:)(v26, v11, ForEachState.Edits.appendInsert(id:));
    v21(v3, v14, v11);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t ForEachState.EditsBuilder.appendInsert(id:)(uint64_t a1, _OWORD *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = a2[2];
  v8[0] = a2[1];
  v8[1] = v5;
  v8[2] = a2[3];
  v6 = type metadata accessor for ForEachState.Edits(0, v8);
  return a3(a1, v6);
}

uint64_t ForEachState.Edits.appendInsert(id:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  (*(v3 + 16))(v5, v7);
  type metadata accessor for Set();
  Set.insert(_:)();
  return (*(v3 + 8))(v9, v2);
}

uint64_t closure #2 in implicit closure #1 in ChildEnvironment.updateValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v4 = a1;
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v6 + 16))(v9, v7);
  v13 = a2;
  v14 = v9;
  v15 = 2;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v4, partial apply for closure #1 in compareValues<A>(_:_:options:), v12, a2, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v10);
  LOBYTE(v4) = v16;
  result = (*(v6 + 8))(v9, a2);
  *a3 = v4;
  return result;
}

uint64_t ForEachState.Edits.appendRemove(id:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  (*(v3 + 16))(v5, v7);
  type metadata accessor for Set();
  Set.insert(_:)();
  return (*(v3 + 8))(v9, v2);
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, __n128 q0_0)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = a2;
    v10 = a1;
    v11 = *v8;
    v12 = *v8 >> 62;
    if (!v12)
    {
      result = *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  v22 = a4;
  v23 = a3;
  v24 = a6;
  v25 = a5;
  result = __CocoaSet.count.getter();
  a5 = v25;
  a6 = v24;
  a3 = v23;
  a4 = v22;
  if (result < v9)
  {
    goto LABEL_16;
  }

LABEL_4:
  v14 = v9 - v10;
  if (__OFSUB__(v9, v10))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v26 = a6;
  v16 = v15 - v14;
  if (__OFSUB__(v15, v14))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  v17 = a5;
  v18 = a3;
  v19 = a4;
  if (v12)
  {
    v20 = __CocoaSet.count.getter();
  }

  else
  {
    v20 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = __OFADD__(v20, v16);
  result = v20 + v16;
  if (v21)
  {
    goto LABEL_20;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1, q0_0);

  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v10, v9, v15, v18, v19, v17, v26);
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v14 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_25;
  }

  v13 = a6;
  v10 = a5;
  v7 = a3;
  v12 = a2;
  v22 = a7;
  v15 = *v8;
  v8 = (*v8 & 0xFFFFFFFFFFFFFF8);
  v9 = v8 + 4;
  v11 = &v8[a1 + 4];
  type metadata accessor for DynamicContainer.ItemInfo();
  result = swift_arrayDestroy();
  v17 = __OFSUB__(v7, v14);
  v14 = v7 - v14;
  if (v17)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!v14)
  {
    goto LABEL_17;
  }

  v10 = v15 >> 62;
  if (!(v15 >> 62))
  {
    result = v8[2];
    v18 = result - v12;
    if (!__OFSUB__(result, v12))
    {
      goto LABEL_6;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_26:
  result = __CocoaSet.count.getter();
  v18 = result - v12;
  if (__OFSUB__(result, v12))
  {
    goto LABEL_28;
  }

LABEL_6:
  v19 = (v11 + 8 * v7);
  v20 = &v9[v12];
  if (v19 != v20 || v19 >= &v20[8 * v18])
  {
    memmove(v19, v20, 8 * v18);
  }

  if (v10)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = v8[2];
  }

  if (__OFADD__(result, v14))
  {
    goto LABEL_29;
  }

  v8[2] = result + v14;
LABEL_17:
  if (v7 < 1)
  {
    return result;
  }

  if (__OFSUB__(v22 >> 1, v13))
  {
    goto LABEL_30;
  }

  if ((v22 >> 1) - v13 != v7)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  return swift_arrayInitWithCopy();
}

float specialized Color.AccentColorProvider.resolve(in:)(uint64_t *a1, __n128 a2)
{
  v3 = a1[1];
  v10 = *a1;
  v2 = v10;
  v11 = v3;
  v4 = specialized Color.AccentColorProvider.baseColor(in:)(&v10);
  v10 = v2;
  v11 = v3;
  EnvironmentValues.effectiveTintAdjustmentMode.getter(&v9);
  v5 = v4;
  if (v9 == 1)
  {
    _s7SwiftUI8ColorBoxCyAA0C0V06AccentC8ProviderVGMaTm_0(0, &lazy cache variable for type metadata for ColorBox<Color.DesaturatedColor>, lazy protocol witness table accessor for type Color.DesaturatedColor and conformance Color.DesaturatedColor, &type metadata for Color.DesaturatedColor);
    v5 = swift_allocObject();
    v5[2] = v4;
  }

  v10 = v2;
  v11 = v3;
  v6 = *(*v5 + 112);

  v7 = v6(&v10);

  return v7;
}

void EnvironmentValues.effectiveTintAdjustmentMode.getter(_BYTE *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018TintAdjustmentModeI033_EC06E65D3EE8D18E3FBCB8910A79AF01LLVG_Tt1g5(v3, &v9);

    LOBYTE(v4) = v9;
    if (v9 == 2)
    {

      v5 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA07EnabledI033_09CE35833F3876FE3A3A46977D61FC64LLVG_Tt1g5(v3);

LABEL_10:
      v8 = (v5 & 1) == 0;
      goto LABEL_11;
    }
  }

  else
  {
    v6 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018TintAdjustmentModeS033_EC06E65D3EE8D18E3FBCB8910A79AF01LLVG_Tt0g5(v3);
    if (!v6 || (v4 = *(v6 + 72), v4 == 2))
    {
      v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA07EnabledS033_09CE35833F3876FE3A3A46977D61FC64LLVG_Tt0g5(v3);
      if (v7)
      {
        v5 = *(v7 + 72);
      }

      else
      {
        v5 = 1;
      }

      goto LABEL_10;
    }
  }

  v8 = v4 & 1;
LABEL_11:
  *a1 = v8;
}

void _ss20_ArrayBufferProtocolPsE7copyingxx_tcfCs06_SliceB0Vy7SwiftUI16DynamicContainerV8ItemInfoCG_Tt1g5Tf4gX_n(uint64_t result, uint64_t a2, unint64_t a3, __n128 a4)
{
  v4 = a3 >> 1;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs10AnyKeyPathC_Tt1g5((a3 >> 1) - a2, (a3 >> 1) - a2, a4);
  if (v4 < a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = v6;
  type metadata accessor for DynamicContainer.ItemInfo();
  swift_arrayInitWithCopy();
  if (__OFSUB__(0, a2))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = *(v7 + 16);
  v9 = __OFADD__(a2, v8);
  v10 = a2 + v8;
  if (v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v10 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v10 < 0)
  {
LABEL_13:
    __break(1u);
  }
}

uint64_t ForEachState.eraseItem(_:)(_DWORD *a1)
{
  AGSubgraphApply();
  result = AGSubgraphRemoveChild();
  *(a1 + *(*a1 + 240)) = 1;
  *(a1 + *(*a1 + 232)) = 0;
  v3 = a1[6] - 1;
  a1[6] = v3;
  if (!v3)
  {
    ForEachState.Item.invalidate()();
    result = AGSubgraphIsValid();
    if (result)
    {
      AGSubgraphRef.willInvalidate(isInserted:)(1);

      return AGSubgraphInvalidate();
    }
  }

  return result;
}

Swift::Void __swiftcall ForEachState.Item.invalidate()()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(v2 - 8);
  (MEMORY[0x1EEE9AC00])();
  v5 = &v18 - v4;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v19 = v3;
    v8 = *(*Strong + 200);
    swift_beginAccess();
    v9 = *(v7 + v8);
    v10 = *(*v0 + 160);
    v18 = v9 & 0xC000000000000001;
    if ((v9 & 0xC000000000000001) != 0)
    {

      _bridgeAnythingToObjectiveC<A>(_:)();
      v11 = __CocoaDictionary.index(forKey:)();
      v13 = v12;
      swift_unknownObjectRelease();

      if (!v11)
      {
        goto LABEL_10;
      }

LABEL_8:
      v17 = v18 != 0;
      swift_beginAccess();
      type metadata accessor for Dictionary();
      Dictionary.remove(at:)();
      swift_endAccess();
      outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v11, v13, v17);

      (*(v19 + 8))(v5, v2);
      return;
    }

    if (*(v9 + 16))
    {
      v14 = *(v1 + 144);

      v15 = __RawDictionaryStorage.find<A>(_:)(v0 + v10, v2, v14);
      if (v16)
      {
        v11 = v15;
        v13 = *(v9 + 36);

        goto LABEL_8;
      }
    }

LABEL_10:

    *(v7 + v8) = Dictionary.filter(_:)();
  }
}

uint64_t OpacityViewResponder.__deallocating_deinit(__n128 a1)
{
  DefaultLayoutViewResponder.deinit(a1);

  return swift_deallocClassInstance();
}

void destroy for Font.PrivateTextStyleProvider(uint64_t a1)
{
  v2 = *(a1 + 8);
}

double destroy for SDFLayer.SDFElement(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 <= 0xF7)
  {
    return outlined consume of SDFLayer.SDFElement.Contents(*result, *(result + 8), *(result + 16), *(result + 24), v1);
  }

  return v2;
}

void key path getter for EnvironmentValues.calendar : EnvironmentValues(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t, uint64_t *, uint64_t, void (*)(uint64_t)))
{
  v5 = *a1;
  if (a1[1])
  {

    a4(v5);
  }

  else
  {
    a5(*a1, &v7, a3, a4);
  }
}

uint64_t Text.init<A>(_:format:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = specialized Text.init<A>(_:format:)(a1, a2, a3, a4, a5, a6);
  (*(*(a3 - 8) + 8))(a2, a3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v9;
}

uint64_t specialized Text.init<A>(_:format:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for FormatStyleStorage();
  swift_allocObject();
  return specialized FormatStyleStorage.init<A>(input:format:)(a1, a2, a3, a4, a5, a6);
}

uint64_t Text.init<A>(_:format:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return Text.init<A>(_:format:)(a1, a2, a3, a4, a5, &protocol witness table for String);
}

{
  return Text.init<A>(_:format:)(a1, a2, a3, a4, a5, &protocol witness table for AttributedString);
}

uint64_t specialized FormatStyleStorage.init<A>(input:format:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v21 = a1;
  v22 = a2;
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v21 - v17;
  v23[0] = a3;
  v23[1] = a4;
  v23[2] = a5;
  v23[3] = a6;
  type metadata accessor for FormatStyleBox(0, v23);
  (*(v16 + 16))(v18, v21, AssociatedTypeWitness);
  (*(v12 + 16))(v14, v22, a3);
  v19 = swift_allocObject();
  FormatStyleBox.init(input:format:)(v18, v14);
  *(v7 + 16) = v19;
  return v7;
}

uint64_t FormatStyleBox.init(input:format:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 136);
  v6 = *(*v2 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(v2 + v5, a1, AssociatedTypeWitness);
  (*(*(v6 - 8) + 32))(v2 + *(*v2 + 144), a2, v6);
  return v2;
}

uint64_t FormatStyleStorage.resolve<A>(into:in:with:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v25 = a1;
  v26 = type metadata accessor for AttributedString();
  v10 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - v15;
  v17 = *a2;
  v18 = a2[1];
  v24 = *a3;
  v19 = *(v5 + 16);
  v29 = v17;
  v30 = v18;
  (*(a5 + 56))(&v28, a4, a5, v14);
  v27 = v28;
  LOBYTE(v19) = (*(*v19 + 88))(v16, &v29, &v27);
  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
  v20 = v26;
  (*(v10 + 16))(v12, v16, v26);
  v21 = NSAttributedString.init(_:)();
  v29 = v17;
  v30 = v18;
  *&v28 = v24;
  (*(a5 + 72))(v21, &v29, &v28, v19 & 1, a4, a5);

  return (*(v10 + 8))(v16, v20);
}

uint64_t FormatStyleBox.format(in:idiom:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v112 = a1;
  v111 = *v3;
  v6 = v111[14];
  v116 = v3;
  v7 = v111[13];
  v120 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v109 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v108 = &v91 - v8;
  v92 = type metadata accessor for EnvironmentValues.CapitalizationContext(0);
  MEMORY[0x1EEE9AC00](v92);
  v94 = (&v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v93 = &v91 - v11;
  v113 = type metadata accessor for FormatStyleCapitalizationContext();
  v96 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v106 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v95 = &v91 - v14;
  v118 = type metadata accessor for TimeZone();
  v117 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v102 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for Calendar();
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v17 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Locale();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v107 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v103 = &v91 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v105 = (&v91 - v27);
  MEMORY[0x1EEE9AC00](v28);
  v104 = &v91 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v91 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v98 = &v91 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v91 - v36;
  v38 = *a2;
  v39 = *(a2 + 8);
  v40 = a3[1];
  v101 = *a3;
  v97 = v40;
  v119 = v38;
  if (v39)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v38, v21);
  }

  else
  {
    v41 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v38);
    if (v41)
    {
      (*(v19 + 16))(v21, &v41[*(*v41 + 248)], v18);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v42 = __swift_project_value_buffer(v18, static LocaleKey.defaultValue);
      (*(v19 + 16))(v21, v42, v18);
    }
  }

  dispatch thunk of FormatStyle.locale(_:)();
  (*(v19 + 8))(v21, v18);
  if (one-time initialization token for v6 != -1)
  {
    swift_once();
  }

  v43 = static Semantics.v6;
  v44 = v115;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v114 = v39;
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_16:
    if (v39)
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08CalendarI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v119, v17);

      v45 = v39;
    }

    else
    {
      v45 = 0;
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v119, v17);
    }

    FormatStyle.calendar(_:)(v17, v7, v32);
    (*(v99 + 8))(v17, v100);
    if (v45)
    {

      v46 = v102;
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TimeZoneI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v119, v102);
      v47 = v46;
    }

    else
    {
      v47 = v102;
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v119, v102);
    }

    v48 = v98;
    FormatStyle.timeZone(_:)(v47, v7, v98);
    v117[1](v47, v118);
    v49 = *(v44 + 8);
    v49(v32, v7);
    v49(v37, v7);
    (*(v44 + 32))(v37, v48, v7);
    goto LABEL_23;
  }

  if (static Semantics.forced >= v43)
  {
    goto LABEL_16;
  }

LABEL_23:
  v50 = *(v44 + 16);
  v118 = v44 + 16;
  v117 = v50;
  (v50)(v104, v37, v7);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for InterfaceIdiomDependentFormatStyle, &protocol descriptor for InterfaceIdiomDependentFormatStyle);
  v51 = swift_dynamicCast();
  v102 = 0;
  if (v51)
  {
    outlined init with take of AnyTrackedValue(&v123, &v126);
    v52 = v101;
    v53 = v43;
    if (v101)
    {
      v54 = v97;
    }

    else
    {
      type metadata accessor for _ContiguousArrayStorage<Any>();
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_18DDA6EB0;
      *&v123 = 0;
      *(&v123 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(38);

      *&v123 = 0xD000000000000031;
      *(&v123 + 1) = 0x800000018DD7BDF0;
      v56 = StaticString.description.getter();
      MEMORY[0x193ABEDD0](v56);

      MEMORY[0x193ABEDD0](58, 0xE100000000000000);
      v121 = 84;
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ABEDD0](v57);

      MEMORY[0x193ABEDD0](0xD00000000000001CLL, 0x800000018DD77470);
      v58 = v123;
      *(v55 + 56) = MEMORY[0x1E69E6158];
      *(v55 + 32) = v58;
      print(_:separator:terminator:)();

      type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(0, v59, v60, v61);
      v52 = v62;
      v54 = &protocol witness table for InterfaceIdiomBox<A>;
    }

    v63 = v127;
    v64 = v128;
    __swift_project_boxed_opaque_existential_1(&v126, v127);
    v121 = v52;
    v122 = v54;
    v65 = *(v64 + 2);
    *(&v124 + 1) = v63;
    v125 = v64;
    __swift_allocate_boxed_opaque_existential_1(&v123);
    v65(&v121, v63, v64);
    v44 = v115;
    (*(v115 + 8))(v37, v7);
    swift_dynamicCast();
    __swift_destroy_boxed_opaque_existential_1(&v126);
  }

  else
  {
    v53 = v43;
    v125 = 0;
    v123 = 0u;
    v124 = 0u;
    outlined destroy of _DisplayList_AnyEffectAnimator?(&v123, &lazy cache variable for type metadata for InterfaceIdiomDependentFormatStyle?, &lazy cache variable for type metadata for InterfaceIdiomDependentFormatStyle, &protocol descriptor for InterfaceIdiomDependentFormatStyle);
  }

  (v117)(v105, v37, v7);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for TextAlignmentDependentFormatStyle, &protocol descriptor for TextAlignmentDependentFormatStyle);
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(&v123, &v126);
    v66 = v127;
    v67 = v128;
    __swift_project_boxed_opaque_existential_1(&v126, v127);
    v121 = v119;
    v122 = v114;
    v68 = EnvironmentValues.multilineTextAlignment.getter();
    v69 = *(v67 + 2);
    *(&v124 + 1) = v66;
    v125 = v67;
    __swift_allocate_boxed_opaque_existential_1(&v123);
    v69(v68, v66, v67);
    v44 = v115;
    (*(v115 + 8))(v37, v7);
    swift_dynamicCast();
    __swift_destroy_boxed_opaque_existential_1(&v126);
  }

  else
  {
    v125 = 0;
    v123 = 0u;
    v124 = 0u;
    outlined destroy of _DisplayList_AnyEffectAnimator?(&v123, &lazy cache variable for type metadata for TextAlignmentDependentFormatStyle?, &lazy cache variable for type metadata for TextAlignmentDependentFormatStyle, &protocol descriptor for TextAlignmentDependentFormatStyle);
  }

  v70 = v106;
  v71 = v113;
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else if (static Semantics.forced < v53)
  {
    goto LABEL_45;
  }

  (v117)(v103, v37, v7);
  v72 = type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CapitalizationContextDependentFormatStyle, &protocol descriptor for CapitalizationContextDependentFormatStyle);
  if (swift_dynamicCast())
  {
    v115 = v72;
    outlined init with take of AnyTrackedValue(&v123, &v126);
    v106 = v128;
    v73 = v127;
    v105 = __swift_project_boxed_opaque_existential_1(&v126, v127);
    if (v114)
    {

      v74 = v93;
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE0I033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Tt1g5(v119, v93);
    }

    else
    {
      v75 = v93;
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE0F033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Tt2g5(v119, v93);
      v74 = v75;
    }

    v76 = v96;
    v77 = v94;
    outlined init with copy of EnvironmentValues.CapitalizationContext(v74, v94);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*v77)();

      outlined destroy of EnvironmentValues.CapitalizationContext(v74);
      v78 = *(v76 + 32);
    }

    else
    {
      outlined destroy of EnvironmentValues.CapitalizationContext(v74);
      v79 = v77;
      v78 = *(v76 + 32);
      v78(v70, v79, v71);
    }

    v80 = v95;
    v78(v95, v70, v71);
    v81 = v106;
    v82 = *(v106 + 2);
    *(&v124 + 1) = v73;
    v125 = v106;
    __swift_allocate_boxed_opaque_existential_1(&v123);
    v82(v80, v73, v81);
    (*(v76 + 8))(v80, v113);
    (*(v44 + 8))(v37, v7);
    swift_dynamicCast();
    __swift_destroy_boxed_opaque_existential_1(&v126);
  }

  else
  {
    v125 = 0;
    v123 = 0u;
    v124 = 0u;
    outlined destroy of _DisplayList_AnyEffectAnimator?(&v123, &lazy cache variable for type metadata for CapitalizationContextDependentFormatStyle?, &lazy cache variable for type metadata for CapitalizationContextDependentFormatStyle, &protocol descriptor for CapitalizationContextDependentFormatStyle);
  }

LABEL_45:
  if (v114)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE015TextSizeVariantI033_22A2F77020526CCA53FF38DE37184183LLVG_Tt1g5(v119, &v126);

    v83 = v126;
  }

  else
  {
    v84 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(v119);
    if (v84)
    {
      v83 = v84[9];
    }

    else
    {
      v83 = 0;
    }
  }

  *&v123 = v83;
  v85 = v107;
  v86 = FormatStyle.exactSizeVariant(_:)(v107, &v123, v7);
  v87 = *(v44 + 8);
  v87(v37, v7);
  (v117)(v37, v85, v7);
  v88 = v108;
  dispatch thunk of FormatStyle.format(_:)();
  v89 = AssociatedTypeWitness;
  (*(v111[16] + 8))(AssociatedTypeWitness);
  (*(v109 + 8))(v88, v89);
  v87(v85, v7);
  v87(v37, v7);
  return v86 & 1;
}

unint64_t type metadata accessor for CalendarDependentFormatStyle()
{
  result = lazy cache variable for type metadata for CalendarDependentFormatStyle;
  if (!lazy cache variable for type metadata for CalendarDependentFormatStyle)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CalendarDependentFormatStyle);
  }

  return result;
}

unint64_t type metadata accessor for TimeZoneDependentFormatStyle()
{
  result = lazy cache variable for type metadata for TimeZoneDependentFormatStyle;
  if (!lazy cache variable for type metadata for TimeZoneDependentFormatStyle)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TimeZoneDependentFormatStyle);
  }

  return result;
}

uint64_t protocol witness for TimeZoneDependentFormatStyle.withTimeZone(_:) in conformance Date.FormatStyle@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(char *)@<X3>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for TimeZone();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(a2 - 8) + 16))(a4, v4, a2, v11);
  (*(v10 + 16))(v13, a1, v9);
  return a3(v13);
}

uint64_t outlined init with copy of EnvironmentValues.CapitalizationContext(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnvironmentValues.CapitalizationContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of EnvironmentValues.CapitalizationContext(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues.CapitalizationContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t protocol witness for CapitalizationContextDependentFormatStyle.capitalizationContext(_:) in conformance Date.RelativeFormatStyle@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(double)@<X3>, uint64_t (*a4)(char *)@<X4>, uint64_t a5@<X8>)
{
  v20 = a1;
  v21 = a4;
  v9 = type metadata accessor for FormatStyleCapitalizationContext();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  v17 = a3(v14);
  MEMORY[0x193ABCD20](v17);
  LOBYTE(a3) = MEMORY[0x193ABCD10](v16, v12);
  v18 = *(v10 + 8);
  v18(v12, v9);
  v18(v16, v9);
  result = (*(*(a2 - 8) + 16))(a5, v5, a2);
  if (a3)
  {
    (*(v10 + 16))(v16, v20, v9);
    return v21(v16);
  }

  return result;
}

uint64_t Date.FormatStyle.withSizeVariant(_:)(char *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v70 = *(v6 - 8);
  v71 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v69 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date.FormatStyle.Symbol.Era();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date.FormatStyle();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v85 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v86 = &v66 - v16;
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  v83 = &v66 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v66 - v21;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v27 = *a2;
  v28 = *(v13 + 16);
  if (*a2)
  {
    v81 = v25;
    v68 = v11;
    v73 = v9;
    v74 = v8;
    v78 = v13 + 16;
    v79 = &v66 - v24;
    v76 = v27;
    v77 = v28;
    v72 = a1;
    v84 = v3;
    (v28)(v22, v3, v12, v26);
    v29 = (v13 + 8);
    v30 = (v13 + 32);
    v31 = 13;
    v32 = &unk_1F00443C8;
    v33 = v83;
    do
    {
      v34 = *(v32 - 1);

      v34(v22);

      v35 = *v29;
      (*v29)(v22, v12);
      v36 = *v30;
      (*v30)(v22, v33, v12);
      v32 += 2;
      --v31;
    }

    while (v31);
    v82 = v29;
    v37 = v79;
    v36(v79, v22, v12);
    lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle(&lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle, MEMORY[0x1E6969328], MEMORY[0x1E6969330]);
    v80 = v38;
    v39 = v84;
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 || (v40 = v68, MEMORY[0x193ABD180](), Date.FormatStyle.era(_:)(), v42 = v73 + 8, v41 = *(v73 + 8), v43 = v41(v40, v74), MEMORY[0x193ABD190](v43), Date.FormatStyle.era(_:)(), v44 = v40, v39 = v84, v73 = v42, v67 = v41, v41(v44, v74), v35(v81, v12), v45 = dispatch thunk of static Equatable.== infix(_:_:)(), v35(v33, v12), (v45 & 1) == 0))
    {
      v49 = v86;
      v53 = v39;
      v50 = v77;
      v77(v86, v53, v12);
    }

    else
    {
      v46 = v69;
      static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
      v47 = v81;
      Date.FormatStyle.year(_:)();
      v48 = v71;
      v70 = *(v70 + 8);
      (v70)(v46, v71);
      static Date.FormatStyle.Symbol.SecondFraction.omitted.getter();
      Date.FormatStyle.year(_:)();
      (v70)(v46, v48);
      v35(v47, v12);
      v33 = v83;
      LOBYTE(v46) = dispatch thunk of static Equatable.== infix(_:_:)();
      v35(v33, v12);
      v49 = v86;
      v50 = v77;
      v51 = (v77)(v86, v84, v12);
      if (v46)
      {
        v52 = v68;
        MEMORY[0x193ABD190](v51);
        Date.FormatStyle.era(_:)();
        v67(v52, v74);
        v35(v49, v12);
        v36(v49, v33, v12);
      }
    }

    v81 = v30;
    v50(v85, v49, v12);
    v54 = &unk_1F00443C8;
    v55 = 13;
    v75 = v36;
    while (1)
    {
      v84 = v55;
      v57 = *(v54 - 1);

      v57(v86);
      v58 = v86;
      v35(v86, v12);
      v36(v58, v33, v12);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v59 = v85;
      v60 = dispatch thunk of static Equatable.== infix(_:_:)();

      result = (v35)(v59, v12);
      if (v60)
      {
        v56 = v84;
      }

      else
      {
        v62 = v76 - 1;
        if (__OFSUB__(v76, 1))
        {
          __break(1u);
          return result;
        }

        --v76;
        v56 = v84;
        if (!v62)
        {
          v35(v79, v12);
          v75(v72, v58, v12);
          return 1;
        }
      }

      v77(v85, v58, v12);
      v54 += 2;
      v55 = v56 - 1;
      v37 = v79;
      v33 = v83;
      v36 = v75;
      if (!v55)
      {
        v35(v85, v12);
        v35(v37, v12);
        v63 = v72;
        v64 = v58;
        v65 = v12;
        goto LABEL_21;
      }
    }

    v35(v58, v12);
    v35(v37, v12);
    v63 = v72;
    v64 = v85;
    v65 = v12;
LABEL_21:
    v36(v63, v64, v65);
    return 0;
  }

  (v28)(a1, v3, v12, v26);
  return 1;
}

void type metadata accessor for (style: SizeAdaptiveFormatStyle, exact: Bool)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (style: SizeAdaptiveFormatStyle, exact: Bool))
  {
    type metadata accessor for SizeAdaptiveFormatStyle();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (style: SizeAdaptiveFormatStyle, exact: Bool));
    }
  }
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.Key()
{
  MEMORY[0x193ABCCE0]();
  type metadata accessor for EnvironmentValues.CapitalizationContext(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t FormatStyleStorage.isEqual(to:)(uint64_t a1)
{
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = *(**(v1 + 16) + 80);

    v5 = v3(v4);

    return v5 & 1;
  }

  return result;
}

uint64_t TextForegroundStyleModifier.isEqual(to:)(uint64_t a1)
{
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = *(v1 + 16);
    v4 = *(result + 16);
    if (v3 == v4)
    {
      return 1;
    }

    else
    {
      v5 = *(*v3 + 88);

      v6 = v5(v4);

      return v6 & 1;
    }
  }

  return result;
}

uint64_t ForEachState.EditsBuilder.appendInsert(atOffset:)(uint64_t a1, uint64_t a2)
{
  v4 = v2 + *(a2 + 72);
  result = type metadata accessor for IndexSetBuilder(0);
  v6 = v4 + *(result + 20);
  if (*(v6 + 16))
  {
    v7 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v7 >= a1)
    {
LABEL_11:
      *v6 = a1;
      goto LABEL_12;
    }

    __break(1u);
  }

  result = *v6;
  if (*(v6 + 8) != a1)
  {
    goto LABEL_9;
  }

  v7 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v7 >= result)
  {
LABEL_12:
    *(v6 + 8) = v7;
    *(v6 + 16) = 0;
    return result;
  }

  __break(1u);
LABEL_9:
  result = IndexSet.insert(integersIn:)();
  v7 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v7 >= a1)
  {
    goto LABEL_11;
  }

LABEL_16:
  __break(1u);
  return result;
}

Swift::Void __swiftcall PlatformViewChild.destroy()()
{
  v2 = v1;
  v3 = v0;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for UncheckedSendable(0, AssociatedTypeWitness, v7, v8);
  v53 = *(v9 - 8);
  v54 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v41 - v10;
  v51 = v5;
  v52 = v4;
  v11 = swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for UncheckedSendable(0, v11, v12, v13);
  v48 = *(v14 - 8);
  v49 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v47 = &v41 - v15;
  v16 = type metadata accessor for Optional();
  v44 = *(v16 - 8);
  v45 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - v17;
  v55 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v43 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v46 = &v41 - v22;
  v23 = type metadata accessor for Optional();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v41 - v25;
  v27 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v28);
  v42 = &v41 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v56 = &v41 - v31;
  v57 = *(v1 + 40);
  v58 = *(v1 + 48);
  _DynamicPropertyBuffer.destroy()();
  (*(v24 + 16))(v26, v1 + *(v3 + 76), v23);
  if ((*(v27 + 48))(v26, 1, AssociatedTypeWitness) == 1)
  {
    (*(v24 + 8))(v26, v23);
  }

  else
  {
    (*(v27 + 32))(v56, v26, AssociatedTypeWitness);
    v32 = v3;
    PlatformViewChild.representedViewProvider.getter(v3, v18);
    v33 = v55;
    if ((*(v55 + 48))(v18, 1, v11) == 1)
    {
      (*(v27 + 8))(v56, AssociatedTypeWitness);
      (*(v44 + 8))(v18, v45);
    }

    else
    {
      v34 = v46;
      (*(v33 + 32))(v46, v18, v11);
      v35 = v43;
      (*(v33 + 16))(v43, v34, v11);
      v36 = v47;
      UncheckedSendable.init(_:)(v35, v11, v47);
      v37 = v42;
      (*(v27 + 16))(v42, v56, AssociatedTypeWitness);
      v38 = v50;
      v39 = UncheckedSendable.init(_:)(v37, AssociatedTypeWitness, v50);
      MEMORY[0x1EEE9AC00](v39);
      v40 = v52;
      *(&v41 - 4) = v51;
      *(&v41 - 3) = v40;
      *(&v41 - 2) = v36;
      *(&v41 - 1) = v38;
      specialized static Update.syncMain(_:)(partial apply for closure #1 in PlatformViewChild.destroy(), (&v41 - 6));
      PlatformViewChild.reset()(v32);
      (*(v33 + 8))(v34, v11);
      (*(v27 + 8))(v56, AssociatedTypeWitness);
      (*(v53 + 8))(v38, v54);
      (*(v48 + 8))(v36, v49);
    }
  }

  PreferenceBridge.invalidate()();
  v57 = *(v2 + 56);
  v58 = *(v2 + 64);
  UnsafeHeterogeneousBuffer.destroy()();
}

uint64_t AnimatorAttribute.updateValue()(void *a1)
{
  v2 = v1;
  v144 = *MEMORY[0x1E69E9840];
  v135 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v110 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v116 = &v108 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v117 = &v108 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0);
  v113 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v114 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v121 = &v108 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v125 = &v108 - v15;
  v16 = a1[4];
  v133 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v112 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v124 = &v108 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v132 = &v108 - v22;
  v23 = a1[2];
  v136 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v137 = a1;
  v138 = &v108 - v28;
  v29 = a1[3];
  v30 = a1[5];
  v31 = a1[6];
  *&v32 = v23;
  *(&v32 + 1) = v29;
  *&v33 = v16;
  *(&v33 + 1) = v30;
  v118 = v33;
  v142 = v33;
  v119 = v32;
  v141 = v32;
  v143 = v31;
  v131 = type metadata accessor for KeyframeAnimator(0, &v141);
  v130 = *(v131 - 1);
  MEMORY[0x1EEE9AC00](v131);
  v111 = &v108 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v129 = &v108 - v36;
  if (*(v2 + 16) != *AGGraphGetValue() >> 1)
  {
    *(v2 + 16) = *AGGraphGetValue() >> 1;
    v37 = v30;
    v38 = *(v137 + 19);
    v39 = type metadata accessor for KeyframeTrackState(0, v23, v29, v37);
    (*(*(v39 - 8) + 8))(v2 + v38, v39);
    v30 = v37;
    swift_storeEnumTagMultiPayload();
  }

  v126 = v4;
  AGGraphClearUpdate();
  v120 = v31;
  closure #1 in AnimatorAttribute.updateValue()(v2, v23, v29, v16, v30, v31, &v141);
  AGGraphSetUpdate();
  v40 = v141;
  v41 = *AGGraphGetValue();
  v122 = v16;
  v42 = v23;
  v134 = v23;
  v43 = v30;
  v127 = v26;
  v128 = v29;
  if (v44)
  {
    outlined copy of _SymbolEffect.Trigger(v41);
    goto LABEL_7;
  }

  outlined copy of _SymbolEffect.Trigger(v41);
  v45 = type metadata accessor for KeyframeTrackState(0, v23, v29, v30);
  if (KeyframeTrackState.isInitial.getter(v45))
  {
LABEL_7:
    *&v141 = v41;
    v140 = v40;
    v46 = v129;
    v47 = v137;
    AnimatorAttribute.view.getter(v137, v129);
    v48 = v136[2];
    v123 = v43;
    v49 = v138;
    v48(v138, v46, v42);
    v50 = v130[1];
    v51 = v131;
    v50(v46, v131);
    v52 = v111;
    AnimatorAttribute.view.getter(v47, v111);
    v53 = (v52 + *(v51 + 15));
    v54 = v53[1];
    v109 = *v53;

    v50(v52, v51);
    v16 = v122;
    v45 = type metadata accessor for KeyframeTrackState(0, v134, v128, v123);
    v42 = v134;
    KeyframeTrackState.updatePlayback(_:time:initialValue:plan:)(&v141, &v140, v49, v109, v54, v45);
    v55 = v49;
    v43 = v123;
    (v136[1])(v55, v42);
  }

  v115 = v41;
  type metadata accessor for KeyframeTrackState(0, v42, v128, v43);
  if (KeyframeTrackState.isAnimating.getter(v45))
  {
    *&v141 = *AGGraphGetValue();
    KeyframeTrackState.updateAnimation(time:)(&v141, v45);
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v56 = swift_dynamicCastClassUnconditional();
    v57 = *AGGraphGetValue() + 0.00833333333;
    swift_beginAccess();
    v58 = *(v56 + 376);
    if (v57 < v58)
    {
      v58 = v57;
    }

    *(v56 + 376) = v58;
    v42 = v134;
  }

  *&v141 = v40;
  v59 = v129;
  AnimatorAttribute.view.getter(v137, v129);
  v60 = v136;
  v61 = v138;
  (v136[2])(v138, v59, v42);
  (v130[1])(v59, v131);
  v62 = v127;
  KeyframeTrackState.value(at:initialValue:)(&v141, v61, v45, v127);
  v65 = v60[1];
  v63 = v60 + 1;
  v64 = v65;
  v136 = v63;
  v66 = (v65)(v61, v42);
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v108 - 10;
  v68 = v118;
  *(&v108 - 4) = v119;
  *(&v108 - 3) = v68;
  *(&v108 - 4) = v120;
  *(&v108 - 3) = v2;
  *(&v108 - 2) = v62;
  v69 = v121;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v70 = static ObservationCenter._current;
  swift_beginAccess();
  v71 = pthread_getspecific(v70[2]);
  if (!v71)
  {
    v63 = swift_slowAlloc();
    pthread_setspecific(v70[2], v63);
    *(&v142 + 1) = type metadata accessor for ObservationCenter();
    *&v141 = v70[3];
    outlined init with take of Any(&v141, v63);

    v71 = v63;
  }

  outlined init with copy of Any(v71, &v141);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v72 = v139;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_29:
    v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v63[2] + 1, 1, v63);
    *(v72 + 24) = v63;
    goto LABEL_20;
  }

  LODWORD(v123) = CurrentAttribute;
  v130 = &v108;
  v131 = v64;
  swift_beginAccess();
  v129 = *(v72 + 24);
  *(v72 + 24) = MEMORY[0x1E69E7CC0];
  v74 = v126;
  v75 = (*(v126 + 56))(v69, 1, 1, v135);
  MEMORY[0x1EEE9AC00](v75);
  *(&v108 - 4) = v16;
  *(&v108 - 3) = partial apply for closure #2 in AnimatorAttribute.updateValue();
  *(&v108 - 2) = v67;
  v76 = type metadata accessor for Error();
  v77 = v112;
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v69, partial apply for closure #1 in ObservationCenter._withObservation<A>(do:), (&v108 - 6), v113, v76, v16, MEMORY[0x1E69E7288], &v139);
  v128 = 0;
  v78 = v124;
  v79 = v77;
  v67 = *(v133 + 32);
  (v67)(v124, v79, v16);
  v80 = v125;
  outlined init with take of ObservationTracking._AccessList?(v69, v125);
  v81 = v114;
  outlined init with copy of ObservationTracking._AccessList?(v80, v114);
  if ((*(v74 + 48))(v81, 1, v135) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v80);
    v82 = v81;
    v83 = v67;
    goto LABEL_23;
  }

  v84 = v117;
  v85 = v135;
  v64 = *(v74 + 32);
  (v64)(v117, v81, v135);
  (*(v74 + 16))(v116, v84, v85);
  v63 = *(v72 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v72 + 24) = v63;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_20:
  v83 = v67;
  v88 = v63[2];
  v87 = v63[3];
  if (v88 >= v87 >> 1)
  {
    v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v87 > 1), v88 + 1, 1, v63);
  }

  v63[2] = v88 + 1;
  v74 = v126;
  v89 = v63 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v126 + 72) * v88;
  v90 = v135;
  (v64)(v89, v116, v135);
  *(v72 + 24) = v63;
  (*(v74 + 8))(v117, v90);
  v16 = v122;
  v82 = v125;
  v78 = v124;
LABEL_23:
  outlined destroy of ObservationTracking._AccessList?(v82);
  (v83)(v132, v78, v16);
  v91 = *(v72 + 24);
  v92 = *(v91 + 16);
  v93 = v137;
  if (v92)
  {
    v95 = *(v74 + 16);
    v94 = v74 + 16;
    v138 = v95;
    v96 = v91 + ((*(v94 + 64) + 32) & ~*(v94 + 64));
    v97 = v135;
    v98 = v110;
    v99 = *(v94 + 56);
    v126 = v91;

    v100 = v123;
    do
    {
      (v138)(v98, v96, v97);
      ObservationCenter.invalidate<A>(_:onChangeIn:)(v100, v98);
      (*(v94 - 8))(v98, v97);
      v96 += v99;
      --v92;
    }

    while (v92);

    v93 = v137;
    v62 = v127;
  }

  *(v72 + 24) = v129;

  v102 = MEMORY[0x1EEE9AC00](v101);
  *(&v108 - 2) = v93;
  swift_getWitnessTable(protocol conformance descriptor for AnimatorAttribute<A, B, C>, v93, v102);
  *(&v108 - 1) = v103;
  v104 = v132;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v132, partial apply for closure #1 in StatefulRule.value.setter, (&v108 - 4), v16, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v105);
  v106 = outlined consume of _SymbolEffect.Trigger(v115);
  (*(v133 + 8))(v104, v16, v106);
  return (v131)(v62, v134);
}

uint64_t AnimatorAttribute.view.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v8[0] = *(a1 + 16);
  v8[1] = v4;
  v9 = v3;
  v5 = type metadata accessor for KeyframeAnimator(0, v8);
  Value = AGGraphGetValue();
  return (*(*(v5 - 8) + 16))(a2, Value, v5);
}